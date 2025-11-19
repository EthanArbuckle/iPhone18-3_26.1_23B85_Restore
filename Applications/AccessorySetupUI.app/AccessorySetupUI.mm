void sub_100002028()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession] = 0;
  v1 = &v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
  v2 = type metadata accessor for ASUIRootViewController();
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v24.receiver = v0;
  v24.super_class = v2;
  v3 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  v4 = objc_allocWithZone(type metadata accessor for ASUIRouter());
  v5 = v3;
  v6 = [v4 init];
  v7 = &v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
  v8 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
  *v7 = v6;
  *(v7 + 1) = &off_1000724E8;
  *(v7 + 2) = &off_100072558;
  swift_unknownObjectRelease();
  v9 = [objc_allocWithZone(type metadata accessor for ASUIPickingSession()) init];
  v10 = OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession;
  v11 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession];
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_pickingSession] = v9;
  v12 = v9;

  if (!v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v13 = *(v7 + 1);
  if (!*v7)
  {
    v13 = 0;
  }

  *&v12[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_delegate + 8] = v13;
  swift_unknownObjectWeakAssign();

  v14 = *v7;
  if (!*v7)
  {
    goto LABEL_9;
  }

  v15 = *&v5[v10];
  v16 = *(v14 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  *(v14 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession) = v15;
  swift_unknownObjectRetain();
  v17 = v15;
  swift_unknownObjectRelease();

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v18 = qword_1000814E8;
  v19 = *v7;
  v20 = *(v7 + 1);
  v21 = *(v7 + 2);
  swift_unknownObjectRetain();

  v22 = (v18 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
  v23 = *(v18 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
  *v22 = v19;
  v22[1] = v20;
  v22[2] = v21;
  swift_unknownObjectRelease();
}

void sub_10000230C()
{
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v1 = qword_1000814E8;
  v2 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
    if (v3 <= 1)
    {
      if (!v3)
      {
        if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
        {
          v7 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
          swift_unknownObjectRetain();
          sub_100026A70(v0);
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
      {
        v4 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
        swift_unknownObjectRetain();
        sub_100028184(v0);
LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v3 == 3)
    {
      if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
      {
        v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
        swift_unknownObjectRetain();
        sub_1000282B0(v0);
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return;
    }

    if (v3 != 2)
    {
      return;
    }

    if (!*&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router])
    {
      goto LABEL_24;
    }

    v5 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI22ASUIRootViewController_router];
    swift_unknownObjectRetain();
    sub_1000283D8(v0);
    swift_unknownObjectRelease();
    v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v6)
    {

      [v6 pickerStartedRename];
    }
  }
}

void sub_1000024BC(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

id sub_100002818(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100002894(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE08, type metadata accessor for ASError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002900(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE08, type metadata accessor for ASError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002970(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000029FC(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002A68(uint64_t a1)
{
  v2 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002AD4(void *a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002C04()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100002C64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F20(&qword_10007EE40, type metadata accessor for ASError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_100002CF8(void *a1, void *a2)
{
  v4 = type metadata accessor for ASUIHostingWindow();
  v10.receiver = objc_allocWithZone(v4);
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, "initWithWindowScene:", a1);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor:v8];

  [v7 setOpaque:0];
  [v7 makeKeyAndVisible];
  [v7 setClipsToBounds:1];

  return v7;
}

uint64_t sub_100002DF0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100002E38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1000024BC(*(v0 + 16));
}

uint64_t sub_100002E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002E5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002E6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002E7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002F20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000030E4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10000317C()
{
  result = qword_10007EE30;
  if (!qword_10007EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE30);
  }

  return result;
}

uint64_t *sub_10000328C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000032F0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003354()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100081490);
  sub_1000032F0(v0, qword_100081490);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003400(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10000328C(v3, a2);
  sub_1000032F0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003478()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007EF70);
  v1 = sub_1000032F0(v0, qword_10007EF70);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100003540()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v6);
  v11 = &v16[-v10];
  if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle) != 1)
  {
    return 0;
  }

  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v12)
  {
    if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType) != 1)
    {
      if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
      {
        v13 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
        if (v13 >> 62)
        {
          if (v13 < 0)
          {
            v14 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
          }

          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
            goto LABEL_16;
          }
        }

        else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_16;
        }
      }

      *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect);
    }

LABEL_16:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v8, v11, v3);
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v11, v3);
    return v15;
  }

  __break(1u);
  return result;
}

void sub_100003864()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v45[-v10];
  if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle) != 1)
  {
    return;
  }

  if (qword_10007EC50 != -1)
  {
    v38 = v9;
    swift_once();
    v9 = v38;
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v12)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast) == 1)
  {
    v13 = sub_10002FAA8();
    sub_1000545F0(v13, v14);
LABEL_7:

    return;
  }

  v15 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  if (*(v12 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) != 1)
  {
    goto LABEL_12;
  }

  v16 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if (v16 >> 62)
  {
    goto LABEL_41;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_42:
    v42 = v9;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v8, v11, v42);
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v11, v42);
    return;
  }

  while (1)
  {
    v15 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
LABEL_12:
    v17 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
    v18 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
    v11 = *(v0 + v15);
    if ((v11 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v18 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v11 + 8 * v18 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_41:
    v40 = v9;
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v9 = v40;
    if (v41 < 1)
    {
      goto LABEL_42;
    }
  }

  v39 = *(v0 + v15);

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_16:
  v20 = *&v19[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v20)
  {
    goto LABEL_53;
  }

  v21 = [v20 appAccessInfoMap];
  if (v21)
  {
    v22 = v21;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v8 + 2);

    if (v23)
    {
      return;
    }
  }

  else
  {
  }

  v24 = *(v0 + v17);
  v25 = *(v0 + v15);
  if ((v25 & 0xC000000000000001) == 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v25 + 8 * v24 + 32);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_46;
  }

  v43 = *(v0 + v15);

  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v26 = v44;
LABEL_25:
  v27 = v26[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID];

  if (v27 == 1)
  {
    v28 = *(v0 + v17);
    v29 = *(v0 + v15);
    if ((v29 & 0xC000000000000001) == 0)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v28 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 8 * v28 + 32);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_49;
    }

LABEL_46:

    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_30:
    v28 = *&v30[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v29 = *&v30[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (!v29)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    v4 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName);
    v8 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8);
    v31 = *(v0 + v17);
    v32 = *(v0 + v15);
    if ((v32 & 0xC000000000000001) == 0)
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v31 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(v32 + 8 * v31 + 32);

        v34 = v33;
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_49:

    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_35:
    v35 = *&v34[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    v36 = v35;

    if (v35)
    {
      v37 = [v36 bluetoothAppearance];

      sub_10005481C(v28, v29, v4, v8, v37);

      goto LABEL_7;
    }

    goto LABEL_55;
  }
}

id sub_100003E14(void *a1, uint64_t a2)
{
  v3 = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage) & 1) == 0)
  {
    v4 = a1;
    [a1 alpha];
    a1 = v4;
    v2 = vars8;
  }

  return [a1 setAlpha:v3];
}

uint64_t sub_100003E70(unint64_t a1)
{
  v3 = v1;
  if (qword_10007EBF0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    sub_1000032F0(v5, qword_10007EF70);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136315138;
      type metadata accessor for ASUIDevice();
      v10 = Array.description.getter();
      v2 = v11;
      v12 = v3;
      v13 = sub_10003FFF4(v10, v11, &aBlock);

      *(v8 + 4) = v13;
      v3 = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "update with devices %s", v8, 0xCu);
      sub_100009AB0(v9);
    }

    if (!*&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView])
    {
      v20 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
      *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = a1;
    }

    v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
    v15 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
    v16 = (a1 >> 62);
    if (a1 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v18 = *&v3[v14];
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
    }

    *&v3[v14] = v17;
    if (v18 > 1 || v17 < 2)
    {
      sub_10000574C();
    }

    else
    {
      v22 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher];
      aBlock = v17;

      CurrentValueSubject.send(_:)();
    }

    v23 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
    v24 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
    *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = a1;

    if (v17 < v15)
    {
      break;
    }

    if (v16)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25 < v15)
    {
      goto LABEL_62;
    }

    if (v15 < 0)
    {
      goto LABEL_63;
    }

    if (v16)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26 < v17)
    {
      goto LABEL_64;
    }

    v82 = v23;
    if ((a1 & 0xC000000000000001) == 0 || v15 == v17)
    {
      swift_bridgeObjectRetain_n();
      if (!v16)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v15 >= v17)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      type metadata accessor for ASUIDevice();
      swift_bridgeObjectRetain_n();
      v27 = v15;
      do
      {
        v28 = v27 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v27);
        v27 = v28;
      }

      while (v17 != v28);
      if (!v16)
      {
LABEL_32:
        v29 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_35;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v29 = v30;
    v15 = v31;
    v17 = v32 >> 1;
LABEL_35:
    v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
    a1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v86 = v2;
    if (v17 == v15)
    {
LABEL_36:
      swift_unknownObjectRelease_n();
      sub_1000048E8(*&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx], 0);
      a1 = v82;
      v33 = *&v3[v82];
      if (v33 >> 62)
      {
        goto LABEL_65;
      }

      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_38;
    }

    v36 = v17 - v15;
    if (v17 <= v15)
    {
      v37 = v15;
    }

    else
    {
      v37 = v17;
    }

    v38 = v37 - v15;
    v16 = (v29 + 8 * v15);
    v83 = a1;
    while (v38)
    {
      v39 = *v16;
      v40 = *&v3[v2];
      if (v40 >> 62)
      {
        if (v40 < 0)
        {
          v70 = *&v3[v2];
        }

        v41 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = type metadata accessor for ASUIProductPageView();
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = 0;
      v44 = v39;
      v45 = String._bridgeToObjectiveC()();
      v46 = [objc_opt_self() systemImageNamed:v45];

      if (!v46)
      {
        goto LABEL_72;
      }

      *&v43[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage] = v46;
      *&v43[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] = v44;
      *&v43[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_index] = v41;
      v93.receiver = v43;
      v93.super_class = v42;
      v47 = v44;
      v48 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100038154();
      v85 = v47;

      v49 = v48;
      [v49 setAlpha:0.0];
      swift_beginAccess();
      v50 = v49;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v3[v86] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v86] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = *((*&v3[v86] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v51 = *&v3[v83];
      if (!v51)
      {
        goto LABEL_73;
      }

      v84 = v16;
      [v51 addArrangedSubview:v50];
      sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10005C420;
      v53 = [v50 widthAnchor];
      v54 = [v3 widthAnchor];
      v55 = [v53 constraintEqualToAnchor:v54];

      *(v52 + 32) = v55;
      v16 = v3;
      v56 = [v50 heightAnchor];

      v57 = *&v3[v83];
      if (!v57)
      {
        goto LABEL_74;
      }

      v58 = v3;
      v59 = objc_opt_self();
      v60 = [v57 heightAnchor];
      v61 = [v56 constraintEqualToAnchor:v60];

      *(v52 + 40) = v61;
      sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v59 activateConstraints:isa];

      v63 = objc_opt_self();
      v64 = swift_allocObject();
      *(v64 + 16) = v50;
      v91 = sub_100009A18;
      v92 = v64;
      aBlock = _NSConcreteStackBlock;
      v88 = 1107296256;
      v89 = sub_1000102BC;
      v90 = &unk_100071558;
      v65 = _Block_copy(&aBlock);
      v66 = v50;

      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = v16;
      v91 = sub_100009A70;
      v92 = v67;
      aBlock = _NSConcreteStackBlock;
      v88 = 1107296256;
      v89 = sub_10003B844;
      v90 = &unk_1000715A8;
      v68 = _Block_copy(&aBlock);
      a1 = v66;
      v69 = v16;

      [v63 animateWithDuration:v65 animations:v68 completion:0.00001];
      _Block_release(v68);
      _Block_release(v65);

      v2 = v86;
      --v38;
      v16 = v84 + 1;
      --v36;
      v3 = v58;
      if (!v36)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_38:
  swift_beginAccess();
  v35 = *&v3[v2];
  if (!(v35 >> 62))
  {
    result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34 == result)
    {
      return result;
    }

LABEL_69:
    _StringGuts.grow(_:)(62);
    v73._countAndFlagsBits = 0xD000000000000032;
    v73._object = 0x800000010005D9D0;
    String.append(_:)(v73);
    v16 = v3;
    v74 = *&v3[a1];
    if (!(v74 >> 62))
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_76:
      v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v76);

      v77._countAndFlagsBits = 0x3A7365676170202CLL;
      v77._object = 0xE800000000000000;
      String.append(_:)(v77);
      v78 = *(v16 + v86);
      if (v78 >> 62)
      {
        if (v78 < 0)
        {
          v80 = *(v16 + v86);
        }

        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v81);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

LABEL_75:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_76;
  }

  if (v35 < 0)
  {
    v72 = *&v3[v2];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v34 != result)
  {
    goto LABEL_69;
  }

  return result;
}

id sub_1000048E8(id result, char a2)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] <= result)
  {
    return result;
  }

  v5 = result;
  result = [v2 layoutIfNeeded];
  v6 = *&v2[v3];
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = [v2 effectiveUserInterfaceLayoutDirection];
  v11 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView;
  result = *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [result bounds];
  Width = CGRectGetWidth(v16);
  result = *&v2[v11];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v10 == 1)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  result = [result setContentOffset:a2 & 1 animated:{Width * v13, 0.0}];
  v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] != v5)
  {
    *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = v5;
    v15 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher];

    CurrentValueSubject.send(_:)();

    result = *&v2[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
    if (result)
    {
      return [result setCurrentPage:*&v2[v14]];
    }
  }

  return result;
}

void sub_100004A34()
{
  sub_100003864();
  v2 = v1;
  v4 = v3;

  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel);
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = [v6 topAnchor];
  v8 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel);
  if (!v8)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = [v8 bottomAnchor];
  if (v5)
  {
    if (qword_10007EC08 != -1)
    {
      swift_once();
    }

    v10 = *&qword_1000814C8;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [v7 constraintEqualToAnchor:v9 constant:v10];

  [v11 setActive:1];
}

void sub_100004B70()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel);
  if (!v1)
  {
    goto LABEL_28;
  }

  v2 = v1;
  sub_100003540();
  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];

  v4 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel);
  if (!v4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = v4;
  sub_100003864();
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  sub_100004A34();
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel);
  if (!v7)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v8 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  v9 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
  v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  v11 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 8 * v9 + 32);
      v13 = v7;
      v14 = v12;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

  v25 = v7;

  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  v15 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v16 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v7 setText:v17];

  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel);
  if (!v7)
  {
    goto LABEL_31;
  }

  v18 = *(v0 + v8);
  v19 = *(v0 + v10);
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v26 = v7;

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_16;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = *(v19 + 8 * v18 + 32);
  v21 = v7;
  v22 = v20;
LABEL_16:
  sub_100035628();
  v24 = v23;

  if (v24)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v7 setText:v27];
}

void sub_100004E10()
{
  sub_100003864();
  v2 = v1;
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
  v7 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (!v5)
  {
    if (v7)
    {
      v9 = [v7 superview];
      if (!v9)
      {
        goto LABEL_11;
      }

      v10 = *&v0[v6];
      if (v10)
      {
        [v10 removeFromSuperview];
LABEL_15:
        v11 = 1;
        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = [v7 superview];
  if (v8)
  {

LABEL_11:
    v11 = 0;
LABEL_16:
    v20 = objc_opt_self();
    v29 = nullsub_1;
    v30 = 0;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1000102BC;
    v28 = &unk_1000714B8;
    v21 = _Block_copy(&v25);
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    *(v22 + 24) = v11;
    v29 = sub_100009A0C;
    v30 = v22;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10003B844;
    v28 = &unk_100071508;
    v23 = _Block_copy(&v25);
    v24 = v0;

    [v20 animateWithDuration:v21 animations:v23 completion:0.3];
    _Block_release(v23);
    _Block_release(v21);
    return;
  }

  sub_10000543C();
  v12 = *&v0[v6];
  if (!v12)
  {
    goto LABEL_20;
  }

  [v12 setAlpha:0.0];
  v13 = *&v0[v6];
  if (v13)
  {
    v14 = v13;
    sub_100003864();
    v15 = String._bridgeToObjectiveC()();

    [v14 setText:v15];

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    v29 = sub_1000099AC;
    v30 = v17;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1000102BC;
    v28 = &unk_100071490;
    v18 = _Block_copy(&v25);
    v19 = v0;

    [v16 animateWithDuration:v18 animations:0.5];
    _Block_release(v18);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_10000513C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel);
  if (!v3)
  {
    goto LABEL_30;
  }

  v6 = v3;
  sub_100003540();
  sub_100009588(0.2);
  v7 = String._bridgeToObjectiveC()();
  [v6 setText:v7];

  if ((a3 & 1) == 0)
  {
    v8 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel);
    if (!v8)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v9 = v8;
    sub_100003864();
    sub_100009588(0.2);
    v10 = String._bridgeToObjectiveC()();
    [v9 setText:v10];
  }

  v11 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel);
  if (!v11)
  {
    goto LABEL_31;
  }

  v12 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  v13 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx);
  v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
  v15 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v13 + 32);
      v17 = v11;
      v18 = v16;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_27;
  }

  v30 = v11;

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_10:
  v20 = *&v18[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v19 = *&v18[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  sub_100009588(0.2);
  if (v19)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v11 setText:v21];

  v15 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel);
  if (!v15)
  {
    goto LABEL_32;
  }

  v22 = *(a2 + v12);
  v23 = *(a2 + v14);
  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v31 = v15;

    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_18;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = *(v23 + 8 * v22 + 32);
  v25 = v15;
  v26 = v24;
LABEL_18:
  sub_100035628();
  v28 = v27;

  sub_100009588(0.2);
  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v32 = v29;
  [v15 setText:?];
}

void sub_10000543C()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[v1];
  if (!v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v3 setNumberOfLines:0];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v4 setTextAlignment:1];
  if (!*&v0[v1])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10005C430;
  v6 = *&v0[v1];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = [v6 topAnchor];
  v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel];
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = [v8 bottomAnchor];
  if (qword_10007EC08 != -1)
  {
    swift_once();
  }

  v10 = [v7 constraintEqualToAnchor:v9 constant:*&qword_1000814C8];

  *(v5 + 32) = v10;
  v11 = *&v0[v1];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = [v11 centerXAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 40) = v14;
  v15 = *&v0[v1];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v16 = objc_opt_self();
  v17 = [v15 widthAnchor];
  v18 = [v0 widthAnchor];
  if (qword_10007EC00 != -1)
  {
    swift_once();
  }

  v19 = [v17 constraintEqualToAnchor:v18 constant:*&qword_1000814C0 * -2.0];

  *(v5 + 48) = v19;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];
}

void sub_10000574C()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
  v4 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
  v12 = v2;
  v5 = [v12 superview];
  if (v4 > 1)
  {
    if (!v5)
    {
      sub_100005910();
      goto LABEL_9;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  [v12 removeFromSuperview];
LABEL_9:
  v6 = 1;
LABEL_10:
  v7 = *&v0[v1];
  if (v7)
  {
    [v7 setNumberOfPages:*&v0[v3]];
    if (v6)
    {
      [v12 setAlpha:0.0];
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      aBlock[4] = sub_10000996C;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100071440;
      v10 = _Block_copy(aBlock);
      v11 = v0;

      [v8 animateWithDuration:v10 animations:0.333];

      _Block_release(v10);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100005910()
{
  v1 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[v1];
  if (!v3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v3 addTarget:v0 action:"pageControlChangedWithPageControl:" forControlEvents:4096];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v4 setHidesForSinglePage:1];
  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 labelColor];
  [v7 setCurrentPageIndicatorTintColor:v8];

  v9 = *&v0[v1];
  if (!v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v6 secondaryLabelColor];
  [v10 setPageIndicatorTintColor:v11];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 setCurrentPage:*&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx]];
  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v33 = *&v0[v14];
    }

    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v13 setNumberOfPages:v16];
  if (!*&v0[v1])
  {
    goto LABEL_26;
  }

  [v0 addSubview:?];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10005C430;
  v18 = *&v0[v1];
  if (!v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = [v18 topAnchor];
  v20 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel];
  if (!v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:2.0];

  *(v17 + 32) = v22;
  v23 = *&v0[v1];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = [v23 centerXAnchor];
  v25 = [v0 centerXAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v17 + 40) = v26;
  v27 = *&v0[v1];
  if (v27)
  {
    v28 = objc_opt_self();
    v29 = [v27 bottomAnchor];
    v30 = [v0 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v17 + 48) = v31;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:isa];

    return;
  }

LABEL_30:
  __break(1u);
}

void sub_100005CD4()
{
  v1 = v0;
  v337 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle;
  p_ivars = &ASUIPresenter.ivars;
  v3 = 0x10007B000;
  v4 = (&ASUIPresenter + 48);
  v5 = (&ASUIPresenter + 48);
  if (v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] == 1)
  {
    v6 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
    v7 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel;
    v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel];
    *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = v6;

    v9 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
    v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel;
    v11 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel];
    *&v0[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = v9;
    v12 = v9;

    [v12 setAlpha:0.0];
    v344 = v10;
    v13 = *&v1[v10];
    v348 = *&v1[v7];
    v349 = v13;
    v14 = v13;
    v15 = v348;
    v16 = 32;
    do
    {
      v17 = *&v347[v16];
      if (!v17)
      {
        goto LABEL_248;
      }

      v18 = v17;
      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = v18;
      [v19 setNumberOfLines:0];
      [v19 setTextAlignment:1];

      sub_100003540();
      v20 = String._bridgeToObjectiveC()();

      [v19 setText:v20];

      [v1 addSubview:v19];
      v21 = objc_opt_self();
      sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10005C430;
      v23 = [v19 topAnchor];
      v24 = [v1 topAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];

      *(v22 + 32) = v25;
      v26 = [v19 centerXAnchor];
      v27 = [v1 centerXAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v22 + 40) = v28;
      v29 = [v19 widthAnchor];

      v30 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v16 += 8;
      v31 = [v29 constraintEqualToAnchor:v30 constant:(*&qword_1000814C0 + 48.0) * -2.0];

      *(v22 + 48) = v31;
      v32 = sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 activateConstraints:isa];

      p_ivars = &ASUIPresenter.ivars;
    }

    while (v16 != 48);
    sub_100009894(&qword_10007F0F0, &qword_10005C4A8);
    swift_arrayDestroy();
    v34 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v35 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel;
    v36 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = v34;

    v37 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v38 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel;
    v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = v37;
    v39 = v37;

    [v39 setAlpha:0.0];
    sub_100009894(&qword_10007F0F8, qword_10005C4B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10005C440;
    v41 = *&v1[v38];
    *(v40 + 32) = v41;
    v42 = v40;
    aBlock = v40;
    v43 = v41;
    sub_100003864();
    p_aBlock = v44;
    v47 = v46;

    v48 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v48 = p_aBlock & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v4 = *&v1[v35];
      p_aBlock = &aBlock;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (aBlock[2] >= aBlock[3] >> 1)
      {
        v316 = aBlock[2];
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v42 = aBlock;
    }

    v340 = *(v42 + 16);
    if (v340)
    {
      v3 = 0;
      while (1)
      {
        if (v3 >= *(v42 + 16))
        {
          goto LABEL_185;
        }

        v49 = *(v42 + 32 + 8 * v3);
        if (!v49)
        {
          goto LABEL_248;
        }

        v50 = v49;
        [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = v50;
        [v19 setNumberOfLines:0];
        [v19 setTextAlignment:1];

        sub_100003864();
        v51 = String._bridgeToObjectiveC()();

        [v19 setText:v51];

        [v1 addSubview:v19];
        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
        p_aBlock = swift_allocObject();
        *(p_aBlock + 16) = xmmword_10005C430;
        v52 = [v19 p_ivars[151]];
        v53 = *&v1[v344];
        if (!v53)
        {
          break;
        }

        v54 = v52;
        v345 = objc_opt_self();
        v55 = [v53 bottomAnchor];
        if (qword_10007EC08 != -1)
        {
          swift_once();
        }

        v4 = &ASUIPresenter.ivars;
        v56 = [v54 constraintEqualToAnchor:v55 constant:*&qword_1000814C8];

        *(p_aBlock + 32) = v56;
        v57 = [v19 centerXAnchor];
        v58 = [v1 centerXAnchor];
        v59 = [v57 constraintEqualToAnchor:v58];

        *(p_aBlock + 40) = v59;
        v60 = [v19 widthAnchor];

        v61 = [v1 widthAnchor];
        if (qword_10007EC00 != -1)
        {
          swift_once();
        }

        ++v3;
        v62 = [v60 constraintEqualToAnchor:v61 constant:*&qword_1000814C0 * -2.0];

        *(p_aBlock + 48) = v62;
        v63 = Array._bridgeToObjectiveC()().super.isa;

        [v345 activateConstraints:v63];

        p_ivars = (&ASUIPresenter + 48);
        if (v340 == v3)
        {
          goto LABEL_23;
        }
      }

LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

LABEL_23:

    sub_100004A34();
    v3 = &ASUIPresenter.ivars;
    v4 = &ASUIPresenter.ivars;
    v5 = &ASUIPresenter.ivars;
  }

  v64 = [objc_allocWithZone(UIScrollView) init];
  v19 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView;
  v65 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = v64;
  v66 = v64;

  [v66 setScrollEnabled:1];
  v67 = *&v1[v19];
  if (!v67)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = *&v1[v19];
  if (!v68)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  [v68 setDelegate:v1];
  v69 = *&v1[v19];
  if (!v69)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  [v69 setDecelerationRate:UIScrollViewDecelerationRateFast];
  v70 = *&v1[v19];
  if (!v70)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  [v70 setClipsToBounds:0];
  v71 = *&v1[v19];
  if (!v71)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  [v71 setShowsHorizontalScrollIndicator:0];
  v72 = *&v1[v19];
  if (!v72)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  [v72 _setInterpageSpacing:{0.0, 0.0}];
  v73 = *&v1[v19];
  if (!v73)
  {
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  [v73 _setTouchInsets:{-60.0, 0.0, -60.0, 0.0}];
  if (!*&v1[v19])
  {
    goto LABEL_208;
  }

  [v1 addSubview:?];
  v74 = *&v1[v19];
  if (v1[v337])
  {
    if (!v74)
    {
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    p_aBlock = [v74 p_ivars[151]];
    v75 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel];
    if (!v75)
    {
      goto LABEL_235;
    }

    v76 = [v75 v5[162]];
  }

  else
  {
    if (!v74)
    {
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
      goto LABEL_246;
    }

    p_aBlock = [v74 p_ivars[151]];
    v76 = [v1 p_ivars[151]];
  }

  v32 = v76;
  if (qword_10007EC10 != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    v77 = [p_aBlock v4[152]];

    [v77 setActive:1];
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_10005C430;
    v79 = *&v1[v19];
    if (!v79)
    {
      goto LABEL_209;
    }

    v80 = [v79 heightAnchor];
    v81 = [v80 constraintEqualToConstant:120.0];

    *(v78 + 32) = v81;
    v82 = *&v1[v19];
    if (!v82)
    {
      goto LABEL_210;
    }

    v83 = [v82 leadingAnchor];
    v84 = [v1 leadingAnchor];
    v85 = [v83 *(v3 + 1256)];

    *(v78 + 40) = v85;
    v330 = v19;
    v86 = *&v1[v19];
    if (!v86)
    {
      goto LABEL_211;
    }

    v87 = objc_opt_self();
    v88 = [v86 trailingAnchor];
    v89 = [v1 trailingAnchor];
    v90 = [v88 *(v3 + 1256)];

    *(v78 + 48) = v90;
    sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
    v91 = Array._bridgeToObjectiveC()().super.isa;

    v346 = v87;
    [v87 activateConstraints:v91];

    v92 = [objc_allocWithZone(UIStackView) init];
    v93 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
    v94 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = v92;
    v95 = v92;

    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
    v96 = *&v1[v93];
    if (!v96)
    {
      goto LABEL_212;
    }

    [v96 setSpacing:0.0];
    v97 = *&v1[v93];
    if (!v97)
    {
      goto LABEL_213;
    }

    [v97 setAxis:0];
    v98 = *&v1[v330];
    v3 = &ASUIPresenter.ivars;
    v19 = &ASUIPresenter.ivars;
    if (!v98)
    {
      goto LABEL_214;
    }

    if (!*&v1[v93])
    {
      goto LABEL_215;
    }

    [v98 addSubview:?];
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_10005C450;
    v100 = *&v1[v93];
    if (!v100)
    {
      goto LABEL_216;
    }

    v101 = [v100 topAnchor];
    v102 = *&v1[v330];
    if (!v102)
    {
      goto LABEL_217;
    }

    v103 = [v102 topAnchor];
    v104 = [v101 constraintEqualToAnchor:v103];

    *(v99 + 32) = v104;
    v105 = *&v1[v93];
    if (!v105)
    {
      goto LABEL_218;
    }

    v106 = [v105 leadingAnchor];
    v107 = *&v1[v330];
    if (!v107)
    {
      goto LABEL_219;
    }

    v108 = [v107 leadingAnchor];
    v109 = [v106 constraintEqualToAnchor:v108];

    *(v99 + 40) = v109;
    v110 = *&v1[v93];
    if (!v110)
    {
      goto LABEL_220;
    }

    v111 = [v110 trailingAnchor];
    v112 = *&v1[v330];
    if (!v112)
    {
      goto LABEL_221;
    }

    v113 = [v112 trailingAnchor];
    v114 = [v111 constraintEqualToAnchor:v113];

    *(v99 + 48) = v114;
    v115 = *&v1[v93];
    if (!v115)
    {
      goto LABEL_222;
    }

    v116 = [v115 bottomAnchor];
    v117 = *&v1[v330];
    if (!v117)
    {
      goto LABEL_223;
    }

    v118 = [v117 bottomAnchor];
    v119 = [v116 constraintEqualToAnchor:v118];

    *(v99 + 56) = v119;
    v120 = *&v1[v93];
    if (!v120)
    {
      goto LABEL_224;
    }

    v121 = [v120 heightAnchor];
    v122 = *&v1[v330];
    if (!v122)
    {
      goto LABEL_225;
    }

    v4 = [v122 heightAnchor];
    v123 = [v121 constraintEqualToAnchor:v4];

    *(v99 + 64) = v123;
    v124 = Array._bridgeToObjectiveC()().super.isa;

    [v346 activateConstraints:v124];

    v338 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices;
    v125 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
    if (v125 >> 62)
    {
      if (v125 < 0)
      {
        v315 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
      }

      v126 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v127 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
    v317 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = v126;
    if (v127 > 1 || v126 < 2)
    {
      sub_10000574C();
    }

    else
    {
      v128 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher];
      aBlock = v126;

      CurrentValueSubject.send(_:)();
    }

    p_aBlock = *&v1[v338];
    v334 = v93;
    v32 = p_aBlock >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((p_aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    v129 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;

    swift_beginAccess();
    v333 = v129;
    if (!v32)
    {
      break;
    }

    v130 = 0;
    v323 = p_aBlock & 0xFFFFFFFFFFFFFF8;
    v327 = p_aBlock & 0xC000000000000001;
    v318 = v32;
    v319 = p_aBlock;
    while (1)
    {
      if (v327)
      {
        v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v130 >= *(v323 + 16))
        {
          goto LABEL_178;
        }

        v131 = *(p_aBlock + 8 * v130 + 32);
      }

      v132 = v131;
      if (__OFADD__(v130, 1))
      {
        break;
      }

      v133 = *&v1[v129];
      v341 = (v130 + 1);
      if (v133 >> 62)
      {
        v134 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v135 = type metadata accessor for ASUIProductPageView();
      v136 = objc_allocWithZone(v135);
      *&v136[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_imageView] = 0;
      v137 = v132;
      v138 = String._bridgeToObjectiveC()();
      v139 = [objc_opt_self() systemImageNamed:v138];

      if (!v139)
      {
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      *&v136[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_defaultSymbolImage] = v139;
      *&v136[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_device] = v137;
      *&v136[OBJC_IVAR____TtC16AccessorySetupUI19ASUIProductPageView_index] = v134;
      v357.receiver = v136;
      v357.super_class = v135;
      v32 = v137;
      v140 = objc_msgSendSuper2(&v357, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100038154();

      v141 = v140;
      [v141 setAlpha:0.0];
      swift_beginAccess();
      v142 = v141;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v129] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v129] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v159 = *((*&v1[v129] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v143 = *&v1[v334];
      if (!v143)
      {
        goto LABEL_195;
      }

      [v143 addArrangedSubview:v142];
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_10005C420;
      v145 = [v142 widthAnchor];
      v146 = [v1 widthAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];

      *(v144 + 32) = v147;
      v148 = [v142 heightAnchor];

      v149 = *&v1[v334];
      if (!v149)
      {
        goto LABEL_196;
      }

      v150 = [v149 heightAnchor];
      v151 = [v148 constraintEqualToAnchor:v150];

      *(v144 + 40) = v151;
      v152 = Array._bridgeToObjectiveC()().super.isa;

      [v346 activateConstraints:v152];

      v153 = objc_opt_self();
      v154 = swift_allocObject();
      *(v154 + 16) = v142;
      v355 = sub_100009BD4;
      v356 = v154;
      v3 = &aBlock;
      aBlock = _NSConcreteStackBlock;
      v352 = 1107296256;
      v353 = sub_1000102BC;
      v354 = &unk_100071350;
      v4 = _Block_copy(&aBlock);
      v155 = v142;

      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v1;
      v355 = sub_10000992C;
      v356 = v156;
      aBlock = _NSConcreteStackBlock;
      v352 = 1107296256;
      v353 = sub_10003B844;
      v354 = &unk_1000713A0;
      v19 = _Block_copy(&aBlock);
      v157 = v155;
      v158 = v1;

      [v153 animateWithDuration:v4 animations:v19 completion:0.00001];
      _Block_release(v19);
      _Block_release(v4);

      ++v130;
      p_aBlock = v319;
      v129 = v333;
      if (v341 == v318)
      {
        goto LABEL_81;
      }
    }

LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
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
    swift_once();
  }

LABEL_81:

  v335 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
  sub_1000048E8(*&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx], 0);
  v321 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName;
  v19 = &ASUIPresenter.ivars;
  v160 = &_s10Foundation10NSNotFoundSivg_ptr;
  if (v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] == 1)
  {
    v161 = [objc_allocWithZone(PRXLabel) init];
    v162 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel;
    v163 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = v161;
    v164 = v161;

    v165 = objc_opt_self();
    v166 = [v165 systemFontOfSize:15.0];
    [v164 setFont:v166];

    v167 = *&v1[v162];
    if (!v167)
    {
      goto LABEL_236;
    }

    p_aBlock = objc_opt_self();
    v168 = v167;
    v342 = p_aBlock;
    v169 = [p_aBlock labelColor];
    [v168 setTextColor:v169];

    v170 = [objc_allocWithZone(PRXLabel) init];
    v171 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel;
    v172 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel];
    *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = v170;
    v4 = v170;

    v173 = [v165 systemFontOfSize:15.0];
    [(SEL *)v4 setFont:v173];

    v174 = *&v1[v171];
    if (!v174)
    {
      goto LABEL_237;
    }

    [v174 setAlpha:0.0];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10005C420;
    v176 = *&v1[v162];
    if (!v176)
    {
      goto LABEL_238;
    }

    v3 = inited;
    v328 = inited + 32;
    *(inited + 32) = v176;
    v32 = *&v1[v171];
    if (!v32)
    {
      goto LABEL_239;
    }

    *(inited + 40) = v32;
    v324 = inited & 0xFFFFFFFFFFFFFF8;
    v177 = v176;
    v178 = v32;
    v179 = 0;
    v180 = 0;
    do
    {
      v181 = v179;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v180 >= *(v324 + 16))
        {
          goto LABEL_186;
        }

        v182 = *(v328 + 8 * v180);
      }

      v183 = v182;
      [v183 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = v183;
      [v19 setTextAlignment:1];
      [v19 setNumberOfLines:1];
      v184 = [v342 labelColor];
      [v19 setTextColor:v184];

      v4 = *&v1[v335];
      v32 = *&v1[v338];
      if ((v32 & 0xC000000000000001) != 0)
      {
        v200 = *&v1[v338];

        v185 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_179;
        }

        if (v4 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_180;
        }

        v185 = *(v32 + 8 * v4 + 32);
      }

      v187 = *&v185[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
      v186 = *&v185[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

      if (v186)
      {
        v188 = String._bridgeToObjectiveC()();
      }

      else
      {
        v188 = 0;
      }

      [v19 setText:v188];

      [v1 addSubview:v19];
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10005C430;
      v189 = [v19 centerXAnchor];
      v190 = [v1 centerXAnchor];
      v191 = [v189 constraintEqualToAnchor:v190];

      *(v32 + 32) = v191;
      v192 = [v19 topAnchor];
      v193 = *&v1[v330];
      if (!v193)
      {
        goto LABEL_197;
      }

      v194 = [v193 bottomAnchor];
      p_aBlock = &ASUIPresenter.ivars;
      v195 = [v192 constraintEqualToAnchor:v194 constant:12.0];

      *(v32 + 40) = v195;
      v196 = [v19 widthAnchor];

      v197 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v198 = [v196 constraintEqualToAnchor:v197 constant:*&qword_1000814C0 * -2.0];

      *(v32 + 48) = v198;
      v199 = Array._bridgeToObjectiveC()().super.isa;

      [v346 activateConstraints:v199];

      v179 = 1;
      v180 = 1;
      v4 = &_s10Foundation10NSNotFoundSivg_ptr;
    }

    while ((v181 & 1) == 0);
    swift_setDeallocating();
    v201 = *(v3 + 16);
    swift_arrayDestroy();
    v160 = &_s10Foundation10NSNotFoundSivg_ptr;
  }

  v202 = [objc_allocWithZone(PRXLabel) init];
  v203 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
  v204 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = v202;
  v205 = v202;

  v206 = objc_opt_self();
  v207 = [v206 systemFontOfSize:15.0];
  [v205 setFont:v207];

  v208 = *&v1[v203];
  if (!v208)
  {
    goto LABEL_226;
  }

  v209 = v160[320];
  v210 = objc_opt_self();
  v211 = v208;
  v343 = v210;
  v212 = [v210 secondaryLabelColor];
  [v211 setTextColor:v212];

  v213 = [objc_allocWithZone(PRXLabel) init];
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel;
  v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = v213;
  v32 = v213;

  v214 = [v206 systemFontOfSize:15.0];
  [v32 setFont:v214];

  v215 = *&v1[v3];
  if (!v215)
  {
    goto LABEL_227;
  }

  [v215 setAlpha:0.0];
  v320 = v3;
  if (v1[v321] == 1)
  {
    v216 = swift_initStackObject();
    *(v216 + 16) = xmmword_10005C420;
    v217 = *&v1[v203];
    if (!v217)
    {
      goto LABEL_240;
    }

    v325 = v216 + 32;
    *(v216 + 32) = v217;
    p_aBlock = *&v1[v3];
    if (!p_aBlock)
    {
      goto LABEL_242;
    }

    *(v216 + 40) = p_aBlock;
    v218 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel;
    v219 = v216 & 0xC000000000000001;
    v329 = v216;
    v331 = v216 & 0xFFFFFFFFFFFFFF8;
    v220 = v217;
    v221 = p_aBlock;
    v222 = 0;
    v223 = 0;
    do
    {
      v19 = v222;
      if (v219)
      {
        v224 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v223 >= *(v331 + 16))
        {
          goto LABEL_187;
        }

        v224 = *(v325 + 8 * v223);
      }

      v225 = v224;
      [v225 setTranslatesAutoresizingMaskIntoConstraints:0];
      v226 = v225;
      [v226 setTextAlignment:1];
      [v226 setNumberOfLines:1];
      p_aBlock = [v343 secondaryLabelColor];
      [v226 setTextColor:p_aBlock];

      v32 = *&v1[v335];
      v4 = *&v1[v338];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v240 = *&v1[v338];

        v227 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_182;
        }

        if (v32 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_183;
        }

        v227 = v4[v32 + 4];
      }

      sub_100035628();
      v229 = v228;

      if (v229)
      {
        v230 = String._bridgeToObjectiveC()();
      }

      else
      {
        v230 = 0;
      }

      [v226 setText:v230];

      [v1 addSubview:v226];
      p_aBlock = swift_allocObject();
      *(p_aBlock + 16) = xmmword_10005C430;
      v231 = [v226 centerXAnchor];
      v232 = [v1 centerXAnchor];
      v233 = [v231 constraintEqualToAnchor:v232];

      *(p_aBlock + 32) = v233;
      v234 = [v226 topAnchor];
      v235 = *&v1[v218];
      if (!v235)
      {
        goto LABEL_199;
      }

      v236 = [v235 bottomAnchor];
      v3 = &ASUIPresenter.ivars;
      v237 = [v234 constraintEqualToAnchor:v236 constant:2.0];

      *(p_aBlock + 40) = v237;
      v238 = [v226 widthAnchor];

      v4 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v239 = [v238 constraintEqualToAnchor:v4 constant:*&qword_1000814C0 * -2.0];

      *(p_aBlock + 48) = v239;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v346 activateConstraints:v32];

      v222 = 1;
      v223 = 1;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v241 = swift_initStackObject();
    *(v241 + 16) = xmmword_10005C420;
    v242 = *&v1[v203];
    if (!v242)
    {
      goto LABEL_241;
    }

    v326 = v241 + 32;
    *(v241 + 32) = v242;
    p_aBlock = *&v1[v3];
    if (!p_aBlock)
    {
      goto LABEL_243;
    }

    *(v241 + 40) = p_aBlock;
    v243 = v241 & 0xC000000000000001;
    v329 = v241;
    v322 = v241 & 0xFFFFFFFFFFFFFF8;
    v244 = v242;
    v245 = p_aBlock;
    v246 = 0;
    v247 = 0;
    do
    {
      v19 = v246;
      if (v243)
      {
        v248 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v247 >= *(v322 + 16))
        {
          goto LABEL_188;
        }

        v248 = *(v326 + 8 * v247);
      }

      v249 = v248;
      [v249 setTranslatesAutoresizingMaskIntoConstraints:0];
      v250 = v249;
      [v250 setTextAlignment:1];
      [v250 setNumberOfLines:1];
      p_aBlock = [v343 secondaryLabelColor];
      [v250 setTextColor:p_aBlock];

      v32 = *&v1[v335];
      v4 = *&v1[v338];
      if ((v4 & 0xC000000000000001) != 0)
      {
        v264 = *&v1[v338];

        v251 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_181;
        }

        if (v32 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_184;
        }

        v251 = v4[v32 + 4];
      }

      sub_100035628();
      v253 = v252;

      if (v253)
      {
        v254 = String._bridgeToObjectiveC()();
      }

      else
      {
        v254 = 0;
      }

      [v250 setText:v254];

      [v1 addSubview:v250];
      p_aBlock = swift_allocObject();
      *(p_aBlock + 16) = xmmword_10005C430;
      v255 = [v250 centerXAnchor];
      v256 = [v1 centerXAnchor];
      v257 = [v255 constraintEqualToAnchor:v256];

      *(p_aBlock + 32) = v257;
      v258 = [v250 topAnchor];
      v259 = *&v1[v330];
      if (!v259)
      {
        goto LABEL_198;
      }

      v260 = [v259 bottomAnchor];
      v3 = &ASUIPresenter.ivars;
      v261 = [v258 constraintEqualToAnchor:v260 constant:12.0];

      *(p_aBlock + 40) = v261;
      v262 = [v250 widthAnchor];

      v4 = [v1 widthAnchor];
      if (qword_10007EC00 != -1)
      {
        swift_once();
      }

      v263 = [v262 constraintEqualToAnchor:v4 constant:*&qword_1000814C0 * -2.0];

      *(p_aBlock + 48) = v263;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v346 activateConstraints:v32];

      v246 = 1;
      v247 = 1;
    }

    while ((v19 & 1) == 0);
  }

  swift_setDeallocating();
  v265 = *(v329 + 16);
  swift_arrayDestroy();
  v266 = [objc_allocWithZone(UIPageControl) init];
  v267 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl;
  v268 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = v266;

  v269 = [objc_allocWithZone(UIPageControl) init];
  v270 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl;
  v271 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = v269;
  v272 = v269;

  [v272 setAlpha:0.0];
  v273 = *&v1[v270];
  v3 = v333;
  if (!v273)
  {
    goto LABEL_228;
  }

  v274 = [v273 heightAnchor];
  v32 = [v274 constraintEqualToConstant:0.0];

  v275 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint;
  v276 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint];
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = v32;

  sub_100009894(&qword_10007F0E8, &qword_10005C4A0);
  v277 = swift_allocObject();
  v4 = *&v1[v270];
  *(v277 + 16) = xmmword_10005C440;
  *(v277 + 32) = v4;
  v350 = v277;
  v332 = v275;
  if (*&v1[v317] < 2)
  {
    p_aBlock = v277;
    v280 = v4;
    swift_beginAccess();
    v279 = 1;
    goto LABEL_154;
  }

  v32 = *&v1[v267];
  v278 = v4;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v350 + 16) >= *(v350 + 24) >> 1)
  {
    v4 = *(v350 + 16);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  p_aBlock = v350;
  v279 = *(v350 + 16);
  swift_beginAccess();
  if (v279)
  {
LABEL_154:
    v336 = v270;
    v339 = v267;
    v281 = 0;
    v19 = &ASUIPresenter.ivars;
    while (v281 < *(p_aBlock + 16))
    {
      v282 = *(p_aBlock + 8 * v281 + 32);
      if (!v282)
      {
        goto LABEL_248;
      }

      v32 = v282;
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v32 addTarget:v1 action:"pageControlChangedWithPageControl:" forControlEvents:4096];
      [v32 setHidesForSinglePage:1];
      v3 = v343;
      v283 = [v343 labelColor];
      [v32 setCurrentPageIndicatorTintColor:v283];

      v4 = [v343 secondaryLabelColor];
      [v32 setPageIndicatorTintColor:v4];

      [v32 setCurrentPage:0];
      v284 = *&v1[v333];
      if (v284 >> 62)
      {
        if (v284 < 0)
        {
          v286 = *&v1[v333];
        }

        v285 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v285 = *((v284 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v281;
      [v32 setNumberOfPages:v285];
      [v1 addSubview:v32];

      if (v279 == v281)
      {
        v267 = v339;
        v270 = v336;
        goto LABEL_164;
      }
    }

    __break(1u);
    goto LABEL_177;
  }

LABEL_164:
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_10005C430;
  v288 = *&v1[v270];
  if (!v288)
  {
    goto LABEL_229;
  }

  v289 = [v288 topAnchor];
  v290 = *&v1[v320];
  if (!v290)
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v291 = [v290 bottomAnchor];
  v292 = [v289 constraintEqualToAnchor:v291 constant:2.0];

  *(v287 + 32) = v292;
  v293 = *&v1[v270];
  if (!v293)
  {
    goto LABEL_231;
  }

  v294 = [v293 centerXAnchor];
  v295 = [v1 centerXAnchor];
  v296 = [v294 constraintEqualToAnchor:v295];

  *(v287 + 40) = v296;
  v297 = *&v1[v270];
  if (!v297)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v298 = [v297 bottomAnchor];
  v299 = [v1 bottomAnchor];
  v300 = [v298 constraintEqualToAnchor:v299];

  *(v287 + 48) = v300;
  v301 = Array._bridgeToObjectiveC()().super.isa;

  [v346 activateConstraints:v301];

  if (*&v1[v317] <= 1)
  {
    v302 = *&v1[v332];
    if (!v302)
    {
      goto LABEL_244;
    }

    v303 = v302;

    [(objc_class *)v303 setActive:1];
LABEL_175:

    return;
  }

  v304 = swift_allocObject();
  *(v304 + 16) = xmmword_10005C420;
  v305 = *&v1[v267];
  if (!v305)
  {
    goto LABEL_245;
  }

  v306 = [v305 topAnchor];
  v307 = *&v1[v320];
  if (v307)
  {
    v308 = [v307 bottomAnchor];
    v309 = [v306 constraintEqualToAnchor:v308 constant:2.0];

    *(v304 + 32) = v309;
    v310 = *&v1[v267];
    if (!v310)
    {
      goto LABEL_247;
    }

    v311 = v310;

    v312 = [v311 centerXAnchor];

    v313 = [v1 centerXAnchor];
    v314 = [v312 constraintEqualToAnchor:v313];

    *(v304 + 40) = v314;
    v303 = Array._bridgeToObjectiveC()().super.isa;

    [v346 activateConstraints:v303];
    goto LABEL_175;
  }

LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100008740(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v15[4] = a5;
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000102BC;
  v15[3] = a6;
  v12 = _Block_copy(v15);
  v13 = a2;
  v14 = a3;

  [v10 animateWithDuration:0 delay:v12 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.8 completion:0.0];
  _Block_release(v12);
}

uint64_t sub_1000088B8(char *a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  result = swift_beginAccess();
  v4 = *&a1[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v9 = *&a1[v2];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (result)
  {
LABEL_3:
    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        sub_1000386E4(a1);
      }
    }
  }

  return result;
}

id sub_100008AD4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher;
  v19 = -1;
  v10 = sub_100009894(&qword_10007F108, &unk_10005D0E0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v4[v9] = CurrentValueSubject.init(_:)();
  v13 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher;
  v19 = -1;
  v14 = *(v10 + 48);
  v15 = *(v10 + 52);
  swift_allocObject();
  *&v4[v13] = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = &_swiftEmptyArrayStorage;
  v16 = &v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = 0;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 0;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 0;
  *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ASUIProductCarouselView();
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100008D04(void *a1)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher;
  v14 = -1;
  v4 = sub_100009894(&qword_10007F108, &unk_10005D0E0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = CurrentValueSubject.init(_:)();
  v7 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher;
  v14 = -1;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  *&v1[v7] = CurrentValueSubject.init(_:)();
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = &_swiftEmptyArrayStorage;
  v10 = &v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingSubtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_displayLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingDisplayLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingOTALabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = 0;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 0;
  v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ASUIProductCarouselView();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_100008F2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIProductCarouselView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100009134(double a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView;
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productStackView);
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = [result hitTest:0 withEvent:?];
  if (v5)
  {
    v6 = v5;
    result = *(v1 + v2);
    if (result)
    {
      v7 = [result arrangedSubviews];
      sub_100009B48(0, &qword_10007F0D0, UIView_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = sub_100009478(v6, v8);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
LABEL_20:

        return v9;
      }

      result = *(v1 + v2);
      if (result)
      {
        [result frame];
        v12 = CGRectGetWidth(v21) / a1;
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v12 > -9.22337204e18)
        {
          if (v12 < 9.22337204e18)
          {
            v9 = v12 - 1;
            if (!__OFSUB__(v12, 1))
            {
              result = *(v1 + v2);
              if (result)
              {
                v13 = [result arrangedSubviews];
                v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                if (!(v14 >> 62))
                {
                  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_13;
                }

LABEL_29:
                v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:

                if (v9 < v15 && (v9 & 0x8000000000000000) == 0)
                {
                  if (qword_10007EBF0 != -1)
                  {
                    swift_once();
                  }

                  v16 = type metadata accessor for Logger();
                  sub_1000032F0(v16, qword_10007EF70);
                  v17 = Logger.logObject.getter();
                  v18 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v17, v18))
                  {
                    v19 = swift_slowAlloc();
                    *v19 = 134217984;
                    *(v19 + 4) = v9;
                    _os_log_impl(&_mh_execute_header, v17, v18, "Manually calculating current index between page updates and scrolling to %ld", v19, 0xCu);
                  }

                  goto LABEL_20;
                }

                goto LABEL_22;
              }

LABEL_33:
              __break(1u);
              return result;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_22:

  return NSNotFound.getter();
}

unint64_t sub_100009478(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100009B48(0, &qword_10007F0D0, UIView_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_100009588(double a1)
{
  v3 = [objc_allocWithZone(CATransition) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v5 setTimingFunction:v6];

  [v5 setType:kCATransitionFade];
  [v5 setDuration:a1];

  v7 = [v1 layer];
  [v7 addAnimation:v5 forKey:kCATransitionFade];
}

uint64_t sub_1000096B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  result = swift_beginAccess();
  v4 = *&v1[v2];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v9 = *&v1[v2];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (result)
  {
LABEL_3:
    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        sub_1000386E4(v1);
      }
    }
  }

  return result;
}

id sub_1000097A4(uint64_t a1, double a2)
{
  v3 = v2;
  [v3 bounds];
  Width = CGRectGetWidth(v16);
  v7 = *(a1 + 8);
  v8 = *a1 / Width;
  v9 = floor(v8);
  v10 = ceil(v8);
  if (a2 <= 0.0)
  {
    v10 = v9;
  }

  v11 = Width * v10;
  *a1 = v11;
  v12 = sub_100009134(v11);
  result = NSNotFound.getter();
  if (v12 != result)
  {
    v14 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;
    if (*&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] != v12)
    {
      *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx] = v12;
      v15 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher];

      CurrentValueSubject.send(_:)();

      result = *&v3[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
      if (result)
      {
        return [result setCurrentPage:*&v3[v14]];
      }
    }
  }

  return result;
}

uint64_t sub_100009894(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000098DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009914(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000996C()
{
  v1 = *(v0 + 16);
  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl);
  if (result)
  {
    v3 = 0.0;
    if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages) > 1)
    {
      v3 = 1.0;
    }

    return [result setAlpha:v3];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000099AC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1000099D4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100009A30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009AB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100009B00()
{
  v1 = *(v0 + 16);
  sub_1000386E4(*(v0 + 24));

  return [v1 setAlpha:1.0];
}

uint64_t sub_100009B48(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100009C0C(void *a1)
{
  v2 = v1;
  v4 = a1[6];
  v5 = a1[7];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();
  v48 = sub_10000A590;
  v49 = v6;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100071700;
  v8 = _Block_copy(&aBlock);
  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v43 = v10;

  v11 = a1[8];
  v12 = a1[9];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  v48 = sub_10000A5C8;
  v49 = v13;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100071728;
  v15 = _Block_copy(&aBlock);
  v16 = [v9 actionWithTitle:v14 style:1 handler:v15];

  _Block_release(v15);

  v17 = a1[19];
  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = a1[21];
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = a1[23];
  if (v19)
  {
    v20 = a1[20];
    v21 = a1[22];
    v22 = objc_allocWithZone(type metadata accessor for ASUIAppHeaderView());

    v23 = v17;

    v24 = sub_100025430(v17, v20, v18, v21, v19);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v2 contentView];
    [v25 addSubview:v24];

    v26 = [v2 contentView];
    v27 = [v26 mainContentGuide];

    v28 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10005C4D0;
    v30 = [v24 topAnchor];
    v31 = [v27 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v29 + 32) = v32;
    v33 = [v24 leadingAnchor];
    v34 = [v27 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v29 + 40) = v35;
    v36 = [v24 trailingAnchor];
    v37 = [v27 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v29 + 48) = v38;
    v39 = [v24 bottomAnchor];

    v40 = [v27 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v29 + 56) = v41;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:isa];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10000A164(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000A1C0(a3);
  }
}

uint64_t sub_10000A1C0(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415BC(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10000A398()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000A464@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000A4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&unk_10007F570, &unk_10005C510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A558()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A5B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000A5E8()
{
  result = qword_10007F0E0;
  if (!qword_10007F0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F0E0);
  }

  return result;
}

uint64_t sub_10000A634(uint64_t a1)
{
  v2 = sub_100009894(&unk_10007F570, &unk_10005C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10000A734()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F150);
  v1 = sub_1000032F0(v0, qword_10007F150);
  if (qword_10007EBD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081478);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10000A7FC()
{
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v2 > 3)
  {
    return 0;
  }

  v3 = *(v0 + *off_100072128[v2]);
  v4 = v3;
  return v3;
}

uint64_t sub_10000A8A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID);
  v4 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_10001F768(v3, v1);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  swift_endAccess();
  v10 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  result = swift_beginAccess();
  v6 = *(v2 + v10);
  if (!v6)
  {
    goto LABEL_25;
  }

  if (*(v6 + 16))
  {
    v8 = sub_10001F768(v3, v1);
    if (v11)
    {
LABEL_8:
      v12 = *(*(v6 + 56) + 8 * v8);
      swift_endAccess();
      v13 = v12;

      return v13;
    }
  }

  swift_endAccess();
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v14;
  v17 = v15;
  v18 = [v17 identifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v3 == v19 && v1 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {

LABEL_19:

      return 0;
    }
  }

  v24 = [objc_allocWithZone(DADevice) init];
  v25 = String._bridgeToObjectiveC()();
  [v24 setIdentifier:v25];

  v26 = [v17 displayName];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = (v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
  v29 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
  if (v29)
  {
    v30 = result;
    v31 = v27;
    v32 = *v28;

    v33 = objc_allocWithZone(type metadata accessor for ASUIDevice());
    v34 = sub_100036A64(v30, v31, v24, v32, v29);

    return v34;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_10000AB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10001F768(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10000ABDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  if (!v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 pairingInfo];
      v8 = [v7 passkey];

      if (v8)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }
    }

    return 0;
  }

  v2 = v1;
  sub_10000ACB0();
  v4 = v3;

  return v4;
}

void sub_10000ACB0()
{
  v1 = [v0 pairingInfo];
  v2 = [v1 passkey];

  if (v2)
  {

    sub_100009894(&qword_10007F290, &qword_10005C598);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10005C440;
    v4 = [v0 pairingInfo];
    v5 = [v4 passkey];

    if (v5)
    {
      v6 = [v5 unsignedIntegerValue];

      *(v3 + 56) = &type metadata for UInt;
      *(v3 + 64) = &protocol witness table for UInt;
      *(v3 + 32) = v6;
      String.init(format:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

_BYTE *sub_10000ADD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v50 - v4;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer] = 0;
  v6 = &v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  *v6 = 0;
  v6[1] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems] = 0;
  v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
  *&v0[v7] = sub_100042B10(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session] = 0;
  v8 = &OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
  v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator] = 0;
  v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTookTooLong] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap] = 0;
  v9 = &v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
  *v9 = 0;
  v9[1] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationItems] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable] = 0;
  v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart] = 0;
  v54.receiver = v0;
  v54.super_class = ObjectType;
  p_ivars = &ASUIPresenter.ivars;
  v11 = objc_msgSendSuper2(&v54, "init");
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v12 = qword_1000814E8;
  v13 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v14 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID);
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = &v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v19 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  *v18 = v17;
  v18[1] = v16;
  v51 = v18;

  v52 = v13;
  v20 = *(v12 + v13);
  if (v20)
  {
    aBlock[0] = *(v20 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100009894(&qword_10007F2E0, &qword_10005C620);
    v8 = &OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_otaLabel;
    sub_100022AF4(&qword_10007F2E8, &qword_10007F2E0, &qword_10005C620);
    p_ivars = (&ASUIPresenter + 48);
    v21 = Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable];
  *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable] = v21;

  v23 = sub_100042B24(_swiftEmptyArrayStorage);
  v24 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v25 = *&v11[v24];
  *&v11[v24] = v23;

  v26 = sub_100042B24(_swiftEmptyArrayStorage);
  v27 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  v28 = *&v11[v27];
  *&v11[v27] = v26;

  v29 = sub_100042B38(_swiftEmptyArrayStorage);
  v30 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v31 = *&v11[v30];
  *&v11[v30] = v29;

  v32 = sub_100042C3C(_swiftEmptyArrayStorage);
  v33 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
  swift_beginAccess();
  v34 = *&v11[v33];
  *&v11[v33] = v32;

  v11[v8[54]] = 0;
  type metadata accessor for ASUIAliasScanningCoordinator();
  swift_allocObject();
  v35 = sub_100039700();
  v36 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator];
  *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator] = v35;

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v5, 1, 1, v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  sub_10000C78C(0, 0, v5, &unk_10005C630, v39);

  sub_10000CD80();
  v40 = *(v12 + v52);
  if (v40 && *(v40 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory))
  {
    v41 = [objc_allocWithZone(DASession) p_ivars[129]];
    if (v51[1])
    {
      v42 = *v51;
      v43 = v51[1];

      v44 = String._bridgeToObjectiveC()();
    }

    else
    {
      v44 = 0;
    }

    [v41 setBundleID:v44];

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100022AE4;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100022FBC;
    aBlock[3] = &unk_100072038;
    v46 = _Block_copy(aBlock);

    [v41 setEventHandler:v46];
    _Block_release(v46);
    v47 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session];
    *&v11[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session] = v41;
    v48 = v41;

    [v48 activate];
  }

  return v11;
}

void sub_10000B4D8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
      *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems) = v1;

      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
LABEL_28:
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
          v34 = v5;
          v35 = v1 & 0xC000000000000001;
          v32 = v1;
          v33 = v6;
          do
          {
            if (v35)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *(v5 + 16))
              {
                goto LABEL_25;
              }

              v11 = *(v1 + 8 * v7 + 32);
            }

            v12 = v11;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v36 = v7 + 1;
            v13 = [v11 identifier];
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            swift_beginAccess();
            v17 = v12;
            v18 = *(v3 + v8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v20 = *(v3 + v8);
            v1 = v3;
            v5 = v8;
            *(v3 + v8) = 0x8000000000000000;
            v3 = sub_10001F768(v14, v16);
            v22 = v20[2];
            v23 = (v21 & 1) == 0;
            v24 = v22 + v23;
            if (__OFADD__(v22, v23))
            {
              goto LABEL_26;
            }

            v25 = v21;
            if (v20[3] >= v24)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if (v21)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                sub_1000205A0(&unk_100080240, &unk_10005C670);
                if (v25)
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              sub_10001FCCC(v24, isUniquelyReferenced_nonNull_native, &unk_100080240, &unk_10005C670);
              v26 = sub_10001F768(v14, v16);
              if ((v25 & 1) != (v27 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v3 = v26;
              if (v25)
              {
LABEL_6:

                v9 = v20[7];
                v10 = *(v9 + 8 * v3);
                *(v9 + 8 * v3) = v17;

                goto LABEL_7;
              }
            }

            v20[(v3 >> 6) + 8] |= 1 << v3;
            v28 = (v20[6] + 16 * v3);
            *v28 = v14;
            v28[1] = v16;
            *(v20[7] + 8 * v3) = v17;
            v29 = v20[2];
            v30 = __OFADD__(v29, 1);
            v31 = v29 + 1;
            if (v30)
            {
              goto LABEL_27;
            }

            v20[2] = v31;
LABEL_7:
            v3 = v1;
            v8 = v5;
            *(v1 + v5) = v20;
            swift_endAccess();

            ++v7;
            v1 = v32;
            v5 = v34;
          }

          while (v36 != v33);
        }
      }

      if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart) == 1)
      {
        sub_10000B8EC();
      }
    }
  }
}

uint64_t sub_10000B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100020294(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10001F768(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1000205A0(&qword_10007F2B0, &unk_10005C5B0);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10001FF68(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_10000B8EC()
{
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v68 - v4;
  if (!*(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery))
  {
    v69 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
    v71 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems;
    v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
    if (v6)
    {
      v73 = v6 & 0xFFFFFFFFFFFFFF8;
      v74 = v1;
      if (v6 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); !i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v15 = _swiftEmptyArrayStorage;
LABEL_24:
        v77 = _swiftEmptyArrayStorage;
        if (v15 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v73 = v15;
        if (v20)
        {
          if (v20 < 1)
          {
            goto LABEL_74;
          }

          v21 = 0;
          v22 = v15 & 0xC000000000000001;
          v72 = _swiftEmptyArrayStorage;
          do
          {
            if (v22)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v25 = *(v15 + 8 * v21 + 32);
            }

            v26 = v25;
            v27 = [v25 bluetoothIdentifier];
            if (v27)
            {
              v23 = v27;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v24 = type metadata accessor for UUID();
              (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
              sub_1000227E8(v5, &qword_10007F2C0, &qword_10005C5C0);
            }

            else
            {
              v28 = type metadata accessor for UUID();
              (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
              sub_1000227E8(v5, &qword_10007F2C0, &qword_10005C5C0);
              v29 = [v26 networkHotspotSSID];
              if (v29)
              {
                v30 = v29;
              }

              else
              {
                v31 = v26;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v32 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v72 = v77;
                v15 = v73;
              }
            }

            ++v21;
          }

          while (v20 != v21);
        }

        else
        {
          v72 = _swiftEmptyArrayStorage;
        }

        v5 = *(v74 + v71);
        if (!v5)
        {
          goto LABEL_126;
        }

        v76[0] = _swiftEmptyArrayStorage;
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v5 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v33 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v0 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem;

        if (!v33)
        {
          v70 = _swiftEmptyArrayStorage;
LABEL_61:

          v1 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
          v6 = v74;
          swift_beginAccess();
          v40 = *(v6 + v1);
          *(v6 + v1) = v70;

          v0 = *&v0[v6];
          if (!v0)
          {
            goto LABEL_76;
          }

          v41 = *(v6 + v71);
          if (v41)
          {
            if (!(v41 >> 62))
            {
              if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
              {
                goto LABEL_65;
              }

LABEL_76:
              v43 = *(v6 + v1);
              if (!v43)
              {
                goto LABEL_116;
              }

              if (!(v43 >> 62))
              {
                v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v44 >= 1)
                {
                  goto LABEL_79;
                }

LABEL_116:
                sub_100010610();
LABEL_117:
                v65 = *(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
                if (v65)
                {
                  goto LABEL_122;
                }

                if (*(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) != 1)
                {
                  goto LABEL_121;
                }

                v65 = *(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
                if (v65)
                {
                  goto LABEL_122;
                }

                __break(1u);
LABEL_121:
                v65 = *(v6 + v69);
                if (v65)
                {
LABEL_122:
                  v66 = v65;

                  [v66 activate];

                  if (*(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable))
                  {
                    v67 = *(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_cancellable);

                    AnyCancellable.cancel()();
                  }

                  return;
                }

LABEL_129:
                __break(1u);
                return;
              }

              if (v43 < 0)
              {
                v59 = *(v6 + v1);
              }

              v44 = _CocoaArrayWrapper.endIndex.getter();
              if (v44 < 1)
              {
                goto LABEL_116;
              }

LABEL_79:
              v45 = *(v6 + v71);
              if (v45)
              {
                if (v45 >> 62)
                {
                  if (v45 < 0)
                  {
                    v60 = *(v6 + v71);
                  }

                  if (_CocoaArrayWrapper.endIndex.getter() == v44)
                  {
LABEL_82:
                    v71 = v43 >> 62;
                    v75 = _swiftEmptyArrayStorage;

                    specialized ContiguousArray.reserveCapacity(_:)();
                    v46 = 0;
                    v47 = (v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
                    do
                    {
                      if (v46 >= v44)
                      {
                        __break(1u);
LABEL_101:
                        __break(1u);
LABEL_102:
                        __break(1u);
                        goto LABEL_103;
                      }

                      v48 = v46 + 1;
                      if (__OFADD__(v46, 1))
                      {
                        goto LABEL_101;
                      }

                      if ((v43 & 0xC000000000000001) != 0)
                      {
                        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v46 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_102;
                        }

                        v49 = *(v43 + 8 * v46 + 32);
                      }

                      v50 = v49;
                      if (!v47[1])
                      {
                        goto LABEL_125;
                      }

                      v51 = *v47;
                      v52 = v47[1];

                      sub_100017090();

                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      v53 = v75[2];
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      ++v46;
                    }

                    while (v48 != v44);
                    v6 = v74;
                    sub_10001428C();

                    if (qword_10007EBF8 != -1)
                    {
                      swift_once();
                    }

                    v54 = type metadata accessor for Logger();
                    sub_1000032F0(v54, qword_10007F150);

                    v55 = Logger.logObject.getter();
                    v56 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v55, v56))
                    {
                      v57 = swift_slowAlloc();
                      *v57 = 134217984;
                      if (v71)
                      {
                        v58 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v58 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      *(v57 + 4) = v58;

                      _os_log_impl(&_mh_execute_header, v55, v56, "Only Migration displayItems so dismiss after migration complete Count : %ld", v57, 0xCu);
                    }

                    else
                    {

                      swift_bridgeObjectRelease_n();
                    }

                    *(v6 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) = 1;
                    goto LABEL_117;
                  }
                }

                else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) == v44)
                {
                  goto LABEL_82;
                }

                if (qword_10007EBF8 != -1)
                {
                  swift_once();
                }

                v61 = type metadata accessor for Logger();
                sub_1000032F0(v61, qword_10007F150);
                v62 = Logger.logObject.getter();
                v63 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v62, v63))
                {
                  v64 = swift_slowAlloc();
                  *v64 = 0;
                  _os_log_impl(&_mh_execute_header, v62, v63, "New display + Migration displayItems so start new setup first", v64, 2u);
                }

                goto LABEL_116;
              }

LABEL_128:
              __break(1u);
              goto LABEL_129;
            }

LABEL_75:
            if (_CocoaArrayWrapper.endIndex.getter() != 1)
            {
              goto LABEL_76;
            }

LABEL_65:
            v42 = v0;
            sub_100016CC4();

            goto LABEL_117;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v34 = 0;
        v70 = _swiftEmptyArrayStorage;
LABEL_46:
        v1 = v34;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_68;
            }

            v35 = *(v5 + 8 * v1 + 32);
          }

          v36 = v35;
          v34 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
            break;
          }

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (v37)
          {
            v38 = v37;
            if (![(objc_class *)v37 upgradeAccessory])
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v39 = *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v70 = v76[0];
              if (v34 != v33)
              {
                goto LABEL_46;
              }

              goto LABEL_61;
            }

            v36 = *&v0[v74];
            *&v0[v74] = v38;
          }

          ++v1;
          if (v34 == v33)
          {
            goto LABEL_61;
          }
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v76[0] = _swiftEmptyArrayStorage;

      v1 = v76;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v8 = 0;
      v9 = (v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
      while (1)
      {
        v0 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v73 + 16))
          {
            goto LABEL_69;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        if (!v9[1])
        {
          break;
        }

        v12 = *v9;
        v13 = v9[1];

        sub_100017090();

        v1 = v76;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = *(v76[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v8;
        if (v0 == i)
        {

          v15 = v76[0];
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingDiscoveryStart) = 1;
    if (qword_10007EBF8 != -1)
    {
LABEL_103:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000032F0(v16, qword_10007F150);
    v74 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v74, v17, "Delaying discovery start because we're waiting for displayItems from client", v18, 2u);
    }

    v19 = v74;
  }
}

uint64_t sub_10000C3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10000C3E8, 0, 0);
}

uint64_t sub_10000C3E8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
    *(v0 + 64) = v3;
    v4 = Strong;

    if (v3)
    {
      v5 = sub_10000C4D4;
      v6 = v3;
      v7 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10000C4D4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  *(v1 + 208) = sub_10000C588;
  *(v1 + 216) = 0;
  sub_100002E6C(v2);
  sub_100039044();

  return _swift_task_switch(sub_10000C560, 0, 0);
}

unint64_t sub_10000C588(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [objc_allocWithZone(DADeviceEvent) initWithEventType:40 device:v5];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v3 != v4);
    v1 = _swiftEmptyArrayStorage;
    if (qword_10007EC50 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v9 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (!v9)
  {
  }

  v10 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  swift_unknownObjectRetain();
  sub_10001F0C0(v1);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 pickerReportedEvents:isa];

  return swift_unknownObjectRelease();
}

uint64_t sub_10000C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100009894(&qword_10007F2D0, &qword_10005C5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100022778(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000227E8(v11, &qword_10007F2D0, &qword_10005C5D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100009894(&qword_10007F300, &qword_10005C660);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100009894(&qword_10007F300, &qword_10005C660);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000CA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100009894(&qword_10007F2D0, &qword_10005C5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100022778(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000227E8(v11, &qword_10007F2D0, &qword_10005C5D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000227E8(a3, &qword_10007F2D0, &qword_10005C5D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000CD80()
{
  v1 = v0;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItemsPublisher);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100009894(&qword_10007F2F0, &qword_10005C638);
    sub_100022AF4(&qword_10007F2F8, &qword_10007F2F0, &qword_10005C638);
    v3 = Publisher<>.sink(receiveValue:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable) = v3;
}

void sub_10000CEE4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000032F0(v4, qword_10007F150);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "session event: %@", v8, 0xCu);
      sub_1000227E8(v9, &qword_10007F278, &unk_10005CD60);
    }
  }
}

void sub_10000D080(unint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (v12)
    {
      v30 = v7;
      v31 = v3;
      v15 = qword_10007EBF8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000032F0(v16, qword_10007F150);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v29 = v8;
      if (v19)
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        if (v12 >> 62)
        {
          v27 = v20;
          v21 = _CocoaArrayWrapper.endIndex.getter();
          v20 = v27;
        }

        else
        {
          v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 4) = v21;
        v22 = v20;

        _os_log_impl(&_mh_execute_header, v17, v18, "App filtered display items updated in picking session: %ld items", v22, 0xCu);
      }

      else
      {
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v23 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v12;
      *(v24 + 24) = v14;
      aBlock[4] = sub_100022B9C;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000102BC;
      aBlock[3] = &unk_100072088;
      v25 = _Block_copy(aBlock);
      v26 = v14;
      static DispatchQoS.unspecified.getter();
      v32 = &_swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v31 + 8))(v6, v2);
      (*(v29 + 8))(v11, v30);
    }

    else
    {
    }
  }
}

void sub_10000D4A0(unint64_t a1, char *a2)
{
  v59 = a2;
  v3 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = &v52 - v5;
  if (a1 >> 62)
  {
LABEL_34:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_35:
    sub_10000FFE0();
    return;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_35;
  }

LABEL_3:
  v7 = 0;
  v52 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
  v53 = a1;
  v58 = a1 & 0xC000000000000001;
  v56 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
  v57 = a1 & 0xFFFFFFFFFFFFFF8;
  v55 = v6;
  while (1)
  {
    if (v58)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v57 + 16))
      {
        goto LABEL_33;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v60 = v7 + 1;
    v10 = [v8 accessory];
    v11 = [v10 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = v59;
    v16 = v56;
    swift_beginAccess();
    v17 = *&v15[v16];
    if (!v17)
    {
      break;
    }

    if (*(v17 + 16))
    {
      v18 = sub_10001F768(v12, v14);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);
        swift_endAccess();
        v22 = v21;

        v23 = type metadata accessor for TaskPriority();
        v24 = v54;
        (*(*(v23 - 8) + 56))(v54, 1, 1, v23);
        type metadata accessor for MainActor();
        v25 = v22;
        v26 = v59;
        v27 = static MainActor.shared.getter();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v26;
        v28[5] = v25;
        sub_10000CA90(0, 0, v24, &unk_10005C648, v28);

        v29 = [v25 discoveryConfiguration];
        if (!v29)
        {
          goto LABEL_38;
        }

        v30 = v29;
        v31 = [v29 associationIdentifier];

        if (!v31)
        {
          goto LABEL_37;
        }

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = v59;
        v36 = v52;
        swift_beginAccess();
        v37 = *&v35[v36];
        if (*(v37 + 16))
        {
          v38 = sub_10001F768(v32, v34);
          v40 = v39;

          if (v40)
          {
            v41 = *(*(v37 + 56) + 8 * v38);
            swift_endAccess();
            v42 = v41;
            v43 = [v9 productImage];
            [v42 setProductImage:v43];

            v44 = v42;
            v45 = [v9 name];
            if (!v45)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = String._bridgeToObjectiveC()();
            }

            [v44 setName:{v45, v52}];

            goto LABEL_24;
          }

          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v44 = 0;
LABEL_24:
        v46 = v9;
        v47 = [v46 name];
        v6 = v55;
        if (!v47)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = String._bridgeToObjectiveC()();
          v6 = v55;
        }

        [v25 setName:{v47, v52}];

        v48 = [v25 discoveryConfiguration];
        v49 = v46;
        if (v48)
        {
          v50 = v48;
          v49 = [v46 name];

          if (!v49)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = String._bridgeToObjectiveC()();
            v6 = v55;
          }

          [v50 setDisplayName:v49];
        }

        v51 = sub_10000DC1C(v25, 0);
        a1 = v53;
        goto LABEL_5;
      }

      swift_endAccess();

      v6 = v55;
    }

    else
    {
      swift_endAccess();
    }

LABEL_5:
    ++v7;
    if (v60 == v6)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_10000DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10000DAC4, v7, v6);
}

uint64_t sub_10000DAC4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 56) = v4;
  if (v4)
  {

    a1 = sub_10000DB4C;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10000DB4C()
{
  v1 = *(v0 + 56);
  sub_100038F14(*(v0 + 24));

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return _swift_task_switch(sub_10000DBBC, v2, v3);
}

uint64_t sub_10000DBBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_10000DC1C(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v361) = a2;
  v356 = 0;
  v5 = type metadata accessor for URL();
  v358 = *(v5 - 8);
  v359 = v5;
  v6 = *(v358 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v347 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v354 = (&v347 - v11);
  __chkstk_darwin(v10);
  v360 = &v347 - v12;
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000032F0(v13, qword_10007F150);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "updateDeviceMapWith device: %@", v18, 0xCu);
    sub_1000227E8(v19, &qword_10007F278, &unk_10005CD60);
  }

  v21 = &v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v22 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v22)
  {
    goto LABEL_185;
  }

  v23 = *v21;
  objc_allocWithZone(type metadata accessor for ASUIDevice());
  v24 = v15;

  v25 = sub_100036A64(0, 0, v24, v23, v22);

  if (![v24 discoveredInExtension])
  {
    if (v21[1])
    {
      v33 = [v24 discoveryConfiguration];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 associationIdentifier];

        if (v35)
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v39 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
          swift_beginAccess();
          v40 = *&v3[v39];
          if (*(v40 + 16))
          {
            v41 = sub_10001F768(v36, v38);
            if (v42)
            {
              v355 = v38;
              v43 = *(*(v40 + 56) + 8 * v41);
              swift_endAccess();
              v44 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
              v45 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
              v351 = v14;
              if (v361)
              {
                if (!v45)
                {
LABEL_211:
                  __break(1u);
                  goto LABEL_212;
                }

                v46 = v43;
                v47 = [v45 name];
                if (!v47)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                if (!v45)
                {
LABEL_212:
                  __break(1u);
                  goto LABEL_213;
                }

                v177 = v43;
                v178 = [v45 appAccessInfoMap];
                if (v178)
                {
                  v179 = v178;
                  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                  v180 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  if (*(v180 + 16))
                  {
                    v181 = *&v25[v44];
                    if (!v181)
                    {
LABEL_217:
                      __break(1u);
LABEL_218:
                      __break(1u);
                      goto LABEL_219;
                    }

                    v182 = v181;

                    v183 = [v182 name];

                    if (!v183)
                    {
LABEL_101:
                      v184 = 0;
                      v185 = 0;
LABEL_113:
                      v212 = &v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
                      v213 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
                      *v212 = v184;
                      v212[1] = v185;

                      sub_100035410();
                      v215 = v214;
                      v360 = v216;
                      v217 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
                      swift_beginAccess();
                      v218 = *&v3[v217];
                      if (!v218)
                      {
LABEL_203:
                        __break(1u);
                        goto LABEL_204;
                      }

                      v219 = *(v218 + 16);
                      v357 = v43;
                      if (!v219 || (sub_10001F768(v215, v360), (v220 & 1) == 0))
                      {
                        swift_endAccess();
                        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
                        v240 = swift_allocObject();
                        *(v240 + 16) = xmmword_10005C520;
                        *(v240 + 32) = v25;
                        swift_beginAccess();
                        if (!*&v3[v217])
                        {
LABEL_210:
                          __break(1u);
                          goto LABEL_211;
                        }

                        v241 = v25;
                        v242 = v360;

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v363 = *&v3[v217];
                        *&v3[v217] = 0x8000000000000000;
                        sub_100020118(v240, v215, v242, isUniquelyReferenced_nonNull_native);

                        *&v3[v217] = v363;
                        swift_endAccess();
                        v244 = 1;
LABEL_141:
                        v255 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
                        v256 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
                        if (!v256)
                        {
LABEL_204:
                          __break(1u);
                          goto LABEL_205;
                        }

                        v352 = v24;
                        v257 = [v256 identifier];
                        if (!v257)
                        {
LABEL_205:
                          __break(1u);
                          goto LABEL_206;
                        }

                        v258 = v257;
                        v259 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v261 = v260;

                        v262 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
                        swift_beginAccess();
                        if (!*&v3[v262])
                        {
LABEL_206:
                          __break(1u);
                          goto LABEL_207;
                        }

                        v88 = v25;
                        v263 = swift_isUniquelyReferenced_nonNull_native();
                        v363 = *&v3[v262];
                        *&v3[v262] = 0x8000000000000000;
                        sub_100020294(v88, v259, v261, v263, &qword_10007F2B0, &unk_10005C5B0);

                        *&v3[v262] = v363;
                        swift_endAccess();
                        v264 = *&v25[v255];
                        if (!v264)
                        {
LABEL_207:
                          __break(1u);
                          goto LABEL_208;
                        }

                        v265 = [v264 identifier];
                        v24 = v352;
                        if (!v265)
                        {
LABEL_208:
                          __break(1u);
                          goto LABEL_209;
                        }

                        v266 = v265;
                        v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v269 = v268;

                        v270 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
                        swift_beginAccess();
                        if (!*&v3[v270])
                        {
LABEL_209:
                          __break(1u);
                          goto LABEL_210;
                        }

                        sub_10000B7D4(0, v267, v269);
                        swift_endAccess();

                        if (!v244)
                        {
                          v275 = v88;
                          v276 = Logger.logObject.getter();
                          v277 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v276, v277))
                          {
                            v278 = swift_slowAlloc();
                            v279 = swift_slowAlloc();
                            *v278 = 138412290;
                            *(v278 + 4) = v275;
                            *v279 = v275;
                            v280 = v275;
                            _os_log_impl(&_mh_execute_header, v276, v277, "Already displaying device with the same visual: %@", v278, 0xCu);
                            sub_1000227E8(v279, &qword_10007F278, &unk_10005CD60);
                          }

                          v274 = v357;
                          goto LABEL_154;
                        }

                        v271 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                        swift_beginAccess();
                        v272 = v88;
                        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                        if (*((*&v3[v271] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v3[v271] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
LABEL_149:
                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          swift_endAccess();
                          v273 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
                          v274 = v357;
                          if (v273)
                          {
                            [v273 invalidate];
                          }

LABEL_154:
                          if ((v361 & 1) == 0)
                          {
                            v281 = [v274 setupOptions];
                            *(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename) = v281 & 1;
                            v282 = [v24 appAccessInfoMap];
                            p_ivars = (&ASUIPresenter + 48);
                            if (v282)
                            {
                              v284 = v282;
                              sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                              v285 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                              v286 = *(v285 + 16);

                              if (v286 <= 1)
                              {
                                v287 = v88;
                                v288 = Logger.logObject.getter();
                                v289 = static os_log_type_t.default.getter();

                                if (os_log_type_enabled(v288, v289))
                                {
                                  v290 = swift_slowAlloc();
                                  v291 = swift_slowAlloc();
                                  *v290 = 138412290;
                                  *(v290 + 4) = v287;
                                  *v291 = v287;
                                  v292 = v287;
                                  _os_log_impl(&_mh_execute_header, v288, v289, "Appending bridging setup for: %@", v290, 0xCu);
                                  sub_1000227E8(v291, &qword_10007F278, &unk_10005CD60);
                                }

                                v293 = v357;
                                v294 = [v357 descriptor];
                                v295 = [v294 supportedOptions];

                                v296 = (v295 >> 2) & 1;
                                v274 = v293;
                                p_ivars = &ASUIPresenter.ivars;
                                v287[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup] = v296;
                              }
                            }

                            v297 = [v274 descriptor];
                            v298 = [v297 p_ivars[230]];

                            *(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_supportsHID) = (v298 & 8) != 0;
                            v299 = [v274 setupOptions];
                            *(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp) = (v299 & 4) != 0;
                            v24 = v352;
                          }

                          v300 = [v24 displayImageFileURL];
                          if (v300)
                          {
                            v301 = v300;
                            static URL._unconditionallyBridgeFromObjectiveC(_:)();

                            v302 = [v24 appAccessInfoMap];
                            if (v302 && (v303 = v302, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v304 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v303, v305 = *(v304 + 16), , v305))
                            {
                              URL.path(percentEncoded:)(1);
                              v306 = objc_allocWithZone(UIImage);
                              v307 = String._bridgeToObjectiveC()();

                              v308 = v306;
                              v274 = v357;
                              v309 = [v308 initWithContentsOfFile:v307];

                              (*(v358 + 8))(v9, v359);
                              v310 = *(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image);
                              *(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image) = v309;
                            }

                            else
                            {
                              (*(v358 + 8))(v9, v359);
                            }
                          }

                          v311 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
                          if (*(&v88->isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image))
                          {
                          }

                          else
                          {
                            v312 = [v274 productImage];

                            v313 = *(&v88->isa + v311);
                            *(&v88->isa + v311) = v312;
                          }

                          return v25;
                        }

LABEL_180:
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        goto LABEL_149;
                      }

                      swift_endAccess();
                      v221 = [v24 identifier];
                      if (!v221)
                      {
LABEL_214:
                        __break(1u);
                        goto LABEL_215;
                      }

                      v222 = v221;
                      v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v225 = v224;

                      v226 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
                      swift_beginAccess();
                      v227 = *&v3[v226];
                      if (!v227)
                      {
LABEL_215:
                        __break(1u);
                        goto LABEL_216;
                      }

                      if (!*(v227 + 16) || (v228 = sub_10001F768(v223, v225), (v229 & 1) == 0))
                      {

                        swift_endAccess();
LABEL_132:
                        swift_beginAccess();
                        if (!*&v3[v217])
                        {
LABEL_216:
                          __break(1u);
                          goto LABEL_217;
                        }

                        v246 = sub_10001EFEC(v362, v215, v360);
                        if (*v245)
                        {
                          v247 = v245;
                          v248 = v25;
                          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                          if (*((*v247 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v247 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            v343 = *((*v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
                            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                          }

                          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                          (v246)(v362, 0);
                        }

                        else
                        {
                          (v246)(v362, 0);
                        }

                        swift_endAccess();
                        v249 = v25;
                        v250 = Logger.logObject.getter();
                        v251 = static os_log_type_t.default.getter();

                        if (os_log_type_enabled(v250, v251))
                        {
                          v252 = swift_slowAlloc();
                          v253 = swift_slowAlloc();
                          *v252 = 138412290;
                          *(v252 + 4) = v249;
                          *v253 = v249;
                          v254 = v249;
                          _os_log_impl(&_mh_execute_header, v250, v251, "New backing device added to an already displayed device. New device:\n %@", v252, 0xCu);
                          sub_1000227E8(v253, &qword_10007F278, &unk_10005CD60);
                        }

                        v244 = 0;
                        goto LABEL_141;
                      }

                      v354 = *(*(v227 + 56) + 8 * v228);
                      swift_endAccess();

                      v230 = Logger.logObject.getter();
                      v231 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v230, v231))
                      {
                        v232 = swift_slowAlloc();
                        *v232 = 0;
                        _os_log_impl(&_mh_execute_header, v230, v231, "Remove stale backing device to be replaced by the new one that has the same ID.", v232, 2u);
                      }

                      swift_beginAccess();
                      if (!*&v3[v217])
                      {
                        goto LABEL_218;
                      }

                      v233 = sub_10001EFEC(v362, v215, v360);
                      if (!*v234)
                      {
                        (v233)(v362, 0);
LABEL_170:
                        swift_endAccess();
                        v314 = *(sub_100036360() + 2);

                        if (v314 < 2)
                        {
                        }

                        else
                        {
                          v315 = v25;
                          v356 = v354;
                          v316 = Logger.logObject.getter();
                          v317 = static os_log_type_t.default.getter();
                          if (os_log_type_enabled(v316, v317))
                          {
                            v353 = v315;
                            v354 = v316;
                            LODWORD(v349) = v317;
                            v318 = swift_slowAlloc();
                            v348 = swift_slowAlloc();
                            v362[0] = v348;
                            v350 = v318;
                            *v318 = 136315906;
                            v319 = (v356 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
                            v320 = *(&v356[1].isa + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName);
                            if (!v320)
                            {
LABEL_219:

                              v346 = v353;
                              __break(1u);
                              goto LABEL_220;
                            }

                            v321 = *v319;
                            v322 = v319[1];

                            v323 = v353;
                            v324 = sub_10003FFF4(v321, v320, v362);

                            v325 = v350;
                            *(v350 + 4) = v324;
                            *(v325 + 6) = 2080;
                            sub_100035CC8();
                            v326 = Array.description.getter();
                            v328 = v327;

                            v329 = sub_10003FFF4(v326, v328, v362);

                            *(v325 + 14) = v329;
                            *(v325 + 11) = 2080;
                            sub_100035CC8();
                            v330 = Array.description.getter();
                            v332 = v331;

                            v333 = sub_10003FFF4(v330, v332, v362);

                            *(v325 + 3) = v333;
                            *(v325 + 16) = 2080;
                            sub_1000357FC();
                            v334 = Array.description.getter();
                            v336 = v335;

                            v337 = sub_10003FFF4(v334, v336, v362);

                            *(v325 + 34) = v337;
                            v338 = v354;
                            _os_log_impl(&_mh_execute_header, v354, v349, "Received updated device for multitech, device: %s, previouslyDiscoveredTech: %s, newlyDiscoveredTech: %s, pendingDiscoveryTech: %s", v325, 0x2Au);
                            swift_arrayDestroy();
                          }

                          else
                          {

                            v339 = v356;
                          }
                        }

                        goto LABEL_132;
                      }

                      v235 = v234;
                      v353 = v233;
                      v236 = v24;
                      v237 = v356;
                      v356 = sub_100021CC0(v235, v236);
                      if (v237)
                      {
                        goto LABEL_220;
                      }

                      v238 = *v235;
                      if (*v235 >> 62)
                      {
                        if (v238 < 0)
                        {
                          v344 = *v235;
                        }

                        v239 = _CocoaArrayWrapper.endIndex.getter();
                      }

                      else
                      {
                        v239 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v239 >= v356)
                      {
                        sub_100021BE8(v356, v239);
                        (v353)(v362, 0);
                        goto LABEL_170;
                      }

                      __break(1u);
LABEL_185:
                      __break(1u);
                      goto LABEL_186;
                    }

LABEL_112:
                    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v185 = v211;

                    goto LABEL_113;
                  }
                }

                v47 = [v177 name];
              }

              v183 = v47;
              goto LABEL_112;
            }
          }

          swift_endAccess();

          v101 = v24;
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = v25;
            v53 = swift_slowAlloc();
            *v51 = 138412290;
            *(v51 + 4) = v101;
            *v53 = v101;
            v102 = v101;
            v55 = "Bad device: could not map device back to a picker display item %@";
            goto LABEL_57;
          }

LABEL_58:

          goto LABEL_59;
        }
      }

      v48 = v24;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_58;
      }

      v51 = swift_slowAlloc();
      v52 = v25;
      v53 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v53 = v48;
      v54 = v48;
      v55 = "Bad device: no association ID for ASK device %@";
    }

    else
    {
      v56 = v3;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_58;
      }

      v51 = swift_slowAlloc();
      v52 = v25;
      v53 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v56;
      *v53 = v56;
      v57 = v56;
      v55 = "Bad session: no bundle ID provided for %@";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v49, v50, v55, v51, 0xCu);
    sub_1000227E8(v53, &qword_10007F278, &unk_10005CD60);

LABEL_59:
    return 0;
  }

  v361 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
  v26 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v26)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v27 = [v26 appAccessInfoMap];
  if (v27)
  {
    v28 = v27;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v29 + 16))
    {
      v30 = *&v25[v361];
      if (!v30)
      {
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      v31 = v30;

      v32 = [v31 name];

      if (!v32)
      {
        goto LABEL_30;
      }

LABEL_29:
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      goto LABEL_31;
    }
  }

  v58 = [v24 name];
  if (v58)
  {
    v32 = v58;
    goto LABEL_29;
  }

LABEL_30:
  v59 = 0;
  v61 = 0;
LABEL_31:
  v62 = &v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v63 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  *v62 = v59;
  v62[1] = v61;

  sub_100035410();
  v65 = v64;
  v9 = v66;
  v67 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  v68 = *&v3[v67];
  if (!v68)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v69 = *(v68 + 16);
  v355 = v21;
  v357 = v9;
  v352 = v24;
  if (!v69 || (sub_10001F768(v65, v9), (v70 & 1) == 0))
  {
    swift_endAccess();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_10005C520;
    *(v93 + 32) = v25;
    swift_beginAccess();
    if (!*&v3[v67])
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v94 = v25;

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v363 = *&v3[v67];
    *&v3[v67] = 0x8000000000000000;
    sub_100020118(v93, v65, v9, v95);

    *&v3[v67] = v363;
    swift_endAccess();
    v96 = 1;
LABEL_64:
    v109 = *&v25[v361];
    if (v109)
    {
      v353 = v25;
      v110 = [v109 identifier];
      if (v110)
      {
        v111 = v110;
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        v115 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
        swift_beginAccess();
        if (*&v3[v115])
        {
          v116 = v353;
          v117 = v353;
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v363 = *&v3[v115];
          *&v3[v115] = 0x8000000000000000;
          sub_100020294(v117, v112, v114, v118, &qword_10007F2B0, &unk_10005C5B0);

          *&v3[v115] = v363;
          v25 = v116;
          swift_endAccess();
          v119 = *&v116[v361];
          if (v119)
          {
            v120 = [v119 identifier];
            if (v120)
            {
              v121 = v120;
              v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v124 = v123;

              v125 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
              swift_beginAccess();
              if (*&v3[v125])
              {
                sub_10000B7D4(0, v122, v124);
                swift_endAccess();
                if (v96)
                {
                  v126 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                  swift_beginAccess();
                  v127 = v117;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v3[v126] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v126] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v340 = *((*&v3[v126] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v128 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
                  v129 = v352;
                  v130 = v360;
                  if (v128)
                  {
                    [v128 invalidate];
                  }
                }

                else
                {
                  v131 = v117;
                  v132 = Logger.logObject.getter();
                  v133 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v132, v133))
                  {
                    v134 = swift_slowAlloc();
                    v135 = swift_slowAlloc();
                    *v134 = 138412290;
                    *(v134 + 4) = v131;
                    *v135 = v131;
                    v136 = v131;
                    _os_log_impl(&_mh_execute_header, v132, v133, "Already displaying device with the same visual: %@", v134, 0xCu);
                    sub_1000227E8(v135, &qword_10007F278, &unk_10005CD60);
                  }

                  v129 = v352;
                  v130 = v360;
                }

                v137 = [v129 displayImageFileURL];
                v138 = v355;
                if (v137)
                {
                  v139 = v137;
                  static URL._unconditionallyBridgeFromObjectiveC(_:)();

                  v140 = [v129 appAccessInfoMap];
                  if (v140 && (v141 = v140, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v142 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v141, v143 = *(v142 + 16), , v143))
                  {
                    URL.path(percentEncoded:)(1);
                    v144 = objc_allocWithZone(UIImage);
                    v145 = String._bridgeToObjectiveC()();

                    v146 = v144;
                    v138 = v355;
                    v147 = [v146 initWithContentsOfFile:v145];

                    (*(v358 + 8))(v130, v359);
                    v148 = *&v117[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image];
                    *&v117[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = v147;
                  }

                  else
                  {
                    (*(v358 + 8))(v130, v359);
                  }
                }

                v149 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
                if (!*&v117[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image])
                {
                  v150 = [v129 displayImageName];
                  if (v150)
                  {

                    v151 = v138[1];
                    if (v151)
                    {
                      v152 = *v138;
                      objc_allocWithZone(LSApplicationRecord);

                      v153 = v152;
                      v154 = v356;
                      v155 = sub_10001F3A8(v153, v151, 0);
                      if (!v154)
                      {
                        if (v155)
                        {
                          v156 = v155;

                          v157 = [v156 URL];

                          v158 = v354;
                          static URL._unconditionallyBridgeFromObjectiveC(_:)();

                          v159 = objc_allocWithZone(NSBundle);
                          URL._bridgeToObjectiveC()(v160);
                          v162 = v161;
                          v163 = [v159 initWithURL:v161];

                          (*(v358 + 8))(v158, v359);
                          v164 = [v129 displayImageName];
                          if (v164)
                          {
                            v165 = v164;
                            static String._unconditionallyBridgeFromObjectiveC(_:)();
                          }

                          v166 = v163;
                          v167 = String._bridgeToObjectiveC()();

                          v168 = [objc_opt_self() imageNamed:v167 inBundle:v166 compatibleWithTraitCollection:0];

                          v169 = v168;
                          v170 = Logger.logObject.getter();
                          v171 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v170, v171))
                          {
                            v172 = swift_slowAlloc();
                            v173 = swift_slowAlloc();
                            *v172 = 138412290;
                            *(v172 + 4) = v169;
                            *v173 = v168;
                            v174 = v169;
                            _os_log_impl(&_mh_execute_header, v170, v171, "device.image: %@", v172, 0xCu);
                            sub_1000227E8(v173, &qword_10007F278, &unk_10005CD60);
                          }

                          v175 = *&v117[v149];
                          *&v117[v149] = v168;

                          return v353;
                        }

                        goto LABEL_201;
                      }

LABEL_200:

LABEL_201:
                      __break(1u);
LABEL_202:
                      __break(1u);
                      goto LABEL_203;
                    }

LABEL_199:
                    __break(1u);
                    goto LABEL_200;
                  }
                }

                return v25;
              }

              goto LABEL_193;
            }

LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  swift_endAccess();
  v71 = [v24 identifier];
  if (!v71)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v72 = v71;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v77 = *&v3[v76];
  if (!v77)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (!*(v77 + 16) || (v78 = sub_10001F768(v73, v75), (v79 & 1) == 0))
  {

    swift_endAccess();
LABEL_50:
    swift_beginAccess();
    if (!*&v3[v67])
    {
LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

    v98 = sub_10001EFEC(v362, v65, v9);
    if (*v97)
    {
      v99 = v97;
      v100 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v341 = *((*v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v98)(v362, 0);
    }

    else
    {
      (v98)(v362, 0);
    }

    swift_endAccess();
    v103 = v25;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v106 = 138412290;
      *(v106 + 4) = v103;
      *v107 = v103;
      v108 = v103;
      _os_log_impl(&_mh_execute_header, v104, v105, "New backing device added to an already displayed device. New device:\n %@", v106, 0xCu);
      sub_1000227E8(v107, &qword_10007F278, &unk_10005CD60);
    }

    v96 = 0;
    goto LABEL_64;
  }

  v353 = *(*(v77 + 56) + 8 * v78);
  swift_endAccess();

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Remove stale backing device to be replaced by the new one that has the same ID.", v82, 2u);
  }

  swift_beginAccess();
  if (!*&v3[v67])
  {
    goto LABEL_202;
  }

  v83 = sub_10001EFEC(v362, v65, v9);
  if (!*v84)
  {
    (v83)(v362, 0);
LABEL_103:
    swift_endAccess();
    v186 = *(sub_100036360() + 2);

    if (v186 < 2)
    {
    }

    else
    {
      v187 = v25;
      v353 = v353;
      v188 = v187;
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v350 = v188;
        LODWORD(v348) = v190;
        v349 = v189;
        v351 = v14;
        v191 = swift_slowAlloc();
        v347 = swift_slowAlloc();
        v362[0] = v347;
        *v191 = 136315906;
        v192 = *&v353[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
        if (!v192)
        {
LABEL_213:

          v345 = v350;
          __break(1u);
          goto LABEL_214;
        }

        v193 = *&v353[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
        v194 = *&v353[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

        v195 = v350;
        v196 = sub_10003FFF4(v193, v192, v362);

        *(v191 + 4) = v196;
        *(v191 + 12) = 2080;
        sub_100035CC8();
        v197 = Array.description.getter();
        v199 = v198;

        v200 = sub_10003FFF4(v197, v199, v362);

        *(v191 + 14) = v200;
        *(v191 + 22) = 2080;
        sub_100035CC8();
        v201 = Array.description.getter();
        v203 = v202;

        v204 = sub_10003FFF4(v201, v203, v362);

        *(v191 + 24) = v204;
        *(v191 + 32) = 2080;
        sub_1000357FC();
        v205 = Array.description.getter();
        v207 = v206;

        v208 = sub_10003FFF4(v205, v207, v362);

        *(v191 + 34) = v208;
        v209 = v349;
        _os_log_impl(&_mh_execute_header, v349, v348, "Received updated device for multitech, device: %s, previouslyDiscoveredTech: %s, newlyDiscoveredTech: %s, pendingDiscoveryTech: %s", v191, 0x2Au);
        swift_arrayDestroy();

        v9 = v357;
      }

      else
      {

        v210 = v353;
      }
    }

    goto LABEL_50;
  }

  v85 = v84;
  v350 = v83;
  v86 = v14;
  v87 = v24;
  v88 = v356;
  v89 = sub_100021CC0(v85, v87);
  v356 = v88;
  if (!v88)
  {
    v90 = v89;

    v91 = *v85;
    if (*v85 >> 62)
    {
      if (v91 < 0)
      {
        v342 = *v85;
      }

      v92 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v86;
    v9 = v357;
    if (v92 >= v90)
    {
      sub_100021BE8(v90, v92);
      (v350)(v362, 0);
      goto LABEL_103;
    }

    __break(1u);
    goto LABEL_180;
  }

LABEL_220:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10000FFE0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v0 - 8);
  v1 = *(v14 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000221E0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071B10;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = v12;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v0);
  (*(v4 + 8))(v7, v13);
}

uint64_t sub_1000102BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100010300()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveredItemsCancellable])
  {

    AnyCancellable.cancel()();
  }

  v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
  if (v6)
  {
    [v6 invalidate];
  }

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100010610()
{
  v1 = v0;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = qword_10007EBF8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000032F0(v5, qword_10007F150);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
    v10 = Array.description.getter();
    v12 = sub_10003FFF4(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "configs: %s", v8, 0xCu);
    sub_100009AB0(v9);
  }

  v13 = objc_allocWithZone(DADiscovery);

  v14 = sub_10001F2BC();
  v15 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v16 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery) = v14;
  v17 = v14;

  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8))
  {
    v18 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
    v19 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v17 setBundleID:v20];

  v21 = *(v1 + v15);
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  [v22 setFlags:{objc_msgSend(v22, "flags") | 4}];

  if (v4[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] != 1)
  {
    goto LABEL_16;
  }

  v23 = *(v1 + v15);
  if (v23)
  {
    v24 = v23;
    [v24 setFlags:{objc_msgSend(v24, "flags") | 0x40}];

LABEL_16:
    v25 = *(v1 + v15);
    if (v25)
    {
      if (*&v4[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_chosenDeviceOTAName + 8])
      {
        v26 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_chosenDeviceOTAName];
        v27 = v25;
      }

      else
      {
        v28 = v25;
        sub_10002FAA8();
      }

      v29 = String._bridgeToObjectiveC()();

      [v25 setDeviceOTANameToBroadcast:v29];

      v30 = *(v1 + v15);
      if (v30)
      {
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_10002235C;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100022FBC;
        aBlock[3] = &unk_100071CF0;
        v32 = _Block_copy(aBlock);
        v33 = v30;

        [v33 setEventHandler:v32];
        _Block_release(v32);

        return;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100010AA8(void *a1)
{
  v3 = v1;
  v369 = type metadata accessor for URL();
  v370 = *(v369 - 8);
  v5 = *(v370 + 64);
  v6 = __chkstk_darwin(v369);
  v8 = &v362 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v366 = &v362 - v10;
  v11 = __chkstk_darwin(v9);
  v367 = &v362 - v12;
  v13 = __chkstk_darwin(v11);
  v368 = &v362 - v14;
  __chkstk_darwin(v13);
  v16 = &v362 - v15;
  v372 = type metadata accessor for DispatchWorkItemFlags();
  v374 = *(v372 - 8);
  v17 = *(v374 + 64);
  __chkstk_darwin(v372);
  v371 = &v362 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for DispatchQoS();
  v19 = *(v375 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v375);
  v373 = &v362 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v362 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v376 = &v362 - v28;
  __chkstk_darwin(v27);
  v377 = &v362 - v29;
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_1000032F0(v30, qword_10007F150);
  v32 = a1;
  v378 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v2 = v3;
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "discovery event: %@", v35, 0xCu);
    sub_1000227E8(v36, &qword_10007F278, &unk_10005CD60);
    v3 = v2;
  }

  v38 = [v32 eventType];
  if (v38 > 41)
  {
    if (v38 > 54)
    {
      if (v38 != 55)
      {
        if (v38 != 56)
        {
          if (v38 != 60)
          {
            return;
          }

          v32 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v32, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v32, v39, "XPC connection to dataaccessd interrupted, clearing devices", v40, 2u);
          }

          v41 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
          swift_beginAccess();
          if (*(v3 + v41))
          {
            v32 = &_swiftEmptyDictionarySingleton;
            *(v3 + v41) = &_swiftEmptyDictionarySingleton;

            v42 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
            swift_beginAccess();
            if (*(v3 + v42))
            {
              *(v3 + v42) = &_swiftEmptyDictionarySingleton;

              v43 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
              swift_beginAccess();
              if (*(v3 + v43))
              {
                *(v3 + v43) = &_swiftEmptyDictionarySingleton;

                v44 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
                swift_beginAccess();
                v45 = *(v3 + v44);
                *(v3 + v44) = _swiftEmptyArrayStorage;

                v46 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer;
                v47 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
                if (!v47)
                {
                  return;
                }

                [v47 invalidate];
                v48 = *(v3 + v46);
                if (!v48)
                {
                  return;
                }

LABEL_17:
                [v48 invalidate];
                return;
              }

              goto LABEL_263;
            }

LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
            goto LABEL_265;
          }

          goto LABEL_260;
        }

        objc_opt_self();
        v160 = swift_dynamicCastObjCClass();
        if (v160)
        {
          v161 = v160;
          v377 = v32;
          v162 = Logger.logObject.getter();
          v163 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            *v164 = 0;
            _os_log_impl(&_mh_execute_header, v162, v163, "Calling handleWiFiAwarePairingRequest", v164, 2u);
          }

          sub_10001C66C(v161);
LABEL_111:
          v165 = &v391;
LABEL_191:
          v264 = *(v165 - 32);

          return;
        }

        aBlock = 0;
        v384 = 0xE000000000000000;
        _StringGuts.grow(_:)(95);
        v356._countAndFlagsBits = 0xD00000000000005DLL;
        v356._object = 0x800000010005E040;
        String.append(_:)(v356);
        v357 = [v32 description];
        v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v360 = v359;

        v361._countAndFlagsBits = v358;
        v361._object = v360;
        String.append(_:)(v361);

LABEL_276:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_277:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      objc_opt_self();
      v143 = swift_dynamicCastObjCClass();
      if (!v143)
      {
        aBlock = 0;
        v384 = 0xE000000000000000;
        _StringGuts.grow(_:)(83);
        v350._object = 0x800000010005E0A0;
        v350._countAndFlagsBits = 0xD000000000000051;
        String.append(_:)(v350);
        v351 = [v32 description];
        v352 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v354 = v353;

        v355._countAndFlagsBits = v352;
        v355._object = v354;
        String.append(_:)(v355);

        goto LABEL_276;
      }

      v144 = v143;
      v378 = v32;
      sub_10001C234(v144);
LABEL_190:
      v165 = &v392;
      goto LABEL_191;
    }

    if (v38 != 42)
    {
      if (v38 != 50)
      {
        return;
      }

      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (!v69)
      {
        goto LABEL_273;
      }

      v70 = v69;
      v377 = v32;
      if (![v70 devicesMigrated])
      {
        goto LABEL_111;
      }

      v71 = [v70 devices];
      if (v71)
      {
        v72 = v71;
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v365 = v19;
        v74 = v3;
        if (v73 >> 62)
        {
          v75 = _CocoaArrayWrapper.endIndex.getter();
          if (v75)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v75)
          {
LABEL_42:
            v76 = 0;
            v3 = "Error writing image to file for migration: %@";
            while (1)
            {
              if ((v73 & 0xC000000000000001) != 0)
              {
                v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v76 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_211;
                }

                v77 = *(v73 + 8 * v76 + 32);
              }

              v2 = v77;
              v78 = v76 + 1;
              if (__OFADD__(v76, 1))
              {
                break;
              }

              aBlock = v77;
              sub_10001D418(&aBlock, v74, "Error writing image to file for migration: %@");

              ++v76;
              if (v78 == v75)
              {
                goto LABEL_233;
              }
            }

LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:

            goto LABEL_214;
          }
        }

LABEL_233:

        v326 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
        swift_beginAccess();
        v327 = *(v74 + v326);
        if (v327 >> 62)
        {
          if (v327 < 0)
          {
            v343 = *(v74 + v326);
          }

          v328 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v328 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v328 < 1)
        {

          return;
        }

        v329 = *(v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (*(v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) == 1)
        {
          if (v329)
          {
            [v329 invalidate];
          }

          v330 = *(v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v330)
          {
            [v330 invalidate];
          }

          v331 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v332 = *(v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
          if (v332)
          {
            [v332 invalidateWithReason:0];
            v333 = *(v74 + v331);
          }

          else
          {
            v333 = 0;
          }

          *(v74 + v331) = 0;

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v335 = static OS_dispatch_queue.main.getter();
          v341 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v387 = sub_1000223D8;
          v388 = v341;
          aBlock = _NSConcreteStackBlock;
          v384 = 1107296256;
          v385 = sub_1000102BC;
          v386 = &unk_100071D90;
          v342 = _Block_copy(&aBlock);

          v338 = v373;
          static DispatchQoS.unspecified.getter();
          v389 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
          v339 = v371;
          v340 = v372;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v342);
        }

        else
        {
          if (v329)
          {
            [v329 invalidate];
          }

          v334 = *(v74 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v334)
          {
            [v334 invalidate];
          }

          sub_100018980(0);
          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v335 = static OS_dispatch_queue.main.getter();
          v336 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v387 = sub_1000223A8;
          v388 = v336;
          aBlock = _NSConcreteStackBlock;
          v384 = 1107296256;
          v385 = sub_1000102BC;
          v386 = &unk_100071D68;
          v337 = _Block_copy(&aBlock);

          v338 = v373;
          static DispatchQoS.unspecified.getter();
          v389 = _swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
          v339 = v371;
          v340 = v372;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v337);
        }

        (*(v374 + 8))(v339, v340);
        (*(v365 + 8))(v338, v375);
      }

      else
      {
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          *v192 = 0;
          _os_log_impl(&_mh_execute_header, v190, v191, "No present devices to migrate.", v192, 2u);
        }

        v193 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
        v194 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
        if (v194)
        {
          [v194 invalidateWithReason:0];
          v195 = *(v3 + v193);
        }

        else
        {
          v195 = 0;
        }

        *(v3 + v193) = 0;

        v201 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (v201)
        {
          [v201 invalidate];
        }

        v202 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
        if (v202)
        {
          [v202 invalidate];
        }

        v203 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration);
        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.default.getter();
        v206 = os_log_type_enabled(v204, v205);
        if (v203 == 1)
        {
          if (v206)
          {
            v207 = swift_slowAlloc();
            *v207 = 0;
            _os_log_impl(&_mh_execute_header, v204, v205, "Dismiss the UI, not allowed to migrate", v207, 2u);
          }

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v208 = static OS_dispatch_queue.main.getter();
          v209 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v387 = sub_10002238C;
          v388 = v209;
          aBlock = _NSConcreteStackBlock;
          v384 = 1107296256;
          v210 = &unk_100071D40;
        }

        else
        {
          if (v206)
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            _os_log_impl(&_mh_execute_header, v204, v205, "Migration not allowed, show done view", v211, 2u);
          }

          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v208 = static OS_dispatch_queue.main.getter();
          v212 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v387 = sub_100022EE8;
          v388 = v212;
          aBlock = _NSConcreteStackBlock;
          v384 = 1107296256;
          v210 = &unk_100071D18;
        }

        v385 = sub_1000102BC;
        v386 = v210;
        v213 = _Block_copy(&aBlock);

        v214 = v373;
        static DispatchQoS.unspecified.getter();
        v390 = _swiftEmptyArrayStorage;
        sub_10001F8CC();
        sub_100009894(&unk_10007F560, &qword_10005C590);
        sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
        v215 = v371;
        v216 = v372;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v213);
        (*(v374 + 8))(v215, v216);
        (*(v19 + 8))(v214, v375);
      }

      goto LABEL_252;
    }

    v145 = sub_10001BE7C();
    if (!v146)
    {
      return;
    }

    v148 = v145;
    v149 = v146;
    v150 = v147;
    v151 = sub_10000DC1C(v147, 0);
    if (v151)
    {
      v152 = v151;
      v365 = v19;
      v153 = (v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
      v154 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
      if (v154)
      {
        v376 = v148;
        v377 = v3;
        v155 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
        v32 = *&v151[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
        if (!v32)
        {
LABEL_267:
          __break(1u);
          goto LABEL_268;
        }

        v156 = *v153;

        v32 = [v32 appAccessInfoMap];
        v364 = v156;
        if (v32)
        {
          sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
          v157 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = sub_10000AB88(v156, v154, v157);

          if (v32)
          {
            v158 = [v32 appDiscoveryConfiguration];

            if (v158)
            {
              v159 = [v158 flags];

              v32 = (v159 >> 4) & 1;
            }

            else
            {
              v32 = 0;
            }
          }
        }

        sub_1000356E8();
        if (v217 != 25)
        {
          sub_1000356E8();
          if ((v218 != 20) | v32 & 1)
          {

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v378 = static OS_dispatch_queue.main.getter();
            v219 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v220 = swift_allocObject();
            v221 = v376;
            v220[2] = v219;
            v220[3] = v221;
            v220[4] = v149;
            v220[5] = v150;
            v387 = sub_10002240C;
            v388 = v220;
            aBlock = _NSConcreteStackBlock;
            v384 = 1107296256;
            v385 = sub_1000102BC;
            v386 = &unk_100071DE0;
            v222 = _Block_copy(&aBlock);
            v377 = v150;

            v223 = v152;
            v224 = v373;
            static DispatchQoS.unspecified.getter();
            v390 = _swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
            v225 = v371;
            v226 = v372;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v227 = v378;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v222);

            (*(v374 + 8))(v225, v226);
            (*(v365 + 8))(v224, v375);
LABEL_252:

            goto LABEL_253;
          }
        }

        v228 = *&v377[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];
        if (v228)
        {
          v363 = v152;
          v229 = *&v152[v155];
          if (!v229)
          {
LABEL_269:
            __break(1u);
            goto LABEL_270;
          }

          v362 = v149;
          v230 = *&v377[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];

          v231 = [v229 identifier];
          v3 = v377;
          if (!v231)
          {
LABEL_270:
            __break(1u);
            goto LABEL_271;
          }

          v232 = v231;
          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v235 = v234;

          if (v230 == v233 && v228 == v235)
          {

            v236 = v364;
            goto LABEL_176;
          }

          v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v236 = v364;
          if (v237)
          {
LABEL_176:
            v2 = v150;
            v238 = [v2 discoveredInExtension];
            v239 = v363;
            if (v238)
            {
              v32 = v236;
              v240 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image;
              if (*&v363[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] || (v265 = [v2 displayImageName]) == 0)
              {
              }

              else
              {

                v266 = objc_allocWithZone(LSApplicationRecord);

                v267 = sub_10001F3A8(v32, v154, 0);
                if (!v267)
                {
LABEL_272:
                  __break(1u);
LABEL_273:
                  aBlock = 0;
                  v384 = 0xE000000000000000;
                  _StringGuts.grow(_:)(102);
                  v344._countAndFlagsBits = 0xD000000000000064;
                  v344._object = 0x800000010005E1A0;
                  String.append(_:)(v344);
                  v345 = [v32 description];
                  v346 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v348 = v347;

                  v349._countAndFlagsBits = v346;
                  v349._object = v348;
                  String.append(_:)(v349);

                  goto LABEL_276;
                }

                v268 = v267;

                v269 = [v268 URL];

                static URL._unconditionallyBridgeFromObjectiveC(_:)();
                v270 = objc_allocWithZone(NSBundle);
                URL._bridgeToObjectiveC()(v271);
                v273 = v272;
                v274 = [v270 initWithURL:v272];

                (*(v370 + 8))(v16, v369);
                v366 = v2;
                v275 = [v2 displayImageName];
                if (v275)
                {
                  v276 = v275;
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                }

                v277 = v274;
                v278 = String._bridgeToObjectiveC()();

                v279 = [objc_opt_self() imageNamed:v278 inBundle:v277 compatibleWithTraitCollection:0];

                v280 = v279;
                v281 = Logger.logObject.getter();
                v282 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v281, v282))
                {
                  v283 = swift_slowAlloc();
                  v284 = swift_slowAlloc();
                  *v283 = 138412290;
                  *(v283 + 4) = v280;
                  *v284 = v279;
                  v285 = v280;
                  _os_log_impl(&_mh_execute_header, v281, v282, "deviceChanged device.image: %@", v283, 0xCu);
                  sub_1000227E8(v284, &qword_10007F278, &unk_10005CD60);
                  v239 = v363;
                }

                v286 = *&v239[v240];
                *&v239[v240] = v279;

                v3 = v377;
                v2 = v366;
              }

              v287 = [v2 displayImageFileURL];
              v288 = v368;
              if (v287)
              {
                v289 = v367;
                v290 = v287;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                (*(v370 + 32))(v288, v289, v369);
                v291 = *&v239[v240];
                if (v291 && (v292 = UIImagePNGRepresentation(v291)) != 0)
                {
                  v293 = v292;
                  v294 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v296 = v295;

                  Data.write(to:options:)();
                  (*(v370 + 8))(v288, v369);
                  sub_10002215C(v294, v296);
                }

                else
                {
                  (*(v370 + 8))(v288, v369);
                }
              }
            }

            else
            {

              v241 = [v2 appAccessInfoMap];
              if (v241)
              {
                v242 = v241;
                sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                v243 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v244 = sub_10000AB88(v236, v154, v243);

                if (!v244)
                {
                  goto LABEL_214;
                }

                v245 = [v244 associationIdentifier];

                if (!v245)
                {
                  goto LABEL_214;
                }

                v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v248 = v247;

                v249 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
                swift_beginAccess();
                v250 = sub_10000AB88(v246, v248, *(v3 + v249));
                if (v250)
                {
                  v73 = v250;
                  swift_endAccess();

                  v251 = [v2 displayImageFileURL];
                  if (v251)
                  {
                    v252 = v251;
                    static URL._unconditionallyBridgeFromObjectiveC(_:)();

                    v253 = v366;
                    (*(v370 + 32))(v366, v8, v369);
                    v254 = [v73 productImage];
                    v255 = UIImagePNGRepresentation(v254);

                    if (v255)
                    {
                      v256 = v2;
                      v257 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v259 = v258;

                      Data.write(to:options:)();
                      (*(v370 + 8))(v253, v369);

                      sub_10002215C(v257, v259);
                      v2 = v256;
                    }

                    else
                    {
                      (*(v370 + 8))(v253, v369);
                    }

                    goto LABEL_214;
                  }

                  goto LABEL_212;
                }

                swift_endAccess();
              }

              else
              {
              }
            }

LABEL_214:
            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v378 = static OS_dispatch_queue.main.getter();
            v297 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v298 = swift_allocObject();
            v377 = v297;
            v299 = v376;
            v298[2] = v297;
            v298[3] = v299;
            v298[4] = v362;
            v298[5] = v2;
            v387 = sub_100022474;
            v388 = v298;
            aBlock = _NSConcreteStackBlock;
            v384 = 1107296256;
            v385 = sub_1000102BC;
            v386 = &unk_100071E30;
            v300 = v3;
            v301 = _Block_copy(&aBlock);
            v302 = v2;

            v303 = v373;
            static DispatchQoS.unspecified.getter();
            v390 = _swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
            v304 = v371;
            v305 = v372;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v306 = v378;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v301);

            (*(v374 + 8))(v304, v305);
            (*(v365 + 8))(v303, v375);

            v307 = *(v300 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
            *(v300 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = 0;

            v308 = *(v300 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
            *(v300 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = 0;

            return;
          }

          v152 = v363;
        }

        v260 = v150;

        v378 = Logger.logObject.getter();
        v261 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v378, v261))
        {
          v262 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          *v262 = 138412290;
          *(v262 + 4) = v260;
          *v263 = v150;
          v260 = v260;
          _os_log_impl(&_mh_execute_header, v378, v261, "BUG?: This device was never picked %@", v262, 0xCu);
          sub_1000227E8(v263, &qword_10007F278, &unk_10005CD60);
        }

        goto LABEL_190;
      }

      v196 = v151;
      v378 = Logger.logObject.getter();
      v197 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v378, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *v198 = 138412290;
        *(v198 + 4) = v196;
        *v199 = v152;
        v200 = v196;
        _os_log_impl(&_mh_execute_header, v378, v197, "BUG?: No appBundleID to setup %@", v198, 0xCu);
        sub_1000227E8(v199, &qword_10007F278, &unk_10005CD60);

        goto LABEL_190;
      }
    }

    else
    {
      v378 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v378, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&_mh_execute_header, v378, v171, "BUG?: No appBundleID", v172, 2u);
      }
    }

    goto LABEL_190;
  }

  if (v38 > 39)
  {
    if (v38 != 40)
    {
      v56 = sub_10001BE7C();
      if (!v57)
      {
        return;
      }

      v59 = v56;
      v60 = v57;
      v32 = v58;
      v365 = v19;
      v61 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
      swift_beginAccess();
      v62 = *(v3 + v61);
      if (!v62)
      {
        goto LABEL_264;
      }

      v63 = v3;

      v32 = v32;
      v64 = sub_10000AB88(v59, v60, v62);

      if (!v64)
      {
        swift_endAccess();

        return;
      }

      swift_endAccess();

      sub_1000356E8();
      if (v65 == 25)
      {
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "BUG? Device is already authorized, Discovery is stopped, but we still got a lost event for this device. Ignoring.", v68, 2u);
        }

        goto LABEL_148;
      }

      v173 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
      swift_beginAccess();
      if (!*(v63 + v173))
      {
LABEL_268:
        __break(1u);
        goto LABEL_269;
      }

      v32 = v32;
      v174 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v390 = *(v63 + v173);
      *(v63 + v173) = 0x8000000000000000;
      sub_100020294(v174, v59, v60, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);

      *(v63 + v173) = v390;
      swift_endAccess();

      v176 = *(v63 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
      if (!v176 || (*(v63 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID) != v59 || v176 != v60) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

LABEL_148:

        return;
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v378 = static OS_dispatch_queue.main.getter();
      v177 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v178 = swift_allocObject();
      *(v178 + 16) = v177;
      *(v178 + 24) = v174;
      v387 = sub_100022494;
      v388 = v178;
      aBlock = _NSConcreteStackBlock;
      v384 = 1107296256;
      v385 = sub_1000102BC;
      v386 = &unk_100071E80;
      v179 = _Block_copy(&aBlock);
      v377 = v174;

      v180 = v373;
      static DispatchQoS.unspecified.getter();
      v390 = _swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v181 = v371;
      v182 = v372;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v183 = v378;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v179);

      (*(v374 + 8))(v181, v182);
      (*(v365 + 8))(v180, v375);

LABEL_253:

      return;
    }

    v125 = sub_10001BE7C();
    if (!v126)
    {
      return;
    }

    v32 = v126;
    v128 = v127;
    if (qword_10007EC50 != -1)
    {
      v309 = v125;
      swift_once();
      v125 = v309;
    }

    v129 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v129)
    {
      v130 = v3;
      v131 = v125;
      v132 = v129[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];
      v133 = v129;
      if (v132 == 1)
      {
        v134 = v128;
        v135 = sub_100019E4C();

        if (v135)
        {
          v136 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
          swift_beginAccess();
          if (!*&v130[v136])
          {
LABEL_271:
            __break(1u);

            goto LABEL_272;
          }

          v137 = v134;

          v138 = swift_isUniquelyReferenced_nonNull_native();
          v390 = *&v130[v136];
          *&v130[v136] = 0x8000000000000000;
          sub_100020294(v137, v131, v32, v138, &qword_10007F2D8, &qword_10005C608);
          *&v130[v136] = v390;
          swift_endAccess();

          v139 = type metadata accessor for TaskPriority();
          (*(*(v139 - 8) + 56))(v26, 1, 1, v139);
          v140 = swift_allocObject();
          v140[2] = 0;
          v140[3] = 0;
          v140[4] = v130;
          v140[5] = v131;
          v140[6] = v32;
          v140[7] = v137;
          v141 = v130;
          v142 = v137;

          sub_10000CA90(0, 0, v26, &unk_10005C5E0, v140);

          goto LABEL_253;
        }
      }

      v168 = sub_10000DC1C(v128, 0);
      if (v168)
      {

        v169 = *&v130[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
        if (v169)
        {
          [v169 invalidate];
        }

        v170 = *&v130[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
        if (v170)
        {
          [v170 invalidate];
        }

        sub_10000FFE0();
      }
    }

    return;
  }

  if (v38 == 10)
  {
    if (qword_10007EC50 != -1)
    {
LABEL_216:
      swift_once();
    }

    v79 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (!v79)
    {
      return;
    }

    v367 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v368 = qword_1000814E8;
    v32 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
    if (!v32)
    {
LABEL_265:
      __break(1u);
      goto LABEL_266;
    }

    v375 = v79;
    v73 = [v32 discoveredDevices];
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v80 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (v2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
LABEL_55:
        v81 = 0;
        v82 = v80 & 0xC000000000000001;
        v373 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp;
        v374 = v80 & 0xFFFFFFFFFFFFFF8;
        v371 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_preFilterDiscoveryResultsMap;
        v372 = v80 & 0xC000000000000001;
        v370 = v80;
        v369 = v2;
        while (1)
        {
          if (v82)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v81 >= *(v374 + 16))
            {
              goto LABEL_209;
            }

            v83 = *(v80 + 8 * v81 + 32);
          }

          v84 = v83;
          v85 = (v81 + 1);
          if (__OFADD__(v81, 1))
          {
            __break(1u);
LABEL_209:
            __break(1u);
            goto LABEL_210;
          }

          v86 = [v83 identifier];
          if (!v86)
          {

            v184 = v84;
            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              *v187 = 138412290;
              *(v187 + 4) = v184;
              *v188 = v184;
              v189 = v184;
              _os_log_impl(&_mh_execute_header, v185, v186, "DADevice does not have an identifier, ignoring. %@", v187, 0xCu);
              sub_1000227E8(v188, &qword_10007F278, &unk_10005CD60);
            }

            else
            {
            }

            return;
          }

          v87 = v86;
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v89;

          if (v373[v375] == 1)
          {
            v90 = [v84 bluetoothAdvertisementData];
            if (v90)
            {

              v91 = [v84 appAccessInfoMap];
              if (!v91)
              {
                break;
              }

              v92 = v91;
              sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
              v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v94 = *(v93 + 16);
              v82 = v372;

              if (!v94)
              {
                break;
              }
            }
          }

          v73 = sub_10000DC1C(v84, 0);

LABEL_57:
          ++v81;
          if (v85 == v2)
          {
            goto LABEL_218;
          }
        }

        v95 = v371;
        swift_beginAccess();
        if (!*&v95[v3])
        {
          __break(1u);
          goto LABEL_259;
        }

        v96 = v84;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v390 = *&v95[v3];
        v98 = v390;
        v99 = v3;
        *&v95[v3] = 0x8000000000000000;
        v3 = sub_10001F768(v88, v32);
        v101 = v98[2];
        v102 = (v100 & 1) == 0;
        v103 = v101 + v102;
        if (__OFADD__(v101, v102))
        {
          __break(1u);
          goto LABEL_216;
        }

        v104 = v100;
        if (v98[3] < v103)
        {
          sub_10001FCCC(v103, v97, &qword_10007F2D8, &qword_10005C608);
          v105 = sub_10001F768(v88, v32);
          if ((v104 & 1) != (v106 & 1))
          {
            goto LABEL_277;
          }

          v3 = v105;
          v107 = v390;
          if ((v104 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_76:
          v112 = v107[7];
          v113 = *(v112 + 8 * v3);
          *(v112 + 8 * v3) = v96;

LABEL_77:
          v3 = v99;
          *&v371[v99] = v107;
          swift_endAccess();
          v114 = type metadata accessor for TaskPriority();
          v115 = *(v114 - 8);
          v116 = v377;
          (*(v115 + 56))(v377, 1, 1, v114);
          v73 = swift_allocObject();
          *(v73 + 16) = 0;
          *(v73 + 24) = 0;
          *(v73 + 32) = v99;
          *(v73 + 40) = v96;
          v117 = v376;
          sub_100022778(v116, v376);
          LODWORD(v116) = (*(v115 + 48))(v117, 1, v114);
          v118 = v3;

          if (v116 == 1)
          {
            sub_1000227E8(v117, &qword_10007F2D0, &qword_10005C5D0);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v115 + 8))(v117, v114);
          }

          v120 = *(v73 + 16);
          v119 = *(v73 + 24);
          swift_unknownObjectRetain();

          v2 = v369;
          if (v120)
          {
            swift_getObjectType();
            v121 = dispatch thunk of Actor.unownedExecutor.getter();
            v123 = v122;
            swift_unknownObjectRelease();
          }

          else
          {
            v121 = 0;
            v123 = 0;
          }

          v80 = v370;
          sub_1000227E8(v377, &qword_10007F2D0, &qword_10005C5D0);
          v124 = swift_allocObject();
          *(v124 + 16) = &unk_10005C5F0;
          *(v124 + 24) = v73;
          if (v123 | v121)
          {
            v380 = 0;
            v381 = v121;
            v379 = 0;
            v382 = v123;
          }

          v82 = v372;
          swift_task_create();

          goto LABEL_57;
        }

        if (v97)
        {
          v107 = v390;
          if (v100)
          {
            goto LABEL_76;
          }
        }

        else
        {
          sub_1000205A0(&qword_10007F2D8, &qword_10005C608);
          v107 = v390;
          if (v104)
          {
            goto LABEL_76;
          }
        }

LABEL_72:
        v107[(v3 >> 6) + 8] |= 1 << v3;
        v108 = (v107[6] + 16 * v3);
        *v108 = v88;
        v108[1] = v32;
        *(v107[7] + 8 * v3) = v96;
        v109 = v107[2];
        v110 = __OFADD__(v109, 1);
        v111 = v109 + 1;
        if (v110)
        {
          __break(1u);
          goto LABEL_222;
        }

        v107[2] = v111;
        goto LABEL_77;
      }
    }

LABEL_218:

    v310 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
    swift_beginAccess();
    v311 = *(v3 + v310);
    if (v311 >> 62)
    {
LABEL_222:
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_220;
      }
    }

    else if (*((v311 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_220:
      sub_10000FFE0();
LABEL_231:

      return;
    }

    v312 = *&v367[v368];
    if (v312)
    {
      v313 = *(v312 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout);
    }

    else
    {
      v313 = 30.0;
    }

    if (v313 < ASPickerDisplaySettingsDiscoveryTimeoutUnbounded)
    {
      v314 = Logger.logObject.getter();
      v315 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v314, v315))
      {
        v316 = swift_slowAlloc();
        *v316 = 134217984;
        *(v316 + 4) = v313;
        _os_log_impl(&_mh_execute_header, v314, v315, "Discovery timeout of %f seconds", v316, 0xCu);
      }

      v317 = objc_opt_self();
      v318 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v387 = sub_100022938;
      v388 = v318;
      aBlock = _NSConcreteStackBlock;
      v384 = 1107296256;
      v385 = sub_100022FBC;
      v386 = &unk_100071F20;
      v319 = _Block_copy(&aBlock);

      v320 = [v317 scheduledTimerWithTimeInterval:0 repeats:v319 block:v313];
      _Block_release(v319);
      v321 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
      *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer) = v320;

      if (v313 > 60.0)
      {
        v322 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v387 = sub_100022970;
        v388 = v322;
        aBlock = _NSConcreteStackBlock;
        v384 = 1107296256;
        v385 = sub_100022FBC;
        v386 = &unk_100071F48;
        v323 = _Block_copy(&aBlock);

        v324 = [v317 scheduledTimerWithTimeInterval:0 repeats:v323 block:30.0];

        _Block_release(v323);
        v325 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
        *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer) = v324;

        return;
      }
    }

    goto LABEL_231;
  }

  if (v38 != 20)
  {
    return;
  }

  v32 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v32, v49, "XPC connection to dataaccessd invalidated, clearing devices", v50, 2u);
  }

  v51 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  if (!*(v3 + v51))
  {
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v32 = &_swiftEmptyDictionarySingleton;
  *(v3 + v51) = &_swiftEmptyDictionarySingleton;

  v52 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  if (!*(v3 + v52))
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  *(v3 + v52) = &_swiftEmptyDictionarySingleton;

  v53 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v54 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v54)
  {
    [v54 invalidateWithReason:0];
    v55 = *(v3 + v53);
  }

  else
  {
    v55 = 0;
  }

  *(v3 + v53) = 0;

  if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) == 1)
  {
    v166 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    if (!*(v3 + v166))
    {
LABEL_266:
      __break(1u);
      goto LABEL_267;
    }

    *(v3 + v166) = &_swiftEmptyDictionarySingleton;
  }

  v167 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
  if (v167)
  {
    [v167 invalidate];
  }

  v48 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
  if (v48)
  {
    goto LABEL_17;
  }
}

void sub_10001428C()
{
  v1 = v0;
  if (qword_10007EBF8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F150);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
    v7 = Array.description.getter();
    v9 = sub_10003FFF4(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "configureMigration: %s", v5, 0xCu);
    sub_100009AB0(v6);
  }

  v10 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery;
  v11 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (!v11)
  {
    v12 = objc_allocWithZone(DADiscovery);

    v13 = sub_10001F2BC();
    v14 = *(v1 + v10);
    *(v1 + v10) = v13;

    v11 = *(v1 + v10);
    if (!v11)
    {
      goto LABEL_45;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
    v16 = v11;

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = v11;
    v17 = 0;
  }

  [v11 setBundleID:v17];

  v19 = *(v1 + v10);
  if (!v19)
  {
    __break(1u);
    goto LABEL_42;
  }

  v20 = v19;
  [v20 setFlags:{objc_msgSend(v20, "flags") | 4}];

  v21 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems);
  if (!v21)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  aBlock[0] = &_swiftEmptyArrayStorage;
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v1;
  v36 = v10;

  if (v22)
  {
    v1 = 0;
    v23 = &_swiftEmptyArrayStorage;
    do
    {
      v24 = v1;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v25 = *(v21 + 8 * v24 + 32);
        }

        v26 = v25;
        v1 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v24;
        if (v1 == v22)
        {
          goto LABEL_29;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = aBlock[0];
    }

    while (v1 != v22);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

LABEL_29:

  if (v23 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28 <= 0)
  {
LABEL_34:
    v31 = *(v35 + v36);
    if (v31)
    {
      v32 = v31;

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000221B0;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100022FBC;
      aBlock[3] = &unk_100071908;
      v34 = _Block_copy(aBlock);

      [v32 setEventHandler:v34];
      _Block_release(v34);

      return;
    }

    goto LABEL_43;
  }

  v29 = *(v35 + v36);
  if (v29)
  {
    v30 = v29;
    [v30 setFlags:{objc_msgSend(v30, "flags") | 8}];

    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_10001478C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v236 = v4;
  v237 = v5;
  isa = v5[8].isa;
  __chkstk_darwin(v4);
  v235 = &v229 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_1000032F0(v13, qword_10007F150);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v14;
    v20 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Migration discovery event: %@", v18, 0xCu);
    sub_1000227E8(v20, &qword_10007F278, &unk_10005CD60);
    v14 = v19;
  }

  v22 = [v15 eventType];
  if (v22 <= 41)
  {
    if (v22 == 10)
    {
      v40 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
      if (v40)
      {
        v41 = [v40 discoveredDevices];
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v230 = v14;
        if (!(v42 >> 62))
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v43)
          {
            goto LABEL_149;
          }

LABEL_28:
          v44 = 0;
          v45 = (v42 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_142;
              }

              v46 = *(v42 + 8 * v44 + 32);
            }

            v47 = v46;
            v48 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              __break(1u);
LABEL_142:
              __break(1u);
              goto LABEL_138;
            }

            v49 = [v46 identifier];
            if (!v49)
            {
              break;
            }

            v50 = sub_10000DC1C(v47, 0);
            ++v44;
            if (v48 == v43)
            {
              goto LABEL_149;
            }
          }

          v101 = v47;
          v237 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v237, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *v103 = 138412290;
            *(v103 + 4) = v101;
            *v104 = v101;
            v236 = v101;
            _os_log_impl(&_mh_execute_header, v237, v102, "Migration discovery: DADevice does not have an identifier, ignoring. %@", v103, 0xCu);
            sub_1000227E8(v104, &qword_10007F278, &unk_10005CD60);

            v96 = v236;
          }

          else
          {

            v96 = v237;
          }

          goto LABEL_78;
        }

LABEL_148:
        v43 = _CocoaArrayWrapper.endIndex.getter();
        if (!v43)
        {
LABEL_149:

          v170 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
          swift_beginAccess();
          v171 = *&v2[v170];
          if (v171 >> 62)
          {
            if (v171 < 0)
            {
              v172 = *&v2[v170];
            }

            if (_CocoaArrayWrapper.endIndex.getter() < 1)
            {
              return;
            }
          }

          else if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
          {
            return;
          }

          sub_10000FFE0();
          return;
        }

        goto LABEL_28;
      }

LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    if (v22 != 15)
    {
      if (v22 != 20)
      {
        return;
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Migration discovery: XPC connection to dataaccessd invalidated, clearing devices", v25, 2u);
      }

      v26 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v27 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v27)
      {
        [v27 invalidateWithReason:0];
        v28 = *&v2[v26];
      }

      else
      {
        v28 = 0;
      }

      *&v2[v26] = 0;

      sub_1000189D4(0, 0);
      v97 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
      swift_beginAccess();
      if (*&v2[v97])
      {
        *&v2[v97] = &_swiftEmptyDictionarySingleton;

        v98 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
        swift_beginAccess();
        if (*&v2[v98])
        {
          *&v2[v98] = &_swiftEmptyDictionarySingleton;

          v99 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
          swift_beginAccess();
          if (*&v2[v99])
          {
            *&v2[v99] = &_swiftEmptyDictionarySingleton;

            v100 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
            if (v100)
            {
              [v100 invalidate];
            }

            v39 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
            if (v39)
            {
              goto LABEL_24;
            }

            return;
          }

          goto LABEL_225;
        }

        goto LABEL_223;
      }

      goto LABEL_221;
    }

    objc_opt_self();
    v76 = swift_dynamicCastObjCClass();
    if (v76)
    {
      v77 = v76;
      v234 = v15;
      if ([v77 devicesMigrated])
      {
        v78 = [v77 devices];
        if (!v78)
        {
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "Migration discovery: No present devices to migrate.", v112, 2u);
          }

          v113 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
          v114 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
          if (v114)
          {
            [v114 invalidateWithReason:0];
            v115 = *&v2[v113];
          }

          else
          {
            v115 = 0;
          }

          *&v2[v113] = 0;

          sub_1000189D4(0, 0);
          v130 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
          if (v130)
          {
            [v130 invalidate];
          }

          v131 = v12;
          v132 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
          if (v132)
          {
            [v132 invalidate];
          }

          v133 = v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration];
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();
          v136 = os_log_type_enabled(v134, v135);
          if (v133 == 1)
          {
            if (v136)
            {
              v137 = swift_slowAlloc();
              *v137 = 0;
              _os_log_impl(&_mh_execute_header, v134, v135, "Migration discovery: Dismiss the UI, not allowed to migrate", v137, 2u);
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v230 = static OS_dispatch_queue.main.getter();
            v138 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v242 = sub_100022EF0;
            v243 = v138;
            aBlock = _NSConcreteStackBlock;
            v239 = 1107296256;
            v139 = &unk_100071A98;
          }

          else
          {
            if (v136)
            {
              v140 = swift_slowAlloc();
              *v140 = 0;
              _os_log_impl(&_mh_execute_header, v134, v135, "Migration discovery: Migration not allowed, show done view", v140, 2u);
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v230 = static OS_dispatch_queue.main.getter();
            v141 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v242 = sub_100022EE8;
            v243 = v141;
            aBlock = _NSConcreteStackBlock;
            v239 = 1107296256;
            v139 = &unk_100071A70;
          }

          v240 = sub_1000102BC;
          v241 = v139;
          v142 = _Block_copy(&aBlock);

          static DispatchQoS.unspecified.getter();
          v246 = &_swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
          v143 = v235;
          v144 = v236;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v145 = v230;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v142);
          (v237[1].isa)(v143, v144);
          (*(v9 + 8))(v131, v8);
          goto LABEL_202;
        }

        v79 = v78;
        v232 = v12;
        v233 = v8;
        sub_100009B48(0, &qword_100080420, DADevice_ptr);
        v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v245 = &_swiftEmptyArrayStorage;
        v2 = v2;
        sub_1000219E8(v80, v2, &v245);

        v81 = v245;
        if (v245 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
            v82 = _CocoaArrayWrapper.endIndex.getter();
            if (v82)
            {
LABEL_53:
              v83 = 0;
              v42 = 0;
              while (1)
              {
                if ((v81 & 0xC000000000000001) != 0)
                {
                  v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v42 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_147;
                  }

                  v84 = *(v81 + 8 * v42 + 32);
                }

                v85 = v84;
                v86 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  break;
                }

                v87 = sub_10000DC1C(v84, 1);

                if (v87)
                {

                  v83 = 1;
                  if (v86 == v82)
                  {
                    goto LABEL_106;
                  }

                  ++v42;
                }

                else
                {
                  ++v42;
                  if (v86 == v82)
                  {
                    if ((v83 & 1) == 0)
                    {
                      goto LABEL_184;
                    }

LABEL_106:
                    sub_10000FFE0();
                    goto LABEL_184;
                  }
                }
              }

              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
              goto LABEL_148;
            }

            goto LABEL_184;
          }
        }

        else
        {
          v82 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v82)
          {
            goto LABEL_53;
          }
        }

        v173 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
        swift_beginAccess();
        v174 = *&v2[v173];
        if (v174 >> 62)
        {
          if (v174 < 0)
          {
            v221 = *&v2[v173];
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 1)
          {
            goto LABEL_184;
          }
        }

        else if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
LABEL_184:

LABEL_205:

          return;
        }

        v15 = *&v2[v173];
        if (v15 >> 62)
        {
          if (v15 < 0)
          {
            v222 = *&v2[v173];
          }

          v175 = _CocoaArrayWrapper.endIndex.getter();
          if (!v175)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v175 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v175)
          {
LABEL_170:
            v180 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
            if (v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] == 1)
            {
              if (v180)
              {
                [v180 invalidate];
              }

              v181 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
              if (v181)
              {
                [v181 invalidate];
              }

              sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
              v230 = static OS_dispatch_queue.main.getter();
              v182 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v242 = sub_100022EF4;
              v243 = v182;
              aBlock = _NSConcreteStackBlock;
              v239 = 1107296256;
              v240 = sub_1000102BC;
              v241 = &unk_100071AE8;
              v183 = _Block_copy(&aBlock);

              v184 = v232;
              static DispatchQoS.unspecified.getter();
              v244 = &_swiftEmptyArrayStorage;
              v229 = sub_10001F8CC();
              sub_100009894(&unk_10007F560, &qword_10005C590);
              sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
              v186 = v235;
              v185 = v236;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v187 = v230;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v183);

              (v237[1].isa)(v186, v185);
              (*(v9 + 8))(v184, v233);

              v188 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v189 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v189)
              {
                [v189 invalidateWithReason:0];
                v190 = *&v2[v188];
              }

              else
              {
                v190 = 0;
              }

              *&v2[v188] = 0;

              sub_1000189D4(0, 0);
              goto LABEL_184;
            }

            if (v180)
            {
              [v180 invalidate];
            }

            v191 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
            if (v191)
            {
              [v191 invalidate];
            }

            sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
            v230 = static OS_dispatch_queue.main.getter();
            v192 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v242 = sub_100022EE8;
            v243 = v192;
            aBlock = _NSConcreteStackBlock;
            v239 = 1107296256;
            v240 = sub_1000102BC;
            v241 = &unk_100071AC0;
            v193 = _Block_copy(&aBlock);

            v194 = v232;
            static DispatchQoS.unspecified.getter();
            v244 = &_swiftEmptyArrayStorage;
            sub_10001F8CC();
            sub_100009894(&unk_10007F560, &qword_10005C590);
            sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
            v196 = v235;
            v195 = v236;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v197 = v230;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v193);
            (v237[1].isa)(v196, v195);
            (*(v9 + 8))(v194, v233);

LABEL_202:

            return;
          }
        }

        if (v175 >= 1)
        {

          v176 = 0;
          do
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v177 = *(v15 + 8 * v176 + 32);
            }

            v178 = v177;
            ++v176;
            v179 = sub_10000DC1C(v177, 0);
          }

          while (v175 != v176);

          goto LABEL_170;
        }

        __break(1u);
        goto LABEL_219;
      }

LABEL_77:
      v96 = v234;
LABEL_78:

      return;
    }

LABEL_226:
    aBlock = 0;
    v239 = 0xE000000000000000;
    _StringGuts.grow(_:)(123);
    v223._object = 0x800000010005DFC0;
    v223._countAndFlagsBits = 0xD000000000000079;
    String.append(_:)(v223);
    v224 = [v15 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v22 == 42)
  {
    v51 = sub_10001BE7C();
    if (!v52)
    {
      return;
    }

    v54 = v52;
    v55 = v53;
    v56 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
    if (!v56)
    {
      v105 = v53;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v108 = 138412290;
        *(v108 + 4) = v105;
        *v109 = v55;
        v105 = v105;
        _os_log_impl(&_mh_execute_header, v106, v107, "BUG?: No appBundleID to setup %@", v108, 0xCu);
        sub_1000227E8(v109, &qword_10007F278, &unk_10005CD60);
      }

      goto LABEL_94;
    }

    v57 = v51;
    v232 = v12;
    v58 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
    v59 = v53;

    v60 = [v59 appAccessInfoMap];
    v231 = v9;
    v233 = v8;
    if (v60)
    {
      v61 = v60;
      sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
      v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v62 + 16))
      {
        v45 = v59;
        v63 = sub_10001F768(v58, v56);
        v65 = v64;

        if (v65)
        {
          v66 = *(*(v62 + 56) + 8 * v63);

          v67 = [v66 state];

          v59 = v45;
          if (v67 == 25)
          {
            v68 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];
            if (v68)
            {
              v69 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
              v70 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];

              v71 = [v45 identifier];
              if (v71)
              {
                v72 = v71;
                v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v75 = v74;

                if (v69 == v73 && v68 == v75)
                {

LABEL_140:

                  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
                  v234 = static OS_dispatch_queue.main.getter();
                  v162 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v163 = swift_allocObject();
                  v163[2] = v162;
                  v163[3] = v57;
                  v163[4] = v54;
                  v163[5] = v45;
                  v242 = sub_100022FC8;
                  v243 = v163;
                  aBlock = _NSConcreteStackBlock;
                  v239 = 1107296256;
                  v240 = sub_1000102BC;
                  v241 = &unk_100071A48;
                  v164 = _Block_copy(&aBlock);
                  v165 = v45;

                  v166 = v232;
                  static DispatchQoS.unspecified.getter();
                  v246 = &_swiftEmptyArrayStorage;
                  sub_10001F8CC();
                  sub_100009894(&unk_10007F560, &qword_10005C590);
                  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
                  v168 = v235;
                  v167 = v236;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v169 = v234;
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v164);

                  (v237[1].isa)(v168, v167);
                  (*(v231 + 8))(v166, v233);
                  goto LABEL_202;
                }

                v161 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v161)
                {
                  goto LABEL_140;
                }
              }

              else
              {
              }
            }

LABEL_138:

LABEL_94:

            return;
          }

LABEL_112:
          sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
          v122 = static OS_dispatch_queue.main.getter();
          v123 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v124 = swift_allocObject();
          v124[2] = v123;
          v124[3] = v57;
          v124[4] = v54;
          v124[5] = v59;
          v242 = sub_100022FC4;
          v243 = v124;
          aBlock = _NSConcreteStackBlock;
          v239 = 1107296256;
          v240 = sub_1000102BC;
          v241 = &unk_1000719F8;
          v125 = _Block_copy(&aBlock);
          v126 = v59;

          v127 = v232;
          static DispatchQoS.unspecified.getter();
          v246 = &_swiftEmptyArrayStorage;
          sub_10001F8CC();
          sub_100009894(&unk_10007F560, &qword_10005C590);
          sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
          v128 = v235;
          v129 = v236;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v125);

          (v237[1].isa)(v128, v129);
          (*(v231 + 8))(v127, v233);
          goto LABEL_202;
        }

        v59 = v45;
      }

      else
      {
      }
    }

    goto LABEL_112;
  }

  if (v22 == 50)
  {
    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (!v88)
    {
      goto LABEL_226;
    }

    v89 = v88;
    v234 = v15;
    if (![v89 devicesMigrated])
    {
      goto LABEL_77;
    }

    v90 = [v89 devices];
    v233 = v8;
    if (!v90)
    {
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&_mh_execute_header, v116, v117, "Migration discovery: No present devices to migrate.", v118, 2u);
      }

      v119 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v120 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v120)
      {
        [v120 invalidateWithReason:0];
        v121 = *&v2[v119];
      }

      else
      {
        v121 = 0;
      }

      v146 = v12;
      *&v2[v119] = 0;

      sub_1000189D4(0, 0);
      v147 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
      if (v147)
      {
        [v147 invalidate];
      }

      v148 = v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration];
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();
      v151 = os_log_type_enabled(v149, v150);
      if (v148 == 1)
      {
        if (v151)
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v149, v150, "Migration discovery: Dismiss the UI, not allowed to migrate", v152, 2u);
        }

        sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
        v153 = static OS_dispatch_queue.main.getter();
        v154 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v242 = sub_100022EF0;
        v243 = v154;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v155 = &unk_100071958;
      }

      else
      {
        if (v151)
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&_mh_execute_header, v149, v150, "Migration discovery: Migration not allowed, show done view", v156, 2u);
        }

        sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
        v153 = static OS_dispatch_queue.main.getter();
        v157 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v242 = sub_100022EE8;
        v243 = v157;
        aBlock = _NSConcreteStackBlock;
        v239 = 1107296256;
        v155 = &unk_100071930;
      }

      v240 = sub_1000102BC;
      v241 = v155;
      v158 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v246 = &_swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v160 = v235;
      v159 = v236;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v158);
      (v237[1].isa)(v160, v159);
      (*(v9 + 8))(v146, v233);
      goto LABEL_202;
    }

    v42 = v90;
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v231 = v9;
    v232 = v12;
    if (v91 >> 62)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
      if (v92)
      {
LABEL_69:
        v93 = 0;
        do
        {
          if ((v91 & 0xC000000000000001) != 0)
          {
            v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v93 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_146;
            }

            v94 = *(v91 + 8 * v93 + 32);
          }

          v42 = v94;
          v95 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_145;
          }

          aBlock = v94;
          sub_10001D418(&aBlock, v2, "Migration discovery: Error writing image to file for migration: %@");

          ++v93;
        }

        while (v95 != v92);
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
        goto LABEL_69;
      }
    }

    v198 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
    swift_beginAccess();
    v199 = *&v2[v198];
    if (v199 >> 62)
    {
      if (v199 < 0)
      {
        v220 = *&v2[v198];
      }

      v200 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v200 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v201 = v231;
    if (v200 < 1)
    {

      return;
    }

    v202 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
    if (v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration] == 1)
    {
      if (v202)
      {
        [v202 invalidate];
      }

      v203 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
      if (v203)
      {
        [v203 invalidate];
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v230 = static OS_dispatch_queue.main.getter();
      v204 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v242 = sub_100022EF4;
      v243 = v204;
      aBlock = _NSConcreteStackBlock;
      v239 = 1107296256;
      v240 = sub_1000102BC;
      v241 = &unk_1000719A8;
      v205 = _Block_copy(&aBlock);

      v206 = v232;
      static DispatchQoS.unspecified.getter();
      v245 = &_swiftEmptyArrayStorage;
      sub_10001F8CC();
      sub_100009894(&unk_10007F560, &qword_10005C590);
      sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v207 = v235;
      v208 = v236;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v209 = v230;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v205);

      (v237[1].isa)(v207, v208);
      (*(v201 + 8))(v206, v233);

      v210 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
      v211 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
      if (v211)
      {
        [v211 invalidateWithReason:0];
        v212 = *&v2[v210];
      }

      else
      {
        v212 = 0;
      }

      *&v2[v210] = 0;

      sub_1000189D4(0, 0);
      goto LABEL_205;
    }

    if (v202)
    {
      [v202 invalidate];
    }

    v213 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer];
    if (v213)
    {
      [v213 invalidate];
    }

    sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
    v214 = static OS_dispatch_queue.main.getter();
    v215 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v242 = sub_100022EE8;
    v243 = v215;
    aBlock = _NSConcreteStackBlock;
    v239 = 1107296256;
    v240 = sub_1000102BC;
    v241 = &unk_100071980;
    v216 = _Block_copy(&aBlock);

    v217 = v232;
    static DispatchQoS.unspecified.getter();
    v245 = &_swiftEmptyArrayStorage;
    sub_10001F8CC();
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    v219 = v235;
    v218 = v236;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v216);
    (v237[1].isa)(v219, v218);
    (*(v201 + 8))(v217, v233);
    goto LABEL_202;
  }

  if (v22 != 60)
  {
    return;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Migration discovery: XPC connection to dataaccessd interrupted, clearing devices", v31, 2u);
  }

  v32 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  if (!*&v2[v32])
  {
    goto LABEL_220;
  }

  *&v2[v32] = &_swiftEmptyDictionarySingleton;

  v33 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v34 = *&v2[v33];
  *&v2[v33] = &_swiftEmptyArrayStorage;

  v35 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer;
  v36 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer];
  if (v36)
  {
    [v36 invalidate];
  }

  v37 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
  swift_beginAccess();
  if (!*&v2[v37])
  {
    goto LABEL_222;
  }

  *&v2[v37] = &_swiftEmptyDictionarySingleton;

  v38 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
  swift_beginAccess();
  if (!*&v2[v38])
  {
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  *&v2[v38] = &_swiftEmptyDictionarySingleton;

  v39 = *&v2[v35];
  if (v39)
  {
LABEL_24:
    [v39 invalidate];
  }
}