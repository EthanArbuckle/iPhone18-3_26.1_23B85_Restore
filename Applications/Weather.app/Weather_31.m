uint64_t SavedLocationsMonitor.deinit()
{

  sub_100006F14(v0 + 64);
  sub_100006F14(v0 + 104);
  sub_100006F14(v0 + 144);
  return v0;
}

uint64_t SavedLocationsMonitor.__deallocating_deinit()
{
  SavedLocationsMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t SavedLocationsMonitor.savedLocationsDidUpdate(manager:savedLocations:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v43 = v13;
  v44 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v16 = v15 - v14;
  v17 = type metadata accessor for Logger();
  sub_1000037C4();
  v42 = v18;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v23 - 8);
  v25 = &v39 - v24;
  if ((*(v3 + 184) & 1) == 0 && !*(a2 + 16))
  {
    v41 = v7;
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA29A8 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (aBlock || v46 != 0xE000000000000000)
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v40 = v5;
    sub_1000161C0((v3 + 144), *(v3 + 168));
    dispatch thunk of LocationManagerType.currentLocation.getter();
    v28 = type metadata accessor for Location();
    v29 = sub_100024D10(v25, 1, v28);
    sub_1000180EC(v25, &qword_100CA65D8);
    if (v29 == 1)
    {
      static Logger.savedLocations.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = sub_10000389C();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "No saved locations and no current location -- moving view back to location list", v32, 2u);
      }

      (*(v42 + 8))(v22, v17);
      sub_100040690();
      v33 = static OS_dispatch_queue.main.getter();
      v35 = *(v3 + 48);
      v34 = *(v3 + 56);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v34;
      v49 = sub_10033FEDC;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1000742F0;
      v48 = &unk_100C4F318;
      v37 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000672DC(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680);
      sub_1000743E8();
      v38 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v41 + 8))(v11, v38);
      (*(v43 + 8))(v16, v44);
    }
  }

LABEL_3:
  *(v3 + 184) = 1;
  return sub_1000D7EE0(a2);
}

uint64_t sub_10033FDC4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MainAction();
  __chkstk_darwin(v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_10004F034(v4, v6, a1);
  sub_1000180EC(v6, &unk_100CD81B0);
  return sub_10033FF44(v4, type metadata accessor for MainAction);
}

uint64_t sub_10033FEE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10033FF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10033FF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6650);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_10033FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA6650);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_100340054(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v97 = a2;
  type metadata accessor for Location();
  sub_1000037C4();
  v94 = v3;
  v95 = v2;
  __chkstk_darwin(v2);
  sub_100003C38();
  v86 = (v4 - v5);
  __chkstk_darwin(v6);
  v87 = &v84 - v7;
  type metadata accessor for DetailCondition();
  sub_1000037C4();
  v92 = v9;
  v93 = v8;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v85 = (v11 - v10);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v90 = v13;
  v91 = v12;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v84 = (v15 - v14);
  type metadata accessor for URL();
  sub_1000037C4();
  v88 = v17;
  v89 = v16;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = (v19 - v18);
  type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100003C38();
  v24 = (v22 - v23);
  __chkstk_darwin(v25);
  v27 = &v84 - v26;
  __chkstk_darwin(v28);
  v30 = &v84 - v29;
  __chkstk_darwin(v31);
  v33 = &v84 - v32;
  __chkstk_darwin(v34);
  v36 = &v84 - v35;
  v37 = sub_10022C350(&qword_100CAE290);
  __chkstk_darwin(v37 - 8);
  v39 = &v84 - v38;
  v41 = &v84 + *(v40 + 56) - v38;
  sub_100340A74(v96, &v84 - v38, type metadata accessor for LocationComponentAction);
  sub_100340A74(v97, v41, type metadata accessor for LocationComponentAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = sub_10001E878();
      sub_100340A74(v72, v33, v73);
      if (sub_100014300() == 1)
      {
        v75 = v90;
        v74 = v91;
        v76 = v84;
        (*(v90 + 32))(v84, v41, v91);
        v71 = static WeatherMapOverlayKind.== infix(_:_:)();
        v77 = *(v75 + 8);
        v77(v76, v74);
        v77(v33, v74);
        goto LABEL_32;
      }

      (*(v90 + 8))(v33, v91);
      goto LABEL_26;
    case 2u:
      v59 = sub_10001E878();
      sub_100340A74(v59, v30, v60);
      v61 = *(sub_10022C350(&qword_100CA6690) + 48);
      v45 = v30[v61];
      if (sub_100014300() != 2)
      {
        (*(v92 + 8))(v30, v93);
        goto LABEL_26;
      }

      v62 = v41[v61];
      v64 = v92;
      v63 = v93;
      v65 = v85;
      (*(v92 + 32))(v85, v41, v93);
      v66 = static DetailCondition.== infix(_:_:)();
      v67 = *(v64 + 8);
      v67(v65, v63);
      v67(v30, v63);
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_9;
    case 3u:
      v69 = sub_10001E878();
      sub_100340A74(v69, v27, v70);
      if (sub_100014300() != 3)
      {
        goto LABEL_26;
      }

      v68 = *v27 ^ *v41;
      goto LABEL_12;
    case 4u:
      v46 = sub_10001E878();
      sub_100340A74(v46, v24, v47);
      v48 = *(sub_10022C350(&qword_100CA6688) + 48);
      if (sub_100014300() != 4)
      {
        (*(v94 + 8))(&v24[v48], v95);
        goto LABEL_26;
      }

      v49 = *v24;
      v50 = *v41;
      v52 = v94;
      v51 = v95;
      v53 = *(v94 + 32);
      v54 = &v24[v48];
      v55 = v87;
      v53(v87, v54, v95);
      v56 = &v41[v48];
      v57 = v86;
      v53(v86, v56, v51);
      if (v49 != v50)
      {
        v58 = *(v52 + 8);
        v58(v57, v51);
        v58(v55, v51);
        goto LABEL_30;
      }

      v71 = static Location.== infix(_:_:)();
      v83 = *(v52 + 8);
      v83(v57, v51);
      v83(v55, v51);
LABEL_32:
      sub_100340A18(v39);
      return v71 & 1;
    case 5u:
      if (sub_100014300() != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 6u:
      if (sub_100014300() != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 7u:
      if (sub_100014300() != 7)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 8u:
      if (sub_100014300() != 8)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_100340A18(v39);
      v71 = 1;
      return v71 & 1;
    default:
      v42 = sub_10001E878();
      sub_100340A74(v42, v36, v43);
      v44 = *(sub_10022C350(&qword_100CA6680) + 48);
      v45 = v36[v44];
      if (sub_100014300())
      {
        (*(v88 + 8))(v36, v89);
LABEL_26:
        sub_1003409B0(v39);
        goto LABEL_27;
      }

      v62 = v41[v44];
      v80 = v88;
      v79 = v89;
      (*(v88 + 32))(v20, v41, v89);
      v81 = static URL.== infix(_:_:)();
      v82 = *(v80 + 8);
      v82(v20, v79);
      v82(v36, v79);
      if ((v81 & 1) == 0)
      {
LABEL_30:
        sub_100340A18(v39);
LABEL_27:
        v71 = 0;
        return v71 & 1;
      }

LABEL_9:
      v68 = v45 ^ v62;
LABEL_12:
      sub_100340A18(v39);
      v71 = v68 ^ 1;
      return v71 & 1;
  }
}

uint64_t sub_100340760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10022C350(&qword_100CAE298);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v18 = &v27 + *(v17 + 56) - v15;
  sub_100340A74(a1, &v27 - v15, type metadata accessor for LocationFooterAction);
  sub_100340A74(a2, v18, type metadata accessor for LocationFooterAction);
  v19 = *(sub_10022C350(&qword_100CA6650) + 48);
  v20 = *(v6 + 32);
  v20(v13, &v16[v19], v4);
  v20(v10, &v18[v19], v4);
  LOBYTE(v19) = static Location.== infix(_:_:)();
  v21 = type metadata accessor for Location();
  sub_1000037E8();
  v23 = *(v22 + 8);
  v23(v18, v21);
  v23(v16, v21);
  if (v19)
  {
    v24 = static LocationOfInterest.== infix(_:_:)();
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v13, v4);
  return v24 & 1;
}

uint64_t sub_1003409B0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100340A18(uint64_t a1)
{
  v2 = type metadata accessor for LocationComponentAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100340A74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100340AD4()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2830 != -1)
  {
    swift_once();
  }

  v0 = SettingReader.isEnabled(_:with:)();

  return v0 & 1;
}

uint64_t getEnumTagSinglePayload for Map(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Map(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100340BAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100340BC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_100340BF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 185) = a4;
  *(v4 + 200) = a2;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for WeatherMapPerformanceTestConditions();
  *(v4 + 216) = v5;
  sub_100003AE8(v5);
  *(v4 + 224) = v6;
  *(v4 + 232) = swift_task_alloc();
  v7 = type metadata accessor for Location();
  *(v4 + 240) = v7;
  sub_100003AE8(v7);
  *(v4 + 248) = v8;
  *(v4 + 256) = swift_task_alloc();
  v9 = type metadata accessor for SavedLocation();
  *(v4 + 264) = v9;
  sub_100003AE8(v9);
  *(v4 + 272) = v10;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  sub_10022C350(&qword_100CA65D8);
  *(v4 + 296) = swift_task_alloc();
  sub_10022C350(&qword_100CAE2A0);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 336) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100340E34, v12, v11);
}

uint64_t sub_100340E34()
{
  v61 = v0;

  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 185);
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v60 = v8;
    *v7 = 136315138;
    *(v0 + 168) = v6;
    *(v0 + 176) = v5;
    *(v0 + 184) = v4 & 1;
    v9 = String.init<A>(describing:)();
    v11 = sub_100078694(v9, v10, &v60);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Map instruction: %s", v7, 0xCu);
    sub_100006F14(v8);
    sub_100003884();
    sub_100003884();
  }

  v12 = *(v0 + 320);
  v13 = *(v0 + 216);
  CurrentValueSubject.value.getter();
  v14 = sub_100024D10(v12, 1, v13);
  v15 = *(v0 + 320);
  if (v14 == 1)
  {
    v16 = *(v0 + 216);
    sub_10001B350(*(v0 + 296), 1, 1, *(v0 + 240));
    WeatherMapPerformanceTestConditions.init(location:zoomLevel:)();
    if (sub_100024D10(v15, 1, v16) != 1)
    {
      sub_10003FDF4(*(v0 + 320), &qword_100CAE2A0);
    }
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 328), *(v0 + 320), *(v0 + 216));
  }

  v17 = *(v0 + 185);
  sub_10001B350(*(v0 + 328), 0, 1, *(v0 + 216));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  if ((v17 & 1) == 0)
  {
    if (v20)
    {
      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v26;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Set map location and zoomLevel. index=%ld, zoomLevel=%f", v27, 0x16u);
      sub_100003884();
    }

    v28 = *(v0 + 200);

    v29 = *(sub_10000FC90() + 16);

    if (v29 <= v28)
    {
      sub_1003174D4(*(v0 + 192), v0 + 16);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 200);
        v43 = swift_slowAlloc();
        *v43 = 134218240;
        *(v43 + 4) = v42;
        *(v43 + 12) = 2048;
        sub_1000161C0((v0 + 64), *(v0 + 88));
        v44 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

        sub_100317530(v0 + 16);
        *(v43 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Cannot select location. index=%ld, count=%ld", v43, 0x16u);
        sub_100003884();
      }

      else
      {
        sub_100317530(v0 + 16);
      }

      goto LABEL_27;
    }

    v30 = *(v0 + 200);
    result = sub_10000FC90();
    if (v30 < 0)
    {
      __break(1u);
    }

    else
    {
      v32 = *(v0 + 200);
      if (*(result + 16) > v32)
      {
        v34 = *(v0 + 280);
        v33 = *(v0 + 288);
        sub_1001A30C4(result + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)) + *(*(v0 + 272) + 72) * v32, v33);

        sub_1001A30C4(v33, v34);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1002AB524(*(v0 + 280));
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = *(v0 + 200);
            v38 = swift_slowAlloc();
            *v38 = 134217984;
            *(v38 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v35, v36, "Selected location was pending reverse geocode. index=%ld", v38, 0xCu);
            sub_100003884();
          }

          v39 = *(v0 + 288);

          sub_1002AB524(v39);
          goto LABEL_27;
        }

        v46 = *(v0 + 328);
        v47 = *(v0 + 216);
        (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 280), *(v0 + 240));
        v48 = 1;
        if (!sub_100024D10(v46, 1, v47))
        {
          v49 = *(v0 + 296);
          v51 = *(v0 + 248);
          v50 = *(v0 + 256);
          v53 = *(v0 + 232);
          v52 = *(v0 + 240);
          v54 = *(v0 + 216);
          v55 = *(v0 + 224);
          (*(v55 + 16))(v53, *(v0 + 328), v54);
          (*(v51 + 16))(v49, v50, v52);
          sub_10001B350(v49, 0, 1, v52);
          WeatherMapPerformanceTestConditions.with(location:zoomLevel:)();
          sub_10003FDF4(v49, &qword_100CA65D8);
          (*(v55 + 8))(v53, v54);
          v48 = 0;
        }

        v56 = *(v0 + 328);
        v57 = *(v0 + 312);
        v58 = *(v0 + 288);
        v59 = *(v0 + 216);
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
        sub_1002AB524(v58);
        sub_10001B350(v57, v48, 1, v59);
        sub_100341638(v57, v56);
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Reset map conditions.", v21, 2u);
    sub_100003884();
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 216);

  sub_10003FDF4(v22, &qword_100CAE2A0);
  sub_10001B350(v22, 1, 1, v23);
LABEL_13:
  v24 = *(v0 + 304);
  sub_1003416A8(*(v0 + 328), v24);
  sub_1007DAC54(v24);
  sub_10003FDF4(v24, &qword_100CAE2A0);
LABEL_27:
  sub_10003FDF4(*(v0 + 328), &qword_100CAE2A0);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100341588(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000926F8;

  return sub_100340BF8(a1, v4, v5, v6);
}

uint64_t sub_100341638(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003416A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100341718(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAE2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100341780()
{
  result = qword_100CAE2B8;
  if (!qword_100CAE2B8)
  {
    type metadata accessor for SessionEndData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE2B8);
  }

  return result;
}

uint64_t SessionScenePhaseObserver.deinit()
{

  sub_100006F14(v0 + 24);
  sub_100006F14(v0 + 64);
  return v0;
}

uint64_t SessionScenePhaseObserver.__deallocating_deinit()
{
  SessionScenePhaseObserver.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_10034183C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C431B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100341888(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100341940@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034183C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100341970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100341888(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for NotificationAuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationViewDescription.NotableCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100341B10()
{
  result = qword_100CAE370;
  if (!qword_100CAE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE370);
  }

  return result;
}

uint64_t sub_100341B64(uint64_t a1)
{
  v2 = sub_100341C68();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_100341BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100341C68();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_100341C14(uint64_t a1)
{
  v2 = sub_100341C68();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

unint64_t sub_100341C68()
{
  result = qword_100CAE378;
  if (!qword_100CAE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE378);
  }

  return result;
}

uint64_t sub_100341CC0()
{
  result = static Solarium.isEnabled.getter();
  v1 = 20.0;
  if (result)
  {
    v1 = 18.0;
  }

  qword_100D8FB60 = *&v1;
  return result;
}

uint64_t sub_100341CF0()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  sub_100007074(v0, qword_100D8FB68);
  v1 = sub_10000703C(v0, qword_100D8FB68);
  v2 = enum case for RoundedCornerStyle.continuous(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100341DA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000022 && 0x8000000100AC0EF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100341EBC(char a1)
{
  if (!a1)
  {
    return 0x7470697263736564;
  }

  if (a1 == 1)
  {
    return 0x79726F6765746163;
  }

  return 0xD000000000000022;
}

uint64_t sub_100341F20()
{
  if ((static WeatherDescription.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  sub_100005824(*(v0 + 20));
  v3 = v3 && v1 == v2;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_100005824(*(v0 + 24));
  if (v3 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100341FBC(void *a1)
{
  v3 = sub_10022C350(&qword_100CAE430);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003425D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for WeatherDescription();
  sub_1003426E8(&qword_100CAE438);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for UVIndexComponentPreprocessedDataModel();
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10034218C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v33 = v5;
  __chkstk_darwin(v6);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CAE418);
  sub_1000037C4();
  v32 = v8;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003425D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v12;
  v30 = v14;
  v38 = 0;
  sub_1003426E8(&qword_100CAE428);
  v18 = v34;
  v17 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  (*(v16 + 8))(v11, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_100342628(v25, v31);
  sub_100006F14(a1);
  return sub_10034268C(v25);
}

uint64_t sub_100342500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100341DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100342528(uint64_t a1)
{
  v2 = sub_1003425D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100342564(uint64_t a1)
{
  v2 = sub_1003425D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003425D4()
{
  result = qword_100CAE420;
  if (!qword_100CAE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE420);
  }

  return result;
}

uint64_t sub_100342628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034268C(uint64_t a1)
{
  v2 = type metadata accessor for UVIndexComponentPreprocessedDataModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003426E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherDescription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndexComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10034280C()
{
  result = qword_100CAE440;
  if (!qword_100CAE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE440);
  }

  return result;
}

unint64_t sub_100342864()
{
  result = qword_100CAE448;
  if (!qword_100CAE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE448);
  }

  return result;
}

unint64_t sub_1003428BC()
{
  result = qword_100CAE450;
  if (!qword_100CAE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE450);
  }

  return result;
}

uint64_t sub_100342910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAE4F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v4 = sub_10002D7F8(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for MessageCoverInteractor();
    v17[3] = v9;
    v17[4] = &off_100C5D680;
    v17[0] = v8;
    v10 = type metadata accessor for MessageCoverModule();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_100C5D680;
    v11[2] = v16;
    sub_100006F14(v17);
    result = sub_100006F14(v18);
    a2[3] = v10;
    a2[4] = &off_100C75090;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100342B34()
{
  sub_10022C350(&qword_100CAE4F0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100342BA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MessageCoverInteractor();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C5D680;
  *a1 = result;
  return result;
}

uint64_t sub_100342BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

BOOL sub_100342C88()
{
  v1 = type metadata accessor for AppStoreReviewConfiguration();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(v0 + 2, v0[5]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.appStoreReview.getter();
  (*(v9 + 8))(v12, v7);
  AppStoreReviewConfiguration.reviewPromptSamplingRate.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v1);
  v15 = v14;
  sub_1000161C0(v0 + 7, v0[10]);
  v16 = PrivacySamplerType.canRecord(samplingRate:)(v15);
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90A00);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67240448;
    *(v20 + 4) = v16;
    *(v20 + 8) = 2050;
    *(v20 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v18, v19, "App Store Review Privacy Sampler evinced result %{BOOL,public}d for sampling rate : %{public}f", v20, 0x12u);
  }

  return v16;
}

uint64_t type metadata accessor for PrecipitationAveragesDetailInput()
{
  result = qword_100CAE698;
  if (!qword_100CAE698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100342F94()
{
  type metadata accessor for PrecipitationAveragesHeroChartInput();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MonthlyAveragesChartInput();
    if (v1 <= 0x3F)
    {
      sub_1002F1934();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NewsDataModel();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Calendar();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Location();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100343098(uint64_t a1, uint64_t a2)
{
  if (!sub_10038BFE4(a1, a2))
  {
    goto LABEL_13;
  }

  v4 = type metadata accessor for PrecipitationAveragesDetailInput();
  sub_100003C48(v4[5]);
  if ((sub_1008B4E08() & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = v4[6];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    sub_1009EE7CC();
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  v9 = sub_100003C48(v4[7]);
  if ((sub_1009D82EC(v9, v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[8]);
  if ((static Calendar.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100003C48(v4[10]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = (a1 + v4[11]);
  v12 = v11[2];
  v17[1] = v11[1];
  v17[2] = v12;
  v17[0] = *v11;
  v13 = (a2 + v4[11]);
  v14 = v13[2];
  v18[1] = v13[1];
  v18[2] = v14;
  v18[0] = *v13;
  v15 = sub_1000B8A2C(v17, v18);
  return v15 & 1;
}

id sub_1003431C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v183 = a4;
  v189 = a2;
  v197 = a5;
  type metadata accessor for Location();
  sub_1000037C4();
  v195 = v8;
  v196 = v7;
  __chkstk_darwin(v7);
  v187 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v182 = &v163 - v11;
  sub_1000038CC();
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v185 = v13;
  v186 = v12;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v184 = v14;
  sub_1000038CC();
  v175 = type metadata accessor for WeatherDataModel();
  sub_1000037C4();
  v174 = v15;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v173 = v17;
  v18 = sub_10022C350(&qword_100CA3898);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v163 - v20;
  v22 = sub_10022C350(&qword_100CABD00);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v176 = &v163 - v24;
  sub_1000038CC();
  v177 = type metadata accessor for HistoricalFacts();
  sub_1000037C4();
  v171 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v170 = v27;
  sub_1000038CC();
  v28 = type metadata accessor for AppConfigurationState();
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  v31 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Locale();
  sub_1000037C4();
  v179 = v32;
  __chkstk_darwin(v33);
  sub_1000038E4();
  v178 = v34;
  sub_1000038CC();
  v180 = type metadata accessor for MonthlyAveragesChartInput();
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v192 = v36;
  sub_1000038CC();
  v37 = type metadata accessor for TimeState();
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_1000038E4();
  v193 = v39;
  sub_1000038CC();
  v40 = type metadata accessor for PrecipitationAveragesHeroChartInput();
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000038E4();
  v191 = v42;
  sub_1000038CC();
  v43 = type metadata accessor for NewsDataModel();
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v190 = v45;
  v46 = sub_1000038CC();
  v47 = type metadata accessor for WeatherData(v46);
  sub_1000037E8();
  __chkstk_darwin(v48);
  sub_1000038E4();
  v188 = v49;
  v50 = sub_10022C350(&qword_100CA37B0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  v53 = &v163 - v52;
  v54 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v55);
  v57 = &v163 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v163 - v59;
  v194 = a1;
  v61 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v198 = a3;
  v62 = Location.id.getter();
  sub_1000864C0(v62, v63, v61);

  if (sub_100024D10(v53, 1, v54) == 1)
  {
    sub_1000180EC(v53, &qword_100CA37B0);
    if (qword_100CA2728 != -1)
    {
      sub_100022914();
    }

    v64 = type metadata accessor for Logger();
    sub_10000703C(v64, qword_100D90BD0);
    v66 = v195;
    v65 = v196;
    v67 = v187;
    (*(v195 + 16))(v187, v198, v196);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v199 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      sub_1002F33A8();
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v66 + 8))(v67, v65);
      v75 = sub_100078694(v72, v74, &v199);

      *(v70 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v68, v69, "Failed to create averages detail input due to missing weather data; location=%{private,mask.hash}s", v70, 0x16u);
      sub_100006F14(v71);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      (*(v66 + 8))(v67, v65);
    }

LABEL_19:
    v128 = type metadata accessor for PrecipitationAveragesDetailInput();
    return sub_10001B350(v197, 1, 1, v128);
  }

  sub_100106FE4(v53, v60);
  sub_1001AF660(v60, v57);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001E894();
    sub_100105F38(v57, v112);
    if (qword_100CA2728 != -1)
    {
      sub_100022914();
    }

    v113 = type metadata accessor for Logger();
    sub_10000703C(v113, qword_100D90BD0);
    v115 = v195;
    v114 = v196;
    v116 = v182;
    (*(v195 + 16))(v182, v198, v196);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v60;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v199 = v121;
      *v120 = 141558275;
      *(v120 + 4) = 1752392040;
      *(v120 + 12) = 2081;
      sub_1002F33A8();
      v122 = dispatch thunk of CustomStringConvertible.description.getter();
      v124 = v123;
      (*(v115 + 8))(v116, v114);
      v125 = sub_100078694(v122, v124, &v199);

      *(v120 + 14) = v125;
      _os_log_impl(&_mh_execute_header, v117, v118, "Failed to create averages detail input due to missing weather data; location=%{private,mask.hash}s", v120, 0x16u);
      sub_100006F14(v121);
      sub_100003884();
      sub_100003884();

      sub_10001E894();
      v127 = v119;
    }

    else
    {

      (*(v115 + 8))(v116, v114);
      sub_10001E894();
      v127 = v60;
    }

    sub_100105F38(v127, v126);
    goto LABEL_19;
  }

  v168 = v21;
  v169 = v60;
  v76 = sub_10022C350(&qword_100CA75D8);
  v77 = *(v76 + 48);
  v78 = *(v76 + 64);
  sub_100106FE4(v57, v188);
  sub_100106FE4(&v57[v78], v190);
  sub_100105F38(&v57[v77], type metadata accessor for PreprocessedWeatherData);
  v187 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_time;
  sub_1000081E4();
  v166 = v79;
  v80 = v193;
  v82 = v194;
  sub_1001AF660(v194 + v81, v193);
  v83 = v47;
  v84 = type metadata accessor for Date();
  sub_1000037E8();
  v165 = *(v85 + 32);
  v167 = v31;
  v182 = (v85 + 32);
  v86 = v191;
  v165(v191, v80, v84);
  v87 = v40[5];
  type metadata accessor for WeatherStatisticsModel();
  sub_1000037E8();
  (*(v88 + 16))(v86 + v87, v189);
  v164 = v83;
  WeatherDataModel.dailyForecast.getter();
  Location.timeZone.getter();
  v89 = v82 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v90 = type metadata accessor for EnvironmentState();
  v91 = v179;
  v92 = *(v179 + 16);
  v93 = v181;
  v92(v86 + v40[8], v89 + *(v90 + 32), v181);
  sub_1002ED164(v183, v86 + v40[9]);
  v94 = v178;
  v92(v178, v89 + *(v90 + 32), v93);
  v95 = v192;
  Locale.calendar.getter();
  (*(v91 + 8))(v94, v93);
  v97 = v193;
  v96 = v194;
  sub_1001AF660(&v187[v194], v193);
  v98 = v180;
  v99 = v95 + *(v180 + 20);
  v183 = v84;
  v100 = v84;
  v101 = v165;
  v165(v99, v97, v100);
  v102 = v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration;
  v103 = v167;
  sub_1001AF660(v102, v167);
  AppConfiguration.temperatureScale.getter();
  type metadata accessor for AppConfiguration();
  sub_1000037E8();
  (*(v104 + 8))(v103);
  WeatherStatisticsModel.monthlyTemperatureStatistics.getter();
  WeatherStatisticsModel.monthlyPrecipitationStatistics.getter();
  v179 = v90;
  v105 = *(v90 + 32);
  v106 = v95 + *(v98 + 36);
  v189 = v89;
  v92(v106, v89 + v105, v93);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24D8 != -1)
  {
    swift_once();
  }

  v107 = SettingReader.isEnabled(_:with:)();

  v108 = v195;
  v109 = v168;
  if (v107)
  {
    sub_1001A0D3C();
    v110 = v164;
    if (sub_100024D10(v109, 1, v164) == 1)
    {
      sub_1000180EC(v109, &qword_100CA3898);
      v111 = v176;
      sub_10001B350(v176, 1, 1, v177);
    }

    else
    {
      v130 = v174;
      v131 = v109 + *(v110 + 24);
      v132 = v173;
      v133 = v175;
      (*(v174 + 16))(v173, v131, v175);
      sub_100014318();
      sub_100105F38(v109, v134);
      v111 = v176;
      WeatherDataModel.historicalFacts.getter();
      (*(v130 + 8))(v132, v133);
      v135 = v177;
      if (sub_100024D10(v111, 1, v177) != 1)
      {
        v161 = v171;
        v162 = v170;
        (*(v171 + 32))(v170, v111, v135);
        sub_1000161C0((v172 + 80), *(v172 + 104));
        v136 = sub_1006283E8(v162);
        (*(v161 + 8))(v162, v135);
        goto LABEL_23;
      }
    }

    sub_1000180EC(v111, &qword_100CABD00);
  }

  v136 = 0;
LABEL_23:
  v137 = v191;
  v138 = v197;
  sub_1001AF660(v191, v197);
  v139 = type metadata accessor for PrecipitationAveragesDetailInput();
  v140 = v192;
  sub_1001AF660(v192, v138 + v139[5]);
  v141 = v190;
  sub_1001AF660(v190, v138 + v139[7]);
  v142 = v184;
  v143 = v198;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v185 + 8))(v142, v186);
  sub_100105F38(v140, type metadata accessor for MonthlyAveragesChartInput);
  sub_100105F38(v137, type metadata accessor for PrecipitationAveragesHeroChartInput);
  sub_100105F38(v141, type metadata accessor for NewsDataModel);
  sub_100014318();
  sub_100105F38(v188, v144);
  sub_10001E894();
  sub_100105F38(v169, v145);
  sub_1000081E4();
  v146 = v193;
  sub_1001AF660(&v187[v194], v193);
  v101(v138 + v139[9], v146, v183);
  (*(v108 + 16))(v138 + v139[10], v143, v196);
  v147 = v189 + *(v179 + 72);
  v148 = *v147;
  v149 = *(v147 + 8);
  v150 = *(v147 + 16);
  v151 = *(v147 + 24);
  v153 = *(v147 + 40);
  v198 = *(v147 + 32);
  v152 = v198;
  *(v138 + v139[6]) = v136;
  v154 = (v138 + v139[11]);
  *v154 = v148;
  v154[1] = v149;
  v154[2] = v150;
  v154[3] = v151;
  v154[4] = v152;
  v154[5] = v153;
  sub_10001B350(v138, 0, 1, v139);
  v155 = v153;
  v156 = v148;
  v157 = v149;
  v158 = v150;
  v159 = v151;
  v160 = v198;

  return v160;
}

uint64_t sub_100344244(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[48])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100344280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1003442FC(uint64_t a1)
{
  v229 = *v1;
  v3 = sub_10022C350(&qword_100CA7000);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  v231 = &v216 - v5;
  sub_1000038CC();
  v6 = type metadata accessor for CurrentWeather();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v230 = v9 - v8;
  v10 = sub_10022C350(&qword_100CABD10);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  v222 = &v216 - v12;
  sub_1000038CC();
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v242 = v16 - v15;
  sub_1000038CC();
  type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v238 = v18;
  v239 = v17;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v237 = v20 - v19;
  v21 = sub_10022C350(&qword_100CAE820);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v223 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v226 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v225 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v236 = v29;
  sub_1000038CC();
  v246 = type metadata accessor for LocationViewComponent();
  sub_1000037C4();
  v228 = v30;
  __chkstk_darwin(v31);
  sub_100003848();
  v219 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v221 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = &v216 - v36;
  __chkstk_darwin(v38);
  sub_100003878();
  v220 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v218 = v41;
  sub_1000038CC();
  v247 = type metadata accessor for PreprocessedWeatherData();
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_1000037D8();
  v45 = v44 - v43;
  v46 = type metadata accessor for WeatherData(0);
  v47 = v46 - 8;
  __chkstk_darwin(v46);
  sub_1000037D8();
  v50 = v49 - v48;
  type metadata accessor for Location();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_1000037D8();
  v56 = v55 - v54;
  v233 = v52;
  v57 = *(v52 + 16);
  v243 = v58;
  v234 = v57;
  v235 = v52 + 16;
  (v57)(v56, a1);
  v59 = type metadata accessor for LocationViewConfigurationInputs();
  sub_100014330();
  sub_100111344(a1 + v60, v50, v61);
  sub_10000E92C();
  v253 = v45;
  sub_100111344(a1 + v62, v45, v63);
  v64 = v59[9];
  LODWORD(v244) = *(a1 + v59[8]);
  v241 = *(a1 + v64);
  v65 = v59[10];
  v66 = v59[11];
  v67 = v50;
  v68 = v246;
  LODWORD(v240) = *(a1 + v65);
  v227 = a1;
  v224 = *(a1 + v66);
  type metadata accessor for LocationViewConfigurationBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyArrayStorage;
  v232 = inited + 16;
  v251 = inited;
  *(inited + 24) = &_swiftEmptySetSingleton;
  v248 = *(v47 + 32);
  v70 = WeatherDataModel.weatherAlerts.getter();
  v252 = v67;
  v249 = v56;
  v245 = v37;
  if (v70)
  {
    v217 = HourPrecipitationComponentParameters;
    Array<A>.filteredEvents.getter();

    sub_100020188();
    v72 = v237;
    v71 = v238;
    v73 = v239;
    (*(v238 + 104))(v237, enum case for WeatherAlert.Prominence.high(_:), v239);
    v74 = v236;
    sub_1008BB370(v236);

    (*(v71 + 8))(v72, v73);
    sub_1000038B4(v74, 1, v246);
    if (v75)
    {
      sub_1000180EC(v236, &qword_100CAE820);
    }

    else
    {
      sub_10001E8AC();
      v76 = v218;
      sub_1001A0FF8(v236, v218, v77);
      sub_1001AAF0C(v76);
      sub_10001BE50();
      sub_1001AEE5C(v76, v78);
    }

    v37 = v245;
    v68 = v246;
    v67 = v252;
    v56 = v249;
    HourPrecipitationComponentParameters = v217;
  }

  v79 = v242;
  v234(v242, v56, v243);
  sub_100014330();
  sub_100111344(v67, v79 + v80, v81);
  *(v79 + *(HourPrecipitationComponentParameters + 24)) = _swiftEmptyArrayStorage;
  *(v79 + *(HourPrecipitationComponentParameters + 28)) = v240;
  sub_10002FE28();
  v82 = v225;
  sub_1008BA700(v79, v225);
  sub_1000038B4(v82, 1, v68);
  v83 = v68;
  v84 = v226;
  if (v75)
  {
    sub_1000180EC(v82, &qword_100CAE820);
    v89 = v251;
    v85 = v224;
  }

  else
  {
    sub_10001E8AC();
    v86 = v82;
    v87 = v220;
    sub_1001A0FF8(v86, v220, v88);
    v89 = v251;
    sub_1001AAF0C(v87);
    v85 = v224;
    if (v224 & 1) != 0 || (v244)
    {
      sub_10001BE50();
      v91 = v87;
    }

    else
    {
      v234(v37, v249, v243);
      sub_100011498();
      swift_storeEnumTagMultiPayload();
      sub_100041920();
      sub_1001AEE5C(v37, type metadata accessor for LocationViewComponent);
      v91 = v87;
      v90 = type metadata accessor for LocationViewComponent;
    }

    sub_1001AEE5C(v91, v90);
  }

  v92 = sub_10051A880();
  v93 = v92;
  v94 = v85 ^ 1 | v244;
  if ((v94 & 1) == 0 && !v92)
  {
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v37, v95);
  }

  sub_1000161C0((v250 + 16), *(v250 + 40));
  sub_1008BA000(v67, _swiftEmptyArrayStorage, v84);
  sub_1000038B4(v84, 1, v83);
  if (v75)
  {
    sub_1000180EC(v84, &qword_100CAE820);
  }

  else
  {
    sub_10001E8AC();
    v96 = v84;
    v97 = v221;
    sub_1001A0FF8(v96, v221, v98);
    sub_1001AAF0C(v97);
    sub_10001BE50();
    sub_1001AEE5C(v97, v99);
  }

  if (!(v94 & 1 | !v93))
  {
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v37, v100);
  }

  v101 = v253;
  sub_1003456E0(v253, 1, v240, v37);
  sub_100041920();
  sub_1001AEE5C(v37, type metadata accessor for LocationViewComponent);
  WeatherDataModel.currentWeather.getter();
  v102 = *(v101 + v247[5]);
  *&v37[*(type metadata accessor for DailyForecastComponent() + 20)] = v102;
  sub_100011498();
  swift_storeEnumTagMultiPayload();

  sub_100041920();
  sub_1001AEE5C(v37, type metadata accessor for LocationViewComponent);
  if (!v241)
  {
    *v37 = 0;
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v37, v103);
  }

  if ((v244 & 1) == 0)
  {
    v104 = enum case for WeatherMapOverlayKind.airQuality(_:);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    (*(v105 + 104))(v37, v104);
    type metadata accessor for MapComponent();
    sub_100014330();
    sub_100111344(v67, &v37[v106], v107);
    sub_100011498();
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v37, v108);
  }

  if (WeatherDataModel.weatherAlerts.getter())
  {
    v109 = v83;
    sub_1000161C0((v250 + 16), *(v250 + 40));
    v111 = v237;
    v110 = v238;
    v112 = v239;
    (*(v238 + 104))(v237, enum case for WeatherAlert.Prominence.low(_:), v239);
    v113 = v223;
    sub_1008BB370(v223);

    (*(v110 + 8))(v111, v112);
    sub_1000038B4(v113, 1, v109);
    if (v75)
    {
      sub_1000180EC(v113, &qword_100CAE820);
      v89 = v251;
    }

    else
    {
      sub_10001E8AC();
      v114 = v113;
      v115 = v219;
      sub_1001A0FF8(v114, v219, v116);
      v89 = v251;
      sub_1001AAF0C(v115);
      sub_10001BE50();
      sub_1001AEE5C(v115, v117);
    }
  }

  if (qword_100CA29D0 != -1)
  {
    swift_once();
  }

  sub_100346F4C();
  Configurable.setting<A>(_:)();
  if (v256[0] == 1)
  {
    goto LABEL_33;
  }

  v164 = v222;
  WeatherDataModel.historicalComparisons.getter();
  v165 = type metadata accessor for HistoricalComparisons();
  sub_1000038B4(v164, 1, v165);
  if (v75)
  {
    sub_1000180EC(v164, &qword_100CABD10);
  }

  else
  {
    v166 = HistoricalComparisons.hasDeviationsFromTrend.getter();
    (*(*(v165 - 8) + 8))(v164, v165);
    if (v166)
    {
LABEL_33:
      v118 = sub_10022C350(&qword_100CAE830);
      v119 = *(v228 + 72);
      v239 = *(v228 + 80);
      *&v240 = v118;
      v237 = ((v239 + 32) & ~v239) + 2 * v119;
      v238 = v119;
      v120 = v119;
      v121 = (v239 + 32) & ~v239;
      v250 = v121;
      v122 = swift_allocObject();
      v244 = xmmword_100A2D320;
      *(v122 + 16) = xmmword_100A2D320;
      WeatherDataModel.historicalComparisons.getter();
      swift_storeEnumTagMultiPayload();
      v123 = v247;
      v124 = sub_10000C9D4(v247[6]);
      v126 = v125;
      sub_100111344(v124, v122 + v121 + v120, v127);
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v122);
      swift_setDeallocating();
      sub_1001AEBE4();
      v128 = v245;
      WeatherDataModel.currentWeather.getter();
      v129 = v123[13];
      memcpy(v256, (v126 + v129), sizeof(v256));
      v130 = type metadata accessor for WindComponent();
      memcpy(&v128[*(v130 + 20)], (v126 + v129), 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      sub_1001A86C8(v256, v255);
      sub_100041920();
      sub_10001BE50();
      v236 = v131;
      sub_1001AEE5C(v128, v132);
      v133 = swift_allocObject();
      sub_1000213C0(v133);
      sub_10003B964();
      v134 = v123[10];
      type metadata accessor for UVIndexComponent();
      sub_10002C60C();
      sub_100111344(v126 + v134, v89 + v135, v136);
      WeatherDataModel.dailyForecast.getter();
      WeatherDataModel.hourlyForecast.getter();
      swift_storeEnumTagMultiPayload();
      WeatherDataModel.currentWeather.getter();
      WeatherDataModel.dailyForecast.getter();
      v137 = v238;
      SunriseSunsetModel.init(currentWeather:dailyForecast:)();
      swift_storeEnumTagMultiPayload();
      sub_1001AB364(v133);
      swift_setDeallocating();
      sub_1001AEBE4();
      v138 = swift_allocObject();
      sub_1000213C0(v138);
      v141 = (v139 + v140);
      v142 = v247;
      v143 = v247[9];
      v144 = v253;
      memcpy(v255, (v253 + v143), 0x80uLL);
      memcpy(v141, (v253 + v143), 0x80uLL);
      swift_storeEnumTagMultiPayload();
      v145 = &v141[v137];
      sub_1001AEF0C(v255, v254);
      WeatherDataModel.currentWeather.getter();
      v146 = (v144 + v142[11]);
      v148 = *v146;
      v147 = v146[1];
      v149 = v146[2];
      v150 = v146[3];
      v152 = v146[4];
      v151 = v146[5];
      v153 = &v145[*(type metadata accessor for VisibilityComponent() + 20)];
      *v153 = v148;
      *(v153 + 1) = v147;
      *(v153 + 2) = v149;
      *(v153 + 3) = v150;
      *(v153 + 4) = v152;
      *(v153 + 5) = v151;
      v154 = v253;
      v155 = v251;
      swift_storeEnumTagMultiPayload();

      v156 = v252;

      sub_1001AB364(v138);
      swift_setDeallocating();
      sub_1001AEBE4();
      sub_100014330();
      v157 = v245;
      sub_100111344(v156, v245, v158);
      swift_storeEnumTagMultiPayload();
      sub_1001AAF0C(v157);
      sub_1001AEE5C(v157, v236);
      v159 = swift_allocObject();
      sub_1000213C0(v159);
      v162 = v160 + v161;
      WeatherDataModel.currentWeather.getter();
      swift_storeEnumTagMultiPayload();
      v163 = v238;
      goto LABEL_39;
    }
  }

  v167 = sub_10022C350(&qword_100CAE830);
  v168 = *(v228 + 72);
  v237 = *(v228 + 80);
  v238 = v167;
  v169 = v168;
  v239 = v168;
  v250 = ((v237 + 32) & ~v237) + 2 * v168;
  v170 = (v237 + 32) & ~v237;
  *&v244 = v170;
  v171 = swift_allocObject();
  v240 = xmmword_100A2D320;
  *(v171 + 16) = xmmword_100A2D320;
  v172 = v171 + v170;
  v173 = v247;
  v174 = sub_10000C9D4(v247[6]);
  v176 = v175;
  sub_100111344(v174, v172, v177);
  swift_storeEnumTagMultiPayload();
  v178 = v172 + v169;
  WeatherDataModel.currentWeather.getter();
  v179 = v173[10];
  type metadata accessor for UVIndexComponent();
  sub_10002C60C();
  sub_100111344(v176 + v179, v178 + v180, v181);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v171);
  swift_setDeallocating();
  sub_1001AEBE4();
  v182 = v245;
  WeatherDataModel.currentWeather.getter();
  v183 = v173[13];
  memcpy(v256, (v176 + v183), sizeof(v256));
  v184 = type metadata accessor for WindComponent();
  memcpy(&v182[*(v184 + 20)], (v176 + v183), 0xE8uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v256, v255);
  sub_1001AAF0C(v182);
  sub_10001BE50();
  v236 = v185;
  sub_1001AEE5C(v182, v186);
  v187 = swift_allocObject();
  sub_10003BD58(v187);
  v190 = v188 + v189;
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v191 = v173[9];
  memcpy(v255, (v253 + v191), 0x80uLL);
  memcpy((v190 + v239), (v253 + v191), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  sub_1001AEF0C(v255, v254);
  sub_1001AB364(v187);
  swift_setDeallocating();
  sub_1001AEBE4();
  v192 = swift_allocObject();
  sub_10003BD58(v192);
  sub_10003B964();
  v193 = (v253 + v173[11]);
  v195 = *v193;
  v194 = v193[1];
  v196 = v193[2];
  v197 = v193[3];
  v199 = v193[4];
  v198 = v193[5];
  v200 = (v190 + *(type metadata accessor for VisibilityComponent() + 20));
  *v200 = v195;
  v200[1] = v194;
  v154 = v253;
  v200[2] = v196;
  v200[3] = v197;
  v200[4] = v199;
  v200[5] = v198;
  swift_storeEnumTagMultiPayload();

  v156 = v252;

  WeatherDataModel.currentWeather.getter();
  v155 = v251;
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v192);
  swift_setDeallocating();
  sub_1001AEBE4();
  sub_100014330();
  v201 = v245;
  sub_100111344(v156, v245, v202);
  swift_storeEnumTagMultiPayload();
  sub_1001AAF0C(v201);
  sub_1001AEE5C(v201, v236);
  v159 = swift_allocObject();
  sub_10003BD58(v159);
  v162 = v203 + v204;
  WeatherDataModel.historicalComparisons.getter();
  swift_storeEnumTagMultiPayload();
  v163 = v239;
LABEL_39:
  v205 = v162 + v163;
  WeatherDataModel.currentWeather.getter();
  v206 = v247[12];
  v207 = type metadata accessor for PressureComponent();
  sub_100111344(v154 + v206, v205 + *(v207 + 20), type metadata accessor for PressureComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  sub_1001AB364(v159);
  swift_setDeallocating();
  sub_1001AEBE4();
  v208 = v242;
  v209 = v249;
  if (v241 == 1)
  {
    v210 = v245;
    *v245 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100041920();
    sub_10001BE50();
    sub_1001AEE5C(v210, v211);
  }

  sub_1000081FC();
  sub_1001AEE5C(v208, v212);
  sub_10000FCCC();
  sub_1001AEE5C(v154, v213);
  sub_1001AEE5C(v156, type metadata accessor for WeatherData);
  (*(v233 + 8))(v209, v243);
  swift_beginAccess();
  v214 = *(v155 + 16);
  swift_setDeallocating();

  sub_1001AF5DC();
  swift_deallocClassInstance();
  return v214;
}

uint64_t sub_1003456E0@<X0>(uint64_t a1@<X3>, char a2@<W4>, char a3@<W6>, uint64_t a4@<X8>)
{
  type metadata accessor for WeatherData(0);
  WeatherDataModel.currentWeather.getter();
  v8 = *(type metadata accessor for PreprocessedWeatherData() + 28);
  v9 = type metadata accessor for HourlyForecastComponent();
  sub_100111344(a1 + v8, a4 + v9[5], type metadata accessor for HourlyForecastComponentPreprocessedDataModel);
  WeatherDataModel.hourlyForecast.getter();
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.weatherChanges.getter();
  *(a4 + v9[9]) = a2;
  *(a4 + v9[10]) = a3;
  type metadata accessor for LocationViewComponent();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1003457E0(uint64_t a1)
{
  HourPrecipitationComponentParameters = type metadata accessor for NextHourPrecipitationComponentParameters();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_100003848();
  v236 = v3;
  sub_10000386C();
  __chkstk_darwin(v4);
  sub_10000E70C();
  v238 = v5;
  sub_1000038CC();
  type metadata accessor for WeatherAlert.Prominence();
  sub_1000037C4();
  v245 = v7;
  v246 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v244 = v9 - v8;
  v10 = sub_10022C350(&qword_100CAE820);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  v242 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  v19 = &v223 - v18;
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v251 = v22;
  sub_1000038CC();
  v252 = type metadata accessor for LocationViewComponent();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  v237 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  v30 = &v223 - v29;
  __chkstk_darwin(v31);
  v33 = &v223 - v32;
  __chkstk_darwin(v34);
  sub_100003878();
  v235 = v35;
  sub_10000386C();
  __chkstk_darwin(v36);
  sub_100003878();
  v243 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_100003878();
  v249 = v39;
  sub_10000386C();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v239 = v43;
  sub_1000038CC();
  v44 = type metadata accessor for PreprocessedWeatherData();
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_1000037D8();
  v48 = v47 - v46;
  v49 = type metadata accessor for WeatherData(0);
  v50 = v49 - 8;
  __chkstk_darwin(v49);
  sub_1000037D8();
  v53 = (v52 - v51);
  type metadata accessor for Location();
  sub_1000037C4();
  v55 = v54;
  __chkstk_darwin(v56);
  sub_1000037D8();
  v59 = v58 - v57;
  v247 = v55;
  v60 = *(v55 + 16);
  v250 = v61;
  v240 = v60;
  v60(v58 - v57, a1);
  v62 = type metadata accessor for LocationViewConfigurationInputs();
  sub_100014330();
  sub_100111344(a1 + v63, v53, v64);
  sub_10000E92C();
  v254 = v48;
  sub_100111344(a1 + v65, v48, v66);
  v67 = *(v62 + 40);
  v248 = a1;
  v253 = *(a1 + v67);
  v68 = *(v50 + 32);
  if (WeatherDataModel.weatherAlerts.getter())
  {
    v226 = v68;
    v225 = v19;
    v223 = v30;
    v224 = v33;
    sub_100020188();
    v70 = v244;
    v69 = v245;
    v71 = v246;
    (*(v245 + 104))(v244, enum case for WeatherAlert.Prominence.high(_:), v246);
    v72 = v251;
    sub_1008BB370(v251);

    (*(v69 + 8))(v70, v71);
    v73 = v252;
    sub_1000038B4(v72, 1, v252);
    if (!v74)
    {
      sub_10001E8AC();
      sub_1001A0FF8(v251, v239, v123);
      v124 = v238;
      sub_100071C60();
      v125();
      v126 = HourPrecipitationComponentParameters;
      sub_100014330();
      v127 = sub_1000183A4();
      sub_100111344(v127, v128, v129);
      *(v124 + *(v126 + 24)) = _swiftEmptyArrayStorage;
      *(v124 + *(v126 + 28)) = v253;
      sub_10002FE28();
      v130 = v231;
      sub_1008BA700(v124, v231);
      v131 = sub_100024D10(v130, 1, v73);
      if (v131 == 1)
      {
        sub_1000180EC(v130, &qword_100CAE820);
        sub_10006A720();
        sub_100020680(_swiftEmptyArrayStorage, &v255);
        v132 = sub_10000C834();
        sub_1000038B4(v132, v133, v73);
        if (v74)
        {
          sub_1000180EC(v59, &qword_100CAE820);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v238, v134);
          sub_10000FCCC();
          sub_1001AEE5C(v130, v135);
          v136 = sub_100013680();
          v137(v136);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v138 = sub_10003C35C();
          v139(v138);
          type metadata accessor for MapComponent();
          sub_10000583C();
          v140 = sub_1000183A4();
          sub_1001A0FF8(v140, v141, v142);
          sub_100031520();
          sub_10001E8AC();
          sub_1001A0FF8(v239, v243, v143);
          type metadata accessor for LocationNoAqiSevereConfiguration._Storage(0);
          sub_100003B6C();
          sub_10000C90C();
          v95 = sub_1002C9E08(v144);
          v99 = 0x9000000000000000;
        }

        else
        {
          sub_100019454();
          v198 = v59;
          v199 = v223;
          sub_1001A0FF8(v198, v223, v200);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v238, v201);
          sub_10000FCCC();
          sub_1001AEE5C(v130, v202);
          v203 = sub_100013680();
          v204(v203);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v205 = sub_100037A18();
          v206(v205);
          type metadata accessor for MapComponent();
          sub_10000583C();
          sub_1000D3E48(v207, v208);
          sub_10002409C();
          sub_1000250CC(v199);
          sub_10003A160(v239);
          type metadata accessor for LocationElevatedAqiSevereConfiguration._Storage(0);
          sub_100003B6C();
          v209 = sub_10002462C();
          v95 = sub_1002C4940(v209);
          v99 = 0x2000000000000000;
        }
      }

      else
      {
        sub_10001E8AC();
        sub_1001A0FF8(v130, v232, v161);
        sub_10006A720();
        sub_100020680(_swiftEmptyArrayStorage, &v254);
        v162 = sub_10000C834();
        sub_1000038B4(v162, v163, v73);
        if (v74)
        {
          sub_1000180EC(v59, &qword_100CAE820);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v238, v164);
          sub_10000FCCC();
          sub_1001AEE5C(v130, v165);
          v166 = sub_100013680();
          v167(v166);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v168 = sub_10003C35C();
          v169(v168);
          type metadata accessor for MapComponent();
          sub_10000583C();
          v170 = sub_1000183A4();
          sub_1001A0FF8(v170, v171, v172);
          sub_100031520();
          sub_1001A0FF8(v239, v243, type metadata accessor for LocationViewComponent);
          sub_1001A0FF8(v232, v235, type metadata accessor for LocationViewComponent);
          type metadata accessor for LocationNoAqiSevereNhpConfiguration._Storage(0);
          v95 = sub_100003B6C();
          sub_10000C90C();
          sub_1002CB010(v173);
          sub_100036CB0();
          v99 = v174 & 0xFFFFFFFFFFFFLL | 0x4000000000000000;
        }

        else
        {
          sub_100019454();
          v210 = v59;
          v211 = v227;
          sub_1001A0FF8(v210, v227, v212);
          sub_100028264();
          sub_1000081FC();
          sub_1001AEE5C(v238, v213);
          sub_10000FCCC();
          sub_1001AEE5C(v130, v214);
          v215 = sub_100013680();
          v216(v215);
          type metadata accessor for WeatherMapOverlayKind();
          sub_100003A9C();
          v217 = sub_100037A18();
          v218(v217);
          type metadata accessor for MapComponent();
          sub_10000583C();
          sub_1000D3E48(v219, v220);
          sub_10002409C();
          sub_1000250CC(v239);
          sub_10003A160(v232);
          sub_1001A0FF8(v211, v224, v124);
          type metadata accessor for LocationSevereNhpAqiConfiguration._Storage(0);
          sub_100003B6C();
          sub_10002462C();
          sub_1002CD61C();
          v95 = v221;
          v99 = 0x6000000000000000;
        }
      }

      return v99 | v95;
    }

    sub_1000180EC(v251, &qword_100CAE820);
    v68 = v226;
  }

  sub_10002FE28();
  v75 = v242;
  sub_1008BA000(v53, _swiftEmptyArrayStorage, v242);
  v76 = v252;
  sub_1000038B4(v75, 1, v252);
  if (!v74)
  {
    sub_10001E8AC();
    v100 = v75;
    v101 = v237;
    sub_1001A0FF8(v100, v237, v102);
    v103 = WeatherDataModel.weatherAlerts.getter();
    v104 = v250;
    v105 = v59;
    v106 = v254;
    if (v103)
    {
      sub_100020188();
      v107 = v76;
      v108 = v244;
      v109 = v245;
      v110 = v246;
      (*(v245 + 104))(v244, enum case for WeatherAlert.Prominence.low(_:), v246);
      v111 = v230;
      v251 = v53;
      sub_1008BB370(v230);

      (*(v109 + 8))(v108, v110);
      v112 = sub_10000C834();
      sub_1000038B4(v112, v113, v107);
      if (!v74)
      {
        sub_100019454();
        v175 = v229;
        sub_1001A0FF8(v111, v229, v176);
        v177 = v254;
        sub_100346890(v251, v248, v105, v254, v253, 0);
        v179 = v178;
        sub_10000FCCC();
        sub_1001AEE5C(v177, v180);
        (*(v247 + 8))(v105, v250);
        type metadata accessor for WeatherMapOverlayKind();
        sub_100003A9C();
        v181 = sub_100037A18();
        v182(v181);
        type metadata accessor for MapComponent();
        sub_10000583C();
        sub_1000D3E48(v183, v184);
        sub_10002409C();
        sub_1000250CC(v175);
        sub_10003A160(v237);
        type metadata accessor for LocationElevatedAqiMinorAlertConfiguration._Storage(0);
        sub_100003B6C();
        v95 = sub_1002C3B90(v179);
        v99 = 0xC000000000000000;
        return v99 | v95;
      }

      sub_1000180EC(v111, &qword_100CAE820);
      v104 = v250;
      v53 = v251;
      v101 = v237;
      v106 = v254;
    }

    sub_100346890(v53, v248, v105, v106, v253, 0);
    sub_10000FCCC();
    sub_1001AEE5C(v106, v114);
    (*(v247 + 8))(v105, v104);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    v115 = sub_10003C35C();
    v116(v115);
    type metadata accessor for MapComponent();
    sub_10000583C();
    v117 = sub_1000183A4();
    sub_1001A0FF8(v117, v118, v119);
    sub_100031520();
    sub_10001E8AC();
    sub_1001A0FF8(v101, v243, v120);
    type metadata accessor for LocationElevatedAqiConfiguration._Storage(0);
    v95 = sub_100003B6C();
    sub_10000C90C();
    sub_1002C3484(v121);
    sub_100036CB0();
    v99 = v122 & 0xFFFFFFFFFFFFLL | 0x8000000000000000;
    return v99 | v95;
  }

  sub_1000180EC(v75, &qword_100CAE820);
  v77 = v236;
  sub_100071C60();
  v78();
  v79 = HourPrecipitationComponentParameters;
  sub_100014330();
  sub_100111344(v53, v77 + v80, v81);
  *(v77 + *(v79 + 24)) = _swiftEmptyArrayStorage;
  v82 = v253;
  *(v77 + *(v79 + 28)) = v253;
  sub_10002FE28();
  v83 = v233;
  sub_1008BA700(v77, v233);
  sub_1000038B4(v83, 1, v76);
  v84 = v59;
  if (v74)
  {
    sub_1000180EC(v83, &qword_100CAE820);
    v85 = v254;
    sub_100346890(v53, v248, v59, v254, v82, 1);
    v87 = v86;
    sub_1000081FC();
    sub_1001AEE5C(v77, v88);
    sub_10000FCCC();
    sub_1001AEE5C(v85, v89);
    (*(v247 + 8))(v84, v68);
    type metadata accessor for WeatherMapOverlayKind();
    sub_100003A9C();
    v90 = sub_10003C35C();
    v91(v90);
    type metadata accessor for MapComponent();
    sub_10000583C();
    v92 = sub_1000183A4();
    sub_1001A0FF8(v92, v93, v94);
    sub_100031520();
    type metadata accessor for LocationNoAqiConfiguration._Storage(0);
    v95 = sub_100003B6C();
    *(v95 + 16) = v87;
    sub_10001E8AC();
    sub_1001A0FF8(v85, v96 + v97, v98);
    v99 = 0xA000000000000000;
  }

  else
  {
    sub_10001E8AC();
    sub_1001A0FF8(v83, v234, v145);
    sub_10006A720();
    sub_100020680(_swiftEmptyArrayStorage, &v256);
    v146 = sub_10000C834();
    v148 = sub_100024D10(v146, v147, v76);
    if (v148 == 1)
    {
      sub_1000180EC(v59, &qword_100CAE820);
      sub_100028264();
      sub_1000081FC();
      sub_1001AEE5C(v236, v149);
      sub_10000FCCC();
      sub_1001AEE5C(v77, v150);
      v151 = sub_100013680();
      v152(v151);
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003A9C();
      v153 = sub_10003C35C();
      v154(v153);
      type metadata accessor for MapComponent();
      sub_10000583C();
      v155 = sub_1000183A4();
      sub_1001A0FF8(v155, v156, v157);
      sub_100031520();
      sub_10001E8AC();
      sub_1001A0FF8(v234, v243, v158);
      type metadata accessor for LocationNoAqiNhpConfiguration._Storage(0);
      v95 = sub_100003B6C();
      sub_10000C90C();
      sub_1002C8DFC(v159);
      sub_100036CB0();
      v99 = v160 & 0xFFFFFFFFFFFFLL | 0x9000000000000000;
    }

    else
    {
      sub_100019454();
      v185 = v59;
      v186 = v228;
      sub_1001A0FF8(v185, v228, v187);
      sub_100028264();
      sub_1000081FC();
      sub_1001AEE5C(v236, v188);
      sub_10000FCCC();
      sub_1001AEE5C(v77, v189);
      v190 = sub_100013680();
      v191(v190);
      v95 = enum case for WeatherMapOverlayKind.airQuality(_:);
      type metadata accessor for WeatherMapOverlayKind();
      sub_100003A9C();
      v192 = sub_100037A18();
      v193(v192);
      type metadata accessor for MapComponent();
      sub_10000583C();
      sub_1000D3E48(v194, v195);
      sub_10002409C();
      sub_1000250CC(v234);
      sub_10003A160(v186);
      type metadata accessor for LocationNhpConfiguration._Storage(0);
      sub_100003B6C();
      v196 = sub_10002462C();
      sub_1002C62D4(v196);
      sub_100036CB0();
      v99 = v197 & 0xFFFFFFFFFFFFLL | 0x1000000000000000;
    }
  }

  return v99 | v95;
}

void sub_100346890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v63 = a6;
  LODWORD(v64) = a5;
  v8 = sub_10022C350(&qword_100CA7000);
  __chkstk_darwin(v8 - 8);
  v66 = &v61 - v9;
  v10 = type metadata accessor for CurrentWeather();
  __chkstk_darwin(v10 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for LocationViewComponent();
  __chkstk_darwin(v74);
  v73 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v61 - v14;
  __chkstk_darwin(v15);
  v70 = &v61 - v16;
  __chkstk_darwin(v17);
  v79 = &v61 - v18;
  __chkstk_darwin(v19);
  v78 = &v61 - v20;
  __chkstk_darwin(v21);
  v77 = &v61 - v22;
  __chkstk_darwin(v23);
  v76 = &v61 - v24;
  __chkstk_darwin(v25);
  v75 = &v61 - v26;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  __chkstk_darwin(v30);
  v32 = &v61 - v31;
  __chkstk_darwin(v33);
  v35 = &v61 - v34;
  __chkstk_darwin(v36);
  v71 = &v61 - v37;
  sub_1003456E0(a4, v63, v64, &v61 - v37);
  type metadata accessor for WeatherData(0);
  v38 = a1;
  WeatherDataModel.currentWeather.getter();
  v39 = type metadata accessor for PreprocessedWeatherData();
  v40 = *(a4 + v39[5]);
  v41 = *(type metadata accessor for DailyForecastComponent() + 20);
  v69 = v35;
  *&v35[v41] = v40;
  swift_storeEnumTagMultiPayload();

  v68 = v32;
  WeatherDataModel.currentWeather.getter();
  v42 = v39[10];
  v43 = type metadata accessor for UVIndexComponent();
  sub_100111344(a4 + v42, &v32[*(v43 + 20)], type metadata accessor for UVIndexComponentPreprocessedDataModel);
  WeatherDataModel.dailyForecast.getter();
  WeatherDataModel.hourlyForecast.getter();
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.currentWeather.getter();
  WeatherDataModel.dailyForecast.getter();
  v67 = v29;
  SunriseSunsetModel.init(currentWeather:dailyForecast:)();
  swift_storeEnumTagMultiPayload();
  v44 = v75;
  WeatherDataModel.currentWeather.getter();
  v45 = v39[13];
  memcpy(v81, (a4 + v45), sizeof(v81));
  v46 = type metadata accessor for WindComponent();
  memcpy(&v44[*(v46 + 20)], (a4 + v45), 0xE8uLL);
  swift_storeEnumTagMultiPayload();
  v47 = v39[9];
  memcpy(__dst, (a4 + v47), 0x80uLL);
  memcpy(v76, (a4 + v47), 0x80uLL);
  swift_storeEnumTagMultiPayload();
  v48 = v39[6];
  v64 = v39;
  v62 = a4;
  sub_100111344(a4 + v48, v77, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  sub_1001A86C8(v81, v80);
  sub_1001AEF0C(__dst, v80);
  WeatherDataModel.currentWeather.getter();
  swift_storeEnumTagMultiPayload();
  v49 = v79;
  WeatherDataModel.currentWeather.getter();
  v50 = (a4 + v39[11]);
  v52 = *v50;
  v51 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  v55 = v50[4];
  v56 = v50[5];
  v57 = &v49[*(type metadata accessor for VisibilityComponent() + 20)];
  *v57 = v52;
  *(v57 + 1) = v51;
  *(v57 + 2) = v53;
  *(v57 + 3) = v54;
  *(v57 + 4) = v55;
  *(v57 + 5) = v56;
  swift_storeEnumTagMultiPayload();

  v58 = v70;
  WeatherDataModel.currentWeather.getter();
  v59 = v64[12];
  v60 = type metadata accessor for PressureComponent();
  sub_100111344(v62 + v59, &v58[*(v60 + 20)], type metadata accessor for PressureComponentPreprocessedDataModel);
  swift_storeEnumTagMultiPayload();
  WeatherDataModel.historicalComparisons.getter();
  swift_storeEnumTagMultiPayload();
  sub_100111344(v38, v73, type metadata accessor for WeatherData);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);
  swift_allocObject();
  sub_1002C0078();
}

unint64_t sub_100346F4C()
{
  result = qword_100CAE828;
  if (!qword_100CAE828)
  {
    type metadata accessor for AlternativeLocationViewConfigurationFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE828);
  }

  return result;
}

uint64_t sub_100346FA0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_100013188(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_100346FDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v248 = a1;
  v257 = a2;
  v244 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_1000037C4();
  v247 = v2;
  v4 = __chkstk_darwin(v3);
  v254 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v243 = &v215 - v6;
  sub_1000038CC();
  v242 = type metadata accessor for ConditionDetailMapViewModel();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v255 = v12;
  v256 = v11;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v253 = v13;
  sub_10022C350(&qword_100CACDF8);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v215 - v15;
  sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v239 = v18;
  v240 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  v238 = &v215 - v20;
  v237 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v22 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  v235 = &v215 - v24;
  sub_1000038CC();
  v236 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v234 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v233 = v27;
  sub_10022C350(&qword_100CAE8E8);
  sub_100003828();
  __chkstk_darwin(v28);
  v252 = &v215 - v29;
  sub_1000038CC();
  v232 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v231 = v30;
  __chkstk_darwin(v31);
  sub_1000038E4();
  v230 = v32;
  sub_1000038CC();
  HourPrecipitationChartPlacement = type metadata accessor for NextHourPrecipitationChartPlacement();
  sub_1000037C4();
  v228 = v33;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v227 = v35;
  sub_1000038CC();
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_1000037C4();
  v245 = v37;
  v246 = v36;
  __chkstk_darwin(v36);
  sub_1000038E4();
  v251 = v38;
  sub_1000038CC();
  v39 = type metadata accessor for Date();
  sub_1000037C4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_1000037D8();
  v45 = v44 - v43;
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  __chkstk_darwin(HourPrecipitationDetailInput - 8);
  sub_1000037D8();
  v49 = v48 - v47;
  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000038E4();
  v53 = v52;
  sub_1003484F8(v248, v49, type metadata accessor for NextHourPrecipitationDetailInput);
  if (sub_100024D10(v49, 1, HourPrecipitationDetail) == 1)
  {
    sub_100348558(v49, type metadata accessor for NextHourPrecipitationDetailInput);
    type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    sub_100003934();
    sub_10001B350(v54, v55, v56, v57);
    type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  }

  else
  {
    v220 = v22;
    v58 = v53;
    sub_100348498(v49, v53, type metadata accessor for NextHourPrecipitationDetailInput.Input);
    v219 = v16;
    v59 = v249;
    v217 = *(v249 + 56);
    v248 = v10;
    v218 = HourPrecipitationDetail;
    v241 = *(HourPrecipitationDetail + 20);
    static WeatherClock.date.getter();
    v60 = NextHourPrecipitationStringBuilder.buildShortString(from:referenceDate:)();
    v62 = v61;
    v216 = *(v41 + 8);
    v225 = v39;
    v216(v45, v39);
    if (v62)
    {
      v63 = v60;
    }

    else
    {
      v63 = 0;
    }

    v224 = v63;
    v64 = 0xE000000000000000;
    if (v62)
    {
      v64 = v62;
    }

    v223 = v64;
    v226 = objc_opt_self();
    v65 = [v226 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v66.super.isa = v65;
    v222 = sub_100028290(v67, v68, v69, v70, v66, v71, v72, v73);
    v221 = v74;

    sub_1000161C0((v59 + 16), *(v59 + 40));
    v75 = v228;
    v76 = v227;
    v77 = HourPrecipitationChartPlacement;
    (*(v228 + 104))(v227, enum case for NextHourPrecipitationChartPlacement.detailView(_:), HourPrecipitationChartPlacement);
    static WeatherClock.date.getter();
    v250 = v58;
    dispatch thunk of NextHourPrecipitationChartViewModelFactoryType.makeViewModel(for:precipitation:placement:currentTime:minutesToConsider:)();
    v78 = v216;
    v216(v45, v225);
    (*(v75 + 8))(v76, v77);
    v79 = [v226 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v80.super.isa = v79;
    HourPrecipitationChartPlacement = sub_100028290(v81, v82, v83, v84, v80, v85, v86, v87);
    v228 = v88;

    v89 = v230;
    v90 = v250;
    Location.timeZone.getter();
    static WeatherClock.date.getter();
    v91 = v90;
    v92 = NextHourPrecipitationStringBuilder.buildLongString(from:timeZone:referenceDate:)();
    v94 = v93;
    v78(v45, v225);
    v217 = *(v231 + 8);
    v95 = v232;
    v217(v89, v232);
    if (v94)
    {
      v96 = v92;
    }

    else
    {
      v96 = 0;
    }

    v227 = v96;
    v97 = 0xE000000000000000;
    if (v94)
    {
      v97 = v94;
    }

    v225 = v97;
    v216 = *(v249 + 64);
    v231 = v91 + *(v218 + 24);
    v249 = type metadata accessor for WeatherData(0);
    v98 = v233;
    WeatherDataModel.currentWeather.getter();
    v99 = v235;
    WeatherDataModel.hourlyForecast.getter();
    v100 = v238;
    WeatherDataModel.dailyForecast.getter();
    v101 = v219;
    WeatherDataModel.weatherChanges.getter();
    Location.timeZone.getter();
    v102 = v252;
    WeatherForecastDescriptionStringBuilder.buildWeatherDescription(from:hourlyForecast:dailyForecast:weatherChanges:timeZone:)();
    v217(v89, v95);
    sub_1000180EC(v101, &qword_100CACDF8);
    (*(v239 + 8))(v100, v240);
    (*(v220 + 8))(v99, v237);
    (*(v234 + 8))(v98, v236);
    v103 = v253;
    sub_1003480CC(v102, v227, v225, v253);

    v104 = v226;
    v105 = [v226 mainBundle];
    sub_10001946C();
    v258._object = 0x8000000100AC1180;
    sub_100003CD0();
    v109 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v107, v105, v108, v258);

    v110 = v242;
    v111 = *(v242 + 20);
    type metadata accessor for Location();
    sub_1000037E8();
    v113 = v248;
    (*(v112 + 16))(v248 + v111, v250);
    sub_1003484F8(v231, v113 + v110[6], type metadata accessor for WeatherData);
    sub_10000E7B0();
    sub_10001B350(v114, v115, v116, v249);
    v117 = [v104 mainBundle];
    sub_100003CD0();
    v118.super.isa = v117;
    v126 = sub_100028290(v119, v120, v121, v122, v118, v123, v124, v125);
    v128 = v127;

    v129 = v110[8];
    v130 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
    type metadata accessor for WeatherMapPrecipitationOverlayKind();
    sub_1000037E8();
    (*(v131 + 104))(v113 + v129, v130);
    v132 = enum case for WeatherMapOverlayKind.precipitation(_:);
    type metadata accessor for WeatherMapOverlayKind();
    sub_1000037E8();
    (*(v133 + 104))(v113 + v129, v132);
    v134 = v113;
    v135 = v256;
    *v134 = v109;
    v136 = (&v134->_countAndFlagsBits + v110[7]);
    *v136 = v126;
    v136[1] = v128;
    *(&v134->_countAndFlagsBits + v110[9]) = 1;
    v137 = v243;
    v138 = v244;
    sub_100003934();
    sub_10001B350(v139, v140, v141, v135);
    (*(v255 + 16))(v137 + v138[7], v103, v135);
    v142 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v143, v144, v145, v142);
    *v137 = 0;
    *(v137 + 8) = 0;
    *(v137 + 16) = 2;
    v146 = v228;
    *(v137 + 24) = HourPrecipitationChartPlacement;
    *(v137 + 32) = v146;
    *(v137 + v138[9]) = 0;
    *(v137 + v138[10]) = 0;
    sub_10069EC8C();
    v148 = v147;
    v149 = *(v147 + 16);
    if (v149 >= *(v147 + 24) >> 1)
    {
      sub_10069EC8C();
      v148 = v213;
    }

    *(v148 + 16) = v149 + 1;
    v249 = (*(v247 + 80) + 32) & ~*(v247 + 80);
    v247 = *(v247 + 72);
    sub_100008214();
    sub_100348498(v137, v150, v151);
    v152 = [v104 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v153.super.isa = v152;
    v243 = sub_100028290(v154, v155, v156, v157, v153, v158, v159, v160);
    v162 = v161;

    v163 = v138;
    v164 = v254;
    sub_100003934();
    sub_10001B350(v165, v166, v167, v135);
    v168 = &v164[v163[7]];
    v169 = [v104 mainBundle];
    sub_10001946C();
    sub_100003CD0();
    v170.super.isa = v169;
    v178 = sub_100028290(v171, v172, v173, v174, v170, v175, v176, v177);
    v180 = v179;

    *v168 = v178;
    v168[1] = v180;
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v181, v182, v183, v142);
    sub_10001946C();
    *v164 = v184;
    *(v164 + 1) = 0x8000000100AC1220;
    v164[16] = 0;
    *(v164 + 3) = v243;
    *(v164 + 4) = v162;
    v164[v163[9]] = 0;
    v164[v163[10]] = 0;
    v185 = *(v148 + 16);
    if (v185 >= *(v148 + 24) >> 1)
    {
      sub_10069EC8C();
      v148 = v214;
    }

    v186 = v257;
    v187 = v248;
    v188 = v253;
    v189 = v251;
    *(v148 + 16) = v185 + 1;
    sub_100008214();
    sub_100348498(v190, v191, v192);
    HourPrecipitationDetailView = type metadata accessor for NextHourPrecipitationDetailViewModel.Model(0);
    v195 = v245;
    v194 = v246;
    (*(v245 + 16))(&v186[HourPrecipitationDetailView[7]], v189, v246);
    sub_1003484F8(v187, &v186[HourPrecipitationDetailView[8]], type metadata accessor for ConditionDetailMapViewModel);
    v196 = v250;
    Location.timeZone.getter();
    sub_100348558(v187, type metadata accessor for ConditionDetailMapViewModel);
    (*(v255 + 8))(v188, v256);
    sub_1000180EC(v252, &qword_100CAE8E8);
    (*(v195 + 8))(v189, v194);
    v197 = HourPrecipitationDetailView[10];
    v198 = sub_10022C350(&qword_100CAE8F0);
    sub_1000037E8();
    (*(v199 + 16))(&v186[v197], v196 + v241, v198);
    sub_100348558(v196, type metadata accessor for NextHourPrecipitationDetailInput.Input);
    sub_10000E7B0();
    sub_10001B350(v200, v201, v202, v198);
    v203 = v223;
    *v186 = v224;
    *(v186 + 1) = v203;
    v204 = v221;
    *(v186 + 2) = v222;
    *(v186 + 3) = v204;
    *(v186 + 4) = v148;
    sub_10000E7B0();
    sub_10001B350(v205, v206, v207, HourPrecipitationDetailView);
    type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  }

  sub_10000E7B0();
  return sub_10001B350(v208, v209, v210, v211);
}

uint64_t sub_1003480CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10022C350(&qword_100CAE8E8);
  __chkstk_darwin(v8 - 8);
  v10 = v28 - v9;
  v11 = type metadata accessor for WeatherDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003485B0(a1, v10);
  if (sub_100024D10(v10, 1, v11) == 1)
  {
    sub_1000180EC(v10, &qword_100CAE8E8);
    return static WeatherDescription.string(_:)();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_opt_self() mainBundle];
    v28[3] = a4;
    v17 = v16;
    v29._object = 0x8000000100AC14B0;
    v18._countAndFlagsBits = 0x4025204025;
    v19._object = 0x8000000100AC1480;
    v29._countAndFlagsBits = 0xD0000000000000E4;
    v19._countAndFlagsBits = 0xD000000000000029;
    v18._object = 0xE500000000000000;
    v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v17, v18, v29);
    v28[1] = v20._object;
    v28[2] = v20._countAndFlagsBits;

    sub_10022C350(&qword_100CA5408);
    v21 = type metadata accessor for WeatherDescription.Argument();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100A2D320;
    v26 = (v25 + v24);
    *v26 = a2;
    *(v26 + 1) = a3;
    v27 = *(v22 + 104);
    v27(v26, enum case for WeatherDescription.Argument.string(_:), v21);
    (*(v12 + 16))(&v26[v23], v14, v11);
    v27(&v26[v23], enum case for WeatherDescription.Argument.description(_:), v21);

    WeatherDescription.init(format:_:)();
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100348410()
{
  sub_100006F14(v0 + 16);

  return v0;
}

uint64_t sub_100348440()
{
  sub_100348410();

  return swift_deallocClassInstance();
}

uint64_t sub_100348498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003484F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100348558(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003485B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CAE8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ForegroundEffectViewMask(uint64_t a1, int a2)
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

uint64_t sub_100348654()
{
  sub_100003B08();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[14] = type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v6;
  v0[17] = v5;

  return _swift_task_switch(sub_1003486F0, v6, v5);
}

uint64_t sub_1003486F0()
{
  v28 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    v8 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v8 = 136315394;
    v30.width = v7;
    v30.height = v6;
    v9 = NSStringFromCGSize(v30);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100078694(v10, v12, v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v31.width = v5;
    v31.height = v4;
    v14 = NSStringFromCGSize(v31);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100078694(v15, v17, v27);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing resize test with minimum %s, maximum %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v19 = [objc_opt_self() sharedApplication];
  v20 = UIApplication.maybeWindow.getter();
  *(v0 + 18) = v20;

  if (v20)
  {
    v21 = static MainActor.shared.getter();
    *(v0 + 19) = v21;
    if (v21)
    {
      swift_getObjectType();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    return _swift_task_switch(sub_1003489F0, v22, v24);
  }

  else
  {

    sub_100348DEC();
    swift_allocError();
    swift_willThrow();
    v25 = *(v0 + 1);

    return v25();
  }
}

uint64_t sub_1003489F0()
{
  v1 = *(v0 + 18);
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  *(v0 + 2) = v0;
  *(v0 + 3) = sub_100348AC0;
  v6 = swift_continuation_init();
  sub_100348C2C(v6, v1, v5, v4, v3, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100348AC0()
{
  sub_100003B08();
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);

  return _swift_task_switch(sub_100348BC4, v2, v1);
}

uint64_t sub_100348BC4()
{
  sub_100003B08();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100348C2C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_allocWithZone(RPTResizeTestParameters);
  v14 = sub_100348E40(0, 0, a2, sub_100348F3C, v12);
  [v14 setMinimumWindowSize:{a3, a4}];
  [v14 setMaximumWindowSize:{a5, a6}];
  [objc_opt_self() runTestWithParameters:v14];
}

uint64_t sub_100348D38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_100348654();
}

unint64_t sub_100348DEC()
{
  result = qword_100CAE8F8;
  if (!qword_100CAE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE8F8);
  }

  return result;
}

id sub_100348E40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000742F0;
  v13[3] = &unk_100C4F880;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 window:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

_BYTE *storeEnumTagSinglePayload for ResizeMacWindow.Errors(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100348FF4()
{
  result = qword_100CAE900;
  if (!qword_100CAE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAE900);
  }

  return result;
}

void sub_100349048()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA65B8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CB4();
  v12 = sub_10022C350(&qword_100CAEB78);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  if (*v4 != *v2)
  {
    goto LABEL_11;
  }

  v21 = type metadata accessor for ActiveLocationInput(0);
  v16 = *(v21 + 20);
  v17 = *(v12 + 48);
  sub_100035AD0(&v4[v16], v15, &qword_100CA65B8);
  sub_100035AD0(&v2[v16], &v15[v17], &qword_100CA65B8);
  sub_1000038B4(v15, 1, active);
  if (v18)
  {
    sub_1000038B4(&v15[v17], 1, active);
    if (v18)
    {
      sub_1000180EC(v15, &qword_100CA65B8);
LABEL_13:
      sub_1000B9770();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_100035AD0(v15, v0, &qword_100CA65B8);
  sub_1000038B4(&v15[v17], 1, active);
  if (v18)
  {
    sub_10000822C();
LABEL_10:
    sub_1000180EC(v15, &qword_100CAEB78);
    goto LABEL_11;
  }

  sub_100349588(&v15[v17], v9);
  v19 = sub_1000BAF7C(v0, v9);
  sub_1000E8348(v9, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000E8348(v0, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000180EC(v15, &qword_100CA65B8);
  if (v19)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_10000536C();
}

void sub_1003492B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Location.Identifier();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  sub_1000037D8();
  v31 = v30 - v29;
  v32 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  sub_100003CB4();
  v34 = sub_10022C350(&qword_100CADD58);
  sub_100003810(v34);
  sub_100003828();
  v36 = __chkstk_darwin(v35);
  v38 = &a9 - v37;
  v39 = *(v36 + 56);
  sub_100035AD0(v26, &a9 - v37, &qword_100CADBA0);
  sub_100035AD0(v24, &v38[v39], &qword_100CADBA0);
  sub_1000038B4(v38, 1, v27);
  if (v40)
  {
    sub_1000038B4(&v38[v39], 1, v27);
    if (v40)
    {
      sub_1000180EC(v38, &qword_100CADBA0);
LABEL_12:
      type metadata accessor for ActiveLocationModel(0);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_100035AD0(v38, v20, &qword_100CADBA0);
  sub_1000038B4(&v38[v39], 1, v27);
  if (v40)
  {
    (*(v28 + 8))(v20, v27);
LABEL_9:
    sub_1000180EC(v38, &qword_100CADD58);
    goto LABEL_10;
  }

  (*(v28 + 32))(v31, &v38[v39], v27);
  sub_1000E8FAC();
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v28 + 8);
  v42(v31, v27);
  v42(v20, v27);
  sub_1000180EC(v38, &qword_100CADBA0);
  if (v41)
  {
    goto LABEL_12;
  }

LABEL_10:
  sub_10000536C();
}

uint64_t sub_100349588(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for LocationViewerActiveLocationState();
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

uint64_t sub_1003495F0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v17 = a1;
  v5 = type metadata accessor for ExtremaResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v16 - v10;
  sub_100095588();
  v12 = 1;
  if (sub_100024D10(v11, 1, v5) == 1)
  {
    v13 = a3;
LABEL_5:
    v14 = sub_10022C350(&qword_100CACCC8);
    return sub_10001B350(v13, v12, 1, v14);
  }

  (*(v6 + 32))(v8, v11, v5);
  v13 = a3;
  v17(v8);
  if (!v3)
  {
    (*(v6 + 8))(v8, v5);
    v12 = 0;
    goto LABEL_5;
  }

  result = (*(v6 + 8))(v8, v5);
  __break(1u);
  return result;
}

uint64_t sub_1003497F8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a2;
  v21 = a1;
  v5 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CACE08);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = v20 - v14;
  sub_100095588();
  v16 = 1;
  if (sub_100024D10(v15, 1, v5) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = type metadata accessor for Date();
    return sub_10001B350(v17, v16, 1, v18);
  }

  (*(v7 + 32))(v11, v15, v5);
  v17 = a3;
  v21(v11);
  if (!v3)
  {
    (*(v7 + 8))(v11, v5);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v7 + 8))(v11, v5);
  __break(1u);
  return result;
}

__n128 *sub_1003499D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int w4_0)
{
  v400 = w4_0;
  v398[6] = a4;
  v428 = a3;
  v405 = a2;
  v426 = a1;
  v5 = sub_10022C350(&qword_100CAEC90);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v403 = v7;
  v8 = sub_10022C350(&qword_100CA71A0);
  v423 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  v425 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  v20 = __chkstk_darwin(v19);
  v22 = v398 - v21;
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  v25 = v398 - v24;
  v26 = sub_10022C350(&qword_100CA7188);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  v31 = __chkstk_darwin(v30);
  v33 = v398 - v32;
  __chkstk_darwin(v31);
  sub_10000E70C();
  v417 = v34;
  sub_1000038CC();
  v35 = type metadata accessor for DetailComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  v419 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v411 = v42;
  v43 = sub_1000038CC();
  v44 = type metadata accessor for ConditionDetailPlatterViewModel(v43);
  sub_1000037C4();
  v429 = v45;
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  v424 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  v58 = __chkstk_darwin(v57);
  v60 = v398 - v59;
  __chkstk_darwin(v58);
  sub_100003878();
  v431 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v418 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  v416 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_10000E70C();
  v415 = v68;
  sub_1000038CC();
  v69 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v71 = v70;
  __chkstk_darwin(v72);
  sub_1000037D8();
  v75 = (v74 - v73);
  (*(v71 + 16))(v74 - v73, v426, v69);
  v420 = v75;
  *&v421 = v71;
  v77 = *(v71 + 88);
  v76 = (v71 + 88);
  v422 = v69;
  v78 = v77(v75, v69);
  v430 = v44;
  if (v78 == enum case for DetailCondition.conditions(_:))
  {
    sub_10034C028(v25);
    sub_10000E7B0();
    sub_10001B350(v79, v80, v81, v44);
    sub_100095588();
    sub_1000038B4(v33, 1, v35);
    if (v82)
    {
      sub_1000180EC(v33, &qword_100CA7188);
      sub_10022C350(&qword_100CAECA0);
      sub_100024644();
      v85 = v84 & ~v83;
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      sub_100095588();
      sub_1000131DC();
      sub_100095588();
      sub_1000131DC();
      sub_100051BBC();
      sub_1000038B4(v85, 1, v44);
      if (v82)
      {
        sub_1000180EC(v85, &qword_100CA71A0);
        v120 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v120 = _swiftEmptyArrayStorage;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000240B8();
          v120 = v393;
        }

        v164 = v120[1].n128_u64[0];
        v163 = v120[1].n128_u64[1];
        if (v164 >= v163 >> 1)
        {
          sub_100031C84(v163);
          sub_100016340();
          sub_10069EC8C();
          v120 = v394;
        }

        v120[1].n128_u64[0] = v164 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      sub_1000180EC(v25, &qword_100CA71A0);
      swift_setDeallocating();
      sub_1005C1ED0();
    }

    else
    {
      sub_100003F04();
      sub_1003529E4();
      v101 = [objc_opt_self() mainBundle];
      sub_1000AF51C();
      v437._object = 0x8000000100AC20A0;
      sub_100003CD0();
      v102._countAndFlagsBits = 1937204558;
      v102._object = 0xE400000000000000;
      v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v101, v102, v437);

      type metadata accessor for WeatherDescription();
      v106 = v418;
      sub_100003934();
      sub_10001B350(v107, v108, v109, v110);
      sub_100352AC0();
      v111 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v112, v113, v114, v111);
      *v106 = xmmword_100A2C400;
      *(v106 + 16) = 2;
      *(v106 + 24) = v105;
      sub_1000201A8();
      sub_10022C350(&qword_100CAECA0);
      sub_1000183B0();
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_100A2D320;
      v427 = v115;
      sub_100005870();
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v116, v117, v118, v44);
      v428 = v25;
      sub_100095588();
      v119 = 0;
      v120 = _swiftEmptyArrayStorage;
      v121 = v44;
      do
      {
        v122 = v119;
        sub_100095588();
        sub_100051BBC();
        sub_1000038B4(v22, 1, v121);
        if (v82)
        {
          sub_1000180EC(v22, &qword_100CA71A0);
        }

        else
        {
          sub_10001E8C4();
          sub_1003529E4();
          v123 = swift_isUniquelyReferenced_nonNull_native();
          if ((v123 & 1) == 0)
          {
            sub_1000240B8();
            v120 = v126;
          }

          v125 = v120[1].n128_u64[0];
          v124 = v120[1].n128_u64[1];
          if (v125 >= v124 >> 1)
          {
            sub_100031C84(v124);
            sub_100016340();
            sub_10069EC8C();
            v120 = v127;
          }

          v120[1].n128_u64[0] = v125 + 1;
          sub_10003C36C();
          sub_10001E8C4();
          sub_1003529E4();
          v121 = v430;
        }

        v119 = 1;
      }

      while ((v122 & 1) == 0);
      swift_setDeallocating();
      sub_1005C1ED0();
      sub_100014348();
      sub_100352B18(v418, v160);
      sub_100008254();
      sub_100352B18(v419, v161);
      sub_1000180EC(v428, &qword_100CA71A0);
    }

    (*(v421 + 8))(v420, v422);
    return v120;
  }

  v431 = v35;
  if (v78 == enum case for DetailCondition.humidity(_:))
  {
    sub_10002C57C();
    v86 = objc_opt_self();
    v87 = [v86 mainBundle];
    v424 = v76;
    sub_1000080F4();
    v425 = sub_1000519FC(v88, v89, v90, v91, v432, v92, v93);
    v426 = v94;

    sub_10000C70C(0, &qword_100CA72F8);
    v95 = static NSNumberFormatter.percent.getter();
    sub_10000C70C(0, &qword_100CAECA8);
    isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v97 = [v95 stringFromNumber:isa];

    if (v97)
    {
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;
    }

    else
    {
      v98 = 0;
      v100 = 0xE000000000000000;
    }

    v199 = v415;
    sub_10008654C();
    v420 = v25;
    v200 = [v86 mainBundle];
    v440._object = v25;
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v201, v202, v203, v204, v440);

    sub_10022C350(&qword_100CA40C8);
    v205 = sub_100019478();
    v421 = xmmword_100A2C3F0;
    *(v205 + 16) = xmmword_100A2C3F0;
    *(v205 + 56) = &type metadata for String;
    v206 = sub_100035744();
    *(v205 + 64) = v206;
    *(v205 + 32) = v98;
    *(v205 + 40) = v100;

    v207 = static String.localizedStringWithFormat(_:_:)();
    v422 = v208;

    v209 = [v86 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    v216 = sub_1000519FC(v210, v211, v212, v213, v434, v214, v215);
    v423 = v217;
    v424 = v216;

    v218 = [v86 mainBundle];
    v441._object = v420;
    sub_1000AF51C();
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v219, v220, v221, v222, v441);

    v223 = sub_100019478();
    *(v223 + 16) = v421;
    *(v223 + 56) = &type metadata for String;
    *(v223 + 64) = v206;
    *(v223 + 32) = v98;
    *(v223 + 40) = v100;
    v224 = static String.localizedStringWithFormat(_:_:)();
    v226 = v225;

    v227 = v430;
    v228 = type metadata accessor for WeatherDescription();
    sub_100003934();
    sub_10001B350(v229, v230, v231, v228);
    v232 = (v199 + v227[7]);
    v233 = v422;
    *v232 = v207;
    v232[1] = v233;
    v234 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v235, v236, v237, v234);
    *v199 = xmmword_100A3E660;
    *(v199 + 16) = 0;
    v238 = v426;
    *(v199 + 24) = v425;
    *(v199 + 32) = v238;
    *(v199 + v227[9]) = 0;
    *(v199 + v227[10]) = 0;
    v239 = v416;
    sub_100003934();
    sub_10001B350(v240, v241, v242, v228);
    v243 = (v239 + v227[7]);
    *v243 = v224;
    v243[1] = v226;
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v244, v245, v246, v234);
    *v239 = xmmword_100A3E670;
    *(v239 + 16) = 0;
    v247 = v423;
    *(v239 + 24) = v424;
    *(v239 + 32) = v247;
    *(v239 + v227[9]) = 0;
    *(v239 + v227[10]) = 0;
    v248 = v417;
    sub_100095588();
    sub_100087D84(v248);
    if (v82)
    {
      sub_1000180EC(v248, &qword_100CA7188);
      sub_10022C350(&qword_100CAEC98);
      sub_1000B98E8();
      v120 = swift_allocObject();
      v120[1] = xmmword_100A2D320;
      sub_100005870();
      sub_100003940();
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_100014348();
      v256 = v199;
    }

    else
    {
      sub_100003F04();
      v249 = v411;
      sub_1003529E4();
      v250 = v414;
      sub_10034BEBC(v414);
      sub_10022C350(&qword_100CAEC98);
      sub_1000B98E8();
      v120 = swift_allocObject();
      v120[1] = xmmword_100A3BBA0;
      sub_100352AC0();
      sub_100352AC0();
      sub_100352AC0();
      sub_100352B18(v250, type metadata accessor for ConditionDetailPlatterViewModel);
      sub_100008254();
      sub_100352B18(v249, v251);
      sub_100352B18(v239, type metadata accessor for ConditionDetailPlatterViewModel);
      v256 = sub_100003940();
    }

    goto LABEL_58;
  }

  if (v78 == enum case for DetailCondition.pressure(_:))
  {
    sub_10002C57C();
    v128 = objc_opt_self();
    v129 = [v128 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    sub_1000519FC(v130, v131, v132, v133, v433, v134, v135);
    sub_10012CC6C();

    sub_10008654C();
    v136 = [v128 mainBundle];
    v397 = v25;
LABEL_22:
    sub_1000080F4();
    v141 = NSLocalizedString(_:tableName:bundle:value:comment:)(v137, v138, v139, v140, *(&v397 - 1));
    countAndFlagsBits = v141._countAndFlagsBits;
    object = v141._object;

LABEL_23:
    v144 = DetailCondition.rawValue.getter();
    v146 = v145;
    v147 = v430;
    type metadata accessor for WeatherDescription();
    v148 = v413;
    sub_100003934();
    sub_10001B350(v149, v150, v151, v152);
    v153 = (v148 + v147[7]);
    *v153 = countAndFlagsBits;
    v153[1] = object;
    v154 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v155, v156, v157, v154);
    *v148 = v144;
    *(v148 + 8) = v146;
    *(v148 + 16) = 0;
    *(v148 + 24) = v76;
    *(v148 + 32) = v60;
    *(v148 + v147[9]) = 0;
    *(v148 + v147[10]) = 0;
    v158 = v412;
    sub_100095588();
    sub_100087D84(v158);
    if (v82)
    {
      sub_1000180EC(v158, &qword_100CA7188);
      sub_10022C350(&qword_100CAEC98);
      sub_100024644();
      v120 = sub_10007169C();
      v120[1] = xmmword_100A2C3F0;
      sub_100005870();
      sub_100352AC0();
      sub_100014348();
      v256 = v148;
LABEL_58:
      sub_100352B18(v256, v159);
      return v120;
    }

    sub_100003F04();
    v252 = v409;
    sub_1003529E4();
    v253 = v414;
    sub_10034BEBC(v414);
    sub_10022C350(&qword_100CAEC98);
    sub_1000183B0();
    v120 = swift_allocObject();
    sub_10000FCE4(v120, xmmword_100A2D320);
    sub_100352AC0();
    sub_100352AC0();
    sub_1000282A8();
    sub_100352B18(v253, v254);
    sub_100008254();
    sub_100352B18(v252, v255);
    v256 = v148;
LABEL_57:
    v159 = v158;
    goto LABEL_58;
  }

  if (v78 == enum case for DetailCondition.precipitationTotal(_:))
  {
    sub_10002C57C();
    sub_1000282C0();
    v165 = objc_opt_self();
    v166 = [v165 mainBundle];
    v438._object = v60;
    sub_100003CD0();
    sub_100003F1C();
    v171 = NSLocalizedString(_:tableName:bundle:value:comment:)(v167, v168, v169, v170, v438);
    v426 = v171._object;

    type metadata accessor for WeatherDescription();
    v172 = v410;
    sub_100003934();
    sub_10001B350(v173, v174, v175, v176);
    v177 = (v172 + v430[7]);
    v178 = [v165 mainBundle];
    v439._object = 0x8000000100AC1420;
    sub_100003CD0();
    sub_100003F1C();
    v183 = NSLocalizedString(_:tableName:bundle:value:comment:)(v179, v180, v181, v182, v439);

    *v177 = v183;
    v184 = v172;
    v185 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v186, v187, v188, v185);
    *v172 = 0xD00000000000001DLL;
    *(v172 + 8) = v76;
    *(v172 + 16) = 0;
    v189 = v426;
    *(v172 + 24) = v171._countAndFlagsBits;
    *(v172 + 32) = v189;
    v190 = v430;
    *(v184 + v430[9]) = 0;
    *(v184 + *(v190 + 40)) = 0;
    v191 = v406;
    sub_100095588();
    sub_100087D84(v191);
    if (v82)
    {
      sub_1000180EC(v191, &qword_100CA7188);
      sub_10022C350(&qword_100CAECA0);
      sub_100024644();
      v192 = v190;
      v195 = v194 & ~v193;
      *(swift_allocObject() + 16) = xmmword_100A2C3F0;
      sub_100005870();
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v196, v197, v198, v192);
      sub_10003257C();
      sub_100095588();
      sub_10003257C();
      sub_100051BBC();
      sub_1000038B4(v195, 1, v192);
      if (v82)
      {
        sub_1000180EC(v195, &qword_100CA71A0);
        v120 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v120 = _swiftEmptyArrayStorage;
        v297 = swift_isUniquelyReferenced_nonNull_native();
        if ((v297 & 1) == 0)
        {
          sub_1000240B8();
          v120 = v395;
        }

        v299 = v120[1].n128_u64[0];
        v298 = v120[1].n128_u64[1];
        if (v299 >= v298 >> 1)
        {
          sub_100031C84(v298);
          sub_100016340();
          sub_10069EC8C();
          v120 = v396;
        }

        v120[1].n128_u64[0] = v299 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      sub_100014348();
      sub_100352B18(v184, v300);
      swift_setDeallocating();
      sub_1005C1ED0();
      return v120;
    }

    sub_100003F04();
    v158 = v408;
    sub_1003529E4();
    sub_10034BEBC(v407);
    sub_10022C350(&qword_100CAECA0);
    sub_1000183B0();
    v272 = swift_allocObject();
    sub_10000FCE4(v272, xmmword_100A2D320);
    sub_100352AC0();
    sub_10000E7B0();
    sub_10001B350(v273, v274, v275, v190);
    sub_100352AC0();
    sub_10000E7B0();
    sub_10001B350(v276, v277, v278, v190);
    v279 = 0;
    v120 = _swiftEmptyArrayStorage;
    v280 = v404;
    do
    {
      v281 = v279;
      sub_100095588();
      sub_100051BBC();
      sub_1000038B4(v280, 1, v430);
      if (v82)
      {
        sub_1000180EC(v280, &qword_100CA71A0);
      }

      else
      {
        sub_10001E8C4();
        sub_1003529E4();
        v282 = swift_isUniquelyReferenced_nonNull_native();
        if ((v282 & 1) == 0)
        {
          sub_1000240B8();
          v120 = v285;
        }

        v284 = v120[1].n128_u64[0];
        v283 = v120[1].n128_u64[1];
        if (v284 >= v283 >> 1)
        {
          sub_100031C84(v283);
          sub_100016340();
          sub_10069EC8C();
          v120 = v286;
        }

        v120[1].n128_u64[0] = v284 + 1;
        sub_10003C36C();
        sub_10001E8C4();
        sub_1003529E4();
      }

      v279 = 1;
    }

    while ((v281 & 1) == 0);
    swift_setDeallocating();
    sub_1005C1ED0();
    sub_1000282A8();
    sub_100352B18(v407, v294);
    sub_100008254();
    sub_100352B18(v408, v295);
    v256 = v410;
    goto LABEL_57;
  }

  if (v78 == enum case for DetailCondition.uvIndex(_:))
  {
    v76 = "bove 10 km is considered clear.";
    sub_1000282C0();
    v257 = objc_opt_self();
    v258 = [v257 mainBundle];
    sub_100003CD0();
    sub_100003F1C();
    sub_1000519FC(v259, v260, v261, v262, v435, v263, v264);
    sub_10012CC6C();

    sub_10008654C();
    v265 = [v257 mainBundle];
    v436._object = v25;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v266, v267, v268, v269, v436);

    sub_10022C350(&qword_100CA40C8);
    v270 = sub_100019478();
    *(v270 + 16) = xmmword_100A2C3F0;
    *(v270 + 56) = &type metadata for Int;
    *(v270 + 64) = &protocol witness table for Int;
    *(v270 + 32) = 3;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
    object = v271;

    goto LABEL_23;
  }

  if (v78 == enum case for DetailCondition.visibility(_:))
  {
    v76 = "beaufort explainer";
    sub_1000282C0();
    v287 = objc_opt_self();
    v288 = [v287 mainBundle];
    v442._object = v60;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v289, v290, v291, v292, v442);
    sub_10012CC6C();

    v293 = ConditionUnits.visibility.getter();
    NSUnitLength.isMetricVisibility.getter();

    v136 = [v287 mainBundle];
    v397 = 0x8000000100AC1D00;
    goto LABEL_22;
  }

  if (v78 == enum case for DetailCondition.wind(_:))
  {
    if ((v400 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }

    sub_1000282C0();
    v301 = objc_opt_self();
    v302 = [v301 mainBundle];
    v443._object = v60;
    sub_1000080F4();
    v307 = NSLocalizedString(_:tableName:bundle:value:comment:)(v303, v304, v305, v306, v443);
    v424 = v307._object;
    v425 = v307._countAndFlagsBits;

    v308 = v44;
    v309 = [v301 mainBundle];
    sub_1000AF51C();
    v444._object = 0x8000000100AC1880;
    sub_1000080F4();
    v314 = NSLocalizedString(_:tableName:bundle:value:comment:)(v310, v311, v312, v313, v444);

    v423 = v301;
    v315 = [v301 mainBundle];
    v445._object = 0x8000000100AC1960;
    sub_1000080F4();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v316, v317, v318, v319, v445);

    sub_10022C350(&qword_100CA40C8);
    v320 = sub_100019478();
    *(v320 + 16) = xmmword_100A2C3F0;
    *(v320 + 56) = &type metadata for Int;
    *(v320 + 64) = &protocol witness table for Int;
    *(v320 + 32) = 20;
    v321 = static String.localizedStringWithFormat(_:_:)();
    v323 = v322;

    v324 = DetailCondition.rawValue.getter();
    v326 = v325;
    v158 = type metadata accessor for WeatherDescription();
    v327 = v402;
    sub_100003934();
    sub_10001B350(v328, v329, v330, v158);
    v331 = (v327 + v308[7]);
    *v331 = v321;
    v331[1] = v323;
    v332 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    v336 = sub_10001B350(v333, v334, v335, v332);
    *v327 = v324;
    *(v327 + 8) = v326;
    *(v327 + 16) = 0;
    *(v327 + 24) = v314;
    *(v327 + v308[9]) = 0;
    *(v327 + v308[10]) = 0;
    __chkstk_darwin(v336);
    sub_100003F28();
    *(v337 - 16) = v405;
    v338 = v403;
    sub_1003495F0(sub_1003528E8, v339, v403);
    v340 = sub_10034C26C(v338);
    v342 = v341;
    v344 = v343;
    v345 = v401;
    sub_100003934();
    v426 = v158;
    sub_10001B350(v346, v347, v348, v158);
    v349 = (v345 + v308[7]);
    *v349 = v340;
    v349[1] = v342;
    v349[2] = v344;
    type metadata accessor for ConditionDetailDynamicContentIdentifier();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v350, v351, v352, v332);
    sub_1000AF51C();
    *v345 = v353 - 19;
    *(v345 + 8) = 0x8000000100AC19A0;
    *(v345 + 16) = 1;
    v354 = v424;
    *(v345 + 24) = v425;
    *(v345 + 32) = v354;
    *(v345 + v308[9]) = 1;
    *(v345 + v308[10]) = 0;
    v355 = v398[5];
    sub_100095588();
    sub_100087D84(v355);
    if (v82)
    {
      sub_1000180EC(v355, &qword_100CA7188);
      sub_1000522F0();
      v356 = v399;
    }

    else
    {
      sub_100003F04();
      sub_1000131DC();
      sub_1003529E4();
      v356 = v399;
      sub_10034BEBC(v399);
      sub_100008254();
      sub_100352B18(v345, v357);
      sub_1000522F0();
    }

    v359 = v430;
    sub_10001B350(v356, v358, 1, v430);
    sub_100051BBC();
    v360 = ConditionUnits.windSpeed.getter();
    v361 = NSUnitSpeed.isBeaufort.getter();

    if (v361)
    {
      v362 = v398[3];
      sub_100095588();
      sub_1000038B4(v362, 1, v359);
      if (!v82)
      {
        sub_10001E8C4();
        sub_1000131DC();
        sub_1003529E4();
        sub_10022C350(&qword_100CAEC98);
        sub_1000183B0();
        v120 = swift_allocObject();
        sub_10000FCE4(v120, xmmword_100A3BBA0);
        v386 = v402;
        sub_100352AC0();
        sub_100352AC0();
        v387 = v401;
        sub_100352AC0();
        sub_1000282A8();
        sub_100352B18(v345, v388);
        sub_1000180EC(0x8000000100AC19A0, &qword_100CA71A0);
        v389 = v387;
LABEL_80:
        sub_100352B18(v389, v158);
        sub_1000180EC(v403, &qword_100CAEC90);
        v256 = v386;
        goto LABEL_57;
      }

      sub_10001775C(v362);
      sub_10022C350(&qword_100CAEC98);
      sub_1000B98E8();
      v120 = swift_allocObject();
      sub_100041938(v120, xmmword_100A2D320);
      v363 = v402;
      sub_100352AC0();
      v364 = v401;
      sub_100352AC0();
      sub_10001775C(0x8000000100AC19A0);
      v158 = type metadata accessor for ConditionDetailPlatterViewModel;
      v365 = v364;
    }

    else
    {
      sub_1000282C0();
      v366 = v423;
      v367 = [v423 mainBundle];
      v446._object = v361;
      sub_100003CD0();
      sub_100003F1C();
      v372 = NSLocalizedString(_:tableName:bundle:value:comment:)(v368, v369, v370, v371, v446);

      sub_10008654C();
      v158 = [v366 mainBundle];
      v447._object = v308;
      sub_100003CD0();
      sub_100003F1C();
      v377 = NSLocalizedString(_:tableName:bundle:value:comment:)(v373, v374, v375, v376, v447);

      sub_10002C57C();
      sub_100003934();
      sub_10001B350(v378, v379, v380, v426);
      *(v340 + *(v359 + 28)) = v377;
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v381, v382, v383, v332);
      *v340 = 0xD000000000000012;
      *(v340 + 8) = v158;
      *(v340 + 16) = 0;
      *(v340 + 24) = v372;
      sub_1000201A8();
      v384 = v398[4];
      sub_100095588();
      sub_1000038B4(v384, 1, v359);
      if (!v82)
      {
        sub_10001E8C4();
        v390 = v398[1];
        sub_1003529E4();
        sub_10022C350(&qword_100CAEC98);
        sub_1000183B0();
        v120 = swift_allocObject();
        sub_10000FCE4(v120, xmmword_100A3B020);
        v386 = v402;
        sub_100352AC0();
        sub_100352AC0();
        v391 = v401;
        sub_100352AC0();
        sub_100352AC0();
        sub_1000282A8();
        sub_100352B18(v390, v392);
        sub_100352B18(v340, v158);
        sub_1000180EC(0x8000000100AC19A0, &qword_100CA71A0);
        v389 = v391;
        goto LABEL_80;
      }

      sub_10001775C(v384);
      sub_10022C350(&qword_100CAEC98);
      sub_1000B98E8();
      v120 = swift_allocObject();
      sub_100041938(v120, xmmword_100A3BBA0);
      v363 = v402;
      sub_100352AC0();
      v385 = v401;
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_10001775C(0x8000000100AC19A0);
      v158 = type metadata accessor for ConditionDetailPlatterViewModel;
      v365 = v385;
    }

    sub_100352B18(v365, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_1000180EC(v403, &qword_100CAEC90);
    v256 = v363;
    goto LABEL_57;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double sub_10034BEBC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100AC20A0;
  v3._object = 0x8000000100AC2080;
  v11._countAndFlagsBits = 0xD000000000000021;
  v3._countAndFlagsBits = 0xD000000000000014;
  v4._countAndFlagsBits = 1937204558;
  v4._object = 0xE400000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v6 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v7 = v6[6];
  v8 = type metadata accessor for WeatherDescription();
  sub_10001B350(a1 + v7, 1, 1, v8);
  sub_100352AC0();
  v9 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a1 + v6[8], 1, 1, v9);
  *&result = 1;
  *a1 = xmmword_100A2C400;
  *(a1 + 16) = 2;
  *(a1 + 24) = v5;
  *(a1 + v6[9]) = 0;
  *(a1 + v6[10]) = 0;
  return result;
}

uint64_t sub_10034C028@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v17._object = 0x8000000100AC2540;
  v17._countAndFlagsBits = 0xD000000000000052;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x8000000100AC2520;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  v7 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v8 = v7[6];
  v9 = type metadata accessor for WeatherDescription();
  sub_10001B350(a1 + v8, 1, 1, v9);
  v10 = (a1 + v7[7]);
  v11 = [v2 mainBundle];
  v18._object = 0x8000000100AC2650;
  v12._countAndFlagsBits = 0xD0000000000000A6;
  v12._object = 0x8000000100AC25A0;
  v18._countAndFlagsBits = 0xD00000000000004DLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v18);

  *v10 = v14;
  v15 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  result = sub_10001B350(a1 + v7[8], 1, 1, v15);
  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x8000000100AC2520;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + v7[9]) = 0;
  *(a1 + v7[10]) = 0;
  return result;
}

uint64_t sub_10034C1EC()
{
  ExtremaResult.maxValue.getter();
  ConditionUnits.windSpeed.getter();
  sub_10000C70C(0, &qword_100CAC428);
  return Measurement.init(value:unit:)();
}

uint64_t sub_10034C26C(uint64_t a1)
{
  v97 = a1;
  v84 = type metadata accessor for Beaufort.Category.Range();
  v89 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Beaufort.Category();
  v98 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CAEC90);
  __chkstk_darwin(v3 - 8);
  countAndFlagsBits = v71 - v4;
  v5 = type metadata accessor for WeatherFormatPlaceholder();
  v94 = *(v5 - 8);
  object = v5;
  __chkstk_darwin(v5);
  v93 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v7 - 8);
  v9 = v71 - v8;
  v90 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v10 = *(v90 - 8);
  __chkstk_darwin(v90);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v13 = *(v92 - 8);
  __chkstk_darwin(v92);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACCC8);
  v91 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v88 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v71 - v19;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v21 = UnitManager.windGust.getter();

  v22 = sub_10000C70C(0, &qword_100CAC428);
  v87 = v21;
  v81 = v22;
  Measurement.init(value:unit:)();
  static Set<>.unit.getter();
  v23 = v90;
  (*(v10 + 104))(v12, enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:), v90);
  v24 = type metadata accessor for Locale();
  sub_10001B350(v9, 1, 1, v24);
  static WeatherFormatStyle<>.weather(_:usage:locale:)();

  sub_1000180EC(v9, &qword_100CAA9F0);
  v25 = v16;
  (*(v10 + 8))(v12, v23);
  v26 = v93;
  v27 = v94;
  v28 = object;
  (*(v94 + 104))(v93, enum case for WeatherFormatPlaceholder.none(_:), object);
  static UnitManager.standard.getter();
  sub_10035297C(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
  v29 = v92;
  v30 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v31 = countAndFlagsBits;
  v72 = v30;
  v71[1] = v32;

  v33 = v28;
  v34 = v91;
  (*(v27 + 8))(v26, v33);
  (*(v13 + 8))(v15, v29);
  v35 = v34[1];
  v82 = v20;
  v35(v20, v25);
  sub_100095588();
  v36 = sub_100024D10(v31, 1, v25);
  v80 = v35;
  if (v36 == 1)
  {
    sub_1000180EC(v31, &qword_100CAEC90);
    v37 = v98;
  }

  else
  {
    v38 = v88;
    (v34[4])(v88, v31, v25);
    v39 = v35;
    v40 = v85;
    Measurement<>.beaufortCategory(useExtendedScale:)();
    v41 = Beaufort.Category.level.getter();
    v37 = v98;
    (*(v98 + 8))(v40, v86);
    v42 = static Beaufort.maxLevel.getter();
    v39(v38, v25);
    if (v42 < v41)
    {
      v79 = 1;
      result = static Beaufort.maxExtendedLevel.getter();
      v44 = result;
      goto LABEL_6;
    }
  }

  result = static Beaufort.maxLevel.getter();
  v44 = result;
  v79 = 0;
LABEL_6:
  if (v44 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v45 = v44 + 1;
  if (!__OFADD__(v44, 1))
  {
    v100 = _swiftEmptyArrayStorage;
    result = sub_1006A7C04(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      goto LABEL_23;
    }

    v77 = (v34 + 1);
    v78 = v25;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = v100;
    v74 = (v89 + 8);
    v73 = (v37 + 8);
    v76 = v44;
    v75 = v44 + 1;
    while (!__OFADD__(v46, 1))
    {
      v98 = v46 + 1;
      if (v48)
      {
        goto LABEL_24;
      }

      v97 = v47;
      static NSUnitSpeed.beaufort.getter();
      v50 = v82;
      Measurement.init(value:unit:)();
      v51 = v85;
      Measurement<>.beaufortCategory(useExtendedScale:)();
      v99 = Beaufort.Category.level.getter();
      sub_100352908();
      v52 = BinaryInteger.formatted()();
      object = v52._object;
      countAndFlagsBits = v52._countAndFlagsBits;
      v53 = Beaufort.Category.name.getter();
      v93 = v54;
      v94 = v53;
      v55 = v83;
      Beaufort.Category.range(in:)();
      v56 = Beaufort.Category.Range.formattedRange(forAccessibility:)(0);
      v91 = v56._object;
      v92 = v56._countAndFlagsBits;
      v57 = *v74;
      v58 = v84;
      (*v74)(v55, v84);
      Beaufort.Category.range(in:)();
      v59 = Beaufort.Category.Range.formattedRange(forAccessibility:includeUnit:)(0, 1);
      v89 = v59._object;
      v90 = v59._countAndFlagsBits;
      v57(v55, v58);
      Beaufort.Category.range(in:)();
      v60 = Beaufort.Category.Range.formattedRange(forAccessibility:)(1);
      v88 = v60._object;
      v57(v55, v58);
      v61 = Beaufort.Category.color.getter();
      (*v73)(v51, v86);
      result = v80(v50, v78);
      v100 = v49;
      v63 = v49[2];
      v62 = v49[3];
      if (v63 >= v62 >> 1)
      {
        result = sub_1006A7C04((v62 > 1), v63 + 1, 1);
        v49 = v100;
      }

      v49[2] = v63 + 1;
      v64 = &v49[11 * v63];
      v65 = object;
      v64[4] = countAndFlagsBits;
      v64[5] = v65;
      v66 = v93;
      v64[6] = v94;
      v64[7] = v66;
      v67 = v91;
      v64[8] = v92;
      v64[9] = v67;
      v68 = v89;
      v64[10] = v90;
      v64[11] = v68;
      v69 = v88;
      v64[12] = v60._countAndFlagsBits;
      v64[13] = v69;
      v64[14] = v61;
      v48 = v97 == v76;
      if (v97 == v76)
      {
        v47 = 0;
        v70 = v75;
      }

      else
      {
        v47 = v97 + 1;
        v70 = v75;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_20;
        }
      }

      ++v46;
      if (v98 == v70)
      {

        return v72;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10034CC74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v319 = a4;
  v312 = a3;
  v315 = a2;
  v308 = type metadata accessor for ConditionDetailMapViewModel();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v310 = v6;
  v7 = sub_1000038CC();
  v321 = type metadata accessor for ConditionDetailPlatterViewModel(v7);
  sub_1000037C4();
  v322 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v313 = v11;
  sub_1000038CC();
  v334 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v317 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v316 = v14;
  sub_1000038CC();
  v337 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v336 = v15;
  __chkstk_darwin(v16);
  sub_1000038E4();
  v335 = v17;
  sub_1000038CC();
  v323 = type metadata accessor for Calendar();
  sub_1000037C4();
  v324 = v18;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v349 = v20;
  v21 = sub_10022C350(&qword_100CACDF8);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  v341 = v23;
  v24 = sub_1000038CC();
  v307 = type metadata accessor for WeatherData(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v350 = v26;
  v351 = sub_10022C350(&qword_100CA7030);
  sub_1000037C4();
  v342 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  v354 = v29;
  sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v343 = v30;
  v344 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  v352 = v33;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v346 = v34;
  v347 = v35;
  __chkstk_darwin(v34);
  sub_1000038E4();
  v353 = v36;
  sub_1000038CC();
  v345 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v348 = v37;
  __chkstk_darwin(v38);
  sub_1000037D8();
  v41 = v40 - v39;
  v327 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v328 = v42;
  __chkstk_darwin(v43);
  sub_1000037D8();
  v46 = v45 - v44;
  v47 = type metadata accessor for Location();
  sub_1000037C4();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_1000037D8();
  v53 = (v52 - v51);
  v54 = type metadata accessor for Date();
  sub_1000037C4();
  v56 = v55;
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  v60 = &v306 - v59;
  v61 = type metadata accessor for ConditionDetailInput.Input(0);
  v62 = *(v61 + 40);
  v331 = v56;
  v63 = *(v56 + 16);
  v340 = v60;
  v330 = v54;
  v311 = v63;
  v63(v60, &a1[v62], v54);
  v64 = *(v61 + 52);
  v329 = v49;
  v66 = *(v49 + 16);
  v65 = v49 + 16;
  v332 = v53;
  v333 = v47;
  v306 = v66;
  v66(v53, &a1[v64], v47);
  Location.timeZone.getter();
  sub_1000794A4();
  v326 = v41;
  v67(v41);
  sub_1000794A4();
  v68(v353);
  sub_1000794A4();
  v69(v352);
  sub_1000794A4();
  v70(v354);
  sub_1000213D0();
  sub_100352AC0();
  sub_100095588();
  v339 = v46;
  static Calendar.currentCalendar(with:)();
  sub_1000282C0();
  v71 = objc_opt_self();
  v72 = [v71 mainBundle];
  v359._object = a1;
  sub_1000080F4();
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v75, v76, v359);

  v338 = swift_allocObject();
  *(v338 + 16) = 2;
  v78 = swift_allocObject();
  *(v78 + 16) = 2;
  v79 = v336;
  sub_1000794A4();
  v80 = v335;
  v81 = v337;
  v82(v335);
  v83 = (*(v79 + 88))(v80, v81);
  v325 = v78;
  if (v83 == enum case for DetailCondition.conditions(_:))
  {
    v84 = sub_1000D41CC();
    if (sub_10034E5F8(v84, a1))
    {

      v85 = [v71 mainBundle];
      v360._object = 0x8000000100AC2820;
      sub_100003CD0();
      sub_100003F1C();
      v360._countAndFlagsBits = 0xD000000000000035;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, v87, v88, v89, v360);
      countAndFlagsBits = v90._countAndFlagsBits;
      object = v90._object;

      sub_100036CBC();
      v92 = *(v91 + 40);
      sub_1000213E8((v91 + 16));
      sub_1000BCE00();
      v93 = v326;
      v94 = v341;
      dispatch thunk of ConditionsPlatterStringBuilderType.makeForecastPlatterWeatherDescription(from:timeZone:dayWeather:currentWeather:hourlyForecast:dailyForecast:weatherChanges:units:)();
    }

    else
    {
      object = v77._object;
      sub_100036CBC();
      v92 = *(v121 + 40);
      sub_1000213E8((v121 + 16));
      sub_10034E664(v78);
      sub_1000BCE00();
      v93 = v326;
      dispatch thunk of ConditionsPlatterStringBuilderType.makeDailySummaryPlatterWeatherDescription(from:timeZone:hourlyForecast:dayWeather:isYesterday:units:)();
      v94 = v341;
      sub_1000C8974();
    }

    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_10007169C();
    *(v101 + 16) = xmmword_100A2C3F0;
    v122 = v101 + v92;
    v123 = v321;
    sub_100003934();
    v124 = v334;
    sub_10001B350(v125, v126, v127, v334);
    v128 = v317;
    (*(v317 + 16))(v101 + v92 + v123[7], v65, v124);
    v129 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v130, v131, v132, v129);
    *v122 = 0;
    *(v122 + 8) = 0;
    *(v122 + 16) = 2;
    sub_1000114A4();
    *(v122 + 24) = v134;
    *(v122 + 32) = v133;
    *(v122 + v123[9]) = 0;
    *(v122 + v123[10]) = 0;
    (*(v128 + 8))(v65, v124);
    v135 = sub_100013690();
    v136(v135);
    sub_1000180EC(v94, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v137);
    v138 = sub_100031C70();
    v139(v138);
    v140 = sub_1000370F0();
    v141(v140);
    sub_1000B01C0();
    v142(v353);
    (*(v348 + 8))(v93, v345);
    sub_10000E73C();
    v143(v339, v327);
    v144 = sub_10002C628();
    v145(v144);
    sub_10000E73C();
    v146(v340, v330);
    sub_10000E73C();
    v148 = v335;
    v149 = &v358;
    goto LABEL_35;
  }

  object = v77._object;
  if (v83 == enum case for DetailCondition.humidity(_:))
  {
    sub_100036CBC();
    v96 = *(v95 + 160);
    sub_1000161C0((v95 + 136), v96);
    sub_1000C8974();
    v97 = v354;
    v98 = v351;
    Forecast.forecast.getter();
    v99 = v326;
    v100 = v349;
    dispatch thunk of HumidityPlatterStringBuilderType.makeL2SummaryString(hourlyForecast:dayWeather:date:calendar:timeZone:units:)();
    sub_100017750();

    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v102 = &a1[v101];
    v103 = v321;
    v104 = sub_1000206A8(*(v321 + 24));
    sub_10001B350(v104, v105, v106, v334);
    sub_1000C8330(v103[7]);
    sub_100071C74();
    v107 = sub_1000206A8(v103[8]);
    sub_10001B350(v107, v108, v109, v96);
    sub_10006A740();
    sub_1000114A4();
    *(v102 + 3) = v111;
    *(v102 + 4) = v110;
    v102[v103[9]] = 0;
    v102[v103[10]] = 0;
    sub_10000C9F4();
    v112(v100, v323);
    sub_1000180EC(v341, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v113);
    (*(v342 + 8))(v97, v98);
    v114 = sub_1000370F0();
    v115(v114);
    sub_1000B01C0();
    v116(v353);
    v117 = *(v348 + 8);
    v118 = v99;
LABEL_6:
    v117(v118, v345);
    sub_10000E73C();
    v120 = v339;
LABEL_34:
    v119(v120, v327);
    v252 = sub_10002C628();
    v253(v252);
    sub_10000E73C();
    v148 = v340;
    v149 = &v357;
LABEL_35:
    v147(v148, *(v149 - 32));
LABEL_36:
    sub_1000D41CC();

    return v101;
  }

  if (v83 == enum case for DetailCondition.pressure(_:))
  {
    sub_1000C8974();
    v150 = sub_1000D41CC();
    v151 = sub_10034E5F8(v150, a1);
    v152 = v351;
    v153 = v334;
    if (v151)
    {
      sub_100036CBC();
      v155 = sub_1000EFF20(v154);
      v156 = v353;
      v157 = v339;
      sub_10003153C();
      v158 = dispatch thunk of PressurePlatterStringBuilderType.makeTodayString(from:hourlyForecast:extrema:timeZone:units:)();
      v160 = v159;
    }

    else
    {
      v171 = sub_10034E664(v78);
      sub_100036CBC();
      v155 = sub_1000EFF20(v172);
      v157 = v339;
      sub_10003153C();
      if (v171)
      {
        v173 = dispatch thunk of PressurePlatterStringBuilderType.makeYesterdayString(for:hourlyForecast:extrema:timeZone:units:)();
      }

      else
      {
        v173 = dispatch thunk of PressurePlatterStringBuilderType.makeFutureDayString(for:hourlyForecast:extrema:timeZone:units:)();
      }

      v158 = v173;
      v160 = v174;
      v156 = v353;
      v152 = v351;
    }

    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_10007169C();
    *(v101 + 16) = xmmword_100A2C3F0;
    v182 = v101 + v155;
    v183 = v321;
    v184 = sub_1000206A8(*(v321 + 24));
    sub_10001B350(v184, v185, v186, v153);
    v187 = (v101 + v155 + v183[7]);
    *v187 = v158;
    v187[1] = v160;
    v188 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_100003940();
    swift_storeEnumTagMultiPayload();
    v189 = sub_1000206A8(v183[8]);
    sub_10001B350(v189, v190, v191, v188);
    sub_10006A740();
    sub_1000114A4();
    *(v182 + 24) = v193;
    *(v182 + 32) = v192;
    *(v182 + v183[9]) = 0;
    *(v182 + v183[10]) = 0;
    v194 = sub_100013690();
    v195(v194);
    sub_1000180EC(v341, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v196);
    (*(v342 + 8))(v354, v152);
    v197 = sub_1000370F0();
    v198(v197);
    sub_1000B01C0();
    v199(v156);
    v200 = sub_10003B984();
    v201(v200, v345);
    sub_10000E73C();
    v120 = v157;
    goto LABEL_34;
  }

  v161 = v334;
  if (v83 == enum case for DetailCondition.precipitationTotal(_:))
  {
    v162 = sub_1000D41CC();
    sub_10034E5F8(v162, a1);
    v163 = v339;
    sub_1000C8974();
    if (v164)
    {
      sub_100036CBC();
      sub_100035B30(v165 + 256, &v355);
      v166 = v356;
      sub_1000161C0(&v355, v356);
      sub_1001A5104();
      v167 = v326;
      if (v168)
      {
      }

      v169 = v352;
      v170 = v353;
      dispatch thunk of PrecipitationPlatterStringBuilderType.makeTodayString(from:dayWeather:dailyForecast:hourlyForecast:timeZone:currentWeatherLacksPeriodPrecipitationAmounts:)();
      sub_100017750();
      sub_100006F14(&v355);
    }

    else
    {
      v180 = sub_10034E664(v78);
      sub_100036CBC();
      v166 = *(v181 + 280);
      sub_1000213E8((v181 + 256));
      v167 = v326;
      if (v180)
      {
        dispatch thunk of PrecipitationPlatterStringBuilderType.makeYesterdayString(for:dayWeather:timeZone:units:)();
      }

      else
      {
        dispatch thunk of PrecipitationPlatterStringBuilderType.makeFutureDayString(for:dayWeather:timeZone:units:)();
      }

      sub_100017750();
      v169 = v352;
      v170 = v353;
    }

    v235 = v163;
    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v236 = &a1[v101];
    v237 = v321;
    v238 = sub_1000206A8(*(v321 + 24));
    sub_10001B350(v238, v239, v240, v334);
    sub_1000C8330(v237[7]);
    sub_100071C74();
    v241 = sub_1000206A8(v237[8]);
    sub_10001B350(v241, v242, v243, v166);
    sub_10006A740();
    sub_1000114A4();
    *(v236 + 3) = v245;
    *(v236 + 4) = v244;
    v236[v237[9]] = 0;
    v236[v237[10]] = 0;
    v246 = sub_100013690();
    v247(v246);
    sub_1000180EC(v341, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v248);
    v249 = sub_100031C70();
    v250(v249);
    (*(v344 + 8))(v169, v343);
    sub_1000B01C0();
    v251(v170);
    (*(v348 + 8))(v167, v345);
    sub_10000E73C();
    v120 = v235;
    goto LABEL_34;
  }

  if (v83 == enum case for DetailCondition.uvIndex(_:))
  {

    v175 = sub_1000D41CC();
    if (sub_10034E5F8(v175, a1))
    {
      v176 = v341;
      v177 = v314;
      v178 = v353;
      CurrentWeather.date.getter();
      v179 = v330;
    }

    else
    {
      v176 = v341;
      v177 = v314;
      v179 = v330;
      v311(v314, v340, v330);
      v178 = v353;
    }

    v221 = v352;
    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    sub_100036CBC();
    sub_1000161C0((v222 + 56), *(v222 + 80));
    v223 = v339;
    v224 = v354;
    sub_10026FDB8(&a1[v101]);
    v225 = *(v331 + 8);
    v225(v177, v179);
    v226 = sub_100013690();
    v227(v226);
    sub_1000180EC(v176, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v228);
    (*(v342 + 8))(v224, v351);
    (*(v344 + 8))(v221, v343);
    sub_1000B01C0();
    v229(v178);
    v230 = sub_10003B984();
    v231(v230, v345);
    sub_10000E73C();
    v232(v223, v327);
    v233 = sub_10002C628();
    v234(v233);
    v225(v340, v179);
    goto LABEL_36;
  }

  if (v83 == enum case for DetailCondition.visibility(_:))
  {
    sub_100036CBC();
    v203 = *(v202 + 200);
    sub_1000213E8((v202 + 176));
    v204 = v353;
    v205 = v349;
    dispatch thunk of VisibilityPlatterStringBuilderType.makeSummaryString(currentWeather:extrema:date:calendar:timeZone:units:)();
    sub_100017750();
    sub_10022C350(&qword_100CAEC98);
    sub_1000747FC();
    v101 = sub_100086558();
    *(v101 + 16) = xmmword_100A2C3F0;
    v206 = &a1[v101];
    v207 = v321;
    v208 = sub_1000206A8(*(v321 + 24));
    sub_10001B350(v208, v209, v210, v161);
    sub_1000C8330(v207[7]);
    sub_100071C74();
    v211 = sub_1000206A8(v207[8]);
    sub_10001B350(v211, v212, v213, v203);
    sub_10006A740();
    v214 = object;
    *(v206 + 3) = v77._countAndFlagsBits;
    *(v206 + 4) = v214;
    v206[v207[9]] = 0;
    v206[v207[10]] = 0;
    sub_10000C9F4();
    v215(v205, v323);
    sub_1000180EC(v341, &qword_100CACDF8);
    sub_10001BE90();
    sub_100352B18(v350, v216);
    v217 = sub_100031C70();
    v218(v217);
    v219 = sub_1000370F0();
    v220(v219);
    (*(v347 + 8))(v204, v346);
LABEL_42:
    v118 = sub_10003B984();
    goto LABEL_6;
  }

  v336 = a1;
  if (v83 == enum case for DetailCondition.wind(_:))
  {
    sub_100036CBC();
    v256 = *(v255 + 120);
    sub_1000213E8((v255 + 96));
    v257 = v349;
    dispatch thunk of WindPlatterStringBuilderType.makeSummaryString(currentWeather:extrema:secondaryValueExtrema:date:calendar:timeZone:units:)();
    sub_100017750();
    v258 = v321;
    v259 = v313;
    sub_100003934();
    sub_10001B350(v260, v261, v262, v161);
    v263 = (v259 + v258[7]);
    *v263 = v256;
    v263[1] = v81;
    type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_100071C74();
    sub_100003934();
    sub_10001B350(v264, v265, v266, v256);
    *v259 = 0;
    *(v259 + 8) = 0;
    *(v259 + 16) = 2;
    v267 = object;
    *(v259 + 24) = v77._countAndFlagsBits;
    *(v259 + 32) = v267;
    sub_1000201A8();
    v268 = sub_1000D41CC();
    if (sub_10034E5F8(v268, v336))
    {
      v269 = [v71 mainBundle];
      v270 = v161;
      v271 = v269;
      v361._object = 0x8000000100AC27D0;
      sub_100003CD0();
      v272._countAndFlagsBits = 7364941;
      v272._object = 0xE300000000000000;
      v275 = NSLocalizedString(_:tableName:bundle:value:comment:)(v273, v274, v271, v272, v361);
      v337 = v275._object;

      v276 = v308;
      v277 = v310;
      v278 = v259;
      v279 = v270;
      v306(&v310[*(v308 + 20)], v332, v333);
      sub_1000213D0();
      v280 = v350;
      sub_100352AC0();
      sub_10000E7B0();
      sub_10001B350(v281, v282, v283, v307);
      v284 = v276[8];
      v285 = enum case for WeatherMapOverlayKind.wind(_:);
      type metadata accessor for WeatherMapOverlayKind();
      sub_1000037E8();
      (*(v286 + 104))(&v277[v284], v285);
      *v277 = 0;
      *(v277 + 1) = 0;
      v287 = &v277[v276[7]];
      *v287 = 0;
      *(v287 + 1) = 0xE000000000000000;
      v277[v276[9]] = 0;
      v288 = v309;
      sub_100003934();
      sub_10001B350(v289, v290, v291, v279);
      sub_100352AC0();
      type metadata accessor for ConditionDetailDynamicContentIdentifier();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v292, v293, v294, v256);
      *v288 = xmmword_100A3E680;
      *(v288 + 16) = 1;
      v295 = v337;
      *(v288 + 24) = v275._countAndFlagsBits;
      *(v288 + 32) = v295;
      *(v288 + v258[9]) = 1;
      *(v288 + v258[10]) = 0;
      sub_10022C350(&qword_100CAEC98);
      sub_1000183B0();
      v101 = swift_allocObject();
      sub_10000FCE4(v101, xmmword_100A2D320);
      sub_100352AC0();
      sub_10001E8C4();
      sub_1003529E4();
      sub_100352B18(v277, type metadata accessor for ConditionDetailMapViewModel);
      sub_100014348();
      sub_100352B18(v278, v296);
      v297 = sub_100013690();
      v298(v297);
      sub_1000180EC(v341, &qword_100CACDF8);
      sub_10001BE90();
      v300 = v280;
    }

    else
    {
      sub_10022C350(&qword_100CAEC98);
      sub_1000747FC();
      v101 = sub_10007169C();
      *(v101 + 16) = xmmword_100A2C3F0;
      sub_10001E8C4();
      sub_1003529E4();
      sub_10000C9F4();
      v301(v257, v323);
      sub_1000180EC(v341, &qword_100CACDF8);
      sub_10001BE90();
      v300 = v350;
    }

    sub_100352B18(v300, v299);
    v302 = sub_100031C70();
    v303(v302);
    v304 = sub_1000370F0();
    v305(v304);
    (*(v347 + 8))(v353, v346);
    goto LABEL_42;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10034E5F8(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    LOBYTE(v3) = *(a2 + *(type metadata accessor for ConditionDetailInput.Input(0) + 44));
    swift_beginAccess();
    *v2 = v3;
  }

  return v3 & 1;
}

uint64_t sub_10034E664(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    type metadata accessor for ConditionDetailInput.Input(0);
    LOBYTE(v2) = static Date.== infix(_:_:)();
    swift_beginAccess();
    *v1 = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_10034E6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v176 = a6;
  v180 = a4;
  v181 = a5;
  v178 = a2;
  v179 = a3;
  v186 = a7;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v162 = v9;
  v163 = v8;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v159 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v160 = v12;
  v161 = v11;
  __chkstk_darwin(v11);
  sub_1000038E4();
  v158 = v13;
  sub_1000038CC();
  v164 = type metadata accessor for PastDataComparisonTextContext();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v165 = v15;
  sub_1000038CC();
  v174 = type metadata accessor for HourWeather();
  sub_1000037C4();
  v185 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v170 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v168 = v20;
  sub_1000038CC();
  v184 = type metadata accessor for Precipitation();
  sub_1000037C4();
  v177 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  v183 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_100003878();
  v182 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_100003878();
  v166 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v167 = v29;
  v30 = sub_1000038CC();
  v173 = type metadata accessor for ConditionDetailChartInputs(v30);
  sub_1000037C4();
  v171 = v31;
  __chkstk_darwin(v32);
  sub_100003848();
  v169 = v33;
  sub_10000386C();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v172 = v35;
  sub_1000038CC();
  v36 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v38 = v37;
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  v43 = type metadata accessor for ConditionDetailInput.Input(0);
  if (*(a1 + *(v43 + 44)) != 1)
  {
    goto LABEL_27;
  }

  v44 = a1;
  v45 = *(v43 + 32);
  v46 = *(v38 + 104);
  v156 = v43;
  v46(v42, enum case for DetailCondition.pressure(_:), v36);
  sub_10035297C(&qword_100CAECC0, &type metadata accessor for DetailCondition);
  v157 = v45;
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v38 + 8);
  v49 = sub_100042210();
  v48(v49);
  if (v47)
  {
    goto LABEL_27;
  }

  v50 = enum case for DetailCondition.precipitationTotal(_:);
  v46(v42, enum case for DetailCondition.precipitationTotal(_:), v36);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = sub_100042210();
  v53 = (v48)(v52);
  if (v51)
  {
    goto LABEL_27;
  }

  v154 = v48;
  v155 = v150;
  __chkstk_darwin(v53);
  sub_100003F28();
  v152 = v44;
  *(v54 - 16) = v44;
  v56 = v55;
  v58 = sub_1008EF8B0(sub_10035295C, v57, v55);
  if ((v59 & 1) != 0 || (v60 = v58, v151 = v58 - 1, v58 < 1))
  {
    if (qword_100CA2700 != -1)
    {
LABEL_34:
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000703C(v77, qword_100D90B68);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "Not enough data to compare weather data from yesterday and today. Comparison platter will not be shown.", v80, 2u);
    }

    goto LABEL_27;
  }

  v150[1] = 0;
  v46(v42, v50, v36);
  v61 = v152;
  v62 = v157;
  v63 = static DetailCondition.== infix(_:_:)();
  v64 = sub_100042210();
  result = v154(v64);
  if ((v63 & 1) == 0)
  {
LABEL_26:
    v112 = v60;
    v113 = v175;
    v114 = v176;
    sub_10034F738(v61, v112, v151, v178, v179, v180, v181, v176, v197);
    if (HIBYTE(v199) <= 0xFEu)
    {
      LODWORD(v185) = v199;
      v193 = v197[0];
      v194 = v197[1];
      v195 = v197[2];
      v196 = v198;
      sub_100351098(v61 + v62, v192);
      sub_100095588();
      if (v191)
      {
        sub_100013188(&v190, v187);
        v119 = v156;
        CurrentWeather.date.getter();
        v120 = v159;
        Location.timeZone.getter();
        v121 = v165;
        Date.midnight(timeZone:)();
        (*(v162 + 8))(v120, v163);
        v123 = v160;
        v122 = v161;
        v124 = sub_100042210();
        v125(v124);
        v126 = v164;
        (*(v123 + 16))(v121 + *(v164 + 20), v61 + *(v119 + 48), v122);
        Location.timeZone.getter();
        sub_10022C350(&qword_100CA7000);
        v127 = Forecast.forecast.getter();
        sub_10022C350(&qword_100CA7030);
        v128 = Forecast.forecast.getter();
        v129 = v126[9];
        type metadata accessor for ConditionUnits();
        sub_1000037E8();
        (*(v130 + 16))(v121 + v129, v114);
        v114 = &unk_100A3B140;
        sub_100044D8C();
        sub_100044D8C();
        sub_100044D8C();
        sub_100044D8C();
        *(v121 + v126[7]) = v127;
        *(v121 + v126[8]) = v128;
        v62 = v188;
        v61 = v189;
        v113 = sub_1000161C0(v187, v188);
        (*(v61 + 8))(v121, v62, v61);
        sub_10008837C();
        sub_100352B18(v121, type metadata accessor for PastDataComparisonTextContext);
        sub_100006F14(v187);
      }

      else
      {
        sub_1000180EC(&v190, &qword_100CAECC8);
        LocalizedStringKey.init(stringLiteral:)();
        Text.init(_:tableName:bundle:comment:)();
        sub_10008837C();
      }

      v184 = v114 & 1;
      v131 = objc_opt_self();
      sub_10010CD54(v113, v62, v114 & 1);

      sub_100095588();
      v132 = [v131 mainBundle];
      v200._object = 0x8000000100AC26C0;
      sub_100003CD0();
      sub_100003F1C();
      v137 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, v134, v135, v136, v200);

      sub_1000180EC(v197, &qword_100CAECD0);
      sub_10010CD64(v113, v62, v114 & 1);

      sub_1000180EC(v192, &qword_100CAECC8);
      v138 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      type metadata accessor for WeatherDescription();
      v139 = v186;
      sub_100003934();
      sub_10001B350(v140, v141, v142, v143);
      v144 = v139 + v138[7];
      *v144 = v113;
      *(v144 + 8) = v62;
      *(v144 + 16) = v184;
      *(v144 + 24) = v61;
      v145 = v194;
      *(v144 + 32) = v193;
      *(v144 + 48) = v145;
      *(v144 + 64) = v195;
      *(v144 + 80) = v196;
      *(v144 + 88) = v185;
      v146 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      sub_100042210();
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v147, v148, v149, v146);
      *v139 = xmmword_100A2F600;
      *(v139 + 16) = 2;
      *(v139 + 24) = v137;
      *(v139 + v138[9]) = 0;
      *(v139 + v138[10]) = 0;
      sub_10000E7B0();
      v118 = v138;
      return sub_10001B350(v115, v116, v117, v118);
    }

LABEL_27:
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v115, v116, v117, v118);
  }

  if (v60 > *(v56 + 16))
  {
    __break(1u);
  }

  else
  {
    v66 = v56;
    v67 = v60;
    v68 = v172;
    sub_100011468();
    sub_100020EAC();
    sub_100352AC0();
    v70 = v173;
    v69 = v174;
    v71 = *(v68 + *(v173 + 20));
    if (*(v71 + 16))
    {
      v72 = type metadata accessor for ConditionDetailChartInput(0);
      sub_100003810(v72);
      sub_100011468();
      v75 = v71 + v74 + *(v73 + 28);
      v76 = *(v75 + *(type metadata accessor for ConditionDetailChartDataInput(0) + 44));
    }

    else
    {
      v76 = _swiftEmptyArrayStorage;
    }

    sub_10003BD68();
    result = sub_100352B18(v68, v81);
    if (v67 < *(v66 + 16))
    {
      sub_100020EAC();
      v82 = v169;
      sub_100352AC0();
      v83 = *(v82 + *(v70 + 20));
      v84 = *(v83 + 16);
      v150[0] = v67;
      if (v84)
      {
        v85 = type metadata accessor for ConditionDetailChartInput(0);
        sub_100003810(v85);
        sub_100011468();
        v88 = v83 + v87 + *(v86 + 28);
        v89 = *(v88 + *(type metadata accessor for ConditionDetailChartDataInput(0) + 44));
      }

      else
      {
        v89 = _swiftEmptyArrayStorage;
      }

      sub_10003BD68();
      sub_100352B18(v82, v90);
      *&v197[0] = v76;
      sub_10035D958(v89);
      v91 = 0;
      v92 = *&v197[0];
      v173 = *(*&v197[0] + 16);
      v155 = (v185 + 16);
      LODWORD(v154) = enum case for Precipitation.none(_:);
      v153 = (v177 + 104);
      v171 = *&v197[0];
      v172 = v177 + 8;
      v169 = (v185 + 8);
      v93 = v170;
      v94 = (v177 + 8);
      while (1)
      {
        if (v173 == v91)
        {

          goto LABEL_27;
        }

        if (v91 >= *(v92 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        sub_100011468();
        (*(v97 + 16))(v93, v95 + v96 + *(v97 + 72) * v91, v69);
        v98 = v182;
        HourWeather.precipitation.getter();
        v100 = v183;
        v99 = v184;
        (*v153)(v183, v154, v184);
        sub_10035297C(&qword_100CAECD8, &type metadata accessor for Precipitation);
        v101 = dispatch thunk of static Equatable.== infix(_:_:)();
        v102 = *v94;
        (*v94)(v100, v99);
        v102(v98, v99);
        if ((v101 & 1) == 0)
        {
          break;
        }

        ++v91;
        (*v169)(v93, v69);
        v92 = v171;
      }

      v103 = v185 + 32;
      v104 = v168;
      (*(v185 + 32))(v168, v93, v69);
      v105 = v166;
      HourWeather.precipitation.getter();
      (*(v103 - 24))(v104, v69);
      v106 = v167;
      v107 = v105;
      v108 = v184;
      v109 = (*(v177 + 32))(v167, v107, v184);
      __chkstk_darwin(v109);
      sub_100003F28();
      *(v110 - 16) = v106;
      LOBYTE(v104) = sub_10069A75C(sub_1003529C4, v111, v171);

      v102(v106, v108);
      v61 = v152;
      v62 = v157;
      v60 = v150[0];
      if ((v104 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10034F5A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Precipitation();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v13 - v8;
  HourWeather.precipitation.getter();
  LOBYTE(a2) = sub_1001CA754(v9, a2);
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    HourWeather.precipitation.getter();
    (*(v4 + 104))(v7, enum case for Precipitation.none(_:), v3);
    v11 = sub_1001CA754(v9, v7);
    v10(v7, v3);
    v10(v9, v3);
  }

  return v11 & 1;
}

uint64_t sub_10034F738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v222 = a8;
  v205 = a7;
  v212 = a6;
  object = a5;
  *&v226 = a4;
  v206 = a3;
  countAndFlagsBits = a2;
  v227 = a9;
  v220 = type metadata accessor for Date();
  v219 = *(v220 - 8);
  v10 = __chkstk_darwin(v220);
  v217 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v218 = &v176 - v12;
  v211 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v13 = __chkstk_darwin(v211);
  v202 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v199 = &v176 - v15;
  v16 = sub_10022C350(qword_100CA5418);
  v17 = __chkstk_darwin(v16 - 8);
  v195 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v197 = &v176 - v20;
  v21 = __chkstk_darwin(v19);
  v194 = &v176 - v22;
  v23 = __chkstk_darwin(v21);
  v189 = &v176 - v24;
  v25 = __chkstk_darwin(v23);
  v190 = &v176 - v26;
  __chkstk_darwin(v25);
  v188 = &v176 - v27;
  v201 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  v28 = __chkstk_darwin(v201);
  v196 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v191 = &v176 - v30;
  v221 = sub_10022C350(&qword_100CA53F8);
  v200 = *(v221 - 8);
  v31 = __chkstk_darwin(v221);
  v192 = &v176 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v193 = &v176 - v34;
  v35 = __chkstk_darwin(v33);
  v186 = &v176 - v36;
  v37 = __chkstk_darwin(v35);
  v187 = &v176 - v38;
  __chkstk_darwin(v37);
  v210 = &v176 - v39;
  v40 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v40 - 8);
  v184 = &v176 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for TemperatureScaleConfiguration();
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v180 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for AppConfiguration();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v44 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10022C350(&qword_100CAC1B0);
  v46 = __chkstk_darwin(v45 - 8);
  v185 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v181 = &v176 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v176 - v51;
  __chkstk_darwin(v50);
  v54 = &v176 - v53;
  v55 = type metadata accessor for ExtremaResult();
  v204 = *(v55 - 8);
  v56 = __chkstk_darwin(v55);
  v208 = &v176 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v207 = &v176 - v59;
  v60 = __chkstk_darwin(v58);
  v203 = &v176 - v61;
  __chkstk_darwin(v60);
  v209 = &v176 - v62;
  v63 = type metadata accessor for DetailCondition();
  v64 = *(v63 - 8);
  v65 = __chkstk_darwin(v63);
  v67 = &v176 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v69 = &v176 - v68;
  v70 = type metadata accessor for ConditionDetailInput.Input(0);
  v71 = *(v70 + 32);
  v72 = *(v64 + 16);
  v223 = a1;
  v198 = v71;
  v72(v69, a1 + v71, v63);
  v224 = v64;
  v73 = *(v64 + 88);
  v216 = v69;
  v225 = v63;
  result = v73(v69, v63);
  if (result == enum case for DetailCondition.conditions(_:))
  {
    sub_100095588();
    if (sub_100024D10(v54, 1, v55) == 1)
    {
      v52 = v54;
    }

    else
    {
      v112 = v55;
      v113 = v204;
      v114 = *(v204 + 32);
      v115 = v209;
      v114(v209, v54, v112);
      sub_100095588();
      if (sub_100024D10(v52, 1, v112) != 1)
      {
        v114(v203, v52, v112);
        sub_1000161C0((v213 + 536), *(v213 + 560));
        dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
        v116 = v180;
        AppConfiguration.temperatureScale.getter();
        (*(v178 + 8))(v44, v179);
        v117 = v184;
        TemperatureScaleConfiguration.gradient.getter();
        (*(v182 + 8))(v116, v183);
        v220 = sub_100100224(v117);
        CurrentWeather.temperature.getter();
        v118 = v181;
        sub_100095588();
        if (sub_100024D10(v118, 1, v112) == 1)
        {
          v119 = v114;
          (*(v113 + 16))(v207, v115, v112);
          v120 = sub_100024D10(v118, 1, v112);
          v121 = v221;
          v122 = v187;
          v123 = v186;
          v124 = v185;
          if (v120 != 1)
          {
            sub_1000180EC(v118, &qword_100CAC1B0);
          }
        }

        else
        {
          v119 = v114;
          v114(v207, v118, v112);
          v121 = v221;
          v122 = v187;
          v123 = v186;
          v124 = v185;
        }

        sub_100095588();
        v145 = sub_100024D10(v124, 1, v112);
        v177 = v112;
        if (v145 == 1)
        {
          (*(v113 + 16))(v208, v203, v112);
          if (sub_100024D10(v124, 1, v112) != 1)
          {
            sub_1000180EC(v124, &qword_100CAC1B0);
          }
        }

        else
        {
          v119(v208, v124, v112);
        }

        sub_10022C350(&qword_100CAECE8);
        v223 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
        v146 = (*(*(v223 - 8) + 80) + 32) & ~*(*(v223 - 8) + 80);
        v218 = *(*(v223 - 8) + 72);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_100A2D320;
        v219 = v147;
        *&v226 = v147 + v146;
        v217 = objc_opt_self();
        v148 = [v217 mainBundle];
        v238._object = 0x8000000100AC2710;
        v149._countAndFlagsBits = 0x7961646F54;
        v238._countAndFlagsBits = 0xD000000000000031;
        v149._object = 0xE500000000000000;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        v151 = NSLocalizedString(_:tableName:bundle:value:comment:)(v149, 0, v148, v150, v238);
        countAndFlagsBits = v151._countAndFlagsBits;
        object = v151._object;

        ExtremaResult.minValue.getter();
        ConditionUnits.temperature.getter();
        sub_10000C70C(0, &qword_100CA51B0);
        Measurement.init(value:unit:)();
        ExtremaResult.maxValue.getter();
        ConditionUnits.temperature.getter();
        Measurement.init(value:unit:)();
        v152 = v200;
        v153 = v188;
        (*(v200 + 16))(v188, v210, v121);
        sub_10001B350(v153, 0, 1, v121);
        Measurement<>.converted(rounded:)();
        Measurement<>.converted(rounded:)();
        v154 = v189;
        sub_100095588();
        if (sub_100024D10(v154, 1, v121) == 1)
        {
          sub_1000180EC(v153, qword_100CA5418);
          v155 = *(v152 + 8);
          v155(v123, v221);
          v155(v122, v221);
          v121 = v221;
          sub_1000180EC(v154, qword_100CA5418);
          v156 = 1;
          v157 = v190;
        }

        else
        {
          v157 = v190;
          Measurement<>.converted(rounded:)();
          sub_1000180EC(v153, qword_100CA5418);
          v155 = *(v152 + 8);
          v155(v123, v121);
          v155(v122, v121);
          v155(v154, v121);
          v156 = 0;
        }

        sub_10001B350(v157, v156, 1, v121);
        sub_100051BBC();
        sub_1003529E4();
        swift_storeEnumTagMultiPayload();
        v158 = v226;
        v159 = object;
        *v226 = countAndFlagsBits;
        *(v158 + 8) = v159;
        *(v158 + 16) = 0u;
        *(v158 + 32) = 0u;
        v129 = v223;
        sub_1003529E4();
        *(v158 + *(v129 + 24)) = 0;
        v160 = [v217 mainBundle];
        v239._object = 0x8000000100AC2750;
        v161._countAndFlagsBits = 0x6164726574736559;
        v161._object = 0xE900000000000079;
        v162._countAndFlagsBits = 0;
        v162._object = 0xE000000000000000;
        v239._countAndFlagsBits = 0xD00000000000002BLL;
        v163 = NSLocalizedString(_:tableName:bundle:value:comment:)(v161, 0, v160, v162, v239);
        v217 = v163._countAndFlagsBits;
        countAndFlagsBits = v163._object;

        ExtremaResult.minValue.getter();
        ConditionUnits.temperature.getter();
        v164 = v193;
        Measurement.init(value:unit:)();
        ExtremaResult.maxValue.getter();
        ConditionUnits.temperature.getter();
        v165 = v192;
        Measurement.init(value:unit:)();
        v166 = v194;
        sub_10001B350(v194, 1, 1, v221);
        Measurement<>.converted(rounded:)();
        Measurement<>.converted(rounded:)();
        v167 = v195;
        v168 = v221;
        sub_100095588();
        if (sub_100024D10(v167, 1, v168) == 1)
        {
          sub_1000180EC(v166, qword_100CA5418);
          v155(v165, v168);
          v155(v164, v168);
          v113 = v204;
          sub_1000180EC(v167, qword_100CA5418);
          v169 = 1;
          v170 = v197;
        }

        else
        {
          v170 = v197;
          Measurement<>.converted(rounded:)();
          sub_1000180EC(v166, qword_100CA5418);
          v155(v165, v168);
          v155(v164, v168);
          v155(v167, v168);
          v169 = 0;
        }

        sub_10001B350(v170, v169, 1, v168);
        v171 = &v218[v226];
        sub_100051BBC();
        sub_1003529E4();
        swift_storeEnumTagMultiPayload();
        v172 = countAndFlagsBits;
        *v171 = v217;
        *(v171 + 1) = v172;
        *(v171 + 1) = 0u;
        *(v171 + 2) = 0u;
        sub_1003529E4();
        v171[*(v129 + 24)] = 0;
        sub_10064C8F0(0, v219, v220, &v229);
        v173 = *(v113 + 8);
        v174 = v177;
        v173(v208, v177);
        v173(v207, v174);
        v155(v210, v168);
        v173(v203, v174);
        v173(v209, v174);
        v126 = v230;
        if (v230)
        {
          *&v175 = v233;
          v226 = v175;
          v127 = v231;
          v128 = v232;
          LOBYTE(v130) = v229;
          v228 = 0;
          result = (*(v224 + 8))(v216, v225);
          v132 = v226;
          v133 = 0;
          v131 = 0;
        }

        else
        {
          result = (*(v224 + 8))(v216, v225);
          v127 = 0;
          v128 = 0;
          v129 = 0;
          LOBYTE(v130) = 0;
          v131 = 0;
          v133 = -256;
          v132 = 0uLL;
        }

        goto LABEL_33;
      }

      (*(v113 + 8))(v115, v112);
    }

    sub_1000180EC(v52, &qword_100CAC1B0);
    result = (*(v224 + 8))(v216, v225);
    goto LABEL_32;
  }

  v75 = countAndFlagsBits;
  if (result != enum case for DetailCondition.humidity(_:))
  {
    if (result == enum case for DetailCondition.pressure(_:))
    {
      goto LABEL_32;
    }

    if (result != enum case for DetailCondition.precipitationTotal(_:) && result != enum case for DetailCondition.uvIndex(_:) && result != enum case for DetailCondition.visibility(_:) && result != enum case for DetailCondition.wind(_:))
    {
      goto LABEL_53;
    }
  }

  if ((countAndFlagsBits & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v79 = *(v70 + 28);
  v80 = v223;
  v81 = *(v223 + v79);
  v82 = *(v81 + 16);
  if (v82 <= countAndFlagsBits)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v83 = *(type metadata accessor for ConditionDetailChartInputs(0) - 8);
  v84 = v81 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v85 = *(v83 + 72);
  v86 = v84 + v85 * v75;
  v87 = v219;
  v88 = *(v219 + 16);
  v89 = v218;
  v90 = v220;
  v88(v218, v86, v220);
  if (v82 > v206)
  {
    v91 = v84 + v85 * v206;
    v92 = v217;
    v88(v217, v91, v90);
    v93 = v222;
    v94 = sub_10035128C(v80, v89, v226, object, v222);
    if (v95)
    {
      v97 = v95;
      v221 = v96;
      *&v226 = v94;
      v98 = sub_10035128C(v80, v92, v212, v205, v93);
      if (v99)
      {
        v101 = v98;
        v216 = v100;
        v222 = v99;
        sub_10022C350(&qword_100CAECE0);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_100A2D320;
        v103 = objc_opt_self();
        v104.super.isa = [v103 mainBundle];
        v236._object = 0x8000000100AC2710;
        v105._countAndFlagsBits = 0x7961646F54;
        v236._countAndFlagsBits = 0xD000000000000031;
        v105._object = 0xE500000000000000;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v236);

        v109 = v224;
        v108 = v225;
        (*(v224 + 104))(v67, enum case for DetailCondition.precipitationTotal(_:), v225);
        LOBYTE(v104.super.isa) = static DetailCondition.== infix(_:_:)();
        (*(v109 + 8))(v67, v108);
        v110 = v101;
        if (v104.super.isa)
        {
          v111 = static Color.teal.getter();
        }

        else
        {
          v111 = static Color.white.getter();
        }

        *(v102 + 32) = v107;
        *(v102 + 48) = v226;
        *(v102 + 56) = v97;
        *(v102 + 64) = v221;
        *(v102 + 72) = v111;
        *(v102 + 80) = 1;
        v135 = [v103 mainBundle];
        v237._object = 0x8000000100AC2750;
        v136._countAndFlagsBits = 0x6164726574736559;
        v136._object = 0xE900000000000079;
        v137._countAndFlagsBits = 0;
        v137._object = 0xE000000000000000;
        v237._countAndFlagsBits = 0xD00000000000002BLL;
        v138 = NSLocalizedString(_:tableName:bundle:value:comment:)(v136, 0, v135, v137, v237);

        v139 = [objc_opt_self() systemFillColor];
        v140 = Color.init(uiColor:)();
        *(v102 + 88) = v138;
        v141 = v222;
        *(v102 + 104) = v110;
        *(v102 + 112) = v141;
        *(v102 + 120) = v216;
        *(v102 + 128) = v140;
        *(v102 + 136) = 0;
        sub_10074663C(v102, &v229);
        v130 = v229;
        v126 = v230;
        v127 = v231;
        v128 = v232;
        v226 = v233;
        v129 = v234;
        v142 = v235;
        v143 = *(v219 + 8);
        v144 = v220;
        v143(v217, v220);
        result = (v143)(v218, v144);
        v132 = v226;
        v131 = v130 & 0xFFFFFFFFFFFFFF00;
        v133 = v142 | 0x100;
        goto LABEL_33;
      }
    }

    v125 = *(v87 + 8);
    v125(v92, v90);
    result = (v125)(v89, v90);
LABEL_32:
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    LOBYTE(v130) = 0;
    v131 = 0;
    v132 = 0uLL;
    v133 = -256;
LABEL_33:
    v134 = v227;
    *v227 = v131 | v130;
    v134[1] = v126;
    v134[2] = v127;
    v134[3] = v128;
    *(v134 + 2) = v132;
    v134[6] = v129;
    *(v134 + 28) = v133;
    return result;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100351098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DetailCondition();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == enum case for DetailCondition.conditions(_:))
  {
    sub_100035B30(v2 + 296, a2);
    return (*(v6 + 8))(v8, v5);
  }

  if (result == enum case for DetailCondition.humidity(_:))
  {
    v10 = v2 + 336;
    return sub_100035B30(v10, a2);
  }

  if (result == enum case for DetailCondition.pressure(_:) || result == enum case for DetailCondition.precipitationTotal(_:))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else if (result == enum case for DetailCondition.uvIndex(_:))
  {
    *(a2 + 24) = &type metadata for UVIndexComparisonTextBuilder;
    *(a2 + 32) = &off_100C7AD30;
  }

  else
  {
    if (result == enum case for DetailCondition.visibility(_:))
    {
      v10 = v2 + 376;
      return sub_100035B30(v10, a2);
    }

    if (result == enum case for DetailCondition.wind(_:))
    {
      v10 = v2 + 416;
      return sub_100035B30(v10, a2);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10035128C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v124 = a5;
  v121 = a4;
  v138 = a3;
  v147 = a2;
  v109 = type metadata accessor for WeatherFormatPlaceholder();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v7 - 8);
  v101 = &v97 - v8;
  v102 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v123 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10022C350(&qword_100CACCC8);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v122 = &v97 - v11;
  v117 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10022C350(&qword_100CAECF0);
  v118 = *(v119 - 8);
  v13 = __chkstk_darwin(v119);
  v113 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v114 = &v97 - v15;
  v16 = sub_10022C350(&qword_100CAC1B0);
  v17 = __chkstk_darwin(v16 - 8);
  v111 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v110 = &v97 - v20;
  __chkstk_darwin(v19);
  v128 = &v97 - v21;
  v144 = type metadata accessor for ExtremaResult();
  v136 = *(v144 - 8);
  v22 = __chkstk_darwin(v144);
  v120 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v97 = &v97 - v25;
  __chkstk_darwin(v24);
  v112 = &v97 - v26;
  v135 = type metadata accessor for Locale();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v137 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for RoundedPrecipitation();
  v133 = *(v28 - 8);
  v134 = v28;
  __chkstk_darwin(v28);
  v131 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10022C350(&qword_100CAB938);
  v129 = *(v130 - 8);
  v30 = __chkstk_darwin(v130);
  v126 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v127 = &v97 - v32;
  v33 = sub_10022C350(&qword_100CAB9B0);
  __chkstk_darwin(v33 - 8);
  v139 = &v97 - v34;
  v143 = type metadata accessor for DayWeather();
  v125 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Calendar();
  v141 = *(v36 - 8);
  v142 = v36;
  __chkstk_darwin(v36);
  v145 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TimeZone();
  v146 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CA7000);
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v97 - v43;
  v45 = type metadata accessor for DetailCondition();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ConditionDetailInput.Input(0);
  (*(v46 + 16))(v48, a1 + *(v49 + 32), v45);
  v50 = (*(v46 + 88))(v48, v45);
  if (v50 == enum case for DetailCondition.conditions(_:))
  {
    (*(v46 + 8))(v48, v45);
    return 0;
  }

  if (v50 == enum case for DetailCondition.humidity(_:))
  {
    type metadata accessor for WeatherData(0);
    WeatherDataModel.dailyForecast.getter();
    Location.timeZone.getter();
    Forecast<>.humidity(for:timeZone:)();
    v54 = v53;
    (*(v146 + 8))(v40, v38);
    (*(v42 + 8))(v44, v41);
    if ((v54 & 1) == 0)
    {
      sub_10000C70C(0, &qword_100CA72F8);
      v64 = static NSNumberFormatter.percent.getter();
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      v66 = [v64 stringFromNumber:isa];

      if (!v66)
      {
        return 0;
      }

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v51;
    }

    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000703C(v55, qword_100D90B68);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to get dayWeather when make comparison chart value", v58, 2u);
    }

    return 0;
  }

  if (v50 == enum case for DetailCondition.pressure(_:))
  {
    return 0;
  }

  if (v50 == enum case for DetailCondition.precipitationTotal(_:))
  {
    Location.timeZone.getter();
    v59 = v145;
    static Calendar.currentCalendar(with:)();
    v60 = (*(v146 + 8))(v40, v38);
    __chkstk_darwin(v60);
    v61 = v147;
    *(&v97 - 2) = v59;
    *(&v97 - 1) = v61;
    v62 = v139;
    sub_1001190BC();
    v63 = v143;
    if (sub_100024D10(v62, 1, v143) != 1)
    {
      v77 = v125;
      (*(v125 + 32))(v140, v62, v63);
      v78 = v127;
      DayWeather.precipitationAmount.getter();
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      v79 = v137;
      static Locale.current.getter();
      v80 = v131;
      Measurement<>.convertAndRoundPrecipitation(unitManager:locale:)();

      (*(v132 + 8))(v79, v135);
      v51 = RoundedPrecipitation.formattedString.getter();
      v81 = v126;
      RoundedPrecipitation.measurement.getter();
      v82 = v130;
      Measurement.value.getter();
      v83 = *(v129 + 8);
      v83(v81, v82);
      (*(v133 + 8))(v80, v134);
      v83(v78, v82);
      (*(v77 + 8))(v140, v63);
      (*(v141 + 8))(v145, v142);
      return v51;
    }

    sub_1000180EC(v62, &qword_100CAB9B0);
    (*(v141 + 8))(v59, v142);
    return 0;
  }

  if (v50 == enum case for DetailCondition.uvIndex(_:))
  {
    v67 = v128;
    sub_100095588();
    v68 = v144;
    if (sub_100024D10(v67, 1, v144) != 1)
    {
      v69 = v136;
      v70 = v112;
      (*(v136 + 32))(v112, v67, v68);
      ExtremaResult.maxValue.getter();
      v148 = round(v71);
      static Locale.autoupdatingCurrent.getter();
      sub_10014AB54();
      v72 = v113;
      FloatingPointFormatStyle.init(locale:)();
      v73 = v115;
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      v74 = v114;
      v75 = v119;
      FloatingPointFormatStyle.precision(_:)();
      (*(v116 + 8))(v73, v117);
      v76 = *(v118 + 8);
      v76(v72, v75);
      sub_100352A3C();
      BinaryFloatingPoint.formatted<A>(_:)();
      v76(v74, v75);
      (*(v69 + 8))(v70, v68);
      return v149;
    }

    goto LABEL_28;
  }

  v84 = v144;
  if (v50 == enum case for DetailCondition.visibility(_:))
  {
    v67 = v110;
    sub_100095588();
    if (sub_100024D10(v67, 1, v84) != 1)
    {
      v85 = v136;
      v86 = v97;
      (*(v136 + 32))(v97, v67, v84);
      ExtremaResult.maxValue.getter();
      sub_1000161C0((v98 + 176), *(v98 + 200));
      v51 = dispatch thunk of VisibilityPlatterStringBuilderType.makeVisibilityWithUnitString(visibility:units:)();
      (*(v85 + 8))(v86, v84);
      return v51;
    }

    goto LABEL_28;
  }

  if (v50 == enum case for DetailCondition.wind(_:))
  {
    v67 = v111;
    sub_100095588();
    if (sub_100024D10(v67, 1, v84) != 1)
    {
      (*(v136 + 32))(v120, v67, v84);
      ExtremaResult.maxValue.getter();
      ConditionUnits.windGust.getter();
      sub_10000C70C(0, &qword_100CAC428);
      Measurement.init(value:unit:)();
      v87 = v100;
      v88 = v99;
      v89 = v102;
      (*(v100 + 104))(v99, enum case for NSUnitSpeed.WeatherFormatUsage.windGust(_:), v102);
      v90 = v101;
      sub_10001B350(v101, 1, 1, v135);
      static Set<>.full.getter();
      static WeatherFormatStyle<>.weather(_:usage:locale:)();

      sub_1000180EC(v90, &qword_100CAA9F0);
      (*(v87 + 8))(v88, v89);
      v91 = v108;
      v92 = v107;
      v93 = v109;
      (*(v108 + 104))(v107, enum case for WeatherFormatPlaceholder.none(_:), v109);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_10035297C(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
      v94 = v104;
      v95 = v106;
      v96 = v122;
      v51 = Measurement.formatted<A>(_:placeholder:unitManager:)();

      (*(v91 + 8))(v92, v93);
      (*(v105 + 8))(v123, v95);
      (*(v103 + 8))(v96, v94);
      (*(v136 + 8))(v120, v84);
      return v51;
    }

LABEL_28:
    sub_1000180EC(v67, &qword_100CAC1B0);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10035270C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v4 = Calendar.isDate(_:inSameDayAs:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100352808()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);
  sub_100006F14(v0 + 216);
  sub_100006F14(v0 + 256);
  sub_100006F14(v0 + 296);
  sub_100006F14(v0 + 336);
  sub_100006F14(v0 + 376);
  sub_100006F14(v0 + 416);
  sub_100006F14(v0 + 456);
  sub_100006F14(v0 + 496);
  sub_100006F14(v0 + 536);
  return v0;
}

uint64_t sub_100352890()
{
  sub_100352808();

  return swift_deallocClassInstance();
}

unint64_t sub_100352908()
{
  result = qword_100CAECB8;
  if (!qword_100CAECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAECB8);
  }

  return result;
}

uint64_t sub_10035297C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003529E4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_100352A3C()
{
  result = qword_100CAECF8;
  if (!qword_100CAECF8)
  {
    sub_10022E824(&qword_100CAECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAECF8);
  }

  return result;
}

uint64_t sub_100352AC0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100352B18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100352B70(_WORD *a1, _WORD *a2)
{
  v4 = type metadata accessor for Location();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_10022C350(&qword_100CAEE78);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v18 = *a2;
  if (*a1 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  if (v18 == 2)
  {
    goto LABEL_48;
  }

  v19 = 0;
  v20 = *a2 ^ *a1;
  if ((v20 & 1) == 0 && ((v20 >> 8) & 1) == 0)
  {
LABEL_7:
    sub_1000B9728();
    if ((v21 & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_1000B9728();
    if ((v22 & 1) == 0)
    {
      goto LABEL_48;
    }

    v57 = v6;
    v58 = v4;
    v59 = type metadata accessor for NotificationSettingsInput();
    type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    sub_1000BA4DC(&qword_100CAEE80, 255, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v61 != v60)
    {
      goto LABEL_48;
    }

    v23 = v59;
    if ((sub_1000BA238(*(a1 + v59[8]), *(a2 + v59[8])) & 1) == 0)
    {
      goto LABEL_48;
    }

    v24 = v23[9];
    v25 = *(a2 + v24);
    v26 = PredictedLocationsAuthorizationState.rawValue.getter(*(a1 + v24));
    v28 = v27;
    v30 = v26 == PredictedLocationsAuthorizationState.rawValue.getter(v25) && v28 == v29;
    if (v30)
    {
    }

    else
    {
      v31 = sub_100019490();

      if ((v31 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v32 = v59[10];
    v33 = *(a2 + v32);
    v34 = LocationAuthorizationState.rawValue.getter(*(a1 + v32));
    v36 = v35;
    if (v34 == LocationAuthorizationState.rawValue.getter(v33) && v36 == v37)
    {
    }

    else
    {
      v39 = sub_100019490();

      if ((v39 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v40 = v59[11];
    v41 = *(v14 + 48);
    sub_100035AD0(a1 + v40, v17, &qword_100CA65D8);
    sub_100035AD0(a2 + v40, &v17[v41], &qword_100CA65D8);
    v42 = v58;
    if (sub_100024D10(v17, 1, v58) == 1)
    {
      if (sub_100024D10(&v17[v41], 1, v42) == 1)
      {
        sub_1000180EC(v17, &qword_100CA65D8);
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    sub_100035AD0(v17, v13, &qword_100CA65D8);
    if (sub_100024D10(&v17[v41], 1, v42) == 1)
    {
      (*(v57 + 8))(v13, v42);
LABEL_30:
      sub_1000180EC(v17, &qword_100CAEE78);
      goto LABEL_48;
    }

    v43 = v57;
    (*(v57 + 32))(v10, &v17[v41], v42);
    sub_1000BA4DC(&qword_100CA3A00, 255, &type metadata accessor for Location);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v45 = *(v43 + 8);
    v45(v10, v42);
    v45(v13, v42);
    sub_1000180EC(v17, &qword_100CA65D8);
    if (v44)
    {
LABEL_32:
      v46 = v59;
      sub_1000B9728();
      if (v47)
      {
        sub_10000826C();
        if (v30)
        {
          sub_10000826C();
          if (v30)
          {
            sub_10000826C();
            if (v30 && (sub_1001AEF68(*(a1 + v46[16]) | (*(a1 + v46[16] + 2) << 16), *(a2 + v46[16]) | (*(a2 + v46[16] + 2) << 16)) & 1) != 0)
            {
              v48 = v46[17];
              v49 = *(a1 + v48);
              v50 = *(a1 + v48 + 8);
              v51 = (a2 + v48);
              v52 = v49 == *v51 && v50 == v51[1];
              if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                sub_1000BCFBC();
                if (v53)
                {
                  sub_1000BD330();
                  if (v54)
                  {
                    sub_10000826C();
                    if (v30)
                    {
                      v19 = *(a1 + v59[19]) ^ *(a2 + v59[19]) ^ 1;
                      return v19 & 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_100353138@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v144 = a2;
  v3 = type metadata accessor for SavedLocation();
  v129[1] = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v156 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA65D8);
  v159 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v130 = v129 - v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  v158 = v129 - v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  v148 = v129 - v15;
  v147 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v146 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v145 = v19 - v18;
  type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v160 = v21;
  v161 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = type metadata accessor for Location();
  sub_1000037C4();
  v162 = v26;
  __chkstk_darwin(v27);
  sub_100003C38();
  v157 = v28 - v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  v134 = v129 - v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  v133 = v129 - v33;
  v34 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v34 - 8);
  sub_100003C38();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  v151 = v129 - v39;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  v43 = (v42 - v41);
  sub_1000BC784(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v42 - v41, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v136 = v37;
  if (EnumCaseMultiPayload == 1)
  {
    if (v43[1])
    {
      v45 = 256;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45 | *v43;
  }

  else
  {
    sub_1000DFE28(v43, type metadata accessor for ModalViewState);
    v46 = 2;
  }

  v139 = v46;
  v47 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v140 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v48 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v49 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v135 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  sub_100035AD0(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v151, &unk_100CE49F0);

  v142 = v48;

  v141 = v49;

  v51 = sub_10058D62C(v50);
  v143 = v47;
  v138 = v51;
  if ((v51 & 0xFE) == 2)
  {
    v52 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
    v54 = *(v52 + *(type metadata accessor for NotificationsOptInState() + 60));
    if (v54 != 1)
    {
      if (qword_100CA1F78 != -1)
      {
        swift_once();
      }

      sub_1000BA4DC(&qword_100CAEE88, v53, type metadata accessor for NotificationSettingsInputFactory);
      Configurable.setting<A>(_:)();
      v54 = v165 ^ 1;
    }

    v137 = v54;
  }

  else
  {
    v137 = 0;
  }

  v149 = a1;
  v150 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v55 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications + 8);
  v56 = *(v55 + 16);
  v152 = v9;
  v163 = v25;
  if (v56)
  {
    v165 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_100079CD4();
    v57 = v165;
    v155 = *(v160 + 16);
    v58 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v132 = v55;
    v59 = v55 + v58;
    v60 = *(v160 + 72);
    v61 = (v160 + 8);
    v153 = (v162 + 32);
    v154 = v60;
    v62 = v133;
    do
    {
      v63 = v161;
      v155(v24, v59, v161);
      NotificationSubscription.Location.location.getter();
      (*v61)(v24, v63);
      v165 = v57;
      v64 = v57[2];
      if (v64 >= v57[3] >> 1)
      {
        sub_100022934();
        v57 = v165;
      }

      v57[2] = v64 + 1;
      sub_10000C7B8();
      (*(v66 + 32))(v57 + v65 + *(v66 + 72) * v64, v62);
      v59 += v154;
      --v56;
    }

    while (v56);
    v153 = v57;

    v9 = v152;
    v67 = v163;
  }

  else
  {
    v67 = v25;
    v153 = _swiftEmptyArrayStorage;
  }

  v68 = *(v150 + 2);
  v69 = *(v68 + 2);
  if (v69)
  {
    v165 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_100079CD4();
    v70 = v165;
    v155 = *(v160 + 16);
    v71 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v133 = v68;
    v72 = &v68[v71];
    v154 = *(v160 + 72);
    v160 += 16;
    v73 = (v160 - 8);
    v74 = v134;
    do
    {
      v75 = v161;
      v155(v24, v72, v161);
      NotificationSubscription.Location.location.getter();
      (*v73)(v24, v75);
      v165 = v70;
      v76 = v70[2];
      if (v76 >= v70[3] >> 1)
      {
        sub_100022934();
        v70 = v165;
      }

      v70[2] = v76 + 1;
      sub_10000C7B8();
      (*(v78 + 32))(v70 + v77 + *(v78 + 72) * v76, v74);
      v72 += v154;
      --v69;
    }

    while (v69);
    v155 = v70;

    v9 = v152;
    v67 = v163;
  }

  else
  {
    v155 = _swiftEmptyArrayStorage;
  }

  v79 = type metadata accessor for NotificationsState();
  v80 = v150;
  (*(v146 + 16))(v145, &v150[*(v79 + 28)], v147);
  v81 = *v80;
  v82 = v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v83 = *(v82 + 2);
  LODWORD(v80) = *(v82 + 1);
  v84 = v136;
  sub_100035AD0(v151, v136, &unk_100CE49F0);
  v85 = type metadata accessor for CurrentLocation();
  v86 = sub_100024D10(v84, 1, v85);
  v154 = v79;
  LODWORD(v134) = v80;
  LODWORD(v133) = v83;
  v132 = v82;
  v131 = v81;
  if (v86 == 1)
  {
    sub_1000180EC(v84, &unk_100CE49F0);
    sub_10001B350(v148, 1, 1, v67);
  }

  else
  {
    CurrentLocation.location.getter();
    sub_1000DFE28(v84, &type metadata accessor for CurrentLocation);
  }

  v87 = v135;
  v88 = *(v87 + *(type metadata accessor for LocationsState() + 20));
  v89 = *(v88 + 16);
  v90 = _swiftEmptyArrayStorage;
  if (v89)
  {
    v164 = _swiftEmptyArrayStorage;

    sub_100014360();
    sub_1006A7C24();
    v90 = v164;
    sub_10000C7B8();
    v92 = v88 + v91;
    v94 = *(v93 + 72);
    v95 = v130;
    do
    {
      v96 = v156;
      sub_1000BC784(v92, v156, &type metadata accessor for SavedLocation);
      SavedLocation.location.getter();
      sub_1000DFE28(v96, &type metadata accessor for SavedLocation);
      v164 = v90;
      v97 = v90[2];
      if (v97 >= v90[3] >> 1)
      {
        sub_1006A7C24();
        v90 = v164;
      }

      v90[2] = v97 + 1;
      sub_10000C7B8();
      sub_1003541A8(v95, v90 + v98 + *(v99 + 72) * v97);
      v92 += v94;
      --v89;
    }

    while (v89);

    v67 = v163;
  }

  v100 = v90[2];
  if (v100)
  {
    v101 = v67;
    sub_10000C7B8();
    v103 = v90 + v102;
    v105 = *(v104 + 72);
    v160 = v162 + 32;
    v161 = v105;
    v106 = _swiftEmptyArrayStorage;
    do
    {
      v107 = v158;
      sub_100035AD0(v103, v158, &qword_100CA65D8);
      sub_1003541A8(v107, v9);
      if (sub_100024D10(v9, 1, v101) == 1)
      {
        sub_1000180EC(v9, &qword_100CA65D8);
      }

      else
      {
        v108 = *v160;
        (*v160)(v157, v9, v101);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10003C154();
          v106 = v112;
        }

        v109 = v106[2];
        if (v109 >= v106[3] >> 1)
        {
          sub_10003C154();
          v106 = v113;
        }

        v106[2] = v109 + 1;
        v101 = v163;
        sub_10000C7B8();
        v108(v106 + v110 + *(v111 + 72) * v109, v157, v101);
        v9 = v152;
      }

      v103 += v161;
      --v100;
    }

    while (v100);
  }

  else
  {

    v106 = _swiftEmptyArrayStorage;
  }

  sub_1000180EC(v151, &unk_100CE49F0);
  v114 = v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v115 = type metadata accessor for NotificationsOptInState();
  v116 = *(v114 + *(v115 + 64));
  v117 = *(v114 + *(v115 + 68));
  v118 = *(v132 + *(type metadata accessor for EnvironmentState() + 64));
  v119 = v150[*(v154 + 32)];
  v120 = v144;
  *v144 = v139;
  v121 = v155;
  *(v120 + 8) = v153;
  *(v120 + 16) = v121;
  v122 = type metadata accessor for NotificationSettingsInput();
  (*(v146 + 32))(v120 + v122[7], v145, v147);
  *(v120 + v122[8]) = v131;
  *(v120 + v122[9]) = v133;
  *(v120 + v122[10]) = v134;
  sub_1003541A8(v148, v120 + v122[11]);
  *(v120 + v122[12]) = v106;
  *(v120 + v122[13]) = v116;
  *(v120 + v122[14]) = v117;
  *(v120 + v122[15]) = v137 & 1;
  v123 = v120 + v122[16];
  v124 = v138;
  *(v123 + 2) = BYTE2(v138);
  *v123 = v124;
  v125 = (v120 + v122[17]);
  v126 = v143;
  *v125 = v140;
  v125[1] = v126;
  v127 = v141;
  v125[2] = v142;
  v125[3] = v127;
  *(v120 + v122[18]) = v118;
  *(v120 + v122[19]) = v119;
  return sub_10001B350(v120, 0, 1, v122);
}

uint64_t type metadata accessor for NotificationSettingsInput()
{
  result = qword_100CAEDF0;
  if (!qword_100CAEDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100353FA8()
{
  sub_1003540F8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100354148(319, &qword_100CAEE08, &type metadata accessor for Array);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_100354148(319, &qword_100CAEE10, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1003540F8()
{
  if (!qword_100CAEE00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CAEE00);
    }
  }
}

void sub_100354148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Location();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1003541A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100354288@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_100355208(v2, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v12, v8);
    v13 = *(v4 + 28);
    v14 = type metadata accessor for URL();
    sub_1000037E8();
    (*(v15 + 16))(a1, v8 + v13, v14);
    sub_10001E8DC();
    sub_1003552D0(v8, v16);
    v17 = a1;
    v18 = 0;
    v19 = v14;
  }

  else
  {
    v19 = type metadata accessor for URL();
    v17 = a1;
    v18 = 1;
  }

  return sub_10001B350(v17, v18, 1, v19);
}

uint64_t sub_1003543DC()
{
  v2 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100074814(v5);
  v6 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v1, v0);
    v6 = *(v0 + *(v2 + 24));

    sub_10001E8DC();
    sub_1003552D0(v0, v7);
  }

  return v6;
}

uint64_t sub_1003544C8()
{
  v2 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_100355208(v1, v6 - v5);
  v8 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v7, v0);
    v8 = *v0;

    sub_10001E8DC();
    sub_1003552D0(v0, v9);
  }

  return v8;
}

uint64_t sub_1003545AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  type metadata accessor for NewsArticleComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_10022C350(&qword_100CAEFF0);
  v17 = sub_100003810(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v26 - v19;
  v21 = *(v18 + 56);
  sub_100355208(a1, &v26 - v19);
  sub_100355208(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100355208(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *v15 ^ v20[v21];
      sub_100014370();
      v22 = v23 ^ 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1000180EC(v20, &qword_100CAEFF0);
    v22 = 0;
    return v22 & 1;
  }

  sub_100355208(v20, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001E8DC();
    sub_1003552D0(v12, v24);
    goto LABEL_7;
  }

  sub_10035526C(&v20[v21], v8);
  v22 = sub_1003548C0(v12, v8);
  sub_1003552D0(v8, type metadata accessor for NewsArticleComponentContentViewModel);
  sub_1003552D0(v12, type metadata accessor for NewsArticleComponentContentViewModel);
  sub_100014370();
  return v22 & 1;
}

void sub_1003547CC()
{
  v2 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100022958();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100074814(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10035526C(v1, v0);
    Hasher._combine(_:)(1uLL);
    sub_100354D80();
    sub_10001E8DC();
    sub_1003552D0(v0, v6);
  }

  else
  {
    v7 = *v1;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v7);
  }
}

uint64_t sub_1003548C0(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CB3AB0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  v19 = sub_10022C350(qword_100CAD4D0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v59 - v25;
  v27 = *a1 == *a2 && a1[1] == a2[1];
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v62 = v15;
  v63 = v23;
  v64 = v10;
  v28 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  v29 = v28[5];
  v30 = *(v19 + 48);
  sub_1000E594C(a1 + v29, v26);
  sub_1000E594C(a2 + v29, &v26[v30]);
  sub_100003A40(v26);
  if (v27)
  {
    sub_100003A40(&v26[v30]);
    if (v27)
    {
      v61 = v6;
      sub_1000180EC(v26, &qword_100CB3AB0);
      goto LABEL_19;
    }

LABEL_14:
    v32 = v26;
LABEL_15:
    sub_1000180EC(v32, qword_100CAD4D0);
    goto LABEL_16;
  }

  sub_1000E594C(v26, v18);
  sub_100003A40(&v26[v30]);
  if (v31)
  {
    (*(v6 + 8))(v18, v4);
    goto LABEL_14;
  }

  v35 = *(v6 + 32);
  v60 = v28;
  v36 = v64;
  v35(v64, &v26[v30], v4);
  sub_10001BEA8();
  sub_1003551C0(v37, v38);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = v6;
  v40 = *(v6 + 8);
  v41 = v36;
  v28 = v60;
  v40(v41, v4);
  v40(v18, v4);
  sub_1000180EC(v26, &qword_100CB3AB0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v42 = v28[6];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v43 == *v45 && v44 == v45[1];
  if (!v46 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v47 = v28;
  v48 = v28[8];
  v49 = *(v19 + 48);
  v50 = v63;
  sub_1000E594C(a1 + v48, v63);
  sub_1000E594C(a2 + v48, v50 + v49);
  sub_100003A40(v50);
  if (v27)
  {
    sub_100003A40(v50 + v49);
    if (v27)
    {
      sub_1000180EC(v50, &qword_100CB3AB0);
LABEL_35:
      v33 = *(a1 + v47[9]) ^ *(a2 + v47[9]) ^ 1;
      return v33 & 1;
    }

    goto LABEL_33;
  }

  v51 = v62;
  sub_1000E594C(v50, v62);
  sub_100003A40(v50 + v49);
  if (v52)
  {
    (*(v61 + 8))(v51, v4);
LABEL_33:
    v32 = v50;
    goto LABEL_15;
  }

  v53 = v61;
  v54 = v64;
  (*(v61 + 32))(v64, v50 + v49, v4);
  sub_10001BEA8();
  sub_1003551C0(v55, v56);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v53 + 8);
  v58(v54, v4);
  v58(v51, v4);
  sub_1000180EC(v50, &qword_100CB3AB0);
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

void sub_100354D80()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CB3AB0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  String.hash(into:)();
  v17 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  sub_1000E594C(v1 + v17[5], v16);
  if (sub_100024D10(v16, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v16, v2);
    Hasher._combine(_:)(1u);
    sub_10001BEA8();
    sub_1003551C0(v18, v19);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v2);
  }

  String.hash(into:)();
  sub_10001BEA8();
  sub_1003551C0(v20, v21);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000E594C(v1 + v17[8], v13);
  if (sub_100024D10(v13, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v13, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v2);
  }

  Hasher._combine(_:)(*(v1 + v17[9]));
}

Swift::Int sub_100355054(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100355134(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1003551C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100355208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035526C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticleComponentContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003552D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

Weather::LocationAuthorizationState_optional __swiftcall LocationAuthorizationState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43238, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

Weather::LocationAuthorizationState_optional sub_1003553B0@<W0>(Swift::String *a1@<X0>, Weather::LocationAuthorizationState_optional *a2@<X8>)
{
  result.value = LocationAuthorizationState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_1003553E0@<X0>(unint64_t *a1@<X8>)
{
  result = LocationAuthorizationState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LocationAuthorizationState.locationAccessData.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&off_100C4FA40 + a1);
  v4 = type metadata accessor for LocationAccessData();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

unint64_t sub_100355554()
{
  result = qword_100CAF010;
  if (!qword_100CAF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CAF010);
  }

  return result;
}

uint64_t sub_1003555A8@<X0>(_BYTE *a1@<X8>)
{
  result = static PredictedLocationsAuthorizationState.read(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsAuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationAuthorizationState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100355744()
{
  result = qword_100CAF028[0];
  if (!qword_100CAF028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CAF028);
  }

  return result;
}

uint64_t sub_100355798()
{
  StubLocalSearchRequestService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100355844(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003558E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___stateManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CAF450);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CAF450);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CAF458);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CAF450);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100355A30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___windowFocusManager;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &unk_100CB3D50);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &unk_100CB3D50);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&qword_100CAF430);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &unk_100CB3D50);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100355B80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___debugPresenter;
  swift_beginAccess();
  sub_1000955E0(v1 + v3, &v7, &qword_100CAF438);
  if (v8)
  {
    return sub_100013188(&v7, a1);
  }

  sub_1000180EC(&v7, &qword_100CAF438);
  sub_1000359CC(&v7);
  sub_1000161C0(&v7, v8);
  sub_10022C350(&unk_100CAF440);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_100013188(&v5, a1);
    sub_100006F14(&v7);
    sub_100035B30(a1, &v7);
    swift_beginAccess();
    sub_100035B94(&v7, v1 + v3, &qword_100CAF438);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100355CD0()
{
  v1 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___testManager);
LABEL_5:

    return v2;
  }

  v3 = v0;
  sub_1000359CC(v5);
  sub_1000161C0(v5, v5[3]);
  type metadata accessor for PerformanceTestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_100006F14(v5);
    *(v3 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id LocalSearchCompleterManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100355F30()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

uint64_t sub_100355F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, ObjectType, a7);
}

uint64_t sub_100355FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_100356078()
{
  v1 = v0;
  v19 = type metadata accessor for EndReason();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionEndData();
  sub_1000037C4();
  v20 = v7;
  __chkstk_darwin(v8);
  sub_100005888();
  sub_10000C70C(0, &qword_100CA2E40);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  sub_1000167F8();
  os_log(_:dso:log:type:_:)();

  v10 = OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager;
  if (!*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_sessionManager) || !*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager))
  {
    if (qword_100CA26C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000703C(v11, qword_100D90AC0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Terminating app without session managers", v14, 2u);
    }
  }

  sub_100074834();
  sub_1000161C0(v21, v22);
  sub_10022C350(&unk_100CAF460);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_100006F14(v21);
  sub_1006ACB80();
  if (*(v1 + v10))
  {

    SessionManager.tracker.getter();

    (*(v3 + 104))(v6, enum case for EndReason.forceQuit(_:), v19);
    SessionEndData.init(endReason:)();
    sub_100015F40(&qword_100CAE2B8, 255, &type metadata accessor for SessionEndData);
    Tracker.push<A>(data:traits:file:line:)();

    v16 = sub_100003984();
    v17(v16);
  }

  sub_100074834();
  sub_1000161C0(v21, v22);
  sub_1000038D8();
  type metadata accessor for LazyEventProcessor();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!result)
  {
    goto LABEL_16;
  }

  LazyEventProcessor.resolve()();

  sub_100006F14(v21);
  if (*(v1 + OBJC_IVAR____TtC7Weather11AppDelegate_appSessionManager))
  {

    AppSessionManager.appSessionDidTerminate(timeout:)(1.0);
  }
}

uint64_t sub_100356530()
{
  swift_getObjectType();

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_100356588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return Updatable.reset<A>(setting:)(a1, ObjectType, a5);
}

uint64_t sub_1003565D8()
{
  swift_getObjectType();

  return Updatable.apply(preset:)();
}

uint64_t sub_100356628@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContainerScope();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_100005888();
  sub_100015EDC();
  v3 = sub_1000194B4();
  v4(v3);
  v5 = ContainerManager.container(for:)();

  v6 = sub_100003984();
  v7(v6);
  result = type metadata accessor for Container();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_1003567D4(uint64_t a1)
{
  sub_100355A30(v5);
  v2 = v6;
  v3 = v7;
  sub_1000161C0(v5, v6);
  (*(v3 + 8))(a1, v2, v3);
  return sub_100006F14(v5);
}

uint64_t sub_100356894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100355CD0();
  LOBYTE(a3) = sub_1009AA050(a2, a3);

  return a3 & 1;
}

void sub_100356990(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "buildMenuWithBuilder:", a1);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA24E0 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v8 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      sub_10000C70C(0, &unk_100CAF420);
      v5 = [a1 system];
      v6 = [objc_opt_self() mainSystem];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        sub_100003F38();
        if ((static Solarium.isEnabled.getter() & 1) == 0)
        {
          sub_100003F38();
        }

        sub_100003F38();
        sub_100003F38();
      }
    }
  }
}

void sub_100356C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  [a5 resetLocationAuthorizationForBundleId:v6 orBundlePath:v7];
}

uint64_t sub_100356CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100042FB0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100013188(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100356DCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100356E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100356E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100356EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100356F34(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v2 + 32) ^ *(v1 + 32)) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v2 + 48);
  v9 = *(v1 + 48);
  if (v8)
  {
    if (v9)
    {
      v10 = *(v2 + 40) == *(v1 + 40) && v8 == v9;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v9;
}

uint64_t sub_100356FE0(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(v2 + 24);
  v7 = *(v1 + 24);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *(v2 + 16) == *(v1 + 16) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v7)
  {
LABEL_17:
    v9 = 0;
    return v9 & 1;
  }

  if (!sub_100356F34(v2 + 32))
  {
    goto LABEL_17;
  }

  v9 = *(v2 + 88) ^ *(v1 + 88) ^ 1;
  return v9 & 1;
}

uint64_t sub_10035707C(uint64_t a1)
{
  sub_100008298(a1);
  v5 = v5 && v3 == v4;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 16) == *(v1 + 16) ? (v6 = *(v2 + 24) == *(v1 + 24)) : (v6 = 0), (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 32) == *(v1 + 32) ? (v7 = *(v2 + 40) == *(v1 + 40)) : (v7 = 0), (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v2 + 48) == *(v1 + 48) ? (v8 = *(v2 + 56) == *(v1 + 56)) : (v8 = 0), (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && sub_100356F34(v2 + 64)))))
  {
    v9 = *(v2 + 120) ^ *(v1 + 120) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100357140(uint64_t a1, uint64_t a2)
{
  if ((static WeatherDescription.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for LocationComponentHeaderViewModel.Description(0), v5 = a1 + *(v4 + 20), v6 = *(v5 + 32), v11[1] = *(v5 + 16), v11[2] = v6, v12 = *(v5 + 48), v11[0] = *v5, v7 = (a2 + *(v4 + 20)), v16 = *(v7 + 6), v8 = v7[2], v14 = v7[1], v15 = v8, v13 = *v7, sub_100356F34(v11)))
  {
    v9 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1003571F8()
{
  sub_10000C778();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v11 = *(v1 + 40);
  v10 = *(v1 + 48);
  v12 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = v2 == v7 && v3 == v8;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v4 ^ v9) & 1) == 0 && v5 && v10 && (v6 != v11 || v5 != v10))
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  sub_10000536C();
}

uint64_t sub_1003572E4()
{
  v1 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v4 = v3 - v2;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_1001CCDB8(v0, v7 - v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = *v8;

      goto LABEL_5;
    case 2u:
      memcpy(__dst, v8, 0x79uLL);
      v9 = __dst[0];

      sub_10035802C(__dst);
      break;
    case 3u:
      sub_100357FC8(v8, v4);
      v9 = WeatherDescription.string.getter();
      sub_10001E8F4();
      sub_100188358(v4, v10);
      break;
    default:
      v9 = *v8;

LABEL_5:

      break;
  }

  return v9;
}

void sub_100357470()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = (v11 - v10);
  sub_1001CCDB8(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = v12[4];
      v14 = v12[5];
      v15 = v12[6];
      v16 = v12[7];
      v17 = *(v12 + 64);
      v18 = v12[9];
      v19 = v12[10];

      break;
    case 2u:
      memcpy(v22, v12, 0x79uLL);
      v13 = v22[8];
      v14 = v22[9];
      v15 = v22[10];
      v16 = v22[11];
      v17 = LOBYTE(v22[12]);
      v18 = v22[13];
      v19 = v22[14];

      sub_10035802C(v22);
      break;
    case 3u:
      sub_100357FC8(v12, v8);
      v20 = v8 + *(v4 + 20);
      v13 = *v20;
      v14 = *(v20 + 8);
      v15 = *(v20 + 16);
      v16 = *(v20 + 24);
      v17 = *(v20 + 32);
      v18 = *(v20 + 40);
      v19 = *(v20 + 48);

      sub_10001E8F4();
      sub_100188358(v8, v21);
      break;
    case 4u:
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      v17 = *(v12 + 32);
      v18 = v12[5];
      v19 = v12[6];
      break;
    default:
      sub_100188358(v12, type metadata accessor for LocationComponentHeaderViewModel);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      break;
  }

  *v3 = v13;
  v3[1] = v14;
  v3[2] = v15;
  v3[3] = v16;
  v3[4] = v17;
  v3[5] = v18;
  v3[6] = v19;
  sub_10000536C();
}