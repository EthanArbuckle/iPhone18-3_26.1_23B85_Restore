uint64_t sub_100F08570(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A22F68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100F08A20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 24);
    v13 = v9;
    v11[15] = 1;
    sub_100024E98(v12, v9);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100F086F8(void *a1)
{
  v4 = sub_1005B981C(&qword_101A22F58);
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100F08A20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v10;
    LOBYTE(v11) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = 1;
    sub_1006D6258();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v6, v4);
    *(v1 + 24) = v11;
  }

  sub_100005070(a1);
  return v1;
}

uint64_t sub_100F088FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100F086F8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100F08978(uint64_t a1)
{
  *(a1 + 8) = sub_100F089E0(&qword_101A22F50);
  result = sub_100F089E0(&qword_1019FF178);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100F089E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLSharePlayRealTimeChangeRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100F08A20()
{
  result = qword_101A22F60;
  if (!qword_101A22F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22F60);
  }

  return result;
}

unint64_t sub_100F08A88()
{
  result = qword_101A22F70;
  if (!qword_101A22F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22F70);
  }

  return result;
}

unint64_t sub_100F08AE0()
{
  result = qword_101A22F78;
  if (!qword_101A22F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22F78);
  }

  return result;
}

unint64_t sub_100F08B38()
{
  result = qword_101A22F80;
  if (!qword_101A22F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22F80);
  }

  return result;
}

void sub_100F08B8C()
{
  v1 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager];
  if (v2)
  {
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong freehandDrawingToolkit];

  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoSegmentedViewController];
    v6 = objc_allocWithZone(type metadata accessor for CRLiOSPencilTrayPickerManager());
    v7 = v5;
    v8 = v0;
    v9 = sub_100F152B4(v8, v4, v5, v6);

    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v9;

    v2 = 0;
LABEL_4:
    v11 = v2;
    return;
  }

  __break(1u);
}

id sub_100F08C7C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_wasTearDownCalled;
  if (*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_wasTearDownCalled) == 1)
  {
    v29 = objc_opt_self();
    v3 = [v29 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 155;
    v15 = v30;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v22 file:v23 lineNumber:155 isFatal:0 format:v24 args:v21];
  }

  *(v1 + v2) = 1;
  sub_100F0BFD4();
  sub_100F08B8C();
  v26 = v25;
  v27 = *&v25[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  [v27 set_delegate:0];
  [*(*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) removeObserver:v1];
  [*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoSegmentedViewController) setDelegate:0];
  [*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView) removeFromSuperview];
  return [swift_getObjCClassFromMetadata() cancelPreviousPerformRequestsWithTarget:v1 selector:"updateForToolPickerVisibilityDidChange" object:0];
}

id sub_100F09104()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_wasTearDownCalled) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 175;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Must call tearDown() before CRLiOSPencilTray is deinitialized.", 62, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:175 isFatal:0 format:v24 args:v21];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLiOSPencilTray();
  return objc_msgSendSuper2(&v26, "dealloc");
}

void sub_100F095C8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong layerHost];

  if (v2)
  {
    if ([v2 respondsToSelector:"asiOSCVC"])
    {
      v3 = [v2 asiOSCVC];
      swift_unknownObjectRelease();
      v4 = swift_unknownObjectUnownedLoadStrong();
      v5 = [v4 textInputResponder];

      if (v5)
      {
        v6 = v3;
        v7 = [v6 pencilKitResponderState];
        v8 = v0;
        sub_100F08B8C();
        v10 = v9;
        v11 = *&v9[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

        [v7 setActiveToolPicker:v11];
        v12 = [v6 pencilKitResponderState];

        [v8 hidden];
        PKResponderState.toolPickerVisibility.setter();

        v13 = v5;
        v14 = [v13 pencilKitResponderState];
        [v14 setActiveToolPicker:*(*&v8[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager] + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker)];

        v61 = [v13 pencilKitResponderState];
        [v8 hidden];
        PKResponderState.toolPickerVisibility.setter();
      }

      else
      {
        v38 = objc_opt_self();
        v39 = [v38 _atomicIncrementAssertCount];
        v62[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v62);
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        v42 = [v41 lastPathComponent];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v46 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v39;
        v48 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v48;
        v49 = sub_1005CF04C();
        *(inited + 104) = v49;
        *(inited + 72) = v40;
        *(inited + 136) = &type metadata for String;
        v50 = sub_1000053B0();
        *(inited + 112) = v43;
        *(inited + 120) = v45;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v50;
        *(inited + 152) = 963;
        v51 = v62[0];
        *(inited + 216) = v48;
        *(inited + 224) = v49;
        *(inited + 192) = v51;
        v52 = v40;
        v53 = v51;
        v54 = static os_log_type_t.error.getter();
        sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v55 = static os_log_type_t.error.getter();
        sub_100005404(v46, &_mh_execute_header, v55, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v56 = swift_allocObject();
        v56[2] = 8;
        v56[3] = 0;
        v56[4] = 0;
        v56[5] = 0;
        v57 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v58 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        [v38 handleFailureInFunction:v58 file:v59 lineNumber:963 isFatal:0 format:v60 args:v57];
      }

      return;
    }

    swift_unknownObjectRelease();
  }

  v15 = objc_opt_self();
  v16 = [v15 _atomicIncrementAssertCount];
  v62[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v62);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_100006370(0, &qword_1019F4D30);
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 104) = v26;
  *(v24 + 72) = v17;
  *(v24 + 136) = &type metadata for String;
  v27 = sub_1000053B0();
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 144) = v27;
  *(v24 + 152) = 958;
  v28 = v62[0];
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v28;
  v29 = v17;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v33 = swift_allocObject();
  v33[2] = 8;
  v33[3] = 0;
  v33[4] = 0;
  v33[5] = 0;
  v34 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  [v15 handleFailureInFunction:v35 file:v36 lineNumber:958 isFatal:0 format:v37 args:v34];
}

void sub_100F09EB4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong mode];

  v2 = [v1 pencilModeType];
  if (v2)
  {
    goto LABEL_2;
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 pencilMediator];

  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = [v10 pencilModeToBeginFromToolbarItem];
  swift_unknownObjectRelease();
  if (v2)
  {
LABEL_2:
    if (v2 == 1)
    {
      sub_100F08B8C();
      v37 = v3;
      v4 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker;
      v3[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker] = 1;
      v5 = [*&v3[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_toolkit] currentTool];
      v6 = [v5 type];

      sub_101308974(v6);
      v7 = *&v37[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];
      v8 = String._bridgeToObjectiveC()();

      [v7 setSelectedToolItemIdentifier:v8];

LABEL_13:
      v37[v4] = 0;

      return;
    }

    if (v2 == 2)
    {
      sub_100F08B8C();
      v4 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker;
      v34[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker] = 1;
      v35 = *&v34[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];
      v37 = v34;
      v36 = [*&v34[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_scribble] identifier];
      if (!v36)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = String._bridgeToObjectiveC()();
      }

      [v35 setSelectedToolItemIdentifier:v36];

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for CRLiOSPencilModeType(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v11 = objc_opt_self();
  v12 = [v11 _atomicIncrementAssertCount];
  v38 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v38);
  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v14 lastPathComponent];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v12;
  v21 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v21;
  v22 = sub_1005CF04C();
  *(inited + 104) = v22;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  *(inited + 112) = v16;
  *(inited + 120) = v18;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v23;
  *(inited + 152) = 219;
  v24 = v38;
  *(inited + 216) = v21;
  *(inited + 224) = v22;
  *(inited + 192) = v24;
  v25 = v13;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v28, "Trying to update selected tool when not in a pencil mode.", 57, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v29 = swift_allocObject();
  v29[2] = 8;
  v29[3] = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  [v11 handleFailureInFunction:v31 file:v32 lineNumber:219 isFatal:0 format:v33 args:v30];
}

void sub_100F0A480()
{
  v1 = v0;
  sub_100F08B8C();
  v3 = v2;
  v4 = [*&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker] selectedToolItem];

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();

  if (!v5)
  {
    v9 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager;
    v10 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager);
    sub_101308A20();

    v11 = *(v1 + v9);
    v12 = *&v11[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];
    v13 = v11;
    v14 = [v12 selectedToolItemIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [*&v13[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso] identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_100F0A8D4();
    sub_100F0B4B4();
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong freehandDrawingToolkit];

  if (!v7)
  {
    __break(1u);
    return;
  }

  [v7 updatePencilShadowToScribbleMode];

  v8 = 2;
LABEL_13:

  sub_100F0A66C(v8);
}

void sub_100F0A66C(id a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong mode];

  v4 = [v3 pencilModeType];
  if (v4 != a1)
  {
    if (v4)
    {
      v5 = [swift_unknownObjectUnownedLoadStrong() pencilDocumentModeFor:a1];
      swift_unknownObjectRelease();
      v8 = swift_unknownObjectUnownedLoadStrong();
      [v8 setMode:v5 animated:1];
    }

    else
    {
      v6 = swift_unknownObjectUnownedLoadStrong();
      v7 = [v6 pencilMediator];

      if (v7)
      {
        [v7 setNextPencilModeType:a1];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_100F0A7F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
  [v1 forFillColorChangeAddTarget:v0 action:"fillColorChangedFromTrayWithSender:"];
  [v1 forStrokeColorChangeAddTarget:v0 action:"strokeColorChangedFromTrayWithSender:"];
  [v1 forSendBackwardAddTarget:v0 action:"sendBackwardWithSender:"];
  [v1 forSendToBackAddTarget:v0 action:"sendToBackWithSender:"];
  [v1 forBringForwardAddTarget:v0 action:"bringForwardWithSender:"];

  return [v1 forBringToFrontAddTarget:v0 action:"bringToFrontWithSender:"];
}

void sub_100F0A8D4()
{
  sub_100F08B8C();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  LODWORD(v2) = [v3 isVisible];
  if (!v2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager);
  v6 = *&v5[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];
  v7 = v5;
  v8 = [v6 selectedToolItemIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [*&v7[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso] identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  v18 = [*(*(v0 + v4) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) _lassoToolEditingView];
  if (v18)
  {
    v19 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
    v90 = v18;
    if ([v19 isDescendantOfView:?])
    {

      return;
    }

    v43 = [v90 subviews];
    sub_100006370(0, &qword_1019F6D00);
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v45)
    {
      v89 = objc_opt_self();
      v46 = [v89 _atomicIncrementAssertCount];
      v91[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v91);
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      v49 = [v48 lastPathComponent];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v55 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v55;
      v56 = sub_1005CF04C();
      *(inited + 104) = v56;
      *(inited + 72) = v47;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 323;
      v58 = v91[0];
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v47;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "lassoContainerView should have no subviews if lassoEditingView is not installed.", 80, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      [v89 handleFailureInFunction:v65 file:v66 lineNumber:323 isFatal:0 format:v67 args:v64];
    }

    v68 = [v90 subviews];
    v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v69 >> 62)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
      if (v70)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_25:
        if (v70 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v70; ++i)
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v72 = *(v69 + 8 * i + 32);
          }

          v73 = v72;
          [v72 removeFromSuperview];
        }
      }
    }

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v90 addSubview:v19];
    v74 = objc_opt_self();
    sub_1005B981C(&unk_1019F4D60);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_10146E8B0;
    v76 = [v19 leadingAnchor];
    v77 = [v90 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v75 + 32) = v78;
    v79 = [v19 trailingAnchor];
    v80 = [v90 trailingAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v75 + 40) = v81;
    v82 = [v19 topAnchor];
    v83 = [v90 topAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];

    *(v75 + 48) = v84;
    v85 = [v19 bottomAnchor];
    v86 = [v90 bottomAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    *(v75 + 56) = v87;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v74 activateConstraints:isa];

    return;
  }

  v20 = objc_opt_self();
  v21 = [v20 _atomicIncrementAssertCount];
  v91[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v91);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146CA70;
  *(v29 + 56) = &type metadata for Int32;
  *(v29 + 64) = &protocol witness table for Int32;
  *(v29 + 32) = v21;
  v30 = sub_100006370(0, &qword_1019F4D30);
  *(v29 + 96) = v30;
  v31 = sub_1005CF04C();
  *(v29 + 104) = v31;
  *(v29 + 72) = v22;
  *(v29 + 136) = &type metadata for String;
  v32 = sub_1000053B0();
  *(v29 + 112) = v25;
  *(v29 + 120) = v27;
  *(v29 + 176) = &type metadata for UInt;
  *(v29 + 184) = &protocol witness table for UInt;
  *(v29 + 144) = v32;
  *(v29 + 152) = 317;
  v33 = v91[0];
  *(v29 + 216) = v30;
  *(v29 + 224) = v31;
  *(v29 + 192) = v33;
  v34 = v22;
  v35 = v33;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v29);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v37, "Should be able to get _lassoToolEditingView from PencilKit.", 59, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v20 handleFailureInFunction:v40 file:v41 lineNumber:317 isFatal:0 format:v42 args:v39];
}

void sub_100F0B4B4()
{
  v1 = v0;
  sub_100F0C11C();
  if ((v2 & 1) == 0)
  {
LABEL_8:
    sub_100F08B8C();
    v16 = v15;
    v17 = *&v15[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

    [v17 _setLassoToolEditingViewVisible:0];
    v18 = [*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingViewClippingWorkaround) superview];
    if (v18)
    {
      v19 = v18;
      v37 = [v18 superview];

      if (v37)
      {
        [v37 setClipsToBounds:1];
      }
    }

    return;
  }

  sub_100F0C11C();
  if (v3)
  {
    sub_100F0C8D4();
  }

  sub_100F0C214();
  sub_100F0FF14();
  sub_100F08B8C();
  v5 = v4;
  v6 = *&v4[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  [v6 _setLassoToolEditingViewVisible:0];
  v7 = [*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingViewClippingWorkaround) superview];
  v8 = [v7 superview];

  [v8 setClipsToBounds:0];
  if (([objc_opt_self() isOSFeatureEnabled:1] & 1) == 0)
  {
    v20 = *(*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker);

    [v20 _setLassoToolEditingViewVisible:1];
    return;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong infosForCurrentSelectionPath];

  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_100B39D1C(*(v11 + 16), 0);
    v14 = sub_100B3A59C(&v38, (v13 + 4), v12, v11);
    sub_100035F90();
    if (v14 != v12)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v21 = v13[2];
  if (v21)
  {
    v22 = (v13 + 4);
    do
    {
      sub_100064110(v22, &v38);
      v23.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100064234(&v38);
      type metadata accessor for CRLBoardItem(0);
      if (swift_dynamicCastClass())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      v22 += 40;
      --v21;
    }

    while (v21);

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_26:
      v24 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_27;
      }

LABEL_53:

      return;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_26;
    }
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_53;
  }

LABEL_27:
  v25 = 0;
  v36 = 0;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage & 0xC000000000000001;
  while (1)
  {
    if (v27)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v26 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v28 = _swiftEmptyArrayStorage[v26 + 4];
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_56;
    }

    type metadata accessor for CRLFreehandDrawingShapeItem();
    if (swift_dynamicCastClass())
    {
      break;
    }

    ++v26;
LABEL_46:

    v25 = 1;
    if (v26 == v24)
    {

      if ((v36 & 1) == 0)
      {
        return;
      }

      goto LABEL_50;
    }
  }

  if (v26 + 1 == v24)
  {
LABEL_49:

    if (v25)
    {
LABEL_50:
      v34 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager;
      [*(*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) _setLassoToolEditingViewVisible:1];
      v35 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
      [v35 setSelectedFillColor:0];
      [v35 setSelectedStrokeColor:0];
      [*(*(v1 + v34) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso) setAllowsColorSelection:0];
      return;
    }

    [*(*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) _setLassoToolEditingViewVisible:1];
  }

  else
  {
    v30 = v26 + 5;
    while (1)
    {
      v31 = v30 - 4;
      if (v27)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v32 = _swiftEmptyArrayStorage[v30];
      }

      v29 = v32;
      v33 = __OFADD__(v31, 1);
      v26 = v30 - 3;
      if (v33)
      {
        break;
      }

      if (!swift_dynamicCastClass())
      {
        v36 = 1;
        goto LABEL_46;
      }

      ++v30;
      if (v26 == v24)
      {
        goto LABEL_49;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }
}

void sub_100F0BA84()
{
  v1 = type metadata accessor for NSNotificationCenter.Publisher();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isObserving) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isObserving) = 1;
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong addModeObserver:v0];

    v14 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_icc;
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = [v6 freehandDrawingToolkit];

    if (v7)
    {
      [v7 addToolkitObserver:v0];

      v13 = [objc_opt_self() defaultCenter];
      v8 = swift_unknownObjectUnownedLoadStrong();
      NSNotificationCenter.publisher(for:object:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = sub_100F169C8(&qword_1019FB850, &type metadata accessor for NSNotificationCenter.Publisher);
      Publisher<>.sink(receiveValue:)();

      v9 = *(v2 + 8);
      v9(v4, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v10 = swift_unknownObjectUnownedLoadStrong();
      v11 = v13;
      NSNotificationCenter.publisher(for:object:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      Publisher<>.sink(receiveValue:)();

      v9(v4, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100F0BDE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_pendingLassoEditingViewUpdateFromSelectionChange] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_pendingLassoEditingViewUpdateFromSelectionChange] = 1;
      v1 = Strong;
      v2 = swift_unknownObjectUnownedLoadStrong();
      v3 = [v2 canvas];

      [v3 i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
      v4 = swift_unknownObjectUnownedLoadStrong();
      v5 = [v4 canvas];

      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100F16A20;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A8880;
      v7 = _Block_copy(aBlock);

      [v5 afterLayoutIncludingLayers:1 performBlock:v7];

      _Block_release(v7);
      Strong = v5;
    }
  }
}

void sub_100F0BF80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100F0FF14();
  }
}

void sub_100F0BFD4()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isObserving) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isObserving) = 0;
    v1 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_subscriptions;
    swift_beginAccess();
    *(v0 + v1) = _swiftEmptySetSingleton;

    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong removeModeObserver:v0];

    v3 = swift_unknownObjectUnownedLoadStrong();
    v4 = [v3 freehandDrawingToolkit];

    if (v4)
    {
      [v4 removeToolkitObserver:v0];
    }
  }
}

void sub_100F0C0BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_pendingLassoEditingViewUpdateFromSelectionChange) = 0;
    sub_100F0B4B4();
  }
}

void sub_100F0C11C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong mode];

  v2 = [v1 pencilModeType];
  if (v2 == 1)
  {
    v3 = swift_unknownObjectUnownedLoadStrong();
    v4 = [v3 freehandDrawingToolkit];

    if (v4)
    {
      v5 = [v4 currentTool];

      [v5 type];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100F0C214()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v65 = [Strong changeNotifier];

  if (!v65)
  {
    return;
  }

  v2 = swift_unknownObjectUnownedLoadStrong();
  sub_100006370(0, &qword_101A0C7E0);
  v3 = [v2 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

  if (!v3)
  {

    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    return;
  }

  v5 = v4;
  v62 = v0;
  v58 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_observedInfos;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_observedInfos);

  v7 = [v5 boardItems];
  type metadata accessor for CRLBoardItem(0);
  v8 = sub_100F169C8(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = v9 & 0xC000000000000001;
  v66 = v9;
  v57 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v10 = v69;
    v61 = v68;
    v11 = v70;
    v12 = v71;
    v13 = v72;
  }

  else
  {
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);

    v12 = 0;
    v61 = v9;
  }

  v17 = (v11 + 64) >> 6;
  v60 = v6 & 0xC000000000000001;
  v63 = v6 + 56;
  v18 = v6;
  while (v61 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24)
    {
      goto LABEL_37;
    }

    v67 = v24;
    swift_dynamicCast();
    v23 = v73;
    v21 = v12;
    v22 = v13;
    if (!v73)
    {
      goto LABEL_37;
    }

LABEL_28:
    if (v60)
    {
      v25 = v23;
      v26 = __CocoaSet.contains(_:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(v6 + 16) || (v27 = NSObject._rawHashValue(seed:)(v18[5]), v28 = -1 << *(v18 + 32), v29 = v27 & ~v28, ((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
      {
LABEL_17:
        [v65 addObserver:v62 forChangeSource:{v23, v57}];
        goto LABEL_18;
      }

      v30 = ~v28;
      while (1)
      {
        v31 = *(v18[6] + 8 * v29);
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_18:

    v12 = v21;
    v13 = v22;
    v6 = v18;
  }

  v19 = v12;
  v20 = v13;
  v21 = v12;
  if (v13)
  {
LABEL_24:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v61 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v21 >= v17)
    {
      break;
    }

    v20 = *(v10 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_24;
    }
  }

LABEL_37:
  sub_100035F90();
  if (v60)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v6 = v73;
    v33 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v37 = v66;
  }

  else
  {
    v35 = 0;
    v38 = -1 << *(v6 + 32);
    v34 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v36 = v40 & *(v6 + 56);
    v37 = v66;
    v33 = v63;
  }

  v41 = (v34 + 64) >> 6;
  v64 = v37 + 56;
  while (2)
  {
    if (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v46 = v67, v44 = v35, v45 = v36, !v67))
      {
LABEL_64:
        swift_unknownObjectRelease();

        sub_100035F90();
        *(v62 + v58) = v66;

        return;
      }

LABEL_55:
      v47 = v33;
      v48 = v6;
      if (v59)
      {
        v49 = v46;
        v50 = __CocoaSet.contains(_:)();

        if (v50)
        {
          goto LABEL_45;
        }
      }

      else if (*(v66 + 16))
      {
        v51 = NSObject._rawHashValue(seed:)(*(v66 + 40));
        v52 = -1 << *(v66 + 32);
        v53 = v51 & ~v52;
        if ((*(v64 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
        {
          v54 = ~v52;
          do
          {
            v55 = *(*(v66 + 48) + 8 * v53);
            v56 = static NSObject.== infix(_:_:)();

            if (v56)
            {
              goto LABEL_45;
            }

            v53 = (v53 + 1) & v54;
          }

          while (((*(v64 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0);
        }
      }

      [v65 removeObserver:v62 forChangeSource:{v46, v57}];
LABEL_45:

      v35 = v44;
      v36 = v45;
      v6 = v48;
      v33 = v47;
      continue;
    }

    break;
  }

  v42 = v35;
  v43 = v36;
  v44 = v35;
  if (v36)
  {
LABEL_51:
    v45 = (v43 - 1) & v43;
    v46 = *(*(v6 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v46)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v41)
    {
      goto LABEL_64;
    }

    v43 = *(v33 + 8 * v44);
    ++v42;
    if (v43)
    {
      goto LABEL_51;
    }
  }

LABEL_67:
  __break(1u);
}

void sub_100F0C8D4()
{
  v1 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v1 - 8);
  v59 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100006370(0, &qword_101A0C7E0);
  v4 = [Strong mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

  if (!v4)
  {
    goto LABEL_17;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_17:
    v15 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
    [v15 setSelectedFillColor:0];
    [v15 setSelectedStrokeColor:0];
    sub_100F08B8C();
    v62 = v16;
    [*(v16 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso) setAllowsColorSelection:0];
    v17 = v62;

    return;
  }

  v6 = v5;
  type metadata accessor for CRLShapeItem();
  v7 = [v6 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_100F22830(v8);

  if (v9)
  {
    v56[1] = v4;
    *&v77 = _swiftEmptyArrayStorage;
    if (v9 >> 62)
    {
      goto LABEL_26;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v0; v10; i = v0)
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v0 = v12;
        if ((*((swift_isaMask & *v12) + 0x180))())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v0 = &v77;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v14 == v10)
        {
          v18 = v77;
          v0 = i;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_28:

    v58 = v18;
    if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v19 = *(v18 + 16);
    v20 = &selRef_setSizeClassParameters_;
    if (v19)
    {
LABEL_31:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v58;
      v61 = v19;
      v62 = v58 & 0xC000000000000001;
      while (1)
      {
        if (v62)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v24 + 16))
          {
            goto LABEL_62;
          }

          v26 = *(v24 + 8 * v21 + 32);
        }

        v27 = v26;
        v28 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          v20 = &selRef_setSizeClassParameters_;
          if (!v19)
          {
            break;
          }

          goto LABEL_31;
        }

        if (v23)
        {
          if (v22)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v60 = v22;
          v29 = **(v26 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
          v30 = swift_conformsToProtocol2();
          if (!v30)
          {
            __break(1u);
            return;
          }

          v31 = v30;
          v32 = *(v30 + 16);

          v33 = v59;
          v32(v29, v31);

          sub_1005B981C(&unk_101A10690);
          v0 = v33;
          CRRegister.wrappedValue.getter();
          sub_100BE9EEC(v33);
          v70 = v63;
          v71 = v64;
          v75 = v68;
          v76 = v69;
          v73 = v66;
          v74 = v67;
          v72 = v65;
          v77 = v63;
          v78[0] = v64;
          v78[4] = v68;
          v78[5] = v69;
          v78[2] = v66;
          v78[3] = v67;
          v78[1] = v65;
          if (v69)
          {
            sub_100006370(0, &qword_101A00EB0);
            v79[2] = v73;
            v79[3] = v74;
            v79[4] = v75;
            v80 = v76;
            v79[0] = v71;
            v79[1] = v72;
            sub_10074A990(v78, &v63);
            v0 = sub_1008B0490(v79);
            v22 = v60;
            v24 = v58;
            if (BYTE8(v77) == 1)
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v34 = static OS_os_log.persistence;
              v35 = static os_log_type_t.info.getter();
              sub_100005404(v34, &_mh_execute_header, v35, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            v36 = [objc_allocWithZone(CRLColorFill) initWithColor:v0];
            sub_10000CAAC(&v70, &qword_1019FFF80);

            v23 = [v36 color];
          }

          else
          {
            v23 = 0;
            v22 = v60;
            v24 = v58;
          }

          v19 = v61;
          if (v22)
          {
            goto LABEL_55;
          }
        }

        v37 = *((swift_isaMask & *v27) + 0x4D8);
        v0 = v27;
        v38 = v37();
        v19 = v61;
        v27 = v38;

        if (!v27)
        {
          goto LABEL_33;
        }

        if ([v27 isNullStroke])
        {

LABEL_33:
          v22 = 0;
          v25 = v23 == 0;
          goto LABEL_34;
        }

        v22 = [v27 color];

LABEL_55:
        v25 = v23 == 0;
        if (v23 && v22)
        {

          v40 = *(i + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
LABEL_60:
          v20 = &selRef_setSizeClassParameters_;
          v39 = [v23 UIColor];
          goto LABEL_65;
        }

LABEL_34:
        ++v21;
        if (v28 == v19)
        {

          v40 = *(i + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
          if (v25)
          {
            v39 = 0;
            v23 = 0;
            v20 = &selRef_setSizeClassParameters_;
            goto LABEL_65;
          }

          goto LABEL_60;
        }
      }
    }

    v39 = 0;
    v22 = 0;
    v23 = 0;
    v40 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
LABEL_65:
    [v40 setSelectedFillColor:v39];

    if (v22)
    {
      v41 = [v22 v20[278]];
      [v40 setSelectedStrokeColor:v41];

      sub_100F08B8C();
      v43 = v42;
      v44 = *&v42[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso];
      v45 = v22;
      [v44 setAllowsColorSelection:1];
      v46 = [v44 color];
      v47 = [objc_allocWithZone(CRLColor) initWithUIColor:v46];

      if ([v45 isAlmostEqualToColor:v47])
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v54 = [v45 v20[278]];
        [v44 setColor:v54];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      [v40 setSelectedStrokeColor:0];
      sub_100F08B8C();
      v49 = v48;
      if (v23)
      {
        v50 = *&v48[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso];
        v51 = v23;
        [v50 setAllowsColorSelection:1];
        v52 = [v50 color];
        v53 = [objc_allocWithZone(CRLColor) initWithUIColor:v52];

        if ([v51 isAlmostEqualToColor:v53])
        {

          swift_unknownObjectRelease();
        }

        else
        {
          v55 = [v51 v20[278]];
          [v50 setColor:v55];

          swift_unknownObjectRelease();
        }
      }

      else
      {
        [*&v48[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso] setAllowsColorSelection:0];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100F0D320(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = [*(v7 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView) *a2];
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v61 = [objc_allocWithZone(CRLColor) initWithUIColor:v12];
      sub_100F0E05C(a7, v61, [v14 isUpdatingContinuously]);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v60 = objc_opt_self();
      v58 = [v60 _atomicIncrementAssertCount];
      v62[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v62);
      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      v39 = [v38 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v43 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v58;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v45;
      v46 = sub_1005CF04C();
      *(inited + 104) = v46;
      *(inited + 72) = v37;
      *(inited + 136) = &type metadata for String;
      v47 = sub_1000053B0();
      *(inited + 112) = v40;
      *(inited + 120) = v42;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v47;
      *(inited + 152) = a6;
      v48 = v62[0];
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v48;
      v49 = v37;
      v50 = v48;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v53[4] = 0;
      v53[5] = 0;
      v54 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v55 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      [v60 handleFailureInFunction:v55 file:v56 lineNumber:a6 isFatal:0 format:v57 args:v54];
    }
  }

  else
  {
    v59 = objc_opt_self();
    v15 = [v59 _atomicIncrementAssertCount];
    v62[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v62);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_10146CA70;
    *(v23 + 56) = &type metadata for Int32;
    *(v23 + 64) = &protocol witness table for Int32;
    *(v23 + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30);
    *(v23 + 96) = v24;
    v25 = sub_1005CF04C();
    *(v23 + 104) = v25;
    *(v23 + 72) = v16;
    *(v23 + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(v23 + 112) = v19;
    *(v23 + 120) = v21;
    *(v23 + 176) = &type metadata for UInt;
    *(v23 + 184) = &protocol witness table for UInt;
    *(v23 + 144) = v26;
    *(v23 + 152) = a5;
    v27 = v62[0];
    *(v23 + 216) = v24;
    *(v23 + 224) = v25;
    *(v23 + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v34 file:v35 lineNumber:a5 isFatal:0 format:v36 args:v33];
  }
}

void sub_100F0DB00(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_100F0DB78(uint64_t a1)
{
  sub_100F0C11C();
  if (v2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100006370(0, &qword_101A0C7E0);
    v4 = [Strong mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = swift_unknownObjectUnownedLoadStrong();
        v7 = [v6 editingCoordinator];

        if (v7)
        {
          v31 = *&v7[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

          sub_10088E3FC(0);
          sub_100F0E05C(16, a1, 0);
          sub_100F0E05C(22, a1, 0);
          sub_10088E600(0);
        }

        else
        {
          v8 = objc_opt_self();
          v9 = [v8 _atomicIncrementAssertCount];
          v32 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v32);
          StaticString.description.getter();
          v10 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v11 = String._bridgeToObjectiveC()();

          v12 = [v11 lastPathComponent];

          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v16 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v9;
          v18 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v18;
          v19 = sub_1005CF04C();
          *(inited + 104) = v19;
          *(inited + 72) = v10;
          *(inited + 136) = &type metadata for String;
          v20 = sub_1000053B0();
          *(inited + 112) = v13;
          *(inited + 120) = v15;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v20;
          *(inited + 152) = 595;
          v21 = v32;
          *(inited + 216) = v18;
          *(inited + 224) = v19;
          *(inited + 192) = v21;
          v22 = v10;
          v23 = v21;
          v24 = static os_log_type_t.error.getter();
          sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v25 = static os_log_type_t.error.getter();
          sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v26 = swift_allocObject();
          v26[2] = 8;
          v26[3] = 0;
          v26[4] = 0;
          v26[5] = 0;
          v27 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v28 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v29 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v30 = String._bridgeToObjectiveC()();

          [v8 handleFailureInFunction:v28 file:v29 lineNumber:595 isFatal:0 format:v30 args:v27];
        }
      }
    }
  }
}

void sub_100F0E05C(uint64_t a1, uint64_t a2, int a3)
{
  v188 = a2;
  v192 = type metadata accessor for UUID();
  v185 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v181[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  __chkstk_darwin(v8 - 8);
  v187 = &v181[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v186 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_editorController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100006370(0, &qword_101A0C7E0);
  v11 = [Strong mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

  if (!v11)
  {
    goto LABEL_42;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
LABEL_42:
    v19 = objc_opt_self();
    LODWORD(v18) = [v19 _atomicIncrementAssertCount];
    *&v217 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v217);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = v62;

    if (qword_1019F20A0 != -1)
    {
LABEL_86:
      swift_once();
    }

    v63 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v65 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v65;
    v66 = sub_1005CF04C();
    *(inited + 104) = v66;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v67 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = a1;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v67;
    *(inited + 152) = 607;
    v68 = v217;
    *(inited + 216) = v65;
    *(inited + 224) = v66;
    *(inited + 192) = v68;
    v69 = v20;
    v70 = v68;
    v71 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v72, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v73 = swift_allocObject();
    v73[2] = 8;
    v73[3] = 0;
    v73[4] = 0;
    v73[5] = 0;
    v74 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    [v19 handleFailureInFunction:v75 file:v76 lineNumber:607 isFatal:0 format:v77 args:v74];

    return;
  }

  v184 = v11;
  if (a1 != 16 && a1 != 22)
  {
    v78 = objc_opt_self();
    v79 = [v78 _atomicIncrementAssertCount];
    *&v217 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v217);
    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    v82 = [v81 lastPathComponent];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v86 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_10146CA70;
    *(v87 + 56) = &type metadata for Int32;
    *(v87 + 64) = &protocol witness table for Int32;
    *(v87 + 32) = v79;
    v88 = sub_100006370(0, &qword_1019F4D30);
    *(v87 + 96) = v88;
    v89 = sub_1005CF04C();
    *(v87 + 104) = v89;
    *(v87 + 72) = v80;
    *(v87 + 136) = &type metadata for String;
    v90 = sub_1000053B0();
    *(v87 + 112) = v83;
    *(v87 + 120) = v85;
    *(v87 + 176) = &type metadata for UInt;
    *(v87 + 184) = &protocol witness table for UInt;
    *(v87 + 144) = v90;
    *(v87 + 152) = 612;
    v91 = v217;
    *(v87 + 216) = v88;
    *(v87 + 224) = v89;
    *(v87 + 192) = v91;
    v92 = v80;
    v93 = v91;
    v94 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v94, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v87);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v86, &_mh_execute_header, v95, "Unexpected property type in setSelectedShapeProperty(). Ignoring.", 65, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v96 = swift_allocObject();
    v96[2] = 8;
    v96[3] = 0;
    v96[4] = 0;
    v96[5] = 0;
    v97 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v98 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    [v78 handleFailureInFunction:v98 file:v99 lineNumber:612 isFatal:0 format:v100 args:v97];
    swift_unknownObjectRelease();

    goto LABEL_60;
  }

  v13 = v12;
  v199 = type metadata accessor for CRLShapeItem();
  v14 = [v13 sortedBoardItemsOfClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for CRLBoardItem(0);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v219 = _swiftEmptyArrayStorage;
  v200 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v182 = a3;
  v183 = v3;
  v197 = a1;
  if (!v16)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_49;
  }

  v17 = 0;
  v198 = (v15 & 0xC000000000000001);
  v18 = _swiftEmptyArrayStorage;
  v19 = "invalid nil found when unwrapping value";
  v20 = "setSelectedShapeProperty(_:to:continuously:)";
  v189 = xmmword_10146CA70;
  v193 = v16;
  v194 = v15;
  do
  {
    v190 = v18;
    while (1)
    {
      if (v198)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v17 >= *(v200 + 16))
        {
          goto LABEL_85;
        }

        v21 = *(v15 + 8 * v17 + 32);
        v22 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }
      }

      v201 = v21;
      v202 = v22;
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        v196 = objc_opt_self();
        v28 = [v196 _atomicIncrementAssertCount];
        *&v217 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v217);
        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        v31 = [v30 lastPathComponent];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v35 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v36 = swift_allocObject();
        *(v36 + 16) = v189;
        *(v36 + 56) = &type metadata for Int32;
        *(v36 + 64) = &protocol witness table for Int32;
        *(v36 + 32) = v28;
        v37 = sub_100006370(0, &qword_1019F4D30);
        *(v36 + 96) = v37;
        v38 = sub_1005CF04C();
        *(v36 + 104) = v38;
        *(v36 + 72) = v29;
        *(v36 + 136) = &type metadata for String;
        v39 = sub_1000053B0();
        *(v36 + 112) = v32;
        *(v36 + 120) = v34;
        *(v36 + 176) = &type metadata for UInt;
        *(v36 + 144) = v39;
        *(v36 + 152) = 627;
        v40 = v217;
        *(v36 + 216) = v37;
        *(v36 + 224) = v38;
        *(v36 + 184) = &protocol witness table for UInt;
        *(v36 + 192) = v40;
        v18 = v29;
        v41 = v40;
        v42 = static os_log_type_t.error.getter();
        sub_100005404(v35, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v43 = static os_log_type_t.error.getter();
        v4 = "invalid nil found when unwrapping value";
        sub_100005404(v35, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v44 = swift_allocObject();
        LODWORD(v18) = v44;
        v44[2] = 8;
        v44[3] = 0;
        v44[4] = 0;
        v44[5] = 0;
        v195 = __VaListBuilder.va_list()();
        v20 = "setSelectedShapeProperty(_:to:continuously:)";
        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v47 = String._bridgeToObjectiveC()();

        [v196 handleFailureInFunction:v45 file:v46 lineNumber:627 isFatal:0 format:v47 args:v195];

        v16 = v193;
        v15 = v194;
        v19 = "invalid nil found when unwrapping value";
        a1 = v197;
        goto LABEL_11;
      }

      v4 = v23;
      LODWORD(v18) = v23;
      if (((*((swift_isaMask & *v23) + 0x180))() & 1) == 0)
      {

        goto LABEL_11;
      }

      if (a1 != 16)
      {
        break;
      }

      v24 = *((swift_isaMask & *v4) + 0x4D8);
      v25 = v201;
      LODWORD(v18) = v4;
      v26 = v24();
      if (!v26)
      {

        goto LABEL_28;
      }

      v18 = v26;
      v27 = [v26 isNullStroke];

      if ((v27 & 1) == 0)
      {
        goto LABEL_37;
      }

      v19 = "invalid nil found when unwrapping value";
      v20 = "setSelectedShapeProperty(_:to:continuously:)";
LABEL_11:
      ++v17;
      if (v202 == v16)
      {
        v18 = v190;
        goto LABEL_49;
      }
    }

    v48 = **&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    v49 = swift_conformsToProtocol2();
    if (!v49)
    {
      __break(1u);
      return;
    }

    v50 = v49;
    v51 = *(v49 + 16);
    v52 = v201;

    v53 = v187;
    v51(v48, v50);

    sub_1005B981C(&unk_101A10690);
    LODWORD(v18) = v53;
    CRRegister.wrappedValue.getter();
    sub_100BE9EEC(v53);
    v210 = v203;
    v211 = v204;
    v215 = v208;
    v216 = v209;
    v213 = v206;
    v214 = v207;
    v212 = v205;
    v217 = v203;
    v218[0] = v204;
    v218[4] = v208;
    v218[5] = v209;
    v218[2] = v206;
    v218[3] = v207;
    v218[1] = v205;
    if (!v209)
    {

      a1 = v197;
      v16 = v193;
      v15 = v194;
LABEL_28:
      v19 = "invalid nil found when unwrapping value";
      v20 = "setSelectedShapeProperty(_:to:continuously:)";
      goto LABEL_11;
    }

    v54 = v52;
    sub_100006370(0, &qword_101A00EB0);
    v220[2] = v213;
    v220[3] = v214;
    v220[4] = v215;
    v221 = v216;
    v220[0] = v211;
    v220[1] = v212;
    sub_10074A990(v218, &v203);
    v55 = sub_1008B0490(v220);
    a1 = v197;
    if (BYTE8(v217))
    {
      v16 = v193;
      v15 = v194;
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v56 = static OS_os_log.persistence;
      v57 = static os_log_type_t.info.getter();
      sub_100005404(v56, &_mh_execute_header, v57, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      v58 = [objc_allocWithZone(CRLColorFill) initWithColor:v55];
      sub_10000CAAC(&v210, &qword_1019FFF80);
    }

    else
    {
      v59 = [objc_allocWithZone(CRLColorFill) initWithColor:v55];
      sub_10000CAAC(&v210, &qword_1019FFF80);

      v16 = v193;
      v15 = v194;
    }

LABEL_37:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v219;
    v17 = v202;
    v19 = "invalid nil found when unwrapping value";
    v20 = "setSelectedShapeProperty(_:to:continuously:)";
  }

  while (v202 != v16);
LABEL_49:

  v101 = v18 >> 62;
  v190 = v18;
  if (v18 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_89;
    }

LABEL_51:
    v102 = v183;
    v103 = swift_unknownObjectUnownedLoadStrong();
    v104 = [v103 editingCoordinator];

    if (v104)
    {
      v105 = *&v104[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

      v106 = swift_unknownObjectUnownedLoadStrong();
      v107 = [v106 canvasEditor];

      v200 = v107;
      v202 = v105;
      if (v107)
      {
        v199 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_hasCommandGroupOpenForContinuousColorUpdates;
        if (*(v102 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_hasCommandGroupOpenForContinuousColorUpdates) & 1) == 0 && (v182)
        {
          sub_10088E3FC(0);
          sub_10088F490();
          *(v183 + v199) = 1;
        }

        v108 = swift_unknownObjectUnownedLoadStrong();
        v109 = v200;
        swift_unknownObjectRetain();
        v110 = [v108 selectionPath];

        v111 = [objc_allocWithZone(CRLCanvasCommandSelectionBehavior) initWithCanvasEditor:v109 type:2 selectionPath:v110];
        swift_unknownObjectRelease();

        v112 = v111;
        sub_10088E3FC(v111);
        v198 = v112;

        v113 = [objc_opt_self() mainBundle];
        v154 = String._bridgeToObjectiveC()();
        v155 = String._bridgeToObjectiveC()();
        v156 = [v113 localizedStringForKey:v154 value:v155 table:0];

        v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v158;

        sub_10088DE20(v157, v135);
        if (v101)
        {
          v159 = _CocoaArrayWrapper.endIndex.getter();
          if (!v159)
          {
LABEL_80:

            v179 = v202;
            sub_10088E600(0);
            v180 = v183;
            if (*(v183 + v199) == 1 && (v182 & 1) == 0)
            {
              sub_10088E600(0);
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              *(v180 + v199) = 0;
            }

            else
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
            }

            return;
          }
        }

        else
        {
          v159 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v159)
          {
            goto LABEL_80;
          }
        }

        if (v159 >= 1)
        {
          v160 = 0;
          v201 = (v190 & 0xC000000000000001);
          v161 = (v185 + 8);
          do
          {
            if (v201)
            {
              v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v170 = *(v190 + 8 * v160 + 32);
            }

            v171 = v170;
            if (a1 == 16)
            {
              v172 = *((swift_isaMask & *v170) + 0x4D8);
              v167.super.isa = v170;
              v173 = v172();
              if (v173 && (v174 = v173, [v173 mutableCopy], v174, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_1005B981C(&unk_101A23250), (swift_dynamicCast() & 1) != 0))
              {
                v175 = v210;
                [v210 setColor:v188];
                v166 = v175;
              }

              else
              {
                v166 = 0;
              }

              v176 = objc_allocWithZone(type metadata accessor for CRLCommandSetStroke());
              v177 = v191;
              (*(**(v167.super.isa + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*v161)(v177, v192);
              v168 = [v176 initWithId:isa stroke:v166];

              v163 = v166;
              v169 = v167.super.isa;
            }

            else
            {
              v162 = objc_allocWithZone(CRLColorFill);
              v163 = [v162 initWithColor:v188];
              v164 = objc_allocWithZone(type metadata accessor for CRLCommandSetFill());
              v165 = v191;
              (*(**&v171[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
              v166 = v171;
              v167.super.isa = UUID._bridgeToObjectiveC()().super.isa;
              (*v161)(v165, v192);
              v168 = [v164 initWithId:v167.super.isa fill:v163];
              v169 = v166;
            }

            ++v160;

            sub_100888700(v168, 0, 0, 4, 0);
            a1 = v197;
          }

          while (v159 != v160);
          goto LABEL_80;
        }

        __break(1u);
      }

      else
      {
        v201 = objc_opt_self();
        LODWORD(v105) = [v201 _atomicIncrementAssertCount];
        *&v217 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v217);
        StaticString.description.getter();
        v135 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v136 = String._bridgeToObjectiveC()();

        v137 = [v136 lastPathComponent];

        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v138;

        if (qword_1019F20A0 == -1)
        {
LABEL_62:
          v139 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v140 = swift_allocObject();
          *(v140 + 16) = xmmword_10146CA70;
          *(v140 + 56) = &type metadata for Int32;
          *(v140 + 64) = &protocol witness table for Int32;
          *(v140 + 32) = v105;
          v141 = sub_100006370(0, &qword_1019F4D30);
          *(v140 + 96) = v141;
          v142 = sub_1005CF04C();
          *(v140 + 104) = v142;
          *(v140 + 72) = v135;
          *(v140 + 136) = &type metadata for String;
          v143 = sub_1000053B0();
          *(v140 + 112) = a1;
          *(v140 + 120) = v4;
          *(v140 + 176) = &type metadata for UInt;
          *(v140 + 184) = &protocol witness table for UInt;
          *(v140 + 144) = v143;
          *(v140 + 152) = 647;
          v144 = v217;
          *(v140 + 216) = v141;
          *(v140 + 224) = v142;
          *(v140 + 192) = v144;
          v145 = v135;
          v146 = v144;
          v147 = static os_log_type_t.error.getter();
          sub_100005404(v139, &_mh_execute_header, v147, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v140);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v148 = static os_log_type_t.error.getter();
          sub_100005404(v139, &_mh_execute_header, v148, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v149 = swift_allocObject();
          v149[2] = 8;
          v149[3] = 0;
          v149[4] = 0;
          v149[5] = 0;
          v150 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v151 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v152 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v153 = String._bridgeToObjectiveC()();

          [v201 handleFailureInFunction:v151 file:v152 lineNumber:647 isFatal:0 format:v153 args:v150];
          swift_unknownObjectRelease();

          return;
        }
      }

      swift_once();
      goto LABEL_62;
    }

    v114 = objc_opt_self();
    v115 = [v114 _atomicIncrementAssertCount];
    *&v217 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v217);
    StaticString.description.getter();
    v116 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v117 = String._bridgeToObjectiveC()();

    v118 = [v117 lastPathComponent];

    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v122 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_10146CA70;
    *(v123 + 56) = &type metadata for Int32;
    *(v123 + 64) = &protocol witness table for Int32;
    *(v123 + 32) = v115;
    v124 = sub_100006370(0, &qword_1019F4D30);
    *(v123 + 96) = v124;
    v125 = sub_1005CF04C();
    *(v123 + 104) = v125;
    *(v123 + 72) = v116;
    *(v123 + 136) = &type metadata for String;
    v126 = sub_1000053B0();
    *(v123 + 112) = v119;
    *(v123 + 120) = v121;
    *(v123 + 176) = &type metadata for UInt;
    *(v123 + 184) = &protocol witness table for UInt;
    *(v123 + 144) = v126;
    *(v123 + 152) = 646;
    v127 = v217;
    *(v123 + 216) = v124;
    *(v123 + 224) = v125;
    *(v123 + 192) = v127;
    v128 = v116;
    v129 = v127;
    v130 = static os_log_type_t.error.getter();
    sub_100005404(v122, &_mh_execute_header, v130, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v123);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v131 = static os_log_type_t.error.getter();
    sub_100005404(v122, &_mh_execute_header, v131, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v132 = swift_allocObject();
    v132[2] = 8;
    v132[3] = 0;
    v132[4] = 0;
    v132[5] = 0;
    v133 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v134 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    [v114 handleFailureInFunction:v134 file:v99 lineNumber:646 isFatal:0 format:v100 args:v133];
    swift_unknownObjectRelease();

LABEL_60:
    return;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_51;
  }

LABEL_89:
  swift_unknownObjectRelease();
}

void sub_100F0FF14()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong allowUndoRedoOperations];

  if (v2)
  {
    v3 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_updatingZOrderButtons;
    if ((*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_updatingZOrderButtons) & 1) == 0)
    {
      sub_100F0C11C();
      if (v4)
      {
        *(v0 + v3) = 1;
        v5 = swift_unknownObjectUnownedLoadStrong();
        sub_100006370(0, &qword_101A0C7E0);
        v6 = [v5 mostSpecificCurrentEditorOfClass:swift_getObjCClassFromMetadata()];

        if (v6 && (objc_opt_self(), v7 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v7))
        {
          v8 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
          v9 = swift_unknownObjectUnownedLoadStrong();
          v10 = [v9 canPerformInteractiveAction:"sendBackward:" withSender:0];

          [v8 setSendBackwardEnabled:v10];
          v11 = swift_unknownObjectUnownedLoadStrong();
          v12 = [v11 canPerformInteractiveAction:"bringForward:" withSender:0];

          [v8 setBringForwardEnabled:v12];
        }

        else
        {
          v13 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
          [v13 setSendBackwardEnabled:0];
          [v13 setBringForwardEnabled:0];
        }

        *(v0 + v3) = 0;
      }
    }
  }
}

void sub_100F1014C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  swift_unknownObjectRetain();
  v12 = a1;
  sub_100F15DA0(a4, a5, a6, a7);
  swift_unknownObjectRelease();
}

void sub_100F101DC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong presentedViewController];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_100F169A4;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = *"";
    v6[2] = sub_100007638;
    v6[3] = &unk_1018A8858;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

double sub_100F103AC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong canvasView];

  v2 = [v1 enclosingScrollView];
  if (v2)
  {
    sub_100F08B8C();
    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

    [v5 frameObscuredInView:v2];
    v7 = v6;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 875;
    v21 = v32;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v8 handleFailureInFunction:v28 file:v29 lineNumber:875 isFatal:0 format:v30 args:v27];

    return CGRectNull.origin.x;
  }

  return v7;
}

void sub_100F10818()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled))
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 885;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not try to install a pencil tray which is already installed.", 67, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:885 isFatal:0 format:v23 args:v20];
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled) = 1;

    sub_100F09EB4();
  }
}

void sub_100F10C3C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled) = 0;
  }

  else
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 896;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not try to uninstall a pencil tray which is not installed.", 65, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:896 isFatal:0 format:v23 args:v20];
  }
}

void sub_100F11088()
{
  sub_100F08B8C();
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v44 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v5;
  v6 = sub_1005CF04C();
  *(inited + 32) = v4;
  v43 = inited + 32;
  v7 = inited;
  *(inited + 64) = v6;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v42 = v2;
    v41 = objc_opt_self();
    v8 = [v41 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(v7, &v44);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = v7;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v16 = static OS_os_log.crlAssert;
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_10146CA70;
      *(v17 + 56) = &type metadata for Int32;
      *(v17 + 64) = &protocol witness table for Int32;
      *(v17 + 32) = v8;
      *(v17 + 96) = v5;
      *(v17 + 104) = v6;
      *(v17 + 72) = v9;
      *(v17 + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(v17 + 112) = v13;
      *(v17 + 120) = v15;
      *(v17 + 176) = &type metadata for UInt;
      *(v17 + 184) = &protocol witness table for UInt;
      *(v17 + 144) = v18;
      *(v17 + 152) = 977;
      v19 = v44;
      *(v17 + 216) = v5;
      *(v17 + 224) = v6;
      *(v17 + 192) = v19;
      v20 = v9;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v16, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v16, &_mh_execute_header, v23, "expected equality between two values of type %{public}@", 55, 2, v10);

      type metadata accessor for __VaListBuilder();
      v24 = swift_allocObject();
      v24[2] = 8;
      v24[3] = 0;
      v25 = v24 + 3;
      v24[4] = 0;
      v24[5] = 0;
      v5 = *(v10 + 16);
      if (!v5)
      {
LABEL_29:
        v38 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v2 = String._bridgeToObjectiveC()();

        [v41 handleFailureInFunction:v39 file:v40 lineNumber:977 isFatal:0 format:v2 args:v38];

        goto LABEL_30;
      }

      v6 = 0;
      while (1)
      {
        v26 = (v43 + 40 * v6);
        v13 = v26[3];
        v9 = sub_100020E58(v26, v13);
        v27 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v15 = *v25;
        v28 = *(v27 + 16);
        v29 = __OFADD__(*v25, v28);
        v30 = *v25 + v28;
        if (v29)
        {
          break;
        }

        v13 = v24[4];
        if (v13 >= v30)
        {
          goto LABEL_21;
        }

        if (v13 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v9 = v24[5];
        if (2 * v13 > v30)
        {
          v30 = 2 * v13;
        }

        v24[4] = v30;
        if ((v30 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v10 = v27;
        v31 = swift_slowAlloc();
        v32 = v31;
        v24[5] = v31;
        if (v9)
        {
          if (v31 != v9 || v31 >= &v9[8 * v15])
          {
            memmove(v31, v9, 8 * v15);
          }

          v9 = v24;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v27 = v10;
LABEL_21:
          v32 = v24[5];
          if (!v32)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v27 = v10;
        if (!v32)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v34 = *(v27 + 16);
        if (v34)
        {
          v35 = (v27 + 32);
          v36 = *v25;
          while (1)
          {
            v37 = *v35++;
            *&v32[8 * v36] = v37;
            v36 = *v25 + 1;
            if (__OFADD__(*v25, 1))
            {
              break;
            }

            *v25 = v36;
            if (!--v34)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        if (++v6 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

LABEL_30:

  sub_100F0A480();
}

void sub_100F116C0(void *a1)
{
  sub_100F08B8C();
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v7;
  v8 = sub_1005CF04C();
  *(inited + 32) = v6;
  v50 = v4;
  v51 = inited + 32;
  v9 = inited;
  *(inited + 64) = v8;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v49 = a1;
    v48 = objc_opt_self();
    v11 = [v48 _atomicIncrementAssertCount];
    v52 = [objc_allocWithZone(NSString) init];
    sub_100604538(v9, &v52);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = v9;
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v19 = static OS_os_log.crlAssert;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_10146CA70;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      *(v20 + 32) = v11;
      *(v20 + 96) = v7;
      *(v20 + 104) = v8;
      *(v20 + 72) = v12;
      *(v20 + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(v20 + 112) = v16;
      *(v20 + 120) = v18;
      *(v20 + 176) = &type metadata for UInt;
      *(v20 + 184) = &protocol witness table for UInt;
      *(v20 + 144) = v21;
      *(v20 + 152) = 1006;
      v22 = v52;
      *(v20 + 216) = v7;
      *(v20 + 224) = v8;
      *(v20 + 192) = v22;
      v23 = v12;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v19, &_mh_execute_header, v26, "expected equality between two values of type %{public}@", 55, 2, v13);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v18 = v27 + 3;
      v27[4] = 0;
      v27[5] = 0;
      v28 = *(v13 + 16);
      if (!v28)
      {
LABEL_29:
        v42 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        [v48 handleFailureInFunction:v43 file:v44 lineNumber:1006 isFatal:0 format:v45 args:v42];

        v10 = v45;
        a1 = v49;
        goto LABEL_30;
      }

      v7 = 0;
      v8 = 40;
      while (1)
      {
        v29 = (v51 + 40 * v7);
        v16 = v29[3];
        v12 = sub_100020E58(v29, v16);
        v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v31 = *v18;
        v32 = *(v30 + 16);
        v33 = __OFADD__(*v18, v32);
        v34 = *v18 + v32;
        if (v33)
        {
          break;
        }

        v16 = v27[4];
        if (v16 >= v34)
        {
          goto LABEL_21;
        }

        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_37;
        }

        v12 = v27[5];
        if (2 * v16 > v34)
        {
          v34 = 2 * v16;
        }

        v27[4] = v34;
        if ((v34 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_38;
        }

        v13 = v30;
        v35 = swift_slowAlloc();
        v36 = v35;
        v27[5] = v35;
        if (v12)
        {
          if (v35 != v12 || v35 >= &v12[8 * v31])
          {
            memmove(v35, v12, 8 * v31);
          }

          v12 = v27;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v30 = v13;
LABEL_21:
          v36 = v27[5];
          if (!v36)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v30 = v13;
        if (!v36)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v38 = *(v30 + 16);
        if (v38)
        {
          v39 = (v30 + 32);
          v40 = *v18;
          while (1)
          {
            v41 = *v39++;
            *&v36[8 * v40] = v41;
            v40 = *v18 + 1;
            if (__OFADD__(*v18, 1))
            {
              break;
            }

            *v18 = v40;
            if (!--v38)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        if (++v7 == v28)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  v10 = v4;
LABEL_30:

  if (([a1 isVisible] & 1) == 0 && objc_msgSend(a1, "isRulerActive"))
  {
    [swift_unknownObjectUnownedLoadStrong() beginDrawingModeIfNeeded];
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v47 = [Strong freehandDrawingToolkit];

  if (v47)
  {
    [v47 setRulerToolShowing:{objc_msgSend(a1, "isRulerActive")}];
  }

  else
  {
    __break(1u);
  }
}

id sub_100F11DA4()
{
  v1 = v0;
  swift_getObjectType();
  sub_100F08B8C();
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v47 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();
  v7 = inited;

  v8 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v8;
  v9 = sub_1005CF04C();
  *(inited + 32) = v6;
  v10 = inited + 32;
  *(v7 + 64) = v9;
  v46 = v4;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v44 = v1;
    v43 = objc_opt_self();
    LODWORD(v1) = [v43 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(v7, &v47);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = v7;
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v18 = static OS_os_log.crlAssert;
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146CA70;
      *(v19 + 56) = &type metadata for Int32;
      *(v19 + 64) = &protocol witness table for Int32;
      *(v19 + 32) = v1;
      *(v19 + 96) = v8;
      *(v19 + 104) = v9;
      *(v19 + 72) = v12;
      *(v19 + 136) = &type metadata for String;
      v20 = sub_1000053B0();
      *(v19 + 112) = v15;
      *(v19 + 120) = v17;
      *(v19 + 176) = &type metadata for UInt;
      *(v19 + 184) = &protocol witness table for UInt;
      *(v19 + 144) = v20;
      *(v19 + 152) = 1025;
      v1 = v47;
      *(v19 + 216) = v8;
      *(v19 + 224) = v9;
      *(v19 + 192) = v1;
      v21 = v12;
      v22 = v1;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      LODWORD(v1) = v45;
      sub_100005404(v18, &_mh_execute_header, v24, "expected equality between two values of type %{public}@", 55, 2, v45);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v26 = v25 + 3;
      v25[4] = 0;
      v25[5] = 0;
      v8 = *(v45 + 16);
      if (!v8)
      {
LABEL_29:
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        [v43 handleFailureInFunction:v40 file:v41 lineNumber:1025 isFatal:0 format:v11 args:v39];

        v1 = v44;
        goto LABEL_30;
      }

      v9 = 0;
      v12 = 40;
      while (1)
      {
        v17 = sub_100020E58((v10 + 40 * v9), *(v10 + 40 * v9 + 24));
        v27 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v15 = *v26;
        v28 = *(v27 + 16);
        v29 = __OFADD__(*v26, v28);
        v30 = *v26 + v28;
        if (v29)
        {
          break;
        }

        v17 = v25[4];
        if (v17 >= v30)
        {
          goto LABEL_21;
        }

        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v31 = v25[5];
        if (2 * v17 > v30)
        {
          v30 = 2 * v17;
        }

        v25[4] = v30;
        if ((v30 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v1 = v27;
        v32 = swift_slowAlloc();
        v33 = v32;
        v25[5] = v32;
        if (v31)
        {
          if (v32 != v31 || v32 >= &v31[8 * v15])
          {
            memmove(v32, v31, 8 * v15);
          }

          v17 = v25;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v27 = v1;
LABEL_21:
          v33 = v25[5];
          if (!v33)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v27 = v1;
        if (!v33)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v35 = *(v27 + 16);
        if (v35)
        {
          v36 = (v27 + 32);
          v37 = *v26;
          while (1)
          {
            v38 = *v36++;
            *&v33[8 * v37] = v38;
            v37 = *v26 + 1;
            if (__OFADD__(*v26, 1))
            {
              break;
            }

            *v26 = v37;
            if (!--v35)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        if (++v9 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

  v11 = v4;
LABEL_30:

  [swift_getObjCClassFromMetadata() cancelPreviousPerformRequestsWithTarget:v1 selector:"updateForToolPickerVisibilityDidChange" object:0];
  return [v1 performSelector:"updateForToolPickerVisibilityDidChange" withObject:0 afterDelay:0.0];
}

void sub_100F12420()
{
  [v0 rectangleObscuringCanvasScrollView];
  if (!CGRectEqualToRect(v9, *&v0[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lastRectangleObscuringCanvasScrollViewReportedToDelegate]))
  {
    [swift_unknownObjectUnownedLoadStrong() didUpdateRectangleObscuringCanvasScrollViewForPencilTray:v0];
    swift_unknownObjectRelease();
  }

  sub_100F08B8C();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  LOBYTE(v2) = [v3 isVisible];
  if ((v2 & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = [Strong isShowingRadialPalette];

    if ((v0[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isHidden] & 1) == 0 && (v5 & 1) == 0 && !sub_100F125A8())
    {
      v6 = [swift_unknownObjectUnownedLoadStrong() shouldKeepDocumentModeOnVisibilityChangeOfPencilTray:v0];
      swift_unknownObjectRelease();
      if ((v6 & 1) == 0)
      {
        v7 = swift_unknownObjectUnownedLoadStrong();
        [v7 resetToDefaultModeAnimated:1];
      }
    }
  }
}

BOOL sub_100F125A8()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong canvasView];

  if (!v1)
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 1068;
    v17 = v28;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:1068 isFatal:0 format:v26 args:v23];

    return 0;
  }

  v2 = [v1 firstResponder];

  if (!v2)
  {
    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass() != 0;

  return v3;
}

uint64_t sub_100F12A0C()
{
  v1 = v0;
  sub_100F08B8C();
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v44 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v7;
  v8 = sub_1005CF04C();
  *(inited + 32) = v6;
  v43 = inited + 32;
  *(inited + 64) = v8;
  if (static NSObject.== infix(_:_:)())
  {

    goto LABEL_30;
  }

  v41 = v4;
  v42 = v1;
  v40 = objc_opt_self();
  LODWORD(v1) = [v40 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v44);
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  v15 = static OS_os_log.crlAssert;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_10146CA70;
  *(v16 + 56) = &type metadata for Int32;
  *(v16 + 64) = &protocol witness table for Int32;
  *(v16 + 32) = v1;
  *(v16 + 96) = v7;
  *(v16 + 104) = v8;
  *(v16 + 72) = v9;
  *(v16 + 136) = &type metadata for String;
  v17 = sub_1000053B0();
  *(v16 + 112) = v12;
  *(v16 + 120) = v14;
  *(v16 + 176) = &type metadata for UInt;
  *(v16 + 184) = &protocol witness table for UInt;
  *(v16 + 144) = v17;
  *(v16 + 152) = 1081;
  v1 = v44;
  *(v16 + 216) = v7;
  *(v16 + 224) = v8;
  *(v16 + 192) = v1;
  v18 = v9;
  v19 = v1;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v16);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v21, "expected equality between two values of type %{public}@", 55, 2, inited);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v7 = v22 + 3;
  v22[4] = 0;
  v22[5] = 0;
  v8 = *(inited + 16);
  if (v8)
  {
    v9 = 0;
    inited = 0x4000000000000000;
    while (1)
    {
      v23 = (v43 + 40 * v9);
      v12 = v23[3];
      v14 = sub_100020E58(v23, v12);
      v24 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v25 = *v7;
      v26 = *(v24 + 16);
      v27 = __OFADD__(*v7, v26);
      v28 = *v7 + v26;
      if (v27)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
        goto LABEL_4;
      }

      v14 = v22[4];
      if (v14 >= v28)
      {
        goto LABEL_21;
      }

      if (v14 + 0x4000000000000000 < 0)
      {
        goto LABEL_35;
      }

      v12 = v22[5];
      if (2 * v14 > v28)
      {
        v28 = 2 * v14;
      }

      v22[4] = v28;
      if ((v28 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_36;
      }

      v1 = v24;
      v29 = swift_slowAlloc();
      v30 = v29;
      v22[5] = v29;
      if (v12)
      {
        break;
      }

      v24 = v1;
      if (!v30)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v32 = *(v24 + 16);
      if (v32)
      {
        v33 = (v24 + 32);
        v34 = *v7;
        while (1)
        {
          v35 = *v33++;
          *&v30[8 * v34] = v35;
          v34 = *v7 + 1;
          if (__OFADD__(*v7, 1))
          {
            break;
          }

          *v7 = v34;
          if (!--v32)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_6:

      v9 = v9 + 1;
      if (v9 == v8)
      {
        goto LABEL_29;
      }
    }

    if (v29 != v12 || v29 >= &v12[8 * v25])
    {
      memmove(v29, v12, 8 * v25);
    }

    v14 = v22;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v24 = v1;
LABEL_21:
    v30 = v22[5];
    if (!v30)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v4 = String._bridgeToObjectiveC()();

  [v40 handleFailureInFunction:v37 file:v38 lineNumber:1081 isFatal:0 format:v4 args:v36];

  v1 = v42;
LABEL_30:

  [v1 rectangleObscuringCanvasScrollView];
  result = CGRectEqualToRect(v45, *&v1[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lastRectangleObscuringCanvasScrollViewReportedToDelegate]);
  if ((result & 1) == 0)
  {
    [swift_unknownObjectUnownedLoadStrong() didUpdateRectangleObscuringCanvasScrollViewForPencilTray:v1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100F1308C(uint64_t a1, void *a2)
{
  sub_100F08B8C();
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v72 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();
  v8 = inited;

  v9 = sub_100006370(0, &qword_1019F4D30);
  v8[7] = v9;
  v10 = sub_1005CF04C();
  v8[4] = v7;
  v11 = v8 + 4;
  v71 = v10;
  v8[8] = v10;
  if (static NSObject.== infix(_:_:)())
  {

    if (a2)
    {
LABEL_3:
      v12 = objc_allocWithZone(CRLColor);
      v13 = a2;
      v14 = [v12 initWithUIColor:v13];
      sub_100F0DB78(v14);
LABEL_33:

      return;
    }

LABEL_30:
    v47 = objc_opt_self();
    v48 = [v47 _atomicIncrementAssertCount];
    v72 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v72);
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    v51 = [v50 lastPathComponent];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v55 = static OS_os_log.crlAssert;
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_10146CA70;
    *(v56 + 56) = &type metadata for Int32;
    *(v56 + 64) = &protocol witness table for Int32;
    *(v56 + 32) = v48;
    *(v56 + 96) = v9;
    *(v56 + 104) = v71;
    *(v56 + 72) = v49;
    *(v56 + 136) = &type metadata for String;
    v57 = sub_1000053B0();
    *(v56 + 112) = v52;
    *(v56 + 120) = v54;
    *(v56 + 176) = &type metadata for UInt;
    *(v56 + 184) = &protocol witness table for UInt;
    *(v56 + 144) = v57;
    *(v56 + 152) = 1093;
    v58 = v72;
    *(v56 + 216) = v9;
    *(v56 + 224) = v71;
    *(v56 + 192) = v58;
    v59 = v49;
    v60 = v58;
    v61 = static os_log_type_t.error.getter();
    sub_100005404(v55, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v62 = static os_log_type_t.error.getter();
    sub_100005404(v55, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v63 = swift_allocObject();
    v63[2] = 8;
    v63[3] = 0;
    v63[4] = 0;
    v63[5] = 0;
    v64 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v65 file:v13 lineNumber:1093 isFatal:0 format:v14 args:v64];

    goto LABEL_33;
  }

  v67 = v5;
  v68 = a2;
  v66 = objc_opt_self();
  LODWORD(v15) = [v66 _atomicIncrementAssertCount];
  v72 = [objc_allocWithZone(NSString) init];
  sub_100604538(v8, &v72);
  StaticString.description.getter();
  v70 = v8;
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v17 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v22 = static OS_os_log.crlAssert;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_10146CA70;
  *(v23 + 56) = &type metadata for Int32;
  *(v23 + 64) = &protocol witness table for Int32;
  *(v23 + 32) = v15;
  *(v23 + 96) = v9;
  *(v23 + 104) = v71;
  *(v23 + 72) = v16;
  *(v23 + 136) = &type metadata for String;
  v24 = sub_1000053B0();
  *(v23 + 112) = v19;
  *(v23 + 120) = v21;
  *(v23 + 176) = &type metadata for UInt;
  *(v23 + 184) = &protocol witness table for UInt;
  *(v23 + 144) = v24;
  *(v23 + 152) = 1091;
  v25 = v72;
  v69 = v9;
  *(v23 + 216) = v9;
  *(v23 + 224) = v71;
  *(v23 + 192) = v25;
  v26 = v16;
  v27 = v25;
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v29, "expected equality between two values of type %{public}@", 55, 2, v70);

  type metadata accessor for __VaListBuilder();
  v16 = swift_allocObject();
  v16[2] = 8;
  v16[3] = 0;
  v30 = v16 + 3;
  v16[4] = 0;
  v16[5] = 0;
  v21 = *(v70 + 16);
  if (!v21)
  {
LABEL_29:
    v43 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v44 file:v45 lineNumber:1091 isFatal:0 format:v46 args:v43];

    v9 = v69;
    a2 = v68;
    if (v68)
    {
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  v9 = 0;
  while (1)
  {
    LODWORD(v15) = sub_100020E58(&v11[5 * v9], v11[5 * v9 + 3]);
    v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v19 = *v30;
    v32 = *(v31 + 16);
    v33 = __OFADD__(*v30, v32);
    v34 = *v30 + v32;
    if (v33)
    {
      goto LABEL_35;
    }

    v35 = v31;
    v36 = v16[4];
    if (v36 >= v34)
    {
      goto LABEL_22;
    }

    if (v36 + 0x4000000000000000 < 0)
    {
      goto LABEL_36;
    }

    v15 = v16[5];
    if (2 * v36 > v34)
    {
      v34 = 2 * v36;
    }

    v16[4] = v34;
    if ((v34 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_37;
    }

    v37 = swift_slowAlloc();
    v16[5] = v37;
    if (v15)
    {
      if (v37 != v15 || v37 >= &v15[8 * v19])
      {
        memmove(v37, v15, 8 * v19);
      }

      LODWORD(v15) = v16;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_22:
      v37 = v16[5];
    }

    if (!v37)
    {
      break;
    }

    v39 = *(v35 + 16);
    if (v39)
    {
      v40 = (v35 + 32);
      v41 = *v30;
      while (1)
      {
        v42 = *v40++;
        *&v37[8 * v41] = v42;
        v41 = *v30 + 1;
        if (__OFADD__(*v30, 1))
        {
          break;
        }

        *v30 = v41;
        if (!--v39)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_7:

    if (++v9 == v21)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

id sub_100F13A30()
{
  v1 = v0;
  sub_100F08B8C();
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v49 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v7;
  v8 = sub_1005CF04C();
  *(inited + 32) = v6;
  v48 = inited + 32;
  v9 = inited;
  *(inited + 64) = v8;
  if (static NSObject.== infix(_:_:)())
  {

    goto LABEL_30;
  }

  v46 = v4;
  v47 = v0;
  v45 = objc_opt_self();
  v10 = [v45 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, &v49);
  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v12 = v9;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v10;
  *(v19 + 96) = v7;
  *(v19 + 104) = v8;
  *(v19 + 72) = v11;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 1104;
  v21 = v49;
  *(v19 + 216) = v7;
  *(v19 + 224) = v8;
  *(v19 + 192) = v21;
  v22 = v11;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "expected equality between two values of type %{public}@", 55, 2, v12);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v27 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v7 = *(v12 + 16);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v28 = (v48 + 40 * v8);
      v15 = v28[3];
      v11 = sub_100020E58(v28, v15);
      v29 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v17 = *v27;
      v30 = *(v29 + 16);
      v31 = __OFADD__(*v27, v30);
      v32 = *v27 + v30;
      if (v31)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
        goto LABEL_4;
      }

      v15 = v26[4];
      if (v15 >= v32)
      {
        goto LABEL_21;
      }

      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_35;
      }

      v11 = v26[5];
      if (2 * v15 > v32)
      {
        v32 = 2 * v15;
      }

      v26[4] = v32;
      if ((v32 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_36;
      }

      v12 = v29;
      v33 = swift_slowAlloc();
      v34 = v33;
      v26[5] = v33;
      if (v11)
      {
        break;
      }

      v29 = v12;
      if (!v34)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v36 = *(v29 + 16);
      if (v36)
      {
        v37 = (v29 + 32);
        v38 = *v27;
        while (1)
        {
          v39 = *v37++;
          *&v34[8 * v38] = v39;
          v38 = *v27 + 1;
          if (__OFADD__(*v27, 1))
          {
            break;
          }

          *v27 = v38;
          if (!--v36)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_6:

      if (++v8 == v7)
      {
        goto LABEL_29;
      }
    }

    if (v33 != v11 || v33 >= &v11[8 * v17])
    {
      memmove(v33, v11, 8 * v17);
    }

    v11 = v26;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v29 = v12;
LABEL_21:
    v34 = v26[5];
    if (!v34)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v4 = String._bridgeToObjectiveC()();

  [v45 handleFailureInFunction:v41 file:v42 lineNumber:1104 isFatal:0 format:v4 args:v40];

  v1 = v47;
LABEL_30:

  v43 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView);
  result = [v43 selectedStrokeColor];
  if (!result)
  {
    return [v43 selectedFillColor];
  }

  return result;
}

void sub_100F14098()
{
  v1 = v0;
  sub_100F08B8C();
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v74 = sub_100006370(0, &qword_101A231E0);
  sub_1005B981C(&qword_101A231E8);
  String.init<A>(describing:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v7;
  v8 = sub_1005CF04C();
  *(inited + 32) = v6;
  v9 = inited + 32;
  v73 = v8;
  *(inited + 64) = v8;
  if (static NSObject.== infix(_:_:)())
  {

    goto LABEL_30;
  }

  v69 = v4;
  v70 = v0;
  v68 = objc_opt_self();
  LODWORD(v0) = [v68 _atomicIncrementAssertCount];
  v74 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v74);
  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v72 = inited;
  if (qword_1019F20A0 != -1)
  {
    goto LABEL_41;
  }

LABEL_4:
  v16 = static OS_os_log.crlAssert;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10146CA70;
  *(v17 + 56) = &type metadata for Int32;
  *(v17 + 64) = &protocol witness table for Int32;
  *(v17 + 32) = v0;
  *(v17 + 96) = v7;
  *(v17 + 104) = v73;
  *(v17 + 72) = v10;
  *(v17 + 136) = &type metadata for String;
  v18 = sub_1000053B0();
  *(v17 + 112) = v13;
  *(v17 + 120) = v15;
  *(v17 + 176) = &type metadata for UInt;
  *(v17 + 184) = &protocol witness table for UInt;
  *(v17 + 144) = v18;
  *(v17 + 152) = 1120;
  v19 = v74;
  v71 = v7;
  *(v17 + 216) = v7;
  *(v17 + 224) = v73;
  *(v17 + 192) = v19;
  v20 = v10;
  v21 = v19;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v23, "expected equality between two values of type %{public}@", 55, 2, v72);

  type metadata accessor for __VaListBuilder();
  v10 = swift_allocObject();
  v10[2] = 8;
  v10[3] = 0;
  v15 = v10 + 3;
  v10[4] = 0;
  v10[5] = 0;
  v24 = *(v72 + 16);
  if (v24)
  {
    v25 = 0;
    v7 = 40;
    while (1)
    {
      LODWORD(v0) = sub_100020E58((v9 + 40 * v25), *(v9 + 40 * v25 + 24));
      v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v13 = *v15;
      v27 = *(v26 + 16);
      v28 = __OFADD__(*v15, v27);
      v29 = *v15 + v27;
      if (v28)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
        goto LABEL_4;
      }

      v30 = v10[4];
      if (v30 >= v29)
      {
        goto LABEL_21;
      }

      if (v30 + 0x4000000000000000 < 0)
      {
        goto LABEL_39;
      }

      v0 = v10[5];
      if (2 * v30 > v29)
      {
        v29 = 2 * v30;
      }

      v10[4] = v29;
      if ((v29 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_40;
      }

      v31 = v26;
      v32 = swift_slowAlloc();
      v33 = v32;
      v10[5] = v32;
      if (v0)
      {
        break;
      }

      v26 = v31;
      if (!v33)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v35 = *(v26 + 16);
      if (v35)
      {
        v36 = (v26 + 32);
        v37 = *v15;
        while (1)
        {
          v38 = *v36++;
          *&v33[8 * v37] = v38;
          v37 = *v15 + 1;
          if (__OFADD__(*v15, 1))
          {
            break;
          }

          *v15 = v37;
          if (!--v35)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_6:

      if (++v25 == v24)
      {
        goto LABEL_29;
      }
    }

    if (v32 != v0 || v32 >= &v0[8 * v13])
    {
      memmove(v32, v0, 8 * v13);
    }

    LODWORD(v0) = v10;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v26 = v31;
LABEL_21:
    v33 = v10[5];
    if (!v33)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v68 handleFailureInFunction:v40 file:v41 lineNumber:1120 isFatal:0 format:v42 args:v39];

  v4 = v42;
  v7 = v71;
  v1 = v70;
LABEL_30:

  v43 = *&v1[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_lassoEditingView];
  v44 = [v43 selectedStrokeColor];
  if (v44)
  {

    [v43 toggleStrokeColorPickerPresentation];
  }

  else
  {
    v45 = [v43 selectedFillColor];
    if (v45)
    {

      [v43 toggleFillColorPickerPresentation];
    }

    else
    {
      v46 = v7;
      v47 = objc_opt_self();
      v48 = [v47 _atomicIncrementAssertCount];
      v74 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v74);
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_10146CA70;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v48;
      *(v56 + 96) = v46;
      *(v56 + 104) = v73;
      *(v56 + 72) = v49;
      *(v56 + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(v56 + 112) = v52;
      *(v56 + 120) = v54;
      *(v56 + 176) = &type metadata for UInt;
      *(v56 + 184) = &protocol witness table for UInt;
      *(v56 + 144) = v57;
      *(v56 + 152) = 1130;
      v58 = v74;
      *(v56 + 216) = v46;
      *(v56 + 224) = v73;
      *(v56 + 192) = v58;
      v59 = v49;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v62, "Trying to toggle lasso tool editing view color picker with no colors selected.", 78, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      [v47 handleFailureInFunction:v65 file:v66 lineNumber:1130 isFatal:0 format:v67 args:v64];
    }
  }
}

void sub_100F14AE4(unint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_needsToUpdateFillAndStrokeColors) & 1) == 0)
  {
    if (a1 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = *&v5[OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details];
        v9 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
        swift_beginAccess();
        v10 = *&v8[v9];
        if (*(v10 + 16))
        {
          v11 = sub_1007CF108();
          if (v12)
          {
            sub_100601584(*(v10 + 56) + 32 * v11, &aBlock);

            goto LABEL_17;
          }
        }

        aBlock = 0;
        v26 = 0;
        v27 = 0;
        v28 = 1;
        v13 = v8;
        sub_10000CAAC(&aBlock, &unk_1019F4D50);
        v14 = *&v8[v9];
        if (*(v14 + 16))
        {
          v15 = sub_1007CF108();
          if (v16)
          {
            sub_100601584(*(v14 + 56) + 32 * v15, &aBlock);

LABEL_17:
            sub_10000CAAC(&aBlock, &unk_1019F4D50);
            *(v24 + v23) = 1;
            goto LABEL_18;
          }
        }

        aBlock = 0;
        v26 = 0;
        v27 = 0;
        v28 = 1;
        sub_10000CAAC(&aBlock, &unk_1019F4D50);
        ++v4;
        if (v7 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_18:
    Strong = swift_unknownObjectUnownedLoadStrong();
    v18 = [Strong canvas];

    [v18 i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
    v19 = swift_unknownObjectUnownedLoadStrong();
    v20 = [v19 canvas];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_100F152AC;
    v30 = v21;
    aBlock = _NSConcreteStackBlock;
    v26 = *"";
    v27 = sub_100007638;
    v28 = &unk_1018A8808;
    v22 = _Block_copy(&aBlock);

    [v20 afterLayoutIncludingLayers:1 performBlock:v22];
    _Block_release(v22);
  }
}

void sub_100F14E04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_needsToUpdateFillAndStrokeColors;
    if (*(Strong + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_needsToUpdateFillAndStrokeColors) == 1)
    {
      sub_100F0C11C();
      if (v3)
      {
        sub_100F0C8D4();
      }
    }

    v1[v2] = 0;
  }
}

void sub_100F1501C()
{
  sub_100F08B8C();
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker];

  v4 = [v3 isRulerActive];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [Strong freehandDrawingToolkit];

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = [v6 isRulerToolShowing];

  if (v4 == v7)
  {
    return;
  }

  v8 = *(*(v0 + OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray____lazy_storage___pickerManager) + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker);
  v9 = swift_unknownObjectUnownedLoadStrong();
  v12 = v8;
  v10 = [v9 freehandDrawingToolkit];

  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = [v10 isRulerToolShowing];

  [v12 setRulerActive:v11];
}

uint64_t sub_100F152B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v6 = type metadata accessor for PKToolPickerCustomItem.Configuration();
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = __chkstk_darwin(v6);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v78 - v9;
  v11 = type metadata accessor for PKInkingTool.InkType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_isUpdatingToolPicker) = 0;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_delegate + 8) = &off_1018A87D0;
  swift_unknownObjectUnownedInit();
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_toolkit) = a2;
  v15 = [a2 toolkitUIState];
  v16 = [objc_allocWithZone(PKToolPickerScribbleItem) init];
  v80 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_scribble;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_scribble) = v16;
  v17 = *(v12 + 104);
  v17(v14, enum case for PKInkingTool.InkType.pen(_:), v11);
  v18 = sub_10130C310(v14, v15);
  v19 = *(v12 + 8);
  v19(v14, v11);
  v92 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_pen;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_pen) = v18;
  v17(v14, enum case for PKInkingTool.InkType.monoline(_:), v11);
  v20 = sub_10130C310(v14, v15);
  v19(v14, v11);
  v88 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_monoline;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_monoline) = v20;
  v90 = v17;
  v17(v14, enum case for PKInkingTool.InkType.marker(_:), v11);
  v21 = sub_10130C310(v14, v15);
  v89 = v19;
  v19(v14, v11);
  v85 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_marker;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_marker) = v21;
  v91 = v15;
  v22 = sub_10130C5FC(v15);
  v84 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_eraser;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_eraser) = v22;
  v81 = "hen not in a pencil mode.";
  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v82;
  PKToolPickerCustomItem.Configuration.init(identifier:name:)();
  PKToolPickerCustomItem.Configuration._supportsLassoBehaviors.setter();
  PKToolPickerCustomItem.Configuration.allowsColorSelection.setter();
  PKToolPickerCustomItem.Configuration.toolAttributeControls.setter();
  PKToolPickerCustomItem.Configuration.imageProvider.setter();
  if (v27)
  {
    *(swift_allocObject() + 16) = v27;
    v28 = v27;
    PKToolPickerCustomItem.Configuration.viewControllerProvider.setter();
  }

  sub_100006370(0, &unk_101A23260);
  v30 = v86;
  v29 = v87;
  (*(v86 + 16))(v83, v10, v87);
  v31 = PKToolPickerCustomItem.init(configuration:)();
  (*(v30 + 8))(v10, v29);
  v32 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_lasso) = v31;
  v33 = [objc_allocWithZone(PKToolPickerRulerItem) init];
  v81 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_ruler;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_ruler) = v33;
  v34 = v90;
  v90(v14, enum case for PKInkingTool.InkType.pencil(_:), v11);
  v35 = v91;
  v36 = sub_10130C310(v14, v91);
  v37 = v89;
  v89(v14, v11);
  v87 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_pencil;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_pencil) = v36;
  v38 = sub_10130C7B4(v35);
  v86 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_fill;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_fill) = v38;
  v34(v14, enum case for PKInkingTool.InkType.crayon(_:), v11);
  v39 = sub_10130C310(v14, v35);
  v37(v14, v11);
  v83 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_crayon;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_crayon) = v39;
  v34(v14, enum case for PKInkingTool.InkType.fountainPen(_:), v11);
  v40 = sub_10130C310(v14, v35);
  v37(v14, v11);
  v82 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_fountainPen;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_fountainPen) = v40;
  v34(v14, enum case for PKInkingTool.InkType.reed(_:), v11);
  v41 = sub_10130C310(v14, v35);
  v37(v14, v11);
  v79 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_reed;
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_reed) = v41;
  v34(v14, enum case for PKInkingTool.InkType.watercolor(_:), v11);
  v42 = sub_10130C310(v14, v35);
  v37(v14, v11);
  *(a4 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_watercolor) = v42;
  v43 = v42;
  v90 = v42;
  sub_1005B981C(&unk_1019F4D60);
  v44 = swift_allocObject();
  v45 = *(a4 + v92);
  *(v44 + 16) = xmmword_101470790;
  v46 = *(a4 + v88);
  v47 = v84;
  v48 = *(a4 + v85);
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  v49 = *(a4 + v47);
  v50 = *(a4 + v32);
  *(v44 + 48) = v48;
  *(v44 + 56) = v49;
  v51 = *(a4 + v87);
  v52 = *(a4 + v86);
  *(v44 + 64) = v50;
  *(v44 + 72) = v51;
  v89 = *&v83[a4];
  v53 = v89;
  v92 = a4;
  v54 = *(a4 + v82);
  *(v44 + 80) = v52;
  *(v44 + 88) = v53;
  *(v44 + 96) = v54;
  *(v44 + 104) = v43;
  v94 = v44;
  v55 = objc_opt_self();
  v56 = v45;
  v57 = v46;
  v58 = v48;
  v59 = v49;
  v60 = v50;
  v61 = v51;
  v62 = v52;
  v63 = v89;
  v64 = v54;
  v65 = v92;
  v66 = v90;
  result = [v55 isOSFeatureEnabled:7];
  if (result)
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 9uLL)
    {
      goto LABEL_16;
    }

    v68 = *(v65 + v79);
    sub_100678C48(9, 9, v68);

    v44 = v94;
  }

  v69 = *&v81[v65];
  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5)
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 5)
  {
    goto LABEL_13;
  }

LABEL_8:
  v70 = v69;
  sub_100678C48(5, 5, v70);

  v44 = *(v65 + v80);
  if (v94 >> 62)
  {
LABEL_14:
    result = _CocoaArrayWrapper.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v71 = v44;
  sub_100678C48(0, 0, v71);

  *(v65 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_items) = v94;
  v72 = objc_allocWithZone(PKToolPicker);
  sub_100006370(0, &qword_1019F6DD0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v74 = [v72 initWithToolItems:isa];

  v75 = OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker;
  *(v65 + OBJC_IVAR____TtC8Freeform29CRLiOSPencilTrayPickerManager_picker) = v74;
  [v74 setStateAutosaveName:0];
  [*(v65 + v75) setColorUserInterfaceStyle:1];
  [*(v65 + v75) setShowsDrawingPolicyControls:1];
  if ([v55 isOSFeatureEnabled:0])
  {
    [*(v65 + v75) _setShouldAlwaysShowAutoRefineControls:1];
  }

  v76 = type metadata accessor for CRLiOSPencilTrayPickerManager();
  v93.receiver = v65;
  v93.super_class = v76;
  v77 = objc_msgSendSuper2(&v93, "init");

  return v77;
}

void sub_100F15C50(void *a1, double a2)
{
  v2 = vabdd_f64(16.4, a2);
  if (COERCE__INT64(fabs(16.4 - a2)) >= 0x7FF0000000000000)
  {
    v2 = INFINITY;
  }

  v3 = vabdd_f64(32.4, a2);
  v4 = v3 < v2;
  if (v3 < v2)
  {
    v2 = v3;
  }

  v5 = vabdd_f64(48.4, a2);
  if (v5 < v2)
  {
    v2 = v5;
    v4 = 2;
  }

  v6 = vabdd_f64(64.4, a2);
  if (v6 < v2)
  {
    v4 = 3;
    v2 = v6;
  }

  if (vabdd_f64(80.4, a2) >= v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  v8 = [a1 strokeWidthsForFreehandDrawingToolType:9];
  sub_100006370(0, &qword_1019FF3E0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;

    [v11 crl_CGFloatValue];

    return;
  }

  __break(1u);
}

void sub_100F15DA0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = [Strong canvasEditor];

  if (v7)
  {
    [v7 *a4];
    sub_100F101DC();

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = a3;
    v30 = objc_opt_self();
    v8 = [v30 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = v31;
    v20 = v32;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v27 file:v28 lineNumber:v31 isFatal:0 format:v29 args:v26];
  }
}

void sub_100F161BC(char a1)
{
  if (v1[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isInstalled] != 1)
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 905;
    v18 = v49;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Should not try to adjust visibility of a pencil tray which is not installed.", 76, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:905 isFatal:0 format:v27 args:v24];
    goto LABEL_14;
  }

  if ([v1 hidden] == (a1 & 1))
  {
    return;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong layerHost];

  if (!v4)
  {
LABEL_11:
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49);
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146CA70;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(v37 + 96) = v38;
    v39 = sub_1005CF04C();
    *(v37 + 104) = v39;
    *(v37 + 72) = v30;
    *(v37 + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(v37 + 112) = v33;
    *(v37 + 120) = v35;
    *(v37 + 176) = &type metadata for UInt;
    *(v37 + 184) = &protocol witness table for UInt;
    *(v37 + 144) = v40;
    *(v37 + 152) = 918;
    v41 = v49;
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
    *(v37 + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v46 = swift_allocObject();
    v46[2] = 8;
    v46[3] = 0;
    v46[4] = 0;
    v46[5] = 0;
    v47 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v25 file:v26 lineNumber:918 isFatal:0 format:v27 args:v47];
LABEL_14:

    return;
  }

  if (([v4 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v48 = [v4 asiOSCVC];
  swift_unknownObjectRelease();
  v1[OBJC_IVAR____TtC8Freeform16CRLiOSPencilTray_isHidden] = a1 & 1;
  if (a1)
  {
    sub_100F0BFD4();
    sub_100F095C8();
  }

  else
  {
    sub_100F09EB4();
    sub_100F0B4B4();
    sub_100F0BA84();
    [v48 becomeFirstResponderIfAppropriate];
    sub_100F095C8();
    sub_100F0A8D4();
  }
}

uint64_t sub_100F169C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100F16A40(void *a1, CGFloat a2)
{
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_1005CAAE0();
  *(inited + 40) = a1;
  v6 = NSFontAttributeName;
  v7 = a1;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_100BF2508(inited + 32);
  v8 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_1005CAB2C();
  v9 = v2;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  v12 = CTLineCreateWithAttributedString(v11);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v12, 0);
  height = BoundsWithOptions.size.height;

  v14 = CTFramesetterCreateWithAttributedString(v11);
  v19.height = 1.79769313e308;
  v18.location = 0;
  v18.length = 0;
  v19.width = a2;
  v15 = CTFramesetterSuggestFrameSizeWithConstraints(v14, v18, 0, v19, 0).height;

  v16 = 1.0;
  if (height > 1.0)
  {
    v16 = height;
  }

  v17 = round(v15 / v16);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_100F16C1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v40 = type metadata accessor for URL();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UTType();
  v37 = *(v14 - 8);
  v38 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 dataUsingEncoding:{4, v15}];
  if (v18)
  {
    v19 = v18;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v20;

    static UTType.plainText.getter();
    v21 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v21 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 crl_filenameFromDisplayNameWithExtension:v23];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      UTType.localizedDescription.getter();
      if (!v26)
      {
        UUID.init()();
        UUID.uuidString.getter();
        (*(v11 + 8))(v13, v10);
        sub_10105235C(5);

        static String._fromSubstring(_:)();
      }
    }

    v27 = [objc_allocWithZone(NSFileManager) init];
    v28 = [v27 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v41;
    URL.appendingPathComponent(_:conformingTo:)();

    v30 = *(v7 + 8);
    v31 = v40;
    v30(v9, v40);
    v33 = v35;
    v32 = v36;
    v34 = v39;
    Data.write(to:options:)();
    sub_10002640C(v33, v32);
    if (v34)
    {
      v30(v29, v31);
    }

    return (*(v37 + 8))(v17, v38);
  }

  else
  {
    sub_100F171AC();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_100F171AC()
{
  result = qword_101A232D0;
  if (!qword_101A232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232D0);
  }

  return result;
}

unint64_t sub_100F17214()
{
  result = qword_101A232D8;
  if (!qword_101A232D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232D8);
  }

  return result;
}

id sub_100F17268()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(LPLinkMetadata) init];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  [v4 setOriginalURL:v6];

  v8 = [v4 originalURL];
  if (v8)
  {
    v9 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v12 = 0;
  }

  [v4 setURL:v12];

  return v4;
}

uint64_t sub_100F173D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F17AB8();
  v5 = sub_100F17B10();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100F1742C(uint64_t a1)
{
  v2 = sub_100F17B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F17468(uint64_t a1)
{
  v2 = sub_100F17B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F174A4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A23350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100F17B10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v3, 0x178uLL);
  memcpy(v12, v3, sizeof(v12));
  v13[399] = 0;
  sub_100CE4F64(v13, v11);
  sub_100CE4FC0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v11, v12, sizeof(v11));
  sub_100CE4ED8(v11);
  if (!v2)
  {
    v10[1] = v3[47];
    v13[398] = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_100F176A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100F17CD4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x180uLL);
  }

  return result;
}

uint64_t sub_100F17708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D470();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F1775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D470();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100F177B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E960();
  v7 = sub_100F17F94();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100F17820(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D470();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100F17904(uint64_t a1)
{
  v2 = sub_100F17C80();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100F17958()
{
  result = qword_101A232E8;
  if (!qword_101A232E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232E8);
  }

  return result;
}

unint64_t sub_100F179B0()
{
  result = qword_101A232F0;
  if (!qword_101A232F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232F0);
  }

  return result;
}

unint64_t sub_100F17A08()
{
  result = qword_101A232F8;
  if (!qword_101A232F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232F8);
  }

  return result;
}

unint64_t sub_100F17A60()
{
  result = qword_101A23300;
  if (!qword_101A23300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23300);
  }

  return result;
}

unint64_t sub_100F17AB8()
{
  result = qword_101A23308;
  if (!qword_101A23308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23308);
  }

  return result;
}

unint64_t sub_100F17B10()
{
  result = qword_101A23310;
  if (!qword_101A23310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23310);
  }

  return result;
}

unint64_t sub_100F17B68()
{
  result = qword_101A23318;
  if (!qword_101A23318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23318);
  }

  return result;
}

unint64_t sub_100F17BC0()
{
  result = qword_101A23320;
  if (!qword_101A23320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23320);
  }

  return result;
}

unint64_t sub_100F17C18()
{
  result = qword_101A23328;
  if (!qword_101A23328)
  {
    sub_1005C4E5C(&qword_101A23330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23328);
  }

  return result;
}

unint64_t sub_100F17C80()
{
  result = qword_101A23338;
  if (!qword_101A23338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23338);
  }

  return result;
}

void *sub_100F17CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = sub_1005B981C(&qword_101A23348);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100F17B10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v8 = v12;
  v18[399] = 0;
  sub_100CE4E84();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v18, v17, 0x178uLL);
  sub_1005B981C(&unk_101A0D960);
  v18[398] = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v9 = v16;
  memcpy(v13, v18, 0x178uLL);
  v13[47] = v16;
  sub_100F17F5C(v13, v14);
  sub_100005070(a1);
  memcpy(v14, v18, sizeof(v14));
  v15 = v9;
  sub_1009CCE34(v14);
  return memcpy(v8, v13, 0x180uLL);
}

unint64_t sub_100F17F94()
{
  result = qword_101A23358;
  if (!qword_101A23358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23358);
  }

  return result;
}

unint64_t sub_100F17FFC()
{
  result = qword_101A23360;
  if (!qword_101A23360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23360);
  }

  return result;
}

uint64_t sub_100F18050(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 74) = a1;
  return _swift_task_switch(sub_100F18074, 0, 0);
}

uint64_t sub_100F18074()
{
  if (*(v0 + 74))
  {
    if (*(v0 + 74) == 1)
    {
      v1 = 0;
    }

    else
    {
      type metadata accessor for CRLBoardEntity();
      EntityProperty.wrappedValue.getter();
      v1 = *(v0 + 72) ^ 1;
    }
  }

  else
  {
    v1 = 1;
  }

  v2 = v1 & 1;
  *(v0 + 75) = v1 & 1;
  type metadata accessor for CRLBoardEntity();
  EntityProperty.wrappedValue.getter();
  v3 = *(v0 + 73);
  if (v3 == 2 || ((v1 ^ v3) & 1) != 0)
  {
    v7 = *(v0 + 16);
    sub_100020E58(*(v0 + 24), *(*(v0 + 24) + 24));
    sub_1005B981C(&qword_101A28700);
    v8 = (type metadata accessor for CRLBoardIdentifierAndValue(0) - 8);
    v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10146C6B0;
    v11 = v10 + v9;
    sub_1005F1308(v7, v11);
    *(v11 + v8[7]) = v2;
    v12 = sub_100E947F4(v10);
    *(v0 + 32) = v12;
    swift_setDeallocating();
    sub_100F1853C(v11);
    swift_deallocClassInstance();
    *(v0 + 40) = type metadata accessor for MainActor();
    *(v0 + 48) = static MainActor.shared.getter();
    v13 = swift_task_alloc();
    *(v0 + 56) = v13;
    *v13 = v0;
    v13[1] = sub_100F182D8;

    return sub_1010B58EC(v12);
  }

  else
  {
    v4 = *(v0 + 8);
    v5 = *(v0 + 75);

    return v4(v5);
  }
}

uint64_t sub_100F182D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100F184D4;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_100F18460;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100F18460()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 75);

  return v1(v2);
}

uint64_t sub_100F184D4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100F1853C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100F185A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a7;
  v51 = a6;
  v52 = a5;
  v54 = type metadata accessor for UUID();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006370(0, &qword_101A1AEB0);
  sub_100006370(0, &unk_101A22DA0);
  sub_100024E98(a1, a2);
  v15 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v8)
  {
    v23 = v15;
    v48 = a3;
    sub_10002640C(a1, a2);
    if (!v23)
    {
      goto LABEL_3;
    }

    v24 = v23;
    if (a4 >> 60 == 15)
    {
      v25 = v52;
      v26 = v51;
    }

    else
    {
      v27 = a4;
      v28 = v48;
      sub_100024E98(v48, v27);
      v29 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v26 = v51;
      v34 = v29;
      sub_100025870(v28, v27);
      if (v34)
      {
        v56 = 0;
        v35 = [v34 mergeRecordValue:v24 error:&v56];
        v25 = v52;
        if (v35)
        {
          v36 = v56;
          v31 = v49;
          v32 = v50;
          v30 = v34;
        }

        else
        {
          v48 = v34;
          v37 = v56;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v38 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          v40 = v55;
          *(inited + 16) = xmmword_10146BDE0;
          (*(*v40 + 264))();
          v41 = UUID.uuidString.getter();
          v43 = v42;
          (*(v53 + 8))(v14, v54);
          *(inited + 56) = &type metadata for String;
          v44 = sub_1000053B0();
          *(inited + 64) = v44;
          *(inited + 32) = v41;
          *(inited + 40) = v43;
          swift_getErrorValue();
          v45 = Error.localizedDescription.getter();
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v44;
          *(inited + 72) = v45;
          *(inited + 80) = v46;
          v47 = static os_log_type_t.default.getter();
          sub_100005404(v38, &_mh_execute_header, v47, "Merge failed, this can happen if a record was deleted and replaced with something else and we're merging two distinctly different records for item id %{public}@. Super edge casey. %@", 182, 2, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v31 = v49;
          v32 = v50;
          v25 = v52;
          v26 = v51;
          v30 = v48;
        }

        goto LABEL_12;
      }

      v25 = v52;
    }

    v30 = v24;
    v31 = v49;
    v32 = v50;
LABEL_12:
    v33 = v30;
    sub_100F18C18(v33, v25, v26 & 1, v32, v31);

    sub_100F00014(v33);
    return;
  }

  sub_10002640C(a1, a2);
LABEL_3:
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  v17 = swift_initStackObject();
  v18 = v55;
  *(v17 + 16) = xmmword_10146C6B0;
  (*(*v18 + 264))();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v53 + 8))(v14, v54);
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000053B0();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v22, "Failed to deserialize remote CKMergeableRecordValueData for item %{public}@", 75, 2, v17);
  swift_setDeallocating();
  sub_100005070(v17 + 32);
}

uint64_t sub_100F18C18(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v39 = a3;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = a5;
  v40 = a4;
  v35[1] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v38 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = v35 - v12;
  v13 = type metadata accessor for Optional();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v35 - v17;
  swift_getWitnessTable();
  v19 = type metadata accessor for CRCKMergeable();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v35 - v21;
  v44 = v9;
  (*(v9 + 56))(v18, 1, 1, v8);
  v23 = v45;
  CRCKMergeable.init(crdt:context:)();
  swift_getWitnessTable();
  v24 = v47;
  CKMergeable.merge(_:)();
  if (v24)
  {
    (*(v20 + 8))(v22, v19);
    return v16;
  }

  v46 = AssociatedTypeWitness;
  v47 = v20;
  v25 = v42;
  v26 = v43;
  v48[5] = v43;

  CRCKMergeable.crdt.getter();
  v27 = v44;
  if ((*(v44 + 48))(v16, 1, v8) == 1)
  {

    (*(v47 + 8))(v22, v19);
    (*(v36 + 8))(v16, v37);
    return 0;
  }

  v28 = v41;
  (*(v27 + 32))(v41, v16, v8);
  if (v39)
  {
    v29 = v38;
    (*(v27 + 16))(v38, v28, v8);
    (*(v25 + 32))(v29, v40, v25);
    (*(v27 + 8))(v28, v8);

    (*(v47 + 8))(v22, v19);
    return 0;
  }

  v48[0] = v26;
  v30 = v38;
  (*(v25 + 24))(v40, v25);
  v31 = Capsule.hasDelta(from:)();
  v45 = *(v27 + 8);
  (v45)(v30, v8);
  if (v31)
  {
    v16 = 512;
  }

  else
  {
    v16 = 0;
  }

  v32 = (*(v25 + 40))(v48, v40, v25);
  v33 = v41;
  Capsule.merge<A>(_:)();
  v32(v48, 0);
  (v45)(v33, v8);

  (*(v47 + 8))(v22, v19);
  return v16;
}

char *sub_100F19228(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderInsideCornerRadius] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath] = 0;
  v3 = OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer;
  *&v1[v3] = [objc_allocWithZone(CRLNoDefaultImplicitActionLayer) init];
  sub_100020E58(a1, a1[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v35.receiver = v1;
  v35.super_class = type metadata accessor for CRLOutsideBorderPlatterLayer();
  v5 = objc_msgSendSuper2(&v35, "initWithLayer:", v4);
  swift_unknownObjectRelease();
  v6 = v5;
  [v6 setMasksToBounds:0];
  sub_100064288(a1, v34);
  if (swift_dynamicCast())
  {
    v7 = v33;
    *&v6[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth] = *&v33[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth];
    v8 = [*&v7[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer] backgroundColor];
    [*&v6[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer] setBackgroundColor:v8];
  }

  else
  {
    v32 = objc_opt_self();
    v9 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 78;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v28 file:v29 lineNumber:78 isFatal:0 format:v30 args:v27];
  }

  sub_100005070(a1);
  return v6;
}

id sub_100F1974C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderInsideCornerRadius] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath] = 0;
  v3 = OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer;
  *&v1[v3] = [objc_allocWithZone(CRLNoDefaultImplicitActionLayer) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLOutsideBorderPlatterLayer();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setMasksToBounds:0];
  }

  return v5;
}

void sub_100F19834()
{
  v1 = v0;
  v36.receiver = v0;
  v36.super_class = type metadata accessor for CRLOutsideBorderPlatterLayer();
  objc_msgSendSuper2(&v36, "layoutSublayers");
  v2 = OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer;
  v3 = [*&v0[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_borderPlatterSublayer] superlayer];
  if (!v3)
  {
LABEL_6:
    [v1 addSublayer:*&v1[v2]];
    [*&v1[v2] setZPosition:-10000.0];
    goto LABEL_7;
  }

  sub_100006370(0, &qword_1019FFFF0);
  v4 = v3;
  v5 = v0;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    v34 = v3;
    v33 = objc_opt_self();
    v7 = [v33 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 102;
    v19 = v35;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v33 handleFailureInFunction:v26 file:v27 lineNumber:102 isFatal:0 format:v28 args:v25];

    v3 = v34;
    goto LABEL_6;
  }

LABEL_7:
  v29 = *&v1[v2];
  [v1 bounds];
  v38 = CGRectInset(v37, -*&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth], -*&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderWidth]);
  [v29 setFrame:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];

  [v1 bounds];
  v30 = OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath;
  v40 = CGRectInset(v39, -*&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath], -*&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_additionalOutsetForShadowPath]);
  v31 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v40.origin.x cornerRadius:{v40.origin.y, v40.size.width, v40.size.height, *&v1[OBJC_IVAR____TtC8Freeform28CRLOutsideBorderPlatterLayer_outsideBorderInsideCornerRadius] + *&v1[v30]}];
  v32 = [v31 CGPath];
  [v1 setShadowPath:v32];
}

id sub_100F19DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLOutsideBorderPlatterLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100F19F18()
{
  result = qword_101A233B0;
  if (!qword_101A233B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A233B0);
  }

  return result;
}

unint64_t sub_100F19F70()
{
  result = qword_101A233B8;
  if (!qword_101A233B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A233B8);
  }

  return result;
}

unint64_t sub_100F19FC8()
{
  result = qword_101A233C0;
  if (!qword_101A233C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A233C0);
  }

  return result;
}

unint64_t sub_100F1A020()
{
  result = qword_101A233C8;
  if (!qword_101A233C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A233C8);
  }

  return result;
}

uint64_t sub_100F1A084(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[35] = swift_task_alloc();
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  v2[36] = v6;
  *v6 = v2;
  v6[1] = sub_100F1A1F0;

  return (sub_100F9ED78)(a1, v5);
}

uint64_t sub_100F1A1F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100F1A350, 0, 0);
  }
}

uint64_t sub_100F1A350()
{
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = static OS_os_log.crlSendACopy;
  v0[38] = static OS_os_log.crlSendACopy;
  v0[39] = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[28] = v4;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  v0[40] = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v11, "downloadFromPublicDatabase() Public records fetched: %@ for boardIdentifier: %@", 79, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_100F1A554;
  v13 = v0[37];

  return sub_100F1A978(v13);
}

uint64_t sub_100F1A554(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_100F1A8EC;
  }

  else
  {

    *(v6 + 352) = a2 & 1;
    *(v6 + 344) = a1;
    v7 = sub_100F1A698;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F1A698()
{
  v1 = *(v0 + 344);
  v22 = *(v0 + 320);
  v23 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v21 = *(v0 + 256);
  v5 = *(v0 + 248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FF34(v8 + v9, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D6FC(v5, type metadata accessor for CRLBoardCRDTData);
  v10 = (*(v1 + v7) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v2, v11, v12, v3);
  (*(v4 + 16))(v2, v3, v21);
  sub_10003D6FC(v3, type metadata accessor for CRLBoardIdentifier);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v4 + 8))(v2, v21);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v22;
  *(inited + 32) = v13;
  *(inited + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  sub_100005404(v23, &_mh_execute_header, v16, "Successfully _createBoardFromRecords() board %{public}@", 55, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);

  v17 = *(v0 + 8);
  v18 = *(v0 + 344);
  v19 = *(v0 + 352);

  return v17(v18, v19);
}

uint64_t sub_100F1A8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F1A978(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_100F1A998, 0, 0);
}

uint64_t sub_100F1A998()
{
  v1 = sub_100F1DCA4(v0[17]);
  v2 = _swiftEmptyArrayStorage;
  v0[15] = _swiftEmptyArrayStorage;
  v3 = v1[2];
  if (v3)
  {
    v4 = (v1 + 4);
    type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v13 = *v4;
      v6 = swift_dynamicCastClass();
      swift_unknownObjectRetain();
      if (v6)
      {
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_unknownObjectRelease();
        v5 = v0[15];
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_100B37F64(0, v2[2] + 1, 1, v2);
        }

        v8 = v2[2];
        v7 = v2[3];
        v9 = v13;
        if (v8 >= v7 >> 1)
        {
          v10 = sub_100B37F64((v7 > 1), v8 + 1, 1, v2);
          v9 = v13;
          v2 = v10;
        }

        v2[2] = v8 + 1;
        *&v2[2 * v8 + 4] = v9;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v0[20] = v5;
  v0[21] = v5;
  v0[19] = v2;

  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_100F1ABF4;

  return sub_100F1B18C(v2);
}

uint64_t sub_100F1ABF4(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 112) = v2;
  *(v4 + 104) = a2;
  *(v4 + 88) = v3;
  *(v4 + 96) = a1;
  *(v4 + 184) = a1;
  *(v4 + 192) = v2;

  if (v2)
  {

    v5 = sub_100F1B170;
  }

  else
  {
    v5 = sub_100F1AD2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F1AD2C()
{
  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[18];
  v0[16] = v4;
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v12, "Got %{public}@ buckets to be saved to new board", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = *v8;
  sub_100F1EF74(v7, v6, *v8);
  v14 = v0[23];

  if (v5)
  {
    goto LABEL_9;
  }

  if ((*(v14 + OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported) & 1) != 0 || (v15 = sub_100EC7714(), sub_10001FF1C() < v15))
  {
    v14 = v0[23];
    sub_100B71C78();
    swift_allocError();
    *v16 = 13;
    swift_willThrow();
LABEL_9:

    v17 = v0[1];

    return v17();
  }

  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_100F1AFCC;
  v20 = v0[17];

  return sub_100F20F74(v20, v13);
}

uint64_t sub_100F1AFCC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_100F1B108;
  }

  else
  {
    *(v2 + 216) = *(v2 + 104);
    v3 = sub_100F1B0E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F1B108()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F1B18C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  type metadata accessor for UUID();
  v2[20] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1005B981C(&qword_101A21C68);
  v2[23] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100F1B2F4, 0, 0);
}

uint64_t sub_100F1B2F4()
{
  v97 = v0;
  v1 = sub_100DCDB40(*(v0 + 144), sub_100F1C578, 0, sub_100E5EF18, 0, sub_100E5EF78, 0);
  v2 = v1;
  v95 = 0;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    v95 = 1;
  }

LABEL_4:
  if (v3)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
LABEL_22:

      sub_100B71C78();
      swift_allocError();
      *v13 = 12;
      swift_willThrow();
      goto LABEL_26;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v6 = *(v2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

LABEL_25:

LABEL_26:

        v16 = *(v0 + 8);

        return v16();
      }
    }

    if (*(*(v6 + 16) + 32))
    {
      type metadata accessor for CRLBoardSyncRemoteRecord(0);
      if (swift_dynamicCastClass())
      {
        break;
      }
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_22;
    }
  }

  v8 = *(v6 + 16);
  if (!*(v8 + 32) || (v9 = swift_dynamicCastClass()) == 0)
  {
    sub_100B71C78();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    goto LABEL_25;
  }

  v10 = v9;
  v12 = *(v9 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData);
  v11 = *(v9 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8);
  swift_unknownObjectRetain();
  if (v11 >> 60 == 15)
  {

    sub_100B71C78();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  sub_100024E84(v12, v11);
  swift_unknownObjectRetain();
  sub_100024E84(v12, v11);
  sub_100F21E68(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

  CRDT.init(serializedData:)();
  v94 = v8;
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v92 = *(v0 + 152);
  (*(*(v0 + 200) + 56))(v20, 0, 1, *(v0 + 192));
  sub_100F21E00(v20, v18, type metadata accessor for CRLBoardCRDTData);
  v86 = *(v10 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 32);
  v82 = *(v10 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
  v84 = *(v10 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions);
  sub_10004FF34(v18, v19, type metadata accessor for CRLBoardCRDTData);
  sub_10004FF34(v10 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v21, type metadata accessor for CRLBoardIdentifier);
  v22 = (v21 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v23 = v22[1];
  v79 = *v22;

  sub_10003D6FC(v21, type metadata accessor for CRLBoardIdentifier);
  sub_100025870(v12, v11);
  swift_unknownObjectRelease();
  type metadata accessor for CRLBoardData(0);
  v24 = swift_allocObject();
  sub_10003D6FC(v18, type metadata accessor for CRLBoardCRDTData);
  *(v24 + 16) = 7;
  *(v24 + 40) = v82;
  *(v24 + 24) = v84;
  *(v24 + 56) = v86;
  sub_100F21E00(v19, v24 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v25 = (v24 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v25 = v79;
  v25[1] = v23;
  v26 = *v92;
  v27 = sub_100F1E038(v94, v10, *v92);
  v80 = *(v0 + 168);
  v74 = *(v0 + 208);
  v77 = *(v0 + 160);
  v87 = *(v0 + 152);
  v90 = *(v0 + 176);
  v93 = v27;
  v29 = v28;
  *&v84 = type metadata accessor for CRLBoard(0);
  v30 = objc_allocWithZone(v84);
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v32 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v32 - 8) + 56))(&v30[v31], 1, 1, v32);
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v33 = &v30[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v33 = _swiftEmptySetSingleton;
  v33[1] = _swiftEmptySetSingleton;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v34 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v30[v34] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v35 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();

  *&v30[v35] = PassthroughSubject.init()();
  v36 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v30[v36] = PassthroughSubject.init()();
  v37 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v30[v37] = PassthroughSubject.init()();
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = v26;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = v24;
  v30[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = 0;
  v38 = type metadata accessor for CRLRootContainerItem(0);
  v39 = objc_allocWithZone(v38);
  swift_unknownObjectWeakInit();
  *&v39[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  v40 = v24;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v26;
  v83 = v29;
  *&v39[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v29;
  v41 = type metadata accessor for CRLBoardItemBase(0);
  *(v0 + 88) = v39;
  *(v0 + 96) = v41;
  v42 = v26;

  v43 = v42;
  v44 = objc_msgSendSuper2((v0 + 88), "init");
  v45 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v44;
  v46 = objc_allocWithZone(v38);
  swift_unknownObjectWeakInit();
  *&v46[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v43;
  *&v46[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v93;
  *(v0 + 104) = v46;
  *(v0 + 112) = v41;

  v81 = v43;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2((v0 + 104), "init");
  v47 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FF34(v40 + v47, v74, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D6FC(v74, type metadata accessor for CRLBoardCRDTData);
  v49 = *(v40 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v48 = *(v40 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  sub_10084BD4C(v77, v49, v48, v90);
  v50 = sub_10004FF34(v90, v80, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v30[v45] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v50);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v80, v77, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v51 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v52 = swift_allocObject();
  *(v52 + 16) = _swiftEmptyDictionarySingleton;
  *(v52 + 24) = _swiftEmptyDictionarySingleton;
  *(v51 + 16) = v52;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v51;
  type metadata accessor for CRLActiveBoardShareState();
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  swift_unknownObjectWeakInit();
  v54 = *(v53 + 16);
  *(v53 + 16) = 0;

  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v53;
  *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  *(v0 + 120) = v30;
  *(v0 + 128) = v84;
  v55 = objc_msgSendSuper2((v0 + 120), "init");
  swift_unknownObjectWeakAssign();
  *(v0 + 136) = *(*&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = v55;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D6FC(v90, type metadata accessor for CRLBoardIdentifier);
  v57 = v56;
  v58 = sub_100822664(v57, 1);

  v59 = *(v87 + 8);
  *&v84 = *(v87 + 32);
  v96 = _swiftEmptyArrayStorage;
  swift_retain_n();

  v88 = v81;
  v91 = v57;
  v75 = v59;
  swift_unknownObjectRetain();
  v78 = v84;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_69:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v60 = v96;
  if (!(v96 >> 62))
  {
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_71:

    swift_unknownObjectRelease();

    (*(*v58 + 720))(v70);

    swift_unknownObjectRelease();

    v71 = v95;

    v72 = *(v0 + 8);

    return v72(v91, v71);
  }

LABEL_32:
  while (1)
  {
    v61 = v60 >> 62;
    if (v60 >> 62)
    {
      break;
    }

    if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_34:
    if ((v60 & 0xC000000000000001) != 0)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v63 = v60 & 0xFFFFFFFFFFFFFF8;
      if (!v61)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v62 = *(v60 + 32);

      v63 = v60 & 0xFFFFFFFFFFFFFF8;
      if (!v61)
      {
LABEL_37:
        v64 = *(v63 + 16);
        if (!v64)
        {
          goto LABEL_67;
        }

        goto LABEL_46;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_67;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_68;
    }

    v64 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:
    v65 = v64 - 1;
    if (__OFSUB__(v64, 1))
    {
      goto LABEL_66;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v96 = v60;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v61)
      {
LABEL_53:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_54:
      v67 = v83;
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v96 = v60;
      goto LABEL_55;
    }

    if (v61)
    {
      goto LABEL_53;
    }

    if (v65 > *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_54;
    }

    v67 = v83;
LABEL_55:
    sub_10067CF10(0, 1, 0);
    v96 = v60;
    sub_100F1C588(v62, v93, v67, v88, &v95, v91, v58);
    swift_beginAccess();

    sub_10079B674(v68);

    v60 = v96;
    if (v96 >> 62)
    {
      v69 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v69 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v69)
    {
      goto LABEL_71;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_75;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_100F1C588(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, char *a6, NSString a7)
{
  v167 = a7;
  v168 = a6;
  v170 = a5;
  v172 = a4;
  v173 = a3;
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v12 = v160 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v169 = v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v171 = v160 - v17;
  __chkstk_darwin(v18);
  v20 = v160 - v19;
  __chkstk_darwin(v21);
  v23 = *(a1 + 32);
  if (!v23)
  {
    goto LABEL_6;
  }

  v174 = v160 - v22;
  type metadata accessor for CRLBoardSyncRemoteRecord(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
LABEL_6:
    sub_100B71C78();
    swift_allocError();
    *v35 = 8;
    return swift_willThrow();
  }

  v165 = v7;
  v166 = v14;
  v27 = v14 + 16;
  v26 = *(v14 + 16);
  v164 = v25;
  v161 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v26(v174, v25 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v13);
  v28 = *(*a2 + 744);
  swift_beginAccess();
  v162 = v26;
  v163 = v27;
  v26(v20, a2 + v28, v13);
  v29 = sub_100F21E68(&qword_1019F37C0, &type metadata accessor for UUID);
  swift_unknownObjectRetain();
  v30 = v174;
  v160[1] = v29;
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v23;
  v34 = v166 + 8;
  v33 = *(v166 + 8);
  v33(v20, v13);
  v33(v30, v13);
  if (v31)
  {
    return swift_unknownObjectRelease();
  }

  v160[0] = v32;
  v36 = v173;
  v37 = *(*v173 + 744);
  swift_beginAccess();
  v38 = v36 + v37;
  v39 = v174;
  v162(v174, v38, v13);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33(v39, v13);
  if (v40)
  {
    return swift_unknownObjectRelease();
  }

  v41 = v13;
  v161 = v33;
  v173 = v34;
  v42 = sub_100E98A48(v164, *&v172[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext], 0, 0xF000000000000000);
  if (!v42)
  {
    sub_100B71C78();
    swift_allocError();
    *v46 = 5;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v43 = v42;
  (*(*v42 + 272))();
  v44 = v166;
  if ((*(v166 + 48))(v12, 1, v13) == 1)
  {
    sub_10000CAAC(v12, &qword_1019F6990);
    sub_100B71C78();
    swift_allocError();
    *v45 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  (*(v44 + 32))(v171, v12, v13);
  v47 = v43[3];
  if (sub_10001FF1C() >= v47)
  {
    if ((v43[2] & 8) != 0)
    {
      v75 = (*(*v43 + 464))();
      if ((v77 & 0x100) != 0)
      {
        if (!(v75 | v76) && !v77 || v75 == 1 && !v76 && !v77 || v75 == 2 && !v76 && !v77 || v75 == 3 && !v76 && !v77 || v75 == 4 && !v76 && !v77 || v75 == 5 && !v76 && !v77 || v75 == 6 && !v76 && !v77 || v75 == 7 && !v76 && !v77 || v75 == 8 && !v76 && !v77 || v75 == 9 && !v76 && !v77 || v75 == 10 && !v76 && !v77)
        {
          goto LABEL_15;
        }
      }

      else if ((v77 & 1) != 0 || !v76)
      {
        goto LABEL_15;
      }
    }

    v59 = (*v43 + 464);
    v60 = *v59;
    v61 = (*v59)();
    if ((v63 & 0x100) != 0 && (v61 | v62 || v63) && (v61 != 1 || v62 || v63) && (v61 != 2 || v62 || v63) && v61 == 3 && !v62 && !v63)
    {
      v123 = [objc_opt_self() standardUserDefaults];
      v124 = [v123 BOOLForKey:@"CRLImageItemsAreUnsupportedWhenDownloadingSendACopyUserDefault"];

      if (v124)
      {
        goto LABEL_15;
      }
    }

    v172 = sub_100B6D698(v43, v172);
    v64 = v60();
    v65 = v43;
    v66 = v64;
    v68 = v67;
    v70 = v69;
    v71 = v169;
    v72 = v171;
    v73 = (v162)(v169, v171, v41);
    if ((v70 & 0x100) == 0)
    {
      swift_unknownObjectRelease();

      v74 = v161;
      v161(v71, v41);
      result = v74(v72, v41);
      *v170 = 1;
      return result;
    }

    v78 = v70;
    v79 = v172;
    v170 = v65;
    if (!(v66 | v68) && !v78 || v66 == 1 && !v68 && !v78 || v66 == 2 && !v68 && !v78 || v66 == 3 && !v68 && !v78 || v66 == 4 && !v68 && !v78 || v66 == 5 && !v68 && !v78 || v66 == 6 && !v68 && !v78 || v66 == 7 && !v68 && !v78 || v66 == 8 && !v68 && !v78 || v66 == 9 && !v68 && !v78 || v66 == 10 && !v68 && !v78 || v66 == 11 && !v68 && !v78)
    {
      v80 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
      v81 = v168;
      v82 = v174;
      (*(**(*&v168[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v73);
      v83 = static UUID.== infix(_:_:)();
      v84 = v161;
      v161(v82, v41);
      if (v83)
      {
        v85 = v81;
        v86 = v41;
        v87 = *&v85[v80];
        sub_1005B981C(&unk_1019F4D60);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_101465920;
        *(v88 + 32) = v79;
        v89 = v87;
        v90 = v79;
        v91 = NSNotFound.getter();
        sub_1005B981C(&unk_101A09DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 32) = v91;
        v93 = inited + 32;
        *(inited + 40) = v88;
        v94 = sub_100BD4E94(inited);
        swift_setDeallocating();
        sub_10000CAAC(v93, &qword_101A039D0);
        v95 = v165;
        sub_100971EFC(v94, v167);
        if (v95)
        {
          swift_unknownObjectRelease();

          v96 = v161;
          v161(v169, v86);
          return v96(v171, v86);
        }

        swift_unknownObjectRelease();

        v107 = v86;
        v108 = v169;
        v109 = v171;
        goto LABEL_138;
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v98 = [v81 getBoardItemForUUID:isa];

      if (v98)
      {
        type metadata accessor for CRLContainerItem(0);
        if (swift_dynamicCastClass())
        {
          sub_1005B981C(&unk_1019F4D60);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_101465920;
          *(v99 + 32) = v79;
          v100 = v79;
          v101 = NSNotFound.getter();
          sub_1005B981C(&unk_101A09DB0);
          v102 = swift_initStackObject();
          *(v102 + 16) = xmmword_10146C6B0;
          *(v102 + 32) = v101;
          v103 = v102 + 32;
          *(v102 + 40) = v99;
          v104 = sub_100BD4E94(v102);
          swift_setDeallocating();
          sub_10000CAAC(v103, &qword_101A039D0);
          v105 = v165;
          sub_100971EFC(v104, v167);
          if (v105)
          {
            swift_unknownObjectRelease();

            v106 = v161;
            v161(v169, v41);
            return v106(v171, v41);
          }

          swift_unknownObjectRelease();

          v107 = v41;
LABEL_137:
          v109 = v171;
          v108 = v169;
LABEL_138:
          v125 = v161;
          v161(v108, v107);
          v126 = v109;
          return v125(v126, v107);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v84(v169, v41);
      return (v84)(v171, v41);
    }

    v127 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
    v128 = v174;
    (*(**(*&v168[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v73);
    v129 = static UUID.== infix(_:_:)();
    v174 = v41;
    v161(v128, v41);
    if (v129)
    {
      v130 = *&v168[v127];
      sub_1005B981C(&unk_1019F4D60);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_101465920;
      *(v131 + 32) = v79;
      v132 = v79;
      v133 = v130;
      v134 = NSNotFound.getter();
      sub_1005B981C(&unk_101A09DB0);
      v135 = swift_initStackObject();
      *(v135 + 16) = xmmword_10146C6B0;
      *(v135 + 32) = v134;
      v136 = v135 + 32;
      *(v135 + 40) = v131;
      v137 = sub_100BD4E94(v135);
      swift_setDeallocating();
      sub_10000CAAC(v136, &qword_101A039D0);
      v138 = v165;
      sub_100971EFC(v137, v167);
      if (v138)
      {
        swift_unknownObjectRelease();

        v107 = v174;
        v125 = v161;
        v161(v169, v174);
        v126 = v171;
        return v125(v126, v107);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v168 = objc_opt_self();
      v139 = [v168 _atomicIncrementAssertCount];
      v175 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v175);
      StaticString.description.getter();
      v167 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v140 = String._bridgeToObjectiveC()();

      v141 = [v140 lastPathComponent];

      v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v144 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v145 = swift_initStackObject();
      *(v145 + 16) = xmmword_10146CA70;
      *(v145 + 56) = &type metadata for Int32;
      *(v145 + 64) = &protocol witness table for Int32;
      *(v145 + 32) = v139;
      v146 = sub_1005CF000();
      *(v145 + 96) = v146;
      v147 = sub_100F21E68(&qword_1019F52E0, sub_1005CF000);
      *(v145 + 104) = v147;
      v148 = v167;
      *(v145 + 72) = v167;
      *(v145 + 136) = &type metadata for String;
      v149 = sub_1000053B0();
      *(v145 + 112) = v166;
      *(v145 + 120) = v143;
      *(v145 + 176) = &type metadata for UInt;
      *(v145 + 184) = &protocol witness table for UInt;
      *(v145 + 144) = v149;
      *(v145 + 152) = 319;
      v150 = v175;
      *(v145 + 216) = v146;
      *(v145 + 224) = v147;
      *(v145 + 192) = v150;
      v151 = v148;
      v152 = v150;
      v153 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v153, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v145);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v154 = static os_log_type_t.error.getter();
      sub_100005404(v144, &_mh_execute_header, v154, "Surface item should have root container as parent", 49, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v155 = swift_allocObject();
      v155[2] = 8;
      v155[3] = 0;
      v155[4] = 0;
      v155[5] = 0;
      v156 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v157 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v158 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v159 = String._bridgeToObjectiveC()();

      [v168 handleFailureInFunction:v157 file:v158 lineNumber:319 isFatal:0 format:v159 args:v156];
      swift_unknownObjectRelease();
    }

    v107 = v174;
    goto LABEL_137;
  }

LABEL_15:
  *v170 = 1;
  if ((v43[2] & 1) != 0 || (v48 = (*(*v43 + 464))(), (v50 & 0x100) != 0) && (v48 | v49 || v50) && (v48 != 1 || v49 || v50) && (v48 != 2 || v49 || v50) && v48 == 3 && !v49 && !v50 && (v110 = objc_opt_self(), v111 = [v110 standardUserDefaults], v112 = objc_msgSend(v111, "BOOLForKey:", @"CRLImageItemsAreUnsupportedWhenDownloadingSendACopyUserDefault"), v111, v112) && (v113 = objc_msgSend(v110, "standardUserDefaults"), v114 = objc_msgSend(v113, "BOOLForKey:", @"CRLUnsupportedBoardItemsPropagatesToBoardUserDefault"), v113, v114))
  {
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v172 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    v115 = swift_initStackObject();
    *(v115 + 16) = xmmword_10146C6B0;
    v116 = v174;
    (*(*v43 + 264))();
    v117 = UUID.uuidString.getter();
    v119 = v118;
    v120 = v161;
    v161(v116, v41);
    *(v115 + 56) = &type metadata for String;
    *(v115 + 64) = sub_1000053B0();
    *(v115 + 32) = v117;
    *(v115 + 40) = v119;
    v121 = static os_log_type_t.default.getter();
    sub_100005404(v172, &_mh_execute_header, v121, "Unsupported board item is causing entire board to be unsupported: %{public}@", 76, 2, v115);
    swift_setDeallocating();
    sub_100005070(v115 + 32);
    sub_100B71C78();
    swift_allocError();
    *v122 = 13;
    swift_willThrow();
    swift_unknownObjectRelease();

    return v120(v171, v41);
  }

  else
  {
    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v172 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_10146C6B0;
    v52 = v174;
    (*(*v43 + 264))();
    v53 = UUID.uuidString.getter();
    v55 = v54;
    v56 = v52;
    v57 = v161;
    v161(v56, v41);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_1000053B0();
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    v58 = static os_log_type_t.default.getter();
    sub_100005404(v172, &_mh_execute_header, v58, "Skipping item as unsupported: %{public}@", 40, 2, v51);
    swift_unknownObjectRelease();

    swift_setDeallocating();
    sub_100005070(v51 + 32);
    return v57(v171, v41);
  }
}

void *sub_100F1DCA4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_34:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (2)
  {
    v33 = v5;
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v12 = CKRecord.recordType.getter();
      v14 = sub_100EEA604(v12, v13);

      if (v14 >= 5u)
      {
        break;
      }

      if (v14 != 4)
      {
        goto LABEL_28;
      }

      v16 = sub_100F000F8(v11);
      if (v16)
      {
        v7 = v16;
        v9 = &off_1018A80E0;
        goto LABEL_22;
      }

LABEL_6:
      if (v4 == v3)
      {
        return v33;
      }
    }

    if (v14 <= 5u)
    {
      v7 = sub_100F01A00(v11);
      v9 = v8;

      if (v7)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    if (v14 == 6)
    {
      v15 = sub_100F03714(v11);
      if (v15)
      {
        v7 = v15;
        v9 = &off_1018A8098;
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    if (v14 == 7)
    {
LABEL_28:
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v25 = CKRecord.recordType.getter();
      sub_100EEA604(v25, v26);

      sub_1005B981C(&unk_101A22D70);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v30, "CRLPublicCloudRecordProvider should not be getting this non-public CloudRecord: recordType %{public}@.", 102, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      sub_100A1E518();
      swift_allocError();
      *v31 = 0;
      swift_willThrow();
      v5 = v33;

      return v5;
    }

    v17 = [v11 recordID];

    type metadata accessor for CRLUnknownSyncRemoteRecord();
    v7 = swift_allocObject();
    *(v7 + 16) = v17;
    v9 = &off_1018A8120;
LABEL_22:
    v18 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100B37F64(0, v33[2] + 1, 1, v33);
    }

    v20 = v18[2];
    v19 = v18[3];
    v21 = v18;
    if (v20 >= v19 >> 1)
    {
      v21 = sub_100B37F64((v19 > 1), v20 + 1, 1, v18);
    }

    v21[2] = v20 + 1;
    v22 = &v21[2 * v20];
    v5 = v21;
    v22[4] = v7;
    v22[5] = v9;
    if (v4 != v3)
    {
      continue;
    }

    return v5;
  }
}

uint64_t *sub_100F1E038(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v105 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v98 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for CRLContainerItemCRDTData(0);
  v10 = *(v118 - 8);
  __chkstk_darwin(v118);
  v97 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  v117 = sub_1005B981C(&unk_101A226A0);
  v15 = *(v117 - 8);
  __chkstk_darwin(v117);
  v96 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v86 - v18;
  __chkstk_darwin(v19);
  v116 = &v86 - v20;
  v21 = sub_1005B981C(&qword_101A233D0);
  __chkstk_darwin(v21 - 8);
  v100 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v104 = &v86 - v24;
  __chkstk_darwin(v25);
  v120 = &v86 - v26;
  v27 = sub_1005B981C(&qword_101A233D8);
  __chkstk_darwin(v27 - 8);
  v103 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v102 = &v86 - v30;
  __chkstk_darwin(v31);
  v119 = &v86 - v32;
  swift_beginAccess();
  v33 = *(a1 + 48);
  if (v33 >> 62)
  {
    goto LABEL_48;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
LABEL_3:
    v91 = a2;
    v101 = v33 & 0xC000000000000001;
    v86 = v33 & 0xFFFFFFFFFFFFFF8;
    v107 = (v15 + 7);
    v94 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext;
    v106 = (v10 + 7);
    v93 = (v15 + 6);
    v92 = (v10 + 6);
    v15 = (v8 + 8);

    v35 = 0;
    v10 = 0;
    a2 = 0;
    v8 = v119;
    v90 = v7;
    v99 = v33;
    v89 = v34;
    v88 = v15;
    v87 = v14;
    do
    {
      v123 = v4;
      if (v101)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v35 >= *(v86 + 16))
        {
          goto LABEL_47;
        }

        v7 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v34 = _CocoaArrayWrapper.endIndex.getter();
          if (!v34)
          {
            goto LABEL_49;
          }

          goto LABEL_3;
        }
      }

      if (a2 && v10)
      {

        if (qword_1019F2168 != -1)
        {
          swift_once();
        }

        v78 = static OS_os_log.crlSendACopy;
        v79 = static os_log_type_t.default.getter();
        sub_100005404(v78, &_mh_execute_header, v79, "Unexpected child found, the rootContainers are populated. Exiting loop early.", 77, 2, _swiftEmptyArrayStorage);

        return a2;
      }

      v112 = v35;
      v115 = v37;
      v38 = *(v37 + 32);
      if (!v38 || (type metadata accessor for CRLBoardItemSyncRemoteRecord(0), (v39 = swift_dynamicCastClass()) == 0))
      {

        sub_100B71C78();
        swift_allocError();
        *v77 = 8;
        swift_willThrow();

        goto LABEL_51;
      }

      v40 = v39;
      v113 = a2;
      v114 = v10;
      v41 = *(v105 + v94);
      swift_unknownObjectRetain();
      v42 = sub_100E98A48(v40, v41, 0, 0xF000000000000000);
      if (!v42)
      {

        sub_100B71C78();
        swift_allocError();
        *v80 = 5;
        swift_willThrow();

        swift_unknownObjectRelease();

        goto LABEL_52;
      }

      v43 = v42;
      v111 = v38;
      v109 = v7;
      a2 = *v107;
      (*v107)(v8, 1, 1, v117);
      v44 = *v106;
      (*v106)(v120, 1, 1, v118);
      v45 = *(v40 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8);
      v110 = v43;
      v108 = a2;
      if (v45 >> 60 != 15)
      {
        sub_100024E98(*(v40 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData), v45);
        sub_100F21E68(&qword_1019FC000, type metadata accessor for CRLContainerItemCRDTData);
        v46 = v123;
        CRDT.init(serializedData:)();
        if (v46)
        {

          v123 = 0;
          v47 = 1;
        }

        else
        {
          v123 = 0;
          v47 = 0;
        }

        v48 = v120;
        a2 = &qword_101A233D0;
        sub_10000CAAC(v120, &qword_101A233D0);
        v49 = v104;
        v44(v104, v47, 1, v118);
        sub_10003DFF8(v49, v48, &qword_101A233D0);
      }

      v50 = v123;
      v51 = v117;
      if (*(v40 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8) >> 60 == 15)
      {
        v52 = v14;
        v53 = v119;
        v54 = v103;
      }

      else
      {
        sub_100024E98(*(v40 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData), *(v40 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8));
        sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
        CRDT.init(serializedData:)();
        v52 = v14;
        if (v50)
        {

          a2 = 0;
          v55 = 1;
        }

        else
        {
          a2 = 0;
          v55 = 0;
        }

        v54 = v103;
        v56 = v119;
        sub_10000CAAC(v119, &qword_101A233D8);
        v57 = v102;
        v58 = v55;
        v53 = v56;
        (v108)(v102, v58, 1, v51);
        sub_10003DFF8(v57, v56, &qword_101A233D8);
        v50 = 0;
      }

      sub_10000BE14(v53, v54, &qword_101A233D8);
      if ((*v93)(v54, 1, v51) == 1)
      {

        v81 = &qword_101A233D8;
        v82 = v54;
LABEL_42:
        sub_10000CAAC(v82, v81);
        sub_100B71C78();
        swift_allocError();
        *v83 = 5;
        swift_willThrow();

        swift_unknownObjectRelease();

        sub_10000CAAC(v120, &qword_101A233D0);
        sub_10000CAAC(v53, &qword_101A233D8);
        return a2;
      }

      v59 = v116;
      a2 = &unk_101A226A0;
      sub_10003DFF8(v54, v116, &unk_101A226A0);
      v60 = v100;
      sub_10000BE14(v120, v100, &qword_101A233D0);
      if ((*v92)(v60, 1, v118) == 1)
      {
        sub_10000CAAC(v59, &unk_101A226A0);

        v81 = &qword_101A233D0;
        v82 = v60;
        goto LABEL_42;
      }

      v123 = v50;
      sub_100F21E00(v60, v52, type metadata accessor for CRLContainerItemCRDTData);
      v61 = v95;
      sub_10000BE14(v59, v95, &unk_101A226A0);
      v62 = v97;
      sub_10004FF34(v52, v97, type metadata accessor for CRLContainerItemCRDTData);
      v63 = v110;
      v64 = *(v110 + 5);
      v121[0] = *(v110 + 3);
      v121[1] = v64;
      v122 = *(v110 + 56);
      v65 = v110[2];
      type metadata accessor for CRLContainerItemData(0);
      v66 = swift_allocObject();
      sub_10004FF34(v62, v66 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
      v67 = v96;
      sub_10000BE14(v61, v96, &unk_101A226A0);
      sub_10000BE14(v67, v66 + *(*v66 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v67, &unk_101A226A0);
      sub_10003D6FC(v62, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v61, &unk_101A226A0);
      v108 = sub_100747AF0(v121, v65);
      v7 = (*v63 + 264);
      v68 = *v7;
      v69 = v98;
      (*v7)();
      v70 = v69;
      LOBYTE(v69) = static UUID.== infix(_:_:)();
      v15 = v88;
      v71 = *v88;
      v72 = v90;
      v73 = (*v88)(v70, v90);
      if (v69)
      {

        swift_unknownObjectRelease();

        v36 = v87;
        sub_10003D6FC(v87, type metadata accessor for CRLContainerItemCRDTData);
        sub_10000CAAC(v116, &unk_101A226A0);
        sub_10000CAAC(v120, &qword_101A233D0);
        v8 = v119;
        sub_10000CAAC(v119, &qword_101A233D8);
        a2 = v108;
        v4 = v123;
        v10 = v114;
        v14 = v36;
      }

      else
      {
        v74 = v70;
        (v68)(v73);
        v75 = static UUID.== infix(_:_:)();

        swift_unknownObjectRelease();

        v71(v74, v72);
        v76 = v87;
        sub_10003D6FC(v87, type metadata accessor for CRLContainerItemCRDTData);
        sub_10000CAAC(v116, &unk_101A226A0);
        sub_10000CAAC(v120, &qword_101A233D0);
        sub_10000CAAC(v119, &qword_101A233D8);
        v14 = v76;

        if (v75)
        {
          v10 = v108;
          v4 = v123;
        }

        else
        {
          v4 = v123;
          v10 = v114;
        }

        a2 = v113;
        v8 = v119;
      }

      v33 = v99;
      v35 = v112 + 1;
    }

    while (v109 != v89);

    if (a2 && v10)
    {
      return a2;
    }
  }

  else
  {
LABEL_49:
    a2 = 0;
  }

  sub_100B71C78();
  swift_allocError();
  *v84 = 5;
  swift_willThrow();
LABEL_51:

LABEL_52:

  return a2;
}

uint64_t sub_100F1EF74(unint64_t a1, void *a2, void *a3)
{
  v246 = a3;
  v210 = a2;
  v4 = type metadata accessor for CRLShapeItemParentAffinity(0);
  __chkstk_darwin(v4 - 8);
  v229 = v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v228 = v184 - v7;
  v8 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v227 = v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  *&v250 = v184 - v11;
  v226 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v226);
  v225 = v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v224 = v184 - v14;
  __chkstk_darwin(v15);
  v223 = v184 - v16;
  __chkstk_darwin(v17);
  v222 = v184 - v18;
  v19 = sub_1005B981C(&qword_101A1F610);
  __chkstk_darwin(v19 - 8);
  v237 = v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v236 = v184 - v22;
  v23 = sub_1005B981C(&qword_101A22850);
  __chkstk_darwin(v23 - 8);
  v235 = v184 - v24;
  v253 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v25 = *(v253 - 8);
  __chkstk_darwin(v253);
  v249 = v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for UUID();
  v197 = *(v260 - 8);
  v27 = *(v197 + 64);
  __chkstk_darwin(v260);
  v221 = v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v184 - v29;
  __chkstk_darwin(v31);
  v252 = v184 - v32;
  v33 = sub_1005B981C(&qword_101A22858);
  __chkstk_darwin(v33 - 8);
  v239 = v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v254 = v184 - v36;
  v212 = sub_1005B981C(&unk_101A22860);
  v255 = *(v212 - 8);
  __chkstk_darwin(v212);
  v200 = v184 - v37;
  v241 = sub_1005B981C(&qword_101A22870);
  v251 = *(v241 - 8);
  __chkstk_darwin(v241);
  v243 = v184 - v38;
  v242 = sub_1005B981C(&unk_101A341C0);
  v39 = *(v242 - 8);
  __chkstk_darwin(v242);
  v199 = v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v198 = v184 - v42;
  v43 = sub_1005B981C(&qword_101A21F48);
  __chkstk_darwin(v43 - 8);
  v202 = v184 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v201 = v184 - v46;
  v206 = sub_1005B981C(&unk_101A22E30);
  isUniquelyReferenced_nonNull_native = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = v184 - v48;
  if (qword_1019F2168 != -1)
  {
    goto LABEL_92;
  }

  while (2)
  {
    v220 = static OS_os_log.crlSendACopy;
    v216 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v215 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    v50 = a1 >> 62;
    v240 = v30;
    v205 = a1;
    if (a1 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v257[0] = v51;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v53;
    *(inited + 56) = &type metadata for String;
    v214 = sub_1000053B0();
    *(inited + 64) = v214;
    *(inited + 32) = v52;
    *(inited + 40) = v30;
    v54 = static os_log_type_t.default.getter();
    sub_100005404(v220, &_mh_execute_header, v54, "Adding %{public}@ CRLFreehandDrawingBucketSyncRemoteRecord to board", 67, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v211 = sub_100BD6EA4(_swiftEmptyArrayStorage);
    v55 = v25;
    if (v50)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v254;
      if (!a1)
      {
LABEL_45:
        v209 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      a1 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v254;
      if (!a1)
      {
        goto LABEL_45;
      }
    }

    v56 = type metadata accessor for CRContext();
    v209 = 0;
    v57 = 0;
    v58 = v205 & 0xC000000000000001;
    v184[1] = v205 + 32;
    v185 = v205 & 0xFFFFFFFFFFFFFF8;
    v195 = (v39 + 7);
    v196 = v56;
    v192 = (v39 + 4);
    v193 = (v39 + 6);
    v191 = (v255 + 8);
    v245 = (v197 + 32);
    v233 = v27 + 32;
    v234 = (v197 + 16);
    v232 = (v55 + 56);
    v231 = (v55 + 48);
    v219 = 0x1000000000000;
    v217 = (v197 + 48);
    v218 = 0x2000400000000;
    v230 = (v197 + 8);
    v189 = (v39 + 1);
    v190 = (v251 + 1);
    v194 = (isUniquelyReferenced_nonNull_native + 8);
    v39 = &qword_101A07B90;
    isUniquelyReferenced_nonNull_native = v204;
    v27 = v242;
    v186 = v205 & 0xC000000000000001;
    v187 = a1;
    do
    {
      if (v58)
      {
        v30 = v57;
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v60 = v202;
        v61 = v57 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_91;
        }
      }

      else
      {
        v60 = v202;
        if (v57 >= *(v185 + 16))
        {
          __break(1u);
LABEL_95:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v62 = __OFADD__(v57, 1);
        v61 = v57 + 1;
        if (v62)
        {
          goto LABEL_91;
        }
      }

      v188 = v61;
      v207 = v59;
      v63 = *(v59 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_ckMergeableRecordValue);
      (*v195)(v201, 1, 1, v27);
      memset(v257, 0, 40);
      v64 = v63;
      static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
      sub_10000CAAC(v257, &qword_101A07B90);
      sub_10001A2F8(&unk_101A22E40, &unk_101A341C0);
      CRCKMergeable.init(crdt:context:)();
      sub_10001A2F8(&qword_101A21F50, &unk_101A22E30);
      v203 = v64;
      v65 = v206;
      v66 = v208;
      CKMergeable.merge(_:)();
      if (v66)
      {
        (*v194)(isUniquelyReferenced_nonNull_native, v65);

        return sub_1000C1014(v209);
      }

      v208 = 0;
      CRCKMergeable.crdt.getter();
      if ((*v193)(v60, 1, v27) == 1)
      {

        sub_10000CAAC(v60, &qword_101A21F48);
        v177 = swift_initStackObject();
        *(v177 + 16) = v215;
        v257[0] = *(v207 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
        v178 = dispatch thunk of CustomStringConvertible.description.getter();
        v179 = v214;
        *(v177 + 56) = &type metadata for String;
        *(v177 + 64) = v179;
        *(v177 + 32) = v178;
        *(v177 + 40) = v180;
        v181 = static os_log_type_t.error.getter();
        sub_100005404(v220, &_mh_execute_header, v181, "Failed to create bucket for %{public}@", 38, 2, v177);
        swift_setDeallocating();
        sub_100005070(v177 + 32);
        sub_100B71C78();
        swift_allocError();
        *v182 = 4;
        swift_willThrow();

        (*v194)(isUniquelyReferenced_nonNull_native, v65);
        return sub_1000C1014(v209);
      }

      v67 = *v192;
      v68 = v198;
      (*v192)(v198, v60, v27);
      v213 = *(v207 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
      v69 = v199;
      v67(v199, v68, v27);
      sub_1005B981C(&unk_101A228D0);
      v30 = swift_allocObject();
      v70 = *(*v30 + 120);
      v67((v30 + v70), v69, v27);
      swift_beginAccess();
      v238 = v70;
      v71 = v200;
      Capsule.root.getter();
      v72 = v212;
      CRDictionary.makeIterator()();
      (*v191)(v71, v72);
      v255 = v30;
      while (1)
      {
        v79 = v239;
        CRDictionary.Iterator.next()();
        sub_10003DFF8(v79, v25, &qword_101A22858);
        v80 = sub_1005B981C(&qword_101A22898);
        if ((*(*(v80 - 8) + 48))(v25, 1, v80) == 1)
        {
          break;
        }

        v81 = *v245;
        v82 = v252;
        v83 = v260;
        (*v245)(v252, v25, v260);
        v84 = v240;
        v85 = (*v234)(v240, v82, v83);
        __chkstk_darwin(v85);
        v87 = (v184 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
        v88 = v253;
        *v87 = v83;
        v87[1] = v88;
        v87[2] = sub_100F21E68(&qword_101A228A8, &type metadata accessor for UUID);
        v87[3] = sub_100F21E68(&unk_101A228B0, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
        v244 = v81;
        v81(v87 + 32, v84, v83);
        swift_getKeyPath();
        v89 = v236;
        Capsule.subscript.getter();

        v90 = v237;
        sub_10000BE14(v89, v237, &qword_101A1F610);
        v91 = sub_1005B981C(&qword_101A228A0);
        v92 = *(v91 - 8);
        v93 = (*(v92 + 48))(v90, 1, v91);
        v251 = v91;
        if (v93 == 1)
        {
          sub_10000CAAC(v89, &qword_101A1F610);
          sub_10000CAAC(v90, &qword_101A1F610);
          v94 = 1;
          v95 = v235;
        }

        else
        {
          sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
          v95 = v235;
          Ref.subscript.getter();
          sub_10000CAAC(v89, &qword_101A1F610);
          (*(v92 + 8))(v90, v91);
          v94 = 0;
        }

        v96 = v92;
        v97 = v253;
        (*v232)(v95, v94, 1, v253);
        v98 = *(v80 + 48);
        v99 = (*v231)(v95, 1, v97);
        v100 = v254;
        v101 = v260;
        if (v99 == 1)
        {

          sub_10000CAAC(v95, &qword_101A22850);
          v136 = swift_initStackObject();
          *(v136 + 16) = v215;
          v257[0] = v213;
          v137 = dispatch thunk of CustomStringConvertible.description.getter();
          v138 = v214;
          *(v136 + 56) = &type metadata for String;
          *(v136 + 64) = v138;
          *(v136 + 32) = v137;
          *(v136 + 40) = v139;
          v140 = static os_log_type_t.error.getter();
          sub_100005404(v220, &_mh_execute_header, v140, "Unexpected, bucket %{public}@ is invalid", 40, 2, v136);
          swift_setDeallocating();
          sub_100005070(v136 + 32);
          sub_100B71C78();
          swift_allocError();
          *v141 = 4;
          swift_willThrow();

          v142 = v255;
          swift_setDeallocating();
          (*v189)(v142 + *(*v142 + 120), v242);
          swift_deallocClassInstance();

          (*v230)(v252, v101);
          (*v190)(v243, v241);
          (*v194)(v204, v206);
          (*(v96 + 8))(&v98[v100], v251);
          return sub_1000C1014(v209);
        }

        v247 = v98;
        v248 = v96;
        v102 = v95;
        v103 = v249;
        sub_100F21E00(v102, v249, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
        v104 = v222;
        sub_10000BE14(v103 + *(v97 + 20), v222, &unk_101A0F400);
        v105 = v103 + *(v97 + 24);
        v106 = v250;
        sub_10004FF34(v105, v250, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        v258[0] = v219;
        v258[1] = v218;
        v258[2] = v219;
        v258[3] = 0;
        v259 = 1;
        type metadata accessor for CRLFreehandDrawingShapeItemData(0);
        v107 = swift_allocObject();
        v108 = v223;
        sub_10000BE14(v104, v223, &unk_101A0F400);
        v109 = v106;
        v110 = v227;
        sub_10004FF34(v109, v227, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_10004FF34(v110, v107 + *(*v107 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        v111 = v224;
        sub_10000BE14(v108, v224, &unk_101A0F400);
        *(v107 + qword_101A27318) = 0;
        v112 = v225;
        sub_10000BE14(v111, v225, &unk_101A0F400);
        sub_10000BE14(v112, v107 + *(*v107 + 736), &unk_101A0F400);
        sub_1005B981C(&unk_1019F5250);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v112, &unk_101A0F400);
        sub_10000CAAC(v111, &unk_101A0F400);
        sub_10003D6FC(v110, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_10000CAAC(v108, &unk_101A0F400);
        sub_10003D6FC(v250, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
        sub_10000CAAC(v104, &unk_101A0F400);
        v39 = sub_100747AF0(v258, 2);
        v113 = *(*v39 + 736);
        swift_beginAccess();
        sub_10000BE14(v39 + v113, v104, &unk_101A0F400);
        sub_1005B981C(&unk_101A0F410);
        v114 = v229;
        CRRegister.wrappedValue.getter();
        v115 = v260;
        sub_10000CAAC(v104, &unk_101A0F400);
        v116 = v228;
        sub_10000BE14(v114, v228, &qword_1019F6990);
        sub_10003D6FC(v114, type metadata accessor for CRLShapeItemParentAffinity);
        if ((*v217)(v116, 1, v115) == 1)
        {
          sub_10000CAAC(v116, &qword_1019F6990);
          v73 = v230;
          v30 = v255;
          isUniquelyReferenced_nonNull_native = v251;
          goto LABEL_17;
        }

        v244(v221, v116, v115);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v25 = [v210 getBoardItemForUUID:isa];

        v30 = v255;
        isUniquelyReferenced_nonNull_native = v251;
        if (!v25)
        {
          goto LABEL_32;
        }

        v27 = &unk_1014B7750;
        v118 = type metadata accessor for CRLContainerItem(0);
        v119 = swift_dynamicCastClass();
        if (!v119)
        {

          v115 = v260;
LABEL_32:
          v73 = v230;
          (*v230)(v221, v115);
LABEL_17:
          v74 = swift_initStackObject();
          *(v74 + 16) = v215;
          v257[0] = v213;
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v76 = v214;
          *(v74 + 56) = &type metadata for String;
          *(v74 + 64) = v76;
          *(v74 + 32) = v75;
          *(v74 + 40) = v77;
          v78 = static os_log_type_t.error.getter();
          sub_100005404(v220, &_mh_execute_header, v78, "Unexpectedly missing parent UUID, strokes will not be added as expected for bucket %{public}@", 93, 2, v74);

          swift_setDeallocating();
          sub_100005070(v74 + 32);
          sub_10003D6FC(v249, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
          (*v73)(v252, v115);
          v25 = v254;
          goto LABEL_18;
        }

        v120 = v119;
        v244 = v118;
        v121 = isUniquelyReferenced_nonNull_native;
        sub_1000C1014(v209);
        a1 = v211;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v257[0] = a1;
        v30 = sub_1007C8CE8(v120);
        v123 = *(a1 + 16);
        v124 = (v122 & 1) == 0;
        v125 = v123 + v124;
        if (__OFADD__(v123, v124))
        {
          goto LABEL_89;
        }

        v27 = v122;
        if (*(a1 + 24) >= v125)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a1 = v257;
            sub_100AA8EA4();
          }
        }

        else
        {
          sub_100A912D0(v125, isUniquelyReferenced_nonNull_native);
          a1 = v257[0];
          v126 = sub_1007C8CE8(v120);
          if ((v27 & 1) != (v127 & 1))
          {
            goto LABEL_95;
          }

          v30 = v126;
        }

        isUniquelyReferenced_nonNull_native = v121;
        v128 = v257[0];
        if ((v27 & 1) == 0)
        {
          *(v257[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
          *(v128[6] + 8 * v30) = v120;
          *(v128[7] + 8 * v30) = _swiftEmptyArrayStorage;
          v129 = v128[2];
          v62 = __OFADD__(v129, 1);
          v130 = v129 + 1;
          if (v62)
          {
            goto LABEL_90;
          }

          v128[2] = v130;
          v131 = v128;
          v132 = v25;
          v128 = v131;
        }

        v211 = v128;
        v133 = (v128[7] + 8 * v30);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v134 = *v230;
        v135 = v260;
        (*v230)(v221, v260);
        sub_10003D6FC(v249, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
        v134(v252, v135);
        v209 = sub_100975C10;
        v25 = v254;
        v30 = v255;
LABEL_18:
        (*(v248 + 8))(&v247[v25], isUniquelyReferenced_nonNull_native);
      }

      swift_setDeallocating();
      v27 = v242;
      (*v189)(v30 + *(*v30 + 120), v242);
      swift_deallocClassInstance();

      (*v190)(v243, v241);
      isUniquelyReferenced_nonNull_native = v204;
      (*v194)(v204, v206);
      a1 = v187;
      v57 = v188;
      v58 = v186;
      v39 = &qword_101A07B90;
    }

    while (v188 != v187);
LABEL_46:
    a1 = 1;
    v143 = sub_100822664(v210, 1);
    v144 = v211 + 64;
    v145 = 1 << *(v211 + 32);
    v146 = -1;
    if (v145 < 64)
    {
      v146 = ~(-1 << v145);
    }

    v30 = v146 & *(v211 + 64);
    v25 = (v145 + 63) >> 6;
    v251 = (v197 + 8);

    v148 = 0;
    v250 = xmmword_10146BDE0;
    v39 = v208;
    v247 = v25;
    v249 = v143;
    v248 = v144;
    if (v30)
    {
      while (1)
      {
        v208 = v39;
        v149 = v148;
LABEL_54:
        v253 = v30;
        v252 = v149;
        v150 = (v149 << 9) | (8 * __clz(__rbit64(v30)));
        a1 = *(*(v147 + 48) + v150);
        v30 = *(*(v147 + 56) + v150);
        v257[0] = _swiftEmptyArrayStorage;
        v151 = v30 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v25 = a1;

        v254 = v25;
        if (v151)
        {
          break;
        }

        v159 = _swiftEmptyArrayStorage;
LABEL_70:

        v160 = swift_initStackObject();
        *(v160 + 16) = v250;
        isUniquelyReferenced_nonNull_native = v159 >> 62;
        if (v159 >> 62)
        {
          v161 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v161 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v257[0] = v161;
        v162 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v214;
        *(v160 + 56) = &type metadata for String;
        *(v160 + 64) = v27;
        *(v160 + 32) = v162;
        *(v160 + 40) = v163;
        v164 = **(v25 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        v165 = v240;
        (*(v164 + 264))();
        v166 = UUID.uuidString.getter();
        v168 = v167;
        (*v251)(v165, v260);
        *(v160 + 96) = &type metadata for String;
        *(v160 + 104) = v27;
        *(v160 + 72) = v166;
        *(v160 + 80) = v168;
        v169 = static os_log_type_t.default.getter();
        sub_100005404(v220, &_mh_execute_header, v169, "Adding %{public}@ freehand drawing items to container: %{public}@", 65, 2, v160);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        if (isUniquelyReferenced_nonNull_native)
        {
          type metadata accessor for CRLBoardItem(0);

          v170 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for CRLBoardItem(0);
          v170 = v159;
        }

        v143 = v249;

        v171 = NSNotFound.getter();
        sub_1005B981C(&unk_101A09DB0);
        v172 = swift_initStackObject();
        *(v172 + 16) = v215;
        *(v172 + 32) = v171;
        v173 = v172 + 32;
        *(v172 + 40) = v170;
        v174 = sub_100BD4E94(v172);
        swift_setDeallocating();
        sub_10000CAAC(v173, &qword_101A039D0);
        a1 = v254;
        v175 = v208;
        sub_100971EFC(v174, v143);
        v39 = v175;
        if (v175)
        {

          return sub_1000C1014(v209);
        }

        v30 = (v253 - 1) & v253;

        v148 = v252;
        v147 = v211;
        v144 = v248;
        v25 = v247;
        if (!v30)
        {
          goto LABEL_50;
        }
      }

      isUniquelyReferenced_nonNull_native = 0;
      v255 = v30 & 0xC000000000000001;
      v27 = v30 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v255)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v39 = (isUniquelyReferenced_nonNull_native + 1);
          if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
          {
            break;
          }

          goto LABEL_61;
        }

        if (isUniquelyReferenced_nonNull_native >= *(v27 + 16))
        {
          goto LABEL_87;
        }

        a1 = *(v30 + 8 * isUniquelyReferenced_nonNull_native + 32);

        v39 = (isUniquelyReferenced_nonNull_native + 1);
        if (!__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
LABEL_61:
          v25 = v30;
          v152 = v151;
          v153 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
          *&v153[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
          *&v153[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
          v154 = &v153[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
          *v154 = 0u;
          *(v154 + 1) = 0u;
          *(v154 + 2) = 0u;
          *(v154 + 6) = 0;
          *&v153[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
          v155 = v246;
          *&v153[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v246;
          *&v153[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
          v156 = type metadata accessor for CRLBoardItemBase(0);
          v256.receiver = v153;
          v256.super_class = v156;
          v157 = v155;
          objc_msgSendSuper2(&v256, "init");
          a1 = v257;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v257[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v257[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          ++isUniquelyReferenced_nonNull_native;
          v151 = v152;
          v158 = v39 == v152;
          v30 = v25;
          if (v158)
          {
            v159 = v257[0];
            v25 = v254;
            goto LABEL_70;
          }

          continue;
        }

        break;
      }

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
      swift_once();
      continue;
    }

    break;
  }

  while (1)
  {
LABEL_50:
    v149 = (v148 + 1);
    if (__OFADD__(v148, 1))
    {
      goto LABEL_88;
    }

    if (v149 >= v25)
    {
      break;
    }

    v30 = *(v144 + 8 * v149);
    ++v148;
    if (v30)
    {
      v208 = v39;
      goto LABEL_54;
    }
  }

  (*(*v143 + 720))(v176);

  if (!v39)
  {
  }

  return sub_1000C1014(v209);
}