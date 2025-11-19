uint64_t sub_100406210(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectedSection();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = &v36 - v17;
  if (v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled] == 1)
  {
    v37 = v16;
    v40 = v5;
    v41 = v4;
    v19 = *(*&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
    v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027BE0(v19 + v20, v18, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = v7;
    v39 = v8;
    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMMapViewController: did deselect annotation %@", v25, 0xCu);
      sub_100012DF0(v26, &unk_1006AF760);
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v28 = static OS_dispatch_queue.main.getter();
    sub_100027BE0(v18, v14, type metadata accessor for FMSelectedSection);
    v29 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    sub_10005701C(v14, v30 + v29, type metadata accessor for FMSelectedSection);
    *(v30 + ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    aBlock[4] = sub_100406B78;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063D108;
    v31 = _Block_copy(aBlock);
    v32 = v22;
    v33 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v34 = v38;
    v35 = v41;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v40 + 8))(v34, v35);
    (*(v42 + 8))(v10, v39);
    return sub_10002A100(v18, type metadata accessor for FMSelectedSection);
  }

  return result;
}

void sub_100406764(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
    if (!v2)
    {
      return;
    }

    v3 = 3;
  }

  else if (a1 == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
    if (!v2)
    {
      return;
    }

    v3 = 2;
  }

  else
  {
    if (a1)
    {
      return;
    }

    sub_1000202F4(1, 0, 0);
    v2 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView);
    if (!v2)
    {
      return;
    }

    v3 = 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_userLocationButton);

  [v4 _setState:v3];
}

uint64_t sub_10040682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10040689C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v2;
  *(v13 + 32) = a1;
  aBlock[4] = sub_100406B6C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D0B8;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_100406B78()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1003FED54(v3, v0 + v2, v4);
}

uint64_t sub_100406C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000E3478;

  return sub_1003FD95C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100406D08()
{
  v1 = *(type metadata accessor for FMAnnotationIdentifier() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1003FB6B4(v2, v3);
}

id sub_100406D88()
{
  v1 = &selRef__enter3DMode;
  if (!*(v0 + 16))
  {
    v1 = &selRef__exit3DMode;
  }

  return [*(*(v0 + 24) + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) *v1];
}

void sub_100406DBC()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    *(*(v0 + 24) + OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode) = 0;
  }
}

uint64_t sub_100406DE0()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16) == 1)
  {
    *(*(v0 + 24) + OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation) = 1;
  }

  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100406E54()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t FMIPItem.findingIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t FMIPItem.findingProductType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMIPHawkeyeProductInformation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006C39A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for FMIPProductType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.productType.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for FMIPProductType.b389(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = &qword_1006B1AA8;
    v18 = v15;
  }

  else
  {
    if (v16 == enum case for FMIPProductType.zeus(_:))
    {
      (*(v13 + 96))(v15, v12);
      v19 = type metadata accessor for FMIPZeusProductInformation();
      (*(*(v19 - 8) + 8))(v15, v19);
      goto LABEL_6;
    }

    if (v16 != enum case for FMIPProductType.hawkeye(_:))
    {
      v24 = enum case for FMFindingProductType.item(_:);
      v25 = type metadata accessor for FMFindingProductType();
      (*(*(v25 - 8) + 104))(a1, v24, v25);
      return (*(v13 + 8))(v15, v12);
    }

    (*(v13 + 96))(v15, v12);
    sub_1001700DC(v15, v11);
    if (FMIPItem.isAppleAudioAccessory.getter())
    {
      sub_10040747C(v11, v9);
      if ((*(v3 + 48))(v9, 1, v2) != 1)
      {
        (*(v3 + 32))(v5, v9, v2);
        v26 = FMIPHawkeyeProductInformation.productIdentifier.getter();
        v27 = FMIPHawkeyeProductInformation.requiresAdditionalConnectionTime.getter();
        (*(v3 + 8))(v5, v2);
        sub_100012DF0(v11, &qword_1006C39A0);
        *a1 = v26;
        *(a1 + 8) = v27 & 1;
        v20 = &enum case for FMFindingProductType.airpods(_:);
        goto LABEL_7;
      }

      sub_100012DF0(v11, &qword_1006C39A0);
    }

    else
    {
      v9 = v11;
    }

    v17 = &qword_1006C39A0;
    v18 = v9;
  }

  sub_100012DF0(v18, v17);
LABEL_6:
  v20 = &enum case for FMFindingProductType.item(_:);
LABEL_7:
  v21 = *v20;
  v22 = type metadata accessor for FMFindingProductType();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

uint64_t sub_10040747C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006C39A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FMFindingProductType.videoInfo(isZeus:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingProductType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - v11;
  (*(v7 + 16))(v9, v3, v6);
  if ((*(v7 + 88))(v9, v6) == enum case for FMFindingProductType.airpods(_:))
  {
    (*(v7 + 96))(v9, v6);
    if (*v9 == 8231 || *v9 == 8233)
    {
      FMR2AirPodsVideoInfo.getter();
      v14 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
      (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
LABEL_12:
      type metadata accessor for FMFindingUIAVPlayerVideoInfo();
      return (*(*(v14 - 8) + 32))(a2, v12, v14);
    }

    FMR1AirPodsVideoInfo.getter();
    v14 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    (*(v7 + 8))(v9, v6);
  }

  type metadata accessor for FMFindingUIAVPlayerVideoInfo();
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
  {
    goto LABEL_12;
  }

  sub_100012DF0(v12, &qword_1006B32A8);
  if (a1)
  {
    return FMR1AirTagZeusVideoInfo.getter();
  }

  else
  {
    return FMR1AirTagDefaultVideoInfo.getter();
  }
}

uint64_t FMIPItem.findingProductUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  FMIPItem.productIdentifier.getter();
  UUID.init(uuidString:)();

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  return result;
}

uint64_t FMIPItem.findingPartInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for FMIPPartType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FMFindingPartType();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006C2470);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for FMIPPartInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.partInfo.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &unk_1006C2470);
    v15 = 1;
    v16 = v26;
LABEL_14:
    v22 = type metadata accessor for FMFindingPartInfo();
    return (*(*(v22 - 8) + 56))(v16, v15, 1, v22);
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = FMIPPartInfo.name.getter();
  v24[2] = v18;
  v24[3] = v17;
  FMIPPartInfo.symbol.getter();
  v24[1] = v19;
  FMIPPartInfo.type.getter();
  v20 = (*(v2 + 88))(v4, v1);
  if (v20 == enum case for FMIPPartType.standalone(_:))
  {
    v21 = &enum case for FMFindingPartType.standalone(_:);
LABEL_13:
    (*(v5 + 104))(v7, *v21, v25);
    v16 = v26;
    FMFindingPartInfo.init(name:symbol:type:)();
    (*(v12 + 8))(v14, v11);
    v15 = 0;
    goto LABEL_14;
  }

  if (v20 == enum case for FMIPPartType.case(_:))
  {
    v21 = &enum case for FMFindingPartType.case(_:);
    goto LABEL_13;
  }

  if (v20 == enum case for FMIPPartType.leftBud(_:))
  {
    v21 = &enum case for FMFindingPartType.leftBud(_:);
    goto LABEL_13;
  }

  if (v20 == enum case for FMIPPartType.rightBud(_:))
  {
    v21 = &enum case for FMFindingPartType.rightBud(_:);
    goto LABEL_13;
  }

  if (v20 == enum case for FMIPPartType.generic(_:))
  {
    v21 = &enum case for FMFindingPartType.generic(_:);
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t FMIPItem.findingPartType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMIPPartType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006C2470);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10007EBC0(&qword_1006BEF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  FMIPItem.partInfo.getter();
  v12 = type metadata accessor for FMIPPartInfo();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_100012DF0(v8, &unk_1006C2470);
    v14 = type metadata accessor for FMFindingPartType();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    if (FMIPItem.name.getter() == 1702060355 && v16 == 0xE400000000000000)
    {

      v17 = &enum case for FMFindingPartType.case(_:);
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = &enum case for FMFindingPartType.standalone(_:);
      if (v20)
      {
        v17 = &enum case for FMFindingPartType.case(_:);
      }
    }

    (*(v15 + 104))(a1, *v17, v14);
    result = (*(v15 + 48))(v11, 1, v14);
    if (result != 1)
    {
      return sub_100012DF0(v11, &qword_1006BEF90);
    }
  }

  else
  {
    FMIPPartInfo.type.getter();
    v18 = (*(v3 + 88))(v5, v2);
    if (v18 == enum case for FMIPPartType.standalone(_:))
    {
      v19 = &enum case for FMFindingPartType.standalone(_:);
    }

    else if (v18 == enum case for FMIPPartType.case(_:))
    {
      v19 = &enum case for FMFindingPartType.case(_:);
    }

    else if (v18 == enum case for FMIPPartType.leftBud(_:))
    {
      v19 = &enum case for FMFindingPartType.leftBud(_:);
    }

    else if (v18 == enum case for FMIPPartType.rightBud(_:))
    {
      v19 = &enum case for FMFindingPartType.rightBud(_:);
    }

    else
    {
      if (v18 != enum case for FMIPPartType.generic(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v19 = &enum case for FMFindingPartType.generic(_:);
    }

    v22 = *v19;
    v23 = type metadata accessor for FMFindingPartType();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v11, v22, v23);
    (*(v13 + 8))(v8, v12);
    (*(v24 + 56))(v11, 0, 1, v23);
    return (*(v24 + 32))(a1, v11, v23);
  }

  return result;
}

uint64_t FMIPItem.videoInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FMIPProductType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingProductType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.findingProductType.getter(v9);
  FMIPItem.productType.getter();
  v10 = FMIPProductType.isZeus.getter();
  (*(v3 + 8))(v5, v2);
  FMFindingProductType.videoInfo(isZeus:)(v10 & 1, a1);
  return (*(v7 + 8))(v9, v6);
}

void *FMIPItem.supportedFindingTechnologies.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingTechnology();
  v37 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = v34 - v5;
  v6 = type metadata accessor for FMItemCapabilities();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v34 - v11;
  v38 = _swiftEmptySetSingleton;
  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canR1.getter();
  v13 = sub_1004087B4(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = sub_10007EBC0(&qword_1006C0020);
    v34[0] = v13;
    v17 = v2;
    v18 = *(v16 + 48);
    v19 = v35;
    *v35 = 1;
    v20 = enum case for FMFindingType.owner(_:);
    v21 = type metadata accessor for FMFindingType();
    v22 = *(*(v21 - 8) + 104);
    v34[1] = v1;
    v23 = v37;
    v22(&v19[v18], v20, v21);
    (*(v23 + 104))(v19, enum case for FMFindingTechnology.precision(_:), v17);
    v24 = v36;
    sub_1002549AC(v36, v19);
    v25 = v24;
    v2 = v17;
    (*(v23 + 8))(v25, v17);
  }

  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canBTFinding.getter();
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15(v10, v6);
  v15(v12, v6);
  if (v26)
  {
    v27 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
    v28 = enum case for FMFindingType.owner(_:);
    v29 = type metadata accessor for FMFindingType();
    v30 = v35;
    (*(*(v29 - 8) + 104))(v35, v28, v29);
    v30[v27] = 0;
    v31 = v37;
    (*(v37 + 104))(v30, enum case for FMFindingTechnology.proximity(_:), v2);
    v32 = v36;
    sub_1002549AC(v36, v30);
    (*(v31 + 8))(v32, v2);
  }

  return v38;
}

uint64_t sub_1004087B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100408898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMediatedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004088DC(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  type metadata accessor for FMCardContainerViewController();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_9:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "FMR1FindingViewDismissedTransition: Invalid presented view controller", v15, 2u);
    }

    goto LABEL_24;
  }

  v6 = v5;
  v7 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v7)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v17, "FMR1FindingViewDismissedTransition: Invalid presenting view controller", v18, 2u);
    }

    goto LABEL_23;
  }

  oslog = v7;
  v8 = [a1 containerView];
  type metadata accessor for FMPassthroughView();
  v9 = v8;
  v10 = v9;
  while (1)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      break;
    }

    v12 = [v9 superview];

    v10 = v12;
    if (!v12)
    {
      v10 = v9;
      goto LABEL_18;
    }
  }

  v19 = v11;

  *(v19 + OBJC_IVAR____TtC6FindMy17FMPassthroughView_enabled) = 1;
LABEL_18:

  sub_100249020(a1);
  v20 = [a1 containerView];
  v4 = v4;
  v21 = [v6 view];
  if (!v21)
  {
    __break(1u);
    goto LABEL_28;
  }

  v22 = v21;
  [v20 addSubview:v21];

  v23 = [v6 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    return;
  }

  [v23 layoutIfNeeded];

  if (*(v1 + OBJC_IVAR____TtC6FindMy14FMR1Transition_duration) == 0.0)
  {
    [a1 completeTransition:1];
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    swift_unknownObjectRetain();
    sub_100408D30(v6, oslog, sub_1001A8698, v24);
  }

LABEL_23:

LABEL_24:
}

void sub_100408D30(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = [a1 view];
  if (v9)
  {
    v32 = v9;
    v10 = [a2 view];
    if (v10)
    {
      v11 = v10;
      v12 = *&a1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_cardContainer];
      [v12 bounds];
      [v12 bounds];
      Height = CGRectGetHeight(v41);
      [v32 bounds];
      Width = CGRectGetWidth(v42);
      [v32 bounds];
      v15 = CGRectGetHeight(v43);
      [v32 setFrame:{0.0, Height, Width, v15}];
      v16 = *&a1[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground];
      [v16 alpha];
      v18 = v17;
      [v16 setAlpha:0.0];
      v19 = objc_opt_self();
      v20 = *(v4 + OBJC_IVAR____TtC6FindMy14FMR1Transition_duration);
      v21 = *(v4 + OBJC_IVAR____TtC6FindMy14FMR1Transition_mass);
      v22 = *(v4 + OBJC_IVAR____TtC6FindMy14FMR1Transition_stiffness);
      v23 = *(v4 + OBJC_IVAR____TtC6FindMy14FMR1Transition_springDamping);
      v24 = *(v4 + OBJC_IVAR____TtC6FindMy14FMR1Transition_initialSpringVelocity);
      v25 = swift_allocObject();
      *(v25 + 2) = v11;
      *(v25 + 3) = v32;
      v25[4] = Width;
      v25[5] = v15;
      v37 = sub_1004092F0;
      v38 = v25;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100004AE4;
      v36 = &unk_10063D5F8;
      v26 = _Block_copy(&aBlock);
      v27 = v11;
      v28 = v32;

      v29 = swift_allocObject();
      *(v29 + 2) = a1;
      *(v29 + 3) = v18;
      *(v29 + 4) = a3;
      *(v29 + 5) = a4;
      v37 = sub_100409358;
      v38 = v29;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_10037A044;
      v36 = &unk_10063D648;
      v30 = _Block_copy(&aBlock);
      v31 = a1;

      [v19 _animateUsingSpringWithDuration:0x20000 delay:v26 options:v30 mass:v20 stiffness:0.0 damping:v21 initialVelocity:v22 animations:v23 completion:v24];
      _Block_release(v30);
      _Block_release(v26);
    }

    else
    {
    }
  }
}

void sub_1004090B4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  v19 = sub_100409368;
  v20 = v10;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100004AE4;
  v18 = &unk_10063D698;
  v11 = _Block_copy(&v15);
  v12 = a3;

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v19 = sub_100009624;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10037A044;
  v18 = &unk_10063D6E8;
  v14 = _Block_copy(&v15);

  [v9 animateWithDuration:v11 animations:v14 completion:0.1];
  _Block_release(v14);
  _Block_release(v11);
}

id sub_100409298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1FindingViewDismissedTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004092F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setFrame:{0.0, 0.0, v2, v3}];
}

char *sub_10040939C(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v70 = a5;
  v67 = a2;
  v68 = a4;
  v72 = a3;
  v7 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &countAndFlagsBits - v8;
  v10 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xD000000000000018;
  v75._object = 0x8000000100596DE0;
  v11._object = 0x8000000100596DC0;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD00000000000002ALL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v75)._countAndFlagsBits;

  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  v66 = *(v14 + 16);
  v66(v9, a2, v13);
  v69 = v14;
  v65 = *(v14 + 56);
  v65(v9, 0, 1, v13);
  v15 = sub_10022F104(0xD000000000000022, 0x8000000100596E10, v9);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10022E0A8(v15, v17, v19, v21, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v9, &unk_1006BBCE0);
  v22 = objc_allocWithZone(v71);

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [v22 initWithTitle:v23 detailText:v24 icon:0 contentLayout:2];

  v71 = a1;
  *&v25[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator] = a1;
  v26 = v25;

  v27 = &v26[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode];
  v28 = *&v26[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode];
  v29 = *&v26[OBJC_IVAR____TtC6FindMy21FMEmailViewController_passcode + 8];
  v30 = v70;
  *v27 = v68;
  *(v27 + 1) = v30;
  sub_100179FB0(v28, v29);

  v32 = v66;
  v31 = v67;
  v66(v9, v67, v13);
  v33 = v65;
  v65(v9, 0, 1, v13);
  v34 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_device;
  swift_beginAccess();
  v35 = v26;
  sub_1002B8AAC(v9, &v26[v34]);
  swift_endAccess();
  v36 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryItemPart;
  swift_beginAccess();
  sub_100179FC4(v72, &v35[v36]);
  swift_endAccess();
  v37 = [v35 buttonTray];
  v70 = v35;

  v32(v9, v31, v13);
  v33(v9, 0, 1, v13);
  v38 = sub_10022F104(0xD00000000000002ALL, 0x8000000100596E40, v9);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_10022E0A8(v38, v40, v42, v44, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v9, &unk_1006BBCE0);
  v45 = String._bridgeToObjectiveC()();

  [v37 setCaptionText:v45];

  v46 = sub_10040ABCC();
  if (v46)
  {
    v47 = v46;
    v48 = v72;
    v49 = v69;
    v50 = [objc_opt_self() sharedInstance];
    v51 = [v50 phoneAsAppleIDForAccount:v47];

    if ((v51 & 1) == 0)
    {
      v52 = [objc_allocWithZone(ACAccountStore) init];
      v53 = [v52 aa_primaryAppleAccount];

      if (v53)
      {
        v54 = [v53 aa_primaryEmail];

        if (v54)
        {
          v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v73 = v55;
          v74 = v57;
          v58 = String.init<A>(_:)();
          v60 = v59;

          sub_100012DF0(v48, &qword_1006B07D0);
          (*(v49 + 8))(v31, v13);
          v61 = v70;
          v62 = &v70[OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryEmailAddress];
          *v62 = v58;
          v62[1] = v60;

          return v61;
        }
      }
    }

    sub_100012DF0(v48, &qword_1006B07D0);
    (*(v49 + 8))(v31, v13);
  }

  else
  {

    sub_100012DF0(v72, &qword_1006B07D0);
    (*(v69 + 8))(v31, v13);
  }

  return v70;
}

id sub_100409AD8(void *a1)
{
  v2 = sub_100341E5C(a1);
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryEmailAddress + 8);
  type metadata accessor for FMEmailTableViewCell();
  v4 = swift_dynamicCastClass();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = *(v4 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_textField);

      v7 = v6;
      v8 = String._bridgeToObjectiveC()();

      [v7 setText:v8];

      v9 = (v5 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText);
      *v9 = 0;
      v9[1] = 0;
      v10 = v2;

      v11 = *(v5 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel);
      v12 = String._bridgeToObjectiveC()();
      [v11 setText:v12];
LABEL_6:

      sub_1003C28F0();
    }
  }

  else if (v4)
  {
    v13 = objc_opt_self();
    v14 = v2;
    v15 = [v13 mainBundle];
    v21._object = 0x8000000100592090;
    v16._object = 0x8000000100592060;
    v21._countAndFlagsBits = 0xD000000000000038;
    v16._countAndFlagsBits = 0xD000000000000026;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v21);

    *(v5 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderText) = v18;

    v19 = *(v5 + OBJC_IVAR____TtC6FindMy20FMEmailTableViewCell_placeHolderLabel);
    v12 = String._bridgeToObjectiveC()();

    [v19 setText:v12];
    goto LABEL_6;
  }

  return v2;
}

id sub_100409E18()
{
  v1 = sub_1003421A0();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_6:

      v4 = static String.emailPredicate.getter();
      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 evaluateWithObject:v5];
      swift_bridgeObjectRelease_n();

      goto LABEL_8;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryEmailAddress + 8))
  {

    goto LABEL_6;
  }

  v6 = 0;
LABEL_8:
  result = *(v0 + OBJC_IVAR____TtC6FindMy21FMEmailViewController_nextButton);
  if (result)
  {

    return [result setEnabled:v6];
  }

  return result;
}

void sub_100409F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &object - v6;
  v36 = type metadata accessor for FMLostModeTrackable();
  v8 = __chkstk_darwin(v36);
  v10 = &object - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &object - v12;
  __chkstk_darwin(v11);
  v15 = &object - v14;
  v16 = sub_1003421A0();
  if (v16)
  {
    v17 = v16;
    [v16 resignFirstResponder];
  }

  v18 = [objc_opt_self() mainBundle];
  v38._object = 0x8000000100596D80;
  v19._object = 0x8000000100596D50;
  v38._countAndFlagsBits = 0xD000000000000032;
  v19._countAndFlagsBits = 0xD000000000000020;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v38);
  object = v21._object;
  countAndFlagsBits = v21._countAndFlagsBits;

  if (!*&v3[OBJC_IVAR____TtC6FindMy21FMEmailViewController_mediator])
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_device;
  swift_beginAccess();
  sub_100007204(&v3[v22], v7, &unk_1006BBCE0);
  v23 = type metadata accessor for FMIPDevice();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v25 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
  (*(v24 + 32))(v15, v7, v23);
  v26 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryItemPart;
  swift_beginAccess();
  sub_100007204(&v3[v26], &v15[v25], &qword_1006B07D0);
  swift_storeEnumTagMultiPayload();
  v27 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController());
  sub_1000970F8(v15, v13);
  *&v27[qword_1006B8820] = 0;
  *&v27[qword_1006D4360] = 0;
  v28 = &v27[qword_1006D4358];
  v29 = object;
  *v28 = countAndFlagsBits;
  *(v28 + 1) = v29;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v37;
  *(v28 + 5) = a2;
  v28[64] = 0;
  *(v28 + 6) = 0;
  *(v28 + 7) = 0;
  sub_1000970F8(v13, v10);
  *&v27[qword_1006B3A80] = 0;
  sub_1000970F8(v10, &v27[qword_1006D3E00]);

  v31 = sub_1003C3E60(v30);
  sub_10009715C(v13);
  sub_10009715C(v10);
  sub_10009715C(v15);
  v32 = [v3 navigationController];
  if (v32)
  {
    v33 = v32;
    [v32 pushViewController:v31 animated:1];
  }
}

void sub_10040A338()
{
  v0 = sub_1003421A0();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 text];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = static String.emailPredicate.getter();
      v7 = [v6 evaluateWithObject:v2];

      if (v7)
      {
        sub_100409F40(v3, v5);

        return;
      }
    }
  }

  sub_1003422F4();
}

id sub_10040A4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_device;
  v12 = type metadata accessor for FMIPDevice();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryItemPart;
  v14 = type metadata accessor for FMIPItem();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  v15 = &v7[OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryEmailAddress];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v17 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = String._bridgeToObjectiveC()();

LABEL_6:
  v21.receiver = v7;
  v21.super_class = type metadata accessor for FMDeviceEmailViewController();
  v19 = objc_msgSendSuper2(&v21, "initWithTitle:detailText:symbolName:contentLayout:", v16, v17, v18, a7);

  return v19;
}

id sub_10040A740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_device;
  v11 = type metadata accessor for FMIPDevice();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryItemPart;
  v13 = type metadata accessor for FMIPItem();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryEmailAddress];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v6;
  v19.super_class = type metadata accessor for FMDeviceEmailViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v15, v16, a5, a6);

  return v17;
}

uint64_t sub_10040A944()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_device, &unk_1006BBCE0);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy27FMDeviceEmailViewController_primaryItemPart, &qword_1006B07D0);
}

id sub_10040A9B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceEmailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDeviceEmailViewController()
{
  result = qword_1006BF020;
  if (!qword_1006BF020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10040AAC4()
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v0 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_10040ABCC()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching AuthKit account", v3, 2u);
  }

  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_altDSID];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() sharedInstance];
      v9 = [v8 authKitAccountWithAltDSID:v7];

      result = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
    }
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "AuthKit account not found.", v13, 2u);
  }

  return 0;
}

uint64_t sub_10040AE28(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v13 = *a1;
  v4 = *a2;
  if (!(a3 >> 62))
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_19:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v7 compareObject:v13 toObject:v4];
    type metadata accessor for ComparisonResult(0);
    if (v10)
    {
      break;
    }

    if (v9 == v5)
    {
      return 0;
    }
  }

  if (v10 == -1)
  {
    v11 = 1;
LABEL_16:

    return v11;
  }

  if (v10 == 1)
  {
    v11 = 0;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_10040AFBC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10040B0E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10040B21C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    v3 = 0x4050800000000000;
  }

  else
  {
    v3 = 0x4040800000000000;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10040B274()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10040B3B4(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    v3 = 0x4050800000000000;
  }

  else
  {
    v3 = 0x4046000000000000;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10040B408()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10040B524()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10040B638(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_10003C718();

  return swift_unknownObjectRelease();
}

uint64_t sub_10040B698(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for Feature.FindMy();
  v11[3] = My;
  v11[4] = sub_1000069D8();
  v5 = sub_100008FC0(v11);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v11);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMTerminalView: Stewie state did change to %ld", v9, 0xCu);
    }
  }

  if (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) != 1 || (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) & 1) == 0)
  {
    sub_10040BE38();
  }

  return sub_10003C718();
}

uint64_t sub_10040B85C(uint64_t a1, char a2, const char *a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 8u);
  }

  if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) != 1 || (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) & 1) == 0))
  {
    sub_10040BE38();
  }

  return sub_10003C718();
}

uint64_t sub_10040B9A8(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
    v11 = 0x8000000100579000;
    v12 = 0xD000000000000015;
    if (a1 != 5)
    {
      v12 = 0x6E6564646968;
      v11 = 0xE600000000000000;
    }

    v13 = 0xEF6569776574536BLL;
    if (a1 == 3)
    {
      v13 = 0xE90000000000006BLL;
    }

    if (a1 <= 4u)
    {
      v12 = 0x726F7774654E6F6ELL;
      v11 = v13;
    }

    v14 = 0xEE00746E756F6363;
    v15 = 0x41646567616E616DLL;
    if (a1 != 1)
    {
      v15 = 0x6E756F6363416F6ELL;
      v14 = 0xE900000000000074;
    }

    if (a1)
    {
      v10 = v15;
      v9 = v14;
    }

    if (a1 <= 2u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (a1 <= 2u)
    {
      v17 = v9;
    }

    else
    {
      v17 = v11;
    }

    v18 = sub_100005B4C(v16, v17, &v24);

    *(v7 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMTerminalView: Show terminal view, reason: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  [v2 setAlpha:1.0];
  [v2 setUserInteractionEnabled:1];
  [v2 setHidden:0];
  *(v2 + OBJC_IVAR____TtC6FindMy14FMTerminalView_isVisible) = 1;
  v19 = *(v2 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state);
  *(v2 + OBJC_IVAR____TtC6FindMy14FMTerminalView_state) = a1;
  if ((sub_10024E850(a1, v19) & 1) == 0)
  {
    (*((swift_isaMask & *v2) + 0x1E0))();
  }

  v20 = v2 + OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v2, 1, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10040BD04()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v7 + v8, v4);
  swift_beginAccess();

  sub_100058530(v6, v7 + v8);
  swift_endAccess();
  sub_100058594(v4);

  sub_10005D4E4(v4);
  return sub_10005D4E4(v6);
}

void sub_10040BE38()
{
  *(*(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) = 0;

  if ((dispatch thunk of FMFManager.isInitialized.getter() & 1) == 0)
  {
    dispatch thunk of FMFManager.initialize()();
  }

  sub_1000E503C();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "FMTerminalView: Retrying initialization", v3, 2u);
  }
}

uint64_t sub_10040BFAC()
{
  String.hash(into:)();
}

unint64_t sub_10040C0E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10040CAC4(*a1);
  *a2 = result;
  return result;
}

void sub_10040C110(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000100579000;
  v6 = 0xD000000000000015;
  if (v2 != 5)
  {
    v6 = 0x6E6564646968;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF6569776574536BLL;
  if (v2 == 3)
  {
    v7 = 0xE90000000000006BLL;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x726F7774654E6F6ELL;
    v5 = v7;
  }

  v8 = 0xEE00746E756F6363;
  v9 = 0x41646567616E616DLL;
  if (v2 != 1)
  {
    v9 = 0x6E756F6363416F6ELL;
    v8 = 0xE900000000000074;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_10040C20C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000015;
  if (v1 != 5)
  {
    v3 = 0x6E6564646968;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x726F7774654E6F6ELL;
  }

  v4 = 0x41646567616E616DLL;
  if (v1 != 1)
  {
    v4 = 0x6E756F6363416F6ELL;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10040C3B0()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy14FMTerminalView_delegate);
}

id sub_10040C3F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy14FMTerminalView_conditionSubcription];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(*&v0[OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator] + 16);
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v5 = v3;
  result = sub_1003CD738(&v3[v4], v2);
  v7 = *&v3[v4];
  if (v7 >> 62)
  {
    v9 = result;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    result = v9;
    if (v8 >= v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 >= result)
    {
LABEL_4:
      sub_1003CDB08(result, v8);
      swift_endAccess();

LABEL_5:
      v10.receiver = v1;
      v10.super_class = type metadata accessor for FMTerminalView();
      return objc_msgSendSuper2(&v10, "dealloc");
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10040C684()
{
  result = qword_1006BF080;
  if (!qword_1006BF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF080);
  }

  return result;
}

uint64_t sub_10040C724(const char *a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  return sub_10003C718();
}

void sub_10040C818()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000BD1D4(v2);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMTerminalView: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

unint64_t sub_10040CAC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622B60, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10040CB10()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100431238(v0, sub_10040CE84, v1);
}

void sub_10040CB84(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = v13;
    if (a2)
    {
      if (v13)
      {
        (*(v5 + 104))(v7, enum case for DiscoveryType.hawkeye(_:), v4);
        swift_errorRetain();
        swift_errorRetain();
        FMIPAccessoryError.init(underlyingError:discoveryType:)();
        swift_storeEnumTagMultiPayload();
        sub_100123FF0(v10);

LABEL_11:
        sub_10017C894(v10);
        return;
      }

      goto LABEL_12;
    }

    if (a1)
    {
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else if (v13)
    {
      *v10 = 0;
      v15 = enum case for FMIPAccessoryError.unknownPairingError(_:);
      v16 = type metadata accessor for FMIPAccessoryError();
      (*(*(v16 - 8) + 104))(v10, v15, v16);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v10);

      goto LABEL_11;
    }

LABEL_12:
  }
}

id sub_10040CE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingAccountUpdateCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10040CE8C()
{
  [v0 setDismissalType:3];
  v1 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_stackView];
  [v1 setAlignment:3];
  [v1 setAxis:1];
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v38 = sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005521F0;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_accountPictureImageView];
  *(inited + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_primaryAccountIdentifierLabel];
  *(inited + 40) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_secondaryAccountIdentifierLabel];
  *(inited + 48) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_disclaimerLabel];
  *(inited + 56) = v7;
  v8 = inited & 0xC000000000000001;
  p_ivar_lyt = inited & 0xFFFFFFFFFFFFFF8;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v10;
  v39 = v11;
  v40 = v12;
  v14 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = v14; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v16 = i;
    [v1 addArrangedSubview:{i, v38}];

    if (v8)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(p_ivar_lyt + 16) < 2uLL)
      {
        goto LABEL_23;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v1 addArrangedSubview:v17];

    if (v8)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(p_ivar_lyt + 16) < 3uLL)
      {
        goto LABEL_23;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v1 addArrangedSubview:v19];

    if (v8)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(p_ivar_lyt + 16) < 4uLL)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v21 = *(inited + 56);
    }

    v22 = v21;
    [v1 addArrangedSubview:v21];

    swift_setDeallocating();
    swift_arrayDestroy();
    v23 = swift_initStackObject();
    v1 = v23;
    *(v23 + 16) = xmmword_100552EF0;
    *(v23 + 32) = v13;
    *(v23 + 40) = v39;
    *(v23 + 48) = v40;
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
    v8 = v23 & 0xC000000000000001;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v25 = v13;
    }

    inited = v25;
    [v25 setNumberOfLines:0];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [inited setTextAlignment:1];

    if (v8)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*(v24 + 16) < 2uLL)
      {
        goto LABEL_24;
      }

      v26 = v1[5];
    }

    inited = v26;
    [v26 setNumberOfLines:0];
    [inited setTextAlignment:1];

    if (v8)
    {
      break;
    }

    if (*(v24 + 16) >= 3uLL)
    {
      v27 = v1[6];
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v28 = v27;
  [v27 setNumberOfLines:0];
  [v28 setTextAlignment:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = objc_opt_self();
  v30 = [v29 labelColor];
  [v13 setTextColor:v30];

  v31 = objc_opt_self();
  v32 = [v31 preferredFontForTextStyle:UIFontTextStyleBody];
  [v13 setFont:v32];

  v33 = [v29 secondaryLabelColor];
  [v39 setTextColor:v33];

  v34 = [v31 preferredFontForTextStyle:UIFontTextStyleBody];
  [v39 setFont:v34];

  v35 = [v31 preferredFontForTextStyle:UIFontTextStyleTitle3];
  [v40 setFont:v35];

  v36 = [v29 labelColor];
  [v40 setTextColor:v36];

  return [v40 setAdjustsFontForContentSizeCategory:1];
}

void sub_10040D3BC()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_stackView];
  [v1 addSubview:v2];

  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552F00;
  *(inited + 32) = v2;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_accountPictureImageView];
  *(inited + 40) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_primaryAccountIdentifierLabel];
  *(inited + 48) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_secondaryAccountIdentifierLabel];
  *(inited + 56) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_disclaimerLabel];
  *(inited + 64) = v7;
  v8 = inited & 0xC000000000000001;
  v9 = v2;
  v45 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = v9; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v14 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v8)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v15 = *(inited + 40);
    }

    v16 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v8)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v17 = *(inited + 48);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v8)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_17;
      }

      v19 = *(inited + 56);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v21 = *(inited + 64);
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v9 setCustomSpacing:v45 afterView:10.0];
  [v9 setCustomSpacing:v11 afterView:20.0];
  v46 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1005521F0;
  v24 = [v9 topAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 topAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];

  *(v23 + 32) = v28;
  v29 = [v9 leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v23 + 40) = v33;
  v34 = [v9 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 mainContentGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintEqualToAnchor:v37];

  *(v23 + 48) = v38;
  v39 = [v9 bottomAnchor];
  v40 = [v0 contentView];
  v41 = [v40 mainContentGuide];

  v42 = [v41 bottomAnchor];
  v43 = [v39 constraintLessThanOrEqualToAnchor:v42];

  *(v23 + 56) = v43;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];
}

id sub_10040D90C(uint64_t *a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v27._object = 0x8000000100579A00;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001005972D0;
  v6.value._object = 0x80000001005799E0;
  v27._countAndFlagsBits = 0xD000000000000018;
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v27);

  sub_10007EBC0(&unk_1006B20B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100552220;
  v10 = *a1;
  v9 = a1[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10008EE84();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;

  String.init(format:_:)();

  v11 = String._bridgeToObjectiveC()();

  [v1 setTitle:v11];

  v12 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_disclaimerLabel];
  v13 = [v3 mainBundle];
  v28._object = 0x8000000100579A00;
  v14._countAndFlagsBits = 0xD000000000000025;
  v14._object = 0x8000000100597300;
  v15.value._object = 0x80000001005799E0;
  v28._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v28);

  v17 = String._bridgeToObjectiveC()();

  [v12 setText:v17];

  if (*(a1 + 56) && *(a1 + 56) != 1)
  {
    v20 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_primaryAccountIdentifierLabel];
    v21 = String._bridgeToObjectiveC()();
    [v20 setText:v21];

    v22 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_secondaryAccountIdentifierLabel];
    v19 = String._bridgeToObjectiveC()();
    [v22 setText:v19];
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_primaryAccountIdentifierLabel];
    v19 = String._bridgeToObjectiveC()();
    [v18 setText:v19];
  }

  v23 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_accountPictureImageView];
  v24 = a1[2];

  return [v23 setImage:v24];
}

void sub_10040DBE4()
{
  v1 = [objc_opt_self() mainBundle];
  v12._object = 0x8000000100579A00;
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001005972A0;
  v3.value._object = 0x80000001005799E0;
  v12._countAndFlagsBits = 0xD000000000000018;
  v3.value._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v12);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10040DFE4;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10063D870;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();

  v9 = [v8 actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v10 = [v0 addAction:v9];
}

void sub_10040DDD4()
{
  v0 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v2);

      sub_10017C894(v2);
    }
  }
}

id sub_10040DF00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingRegistrationCard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10040DFEC(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_stackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_accountPictureImageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_primaryAccountIdentifierLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_secondaryAccountIdentifierLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy34FMAccessoryPairingRegistrationCard_disclaimerLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMAccessoryPairingRegistrationCard();
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

__n128 sub_10040E0F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10040E10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10040E154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10040E1B4()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy28FMTableViewSectionHeaderView_separatorView];
  v2 = [v1 superview];
  if (!v2)
  {
    isa = [v0 contentView];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 textLayoutGuide];
      if (v5)
      {
        v6 = v5;
        v7 = [objc_opt_self() separatorColor];
        [v1 setBackgroundColor:v7];

        [v1 setAutoresizingMask:10];
        [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v8 = isa;
        [v4 addSubview:v1];
        v9 = objc_opt_self();
        sub_10007EBC0(&qword_1006AFC30);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1005521F0;
        v11 = [v1 leadingAnchor];
        v12 = [v6 leadingAnchor];
        v13 = [v11 constraintEqualToAnchor:v12];

        *(v10 + 32) = v13;
        v14 = [v1 trailingAnchor];
        v15 = [v4 trailingAnchor];

        v16 = [v14 constraintEqualToAnchor:v15];
        *(v10 + 40) = v16;
        v17 = [v1 bottomAnchor];
        v18 = [v4 bottomAnchor];

        v19 = [v17 constraintEqualToAnchor:v18];
        *(v10 + 48) = v19;
        v20 = [v1 heightAnchor];
        v21 = objc_opt_self();
        v22 = [v21 mainScreen];
        [v22 scale];

        v23 = [v21 mainScreen];
        UIRoundToScreenScale();
        v25 = v24;

        v26 = [v20 constraintEqualToConstant:v25];
        *(v10 + 56) = v26;
        sub_10002B27C();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v9 activateConstraints:isa];
      }
    }

    v2 = isa;
  }
}

id sub_10040E750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTableViewSectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10040E784()
{
  sub_10011FD34();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMapSettingsView_modeSettingRow);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x80000001005973D0;
  v4._object = 0x80000001005973B0;
  v21._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0xD000000000000016;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v21);

  *(v1 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title) = v6;

  v7 = *(v1 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel);

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMapSettingsView_unitSettingRow);
  v11 = [v2 mainBundle];
  v22._object = 0x8000000100597420;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  v12._object = 0x8000000100597400;
  v22._countAndFlagsBits = 0xD00000000000002CLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v22);

  *(v10 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title) = v14;

  v15 = *(v10 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel);

  v16 = v15;
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  *(v10 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = 0;
  [*(v10 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator) setHidden:1];
  v18 = *(v0 + OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView);
  [v18 addArrangedSubview:v1];

  return [v18 addArrangedSubview:v10];
}

void sub_10040EA10()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handleModeTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy17FMMapSettingsView_modeSettingRow] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleUnitTap"];

  [*&v2[OBJC_IVAR____TtC6FindMy17FMMapSettingsView_unitSettingRow] addGestureRecognizer:v4];
}

id sub_10040ED14(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy17FMMapSettingsView_modeSettingRow;
  v4 = type metadata accessor for FMSettingRowView();
  v5 = objc_allocWithZone(v4);
  *&v1[v3] = sub_100502750(1, 0.0);
  v6 = OBJC_IVAR____TtC6FindMy17FMMapSettingsView_unitSettingRow;
  v7 = objc_allocWithZone(v4);
  *&v1[v6] = sub_100502750(1, 0.0);
  *&v1[OBJC_IVAR____TtC6FindMy17FMMapSettingsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FMMapSettingsView();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_10040EE18()
{
  v1 = v0 + OBJC_IVAR____TtC6FindMy17FMMapSettingsView_delegate;

  return sub_10005CD20(v1);
}

id sub_10040EE68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMapSettingsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10040EF1C()
{
  *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_titleLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_subtitleLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_infoButton;
  *&v0[v3] = [objc_opt_self() buttonWithType:2];
  v4 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_popoverView;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_calloutView;
  type metadata accessor for FMCalloutView();
  *&v0[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_blurredBackground;
  *&v0[v6] = [objc_allocWithZone(UIVisualEffectView) init];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMNoLocationCalloutViewController();
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

id sub_10040F100()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for FMNoLocationCalloutViewController();
  objc_msgSendSuper2(&v15, "viewDidLayoutSubviews");
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_calloutView];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v12;
    v16.size.height = v14;
    v17 = CGRectInset(v16, -1.0 / v3, -1.0 / v3);
    return [v4 setFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040F258()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_blurredBackground];
  v3 = String._bridgeToObjectiveC()();
  [v2 _setGroupName:v3];

  if (qword_1006AEC38 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    [v2 _setCaptureView:qword_1006D47B8];
    v4 = [objc_opt_self() effectWithStyle:1200];
    [v2 setEffect:v4];

    v5 = *&v1[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_popoverView];
    v40 = v2;
    [v5 addSubview:v2];
    v6 = *&v1[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_titleLabel];
    v7 = objc_opt_self();
    v8 = [v7 preferredFontForTextStyle:UIFontTextStyleBody];
    v9 = sub_100039388(0x8000);

    [v6 setFont:v9];
    [v6 setNumberOfLines:0];
    v10 = objc_opt_self();
    v11 = [v10 labelColor];
    [v6 setTextColor:v11];

    [v6 setAdjustsFontForContentSizeCategory:1];
    v12 = *&v1[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_subtitleLabel];
    v13 = [v7 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v14 = sub_100039388(0x8000);

    [v12 setFont:v14];
    [v12 setNumberOfLines:0];
    v15 = [v10 secondaryLabelColor];
    [v12 setTextColor:v15];

    [v12 setAdjustsFontForContentSizeCategory:1];
    v16 = *&v1[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_infoButton];
    v17 = [v10 secondaryLabelColor];
    [v16 setTintColor:v17];

    sub_10007EBC0(&qword_1006AFC30);
    inited = swift_initStackObject();
    *(inited + 32) = v5;
    *(inited + 16) = xmmword_1005521F0;
    *(inited + 40) = v6;
    *(inited + 48) = v12;
    *(inited + 56) = v16;
    v2 = (inited & 0xC000000000000001);
    v19 = v5;
    v20 = v6;
    v21 = v12;
    v22 = v16;
    if ((inited & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v23 = v19;
    }

    v24 = v23;
    v25 = [v1 view];
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    [v25 addSubview:v24];

    if (v2)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v27 = *(inited + 40);
    }

    v28 = v27;
    v29 = [v1 view];
    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = v29;
    [v29 addSubview:v28];

    if (v2)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_19;
      }

      v31 = *(inited + 48);
    }

    v32 = v31;
    v33 = [v1 view];
    if (!v33)
    {
      goto LABEL_25;
    }

    v34 = v33;
    [v33 addSubview:v32];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v35 = *(inited + 56);
      goto LABEL_17;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v36 = v35;
  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:v36];

    swift_setDeallocating();
    swift_arrayDestroy();
    [v22 addTarget:v1 action:"infoButtonPressed" forControlEvents:64];
    v39 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"infoButtonPressed"];
    [v40 addGestureRecognizer:v39];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_10040F7B0()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  v118 = xmmword_100552F00;
  *(inited + 16) = xmmword_100552F00;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_blurredBackground];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_popoverView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_titleLabel];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_subtitleLabel];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_infoButton];
  *(inited + 64) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v2;
  v9 = v3;
  v120 = v4;
  v119 = v5;
  v10 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  for (i = v8; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v12 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:{0, v118}];

    if (v7)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_30;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_30;
      }

      v15 = *(inited + 48);
    }

    v16 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_30;
      }

      v17 = *(inited + 56);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v19 = *(inited + 64);
      goto LABEL_16;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1005521F0;
  v22 = [v8 leadingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_37;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v21 + 32) = v26;
  v27 = [v8 trailingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v21 + 40) = v31;
  v32 = [v8 topAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  *(v21 + 48) = v36;
  v37 = [v8 bottomAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 bottomAnchor];

  v42 = [v37 constraintEqualToAnchor:v41];
  *(v21 + 56) = v42;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:isa];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1005521F0;
  v45 = [v9 leadingAnchor];
  v46 = [v0 view];
  if (!v46)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v44 + 32) = v49;
  v50 = [v9 trailingAnchor];
  v51 = [v0 view];
  if (!v51)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v52 = v51;
  v121 = v10;
  v53 = [v51 trailingAnchor];

  v54 = [v50 constraintEqualToAnchor:v53];
  *(v44 + 40) = v54;
  v55 = [v9 topAnchor];
  v56 = [v0 view];
  if (!v56)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  *(v44 + 48) = v59;
  v60 = [v9 bottomAnchor];
  v61 = [v0 view];
  if (!v61)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v62 = v61;
  v63 = [v61 bottomAnchor];

  v64 = [v60 constraintEqualToAnchor:v63];
  *(v44 + 56) = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:v65];

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100552EF0;
  v67 = [v120 leadingAnchor];
  v68 = [v0 view];
  if (!v68)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v69 = v68;
  v70 = [v68 leadingAnchor];

  v71 = [v67 constraintEqualToAnchor:v70 constant:21.0];
  *(v66 + 32) = v71;
  v72 = [v120 trailingAnchor];
  v73 = [v121 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-8.0];

  *(v66 + 40) = v74;
  v75 = [v120 topAnchor];
  v76 = [v0 view];
  if (!v76)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v77 = v76;
  v78 = [v76 layoutMarginsGuide];

  v79 = [v78 topAnchor];
  v80 = [v75 constraintEqualToAnchor:v79 constant:7.0];

  *(v66 + 48) = v80;
  v81 = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:v81];

  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1005521F0;
  v83 = [v119 topAnchor];
  v84 = [v120 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v82 + 32) = v85;
  v86 = [v119 trailingAnchor];
  v87 = [v120 trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v82 + 40) = v88;
  v89 = [v119 leadingAnchor];
  v90 = [v120 leadingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v82 + 48) = v91;
  v92 = [v119 bottomAnchor];
  v93 = [v0 view];
  if (!v93)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v94 = v93;
  v95 = [v93 layoutMarginsGuide];

  v96 = [v95 bottomAnchor];
  v97 = [v92 constraintEqualToAnchor:v96 constant:-9.0];

  *(v82 + 56) = v97;
  v98 = Array._bridgeToObjectiveC()().super.isa;

  [v40 activateConstraints:v98];

  v99 = swift_allocObject();
  *(v99 + 16) = v118;
  v100 = [v121 leadingAnchor];
  v101 = [v120 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v99 + 32) = v102;
  v103 = [v121 widthAnchor];
  v104 = [v103 constraintEqualToConstant:24.0];

  *(v99 + 40) = v104;
  v105 = [v121 heightAnchor];
  v106 = [v105 constraintEqualToConstant:24.0];

  *(v99 + 48) = v106;
  v107 = [v121 trailingAnchor];
  v108 = [v0 view];
  if (!v108)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v109 = v108;
  v110 = [v108 trailingAnchor];

  v111 = [v107 constraintEqualToAnchor:v110 constant:-8.0];
  *(v99 + 56) = v111;
  v112 = [v121 centerYAnchor];
  v113 = [v0 view];
  if (v113)
  {
    v114 = v113;
    v115 = [v113 centerYAnchor];

    v116 = [v112 constraintEqualToAnchor:v115];
    *(v99 + 64) = v116;
    v117 = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:v117];

    return;
  }

LABEL_48:
  __break(1u);
}

id sub_1004105D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoLocationCalloutViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004106CC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_infoButton;
  *(v0 + v3) = [objc_opt_self() buttonWithType:2];
  v4 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_popoverView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_calloutView;
  type metadata accessor for FMCalloutView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC6FindMy33FMNoLocationCalloutViewController_blurredBackground;
  *(v0 + v6) = [objc_allocWithZone(UIVisualEffectView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10041081C(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v5)
  {
    v6 = v4;
LABEL_9:

LABEL_10:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "FMCardPresentationTransition: Invalid presented view controller", v12, 2u);
    }

    goto LABEL_19;
  }

  v6 = v5;
  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v9)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "FMCardPresentationTransition: Invalid presenting view controller", v15, 2u);
    }

    goto LABEL_18;
  }

  oslog = v9;
  if (*(v1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration) == 0.0)
  {
    [v4 viewWillAppear:0];
    sub_100411274(v6, v8, v4, oslog);
    [a1 completeTransition:1];
LABEL_18:

LABEL_19:
    v16 = oslog;
    goto LABEL_20;
  }

  [v4 viewWillAppear:1];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  swift_unknownObjectRetain();
  sub_100410BB0(v6, v8, v4, oslog, sub_1001A8698, v17);

  v16 = v6;
LABEL_20:
}

void sub_100410BB0(uint64_t a1, uint64_t a2, id a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = [a3 view];
  if (v13)
  {
    v39 = v13;
    v14 = [a4 view];
    if (v14)
    {
      v15 = v14;
      v16 = [a3 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 window];

        if (v18)
        {
          [v18 bounds];
          v20 = v19;

          v21 = v20 + 400.0;
        }

        else
        {
          v21 = 400.0;
        }

        if (qword_1006AEC30 != -1)
        {
          swift_once();
        }

        if (qword_1006D47A0 == 1)
        {
          v22 = v21;
        }

        else
        {
          v22 = -400.0;
        }

        [v15 bounds];
        Width = CGRectGetWidth(v47);
        [v15 bounds];
        Height = CGRectGetHeight(v48);
        [v39 setHidden:0];
        [v39 setAlpha:0.8];
        [v15 frame];
        v26 = v25;
        [v15 frame];
        [v39 setFrame:v26];
        v27 = objc_opt_self();
        v28 = *&v6[OBJC_IVAR____TtC6FindMy16FMCardTransition_duration];
        v29 = *&v6[OBJC_IVAR____TtC6FindMy16FMCardTransition_delay];
        v30 = swift_allocObject();
        *(v30 + 16) = v6;
        *(v30 + 24) = a1;
        *(v30 + 32) = a2;
        *(v30 + 40) = a3;
        *(v30 + 48) = v15;
        *(v30 + 56) = v22;
        *(v30 + 64) = Width;
        *(v30 + 72) = Height;
        *(v30 + 80) = v39;
        v44 = sub_1004114AC;
        v45 = v30;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_100004AE4;
        v43 = &unk_10063D980;
        v31 = _Block_copy(&aBlock);
        v32 = v6;
        swift_unknownObjectRetain();
        v33 = a3;
        v34 = v15;
        v35 = v39;

        v36 = swift_allocObject();
        *(v36 + 16) = v38;
        *(v36 + 24) = a6;
        v44 = sub_100009624;
        v45 = v36;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_10037A044;
        v43 = &unk_10063D9D0;
        v37 = _Block_copy(&aBlock);

        [v27 animateKeyframesWithDuration:4096 delay:v31 options:v37 animations:v28 completion:v29];
        _Block_release(v37);
        _Block_release(v31);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_100410FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v18 = objc_opt_self();
  v19 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration) + *(a1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a6;
  v25[4] = sub_1004114C8;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100004AE4;
  v25[3] = &unk_10063DA20;
  v21 = _Block_copy(v25);
  swift_unknownObjectRetain();
  v22 = a4;
  v23 = a5;
  v24 = a6;

  [v18 addKeyframeWithRelativeStartTime:v21 relativeDuration:0.0 animations:v19];
  _Block_release(v21);
}

id sub_100411104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 24))(a1, a2, a3, ObjectType, a2);
  [a4 frame];
  [a4 setFrame:a6];

  return [a5 setAlpha:1.0];
}

id sub_10041121C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardDismissedRegularTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100411274(uint64_t a1, uint64_t a2, id a3, void *a4)
{
  v8 = [a3 view];
  if (v8)
  {
    v9 = v8;
    v10 = [a4 view];
    if (v10)
    {
      v19 = v10;
      v11 = [a3 view];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {
        [v13 bounds];
        v15 = v14;

        v16 = v15 + 400.0;
      }

      else
      {
        v16 = 400.0;
      }

      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      if (qword_1006D47A0 != 1)
      {
        v16 = -400.0;
      }

      [v19 bounds];
      CGRectGetWidth(v21);
      [v19 bounds];
      CGRectGetHeight(v22);
      ObjectType = swift_getObjectType();
      (*(a2 + 24))(a1, a2, a3, ObjectType, a2);
      [v9 setAlpha:1.0];
      [v9 setHidden:0];
      [v19 frame];
      [v19 setFrame:v16];

      v17 = v19;
    }

    else
    {
      v17 = v9;
    }
  }
}

id sub_1004114EC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_selectedDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pauseSection;
  v7 = type metadata accessor for FMSectionPlatterGroupView();
  *&v2[v6] = [objc_allocWithZone(v7) init];
  v8 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection;
  *&v2[v8] = [objc_allocWithZone(v7) init];
  v9 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView;
  v10 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *&v2[v9] = sub_100502750(0, 0.0);
  v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn] = 1;
  type metadata accessor for FMPersonDetailDataSource();
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_personDetailDataSource] = sub_1003C8C08(v11);
  v12 = [objc_allocWithZone(UIDatePicker) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker] = v12;
  v13 = [objc_allocWithZone(UIBarButtonItem) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_doneButton] = v13;
  v14 = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel] = v14;
  v15 = [objc_allocWithZone(NSDateFormatter) init];
  *&v2[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_dateFormatter] = v15;
  v16 = v15;
  v17 = String._bridgeToObjectiveC()();
  [v16 setLocalizedDateFormatFromTemplate:v17];

  *&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = a1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FMMediatedViewController();
  return objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
}

void sub_100411738()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for FMPauseNotificationsViewController();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 addSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pauseSection]];

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview:*&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection]];

    sub_100411AF4();
    sub_100411F50();
    sub_1004124E0();
    v8 = objc_allocWithZone(UIBarButtonItem);
    v9 = v0;
    v10 = [v8 initWithBarButtonSystemItem:1 target:v9 action:"cancelAction"];
    v11 = [v9 navigationItem];
    [v11 setLeftBarButtonItem:v10];

    v12 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v9 action:"doneAction"];
    v13 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_doneButton;
    v14 = *&v9[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_doneButton];
    *&v9[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_doneButton] = v12;

    v15 = [v9 navigationItem];
    sub_10007EBC0(&qword_1006AFC30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1005528C0;
    v17 = *&v9[v13];
    *(v16 + 32) = v17;
    sub_10000905C(0, &qword_1006B0160);
    v18 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setRightBarButtonItems:isa animated:0];

    v20 = [v9 navigationItem];
    v21 = [objc_opt_self() mainBundle];
    v27._object = 0x800000010057ABB0;
    v22._countAndFlagsBits = 0xD000000000000026;
    v22._object = 0x8000000100597740;
    v23.value._object = 0x800000010057AB90;
    v27._countAndFlagsBits = 0xD000000000000017;
    v23.value._countAndFlagsBits = 0xD000000000000012;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v27);

    v25 = String._bridgeToObjectiveC()();

    [v20 setTitle:v25];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100411AF4()
{
  v31 = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v33._object = 0x800000010057ABB0;
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001005976D0;
  v4.value._object = 0x800000010057AB90;
  v33._countAndFlagsBits = 0xD000000000000017;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v33);

  *&v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v6;

  v7 = *&v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn;
  v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 1;
  [*&v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:1];
  v11 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn;
  v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn] = v31[v10];
  v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = 0;
  [*&v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:1];
  *&v31[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_10063DA50;
  swift_unknownObjectWeakAssign();
  [*(*&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pauseSection] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:v31];
  v12 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel;
  v13 = *&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel];
  v14 = [v1 mainBundle];
  v34._object = 0x800000010057ABB0;
  v15._countAndFlagsBits = 0xD000000000000033;
  v15._object = 0x8000000100597700;
  v16.value._object = 0x800000010057AB90;
  v34._countAndFlagsBits = 0xD000000000000017;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v34);

  v18 = String._bridgeToObjectiveC()();

  [v13 setText:v18];

  v19 = *&v0[v12];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v21 setFont:v22];

  v23 = *&v0[v12];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 secondaryLabelColor];
  [v25 setTextColor:v26];

  [*&v0[v12] sizeToFit];
  [*&v0[v12] setHidden:1];
  v27 = [v0 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:*&v0[v12]];

    v29 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker;
    if (v0[v11])
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 0.5;
    }

    [*&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker] setUserInteractionEnabled:?];
    [*&v0[v29] setAlpha:v30];
  }

  else
  {
    __break(1u);
  }
}

void sub_100411F50()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v2 - 8);
  v49 = v39 - v3;
  v4 = type metadata accessor for TimeZone();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Locale();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Date();
  v43 = *(v41 - 8);
  v13 = v43;
  v14 = __chkstk_darwin(v41);
  v40 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v39 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView);
  v44 = v18;
  *(v18 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = 1;
  [*(v18 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator) setHidden:0];
  v19 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker;
  [*(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker) setPreferredDatePickerStyle:3];
  [*(v1 + v19) setDatePickerMode:1];
  [*(v1 + v19) addTarget:v1 action:"dateChanged" forControlEvents:4096];
  v20 = *(v1 + v19);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v22 = v13 + 8;
  v23 = *(v13 + 8);
  v24 = v41;
  v39[0] = v23;
  v39[1] = v22;
  v23(v17, v41);
  [v20 setMinimumDate:isa];

  v25 = *(v1 + v19);
  static Locale.current.getter();
  v26 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v42);
  [v25 setLocale:v26];

  v27 = *(v1 + v19);
  static Calendar.current.getter();
  v28 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v45 + 8))(v9, v46);
  [v27 setCalendar:v28];

  v29 = *(v1 + v19);
  static TimeZone.current.getter();
  v30 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v47 + 8))(v6, v48);
  [v29 setTimeZone:v30];

  v31 = *(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection);
  v32 = OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView;
  [*(v31 + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:v44];
  [*(v31 + v32) addArrangedSubview:*(v1 + v19)];
  v33 = v49;
  sub_10041454C(v49);
  v34 = v33;
  v35 = v43;
  if ((*(v43 + 48))(v34, 1, v24) == 1)
  {
    sub_100012DF0(v34, &unk_1006B0000);
  }

  else
  {
    v36 = v40;
    (*(v35 + 32))(v40, v34, v24);
    v37 = *(v1 + v19);
    v38 = Date._bridgeToObjectiveC()().super.isa;
    [v37 setDate:v38];

    (v39[0])(v36, v24);
  }

  sub_100412C98();
}

void sub_1004124E0()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pauseSection];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = &type metadata for SolariumFeatureFlag;
  v65 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v63);
  v5 = 16.0;
  if ((v4 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1006D4798;
  }

  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552EF0;
  v7 = [v1 topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 safeAreaLayoutGuide];

  v11 = [v10 topAnchor];
  v12 = [v7 constraintEqualToAnchor:v11 constant:7.0];

  *(v6 + 32) = v12;
  v13 = [v1 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v62 = v2;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor:v17 constant:v5];

  *(v6 + 40) = v18;
  v19 = [v1 trailingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v21 safeAreaLayoutGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v19 constraintEqualToAnchor:v24 constant:-v5];

  *(v6 + 48) = v25;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v61 = v22;
  [v22 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100552EF0;
  v28 = [*&v0[v3] topAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:2.0];

  *(v27 + 32) = v30;
  v31 = [*&v0[v3] leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 leadingAnchor];
  v36 = [v31 constraintEqualToAnchor:v35 constant:v5];

  *(v27 + 40) = v36;
  v37 = [*&v0[v3] trailingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v38;
  v40 = [v38 safeAreaLayoutGuide];

  v41 = [v40 trailingAnchor];
  v42 = [v37 constraintEqualToAnchor:v41 constant:-v5];

  *(v27 + 48) = v42;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:v43];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100552EF0;
  v45 = [v62 topAnchor];
  v46 = [v1 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:7.0];

  *(v44 + 32) = v47;
  v48 = [v62 leadingAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 leadingAnchor];
  v53 = [v48 constraintEqualToAnchor:v52 constant:v5];

  *(v44 + 40) = v53;
  v54 = [v62 trailingAnchor];
  v55 = [v0 view];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 safeAreaLayoutGuide];

    v58 = [v57 trailingAnchor];
    v59 = [v54 constraintEqualToAnchor:v58 constant:-v5];

    *(v44 + 48) = v59;
    v60 = Array._bridgeToObjectiveC()().super.isa;

    [v61 activateConstraints:v60];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_100412C98()
{
  v143 = sub_10007EBC0(&unk_1006B00E0);
  v1 = __chkstk_darwin(v143);
  v136 = &v124[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v144 = &v124[-v3];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v129 = &v124[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v135 = &v124[-v9];
  v10 = __chkstk_darwin(v8);
  v12 = &v124[-v11];
  __chkstk_darwin(v10);
  v141 = &v124[-v13];
  v14 = sub_10007EBC0(&unk_1006B0000);
  v15 = __chkstk_darwin(v14 - 8);
  v132 = &v124[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v130 = &v124[-v18];
  v19 = __chkstk_darwin(v17);
  v139 = &v124[-v20];
  v21 = __chkstk_darwin(v19);
  v134 = &v124[-v22];
  v23 = __chkstk_darwin(v21);
  v142 = &v124[-v24];
  v25 = __chkstk_darwin(v23);
  v133 = &v124[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v124[-v28];
  v30 = __chkstk_darwin(v27);
  v32 = &v124[-v31];
  v33 = __chkstk_darwin(v30);
  v35 = &v124[-v34];
  __chkstk_darwin(v33);
  v37 = &v124[-v36];
  v38 = [*(v0 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker) date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v140 = *(v5 + 56);
  v140(v37, 0, 1, v4);
  v39 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_selectedDate;
  swift_beginAccess();
  sub_10040682C(v37, v0 + v39);
  swift_endAccess();
  if (*(v0 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn) != 1)
  {
    [*(*(v0 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel) setText:0];
    return;
  }

  v127 = v39;
  sub_100007204(v0 + v39, v32, &unk_1006B0000);
  v40 = *(v5 + 48);
  v41 = (v40)(v32, 1, v4);
  v137 = v0;
  if (v41)
  {
    sub_100012DF0(v32, &unk_1006B0000);
    v140(v35, 1, 1, v4);
  }

  else
  {
    v42 = v141;
    (*(v5 + 16))(v141, v32, v4);
    sub_100012DF0(v32, &unk_1006B0000);
    sub_1000C95EC(v35);
    (*(v5 + 8))(v42, v4);
  }

  Date.init()();
  sub_1000C95EC(v29);
  v126 = v5;
  v43 = *(v5 + 8);
  v138 = v5 + 8;
  v131 = v43;
  v43(v12, v4);
  v44 = v144;
  v45 = *(v143 + 48);
  sub_100007204(v35, v144, &unk_1006B0000);
  v46 = v44;
  sub_100007204(v29, &v44[v45], &unk_1006B0000);
  v47 = (v40)(v44, 1, v4);
  v128 = v4;
  v48 = v142;
  if (v47 == 1)
  {
    sub_100012DF0(v29, &unk_1006B0000);
    v49 = v144;
    sub_100012DF0(v35, &unk_1006B0000);
    v50 = (v40)(&v49[v45], 1, v4);
    v51 = v131;
    if (v50 == 1)
    {
      sub_100012DF0(v49, &unk_1006B0000);
LABEL_15:
      v62 = objc_opt_self();
      v63 = [v62 mainBundle];
      v145._object = 0x800000010057ABB0;
      v64._countAndFlagsBits = 0xD000000000000027;
      v64._object = 0x80000001005976A0;
      v65.value._object = 0x800000010057AB90;
      v145._countAndFlagsBits = 0xD000000000000017;
      v65.value._countAndFlagsBits = 0xD000000000000012;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v145);

      v67 = String.init(format:_:)();
      v69 = v68;

      v70 = *(v137 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView);
      v71 = [v62 mainBundle];
LABEL_28:
      v112 = v71;
      v148._object = 0x800000010057ABB0;
      v113._countAndFlagsBits = 0xD00000000000002DLL;
      v113._object = 0x8000000100597640;
      v114.value._object = 0x800000010057AB90;
      v148._countAndFlagsBits = 0xD000000000000017;
      v114.value._countAndFlagsBits = 0xD000000000000012;
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v112, v115, v148);

      sub_10007EBC0(&unk_1006B20B0);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_100552220;
      *(v116 + 56) = &type metadata for String;
      *(v116 + 64) = sub_10008EE84();
      *(v116 + 32) = v67;
      *(v116 + 40) = v69;
      v117 = String.init(format:_:)();
      v119 = v118;

      v120 = (v70 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title);
      *v120 = v117;
      v120[1] = v119;

      v121 = *(v70 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel);

      v122 = v121;
      v123 = String._bridgeToObjectiveC()();

      [v122 setText:v123];

      return;
    }

    goto LABEL_11;
  }

  v52 = v142;
  v53 = v133;
  sub_100007204(v46, v133, &unk_1006B0000);
  if ((v40)(v46 + v45, 1, v4) == 1)
  {
    sub_100012DF0(v29, &unk_1006B0000);
    v49 = v144;
    sub_100012DF0(v35, &unk_1006B0000);
    v54 = v4;
    v51 = v131;
    v131(v53, v54);
    v48 = v52;
LABEL_11:
    sub_100012DF0(v49, &unk_1006B00E0);
    goto LABEL_12;
  }

  v58 = v141;
  (*(v126 + 32))(v141, v46 + v45, v4);
  sub_100415010();
  v59 = v4;
  v125 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = v4;
  v51 = v131;
  v131(v58, v60);
  sub_100012DF0(v29, &unk_1006B0000);
  sub_100012DF0(v35, &unk_1006B0000);
  v61 = v53;
  v48 = v142;
  v51(v61, v59);
  sub_100012DF0(v144, &unk_1006B0000);
  if (v125)
  {
    goto LABEL_15;
  }

LABEL_12:
  v55 = v134;
  sub_100007204(v137 + v127, v134, &unk_1006B0000);
  v56 = v128;
  v144 = v40;
  if ((v40)(v55, 1, v128))
  {
    sub_100012DF0(v55, &unk_1006B0000);
    v140(v48, 1, 1, v56);
  }

  else
  {
    v72 = v141;
    (*(v126 + 16))(v141, v55, v56);
    sub_100012DF0(v55, &unk_1006B0000);
    sub_1000C95EC(v48);
    v51(v72, v56);
  }

  v57 = v136;
  v73 = v139;
  v74 = v135;
  Date.init()();
  sub_1000C9954(v73);
  v51(v74, v56);
  v75 = *(v143 + 48);
  sub_100007204(v48, v57, &unk_1006B0000);
  sub_100007204(v73, v57 + v75, &unk_1006B0000);
  v76 = v144;
  if ((v144)(v57, 1, v56) == 1)
  {
    sub_100012DF0(v73, &unk_1006B0000);
    sub_100012DF0(v48, &unk_1006B0000);
    v77 = v76(v57 + v75, 1, v56);
    v78 = v137;
    if (v77 == 1)
    {
      sub_100012DF0(v57, &unk_1006B0000);
LABEL_27:
      v106 = objc_opt_self();
      v107 = [v106 mainBundle];
      v147._object = 0x800000010057ABB0;
      v108._countAndFlagsBits = 0xD00000000000002ALL;
      v108._object = 0x8000000100597670;
      v109.value._object = 0x800000010057AB90;
      v147._countAndFlagsBits = 0xD000000000000017;
      v109.value._countAndFlagsBits = 0xD000000000000012;
      v110._countAndFlagsBits = 0;
      v110._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v107, v110, v147);

      v67 = String.init(format:_:)();
      v69 = v111;

      v70 = *(v78 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView);
      v71 = [v106 mainBundle];
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v79 = v130;
  sub_100007204(v57, v130, &unk_1006B0000);
  if (v76(v57 + v75, 1, v56) == 1)
  {
    sub_100012DF0(v139, &unk_1006B0000);
    sub_100012DF0(v142, &unk_1006B0000);
    v51(v79, v56);
    v78 = v137;
LABEL_22:
    sub_100012DF0(v57, &unk_1006B00E0);
    goto LABEL_23;
  }

  v103 = v141;
  (*(v126 + 32))(v141, v57 + v75, v56);
  sub_100415010();
  v104 = v79;
  v105 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51(v103, v56);
  sub_100012DF0(v139, &unk_1006B0000);
  sub_100012DF0(v142, &unk_1006B0000);
  v131(v104, v56);
  v51 = v131;
  sub_100012DF0(v57, &unk_1006B0000);
  v78 = v137;
  if (v105)
  {
    goto LABEL_27;
  }

LABEL_23:
  v80 = v132;
  sub_100007204(v78 + v127, v132, &unk_1006B0000);
  v81 = v128;
  if ((v144)(v80, 1, v128) == 1)
  {
    sub_100012DF0(v80, &unk_1006B0000);
  }

  else
  {
    v82 = v129;
    (*(v126 + 32))(v129, v80, v81);
    v83 = *(v78 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_dateFormatter);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v85 = v51;
    v86 = [v83 stringFromDate:isa];

    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = *(v78 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView);
    v91 = [objc_opt_self() mainBundle];
    v146._object = 0x800000010057ABB0;
    v92._countAndFlagsBits = 0xD00000000000002DLL;
    v92._object = 0x8000000100597640;
    v93.value._object = 0x800000010057AB90;
    v146._countAndFlagsBits = 0xD000000000000017;
    v93.value._countAndFlagsBits = 0xD000000000000012;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v92, v93, v91, v94, v146);

    sub_10007EBC0(&unk_1006B20B0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_100552220;
    *(v95 + 56) = &type metadata for String;
    *(v95 + 64) = sub_10008EE84();
    *(v95 + 32) = v87;
    *(v95 + 40) = v89;
    v96 = String.init(format:_:)();
    v98 = v97;

    v99 = (v90 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title);
    *v99 = v96;
    v99[1] = v98;

    v100 = *(v90 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel);

    v101 = v100;
    v102 = String._bridgeToObjectiveC()();

    [v101 setText:v102];

    v85(v82, v81);
  }
}

uint64_t sub_100413D20()
{
  v54 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v54);
  v55 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for FMFFriend();
  v50 = *(v57 - 8);
  v2 = __chkstk_darwin(v57);
  v48 = v3;
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v46 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B0000);
  v9 = __chkstk_darwin(v8 - 8);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - v14;
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  sub_100437A74(0);
  v51 = *(v6 + 56);
  v51(v17, 1, 1, v5);
  v18 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_selectedDate;
  v19 = v0;
  swift_beginAccess();
  sub_100007204(&v0[v18], v15, &unk_1006B0000);
  v47 = v6;
  v20 = *(v6 + 48);
  v58 = v5;
  v21 = v20(v15, 1, v5);
  sub_100012DF0(v15, &unk_1006B0000);
  if (v19[OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn])
  {
    v22 = v21;
    v23 = &v19[v18];
    v24 = v52;
    sub_100007204(v23, v52, &unk_1006B0000);
    v25 = v58;
    if (v20(v24, 1, v58) == 1)
    {
      sub_100012DF0(v24, &unk_1006B0000);
      if (v22 == 1)
      {
        [v19 dismissViewControllerAnimated:1 completion:0];
        v26 = v17;
        return sub_100012DF0(v26, &unk_1006B0000);
      }
    }

    else
    {
      v27 = v46;
      v28 = v47;
      (*(v47 + 32))(v46, v24, v25);
      v29 = v53;
      sub_1000CA3A0(v53);
      (*(v28 + 8))(v27, v25);
      sub_100012DF0(v17, &unk_1006B0000);
      sub_100414FA0(v29, v17);
    }
  }

  else
  {
    sub_100012DF0(v17, &unk_1006B0000);
    v51(v17, 1, 1, v58);
  }

  v30 = *(*&v19[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
  v31 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v55;
  sub_100062074(v32, v55);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v34 = v50;
    v58 = *(v50 + 32);
    v35 = v56;
    v58(v56, v33, v57);
    FMFFriend.identifier.getter();
    sub_100007204(v17, v53, &unk_1006B0000);
    type metadata accessor for FMFMuteFencesAction();
    swift_allocObject();
    v36 = FMFMuteFencesAction.init(friendId:endDate:)();
    v37 = *(v34 + 16);
    v55 = v17;
    v38 = v49;
    v39 = v35;
    v40 = v57;
    v37(v49, v39, v57);
    v41 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v42 = (v48 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v58(v43 + v41, v38, v40);
    *(v43 + v42) = v19;

    v44 = v19;
    sub_1000FB600(v36, sub_100414EF4, v43);

    (*(v34 + 8))(v56, v40);
    v26 = v55;
    return sub_100012DF0(v26, &unk_1006B0000);
  }

  sub_100012DF0(v17, &unk_1006B0000);
  return sub_10005D4E4(v33);
}

id sub_10041437C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10007EBC0(&unk_1006B20B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005528D0;
  v7 = FMFFriend.identifier.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_10008EE84();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  type metadata accessor for FMFActionStatus();
  _print_unlocked<A, B>(_:_:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570);
  v11 = String.init<A>(describing:)();
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  *(v6 + 112) = v11;
  *(v6 + 120) = v12;
  sub_10000905C(0, &qword_1006BF2B8);
  v13 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return [a4 dismissViewControllerAnimated:1 completion:{0, a2}];
}

uint64_t sub_10041454C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = type metadata accessor for FMFLocationAlert();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v4 - 8);
  v41 = &v38 - v5;
  v6 = sub_10007EBC0(&qword_1006B0050);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMFFriend();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v1 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v19 + v20, v14);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v16 + 32))(v18, v14, v15);

    v21 = FMFFriend.identifier.getter();
    sub_1000BD300(v21, v22, v11);

    sub_100007204(v11, v9, &qword_1006B0050);
    v23 = (v16 + 8);
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_100012DF0(v11, &qword_1006B0050);
      (*v23)(v18, v15);
      v24 = v9;
      v25 = &qword_1006B0050;
LABEL_12:
      sub_100012DF0(v24, v25);
      goto LABEL_13;
    }

    v26 = FMFFriend.locationAlertsOnFriend.getter();
    v27 = *v23;
    (*v23)(v9, v15);
    if (v26)
    {
      if (*(v26 + 16))
      {
        v28 = v38;
        v29 = v39;
        v30 = v40;
        (*(v39 + 16))(v38, v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v40);

        v31 = v41;
        FMFLocationAlert.muteEndDate.getter();
        sub_100012DF0(v11, &qword_1006B0050);
        v27(v18, v15);
        (*(v29 + 8))(v28, v30);
        v32 = type metadata accessor for Date();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v31, 1, v32) != 1)
        {
          v34 = v42;
          (*(v33 + 32))(v42, v31, v32);
          return (*(v33 + 56))(v34, 0, 1, v32);
        }
      }

      else
      {

        sub_100012DF0(v11, &qword_1006B0050);
        v27(v18, v15);
        v36 = type metadata accessor for Date();
        v31 = v41;
        (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      }

      v25 = &unk_1006B0000;
      v24 = v31;
      goto LABEL_12;
    }

    sub_100012DF0(v11, &qword_1006B0050);
    v27(v18, v15);
  }

  else
  {
    sub_10005D4E4(v14);
  }

LABEL_13:
  v37 = type metadata accessor for Date();
  return (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
}

void sub_100414B30()
{

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_selectedDate, &unk_1006B0000);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_dateFormatter);
}

id sub_100414BF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPauseNotificationsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMPauseNotificationsViewController()
{
  result = qword_1006BF2A8;
  if (!qword_1006BF2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100414D48()
{
  sub_1000100C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100414E10(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn);
  v3 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn;
  *(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_muteToggleOn) = v2;
  [*(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView) setHidden:v2 ^ 1];
  [*(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection) setHidden:v2 ^ 1];
  [*(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_resumeNotificationMessageLabel) setHidden:v2];
  sub_100412C98();
  if (*(v1 + v3))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.5;
  }

  v5 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker;
  [*(v1 + OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_datePicker) setUserInteractionEnabled:?];
  v6 = *(v1 + v5);

  return [v6 setAlpha:v4];
}

id sub_100414EF4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10041437C(a1, a2, v2 + v6, v7);
}

uint64_t sub_100414FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100415010()
{
  result = qword_1006C1DC0;
  if (!qword_1006C1DC0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1DC0);
  }

  return result;
}

void sub_100415068()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_selectedDate;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pauseSection;
  v5 = type metadata accessor for FMSectionPlatterGroupView();
  *(v1 + v4) = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_calendarSection;
  *(v1 + v6) = [objc_allocWithZone(v5) init];
  v7 = OBJC_IVAR____TtC6FindMy34FMPauseNotificationsViewController_pausedUntilView;
  v8 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *(v1 + v7) = sub_100502750(0, 0.0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100415268()
{
  v1 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_stackView;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_iconView;
  *&v0[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorView;
  *&v0[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView;
  *&v0[v5] = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_gestureRecognizer;
  *&v0[v6] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v7 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingConstraint;
  *&v0[v7] = [objc_allocWithZone(NSLayoutConstraint) init];
  v8 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingAXConstraint;
  *&v0[v8] = [objc_allocWithZone(NSLayoutConstraint) init];
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMListFooterActionButton();
  v9 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100415468();
  sub_1004157A0();
  v10 = *&v9[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView];
  [v10 setHidden:{objc_msgSend(v9, "isHighlighted") ^ 1}];

  sub_10041632C();
  return v9;
}

id sub_100415468()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_stackView];
  [v1 setLayoutMarginsRelativeArrangement:1];
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  [v1 setDirectionalLayoutMargins:{*(&xmmword_1006D4210 + 1), *&qword_1006D4220, *&qword_1006D4228, *&qword_1006D4230}];
  v2 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_iconView];
  [v1 addArrangedSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel];
  [v1 addArrangedSubview:v3];
  [v2 setContentMode:4];
  v4 = objc_opt_self();
  v5 = [v4 linkColor];
  [v3 setTextColor:v5];

  [v3 setNumberOfLines:0];
  [v3 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 setFont:v6];

  v7 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v7];

  v8 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorView];
  v9 = [v4 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.1];

  [v8 setBackgroundColor:v10];
  v17 = &type metadata for SolariumFeatureFlag;
  v18 = sub_10000BD04();
  LOBYTE(v9) = isFeatureEnabled(_:)();
  sub_100006060(v16);
  v11 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView;
  v12 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView];
  if (v9)
  {
    [v12 setBackgroundColor:qword_1006D4208];
    v13 = [*&v0[v11] layer];
    [v13 setCornerRadius:*&qword_1006D4238];
  }

  else
  {
    v14 = v12;
    v13 = [v4 separatorColor];
    [v14 setBackgroundColor:v13];
  }

  [v0 addSubview:*&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView]];
  [v0 addSubview:v1];
  return [v0 addSubview:v8];
}

void sub_1004157A0()
{
  v1 = v0;
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005521F0;
  v3 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_stackView];
  *(inited + 32) = v3;
  v4 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_iconView];
  *(inited + 40) = v4;
  v5 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel];
  *(inited + 48) = v5;
  v6 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorView];
  *(inited + 56) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v3;
  v78 = v4;
  v9 = v5;
  v10 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  for (i = v8; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v12 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_16;
      }

      v13 = *(inited + 40);
    }

    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_16;
      }

      v15 = *(inited + 48);
    }

    v16 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v17 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v77 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView;
  [*&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005528C0;
  v21 = [v1 heightAnchor];
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v22 = [v21 constraintGreaterThanOrEqualToConstant:*&qword_1006D41F0];

  type metadata accessor for UILayoutPriority(0);
  sub_1000394CC();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v23) = v79;
  [v22 setPriority:v23];
  *(v20 + 32) = v22;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1005521F0;
  v26 = [v8 leadingAnchor];
  v27 = [v1 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v25 + 32) = v28;
  v29 = [v8 trailingAnchor];
  v30 = [v1 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  v32 = [v8 topAnchor];
  v33 = [v1 topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v25 + 48) = v34;
  v35 = [v8 bottomAnchor];
  v36 = [v1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v25 + 56) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1005528C0;
  v40 = [v78 widthAnchor];
  v41 = [v40 constraintEqualToConstant:*&xmmword_1006D41B0];

  *(v39 + 32) = v41;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:v42];

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100552EF0;
  v44 = [v10 trailingAnchor];
  v45 = [v1 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-*&qword_1006D4230];

  *(v43 + 32) = v46;
  v47 = [v10 bottomAnchor];
  v48 = [v1 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v43 + 40) = v49;
  v50 = [v10 heightAnchor];
  v51 = [v50 constraintEqualToConstant:1.0];

  *(v43 + 48) = v51;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:v52];

  v53 = [v10 leadingAnchor];
  v54 = [v1 leadingAnchor];
  v55 = *&qword_1006D4220;
  v56 = [v53 constraintEqualToAnchor:v54 constant:*&qword_1006D4220];

  v57 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingConstraint];
  *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingConstraint] = v56;

  v58 = [v10 leadingAnchor];
  v59 = [v1 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:v55];

  v61 = *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingAXConstraint];
  *&v1[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingAXConstraint] = v60;

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1005521F0;
  v63 = [*&v1[v77] leadingAnchor];
  v64 = [v1 leadingAnchor];
  v65 = *&qword_1006D4240;
  v66 = [v63 constraintEqualToAnchor:v64 constant:*&qword_1006D4240];

  *(v62 + 32) = v66;
  v67 = [*&v1[v77] trailingAnchor];
  v68 = [v1 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-v65];

  *(v62 + 40) = v69;
  v70 = [*&v1[v77] topAnchor];
  v71 = [v1 topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v62 + 48) = v72;
  v73 = [*&v1[v77] bottomAnchor];
  v74 = [v1 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v62 + 56) = v75;
  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:v76];
}

id sub_100416188(void *a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FMListFooterActionButton();
  objc_msgSendSuper2(&v12, "addAction:forControlEvents:", a1, a2);
  v5 = *&v2[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel];
  v6 = [a1 title];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v5 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_iconView];
  v8 = [a1 image];
  [v7 setImage:v8];

  v9 = [a1 image];
  v10 = v9;
  if (v9)
  {
  }

  return [v7 setHidden:v10 == 0];
}

id sub_10041632C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_stackView];
  [v4 setAxis:v3 & 1];
  [v4 setAlignment:3];
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v5 = 1.0;
  if (v3)
  {
    v5 = 2.0;
  }

  v6 = v5 * *(&xmmword_1006D41D0 + 1);
  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  [v4 setSpacing:v6];
  [*&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel] setTextAlignment:v7];
  [*&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingAXConstraint] setActive:v3 & 1];
  v8 = *&v0[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingConstraint];

  return [v8 setActive:(v3 & 1) == 0];
}

void sub_1004169A8(void *a1)
{
  v2 = OBJC_IVAR____TtC6FindMy23FMListFooterActionsView_actions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v16 = v2;
  if (v3 >> 62)
  {
LABEL_23:
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v19 != v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v17 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v7 = [v5 identifier];
    v8 = [a1 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {

LABEL_20:

      return;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v15 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_100416BFC();
}

void sub_100416BFC()
{
  v2 = v0;
  v3 = [v0 arrangedSubviews];
  sub_10000905C(0, &qword_1006BA410);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v1 = &selRef__enter3DMode;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
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

  v10 = OBJC_IVAR____TtC6FindMy23FMListFooterActionsView_actions;
  swift_beginAccess();
  v11 = *&v2[v10];
  if (v11 >> 62)
  {
    goto LABEL_41;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = _swiftEmptyArrayStorage;
    if (j)
    {
      v27 = _swiftEmptyArrayStorage;

      v13 = &v27;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (j < 0)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_31;
      }

      v14 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        ++v14;
        v17 = [objc_allocWithZone(type metadata accessor for FMListFooterActionButton()) init];
        [v17 addAction:v16 forControlEvents:64];
        [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v1 = v27[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (j != v14);

      v13 = v27;
    }

    if (v13 >> 62)
    {
      break;
    }

    v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_43;
    }

LABEL_26:
    v18 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
      goto LABEL_46;
    }

    v1 = (v13 & 0xC000000000000001);
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    if (v18 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v19 = *(v13 + 8 * v18 + 32);
LABEL_31:
    v20 = v19;
    [*&v19[OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorView] setHidden:1];

    v21 = v2;
    v22 = 0;
    while (1)
    {
      if (v1)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v23 = *(v13 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v21 addArrangedSubview:v23];

      ++v22;
      if (v25 == v11)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (v11)
  {
    goto LABEL_26;
  }

LABEL_43:
  v26 = v2;
LABEL_44:
}

id sub_100416FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100417028()
{
  v1 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_stackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_textLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_iconView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_backgroundView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_gestureRecognizer;
  *(v0 + v6) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v7 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingConstraint;
  *(v0 + v7) = [objc_allocWithZone(NSLayoutConstraint) init];
  v8 = OBJC_IVAR____TtC6FindMyP33_ECF36241999DC0BA34D7A6B6193B019D24FMListFooterActionButton_separatorLeadingAXConstraint;
  *(v0 + v8) = [objc_allocWithZone(NSLayoutConstraint) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100417188()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v2];

  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    sub_10047F330();
  }

  v5 = [objc_opt_self() boldButton];
  v6 = [objc_opt_self() mainBundle];
  v26._object = 0x80000001005920F0;
  v7._object = 0x800000010057A1A0;
  v26._countAndFlagsBits = 0xD000000000000023;
  v7._countAndFlagsBits = 0xD000000000000011;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v26);

  v9 = String._bridgeToObjectiveC()();

  [v5 setTitle:v9 forState:0];

  v10 = v5;
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  sub_10000905C(0, &qword_1006AF730);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v10 addAction:v13 forControlEvents:{64, 0, 0, 0, sub_100419E58, v12}];

  v14 = *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton];
  *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton] = v10;
  v15 = v10;

  v16 = [v1 buttonTray];
  [v16 addButton:v15];

  v17 = *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableView];
  [v17 _setSectionContentInsetFollowsLayoutMargins:1];
  [v17 setDataSource:v1];
  [v17 setDelegate:v1];
  [v17 setKeyboardDismissMode:2];
  [v17 setScrollEnabled:0];
  [v17 setAllowsSelection:0];
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor:v18];

  [v17 setRowHeight:UITableViewAutomaticDimension];
  v19 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityIdentifier:v19];

  [v17 setDirectionalLayoutMargins:{0.0, 1.0, 0.0, 1.0}];
  type metadata accessor for FMPhoneNumberTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = String._bridgeToObjectiveC()();
  [v17 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v21];

  v22 = [v1 contentView];
  [v22 addSubview:v17];

  v23 = [v1 contentView];
  v24 = String._bridgeToObjectiveC()();
  [v23 setAccessibilityIdentifier:v24];
}

id sub_100417638(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  type metadata accessor for FMPhoneNumberTableViewCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    *(v5 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate + 8) = &off_10063DB18;
    swift_unknownObjectWeakAssign();
    *(v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textFieldIsEnabled) = 1;
    v7 = *(v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField);
    v8 = v4;
    v9 = [v7 superview];
    if (v9)
    {
    }

    else
    {
      sub_100091DD0();
    }

    v10 = objc_opt_self();
    v11 = v8;
    v12 = [v10 mainBundle];
    v19._object = 0x8000000100597A00;
    v13._countAndFlagsBits = 0xD00000000000002DLL;
    v13._object = 0x80000001005979D0;
    v19._countAndFlagsBits = 0xD00000000000003FLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v19);

    *(v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText) = v15;

    v16 = *(v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel);
    v17 = String._bridgeToObjectiveC()();

    [v16 setText:v17];

    sub_100092668();
  }

  return v4;
}

id sub_100417868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  sub_100123328(a4, a5, v13);

  (*(v11 + 8))(v13, v10);
  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 updateTextField:a1 shouldChangeCharactersInRange:a2 replacementString:{a3, v15}];

  return v16;
}

void sub_1004179E0()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552F00;
  v4 = [v1 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v3 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v3 + 40) = v11;
  v12 = [v1 leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-1.0];
  *(v3 + 48) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:1.0];
  *(v3 + 56) = v19;
  v20 = [v1 heightAnchor];
  v21 = [v0 contentView];
  v22 = [v21 heightAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  LODWORD(v24) = 1132068864;
  [v23 setPriority:v24];
  *(v3 + 64) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_100417D54()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableView);
  IndexPath.init(row:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v7 = [v5 cellForRowAtIndexPath:isa];

  result = 0;
  if (v7)
  {
    type metadata accessor for FMPhoneNumberTableViewCell();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField);

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100417EA8()
{
  v1 = sub_100417D54();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = objc_opt_self();
      v8 = [v7 mainBundle];
      v33._object = 0x8000000100597AE0;
      v9._countAndFlagsBits = 0xD000000000000026;
      v9._object = 0x8000000100597AB0;
      v33._countAndFlagsBits = 0xD000000000000038;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v33);

      v11 = [v7 mainBundle];
      v34._object = 0x8000000100597B50;
      v12._countAndFlagsBits = 0xD000000000000028;
      v12._object = 0x8000000100597B20;
      v34._countAndFlagsBits = 0xD00000000000003ALL;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v34);

      sub_10007EBC0(&unk_1006B20B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100552220;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_10008EE84();
      *(v14 + 32) = v4;
      *(v14 + 40) = v6;
      String.init(format:_:)();

      v15 = String._bridgeToObjectiveC()();

      v16 = String._bridgeToObjectiveC()();

      v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v18 = [v7 mainBundle];
      v35._object = 0x800000010057B8F0;
      v19._object = 0x800000010057B8D0;
      v35._countAndFlagsBits = 0xD000000000000025;
      v19._countAndFlagsBits = 0xD000000000000013;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v35);

      v21 = String._bridgeToObjectiveC()();

      v22 = objc_opt_self();
      v23 = [v22 actionWithTitle:v21 style:1 handler:0];

      [v17 addAction:v23];
      v24 = [v7 mainBundle];
      v36._object = 0x8000000100592020;
      v36._countAndFlagsBits = 0xD000000000000015;
      v25._countAndFlagsBits = 5457241;
      v25._object = 0xE300000000000000;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v36);

      v27 = swift_allocObject();
      *(v27 + 16) = v0;
      v28 = v0;
      v29 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_100419E68;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017328;
      aBlock[3] = &unk_10063DC20;
      v30 = _Block_copy(aBlock);

      v31 = [v22 actionWithTitle:v29 style:0 handler:v30];
      _Block_release(v30);

      [v17 addAction:v31];
      [v28 presentViewController:v17 animated:1 completion:0];
    }
  }
}

void sub_100418334(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_phoneNumberWarning];
  *v3 = a1;
  *(v3 + 1) = a2;

  v4 = [v2 buttonTray];

  v5 = String._bridgeToObjectiveC()();

  [v4 setCaptionText:v5];
}

UIFontTextStyle sub_1004183FC()
{
  qword_1006D4A48 = UIFontTextStyleBody;
  *algn_1006D4A50 = xmmword_100560E60;
  qword_1006D4A60 = 0x4010000000000000;
  return UIFontTextStyleBody;
}

void sub_10041842C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_useEmailButton;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_useEmailButton];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 buttonTray];
    [v5 removeButton:v4];
  }

  if (v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_shouldShowSecondaryLabel] == 1)
  {
    v6 = [objc_opt_self() linkButton];
    v7 = [objc_opt_self() mainBundle];
    v19._object = 0x8000000100597A80;
    v8._object = 0x8000000100597A60;
    v19._countAndFlagsBits = 0xD00000000000002ELL;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

    v10 = String._bridgeToObjectiveC()();

    [v6 setTitle:v10 forState:0];

    v11 = v6;
    v12 = String._bridgeToObjectiveC()();
    [v11 setAccessibilityIdentifier:v12];

    sub_10000905C(0, &qword_1006AF730);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v11 addAction:v14 forControlEvents:{64, 0, 0, 0, sub_100419E60, v13}];

    v15 = *&v1[v2];
    *&v1[v2] = v11;
    v16 = v11;

    v17 = [v1 buttonTray];
    [v17 addButton:v16];
  }
}

void sub_1004186F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x278))();
  }
}

void sub_100418780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x270))();
  }
}

void sub_10041880C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FMPhoneNumberViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  if ((*(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_originalHeight + 8) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight + 8))
    {
      if (*(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight))
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight) = 1;
      v1 = [v0 scrollView];
      if (v1)
      {
        v2 = v1;
        [v1 contentSize];
        [v2 setContentSize:?];

        v3 = [v0 scrollView];
        if (v3)
        {
          v4 = v3;
LABEL_12:
          [v4 contentInset];
          [v4 setContentInset:?];

          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = [v0 scrollView];
      if (v5)
      {
        v6 = v5;
        [v5 contentSize];
        [v6 setContentSize:?];

        if (*(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight))
        {
          return;
        }

        *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight) = 1;
        v7 = [v0 scrollView];
        if (v7)
        {
          v4 = v7;
          v8 = [v0 scrollView];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v19.origin.x = v11;
            v19.origin.y = v13;
            v19.size.width = v15;
            v19.size.height = v17;
            CGRectGetMaxY(v19);
            goto LABEL_12;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_100418B7C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v17 = sub_100419DEC;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_10063DB58;
  v4 = _Block_copy(&v13);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillHideObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v17 = sub_100419E34;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_10063DBA8;
  v9 = _Block_copy(&v13);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillChangeFrameObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_100418E68()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillChangeFrameObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

id sub_1004191E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode] = xmmword_100558510;
  v11 = &v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_style];
  if (qword_1006AECA0 != -1)
  {
    swift_once();
  }

  v12 = qword_1006D4A48;
  v13 = qword_1006D4A60;
  v14 = *algn_1006D4A50;
  *v11 = qword_1006D4A48;
  *(v11 + 8) = v14;
  *(v11 + 3) = v13;
  v15 = OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableView;
  v16 = objc_allocWithZone(type metadata accessor for OBTableView());
  v17 = v12;
  *&v7[v15] = [v16 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableViewHeighConstraint] = 0;
  v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
  v18 = &v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_originalHeight];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
  *v19 = 0;
  v19[8] = 1;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardMinY] = 0;
  v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_isKeyboardVisible] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillChangeFrameObserver] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillHideObserver] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_useEmailButton] = 0;
  v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_shouldShowSecondaryLabel] = 0;
  v20 = &v7[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_phoneNumberWarning];
  *v20 = 0;
  v20[1] = 0;
  v21 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v22 = 0;
    if (a6)
    {
      goto LABEL_5;
    }

LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v22 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_5:
  v23 = String._bridgeToObjectiveC()();

LABEL_8:
  v26.receiver = v7;
  v26.super_class = type metadata accessor for FMPhoneNumberViewController();
  v24 = objc_msgSendSuper2(&v26, "initWithTitle:detailText:symbolName:contentLayout:", v21, v22, v23, a7);

  return v24;
}

id sub_1004194EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode] = xmmword_100558510;
  v10 = &v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_style];
  if (qword_1006AECA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006D4A48;
  v12 = qword_1006D4A60;
  v13 = *algn_1006D4A50;
  *v10 = qword_1006D4A48;
  *(v10 + 8) = v13;
  *(v10 + 3) = v12;
  v14 = OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableView;
  v15 = objc_allocWithZone(type metadata accessor for OBTableView());
  v16 = v11;
  *&v6[v14] = [v15 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_tableViewHeighConstraint] = 0;
  v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
  v17 = &v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_originalHeight];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
  *v18 = 0;
  v18[8] = 1;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardMinY] = 0;
  v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_isKeyboardVisible] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillChangeFrameObserver] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardWillHideObserver] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_nextButton] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_useEmailButton] = 0;
  v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_shouldShowSecondaryLabel] = 0;
  v19 = &v6[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_phoneNumberWarning];
  *v19 = 0;
  v19[1] = 0;
  v20 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v24.receiver = v6;
  v24.super_class = type metadata accessor for FMPhoneNumberViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithTitle:detailText:icon:contentLayout:", v20, v21, a5, a6);

  return v22;
}

id sub_1004197BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004198E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100419930(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1004199BC()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v58), (v5 & 1) == 0))
  {

    sub_10004CDB8(v58);
LABEL_16:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_17;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v59);
  sub_10004CDB8(v58);

  if (!*(&v60 + 1))
  {
LABEL_17:
    sub_10000D2C0(&v59);
    return;
  }

  sub_10000905C(0, &unk_1006BC3F0);
  if (swift_dynamicCast())
  {
    v6 = v58[0];
    [v58[0] CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (!v17 || (v18 = [v17 screen], v17, v19 = objc_msgSend(v18, "coordinateSpace"), v18, !v19))
      {
        v20 = [objc_opt_self() mainScreen];
        v19 = [v20 coordinateSpace];
      }

      v21 = [v1 scrollView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 coordinateSpace];

        [v19 convertRect:v23 toCoordinateSpace:{v8, v10, v12, v14}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = [v1 buttonTray];
        [v32 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v61.origin.x = v25;
        v61.origin.y = v27;
        v61.size.width = v29;
        v61.size.height = v31;
        v64.origin.x = v34;
        v64.origin.y = v36;
        v64.size.width = v38;
        v64.size.height = v40;
        if (!CGRectIntersectsRect(v61, v64))
        {
          swift_unknownObjectRelease();

          v57 = &v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
          *v57 = 0;
          v57[8] = 1;
          v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
          return;
        }

        v41 = &v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight];
        if (v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight + 8] != 1)
        {

          swift_unknownObjectRelease();
          return;
        }

        v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight] = 0;
        v42 = [v1 scrollView];
        if (v42)
        {
          v43 = v42;
          [v42 contentSize];
          v45 = v44;

          v46 = &v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_originalHeight];
          *v46 = v45;
          v46[8] = 0;
          v62.origin.x = v25;
          v62.origin.y = v27;
          v62.size.width = v29;
          v62.size.height = v31;
          *&v1[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_keyboardMinY] = CGRectGetMinY(v62);
          v47 = [v1 buttonTray];
          [v47 frame];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;

          v63.origin.x = v49;
          v63.origin.y = v51;
          v63.size.width = v53;
          v63.size.height = v55;
          Height = CGRectGetHeight(v63);
          swift_unknownObjectRelease();

          *v41 = Height;
          *(v41 + 8) = 0;
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_100419DEC()
{
  v1 = *(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_paddingHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_hasAdjustedKeyboardHeight) = 0;
  sub_1004199BC();
}

id sub_100419FC4()
{
  sub_10011FD34();
  [v0 setClipsToBounds:1];
  v1 = *&v0[OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_headerRow]];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow];
  [v2 setUserInteractionEnabled:0];
  [v1 addArrangedSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow];
  *(v3 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separated) = 0;
  [*(v3 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_separator) setHidden:1];
  [v1 addArrangedSubview:v3];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton];
  *(v4 + OBJC_IVAR____TtC6FindMy14FMSimpleButton_separated) = 0;
  [*(v4 + OBJC_IVAR____TtC6FindMy14FMSimpleButton_separator) setHidden:1];
  [v1 addArrangedSubview:v4];
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v24._object = 0x800000010057FD20;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  v7._object = 0x8000000100597C00;
  v8.value._object = 0x800000010057FD00;
  v24._countAndFlagsBits = 0xD000000000000017;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v24);

  *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title] = v10;

  v11 = *&v2[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel];

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  v14 = [v5 mainBundle];
  v25._object = 0x800000010057FD20;
  v15._countAndFlagsBits = 0xD00000000000001DLL;
  v15._object = 0x8000000100597C20;
  v16.value._object = 0x800000010057FD00;
  v25._countAndFlagsBits = 0xD000000000000017;
  v16.value._countAndFlagsBits = 0xD000000000000012;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v25);

  *(v3 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_title) = v18;

  v19 = *(v3 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  return [v0 setHidden:1];
}

void sub_10041A304()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"handleButtonRowAction"];
  [*&v2[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleButtonRowAction"];

  [*(*&v2[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton] + OBJC_IVAR____TtC6FindMy14FMSimpleButton_button) addGestureRecognizer:v4];
}

id sub_10041A3F0(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a1[7] >> 6;
  if (v8)
  {
    if (v8 != 1)
    {
      v18 = v3;
      v19 = 1;
      goto LABEL_9;
    }

    v9 = *(a1 + 4);
    v10 = *&v3[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton];
    v10[OBJC_IVAR____TtC6FindMy14FMSimpleButton_isActionEnabled] = v4 & 1;
    v11 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
    v12 = a1[40];
    [*&v10[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button] setEnabled:?];
    v13 = *&v10[v11];
    v14 = String._bridgeToObjectiveC()();
    [v13 setTitle:v14 forState:0];

    v15 = v7;
    v16 = v9;
    v17 = v12;
LABEL_4:
    sub_10041AADC(v15, v16, v17, v3);
    [*&v3[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow] setHidden:1];
    [v10 setHidden:0];
    v18 = v3;
    v19 = 0;
LABEL_9:

    return [v18 setHidden:v19];
  }

  if (v4 - 2 >= 7 && (v4 & 1) != 0)
  {
    v10 = *&v3[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton];
    v10[OBJC_IVAR____TtC6FindMy14FMSimpleButton_isActionEnabled] = 1;
    v21 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
    [*&v10[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button] setEnabled:1];
    v22 = *&v10[v21];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 mainBundle];
    v75._object = 0x800000010057FD20;
    v26._countAndFlagsBits = 0xD000000000000023;
    v26._object = 0x80000001005823E0;
    v27.value._object = 0x800000010057FD00;
    v75._countAndFlagsBits = 0xD000000000000017;
    v27.value._countAndFlagsBits = 0xD000000000000012;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v75);

    v29 = String._bridgeToObjectiveC()();

    [v24 setTitle:v29 forState:0];

    v15 = v6;
    v16 = v5;
    v17 = v7;
    goto LABEL_4;
  }

  v31 = *&v3[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton];
  v31[OBJC_IVAR____TtC6FindMy14FMSimpleButton_isActionEnabled] = 0;
  v32 = OBJC_IVAR____TtC6FindMy14FMSimpleButton_button;
  [*&v31[OBJC_IVAR____TtC6FindMy14FMSimpleButton_button] setEnabled:0];
  v33 = *&v31[v32];
  v34 = String._bridgeToObjectiveC()();
  [v33 setTitle:v34 forState:0];

  if (v4 == 8)
  {
    v35 = 0;
  }

  else
  {
    v35 = v6;
  }

  if (v4 == 8)
  {
    v36 = 0;
  }

  else
  {
    v36 = v5;
  }

  if (v4 == 8)
  {
    v37 = -1;
  }

  else
  {
    v37 = v7;
  }

  if (a2)
  {
    v38 = v6;
  }

  else
  {
    v38 = v35;
  }

  if (a2)
  {
    v39 = v5;
  }

  else
  {
    v39 = v36;
  }

  if (a2)
  {
    v40 = v7;
  }

  else
  {
    v40 = v37;
  }

  sub_10041AADC(v38, v39, v40, v3);
  if (v4 <= 8 && ((1 << v4) & 0x1A0) != 0 || (a2 & 1) != 0)
  {
    v41 = "ENABLE_STEWIE_DEBUG_STATE";
    v42 = 0xD00000000000001ELL;
    v43 = &selRef_secondaryLabelColor;
  }

  else
  {
    v41 = "STEWIE_LOCATION_NOT_AVAILABLE";
    v42 = 0xD000000000000020;
    v43 = &selRef_redColor;
  }

  v44 = *&v3[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow];
  v45 = [objc_opt_self() mainBundle];
  v76._object = 0x800000010057FD20;
  v46._object = (v41 | 0x8000000000000000);
  v47.value._object = 0x800000010057FD00;
  v76._countAndFlagsBits = 0xD000000000000017;
  v46._countAndFlagsBits = v42;
  v47.value._countAndFlagsBits = 0xD000000000000012;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v76);

  *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] = v49;

  v50 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v51 = *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

  v52 = v51;
  v53 = String._bridgeToObjectiveC()();

  [v52 setText:v53];

  v54 = [objc_opt_self() *v43];
  v55 = *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor];
  *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitleColor] = v54;
  v56 = v54;

  [*&v44[v50] setTextColor:v56];
  v57 = [objc_opt_self() sharedInstance];
  LODWORD(v55) = [v57 isInternalBuild];

  if (v55)
  {
    v58 = [objc_opt_self() standardUserDefaults];
    v59 = String._bridgeToObjectiveC()();
    v60 = [v58 BOOLForKey:v59];

    if (v60)
    {
      v61 = &v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
      v62 = *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle + 8];
      if (v62)
      {
        v63 = *v61;
      }

      else
      {
        v63 = 0;
      }

      if (v62)
      {
        v64 = *(v61 + 1);
      }

      else
      {
        v64 = 0xE000000000000000;
      }

      strcpy(v73, "\n(internal: ");
      BYTE5(v73[1]) = 0;
      HIWORD(v73[1]) = -5120;

      v65._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v65);

      v66._countAndFlagsBits = 41;
      v66._object = 0xE100000000000000;
      String.append(_:)(v66);
      v67 = v73[0];
      v68 = v73[1];
      v73[0] = v63;
      v73[1] = v64;

      v69._countAndFlagsBits = v67;
      v69._object = v68;
      String.append(_:)(v69);

      *v61 = v63;
      *(v61 + 1) = v64;

      v70 = *&v44[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

      v71 = v70;
      v72 = String._bridgeToObjectiveC()();

      [v71 setText:v72];
    }
  }

  [v44 setHidden:0];
  [v31 setHidden:1];
  return [v3 setHidden:0];
}

void sub_10041AADC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v4 = *(a4 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow);
      if (a1)
      {
        v5 = a1;
        v7 = [objc_opt_self() mainBundle];
        v8 = a2;
        v9 = v7;
        if (v8)
        {
          v89._object = 0x800000010057FD20;
          v10._countAndFlagsBits = 0xD00000000000002FLL;
          v11 = v8;
          v10._object = 0x8000000100597CB0;
          v12.value._object = 0x800000010057FD00;
          v89._countAndFlagsBits = 0xD000000000000017;
          v12.value._countAndFlagsBits = 0xD000000000000012;
          v13._countAndFlagsBits = 0;
          v13._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v12, v9, v13, v89);

          sub_10007EBC0(&unk_1006B20B0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_100552210;
          *(v14 + 56) = &type metadata for Int;
          *(v14 + 64) = &protocol witness table for Int;
          *(v14 + 32) = v5;
          *(v14 + 96) = &type metadata for Int;
          *(v14 + 104) = &protocol witness table for Int;
          *(v14 + 72) = v11;
LABEL_20:
          v68 = String.init(format:_:)();
          v70 = v69;

          v71 = &v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
          *v71 = v68;
          v71[1] = v70;

          v72 = *&v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

          v73 = v72;
          v74 = String._bridgeToObjectiveC()();

          goto LABEL_21;
        }

        v85 = 0x800000010057FD20;
        v36 = 0xD000000000000028;
        v37 = 0x8000000100597CE0;
        v38 = 0x800000010057FD00;
        v39 = 0xD000000000000017;
      }

      else
      {
        if (!a2)
        {
          *&v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] = xmmword_100556540;

          v73 = *&v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];
          v74 = String._bridgeToObjectiveC()();
LABEL_21:
          [v73 setText:v74];

          v75 = *&v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle + 8];
          v32 = 1;
          if (v75)
          {
            if ((v75 & 0x2000000000000000) != 0 ? HIBYTE(v75) & 0xF : *&v4[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] & 0xFFFFFFFFFFFFLL)
            {
              v32 = 0;
            }
          }

          v31 = v4;
          goto LABEL_29;
        }

        v5 = a2;
        v9 = [objc_opt_self() mainBundle];
        v85 = 0x800000010057FD20;
        v36 = 0xD00000000000002ALL;
        v37 = 0x8000000100597D10;
        v38 = 0x800000010057FD00;
        v39 = 0xD000000000000017;
      }

      v65 = 0xD000000000000012;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, *(&v38 - 1), v9, v66, *&v39);

      sub_10007EBC0(&unk_1006B20B0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100552220;
      *(v67 + 56) = &type metadata for Int;
      *(v67 + 64) = &protocol witness table for Int;
      *(v67 + 32) = v5;
      goto LABEL_20;
    }

    v15 = *(a4 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow);
    v26 = &v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle];
    *v26 = a1;
    v26[1] = a2;

    v29 = *&v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];
    sub_10041C58C(a1, a2, 1);
    v30 = v29;
    v25 = String._bridgeToObjectiveC()();
    [v30 setText:v25];

    goto LABEL_10;
  }

  if (a3 != 2)
  {
    v33 = *(a4 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow);
    *&v33[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] = xmmword_100556540;

    v34 = *&v33[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];
    v35 = String._bridgeToObjectiveC()();
    [v34 setText:v35];

    v31 = v33;
    v32 = 1;
    goto LABEL_29;
  }

  v15 = *(a4 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow);
  v16 = a1 | a2;
  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  if (v16)
  {
    v90._object = 0x800000010057FD20;
    v19._countAndFlagsBits = 0xD00000000000001FLL;
    v19._object = 0x8000000100597D70;
    v20.value._object = 0x800000010057FD00;
    v90._countAndFlagsBits = 0xD000000000000017;
    v20.value._countAndFlagsBits = 0xD000000000000012;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v90);

    *&v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] = v22;

    v23 = *&v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

    v24 = v23;
    v25 = String._bridgeToObjectiveC()();

    [v24 setText:v25];

LABEL_10:
    v31 = v15;
    v32 = 0;
LABEL_29:

    [v31 setHidden:v32];
    return;
  }

  v91._object = 0x800000010057FD20;
  v40._countAndFlagsBits = 0xD000000000000023;
  v40._object = 0x8000000100597D40;
  v41.value._object = 0x800000010057FD00;
  v91._countAndFlagsBits = 0xD000000000000017;
  v41.value._countAndFlagsBits = 0xD000000000000012;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v18, v42, v91);

  *&v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_subtitle] = v43;

  v44 = OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel;
  v45 = *&v15[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_secondaryLabel];

  v46 = v45;
  v47 = String._bridgeToObjectiveC()();

  [v46 setText:v47];

  [v15 setHidden:0];
  v48 = [objc_opt_self() defaultConfiguration];
  v49 = String._bridgeToObjectiveC()();
  v50 = [objc_opt_self() systemImageNamed:v49 withConfiguration:v48];

  if (v50)
  {
    v51 = [objc_opt_self() systemGreenColor];
    v52 = [v50 imageWithTintColor:v51];

    if (v52)
    {
      v86 = v44;
      v53 = [objc_opt_self() textAttachmentWithImage:v52];
      v87 = [objc_allocWithZone(NSMutableAttributedString) init];
      v54 = [objc_opt_self() sharedApplication];
      v55 = [v54 userInterfaceLayoutDirection];

      if (v55 == 1)
      {
        v56 = [objc_opt_self() attributedStringWithAttachment:v53];
        [v87 appendAttributedString:v56];

        v57 = [v17 mainBundle];
        v92._object = 0x800000010057FD20;
        v58._countAndFlagsBits = 0xD000000000000023;
        v58._object = 0x8000000100597D40;
        v59.value._object = 0x800000010057FD00;
        v92._countAndFlagsBits = 0xD000000000000017;
        v59.value._countAndFlagsBits = 0xD000000000000012;
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v92);

        String.append(_:)(v61);

        v62 = objc_allocWithZone(NSAttributedString);
        v63 = String._bridgeToObjectiveC()();

        v64 = [v62 initWithString:v63];
      }

      else
      {
        v77 = [v17 mainBundle];
        v93._object = 0x800000010057FD20;
        v78._countAndFlagsBits = 0xD000000000000023;
        v78._object = 0x8000000100597D40;
        v79.value._object = 0x800000010057FD00;
        v93._countAndFlagsBits = 0xD000000000000017;
        v79.value._countAndFlagsBits = 0xD000000000000012;
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v93);

        v81._countAndFlagsBits = 32;
        v81._object = 0xE100000000000000;
        String.append(_:)(v81);

        v82 = objc_allocWithZone(NSAttributedString);
        v83 = String._bridgeToObjectiveC()();

        v84 = [v82 initWithString:v83];

        [v87 appendAttributedString:v84];
        v64 = [objc_opt_self() attributedStringWithAttachment:v53];
      }

      [v87 appendAttributedString:v64];

      [*&v15[v86] setAttributedText:v87];
    }
  }
}

id sub_10041B5D4()
{
  v1 = type metadata accessor for FMPlatterIcon();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v56 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B3298);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v61 = v0;
  *&v0[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = [objc_opt_self() mainBundle];
  v67._object = 0x800000010057FD20;
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x8000000100597D90;
  v12.value._object = 0x800000010057FD00;
  v67._countAndFlagsBits = 0xD000000000000017;
  v12.value._countAndFlagsBits = 0xD000000000000012;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v67);
  object = v14._object;
  countAndFlagsBits = v14._countAndFlagsBits;

  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v9, 0, 1, v1);
  v65 = &type metadata for SolariumFeatureFlag;
  v60 = sub_10000BD04();
  v66 = v60;
  v57 = isFeatureEnabled(_:)();
  sub_100006060(v64);
  v15 = type metadata accessor for FMMultiSettingsRowView();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v16[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v16[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v16[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v16[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v23 = sub_1003DE824();
  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];

  *&v16[v22] = v24;
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v16[v25] = [objc_allocWithZone(UIView) init];
  v26 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v16[v28] = [objc_opt_self() secondaryLabelColor];
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v29 = object;
  *v26 = countAndFlagsBits;
  v26[1] = v29;

  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v57 & 1) == 0;
  v16[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v63.receiver = v16;
  v63.super_class = v15;
  v30 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100243148(v9, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v31 = v30;
    sub_10017D238(v7);
    v32 = v60;
  }

  else
  {
    v33 = v56;
    sub_10015DA28(v7, v56);
    v34 = v30;
    v35 = sub_10043BBEC(v33, 0);
    v37 = v36;
    v38 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v34[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v35];
    [*&v34[v38] setTintAdjustmentMode:1];
    v32 = v60;
    v65 = &type metadata for SolariumFeatureFlag;
    v66 = v60;
    v39 = isFeatureEnabled(_:)();
    sub_100006060(v64);
    if (v39)
    {
      [*&v34[v38] setTintColor:v37];

      sub_1000D59F8(v33);
    }

    else
    {
      sub_1000D59F8(v33);
    }
  }

  v40 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_headerRow;
  [v30 setUserInteractionEnabled:0];
  *(v30 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_10017D238(v9);
  v41 = v61;
  *&v61[v40] = v30;
  v65 = &type metadata for SolariumFeatureFlag;
  v66 = v32;
  v42 = isFeatureEnabled(_:)();
  sub_100006060(v64);
  v43 = 16.0;
  v44 = 16.0;
  if ((v42 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v44 = *&qword_1006D4798;
  }

  v45 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow;
  v46 = type metadata accessor for FMSettingSingleRowView();
  v47 = objc_allocWithZone(v46);
  *&v41[v45] = sub_10030E068(0, v44);
  v65 = &type metadata for SolariumFeatureFlag;
  v66 = v32;
  v48 = isFeatureEnabled(_:)();
  sub_100006060(v64);
  if ((v48 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v43 = *&qword_1006D4798;
  }

  v49 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow;
  v50 = objc_allocWithZone(v46);
  *&v41[v49] = sub_10030E068(1, v43);
  v51 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton;
  v52 = objc_allocWithZone(type metadata accessor for FMSimpleButton());
  *&v41[v51] = sub_10049168C(0, 0xE000000000000000, 0, 0, 0);
  v53 = type metadata accessor for FMStewieSettingsView();
  v62.receiver = v41;
  v62.super_class = v53;
  return objc_msgSendSuper2(&v62, "init");
}

id sub_10041BCF8(void *a1)
{
  v65 = a1;
  v2 = type metadata accessor for FMPlatterIcon();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v63 = &v58[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10007EBC0(&qword_1006B3298);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v58[-v9];
  v64 = v1;
  *&v1[OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_opt_self() mainBundle];
  v71._object = 0x800000010057FD20;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x8000000100597D90;
  v13.value._object = 0x800000010057FD00;
  v71._countAndFlagsBits = 0xD000000000000017;
  v13.value._countAndFlagsBits = 0xD000000000000012;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v71);
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;

  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v10, 0, 1, v2);
  v69 = &type metadata for SolariumFeatureFlag;
  v62 = sub_10000BD04();
  v70 = v62;
  v59 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  v16 = type metadata accessor for FMMultiSettingsRowView();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v17[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v17[v20] = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v17[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v17[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v24 = sub_1003DE824();
  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];

  *&v17[v23] = v25;
  v26 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v17[v26] = [objc_allocWithZone(UIView) init];
  v27 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v17[v29] = [objc_opt_self() secondaryLabelColor];
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v30 = object;
  *v27 = countAndFlagsBits;
  v27[1] = v30;

  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v59 & 1) == 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v67.receiver = v17;
  v67.super_class = v16;
  v31 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100243148(v10, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v32 = v62;
    v33 = v31;
    sub_10017D238(v8);
  }

  else
  {
    v34 = v63;
    sub_10015DA28(v8, v63);
    v35 = v31;
    v36 = sub_10043BBEC(v34, 0);
    v38 = v37;
    v39 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v35[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v36];
    [*&v35[v39] setTintAdjustmentMode:1];
    v32 = v62;
    v69 = &type metadata for SolariumFeatureFlag;
    v70 = v62;
    v40 = isFeatureEnabled(_:)();
    sub_100006060(v68);
    if (v40)
    {
      [*&v35[v39] setTintColor:v38];

      sub_1000D59F8(v63);
    }

    else
    {
      sub_1000D59F8(v63);
    }
  }

  v41 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_headerRow;
  [v31 setUserInteractionEnabled:0];
  *(v31 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_10017D238(v10);
  v42 = v64;
  *&v64[v41] = v31;
  v69 = &type metadata for SolariumFeatureFlag;
  v70 = v32;
  v43 = v32;
  LOBYTE(v41) = isFeatureEnabled(_:)();
  sub_100006060(v68);
  v44 = 16.0;
  v45 = 16.0;
  if ((v41 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v45 = *&qword_1006D4798;
  }

  v46 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_statusRow;
  v47 = type metadata accessor for FMSettingSingleRowView();
  v48 = objc_allocWithZone(v47);
  *&v42[v46] = sub_10030E068(0, v45);
  v69 = &type metadata for SolariumFeatureFlag;
  v70 = v43;
  v49 = isFeatureEnabled(_:)();
  sub_100006060(v68);
  if ((v49 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v44 = *&qword_1006D4798;
  }

  v50 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_learnMoreRow;
  v51 = objc_allocWithZone(v47);
  *&v42[v50] = sub_10030E068(1, v44);
  v52 = OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton;
  v53 = objc_allocWithZone(type metadata accessor for FMSimpleButton());
  *&v42[v52] = sub_10049168C(0, 0xE000000000000000, 0, 0, 0);
  v54 = type metadata accessor for FMStewieSettingsView();
  v66.receiver = v42;
  v66.super_class = v54;
  v55 = v65;
  v56 = objc_msgSendSuper2(&v66, "initWithCoder:", v65);

  if (v56)
  {
  }

  return v56;
}

void sub_10041C448()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy20FMStewieSettingsView_updateLocationButton);
}

id sub_10041C4B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMStewieSettingsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10041C58C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10041C5A0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10041C5A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_10041C5BC()
{
  result = qword_1006BF458;
  if (!qword_1006BF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF458);
  }

  return result;
}

uint64_t sub_10041C614()
{
  v10 = &type metadata for SolariumFeatureFlag;
  v11 = sub_10000BD04();
  v0 = UIFontTextStyleBody;
  v1 = isFeatureEnabled(_:)();
  result = sub_100006060(v9);
  v3 = 16.0;
  if ((v1 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      result = swift_once();
    }

    v3 = qword_1006D4798;
  }

  __asm { FMOV            V1.2D, #10.0 }

  xmmword_1006D4A70 = _Q1;
  qword_1006D4A80 = 0x4024000000000000;
  qword_1006D4A88 = v0;
  xmmword_1006D4A90 = xmmword_100561010;
  qword_1006D4AA0 = v3;
  return result;
}

id sub_10041C990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSectionPlatterTextFieldView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10041CA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10041CAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10041CB0C()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_style;
  if (qword_1006AECA8 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_1006D4A80;
  v4 = qword_1006D4A88;
  v5 = qword_1006D4AA0;
  v6 = xmmword_1006D4A90;
  *v2 = xmmword_1006D4A70;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 48) = v5;
  v7 = OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_sectionLabel;
  v8 = objc_allocWithZone(UILabel);
  v9 = v4;
  *(v0 + v7) = [v8 init];
  v10 = OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_contentView;
  *(v0 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_textField;
  *(v0 + v11) = [objc_allocWithZone(UITextField) init];
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_isEditing) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10041CC6C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_textField);
    v5 = 4;
  }

  else
  {
    v6 = [v1 sharedApplication];
    v7 = [v6 userInterfaceLayoutDirection] == 1;

    v8 = *(v0 + OBJC_IVAR____TtC6FindMy29FMSectionPlatterTextFieldView_sectionLabel);
    [v8 setTextAlignment:4];
    v5 = 2 * v7;
    v4 = v8;
  }

  return [v4 setTextAlignment:v5];
}

double sub_10041CD78()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1006D4AA8 = v2;
  unk_1006D4AB0 = xmmword_1005610D0;
  result = 5.0;
  unk_1006D4AC0 = xmmword_1005610E0;
  return result;
}

char *sub_10041CE00()
{
  v1 = OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_label;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_style;
  if (qword_1006AECB0 != -1)
  {
    swift_once();
  }

  v3 = &v0[v2];
  v4 = qword_1006D4AA8;
  v5 = unk_1006D4AB0;
  v6 = unk_1006D4AC0;
  *v3 = qword_1006D4AA8;
  *(v3 + 8) = v5;
  *(v3 + 24) = v6;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FMUnknownItemsListSectionFooter();
  v7 = v4;
  v8 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_label;
  v10 = *&v8[OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_label];
  v11 = *&v8[OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_style];
  v12 = v8;
  [v10 setFont:{v11, v16.receiver, v16.super_class}];
  v13 = *&v8[v9];
  v14 = [objc_opt_self() secondaryLabelColor];
  [v13 setTextColor:v14];

  [*&v8[v9] setAdjustsFontForContentSizeCategory:1];
  [v12 addSubview:*&v8[v9]];
  sub_10041D08C();

  return v12;
}

void sub_10041D08C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_label];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = &v1[OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_style];
  v8 = [v5 constraintEqualToAnchor:v6 constant:*&v1[OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_style + 8]];

  *(v4 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:v7[2]];

  *(v4 + 40) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:v7[4]];

  *(v4 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [v1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-v7[3]];

  *(v4 + 56) = v17;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_10041D340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUnknownItemsListSectionFooter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10041D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100007204(a3, v25 - v10, &unk_1006BEF30);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012DF0(v11, &unk_1006BEF30);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_10041D6B4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    ApplePencil = MobileGestalt_get_deviceSupportsFindApplePencil();

    byte_1006D4AD0 = ApplePencil;
  }

  else
  {
    __break(1u);
  }
}

void sub_10041D6FC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = String._bridgeToObjectiveC()();
    v2 = MGGetBoolAnswer();
  }

  byte_1006D4AD2 = v2;
}

void sub_10041D778()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_1006D4AD3 = v1;
}

uint64_t sub_10041D7D0(char a1)
{
  v3 = sub_10007EBC0(&qword_1006AF878);
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v16 - v6;
  *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) = a1;
  if (a1)
  {
    v8 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations;
    v9 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations);
    v10 = *(v9 + 16);
    if (v10)
    {
      v16 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations;
      v17 = v1;
      v13 = *(v4 + 16);
      v11 = v4 + 16;
      v12 = v13;
      v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v15 = *(v11 + 56);

      do
      {
        v12(v7, v14, v3);
        CheckedContinuation.resume(returning:)();
        (*(v11 - 8))(v7, v3);
        v14 += v15;
        --v10;
      }

      while (v10);

      v8 = v16;
      v1 = v17;
    }

    *(v1 + v8) = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10041D950(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    p_superclass = (&OBJC_METACLASS____TtC6FindMy27FMDeviceEmailViewController + 8);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    p_superclass = &OBJC_METACLASS____TtC6FindMy27FMDeviceEmailViewController.superclass;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v7 = p_superclass[179];

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v4 + 8 * i + 32);
    }

    v12 = v11 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 48))(a1, *(&v7->isa + a1), ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  p_superclass = &OBJC_METACLASS____TtC6FindMy27FMDeviceEmailViewController.superclass;
LABEL_13:
  if ((*(&p_superclass[179]->isa + a1) & 1) == 0)
  {
    v13 = (a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier);
    *v13 = 0;
    v13[1] = 0;

    v14 = (a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier);
    *v14 = 0;
    v14[1] = 0;
  }

  return result;
}

uint64_t sub_10041DAF8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp);

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: isNetworkUp=%{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  aBlock[4] = sub_10042487C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063E2A0;
  v14 = _Block_copy(aBlock);
  v15 = v8;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v17);
}

uint64_t sub_10041DEC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp;

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v4 + 8 * i + 32);
      }

      v11 = v10 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 56))(a1, *(a1 + v6), ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10041E024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_10041E2F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieServiceState;

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v4 + 8 * i + 32);
      }

      v11 = v10 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 40))(a1, *(a1 + v6), ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10041E484(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed;

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v4 + 8 * i + 32);
      }

      v11 = v10 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v8 + 88))(a1, *(a1 + v6), ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

id sub_10041E5E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferences);
  [v3 refresh];
  result = [v3 airplaneMode];
  *a2 = result;
  return result;
}

uint64_t sub_10041E648()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMConditionProvider_coreBluetoothMgr];
  if ([v1 state] == 5 || objc_msgSend(v1, "state") == 10)
  {
    v2 = 0;
    v3 = 0xE200000000000000;
    v4 = 28271;
  }

  else
  {
    v2 = 1;
    v3 = 0xE300000000000000;
    v4 = 6710895;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    v11 = sub_100005B4C(v4, v3, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = [v1 state];

    _os_log_impl(&_mh_execute_header, v7, v8, "FMConditionProvider: BT is %s (state=%ld)", v9, 0x16u);
    sub_100006060(v10);
  }

  else
  {
  }

  return v2;
}

void sub_10041E83C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = sub_100423A2C() & 1;

    _os_log_impl(&_mh_execute_header, v5, v6, "FMConditionProvider: Shared Lost Item alert already shown set to %{BOOL}d", v7, 8u);
  }

  else
  {

    v5 = v4;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  [v8 setBool:a1 & 1 forKey:v9];
}

id sub_10041E9CC()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"refreshRestrictions" name:UIApplicationDidBecomeActiveNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"refreshRestrictions" name:MCEffectiveSettingsChangedNotification object:0];

  sub_100422020();
  sub_10041EB64();
  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"checkNetworkState" name:FMLocalNetworkStatusChangedNotification object:0];
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_networkMonitor);
  [v5 startMonitoring];

  sub_1004205B4();
  v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasAccountCheckedOnce;
  if (*(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasAccountCheckedOnce) == 1)
  {
    sub_10041F96C();
  }

  else
  {
    sub_10041EDE4();
    *(v0 + v6) = 1;
  }

  v7 = [v5 isNetworkUp];
  *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isNetworkUp) = v7;
  sub_10041DAF8();
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferences);

  return [v8 setDelegate:v0];
}

void sub_10041EB64()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMConditionProvider: mm start account monitoring", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v1 selector:"accountChangedNotificationReceivedWithNotification:" name:ACAccountStoreDidChangeNotification object:0];
}

void sub_10041ECA8()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMConditionProvider: mm stop account monitoring", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:ACAccountStoreDidChangeNotification object:0];
}

uint64_t sub_10041EDE4()
{
  v1 = v0;
  type metadata accessor for FMDemoManager();
  if (static FMDemoManager.devicesDemoEnabled.getter())
  {
    v2 = 1;
  }

  else
  {
    type metadata accessor for FMDemoManager();
    v2 = static FMDemoManager.peopleDemoEnabled.getter();
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMConditionProvider: checking account state", v6, 2u);
  }

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountStore);
  v8 = [v7 aa_primaryAppleAccount];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 primaryAuthKitAccount];

    if (v11)
    {
      v12 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountManager) userUnderAgeForAccount:v11];
      v13 = v12;
      if (v12)
      {
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "FMConditionProvider: Account is isUnderAge (U13), hiding necessary features", v16, 2u);
        }
      }

      *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser) = v13;
      v17 = [v9 aa_fmfAccount];
      v18 = [v7 credentialForAccount:v17];
      v19 = v18;
      if (v18 && (v20 = [v18 credentialItemForKey:ACFindMyFriendsAppTokenKey]) != 0)
      {

        v53 = [v9 aa_fmipAccount];
        v21 = [v7 credentialForAccount:?];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 credentialItemForKey:ACFindMyiPhoneAppTokenKey];
          if (v23)
          {

            v24 = [v9 aa_isManagedAppleID];
            *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) = v24;
            *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) = 1;
            sub_10041E024(&unk_10063E238, sub_100424874, &unk_10063E250);
            if (v17)
            {
              v25 = [v17 identifier];
              if (v25)
              {
                v26 = v25;
                v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v29 = v28;
              }

              else
              {
                v27 = 0;
                v29 = 0;
              }

              v46 = (v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier);
              *v46 = v27;
              v46[1] = v29;

              v47 = [v17 identifier];
              if (v47)
              {
                v48 = v47;
                v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v51 = v50;

LABEL_44:
                v52 = (v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier);
                *v52 = v49;
                v52[1] = v51;
                goto LABEL_34;
              }
            }

            else
            {
              v45 = (v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier);
              *v45 = 0;
              v45[1] = 0;
            }

            v49 = 0;
            v51 = 0;
            goto LABEL_44;
          }
        }

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "FMConditionProvider: Missing find my friend credentials", v42, 2u);
        }

        *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) = v2 & 1;
        sub_10041E024(&unk_10063E238, sub_100424874, &unk_10063E250);

        v36 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier;
      }

      else
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "FMConditionProvider: Missing find my friend credentials", v35, 2u);
        }

        *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) = v2 & 1;
        sub_10041E024(&unk_10063E238, sub_100424874, &unk_10063E250);

        v36 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier;
      }

      v43 = (v1 + v36);
      *v43 = 0;
      v43[1] = 0;
LABEL_34:

      goto LABEL_35;
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "FMConditionProvider: error retrieving primary authkit account", v39, 2u);
    }

    *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) = v2 & 1;
    sub_10041E024(&unk_10063E238, sub_100424874, &unk_10063E250);
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMConditionProvider: error retrieving primary account", v32, 2u);
    }

    *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) = v2 & 1;
    sub_10041E024(&unk_10063E238, sub_100424874, &unk_10063E250);
  }

LABEL_35:

  return sub_10041F56C();
}

uint64_t sub_10041F56C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMConditionProvider: finished checking account state", v3, 2u);
  }

  return sub_10041D7D0(1);
}

void sub_10041F654(void *a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMConditionProvider: Account changed notification received", v7, 2u);
  }

  v8 = (v2 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier);
  if (*(v2 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmipAccountIdentifier + 8) && (v9 = (v2 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier), *(v2 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_fmfAccountIdentifier + 8)))
  {
    v10 = [a1 userInfo];
    if (v10)
    {
      v11 = v10;
      v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v13;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16) && (v14 = sub_10004CC50(v21), (v15 & 1) != 0))
      {
        sub_100006004(*(v12 + 56) + 32 * v14, v22);
        sub_10004CDB8(v21);

        if (swift_dynamicCast())
        {
          v16 = v8[1];
          if (v16 && (v19 == *v8 && v16 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            goto LABEL_18;
          }

          v17 = v9[1];
          if (v17)
          {
            if (v19 == *v9 && v17 == v20)
            {
LABEL_18:

LABEL_19:
              sub_10041F96C();
              return;
            }

            v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v18)
            {
              goto LABEL_19;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_10004CDB8(v21);
      }
    }
  }

  else
  {

    sub_10041F96C();
  }
}

void sub_10041F96C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = v0;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(&v15->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountCheckPending);

    _os_log_impl(&_mh_execute_header, v16, v17, "FMConditionProvider: scheduleAccountCheck alreadyPending?: %{BOOL}d", v18, 8u);
  }

  else
  {

    v16 = v15;
  }

  if ((*(&v15->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountCheckPending) & 1) == 0)
  {
    *(&v15->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountCheckPending) = 1;
    sub_100003E90();
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v10);
    v27 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    static DispatchTime.now()();
    + infix(_:_:)();
    v19 = v29;
    v28 = *(v28 + 8);
    (v28)(v7, v29);
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    aBlock[4] = sub_100424844;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063E200;
    v21 = _Block_copy(aBlock);
    v22 = v15;
    v23 = v30;
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    v24 = v32;
    v25 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v34 + 8))(v24, v25);
    (*(v31 + 8))(v23, v33);
    (v28)(v9, v19);
  }
}

uint64_t sub_10041FEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AF878);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4, v6);
  v9 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountVerificationContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_10008BE14(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_10008BE14(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_100420080()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferences];
  [v8 refresh];
  v9 = [v8 airplaneMode];
  sub_100003E90();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  aBlock[4] = sub_100424838;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063E1B0;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v15);
}

uint64_t sub_100420398(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 24))(a1, a2 & 1, ObjectType, v9);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1004205B4()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v35 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v11);
  My = type metadata accessor for Feature.FindMy();
  v38 = My;
  v39 = sub_100006A6C(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v13 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v13, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100006060(aBlock);
  if (My)
  {
    v31 = v2;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v32 = v5;
    v33 = v1;
    v34 = v0;
    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMConditionProvider: Starting monitoring Stewie...", v18, 2u);
    }

    v39 = sub_100420B84;
    v40 = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    v38 = &unk_10063E070;
    _Block_copy(aBlock);
    v36 = _swiftEmptyArrayStorage;
    sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v19 = DispatchWorkItem.init(flags:block:)();
    sub_100003E90();
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v4 = 30;
    v21 = v31;
    v22 = v33;
    (*(v31 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v33);
    + infix(_:_:)();
    (*(v21 + 8))(v4, v22);
    v23 = *(v35 + 8);
    v24 = v32;
    v23(v8, v32);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v23(v10, v24);
    v25 = *(v34 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieStateMonitor);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v19;
    *(v27 + 24) = v26;
    v28 = v25[5];
    v29 = v25[6];
    sub_1000244BC(v25 + 2, v28);
    v30 = *(v29 + 16);

    v30(sub_1004247D0, v27, sub_10005C460, 0, v28, v29);
  }

  return result;
}

void sub_100420B84()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMConditionProvider: Stewie state not received after 30 secs (Stewie button may not show)!", v2, 2u);
  }
}

uint64_t sub_100420C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_100424824;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063E110;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void sub_100420F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch thunk of DispatchWorkItem.cancel()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMConditionProvider: Stewie state did change to %ld", v9, 0xCu);
    }

    *&v5[OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieServiceState] = a3;
    sub_10041E024(&unk_10063E148, sub_100424830, &unk_10063E160);
  }
}

uint64_t sub_1004210CC()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v12[3] = My;
  v12[4] = sub_100006A6C(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v3 = sub_100008FC0(v12);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100006060(v12);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "FMConditionProvider: Stopping monitoring Stewie...", v8, 2u);
    }

    v9 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieStateMonitor);
    v10 = v9[5];
    v11 = v9[6];
    sub_1000244BC(v9 + 2, v10);
    return (*(v11 + 24))(sub_1004212A4, 0, v10, v11);
  }

  return result;
}

uint64_t sub_1004212B8(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  *(a1 + 16) = 1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMConditionProvider: Stewie publish result not received after 30 secs!", v7, 2u);
  }

  return a2(0);
}

uint64_t sub_1004213D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v24 = *(v15 - 8);
  v25 = v15;
  __chkstk_darwin(v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v23 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a2;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a1;
  aBlock[4] = sub_1004247A8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063DEE0;
  v19 = _Block_copy(aBlock);

  swift_errorRetain();
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v14, v12);
  return (*(v24 + 8))(v17, v25);
}

uint64_t sub_1004216F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
    if (a3)
    {
      swift_errorRetain();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100005B14(v11, qword_1006D4630);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = Error.localizedDescription.getter();
        v18 = sub_100005B4C(v16, v17, &v23);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "FMConditionProvider: Failed fetching Stewie publish result (%s)", v14, 0xCu);
        sub_100006060(v15);
      }

      a4(0);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005B14(v19, qword_1006D4630);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "FMConditionProvider: Stewie fetched Stewie publish result", v22, 2u);
      }

      return a4(a6);
    }
  }

  return result;
}

uint64_t sub_10042198C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * i + 32);
      }

      v10 = v9 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 112))(a1, ObjectType, v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100421AE4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * i + 32);
      }

      v10 = v9 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 120))(a1, ObjectType, v7);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100421C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v22 = a1;
  v23 = a2;
  v4 = sub_10007EBC0(&qword_1006BF780);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10007EBC0(&qword_1006BF788);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v21 = sub_10007EBC0(&qword_1006BF790);
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v19 - v12;
  v24 = *(v3 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitializedPublisher);

  sub_10007EBC0(&qword_1006BF798);
  sub_100004098(&qword_1006BF7A0, &qword_1006BF798);
  Publisher.filter(_:)();

  v24 = v20;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_100003E90();
  sub_100004098(&unk_1006BF7A8, &qword_1006BF788);
  sub_100006A6C(&qword_1006B4DA0, sub_100003E90);
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v6, &qword_1006BF780);
  (*(v8 + 8))(v10, v7);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v22;
  *(v15 + 24) = v16;
  sub_100004098(&qword_1006BF7B8, &qword_1006BF790);

  v17 = v21;
  Publisher.oneshot(_:)();

  return (*(v11 + 8))(v13, v17);
}

void sub_100422020()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedConnection];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 effectiveBoolValueForSetting:MCFeatureFindMyFriendsAllowed];
  v5 = v4 == 2;
  v6 = *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted);
  *(v0 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted) = v5;
  if (v5 != v6)
  {
    v7 = v4;
    v8 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
      goto LABEL_34;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * i + 32);
      }

      v15 = v14 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 96))(v1, v7 != 2, ObjectType, v12);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

LABEL_15:
  v16 = [v3 effectiveBoolValueForSetting:MCFeatureFindMyDeviceAllowed];
  v17 = v16 == 2;
  v18 = *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted);
  *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted) = v17;
  if (v17 == v18)
  {
    goto LABEL_31;
  }

  v19 = v16;
  v20 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_31:

    return;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (v22 < 1)
  {
LABEL_34:
    __break(1u);
    return;
  }

  for (j = 0; j != v22; ++j)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v26 = *(v21 + 8 * j + 32);
    }

    v27 = v26 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v27 + 8);
      v25 = swift_getObjectType();
      (*(v24 + 104))(v1, v19 != 2, v25, v24);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}