uint64_t sub_100648560@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  dispatch thunk of BaseShelfPresenter.contentType(for:)();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_10064889C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_1006458EC(a1, v18, &type metadata accessor for GenericPagePresenter, &qword_100970C98, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter, &type metadata accessor for GenericPagePresenter, v19);
    }
  }

  if (qword_10096D3A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_1000056A8(v15, qword_1009CE848);
  return sub_1003FAE20(v16, v19, type metadata accessor for TitleHeaderView.Style);
}

uint64_t type metadata accessor for PrivacyDetailDataSource()
{
  result = qword_100990538;
  if (!qword_100990538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10064889C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006488FC()
{
  v0 = type metadata accessor for AppStoreEngagementEvent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  (*(v1 + 104))(v3, enum case for AppStoreEngagementEvent.didSubscribeToArcade(_:), v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  AppStoreEngagementManager.recordEngagement(event:resultHandler:)();

  (*(v1 + 8))(v3, v0);

  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();
  sub_100293000();
}

uint64_t sub_100648AEC(uint64_t a1, uint64_t (*a2)(__n128), void *a3)
{
  v6 = sub_10002849C(&unk_100972A00);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  result = a2(v7);
  if (result)
  {
    v11 = result;
    v12 = *(v3 + *a3);
    v13 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {

      return sub_10002B894(v9, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v11, 1, v12, v9);

      return (*(v14 + 8))(v9, v13);
    }
  }

  return result;
}

uint64_t sub_100648C88(uint64_t (*a1)(__n128))
{
  v3 = sub_10002849C(&unk_100972A00);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_objectGraph);
    v10 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10002B894(v6, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1006488FC();
}

uint64_t sub_100648E3C(uint64_t (*a1)(__n128))
{
  v3 = sub_10002849C(&unk_100972A00);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = a1(v4);
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph);
    v10 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      sub_10002B894(v6, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v8, 1, v9, v6);

      (*(v11 + 8))(v6, v10);
    }
  }

  return sub_1006488FC();
}

void sub_10064903C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + *a3);
      v10 = Strong;

      v11 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10002B894(v7, &unk_100972A00);
      }

      else
      {
        sub_1005F9AF4(a1, 1, v9, v7);

        (*(v12 + 8))(v7, v11);
      }
    }
  }
}

uint64_t sub_1006491F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002849C(qword_1009908C0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_10002849C(&unk_100986010);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100056164(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100056164(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100056164(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1006494C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_1009D3168 = type metadata accessor for OSLogger();
  unk_1009D3170 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_1009D3150);
  return OSLogger.init(subsystem:category:)();
}

void sub_100649604(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100648E3C(a2);
  }
}

void sub_100649660(uint64_t a1, uint64_t (*a2)(__n128))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100648AEC(&OBJC_IVAR____TtC8AppStore21DynamicViewController_requestInfo, a2, &OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph);
  }
}

void *sub_1006496CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_10064A9AC(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

void sub_100649910()
{
  v0 = type metadata accessor for URL();
  __chkstk_darwin(v0 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100649AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore21DynamicViewController_referrer);

  return v1;
}

id sub_100649BC8()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_100649C1C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

void (*sub_100649CDC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1005A409C(v2);
  return sub_1000BD370;
}

void *sub_100649D4C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_10064A9AC(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

uint64_t sub_100649D78(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10064AD94(&qword_1009908E8, v5, type metadata accessor for DynamicViewController);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v6);
}

uint64_t sub_100649E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_10064AD94(&qword_1009908E8, v4, type metadata accessor for DynamicViewController);

  return a3(ObjectType, v5);
}

char *sub_100649FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridPresenter] = 0;
  v13 = &v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_objectGraph] = a5;
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_requestInfo] = a2;
  v14 = &v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_referrer];
  *v14 = a3;
  *(v14 + 1) = a4;
  type metadata accessor for ArtworkLoader();

  BaseObjectGraph.inject<A>(_:)();
  *&v6[OBJC_IVAR____TtC8AppStore21DynamicViewController_artworkLoader] = v38;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v15 = ASKBagContract.amsBag.getter();

  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v37.receiver = v6;
  v37.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v37, "initWithBag:URL:", v15, v17);
  swift_unknownObjectRelease();

  sub_100412FA8();
  v20 = v19;
  BaseObjectGraph.inject<A>(_:)();
  v21 = v38;
  v22 = [v38 ams_activeiTunesAccount];

  [v20 setAccount:v22];
  if (DynamicUIRequestInfo.metricsOverlay.getter())
  {
    v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v20 setMetricsOverlay:v23.super.isa];

  [v20 setAnonymousMetrics:1];
  v24 = DynamicUIRequestInfo.clientOptions.getter();
  if (v24)
  {
    sub_1006491F4(v24);

    v25.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v20 setClientOptions:v25.super.isa];

  v26 = v20;
  static ASKBootstrapV2.appStoreTokenServiceClient.getter();
  v27 = String._bridgeToObjectiveC()();

  [v26 setMediaClientIdentifier:v27];

  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = objc_allocWithZone(type metadata accessor for DynamicViewControllerDelegate());
  v32 = DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)();

  v33 = OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate;
  *&v26[OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate] = v32;
  swift_unknownObjectRelease();
  [v26 setDelegate:{*&v26[v33], v28, sub_10064A5C8, v29, sub_10064A5F8, v30}];
  type metadata accessor for AutoPlayVideoSettingsManager();
  v34 = static AutoPlayVideoSettingsManager.shared.getter();
  [v26 setMediaContentDelegate:v34];

  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v26;
}

void *sub_10064A600(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  type metadata accessor for UpsellGridPresenter();
  swift_allocObject();

  UpsellGridPresenter.init(objectGraph:contentDictionary:)();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_100451C5C(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_10064AD94(&unk_1009908D8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v19 = v11;

  sub_10064AD94(&unk_10098D190, 255, type metadata accessor for MarketingItemViewController);
  swift_unknownObjectRetain();
  UpsellGridPresenter.view.setter();
  dispatch thunk of BasePresenter.didLoad()();
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSLogger();
  sub_1000056A8(v15, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGRect(0);
  v20[3] = v16;
  v17 = swift_allocObject();
  v20[0] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  static LogMessage.safe(_:)();
  sub_10002B894(v20, &unk_1009711D0);
  Logger.info(_:)();

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  if (CGRectIsEmpty(v21))
  {
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return *v13;
}

void *sub_10064A9AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  type metadata accessor for UpsellGridPresenter();
  swift_allocObject();

  UpsellGridPresenter.init(objectGraph:contentDictionary:)();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_100451C5C(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_10064AD94(&unk_1009908D8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v20 = v11;

  sub_10064AD94(&unk_1009908B0, v15, type metadata accessor for DynamicViewController);
  swift_unknownObjectRetain();
  UpsellGridPresenter.view.setter();
  dispatch thunk of BasePresenter.didLoad()();
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSLogger();
  sub_1000056A8(v16, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGRect(0);
  v21[3] = v17;
  v18 = swift_allocObject();
  v21[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  static LogMessage.safe(_:)();
  sub_10002B894(v21, &unk_1009711D0);
  Logger.info(_:)();

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectIsEmpty(v22))
  {
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return *v13;
}

uint64_t sub_10064AD94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10064ADDC()
{
  if (qword_10096EBB8 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D3150, qword_1009D3168);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_1000056E0(v3);
  (*(*(v2 - 8) + 16))(v0);
  static LogMessage.safe(_:)();
  sub_10002B894(v3, &unk_1009711D0);
  Logger.error(_:)();
}

id sub_10064AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = v8;
  v91 = a8;
  v92 = a7;
  v97 = a5;
  v98 = a4;
  v89 = a3;
  v88 = sub_10002849C(&qword_100990900);
  __chkstk_darwin(v88);
  v90 = v78 - v13;
  v14 = type metadata accessor for OfferType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v100 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ArcadeState();
  v94 = *(v95 - 1);
  __chkstk_darwin(v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009701A0);
  v101 = *(v19 - 8);
  v102 = v19;
  v20 = *(v101 + 64);
  __chkstk_darwin(v19);
  v99 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = v78 - v22;
  v23 = sub_10002849C(&unk_100973230);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  *&v29 = __chkstk_darwin(v26).n128_u64[0];
  if (a1 && a2)
  {
    v81 = v28;
    v85 = v78 - v27;
    v84 = a2;
    v83 = v15;
    v87 = v14;
    *&v9[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties] = a1;
    swift_retain_n();

    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v30 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
    swift_beginAccess();
    v80 = v30;
    sub_1006535D4(&v108, &v9[v30]);
    swift_endAccess();
    swift_weakAssign();
    type metadata accessor for ArcadeSubscriptionManager();
    v78[3] = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v31 = v108;
    ArcadeSubscriptionManager.removeSubscriptionStateActions(for:)();
    v32 = OfferDisplayProperties.isArcadeOffer.getter();
    v93 = a1;
    v86 = v31;
    if (v32)
    {
      v33 = swift_allocObject();
      v82 = v9;
      v79 = v33;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v78[1] = v34;
      swift_weakInit();
      v78[2] = a6;
      sub_100031660(v98, v85, &unk_100973230);
      v35 = v101;
      v36 = v102;
      v37 = v96;
      (*(v101 + 16))(v96, v97, v102);
      v38 = (*(v24 + 80) + 56) & ~*(v24 + 80);
      v39 = (v25 + *(v35 + 80) + v38) & ~*(v35 + 80);
      v40 = swift_allocObject();
      v41 = v79;
      *(v40 + 2) = v34;
      *(v40 + 3) = v41;
      v42 = v84;
      *(v40 + 4) = v93;
      *(v40 + 5) = v42;
      *(v40 + 6) = v89;
      sub_10065368C(v85, &v40[v38]);
      (*(v35 + 32))(&v40[v39], v37, v36);
      v43 = &v40[v39 + v20];
      *v43 = v92 & 1;
      v43[1] = v91 & 1;

      ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)();
      v9 = v82;
      a1 = v93;

      v31 = v86;
    }

    ArcadeSubscriptionManager.subscriptionState.getter();
    v44 = v31;
    v45 = ArcadeState.isSubscribed.getter();
    (*(v94 + 8))(v18, v95);
    v46 = v100;
    OfferDisplayProperties.offerType.getter();
    if (!sub_10064C380(v46, a1, v45 & 1))
    {

      return (*(v83 + 8))(v46, v87);
    }

    v47 = v101 + 16;
    v48 = *(v101 + 16);
    v48(v99, v97, v102);
    sub_100031660(v98, v81, &unk_100973230);
    v49 = *(v88 + 48);
    v50 = v83;
    v51 = v90;
    v52 = v46;
    v53 = v87;
    (*(v83 + 16))(v90, v52, v87);
    *(v51 + v49) = v45 & 1;
    v54 = (*(v50 + 88))(v51, v53);
    if (v54 == enum case for OfferType.app(_:))
    {
LABEL_7:
      (*(v50 + 8))(v51, v53);
      sub_10002849C(&unk_100973AF0);
      inject<A, B>(_:from:)();
      v97 = v104;
      v98 = v103;
      sub_10002849C(&qword_100972A88);
      inject<A, B>(_:from:)();
      v106 = type metadata accessor for Restrictions();
      v107 = &protocol witness table for Restrictions;
      inject<A, B>(_:from:)();
      v48(v96, v99, v102);
      v55 = v81;
      sub_100031660(v81, v85, &unk_100973230);
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v56 = type metadata accessor for AppOfferButtonPresenter();
      swift_allocObject();

      v57 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
      sub_10002B894(v55, &unk_100973230);
      (*(v101 + 8))(v99, v102);
      *(&v109 + 1) = v56;
      v110 = &protocol witness table for AppOfferButtonPresenter;
      *&v108 = v57;
LABEL_20:
      v68 = objc_opt_self();
      v69 = [v68 areAnimationsEnabled];
      [v68 setAnimationsEnabled:0];
      v70 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
      v9[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 0;
      [v9 setHidden:0];
      sub_100653644(&qword_100990908, type metadata accessor for OfferButton);
      sub_100047650(&v108, *(&v109 + 1));
      swift_unknownObjectRetain();
      dispatch thunk of OfferButtonPresenter.view.setter();
      [v68 setAnimationsEnabled:v69];

      (*(v50 + 8))(v100, v87);
      v9[v70] = 1;
      sub_10002C0AC(&v108, v105);
      v71 = v80;
      swift_beginAccess();
      sub_1006535D4(v105, &v9[v71]);
      swift_endAccess();
      return sub_100007000(&v108);
    }

    v94 = v47;
    v95 = v48;
    if (v54 == enum case for OfferType.inAppPurchase(_:))
    {
      v82 = v9;
      sub_10002B894(v81, &unk_100973230);
      v59 = v102;
      (*(v101 + 8))(v99, v102);
      if (OfferDisplayProperties.isStreamlinedBuy.getter())
      {
        sub_10002849C(&unk_100973AF0);
        inject<A, B>(_:from:)();
        type metadata accessor for Restrictions();
        inject<A, B>(_:from:)();
        v95(v96, v97, v59);
        sub_100031660(v98, v85, &unk_100973230);
        v60 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
        swift_allocObject();

        v61 = StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
        v62 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
      }

      else
      {
        sub_10002849C(&unk_100973AF0);
        inject<A, B>(_:from:)();
        type metadata accessor for Restrictions();
        inject<A, B>(_:from:)();
        v95(v96, v97, v59);
        sub_100031660(v98, v85, &unk_100973230);
        v60 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
        swift_allocObject();

        v61 = InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
        v62 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
      }

      *(&v109 + 1) = v60;
      v110 = v62;
      *&v108 = v61;
      v50 = v83;
      (*(v83 + 8))(v90, v87);
      v9 = v82;
      goto LABEL_20;
    }

    v63 = v101;
    v64 = v102;
    v65 = v99;
    if (v54 == enum case for OfferType.arcade(_:))
    {
      sub_10002B894(v81, &unk_100973230);
      (*(v63 + 8))(v65, v64);
      v95(v96, v97, v64);
      sub_100031660(v98, v85, &unk_100973230);
      v66 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();

      v67 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
      *(&v109 + 1) = v66;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
      *&v108 = v67;
    }

    else
    {
      if (v54 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10002849C(&unk_100973AF0);
        inject<A, B>(_:from:)();
        v97 = v104;
        v98 = v103;
        sub_10002849C(&qword_100972A88);
        inject<A, B>(_:from:)();
        v106 = type metadata accessor for Restrictions();
        v107 = &protocol witness table for Restrictions;
        inject<A, B>(_:from:)();
        v72 = v102;
        v95(v96, v65, v102);
        v73 = v81;
        sub_100031660(v81, v85, &unk_100973230);
        type metadata accessor for ASKBagContract();
        inject<A, B>(_:from:)();
        ASKBagContract.arePreordersCancellable.getter();

        v74 = type metadata accessor for AppOfferButtonPresenter();
        swift_allocObject();

        v75 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
        sub_10002B894(v73, &unk_100973230);
        (*(v101 + 8))(v99, v72);
        *(&v109 + 1) = v74;
        v110 = &protocol witness table for AppOfferButtonPresenter;
        *&v108 = v75;
        sub_10002B894(v90, &qword_100990900);
        v50 = v83;
        goto LABEL_20;
      }

      v50 = v83;
      v48 = v95;
      if (v45)
      {
        goto LABEL_7;
      }

      sub_10002B894(v81, &unk_100973230);
      (*(v101 + 8))(v99, v102);
      type metadata accessor for OfferStateAction();
      if (swift_dynamicCastClass())
      {
        OfferStateAction.subscribePageAction.getter();
      }

      v95(v96, v97, v102);
      sub_100031660(v98, v85, &unk_100973230);
      v76 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();

      v77 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
      *(&v109 + 1) = v76;
      v110 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

      *&v108 = v77;
    }

    v50 = v83;
    (*(v83 + 8))(v51, v87);
    goto LABEL_20;
  }

  return [v9 setHidden:{1, v29}];
}

void (*sub_10064C224(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 accessibilityLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_10064C2AC;
}

void sub_10064C2AC(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {

      v4 = String._bridgeToObjectiveC()();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else if (v3)
  {
    v4 = String._bridgeToObjectiveC()();

    [*(a1 + 16) setAccessibilityLabel:v4];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setAccessibilityLabel:0];
  }
}

BOOL sub_10064C380(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10002849C(&qword_100990900);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  swift_beginAccess();
  sub_100031660(v3 + v9, &v19, &qword_1009741F8);
  if (!v20)
  {
    sub_10002B894(&v19, &qword_1009741F8);
    return 1;
  }

  sub_100005A38(&v19, v21);
  v10 = *(v6 + 48);
  v11 = type metadata accessor for OfferType();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  v8[v10] = a3 & 1;
  v13 = (*(v12 + 88))(v8, v11);
  if (v13 == enum case for OfferType.app(_:))
  {
    goto LABEL_3;
  }

  if (v13 == enum case for OfferType.inAppPurchase(_:))
  {
    if (OfferDisplayProperties.isStreamlinedBuy.getter())
    {
      v16 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    }

    else
    {
      v16 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
    }

    v14 = v16;
    (*(v12 + 8))(v8, v11);
    goto LABEL_12;
  }

  if (v13 == enum case for OfferType.arcade(_:))
  {
    goto LABEL_9;
  }

  if (v13 != enum case for OfferType.arcadeApp(_:))
  {
    v14 = type metadata accessor for AppOfferButtonPresenter();
    sub_10002B894(v8, &qword_100990900);
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_3:
    (*(v12 + 8))(v8, v11);
    v14 = type metadata accessor for AppOfferButtonPresenter();
  }

  else
  {
LABEL_9:
    (*(v12 + 8))(v8, v11);
    v14 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
  }

LABEL_12:
  sub_10002A400(v21, v21[3]);
  DynamicType = swift_getDynamicType();
  sub_100007000(v21);
  return DynamicType != v14;
}

uint64_t sub_10064C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v77 = a8;
  v78 = a7;
  v71 = a6;
  v73 = a5;
  v83 = a4;
  v10 = sub_10002849C(&qword_100990900);
  __chkstk_darwin(v10);
  v76 = v65 - v11;
  v12 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v12 - 8);
  v75 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = v65 - v15;
  v79 = sub_10002849C(&unk_1009701A0);
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v65 - v18;
  v20 = type metadata accessor for OfferType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ArcadeState();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v82 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v29 = Strong;
    v72 = v20;
    ArcadeStateChange.newState.getter();
    v30 = ArcadeState.isSubscribed.getter();
    (*(v24 + 8))(v26, v23);
    v31 = v84;
    v32 = v83;
    OfferDisplayProperties.offerType.getter();
    if (!sub_10064C380(v31, v32, v30 & 1))
    {

      return (*(v21 + 8))(v31, v72);
    }

    v68 = v29;
    v69 = a10;
    v67 = a9;
    v33 = v81 + 16;
    v34 = *(v81 + 16);
    v66 = v19;
    v35 = v79;
    v34(v19, v77, v79);
    sub_100031660(v78, v80, &unk_100973230);
    v36 = *(v10 + 48);
    v37 = v76;
    v38 = v31;
    v39 = v72;
    (*(v21 + 16))(v76, v38, v72);
    *(v37 + v36) = v30 & 1;
    v70 = v21;
    v40 = (*(v21 + 88))(v37, v39);
    if (v40 != enum case for OfferType.app(_:))
    {
      v65[0] = v34;
      v65[1] = v33;
      if (v40 == enum case for OfferType.inAppPurchase(_:))
      {
        sub_10002B894(v80, &unk_100973230);
        (*(v81 + 8))(v19, v35);
        if (OfferDisplayProperties.isStreamlinedBuy.getter())
        {
          sub_10002849C(&unk_100973AF0);
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          type metadata accessor for Restrictions();
          inject<A, B>(_:from:)();
          (v65[0])(v74, v77, v35);
          sub_100031660(v78, v75, &unk_100973230);
          v46 = type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
          swift_allocObject();

          v47 = StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
          v48 = &protocol witness table for StreamlinedInAppPurchaseOfferButtonPresenter;
        }

        else
        {
          sub_10002849C(&unk_100973AF0);
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          type metadata accessor for Restrictions();
          inject<A, B>(_:from:)();
          (v65[0])(v74, v77, v35);
          sub_100031660(v78, v75, &unk_100973230);
          v46 = type metadata accessor for InAppPurchaseOfferButtonPresenter();
          swift_allocObject();

          v47 = InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)();
          v48 = &protocol witness table for InAppPurchaseOfferButtonPresenter;
        }

        v91 = v46;
        v92 = v48;
        v90 = v47;
        v45 = v70;
        (*(v70 + 8))(v76, v72);
        goto LABEL_16;
      }

      v49 = v81;
      v50 = v80;
      if (v40 == enum case for OfferType.arcade(_:))
      {
        sub_10002B894(v80, &unk_100973230);
        (*(v49 + 8))(v19, v35);
        (v65[0])(v74, v77, v35);
        sub_100031660(v78, v75, &unk_100973230);
        v51 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
        swift_allocObject();

        v52 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
        v91 = v51;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
        v90 = v52;
        v45 = v70;
        (*(v70 + 8))(v37, v72);
        goto LABEL_16;
      }

      if (v40 != enum case for OfferType.arcadeApp(_:))
      {
        sub_10002849C(&unk_100973AF0);
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v78 = v85;
        v77 = v86;
        sub_10002849C(&qword_100972A88);
        inject<A, B>(_:from:)();
        v88 = type metadata accessor for Restrictions();
        v89 = &protocol witness table for Restrictions;
        inject<A, B>(_:from:)();
        (v65[0])(v74, v19, v35);
        sub_100031660(v50, v75, &unk_100973230);
        type metadata accessor for ASKBagContract();
        inject<A, B>(_:from:)();
        ASKBagContract.arePreordersCancellable.getter();

        v61 = type metadata accessor for AppOfferButtonPresenter();
        swift_allocObject();

        v62 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
        sub_10002B894(v50, &unk_100973230);
        (*(v81 + 8))(v19, v79);
        v91 = v61;
        v92 = &protocol witness table for AppOfferButtonPresenter;
        v90 = v62;
        sub_10002B894(v37, &qword_100990900);
        goto LABEL_6;
      }

      v39 = v72;
      v34 = v65[0];
      if ((v30 & 1) == 0)
      {
        sub_10002B894(v80, &unk_100973230);
        (*(v81 + 8))(v66, v35);
        if (v73)
        {
          type metadata accessor for OfferStateAction();
          v58 = swift_dynamicCastClass();
          v59 = v72;
          v60 = v65[0];
          if (v58)
          {
            OfferStateAction.subscribePageAction.getter();
            v35 = v79;
          }

          v60(v74, v77, v35);
        }

        else
        {
          v59 = v72;
          (v65[0])(v74, v77, v35);
        }

        sub_100031660(v78, v75, &unk_100973230);
        v63 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
        swift_allocObject();

        v64 = ArcadeSubscriptionOfferButtonPresenter.init(displayProperties:buttonAction:subscribedButtonAction:subtitlePosition:asPartOf:alignment:)();
        v91 = v63;
        v92 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;

        v90 = v64;
        v45 = v70;
        (*(v70 + 8))(v76, v59);
        goto LABEL_16;
      }
    }

    (*(v70 + 8))(v37, v39);
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v78 = v86;
    sub_10002849C(&qword_100972A88);
    inject<A, B>(_:from:)();
    v88 = type metadata accessor for Restrictions();
    v89 = &protocol witness table for Restrictions;
    inject<A, B>(_:from:)();
    v41 = v66;
    v34(v74, v66, v35);
    v42 = v80;
    sub_100031660(v80, v75, &unk_100973230);
    type metadata accessor for ASKBagContract();
    inject<A, B>(_:from:)();
    ASKBagContract.arePreordersCancellable.getter();

    v43 = type metadata accessor for AppOfferButtonPresenter();
    swift_allocObject();

    v44 = AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)();
    sub_10002B894(v42, &unk_100973230);
    (*(v81 + 8))(v41, v79);
    v91 = v43;
    v92 = &protocol witness table for AppOfferButtonPresenter;
    v90 = v44;
LABEL_6:
    v45 = v70;
LABEL_16:
    v53 = objc_opt_self();
    v54 = [v53 areAnimationsEnabled];
    [v53 setAnimationsEnabled:0];
    v55 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
    v56 = v68;
    *(v68 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled) = 0;
    [v56 setHidden:0];
    sub_100653644(&qword_100990908, type metadata accessor for OfferButton);
    sub_100047650(&v90, v91);
    swift_unknownObjectRetain();
    dispatch thunk of OfferButtonPresenter.view.setter();
    [v53 setAnimationsEnabled:v54];

    (*(v45 + 8))(v84, v72);
    *(v56 + v55) = 1;
    sub_10002C0AC(&v90, v87);
    v57 = OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
    swift_beginAccess();
    sub_1006535D4(v87, v56 + v57);
    swift_endAccess();

    return sub_100007000(&v90);
  }

  return result;
}

uint64_t sub_10064D6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v78 = type metadata accessor for OfferButtonPresenterViewTheme();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v10 - 8);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v73 = &v63 - v13;
  v14 = type metadata accessor for OfferEnvironment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for OfferButtonMetrics();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v64 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v63 = &v63 - v25;
  __chkstk_darwin(v26);
  v65 = &v63 - v27;
  __chkstk_darwin(v28);
  v68 = &v63 - v29;
  __chkstk_darwin(v30);
  v87 = &v63 - v31;
  __chkstk_darwin(v32);
  v69 = &v63 - v33;
  v34 = type metadata accessor for TextConfiguration();
  v71 = *(v34 - 8);
  v72 = v34;
  __chkstk_darwin(v34);
  v70 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v66 = &v63 - v38;
  [v7 setSelected:{0, v37}];
  v79 = a6;
  OfferButtonPresenterViewTheme.environment.getter();
  v86 = [v7 traitCollection];
  v84 = v7;
  v67 = v7[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding];
  v39 = *(v15 + 104);
  v39(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = static OfferEnvironment.== infix(_:_:)();
  v40 = *(v15 + 8);
  v40(v17, v14);
  v85 = v40;
  if (a6)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v41 = qword_1009D32F8;
LABEL_13:
    v43 = sub_1000056A8(v21, v41);
    v44 = v68;
    (*(v22 + 16))(v68, v43, v21);
LABEL_14:
    v45 = v87;
    goto LABEL_15;
  }

  v39(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v42 = static OfferEnvironment.== infix(_:_:)();
  v40(v17, v14);
  if (v42)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v41 = qword_1009D32E0;
    goto LABEL_13;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v41 = qword_1009D32C8;
    goto LABEL_13;
  }

  v39(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v52 = static OfferEnvironment.== infix(_:_:)();
  v85(v17, v14);
  if (v52)
  {
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v53 = sub_1000056A8(v21, qword_100991070);
    v44 = v68;
    (*(v22 + 16))(v68, v53, v21);
    goto LABEL_14;
  }

  v54 = String.count.getter();
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    if (v54 < 7)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      v56 = v68;
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v57 = qword_100991010;
    }

    else
    {
      v56 = v68;
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v57 = qword_100991028;
    }

    v60 = sub_1000056A8(v21, v57);
    v61 = v63;
    (*(v22 + 16))(v63, v60, v21);
    v62 = v65;
    (*(v22 + 32))(v65, v61, v21);
    v44 = v56;
    Copyable.copyWithOverrides(in:)();
    (*(v22 + 8))(v62, v21);
    goto LABEL_14;
  }

  if (v54 > 8)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v45 = v87;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v55 = qword_100991010;
  }

  else
  {
    v45 = v87;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v55 = qword_100991028;
  }

  v58 = sub_1000056A8(v21, v55);
  v59 = v64;
  (*(v22 + 16))(v64, v58, v21);
  v44 = v68;
  (*(v22 + 32))(v68, v59, v21);
LABEL_15:
  v46 = *(v22 + 32);
  v46(v45, v44, v21);
  if (v67 != 2)
  {
    OfferButtonMetrics.includeTopPadding.setter();
    v45 = v87;
  }

  v85(v20, v14);
  v46(v69, v45, v21);
  sub_100031660(v77, v73, &unk_100970150);
  (*(v75 + 16))(v76, v79, v78);

  TextConfigurationTheme.init(from:)();
  v47 = v66;
  TextConfiguration.init(metrics:text:subtitleText:subtitlePosition:theme:)();
  v49 = v70;
  v48 = v71;
  v50 = v72;
  (*(v71 + 16))(v70, v47, v72);
  sub_10064F960(v49, v84, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_1008CCF58, sub_100653844, &unk_1008CCF70);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_10064E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v70 = type metadata accessor for OfferButtonPresenterViewTheme();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v10 - 8);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v65 = &v55 - v13;
  v14 = type metadata accessor for OfferEnvironment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = type metadata accessor for OfferButtonMetrics();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v59 = &v55 - v25;
  __chkstk_darwin(v26);
  v60 = &v55 - v27;
  __chkstk_darwin(v28);
  v61 = &v55 - v29;
  v30 = type metadata accessor for TextConfiguration();
  v63 = *(v30 - 8);
  v64 = v30;
  __chkstk_darwin(v30);
  v62 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v56 = &v55 - v34;
  [v7 setSelected:{0, v33}];
  v71 = a6;
  OfferButtonPresenterViewTheme.environment.getter();
  v58 = [v7 traitCollection];
  v76 = v7;
  v57 = v7[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding];
  v35 = *(v15 + 104);
  v35(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
  LOBYTE(a6) = static OfferEnvironment.== infix(_:_:)();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v77 = v36;
  if (a6)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v37 = qword_1009D32F8;
LABEL_13:
    v39 = sub_1000056A8(v21, v37);
    v40 = v59;
    (*(v22 + 16))(v59, v39, v21);
    v41 = v60;
    v42 = v58;
    goto LABEL_14;
  }

  v35(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
  v38 = static OfferEnvironment.== infix(_:_:)();
  v36(v17, v14);
  if (v38)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v37 = qword_1009D32E0;
    goto LABEL_13;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v37 = qword_1009D32C8;
    goto LABEL_13;
  }

  v35(v17, enum case for OfferEnvironment.navigationBar(_:), v14);
  v49 = static OfferEnvironment.== infix(_:_:)();
  v77(v17, v14);
  if (v49)
  {
    v40 = v59;
    v41 = v60;
    v42 = v58;
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v50 = sub_1000056A8(v21, qword_100991070);
    (*(v22 + 16))(v40, v50, v21);
  }

  else
  {
    v42 = v58;
    v51 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v40 = v59;
    v41 = v60;
    if (v51)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v52 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v52 = qword_100991028;
    }

    v53 = sub_1000056A8(v21, v52);
    v54 = v55;
    (*(v22 + 16))(v55, v53, v21);
    (*(v22 + 32))(v40, v54, v21);
  }

LABEL_14:
  v43 = *(v22 + 32);
  v43(v41, v40, v21);
  if (v57 != 2)
  {
    OfferButtonMetrics.includeTopPadding.setter();
  }

  v77(v20, v14);
  v43(v61, v41, v21);
  sub_100031660(v69, v65, &unk_100970150);
  (*(v67 + 16))(v68, v71, v70);

  TextConfigurationTheme.init(from:)();
  v44 = v56;
  TextConfiguration.init(metrics:symbolName:subtitleText:subtitlePosition:theme:)();
  v46 = v62;
  v45 = v63;
  v47 = v64;
  (*(v63 + 16))(v62, v44, v64);
  sub_10064F960(v46, v76, &type metadata accessor for TextConfiguration, &protocol witness table for TextConfiguration, &unk_1008CCF58, sub_100653844, &unk_1008CCF70);
  return (*(v45 + 8))(v44, v47);
}

uint64_t sub_10064E9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AdamId();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  v37 = result;
  if (!result)
  {
    return result;
  }

  v35 = v8;
  type metadata accessor for OfferStateAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v33[0] = v12;
  sub_10002849C(&unk_100973AF0);
  BaseObjectGraph.inject<A>(_:)();
  v33[1] = v58;
  sub_100031660(a2, &v58, &unk_1009711D0);
  v34 = v7;
  if (*(&v59 + 1))
  {
    sub_10002849C(&qword_100975C68);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_10002B894(&v58, &unk_1009711D0);
  }

  swift_getObjectType();
  OfferStateAction.adamId.getter();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  (*(v33[0] + 8))(v14, v11);
LABEL_9:
  OfferStateAction.preferredAction(for:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v34;
LABEL_10:

  [v3 bounds];
  LOBYTE(v58) = 1;
  *&v40 = v3;
  *(&v40 + 1) = v16;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  *&v42 = v19;
  BYTE8(v42) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v43 = _Q0;
  v44 = _Q0;
  v45 = 15;
  sub_1000076C0();
  v25 = v3;
  *v10 = static OS_dispatch_queue.main.getter();
  v26 = v35;
  (*(v35 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v27 = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v10, v7);
  if (v27)
  {
    v48 = xmmword_100975F50;
    v49 = xmmword_100975F60;
    v50 = xmmword_100975F70;
    v46 = xmmword_100975F30;
    v47 = xmmword_100975F40;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v52 = v40;
    v53 = v41;
    v58 = xmmword_100975F30;
    v59 = xmmword_100975F40;
    v61 = xmmword_100975F60;
    v62 = xmmword_100975F70;
    v51 = qword_100975F80;
    v57 = v45;
    v63 = qword_100975F80;
    v60 = xmmword_100975F50;
    sub_100031660(&v46, v38, &unk_10097F520);
    xmmword_100975F50 = v54;
    xmmword_100975F60 = v55;
    xmmword_100975F70 = v56;
    qword_100975F80 = v57;
    xmmword_100975F30 = v52;
    xmmword_100975F40 = v53;
    sub_10002B894(&v58, &unk_10097F520);
    v28 = sub_10002849C(&unk_100974490);
    sub_10019DADC(&v40, v38);
    v29 = v36;
    v30 = v37;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v31 = *(v28 - 8);
    if ((*(v31 + 48))(v29, 1, v28) == 1)
    {

      sub_10002B894(v29, &unk_100972A00);
    }

    else
    {

      sub_1005F9AF4(v32, 1, v30, v29);

      (*(v31 + 8))(v29, v28);
    }

    v38[2] = xmmword_100975F50;
    v38[3] = xmmword_100975F60;
    v38[4] = xmmword_100975F70;
    v39 = qword_100975F80;
    v38[0] = xmmword_100975F30;
    v38[1] = xmmword_100975F40;
    xmmword_100975F30 = v46;
    xmmword_100975F40 = v47;
    xmmword_100975F50 = v48;
    xmmword_100975F60 = v49;
    xmmword_100975F70 = v50;
    qword_100975F80 = v51;
    sub_10002B894(v38, &unk_10097F520);

    return sub_10019DB38(&v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10064EFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v13 - v9;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  static AutomationSemantics.offerButton(id:parentId:)();
  sub_10002B894(v13, &unk_1009711D0);
  sub_10002B894(&v14, &unk_1009711D0);
  *(&v15 + 1) = &type metadata for String;
  *&v14 = a1;
  *(&v14 + 1) = a2;

  AutomationSemantics.attribute(key:value:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10002B894(&v14, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  return (v11)(v10, v4);
}

id sub_10064F17C(char a1)
{
  v2 = a1 & 1;
  ObjectType = swift_getObjectType();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isEnabled") != v2)
  {
    sub_1000F6E50(v2);
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "setEnabled:", v2);
}

uint64_t sub_10064F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v14 - 8);
  v16 = &v20 - v15;
  v17 = sub_10002849C(&unk_1009701A0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a5, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_10064D6F4(a1, a2, a3, a4, v16, a8);
  return sub_10002B894(v16, &unk_100970150);
}

void sub_10064F34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_10002849C(&unk_1009701A0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_10064D6F4(a1, a2, 0, 0, v11, a5);
  sub_10002B894(v11, &unk_100970150);
  v13 = String._bridgeToObjectiveC()();
  [v5 accessibilityShowText:v13];
}

uint64_t sub_10064F484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_10002849C(&unk_1009701A0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a5, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_10064E140(a1, a2, a3, a4, v14, a6);
  return sub_10002B894(v14, &unk_100970150);
}

uint64_t sub_10064F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_10002849C(&unk_1009701A0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10064E140(a1, a2, 0, 0, v8, a3);
  return sub_10002B894(v8, &unk_100970150);
}

uint64_t sub_10064F744()
{
  v1 = [v0 accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10064F7AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v2 setAccessibilityLabel:v3];
}

void (*sub_10064F818(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10064C224(v2);
  return sub_1000BD370;
}

uint64_t sub_10064F960(uint64_t a1, char *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = a3(0);
  v54 = v13;
  v55 = a4;
  v14 = sub_1000056E0(v53);
  (*(*(v13 - 8) + 32))(v14, a1, v13);
  v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&a2[v15], v51);
  sub_10002A400(v51, v52);
  DynamicType = swift_getDynamicType();
  sub_10002A400(v53, v54);
  v17 = swift_getDynamicType();
  sub_10002A400(v53, v54);
  v18 = [a2 traitCollection];
  LOBYTE(a4) = dispatch thunk of OfferButtonConfiguration.isEqual(to:with:)();

  if (a4)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1006533A8(&a2[v15], v53);
  swift_endAccess();
  v50.receiver = a2;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "frame");
  if (CGRectIsEmpty(v56))
  {
    sub_10002C0AC(&a2[v15], aBlock);
    sub_10002A400(aBlock, v45);
    v19 = dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)();
    sub_100007000(aBlock);
    if (v19)
    {
      if (DynamicType != v17)
      {
        sub_1000F4BF0();
      }

      goto LABEL_28;
    }
  }

  v41 = a7;
  sub_10002C0AC(&a2[v15], aBlock);
  sub_10002A400(aBlock, v45);
  if (dispatch thunk of OfferButtonConfiguration.preferDisabledAnimations(whenUpdatingFrom:)())
  {
    v20 = a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled];
    sub_100007000(aBlock);
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_100007000(aBlock);
  }

  sub_10002C0AC(&a2[v15], aBlock);
  sub_10002A400(aBlock, v45);
  v21 = dispatch thunk of OfferButtonConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)();
  sub_100007000(aBlock);
  if (v21)
  {
LABEL_11:
    v22 = objc_opt_self();
    [v22 begin];
    v42 = 1;
    [v22 setDisableActions:1];
    goto LABEL_13;
  }

  v42 = 0;
LABEL_13:
  sub_10002A400(v51, v52);
  sub_100653644(&qword_1009741F0, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  if (DynamicType != v17)
  {
    sub_1000F4BF0();
  }

  sub_10002A400(v53, v54);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  if (a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v49.receiver = a2;
    v49.super_class = ObjectType;
    objc_msgSendSuper2(&v49, "invalidateIntrinsicContentSize");
    v36 = &a2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v42)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10002A400(v51, v52);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v24 = v23;
  v26 = v25;
  sub_10002A400(v53, v54);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v29 = v26 == v28 && v24 == v27;
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    v30 = [a2 superview];
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  v32 = objc_opt_self();
  v33 = a2;
  v34 = v30;
  if ([v32 areAnimationsEnabled])
  {
    v46 = a6;
    v47 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v45 = v41;
    v35 = _Block_copy(aBlock);

    [v32 animateWithDuration:v35 animations:0.3];

    _Block_release(v35);
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v33 setNeedsLayout];
  if (v29)
  {
    [v33 layoutIfNeeded];
  }

  else
  {
    v48.receiver = v33;
    v48.super_class = ObjectType;
    objc_msgSendSuper2(&v48, "invalidateIntrinsicContentSize");
    v40 = &v33[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v40 = 0;
    *(v40 + 1) = 0;
    v40[16] = 1;
    [v34 setNeedsLayout];
    [v34 layoutIfNeeded];
  }

  if (v42)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_100007000(v51);
  return sub_100007000(v53);
}

uint64_t sub_10064FFB4(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndeterminateProgressConfiguration();
  v43 = v5;
  v44 = &protocol witness table for IndeterminateProgressConfiguration;
  v42[0] = a1;
  v6 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&a2[v6], v40);
  sub_10002A400(v40, v41);
  DynamicType = swift_getDynamicType();
  sub_10002A400(v42, v5);
  v8 = swift_getDynamicType();
  sub_10002A400(v42, v43);
  v9 = [a2 traitCollection];
  LOBYTE(a1) = dispatch thunk of OfferButtonConfiguration.isEqual(to:with:)();

  if (a1)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1006533A8(&a2[v6], v42);
  swift_endAccess();
  v39.receiver = a2;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "frame");
  if (CGRectIsEmpty(v45))
  {
    sub_10002C0AC(&a2[v6], aBlock);
    sub_10002A400(aBlock, v34);
    v10 = dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)();
    sub_100007000(aBlock);
    if (v10)
    {
      if (DynamicType != v8)
      {
        sub_1000F4BF0();
      }

      goto LABEL_28;
    }
  }

  sub_10002C0AC(&a2[v6], aBlock);
  sub_10002A400(aBlock, v34);
  if (dispatch thunk of OfferButtonConfiguration.preferDisabledAnimations(whenUpdatingFrom:)())
  {
    v11 = a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled];
    sub_100007000(aBlock);
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_100007000(aBlock);
  }

  sub_10002C0AC(&a2[v6], aBlock);
  sub_10002A400(aBlock, v34);
  v12 = dispatch thunk of OfferButtonConfiguration.alwaysDisableAnimations(whenUpdatingFrom:)();
  sub_100007000(aBlock);
  if (v12)
  {
LABEL_11:
    v13 = objc_opt_self();
    [v13 begin];
    v32 = 1;
    [v13 setDisableActions:1];
    goto LABEL_13;
  }

  v32 = 0;
LABEL_13:
  sub_10002A400(v40, v41);
  sub_100653644(&qword_1009741F0, type metadata accessor for OfferButton);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  if (DynamicType != v8)
  {
    sub_1000F4BF0();
  }

  sub_10002A400(v42, v43);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  if (a2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] != 1)
  {
    [a2 setNeedsLayout];
    v38.receiver = a2;
    v38.super_class = ObjectType;
    objc_msgSendSuper2(&v38, "invalidateIntrinsicContentSize");
    v27 = &a2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      [Strong setNeedsLayout];
    }

    if (!v32)
    {
      goto LABEL_28;
    }

LABEL_27:
    [objc_opt_self() commit];
    goto LABEL_28;
  }

  sub_10002A400(v40, v41);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v15 = v14;
  v17 = v16;
  sub_10002A400(v42, v43);
  dispatch thunk of OfferButtonConfiguration.size(in:)();
  v20 = v17 == v19 && v15 == v18;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    v21 = [a2 superview];
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  v23 = objc_opt_self();
  v24 = a2;
  v25 = v21;
  if ([v23 areAnimationsEnabled])
  {
    v35 = sub_100653844;
    v36 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    v34 = &unk_1008CCED0;
    v26 = _Block_copy(aBlock);

    [v23 animateWithDuration:v26 animations:0.3];

    _Block_release(v26);
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  [v24 setNeedsLayout];
  if (v20)
  {
    [v24 layoutIfNeeded];
  }

  else
  {
    v37.receiver = v24;
    v37.super_class = ObjectType;
    objc_msgSendSuper2(&v37, "invalidateIntrinsicContentSize");
    v31 = &v24[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v31 = 0;
    *(v31 + 1) = 0;
    v31[16] = 1;
    [v25 setNeedsLayout];
    [v25 layoutIfNeeded];
  }

  if (v32)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_100007000(v40);
  return sub_100007000(v42);
}

id sub_1006505CC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v66 = a1;
  v67 = type metadata accessor for OfferButtonPresenterViewTheme();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100973240);
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v64 = &v53 - v8;
  v9 = type metadata accessor for OfferEnvironment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for OfferButtonMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v53 - v20;
  __chkstk_darwin(v21);
  v56 = &v53 - v22;
  __chkstk_darwin(v23);
  v59 = &v53 - v24;
  __chkstk_darwin(v25);
  v60 = &v53 - v26;
  __chkstk_darwin(v27);
  v61 = &v53 - v28;
  v69 = a2;
  OfferButtonPresenterViewTheme.environment.getter();
  v70 = v4;
  v58 = [v4 traitCollection];
  v29 = *(v10 + 104);
  v29(v12, enum case for OfferEnvironment.arcadeProductPage(_:), v9);
  LOBYTE(a2) = static OfferEnvironment.== infix(_:_:)();
  v30 = *(v10 + 8);
  v30(v12, v9);
  if (a2)
  {
    if (qword_10096ECE8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000056A8(v16, qword_1009D32F8);
    v32 = v59;
    (*(v17 + 16))(v59, v31, v16);

    goto LABEL_14;
  }

  v29(v12, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v9);
  v33 = static OfferEnvironment.== infix(_:_:)();
  v53 = v30;
  v30(v12, v9);
  if (v33)
  {
    if (qword_10096ECE0 != -1)
    {
      swift_once();
    }

    v34 = qword_1009D32E0;
LABEL_13:
    v35 = sub_1000056A8(v16, v34);
    v32 = v59;
    (*(v17 + 16))(v59, v35, v16);

    v30 = v53;
    goto LABEL_14;
  }

  if (OfferEnvironment.isArcadeEnvironment.getter())
  {
    if (qword_10096ECD8 != -1)
    {
      swift_once();
    }

    v34 = qword_1009D32C8;
    goto LABEL_13;
  }

  v29(v12, enum case for OfferEnvironment.navigationBar(_:), v9);
  v41 = static OfferEnvironment.== infix(_:_:)();
  v30 = v53;
  v53(v12, v9);
  if (v41)
  {
    v42 = v58;
    v32 = v59;
    if (qword_10096ECF0 != -1)
    {
      swift_once();
    }

    v43 = sub_1000056A8(v16, qword_100991070);
    (*(v17 + 16))(v32, v43, v16);
  }

  else
  {
    v44 = v58;
    v45 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v32 = v59;
    if (v57)
    {
      if (v45)
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v46 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v46 = qword_100991028;
      }

      v48 = sub_1000056A8(v16, v46);
      v49 = v54;
      (*(v17 + 16))(v54, v48, v16);
      v50 = v56;
      (*(v17 + 32))(v56, v49, v16);
      Copyable.copyWithOverrides(in:)();

      (*(v17 + 8))(v50, v16);
    }

    else
    {
      if (v45)
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v47 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v47 = qword_100991028;
      }

      v51 = sub_1000056A8(v16, v47);
      v52 = v55;
      (*(v17 + 16))(v55, v51, v16);

      (*(v17 + 32))(v32, v52, v16);
    }
  }

LABEL_14:
  v36 = *(v17 + 32);
  v37 = v60;
  v36(v60, v32, v16);
  v30(v15, v9);
  v36(v61, v37, v16);
  (*(v62 + 16))(v64, v66, v63);
  (*(v65 + 16))(v68, v69, v67);
  type metadata accessor for IndeterminateProgressConfiguration();
  swift_allocObject();
  IndeterminateProgressConfiguration.init(metrics:alignment:theme:)();

  v39 = v70;
  sub_10064FFB4(v38, v70);

  return [v39 accessibilityShowLoading];
}

void sub_100650E70(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v85 = a3;
  v109 = a2;
  v94 = type metadata accessor for OfferButtonPresenterViewTheme();
  v107 = *(v94 - 8);
  __chkstk_darwin(v94);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973240);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v106 = &v81 - v10;
  v11 = type metadata accessor for OfferEnvironment();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v92 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  v101 = type metadata accessor for OfferButtonMetrics();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v83 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = &v81 - v18;
  __chkstk_darwin(v19);
  v84 = &v81 - v20;
  __chkstk_darwin(v21);
  v93 = &v81 - v22;
  __chkstk_darwin(v23);
  v95 = &v81 - v24;
  __chkstk_darwin(v25);
  v96 = &v81 - v26;
  v102 = type metadata accessor for ProgressConfiguration();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v98 = &v81 - v29;
  v30 = type metadata accessor for AdamId();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_1009908F8);
  __chkstk_darwin(v34 - 8);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v108 = &v81 - v38;
  v110 = v4;
  v39 = *&v4[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties];
  if (v39)
  {
    v87 = v9;
    v88 = v8;
    v89 = a1;
    Strong = swift_weakLoadStrong();
    v91 = v15;
    v90 = v39;
    if (Strong)
    {
      sub_10002849C(&unk_100973AF0);

      BaseObjectGraph.injectIfAvailable<A>(_:)();

      if (v111)
      {
        swift_getObjectType();
        OfferDisplayProperties.adamId.getter();
        dispatch thunk of AppStateController.stateMachine(forApp:)();
        swift_unknownObjectRelease();
        (*(v31 + 8))(v33, v30);
        swift_getObjectType();
        v41 = v108;
        dispatch thunk of AppStateMachine.currentState.getter();
        swift_unknownObjectRelease();
        v42 = type metadata accessor for LegacyAppState();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v42 = type metadata accessor for LegacyAppState();
    v41 = v108;
    (*(*(v42 - 8) + 56))(v108, 1, 1, v42);
LABEL_7:
    v43 = v103;
    sub_100031660(v41, v36, &qword_1009908F8);
    type metadata accessor for LegacyAppState();
    v44 = *(v42 - 8);
    v45 = (*(v44 + 48))(v36, 1, v42);
    v46 = v92;
    if (v45 == 1)
    {
      sub_10002B894(v36, &qword_1009908F8);
    }

    else
    {
      if ((*(v44 + 88))(v36, v42) == enum case for LegacyAppState.installing(_:))
      {
        (*(v44 + 96))(v36, v42);
        v47 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        (*(*(v47 - 8) + 8))(v36, v47);
        v48 = 1;
        goto LABEL_13;
      }

      (*(v44 + 8))(v36, v42);
    }

    v48 = 0;
LABEL_13:
    v86 = v48;
    v49 = v110;
    sub_1000F479C(v48);
    OfferButtonPresenterViewTheme.environment.getter();
    v103 = [v49 traitCollection];
    v50 = v43[13];
    v51 = v104;
    v50(v46, enum case for OfferEnvironment.arcadeProductPage(_:), v104);
    v52 = static OfferEnvironment.== infix(_:_:)();
    v53 = v43[1];
    v53(v46, v51);
    if (v52)
    {
      if (qword_10096ECE8 != -1)
      {
        swift_once();
      }

      v54 = qword_1009D32F8;
      v55 = v101;
    }

    else
    {
      v50(v46, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v51);
      v56 = static OfferEnvironment.== infix(_:_:)();
      v53(v46, v51);
      if (v56)
      {
        v55 = v101;
        if (qword_10096ECE0 != -1)
        {
          swift_once();
        }

        v54 = qword_1009D32E0;
      }

      else
      {
        v57 = OfferEnvironment.isArcadeEnvironment.getter();
        v55 = v101;
        if ((v57 & 1) == 0)
        {
          v50(v46, enum case for OfferEnvironment.navigationBar(_:), v51);
          v69 = static OfferEnvironment.== infix(_:_:)();
          v53(v46, v51);
          if (v69)
          {
            v61 = v107;
            v59 = v99;
            if (qword_10096ECF0 != -1)
            {
              swift_once();
            }

            v70 = sub_1000056A8(v55, qword_100991070);
            v60 = v93;
            (*(v59 + 16))(v93, v70, v55);
          }

          else
          {
            v71 = UITraitCollection.prefersAccessibilityLayouts.getter();
            v61 = v107;
            v59 = v99;
            if (v85)
            {
              if (v71)
              {
                v72 = v93;
                if (qword_10096ECB8 != -1)
                {
                  swift_once();
                }

                v73 = qword_100991010;
              }

              else
              {
                v72 = v93;
                if (qword_10096ECC0 != -1)
                {
                  swift_once();
                }

                v73 = qword_100991028;
              }

              v76 = sub_1000056A8(v55, v73);
              v77 = v82;
              (*(v59 + 16))(v82, v76, v55);
              v78 = v84;
              (*(v59 + 32))(v84, v77, v55);
              v60 = v72;
              Copyable.copyWithOverrides(in:)();

              (*(v59 + 8))(v78, v55);
            }

            else
            {
              if (v71)
              {
                v74 = v93;
                if (qword_10096ECB8 != -1)
                {
                  swift_once();
                }

                v75 = qword_100991010;
              }

              else
              {
                v74 = v93;
                if (qword_10096ECC0 != -1)
                {
                  swift_once();
                }

                v75 = qword_100991028;
              }

              v79 = sub_1000056A8(v55, v75);
              v80 = v83;
              (*(v59 + 16))(v83, v79, v55);

              (*(v59 + 32))(v74, v80, v55);
              v60 = v74;
            }
          }

          goto LABEL_26;
        }

        if (qword_10096ECD8 != -1)
        {
          swift_once();
        }

        v54 = qword_1009D32C8;
      }
    }

    v58 = sub_1000056A8(v55, v54);
    v59 = v99;
    v60 = v93;
    (*(v99 + 16))(v93, v58, v55);

    v61 = v107;
LABEL_26:
    v62 = *(v59 + 32);
    v63 = v95;
    v62(v95, v60, v55);
    v53(v91, v51);
    v62(v96, v63, v55);
    (*(v105 + 16))(v106, v89, v87);
    (*(v61 + 16))(v88, v109, v94);
    v64 = v98;
    ProgressConfiguration.init(metrics:progress:alignment:theme:isInstalling:)();
    v65 = v100;
    v66 = v97;
    v67 = v102;
    (*(v100 + 16))(v97, v64, v102);
    v68 = v110;
    sub_10064F960(v66, v110, &type metadata accessor for ProgressConfiguration, &protocol witness table for ProgressConfiguration, &unk_1008CCF08, sub_100653844, &unk_1008CCF20);
    (*(v65 + 8))(v64, v67);
    [v68 setSelected:0];
    [v68 accessibilityShowProgress:a4];

    sub_10002B894(v108, &qword_1009908F8);
  }
}

void sub_100651CB4(uint64_t a1, uint64_t a2, int a3)
{
  v147 = a3;
  v182 = a1;
  v5 = type metadata accessor for RedownloadConfiguration();
  v172 = *(v5 - 8);
  v173 = v5;
  __chkstk_darwin(v5);
  v170 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v143 - v8;
  v9 = type metadata accessor for OfferButtonPresenterViewTheme();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TextConfigurationTheme();
  __chkstk_darwin(v13 - 8);
  v169 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for OfferStyle();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v164 = &v143 - v17;
  v18 = sub_10002849C(&unk_100973240);
  v179 = *(v18 - 8);
  v180 = v18;
  __chkstk_darwin(v18);
  v181 = &v143 - v19;
  v185 = type metadata accessor for OfferEnvironment();
  v175 = *(v185 - 8);
  __chkstk_darwin(v185);
  v177 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v184 = &v143 - v22;
  __chkstk_darwin(v23);
  v176 = &v143 - v24;
  v178 = type metadata accessor for OfferButtonMetrics();
  v183 = *(v178 - 8);
  __chkstk_darwin(v178);
  v145 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v143 - v27;
  __chkstk_darwin(v28);
  v146 = &v143 - v29;
  __chkstk_darwin(v30);
  v162 = &v143 - v31;
  __chkstk_darwin(v32);
  v163 = &v143 - v33;
  __chkstk_darwin(v34);
  v166 = &v143 - v35;
  __chkstk_darwin(v36);
  v148 = &v143 - v37;
  __chkstk_darwin(v38);
  v155 = &v143 - v39;
  __chkstk_darwin(v40);
  v154 = &v143 - v41;
  __chkstk_darwin(v42);
  v156 = &v143 - v43;
  __chkstk_darwin(v44);
  v157 = &v143 - v45;
  v161 = type metadata accessor for PausedConfiguration();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v159 = &v143 - v48;
  v49 = type metadata accessor for AdamId();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10002849C(&qword_1009908F8);
  __chkstk_darwin(v53 - 8);
  v55 = &v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v186 = &v143 - v57;
  v58 = *&v3[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties];
  if (v58)
  {
    v151 = v12;
    v152 = v10;
    v153 = v9;
    v174 = a2;
    v59 = v3;
    if (swift_weakLoadStrong())
    {
      sub_10002849C(&unk_100973AF0);

      BaseObjectGraph.inject<A>(_:)();

      swift_getObjectType();
      OfferDisplayProperties.adamId.getter();
      dispatch thunk of AppStateController.stateMachine(forApp:)();
      swift_unknownObjectRelease();
      (*(v50 + 8))(v52, v49);
      swift_getObjectType();
      v60 = v186;
      dispatch thunk of AppStateMachine.currentState.getter();
      swift_unknownObjectRelease();
      v61 = type metadata accessor for LegacyAppState();
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    }

    else
    {
      v61 = type metadata accessor for LegacyAppState();
      v60 = v186;
      (*(*(v61 - 8) + 56))(v186, 1, 1, v61);
    }

    sub_100031660(v60, v55, &qword_1009908F8);
    type metadata accessor for LegacyAppState();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v55, 1, v61) == 1)
    {
      sub_10002B894(v55, &qword_1009908F8);
      v63 = 0;
    }

    else
    {
      v63 = LegacyAppState.isPaused.getter();
      (*(v62 + 8))(v55, v61);
    }

    v64 = v59;
    v65 = v184;
    v150 = v58;
    v66 = objc_opt_self();
    [v66 begin];
    v149 = v66;
    [v66 setDisableActions:1];
    v67 = v174;
    v68 = (v175 + 104);
    v69 = (v175 + 8);
    v70 = v176;
    v175 += 8;
    if (v63)
    {
      OfferButtonPresenterViewTheme.environment.getter();
      v184 = [v64 traitCollection];
      v71 = *v68;
      v72 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v73 = static OfferEnvironment.== infix(_:_:)();
      v74 = *v69;
      v74(v65, v72);
      v143 = v64;
      if (v73)
      {
        v75 = v67;
        if (qword_10096ED00 != -1)
        {
          swift_once();
        }

        v76 = v178;
        v77 = sub_1000056A8(v178, qword_1009D3310);
        v78 = v183;
        v79 = v155;
        (*(v183 + 16))(v155, v77, v76);

        v80 = v78;
        v81 = v185;
      }

      else
      {
        v71(v65, enum case for OfferEnvironment.navigationBar(_:), v72);
        v95 = static OfferEnvironment.== infix(_:_:)();
        v74(v65, v72);
        v81 = v72;
        if (v95 & 1) != 0 && (v96 = type metadata accessor for Feature(), v187[3] = v96, v187[4] = sub_100653644(&qword_100972E50, &type metadata accessor for Feature), v97 = sub_1000056E0(v187), (*(*(v96 - 8) + 104))(v97, enum case for Feature.glass_offer_button_2025A(_:), v96), LOBYTE(v96) = isFeatureEnabled(_:)(), sub_100007000(v187), (v96))
        {
          v75 = v67;
          if (qword_10096ECF8 != -1)
          {
            swift_once();
          }

          v76 = v178;
          v98 = sub_1000056A8(v178, qword_100991088);
          v99 = v183;
          v79 = v155;
          (*(v183 + 16))(v155, v98, v76);

          v80 = v99;
        }

        else
        {
          if (UITraitCollection.prefersAccessibilityLayouts.getter())
          {
            v76 = v178;
            v75 = v67;
            if (qword_10096ECD0 != -1)
            {
              swift_once();
            }

            v102 = qword_100991058;
          }

          else
          {
            v76 = v178;
            v75 = v67;
            if (qword_10096ECC8 != -1)
            {
              swift_once();
            }

            v102 = qword_100991040;
          }

          v105 = sub_1000056A8(v76, v102);
          v106 = v183;
          v107 = v148;
          (*(v183 + 16))(v148, v105, v76);

          v80 = v106;
          v79 = v155;
          (*(v106 + 32))(v155, v107, v76);
        }
      }

      v108 = *(v80 + 32);
      v109 = v154;
      v108(v154, v79, v76);
      v110 = v156;
      v108(v156, v109, v76);
      v74(v70, v81);
      v108(v157, v110, v76);
      (*(v179 + 16))(v181, v182, v180);
      v111 = v164;
      v112 = v75;
      OfferButtonPresenterViewTheme.style.getter();
      v113 = v167;
      v114 = v165;
      v115 = v168;
      (*(v167 + 104))(v165, enum case for OfferStyle.disabled(_:), v168);
      static OfferStyle.== infix(_:_:)();
      v116 = *(v113 + 8);
      v116(v114, v115);
      v116(v111, v115);
      (*(v152 + 16))(v151, v112, v153);
      TextConfigurationTheme.init(from:)();
      v117 = v159;
      PausedConfiguration.init(metrics:alignment:isDisabled:theme:isProductPage:)();
      v118 = v160;
      v119 = v158;
      v120 = v161;
      (*(v160 + 16))(v158, v117, v161);
      v64 = v143;
      sub_10064F960(v119, v143, &type metadata accessor for PausedConfiguration, &protocol witness table for PausedConfiguration, &unk_1008CCE18, sub_1006535C4, &unk_1008CCE30);
      (*(v118 + 8))(v117, v120);
      v121 = &selRef_accessibilityShowPaused;
    }

    else
    {
      OfferButtonPresenterViewTheme.environment.getter();
      v82 = [v64 traitCollection];
      v83 = *v68;
      v84 = v185;
      (*v68)(v65, enum case for OfferEnvironment.arcadeProductPage(_:), v185);
      v85 = static OfferEnvironment.== infix(_:_:)();
      v86 = *v69;
      (*v69)(v65, v84);
      if (v85)
      {
        if (qword_10096ECE8 != -1)
        {
          swift_once();
        }

        v87 = v178;
        v88 = sub_1000056A8(v178, qword_1009D32F8);
        v89 = v183;
        v90 = v162;
        (*(v183 + 16))(v162, v88, v87);

        v91 = v153;
        v92 = v185;
        v93 = v86;
        v94 = v174;
      }

      else
      {
        v83(v65, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v84);
        v100 = static OfferEnvironment.== infix(_:_:)();
        (v86)(v65, v84);
        v93 = v86;
        if (v100)
        {
          v90 = v162;
          if (qword_10096ECE0 != -1)
          {
            swift_once();
          }

          v87 = v178;
          v101 = sub_1000056A8(v178, qword_1009D32E0);
          v89 = v183;
          (*(v183 + 16))(v90, v101, v87);

          v91 = v153;
          v92 = v185;
          v94 = v174;
        }

        else
        {
          v103 = v82;
          if (OfferEnvironment.isArcadeEnvironment.getter())
          {
            v90 = v162;
            v94 = v174;
            if (qword_10096ECD8 != -1)
            {
              swift_once();
            }

            v87 = v178;
            v104 = sub_1000056A8(v178, qword_1009D32C8);
            v89 = v183;
            (*(v183 + 16))(v90, v104, v87);

            v91 = v153;
            v92 = v185;
          }

          else
          {
            v176 = v93;
            v123 = v184;
            v122 = v185;
            v83(v184, enum case for OfferEnvironment.navigationBar(_:), v185);
            v124 = static OfferEnvironment.== infix(_:_:)();
            v125 = v123;
            v93 = v176;
            v126 = v122;
            (v176)(v125, v122);
            v94 = v174;
            if (v124)
            {
              v92 = v126;
              v91 = v153;
              v87 = v178;
              if (qword_10096ECF0 != -1)
              {
                swift_once();
              }

              v127 = sub_1000056A8(v87, qword_100991070);
              v89 = v183;
              v90 = v162;
              (*(v183 + 16))(v162, v127, v87);
            }

            else
            {
              v128 = UITraitCollection.prefersAccessibilityLayouts.getter();
              v91 = v153;
              v87 = v178;
              if (v147)
              {
                if (v128)
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_10096ECB8 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_100991010;
                }

                else
                {
                  v129 = v183;
                  v92 = v126;
                  if (qword_10096ECC0 != -1)
                  {
                    swift_once();
                  }

                  v130 = qword_100991028;
                }

                v132 = sub_1000056A8(v87, v130);
                v133 = v144;
                (*(v129 + 16))(v144, v132, v87);
                v134 = v146;
                (*(v129 + 32))(v146, v133, v87);
                v90 = v162;
                Copyable.copyWithOverrides(in:)();
                v89 = v183;

                (*(v89 + 8))(v134, v87);
              }

              else
              {
                if (v128)
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_10096ECB8 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100991010;
                }

                else
                {
                  v89 = v183;
                  v92 = v126;
                  if (qword_10096ECC0 != -1)
                  {
                    swift_once();
                  }

                  v131 = qword_100991028;
                }

                v135 = sub_1000056A8(v87, v131);
                v136 = v145;
                (*(v89 + 16))(v145, v135, v87);

                v90 = v162;
                (*(v89 + 32))(v162, v136, v87);
              }

              v93 = v176;
            }
          }
        }
      }

      v137 = *(v89 + 32);
      v138 = v163;
      v137(v163, v90, v87);
      (v93)(v177, v92);
      v137(v166, v138, v87);
      (*(v179 + 16))(v181, v182, v180);
      (*(v152 + 16))(v151, v94, v91);
      v139 = v171;
      RedownloadConfiguration.init(metrics:alignment:theme:)();
      v141 = v172;
      v140 = v173;
      v142 = v170;
      (*(v172 + 16))(v170, v139, v173);
      sub_10064F960(v142, v64, &type metadata accessor for RedownloadConfiguration, &protocol witness table for RedownloadConfiguration, &unk_1008CCE68, sub_100653844, &unk_1008CCE80);
      (*(v141 + 8))(v139, v140);
      v121 = &selRef_accessibilityShowRedownload;
    }

    [v64 *v121];
    [v149 commit];

    sub_10002B894(v186, &qword_1009908F8);
  }
}

uint64_t *sub_1006533A8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1006535D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009741F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100653644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10065368C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006536FC(uint64_t a1)
{
  v3 = *(sub_10002849C(&unk_100973230) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10002849C(&unk_1009701A0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  return sub_10064C644(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1 + v4, v7, *(v7 + *(v6 + 64)), *(v7 + *(v6 + 64) + 1));
}

void sub_100653848(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1004428F4, v8);
}

uint64_t sub_10065391C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100990910);
  sub_1000056A8(v4, qword_100990910);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100653A88()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100990928);
  sub_1000056A8(v4, qword_100990928);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

char *sub_100653BDC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_allowBatchUpdates) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails) = 0;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_pendingRefresh) = 0;
  v5 = OBJC_IVAR____TtC8AppStore21AccountViewController_compoundScrollObserver;
  v6 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v2 + v5) = CompoundScrollObserver.init(children:)();
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating) = 0;
  v7 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator) = v7;
  v8 = [objc_allocWithZone(UIRefreshControl) init];
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl) = v8;
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_presenter) = a1;
  type metadata accessor for ImpressionsCalculator();

  BaseObjectGraph.optional<A>(_:)();
  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_impressionsCoordinator) = ImpressionsScrollObserver.init(_:)();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_1000659FC(v9, a2);

  v34[3] = type metadata accessor for AccountPresenter();
  v34[4] = &protocol witness table for BasePresenter;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  v12 = v10;
  sub_1003C89B0(v34, v10 + v11);
  swift_endAccess();
  v12[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  v13 = &selRef__setDefaultAttributes_;
  v14 = [v12 navigationItem];
  [v14 setLargeTitleDisplayMode:2];

  sub_10065D9D0(&qword_1009909D8, v15, type metadata accessor for AccountViewController);
  v16 = v12;
  dispatch thunk of AccountPresenter.view.setter();
  v17 = [v16 navigationItem];
  dispatch thunk of AccountPresenter.title.getter();
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
    v13 = &selRef__setDefaultAttributes_;
  }

  else
  {
    v19 = 0;
  }

  [v17 setTitle:v19];

  v20 = [v16 v13[432]];
  v21 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*&v16[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator]];
  [v20 setLeftBarButtonItem:v21];

  v22 = [v16 v13[432]];
  v23 = [v22 leftBarButtonItem];

  if (v23)
  {
    v24 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
    swift_beginAccess();
    [v23 setHidden:(v16[v24] & 1) == 0];
  }

  v25 = *&v16[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl];
  v26 = v16;
  [v25 addTarget:v26 action:"refreshControlValueChanged" forControlEvents:4096];
  v27 = sub_10065D9D0(&qword_1009909E0, 255, &type metadata accessor for AccountPresenter);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = v27;

  v30 = sub_10065CA50(a1, v26, sub_1002EA09C, v29, a2);

  v31 = *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing];
  *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing] = v30;

  v32 = *&v26[OBJC_IVAR____TtC8AppStore21AccountViewController_compoundScrollObserver];

  CompoundScrollObserver.addChild(_:)();

  return v26;
}

void sub_100654134()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10002849C(&qword_100990A98);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &ObjectType - v3;
  v5 = type metadata accessor for AccountViewController();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  [v7 setBackgroundColor:v9];

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v8 systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  [v13 setAlwaysBounceVertical:1];

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  [v15 setRefreshControl:*&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl]];

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v17 setDelegate:v1];

  v19 = sub_100655410();
  v20 = *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource] = v19;

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v41 = sub_10065DA18;
  v42 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E9BD4;
  v40 = &unk_1008CD448;
  v27 = _Block_copy(aBlock);

  v28 = [v26 initWithSectionProvider:v27];
  _Block_release(v27);

  [v22 setCollectionViewLayout:v28];

  dispatch thunk of AccountPresenter.onApplySnapshot.getter();
  v29 = sub_100005744(0, &qword_1009729E0);
  v30 = static OS_dispatch_queue.main.getter();
  v40 = v29;
  v41 = &protocol witness table for OS_dispatch_queue;
  aBlock[0] = v30;
  sub_10002849C(&qword_100990AA0);
  sub_10065DA20();
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v2 + 8))(v4, v38);
  sub_100007000(aBlock);
  dispatch thunk of BasePresenter.didLoad()();
  v31 = *&v1[OBJC_IVAR____TtC8AppStore21AccountViewController_flowPreviewing];
  if (!v31)
  {
    return;
  }

  v32 = objc_allocWithZone(UIContextMenuInteraction);
  v33 = v31;
  v34 = [v32 initWithDelegate:v33];
  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 addInteraction:v34];
}

void *sub_1006548B4(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v46 = a1;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100990A48);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_10002849C(&qword_100990A50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UICollectionLayoutListConfiguration();
  v17 = *(v47 - 8);
  v18 = __chkstk_darwin(v47);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v13, v18);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v21 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorInsets.setter();
  v21(v51, 0);
  v22 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
  v22(v51, 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v24 = Strong, v25 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource), v26 = v25, v24, !v25))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_10;
  }

  dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_10:
    sub_10002B894(v8, &qword_100990A48);
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27 = v50;
  if (!v50)
  {
    goto LABEL_12;
  }

  v28 = v49;

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  }

  else
  {
LABEL_12:
    v30 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v41 + 104))(v40, *v30, v42);
  UICollectionLayoutListConfiguration.headerMode.setter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v35 = v50;
  if (!v50)
  {
    goto LABEL_18;
  }

  v36 = v49;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
  }

  else
  {
LABEL_18:
    v38 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
  }

  (*(v44 + 104))(v43, *v38, v45);
  UICollectionLayoutListConfiguration.footerMode.setter();

  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  (*(v10 + 8))(v12, v9);
LABEL_11:
  sub_100005744(0, &unk_100990AB0);
  v31 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v31 contentInsets];
  v33 = v32;
  [v31 contentInsets];
  [v31 setContentInsets:{v33, 16.0}];
  (*(v17 + 8))(v20, v47);
  return v31;
}

id sub_100654F14()
{
  v0 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v0 - 8);
  v2 = &aBlock[-1] - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      v7 = sub_10002849C(&unk_1009731D0);
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v2, 1, v7) == 1)
      {
        sub_10002B894(v2, &qword_100977FB8);
      }

      else
      {
        ReadOnlyLens.value.getter();
        (*(v8 + 8))(v2, v7);
        sub_10002849C(&qword_100973D50);
        type metadata accessor for AccountPresenter.UpdatesLockupItem();
        if (swift_dynamicCast())
        {
          v9 = aBlock[9];
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = v10;

            LOBYTE(v11) = dispatch thunk of AccountPresenter.canUninstall(_:)();

            if (v11)
            {
              v12._object = 0x800000010081EBA0;
              v12._countAndFlagsBits = 0xD000000000000015;
              v13._countAndFlagsBits = 0;
              v13._object = 0xE000000000000000;
              localizedString(_:comment:)(v12, v13);
              v14 = swift_allocObject();
              swift_beginAccess();
              v15 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v16 = swift_allocObject();
              *(v16 + 16) = v14;
              *(v16 + 24) = v9;

              v17 = String._bridgeToObjectiveC()();

              aBlock[4] = sub_10065DB0C;
              aBlock[5] = v16;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100653848;
              aBlock[3] = &unk_1008CD4C0;
              v18 = _Block_copy(aBlock);
              v19 = [objc_opt_self() contextualActionWithStyle:1 title:v17 handler:v18];

              _Block_release(v18);

              sub_10002849C(&qword_100973210);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_1007B0B70;
              *(v20 + 32) = v19;
              sub_100005744(0, &unk_100990AC0);
              v21 = v19;
              isa = Array._bridgeToObjectiveC()().super.isa;

              v23 = [objc_opt_self() configurationWithActions:isa];

              [v23 setPerformsFirstActionWithFullSwipe:0];

              return v23;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10065536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    dispatch thunk of AccountPresenter.uninstall(_:)();
  }

  return a3(0);
}

id sub_100655410()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100990A20);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v69 = v3;
  v70 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = v64 - v5;
  v6 = sub_10002849C(&qword_100990A28);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v67 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v7;
  __chkstk_darwin(v8);
  v86 = v64 - v9;
  v81 = sub_10002849C(&unk_100990A30);
  v73 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  __chkstk_darwin(v11);
  v13 = v64 - v12;
  v80 = sub_10002849C(&qword_100972CF8);
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = v64 - v16;
  __chkstk_darwin(v17);
  v19 = v64 - v18;
  v65 = v20;
  __chkstk_darwin(v21);
  v23 = v64 - v22;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10);
  v77 = v23;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v19;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AccountActionSectionFooterView();
  v79 = v13;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = ObjectType;
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  type metadata accessor for AccountDetailCollectionViewCell();
  sub_10002849C(&qword_100973D50);
  v27 = v86;
  UICollectionView.CellRegistration.init(handler:)();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v26;
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v30 = v87;
  UICollectionView.CellRegistration.init(handler:)();
  result = [v1 collectionView];
  ObjectType = result;
  if (result)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v82;
    v34 = *(v82 + 16);
    v35 = v67;
    v64[1] = v1;
    v36 = v83;
    v34(v67, v27);
    v37 = v84;
    v38 = v85;
    v39 = v70;
    (*(v84 + 16))(v70, v30, v85);
    v40 = v33;
    v41 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v42 = (v66 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v32;
    (*(v40 + 32))(v43 + v41, v35, v36);
    (*(v37 + 32))(v43 + v42, v39, v38);
    v44 = objc_allocWithZone(sub_10002849C(&qword_100990A40));
    ObjectType = ModelMappedDiffableDataSource.init(collectionView:cellProvider:)();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v68;
    v48 = v80;
    v46(v68, v77, v80);
    v49 = v73;
    (*(v73 + 16))(v76, v79, v81);
    v46(v75, v78, v48);
    v50 = *(v45 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v65 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (*(v49 + 80) + v52 + 8) & ~*(v49 + 80);
    v54 = (v71 + v50 + v53) & ~v50;
    v55 = swift_allocObject();
    v56 = *(v45 + 32);
    v57 = v47;
    v58 = v80;
    v56(v55 + v51, v57, v80);
    *(v55 + v52) = v70;
    v59 = v55 + v53;
    v60 = v81;
    (*(v49 + 32))(v59, v76, v81);
    v61 = v58;
    v56(v55 + v54, v75, v58);
    v62 = ObjectType;

    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    (*(v84 + 8))(v87, v85);
    (*(v82 + 8))(v86, v83);
    (*(v49 + 8))(v79, v60);
    v63 = *(v45 + 8);
    v63(v78, v61);
    v63(v77, v61);

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100655D38(void *a1)
{
  v2 = sub_10002849C(&qword_100990A48);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    static UIListContentConfiguration.groupedHeader()();
    v14 = *&v13[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
    v22 = a1;
    if (v14)
    {
      v15 = v14;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v16 = sub_10002849C(&qword_100990A50);
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_100031660(v7, v4, &qword_100990A48);
    v17 = sub_10002849C(&qword_100990A50);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_10002B894(v4, &qword_100990A48);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v18 + 8))(v4, v17);
    }

    UIListContentConfiguration.text.setter();
    v23[3] = v8;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_1000056E0(v23);
    (*(v9 + 16))(v19, v11, v8);
    v20 = v22;
    UICollectionViewCell.contentConfiguration.setter();
    [v13 pageMarginInsets];
    [v20 setLayoutMargins:?];

    sub_10002B894(v7, &qword_100990A48);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1006560A8(void *a1)
{
  v2 = type metadata accessor for UIListContentConfiguration.TextProperties.TextAlignment();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_100990A70);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_10002849C(&qword_100990A48);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for UIListContentConfiguration();
  v46 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v44 = v19;
    static UIListContentConfiguration.groupedFooter()();
    v24 = *&v23[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
    v45 = a1;
    v43 = v23;
    if (v24)
    {
      v25 = v24;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v26 = sub_10002849C(&qword_100990A50);
      (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    }

    sub_100031660(v18, v15, &qword_100990A48);
    v27 = sub_10002849C(&qword_100990A50);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v15, 1, v27) == 1)
    {
      sub_10002B894(v15, &qword_100990A48);
      v30 = type metadata accessor for AccountPresenter.Section.Identifier();
      (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
      sub_10002B894(v9, &unk_100990A70);
    }

    else
    {
      v39 = v29;
      ReadOnlyLens.value.getter();
      (*(v28 + 8))(v15, v27);
      AccountPresenter.Section.identifier.getter();

      v31 = type metadata accessor for AccountPresenter.Section.Identifier();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v9, 0, 1, v31);
      sub_10065CE28(v9, v6);
      if ((*(v32 + 88))(v6, v31) == enum case for AccountPresenter.Section.Identifier.userInfo(_:))
      {
        (*(v41 + 104))(v40, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v42);
        v33 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.alignment.setter();
        v33(v47, 0);
      }

      else
      {
        (*(v32 + 8))(v6, v31);
      }

      v29 = v39;
    }

    sub_100031660(v18, v12, &qword_100990A48);
    if (v29(v12, 1, v27) == 1)
    {
      sub_10002B894(v12, &qword_100990A48);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v28 + 8))(v12, v27);
    }

    v34 = v45;
    UIListContentConfiguration.text.setter();
    v35 = v44;
    v47[3] = v44;
    v47[4] = &protocol witness table for UIListContentConfiguration;
    v36 = sub_1000056E0(v47);
    v37 = v46;
    (*(v46 + 16))(v36, v21, v35);
    UICollectionViewCell.contentConfiguration.setter();
    v38 = v43;
    [v43 pageMarginInsets];
    [v34 setLayoutMargins:?];

    sub_10002B894(v18, &qword_100990A48);
    return (*(v37 + 8))(v21, v35);
  }

  return result;
}

uint64_t sub_10065673C(char *a1)
{
  v2 = sub_10002849C(&qword_100990A48);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
    if (v13)
    {
      v14 = v13;
      IndexPath.section.getter();
      dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();
    }

    else
    {
      v15 = sub_10002849C(&qword_100990A50);
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_100031660(v10, v7, &qword_100990A48);
    v16 = sub_10002849C(&qword_100990A50);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v7, 1, v16) == 1)
    {
      sub_10002B894(v7, &qword_100990A48);
      v19 = 0uLL;
    }

    else
    {
      swift_getKeyPath();
      v27 = v4;
      ReadOnlyLens.subscript.getter();
      v4 = v27;

      v26 = v28;
      (*(v17 + 8))(v7, v16);
      v19 = v26;
    }

    *&a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text] = v19;

    sub_1007434FC();
    sub_100031660(v10, v4, &qword_100990A48);
    if (v18(v4, 1, v16) == 1)
    {
      sub_10002B894(v4, &qword_100990A48);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v22 = v28;
      if (v28)
      {
        v23 = *(&v28 + 1);
        v21 = swift_allocObject();
        *(v21 + 16) = v22;
        *(v21 + 24) = v23;
        v20 = sub_10041D558;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      (*(v17 + 8))(v4, v16);
    }

    v24 = &a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
    v25 = *&a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
    *v24 = v20;
    v24[1] = v21;
    sub_10001F63C(v25);
    [v12 pageMarginInsets];
    [a1 setLayoutMargins:?];
    a1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered] = 1;
    sub_1007434FC();

    return sub_10002B894(v10, &qword_100990A48);
  }

  return result;
}

uint64_t sub_100656B58@<X0>(uint64_t (**a1)()@<X8>)
{
  result = AccountPresenter.Section.footerButtonHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_100055FCC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

id sub_100656BC8()
{
  v0 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  v6 = v5;

  if (!v5)
  {
    goto LABEL_10;
  }

  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v7 = sub_10002849C(&unk_1009731D0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10002B894(v2, &qword_100977FB8);
    goto LABEL_10;
  }

  ReadOnlyLens.value.getter();
  (*(v8 + 8))(v2, v7);
  sub_100005A38(v16, v17);
  sub_10002C0AC(v17, v16);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AccountPresenter.AccountDetailItem();
  if (!swift_dynamicCast())
  {
    type metadata accessor for AccountPresenter.UpdatesLockupItem();
    if (swift_dynamicCast())
    {

      sub_10002C0AC(v17, v15);
      type metadata accessor for UpdatesLockupCollectionViewCell();
      v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_10002B894(v15, &unk_10097DBE0);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  sub_10002C0AC(v17, v15);
  type metadata accessor for AccountDetailCollectionViewCell();
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10002B894(v15, &unk_10097DBE0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v10 = v9;
  _StringGuts.grow(_:)(19);

  v14[1] = 0xD000000000000011;
  v14[2] = 0x800000010081EB30;
  sub_10002A400(v17, v17[3]);
  dispatch thunk of ComponentModel.id.getter();
  v11._countAndFlagsBits = AnyHashable.description.getter();
  String.append(_:)(v11);

  sub_10003D614(v15);
  v12 = String._bridgeToObjectiveC()();

  [v10 setAccessibilityIdentifier:v12];

LABEL_8:
  sub_100007000(v16);
  sub_100007000(v17);
  return v10;
}

uint64_t sub_100656FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[2] = a7;
  v32 = a1;
  v11 = sub_10002849C(&qword_100990A48);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = sub_10002849C(&qword_100990A50);
  v31 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v30 - v15;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v17 == a3)
  {

    goto LABEL_13;
  }

  v30[1] = a8;
  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
LABEL_13:
    sub_100005744(0, &qword_100978E10);
    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v20 == a3)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource), v26 = Strong, v27 = v25, v26, !v25))
  {
    (*(v31 + 56))(v13, 1, 1, v14);
    goto LABEL_21;
  }

  IndexPath.section.getter();
  dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

  v28 = v31;
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {
LABEL_21:
    sub_10002B894(v13, &qword_100990A48);
    goto LABEL_13;
  }

  (*(v28 + 32))(v16, v13, v14);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (!v33)
  {
    (*(v28 + 8))(v16, v14);
    goto LABEL_13;
  }

  sub_10001F63C(v33);
  type metadata accessor for AccountActionSectionFooterView();
  v29 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v28 + 8))(v16, v14);
  return v29;
}

uint64_t sub_100657368(char *a1, uint64_t a2, uint64_t a3)
{
  v174 = type metadata accessor for AccountPresenter.AccountDetailItem.Accessory();
  v171 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v154 = &v147 - v7;
  v8 = sub_10002849C(&unk_100990A58);
  __chkstk_darwin(v8 - 8);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v162 = &v147 - v12;
  __chkstk_darwin(v13);
  v165 = &v147 - v14;
  __chkstk_darwin(v15);
  v161 = &v147 - v16;
  __chkstk_darwin(v17);
  v170 = &v147 - v18;
  __chkstk_darwin(v19);
  v164 = &v147 - v20;
  v21 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v21 - 8);
  v173 = (&v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v147 - v24);
  __chkstk_darwin(v26);
  v172 = (&v147 - v27);
  __chkstk_darwin(v28);
  v169 = &v147 - v29;
  v30 = type metadata accessor for AccountPresenter.AccountDetailItem.TitleStyle();
  v167 = *(v30 - 8);
  v168 = v30;
  __chkstk_darwin(v30);
  v166 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SystemImage();
  v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v152 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for Artwork.Style();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&qword_100990A68);
  __chkstk_darwin(v34 - 8);
  v36 = &v147 - v35;
  v37 = type metadata accessor for AccountPresenter.AccountDetailItem.ImageConfiguration();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v163 = &v147 - v42;
  sub_10002C0AC(a3, v177);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AccountPresenter.AccountDetailItem();
  result = swift_dynamicCast();
  if (result)
  {
    v151 = v25;
    v44 = v176;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v150 = v37;
    v157 = Strong;
    [Strong pageMarginInsets];
    [a1 setLayoutMargins:?];
    v46 = AccountPresenter.AccountDetailItem.accessoryMargin.getter();
    v47 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
    *v47 = v46;
    v47[8] = v48 & 1;
    v49 = AccountPresenter.AccountDetailItem.disabled.getter();
    v50 = a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled];
    a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled] = v49 & 1;
    v148 = v10;
    v175 = v44;
    if ((v49 & 1) != v50)
    {
      v51 = v49;
      [*&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] setEnabled:(v49 & 1) == 0];
      [*&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] setEnabled:(v51 & 1) == 0];
      [a1 setUserInteractionEnabled:(v51 & 1) == 0];
      [a1 setNeedsDisplay];
    }

    AccountPresenter.AccountDetailItem.title.getter();
    v52 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    if (v53)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    else
    {
      v54 = 0;
    }

    v149 = v52;
    [v52 setText:v54];

    [a1 setNeedsLayout];
    AccountPresenter.AccountDetailItem.subtitle.getter();
    v55 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
    if (v56)
    {
      v57 = String._bridgeToObjectiveC()();
    }

    else
    {
      v57 = 0;
    }

    v58 = v38;
    v59 = v150;
    [v55 setText:v57];

    if (sub_1006C4E1C())
    {
      [a1 setNeedsLayout];
    }

    AccountPresenter.AccountDetailItem.detail.getter();
    v60 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
    if (v61)
    {
      v62 = String._bridgeToObjectiveC()();
    }

    else
    {
      v62 = 0;
    }

    [v60 setText:v62];

    v63 = AccountPresenter.AccountDetailItem.shouldShowFullTitle.getter();
    v64 = a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
    a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = v63 & 1;
    if ((v63 & 1) != v64)
    {
      [a1 setNeedsLayout];
    }

    AccountPresenter.AccountDetailItem.image.getter();
    v65 = (*(v38 + 48))(v36, 1, v59);
    v66 = v171;
    v67 = v169;
    if (v65 == 1)
    {
      sub_10002B894(v36, &qword_100990A68);
    }

    else
    {
      v68 = v163;
      (*(v38 + 32))();
      (*(v38 + 16))(v40, v68, v59);
      v69 = (*(v38 + 88))(v40, v59);
      if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.image(_:))
      {
        (*(v38 + 96))(v40, v59);
        v70 = *v40;
        v71 = *(v40 + 3);
        v72 = v70;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];
        ArtworkView.imageSize.setter();
        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 1;
        v73 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v73 = v71;
        v73[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.unadorned(_:), v160);
        ArtworkView.style.setter();
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v74 = [objc_opt_self() clearColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();

        (*(v38 + 8))(v68, v59);
      }

      else if (v69 == enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.profileImage(_:))
      {
        (*(v38 + 96))(v40, v59);
        v75 = *v40;
        v178.width = 56.0;
        v178.height = 56.0;
        UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
        [v75 drawInRect:{0.0, 0.0, 56.0, 56.0}];
        v76 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v77 = v38;
        v78 = v76;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];

        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v79 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v79 = 0x4030000000000000;
        v79[8] = 0;
        (*(v159 + 104))(v158, enum case for Artwork.Style.round(_:), v160);
        ArtworkView.style.setter();
        v80 = [a1 traitCollection];
        static Separator.thickness(compatibleWith:)();

        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v81 = [objc_opt_self() separatorColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();

        (*(v77 + 8))(v163, v59);
      }

      else
      {
        if (v69 != enum case for AccountPresenter.AccountDetailItem.ImageConfiguration.systemImage(_:))
        {
LABEL_73:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v38 + 96))(v40, v59);
        v82 = v153;
        v83 = v152;
        (*(v153 + 32))();
        ArtworkView.frameUpdatesImageSize.setter();
        a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
        v84 = &a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
        *v84 = 0x4026000000000000;
        v84[8] = 0;
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        v85 = [objc_opt_self() clearColor];
        dispatch thunk of RoundedCornerView.borderColor.setter();
        v86 = [objc_opt_self() configurationWithPointSize:48.0];
        v87 = v83;
        v88 = static SystemImage.load(_:with:)();

        v89 = v88;
        ArtworkView.image.setter();
        [a1 setNeedsLayout];

        (*(v82 + 8))(v87, v156);
        (*(v58 + 8))(v163, v59);
      }
    }

    v90 = v166;
    AccountPresenter.AccountDetailItem.titleStyle.getter();
    v91 = (*(v167 + 88))(v90, v168);
    v92 = v174;
    v93 = v170;
    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.action(_:))
    {
      v94 = [v157 collectionView];
      if (v94)
      {
        v95 = v94;
        v96 = [v94 tintColor];

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v91 == enum case for AccountPresenter.AccountDetailItem.TitleStyle.primary(_:))
    {
      sub_100005744(0, &qword_100970180);
      v97 = static UIColor.primaryText.getter();
    }

    else
    {
      if (v91 != enum case for AccountPresenter.AccountDetailItem.TitleStyle.secondary(_:))
      {
LABEL_72:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_73;
      }

      sub_100005744(0, &qword_100970180);
      v97 = static UIColor.secondaryText.getter();
    }

    v96 = v97;
LABEL_35:
    [v149 setTextColor:v96];

    v98 = v164;
    AccountPresenter.AccountDetailItem.accessory.getter();
    v99 = (v66 + 48);
    v100 = *(v66 + 48);
    if (v100(v98, 1, v92) == 1)
    {
      sub_10002B894(v98, &unk_100990A58);
      v101 = type metadata accessor for Accessory();
      (*(*(v101 - 8) + 56))(v67, 1, 1, v101);
    }

    else
    {
      sub_100658978(v67);
      (*(v66 + 8))(v98, v92);
    }

    v102 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph;
    v103 = v157;
    v104 = *&v157[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];

    v168 = v103;
    sub_1006C51F4(v67, v104);

    sub_10002B894(v67, &qword_100984340);
    v105 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
    v106 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
    if (!v106)
    {
      goto LABEL_52;
    }

    v107 = v106;
    AccountPresenter.AccountDetailItem.accessory.getter();
    if (v100(v93, 1, v92) == 1)
    {
      sub_10002B894(v93, &unk_100990A58);
      v108 = type metadata accessor for Accessory();
      (*(*(v108 - 8) + 56))(v172, 1, 1, v108);
    }

    else
    {
      v109 = v93;
      v110 = v172;
      sub_100658978(v172);
      (*(v66 + 8))(v109, v92);
      v111 = type metadata accessor for Accessory();
      if ((*(*(v111 - 8) + 48))(v110, 1, v111) != 1)
      {
        v112 = 0;
LABEL_44:
        sub_10002B894(v172, &qword_100984340);
        [v107 setHidden:v112];

        v113 = *&a1[v105];
        if (v113)
        {
          v114 = v113;
          v115 = v161;
          AccountPresenter.AccountDetailItem.accessory.getter();
          if (v100(v115, 1, v92) == 1)
          {
            sub_10002B894(v115, &unk_100990A58);
            v116 = 0;
          }

          else
          {
            v117 = v154;
            (*(v66 + 16))(v154, v115, v92);
            if ((*(v66 + 88))(v117, v92) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
            {
              (*(v66 + 96))(v117, v92);
              v116 = *(v117 + 3);

              v118 = v66;
              v119 = v92;
              (*(v118 + 8))(v161, v92);
            }

            else
            {
              v120 = *(v66 + 8);
              v119 = v92;
              v120(v117, v92);
              v116 = 0;
              v120(v161, v92);
            }

            v92 = v119;
            v66 = v171;
          }

          [v114 setTintColor:v116];
        }

LABEL_52:
        v121 = v165;
        AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
        if (v100(v121, 1, v92) == 1)
        {
          sub_10002B894(v121, &unk_100990A58);
          v122 = type metadata accessor for Accessory();
          v123 = v151;
          (*(*(v122 - 8) + 56))(v151, 1, 1, v122);
        }

        else
        {
          v124 = v151;
          sub_100658978(v151);
          v123 = v124;
          (*(v66 + 8))(v121, v92);
        }

        v125 = v168;
        v126 = *&v157[v102];

        sub_1006C5624(v123, v126);

        sub_10002B894(v123, &qword_100984340);
        v127 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView;
        v128 = *&a1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
        if (!v128)
        {
LABEL_68:
        }

        v129 = v100;
        v130 = v66;
        v131 = v128;
        v132 = v162;
        AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
        v172 = v99;
        if (v129(v132, 1, v92) == 1)
        {
          sub_10002B894(v132, &unk_100990A58);
          v133 = type metadata accessor for Accessory();
          (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
          v134 = v130;
        }

        else
        {
          v135 = v132;
          v136 = v173;
          sub_100658978(v173);
          v134 = v130;
          (*(v130 + 8))(v135, v92);
          v137 = type metadata accessor for Accessory();
          v138 = v136;
          v125 = v168;
          if ((*(*(v137 - 8) + 48))(v138, 1, v137) != 1)
          {
            v139 = 0;
LABEL_61:
            sub_10002B894(v173, &qword_100984340);
            [v131 setHidden:v139];

            v140 = *&a1[v127];
            v141 = v174;
            if (v140)
            {
              v142 = v140;
              v143 = v148;
              AccountPresenter.AccountDetailItem.secondaryAccessory.getter();
              if (v129(v143, 1, v141) == 1)
              {
                sub_10002B894(v143, &unk_100990A58);
                v144 = 0;
              }

              else
              {
                v145 = v155;
                (*(v134 + 16))(v155, v143, v141);
                if ((*(v134 + 88))(v145, v141) == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
                {
                  (*(v134 + 96))(v145, v141);
                  v144 = *(v145 + 3);

                  (*(v134 + 8))(v143, v141);
                }

                else
                {
                  v146 = *(v134 + 8);
                  v146(v145, v141);
                  v144 = 0;
                  v146(v143, v141);
                }
              }

              [v142 setTintColor:v144];
            }

            goto LABEL_68;
          }
        }

        v139 = 1;
        goto LABEL_61;
      }
    }

    v112 = 1;
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_100658978@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccountPresenter.AccountDetailItem.Accessory();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.badge(_:) || v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.label(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a1 = *v8;
    a1[1] = v10;
    v11 = type metadata accessor for Accessory();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  if (v9 == enum case for AccountPresenter.AccountDetailItem.Accessory.artwork(_:))
  {
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    v13 = v8[3];
    v19 = *(v8 + 1);

    *a1 = v12;
    *(a1 + 1) = v19;
    v11 = type metadata accessor for Accessory();
    goto LABEL_6;
  }

  v15 = enum case for AccountPresenter.AccountDetailItem.Accessory.chevron(_:);
  v16 = v9;
  v17 = type metadata accessor for Accessory();
  v18 = v17;
  if (v16 == v15)
  {
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100658C68(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a3, v42);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AccountPresenter.UpdatesLockupItem();
  if (swift_dynamicCast())
  {
    v9 = v41;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v40 = a1;
      if (qword_10096EBC0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for StaticDimension();
      sub_1000056A8(v12, qword_100990910);
      v13 = v11;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v15 = v14;

      v16 = *(v6 + 8);
      v16(v8, v5);
      [v13 pageMarginInsets];
      v18 = v17;
      v19 = v13;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v21 = v20;

      v16(v8, v5);
      [v19 pageMarginInsets];
      v23 = v22;
      v24 = AccountPresenter.UpdatesLockupItem.lockup.getter();
      v25 = *&v19[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
      v26 = v19;

      v27 = [v26 traitCollection];
      v28 = [v27 horizontalSizeClass];

      if (v28 == 1)
      {
        v29 = AccountPresenter.UpdatesLockupItem.isCollapsed.getter();
      }

      else
      {
        v29 = 1;
      }

      v30 = v40;
      v31 = [v26 snapshotPageTraitEnvironment];

      sub_1003ABCA4(v24, v25, v29 & 1, 0, v31, v15, v18, v21, v23);

      swift_unknownObjectRelease();
      v32 = *&v30[OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_expandableTextView];
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v9;
      *(v34 + 24) = v33;
      v35 = (v32 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v36 = *(v32 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      *v35 = sub_10065CE20;
      v35[1] = v34;
      swift_retain_n();

      sub_10001F63C(v36);
      v37 = *(v32 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton);

      [v37 setUserInteractionEnabled:1];

      sub_100005744(0, &qword_100970180);
      v38 = static UIColor.tableViewCellBackground.getter();
      [v30 setBackgroundColor:v38];
    }

    else
    {
    }
  }
}

uint64_t sub_1006590B8()
{
  v0 = AccountPresenter.UpdatesLockupItem.moreButtonHandler.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = v4 == 1;
  }

  else
  {
    v5 = 1;
  }

  v0(v5);
}

void sub_100659174(void *a1)
{
  v3 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v8 = sub_10002849C(&unk_1009731D0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10002B894(v5, &qword_100977FB8);
    }

    else
    {
      ReadOnlyLens.value.getter();
      (*(v9 + 8))(v5, v8);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for AccountPresenter.Item();
      if (swift_dynamicCast())
      {
        dispatch thunk of AccountPresenter.didSelectItem(_:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [a1 deselectItemAtIndexPath:isa animated:1];
      }
    }
  }
}

uint64_t sub_10065948C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1006595A8(void *a1, uint64_t a2)
{
  v61 = a1;
  v4 = type metadata accessor for ImpressionMetrics.ID();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for ImpressionMetrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v49 - v13;
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v17 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  __chkstk_darwin(v24);
  v25 = v2;
  v26 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_presenter);
  v60 = a2;
  v28 = &v49 - v27;
  dispatch thunk of AccountPresenter.shelfImpressionMetrics(at:)();
  sub_100031660(v28, v23, &qword_100973D30);
  v29 = *(v10 + 48);
  v30 = v29(v23, 1, v9);
  v57 = v10;
  v59 = v9;
  v53 = v26;
  if (v30 == 1)
  {
    sub_10002B894(v23, &qword_100973D30);
    v31 = v61;
  }

  else
  {
    (*(v10 + 32))(v16, v23, v9);
    BasePresenter.impressionsCalculator.getter();
    v31 = v61;
    [v61 frame];
    ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();

    (*(v10 + 8))(v16, v9);
  }

  v32 = *(v25 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (!v32)
  {
    return sub_10002B894(v28, &qword_100973D30);
  }

  v33 = v29;
  v34 = v32;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v35 = sub_10002849C(&unk_1009731D0);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v8, 1, v35) == 1)
  {
    sub_10002B894(v8, &qword_100977FB8);
    return sub_10002B894(v28, &qword_100973D30);
  }

  v38 = v28;
  ReadOnlyLens.value.getter();
  (*(v36 + 8))(v8, v35);
  sub_100005A38(&v62, v63);
  sub_10002A400(v63, v63[3]);
  v39 = v58;
  dispatch thunk of ViewModel.impressionMetrics.getter();
  v40 = v59;
  v41 = v33;
  if (v33(v39, 1, v59) == 1)
  {
    sub_10002B894(v38, &qword_100973D30);
    v42 = v39;
  }

  else
  {
    v43 = v57;
    v44 = v55;
    (*(v57 + 32))(v55, v39, v40);
    BasePresenter.impressionsCalculator.getter();
    v45 = v54;
    sub_100031660(v38, v54, &qword_100973D30);
    if (v41(v45, 1, v40) == 1)
    {
      sub_10002B894(v45, &qword_100973D30);
    }

    else
    {
      v46 = v50;
      ImpressionMetrics.id.getter();
      (*(v43 + 8))(v45, v40);
      ImpressionMetrics.ID.element.getter();
      (*(v51 + 8))(v46, v52);
    }

    v47 = v56;
    ImpressionMetrics.withParentId(_:)();

    [v31 frame];
    ImpressionsCalculator.addElement(_:at:)();

    v48 = *(v43 + 8);
    v48(v47, v40);
    v48(v44, v40);
    v42 = v38;
  }

  sub_10002B894(v42, &qword_100973D30);
  return sub_100007000(v63);
}

void (*sub_100659C2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10065DA84;
}

void sub_100659C90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100990A08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  if ((dispatch thunk of AccountPresenter.isUpdatesLoading.getter() & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_refreshControl] endRefreshing];
  }

  v6 = *&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  if (v6)
  {
    v7 = v6;
    sub_10002849C(&unk_100990A10);
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v3 + 8))(v5, v2);
  }

  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 window];

  if (!v10)
  {
    return;
  }

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = v11;
  dispatch thunk of CompoundScrollObserver.didScroll(in:)();
}

void sub_10065A2CC()
{
  v1 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator] startAnimating];
    v2 = [v0 navigationItem];
    v3 = [v2 leftBarButtonItem];

    if (v3)
    {
      [v3 setHidden:0];
    }
  }

  else
  {
    v4 = [v0 navigationItem];
    v5 = [v4 leftBarButtonItem];

    if (v5)
    {
      [v5 setHidden:1];
    }

    [*&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_activityIndicator] stopAnimating];
  }
}

void sub_10065A3FC(void *a1)
{
  if ((v1[OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC8AppStore21AccountViewController_isPresentingForgotSignInDetails] = 1;
    [a1 setPresentingViewController:v1];
    v3 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v9[4] = sub_10065CB8C;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_10065A538;
      v9[3] = &unk_1008CD100;
      v6 = _Block_copy(v9);
      v7 = v4;
      v8 = v1;

      [v7 authenticateWithContext:a1 completion:v6];

      _Block_release(v6);
    }
  }
}

uint64_t sub_10065A538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10002849C(&qword_100990A00);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_10065A5E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(AAUISignInController) init];
  [v3 setServiceType:AIDAServiceTypeStore];
  [v3 setDelegate:v0];
  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_100990928);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = ObjectType;
  v9[4] = sub_10065CB80;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100235C48;
  v9[3] = &unk_1008CD0B0;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v8 prepareInViewController:v1 completion:v7];
  _Block_release(v7);
}

void sub_10065A880(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v7 = type metadata accessor for OSLogger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AlertActionStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  if (a1)
  {
    if (qword_10096EBC8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_100990928);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v44 = v12;
  v45 = _convertErrorToNSError(_:)();
  v18 = [v45 domain];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if ([v45 code] != -7005)
  {
LABEL_20:

LABEL_21:
    if (qword_10096EBC8 != -1)
    {
      swift_once();
    }

    v35 = sub_1000056A8(v7, qword_100990928);
    (*(v8 + 16))(v10, v35, v7);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    if (a2)
    {
      swift_getErrorValue();
      v36 = v47;
      v37 = v48;
      *(&v50 + 1) = v48;
      v38 = sub_1000056E0(&v49);
      (*(*(v37 - 8) + 16))(v38, v36, v37);
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    static LogMessage.safe(_:)();
    sub_10002B894(&v49, &unk_1009711D0);
    Logger.error(_:)();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;

      dispatch thunk of AccountPresenter.didFinishSignIn()();
    }

    return;
  }

  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v7, qword_100990928);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  *(&v50 + 1) = sub_100005744(0, &qword_10097D7D8);
  *&v49 = v45;
  v25 = v45;
  static LogMessage.safe(_:)();
  sub_10002B894(&v49, &unk_1009711D0);
  Logger.error(_:)();

  v26._object = 0x8000000100819050;
  v26._countAndFlagsBits = 0xD000000000000017;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  localizedString(_:comment:)(v26, v27);
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x8000000100819070;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  localizedString(_:comment:)(v28, v29);
  static ActionMetrics.notInstrumented.getter();
  (*(v44 + 104))(v14, enum case for AlertActionStyle.normal(_:), v11);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v30 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = v33;
    if (v33)
    {
      v33 = type metadata accessor for AccountViewController();
    }

    else
    {
      *(&v49 + 1) = 0;
      *&v50 = 0;
    }

    *&v49 = v34;
    *(&v50 + 1) = v33;
    sub_10065B690(v30, &v49);

    sub_10002B894(&v49, &unk_1009711D0);
  }

  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;

    dispatch thunk of AccountPresenter.didFinishSignIn()();
  }
}

void sub_10065B180()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10002849C(&qword_100975028);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource];
  if (v7)
  {
    v8 = v7;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v9 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v4 + 8))(v6, v3);
    if (v9 >= 1)
    {
      v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
      v11 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
      static ViewControllerContainment.remove(_:)();

      v12 = *&v1[v10];
      *&v1[v10] = 0;

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v39 = v16;
        v40 = v18;
        v41 = v20;
        v42 = v22;
        v43 = 0;
LABEL_8:
        static ViewControllerContainment.add(_:to:frame:)();

        return;
      }

      goto LABEL_10;
    }
  }

  static JULoadingViewController.PresentationContext.placeholder.getter();
  v23 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v24 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v25 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v27 = *&v1[v25];
  *&v1[v25] = v24;
  v8 = v24;

  v28 = [v1 view];
  if (v28)
  {
    v29 = v28;
    [v28 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v39 = v31;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_10065B444()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10065B510()
{
  v1 = v0;
  type metadata accessor for JUContentUnavailableViewController();
  sub_10065D9D0(&unk_1009909F0, 255, &type metadata accessor for AccountPresenter);
  swift_errorRetain();

  v2 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10065B690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v103, &unk_1009711D0);
  if (v104)
  {
    sub_100005744(0, &qword_100972EB0);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100005744(0, &qword_1009729E0);
      *v20 = static OS_dispatch_queue.main.getter();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = _dispatchPreconditionTest(_:)();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100975F50;
        v88 = xmmword_100975F60;
        v89 = xmmword_100975F70;
        v85 = xmmword_100975F30;
        v86 = xmmword_100975F40;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100975F30;
        v98 = xmmword_100975F40;
        v100 = xmmword_100975F60;
        v101 = xmmword_100975F70;
        v90 = qword_100975F80;
        v96 = v84;
        v102 = qword_100975F80;
        v99 = xmmword_100975F50;
        sub_100031660(&v85, &v73, &unk_10097F520);
        xmmword_100975F50 = v93;
        xmmword_100975F60 = v94;
        xmmword_100975F70 = v95;
        qword_100975F80 = v96;
        xmmword_100975F30 = v91;
        xmmword_100975F40 = v92;
        sub_10002B894(&v97, &unk_10097F520);
        v32 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
        v33 = sub_10002849C(&unk_100974490);
        sub_10019DADC(&v79, &v73);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10002B894(v16, &unk_100972A00);
        }

        else
        {
          sub_1005F9AF4(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100975F50;
        v76 = xmmword_100975F60;
        v77 = xmmword_100975F70;
        v78 = qword_100975F80;
        v73 = xmmword_100975F30;
        v74 = xmmword_100975F40;
        xmmword_100975F30 = v85;
        xmmword_100975F40 = v86;
        xmmword_100975F50 = v87;
        xmmword_100975F60 = v88;
        xmmword_100975F70 = v89;
        qword_100975F80 = v90;
        sub_10002B894(&v73, &unk_10097F520);
        sub_10019DB38(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10002B894(v103, &unk_1009711D0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
    v62 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10002B894(v11, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100005744(0, &qword_1009729E0);
  *v20 = static OS_dispatch_queue.main.getter();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100975F50;
  v88 = xmmword_100975F60;
  v89 = xmmword_100975F70;
  v85 = xmmword_100975F30;
  v86 = xmmword_100975F40;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100975F30;
  v98 = xmmword_100975F40;
  v100 = xmmword_100975F60;
  v101 = xmmword_100975F70;
  v90 = qword_100975F80;
  v96 = v84;
  v102 = qword_100975F80;
  v99 = xmmword_100975F50;
  sub_100031660(&v85, &v73, &unk_10097F520);
  xmmword_100975F50 = v93;
  xmmword_100975F60 = v94;
  xmmword_100975F70 = v95;
  qword_100975F80 = v96;
  xmmword_100975F30 = v91;
  xmmword_100975F40 = v92;
  sub_10002B894(&v97, &unk_10097F520);
  v55 = *&v71[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v56 = sub_10002849C(&unk_100974490);
  sub_10019DADC(&v79, &v73);
  v57 = v67;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10002B894(v57, &unk_100972A00);
  }

  else
  {
    sub_1005F9AF4(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100975F50;
  v76 = xmmword_100975F60;
  v77 = xmmword_100975F70;
  v78 = qword_100975F80;
  v73 = xmmword_100975F30;
  v74 = xmmword_100975F40;
  xmmword_100975F30 = v85;
  xmmword_100975F40 = v86;
  xmmword_100975F50 = v87;
  xmmword_100975F60 = v88;
  xmmword_100975F70 = v89;
  qword_100975F80 = v90;
  sub_10002B894(&v73, &unk_10097F520);
  sub_10019DB38(&v79);

  (*(v69 + 8))(v60, v64);
}

uint64_t sub_10065C2D4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100737C94();

  return dispatch thunk of AccountPresenter.refreshUpdates(fromServer:forceServerFetch:refreshBadgeCount:)();
}

uint64_t sub_10065C6F4()
{
}

id sub_10065C784()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10065C878()
{
  v1 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10065C8BC(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21AccountViewController_authenticating;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_10065A2CC();
}

void (*sub_10065C910(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10065C974;
}

void sub_10065C974(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10065A2CC();
  }
}

id sub_10065CA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10065D9D0(&qword_1009909E0, 255, &type metadata accessor for AccountPresenter);
  v9 = sub_10002849C(&qword_1009909E8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10065CBC8()
{
  sub_10002849C(&qword_100990A28);
  sub_10002849C(&qword_100990A20);

  return sub_100656BC8();
}

uint64_t sub_10065CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10002849C(&qword_100972CF8) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10002849C(&unk_100990A30) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v12);
  v16 = v4 + ((*(v13 + 64) + v10 + v14) & ~v10);

  return sub_100656FD4(a1, a2, a3, a4, v4 + v11, v15, v4 + v14, v16);
}

uint64_t sub_10065CE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100990A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10065CE98(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  sub_1006595A8(a1, a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      v11 = sub_10002849C(&unk_1009731D0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {
        return sub_10002B894(v7, &qword_100977FB8);
      }

      else
      {
        ReadOnlyLens.value.getter();
        (*(v12 + 8))(v7, v11);
        sub_10002849C(&qword_100973D50);
        type metadata accessor for AccountPresenter.UpdatesLockupItem();
        result = swift_dynamicCast();
        if (result)
        {
          type metadata accessor for ArtworkLoader();
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          v13 = v15[1];
          AccountPresenter.UpdatesLockupItem.lockup.getter();
          v14 = dispatch thunk of Lockup.artwork.getter();

          sub_1005F094C(v14, v13);
        }
      }
    }
  }

  return result;
}

void sub_10065D0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100990A90);
  __chkstk_darwin(v4 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v39 - v7;
  v9 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = type metadata accessor for ImpressionMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v39 - v20;
  v22 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v22 - 8);
  v24 = v39 - v23;
  v25 = *(v2 + OBJC_IVAR____TtC8AppStore21AccountViewController_diffableDataSource);
  if (v25)
  {
    v41 = v21;
    v42 = v16;
    v40 = v8;
    v26 = v25;
    v39[1] = a1;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v27 = sub_10002849C(&unk_1009731D0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v24, 1, v27) == 1)
    {
      sub_10002B894(v24, &qword_100977FB8);
    }

    else
    {
      ReadOnlyLens.value.getter();
      (*(v28 + 8))(v24, v27);
      sub_100005A38(&v44, v45);
      sub_10002A400(v45, v45[3]);
      dispatch thunk of ViewModel.impressionMetrics.getter();
      v29 = v42;
      v30 = *(v42 + 48);
      if (v30(v14, 1, v15) == 1)
      {
        sub_10002B894(v14, &qword_100973D30);
      }

      else
      {
        (*(v29 + 32))(v41, v14, v15);
        dispatch thunk of AccountPresenter.shelfImpressionMetrics(at:)();
        if (v30(v11, 1, v15) == 1)
        {
          sub_10002B894(v11, &qword_100973D30);
          v31 = 1;
          v32 = v40;
        }

        else
        {
          v33 = v29;
          v32 = v40;
          ImpressionMetrics.id.getter();
          (*(v33 + 8))(v11, v15);
          v31 = 0;
        }

        v34 = v43;
        v35 = type metadata accessor for ImpressionMetrics.ID();
        v36 = *(v35 - 8);
        (*(v36 + 56))(v32, v31, 1, v35);
        BasePresenter.impressionsCalculator.getter();
        sub_100031660(v32, v34, &qword_100990A90);
        if ((*(v36 + 48))(v34, 1, v35) == 1)
        {
          sub_10002B894(v34, &qword_100990A90);
        }

        else
        {
          ImpressionMetrics.ID.element.getter();
          (*(v36 + 8))(v34, v35);
        }

        v37 = v41;
        ImpressionMetrics.withParentId(_:)();

        ImpressionsCalculator.removeElement(_:)();

        v38 = *(v42 + 8);
        v38(v18, v15);
        sub_10002B894(v32, &qword_100990A90);
        v38(v37, v15);
      }

      sub_100007000(v45);
    }
  }
}

void sub_10065D698(uint64_t a1, uint64_t a2)
{
  sub_10065D0E4(a2);
  type metadata accessor for UpdatesLockupCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v4 = OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView;
    v5 = *(*(v3 + OBJC_IVAR____TtC8AppStore31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    ArtworkView.isImageHidden.setter();

    v6 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_10065D9D0(&qword_100970E80, 255, &type metadata accessor for ArtworkView);
    v7 = v6;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10065D7E4(uint64_t a1)
{
  v2 = v1;
  if (qword_10096EBC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_100990928);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  v6[3] = sub_10002849C(&unk_100990A80);
  v6[0] = a1;

  static LogMessage.safe(_:)();
  sub_10002B894(v6, &unk_1009711D0);
  Logger.info(_:)();

  [v2 dismissViewControllerAnimated:1 completion:{0, v6[0]}];
  return dispatch thunk of AccountPresenter.didFinishSignIn()();
}

uint64_t sub_10065D9D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_10065DA20()
{
  result = qword_100990AA8;
  if (!qword_100990AA8)
  {
    sub_10002D1A8(&qword_100990AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990AA8);
  }

  return result;
}

uint64_t sub_10065DAB0(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10065DB50@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FlowPresentationContext();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_10065E010(&qword_100975970, &type metadata accessor for FlowPresentationContext);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v7, v3);

    return sub_10040B47C(a1);
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_10040B47C(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t type metadata accessor for FlowPresentationHints()
{
  result = qword_100990B28;
  if (!qword_100990B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065DDCC()
{
  result = type metadata accessor for FlowPresentationContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FlowAnimationBehavior();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10065DE54()
{
  type metadata accessor for FlowPresentationContext();
  sub_10065E010(&qword_100975970, &type metadata accessor for FlowPresentationContext);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints();
  type metadata accessor for FlowAnimationBehavior();
  sub_10065E010(&unk_100990B60, &type metadata accessor for FlowAnimationBehavior);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v2 & 1;
}

uint64_t sub_10065E010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10065E058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = type metadata accessor for FontSource();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = type metadata accessor for PageGrid();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10098F2D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10002849C(&unk_100970EA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_10002849C(&qword_100973F50);
  type metadata accessor for CGSize(0);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v65 = xmmword_1007D9F50;
  v62 = xmmword_1007D9F60;
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalMargins.getter();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v30, qword_1009D05F0);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = type metadata accessor for StaticDimension();
  v61[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v58);
  (*(v34 + 16))(v38, v37, v36);
  StaticDimension.init(_:scaledLike:)();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = type metadata accessor for ZeroDimension();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v57);
  static ZeroDimension.zero.getter();
  ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_10065E66C(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v126 = type metadata accessor for FontSource();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10096FB10);
  __chkstk_darwin(v4 - 8);
  v131 = &v107 - v5;
  v136 = type metadata accessor for UIBackgroundConfiguration();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for PageGrid();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v144 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v8 - 8);
  v111 = &v107 - v9;
  v114 = sub_10002849C(&unk_1009731C0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v137 = &v107 - v10;
  v127 = type metadata accessor for Shelf.PresentationHints();
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v141 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for ComponentLayoutOptions();
  v145 = *(v142 - 8);
  __chkstk_darwin(v142);
  v110 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v107 - v14;
  v140 = sub_10002849C(&unk_10097DAF0);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v130 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v138 = &v107 - v17;
  v18 = sub_10002849C(&unk_1009731D0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v107 - v20;
  v22 = type metadata accessor for ShelfLayoutContext();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ActionLayout.Metrics();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  sub_10065E058(v25, v29);
  v30 = *(v23 + 8);
  v120 = v25;
  v31 = v25;
  v32 = v143;
  v123 = v22;
  v122 = v23 + 8;
  v117 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  v36 = v128;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v119 = v35;
  v118 = v29;
  v115 = v33;
  v38 = v33;
  v39 = v141;
  v121 = v27 + 40;
  v116 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v19 + 8))(v21, v18);
  v40 = v138;
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v146 = v34;
  v41 = sub_100079F24();
  sub_10002C0AC(v150, &v148);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Action();
  v42 = &selRef_setRequiresColorStatistics_;
  v43 = &selRef__setDefaultAttributes_;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v129 + 8))(v39, v127);
    (*(v145 + 8))(v32, v142);
    (*(v139 + 8))(v40, v140);
    sub_100007000(v150);
    v54 = v134;
    v45 = v36;
    v55 = &StringUserDefaultsDebugSetting;
    goto LABEL_24;
  }

  v44 = v147;
  (*(v139 + 16))(v130, v40, v140);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v47 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  v48 = v110;
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10065FA40(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v49 = v142;
  v50 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v51 = *(v145 + 8);
  v145 += 8;
  v109 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v130 = v44;
  v52 = Action.presentationStyle.getter();
  v108 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_100028BB8();
    v53 = static UIColor.primaryText.getter();
    [v46 setTextColor:v53];
  }

  v56 = v129;
  v55 = &StringUserDefaultsDebugSetting;
  swift_getObjectType();
  v57 = sub_10028F24C(v41);
  v58 = type metadata accessor for Accessory();
  if (v57)
  {
    v59 = v111;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v111;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_100611864(v59, v112);
  sub_10002B894(v59, &qword_100984340);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v63 = v142, v64 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v109(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v137;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = Action.artwork.getter();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_1006123AC();
    v76 = v74;
    v70 = v137;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v77 = v142;
  v78 = v143;
  v79 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v80 = v48;
  v81 = v109;
  v109(v80, v77);
  v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v108 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v113 + 8))(v70, v114);
  (*(v56 + 8))(v141, v127);
  v81(v78, v77);
  (*(v139 + 8))(v138, v140);
  sub_100007000(v150);
  v42 = &selRef_setRequiresColorStatistics_;
  v43 = &selRef__setDefaultAttributes_;
  v54 = v134;
LABEL_24:
  v83 = [v45 v43[388]];
  [v83 v55[41].ivars];

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIBackgroundConfiguration.listPlainCell()();
  PageGrid.columnCount.getter();
  v85 = v84;
  PageGrid.interRowSpace.getter();
  v86 = v136;
  v87 = v135;
  if (v85 == 1.0)
  {
    PageGrid.horizontalMargins.getter();
    PageGrid.interRowSpace.getter();
    PageGrid.horizontalMargins.getter();
  }

  else
  {
    PageGrid.interColumnSpace.getter();
    PageGrid.interRowSpace.getter();
    PageGrid.interColumnSpace.getter();
  }

  UIBackgroundConfiguration.backgroundInsets.setter();
  v88 = v131;
  (*(v87 + 16))(v131, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  UICollectionViewCell.backgroundConfiguration.setter();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;
  if (v90 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v92 == v93)
  {
  }

  else
  {
    v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  type metadata accessor for SearchAdAction();
  sub_10065FA40(&unk_100983980, &type metadata accessor for SearchAdAction);
  v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = ItemLayoutContext.typedModel<A>(is:)() & 1;
  v95 = v120;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v96 = v45;
  v97 = v118;
  sub_10065E058(v95, v118);
  v117(v95, v123);
  v98 = v119;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v116(&v96[v98], v99, v115);
  swift_endAccess();
  sub_100612CB8();
  v100 = *&v96[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v124;
  ActionLayout.Metrics.labelFontSource.getter();
  swift_endAccess();
  v102 = [v96 v42[35]];
  isa = FontSource.font(compatibleWith:)(v102).super.isa;

  (*(v125 + 8))(v101, v126);
  [v100 setFont:isa];

  [v45 setNeedsLayout];
LABEL_32:
  sub_10002849C(&unk_100973200);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v149)
  {
    sub_100005A38(&v148, v150);
    sub_10002A400(v150, v150[3]);
    v104 = dispatch thunk of ArtworkModelProtocol.artwork.getter();
    if (v104)
    {
    }

    v45[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = v104 != 0;
    sub_100007000(v150);
  }

  else
  {
    sub_10002B894(&v148, &unk_100990B70);
  }

  v105 = v144;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v132 + 8))(v105, v133);
}

uint64_t sub_10065F8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10065F92C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10065F9F4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_10065FA40(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10065FA88(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  result = [v5 text];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!a2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v13 = String._bridgeToObjectiveC()();
LABEL_12:

  [v5 setText:v13];

  return [v2 setNeedsLayout];
}

void sub_10065FBE8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v5 = [v4 attributedText];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_10:
    if (qword_10096E650 != -1)
    {
      swift_once();
    }

    v8 = qword_1009D2238;
    v9 = unk_1009D2240;
    v10 = qword_1009D2248;
    v11 = [v2 traitCollection];
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {

      if (a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = UITraitCollection.isSizeClassCompact.getter();

      if (v34)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (a1)
      {
LABEL_14:
        v37 = v4;
        v40 = v2;
        sub_100005744(0, &qword_100970180);
        v12 = a1;
        v36 = v10;
        v38 = v10;
        v13 = static UIColor.secondaryText.getter();
        v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
        v15 = [v12 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_100664530;
        *(v17 + 24) = v16;
        v45 = sub_100664538;
        v46 = v17;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_1006607C0;
        v44 = &unk_1008CD568;
        v18 = _Block_copy(&aBlock);
        v19 = v14;
        v20 = v13;

        [v12 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v22 = [v40 traitCollection];
          v23 = objc_allocWithZone(NSMutableAttributedString);
          v24 = v38;
          v25 = [v23 initWithAttributedString:v19];
          v26 = [v19 length];
          v27 = swift_allocObject();
          *(v27 + 16) = v38;
          *(v27 + 24) = v22;
          *(v27 + 32) = v25;
          *(v27 + 40) = 1;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_10010279C;
          *(v28 + 24) = v27;
          v45 = sub_100664560;
          v46 = v28;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_1006606C4;
          v44 = &unk_1008CD5E0;
          v29 = _Block_copy(&aBlock);
          v30 = v24;
          v31 = v22;
          v32 = v25;

          [v19 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

          _Block_release(v29);
          v33 = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v2 = v40;
            v10 = v36;
            v4 = v37;
LABEL_22:
            [v4 setAttributedText:v32];

            [v2 setNeedsLayout];
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    v35 = v10;
    v32 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100005744(0, &unk_100984040);
  v39 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }
}

id sub_100660130()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setHidden:v4 == 2];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  LOBYTE(v4) = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    v15[3] = sub_100005744(0, &qword_1009846D0);
    v15[0] = v7;
    v8 = v7;
    sub_1005868E4(v15);
    v9 = [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] layer];
    [v9 setCompositingFilter:v8];
  }

  if (v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];

  return [v13 setHidden:v12];
}

void sub_100660344(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100664588(&qword_100973190, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1006604D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  sub_10065FBE8(0);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v13, v5);
  [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView] setHidden:1];
  [v4 setHidden:0];
  [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView] setHidden:0];
  v6 = &v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  v7 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_10001F63C(v7);
  sub_1006643EC();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:v4];
    [v1 setNeedsLayout];
  }

  v10 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView];
  sub_100507398();

  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v1 setTransform:v12];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t sub_1006606C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100664588(&qword_100976620, 255, type metadata accessor for Key);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);
}

uint64_t sub_1006607C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_100056164(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_10002B894(v13, &unk_1009711D0);
}

uint64_t sub_10066086C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3178);
  sub_1000056A8(v0, qword_1009D3178);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006609D0(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v46 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0860);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = type metadata accessor for StaticDimension();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v6, qword_1009D0878);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v54);
  v44(v17, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v54);
  v21 = v44;
  v44(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v54);
  v21(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v54);
  v21(v28, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v22(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_1000056A8(v45, qword_1009D08A8);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v54);
  v21(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v49(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v29, qword_1009D0890);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_1000056E0(v54);
  v37 = v44;
  v44(v36, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v49;
  v49(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v54);
  v37(v39, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_100661224()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009D3190);
  sub_1000056A8(v0, qword_1009D3190);
  if (qword_10096EBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3178);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006613BC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AspectRatio();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_100005644(v14, a5);
  v34 = sub_1000056A8(v14, a5);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  *&v45 = 0x4030000000000000;
  v35 = v13;
  AspectRatio.init(_:_:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D1A60);
  v17 = *(v15 - 8);
  v33 = *(v17 + 16);
  v32 = v17 + 16;
  v33(v11, v16, v15);
  v18 = v9[13];
  v31 = enum case for FontSource.useCase(_:);
  v30 = v18;
  v18(v11);
  v19 = type metadata accessor for StaticDimension();
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v42);
  v40 = v8;
  v41 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v39);
  v21 = v9[2];
  v21(v20, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v22 = v9[1];
  v22(v11, v8);
  if (qword_10096E3A8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v15, qword_1009D1A78);
  v33(v11, v23, v15);
  v30(v11, v31, v8);
  v40 = v19;
  v41 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v39);
  v38[3] = v8;
  v38[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v38);
  v21(v24, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  v22(v11, v8);
  v25 = v34;
  v26 = v34 + v14[8];
  *(v26 + 24) = &type metadata for Double;
  *(v26 + 32) = &protocol witness table for Double;
  *v26 = a2;
  v27 = v25 + v14[9];
  *(v27 + 24) = &type metadata for Double;
  *(v27 + 32) = &protocol witness table for Double;
  *v27 = a3;
  sub_100005A38(&v45, v25);
  (*(v36 + 32))(v25 + v14[5], v35, v37);
  sub_100005A38(&v42, v25 + v14[6]);
  return sub_100005A38(&v39, v25 + v14[7]);
}

UIColor sub_100661844()
{
  sub_100005744(0, &qword_100970180);
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 whiteColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D31D8 = result.super.isa;
  return result;
}

id sub_1006618D8()
{
  v1 = v0;
  v2 = type metadata accessor for Separator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Separator();
  v38 = *(v6 - 8);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = static UIContentSizeCategory.>= infix(_:_:)();

  v13 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  if (v12)
  {
    v37 = v3;
    if (v14)
    {
      [v14 setHidden:1];
    }

    v15 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
    [v15 addSubview:{*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel], v37}];
    [v15 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView]];
    v16 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
    [v16 setNumberOfLines:0];
    v17 = [v16 layer];
    [v17 setCompositingFilter:0];

    [v15 addSubview:v16];
    v39 = 0u;
    v40 = 0u;
    sub_1005868E4(&v39);
    v18 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView;
    v19 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
    if (v19 || (((*(v37 + 104))(v5, enum case for Separator.Position.top(_:), v2), *(&v40 + 1) = type metadata accessor for ZeroDimension(), v41 = &protocol witness table for ZeroDimension, sub_1000056E0(&v39), static ZeroDimension.zero.getter(), Separator.init(position:leadingInset:trailingInset:verticalOutset:)(), v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator, swift_beginAccess(), v22 = *(v38 + 40), v23 = v20, v22(&v20[v21], v9, v6), swift_endAccess(), v23, (v24 = *&v1[v18]) == 0) ? (v25 = 0) : (objc_msgSend(v24, "removeFromSuperview"), v25 = *&v1[v18]), *&v1[v18] = v23, v33 = v23, v25, objc_msgSend(v15, "addSubview:", v33), v33, objc_msgSend(v1, "setNeedsLayout"), v33, (v19 = *&v1[v18]) != 0))
    {
      [v19 setHidden:0];
    }
  }

  else
  {
    if (v14 || ((v29 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v30 = sub_100251D00(0), (v31 = *&v1[v13]) == 0) ? (v32 = 0) : ([v31 removeFromSuperview], v32 = *&v1[v13]), (*&v1[v13] = v30, v35 = v30, v32, objc_msgSend(*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView], "addSubview:", v35), v35, objc_msgSend(v1, "setNeedsLayout"), v35, (v36 = *&v1[v13]) != 0) && (objc_msgSend(v36, "setUserInteractionEnabled:", 0), (v14 = *&v1[v13]) != 0)))
    {
      [v14 setHidden:0];
    }

    v26 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel]];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView]];
    v27 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
    [v27 setNumberOfLines:1];
    [v26 addSubview:v27];
    v28 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    sub_100660130();
  }

  return [v1 setNeedsLayout];
}

id sub_100661E4C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void (*sub_100662064(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006620B8;
}

void sub_1006620B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1006621D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppPromotionCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1006626A4(v10);
  AppPromotionCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_100250FB4(v26);
      v42 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_10010287C(v10);
  }

  else
  {
    sub_10010287C(v10);
  }
}

uint64_t sub_1006626A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v9)
  {
    if (qword_10096EBE8 != -1)
    {
      swift_once();
    }

    v10 = qword_1009D31C0;
  }

  else
  {
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v10 = qword_1009D31A8;
  }

  v11 = sub_1000056A8(v4, v10);
  sub_1001027B4(v11, v7);
  v12 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  v96 = type metadata accessor for ShadowView();
  v97 = &protocol witness table for UIView;
  v68 = v12;
  *&v95 = v12;
  v13 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
  v93 = type metadata accessor for RoundedCornerView();
  v94 = &protocol witness table for UIView;
  v65 = v13;
  v91 = &protocol witness table for UIView;
  *&v92 = v13;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];
  v90 = v93;
  v63 = v14;
  *&v89 = v14;
  v15 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
  v87 = sub_100005744(0, &qword_100972EB0);
  v88 = &protocol witness table for UIView;
  v55 = v87;
  v60 = v15;
  *&v86 = v15;
  v16 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v84 = type metadata accessor for ArtworkView();
  v85 = &protocol witness table for UIView;
  v59 = v16;
  *&v83 = v16;
  v17 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView];
  v81 = type metadata accessor for AppPromotionIAPFallbackView();
  v82 = &protocol witness table for UIView;
  v58 = v17;
  *&v80 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v67 = type metadata accessor for VideoView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
  }

  v64 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView];
  v70 = v7;
  if (v64)
  {
    v62 = type metadata accessor for MediaOverlayGradientBlurView();
    v61 = &protocol witness table for UIView;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v19 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v78 = type metadata accessor for DynamicTypeLabel();
  v79 = &protocol witness table for UILabel;
  v76 = &protocol witness table for UILabel;
  *&v77 = v19;
  v20 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v75 = v78;
  v53 = v20;
  v54 = v19;
  *&v74 = v20;
  v21 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView];
  v72 = type metadata accessor for AppPromotionSubtitleView();
  v73 = &protocol witness table for CustomLayoutView;
  *&v71 = v21;
  v22 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
  if (v22)
  {
    v56 = type metadata accessor for SeparatorView();
    v57 = &protocol witness table for UIView;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v23 = type metadata accessor for AppPromotionCardLayout(0);
  v24 = (a1 + v23[17]);
  v25 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView];
  v24[3] = v55;
  v24[4] = &protocol witness table for UIView;
  *v24 = v25;
  v26 = (a1 + v23[18]);
  v27 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView];
  v26[3] = type metadata accessor for SubscriptionLockupView();
  v26[4] = &protocol witness table for UIView;
  *v26 = v27;
  v28 = *&v21[qword_10098CA38];
  v29 = v22;
  v30 = v25;
  v31 = v27;
  v32 = v68;
  v33 = v65;
  v34 = v63;
  v35 = v60;
  v36 = v59;
  v37 = v58;
  v38 = v64;
  v39 = v64;
  v40 = v54;
  v41 = v53;
  v42 = v21;
  LOBYTE(v28) = [v28 hasContent];
  sub_100102818(v70, a1);
  sub_100005A38(&v95, a1 + v23[5]);
  sub_100005A38(&v92, a1 + v23[6]);
  sub_100005A38(&v89, a1 + v23[7]);
  sub_100005A38(&v86, a1 + v23[8]);
  sub_100005A38(&v83, a1 + v23[9]);
  v43 = (a1 + v23[11]);
  *v43 = v69;
  v43[1] = 0;
  v44 = v66;
  v45 = v67;
  v43[2] = 0;
  v43[3] = v45;
  v43[4] = v44;
  v46 = (a1 + v23[12]);
  *v46 = v38;
  v46[1] = 0;
  v47 = v61;
  v48 = v62;
  v46[2] = 0;
  v46[3] = v48;
  v46[4] = v47;
  sub_100005A38(&v77, a1 + v23[13]);
  sub_100005A38(&v74, a1 + v23[14]);
  sub_100005A38(&v71, a1 + v23[15]);
  v49 = (a1 + v23[16]);
  *v49 = v22;
  v49[1] = 0;
  v51 = v56;
  v50 = v57;
  v49[2] = 0;
  v49[3] = v51;
  v49[4] = v50;
  *(a1 + v23[19]) = v28;
  return sub_100005A38(&v80, a1 + v23[10]);
}

uint64_t (*sub_100662E44(uint64_t **a1))()
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
  v2[4] = sub_100662064(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100662EB4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100664588(&qword_100990C48, v1, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_100662F28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100664588(&qword_100990C48, v5, type metadata accessor for AppPromotionCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100662FB4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_100664588(&qword_100990C48, v3, type metadata accessor for AppPromotionCardView);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100663070(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

double sub_1006631E4(void *a1, void *a2)
{
  v108 = type metadata accessor for FloatingPointRoundingRule();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for StackMeasurable.Axis();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for StackMeasurable();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for VerticalSpaceMeasurable();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v102 = type metadata accessor for OfferButtonMetrics();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v12;
  __chkstk_darwin(v13);
  v98 = &v95 - v14;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v18 = type metadata accessor for SmallLockupLayout.Metrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10005FC74(a2 + v25[18], &v120);
  v109 = v121;
  sub_10002B894(&v120, &qword_100975610);
  v117 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v28)
  {
    v29 = v25[13];
    v30 = v25[14];
    v31 = v25[16];
    v95 = v25[15];
    v103 = v31;
    LODWORD(v99) = *(a2 + v25[19]);
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v96 = (a2 + v29);
    v32 = (a2 + v30);
    v33 = sub_1000056A8(v18, qword_1009D3190);
    v100 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v35 = v34;
    v36 = [v117 traitCollection];
    (*(v19 + 16))(v24, v33, v18);
    v37 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v39 = v105;
    v97 = v32;
    if ((v40 & 1) == 0 && ((v37 | v38) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v41 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v41 = qword_100991028;
      }

      v51 = v102;
      v52 = sub_1000056A8(v102, v41);
      v53 = v101;
      v54 = v98;
      (*(v101 + 16))(v98, v52, v51);
      (*(v53 + 32))(v17, v54, v51);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v53 + 8))(v17, v51);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v56 = v55;

    (*(v19 + 8))(v24, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v35;
    v58 = v110;
    *(inited + 56) = v110;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v59 = v117;
    v60 = v108;
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v56 + 16.0 + 16.0);
      v61 = v104;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v62 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_100033260(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_100033260((v63 > 1), v64 + 1, 1, v62);
      }

      v121 = v58;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v65 = sub_1000056E0(&v120);
      v66 = v107;
      (*(v107 + 16))(v65, v61, v58);
      v62[2] = v64 + 1;
      sub_100005A38(&v120, &v62[5 * v64 + 4]);
      (*(v66 + 8))(v61, v58);
      *&v118 = v62;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v67 = v114;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v69 = v68;
    (*(v115 + 8))(v67, v116);
    sub_10002A400(a2, a2[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v116 = *(v106 + 8);
    v116(v39, v60);
    CGSize.subtracting(insets:)();
    sub_10002A400(v96, v96[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v71 = v70;
    v72 = v100;
    sub_10002A400((a2 + *(v100 + 6)), *(a2 + *(v100 + 6) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v120 = v71;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v97, v97[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v74 = v73;
    sub_10002A400((a2 + *(v72 + 7)), *(a2 + *(v72 + 7) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v120 = v74;
    AnyDimension.bottomMargin(from:in:)();
    if (v99)
    {
      sub_10002A400((a2 + v95), *(a2 + v95 + 24));
      v75 = v72;
      v76 = [v59 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_10002A400((a2 + *(v75 + 8)), *(a2 + *(v75 + 8) + 24));
      v77 = [v59 traitCollection];
      AnyDimension.value(with:)();

      sub_10002A400((a2 + *(v75 + 9)), *(a2 + *(v75 + 9) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v116(v39, v108);
    }

    sub_10005FC74(&v103[a2], &v118);
    if (v119)
    {
      sub_100005A38(&v118, &v120);
      sub_10002A400(&v120, v121);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v120, v121);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v120);
    }

    else
    {
      sub_10002B894(&v118, &qword_100975610);
    }
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v42 = sub_1000056A8(v18, qword_1009D3178);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v44 = v43;
    v45 = [v117 traitCollection];
    (*(v19 + 16))(v21, v42, v18);
    v46 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v48 = v110;
    if ((v49 & 1) == 0 && ((v46 | v47) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v50 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v50 = qword_100991028;
      }

      v78 = v102;
      v79 = sub_1000056A8(v102, v50);
      v80 = v101;
      v81 = v99;
      (*(v101 + 16))(v99, v79, v78);
      v82 = v100;
      (*(v80 + 32))(v100, v81, v78);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v80 + 8))(v82, v78);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v84 = v83;

    (*(v19 + 8))(v21, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_1007B10D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v44;
    *(v85 + 56) = v48;
    *(v85 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((v85 + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(v85);
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v84 + 4.0 + 4.0);
      v86 = v103;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v87 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_100033260(0, v87[2] + 1, 1, v87);
      }

      v89 = v87[2];
      v88 = v87[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_100033260((v88 > 1), v89 + 1, 1, v87);
      }

      v121 = v48;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v90 = sub_1000056E0(&v120);
      v91 = v107;
      (*(v107 + 16))(v90, v86, v48);
      v87[2] = v89 + 1;
      sub_100005A38(&v120, &v87[5 * v89 + 4]);
      (*(v91 + 8))(v86, v48);
      *&v118 = v87;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v92 = v114;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v69 = v93;
    (*(v115 + 8))(v92, v116);
  }

  return v69;
}

id sub_1006643AC(void *a1)
{
  sub_100660130();

  return [a1 setNeedsLayout];
}

void sub_1006643EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100664588(&qword_100973190, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
      sub_100005744(0, &qword_100972EB0);
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_100664588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_1006645D0()
{
  ObjectType = swift_getObjectType();
  v105 = type metadata accessor for CornerStyle();
  *&v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v2 - 8);
  v107 = &v98 - v3;
  v106 = type metadata accessor for AutomationSemantics();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView] = 0;
  v11 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *&v0[v11] = sub_100586590(0);
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  *&v0[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] = v17;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = type metadata accessor for FontUseCase();
  v19 = *(v18 - 8);
  v98 = *(v19 + 56);
  v98(v10, 1, 1, v18);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v5 + 104);
  v102 = v5 + 104;
  v21(v7, enum case for DirectionalTextAlignment.none(_:), v108);
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = objc_allocWithZone(v22);
  v101 = v7;
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v18, qword_1009D1A60);
  (*(v19 + 16))(v10, v24, v18);
  v98(v10, 0, 1, v18);
  v21(v101, v20, v108);
  v25 = objc_allocWithZone(v22);
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView] = v26;
  if (qword_10096EA28 != -1)
  {
    swift_once();
  }

  v116[2] = xmmword_1009D2BC0;
  v116[3] = unk_1009D2BD0;
  v117 = qword_1009D2BE0;
  v116[0] = xmmword_1009D2BA0;
  v116[1] = *algn_1009D2BB0;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v0[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView] = sub_1005BF26C(v116, 0.0, 0.0, 0.0, 0.0);
  v115.receiver = v0;
  v115.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_contentView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = v30;
  v32 = v100;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v33 = *(v103 + 8);
  v34 = v106;
  v33(v32, v106);
  v108 = v29;
  v35 = *&v28[v29];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v35;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v103 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView;
  v37 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v101 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel;
  v39 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_titleLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v40 = v39;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  v102 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel;
  v41 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_kindLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v42 = v41;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v111, &unk_1009711D0);
  sub_10002B894(&v113, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v33(v32, v34);
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v28 setClipsToBounds:0];
  v43 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView;
  v44 = qword_10096DA88;
  v45 = *&v28[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_shadowView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFDF8);
  v48 = *(v46 - 8);
  v49 = v107;
  (*(v48 + 16))(v107, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  dispatch thunk of ShadowView.shadow.setter();

  v50 = *&v28[v43];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  v51 = *&v28[v43];
  v52 = v110;
  v53 = *(v110 + 104);
  v54 = v104;
  LODWORD(v106) = enum case for CornerStyle.continuous(_:);
  v55 = v105;
  v107 = v53;
  (v53)(v104);
  v56 = v51;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v59 = v58;
  (v58)(v54, v55);
  v60 = *&v28[v43];
  v61 = [v28 traitCollection];
  v62 = [v61 userInterfaceStyle];

  [v60 setHidden:v62 == 2];
  v63 = *&v28[v43];
  v64 = v28;
  [v64 addSubview:v63];
  v65 = v108;
  v66 = qword_10096EBF0;
  v67 = *&v28[v108];
  if (v66 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = qword_1009D31D8;
  [v67 setBackgroundColor:?];

  v68 = *&v28[v65];
  (v107)(v54, v106, v55);
  v69 = v68;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v100 = v59;
  (v59)(v54, v55);
  [v64 addSubview:*&v28[v65]];
  v70 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView;
  [*&v28[v65] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView]];
  [*&v64[v70] addSubview:*&v28[v103]];
  [*&v64[v70] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView]];
  v71 = *&v28[v101];
  sub_100005744(0, &qword_100970180);
  v72 = v71;
  v73 = static UIColor.primaryText.getter();
  *&v110 = v57;
  v74 = v73;
  [v72 setTextColor:v73];

  v75 = *(*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView] + qword_10098CA38);
  v76 = objc_opt_self();
  v77 = v75;
  v78 = [v76 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *&v28[v102];
  v80 = static UIColor.secondaryText.getter();
  [v79 setTextColor:v80];

  v81 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView;
  v82 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_borderView];
  v83 = ObjCClassFromMetadata;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v84 = *&v64[v81];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  [*&v64[v81] setUserInteractionEnabled:0];
  [*&v64[v81] setHidden:1];
  v85 = *&v64[v81];
  (v107)(v54, v106, v55);
  v86 = v85;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  (v100)(v54, v55);
  [v64 addSubview:*&v64[v81]];
  sub_1006618D8();
  sub_100660130();
  sub_10002849C(&qword_10097B110);
  v87 = swift_allocObject();
  v110 = xmmword_1007B10D0;
  *(v87 + 16) = xmmword_1007B10D0;
  *(v87 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v87 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v88 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v89 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  [*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView] setBackgroundColor:v83];
  [*&v28[v108] addSubview:*&v64[v89]];
  v90 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v91 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer;
  v92 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer];
  *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer] = v90;

  result = *&v64[v91];
  if (result && ([result setDelegate:v64], (result = *&v64[v91]) != 0) && (result = objc_msgSend(result, "addTarget:action:", v64, "handleTapWithGestureRecognizer:"), *&v64[v91]))
  {
    [*&v64[v89] addGestureRecognizer:?];
    v94 = [v64 traitCollection];

    v95 = [v94 preferredContentSizeCategory];
    v96 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v96)
    {
      v97 = *&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView];
      if (v97)
      {
        [v97 setHidden:0];
      }
    }

    [*&v64[v89] addSubview:*&v64[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView]];
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006656D8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_gradientBlurView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView;
  v3 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v0 + v2) = sub_100586590(0);
  *(v0 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_separatorView) = 0;
  v4 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupTapGestureRecognizer) = 0;
  v6 = (v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10066581C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction] != 0;
    }

    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

id sub_10066595C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  v11 = type metadata accessor for PageGrid();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_100665B04()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_1009CE000) = v1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded];
    sub_1000FA508();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*((swift_isaMask & *v4) + 0xA0))(v1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100665BDC(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_1001A5ED0(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000A833C(v1 + v6, v5);
    (*((swift_isaMask & *v8) + 0x100))(v5);
  }

  return sub_10046DF7C(a1);
}

void sub_100665D04(void *a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(v1 + v12, v5);
      v13 = *((swift_isaMask & *v16) + 0x150);
      v14 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_10046DF7C(v5);
    }
  }
}

uint64_t sub_100665EE8(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for RevealingVideoView();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "willMoveToWindow:", a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
    v9 = result;
    swift_beginAccess();
    sub_1000A833C(v9 + v8, v5);
    v10 = v9;
    sub_100666A9C(v9, v5);

    sub_10046DF7C(v5);
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_1006660CC()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] || (v16 = &v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize], (v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v46 = v2;
  v47 = Strong;
  v18 = *v16;
  v17 = v16[1];
  v19 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_1000A833C(&v0[v19], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_10046DF7C(v10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v20 = v0[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory];
  if (v20 == 7)
  {
    v21 = *(v12 + 8);

    v21(v14, v11);
LABEL_13:

    return;
  }

  [v0 bounds];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 0.0;
  v50.size.height = 0.0;
  if (CGRectEqualToRect(v49, v50))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_13;
  }

  v45 = v0;
  sub_100699534(v20);
  v22 = v46;
  v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v20 != 6)
  {
    v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v20 != 4)
  {
    v23 = v24;
  }

  (*(v46 + 104))(v4, *v23, v1);
  (*(v22 + 32))(v7, v4, v1);
  v25 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

  (*(v22 + 8))(v7, v1);
  v26 = v45;
  v27 = v45[OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded];
  v28 = v47;
  [v26 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v26 traitCollection];
  v38 = sub_1000F1BB8(v37, v30, v32, v34, v36, v18, v17, v25, v27);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v28 setFrame:{v38, v40, v42, v44}];

  (*(v12 + 8))(v14, v11);
}

void sub_1006665A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_1009D21B8];
    v10 = *&v14[qword_1009D21B8];
    v11 = *&v14[qword_1009D21B8 + 8];
    v12 = v14[qword_1009D21B8 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_1004E1028();
    }
  }
}

void sub_1006666C8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VideoConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1006673E4(&qword_100979D58, type metadata accessor for TodayCardVideoView);
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100028004();
      v13 = v2;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v10 removeFromSuperview];
    [v2 addSubview:v10];
LABEL_13:
    v10[qword_1009CE000] = *(v2 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded);
    sub_1000FA508();
    v19 = qword_1009D2200;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v10[v19], v4);
    v20 = v10;
    VideoConfiguration.canPlayFullScreen.setter();
    sub_1004E032C(v7);

    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_1006673E4(&qword_100979D58, type metadata accessor for TodayCardVideoView);
    v15 = [a1 superview];
    if (v15)
    {
      v16 = v15;
      sub_100028004();
      v17 = v1;
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_1006669B0(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100666A04;
}

void sub_100666A04(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_1006666C8(Strong);

    Strong = v4;
  }

  else
  {
    sub_1006666C8(Strong);
  }
}

void sub_100666A9C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v45 = a2;
          v46 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory;
          v47 = v11;
          v12 = *v10;
          v44 = *(v10 + 1);
          v50 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v51 = v14;
          v48 = Strong;
          swift_unknownObjectWeakAssign();
          v49 = a1;

          sub_1006666C8(v15);

          v16 = &v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
          v17 = v12;
          *v16 = v12;
          v18 = v44;
          *(v16 + 1) = v44;
          v16[16] = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            (*((swift_isaMask & *v19) + 0xE8))(v17, v18, 0);
          }

          *&v3[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *((swift_isaMask & *v21) + 0xD0);
            swift_bridgeObjectRetain_n();
            v23(v9);
          }

          else
          {
          }

          v24 = v45;
          sub_1000A833C(v45, v8);
          sub_100665BDC(v8);
          v25 = v47;
          v3[v46] = v47;
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            (*((swift_isaMask & *v26) + 0x118))(v25);
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v30 = swift_unknownObjectWeakLoadStrong();
            (*((swift_isaMask & *v29) + 0x150))(v30, *v16, *(v16 + 1), v16[16], v9, v24, v25);
          }

          [v3 setNeedsLayout];

          v31 = swift_unknownObjectWeakLoadStrong();
          if (v31)
          {
            v32 = v31;
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = [v33 isHidden];
            }

            else
            {
              v35 = 0;
            }

            [v32 setHidden:v35];
          }

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = swift_unknownObjectWeakLoadStrong();
            v39 = v38;
            if (v38)
            {
              v37[qword_1009CDFF8] = *(v38 + qword_1009CDFF8);
              sub_1000FA22C();
              v40 = qword_1009CE000;
              v41 = v39[qword_1009CE000];
            }

            else
            {
              v37[qword_1009CDFF8] = 7;
              sub_1000FA22C();
              v41 = 0;
              v40 = qword_1009CE000;
            }

            v37[v40] = v41;
            sub_1000FA508();
          }

          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v43 = v49;
          sub_1006666C8(v42);
        }
      }
    }
  }
}

id sub_100666EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView()
{
  result = qword_100990C98;
  if (!qword_100990C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100666FF0()
{
  sub_1000A77BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006670D0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_100667140(uint64_t **a1))()
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
  v2[4] = sub_1006669B0(v2);
  return sub_1000C2700;
}

uint64_t sub_1006671B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100667204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100667270(uint64_t *a1))()
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
  return sub_1000B4CAC;
}

uint64_t sub_1006673E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10066742C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC8AppStore18RevealingVideoView_pageGrid;
  v3 = type metadata accessor for PageGrid();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100667554(char *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isExpanded] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView;
  if (qword_10096D300 != -1)
  {
    swift_once();
  }

  v14[4] = *&byte_1009CE668[64];
  v14[5] = *&byte_1009CE668[80];
  v14[6] = *&byte_1009CE668[96];
  v14[7] = *&byte_1009CE668[112];
  v14[0] = *byte_1009CE668;
  v14[1] = *&byte_1009CE668[16];
  v14[2] = *&byte_1009CE668[32];
  v14[3] = *&byte_1009CE668[48];
  v5 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
  *&v1[v4] = sub_10075DCD8(0, v14, 1.0, 0.0);
  *&v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  v8 = type metadata accessor for PageGrid();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory] = 7;
  v2[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring] = 0;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for RevealingVideoMirrorView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v9 setClipsToBounds:1];
  v10 = &a1[OBJC_IVAR____TtC8AppStore18RevealingVideoView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v10 + 1) = &off_1008CD608;
  swift_unknownObjectWeakAssign();
  sub_100665D04(Strong);

  [v9 addSubview:*&v9[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_videoMirrorView]];
  return v9;
}

uint64_t sub_1006677DC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1006677F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1006678C4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkLayoutWithMetrics] = a5;

  sub_1000A833C(a6, v18);
  v19 = OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v18, &v8[v19]);
  swift_endAccess();
  v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_sizeCategory] = a7;
  if ((v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring] & 1) != 0 || !a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10075E2A8(a1);
    swift_unknownObjectWeakAssign();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if (Strong)
      {
        type metadata accessor for VideoView();
        v23 = Strong;
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else if (!Strong)
    {
      goto LABEL_12;
    }

    sub_10075E8D4();
    v23 = Strong;
LABEL_11:
  }

LABEL_12:
  v25 = &v8[OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_artworkSize];
  *v25 = a2;
  *(v25 + 1) = a3;
  v25[16] = a4 & 1;
  return [v8 setNeedsLayout];
}