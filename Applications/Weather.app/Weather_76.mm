uint64_t sub_1008198F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100819914, 0, 0);
}

uint64_t sub_100819914()
{
  sub_100008188();
  v3 = v2[3];
  sub_10003C8D0(v2[2]);
  v4 = *(v3 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v5 = *(v4 + *(type metadata accessor for LocationsState() + 20));
  v2[4] = v5;

  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1008199F8;

  return dispatch thunk of SavedLocationsManagerType.updateSavedLocationTimeZones(_:)(v5, v0, v1);
}

uint64_t sub_1008199F8()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  sub_100003B14();

  return v3();
}

uint64_t sub_100819AF4(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Location.Identifier();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedLocation();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState();
  __chkstk_darwin(active - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 56);
  sub_100050ED0(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v18, type metadata accessor for ViewState);
  sub_100050ED0(&v18[v16[5]], v15, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004FBA0(v18, type metadata accessor for ViewState);
    sub_10004FBA0(v15, type metadata accessor for ViewState.SecondaryViewState);
    return 0;
  }

  v20 = v19;
  v21 = *v15;
  if (*&v18[v16[9] + 8] == 1)
  {
    v22 = [objc_opt_self() currentDevice];
    [v22 userInterfaceIdiom];

    LOBYTE(v22) = v18[v16[7]];
    sub_10004FBA0(v18, type metadata accessor for ViewState);
    if ((v22 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    sub_10004FBA0(v18, type metadata accessor for ViewState);
  }

  v38 = a2;
  sub_100050ED0(v21 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v12, type metadata accessor for LocationViewerActiveLocationState);

  v23 = sub_1000E0924();
  v25 = v24;
  sub_10004FBA0(v12, type metadata accessor for LocationViewerActiveLocationState);
  v26 = v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v27 = *(v26 + *(type metadata accessor for LocationsState() + 20));
  v28 = *(v27 + 16);
  v29 = (v4 + 8);

  for (i = 0; ; ++i)
  {
    if (v28 == i)
    {

      return 0;
    }

    if (i >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    sub_100050ED0(v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i, v9, &type metadata accessor for SavedLocation);
    SavedLocation.identifier.getter();
    v32 = Location.Identifier.id.getter();
    v34 = v33;
    (*v29)(v6, v40);
    if (v32 == v23 && v34 == v25)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = sub_10004FBA0(v9, &type metadata accessor for SavedLocation);
    if (v36)
    {
      goto LABEL_18;
    }
  }

  sub_10004FBA0(v9, &type metadata accessor for SavedLocation);
LABEL_18:

  return v38 == i;
}

uint64_t sub_10081A018(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for SavedLocation();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v46 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  v17 = type metadata accessor for CurrentLocation();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = *(a1 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v25 = *(v24 + *(type metadata accessor for LocationsState() + 20));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v26 - 1;
    if (v27 >= v49)
    {
      v27 = v49;
    }

    v28 = *(v48 + 80);
    v29 = v50;
    sub_100050ED0(v25 + ((v28 + 32) & ~v28) + *(v48 + 72) * (v27 & ~(v27 >> 63)), v50, &type metadata accessor for SavedLocation);
    sub_100040690();
    v30 = static OS_dispatch_queue.main.getter();
    v31 = v47;
    sub_100050ED0(v29, v47, &type metadata accessor for SavedLocation);
    v32 = swift_allocObject();
    *(v32 + 16) = v55;
    sub_10016DB58(v31, v32 + ((v28 + 24) & ~v28), &type metadata accessor for SavedLocation);
    v60 = sub_10081B250;
    v61 = v32;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000742F0;
    v59 = &unk_100C6F528;
    v33 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100074390();
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v34 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v52 + 8))(v10, v34);
    (*(v53 + 8))(v13, v54);
    v35 = &type metadata accessor for SavedLocation;
    v36 = v29;
  }

  else
  {
    v37 = v55;
    v50 = v10;
    sub_100035AD0(v24, v16, &unk_100CE49F0);
    if (sub_100024D10(v16, 1, v17) == 1)
    {
      return sub_1000180EC(v16, &unk_100CE49F0);
    }

    v39 = v23;
    sub_10016DB58(v16, v23, &type metadata accessor for CurrentLocation);
    sub_100040690();
    v49 = static OS_dispatch_queue.main.getter();
    sub_100050ED0(v23, v20, &type metadata accessor for CurrentLocation);
    v40 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    sub_10016DB58(v20, v41 + v40, &type metadata accessor for CurrentLocation);
    v60 = sub_10081B27C;
    v61 = v41;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000742F0;
    v59 = &unk_100C6F578;
    v42 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100074390();
    sub_10022C350(&qword_100CB4680);
    sub_1000743E8();
    v44 = v50;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v45 = v49;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v52 + 8))(v44, v43);
    (*(v53 + 8))(v13, v54);
    v35 = &type metadata accessor for CurrentLocation;
    v36 = v39;
  }

  return sub_10004FBA0(v36, v35);
}

uint64_t sub_10081A734()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationModel.identifier.getter();
  v4 = static Location.Identifier.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void sub_10081A820(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = *(a1 + 24);
    sub_10022C350(&qword_100CA3508);
    v8 = *(type metadata accessor for MainAction() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100A2D320;

    CurrentLocation.identifier.getter();
    type metadata accessor for ListViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = v11 + v10 + v9;
    v13 = *(sub_10022C350(&qword_100CBBE20) + 48);
    sub_10022C350(&qword_100CA38C0);
    sub_100050ED0(a2, v12, &type metadata accessor for CurrentLocation);
    v14 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v6, 1, 1, v14);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v15 = enum case for LocationModel.current(_:);
    v16 = type metadata accessor for LocationModel();
    (*(*(v16 - 8) + 104))(v12, v15, v16);
    *(v12 + v13) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_100035AD0(v21, v18, &unk_100CD81B0);
    v19 = v11;
    v20 = 0;
    sub_10004F1B0(v18, v7);
    sub_10002B028(v7);
    sub_1000180EC(v18, &qword_100CA3510);
    sub_1000180EC(v21, &unk_100CD81B0);
  }
}

void sub_10081AB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = *(a1 + 16);
  if (v7)
  {
    v17 = *(a1 + 24);
    sub_10022C350(&qword_100CA3508);
    v8 = *(type metadata accessor for MainAction() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100A2D320;

    SavedLocation.identifier.getter();
    type metadata accessor for ListViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = v11 + v10 + v9;
    v13 = *(sub_10022C350(&qword_100CBBE20) + 48);
    sub_10022C350(&qword_100CA38B8);
    sub_100050ED0(a2, v12, &type metadata accessor for SavedLocation);
    v14 = type metadata accessor for LocationOfInterest();
    sub_10001B350(v6, 1, 1, v14);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v15 = enum case for LocationModel.saved(_:);
    v16 = type metadata accessor for LocationModel();
    (*(*(v16 - 8) + 104))(v12, v15, v16);
    *(v12 + v13) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_100035AD0(v21, v18, &unk_100CD81B0);
    v19 = v11;
    v20 = 0;
    sub_10004F1B0(v18, v7);
    sub_10002B028(v7);
    sub_1000180EC(v18, &qword_100CA3510);
    sub_1000180EC(v21, &unk_100CD81B0);
  }
}

uint64_t sub_10081AE48()
{
  sub_10002B028(*(v0 + 16));
  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  return v0;
}

uint64_t sub_10081AE78()
{
  sub_10081AE48();

  return swift_deallocClassInstance();
}

uint64_t sub_10081AEAC()
{
  sub_100008188();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v1[1] = sub_1000D8400;
  sub_1000066D8();
  sub_100008B5C();

  return sub_1008198F4(v3, v4, v5, v6, v7);
}

uint64_t sub_10081AF54()
{
  sub_100008188();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100007F54(v3);
  *v4 = v5;
  v4[1] = sub_1000D8400;
  sub_1000066D8();
  sub_100008B5C();

  return sub_100818AF8(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_10081B004()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10081B050()
{
  sub_100008188();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = sub_100007F54(v2);
  *v3 = v4;
  v3[1] = sub_10006D0B0;
  sub_1000066D8();
  sub_100008B5C();

  return sub_100818A2C(v5, v6, v7, v8, v1);
}

uint64_t sub_10081B0F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Location() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000D8400;

  return sub_10081837C(a1, v8, v9, v10, v11, v1 + v6, v1 + v7);
}

uint64_t sub_10081B2A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_10081B330()
{
  v1 = *v0;
  v2 = *(v0 + *(type metadata accessor for ViewState(0) + 36) + 8);

  if (v2 == 1 && sub_1000B010C())
  {

    return 0;
  }

  return v1;
}

uint64_t sub_10081B398()
{
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10000C790();
  v3 = type metadata accessor for ViewState(0);
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100075088();
    sub_1000B005C(v0, v4);
    return 0;
  }

  v5 = *v0;
  if (*(v1 + *(v3 + 36) + 8) == 1 && (sub_1000B010C() & 1) == 0)
  {

    return 0;
  }

  return v5;
}

void sub_10081B470()
{
  sub_10000C778();
  v72 = v3;
  v73 = v4;
  v67 = v5;
  v68 = v6;
  v63 = v7;
  v64 = v8;
  v70 = v9;
  v11 = v10;
  v13 = v12;
  v14 = sub_10022C350(&qword_100CA65F0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_10002C698();
  v69 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v71 = v17;
  v18 = sub_10022C350(&qword_100CA65F8);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  sub_100003CB4();
  v65 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v75 = v21;
  v22 = sub_10022C350(&qword_100CA6600);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003C38();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_10000E70C();
  v29 = v28;
  v30 = sub_10022C350(&qword_100CA6608);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v63 - v32;
  v34 = type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v74 = v36;
  if (v11)
  {
    v66 = v11;
  }

  else
  {
    v66 = *v0;
  }

  sub_1000302D8(v63, v33, &qword_100CA6608);
  v37 = sub_100007FC4();
  sub_1000038B4(v37, v38, v34);
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_10001F968();
    v44 = v0;
    sub_1000A078C();
    v40 = sub_100007FC4();
    v42 = sub_100024D10(v40, v41, v34);

    v43 = v72;
    if (v42 != 1)
    {
      sub_1000180EC(v33, &qword_100CA6608);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();

    v43 = v72;
    v44 = v0;
  }

  v45 = v70;
  if (v70 == 2)
  {
    v45 = *(v44 + *(type metadata accessor for ViewState(0) + 24));
  }

  if (v43 == 2)
  {
    v44 = v0;
    v43 = sub_1000B010C();
  }

  sub_1000302D8(v64, v26, &qword_100CA6600);
  v46 = type metadata accessor for SearchViewState(0);
  v47 = sub_100016298();
  sub_1000038B4(v47, v48, v46);
  if (v39)
  {
    v49 = type metadata accessor for ViewState(0);
    sub_1000302D8(v44 + *(v49 + 32), v29, &qword_100CA6600);
    v50 = sub_100016298();
    sub_1000038B4(v50, v51, v46);
    v55 = v69;
    if (!v39)
    {
      sub_1000180EC(v26, &qword_100CA6600);
    }
  }

  else
  {
    sub_100019FD0();
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v52, v53, v54, v46);
    v55 = v69;
  }

  sub_1000302D8(v67, v1, &qword_100CA65F8);
  v56 = sub_1000182B8();
  v57 = v65;
  sub_1000038B4(v56, v58, v65);
  v59 = v73;
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_100009084();
    sub_1000A078C();
    v60 = sub_1000182B8();
    sub_1000038B4(v60, v61, v57);
    if (!v39)
    {
      sub_1000180EC(v1, &qword_100CA65F8);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  sub_1000302D8(v68, v2, &qword_100CA65F0);
  sub_1000038B4(v2, 1, v55);
  if (v39)
  {
    type metadata accessor for ViewState(0);
    sub_100004BD8();
    sub_1000A078C();
    sub_1000038B4(v2, 1, v55);
    if (!v39)
    {
      sub_1000180EC(v2, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  if (v59 == 2)
  {
    v59 = *(v44 + *(type metadata accessor for ViewState(0) + 44));
  }

  *v13 = v66;
  v62 = type metadata accessor for ViewState(0);
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v13 + v62[6]) = v45 & 1;
  *(v13 + v62[7]) = v43 & 1;
  sub_10011C0F0(v29, v13 + v62[8], &qword_100CA6600);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();
  *(v13 + v62[11]) = v59 & 1;
  sub_10000536C();
}

uint64_t sub_10081BA14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for ViewState(0);
  sub_10001F968();
  sub_1000A078C();
  sub_10000C918();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    v6 = 0;
  }

  else
  {
    sub_100075088();
    sub_1000B005C(v5, v7);
    v6 = 1;
  }

  v8 = type metadata accessor for VFXTestViewState();
  return sub_10001B350(a1, v6, 1, v8);
}

void sub_10081BAEC()
{
  sub_10000C778();
  v111 = v1;
  v116 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v110 = v3;
  sub_1000038CC();
  v101 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v109 = v5;
  v6 = sub_1000038CC();
  v102 = type metadata accessor for ViewState.SecondaryViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v114 = v8;
  v9 = sub_10022C350(&qword_100CA65F0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100003848();
  v108 = v11;
  sub_10000386C();
  __chkstk_darwin(v12);
  sub_10000E70C();
  v115 = v13;
  v14 = sub_10022C350(&qword_100CA65F8);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  v105 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v113 = v18;
  v19 = sub_10022C350(&qword_100CA6600);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  v103 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  v107 = &v93 - v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v112 = v25;
  v26 = sub_10022C350(&qword_100CA6608);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v93 - v32;
  v104 = v0;
  v34 = *v0;
  v98 = *(*v0 + 16);
  v35 = *(v34 + 24);
  v96 = *(v34 + 25);
  v97 = v35;
  v95 = *(v34 + 26);
  v36 = *(v34 + 40);
  v106 = *(v34 + 32);
  v37 = *(v34 + 56);
  v94 = *(v34 + 48);
  v38 = *(v34 + 72);
  v39 = *(v34 + 80);
  v40 = *(v34 + 88);
  v41 = *(v34 + 89);
  v42 = *(v34 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v99 = v39;
  v92 = v38;
  v100 = v37;
  v91 = v37;
  v43 = v36;
  v44 = v101;
  v45 = v102;
  v46 = sub_100042DA8(v98, v97, v96, v95, v42, v106, v43, v94, v91, 0, v92, v39, v40, v41);
  sub_100003934();
  sub_10001B350(v47, v48, v49, v45);
  v50 = type metadata accessor for SearchViewState(0);
  sub_100003934();
  sub_10001B350(v51, v52, v53, v50);
  sub_100003934();
  sub_10001B350(v54, v55, v56, v44);
  sub_100003934();
  sub_10001B350(v57, v58, v59, v60);
  sub_1000302D8(v33, v30, &qword_100CA6608);
  v61 = v30;
  v62 = sub_1000182B8();
  sub_1000038B4(v62, v63, v45);
  v106 = v46;
  v64 = v44;
  if (v65)
  {
    type metadata accessor for ViewState(0);
    sub_10001F968();
    v66 = v104;
    sub_1000A078C();
    v67 = sub_100024D10(v61, 1, v45);

    v68 = v66;
    if (v67 != 1)
    {
      sub_1000180EC(v61, &qword_100CA6608);
    }
  }

  else
  {
    sub_10001CE5C();
    sub_1000AFEF8();

    v68 = v104;
  }

  v69 = type metadata accessor for ViewState(0);
  LODWORD(v104) = *(v68 + v69[6]);
  LODWORD(v102) = sub_1000B010C();

  sub_1000180EC(v33, &qword_100CA6608);
  v70 = v103;
  sub_10011C0F0(v112, v103, &qword_100CA6600);
  v71 = sub_10000C834();
  sub_1000038B4(v71, v72, v50);
  v73 = v108;
  if (v65)
  {
    v76 = v107;
    sub_1000302D8(v68 + v69[8], v107, &qword_100CA6600);
    v74 = sub_10000C834();
    sub_1000038B4(v74, v75, v50);
    if (!v65)
    {
      sub_1000180EC(v70, &qword_100CA6600);
    }
  }

  else
  {
    sub_100019FD0();
    v76 = v107;
    sub_1000AFEF8();
    sub_10000E7B0();
    sub_10001B350(v77, v78, v79, v50);
  }

  v80 = v105;
  sub_10011C0F0(v113, v105, &qword_100CA65F8);
  v81 = sub_10000C834();
  sub_1000038B4(v81, v82, v64);
  if (v65)
  {
    sub_100009084();
    sub_1000A078C();
    v83 = sub_10000C834();
    sub_1000038B4(v83, v84, v64);
    if (!v65)
    {
      sub_1000180EC(v80, &qword_100CA65F8);
    }
  }

  else
  {
    sub_10000686C();
    sub_1000AFEF8();
  }

  sub_10011C0F0(v115, v73, &qword_100CA65F0);
  v85 = sub_100016298();
  sub_1000038B4(v85, v86, v116);
  if (v65)
  {
    sub_100004BD8();
    sub_1000A078C();
    v87 = sub_100016298();
    sub_1000038B4(v87, v88, v116);
    if (!v65)
    {
      sub_1000180EC(v73, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100010CB8();
    sub_1000AFEF8();
  }

  v89 = *(v68 + v69[11]);
  v90 = v111;
  *v111 = v106;
  sub_10001CE5C();
  sub_1000AFEF8();
  *(v90 + v69[6]) = v104;
  *(v90 + v69[7]) = v102;
  sub_10011C0F0(v76, v90 + v69[8], &qword_100CA6600);
  sub_10000686C();
  sub_1000AFEF8();
  sub_100010CB8();
  sub_1000AFEF8();

  *(v90 + v69[11]) = v89;
  sub_10000536C();
}

uint64_t sub_10081C1F4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ViewState(0);
  v4 = (a1 + v3[8]);
  v5 = type metadata accessor for SearchViewState(0);
  type metadata accessor for SearchViewState.ViewState(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Location();
  sub_100003934();
  sub_10001B350(v6, v7, v8, v9);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v4 + *(v5 + 24)) = 0;
  sub_10000E7B0();
  sub_10001B350(v10, v11, v12, v5);
  v13 = *v1;
  sub_10001F968();
  sub_1000A078C();
  v14 = *(v1 + v3[6]);

  LOBYTE(v5) = sub_1000B010C();
  sub_100009084();
  sub_1000A078C();
  sub_100004BD8();
  result = sub_1000A078C();
  v16 = *(v1 + v3[11]);
  *a1 = v13;
  *(a1 + v3[6]) = v14;
  *(a1 + v3[7]) = v5;
  *(a1 + v3[11]) = v16;
  return result;
}

uint64_t sub_10081C318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10081C3E8(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_10081C42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10081C318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10081C454(uint64_t a1)
{
  v2 = sub_100821860();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C490(uint64_t a1)
{
  v2 = sub_100821860();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C4CC(uint64_t a1)
{
  v2 = sub_100821908();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C508(uint64_t a1)
{
  v2 = sub_100821908();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C544(uint64_t a1)
{
  v2 = sub_1008218B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081C580(uint64_t a1)
{
  v2 = sub_1008218B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081C5BC()
{
  sub_100003B38();
  type metadata accessor for ListViewState._Storage();
  return sub_1000BAC0C() & 1;
}

void sub_10081C60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E8AC();
  v13 = v12;
  type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_1000038CC();
  type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v16 = sub_10022C350(&qword_100CA6600);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  sub_100003CB4();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  sub_10022C350(&qword_100CDC290);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_10001634C();
  v36 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = v21;
  v37 = v13;
  sub_1000161C0(v13, v13[3]);
  sub_10082111C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100006F14(v13);
  }

  else
  {
    sub_100821170();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v22 = a10;
    sub_100041BA0();
    sub_100820ECC(v23, v24);
    sub_10006A87C();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001CE5C();
    sub_1000AFEF8();
    sub_1008211C4();
    sub_10002170C();
    *(v22 + v36[6]) = 1;
    sub_100821218();
    sub_10002170C();
    *(v22 + v36[7]) = 1;
    v25 = type metadata accessor for SearchViewState(0);
    sub_100820ECC(&qword_100CDC2C0, type metadata accessor for SearchViewState);
    sub_10006A87C();
    sub_10003BC00();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000E7B0();
    sub_10001B350(v26, v27, v28, v25);
    sub_10011C0F0(v11, v22 + v36[8], &qword_100CA6600);
    sub_1000372E0();
    sub_100820ECC(v29, v30);
    sub_10006A87C();
    sub_10002170C();
    sub_10000686C();
    sub_1000AFEF8();
    sub_100030638();
    sub_100820ECC(v31, v32);
    sub_10006A87C();
    sub_10002170C();
    sub_100010CB8();
    sub_1000AFEF8();
    sub_10003BC00();
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = sub_10000EE24();
    v35(v34);
    *(v22 + v36[11]) = v33 & 1;
    sub_1000A078C();
    sub_100006F14(v37);
    sub_1000B005C(v22, type metadata accessor for ViewState);
  }

  sub_10000C8F4();
}

void sub_10081CCB0()
{
  sub_100032568();
  v2 = v1;
  sub_10022C350(&qword_100CDC2D8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CF8();
  sub_10000E890(v2);
  sub_10082111C();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10082126C();
  sub_100005670();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for ViewState(0);
    type metadata accessor for ViewState.SecondaryViewState(0);
    sub_100041BA0();
    sub_100820ECC(v4, v5);
    sub_10003C8F4();
    sub_1008212C0();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000B010C();
    sub_100821314();
    sub_100005670();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10022C350(&qword_100CA6600);
    sub_100821368();
    sub_10003C8F4();
    type metadata accessor for DisplayMetrics();
    sub_1000372E0();
    sub_100820ECC(v6, v7);
    sub_10003C8F4();
    type metadata accessor for WeatherMapPresentationState(0);
    sub_100030638();
    sub_100820ECC(v8, v9);
    sub_10003C8F4();
    sub_100005670();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v10 = sub_1000231E0();
  v11(v10);
  sub_10008835C();
}

unint64_t sub_10081CF78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45380, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10081CFCC(char a1)
{
  result = 0x7972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6572726566657270;
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x4D79616C70736964;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10081D0F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081CF78(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10081D120()
{
  v1 = sub_10004E6D0();
  result = sub_10081CFCC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10081D164@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10081CFC4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081D18C(uint64_t a1)
{
  v2 = sub_10082111C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081D1C8(uint64_t a1)
{
  v2 = sub_10082111C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10081D234()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC320);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100003CB4();
  sub_10000E890(v0);
  sub_10082141C();
  sub_10000FB60();
  sub_100821470();
  sub_100031F88();
  sub_1008214C4();
  sub_100031F88();
  v2 = sub_10000565C();
  v3(v2);
  sub_100006F14(v0);
  sub_10008653C();
  sub_10008835C();
}

void sub_10081D38C()
{
  sub_100032568();
  v2 = v1;
  sub_10022C350(&qword_100CDC340);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_100003CF8();
  sub_10000E890(v2);
  sub_10082141C();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100821518();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    sub_10082156C();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v4 = sub_1000231E0();
  v5(v4);
  sub_10008835C();
}

BOOL sub_10081D4D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C454B0, v2);

  return v3 != 0;
}

uint64_t sub_10081D550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10081E260();
  *a1 = result;
  return result;
}

uint64_t sub_10081D588()
{
  v1 = sub_10004E6D0();
  result = sub_100214EDC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10081D5B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10081E260();
  *a1 = result;
  return result;
}

uint64_t sub_10081D5E8(uint64_t a1)
{
  v2 = sub_10082141C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081D624(uint64_t a1)
{
  v2 = sub_10082141C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10081D66C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081D4D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081D6A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10081D51C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10081D778(void *a1@<X8>)
{
  sub_10081D234();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10081D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10000E8AC();
  v15 = v14;
  type metadata accessor for VFXTestViewState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_10022C350(&qword_100CDC358);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v17);
  sub_10001634C();
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v21 = (v20 - v19);
  sub_1000161C0(v15, v15[3]);
  sub_1008215C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    sub_100821614();
    sub_1000AF67C();
    if (a13)
    {
      sub_1000253F4();
      sub_100820ECC(v22, v23);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v24 = sub_1000524AC();
      v25(v24);
      sub_100014F5C();
      sub_1000AFEF8();
    }

    else
    {
      sub_100821668();
      sub_1000AF67C();
      v26 = sub_1000524AC();
      v27(v26);
      *v21 = v28;
    }

    swift_storeEnumTagMultiPayload();
    sub_10001CE5C();
    sub_1000AFEF8();
  }

  sub_100006F14(v15);
  sub_10000C8F4();
}

void sub_10081DA80()
{
  sub_10000E8AC();
  v3 = v2;
  type metadata accessor for VFXTestViewState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v15 = v5;
  v6 = sub_1000038CC();
  type metadata accessor for ViewState.SecondaryViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = sub_10022C350(&qword_100CDC380);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  sub_10000E890(v3);
  sub_1008215C0();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    sub_1000168D0();
    sub_1008216BC();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v0)
    {
      sub_1000253F4();
      sub_100820ECC(v12, v13);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    sub_10004EB7C();
    sub_1000B005C(v15, v14);
    (*(v10 + 8))(v1, v8);
  }

  else
  {
    sub_1008216BC();
    sub_100024384();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v0)
    {
      sub_100821710();
      sub_100024384();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v10 + 8))(v1, v8);
  }

  sub_10000C8F4();
}

uint64_t sub_10081DD34(char a1)
{
  if (a1)
  {
    return 0x74736554786676;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_10081DD9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100214EFC();
  *a1 = result;
  return result;
}

uint64_t sub_10081DDCC()
{
  v1 = sub_10004E6D0();
  result = sub_100214F3C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_10081DDFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100214EFC();
  *a1 = result;
  return result;
}

uint64_t sub_10081DE24(uint64_t a1)
{
  v2 = sub_1008215C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081DE60(uint64_t a1)
{
  v2 = sub_1008215C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081DEC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10081E260();
  *a1 = result;
  return result;
}

uint64_t sub_10081DEF8()
{
  v1 = sub_10004E6D0();
  result = sub_10081DD34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081E000()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC3A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  sub_100821764();
  sub_10000FB60();
  if (!v1)
  {
    sub_1008217B8();
    sub_100031F88();
    v3 = sub_10000565C();
    v4(v3);
  }

  sub_100006F14(v0);
  sub_10008835C();
}

void sub_10081E114()
{
  sub_100032568();
  v2 = v1;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CDC3B8);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  sub_1000161C0(v4, v4[3]);
  sub_100821764();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = (v7 + 8);
  if (v2)
  {
    sub_1000168D0();
  }

  sub_10082180C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*v9)(v0, v5);
  sub_10008835C();
}

uint64_t sub_10081E260()
{
  sub_100013984();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_1000379AC();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10081E2A4(char a1)
{
  if (a1)
  {
    return 0x6552686372616573;
  }

  else
  {
    return 1701736302;
  }
}

BOOL sub_10081E2E0@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214F98();
  *a1 = result;
  return result;
}

uint64_t sub_10081E314@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003A2D08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10081E33C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214F98();
  *a1 = result;
  return result;
}

uint64_t sub_10081E368(uint64_t a1)
{
  v2 = sub_100821764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081E3A4(uint64_t a1)
{
  v2 = sub_100821764();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10081E404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10081E260();
  *a1 = result;
  return result;
}

uint64_t sub_10081E43C()
{
  v1 = sub_10004E6D0();
  result = sub_10081E2A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081E514(_BYTE *a1@<X8>)
{
  sub_10081E000();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

void UIInterfaceOrientation.init(from:)()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC058);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  sub_10081E678();
  sub_10000FB60();
  if (!v1)
  {
    sub_10081E6CC();
    sub_100031F88();
    v3 = sub_10000565C();
    v4(v3);
  }

  sub_100006F14(v0);
  sub_10008653C();
  sub_10008835C();
}

unint64_t sub_10081E678()
{
  result = qword_100CDC060;
  if (!qword_100CDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC060);
  }

  return result;
}

unint64_t sub_10081E6CC()
{
  result = qword_100CDC068;
  if (!qword_100CDC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC068);
  }

  return result;
}

void UIInterfaceOrientation.encode(to:)()
{
  sub_100032568();
  v1 = v0;
  v3 = v2;
  sub_10022C350(&qword_100CDC070);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100003CF8();
  sub_10000E890(v3);
  sub_10081E678();
  sub_1000211A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
      sub_10081E910();
      sub_100005670();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v5 = sub_1000231E0();
      v6(v5);
      break;
    default:
      sub_1000168D0();
      sub_10081E910();
      sub_100005670();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v7 = sub_1000231E0();
      v8(v7);
      break;
  }

  sub_10008835C();
}

unint64_t sub_10081E910()
{
  result = qword_100CDC078;
  if (!qword_100CDC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC078);
  }

  return result;
}

unint64_t sub_10081E964(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45660, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10081E9B0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7469617274726F70;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x70616373646E616CLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10081EA58@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214FE8();
  *a1 = result;
  return result;
}

BOOL sub_10081EA8C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100214FE8();
  *a1 = result;
  return result;
}

uint64_t sub_10081EAB8(uint64_t a1)
{
  v2 = sub_10081E678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081EAF4(uint64_t a1)
{
  v2 = sub_10081E678();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10081EB54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081E964(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10081EB84()
{
  v1 = sub_10004E6D0();
  result = sub_10081E9B0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081EC5C(void *a1@<X8>)
{
  UIInterfaceOrientation.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void UIUserInterfaceSizeClass.init(from:)()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CDC080);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v0);
  sub_10081EDBC();
  sub_10000FB60();
  if (!v1)
  {
    sub_10081EE10();
    sub_100031F88();
    v3 = sub_10000565C();
    v4(v3);
  }

  sub_100006F14(v0);
  sub_10008653C();
  sub_10008835C();
}

unint64_t sub_10081EDBC()
{
  result = qword_100CDC088;
  if (!qword_100CDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC088);
  }

  return result;
}

unint64_t sub_10081EE10()
{
  result = qword_100CDC090;
  if (!qword_100CDC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC090);
  }

  return result;
}

void UIUserInterfaceSizeClass.encode(to:)()
{
  sub_100032568();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CDC098);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  sub_1000161C0(v2, v2[3]);
  sub_10081EDBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10081EFF8();
  sub_100005670();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  sub_10008835C();
}

unint64_t sub_10081EFF8()
{
  result = qword_100CDC0A0;
  if (!qword_100CDC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC0A0);
  }

  return result;
}

unint64_t sub_10081F04C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45730, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10081F098(char a1)
{
  if (!a1)
  {
    return 0x746361706D6F63;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x6669636570736E75;
}

void sub_10081F0F8()
{
  sub_10000E8AC();
  v21 = v2;
  v4 = v3;
  sub_10022C350(&qword_100CDC3F8);
  sub_1000037C4();
  v19 = v6;
  v20 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003CB4();
  v18 = sub_10022C350(&qword_100CDC400);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CDC408);
  sub_1000037C4();
  v13 = v12;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v18 - v15;
  sub_10000E890(v4);
  sub_100821860();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v13 + 8);
  if (v21)
  {
    sub_1000168D0();
    sub_1008218B4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v0, v20);
  }

  else
  {
    sub_100821908();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v1, v18);
  }

  (*v17)(v16, v11);
  sub_10000C8F4();
}

void sub_10081F358()
{
  sub_10000E8AC();
  v5 = v4;
  v31 = sub_10022C350(&qword_100CDC3C8);
  sub_1000037C4();
  v29 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10000C790();
  v8 = sub_10022C350(&qword_100CDC3D0);
  sub_1000037C4();
  v28 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001634C();
  v11 = sub_10022C350(&qword_100CDC3D8);
  sub_1000037C4();
  v30 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CB4();
  sub_10000E890(v5);
  sub_100821860();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_8;
  }

  v32 = v5;
  v14 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v14, 0);
  if (v16 == v17 >> 1)
  {
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    sub_10022C350(&qword_100CA7610);
    *v24 = &type metadata for ViewState.PreferredView;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    sub_100003B20();
    (*(v25 + 104))(v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v2, v11);
    v5 = v32;
LABEL_8:
    sub_100006F14(v5);
LABEL_9:
    sub_10000C8F4();
    return;
  }

  if (v16 < (v17 >> 1))
  {
    v18 = *(v15 + v16);
    sub_100618E7C(v16 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    if (v20 == v22 >> 1)
    {
      if (v18)
      {
        sub_1000168D0();
        sub_1008218B4();
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v29 + 8))(v0, v31);
      }

      else
      {
        sub_100821908();
        sub_1000059C4();
        swift_unknownObjectRelease();
        (*(v28 + 8))(v3, v8);
      }

      v26 = sub_100014474();
      v27(v26);
      sub_100006F14(v32);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

BOOL sub_10081F7A8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100215038();
  *a1 = result;
  return result;
}

BOOL sub_10081F7DC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_100215038();
  *a1 = result;
  return result;
}

uint64_t sub_10081F808(uint64_t a1)
{
  v2 = sub_10081EDBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10081F844(uint64_t a1)
{
  v2 = sub_10081EDBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10081F8A4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10081F04C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10081F8D4()
{
  v1 = sub_10004E6D0();
  result = sub_10081F098(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_10081F9AC(void *a1@<X8>)
{
  UIUserInterfaceSizeClass.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void *initializeBufferWithCopyOfBuffer for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for ViewState.PrimaryViewState(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ViewState.PrimaryViewState(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ViewState.PrimaryViewState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10CodingTypeOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10081FC38()
{
  result = qword_100CDC200;
  if (!qword_100CDC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC200);
  }

  return result;
}

unint64_t sub_10081FC90()
{
  result = qword_100CDC208;
  if (!qword_100CDC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC208);
  }

  return result;
}

unint64_t sub_10081FCE8()
{
  result = qword_100CDC210;
  if (!qword_100CDC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC210);
  }

  return result;
}

unint64_t sub_10081FD40()
{
  result = qword_100CDC218;
  if (!qword_100CDC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC218);
  }

  return result;
}

unint64_t sub_10081FD98()
{
  result = qword_100CDC220;
  if (!qword_100CDC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC220);
  }

  return result;
}

unint64_t sub_10081FDF0()
{
  result = qword_100CDC228;
  if (!qword_100CDC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC228);
  }

  return result;
}

void sub_10081FE44(_BYTE *a1@<X8>)
{
  sub_10081F358();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

void sub_10081FE90()
{
  sub_10000C778();
  v2 = v0;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CA6600);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3ECD0;
  *(inited + 32) = 0x567972616D697270;
  *(inited + 40) = 0xEB00000000776569;
  sub_1008203B0(*v0, v33);
  v8 = v34;
  sub_1000161C0(v33, v34);
  *(inited + 72) = v8;
  sub_100043010((inited + 48));
  sub_100003B20();
  (*(v9 + 16))();
  strcpy((inited + 80), "secondaryView");
  *(inited + 94) = -4864;
  v10 = type metadata accessor for ViewState(0);
  sub_1008204D0();
  v11 = v32;
  sub_1000161C0(v31, v32);
  *(inited + 120) = v11;
  sub_100043010((inited + 96));
  sub_100003B20();
  (*(v12 + 16))();
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000100AE00F0;
  sub_1008207B4();
  v13 = v30;
  sub_1000161C0(v29, v30);
  *(inited + 168) = v13;
  sub_100043010((inited + 144));
  sub_100003B20();
  (*(v14 + 16))();
  strcpy((inited + 176), "preferredView");
  *(inited + 190) = -4864;
  sub_1000B010C();
  sub_100820960();
  v15 = v28;
  sub_1000161C0(v27, v28);
  *(inited + 216) = v15;
  sub_100043010((inited + 192));
  sub_100003B20();
  (*(v16 + 16))();
  *(inited + 224) = 0x6956686372616573;
  *(inited + 232) = 0xEA00000000007765;
  sub_1000302D8(v2 + *(v10 + 32), v1, &qword_100CA6600);
  v17 = type metadata accessor for SearchViewState(0);
  sub_1000038B4(v1, 1, v17);
  if (v18)
  {
    sub_1000180EC(v1, &qword_100CA6600);
LABEL_6:
    *(inited + 264) = &type metadata for String;
    *(inited + 240) = 7104878;
    *(inited + 248) = 0xE300000000000000;
    goto LABEL_7;
  }

  sub_100369F88();
  sub_10003A3D0();
  sub_1000B005C(v1, v19);
  v20 = v24;
  sub_1000161C0(v23, v24);
  v26 = v20;
  sub_100043010(&v25);
  sub_100003B20();
  (*(v21 + 16))();
  sub_100006F14(v23);
  if (!v26)
  {
    goto LABEL_6;
  }

  sub_100166170(&v25, (inited + 240));
LABEL_7:
  strcpy((inited + 272), "displayMetrics");
  *(inited + 287) = -18;
  *(inited + 312) = type metadata accessor for DisplayMetrics();
  sub_100043010((inited + 288));
  sub_100009084();
  sub_1000A078C();
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x8000000100ABB220;
  *(inited + 360) = type metadata accessor for WeatherMapPresentationState(0);
  sub_100043010((inited + 336));
  sub_100004BD8();
  sub_1000A078C();
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x8000000100ABB240;
  v22 = *(v2 + *(v10 + 44));
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v22;
  sub_100006F14(v27);
  sub_100006F14(v29);
  sub_100006F14(v31);
  sub_100006F14(v33);
  Dictionary.init(dictionaryLiteral:)();
  v4[3] = sub_10022C350(&qword_100CDC410);
  v4[4] = sub_10012EF24(&qword_100CDC418, &qword_100CDC410);
  sub_100043010(v4);
  ShortDescription.init(name:_:)();
  sub_10000536C();
}

uint64_t sub_1008203B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1953720684;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for ListViewState;
  *(inited + 48) = a1;

  Dictionary.init(dictionaryLiteral:)();
  v5 = sub_10000C918();
  a2[3] = sub_10022C350(v5);
  a2[4] = sub_10012EF24(&qword_100CDC458, &qword_100CDC450);
  sub_100043010(a2);
  return ShortDescription.init(name:_:)();
}

void sub_1008204D0()
{
  sub_10000C778();
  v2 = v1;
  v3 = type metadata accessor for VFXTestViewState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = (v10 - v9);
  v12 = sub_10022C350(&qword_100CDC440);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100003CF8();
  sub_10001F968();
  sub_1000A078C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100014F5C();
    sub_1000AFEF8();
    sub_10022C350(&qword_100CA36F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x74736554786676;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = v3;
    sub_100043010((inited + 48));
    sub_1000A078C();
    Dictionary.init(dictionaryLiteral:)();
    sub_100043874();
    sub_10004EB7C();
    sub_1000B005C(v7, v17);
  }

  else
  {
    v18 = *v11;
    sub_10022C350(&qword_100CA36F8);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_100A2C3F0;
    strcpy((v19 + 32), "locationViewer");
    *(v19 + 47) = -18;
    *(v19 + 72) = &type metadata for LocationViewerViewState;
    *(v19 + 48) = v18;

    Dictionary.init(dictionaryLiteral:)();
    sub_100043874();
  }

  v2[3] = v12;
  v2[4] = sub_10012EF24(&qword_100CDC448, &qword_100CDC440);
  v20 = sub_100043010(v2);
  (*(v14 + 32))(v20, v0, v12);
  sub_10000536C();
}

void sub_1008207B4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000C918();
  v6 = sub_10022C350(v5);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_10001320C();
  sub_10022C350(&qword_100CA36F8);
  v10 = (v2 & 1) == 0;
  if (v2)
  {
    v11 = 0x6552686372616573;
  }

  else
  {
    v11 = 1701736302;
  }

  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xED000073746C7573;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  v4[3] = v6;
  v4[4] = sub_10012EF24(&qword_100CDC438, &qword_100CDC430);
  v14 = sub_100043010(v4);
  (*(v8 + 32))(v14, v0, v6);
  sub_10000536C();
}

void sub_100820960()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10000C918();
  v6 = sub_10022C350(v5);
  sub_1000037C4();
  v8 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_10001320C();
  sub_10022C350(&qword_100CA36F8);
  v10 = (v2 & 1) == 0;
  if (v2)
  {
    v11 = 0x7261646E6F636573;
  }

  else
  {
    v11 = 0x7972616D697270;
  }

  if (v10)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE900000000000079;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  v4[3] = v6;
  v4[4] = sub_10012EF24(&qword_100CDC428, &qword_100CDC420);
  v14 = sub_100043010(v4);
  (*(v8 + 32))(v14, v0, v6);
  sub_10000536C();
}

uint64_t sub_100820B14()
{
  sub_100820ECC(&qword_100CDC460, type metadata accessor for ViewState);

  return ShortDescribable.description.getter();
}

uint64_t sub_100820B88()
{
  sub_10082195C();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820BC8()
{
  sub_100820ECC(&qword_100CDC470, type metadata accessor for ViewState.SecondaryViewState);

  return ShortDescribable.description.getter();
}

uint64_t sub_100820C3C()
{
  sub_1008219B0();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820C80()
{
  sub_100821A04();

  return ShortDescribable.description.getter();
}

uint64_t sub_100820CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10077C158();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100820D38()
{
  result = qword_100CDC230;
  if (!qword_100CDC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC230);
  }

  return result;
}

unint64_t sub_100820D90()
{
  result = qword_100CDC238;
  if (!qword_100CDC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC238);
  }

  return result;
}

unint64_t sub_100820E30()
{
  result = qword_100CDC248;
  if (!qword_100CDC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC248);
  }

  return result;
}

uint64_t sub_100820ECC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100820F18()
{
  result = qword_100CDC250;
  if (!qword_100CDC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC250);
  }

  return result;
}

unint64_t sub_100820F70()
{
  result = qword_100CDC258;
  if (!qword_100CDC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC258);
  }

  return result;
}

unint64_t sub_100820FC8()
{
  result = qword_100CDC260;
  if (!qword_100CDC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC260);
  }

  return result;
}

unint64_t sub_100821020()
{
  result = qword_100CDC268;
  if (!qword_100CDC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC268);
  }

  return result;
}

unint64_t sub_100821074()
{
  result = qword_100CDC270;
  if (!qword_100CDC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC270);
  }

  return result;
}

unint64_t sub_1008210C8()
{
  result = qword_100CDC278;
  if (!qword_100CDC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC278);
  }

  return result;
}

unint64_t sub_10082111C()
{
  result = qword_100CDC298;
  if (!qword_100CDC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC298);
  }

  return result;
}

unint64_t sub_100821170()
{
  result = qword_100CDC2A0;
  if (!qword_100CDC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2A0);
  }

  return result;
}

unint64_t sub_1008211C4()
{
  result = qword_100CDC2B0;
  if (!qword_100CDC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2B0);
  }

  return result;
}

unint64_t sub_100821218()
{
  result = qword_100CDC2B8;
  if (!qword_100CDC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2B8);
  }

  return result;
}

unint64_t sub_10082126C()
{
  result = qword_100CDC2E0;
  if (!qword_100CDC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2E0);
  }

  return result;
}

unint64_t sub_1008212C0()
{
  result = qword_100CDC2F0;
  if (!qword_100CDC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2F0);
  }

  return result;
}

unint64_t sub_100821314()
{
  result = qword_100CDC2F8;
  if (!qword_100CDC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC2F8);
  }

  return result;
}

unint64_t sub_100821368()
{
  result = qword_100CDC300;
  if (!qword_100CDC300)
  {
    sub_10022E824(&qword_100CA6600);
    sub_100820ECC(&qword_100CDC308, type metadata accessor for SearchViewState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC300);
  }

  return result;
}

unint64_t sub_10082141C()
{
  result = qword_100CDC328;
  if (!qword_100CDC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC328);
  }

  return result;
}

unint64_t sub_100821470()
{
  result = qword_100CDC330;
  if (!qword_100CDC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC330);
  }

  return result;
}

unint64_t sub_1008214C4()
{
  result = qword_100CDC338;
  if (!qword_100CDC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC338);
  }

  return result;
}

unint64_t sub_100821518()
{
  result = qword_100CDC348;
  if (!qword_100CDC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC348);
  }

  return result;
}

unint64_t sub_10082156C()
{
  result = qword_100CDC350;
  if (!qword_100CDC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC350);
  }

  return result;
}

unint64_t sub_1008215C0()
{
  result = qword_100CDC360;
  if (!qword_100CDC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC360);
  }

  return result;
}

unint64_t sub_100821614()
{
  result = qword_100CDC368;
  if (!qword_100CDC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC368);
  }

  return result;
}

unint64_t sub_100821668()
{
  result = qword_100CDC378;
  if (!qword_100CDC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC378);
  }

  return result;
}

unint64_t sub_1008216BC()
{
  result = qword_100CDC388;
  if (!qword_100CDC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC388);
  }

  return result;
}

unint64_t sub_100821710()
{
  result = qword_100CDC398;
  if (!qword_100CDC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC398);
  }

  return result;
}

unint64_t sub_100821764()
{
  result = qword_100CDC3A8;
  if (!qword_100CDC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3A8);
  }

  return result;
}

unint64_t sub_1008217B8()
{
  result = qword_100CDC3B0;
  if (!qword_100CDC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3B0);
  }

  return result;
}

unint64_t sub_10082180C()
{
  result = qword_100CDC3C0;
  if (!qword_100CDC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3C0);
  }

  return result;
}

unint64_t sub_100821860()
{
  result = qword_100CDC3E0;
  if (!qword_100CDC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3E0);
  }

  return result;
}

unint64_t sub_1008218B4()
{
  result = qword_100CDC3E8;
  if (!qword_100CDC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3E8);
  }

  return result;
}

unint64_t sub_100821908()
{
  result = qword_100CDC3F0;
  if (!qword_100CDC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC3F0);
  }

  return result;
}

unint64_t sub_10082195C()
{
  result = qword_100CDC468;
  if (!qword_100CDC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC468);
  }

  return result;
}

unint64_t sub_1008219B0()
{
  result = qword_100CDC478;
  if (!qword_100CDC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC478);
  }

  return result;
}

unint64_t sub_100821A04()
{
  result = qword_100CDC480;
  if (!qword_100CDC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC480);
  }

  return result;
}

_BYTE *sub_100821AB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100821B90(_BYTE *result, int a2, int a3)
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

_BYTE *sub_100821C3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100821DF4()
{
  result = qword_100CDC488;
  if (!qword_100CDC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC488);
  }

  return result;
}

unint64_t sub_100821E4C()
{
  result = qword_100CDC490;
  if (!qword_100CDC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC490);
  }

  return result;
}

unint64_t sub_100821EA4()
{
  result = qword_100CDC498;
  if (!qword_100CDC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC498);
  }

  return result;
}

unint64_t sub_100821EFC()
{
  result = qword_100CDC4A0;
  if (!qword_100CDC4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4A0);
  }

  return result;
}

unint64_t sub_100821F54()
{
  result = qword_100CDC4A8;
  if (!qword_100CDC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4A8);
  }

  return result;
}

unint64_t sub_100821FAC()
{
  result = qword_100CDC4B0;
  if (!qword_100CDC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4B0);
  }

  return result;
}

unint64_t sub_100822004()
{
  result = qword_100CDC4B8;
  if (!qword_100CDC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4B8);
  }

  return result;
}

unint64_t sub_10082205C()
{
  result = qword_100CDC4C0;
  if (!qword_100CDC4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4C0);
  }

  return result;
}

unint64_t sub_1008220B4()
{
  result = qword_100CDC4C8;
  if (!qword_100CDC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4C8);
  }

  return result;
}

unint64_t sub_10082210C()
{
  result = qword_100CDC4D0;
  if (!qword_100CDC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4D0);
  }

  return result;
}

unint64_t sub_100822164()
{
  result = qword_100CDC4D8;
  if (!qword_100CDC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4D8);
  }

  return result;
}

unint64_t sub_1008221BC()
{
  result = qword_100CDC4E0;
  if (!qword_100CDC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4E0);
  }

  return result;
}

unint64_t sub_100822214()
{
  result = qword_100CDC4E8;
  if (!qword_100CDC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4E8);
  }

  return result;
}

unint64_t sub_10082226C()
{
  result = qword_100CDC4F0;
  if (!qword_100CDC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4F0);
  }

  return result;
}

unint64_t sub_1008222C4()
{
  result = qword_100CDC4F8;
  if (!qword_100CDC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC4F8);
  }

  return result;
}

unint64_t sub_10082231C()
{
  result = qword_100CDC500;
  if (!qword_100CDC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC500);
  }

  return result;
}

unint64_t sub_100822374()
{
  result = qword_100CDC508;
  if (!qword_100CDC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC508);
  }

  return result;
}

unint64_t sub_1008223CC()
{
  result = qword_100CDC510;
  if (!qword_100CDC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC510);
  }

  return result;
}

unint64_t sub_100822424()
{
  result = qword_100CDC518;
  if (!qword_100CDC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC518);
  }

  return result;
}

unint64_t sub_10082247C()
{
  result = qword_100CDC520;
  if (!qword_100CDC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC520);
  }

  return result;
}

unint64_t sub_1008224D4()
{
  result = qword_100CDC528;
  if (!qword_100CDC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC528);
  }

  return result;
}

unint64_t sub_10082252C()
{
  result = qword_100CDC530;
  if (!qword_100CDC530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC530);
  }

  return result;
}

unint64_t sub_100822580()
{
  result = qword_100CDC538;
  if (!qword_100CDC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC538);
  }

  return result;
}

unint64_t sub_1008225D4()
{
  result = qword_100CDC540;
  if (!qword_100CDC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC540);
  }

  return result;
}

unint64_t sub_100822628()
{
  result = qword_100CDC548;
  if (!qword_100CDC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC548);
  }

  return result;
}

BOOL sub_1008226B4(void *a1, void *a2)
{
  type metadata accessor for DetailComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA7188);
  __chkstk_darwin(v7 - 8);
  v9 = (&v24 - v8);
  v10 = sub_10022C350(&qword_100CAA958);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = _s11NormalModelVMa();
  sub_10001BC88(v17[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[8]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[9]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[10]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[11]);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[13]);
  if ((static SunriseSunsetDetailChartViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[14]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[15]);
  if ((static SunEvents.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[16]);
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v17[17]);
  if ((static DaylightStringBuilder.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[18];
  v20 = *(v10 + 48);
  sub_10066D8E4(a1 + v19, v13);
  sub_10066D8E4(a2 + v19, &v13[v20]);
  sub_100003A40(v13);
  if (v14)
  {
    sub_100003A40(&v13[v20]);
    if (v14)
    {
      sub_1000180EC(v13, &qword_100CA7188);
      return 1;
    }

    goto LABEL_35;
  }

  sub_10066D8E4(v13, v9);
  sub_100003A40(&v13[v20]);
  if (v21)
  {
    sub_10066D954(v9);
LABEL_35:
    sub_1000180EC(v13, &qword_100CAA958);
    return 0;
  }

  sub_10066D9B0(&v13[v20], v6);
  v23 = sub_100428860(v9, v6);
  sub_10066D954(v6);
  sub_10066D954(v9);
  sub_1000180EC(v13, &qword_100CA7188);
  return (v23 & 1) != 0;
}

uint64_t sub_1008229D4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_100040690();
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a1 + 16);
  (*(v9 + 32))(v14 + v13, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  aBlock[4] = sub_100823948;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6FED0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t AnimatableValueObserverModifier.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 24))(v2 + *(a2 + 40), a1, v5);
  sub_1008229D4(a2);
  v6 = *(v8 + 8);

  return v6(a1, v5);
}

uint64_t *(*AnimatableValueObserverModifier.animatableData.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_100822E3C;
}

uint64_t *sub_100822E3C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1008229D4(*result);
  }

  return result;
}

uint64_t AnimatableValueObserverModifier.init(for:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100007FD0();
  v18 = v10;
  (*(v11 + 16))(a5, a1, v12);
  v13 = type metadata accessor for AnimatableValueObserverModifier();
  v14 = (a5 + *(v13 + 36));
  *v14 = a2;
  v14[1] = a3;
  v15 = *(v18 + 32);
  v16 = a5 + *(v13 + 40);

  return v15(v16, a1, a4);
}

uint64_t AnimatableValueObserverModifier.body(content:)(uint64_t a1)
{
  sub_10001F980();
  swift_getWitnessTable();
  v2 = type metadata accessor for _ViewModifier_Content();
  sub_100007FD0();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_10001CB30();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(a1, v2, WitnessTable);
  sub_1000833D8(v7, v2, WitnessTable);
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100823078(uint64_t a1)
{
  result = type metadata accessor for AnimatableValueObserverModifier();
  v3 = *(a1 + *(result + 36));
  if (v3)
  {
    return v3(a1 + *(result + 40));
  }

  return result;
}

void (*sub_1008230CC(void *a1, uint64_t a2))(void *a1)
{
  v4 = sub_10023FBC0(0x28uLL);
  *a1 = v4;
  v4[4] = AnimatableValueObserverModifier.animatableData.modify(v4, a2);
  return sub_10023DD88;
}

uint64_t sub_100823134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static AnimatableModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1008231C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static AnimatableModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.animatableValueObserver<A>(for:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[2] = a6;
  v24[0] = a7;
  v24[1] = a4;
  sub_100007FD0();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnimatableValueObserverModifier();
  sub_100007FD0();
  v18 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = v24 - v21;
  (*(v12 + 16))(v15, a1, a5, v20);
  AnimatableValueObserverModifier.init(for:onChange:)(v15, a2, a3, a5, v22);
  sub_10007A47C(a2);
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v22, v16);
}

uint64_t sub_1008234A0()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000455E4();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10082353C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 16) & ~*(v5 + 80)) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 >= 0x7FFFFFFE)
      {
        return sub_100024D10(a1, v6, v4);
      }

      v16 = *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1008236D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v6 - 8) + 64);
  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80)) + v10;
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 < 0x7FFFFFFE)
          {
            v21 = (&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v21 = 0;
              v21[1] = 0;
              *v21 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v21 = a2;
            }
          }

          else
          {

            sub_10001B350(a1, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100823948()
{
  v1 = *(type metadata accessor for AnimatableValueObserverModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100823078(v2);
}

uint64_t sub_1008239CC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100823A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100823A90(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_100823AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

double sub_100823B44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002F7A8();
  sub_100006F14(a1);
  *a2 = v5;
  a2[1] = v6;
  result = *&v7;
  a2[2] = v7;
  return result;
}

uint64_t sub_100823BA0(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1000B8CA8();
      v4 = a2;
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

void sub_100823C1C()
{
  sub_10000C778();
  v48 = v1;
  v3 = v2;
  v47 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v44 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v43 = v7 - v6;
  v8 = sub_10022C350(&qword_100CB6198);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v11 = sub_10022C350(&qword_100CBE7F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v46 = &v43 - v13;
  v14 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  type metadata accessor for ConfiguredUnitsAction();
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_100014B58();
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = sub_10022C350(&qword_100CDC760);
  sub_100003810(v25);
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v43 - v27;
  v30 = *(v29 + 56);
  sub_100824D34(v3, &v43 - v27);
  sub_100824D34(v48, &v28[v30]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D34(v28, v0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *(v11 + 48);
        v33 = v46;
        sub_100824D98(v0, v46);
        sub_100824D98(&v28[v30], v33 + v32);
        v34 = v47;
        if (sub_100024D10(v33, 1, v47) == 1)
        {
          sub_10000394C(v33 + v32);
          if (!v35)
          {
            goto LABEL_19;
          }

          sub_1000180EC(v33, &qword_100CB6198);
        }

        else
        {
          v37 = v45;
          sub_1005B3C14(v33, v45);
          sub_10000394C(v33 + v32);
          if (v35)
          {
            (*(v44 + 8))(v37, v34);
LABEL_19:
            sub_1000180EC(v33, &qword_100CBE7F8);
            goto LABEL_20;
          }

          v39 = v43;
          v38 = v44;
          (*(v44 + 32))(v43, v33 + v32, v34);
          sub_10000909C();
          sub_100824EC8(v40, v41);
          dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v38 + 8);
          v42(v39, v34);
          v42(v37, v34);
          sub_1000180EC(v33, &qword_100CB6198);
        }

LABEL_20:
        sub_100824E08(v28);
        goto LABEL_14;
      }

      sub_1000180EC(v0, &qword_100CB6198);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_100824D34(v28, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v16 + 32))(v20, &v28[v30], v14);
      static ConfiguredUnit.== infix(_:_:)();
      v36 = *(v16 + 8);
      v36(v20, v14);
      v36(v24, v14);
      sub_100824E08(v28);
      goto LABEL_14;
    }

    (*(v16 + 8))(v24, v14);
  }

  sub_1000180EC(v28, &qword_100CDC760);
LABEL_14:
  sub_10000536C();
}

void sub_10082410C(uint64_t a1, void *a2)
{
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v3 = a2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100824188(void *a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v2 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1008241F4()
{
  v1 = *v0;
  v18 = v1;
  if (v1)
  {
    sub_100016DB8();
    v2 = v1;
    sub_1000750A0();
    sub_1000B8D48(&v18);
  }

  else
  {
    sub_100020320();
  }

  v3 = *(v0 + 8);
  v17 = v3;
  if (v3)
  {
    sub_100016DB8();
    v4 = v3;
    sub_1000750A0();
    sub_1000B8D48(&v17);
  }

  else
  {
    sub_100020320();
  }

  v5 = *(v0 + 16);
  v16 = v5;
  if (v5)
  {
    sub_100016DB8();
    v6 = v5;
    sub_1000750A0();
    sub_1000B8D48(&v16);
  }

  else
  {
    sub_100020320();
  }

  v7 = *(v0 + 24);
  v15 = v7;
  if (v7)
  {
    sub_100016DB8();
    v8 = v7;
    sub_1000750A0();
    sub_1000B8D48(&v15);
  }

  else
  {
    sub_100020320();
  }

  v9 = *(v0 + 32);
  v14 = v9;
  if (v9)
  {
    sub_100016DB8();
    v10 = v9;
    sub_1000750A0();
    sub_1000B8D48(&v14);
  }

  else
  {
    sub_100020320();
  }

  v11 = *(v0 + 40);
  v13 = v11;
  if (v11)
  {
    sub_100016DB8();
    v12 = v11;
    sub_1000750A0();
    sub_1000B8D48(&v13);
  }

  else
  {
    sub_100020320();
  }
}

Swift::Int sub_100824318()
{
  Hasher.init(_seed:)();
  sub_1008241F4();
  return Hasher._finalize()();
}

void sub_100824358()
{
  sub_10000C778();
  v2 = type metadata accessor for UnitConfiguration.Temperature();
  sub_1000037C4();
  v29 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v28 = v6 - v5;
  v7 = sub_10022C350(&qword_100CB6198);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for ConfiguredUnitsAction();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_100824D34(v0, v21 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D98(v22, v11);
      Hasher._combine(_:)(2uLL);
      sub_1005B3C14(v11, v1);
      if (sub_100024D10(v1, 1, v2) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v25 = v28;
        v24 = v29;
        (*(v29 + 32))(v28, v1, v2);
        Hasher._combine(_:)(1u);
        sub_10000909C();
        sub_100824EC8(v26, v27);
        dispatch thunk of Hashable.hash(into:)();
        (*(v24 + 8))(v25, v2);
      }

      sub_1000180EC(v11, &qword_100CB6198);
    }

    else
    {
      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    Hasher._combine(_:)(0);
    sub_100824EC8(&qword_100CDC768, &type metadata accessor for ConfiguredUnit);
    dispatch thunk of Hashable.hash(into:)();
    (*(v14 + 8))(v18, v12);
  }

  sub_10000536C();
}

Swift::Int sub_100824688()
{
  Hasher.init(_seed:)();
  sub_100824358();
  return Hasher._finalize()();
}

double sub_1008246C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100823B44(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_100824730()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10082410C(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10082477C()
{
  Hasher.init(_seed:)();
  sub_1008241F4();
  return Hasher._finalize()();
}

Swift::Int sub_1008247C0()
{
  Hasher.init(_seed:)();
  sub_100824358();
  return Hasher._finalize()();
}

void sub_1008247FC()
{
  sub_10000C778();
  v2 = v1;
  v3 = sub_10022C350(&qword_100CB6198);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ConfiguredUnit();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ConfiguredUnitsAction();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  sub_100824D34(v0, v16 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100824D98(v17, v6);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x8000000100AE01A0;
      *(inited + 72) = v3;
      v20 = sub_100042FB0((inited + 48));
      sub_1005B3C14(v6, v20);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000180EC(v6, &qword_100CB6198);
    }

    else
    {
      sub_10022C350(&qword_100CA36F8);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_100A2C3F0;
      *(v23 + 32) = 0x6C6C417465736572;
      *(v23 + 40) = 0xE800000000000000;
      *(v23 + 72) = &type metadata for String;
      *(v23 + 48) = 1702195828;
      *(v23 + 56) = 0xE400000000000000;
      Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    (*(v9 + 32))(v13, v17, v7);
    sub_10022C350(&qword_100CA36F8);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_100A2C3F0;
    *(v21 + 32) = 1953066613;
    *(v21 + 40) = 0xE400000000000000;
    *(v21 + 72) = v7;
    v22 = sub_100042FB0((v21 + 48));
    (*(v9 + 16))(v22, v13, v7);
    Dictionary.init(dictionaryLiteral:)();
    (*(v9 + 8))(v13, v7);
  }

  v2[3] = sub_10022C350(&qword_100CDC770);
  v2[4] = sub_100824E64();
  sub_100042FB0(v2);
  ShortDescription.init(name:_:)();
  sub_10000536C();
}

uint64_t sub_100824B88()
{
  sub_100824EC8(qword_100CDC780, type metadata accessor for ConfiguredUnitsAction);

  return ShortDescribable.description.getter();
}

unint64_t sub_100824C88()
{
  result = qword_100CDC750;
  if (!qword_100CDC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC750);
  }

  return result;
}

unint64_t sub_100824CE0()
{
  result = qword_100CDC758;
  if (!qword_100CDC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC758);
  }

  return result;
}

uint64_t sub_100824D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfiguredUnitsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100824D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100824E08(uint64_t a1)
{
  v2 = type metadata accessor for ConfiguredUnitsAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100824E64()
{
  result = qword_100CDC778;
  if (!qword_100CDC778)
  {
    sub_10022E824(&qword_100CDC770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC778);
  }

  return result;
}

uint64_t sub_100824EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100824F10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100824FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566BE4(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_nextHourPrecipitation, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather21NoAqiSevereNhpContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1008267CC()
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
  sub_100006F14(v0 + 576);
  sub_100006F14(v0 + 616);
  sub_100006F14(v0 + 656);
  sub_100006F14(v0 + 696);
  sub_100006F14(v0 + 736);
  return v0;
}

uint64_t sub_10082687C()
{
  sub_1008267CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1008268C0(uint64_t a1, char a2)
{
  *(v2 + 66) = a2;
  *(v2 + 72) = a1;
  *(v2 + 80) = type metadata accessor for DispatchAction();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = type metadata accessor for MainActor();
  *(v2 + 104) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 112) = v4;
  *(v2 + 120) = v3;

  return _swift_task_switch(sub_100826990, v4, v3);
}

uint64_t sub_100826990()
{
  v18 = v0;
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 66);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = v5 & 1;
    *(v0 + 65) = v5 & 1;
    v9 = String.init<A>(describing:)();
    v11 = sub_100078694(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Adjusting sidebar state: %s", v6, 0xCu);
    sub_100006F14(v7);
  }

  else
  {

    v8 = v5 & 1;
  }

  v12 = *(v0 + 88);
  v13 = *(v0 + 80);
  *v12 = v8 ^ 1;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  *(v0 + 128) = type metadata accessor for MainAction();
  swift_storeEnumTagMultiPayload();
  v12[*(v13 + 20)] = 0;
  *(v0 + 136) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100826BA8, v15, v14);
}

uint64_t sub_100826BA8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v3 + 16);
  sub_10022C350(&qword_100CA3508);
  v5 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  sub_10004F14C(v2, v6 + v5);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = v6;
  *(v0 + 64) = 0;
  sub_10004F1B0(v0 + 16, v4);
  sub_100826DF4(v0 + 16);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  return _swift_task_switch(sub_100826CE0, v7, v8);
}

uint64_t sub_100826CE0()
{
  v1 = *(v0 + 88);

  sub_100826E5C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100826D58(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000926F8;

  return sub_1008268C0(a1, v4);
}

uint64_t sub_100826DF4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA3510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100826E5C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_100826EB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100826F98()
{
  result = qword_100CDC958;
  if (!qword_100CDC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC958);
  }

  return result;
}

uint64_t sub_100826FF0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100827064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000100AE0430 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100827138(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x616470557473616CLL;
  }
}

uint64_t sub_10082717C(uint64_t a1, uint64_t a2)
{
  if (static Date.== infix(_:_:)())
  {
    v4 = type metadata accessor for WeatherDataRelevancy();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1008271D0(void *a1)
{
  v3 = sub_10022C350(&qword_100CDCA00);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100827764();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for Date();
  sub_10005B714(&qword_100CA39B8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for WeatherDataRelevancy();
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100827368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = type metadata accessor for Date();
  sub_1000037C4();
  v22 = v4;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CDC9F0);
  sub_1000037C4();
  v23 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for WeatherDataRelevancy();
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_100827764();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v20 = v12;
  v13 = v22;
  v27 = 0;
  sub_10005B714(&qword_100CA3998);
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v20;
  (*(v13 + 32))(v20, v7, v14);
  v26 = 1;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = sub_10001CE8C();
  v18(v17);
  *(v15 + *(v10 + 20)) = v16 & 1;
  sub_1008277B8(v15, v21);
  sub_100006F14(a1);
  return sub_10082781C(v15);
}

uint64_t sub_100827660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100827064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100827688(uint64_t a1)
{
  v2 = sub_100827764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008276C4(uint64_t a1)
{
  v2 = sub_100827764();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100827764()
{
  result = qword_100CDC9F8;
  if (!qword_100CDC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDC9F8);
  }

  return result;
}

uint64_t sub_1008277B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataRelevancy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10082781C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataRelevancy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataRelevancy.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100827958()
{
  result = qword_100CDCA08;
  if (!qword_100CDCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCA08);
  }

  return result;
}

unint64_t sub_1008279B0()
{
  result = qword_100CDCA10;
  if (!qword_100CDCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCA10);
  }

  return result;
}

unint64_t sub_100827A08()
{
  result = qword_100CDCA18;
  if (!qword_100CDCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCA18);
  }

  return result;
}

uint64_t type metadata accessor for LocationFooterButtonStyleModifier()
{
  result = qword_100CDCA78;
  if (!qword_100CDCA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100827AFC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10022C350(&qword_100CDCAB0);
  return sub_100827B6C(a1, a2 & 1, a3 + *(v6 + 44));
}

uint64_t sub_100827B6C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v48 = a2;
  v54 = a3;
  v55 = type metadata accessor for LabelStyleConfiguration.Icon();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v43 - v6;
  v7 = type metadata accessor for EnvironmentValues();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10022C350(&qword_100CDCAB8);
  __chkstk_darwin(v49);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  LabelStyleConfiguration.title.getter();
  v18 = *(v11 + 104);
  v18(v13, enum case for Font.TextStyle.subheadline(_:), v10);
  static Font.Weight.semibold.getter();
  v47 = static Font.system(_:weight:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v18(v13, enum case for Font.TextStyle.footnote(_:), v10);
  static Font.Weight.bold.getter();
  v20 = static Font.system(_:weight:)();
  v19(v13, v10);
  if ((v48 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(a1, 0);
    (*(v44 + 8))(v9, v45);
    LOBYTE(a1) = v57;
  }

  v22 = &v17[*(sub_10022C350(&qword_100CDCAC0) + 36)];
  v23 = type metadata accessor for FontWithSmallVariantModifier();
  v24 = *(v23 + 24);
  v25 = enum case for Font.Leading.tight(_:);
  v26 = type metadata accessor for Font.Leading();
  (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
  sub_10001B350(v22 + v24, 0, 1, v26);
  *v22 = v47;
  v22[1] = v20;
  *(v22 + *(v23 + 28)) = a1 & 1;
  KeyPath = swift_getKeyPath();
  v28 = *(v49 + 36);
  v46 = v17;
  v29 = &v17[v28];
  *v29 = KeyPath;
  v29[8] = 0;
  v30 = v51;
  LabelStyleConfiguration.icon.getter();
  v31 = v17;
  v32 = v50;
  sub_100278D5C(v31, v50, &qword_100CDCAB8);
  v56 = 1;
  v33 = v52;
  v34 = v53;
  v35 = *(v52 + 16);
  v36 = v55;
  v35(v53, v30, v55);
  v37 = v54;
  sub_100278D5C(v32, v54, &qword_100CDCAB8);
  v38 = sub_10022C350(&qword_100CDCAC8);
  v39 = v37 + *(v38 + 48);
  v40 = v56;
  *v39 = 0;
  *(v39 + 8) = v40;
  v35((v37 + *(v38 + 64)), v34, v36);
  v41 = *(v33 + 8);
  v41(v30, v36);
  sub_100828AE0(v46);
  v41(v34, v36);
  return sub_100828AE0(v32);
}

uint64_t sub_1008280BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA71B0);
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for LocationFooterButtonStyleModifier();
  sub_100278D5C(v1 + *(v13 + 20), v12, &qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003A9C();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1008282B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v43 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v42 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v41 = v5 - v4;
  type metadata accessor for BlendMode();
  sub_1000037C4();
  v50 = v7;
  v51 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v49 = v9 - v8;
  v10 = type metadata accessor for BorderlessButtonStyle();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v44 = sub_10022C350(&qword_100CDCAD0);
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  sub_10022C350(&qword_100CDCAD8);
  sub_1000037C4();
  v47 = v23;
  v48 = v22;
  __chkstk_darwin(v22);
  v25 = &v41 - v24;
  BorderlessButtonStyle.init()();
  v26 = sub_10022C350(&qword_100CDCAE0);
  v27 = sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0);
  v28 = sub_100276188();
  View.buttonStyle<A>(_:)();
  (*(v12 + 8))(v16, v10);
  Solarium.init()();
  v29 = v46;
  v54 = v46;
  v53 = v46;
  sub_10022C350(&qword_100CDCAF0);
  v55 = v26;
  v56 = v10;
  v57 = v27;
  v58 = v28;
  swift_getOpaqueTypeConformance2();
  sub_100828BA8();
  v30 = v44;
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v18 + 8))(v21, v30);
  v31 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v34 = v41;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v31, 0);
    (*(v42 + 8))(v34, v43);
    if (v55)
    {
      goto LABEL_3;
    }

LABEL_5:
    v32 = &enum case for BlendMode.plusLighter(_:);
    goto LABEL_6;
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v32 = &enum case for BlendMode.normal(_:);
LABEL_6:
  v36 = v49;
  v35 = v50;
  v37 = v51;
  (*(v50 + 104))(v49, *v32, v51);
  v38 = sub_10022C350(&qword_100CDCB00);
  v39 = v52;
  (*(v35 + 32))(v52 + *(v38 + 36), v36, v37);
  return (*(v47 + 32))(v39, v25, v48);
}

uint64_t sub_1008287C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  type metadata accessor for ColorSchemeContrast();
  sub_1000037C4();
  v35 = v8;
  v36 = v7;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = *a2;
  if (*(a2 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = static HierarchicalShapeStyle.secondary.getter();
    goto LABEL_8;
  }

  v33 = v17;

  static os_log_type_t.fault.getter();
  v28 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v21, 0);
  (*(v15 + 8))(v20, v33);
  if (v37 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1008280BC(v13);
  v23 = v35;
  v22 = v36;
  (*(v35 + 104))(v10, enum case for ColorSchemeContrast.increased(_:), v36);
  v24 = static ColorSchemeContrast.== infix(_:_:)();
  v25 = *(v23 + 8);
  v25(v10, v22);
  v26 = (v25)(v13, v22);
  if (v24)
  {
    v27 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v27 = v34(v26);
  }

LABEL_8:
  v29 = v27;
  sub_10022C350(&qword_100CDCAD0);
  sub_100003A9C();
  (*(v30 + 16))(a4, a1);
  result = sub_10022C350(&qword_100CDCAF0);
  *(a4 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_100828AE0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDCAB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100828BA8()
{
  result = qword_100CDCAF8;
  if (!qword_100CDCAF8)
  {
    sub_10022E824(&qword_100CDCAF0);
    sub_10022E824(&qword_100CDCAE0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0);
    sub_100276188();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCAF8);
  }

  return result;
}

unint64_t sub_100828CF0()
{
  result = qword_100CDCB18;
  if (!qword_100CDCB18)
  {
    sub_10022E824(&qword_100CDCB00);
    sub_10022E824(&qword_100CDCAD0);
    sub_10022E824(&qword_100CDCAF0);
    sub_10022E824(&qword_100CDCAE0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100006F64(&qword_100CDCAE8, &qword_100CDCAE0);
    sub_100276188();
    swift_getOpaqueTypeConformance2();
    sub_100828BA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCB18);
  }

  return result;
}

uint64_t sub_100828EA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for TemperatureAveragesDetailInput();
  __chkstk_darwin(v5 - 8);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for PrecipitationAveragesDetailInput();
  __chkstk_darwin(v9 - 8);
  sub_1000037D8();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AveragesDetailInput.Content(0);
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = (v15 - v14);
  sub_10082961C(a1, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100829680(v16, v12, type metadata accessor for PrecipitationAveragesDetailInput);
      sub_1000161C0(v2 + 2, v2[5]);
      v24 = *(type metadata accessor for AveragesDetailInput(0) + 24);
      v27 = sub_100795578(v12);
      sub_1008296DC(v12, type metadata accessor for PrecipitationAveragesDetailInput);
      v26 = *(sub_10022C350(&qword_100CC3380) + 48);
      *a2 = v27;
      goto LABEL_6;
    case 2u:
      sub_100829680(v16, v8, type metadata accessor for TemperatureAveragesDetailInput);
      sub_1000161C0(v2 + 7, v2[10]);
      v24 = *(type metadata accessor for AveragesDetailInput(0) + 24);
      v25 = sub_10045E8E8(v8);
      sub_1008296DC(v8, type metadata accessor for TemperatureAveragesDetailInput);
      v26 = *(sub_10022C350(&qword_100CC3380) + 48);
      *a2 = v25 | 0x8000000000000000;
LABEL_6:
      type metadata accessor for Location();
      sub_100003A9C();
      (*(v28 + 16))(&a2[v26], a1 + v24);
      type metadata accessor for AveragesDetailViewModel();
      sub_100003E0C();
      break;
    case 3u:
    case 4u:
      v21 = *(sub_10022C350(&qword_100CC3388) + 48);
      v22 = type metadata accessor for AveragesDetailInput(0);
      sub_100010CE8(v22);
      sub_100003A9C();
      (*(v23 + 16))(&a2[v21], v8 + a1);
      type metadata accessor for AveragesDetailViewModel();
      sub_100003E0C();
      break;
    default:
      sub_10082926C(*v16, __src);
      v17 = *(sub_10022C350(&qword_100CC3378) + 64);
      memcpy(a2, __src, 0x60uLL);
      v18 = type metadata accessor for AveragesDetailInput(0);
      a2[96] = *(a1 + *(v18 + 20));
      v19 = *(v18 + 24);
      type metadata accessor for Location();
      sub_100003A9C();
      (*(v20 + 16))(&a2[v17], a1 + v19);
      type metadata accessor for AveragesDetailViewModel();
      sub_100003E0C();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10082926C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v21 = 0x8000000100AE04E0;
      v22 = objc_opt_self();
      v23 = [v22 mainBundle];
      v24._countAndFlagsBits = 0xD000000000000018;
      v39._object = 0x8000000100AE0520;
      v24._object = 0x8000000100AE0500;
      v39._countAndFlagsBits = 0xD000000000000053;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v39);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;

      v11 = [v22 mainBundle];
      v40._object = 0x8000000100AE05D0;
      v27._countAndFlagsBits = 0xD00000000000004ALL;
      v27._object = 0x8000000100AE0580;
      v40._countAndFlagsBits = 0xD000000000000055;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v11, v28, v40);
      v3 = 0xD00000000000001BLL;
      goto LABEL_7;
    }

    v3 = 0x616C732E69666977;
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x8000000100AE0650;
    v6._object = 0x8000000100AE0630;
    v37._countAndFlagsBits = 0xD00000000000005DLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v37);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;

    v11 = [v4 mainBundle];
    v36 = 0x8000000100AE06F0;
    v12 = 0x8000000100AE06B0;
    v13 = 0xD00000000000005FLL;
  }

  else
  {
    v3 = 0x616C732E69666977;
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v16._countAndFlagsBits = 0xD000000000000014;
    v38._object = 0x8000000100AE0770;
    v16._object = 0x8000000100AE0750;
    v38._countAndFlagsBits = 0xD000000000000051;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v38);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;

    v11 = [v14 mainBundle];
    v36 = 0x8000000100AE07D0;
    v12 = 0x8000000100AE06B0;
    v13 = 0xD000000000000053;
  }

  v19 = 0xD000000000000037;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*(&v12 - 1), 0, v11, v20, *&v13);
  v21 = 0xEA00000000006873;
LABEL_7:

  v29 = static String.localizedStringWithFormat(_:_:)();
  v31 = v30;

  static Color.blue.getter();
  v32 = Color.hex.getter();
  v34 = v33;

  *a2 = 1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v21;
  *(a2 + 24) = countAndFlagsBits;
  *(a2 + 32) = object;
  *(a2 + 40) = v29;
  *(a2 + 48) = v31;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v32;
  *(a2 + 88) = v34;
  return result;
}

uint64_t sub_10082961C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AveragesDetailInput.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100829680(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1008296DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10082973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a3;
  v79 = a2;
  v90 = a1;
  v85 = a6;
  v89 = sub_10022C350(&qword_100CA53F8);
  sub_1000037C4();
  v103 = v8;
  __chkstk_darwin(v9);
  v82 = &v76 - v10;
  v80 = sub_10022C350(&qword_100CBB580);
  sub_1000037C4();
  v81 = v11;
  __chkstk_darwin(v12);
  v77 = &v76 - v13;
  v14 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000038E4();
  v88 = v18;
  type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v105 = v19;
  v106 = v20;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v22 = v21;
  v23 = [objc_opt_self() mainBundle];
  v107._object = 0x8000000100AE08A0;
  v24._object = 0x8000000100AE0830;
  v107._countAndFlagsBits = 0x1000000000000181;
  v24._countAndFlagsBits = 0x100000000000006FLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v107);
  countAndFlagsBits = v26._countAndFlagsBits;
  object = v26._object;

  sub_10022C350(&qword_100CA5408);
  v27 = type metadata accessor for WeatherDescription.Argument();
  v96 = v27;
  v29 = *(v27 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v87 = *(v29 + 72);
  v28 = v87;
  v31 = swift_allocObject();
  v78 = v31;
  *(v31 + 16) = xmmword_100A3B030;
  v32 = (v31 + v30);
  v93 = v31 + v30;
  *v32 = a4;
  v32[1] = a5;
  v104 = *(v29 + 104);
  v95 = v29 + 104;
  (v104)(v31 + v30, enum case for WeatherDescription.Argument.string(_:), v27);
  v33 = (v32 + v28);

  v34 = v22;
  static WeatherFormatStyle<>.weather.getter();
  v101 = enum case for WeatherFormatPlaceholder.none(_:);
  v91 = *(v16 + 104);
  v102 = v16 + 104;
  v35 = v88;
  v91(v88);
  v92 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v100 = sub_100114168();
  v36 = v105;
  v37 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v39 = v38;

  v40 = *(v16 + 8);
  v98 = v16 + 8;
  v99 = v40;
  v40(v35, v14);
  v41 = *(v106 + 8);
  v106 += 8;
  v97 = v41;
  v42 = v34;
  v41(v34, v36);
  *v33 = v37;
  v33[1] = v39;
  v94 = enum case for WeatherDescription.Argument.measurement(_:);
  v43 = v96;
  v104(v33);
  v44 = v87;
  v45 = (v93 + 2 * v87);
  v76 = v42;
  static WeatherFormatStyle<>.weather.getter();
  v46 = v88;
  v86 = v14;
  (v91)(v88, v101, v14);
  static UnitManager.standard.getter();
  v47 = v46;
  v48 = v105;
  v49 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v51 = v50;

  v99(v47, v14);
  v52 = v76;
  v97(v76, v48);
  *v45 = v49;
  v45[1] = v51;
  (v104)(v45, v94, v43);
  v53 = (v93 + 3 * v44);
  v79 = sub_10022C350(&unk_100CABCA0);
  v54 = v77;
  Trend.baseline.getter();
  v55 = v82;
  v56 = v80;
  TrendBaseline.value.getter();
  v81[1](v54, v56);
  static WeatherFormatStyle<>.weather.getter();
  v57 = v86;
  (v91)(v47, v101, v86);
  static UnitManager.standard.getter();
  v58 = v52;
  v59 = v47;
  v60 = v89;
  v61 = v105;
  v62 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v64 = v63;

  v99(v59, v57);
  v97(v58, v61);
  v65 = *(v103 + 8);
  v103 += 8;
  v81 = v65;
  v66 = v60;
  (v65)(v55, v60);
  *v53 = v62;
  v53[1] = v64;
  (v104)(v53, v94, v96);
  v67 = (v93 + 4 * v87);
  v68 = v55;
  Trend.currentValue.getter();
  static WeatherFormatStyle<>.weather.getter();
  v69 = v86;
  (v91)(v59, v101, v86);
  static UnitManager.standard.getter();
  v70 = v66;
  v71 = v105;
  v72 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v74 = v73;

  v99(v59, v69);
  v97(v58, v71);
  (v81)(v68, v70);
  *v67 = v72;
  v67[1] = v74;
  (v104)(v67, v94, v96);
  return WeatherDescription.init(format:_:)();
}

uint64_t sub_100829FF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityInvertColors.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10082A044(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_10082A10C()
{
  sub_100006F14(v0 + 16);

  sub_100006F14(v0 + 64);

  sub_100006F14(v0 + 120);

  sub_100006F14(v0 + 168);
  return v0;
}

uint64_t sub_10082A164()
{
  sub_10082A10C();

  return swift_deallocClassInstance();
}

uint64_t sub_10082A198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_10022C350(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_100060DE0(a1, &v14 - v11, a5);
  return a7(v12);
}

void sub_10082A28C()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100007760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10082A328(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PeakUpperMarkModel(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000085DC();
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = *v12 == *v13 && v10 == v11;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_1000085DC();
  if (v15)
  {
    if (v16)
    {
      v19 = *v17 == *v18 && v15 == v16;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10082A46C()
{
  result = type metadata accessor for PeakUpperMarkModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10082A518@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  type metadata accessor for AnnotationOverflowResolution.Boundary();
  sub_1000037C4();
  v56 = v3;
  v57 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v54 = v5 - v4;
  sub_1000038CC();
  v6 = type metadata accessor for AnnotationOverflowResolution.Strategy();
  __chkstk_darwin(v6 - 8);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v43 - v9;
  sub_1000038CC();
  type metadata accessor for AnnotationOverflowResolution();
  sub_1000037C4();
  v60 = v11;
  v61 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v53 = v13 - v12;
  sub_1000038CC();
  type metadata accessor for AnnotationPosition();
  sub_1000037C4();
  v58 = v15;
  v59 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v50 = v17 - v16;
  v18 = sub_10022C350(&qword_100CB6970);
  __chkstk_darwin(v18 - 8);
  v44 = type metadata accessor for PointMark();
  sub_1000037C4();
  v45 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v47 = sub_10022C350(&qword_100CCDD38);
  sub_1000037C4();
  v48 = v24;
  __chkstk_darwin(v25);
  v27 = &v43 - v26;
  v49 = sub_10022C350(&qword_100CCDD30);
  sub_1000037C4();
  v51 = v28;
  __chkstk_darwin(v29);
  v43 = &v43 - v30;
  v31 = sub_1000038CC();
  type metadata accessor for PeakUpperMark(v31);
  v46 = v1;
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();
  PointMark.init<A>(x:y:)();
  v32 = v44;
  ChartContent.symbolSize(_:)();
  (*(v45 + 8))(v23, v32);
  v68 = static Color.clear.getter();
  v64 = v32;
  v65 = &protocol witness table for PointMark;
  sub_100010D0C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v43;
  v35 = v47;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v48 + 8))(v27, v35);
  v36 = v50;
  static AnnotationPosition.bottomTrailing.getter();
  v37 = v54;
  static AnnotationOverflowResolution.Boundary.plot.getter();
  static AnnotationOverflowResolution.Strategy.fit(to:)();
  v38 = v57;
  v39 = *(v56 + 8);
  v39(v37, v57);
  static AnnotationOverflowResolution.Boundary.plot.getter();
  static AnnotationOverflowResolution.Strategy.fit(to:)();
  v39(v37, v38);
  v40 = v53;
  AnnotationOverflowResolution.init(x:y:)();
  v63 = v46;
  static Alignment.center.getter();
  sub_10022C350(&qword_100CDCEA0);
  v64 = v35;
  v65 = &type metadata for Color;
  v66 = OpaqueTypeConformance2;
  v67 = &protocol witness table for Color;
  sub_10001CEBC();
  swift_getOpaqueTypeConformance2();
  sub_10082B218();
  v41 = v49;
  ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)();
  (*(v60 + 8))(v40, v61);
  (*(v58 + 8))(v36, v59);
  return (*(v51 + 8))(v34, v41);
}

double sub_10082AB78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v11 = 0;
  sub_10082AC8C(a1, __src);
  memcpy(__dst, __src, 0x89uLL);
  memcpy(v13, __src, 0x89uLL);
  sub_100060DE0(__dst, &v8, &qword_100CDCED0);
  sub_10003FDF4(v13, &qword_100CDCED0);
  memcpy(&v10[7], __dst, 0x89uLL);
  v5 = v11;
  v6 = *(a1 + *(type metadata accessor for PeakUpperMark(0) + 24));
  LOBYTE(a1) = static Edge.Set.all.getter();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v10, 0x90uLL);
  *(a2 + 168) = a1;
  *(a2 + 176) = 0x4020000000000000;
  *(a2 + 184) = v6;
  result = 0.0;
  *(a2 + 192) = xmmword_100A5B9E0;
  *(a2 + 208) = 0;
  *(a2 + 209) = 1;
  return result;
}

uint64_t sub_10082AC8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v74 = type metadata accessor for Text.Scale();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeakUpperMarkModel(0);
  v6 = v5[8];
  v75 = a1;
  v7 = (a1 + v6);
  v8 = v7[1];
  if (v8)
  {
    __src[0] = *v7;
    __src[1] = v8;
    sub_10002D5A4();

    v9 = Text.init<A>(_:)();
    v70 = v11;
    v71 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    static Font.caption.getter();
    static Font.Weight.medium.getter();
    v15 = Font.weight(_:)();

    v16 = swift_getKeyPath();
    v17 = v13 & 1;
    LOBYTE(__src[0]) = v13 & 1;
    LOBYTE(v81[0]) = 0;
    v8 = *(v75 + *(type metadata accessor for PeakUpperMark(0) + 20));
    v18 = swift_getKeyPath();
    __src[0] = v9;
    __src[1] = v71;
    LOBYTE(__src[2]) = v17;
    __src[3] = v70;
    __src[4] = KeyPath;
    __src[5] = 1;
    LOBYTE(__src[6]) = 0;
    __src[7] = v16;
    __src[8] = v15;
  }

  else
  {
    v18 = 0;
    memset(__src, 0, 72);
  }

  __src[9] = v18;
  __src[10] = v8;
  v19 = (v75 + v5[7]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = (v75 + v5[6]);
    v23 = v22[1];
    v81[0] = *v22;
    v81[1] = v23;
    sub_10002D5A4();

    v24 = Text.init<A>(_:)();
    v70 = v25;
    v71 = v24;
    v27 = v26;
    v69 = v28;
    v81[0] = v21;
    v81[1] = v20;
    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    static Text.Scale.secondary.getter();
    v34 = Text.textScale(_:isEnabled:)();
    v68 = v35;
    HIDWORD(v67) = v36;
    sub_10010CD64(v29, v31, v33 & 1);

    (*(v72 + 8))(v4, v74);
    v38 = v70;
    v37 = v71;
    v39 = v68;
    v72 = static Text.+ infix(_:_:)();
    v41 = v40;
    LODWORD(v74) = v42;
    v44 = v43;
    sub_10010CD64(v34, v39, BYTE4(v67) & 1);

    sub_10010CD64(v37, v38, v27 & 1);
  }

  else
  {
    v45 = (v75 + v5[6]);
    v46 = v45[1];
    v81[0] = *v45;
    v81[1] = v46;
    sub_10002D5A4();

    v72 = Text.init<A>(_:)();
    v41 = v47;
    LODWORD(v74) = v48;
    v44 = v49;
  }

  v70 = v41;
  v71 = v44;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = v72;
  v51 = Text.font(_:)();
  v53 = v52;
  v55 = v54;

  type metadata accessor for PeakUpperMark(0);
  v56 = Text.foregroundColor(_:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_10010CD64(v51, v53, v55 & 1);

  v63 = swift_getKeyPath();
  memcpy(v79, __src, sizeof(v79));
  v78 = v60 & 1;
  memcpy(v80, __src, sizeof(v80));
  v77 = v60 & 1;
  v76 = 0;
  v64 = v50;
  v65 = v73;
  memcpy(v73, __src, 0x58uLL);
  v65[11] = v56;
  v65[12] = v58;
  *(v65 + 104) = v60 & 1;
  v65[14] = v62;
  v65[15] = v63;
  v65[16] = 1;
  *(v65 + 136) = 0;
  sub_100060DE0(__src, v81, qword_100CDCED8);
  sub_100060DE0(v80, v81, qword_100CDCED8);
  sub_10010CD54(v56, v58, v60 & 1);

  sub_10010CD64(v64, v70, v74 & 1);

  sub_10003FDF4(__src, qword_100CDCED8);
  sub_10010CD64(v56, v58, v78);

  memcpy(v81, v79, sizeof(v81));
  return sub_10003FDF4(v81, qword_100CDCED8);
}

unint64_t sub_10082B218()
{
  result = qword_100CDCEA8;
  if (!qword_100CDCEA8)
  {
    sub_10022E824(&qword_100CDCEA0);
    sub_10082B2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCEA8);
  }

  return result;
}

unint64_t sub_10082B2A4()
{
  result = qword_100CDCEB0;
  if (!qword_100CDCEB0)
  {
    sub_10022E824(&qword_100CDCEB8);
    sub_10082B330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCEB0);
  }

  return result;
}

unint64_t sub_10082B330()
{
  result = qword_100CDCEC0;
  if (!qword_100CDCEC0)
  {
    sub_10022E824(&qword_100CDCEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCEC0);
  }

  return result;
}

void sub_10082B394()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_10082B788();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int16 *sub_10082B42C(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return sub_100024D10(result, v5, v4);
  }

  v16 = *(((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_10082B594(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) = a2 + 1;
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_10082B788()
{
  if (!qword_100CDCF60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDCF60);
    }
  }
}

double sub_10082B81C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(v5 + *(a1 + 40) + 16))
  {
    Width = CGRectGetWidth(*&a2);
  }

  else
  {
    static Alignment.bottomLeading.getter();
    if (static Alignment.== infix(_:_:)())
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      Width = CGRectGetWidth(v14);
      v11 = 0.25;
      return Width * v11;
    }

    static Alignment.bottomTrailing.getter();
    v12 = static Alignment.== infix(_:_:)();
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    Width = CGRectGetWidth(v15);
    if (v12)
    {
      v11 = 0.75;
      return Width * v11;
    }
  }

  v11 = 0.5;
  return Width * v11;
}

double sub_10082B8EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = type metadata accessor for RoundedCornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &MinY - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10082B81C(a1, a3, a4, a5, a6);
  MinY = *(v6 + *(a1 + 36));
  v25 = v17;
  sub_10082C778(a3, a4, a5, a6, MinY * 3.0 * 0.5, 0.0);
  (*(v14 + 104))(v16, enum case for RoundedCornerStyle.continuous(_:), v13);
  Path.init(roundedRect:cornerRadius:style:)();
  v18 = v25;
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGRectGetMinY(v29);
  Path.move(to:)();
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMinY(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinY(v32);
  Path.addCurve(to:control1:control2:)();
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  v19 = CGRectGetMinY(v33);
  v20 = *(v6 + *(a1 + 36)) * 3.0;
  MinY = v19 + v20 * 0.5;
  v25 = v18 - v20 / 6.0;
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinY(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMinY(v35);
  Path.addCurve(to:control1:control2:)();
  Path.addLine(to:)();
  v21 = v28;
  result = *&v26;
  v23 = v27;
  *a2 = v26;
  *(a2 + 16) = v23;
  *(a2 + 32) = v21;
  return result;
}

uint64_t sub_10082BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_10022E824(&qword_100CDCF68);
  v3 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v24 = v4;
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v25 = v9;
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v23 = &v23 - v14;
  sub_10082BFCC(a1, v31);
  sub_10022C350(&qword_100CDCF70);
  v15 = *(a1 + 24);
  sub_10082C598();
  j___s7SwiftUI9AlignmentV6centerACvgZ();
  View.background<A>(_:alignment:)();
  v33[0] = v31[0];
  v33[1] = v31[1];
  v34[0] = v32[0];
  *(v34 + 10) = *(v32 + 10);
  sub_10003FDF4(v33, &qword_100CDCF70);
  static Edge.Set.top.getter();
  sub_100004724();
  v17 = sub_100006F64(v16, &qword_100CDCF68);
  v29 = v15;
  v30 = v17;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v24 + 8))(v7, v3);
  v27 = WitnessTable;
  v28 = &protocol witness table for _PaddingLayout;
  v19 = swift_getWitnessTable();
  v20 = v23;
  sub_1000833D8(v12, v8, v19);
  v21 = *(v25 + 8);
  v21(v12, v8);
  sub_1000833D8(v20, v8, v19);
  return (v21)(v20, v8);
}

uint64_t sub_10082BFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000037C4();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v11 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, v2, a1, v10);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v6 + 32))(v13 + v12, v11, a1);
  LOBYTE(v11) = static Edge.Set.top.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = sub_10082C6DC;
  *(a2 + 8) = v13;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_10082C120@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_10022C350(&qword_100CDCFA8);
  __chkstk_darwin(v33);
  v4 = &v30 - v3;
  v31 = sub_10022C350(&qword_100CDCFB0);
  __chkstk_darwin(v31);
  v6 = &v30 - v5;
  v7 = type metadata accessor for LocalCoordinateSpace();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CDCFB8);
  __chkstk_darwin(v32);
  v12 = &v30 - v11;
  v13 = type metadata accessor for UpArrowPopoverBackgroundView();
  v14 = *(a1 + *(v13 + 44));
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v8 + 8))(v10, v7);
  sub_10082B8EC(v13, &v35, v16, v18, v20, v22);
  if (v14 == 1)
  {
    v23 = v32;
    static Material.thick.getter();
    static Color.black.getter();
    Color.opacity(_:)();

    sub_10022C350(&qword_100CDCFD0);
    static ShadowStyle.drop(color:radius:x:y:)();

    v24 = v36;
    *v12 = v35;
    *(v12 + 1) = v24;
    v12[32] = v37;
    *&v12[*(v23 + 56)] = 256;
    v25 = &qword_100CDCFB8;
    sub_100060DE0(v12, v6, &qword_100CDCFB8);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDCFC0, &qword_100CDCFB8);
    sub_100006F64(&qword_100CDCFC8, &qword_100CDCFA8);
    _ConditionalContent<>.init(storage:)();
    v26 = v12;
  }

  else
  {
    v27 = v33;
    static Material.thick.getter();
    v28 = v36;
    *v4 = v35;
    *(v4 + 1) = v28;
    v4[32] = v37;
    *&v4[*(v27 + 56)] = 256;
    v25 = &qword_100CDCFA8;
    sub_100060DE0(v4, v6, &qword_100CDCFA8);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDCFC0, &qword_100CDCFB8);
    sub_100006F64(&qword_100CDCFC8, &qword_100CDCFA8);
    _ConditionalContent<>.init(storage:)();
    v26 = v4;
  }

  return sub_10003FDF4(v26, v25);
}

unint64_t sub_10082C598()
{
  result = qword_100CDCF78;
  if (!qword_100CDCF78)
  {
    sub_10022E824(&qword_100CDCF70);
    sub_10082C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCF78);
  }

  return result;
}

unint64_t sub_10082C624()
{
  result = qword_100CDCF80;
  if (!qword_100CDCF80)
  {
    sub_10022E824(&qword_100CDCF88);
    sub_100006F64(&qword_100CDCF90, &qword_100CDCF98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDCF80);
  }

  return result;
}

uint64_t sub_10082C6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UpArrowPopoverBackgroundView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10082C120(v4, a1);
}

uint64_t sub_10082C798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100ABE5C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10082C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10082C798(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10082C864(uint64_t a1)
{
  v2 = sub_10082CF00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10082C8A0(uint64_t a1)
{
  v2 = sub_10082CF00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10082C8DC(void *a1)
{
  v2 = sub_10022C350(&qword_100CDD088);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_1000161C0(a1, a1[3]);
  sub_10082CF00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for AppConfiguration();
  sub_10001F9C8();
  sub_10082D01C(v8, v9);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_10082CA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v22 = v5;
  __chkstk_darwin(v6);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CDD070);
  sub_1000037C4();
  v23 = v9;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10082CF00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v22;
    v17 = v24;
    sub_10001F9C8();
    sub_10082D01C(v18, v19);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    (*(v16 + 32))(v15, v25, v4);
    sub_10082CF54(v15, v17);
  }

  return sub_100006F14(a1);
}

uint64_t sub_10082CCCC@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000100ABE5C0;
  v4 = type metadata accessor for AppConfiguration();
  *(inited + 72) = v4;
  v5 = sub_100042FB0((inited + 48));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CDD090);
  a1[4] = sub_10082CFB8();
  sub_100042FB0(a1);
  type metadata accessor for AppConfigurationState();
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10082CE1C()
{
  sub_10082D01C(&qword_100CDD0A0, type metadata accessor for AppConfigurationState);

  return ShortDescribable.description.getter();
}

unint64_t sub_10082CF00()
{
  result = qword_100CDD078;
  if (!qword_100CDD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD078);
  }

  return result;
}

uint64_t sub_10082CF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfigurationState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10082CFB8()
{
  result = qword_100CDD098;
  if (!qword_100CDD098)
  {
    sub_10022E824(&qword_100CDD090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD098);
  }

  return result;
}

uint64_t sub_10082D01C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AppConfigurationState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10082D114()
{
  result = qword_100CDD0A8;
  if (!qword_100CDD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD0A8);
  }

  return result;
}

unint64_t sub_10082D16C()
{
  result = qword_100CDD0B0;
  if (!qword_100CDD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD0B0);
  }

  return result;
}

unint64_t sub_10082D1C4()
{
  result = qword_100CDD0B8;
  if (!qword_100CDD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDD0B8);
  }

  return result;
}

uint64_t sub_10082D228(uint64_t a1, void *a2)
{
  v66 = a2;
  v3 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  v57 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v56 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &qword_100CAC4D8;
  v65 = sub_10022C350(&qword_100CAC4D8);
  __chkstk_darwin(v65);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v52 - v8;
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v58 = a1;

  v17 = 0;
  v53 = v16;
  v54 = a1 + 64;
  v55 = v11;
  if (v15)
  {
LABEL_8:
    while (1)
    {
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = v58;
      v21 = *(v58 + 48);
      v22 = type metadata accessor for Date();
      v62 = *(v22 - 8);
      v60 = v62[9];
      v23 = v62[2];
      v67 = v22;
      v61 = v23;
      v59 = v62 + 2;
      (v23)(v11, v21 + v60 * v19);
      v24 = *(v20 + 56);
      v63 = *(v57 + 72);
      v25 = v65;
      sub_100835D98(v24 + v63 * v19, &v11[*(v65 + 48)]);
      sub_100035AD0(v11, v68, v5);
      v26 = v11;
      v27 = v64;
      v28 = v5;
      sub_100035AD0(v26, v64, v5);
      v29 = v56;
      sub_100835520(v27 + *(v25 + 48), v56);
      v30 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v30;
      v69 = v32;
      sub_100237FB4();
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      v39 = v34;
      sub_10022C350(&qword_100CA3AE0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v37))
      {
        sub_100237FB4();
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_22;
        }

        v38 = v40;
      }

      v42 = v28;
      v43 = v69;
      v11 = v55;
      if (v39)
      {
        sub_100835CF8(v29, v69[7] + v38 * v63);
      }

      else
      {
        v69[(v38 >> 6) + 8] |= 1 << v38;
        v61(v43[6] + v38 * v60, v68, v67);
        sub_100835520(v29, v43[7] + v38 * v63);
        v44 = v43[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_21;
        }

        v43[2] = v46;
      }

      v15 &= v15 - 1;
      v47 = *(v65 + 48);
      *v66 = v43;
      v48 = v62[1];
      v50 = v67;
      v49 = v68;
      v48(v68, v67);
      v48(v64, v50);
      sub_10083559C(v49 + v47, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
      v5 = v42;
      sub_1000180EC(v11, v42);
      v16 = v53;
      v12 = v54;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10082D708(uint64_t *a1)
{
  v2 = *(sub_10022C350(&qword_100CAC4D8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100309228();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_100834344(v6);
  *a1 = v3;
}

uint64_t sub_10082D7BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = type metadata accessor for DateComponents();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Calendar();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v33 = a1;
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  (*(v11 + 8))(v15, v9);
  sub_10022C350(&qword_100CA53E8);
  sub_1000038D8();
  v23 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v25 = v24;
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100A2C3F0;
  (*(v25 + 104))(v27 + v26, enum case for Calendar.Component.year(_:), v23);
  sub_10004BCB0(v27);
  Calendar.dateComponents(_:from:)();

  v28 = DateComponents.year.getter();
  if (v29)
  {
    sub_100835408();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  else
  {
    sub_10082DABC(v33, v28, a2);
  }

  (*(v4 + 8))(v8, v34);
  return (*(v18 + 8))(v22, v16);
}

uint64_t sub_10082DABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for MaxDaylight(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  result = sub_10082DD00(a1, a2);
  if (!v3)
  {
    v18 = result;
    Location.timeZone.getter();
    v24 = sub_10082F064();
    v23 = a3;
    v19 = *(v11 + 8);
    v19(v16, v10);
    Location.timeZone.getter();
    sub_10082F140(v18, v13, v9);
    v19(v13, v10);

    v20 = type metadata accessor for DaylightData(0);
    v21 = v23;
    result = sub_100835520(v9, v23 + *(v20 + 20));
    *v21 = v24;
  }

  return result;
}

uint64_t sub_10082DD00(uint64_t a1, uint64_t *a2)
{
  v145 = a2;
  v133 = sub_10022C350(&qword_100CDD0D0);
  __chkstk_darwin(v133);
  v134 = &v118 - v3;
  v4 = sub_10022C350(&qword_100CBADB0);
  __chkstk_darwin(v4 - 8);
  v129 = &v118 - v5;
  v6 = type metadata accessor for Calendar.Component();
  v139 = *(v6 - 8);
  v149 = v139;
  v150 = v6;
  __chkstk_darwin(v6);
  v130 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v118 - v9;
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v128 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = &v118 - v13;
  __chkstk_darwin(v14);
  v135 = &v118 - v15;
  __chkstk_darwin(v16);
  v142 = &v118 - v17;
  v18 = sub_10022C350(&qword_100CACE08);
  __chkstk_darwin(v18 - 8);
  v153 = &v118 - v19;
  v154 = type metadata accessor for Date();
  v141 = *(v154 - 8);
  __chkstk_darwin(v154);
  v126 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v118 - v22;
  __chkstk_darwin(v23);
  v146 = &v118 - v24;
  __chkstk_darwin(v25);
  v147 = &v118 - v26;
  __chkstk_darwin(v27);
  v140 = &v118 - v28;
  v152 = type metadata accessor for DateComponents();
  v127 = *(v152 - 8);
  __chkstk_darwin(v152);
  v143 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v118 - v31;
  v33 = type metadata accessor for TimeZone();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Calendar();
  v125 = *(v151 - 8);
  __chkstk_darwin(v151);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.timeZone.getter();
  static Calendar.currentCalendar(with:)();
  v138 = *(v34 + 8);
  v138(v36, v33);
  v123 = a1;
  Location.timeZone.getter();
  sub_10022C350(&qword_100CA53E8);
  v39 = v149;
  v40 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100A2C3F0;
  v42 = *(v39 + 104);
  v121 = enum case for Calendar.Component.year(_:);
  v122 = (v39 + 104);
  v120 = v42;
  v42(v41 + v40);
  sub_10004BCB0(v41);
  v43 = v140;
  static WeatherClock.date.getter();
  Calendar.dateComponents(_:from:)();

  v44 = v43;
  v45 = v153;
  v46 = v154;
  v136 = *(v141 + 8);
  v137 = v141 + 8;
  v136(v44, v154);
  (*(v34 + 16))(v45, v36, v33);
  sub_10001B350(v45, 0, 1, v33);
  DateComponents.timeZone.setter();
  DateComponents.year.setter();
  DateComponents.day.setter();
  DateComponents.month.setter();
  DateComponents.hour.setter();
  DateComponents.second.setter();
  v144 = v33;
  v47 = v33;
  v48 = v142;
  v138(v36, v47);
  Calendar.date(from:)();
  if (sub_100024D10(v48, 1, v46) == 1)
  {
    sub_1000180EC(v48, &unk_100CB2CF0);
    sub_100835408();
    v49 = swift_allocError();
    *v50 = 0;
    v148 = v49;
    swift_willThrow();
    v51 = v152;
LABEL_5:
    (*(v127 + 8))(v32, v51);
    return (*(v125 + 8))(v38, v151);
  }

  v119 = v32;
  v52 = v147;
  v138 = *(v141 + 32);
  v139 = v141 + 32;
  (v138)(v147, v48, v46);
  v53 = v124;
  v54 = v150;
  v55 = v120;
  v120(v124, enum case for Calendar.Component.month(_:), v150);
  v56 = v130;
  v55(v130, v121, v54);
  v142 = v38;
  v145 = Calendar.range(of:in:for:)();
  v58 = v57;
  v60 = v59;
  v62 = v149 + 8;
  v61 = *(v149 + 8);
  v61(v56, v54);
  v61(v53, v54);
  v63 = v141;
  if (v60)
  {
    sub_100835408();
    v64 = swift_allocError();
    *v65 = 0;
    v148 = v64;
    swift_willThrow();
    v136(v52, v154);
    v51 = v152;
    v38 = v142;
    v32 = v119;
    goto LABEL_5;
  }

  v67 = __OFSUB__(v58, v145);
  v68 = (v58 - v145);
  if (v67)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_10022C350(&qword_100CDD0D8);
  sub_10005B714(&qword_100CA39C8);
  v69 = Dictionary.init(dictionaryLiteral:)();
  if ((v68 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v124 = v69;
  if (!v68)
  {
    v72 = v151;
LABEL_48:
    v136(v147, v154);
    (*(v127 + 8))(v119, v152);
    (*(v125 + 8))(v142, v72);
    return v124;
  }

  v145 = (v127 + 8);
  v130 = (v63 + 16);
  v70 = 0;
  v62 = v129;
  v71 = v135;
  v72 = v151;
  v73 = v144;
  v140 = v68;
  while (1)
  {
    if (v70 >= v68)
    {
      goto LABEL_50;
    }

    v67 = __OFADD__(v70, 1);
    v74 = v70 + 1;
    if (v67)
    {
      goto LABEL_51;
    }

    sub_10001B350(v62, 1, 1, v72);
    sub_10001B350(v45, 1, 1, v73);
    v75 = v73;
    v76 = v143;
    v150 = v74;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v77 = v75;
    v78 = v142;
    Calendar.date(byAdding:to:wrappingComponents:)();
    v149 = *v145;
    (v149)(v76, v152);
    if (sub_100024D10(v71, 1, v154) != 1)
    {
      break;
    }

    sub_1000180EC(v71, &unk_100CB2CF0);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000703C(v79, qword_100D90B68);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v82 = os_log_type_enabled(v80, v81);
    v70 = v150;
    v72 = v151;
    v73 = v144;
    if (v82)
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Failed to create beginningOfTheNextMonth", v83, 2u);
    }

LABEL_24:
    v45 = v153;
LABEL_45:
    v68 = v140;
    if (v70 == v140)
    {
      goto LABEL_48;
    }
  }

  (v138)(v146, v71, v154);
  sub_10001B350(v62, 1, 1, v151);
  sub_10001B350(v153, 1, 1, v77);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v84 = v132;
  Calendar.date(byAdding:to:wrappingComponents:)();
  (v149)(v76, v152);
  if (sub_100024D10(v84, 1, v154) == 1)
  {
    sub_1000180EC(v84, &unk_100CB2CF0);
    v70 = v150;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_10000703C(v85, qword_100D90B68);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    v88 = os_log_type_enabled(v86, v87);
    v72 = v151;
    v73 = v144;
    v71 = v135;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to create beginningOfTheMonth", v89, 2u);
    }

    v136(v146, v154);
    goto LABEL_24;
  }

  v90 = v154;
  (v138)(v131, v84, v154);
  v91 = v151;
  sub_10001B350(v62, 1, 1, v151);
  sub_10001B350(v153, 1, 1, v77);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v62 = v128;
  Calendar.date(byAdding:to:wrappingComponents:)();
  (v149)(v76, v152);
  if (sub_100024D10(v62, 1, v90) == 1)
  {
    v92 = v91;
    sub_1000180EC(v62, &unk_100CB2CF0);
    v70 = v150;
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_10000703C(v93, qword_100D90B68);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    v96 = os_log_type_enabled(v94, v95);
    v62 = v129;
    v71 = v135;
    v72 = v92;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to create endingOfThePreviousMonth", v97, 2u);
    }

    v98 = v154;
    v99 = v136;
    v136(v131, v154);
    v99(v146, v98);
    v45 = v153;
LABEL_44:
    v73 = v144;
    goto LABEL_45;
  }

  v100 = v126;
  (v138)(v126, v62, v154);
  v122 = objc_autoreleasePoolPush();
  v101 = sub_100832648(v123, v100, v146, v78);
  v155 = &_swiftEmptyDictionarySingleton;
  v102 = v101 + 64;
  v103 = 1 << *(v101 + 32);
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  else
  {
    v104 = -1;
  }

  v105 = v104 & *(v101 + 64);
  v106 = (v103 + 63) >> 6;
  v149 = v101;

  v107 = 0;
  if (!v105)
  {
LABEL_36:
    while (1)
    {
      v109 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        break;
      }

      if (v109 >= v106)
      {

        v114 = v124;
        swift_isUniquelyReferenced_nonNull_native();
        v155 = v114;
        v115 = v131;
        sub_100238CAC();
        v124 = v155;
        objc_autoreleasePoolPop(v122);
        v116 = v154;
        v117 = v136;
        v136(v126, v154);
        v117(v115, v116);
        v117(v146, v116);
        v62 = v129;
        v71 = v135;
        v45 = v153;
        v70 = v150;
        v72 = v151;
        goto LABEL_44;
      }

      v105 = *(v102 + 8 * v109);
      ++v107;
      if (v105)
      {
        v108 = v148;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
    v108 = v148;
    v109 = v107;
LABEL_40:
    v110 = __clz(__rbit64(v105)) | (v109 << 6);
    v111 = v149;
    v62 = v134;
    (*(v141 + 16))(v134, *(v149 + 48) + *(v141 + 72) * v110, v154);
    v112 = *(v111 + 56);
    v113 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
    (*(*(v113 - 8) + 16))(v62 + *(v133 + 48), v112 + *(*(v113 - 8) + 72) * v110, v113);
    sub_100832FDC(&v155, v62);
    v148 = v108;
    if (v108)
    {
      break;
    }

    v105 &= v105 - 1;
    sub_1000180EC(v62, &qword_100CDD0D0);
    v107 = v109;
    if (!v105)
    {
      goto LABEL_36;
    }
  }

LABEL_54:

  sub_1000180EC(v62, &qword_100CDD0D0);

  __break(1u);
  return result;
}

uint64_t sub_10082F064()
{
  type metadata accessor for Date();
  type metadata accessor for MonthSunAverage(0);
  sub_10005B714(&qword_100CA39C8);
  v2 = Dictionary.init(dictionaryLiteral:)();
  sub_10051AA34();
  if (v0)
  {
  }

  return v2;
}

uint64_t sub_10082F140@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v153 = a2;
  v126 = a3;
  v120 = type metadata accessor for EdgeSunEvents(0);
  __chkstk_darwin(v120);
  v121 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange(0);
  __chkstk_darwin(v146);
  v139 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Date();
  v8 = *(v159 - 8);
  __chkstk_darwin(v159);
  v119 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v119 - v11;
  __chkstk_darwin(v12);
  v125 = &v119 - v13;
  __chkstk_darwin(v14);
  v124 = &v119 - v15;
  __chkstk_darwin(v16);
  v138 = &v119 - v17;
  v18 = sub_10022C350(&qword_100CDD0C8);
  __chkstk_darwin(v18 - 8);
  v129 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v152 = &v119 - v21;
  v147 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v147);
  v122 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v142 = &v119 - v24;
  __chkstk_darwin(v25);
  v127 = &v119 - v26;
  __chkstk_darwin(v27);
  v128 = &v119 - v28;
  __chkstk_darwin(v29);
  v137 = &v119 - v30;
  __chkstk_darwin(v31);
  v136 = &v119 - v32;
  __chkstk_darwin(v33);
  v150 = &v119 - v34;
  __chkstk_darwin(v35);
  v151 = &v119 - v36;
  __chkstk_darwin(v37);
  v149 = &v119 - v38;
  v141 = type metadata accessor for Calendar();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v154 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_10022C350(&qword_100CC37A0);
  __chkstk_darwin(v156);
  v41 = &v119 - v40;
  v43 = a1 + 64;
  v42 = *(a1 + 64);
  v158 = &_swiftEmptyDictionarySingleton;
  v44 = 1 << *(a1 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42;
  v47 = (v44 + 63) >> 6;
  v157 = v8;
  v155 = v8 + 16;
  v48 = a1;

  v49 = 0;
  if (v46)
  {
    while (1)
    {
      v50 = v4;
      v51 = v49;
LABEL_9:
      v52 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v53 = v52 | (v51 << 6);
      (*(v157 + 16))(v41, *(v48 + 48) + *(v157 + 72) * v53, v159);
      *&v41[*(v156 + 48)] = *(*(v48 + 56) + 8 * v53);

      sub_10082D228(v54, &v158);
      v4 = v50;
      sub_1000180EC(v41, &qword_100CC37A0);
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v51 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v51);
    ++v49;
    if (v46)
    {
      v50 = v4;
      v49 = v51;
      goto LABEL_9;
    }
  }

  v55 = sub_1003072A8(v158);

  v158 = v55;
  sub_10082D708(&v158);
  v132 = v4;
  if (v4)
  {
LABEL_32:

    __break(1u);
    return result;
  }

  v131 = v158;
  static Calendar.currentCalendar(with:)();
  v156 = swift_allocBox();
  v145 = v56;
  v57 = v159;
  sub_10001B350(v56, 1, 1, v159);
  v155 = swift_allocBox();
  v144 = v58;
  sub_10001B350(v58, 1, 1, v57);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v148 = swift_allocBox();
  v143 = v60;
  sub_10001B350(v60, 1, 1, v57);
  v147 = swift_allocBox();
  v133 = v61;
  sub_10001B350(v61, 1, 1, v57);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = (v62 + 16);
  v64 = v149;
  sub_10001B350(v149, 1, 1, v57);
  v65 = v152;
  sub_10001B350(v152, 1, 1, v146);
  v66 = v151;
  sub_10001B350(v151, 1, 1, v57);
  v67 = v150;
  sub_10001B350(v150, 1, 1, v57);
  v130 = objc_autoreleasePoolPush();
  __chkstk_darwin(v130);
  v68 = v153;
  *(&v119 - 12) = v156;
  *(&v119 - 11) = v68;
  *(&v119 - 10) = v155;
  *(&v119 - 9) = v59;
  v135 = v59;
  v134 = v62;
  v69 = v148;
  *(&v119 - 8) = v62;
  *(&v119 - 7) = v69;
  *(&v119 - 6) = v147;
  *(&v119 - 5) = v66;
  *(&v119 - 4) = v154;
  *(&v119 - 3) = v67;
  *(&v119 - 2) = v65;
  *(&v119 - 1) = v64;
  v70 = v132;
  sub_10051AC1C();
  v71 = v70;

  objc_autoreleasePoolPop(v130);
  swift_beginAccess();
  v72 = (v59 + 16);
  v73 = *(v59 + 16);
  swift_beginAccess();
  v74 = v136;
  if (*v63 < v73)
  {
    v75 = v145;
    swift_beginAccess();
    sub_100035AD0(v75, v74, &unk_100CB2CF0);
    v76 = v143;
    swift_beginAccess();
    sub_10019F6D8(v74, v76);
    v77 = v144;
    swift_beginAccess();
    v71 = v70;
    sub_100035AD0(v77, v74, &unk_100CB2CF0);
    v78 = v133;
    swift_beginAccess();
    sub_10019F6D8(v74, v78);
    *v63 = v73;
  }

  v79 = v159;
  sub_10001B350(v74, 1, 1, v159);
  v80 = v145;
  swift_beginAccess();
  sub_10019F6D8(v74, v80);
  sub_10001B350(v74, 1, 1, v79);
  v81 = v144;
  swift_beginAccess();
  sub_10019F6D8(v74, v81);
  *v72 = 0;
  v82 = [objc_allocWithZone(NSDateFormatter) init];
  [v82 setDateStyle:1];
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  [v82 setTimeZone:isa];

  v84 = v143;
  swift_beginAccess();
  v85 = v84;
  v86 = v137;
  sub_100035AD0(v85, v137, &unk_100CB2CF0);
  v87 = sub_100024D10(v86, 1, v79);
  v88 = v142;
  v89 = v138;
  if (v87 == 1)
  {
    v90 = v86;
    v91 = v139;
    v92 = v157;
    v93 = v149;
    goto LABEL_18;
  }

  v153 = v71;
  v92 = v157;
  v94 = *(v157 + 32);
  v94(v138, v86, v79);
  v95 = v133;
  swift_beginAccess();
  v96 = v95;
  v97 = v128;
  sub_100035AD0(v96, v128, &unk_100CB2CF0);
  v98 = sub_100024D10(v97, 1, v79);
  v91 = v139;
  if (v98 == 1)
  {
    (*(v92 + 8))(v89, v79);
    v93 = v149;
    v90 = v97;
    v71 = v153;
    v88 = v142;
LABEL_18:
    sub_1000180EC(v90, &unk_100CB2CF0);
    v99 = v129;
    sub_100035AD0(v152, v129, &qword_100CDD0C8);
    if (sub_100024D10(v99, 1, v146) == 1)
    {
      v100 = &qword_100CDD0C8;
      goto LABEL_22;
    }

    sub_100835520(v99, v91);
    v99 = v127;
    sub_100035AD0(v93, v127, &unk_100CB2CF0);
    if (sub_100024D10(v99, 1, v79) == 1)
    {
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
LABEL_22:
      v101 = v99;
LABEL_23:
      sub_1000180EC(v101, v100);
      sub_100835408();
      swift_allocError();
      *v102 = 2;
      swift_willThrow();

      sub_1000180EC(v150, &unk_100CB2CF0);
      sub_1000180EC(v151, &unk_100CB2CF0);
      sub_1000180EC(v152, &qword_100CDD0C8);
      sub_1000180EC(v93, &unk_100CB2CF0);

      return (*(v140 + 8))(v154, v141);
    }

    v153 = v71;
    v107 = *(v92 + 32);
    v108 = v125;
    v107(v125, v99, v79);
    sub_100035AD0(v151, v88, &unk_100CB2CF0);
    if (sub_100024D10(v88, 1, v79) == 1)
    {
      (*(v92 + 8))(v108, v79);
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
      v101 = v88;
      goto LABEL_23;
    }

    v107(v123, v88, v79);
    v109 = v122;
    sub_100035AD0(v150, v122, &unk_100CB2CF0);
    if (sub_100024D10(v109, 1, v79) == 1)
    {
      v110 = *(v92 + 8);
      v110(v123, v79);
      v110(v125, v79);
      sub_10083559C(v91, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
      v100 = &unk_100CB2CF0;
      v101 = v109;
      goto LABEL_23;
    }

    v111 = v119;
    v107(v119, v109, v79);
    v112 = v121;
    v107(v121, v123, v79);
    v107((v112 + *(v120 + 20)), v111, v79);
    v113 = sub_10022C350(&qword_100CD0278);
    v114 = v113[12];
    v115 = v91;
    v116 = v113[16];
    v117 = v113[20];
    v118 = v126;
    v107(v126, v125, v79);
    v107(&v118[v114], v115, v79);
    v107(&v118[v116], v115 + *(v146 + 20), v79);
    sub_100835520(v112, &v118[v117]);
  }

  else
  {

    v104 = v124;
    v94(v124, v97, v79);
    v105 = *(sub_10022C350(&qword_100CD0268) + 48);
    v106 = v126;
    v94(v126, v89, v79);
    v94(&v106[v105], v104, v79);
  }

  type metadata accessor for MaxDaylight(0);
  swift_storeEnumTagMultiPayload();
  sub_1000180EC(v150, &unk_100CB2CF0);
  sub_1000180EC(v151, &unk_100CB2CF0);
  sub_1000180EC(v152, &qword_100CDD0C8);
  sub_1000180EC(v149, &unk_100CB2CF0);

  return (*(v140 + 8))(v154, v141);
}

uint64_t sub_100830390(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v183 = a6;
  v181 = a7;
  v182 = a8;
  v185 = a5;
  v186 = a4;
  v164 = a3;
  v188 = a2;
  v166 = a13;
  v174 = a12;
  v169 = a11;
  v172 = a10;
  v168 = a9;
  v14 = sub_10022C350(&qword_100CDD0C8);
  __chkstk_darwin(v14 - 8);
  v170 = &v161 - v15;
  v171 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange(0);
  __chkstk_darwin(v171);
  v165 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v173 = &v161 - v18;
  v19 = sub_10022C350(&qword_100CAC4D8);
  __chkstk_darwin(v19);
  v176 = &v161 - v20;
  v21 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v21 - 8);
  v167 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v161 - v24;
  __chkstk_darwin(v26);
  v187 = &v161 - v27;
  __chkstk_darwin(v28);
  v30 = &v161 - v29;
  v184 = type metadata accessor for Date();
  v180 = *(v184 - 8);
  __chkstk_darwin(v184);
  v163 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v161 - v33;
  __chkstk_darwin(v35);
  v178 = &v161 - v36;
  __chkstk_darwin(v37);
  v179 = &v161 - v38;
  __chkstk_darwin(v39);
  v41 = &v161 - v40;
  v42 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(0);
  __chkstk_darwin(v42);
  v44 = &v161 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = swift_projectBox();
  v186 = swift_projectBox();
  v175 = v19;
  v45 = *(v19 + 48);
  v177 = a1;
  sub_100835D98(a1 + v45, v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v73 = sub_10022C350(&qword_100CD0298);
      v74 = *(v180 + 1);
      v75 = v184;
      v74(&v44[*(v73 + 48)], v184);
      v76 = v44;
      v47 = v75;
      v74(v76, v75);
      goto LABEL_9;
    case 2u:
    case 3u:
      v46 = v44;
      v47 = v184;
      (*(v180 + 1))(v46, v184);
LABEL_9:
      v77 = swift_projectBox();
      v78 = swift_projectBox();
      v50 = v185;
      swift_beginAccess();
      v79 = *(v50 + 16);
      v80 = v183;
      swift_beginAccess();
      v82 = v186;
      v81 = v187;
      if (*(v80 + 16) < v79)
      {
        v83 = v50;
        v84 = v188;
        swift_beginAccess();
        v85 = v84;
        v50 = v83;
        sub_100035AD0(v85, v81, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v81, v77);
        swift_beginAccess();
        sub_100035AD0(v82, v81, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v81, v78);
        swift_beginAccess();
        v86 = *(v83 + 16);
        swift_beginAccess();
        *(v80 + 16) = v86;
      }

      sub_10001B350(v81, 1, 1, v47);
      v87 = v188;
      swift_beginAccess();
      sub_10019F6D8(v81, v87);
      sub_10001B350(v81, 1, 1, v47);
      swift_beginAccess();
      v59 = v81;
      v60 = v82;
      goto LABEL_29;
    case 4u:
      v48 = swift_projectBox();
      v49 = swift_projectBox();
      v50 = v185;
      swift_beginAccess();
      v51 = *(v50 + 16);
      v52 = v183;
      swift_beginAccess();
      v54 = v186;
      v53 = v187;
      if (*(v52 + 16) < v51)
      {
        v55 = v188;
        swift_beginAccess();
        sub_100035AD0(v55, v53, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v53, v48);
        swift_beginAccess();
        sub_100035AD0(v54, v53, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v53, v49);
        swift_beginAccess();
        v56 = *(v50 + 16);
        swift_beginAccess();
        *(v52 + 16) = v56;
      }

      v57 = v184;
      sub_10001B350(v53, 1, 1, v184);
      v58 = v188;
      swift_beginAccess();
      sub_10019F6D8(v53, v58);
      sub_10001B350(v53, 1, 1, v57);
      swift_beginAccess();
      v59 = v53;
      v60 = v54;
      goto LABEL_29;
    case 5u:
      v88 = v188;
      swift_beginAccess();
      sub_100035AD0(v88, v30, &unk_100CB2CF0);
      v89 = v184;
      if (sub_100024D10(v30, 1, v184) == 1)
      {
        sub_1000180EC(v30, &unk_100CB2CF0);
        v90 = v176;
        v91 = v177;
        sub_100035AD0(v177, v176, &qword_100CAC4D8);
        v92 = v175;
        v183 = *(v175 + 48);
        v93 = *(v180 + 4);
        v94 = v187;
        v93(v187, v90, v89);
        sub_10001B350(v94, 0, 1, v89);
        swift_beginAccess();
        sub_10019F6D8(v94, v88);
        sub_10083559C(v90 + v183, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
        sub_100035AD0(v91, v90, &qword_100CAC4D8);
        v95 = v90 + *(v92 + 48);
        v93(v94, v90, v89);
        sub_10001B350(v94, 0, 1, v89);
      }

      else
      {
        v137 = v180;
        v138 = v89;
        v139 = *(v180 + 4);
        v139(v41, v30, v138);
        v140 = v177;
        v141 = Date.isSameMonth(as:timeZone:)();
        (v137[1])(v41, v138);
        v94 = v187;
        if (v141)
        {
          v142 = v176;
          sub_100035AD0(v140, v176, &qword_100CAC4D8);
          v95 = v142 + *(v175 + 48);
          v139(v94, v142, v138);
          sub_10001B350(v94, 0, 1, v138);
        }

        else
        {
          v180 = v139;
          v143 = swift_projectBox();
          v144 = swift_projectBox();
          v145 = v185;
          swift_beginAccess();
          v146 = *(v145 + 16);
          v147 = v183;
          swift_beginAccess();
          if (*(v147 + 16) < v146)
          {
            v148 = v188;
            swift_beginAccess();
            sub_100035AD0(v148, v94, &unk_100CB2CF0);
            swift_beginAccess();
            sub_10019F6D8(v94, v143);
            v149 = v186;
            swift_beginAccess();
            sub_100035AD0(v149, v94, &unk_100CB2CF0);
            swift_beginAccess();
            sub_10019F6D8(v94, v144);
            swift_beginAccess();
            v150 = *(v145 + 16);
            swift_beginAccess();
            *(v147 + 16) = v150;
          }

          v151 = v184;
          sub_10001B350(v94, 1, 1, v184);
          v152 = v188;
          swift_beginAccess();
          sub_10019F6D8(v94, v152);
          sub_10001B350(v94, 1, 1, v151);
          v153 = v186;
          swift_beginAccess();
          sub_10019F6D8(v94, v153);
          swift_beginAccess();
          *(v145 + 16) = 0;
          v154 = v176;
          sub_100035AD0(v140, v176, &qword_100CAC4D8);
          v155 = v175;
          v156 = *(v175 + 48);
          v157 = v180;
          v180(v94, v154, v151);
          sub_10001B350(v94, 0, 1, v151);
          swift_beginAccess();
          sub_10019F6D8(v94, v152);
          sub_10083559C(v154 + v156, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
          sub_100035AD0(v177, v154, &qword_100CAC4D8);
          v95 = v154 + *(v155 + 48);
          v157(v94, v154, v151);
          sub_10001B350(v94, 0, 1, v151);
        }
      }

      v50 = v185;
      v158 = v186;
      swift_beginAccess();
      sub_10019F6D8(v94, v158);
      sub_10083559C(v95, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
      result = swift_beginAccess();
      v159 = *(v50 + 16);
      v160 = __OFADD__(v159, 1);
      v136 = v159 + 1;
      if (!v160)
      {
        goto LABEL_30;
      }

      __break(1u);
      return result;
    default:
      v61 = *(sub_10022C350(&qword_100CD0298) + 48);
      v62 = v180;
      v64 = v180 + 32;
      v63 = *(v180 + 4);
      v65 = v184;
      v63(v179, v44, v184);
      v66 = &v44[v61];
      v67 = v65;
      v63(v178, v66, v65);
      v68 = v168;
      sub_100035AD0(v168, v25, &unk_100CB2CF0);
      v69 = sub_100024D10(v25, 1, v65);
      v164 = v64;
      v162 = v63;
      if (v69 == 1)
      {
        v70 = v62;
        sub_1000180EC(v25, &unk_100CB2CF0);
        v71 = v173;
        v72 = v179;
      }

      else
      {
        v63(v34, v25, v65);
        v96 = v179;
        v97 = Date.hourAndMinuteIsLater(than:calendar:)();
        v70 = v62;
        (v62[1])(v34, v67);
        v71 = v173;
        v72 = v96;
        if (v97)
        {
          goto LABEL_16;
        }
      }

      sub_1000180EC(v68, &unk_100CB2CF0);
      (v70[2])(v68, v72, v67);
      sub_10001B350(v68, 0, 1, v67);
LABEL_16:
      v98 = v169;
      v99 = v167;
      sub_100035AD0(v169, v167, &unk_100CB2CF0);
      if (sub_100024D10(v99, 1, v67) == 1)
      {
        sub_1000180EC(v99, &unk_100CB2CF0);
        v100 = v70;
      }

      else
      {
        v101 = v163;
        v162(v163, v99, v67);
        v102 = Date.hourAndMinuteIsLater(than:calendar:)();
        v100 = v70;
        (v70[1])(v101, v67);
        if (v102)
        {
          v103 = v70[2];
          v104 = v178;
          v103(v71, v72, v67);
          goto LABEL_21;
        }
      }

      sub_1000180EC(v98, &unk_100CB2CF0);
      v103 = v100[2];
      v104 = v178;
      v103(v98, v178, v67);
      sub_10001B350(v98, 0, 1, v67);
      v103(v71, v72, v67);
LABEL_21:
      v105 = v71;
      v106 = v171;
      v103((v105 + *(v171 + 20)), v104, v67);
      v107 = v170;
      sub_100035AD0(v174, v170, &qword_100CDD0C8);
      if (sub_100024D10(v107, 1, v106) == 1)
      {
        v108 = v100[1];
        v108(v104, v67);
        v108(v179, v67);
        sub_1000180EC(v107, &qword_100CDD0C8);
        v50 = v185;
        v109 = v183;
        v110 = v177;
      }

      else
      {
        v111 = v107;
        v112 = v165;
        sub_100835520(v111, v165);
        Date.timeIntervalSince(_:)();
        v114 = v113;
        Date.timeIntervalSince(_:)();
        v116 = v115;
        sub_10083559C(v112, type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange);
        v117 = v100[1];
        v117(v104, v67);
        v117(v179, v67);
        v50 = v185;
        v109 = v183;
        v110 = v177;
        if (v116 < v114)
        {
          v118 = type metadata accessor for SunriseSunsetDaylightCalculator.TimeRange;
          v119 = v105;
          goto LABEL_26;
        }
      }

      v120 = v174;
      sub_1000180EC(v174, &qword_100CDD0C8);
      sub_100835520(v105, v120);
      sub_10001B350(v120, 0, 1, v106);
      v121 = v166;
      sub_1000180EC(v166, &unk_100CB2CF0);
      v122 = v50;
      v123 = v176;
      sub_100035AD0(v110, v176, &qword_100CAC4D8);
      v124 = *(v175 + 48);
      v162(v121, v123, v67);
      sub_10001B350(v121, 0, 1, v67);
      v118 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity;
      v119 = v123 + v124;
      v50 = v122;
LABEL_26:
      sub_10083559C(v119, v118);
      v125 = swift_projectBox();
      v126 = swift_projectBox();
      swift_beginAccess();
      v127 = *(v50 + 16);
      swift_beginAccess();
      v128 = v186;
      if (*(v109 + 16) < v127)
      {
        v129 = v188;
        swift_beginAccess();
        v130 = v129;
        v131 = v187;
        sub_100035AD0(v130, v187, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v131, v125);
        swift_beginAccess();
        sub_100035AD0(v128, v131, &unk_100CB2CF0);
        swift_beginAccess();
        sub_10019F6D8(v131, v126);
        swift_beginAccess();
        v132 = *(v50 + 16);
        swift_beginAccess();
        *(v109 + 16) = v132;
      }

      v133 = v187;
      sub_10001B350(v187, 1, 1, v67);
      v134 = v188;
      swift_beginAccess();
      sub_10019F6D8(v133, v134);
      sub_10001B350(v133, 1, 1, v67);
      swift_beginAccess();
      v59 = v133;
      v60 = v128;
LABEL_29:
      sub_10019F6D8(v59, v60);
      result = swift_beginAccess();
      v136 = 0;
LABEL_30:
      *(v50 + 16) = v136;
      return result;
  }
}