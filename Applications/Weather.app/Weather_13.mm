uint64_t sub_10016D138()
{
  v1 = *(type metadata accessor for SavedLocation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for SavedLocation.Placeholder();
  }

  else
  {
    type metadata accessor for Location();
  }

  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_10016D280(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD1370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016D308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for SavedLocation();
  return swift_storeEnumTagMultiPayload();
}

void sub_10016D390(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10016D430()
{
  sub_100006F14(v0 + 16);

  return v0;
}

uint64_t sub_10016D460()
{
  sub_10016D430();

  return swift_deallocClassInstance();
}

unint64_t sub_10016D4A4()
{
  result = qword_100CEC0B0;
  if (!qword_100CEC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEC0B0);
  }

  return result;
}

uint64_t sub_10016D4F8()
{
  sub_10016D4A4();

  return ShortDescribable.description.getter();
}

unint64_t sub_10016D534()
{
  result = qword_100CA35B8;
  if (!qword_100CA35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA35B8);
  }

  return result;
}

uint64_t sub_10016D598@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 2:
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2D320;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x8000000100AE9AA0;
      v8 = sub_10022C350(&qword_100CA64A8);
      *(inited + 48) = a1;
      *(inited + 72) = v8;
      *(inited + 80) = 0xD000000000000013;
      *(inited + 120) = v8;
      *(inited + 88) = 0x8000000100ADECA0;
      *(inited + 96) = a2;

      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0);
      v9 = sub_10016D910();
      sub_100017228(v9);
      break;
    case 3:
      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0);
      v10 = sub_10016D910();
      sub_100017228(v10);
      break;
    default:
      sub_10022C350(&qword_100CA36F8);
      v11 = swift_initStackObject();
      sub_10002366C(v11, "locationsOfInterest", xmmword_100A2C3F0);
      v11[4].n128_u64[1] = sub_10022C350(&qword_100CA64A8);
      v11[3].n128_u64[0] = a1;

      Dictionary.init(dictionaryLiteral:)();
      *(a4 + 24) = sub_10022C350(&qword_100CEC0A0);
      v12 = sub_10016D910();
      sub_100017228(v12);
      break;
  }

  return ShortDescription.init(name:_:)();
}

unint64_t sub_10016D910()
{
  result = qword_100CEC0A8;
  if (!qword_100CEC0A8)
  {
    sub_10022E824(&qword_100CEC0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CEC0A8);
  }

  return result;
}

uint64_t sub_10016D974()
{
  sub_100008188();
  *(*(v0 + 88) + 208) = 0;
  sub_100006248();

  sub_100003B14();

  return v1();
}

uint64_t sub_10016DA18()
{
  sub_100003B08();
  sub_10000C7E4();
  v2 = *v1;
  sub_100003AF8();
  *v3 = v2;
  *(v4 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005B05D4, 0, 0);
  }

  else
  {
    sub_100003B14();

    return v5();
  }
}

uint64_t sub_10016DB38()
{

  return type metadata accessor for LocationComponentHeaderMetrics(0);
}

uint64_t sub_10016DB58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10016DBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016DC1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  type metadata accessor for NotificationsAction();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = (v19 - v18);
  sub_10022C350(&qword_100CBCED8);
  sub_1000037C4();
  v56 = v22;
  v57 = v21;
  __chkstk_darwin(v21);
  v55[1] = v55 - v23;
  sub_10016E498(v2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *(sub_10022C350(&qword_100CB1AC0) + 48);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      sub_1000E6774(&v20[v39]);
      sub_1005458EC(v20, type metadata accessor for NotificationLocation);
      goto LABEL_14;
    case 2u:
      sub_10022C350(&qword_100CB1AB8);
      v28 = sub_100004488();
      v29(v28);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      sub_10001F01C(inited, xmmword_100A2C3F0);
      v31 = NotificationSubscription.Kind.description.getter();
      sub_100074BB8(v31, v32, &type metadata for String);
      sub_1000148A4();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v12 + 8))(v16, v10);
      type metadata accessor for NotificationSubscription.Location();
      goto LABEL_7;
    case 3u:
    case 8u:
      v45 = sub_100010324();
      v46(v45);
      sub_10022C350(&qword_100CA36F8);
      v47 = swift_initStackObject();
      sub_10001F01C(v47, xmmword_100A2C3F0);
      v48 = PredictedLocationsNotificationSubscription.Kind.description.getter();
      sub_100074BB8(v48, v49, &type metadata for String);
      sub_1000148A4();
      type metadata accessor for MainAction();
      goto LABEL_13;
    case 4u:
    case 6u:
      sub_1000060FC();
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    case 5u:
      v40 = sub_100010324();
      v41(v40);
      sub_10022C350(&qword_100CA36F8);
      v42 = swift_initStackObject();
      sub_10001F01C(v42, xmmword_100A2C3F0);
      v43 = PredictedLocationsNotificationSubscription.Kind.description.getter();
      sub_100074BB8(v43, v44, &type metadata for String);
      sub_1000148A4();
      type metadata accessor for MainAction();
      sub_10001C574();
LABEL_13:
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v5 + 8))(v9, v3);
      goto LABEL_14;
    case 7u:
      sub_10022C350(&qword_100CB1AB0);
      v33 = sub_100004488();
      v34(v33);
      sub_10022C350(&qword_100CA36F8);
      v35 = swift_initStackObject();
      sub_10001F01C(v35, xmmword_100A2C3F0);
      v36 = NotificationSubscription.Kind.description.getter();
      sub_100074BB8(v36, v37, &type metadata for String);
      sub_1000148A4();
      sub_1000286E8();
      sub_100049930();
      ShortDescription.init(name:_:)();
      (*(v12 + 8))(v16, v10);
      type metadata accessor for Location();
LABEL_7:
      sub_1000037E8();
      (*(v38 + 8))(v20);
      goto LABEL_14;
    case 9u:
      v26 = *v20;
      sub_10022C350(&qword_100CA36F8);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_100A2C3F0;
      strcpy((v27 + 32), "availability");
      *(v27 + 45) = 0;
      *(v27 + 46) = -5120;
      *(v27 + 72) = &type metadata for Bool;
      *(v27 + 48) = v26;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    case 0xAu:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
      goto LABEL_11;
    default:
      v24 = *v20;
      sub_10022C350(&qword_100CA36F8);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_100A2C3F0;
      *(v25 + 32) = 0x6574617473;
      *(v25 + 40) = 0xE500000000000000;
      *(v25 + 72) = &type metadata for NotificationAuthorizationState;
      *(v25 + 48) = v24;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000286E8();
      sub_10001C574();
LABEL_11:
      sub_100049930();
      ShortDescription.init(name:_:)();
LABEL_14:
      v51 = v57;
      v50 = v58;
      v52 = v56;
      v58[3] = v57;
      v50[4] = sub_100056774();
      v53 = sub_100042FB0(v50);
      return (*(v52 + 32))(v53, v2, v51);
  }
}

uint64_t sub_10016E498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10016E538()
{
  sub_10000C778();
  v2 = v1;
  v126 = v3;
  v139 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v152 = v0;
  v135 = *v0;
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v150 = v16;
  v151 = v15;
  __chkstk_darwin(v15);
  v137 = v17;
  sub_10001376C();
  v146 = v18;
  v19 = sub_1000038CC();
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003918(v22 - v21);
  v132 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v131 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_100003918(v26 - v25);
  v130 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v128 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_100003918(v30 - v29);
  v145 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v138 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  v148 = v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  sub_10000E70C();
  v144 = v36;
  sub_1000038CC();
  type metadata accessor for Location();
  sub_1000037C4();
  v38 = v37;
  v40 = __chkstk_darwin(v39);
  v42 = v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v38;
  v43 = *(v38 + 16);
  v149 = v44;
  v142 = v41;
  v143 = v43;
  (v43)(v42, v14, v40);
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  sub_1008B1694();
  swift_allocObject();

  v140 = v12;
  v141 = v10;
  v45 = v14;
  v136 = v8;
  v147 = v6;
  v46 = sub_10005B8AC(1u, v42, 0);
  Location.coordinate.getter();
  if (v47 == 0.0 || (Location.coordinate.getter(), v48 == 0.0))
  {
    sub_1005B3D94(0xD000000000000038, 0x8000000100AE35D0);
    if (v2)
    {
      v2();
    }
  }

  else
  {
    v49 = v152[56];
    v50 = v144;
    OSSignpostID.init(log:)();
    v126 &= 1u;
    v115 = sub_100086BF4(v126);
    sub_100007E8C();
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v138;
    v53 = *(v138 + 16);
    v117 = v138 + 16;
    v118 = v53;
    v54 = v145;
    v53(v148, v50, v145);
    v55 = sub_100003A60();
    v143(v55);
    v116 = *(v52 + 80);
    v56 = (v116 + 32) & ~v116;
    v124 = *(v153 + 80);
    v119 = v33 + v124;
    v57 = (v33 + v124 + v56) & ~v124;
    v123 = v124 | 7;
    v122 = v124 | 7 | v116;
    v58 = swift_allocObject();
    *(v58 + 16) = v51;
    *(v58 + 24) = v46;
    v114[2] = v51;
    v59 = *(v52 + 32);
    v120 = v52 + 32;
    v121 = v59;
    v59(v58 + v56, v148, v54);
    v60 = *(v153 + 32);
    v153 += 32;
    v125 = v60;
    v60(v58 + v57, v42, v149);
    v155[4] = sub_100087D3C;
    v155[5] = v58;
    sub_10001880C();
    sub_1000318B0(COERCE_DOUBLE(1107296256));
    v155[2] = v61;
    v155[3] = &unk_100C74858;
    v62 = _Block_copy(v155);

    v63 = v127;
    static DispatchQoS.unspecified.getter();
    v154 = _swiftEmptyArrayStorage;
    sub_100021770();
    v114[1] = sub_1000675AC(v64, v65);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_10006768C(v66, v67);
    v68 = v129;
    v69 = v132;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v70 = v115;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    sub_10000E73C();
    v71(v68, v69);
    sub_10000E73C();
    v72(v63, v130);

    v73 = v134;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v73);
    sub_100006A88();
    sub_100087544();
    v74 = sub_100086BF4(v126);
    v75 = sub_100003A60();
    v76 = v149;
    v77 = v143;
    v143(v75);
    v78 = (v124 + 16) & ~v124;
    v79 = swift_allocObject();
    v134 = v45;
    v125(v79 + v78, v42, v76);
    sub_10022C350(&qword_100CE2960);
    v135 = firstly<A, B>(on:disposeOn:closure:)();

    v80 = v145;
    v118(v148, v144, v145);
    v77(v42, v134, v76);
    v81 = v150;
    v82 = *(v150 + 16);
    v132 = v150 + 16;
    updated = v82;
    v82(v146, v139, v151);
    v83 = (v116 + 24) & ~v116;
    v128 = v46;
    v84 = (v119 + v83) & ~v124;
    v142 += 7;
    v85 = (v142 + v84) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v130 = *(v81 + 80);
    v131 = v130 + 32;
    v87 = (v130 + 32 + v86) & ~v130;
    v88 = v87 + v137;
    v89 = swift_allocObject();
    *(v89 + 16) = v152;
    v121(v89 + v83, v148, v80);
    v90 = v149;
    v125(v89 + v84, v42, v149);
    v91 = v128;
    *(v89 + v85) = v128;
    v92 = (v89 + v86);
    v93 = v141;
    *v92 = v140;
    v92[1] = v93;
    v94 = v136;
    v95 = v147;
    v92[2] = v136;
    v92[3] = v95;
    v96 = *(v150 + 32);
    v150 += 32;
    v148 = v96;
    v97 = v89 + v87;
    v98 = v146;
    (v96)(v97, v146, v151);
    *(v89 + v88) = v126;

    v99 = v94;

    v100 = v91;

    v101 = zalgo.getter();
    v129 = Promise.then<A>(on:closure:)();

    (v143)(v42, v134, v90);
    updated(v98, v139, v151);
    v102 = (v124 + 32) & ~v124;
    v103 = (v142 + v102) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v131 + v103) & ~v130;
    v105 = v104 + v137;
    v106 = swift_allocObject();
    v107 = v152;
    *(v106 + 16) = v100;
    *(v106 + 24) = v107;
    v125(v106 + v102, v42, v90);
    v108 = (v106 + v103);
    v109 = v141;
    *v108 = v140;
    v108[1] = v109;
    v110 = v146;
    v111 = v147;
    v108[2] = v99;
    v108[3] = v111;
    (v148)(v106 + v104, v110, v151);
    *(v106 + v105) = v126;

    v112 = zalgo.getter();
    Promise.error(on:closure:)();

    sub_10000E73C();
    v113(v144, v145);
  }

  sub_10000536C();
}

uint64_t sub_10016F12C()
{
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v21 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v2 + 64);
  v22 = type metadata accessor for Location();
  sub_1000037C4();
  v5 = v4;
  v6 = (v21 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_10017080C();
  v23 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v8 = v7;
  v9 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 32) & ~*(v7 + 80);

  v18 = sub_1000524C0(v10, v11, v12, v13, v14, v15, v16, v17, v21);
  v19(v18);
  (*(v5 + 8))(v0 + v6, v22);

  (*(v8 + 8))(v0 + v9, v23);

  return swift_deallocObject();
}

uint64_t sub_10016F310()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_10002CB50();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);

  v2 = sub_1000C90B8();
  v3(v2);
  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10016F454(uint64_t a1, void *a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000C790();
  if (*a2 != -1)
  {
    swift_once();
  }

  LOBYTE(v10[0]) = 1;
  sub_1000135A0();
  sub_10016F958(v6);
  result = Updatable.save<A>(setting:value:)();
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for EnvironmentAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v11 = 0;
    memset(v10, 0, sizeof(v10));

    sub_10004F034(v2, v10, v8);
    sub_10002B028(v8);
    sub_1000180EC(v10, &unk_100CD81B0);
    sub_1000142B0();
    return sub_10004F4C0(v2, v9);
  }

  return result;
}

uint64_t sub_10016F5D4(uint64_t *a1)
{
  v5 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Location();
  sub_100003AE8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = sub_1000AF69C();
  sub_100003AE8(v13);
  return sub_10016F740(a1, *(v1 + 16), v1 + v7, v1 + v12, *(v1 + v2), *(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 16), *(v1 + v3 + 24), v1 + ((v3 + *(v14 + 80) + 32) & ~*(v14 + 80)), *(v1 + ((v3 + *(v14 + 80) + 32) & ~*(v14 + 80)) + *(v15 + 64)));
}

uint64_t sub_10016F740(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v36 = a8;
  v33 = a6;
  v34 = a7;
  v27 = a3;
  v28 = a5;
  HIDWORD(v29) = a11;
  v30 = a9;
  v31 = a10;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a1[1];
  static os_signpost_type_t.end.getter();
  v35 = a2;
  sub_10022C350(&qword_100CA40C8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A2C3F0;
  v32 = a4;
  v20 = Location.name.getter();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100035744();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v23 = v28;

  *v16 = v17;
  v16[1] = v18;
  swift_storeEnumTagMultiPayload();
  sub_100088528(v17, v18);
  sub_10005C1D4(v16);
  sub_100087544();
  v24 = 0;
  v25 = 0;
  if (v18 >= 2)
  {

    v24 = v17;
    v25 = v18;
  }

  sub_10016F998(v32, v33, v34, v36, v30, v31, BYTE4(v29) & 1, v24, v25, v23, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_10016F958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationsOptInStoreObserver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10016F998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C778();
  *&v172 = v22;
  v157 = v23;
  v152 = v24;
  v156 = v25;
  v168 = v26;
  v169 = v27;
  v166 = v28;
  v167 = v29;
  v31 = v30;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v162 = v33;
  v163 = v32;
  __chkstk_darwin(v32);
  sub_1000037D8();
  sub_100003918(v35 - v34);
  v161 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v159 = v36;
  __chkstk_darwin(v37);
  sub_1000037D8();
  sub_100003918(v39 - v38);
  v155 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v154 = v40;
  __chkstk_darwin(v41);
  v151 = v42;
  sub_10001376C();
  sub_100003918(v43);
  v44 = type metadata accessor for Location();
  sub_1000037C4();
  v174 = v45;
  __chkstk_darwin(v46);
  sub_10000FBD0();
  v165 = v47;
  sub_1000E1390();
  __chkstk_darwin(v48);
  sub_10000E70C();
  v171 = v49;
  sub_1000E1390();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v149 = v51;
  sub_1000E1390();
  __chkstk_darwin(v52);
  v54 = &v144 - v53;
  v150 = v55;
  __chkstk_darwin(v56);
  v58 = &v144 - v57;
  if (qword_100CA2730 != -1)
  {
    sub_1000D4354();
  }

  v173 = a22;
  v59 = type metadata accessor for Logger();
  v60 = sub_10000703C(v59, qword_100D90BE8);
  v62 = v174 + 16;
  v61 = *(v174 + 16);
  v63 = sub_1000884C4();
  v61(v63);
  (v61)(v54, v31, v44);
  v164 = v60;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  v66 = os_log_type_enabled(v64, v65);
  v170 = v61;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v148 = v31;
    v68 = v67;
    v147 = swift_slowAlloc();
    v176[0] = v147;
    *v68 = 141558787;
    *(v68 + 4) = 1752392040;
    *(v68 + 12) = 2081;
    v69 = Location.id.getter();
    v145 = v65;
    v71 = v70;
    v72 = *(v174 + 8);
    v72(v58, v44);
    v73 = sub_100078694(v69, v71, v176);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2160;
    *(v68 + 24) = 1752392040;
    *(v68 + 32) = 2081;
    sub_1000675AC(&qword_100CA6678, &type metadata accessor for Location);
    dispatch thunk of CustomStringConvertible.description.getter();
    v72(v54, v44);
    v61 = v170;
    v74 = sub_100003940();
    v77 = sub_100078694(v74, v75, v76);

    *(v68 + 34) = v77;
    _os_log_impl(&_mh_execute_header, v64, v145, "About to check whether we need to refresh available data sets for location.id: %{private,mask.hash}s. location=%{private,mask.hash}s", v68, 0x2Au);
    swift_arrayDestroy();
    sub_100003884();
    v31 = v148;
    sub_100003884();
  }

  else
  {

    v72 = *(v174 + 8);
    v72(v54, v44);
    v72(v58, v44);
  }

  if (sub_10017087C(v31, v166, v167, v168, v169))
  {
    v169 = a21;
    v78 = v149;
    v79 = sub_1000884C4();
    v61(v79);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v146 = v62;
    if (v82)
    {
      v83 = swift_slowAlloc();
      v84 = v78;
      v85 = swift_slowAlloc();
      v176[0] = v85;
      sub_1000427B0(7.2225e-34);
      v86 = Location.id.getter();
      v87 = v72;
      v89 = v88;
      v87(v84, v44);
      v90 = sub_100078694(v86, v89, v176);

      *(v83 + 14) = v90;
      sub_10001768C(&_mh_execute_header, v91, v92, "We need to refresh available data sets for location.id: %{private,mask.hash}s");
      sub_100006F14(v85);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      v105 = sub_1000C8890();
      (v72)(v105);
    }

    v106 = v170;
    v107 = v171;
    v108 = v44;
    (v170)(v171, v31, v44);
    v109 = v174;
    v110 = *(v174 + 80);
    v111 = (v110 + 32) & ~v110;
    v164 = v111 + v150;
    v165 = v111;
    v167 = v110 | 7;
    v112 = swift_allocObject();
    v113 = v172;
    *(v112 + 16) = v173;
    *(v112 + 24) = v113;
    v114 = *(v109 + 32);
    v174 = v109 + 32;
    v166 = v114;
    v144 = v108;
    v114(v112 + v111, v107, v108);

    asyncMain(block:)();

    v152 &= 1u;
    v168 = sub_100086BF4(v152);
    sub_100007E8C();
    v115 = swift_allocObject();
    swift_weakInit();
    v148 = *(v113 + 56);
    v150 = *(v113 + 16);
    v116 = *(v113 + 40);
    v147 = *(v113 + 48);
    v149 = v116;
    v172 = *(v113 + 24);
    v117 = sub_100025214();
    v106(v117);
    v118 = v154;
    v119 = v153;
    v120 = v155;
    (*(v154 + 16))(v153, v156, v155);
    v121 = v164;
    v122 = (v164 + *(v118 + 80) + 1) & ~*(v118 + 80);
    v123 = (v151 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
    v125 = swift_allocObject();
    v126 = v173;
    *(v125 + 16) = v115;
    *(v125 + 24) = v126;
    v166(v125 + v165, v171, v144);
    *(v125 + v121) = v152;
    (*(v118 + 32))(v125 + v122, v119, v120);
    v127 = (v125 + v123);
    v128 = v169;
    *v127 = v157;
    v127[1] = v128;
    v129 = (v125 + v124);
    v130 = v148;
    *v129 = v147;
    v129[1] = v130;
    v131 = v125 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v131 = v150;
    *(v131 + 8) = v172;
    *(v131 + 24) = v149;
    v176[4] = sub_100171E90;
    v176[5] = v125;
    sub_10001880C();
    sub_1000318B0(COERCE_DOUBLE(1107296256));
    v176[2] = v132;
    v176[3] = &unk_100C74948;
    v133 = _Block_copy(v176);

    v134 = v158;
    static DispatchQoS.unspecified.getter();
    v175 = _swiftEmptyArrayStorage;
    sub_100021770();
    sub_1000675AC(v135, v136);
    sub_10022C350(&qword_100CB4680);
    sub_10001E924();
    sub_10006768C(v137, v138);
    v139 = v160;
    v140 = v163;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v141 = v168;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v133);

    (*(v162 + 8))(v139, v140);
    sub_10000E73C();
    v142(v134, v161);
  }

  else
  {
    sub_10018E2C0(0, 0);
    v93 = sub_1000884C4();
    v61(v93);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v176[0] = v97;
      sub_1000427B0(7.2225e-34);
      v98 = Location.id.getter();
      v100 = v99;
      v101 = sub_1000C8890();
      (v72)(v101);
      v102 = sub_100078694(v98, v100, v176);

      *(v96 + 14) = v102;
      sub_10001768C(&_mh_execute_header, v103, v104, "We do NOT need to refresh available data sets for location.id: %{private,mask.hash}s");
      sub_100006F14(v97);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      v143 = sub_1000C8890();
      (v72)(v143);
    }
  }

  sub_10000536C();
}

uint64_t sub_100170504()
{
  sub_1000C87D0();
  type metadata accessor for Location();
  sub_10000548C();
  type metadata accessor for AppConfiguration();
  sub_1000037C4();
  sub_100171244();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);

  sub_100020DD4();

  return swift_deallocObject();
}

uint64_t sub_1001706CC(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_1001706D8()
{

  return type metadata accessor for WeatherData.WeatherStatisticsState(0);
}

uint64_t sub_10017084C(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_10017087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10022C350(&qword_100CE2A28);
  __chkstk_darwin(v6 - 8);
  v8 = (&v18 - v7);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v11);
  sub_100087544();
  v12 = Location.id.getter();
  sub_100171164(v12, v13, a5);

  v14 = type metadata accessor for LocationAvailableDataSetState(0);
  if (sub_100024D10(v8, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v8[1];
      *v11 = *v8;
      v11[1] = v16;
LABEL_5:
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v11);
      sub_100087544();
      return 1;
    }

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v11);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v11);
    sub_100087544();
  }

  sub_100087544();
  return 0;
}

uint64_t sub_100170AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1001718A8(v22, sub_10026B318, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B318;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C482D8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1002608D8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

__n128 sub_100171190@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2352);
  result = *(v1 + 2368);
  *a1 = result;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 2384);
  return result;
}

void sub_100171280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD00000000000002BLL, 0x8000000100ABC100, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD00000000000001FLL, 0x8000000100ABC130, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B300;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C481C0;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

uint64_t sub_1001715F4(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 1;
  }

  sub_100963D14();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (DeviceIsSlow())
  {
    return 0x3FB999999999999ALL;
  }

  return 0;
}

uint64_t sub_100171684()
{
  sub_100017580();
  v0 = type metadata accessor for ViewData();
  sub_100003810(v0);

  return sub_100171C1C();
}

uint64_t sub_1001716EC()
{
  type metadata accessor for PredictedLocationsAuthorization();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100174D38;
  v4 = sub_10001BD10();

  return sub_1001717E0(v4, v5, v6, v2, v7);
}

uint64_t sub_1001717E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = type metadata accessor for MainAction();
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100171DA4, v7, v6);
}

void sub_1001718A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10026B330;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48328;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

uint64_t sub_100171C1C()
{
  type metadata accessor for ViewData();
  sub_100171D5C(&qword_100CB3EE0, &type metadata accessor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for LocationViewEvent();
  sub_100171D5C(&qword_100CC41B8, &type metadata accessor for LocationViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_100171D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100171D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100171DA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v2 + 16);
  *v1 = sub_100171FAC();
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_10004F034(v1, v0 + 16, v3);
  sub_1000E17D8(v0 + 16);
  sub_1000547B8(v1);

  v4 = *(v0 + 8);

  return v4();
}

void sub_100171E90()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v6);
  sub_100049E3C();
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100172268(*(v0 + 16), *(v0 + 24), v0 + v3, *(v0 + v5), v0 + v9, *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t sub_100171FAC()
{
  v2 = v1;
  type metadata accessor for PredictedLocationsAuthorization();
  sub_10000548C();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v2, v0, v6);
  v9 = (*(v4 + 88))(v8, v0);
  if (v9 == enum case for PredictedLocationsAuthorization.notDetermined(_:))
  {
    return 1;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.featureUnavailable(_:))
  {
    return 0;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.enabled(_:))
  {
    return 2;
  }

  if (v9 == enum case for PredictedLocationsAuthorization.disabledInSystemServices(_:))
  {
    return 3;
  }

  if (v9 != enum case for PredictedLocationsAuthorization.disabledInWeatherSettings(_:))
  {
    (*(v4 + 8))(v8, v0);
    return 1;
  }

  return 4;
}

uint64_t sub_100172120(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100172164()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
  *(v0 - 160) = v1 + 8;
}

uint64_t sub_100172184()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t sub_100172198()
{

  return type metadata accessor for Date();
}

uint64_t sub_1001721CC()
{

  return Optional<A>.write(to:)();
}

void sub_100172204(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 - 236);

  sub_1009A079C(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_10017221C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100172268(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v83 = a8;
  v77 = a6;
  LODWORD(v76) = a4;
  v82 = type metadata accessor for Location();
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = v18;
  v80 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TimeZone();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v87 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for OSSignpostID();
  v81 = *(v86 - 8);
  v24 = *(v81 + 64);
  __chkstk_darwin(v86);
  v85 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v72 = a13;
    v71 = a12;
    v70 = a11;
    v69 = a10;
    v73 = a9;
    v74 = a7;
    v64 = a5;
    v29 = Strong;
    Location.coordinate.getter();
    v31 = v30;
    Location.coordinate.getter();
    v68 = [objc_allocWithZone(CLLocation) initWithLatitude:v31 longitude:v32];
    v33 = *(v29 + 448);
    v84 = v27;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v62 = a2;
    v34 = *(v29 + 448);
    v63 = a1;
    v65 = v29;
    sub_10022C350(&qword_100CA40C8);
    v35 = swift_allocObject();
    v67 = v19;
    v36 = v35;
    *(v35 + 16) = xmmword_100A2C3F0;
    v37 = v34;
    v66 = v20;
    v38 = v37;
    v39 = Location.name.getter();
    v41 = v40;
    v36[7] = &type metadata for String;
    v36[8] = sub_100035744();
    v36[4] = v39;
    v36[5] = v41;
    v42 = v84;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v23);
    sub_100087544();
    v76 = sub_1000925AC();
    Location.timeZone.getter();
    updated = AppConfiguration.locationDecimalPrecision.getter();
    v43 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v64 = v43;
    swift_weakInit();

    v44 = v79;
    v45 = v80;
    v46 = v82;
    (*(v79 + 16))(v80, a3, v82);
    v47 = v81;
    (*(v81 + 16))(v85, v42, v86);
    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v49 = (v78 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (*(v47 + 80) + v49 + 32) & ~*(v47 + 80);
    v51 = (v24 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v62;
    (*(v44 + 32))(v52 + v48, v45, v46);
    v53 = (v52 + v49);
    v54 = v70;
    *v53 = v69;
    v53[1] = v54;
    v55 = v72;
    v53[2] = v71;
    v53[3] = v55;
    v56 = v86;
    (*(v47 + 32))(v52 + v50, v85, v86);
    v57 = (v52 + v51);
    v58 = v73;
    *v57 = v83;
    v57[1] = v58;

    v59 = v68;
    v60 = v87;
    WeatherService.fetchAvailableDataSets(for:timeZone:locationDecimalPrecision:countryCode:completion:)();

    (*(v66 + 8))(v60, v67);
    (*(v47 + 8))(v84, v56);
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

uint64_t sub_10017295C()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_10000548C();
  sub_10002CB50();
  type metadata accessor for OSSignpostID();
  sub_1000037C4();

  v0 = sub_1000134A0();
  v1(v0);

  v2 = sub_1000C90B8();
  v3(v2);

  sub_10006A920();
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100172AA4@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for ConfiguredUnitsAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for ActivityAction();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for Locale();
  sub_1000037C4();
  v63 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for EnvironmentAction();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  sub_10022C350(&qword_100CBCED8);
  sub_1000037C4();
  v64 = v24;
  v65 = v23;
  __chkstk_darwin(v23);
  v67 = &v63 - v25;
  sub_1000C8190(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v49 = sub_100005CB0(inited, xmmword_100A2C3F0);
      sub_1000149C4(v49, &type metadata for PredictedLocationsAuthorizationAction);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_10000457C();
      goto LABEL_17;
    case 2u:
      v40 = *(v22 + 1);
      sub_10022C350(&qword_100CA36F8);
      v41 = swift_initStackObject();
      v42 = sub_100005CB0(v41, xmmword_100A2C3F0);
      *(sub_1000149C4(v42, &type metadata for NetworkAction) + 49) = v40;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_1000089BC();
      goto LABEL_22;
    case 3u:
      v43 = v63;
      (*(v63 + 32))(v17, v22, v12);
      sub_10022C350(&qword_100CA36F8);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_100A2C3F0;
      *(v44 + 32) = 0x656C61636F6CLL;
      *(v44 + 40) = 0xE600000000000000;
      *(v44 + 72) = v12;
      v45 = sub_100042FB0((v44 + 48));
      (*(v43 + 16))(v45, v17, v12);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      (*(v43 + 8))(v17, v12);
      goto LABEL_23;
    case 4u:
      v30 = type metadata accessor for ActivityAction;
      sub_1005A9810(v22, v11);
      sub_10022C350(&qword_100CA36F8);
      v31 = swift_initStackObject();
      v32 = sub_100005CB0(v31, xmmword_100A2C3F0);
      v32[4].n128_u64[1] = v7;
      v33 = sub_100042FB0(&v32[3]);
      sub_1000C8190(v11, v33);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for MainAction();
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      v34 = v11;
      goto LABEL_9;
    case 5u:
      v50 = *v22;
      v51 = *(v22 + 8);
      v18 = "isReduceMotionEnabled";
      sub_10022C350(&qword_100CA36F8);
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_100A2C3F0;
      *(v52 + 32) = 0x437972746E756F63;
      *(v52 + 40) = 0xEB0000000065646FLL;
      *(v52 + 72) = &type metadata for String;
      *(v52 + 48) = v50;
      *(v52 + 56) = v51;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_10000457C();
      goto LABEL_17;
    case 6u:
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v18 = 0xD000000000000016;
      *(v53 + 32) = 0xD000000000000015;
      *(v53 + 40) = v54;
      sub_1000149C4(v53, &type metadata for Bool);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      goto LABEL_17;
    case 7u:
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v18 = 0xD000000000000016;
      *(v46 + 32) = 0xD000000000000016;
      *(v46 + 40) = v47;
      sub_1000149C4(v46, &type metadata for Bool);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      goto LABEL_17;
    case 8u:
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v39 = 0xD000000000000014;
      goto LABEL_20;
    case 9u:
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000103C4();
      v39 = 0xD000000000000012;
LABEL_20:
      *(v37 + 32) = v39;
      *(v37 + 40) = v38;
      sub_1000149C4(v37, &type metadata for Bool);
      goto LABEL_21;
    case 0xAu:
      v55 = *v22;
      v56 = *(v22 + 8);
      sub_10022C350(&qword_100CA36F8);
      v57 = swift_initStackObject();
      v58 = sub_100005CB0(v57, xmmword_100A2C3F0);
      v58[4].n128_u64[1] = &type metadata for LinkAction;
      v58[3].n128_u64[0] = v55;
      v58[3].n128_u64[1] = v56;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_1000089BC();
      goto LABEL_22;
    case 0xBu:
      v28 = *v22;
      sub_10022C350(&qword_100CA36F8);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_100A2C3F0;
      *(v29 + 32) = 0x746E756F4377656ELL;
      *(v29 + 40) = 0xE800000000000000;
      *(v29 + 72) = &type metadata for Int;
      *(v29 + 48) = v28;
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      goto LABEL_17;
    case 0xCu:
      v30 = type metadata accessor for ConfiguredUnitsAction;
      sub_1005A9810(v22, v6);
      sub_10022C350(&qword_100CA36F8);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_100A2C3F0;
      *(v35 + 32) = 1953066613;
      *(v35 + 40) = 0xE400000000000000;
      *(v35 + 72) = v2;
      v36 = sub_100042FB0((v35 + 48));
      sub_1000C8190(v6, v36);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for MainAction();
      sub_1000089BC();
      ShortDescription.init(name:_:)();
      v34 = v6;
LABEL_9:
      sub_1005A986C(v34, v30);
      goto LABEL_23;
    case 0xDu:
    case 0xFu:
LABEL_21:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      sub_1000089BC();
      goto LABEL_22;
    case 0xEu:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      goto LABEL_17;
    case 0x10u:
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
      goto LABEL_17;
    default:
      sub_10022C350(&qword_100CA36F8);
      v26 = swift_allocObject();
      v27 = sub_100005CB0(v26, xmmword_100A2C3F0);
      sub_1000149C4(v27, &type metadata for LocationAuthorizationAction);
      Dictionary.init(dictionaryLiteral:)();
      sub_1000038D8();
      type metadata accessor for MainAction();
LABEL_17:
      sub_1000089BC();
LABEL_22:
      ShortDescription.init(name:_:)();
LABEL_23:
      v60 = v65;
      v59 = v66;
      v66[3] = v65;
      v59[4] = sub_100056774();
      v61 = sub_100042FB0(v59);
      return (*(v64 + 32))(v61, v18, v60);
  }
}

uint64_t sub_1001736AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, uint64_t), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100171280(v22, sub_10026B2E8, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B2E8;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48170;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1001B05BC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

Swift::Void __swiftcall SessionEventsAndDataCoordinator.sceneDidBecomeActive()()
{
  v1 = v0;
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_1000161C0((v0 + 248), *(v0 + 272));
  sub_100068374(&qword_100CB5240, type metadata accessor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of AppConfigurationManagerType.addObserver(_:)();
  sub_1000161C0((v1 + 288), *(v1 + 312));
  sub_100005B4C();
  sub_100068374(v9, type metadata accessor for SessionEventsAndDataCoordinator);
  sub_100003E0C();
  dispatch thunk of LocationManagerType.addObserver(_:)();
  UnfairLock.lock()();
  if ((*(v0 + 336) & 1) == 0)
  {
    (*(v4 + 104))(v8, enum case for StartMethod.homeScreenIconTap(_:), started);
    v10 = OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_startMethod;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v10, v8, started);
    swift_endAccess();
    sub_10004A100();
  }

  *(v1 + 336) = 0;
  UnfairLock.unlock()();
}

uint64_t sub_100173F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void, __n128), uint64_t a6, void (*a7)(void (*)(uint64_t, void, __n128), void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1001745D0(v22, sub_1001ADEA4, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1001ADEA4;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48008;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0);
      }

      sub_1001A7CFC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0);
  }

  return result;
}

void sub_1001745D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = UnsafeMutableRawPointer.hashValue.getter();
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16) && (v9 = sub_1000D5F5C(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1000D52D8();
    *(v4 + 16) = v22;
    swift_endAccess();
    if (qword_100CA2740 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90C18);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, aBlock);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_100078694(0x6E6F697461636F4CLL, 0xED00007475706E49, aBlock);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC0E0, aBlock);
    *(v16 + 32) = 2048;
    *(v16 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "Processing state update. Selector=<%s, %s, %s>, Count=%ld", v16, 0x2Au);
    swift_arrayDestroy();
  }

  v17 = [objc_opt_self() sharedApplication];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v7;
  v19[4] = v12;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_1001AD058;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C48058;
  v20 = _Block_copy(aBlock);

  [v17 installCACommitCompletionBlock:v20];
  _Block_release(v20);
}

uint64_t sub_100174944()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_1001749A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WindowFocusManager();
  swift_allocObject();
  result = sub_10027832C();
  a1[3] = v2;
  a1[4] = &protocol witness table for WindowFocusManager;
  *a1 = result;
  return result;
}

uint64_t sub_100174A04(void *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v11;
  if (v11)
  {
    sub_1000161C0(a2, a2[3]);
    dispatch thunk of ResolverType.resolve<A>(_:name:)();
    v6 = v11;
    v7 = v12;
    v8 = a1[3];
    v9 = a1[4];
    sub_1000161C0(a1, v8);
    v10 = *(v9 + 24);
    v10(&v11, v11, v12, v8, v9);
    sub_100006F14(&v11);
    if (v5 == v6)
    {
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      v10(&v11, v6, v7, v8, v9);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_100006F14(&v11);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_100174BC4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for ActivityAction();
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentAction();
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051168();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1000501CC();
    sub_100A11808(v7, a2, a3);
    v11 = type metadata accessor for ActivityAction;
    v12 = v7;
  }

  else
  {
    v11 = type metadata accessor for EnvironmentAction;
    v12 = v10;
  }

  return sub_10004FF18(v12, v11);
}

uint64_t sub_100174D3C()
{
  v1 = *(type metadata accessor for PredictedLocationsNotificationSubscription() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  return sub_100174DFC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100174DFC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v79 = a8;
  v78 = a7;
  v77 = a6;
  v75 = a5;
  v84 = a2;
  v82 = type metadata accessor for NotificationSettingsData();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v72 = &v68 - v14;
  v69 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v69);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MainAction();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v68 - v21;
  __chkstk_darwin(v22);
  v24 = (&v68 - v23);
  __chkstk_darwin(v25);
  v27 = (&v68 - v26);
  __chkstk_darwin(v28);
  v31 = &v68 - v30;
  v83 = v29;
  if (a1)
  {
    type metadata accessor for NotificationsOptInAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10004FF70();
    v33 = v32;
    v34 = v32[2];
    if (v34 >= v32[3] >> 1)
    {
      sub_10004FF70();
      v33 = v61;
    }

    v33[2] = v34 + 1;
    v29 = sub_1000CA208(v31, v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v34);
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  v35 = v84[4];
  v85 = v84[5];
  v86 = v35;
  v35(v87, v29);
  sub_100175920(v87[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v16);

  sub_100175984(v16);
  swift_beginAccess();

  sub_1000BA494();
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    swift_beginAccess();
    *v27 = *(a3 + 16);
    type metadata accessor for NotificationsAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v33 = v62;
    }

    v39 = v33[2];
    if (v39 >= v33[3] >> 1)
    {
      sub_10004FF70();
      v33 = v63;
    }

    v33[2] = v39 + 1;
    v38 = sub_1000CA208(v27, v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v39);
  }

  v86(v87, v38);
  sub_100175920(v87[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v16);

  sub_100175984(v16);
  swift_beginAccess();

  sub_1000BA494();
  v41 = v40;

  v71 = v18;
  if (v41)
  {
    v43 = v76;
  }

  else
  {
    swift_beginAccess();
    *v24 = *(a4 + 16);
    type metadata accessor for NotificationsAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v33 = v64;
    }

    v44 = v33[2];
    if (v44 >= v33[3] >> 1)
    {
      sub_10004FF70();
      v33 = v65;
    }

    v33[2] = v44 + 1;
    v42 = sub_1000CA208(v24, v33 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v44);
    v43 = v76;
  }

  v86(v87, v42);
  sub_100175920(v87[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v16);

  v45 = v70;
  v46 = v72;
  v47 = v73;
  (*(v70 + 16))(v72, &v16[*(v69 + 28)], v73);
  sub_100175984(v16);
  v48 = v74;
  PredictedLocationsNotificationSubscription.kind.getter();
  sub_10006CF08(&qword_100CE3030, 255, &type metadata accessor for PredictedLocationsNotificationSubscription.Kind);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v45 + 8);
  v50(v48, v47);
  v50(v46, v47);
  if (v49)
  {
    v51 = v71;
  }

  else
  {
    v52 = v68;
    PredictedLocationsNotificationSubscription.kind.getter();
    type metadata accessor for NotificationsAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004FF70();
      v33 = v66;
    }

    v51 = v71;
    v53 = v33[2];
    if (v53 >= v33[3] >> 1)
    {
      sub_10004FF70();
      v33 = v67;
    }

    v33[2] = v53 + 1;
    sub_1000CA208(v52, v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v53);
  }

  *v43 = v77 & 1;
  type metadata accessor for NotificationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10004FF70();
    v33 = v59;
  }

  v54 = v33[2];
  if (v54 >= v33[3] >> 1)
  {
    sub_10004FF70();
    v33 = v60;
  }

  v33[2] = v54 + 1;
  sub_1000CA208(v43, v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v54);
  v55 = v84[2];
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  sub_100060DE0(v89, v87, &unk_100CD81B0);
  v87[5] = v33;
  v88 = 0;
  sub_10004F1B0(v87, v55);
  sub_100018144(v87, &qword_100CA3510);
  v56 = sub_100018144(v89, &unk_100CD81B0);
  v86(v87, v56);
  sub_100175920(v87[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v16);

  sub_100175984(v16);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v57 = v80;
  NotificationSettingsData.init(isNotificationsEnabled:isCurrentLocationPrecipitationNotificationEnabled:isOtherLocationsPrecipitationNotificationEnabled:isCurrentLocationSevereNotificationEnabled:isOtherLocationsSevereNotificationEnabled:)();
  sub_10017E178(v57);
  return (*(v81 + 8))(v57, v82);
}

uint64_t sub_100175920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100175984(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001759E0(unsigned __int8 *a1, uint64_t a2, void (*a3)(_BYTE *, unsigned __int8 *, uint64_t))
{
  v1180 = a3;
  v1181 = a1;
  v1182 = a2;
  v1152 = type metadata accessor for NotificationSubscription.Kind();
  sub_1000037C4();
  v1151 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003918(v6);
  v1100 = type metadata accessor for NotificationSubscription.Location();
  sub_1000037C4();
  v1099 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_100003918(v10 - v9);
  v1104 = type metadata accessor for Location();
  sub_1000037C4();
  v1103 = v11;
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  sub_100003918(v14);
  v1017 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1015 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_100003918(v18 - v17);
  active = type metadata accessor for LocationViewerActiveLocationState();
  v20 = sub_100003810(active);
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003990(v22 - v21);
  v23 = sub_10022C350(&qword_100CB3AB0);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003918(&v1013 - v25);
  v1095 = type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v29 = sub_100003918(v28);
  v1183 = type metadata accessor for ViewState(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003918(v40);
  v1189 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
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
  sub_10000E70C();
  sub_100003918(v51);
  v1185 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003918(v62);
  v1187 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_10000E70C();
  sub_100003918(v73);
  v1184 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_10000E70C();
  sub_100003918(v84);
  v1188 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_10000E70C();
  v96 = sub_100003918(v95);
  v1178 = type metadata accessor for ModalViewState(v96);
  sub_1000037E8();
  __chkstk_darwin(v97);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  v1179 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_10000E70C();
  sub_100003990(v119);
  v120 = sub_10022C350(&qword_100CA65E8);
  v121 = sub_100003810(v120);
  __chkstk_darwin(v121);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_10000E70C();
  sub_100003990(v141);
  v142 = sub_10022C350(&qword_100CA6610);
  v143 = sub_100003810(v142);
  __chkstk_darwin(v143);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  v1174 = v145;
  sub_10000386C();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  v1175 = v148;
  sub_10000386C();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  v1173 = v151;
  sub_10000386C();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  v1172 = v154;
  sub_10000386C();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_10000E70C();
  sub_100003990(v167);
  v168 = sub_10022C350(&qword_100CA6618);
  v169 = sub_100003810(v168);
  __chkstk_darwin(v169);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_10000E70C();
  sub_100003990(v189);
  v190 = sub_10022C350(&qword_100CA6620);
  v191 = sub_100003810(v190);
  __chkstk_darwin(v191);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_10000E70C();
  sub_100003918(v211);
  type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v1176 = v213;
  v1177 = v212;
  __chkstk_darwin(v212);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_10000E70C();
  sub_100003990(v221);
  v222 = sub_10022C350(&qword_100CB1AA8);
  v223 = sub_100003810(v222);
  __chkstk_darwin(v223);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_10000E70C();
  sub_100003918(v233);
  v1186 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v234);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_10000E70C();
  sub_100003990(v245);
  v246 = sub_10022C350(&qword_100CA6628);
  v247 = sub_100003810(v246);
  __chkstk_darwin(v247);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_10000E70C();
  sub_100003990(v267);
  v268 = sub_10022C350(&qword_100CA6630);
  v269 = sub_100003810(v268);
  __chkstk_darwin(v269);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_10000E70C();
  sub_100003990(v289);
  v290 = sub_10022C350(&qword_100CA6638);
  v291 = sub_100003810(v290);
  __chkstk_darwin(v291);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_10000E70C();
  sub_100003990(v311);
  v312 = sub_10022C350(&qword_100CA6640);
  v313 = sub_100003810(v312);
  __chkstk_darwin(v313);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v316);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v318);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v319);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v320);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  v323 = __chkstk_darwin(v322);
  v325 = &v1013 - v324;
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  v327 = __chkstk_darwin(v326);
  v329 = &v1013 - v328;
  __chkstk_darwin(v327);
  sub_100003878();
  sub_100003908();
  v331 = __chkstk_darwin(v330);
  v333 = &v1013 - v332;
  v334 = __chkstk_darwin(v331);
  v336 = &v1013 - v335;
  v337 = __chkstk_darwin(v334);
  v338 = __chkstk_darwin(v337);
  v340 = &v1013 - v339;
  v341 = __chkstk_darwin(v338);
  v343 = &v1013 - v342;
  __chkstk_darwin(v341);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v344);
  v346 = &v1013 - v345;
  type metadata accessor for NotificationsAction();
  sub_1000037E8();
  __chkstk_darwin(v347);
  sub_1000037D8();
  v350 = (v349 - v348);
  sub_10017CBB0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v520 = *(sub_10022C350(&qword_100CB1AC0) + 48);
      sub_100042230();
      sub_100072FD8();
      sub_1000131DC();
      sub_100051BBC();
      sub_10003778C();
      sub_10017CBB0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v522 = v1182;
        if (EnumCaseMultiPayload == 1)
        {
          v523 = v333[*(sub_10022C350(&unk_100CE2F60) + 48)];
          sub_1000C8FDC();
          v524 = v1016;
          v525 = v333;
          v526 = v1104;
          v527(v1016, v525, v1104);
          v520 = sub_100395BE0(v522, v524, v523, v325);
          (*(v343 + 1))(v524, v526);
        }

        else
        {
          type metadata accessor for Location.Identifier();
          v1006 = sub_100020EE4(v1048);
          sub_10001B350(v1006, v1007, v1008, v1009);
          sub_10039431C(v522, v333, v325);
          sub_1000436E8();
          sub_1000DFE80(v333, v1010);
        }
      }

      else
      {
        sub_1000C8FDC();
        v996 = v1014;
        v997 = v333;
        v998 = v1017;
        v999(v1014, v997, v1017);
        v1000 = v1018;
        LocationModel.identifier.getter();
        type metadata accessor for Location.Identifier();
        sub_10000E7B0();
        sub_10001B350(v1001, v1002, v1003, v1004);
        sub_10039431C(v1182, v1000, v325);
        sub_1000436E8();
        sub_1000DFE80(v1000, v1005);
        (*(v343 + 1))(v996, v998);
      }

      sub_1000180EC(v325, &qword_100CB3AB0);
      sub_1000DFE80(v346, type metadata accessor for NotificationLocation);
      return v520;
    case 2u:
      v414 = *(sub_10022C350(&qword_100CB1AB8) + 48);
      v415 = v1099;
      v416 = v1097;
      v417 = v1100;
      (*(v1099 + 32))(v1097, v350, v1100);
      v418 = v1151;
      v419 = &v350[v414];
      v420 = v1101;
      v421 = v1152;
      (*(v1151 + 32))(v1101, v419, v1152);
      sub_100024118();
      sub_10001B350(v422, v423, v424, v425);
      v426 = sub_100003BCC(v1140);
      sub_10001B350(v426, v427, v428, v1184);
      v429 = sub_100003BCC(v1146);
      sub_10001B350(v429, v430, v431, v1187);
      v432 = v1181;
      sub_100547B90();
      (*(v418 + 8))(v420, v421);
      (*(v415 + 8))(v416, v417);
      sub_10000E7B0();
      sub_10001B350(v433, v434, v435, v1186);
      v436 = sub_100003BCC(&v1157);
      sub_10001B350(v436, v437, v438, v1185);
      v439 = sub_100003BCC(&v1162);
      sub_10001B350(v439, v440, v441, v1189);
      v442 = sub_100020EE4(v1111);
      sub_10001B350(v442, v443, v444, v1183);
      v445 = v1088;
      sub_100071C94(v1088);
      sub_10000FDA8();
      sub_1000377E0(v446);
      sub_1000113EC();
      sub_10017CBB0();
      sub_100042230();
      sub_100051BBC();
      sub_10000554C(v445);
      if (v370)
      {
        sub_1000180EC(v445, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v432, v731);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v732 = v1025;
      sub_10001E9D0();
      sub_100072FD8();
      v733 = *(v420 + 16);
      LODWORD(v1180) = *(v420 + 24);
      sub_100051BBC();
      v734 = sub_1000162B0();
      v735 = v1188;
      sub_100013710(v734, v736);
      v1181 = v733;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v737 = sub_1000162B0();
        sub_1000AF528(v737, v738);
        v739 = v1032;
        if (v735 != 1)
        {
          sub_1000180EC(v336, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v739 = v1032;
      }

      v740 = v1074;
      sub_100051BBC();
      v741 = sub_1000162B0();
      v742 = v1184;
      if (sub_100024D10(v741, v743, v1184) == 1)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        v744 = sub_1000162B0();
        sub_1000038B4(v744, v745, v742);
        v746 = v740;
        v747 = v1042;
        if (!v370)
        {
          sub_1000180EC(v746, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v747 = v1042;
      }

      sub_1000453E0(v1146);
      sub_100051BBC();
      v748 = sub_1000201BC();
      v749 = v1187;
      sub_1000038B4(v748, v750, v1187);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        v751 = sub_1000201BC();
        sub_1000038B4(v751, v752, v749);
        if (!v370)
        {
          sub_1000180EC(v732, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_1000870F8(&v1152);
      sub_100051BBC();
      sub_10000E7EC(v739);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000E7EC(v739);
        v753 = v1050;
        if (!v370)
        {
          sub_1000180EC(v739, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
        v753 = v1050;
      }

      sub_1000131E8(&v1157);
      sub_100051BBC();
      sub_100003BFC(v747);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BFC(v747);
        v754 = v1059;
        if (!v370)
        {
          sub_1000180EC(v747, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v754 = v1059;
      }

      sub_100052674(&v1162);
      sub_100051BBC();
      sub_100003A40(v753);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003A40(v753);
        if (!v370)
        {
          sub_1000180EC(v753, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000554C(v754);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000554C(v754);
        if (!v370)
        {
          sub_1000180EC(v754, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v520 = *(v420 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_1000B01CC();
      goto LABEL_160;
    case 3u:
      v447 = v1176;
      v448 = v1081;
      v449 = v1177;
      (*(v1176 + 4))(v1081, v350, v1177);
      sub_100024118();
      sub_10001B350(v450, v451, v452, v453);
      v454 = sub_100003BCC(v1141);
      sub_10001B350(v454, v455, v456, v1184);
      v457 = sub_100003BCC(v1147);
      sub_10001B350(v457, v458, v459, v1187);
      v460 = v1134;
      v461 = v1181;
      sub_10054849C();
      v447[1](v448, v449);
      sub_10000E7B0();
      sub_10001B350(v462, v463, v464, v1186);
      v465 = sub_100003BCC(&v1158);
      sub_10001B350(v465, v466, v467, v1185);
      v468 = sub_100003BCC(&v1163);
      sub_10001B350(v468, v469, v470, v1189);
      v471 = sub_100003BCC(&v1168);
      v472 = v1183;
      sub_10001B350(v471, v473, v474, v1183);
      v475 = sub_100020EE4(v1098);
      v476 = v1178;
      sub_10001B350(v475, v477, v478, v1178);
      sub_10000FDA8();
      sub_1000377E0(v479);
      sub_1000113EC();
      sub_10017CBB0();
      sub_1000131DC();
      sub_100051BBC();
      v480 = sub_1000162A4();
      if (sub_100024D10(v480, v481, v476) == 1)
      {
        sub_1000180EC(v460, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v461, v755);
        sub_10001E9D0();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v756 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
      v757 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners;
      sub_100032590();
      sub_100051BBC();
      v758 = sub_1000175DC();
      v759 = v1188;
      sub_100013710(v758, v760);
      v1181 = v756;
      LODWORD(v1180) = v757;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v761 = sub_1000175DC();
        sub_1000AF528(v761, v762);
        v764 = v1051;
        v765 = v1043;
        v763 = v329;
        v766 = *(&v1032 + 1);
        if (v759 != 1)
        {
          sub_1000180EC(v763, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v764 = v1051;
        v765 = v1043;
        v766 = *(&v1032 + 1);
      }

      sub_100042230();
      sub_100051BBC();
      sub_10000556C(v472);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000556C(v472);
        v767 = v1060;
        if (!v370)
        {
          sub_1000180EC(v472, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v767 = v1060;
      }

      v768 = v1077;
      sub_100051BBC();
      sub_100003BDC(v768);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003BDC(v768);
        if (!v370)
        {
          sub_1000180EC(v768, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1153);
      sub_100051BBC();
      v769 = sub_1000175DC();
      sub_1000038B4(v769, v770, v1186);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_1000083BC(v766);
        if (!v370)
        {
          sub_1000180EC(v766, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_100003BDC(v765);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BDC(v765);
        if (!v370)
        {
          sub_1000180EC(v765, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000E7EC(v764);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000E7EC(v764);
        if (!v370)
        {
          sub_1000180EC(v764, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000C814(v767);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000C814(v767);
        if (!v370)
        {
          sub_1000180EC(v767, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_1000C8980();
      v520 = *(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_1000B01CC();
LABEL_160:
      sub_10001322C();
      goto LABEL_317;
    case 4u:
      v1180 = *v350;
      v374 = sub_100003BCC(&v1184);
      sub_10001B350(v374, v375, v376, v1188);
      v377 = sub_100003BCC(&v1188);
      sub_10001B350(v377, v378, v379, v1184);
      v380 = sub_100003BCC(v1192);
      sub_10001B350(v380, v381, v382, v1187);
      sub_100003934();
      v383 = v1177;
      sub_10001B350(v384, v385, v386, v1177);
      LODWORD(v1175) = *v1181;
      v387 = *(v1181 + 2);
      v388 = v1079;
      sub_100051BBC();
      sub_10000C814(v388);
      if (v370)
      {
        sub_100052304();
        v389(v1034);
        v390 = sub_1000162B0();
        v392 = sub_100024D10(v390, v391, v383);

        v636 = v1183;
        v637 = v1189;
        v638 = v1185;
        if (v392 != 1)
        {
          sub_1000180EC(v388, &qword_100CB1AA8);
        }
      }

      else
      {
        v634 = sub_1001924DC();
        v635(v634);

        v636 = v1183;
        v637 = v1189;
        v638 = v1185;
        v350 = v1186;
      }

      v639 = v1181[*(v350 + 8)];
      sub_1000C8E54(&v1196);
      *(v388 + 8) = v640;
      *(v388 + 16) = v387;
      v641 = sub_100051A14();
      v642(v641);
      *(v388 + *(v350 + 8)) = v639;
      sub_10000E7B0();
      sub_10001B350(v643, v644, v645, v350);
      v646 = sub_100003BCC(&v1200);
      sub_10001B350(v646, v647, v648, v638);
      v649 = sub_100003BCC(&v1203);
      sub_10001B350(v649, v650, v651, v637);
      sub_100003934();
      sub_10001B350(v652, v653, v654, v636);
      sub_1000303D0(&v1176);
      sub_10000FDA8();
      v655 = v1182;
      v656 = v1093;
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v639);
      if (v370)
      {
        sub_1000180EC(v639, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v656, v657);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v658 = v1188;
      v659 = v1046;
      v660 = v1038;
      v661 = v1028;
      v662 = v1023;
      v663 = v1020;
      sub_10001E9D0();
      sub_100072FD8();
      v664 = *(v655 + 16);
      LODWORD(v1181) = *(v655 + 24);
      sub_1000453E0(&v1184);
      sub_100095588();
      sub_10000554C(v663);
      v1188 = v664;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v665 = sub_1000201BC();
        v667 = sub_100024D10(v665, v666, v658);

        v668 = v1054;
        if (v667 != 1)
        {
          sub_1000180EC(v663, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v668 = v1054;
      }

      sub_1000870F8(&v1188);
      sub_100095588();
      v669 = sub_100007FC4();
      sub_100013710(v669, v670);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000554C(v662);
        v671 = v1063;
        if (!v370)
        {
          sub_1000180EC(v662, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v671 = v1063;
      }

      sub_1000131E8(v1192);
      sub_100095588();
      v672 = sub_1000162B0();
      sub_1000038B4(v672, v673, v1187);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_1000083BC(v661);
        if (!v370)
        {
          sub_1000180EC(v661, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1196);
      sub_100095588();
      sub_10000556C(v660);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000556C(v660);
        if (!v370)
        {
          sub_1000180EC(v660, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100095588();
      sub_100003BDC(v659);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BDC(v659);
        if (!v370)
        {
          sub_1000180EC(v659, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100095588();
      v674 = sub_100016298();
      sub_1000038B4(v674, v675, v1189);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003BFC(v668);
        if (!v370)
        {
          sub_1000180EC(v668, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      v676 = sub_10000C7F0();
      sub_1000038B4(v676, v677, v1183);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v671);
        if (!v370)
        {
          sub_1000180EC(v671, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v520 = v1179;
      sub_100072FD8();
      sub_100037FB4();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100041990();
      v678 = sub_10004221C();
      sub_10003E038(v678, v679, v1115, v1119, v1123, v1109, v1127, v1131, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      sub_1000180EC(v1148, &qword_100CA65E8);
      sub_1000180EC(v1172, &qword_100CA6610);
      sub_1000180EC(v1171, &qword_100CA6618);
      sub_1000180EC(v1168, &qword_100CA6620);
      sub_1000180EC(v1164, &qword_100CA6628);
      sub_1000180EC(v1160, &qword_100CA6630);
      sub_1000180EC(v1156, &qword_100CA6638);
      v680 = &v1184;
      goto LABEL_287;
    case 5u:
      v528 = v1176;
      v529 = v1177;
      v530 = *(v1176 + 4);
      v531 = v1138;
      v530(v1138, v350, v1177);
      v532 = sub_100003BCC(&v1187);
      sub_10001B350(v532, v533, v534, v1188);
      v535 = sub_100003BCC(v1191);
      sub_10001B350(v535, v536, v537, v1184);
      v538 = sub_100003BCC(&v1195);
      sub_10001B350(v538, v539, v540, v1187);
      v541 = *(v528 + 2);
      v542 = sub_100021D50(&v1155);
      v541(v542, v531, v529);
      sub_10000E7B0();
      sub_10001B350(v543, v544, v545, v529);
      LODWORD(v1174) = *v1181;
      v546 = *(v1181 + 1);
      v547 = *(v1181 + 2);
      sub_100042230();
      sub_100095588();
      sub_1000083BC(v346);
      v1180 = v530;
      if (v370)
      {
        v548 = sub_100021D50(v1068);
        (v541)(v548);
        v549 = sub_1000182B8();
        v551 = sub_100024D10(v549, v550, v529);

        v851 = v1182;
        v853 = v529;
        v552 = v346;
        v852 = v1189;
        if (v551 != 1)
        {
          sub_1000180EC(v552, &qword_100CB1AA8);
        }
      }

      else
      {
        v850 = sub_100021D50(v1068);
        v530(v850, v346, v529);

        v851 = v1182;
        v852 = v1189;
        v853 = v529;
      }

      v854 = v1186;
      v855 = *(v1186 + 7);
      v856 = v1181[*(v1186 + 8)];
      v857 = v1167;
      *v1167 = v1174;
      *(v857 + 1) = v546;
      *(v857 + 2) = v547;
      v1180(&v857[v855], v350, v853);
      v857[*(v854 + 32)] = v856;
      sub_1000180EC(v1137, &qword_100CB1AA8);
      sub_10000E7B0();
      sub_10001B350(v858, v859, v860, v854);
      v861 = sub_100003BCC(&v1182);
      sub_10001B350(v861, v862, v863, v1185);
      v864 = sub_100003BCC(&v1183);
      sub_10001B350(v864, v865, v866, v852);
      sub_100003934();
      sub_10001B350(v867, v868, v869, v1183);
      sub_1000303D0(&v1179);
      sub_10000FDA8();
      sub_10003778C();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v547);
      if (v370)
      {
        sub_1000180EC(v547, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v856, v870);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v871 = v1188;
      v872 = v1057;
      v873 = v1048[1];
      v874 = v1041;
      v875 = v1031;
      sub_10001E9D0();
      sub_100072FD8();
      v876 = *(v851 + 16);
      v877 = *(v851 + 24);
      sub_10003778C();
      sub_100095588();
      sub_100003A40(v856);
      v1188 = v876;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v878 = sub_1000131C4();
        v880 = sub_100024D10(v878, v879, v871);
        v881 = v856;
        v882 = v880;

        v370 = v882 == 1;
        v883 = v1024;
        if (!v370)
        {
          sub_1000180EC(v881, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v883 = v1024;
      }

      sub_100095588();
      v884 = sub_1000131C4();
      sub_1000113D0(v884, v885);
      LODWORD(v1182) = v877;
      if (v370)
      {
        v886 = v883;
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_100003A40(v883);
        v887 = v1066;
        if (!v370)
        {
          sub_1000180EC(v886, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v887 = v1066;
      }

      sub_1000453E0(&v1195);
      sub_100095588();
      v888 = sub_1000201BC();
      sub_1000113D0(v888, v889);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v875);
        if (!v370)
        {
          sub_1000180EC(v875, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_1000131E8(&v1199);
      sub_100095588();
      v890 = sub_1000162B0();
      sub_1000113D0(v890, v891);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003A40(v874);
        if (!v370)
        {
          sub_1000180EC(v874, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100095588();
      v892 = sub_100007FC4();
      sub_1000113D0(v892, v893);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003A40(v873);
        v894 = v1072;
        if (!v370)
        {
          sub_1000180EC(v873, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v894 = v1072;
      }

      sub_100095588();
      sub_10000C814(v872);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v872);
        if (!v370)
        {
          sub_1000180EC(v872, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v887);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v887);
        v520 = v894;
        if (!v370)
        {
          sub_1000180EC(v887, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
        v520 = v894;
      }

      sub_10001E9D0();
      sub_100072FD8();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v895, v896, v897, v898, v899, v900, v901, v902, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      sub_1000180EC(v1150[1], &qword_100CA65E8);
      sub_1000180EC(v1175, &qword_100CA6610);
      sub_1000180EC(v1154, &qword_100CA6618);
      sub_1000180EC(v1153, &qword_100CA6620);
      sub_1000180EC(v1167, &qword_100CA6628);
      sub_1000180EC(v1163, &qword_100CA6630);
      sub_1000180EC(v1159, &qword_100CA6638);
      sub_1000180EC(v1155, &qword_100CA6640);
      (*(v1176 + 1))(v1138, v1177);
      return v520;
    case 6u:
      v1180 = *v350;
      v553 = sub_100003BCC(&v1185);
      sub_10001B350(v553, v554, v555, v1188);
      v556 = sub_100003BCC(&v1189);
      sub_10001B350(v556, v557, v558, v1184);
      v559 = sub_100003BCC(v1193);
      sub_10001B350(v559, v560, v561, v1187);
      sub_100003934();
      v562 = v1177;
      sub_10001B350(v563, v564, v565, v1177);
      LODWORD(v1175) = *v1181;
      v566 = *(v1181 + 1);
      v567 = v1080;
      sub_100051BBC();
      sub_10000C814(v567);
      if (v370)
      {
        sub_100052304();
        v568(v1035);
        v569 = sub_1000162B0();
        v571 = sub_100024D10(v569, v570, v562);

        v905 = v1183;
        v906 = v1189;
        v907 = v1185;
        if (v571 != 1)
        {
          sub_1000180EC(v567, &qword_100CB1AA8);
        }
      }

      else
      {
        v329 = v1176;
        v903 = sub_1001924DC();
        v904(v903);

        v905 = v1183;
        v906 = v1189;
        v907 = v1185;
        v350 = v1186;
      }

      v908 = v1181[*(v350 + 8)];
      sub_1000C8E54(&v1197);
      *(v567 + 8) = v566;
      *(v567 + 16) = v909;
      v910 = sub_100051A14();
      v911(v910);
      *(v567 + *(v350 + 8)) = v908;
      sub_10000E7B0();
      sub_10001B350(v912, v913, v914, v350);
      v915 = sub_100003BCC(&v1201);
      sub_10001B350(v915, v916, v917, v907);
      sub_100003934();
      sub_10001B350(v918, v919, v920, v906);
      sub_100003934();
      sub_10001B350(v921, v922, v923, v905);
      sub_1000303D0(&v1177);
      sub_10000FDA8();
      v924 = v1182;
      sub_100032590();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v908);
      if (v370)
      {
        sub_1000180EC(v908, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v329, v925);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v926 = v1188;
      v927 = v1039;
      v928 = v1029;
      sub_10001E9D0();
      sub_100072FD8();
      v929 = *(v924 + 16);
      LODWORD(v1181) = *(v924 + 24);
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v908);
      v1188 = v929;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v930 = sub_10000C7F0();
        v932 = sub_100024D10(v930, v931, v926);
        v933 = v908;
        v934 = v932;

        v935 = v1055;
        v936 = *(&v1023 + 1);
        if (v934 != 1)
        {
          sub_1000180EC(v933, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v935 = v1055;
        v936 = *(&v1023 + 1);
      }

      sub_100095588();
      v937 = sub_100016298();
      sub_100013710(v937, v938);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000554C(v936);
        v939 = v1064;
        if (!v370)
        {
          sub_1000180EC(v936, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v939 = v1064;
      }

      sub_1000870F8(v1193);
      sub_100095588();
      sub_10000556C(v928);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000556C(v928);
        v940 = v928;
        v941 = v1047;
        if (!v370)
        {
          sub_1000180EC(v940, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
        v941 = v1047;
      }

      sub_1000131E8(&v1197);
      sub_100095588();
      v942 = sub_1000162B0();
      sub_1000038B4(v942, v943, v1186);
      v944 = v1185;
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000556C(v927);
        if (!v370)
        {
          sub_1000180EC(v927, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_1000870F8(&v1201);
      sub_100095588();
      v945 = sub_100007FC4();
      sub_1000038B4(v945, v946, v944);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        v947 = sub_100007FC4();
        sub_1000038B4(v947, v948, v944);
        v949 = v1189;
        if (!v370)
        {
          sub_1000180EC(v941, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
        v949 = v1189;
      }

      sub_100095588();
      v950 = sub_1000175DC();
      sub_1000038B4(v950, v951, v949);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        v952 = sub_1000175DC();
        sub_1000038B4(v952, v953, v949);
        if (!v370)
        {
          sub_1000180EC(v935, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v939);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v939);
        if (!v370)
        {
          sub_1000180EC(v939, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v520 = v1179;
      sub_100072FD8();
      sub_100037FB4();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100041990();
      v954 = sub_10004221C();
      sub_10003E038(v954, v955, v1116, v1120, v1124, v1110, v1128, v1132, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      sub_1000180EC(v1149, &qword_100CA65E8);
      sub_1000180EC(v1173, &qword_100CA6610);
      sub_1000180EC(v1144, &qword_100CA6618);
      sub_1000180EC(v1169, &qword_100CA6620);
      sub_1000180EC(v1165, &qword_100CA6628);
      sub_1000180EC(v1161, &qword_100CA6630);
      sub_1000180EC(v1157, &qword_100CA6638);
      v680 = &v1185;
      goto LABEL_287;
    case 7u:
      v482 = *(sub_10022C350(&qword_100CB1AB0) + 48);
      v483 = v1103;
      v484 = v1096;
      v485 = v1104;
      (*(v1103 + 32))(v1096, v350, v1104);
      sub_1000C8FDC();
      v486 = &v350[v482];
      v487 = v1102[0];
      v488 = v1152;
      v489(v1102[0], v486, v1152);
      sub_100024118();
      sub_10001B350(v490, v491, v492, v493);
      v494 = sub_100003BCC(v1142);
      sub_10001B350(v494, v495, v496, v1184);
      v497 = sub_100003BCC(&v1148);
      sub_10001B350(v497, v498, v499, v1187);
      v500 = v1181;
      sub_1005480E0();
      v502 = *(v343 + 1);
      v501 = v343 + 8;
      v502(v487, v488);
      (*(v483 + 8))(v484, v485);
      sub_10000E7B0();
      v503 = v1186;
      sub_10001B350(v504, v505, v506, v1186);
      v507 = sub_100003BCC(&v1159);
      v508 = v1185;
      sub_10001B350(v507, v509, v510, v1185);
      v511 = sub_100003BCC(&v1164);
      sub_10001B350(v511, v512, v513, v1189);
      v514 = sub_100003BCC(&v1169);
      sub_10001B350(v514, v515, v516, v1183);
      sub_1000303D0(&v1099);
      sub_10000FDA8();
      sub_1000377E0(v517);
      sub_100032590();
      sub_10017CBB0();
      sub_1000113EC();
      sub_100051BBC();
      v518 = sub_10000C7F0();
      if (sub_100024D10(v518, v519, v488) == 1)
      {
        sub_1000180EC(v500, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v484, v779);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v780 = v1022;
      sub_10001E9D0();
      sub_100072FD8();
      v781 = *(v501 + 2);
      LODWORD(v1180) = v501[24];
      sub_100042230();
      sub_100051BBC();
      v782 = sub_1000182B8();
      v783 = v1188;
      sub_1000038B4(v782, v784, v1188);
      v785 = v1086;
      v786 = v1083;
      v1181 = v781;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v787 = sub_1000182B8();
        v789 = sub_100024D10(v787, v788, v783);

        if (v789 != 1)
        {
          sub_1000180EC(v503, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();
      }

      sub_1000453E0(v1142);
      sub_100051BBC();
      sub_1000083BC(v780);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_1000083BC(v780);
        v790 = v1070;
        if (!v370)
        {
          sub_1000180EC(v780, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v790 = v1070;
      }

      v791 = v1078;
      sub_100051BBC();
      sub_100003BDC(v791);
      v792 = v1090;
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003BDC(v791);
        if (!v370)
        {
          sub_1000180EC(v791, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1154);
      sub_100051BBC();
      sub_10000C814(v786);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000C814(v786);
        if (!v370)
        {
          sub_1000180EC(v786, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100087140();
      sub_100003BFC(v785);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_100003BFC(v785);
        if (!v370)
        {
          sub_1000180EC(v785, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_1000113D0(v792, 1);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003A40(v792);
        if (!v370)
        {
          sub_1000180EC(v792, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_1000131DC();
      sub_100051BBC();
      v793 = sub_1000162A4();
      sub_100013710(v793, v794);
      if (!v370)
      {
        goto LABEL_344;
      }

      sub_1000083A4();
      sub_10017CBB0();
      sub_10000554C(v508);
      v520 = v790;
      if (!v370)
      {
        sub_1000180EC(v508, &qword_100CA6610);
      }

      goto LABEL_347;
    case 8u:
      v602 = v1176;
      v603 = v1082;
      v604 = v1177;
      (*(v1176 + 4))(v1082, v350, v1177);
      sub_100003934();
      v605 = v1188;
      sub_10001B350(v606, v607, v608, v1188);
      v609 = sub_100003BCC(v1143);
      sub_10001B350(v609, v610, v611, v1184);
      v612 = sub_100003BCC(&v1149);
      sub_10001B350(v612, v613, v614, v1187);
      v615 = v1181;
      sub_1005486AC();
      v617 = *(v602 + 1);
      v616 = v602 + 8;
      v617(v603, v604);
      sub_10000E7B0();
      sub_10001B350(v618, v619, v620, v1186);
      v621 = sub_100003BCC(&v1160);
      sub_10001B350(v621, v622, v623, v1185);
      v624 = sub_100003BCC(&v1165);
      sub_10001B350(v624, v625, v626, v1189);
      v627 = sub_100003BCC(&v1170);
      sub_10001B350(v627, v628, v629, v1183);
      v630 = v1089;
      sub_100071C94(v1089);
      sub_10000FDA8();
      sub_1000377E0(v631);
      sub_1000113EC();
      sub_10017CBB0();
      sub_100042230();
      sub_100051BBC();
      v632 = sub_1000182B8();
      if (sub_100024D10(v632, v633, v604) == 1)
      {
        sub_1000180EC(v630, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v615, v971);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v972 = v1052;
      v973 = v1033;
      v974 = v1026;
      sub_10001E9D0();
      sub_100072FD8();
      v975 = *(v616 + 2);
      LODWORD(v1180) = v616[24];
      sub_1000131DC();
      sub_100051BBC();
      v976 = sub_1000162A4();
      sub_1000038B4(v976, v977, v605);
      v978 = v1075;
      v1181 = v975;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v979 = sub_1000162A4();
        v981 = sub_100024D10(v979, v980, v605);

        v982 = v325;
        v983 = v1061;
        if (v981 != 1)
        {
          sub_1000180EC(v982, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v983 = v1061;
      }

      sub_100087140();
      sub_10000556C(v978);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_10000556C(v978);
        v790 = v1069;
        if (!v370)
        {
          sub_1000180EC(v978, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v790 = v1069;
      }

      sub_100052674(&v1149);
      sub_100051BBC();
      v984 = sub_1000175DC();
      sub_1000113D0(v984, v985);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v974);
        v986 = v1044;
        if (!v370)
        {
          sub_1000180EC(v974, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
        v986 = v1044;
      }

      sub_100051BBC();
      sub_1000083BC(v973);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_1000083BC(v973);
        if (!v370)
        {
          sub_1000180EC(v973, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000E7EC(v986);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000E7EC(v986);
        if (!v370)
        {
          sub_1000180EC(v986, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_1000131E8(&v1165);
      sub_100051BBC();
      sub_10000C814(v972);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v972);
        if (!v370)
        {
          sub_1000180EC(v972, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_100003A40(v983);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_100003A40(v983);
        v520 = v790;
        if (!v370)
        {
          sub_1000180EC(v983, &qword_100CA6610);
        }
      }

      else
      {
LABEL_344:
        sub_100005988();
        sub_100072FD8();
        v520 = v790;
      }

LABEL_347:
      sub_10001E9D0();
      sub_1000C8980();
      sub_100044DA4();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v987, v988, v989, v990, v991, v992, v993, v994, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      goto LABEL_348;
    case 9u:
      LODWORD(v1180) = *v350;
      v393 = sub_100003BCC(&v1186);
      sub_10001B350(v393, v394, v395, v1188);
      v396 = sub_100003BCC(v1190);
      sub_10001B350(v396, v397, v398, v1184);
      v399 = sub_100003BCC(&v1194);
      sub_10001B350(v399, v400, v401, v1187);
      v402 = v1136;
      sub_100003934();
      v403 = v1177;
      sub_10001B350(v404, v405, v406, v1177);
      LODWORD(v1175) = *v1181;
      v407 = *(v1181 + 1);
      v408 = *(v1181 + 2);
      sub_100032590();
      sub_100095588();
      sub_1000083BC(v402);
      if (v370)
      {
        v681 = v1176;
        v409 = sub_100021D50(v1067);
        v410(v409);
        v411 = sub_1000175DC();
        v413 = sub_100024D10(v411, v412, v403);

        v370 = v413 == 1;
        v683 = v1182;
        v682 = v1183;
        v684 = v1189;
        v685 = v1185;
        if (!v370)
        {
          sub_1000180EC(v402, &qword_100CB1AA8);
        }
      }

      else
      {
        v681 = v1176;
        v350 = v1036;
        (*(v1176 + 4))(v1036, v402, v403);

        v683 = v1182;
        v682 = v1183;
        v684 = v1189;
        v685 = v1185;
      }

      v686 = v1166;
      *v1166 = v1175;
      *(v686 + 1) = v407;
      *(v686 + 2) = v408;
      v687 = v1186;
      (*(v681 + 4))(&v686[*(v1186 + 7)], v350, v403);
      v686[*(v687 + 32)] = v1180;
      sub_1000180EC(v1136, &qword_100CB1AA8);
      sub_10000E7B0();
      sub_10001B350(v688, v689, v690, v687);
      v691 = sub_100003BCC(&v1202);
      sub_10001B350(v691, v692, v693, v685);
      sub_100003934();
      sub_10001B350(v694, v695, v696, v684);
      sub_100003934();
      sub_10001B350(v697, v698, v699, v682);
      sub_1000303D0(&v1178);
      sub_10000FDA8();
      v700 = v1094;
      sub_10017CBB0();
      sub_1000113EC();
      sub_100095588();
      sub_10000554C(v408);
      if (v370)
      {
        sub_1000180EC(v408, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v700, v701);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v702 = v1056;
      v703 = v1040;
      v704 = v1030;
      v705 = v1021;
      sub_10001E9D0();
      sub_100072FD8();
      v706 = *(v683 + 16);
      v707 = *(v683 + 24);
      sub_100095588();
      v708 = sub_1000131C4();
      v709 = v1188;
      sub_1000038B4(v708, v710, v1188);
      v1182 = v706;
      LODWORD(v1181) = v707;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v711 = sub_1000131C4();
        v707 = v705;
        v713 = sub_100024D10(v711, v712, v709);

        v714 = v1048[0];
        if (v713 != 1)
        {
          sub_1000180EC(v707, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v714 = v1048[0];
      }

      sub_1000131DC();
      sub_100095588();
      v715 = sub_1000162A4();
      sub_1000113D0(v715, v716);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_100003A40(v707);
        v717 = v1065;
        if (!v370)
        {
          sub_1000180EC(v707, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v717 = v1065;
      }

      sub_1000453E0(&v1194);
      sub_100095588();
      v718 = sub_1000201BC();
      sub_1000113D0(v718, v719);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_100003A40(v704);
        if (!v370)
        {
          sub_1000180EC(v704, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100052674(&v1198);
      sub_100095588();
      v720 = sub_1000175DC();
      sub_1000113D0(v720, v721);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003A40(v703);
        v722 = v1071;
        if (!v370)
        {
          sub_1000180EC(v703, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
        v722 = v1071;
      }

      sub_1000870F8(&v1202);
      sub_100095588();
      sub_10000394C(v714);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000394C(v714);
        if (!v370)
        {
          sub_1000180EC(v714, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100095588();
      sub_10000394C(v702);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000394C(v702);
        if (!v370)
        {
          sub_1000180EC(v702, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100095588();
      sub_100003BFC(v717);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_100003BFC(v717);
        v520 = v722;
        if (!v370)
        {
          sub_1000180EC(v717, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
        v520 = v722;
      }

      sub_10001E9D0();
      sub_1000C8980();
      sub_100087104();
      sub_100003B6C();
      sub_10000E80C();
      sub_10001322C();
      sub_10003E038(v723, v724, v725, v726, v727, v728, v729, v730, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      sub_1000180EC(v1150[0], &qword_100CA65E8);
      sub_1000180EC(v1174, &qword_100CA6610);
      sub_1000180EC(v1145, &qword_100CA6618);
      sub_1000180EC(v1170, &qword_100CA6620);
      sub_1000180EC(v1166, &qword_100CA6628);
      sub_1000180EC(v1162, &qword_100CA6630);
      sub_1000180EC(v1158, &qword_100CA6638);
      v680 = &v1186;
LABEL_287:
      sub_1000180EC(*(v680 - 32), &qword_100CA6640);
      return v520;
    case 0xAu:
      sub_100024118();
      sub_10001B350(v572, v573, v574, v575);
      v576 = sub_100003BCC(v1139);
      sub_10001B350(v576, v577, v578, v1184);
      v579 = sub_100003BCC(&v1145);
      v580 = v1187;
      sub_10001B350(v579, v581, v582, v1187);
      v583 = sub_100003BCC(&v1151);
      sub_10001B350(v583, v584, v585, v1186);
      v586 = sub_100003BCC(&v1156);
      sub_10001B350(v586, v587, v588, v1185);
      v589 = sub_100003BCC(&v1161);
      sub_10001B350(v589, v590, v591, v1189);
      v592 = sub_100003BCC(&v1167);
      sub_10001B350(v592, v593, v594, v1183);
      v595 = v1087;
      *v1087 = 0;
      v596 = v1178;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v597, v598, v599, v596);
      sub_10000FDA8();
      v600 = v1182;
      v601 = v1091;
      sub_10017CBB0();
      sub_1000131DC();
      sub_100051BBC();
      sub_10000556C(v595);
      if (v370)
      {
        sub_1000180EC(v595, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v601, v956);
        sub_10001E9D0();
        sub_100072FD8();
      }

      sub_10001E9D0();
      sub_100072FD8();
      v957 = *(v600 + 16);
      LODWORD(v1180) = *(v600 + 24);
      sub_100051BBC();
      v958 = sub_10000C7F0();
      v959 = v1188;
      sub_1000038B4(v958, v960, v1188);
      v961 = v1085;
      v1181 = v957;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v962 = sub_10000C7F0();
        v964 = sub_100024D10(v962, v963, v959);

        v370 = v964 == 1;
        v965 = v1058;
        v966 = v1049;
        if (!v370)
        {
          sub_1000180EC(v340, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v965 = v1058;
        v966 = v1049;
      }

      v967 = v1073;
      sub_100051BBC();
      sub_1000083BC(v967);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        sub_10017CBB0();
        sub_1000083BC(v967);
        if (!v370)
        {
          sub_1000180EC(v967, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
      }

      v968 = v1076;
      sub_100051BBC();
      sub_10000E7EC(v968);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000E7EC(v968);
        if (!v370)
        {
          sub_1000180EC(v968, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003BDC(v580);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_100003BDC(v580);
        if (!v370)
        {
          sub_1000180EC(v580, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_10000C814(v961);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000C814(v961);
        if (!v370)
        {
          sub_1000180EC(v961, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      sub_1000038B4(v966, 1, v1189);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_100003BFC(v966);
        if (!v370)
        {
          sub_1000180EC(v966, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100051BBC();
      v969 = sub_100016298();
      sub_100013710(v969, v970);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000554C(v965);
        if (!v370)
        {
          sub_1000180EC(v965, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v520 = v1179;
      sub_100072FD8();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      sub_100041990();
      v1013 = v1129;
      v771 = v1181;
      v772 = v1180;
      v773 = v1112;
      v774 = v1113;
      v775 = v1117;
      v776 = v1107;
      v777 = v1121;
      v778 = v1125;
LABEL_317:
      sub_10003E038(v771, v772, v773, v774, v775, v776, v777, v778, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, *(&v1023 + 1), v1024, v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1035, v1036, v1037, v1038);
      sub_1000B0E64();

      goto LABEL_348;
    default:
      v351 = *v350;
      sub_100024118();
      sub_10001B350(v352, v353, v354, v355);
      v356 = sub_100003BCC(&v1144);
      sub_10001B350(v356, v357, v358, v1184);
      v359 = sub_100003BCC(v1150);
      sub_10001B350(v359, v360, v361, v1187);
      sub_10001BFD0();
      v1180 = v362;
      v363 = v1133;
      sub_10017CBB0();
      v364 = sub_100020EE4(v1092);
      v365 = v1177;
      sub_10001B350(v364, v366, v367, v1177);
      v369 = *(v363 + 8);
      v368 = *(v363 + 16);
      sub_10003778C();
      sub_100051BBC();
      sub_100003BDC(v333);
      if (v370)
      {
        v795 = v1176;
        (*(v1176 + 2))(v1106, v363 + *(v1186 + 7), v365);
        v371 = sub_1000131C4();
        v373 = sub_100024D10(v371, v372, v365);

        v796 = v1189;
        v797 = v1185;
        if (v373 != 1)
        {
          sub_1000180EC(v1102[1], &qword_100CB1AA8);
        }
      }

      else
      {
        v795 = v1176;
        (*(v1176 + 4))(v1106, v333, v365);

        v796 = v1189;
        v797 = v1185;
      }

      v798 = v1186;
      v799 = *(v1133 + *(v1186 + 8));
      sub_1000DFE80(v1133, type metadata accessor for NotificationsState);
      v800 = v1135;
      *v1135 = v351;
      v801 = v800;
      *(v800 + 1) = v369;
      *(v800 + 2) = v368;
      v795[4](&v800[*(v798 + 28)], v1106, v365);
      *(v801 + *(v798 + 32)) = v799;
      sub_10000E7B0();
      sub_10001B350(v802, v803, v804, v798);
      sub_100003934();
      sub_10001B350(v805, v806, v807, v797);
      sub_100003934();
      sub_10001B350(v808, v809, v810, v796);
      v811 = sub_100003BCC(&v1171);
      sub_10001B350(v811, v812, v813, v1183);
      v814 = sub_100020EE4(v1102);
      sub_10001B350(v814, v815, v816, v1178);
      sub_10000FDA8();
      v817 = v1182;
      sub_1000113EC();
      sub_10017CBB0();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v799);
      if (v370)
      {
        sub_1000180EC(v799, &qword_100CA65E8);
      }

      else
      {
        sub_1000177AC();
        sub_1000DFE80(v801, v818);
        sub_10001E9D0();
        sub_100072FD8();
      }

      v819 = v1188;
      v820 = v1053;
      v821 = v1027;
      v822 = v1019;
      sub_10001E9D0();
      sub_100072FD8();
      v823 = *(v817 + 16);
      LODWORD(v1181) = *(v817 + 24);
      sub_100051BBC();
      sub_10000554C(v822);
      v1188 = v823;
      if (v370)
      {
        sub_100069510();
        sub_10017CBB0();
        v824 = sub_100016298();
        sub_1000AF528(v824, v825);
        v826 = v1045;
        if (v819 != 1)
        {
          sub_1000180EC(v822, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000136F8();
        sub_100072FD8();

        v826 = v1045;
      }

      v827 = v1105;
      sub_100051BBC();
      sub_1000113D0(v827, 1);
      if (v370)
      {
        sub_10002014C();
        sub_10004E4C8();
        v828 = v1105;
        sub_10017CBB0();
        sub_100003A40(v828);
        v829 = v1062;
        if (!v370)
        {
          sub_1000180EC(v828, &qword_100CA6638);
        }
      }

      else
      {
        sub_10001689C();
        sub_100072FD8();
        v829 = v1062;
      }

      sub_1000453E0(v1150);
      sub_100051BBC();
      v830 = sub_1000201BC();
      sub_100013710(v830, v831);
      if (v370)
      {
        sub_100049758();
        sub_10017CBB0();
        sub_10000554C(v821);
        if (!v370)
        {
          sub_1000180EC(v821, &qword_100CA6630);
        }
      }

      else
      {
        sub_10007490C();
        sub_100072FD8();
      }

      v832 = v1084;
      sub_100051BBC();
      v833 = sub_100016298();
      sub_100013710(v833, v834);
      if (v370)
      {
        sub_10001BFD0();
        sub_10017CBB0();
        sub_10000554C(v832);
        if (!v370)
        {
          sub_1000180EC(v832, &qword_100CA6628);
        }
      }

      else
      {
        sub_100028308();
        sub_100072FD8();
      }

      sub_100051BBC();
      v835 = sub_1000182B8();
      sub_1000038B4(v835, v836, v1185);
      if (v370)
      {
        sub_100022A2C();
        sub_10017CBB0();
        sub_10000394C(v826);
        if (!v370)
        {
          sub_1000180EC(v826, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000195AC();
        sub_100072FD8();
      }

      sub_100051BBC();
      v837 = sub_1000162A4();
      sub_1000038B4(v837, v838, v1189);
      if (v370)
      {
        sub_100004048();
        sub_10017CBB0();
        sub_10000C814(v820);
        if (!v370)
        {
          sub_1000180EC(v820, &qword_100CA6618);
        }
      }

      else
      {
        sub_10001443C();
        sub_100072FD8();
      }

      sub_100087140();
      sub_10000394C(v829);
      if (v370)
      {
        sub_1000083A4();
        sub_10017CBB0();
        sub_10000394C(v829);
        if (!v370)
        {
          sub_1000180EC(v829, &qword_100CA6610);
        }
      }

      else
      {
        sub_100005988();
        sub_100072FD8();
      }

      sub_10001E9D0();
      v839 = v1179;
      sub_100072FD8();
      v520 = *(v817 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v840 = *(v817 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v841 = v817;
      v843 = *(v817 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v842 = *(v817 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v844 = *(v841 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v846 = *(v841 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v845 = *(v841 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v847 = *(v841 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1012) = v844;
      v848 = sub_10004221C();
      sub_10003E038(v848, v849, v1114, v1118, v1122, v1108, v1126, v1130, v1011, v839, v520, v840, v843, v842, v1012, v846, v845, v847, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1021, v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1029);
      sub_1000B0E64();

LABEL_348:

      return v520;
  }
}

uint64_t sub_10017CBB0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

unint64_t sub_10017CC08()
{
  result = qword_100CB73F0;
  if (!qword_100CB73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB73F0);
  }

  return result;
}

uint64_t sub_10017CC5C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for PredictedLocationsAuthorizationState;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CB73F8);
  a2[4] = sub_10017D494();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10017CD50(uint64_t a1)
{
  v4 = type metadata accessor for Date();
  sub_100003AE8(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1006DD864;

  return sub_10017CE70(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_10017CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Session.Kind();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for DeviceInfo();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v5[9] = *(v8 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  active = type metadata accessor for ActiveUserStatus.LaunchedApp();
  v5[12] = active;
  v5[13] = *(active - 8);
  v5[14] = swift_task_alloc();
  sub_10022C350(&qword_100CACE08);
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for TimeZone();
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = type metadata accessor for ActiveUserStatus();
  v5[19] = v11;
  v12 = *(v11 - 8);
  v5[20] = v12;
  v5[21] = *(v12 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v5[24] = v13;
  v14 = *(v13 - 8);
  v5[25] = v14;
  v5[26] = *(v14 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v5[30] = v15;
  v5[31] = *(v15 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_10017D200, 0, 0);
}

uint64_t sub_10017D200()
{
  v33 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[2];
  static Logger.activeUser.getter();
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  if (v8)
  {
    v31 = v0[30];
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v15 = 136315138;
    sub_1000667F8(&qword_100CA5720, &type metadata accessor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v9;
    v18 = v17;
    v28 = v7;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_100078694(v16, v18, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v28, "Handling launch at %s", v15, 0xCu);
    sub_100006F14(v30);
    sub_100003884();
    sub_100003884();

    v21 = *(v10 + 8);
    v21(v29, v31);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[37] = v19;
  v0[38] = v21;
  v22 = v0[3];
  v23 = v22[5];
  v24 = v22[6];
  sub_1000161C0(v22 + 2, v23);
  v25 = swift_task_alloc();
  v0[39] = v25;
  *v25 = v0;
  v25[1] = sub_1006DBC3C;
  v26 = v0[23];

  return dispatch thunk of ActiveUserServiceType.status.getter(v26, v23, v24);
}

unint64_t sub_10017D494()
{
  result = qword_100CB7400;
  if (!qword_100CB7400)
  {
    sub_10022E824(&qword_100CB73F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7400);
  }

  return result;
}

void sub_10017D4F8()
{
  v1 = *(type metadata accessor for Location.Identifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_10017D5DC(v0 + v2, v4, v5);
}

unint64_t sub_10017D588()
{
  result = qword_100CB7428;
  if (!qword_100CB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7428);
  }

  return result;
}

void sub_10017D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(type metadata accessor for WeatherIntent()) init];
  v7 = sub_1001B2814(a1, a2, a3);
  [v6 setLocation:v7];
  sub_10000C70C(0, &qword_100CC69B8);
  v8 = v6;
  v9 = sub_1001B7E58(v8, 0);
  v10 = String._bridgeToObjectiveC()();
  [v9 setIdentifier:v10];

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[4] = sub_100588E04;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10058851C;
  v13[3] = &unk_100C5ED68;
  v12 = _Block_copy(v13);

  [v9 donateInteractionWithCompletion:v12];
  _Block_release(v12);
}

uint64_t sub_10017D770()
{

  return swift_deallocObject();
}

uint64_t PredictedLocationsAuthorizationState.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB7410);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_10017DB04();
  v6 = sub_100042FB0(a1);
  return (*(v3 + 32))(v6, v5, v2);
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_10017DB04()
{
  result = qword_100CB7418;
  if (!qword_100CB7418)
  {
    sub_10022E824(&qword_100CB7410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7418);
  }

  return result;
}

uint64_t sub_10017DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100021DB0();
  sub_1000C8394();
  v13 = v12[21];
  sub_10006A838();
  sub_100050D50(v14, v13, v15);
  sub_100003B2C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = v12[21];
      v45 = sub_10022C350(&qword_100CB1AC0);
      sub_100018144(v44 + *(v45 + 48), &qword_100CB3AB0);
      goto LABEL_13;
    case 2u:
      v29 = v12[21];
      v30 = v12[16];
      v31 = v12[14];
      v32 = v12[15];
      v33 = *(sub_10022C350(&qword_100CB1AB8) + 48);
      v34 = sub_100003940();
      v35(v34);
      (*(v32 + 32))(v30, v29 + v33, v31);
      v36 = swift_task_alloc();
      v12[22] = v36;
      *v36 = v12;
      v36[1] = sub_1005C2A1C;
      sub_1000116B0(v12[19]);
      sub_1000208FC();

      return sub_1005C545C(v37, v38);
    case 3u:
      v48 = sub_1000BCEAC();
      v49(v48);
      sub_1005C5A30();
      goto LABEL_16;
    case 4u:
    case 5u:
    case 6u:
      sub_100071D58();
LABEL_13:
      sub_10004F998();
      goto LABEL_17;
    case 7u:
      v16 = v12[21];
      v18 = v12[15];
      v17 = v12[16];
      v20 = v12[13];
      v19 = v12[14];
      v21 = v12[11];
      v22 = v12[12];
      v23 = *(sub_10022C350(&qword_100CB1AB0) + 48);
      (*(v22 + 32))(v20, v16, v21);
      (*(v18 + 32))(v17, v16 + v23, v19);
      Location.identifier.getter();
      v24 = swift_task_alloc();
      v12[23] = v24;
      *v24 = v12;
      v24[1] = sub_1005C2BB0;
      sub_1000116B0(v12[10]);
      sub_1000208FC();

      return sub_1005C3C84(v25, v26);
    case 8u:
      v46 = sub_1000BCEAC();
      v47(v46);
      sub_1005C5AB8();
LABEL_16:
      v50 = sub_10001920C();
      v51(v50);
      goto LABEL_17;
    case 9u:
    case 0xAu:
LABEL_17:
      sub_10003C62C();

      sub_100003B14();
      sub_1000208FC();

      result = v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
      break;
    default:
      v40 = swift_task_alloc();
      v12[24] = v40;
      *v40 = v12;
      v40[1] = sub_1001981B4;
      sub_1000208FC();

      result = sub_100195D40(v41, v42);
      break;
  }

  return result;
}

uint64_t sub_10017DF2C(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  Debouncer.execute(_:)();
}

uint64_t sub_10017DFB4()
{

  return swift_deallocObject();
}

uint64_t sub_10017DFEC()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_1005C29C4, v5, v4);
}

uint64_t sub_10017E100(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationsAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017E178(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for NotificationSettingsData();
  v3 = *(v2 - 8);
  v22 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&qword_100CD1FD0);
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v24);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = *(v3 + 16);
  v12(v5, a1, v2, v9);
  sub_10006CF08(&qword_100CD1FD8, 255, &type metadata accessor for NotificationSettingsData);
  SessionData.init(key:data:)();
  SessionManager.tracker.getter();
  (v12)(v5, v21, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v5, v2);
  Tracker.transaction(block:)();

  v16 = v23;
  v15 = v24;
  (*(v6 + 16))(v23, v11, v24);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v16, v15);
  SessionManager.transaction(_:)();

  return (*(v6 + 8))(v11, v15);
}

uint64_t sub_10017E4B0()
{
  type metadata accessor for NotificationSettingsData();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10017E52C()
{
  sub_10022C350(&qword_100CD1FD0);
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10017E5B4()
{
  v1 = *(type metadata accessor for NWPath() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10017E640(v0 + v2, v3);
}

uint64_t sub_10017E640(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction();
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CEEFD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10022C350(&qword_100CB21F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for NWPath.Status();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  NWPath.status.getter();
  if ((*(v13 + 88))(v15, v12) == enum case for NWPath.Status.satisfied(_:))
  {
    v16 = NWPath.availableInterfaces.getter();
    sub_10017E9E4(v16, v8);

    v17 = type metadata accessor for NWInterface();
    if (sub_100024D10(v8, 1, v17) == 1)
    {
      sub_1000180EC(v8, qword_100CEEFD8);
      v18 = 1;
    }

    else
    {
      NWInterface.type.getter();
      (*(*(v17 - 8) + 8))(v8, v17);
      v18 = 0;
    }

    v21 = type metadata accessor for NWInterface.InterfaceType();
    sub_10001B350(v11, v18, 1, v21);
    v22 = sub_10017E9FC(v11);
    v23 = *(a2 + 16);
    *v5 = v22;
    v5[1] = 0;
    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_10004F034(v5, &v24, v23);
    sub_1000180EC(&v24, &unk_100CD81B0);
    return sub_1000547B8(v5);
  }

  else
  {
    v19 = *(a2 + 16);
    *v5 = 4;
    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_10004F034(v5, &v24, v19);
    sub_1000180EC(&v24, &unk_100CD81B0);
    sub_1000547B8(v5);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10017E9FC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB21F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_10017F308(a1, &v14 - v6);
  v8 = type metadata accessor for NWInterface.InterfaceType();
  if (sub_100024D10(v7, 1, v8) != 1)
  {
    sub_10017F308(v7, v4);
    v10 = *(v8 - 8);
    v11 = (*(v10 + 88))(v4, v8);
    if (v11 == enum case for NWInterface.InterfaceType.other(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for NWInterface.InterfaceType.wifi(_:))
    {
      v9 = 1;
      goto LABEL_9;
    }

    if (v11 == enum case for NWInterface.InterfaceType.cellular(_:))
    {
      v9 = 0;
      goto LABEL_9;
    }

    if (v11 == enum case for NWInterface.InterfaceType.wiredEthernet(_:) || v11 == enum case for NWInterface.InterfaceType.loopback(_:))
    {
LABEL_4:
      v9 = 2;
      goto LABEL_9;
    }

    (*(v10 + 8))(v4, v8);
  }

  v9 = 3;
LABEL_9:
  sub_10017F534(v7);
  sub_10017F534(a1);
  return v9;
}

void sub_10017EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v51 = a8;
  v53 = a7;
  v46 = a2;
  v47 = a3;
  HIDWORD(v45) = a10;
  v49 = a9;
  v50 = a5;
  v60 = type metadata accessor for Location();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v60);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10022C350(&qword_100CA37B0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v42 - v18);
  v20 = a6;
  v21 = Location.id.getter();
  v48 = a4;
  sub_1000864C0(v21, v22, a4);

  v23 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v19, 1, v23) != 1)
  {
    v43 = a6;
    v44 = updated;
    v32 = v60;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_10022C350(&qword_100CA75D8);
        sub_100087544();
        sub_100087544();
        goto LABEL_7;
      case 2u:
        v33 = v32;
        v34 = *v19;
        v35 = v19[1];
        sub_10031EF8C(v19[2], v19[3]);
        *v16 = v34;
        v16[1] = v35;
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        sub_100040690();
        v36 = static OS_dispatch_queue.main.getter();
        v37 = v43;
        (*(v12 + 16))(&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v33);
        v38 = (*(v12 + 80) + 24) & ~*(v12 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v51;
        (*(v12 + 32))(v39 + v38, &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
        v40 = swift_allocObject();
        *(v40 + 16) = sub_100195D24;
        *(v40 + 24) = v39;
        v58 = sub_1003AAE20;
        v59 = v40;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v56 = sub_100195C7C;
        v57 = &unk_100C741C8;
        v41 = _Block_copy(&aBlock);

        dispatch_sync(v36, v41);

        _Block_release(v41);
        LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

        if (v36)
        {
          goto LABEL_13;
        }

        sub_100079E4C(v37, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        goto LABEL_4;
      case 3u:
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        return;
      default:
LABEL_7:
        sub_100087544();
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v16);
        sub_100087544();
        sub_100079E4C(v43, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        return;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v16);
  sub_100087544();
  sub_100040690();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = v20;
  v26 = v20;
  v27 = v60;
  (*(v12 + 16))(&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v60);
  v28 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  (*(v12 + 32))(v29 + v28, &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100195D24;
  *(v30 + 24) = v29;
  v58 = sub_100190294;
  v59 = v30;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_100195C7C;
  v57 = &unk_100C74150;
  v31 = _Block_copy(&aBlock);

  dispatch_sync(v24, v31);

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    JUMPOUT(0x10017F2E4);
  }

  sub_100079E4C(v25, v46, v47, v48, v50, v49, BYTE4(v45) & 1, 0, 0, 0, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
LABEL_4:
}

uint64_t sub_10017F308(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB21F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017F378(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_10022C350(&qword_100CC32A0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for NotificationSubscription.Location();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for NotificationSubscription();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for NotificationSubscription.Kind();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10017F59C, 0, 0);
}

uint64_t sub_10017F534(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB21F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017F59C()
{
  sub_100013494();
  sub_1000437A0(v2[7]);
  static NotificationSubscription.Kind.all.getter();
  v3 = swift_task_alloc();
  v2[19] = v3;
  *v3 = v2;
  v3[1] = sub_100181314;
  v4 = sub_1000116B0(v2[18]);

  return dispatch thunk of NotificationSubscriptionManagerType.subscriptions(of:)(v4, v0, v1);
}

uint64_t sub_10017F658(uint64_t a1, uint64_t a2, int a3)
{
  v385 = a3;
  v421 = a2;
  v396 = a3;
  v420 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v412 = v4;
  sub_10000386C();
  __chkstk_darwin(v5);
  sub_10000E70C();
  sub_100003990(v6);
  v418 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  v411 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v410 = v10;
  sub_1000038CC();
  v417 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_100003848();
  v409 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v408 = v14;
  sub_1000038CC();
  v414 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003848();
  v407 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v406 = v18;
  sub_1000038CC();
  v413 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  v405 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v404 = v22;
  sub_1000038CC();
  v419 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v397 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  v415 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA65E8);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  v39 = sub_10022C350(&qword_100CA6610);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA6618);
  v46 = sub_100003810(v45);
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
  sub_10000E70C();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CA6620);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CA6628);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003990(v62);
  v63 = sub_10022C350(&qword_100CA6630);
  v64 = sub_100003810(v63);
  __chkstk_darwin(v64);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_10000E70C();
  sub_100003990(v68);
  v69 = type metadata accessor for Locale();
  v416 = *(v69 - 8);
  __chkstk_darwin(v69);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_10000E70C();
  sub_100003990(v71);
  v72 = sub_10022C350(&qword_100CAA9F0);
  v73 = sub_100003810(v72);
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  v75 = __chkstk_darwin(v74);
  v77 = &v363 - v76;
  v78 = __chkstk_darwin(v75);
  v80 = &v363 - v79;
  __chkstk_darwin(v78);
  v82 = &v363 - v81;
  v83 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v84);
  sub_100003848();
  sub_100003908();
  v86 = __chkstk_darwin(v85);
  v88 = &v363 - v87;
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  v91 = &v363 - v90;
  v92 = sub_10022C350(&qword_100CA6638);
  v93 = sub_100003810(v92);
  __chkstk_darwin(v93);
  sub_100003848();
  sub_100003908();
  v95 = __chkstk_darwin(v94);
  v97 = &v363 - v96;
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  v100 = &v363 - v99;
  v101 = sub_10022C350(&qword_100CA6640);
  v102 = sub_100003810(v101);
  v103 = __chkstk_darwin(v102);
  v104 = __chkstk_darwin(v103);
  v105 = __chkstk_darwin(v104);
  __chkstk_darwin(v105);
  v382 = v69;
  if ((v385 & 0x100) != 0)
  {
    v410 = v107;
    v408 = v109;
    sub_100003934();
    sub_10001B350(v120, v121, v122, v419);
    v123 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v124 = v421;
    swift_beginAccess();
    sub_100010C0C();
    v375 = v123;
    sub_100181780(v124 + v123, v88, v125);
    sub_100003934();
    sub_10001B350(v126, v127, v128, v69);
    LODWORD(v406) = *v88;
    LODWORD(v404) = v88[1];
    LODWORD(v402) = v88[2];
    LODWORD(v400) = v88[3];
    v129 = v363;
    sub_1002AB08C(v77, v363, &qword_100CAA9F0);
    sub_100003BFC(v129);
    if (v119)
    {
      v182 = v416;
      (*(v416 + 16))(v384, &v88[v83[8]], v69);
      sub_100003BFC(v129);
      if (!v119)
      {
        sub_1000180EC(v129, &qword_100CAA9F0);
      }
    }

    else
    {
      v182 = v416;
      (*(v416 + 32))(v384, v129, v69);
    }

    v183 = &v88[v83[9]];
    LODWORD(v416) = v88[v83[10]];
    v184 = v83[12];
    LODWORD(v394) = v88[v83[11]];
    LODWORD(v398) = v88[v184];
    v185 = v83[14];
    LODWORD(v390) = v88[v83[13]];
    v392 = *&v88[v185];
    v186 = v83[16];
    LODWORD(v386) = v88[v83[15]];
    LODWORD(v388) = v88[v186];
    v187 = v183[1];
    v381 = *v183;
    v377 = v187;
    v188 = v83[19];
    v189 = &v88[v83[18]];
    v191 = v189[1];
    v379 = *v189;
    v190 = v379;
    v193 = v189[2];
    v192 = v189[3];
    v194 = v189[4];
    v383 = v189[5];
    v385 = v88[v188];
    v195 = v383;

    v196 = v190;
    v197 = v191;
    v198 = v193;
    v199 = v192;
    v200 = v194;
    sub_100037DC8();
    sub_1000D705C(v88, v201);
    *v97 = v406;
    v97[1] = v404;
    v97[2] = v402;
    v97[3] = v400;
    (*(v182 + 32))(&v97[v83[8]], v384, v382);
    v202 = &v97[v83[9]];
    v203 = v377;
    *v202 = v381;
    *(v202 + 1) = v203;
    v97[v83[10]] = v416;
    sub_10003A3C4(v83[11]);
    sub_10003A3C4(v83[12]);
    sub_10003A3C4(v83[13]);
    *&v97[v83[14]] = v392;
    sub_10003A3C4(v83[15]);
    sub_10003A3C4(v83[16]);
    v97[v83[17]] = v396 & 1;
    v204 = &v97[v83[18]];
    *v204 = v379;
    *(v204 + 1) = v191;
    *(v204 + 2) = v193;
    *(v204 + 3) = v192;
    v205 = v383;
    *(v204 + 4) = v194;
    *(v204 + 5) = v205;
    sub_10003A3C4(v83[19]);
    sub_10001B350(v97, 0, 1, v83);
    v206 = sub_100003BCC(&v419);
    v207 = v413;
    sub_10001B350(v206, v208, v209, v413);
    v210 = sub_100003BCC(&v421);
    v211 = v414;
    sub_10001B350(v210, v212, v213, v414);
    v214 = sub_100003BCC(v423);
    sub_10001B350(v214, v215, v216, v417);
    v217 = sub_100003BCC(&v425);
    sub_10001B350(v217, v218, v219, v418);
    v220 = sub_100003BCC(&v427);
    sub_10001B350(v220, v221, v222, v420);
    v223 = v367;
    sub_100003934();
    v224 = v397;
    sub_10001B350(v225, v226, v227, v397);
    v228 = sub_100016F98(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v229 = v373;
    sub_100181780(v228, v373, v230);
    v231 = v223;
    v232 = v370;
    sub_1002AB08C(v231, v370, &qword_100CA65E8);
    v233 = sub_1000131C4();
    sub_1000038B4(v233, v234, v224);
    if (v119)
    {
      sub_1000180EC(v232, &qword_100CA65E8);
    }

    else
    {
      sub_100020BD4();
      sub_1000D705C(v229, v245);
      sub_100005518();
      sub_100073030(v232, v229, v246);
    }

    v247 = v419;
    sub_100005518();
    sub_100073030(v229, v248, v249);
    v250 = *(v193 + 16);
    LODWORD(v416) = *(v193 + 24);
    v251 = v410;
    sub_1002AB08C(v408, v410, &qword_100CA6640);
    sub_1000038B4(v251, 1, v247);
    v252 = v365;
    if (v119)
    {
      v253 = sub_10004EB38(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_100181780(v253, v403, v254);
      v255 = sub_100024D10(v251, 1, v247);

      v119 = v255 == 1;
      v267 = v412;
      if (!v119)
      {
        sub_1000180EC(v251, &qword_100CA6640);
      }
    }

    else
    {
      v265 = sub_100024AB8();
      sub_100073030(v265, v403, v266);

      v267 = v412;
    }

    sub_1002AB08C(v97, v252, &qword_100CA6638);
    v268 = sub_1000131C4();
    sub_1000038B4(v268, v269, v83);
    v419 = v250;
    if (v119)
    {
      sub_100010C0C();
      sub_100181780(v193 + v375, v393, v270);
      v271 = sub_1000131C4();
      sub_1000038B4(v271, v272, v83);
      v285 = v380;
      v286 = v378;
      if (!v119)
      {
        sub_1000180EC(v252, &qword_100CA6638);
      }
    }

    else
    {
      v283 = sub_10003C8B4();
      sub_100073030(v283, v393, v284);
      v285 = v380;
      v286 = v378;
    }

    v287 = v371;
    sub_1002AB08C(v387, v371, &qword_100CA6630);
    v288 = sub_100007FC4();
    sub_1000038B4(v288, v289, v207);
    v290 = v417;
    if (v119)
    {
      v291 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_100181780(v291, v405, v292);
      v293 = sub_100007FC4();
      sub_1000038B4(v293, v294, v207);
      v305 = v420;
      if (!v119)
      {
        sub_1000180EC(v287, &qword_100CA6630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v287, v405, v304);
      v305 = v420;
    }

    v306 = v374;
    sub_1002AB08C(v389, v374, &qword_100CA6628);
    sub_1000038B4(v306, 1, v211);
    if (v119)
    {
      v307 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_100181780(v307, v407, v308);
      sub_1000038B4(v306, 1, v211);
      if (!v119)
      {
        sub_1000180EC(v306, &qword_100CA6628);
      }
    }

    else
    {
      sub_100028144();
      sub_100073030(v306, v407, v313);
    }

    v314 = v376;
    sub_1002AB08C(v391, v376, &qword_100CA6620);
    sub_1000038B4(v314, 1, v290);
    if (v119)
    {
      v315 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100181780(v315, v409, v316);
      sub_1000038B4(v314, 1, v290);
      if (!v119)
      {
        sub_1000180EC(v314, &qword_100CA6620);
      }
    }

    else
    {
      v322 = sub_10004EB54();
      sub_100073030(v322, v409, v323);
    }

    sub_1002AB08C(v395, v286, &qword_100CA6618);
    sub_100003BFC(v286);
    if (v119)
    {
      v324 = sub_100013CE4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_100181780(v324, v411, v325);
      sub_100003BFC(v286);
      if (!v119)
      {
        sub_1000180EC(v286, &qword_100CA6618);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v286, v411, v329);
    }

    sub_1002AB08C(v399, v285, &qword_100CA6610);
    v330 = sub_10000C7F0();
    sub_1000038B4(v330, v331, v305);
    if (v119)
    {
      v332 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_100181780(v332, v267, v333);
      v334 = sub_10000C7F0();
      sub_1000038B4(v334, v335, v305);
      if (!v119)
      {
        sub_1000180EC(v285, &qword_100CA6610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v285, v267, v349);
    }

    sub_100005518();
    v350 = v415;
    sub_100073030(v401, v415, v351);
    v353 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v352 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v354 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v355 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v356 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v357 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v358 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v359 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v362) = v356;
    sub_10003E038(v419, v416, v403, v393, v405, v407, v409, v411, v412, v350, v353, v352, v354, v355, v362, v357, v358, v359, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
  }

  else
  {
    v411 = &v363 - v106;
    v412 = v108;
    sub_100003934();
    sub_10001B350(v110, v111, v112, v419);
    v113 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    v114 = v421;
    swift_beginAccess();
    sub_100010C0C();
    v378 = v113;
    sub_100181780(v114 + v113, v91, v115);
    sub_100003934();
    sub_10001B350(v116, v117, v118, v69);
    LODWORD(v409) = *v91;
    LODWORD(v407) = v91[1];
    LODWORD(v405) = v91[2];
    sub_1002AB08C(v82, v80, &qword_100CAA9F0);
    sub_100003BFC(v80);
    if (v119)
    {
      (*(v416 + 16))(v383, &v91[v83[8]], v69);
      sub_100003BFC(v80);
      if (!v119)
      {
        sub_1000180EC(v80, &qword_100CAA9F0);
      }
    }

    else
    {
      (*(v416 + 32))(v383, v80, v69);
    }

    v130 = v83[10];
    v131 = &v91[v83[9]];
    v132 = v131[1];
    v401 = *v131;
    LODWORD(v403) = v91[v130];
    v133 = v83[12];
    LODWORD(v395) = v91[v83[11]];
    LODWORD(v399) = v91[v133];
    v134 = v83[14];
    LODWORD(v391) = v91[v83[13]];
    v393 = *&v91[v134];
    v135 = v83[16];
    LODWORD(v387) = v91[v83[15]];
    LODWORD(v389) = v91[v135];
    v136 = v83[18];
    LODWORD(v384) = v91[v83[17]];
    v138 = *&v91[v136 + 8];
    v380 = *&v91[v136];
    v137 = v380;
    v140 = *&v91[v136 + 16];
    v139 = *&v91[v136 + 24];
    v142 = *&v91[v136 + 32];
    v141 = *&v91[v136 + 40];
    v385 = v91[v83[19]];
    v143 = v141;

    v144 = v137;
    v145 = v138;
    v146 = v140;
    v147 = v139;
    v148 = v142;
    sub_100037DC8();
    sub_1000D705C(v91, v149);
    *v100 = v409;
    v100[1] = v407;
    v100[2] = v405;
    v100[3] = v396;
    (*(v416 + 32))(&v100[v83[8]], v383, v382);
    v150 = &v100[v83[9]];
    *v150 = v401;
    *(v150 + 1) = v132;
    sub_100028B04(v83[10]);
    sub_100028B04(v83[11]);
    sub_100028B04(v83[12]);
    sub_100028B04(v83[13]);
    *&v100[v83[14]] = v393;
    sub_100028B04(v83[15]);
    sub_100028B04(v83[16]);
    sub_100028B04(v83[17]);
    v151 = &v100[v83[18]];
    *v151 = v380;
    *(v151 + 1) = v138;
    *(v151 + 2) = v140;
    *(v151 + 3) = v139;
    *(v151 + 4) = v142;
    *(v151 + 5) = v141;
    sub_100028B04(v83[19]);
    sub_10001B350(v100, 0, 1, v83);
    v152 = sub_100003BCC(&v418);
    v153 = v413;
    sub_10001B350(v152, v154, v155, v413);
    v156 = sub_100003BCC(&v420);
    v157 = v414;
    sub_10001B350(v156, v158, v159, v414);
    v160 = sub_100003BCC(v422);
    v161 = v417;
    sub_10001B350(v160, v162, v163, v417);
    v164 = sub_100003BCC(&v424);
    sub_10001B350(v164, v165, v166, v418);
    v167 = sub_100003BCC(&v426);
    sub_10001B350(v167, v168, v169, v420);
    v170 = v366;
    sub_100003934();
    v171 = v397;
    sub_10001B350(v172, v173, v174, v397);
    v175 = sub_100016F98(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v176 = v372;
    sub_100181780(v175, v372, v177);
    v178 = v170;
    v179 = v368;
    sub_1002AB08C(v178, v368, &qword_100CA65E8);
    v180 = sub_1000131C4();
    sub_1000038B4(v180, v181, v171);
    if (v119)
    {
      sub_1000180EC(v179, &qword_100CA65E8);
    }

    else
    {
      sub_100020BD4();
      sub_1000D705C(v176, v235);
      sub_100005518();
      sub_100073030(v179, v176, v236);
    }

    v237 = v419;
    sub_100005518();
    sub_100073030(v176, v400, v238);
    v239 = *(v138 + 16);
    LODWORD(v416) = *(v138 + 24);
    v240 = v412;
    sub_1002AB08C(v411, v412, &qword_100CA6640);
    sub_1000038B4(v240, 1, v237);
    v241 = v364;
    v419 = v239;
    if (v119)
    {
      v242 = sub_10004EB38(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_100181780(v242, v402, v243);
      v244 = sub_100024D10(v240, 1, v237);

      v119 = v244 == 1;
      v258 = v381;
      v259 = v369;
      if (!v119)
      {
        sub_1000180EC(v240, &qword_100CA6640);
      }
    }

    else
    {
      v256 = sub_100024AB8();
      sub_100073030(v256, v402, v257);

      v258 = v381;
      v259 = v369;
    }

    sub_1002AB08C(v100, v241, &qword_100CA6638);
    v260 = sub_1000131C4();
    sub_1000038B4(v260, v261, v83);
    if (v119)
    {
      sub_100010C0C();
      sub_100181780(v138 + v378, v392, v262);
      v263 = sub_1000131C4();
      sub_1000038B4(v263, v264, v83);
      v275 = v379;
      v276 = v375;
      if (!v119)
      {
        sub_1000180EC(v241, &qword_100CA6638);
      }
    }

    else
    {
      v273 = sub_10003C8B4();
      sub_100073030(v273, v392, v274);
      v275 = v379;
      v276 = v375;
    }

    sub_1002AB08C(v386, v259, &qword_100CA6630);
    v277 = sub_10000C7F0();
    sub_1000038B4(v277, v278, v153);
    if (v119)
    {
      v279 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_100181780(v279, v404, v280);
      v281 = sub_10000C7F0();
      sub_1000038B4(v281, v282, v153);
      v296 = v418;
      if (!v119)
      {
        sub_1000180EC(v259, &qword_100CA6630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v259, v404, v295);
      v296 = v418;
    }

    v297 = *(&v373 + 1);
    sub_1002AB08C(v388, *(&v373 + 1), &qword_100CA6628);
    v298 = sub_100007FC4();
    sub_1000038B4(v298, v299, v157);
    if (v119)
    {
      v300 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_100181780(v300, v406, v301);
      v302 = sub_100007FC4();
      sub_1000038B4(v302, v303, v157);
      v310 = v420;
      if (!v119)
      {
        sub_1000180EC(v297, &qword_100CA6628);
      }
    }

    else
    {
      sub_100028144();
      sub_100073030(v297, v406, v309);
      v310 = v420;
    }

    sub_1002AB08C(v390, v276, &qword_100CA6620);
    sub_1000038B4(v276, 1, v161);
    if (v119)
    {
      v311 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_100181780(v311, v408, v312);
      sub_1000038B4(v276, 1, v161);
      if (!v119)
      {
        sub_1000180EC(v276, &qword_100CA6620);
      }
    }

    else
    {
      v317 = sub_10004EB54();
      sub_100073030(v317, v408, v318);
    }

    v319 = v377;
    sub_1002AB08C(v394, v377, &qword_100CA6618);
    sub_1000038B4(v319, 1, v296);
    if (v119)
    {
      v320 = sub_100013CE4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_100181780(v320, v410, v321);
      sub_1000038B4(v319, 1, v296);
      if (!v119)
      {
        sub_1000180EC(v319, &qword_100CA6618);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v319, v410, v326);
    }

    sub_1002AB08C(v398, v275, &qword_100CA6610);
    sub_1000038B4(v275, 1, v310);
    if (v119)
    {
      v327 = sub_100017E74(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_100181780(v327, v258, v328);
      sub_1000038B4(v275, 1, v310);
      v337 = v258;
      if (!v119)
      {
        sub_1000180EC(v275, &qword_100CA6610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v275, v258, v336);
      v337 = v258;
    }

    sub_100005518();
    v338 = v415;
    sub_100073030(v400, v415, v339);
    v341 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v340 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v342 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v343 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v344 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v345 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v346 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v347 = *(v138 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v362) = v344;
    sub_10003E038(v419, v416, v402, v392, v404, v406, v408, v410, v337, v338, v341, v340, v342, v343, v362, v345, v346, v347, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379);
  }

  v360 = v348;

  return v360;
}

uint64_t sub_100181314()
{
  sub_100013494();
  v2 = *v1;
  sub_10000CCF8();
  *v4 = v3;
  v5 = *v1;
  sub_10000CCF8();
  *v6 = v5;
  *(v8 + 160) = v7;
  *(v8 + 168) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  sub_10000E700();

  return _swift_task_switch(v9, v10, v11);
}

void sub_100181474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10009262C();
  v20 = 0;
  v21 = v19[21];
  sub_1000C9014();
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19[22] = v22;
    if (v18 == v20)
    {
      break;
    }

    if (v20 >= *(a14 + 16))
    {
      __break(1u);
      return;
    }

    v23 = v19[15];
    v24 = v19[8];
    v25 = v19[6];
    sub_1000523AC();
    v26(v23);
    sub_1005C6A1C(v23, v25, v24);
    v27 = v21;
    v28 = v19[15];
    v29 = v19[13];
    if (v27)
    {

      v43 = sub_1000439EC();
      v44(v43);
      sub_1000865A0();

      return;
    }

    v31 = v19[8];
    v30 = v19[9];
    v32 = sub_1000439EC();
    v33(v32);
    if (sub_1000D3BF0(v31) == 1)
    {
      sub_100018144(v19[8], &qword_100CC32A0);
      v21 = 0;
      ++v20;
    }

    else
    {
      v34 = sub_1000C8A08();
      v30(v34);
      (v30)(a10, v28, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100025278();
        sub_100184910();
        v22 = v38;
      }

      v35 = v22[2];
      if (v35 >= v22[3] >> 1)
      {
        sub_1000B0C98();
        sub_100184910();
        v22 = v39;
      }

      ++v20;
      v22[2] = v35 + 1;
      sub_10002426C();
      v30(v36 + v37 * v35);
      v21 = 0;
    }
  }

  if (v22[2])
  {
    v40 = swift_task_alloc();
    v19[23] = v40;
    *v40 = v19;
    sub_1005C96FC(v40);
    sub_1000865A0();

    sub_100184BFC(v41);
  }

  else
  {

    sub_1000132AC();

    sub_100003B14();
    sub_1000865A0();

    v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_100181720(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100181780(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001817E0(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSettingsData();
  sub_100003810(v3);
  return sub_100181958(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 157, &AccessTracker.push<A>(data:traits:file:line:));
}

uint64_t sub_100181858()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100181958(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10022C350(&qword_100CAE2B0);
  v7 = type metadata accessor for DataEventTrait();
  sub_1000037C4();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2C3F0;
  (*(v9 + 104))(v11 + v10, enum case for DataEventTrait.unique(_:), v7);
  v12 = type metadata accessor for NotificationSettingsData();
  v13 = sub_10006CF08(&qword_100CD1FD8, 255, &type metadata accessor for NotificationSettingsData);
  a4(a2, v11, 0xD000000000000064, 0x8000000100ADB6B0, a3, v12, v13);
}

uint64_t sub_100181AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000B025C();
  sub_1000C8EB0();
  sub_1000045E0();
  sub_1000C82A0();

  sub_100003B14();
  sub_1000D4258();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100181B9C(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CD1FD0);
  sub_100003810(v3);
  return sub_100181958(a1, v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 161, &AccessSessionManager.push<A>(_:traits:file:line:));
}

uint64_t sub_100181C20()
{
  v1 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v1 - 8);
  v3 = &v131 - v2;
  v4 = type metadata accessor for ContentStatusBanner();
  v145 = *(v4 - 8);
  __chkstk_darwin(v4);
  v150 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = &v131 - v7;
  v143 = type metadata accessor for CurrentWeather();
  v8 = *(v143 - 8);
  __chkstk_darwin(v143);
  v142 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Date();
  v10 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v12 - 8);
  v140 = &v131 - v13;
  v14 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v14);
  v132 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v131 - v17;
  v141 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v141);
  v163 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for LocationWeatherDataState(0);
  v153 = *(v158 - 8);
  __chkstk_darwin(v158);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v152 = &v131 - v22;
  v23 = sub_10022C350(&qword_100CAA800);
  __chkstk_darwin(v23 - 8);
  v25 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v162 = (&v131 - v27);
  v28 = type metadata accessor for BannerStateComputer();
  v53 = *(v0 + v28[7]) == 1;
  v160 = v0;
  v146 = v4;
  if (!v53)
  {
    v101 = v160;
    v162 = v28[6];
    v102 = *(v162 + v160);

    sub_100182EB4(v103, v101);
    v106 = *(v104 + 16);
    if (v106)
    {
      v159 = v104;
      v107 = (v104 + 40);
      *&v105 = 141558275;
      v161 = v105;
      v164 = v3;
      do
      {
        v108 = *(v107 - 1);
        v109 = *v107;
        sub_10010ABD0(v108, *v107);
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_10000703C(v110, qword_100D90D08);
        sub_10010ABD0(v108, v109);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.info.getter();
        sub_1000B84FC(v108, v109);
        if (os_log_type_enabled(v111, v112))
        {
          v163 = v102;
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v167 = v114;
          *v113 = v161;
          *(v113 + 4) = 1752392040;
          *(v113 + 12) = 2081;
          if (v109)
          {
            if (v109 == 1)
            {
              v115 = 0xE300000000000000;
              v116 = 7364941;
            }

            else
            {
              v165 = 0x6E6F697461636F4CLL;
              v166 = 0xEA00000000002820;
              sub_10010ABD0(v108, v109);
              v117._countAndFlagsBits = v108;
              v117._object = v109;
              String.append(_:)(v117);
              v118._countAndFlagsBits = 41;
              v118._object = 0xE100000000000000;
              String.append(_:)(v118);
              sub_1000B84FC(v108, v109);
              v116 = v165;
              v115 = v166;
            }
          }

          else
          {
            v115 = 0xE400000000000000;
            v116 = 1953720652;
          }

          v119 = sub_100078694(v116, v115, &v167);

          *(v113 + 14) = v119;
          _os_log_impl(&_mh_execute_header, v111, v112, "Removing offline banner. ID=%{private,mask.hash}s", v113, 0x16u);
          sub_100006F14(v114);

          v4 = v146;
          v102 = v163;
        }

        else
        {
        }

        v120 = sub_1000B8384(v108, v109);
        v122 = v121;
        sub_1000B84FC(v108, v109);
        if (v122)
        {
          v123 = v160;
          v124 = v162;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165 = *(v124 + v123);
          v126 = *(v165 + 24);
          sub_10022C350(&qword_100CA3A30);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v126);
          v127 = v165;
          sub_1000B84FC(*(*(v165 + 48) + 16 * v120), *(*(v165 + 48) + 16 * v120 + 8));
          v128 = v164;
          sub_100073140();
          sub_100072E1C();
          _NativeDictionary._delete(at:)();
          v129 = 0;
          *(v124 + v123) = v127;
          v102 = v127;
        }

        else
        {
          v129 = 1;
          v128 = v164;
        }

        v107 += 2;
        sub_10001B350(v128, v129, 1, v4);
        sub_1000180EC(v128, &qword_100CA5010);
        --v106;
      }

      while (v106);
    }
  }

  v157 = v25;
  v139 = v28;
  v144 = *(v160 + v28[5]);
  v29 = *(v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 64);
  v134 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v33 = (v30 + 63) >> 6;
  v138 = (v8 + 8);
  v137 = (v10 + 16);
  v136 = (v10 + 8);
  v34 = v29 + 64;
  v151 = v29;

  v135 = v14;
  v35 = 0;
  v36 = &qword_100CAA808;
  *&v37 = 141558275;
  v133 = v37;
  *&v161 = v20;
  v38 = v162;
  v156 = v34;
  v147 = v33;
  while (v32)
  {
    v39 = v35;
LABEL_12:
    v40 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v41 = (*(v151 + 48) + 16 * (v40 | (v39 << 6)));
    v43 = *v41;
    v42 = v41[1];
    sub_100050FF0();
    v44 = sub_10022C350(v36);
    v45 = v36;
    v46 = v157;
    *v157 = v43;
    v46[1] = v42;
    sub_100073140();
    sub_10001B350(v46, 0, 1, v44);

    v20 = v161;
    v38 = v162;
    v33 = v147;
LABEL_13:
    sub_100051BBC();
    v47 = sub_10022C350(v45);
    if (sub_100024D10(v38, 1, v47) == 1)
    {
    }

    v36 = v45;
    v48 = *v38;
    v49 = v38[1];
    sub_100073140();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = sub_10022C350(&qword_100CA75D8);
      v51 = *(v50 + 48);
      v154 = *(v50 + 64);
      v155 = v51;
      sub_100073140();
      v53 = v48 == static Location.currentLocationID.getter() && v49 == v52;
      v164 = v48;
      if (v53)
      {
      }

      else
      {
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v54 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v55 = v140;
      sub_100095588();
      if (sub_100024D10(v55, 1, v135) == 1)
      {
        sub_1000180EC(v55, &unk_100CE49F0);
        v48 = v164;
        goto LABEL_31;
      }

      sub_100073140();
      v57 = v132;
      sub_100073140();
      v58 = swift_getEnumCaseMultiPayload() - 1;
      sub_100053318(v57, &type metadata accessor for CurrentLocation);
      v48 = v164;
      if (v58 >= 2)
      {
LABEL_31:
        v67 = v142;
        WeatherDataModel.currentWeather.getter();
        v68 = v148;
        CurrentWeather.date.getter();
        (*v138)(v67, v143);
        v69 = v144 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        if (*(v69 + *(type metadata accessor for EnvironmentState() + 68)))
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        v71 = *(v146 + 24);
        v72 = v159;
        v73 = v68;
        v74 = v149;
        (*v137)(v159 + v71, v73, v149);
        sub_10001B350(v72 + v71, 0, 1, v74);
        *v72 = v70;
        *(v72 + 8) = v48;
        *(v72 + 16) = v49;
        v75 = qword_100CA2790;
        swift_bridgeObjectRetain_n();
        if (v75 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_10000703C(v76, qword_100D90D08);

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v167 = v80;
          *v79 = v133;
          *(v79 + 4) = 1752392040;
          *(v79 + 12) = 2081;
          v81 = sub_100078694(v164, v49, &v167);

          *(v79 + 14) = v81;
          _os_log_impl(&_mh_execute_header, v77, v78, "Displaying offline banner. ID=%{private,mask.hash}s", v79, 0x16u);
          sub_100006F14(v80);
          v48 = v164;
        }

        else
        {
        }

        v82 = v139[6];
        sub_100050FF0();
        v83 = v160;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v167 = *(v83 + v82);
        v85 = v167;
        v86 = sub_1000B8384(v48, v49);
        v88 = *(v85 + 16);
        v89 = (v87 & 1) == 0;
        v90 = v88 + v89;
        if (__OFADD__(v88, v89))
        {
          goto LABEL_73;
        }

        v91 = v86;
        v92 = v87;
        sub_10022C350(&qword_100CA3A30);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v84, v90))
        {
          v93 = v164;
          v94 = sub_1000B8384(v164, v49);
          v36 = &qword_100CAA808;
          if ((v92 & 1) != (v95 & 1))
          {
            goto LABEL_75;
          }

          v91 = v94;
        }

        else
        {
          v36 = &qword_100CAA808;
          v93 = v164;
        }

        v96 = v167;
        if (v92)
        {
          sub_100236C3C(v150, *(v167 + 56) + *(v145 + 72) * v91);
        }

        else
        {
          *(v167 + 8 * (v91 >> 6) + 64) |= 1 << v91;
          v97 = (*(v96 + 48) + 16 * v91);
          *v97 = v93;
          v97[1] = v49;
          sub_100073140();
          v98 = *(v96 + 16);
          v99 = __OFADD__(v98, 1);
          v100 = v98 + 1;
          if (v99)
          {
            goto LABEL_74;
          }

          *(v96 + 16) = v100;
        }

        sub_100053318(v159, type metadata accessor for ContentStatusBanner);
        (*v136)(v148, v149);
        sub_100053318(v163, type metadata accessor for WeatherData);
        v20 = v161;
        *(v160 + v82) = v96;
        sub_100053318(&v20[v154], type metadata accessor for NewsDataModel);
        sub_100053318(&v20[v155], type metadata accessor for PreprocessedWeatherData);
        v38 = v162;
        v34 = v156;
      }

      else
      {
        if (qword_100CA2790 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_10000703C(v59, qword_100D90D08);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = v48;
          v65 = v63;
          v167 = v63;
          *v62 = v133;
          *(v62 + 4) = 1752392040;
          *(v62 + 12) = 2081;
          v66 = sub_100078694(v64, v49, &v167);

          *(v62 + 14) = v66;
          v36 = &qword_100CAA808;
          _os_log_impl(&_mh_execute_header, v60, v61, "Not displaying offline banner - location is stale or uncertain. ID=%{private,mask.hash}s", v62, 0x16u);
          sub_100006F14(v65);

          v20 = v161;
        }

        else
        {
        }

        sub_100053318(v163, type metadata accessor for WeatherData);
        v34 = v156;
        sub_100053318(&v20[v154], type metadata accessor for NewsDataModel);
        sub_100053318(&v20[v155], type metadata accessor for PreprocessedWeatherData);
        v38 = v162;
      }
    }

    else
    {

      sub_100053318(v20, type metadata accessor for LocationWeatherDataState);
      v34 = v156;
    }
  }

  while (1)
  {
    v39 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v56 = sub_10022C350(v36);
      v45 = v36;
      sub_10001B350(v157, 1, 1, v56);
      v32 = 0;
      goto LABEL_13;
    }

    v32 = *(v34 + 8 * v39);
    ++v35;
    if (v32)
    {
      v35 = v39;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100182EB4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v33 = _swiftEmptyArrayStorage;
  while (v12)
  {
LABEL_9:
    v15 = (*(v37 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = *v15;
    v16 = v15[1];
    if (*(*(v34 + *(type metadata accessor for BannerStateComputer() + 24)) + 16))
    {
      sub_10010ABD0(v17, v16);
      v35 = v17;
      v36 = v16;
      sub_1000B8384(v17, v16);
      if (v18)
      {
        v19 = type metadata accessor for ContentStatusBanner();
        sub_100050FF0();
        v20 = v5;
        v21 = 0;
      }

      else
      {
        v19 = type metadata accessor for ContentStatusBanner();
        v20 = v5;
        v21 = 1;
      }

      sub_10001B350(v20, v21, 1, v19);
      v17 = v35;
      v16 = v36;
    }

    else
    {
      v19 = type metadata accessor for ContentStatusBanner();
      sub_10001B350(v5, 1, 1, v19);
      sub_10010ABD0(v17, v16);
    }

    v12 &= v12 - 1;
    type metadata accessor for ContentStatusBanner();
    if (sub_100024D10(v5, 1, v19))
    {
      sub_1000180EC(v5, &qword_100CA5010);
      goto LABEL_18;
    }

    v22 = *v5;
    sub_1000180EC(v5, &qword_100CA5010);
    if (v22 == 1)
    {
      v23 = v17;
      v24 = v16;
      v25 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      v32 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006A8124(0, v25[2] + 1, 1);
        v25 = v38;
      }

      v28 = v25[2];
      v27 = v25[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_1006A8124((v27 > 1), v28 + 1, 1);
        v29 = v28 + 1;
        v25 = v38;
      }

      v25[2] = v29;
      v33 = v25;
      v30 = &v25[2 * v28];
      v30[4] = v23;
      v30[5] = v24;
      v5 = v32;
    }

    else
    {
LABEL_18:
      sub_1000B84FC(v17, v16);
    }
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return;
    }

    v12 = *(v8 + 8 * v14);
    ++v6;
    if (v12)
    {
      v6 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1001831D8()
{
  v1 = sub_10022C350(&qword_100CA5010);
  __chkstk_darwin(v1 - 8);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  v7 = type metadata accessor for LocationWeatherDataState(0);
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v60 - v11;
  v12 = sub_10022C350(&qword_100CAA800);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = type metadata accessor for BannerStateComputer();
  v19 = v18;
  if (*(v0 + *(v18 + 28)) != 1)
  {
    if (sub_100183848())
    {
      v43 = *(v0 + *(v19 + 20));
      v44 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      if ((*(v43 + v44 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) == 0x40)
      {
        v45 = type metadata accessor for ContentStatusBanner();
        v46 = *(v45 + 24);
        v47 = type metadata accessor for Date();
        sub_10001B350(&v3[v46], 1, 1, v47);
        *v3 = 0;
        *(v3 + 8) = xmmword_100A3BBB0;
        v48 = v3;
        v49 = 0;
        v50 = v45;
        goto LABEL_21;
      }
    }

LABEL_20:
    v50 = type metadata accessor for ContentStatusBanner();
    v48 = v3;
    v49 = 1;
LABEL_21:
    sub_10001B350(v48, v49, 1, v50);
LABEL_22:
    sub_1000B8080();
    return;
  }

  v20 = *(v0 + *(v18 + 20));
  v21 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  if ((*(v20 + v21 + *(type metadata accessor for ViewState(0) + 40) + 1) & 0xC0) != 0x40)
  {
    goto LABEL_20;
  }

  v62 = v6;
  v63 = v3;
  v64 = v19;
  v65 = v0;
  v61 = v20;
  v22 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v69 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v30 = 0;
  v31 = &qword_100CAA808;
  v67 = v17;
  v68 = v9;
  v66 = v14;
  if (v28)
  {
    while (1)
    {
      v32 = v30;
LABEL_11:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = (*(v69 + 48) + 16 * (v33 | (v32 << 6)));
      v36 = *v34;
      v35 = v34[1];
      sub_100050FF0();
      v37 = v31;
      v38 = sub_10022C350(v31);
      v39 = v66;
      *v66 = v36;
      *(v39 + 1) = v35;
      v14 = v39;
      sub_100073140();
      v40 = v38;
      v31 = v37;
      sub_10001B350(v14, 0, 1, v40);

      v17 = v67;
      v9 = v68;
LABEL_12:
      sub_100051BBC();
      v41 = sub_10022C350(v31);
      if (sub_100024D10(v17, 1, v41) == 1)
      {

        v51 = type metadata accessor for ContentStatusBanner();
        sub_10001B350(v63, 1, 1, v51);
        goto LABEL_22;
      }

      sub_100073140();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_100053318(v9, type metadata accessor for LocationWeatherDataState);
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v52 = sub_10022C350(&qword_100CA75D8);
    v53 = *(v52 + 48);
    sub_100053318(&v9[*(v52 + 64)], type metadata accessor for NewsDataModel);
    sub_100053318(&v9[v53], type metadata accessor for PreprocessedWeatherData);
    sub_100053318(v9, type metadata accessor for WeatherData);
    v54 = v61 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    if (*(v54 + *(type metadata accessor for EnvironmentState() + 68)))
    {
      v55 = 2;
    }

    else
    {
      v55 = 1;
    }

    v56 = type metadata accessor for ContentStatusBanner();
    v57 = *(v56 + 24);
    v58 = type metadata accessor for Date();
    v59 = v62;
    sub_10001B350(&v62[v57], 1, 1, v58);
    *v59 = v55;
    *(v59 + 8) = xmmword_100A3BBB0;
    sub_10001B350(v59, 0, 1, v56);
    sub_1000B8080();
  }

  else
  {
LABEL_7:
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v42 = sub_10022C350(v31);
        sub_10001B350(v14, 1, 1, v42);
        v28 = 0;
        goto LABEL_12;
      }

      v28 = *(v24 + 8 * v32);
      ++v30;
      if (v28)
      {
        v30 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100183848()
{
  v1 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v1 - 8);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v43);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LocationWeatherDataState(0);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v42 - v7;
  v8 = sub_10022C350(&qword_100CAA800);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = *(*(v0 + *(type metadata accessor for BannerStateComputer() + 20)) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v47 = v14;

  v21 = 0;
  v50 = v13;
  v51 = v10;
  if (!v18)
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v39 = sub_10022C350(&qword_100CAA808);
        sub_10001B350(v10, 1, 1, v39);
        v18 = 0;
        goto LABEL_10;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_9;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
    v22 = v21;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = (*(v47 + 48) + 16 * (v23 | (v22 << 6)));
    v26 = *v24;
    v25 = v24[1];
    sub_100050FF0();
    v27 = sub_10022C350(&qword_100CAA808);
    v28 = v51;
    *v51 = v26;
    *(v28 + 1) = v25;
    v10 = v28;
    sub_100073140();
    sub_10001B350(v10, 0, 1, v27);

    v13 = v50;
LABEL_10:
    sub_100051BBC();
    v29 = sub_10022C350(&qword_100CAA808);
    v30 = sub_100024D10(v13, 1, v29);
    if (v30 == 1)
    {

      return v30 == 1;
    }

    sub_100073140();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {

      v40 = type metadata accessor for LocationWeatherDataState;
      v41 = v5;
      goto LABEL_22;
    }

    result = sub_100053318(v5, type metadata accessor for LocationWeatherDataState);
LABEL_16:
    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v32 = sub_10022C350(&qword_100CA75D8);
  v48 = *(v32 + 48);
  v33 = *(v32 + 64);
  v34 = v42;
  sub_100073140();
  v35 = sub_10022C350(&qword_100CAC710);
  v36 = v5;
  v37 = v44;
  sub_10001B350(v44, 1, 1, v35);
  v38 = sub_100883384();
  sub_100053318(v37, type metadata accessor for WeatherData.CachingState);
  sub_100053318(v34, type metadata accessor for WeatherData);
  if ((v38 & 1) == 0)
  {
    sub_100053318(&v36[v33], type metadata accessor for NewsDataModel);
    result = sub_100053318(&v36[v48], type metadata accessor for PreprocessedWeatherData);
    v5 = v36;
    v13 = v50;
    v10 = v51;
    goto LABEL_16;
  }

  sub_100053318(&v36[v33], type metadata accessor for NewsDataModel);
  v40 = type metadata accessor for PreprocessedWeatherData;
  v41 = &v36[v48];
LABEL_22:
  sub_100053318(v41, v40);
  return v30 == 1;
}

uint64_t sub_100183E08(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for MainAction();
  __chkstk_darwin(v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (a3)
  {
    v10 = 3;
  }

  *v8 = v10;
  type metadata accessor for NotificationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_10004F034(v8, v12, v9);
  sub_1000E17D8(v12);
  return sub_1000547B8(v8);
}

uint64_t sub_100183F18()
{
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001BF30();
  type metadata accessor for Domain();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_1000037D8();
  sub_100019530();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD0);
  sub_100003B6C();
  result = sub_100005908();
  qword_100D8FC00 = result;
  return result;
}

unint64_t sub_10018408C()
{
  result = qword_100CB4780;
  if (!qword_100CB4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4780);
  }

  return result;
}

uint64_t sub_1001840E0()
{
  v1 = v0[30];
  sub_1000163F8();
  sub_100050D50(v2, v1, v3);
  sub_100003B2C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v0[13] + 8))(v0[30], v0[12]);
      goto LABEL_11;
    case 2u:
      v0[33] = *v0[30];

      v21 = swift_task_alloc();
      v0[34] = v21;
      *v21 = v0;
      sub_100071550(v21);
      sub_1000718DC();

      return sub_1005C4170(v22);
    case 3u:
LABEL_11:
      sub_1000045E0();

      sub_100003B14();
      sub_1000718DC();

      __asm { BRAA            X1, X16 }

      return result;
    case 4u:
      v8 = *v0[30];
      v9 = *(v0[3] + 56);
      v10 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v11 = type metadata accessor for LocationsState();
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *(*(v9 + v10 + *(v11 + 20)) + 16))
      {
        v12 = v0[28];
        sub_100049A00();
        sub_100050D50(v13, v12, v14);
        SavedLocation.identifier.getter();
        static NotificationSubscription.Kind.all.getter();
        v15 = swift_task_alloc();
        v0[32] = v15;
        *v15 = v0;
        v15[1] = sub_1005C22A8;
        sub_1000116B0(v0[25]);
        sub_1000718DC();

        return sub_1005C3C84(v16, v17);
      }

      __break(1u);
      JUMPOUT(0x1001848F0);
    case 5u:
      v24 = *v0[30];
      v25 = *(v0[3] + 64);
      v26 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v27 = type metadata accessor for LocationsState();
      v28 = *(v24 + 16);
      if (v28)
      {
        v29 = *(v25 + v26 + *(v27 + 40));
        v30 = v0[26];
        v31 = v0[13];
        v32 = v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v75 = (v31 + 32);
        v71 = v0[6];
        v33 = *(v30 + 72);
        v72 = (v31 + 8);
        v73 = (v31 + 16);
        v80 = (v0[17] + 32);

        v34 = _swiftEmptyArrayStorage;
        v76 = v29;
        v74 = v33;
        while (1)
        {
          v35 = v0[27];
          v36 = v0[11];
          sub_100049A00();
          sub_100050D50(v32, v35, v37);
          SavedLocation.location.getter();
          if (sub_100192228(v36) != 1)
          {
            break;
          }

          v38 = v0[11];
          sub_10000628C();
          sub_10004F998();
          sub_100018144(v38, &qword_100CA65D8);
LABEL_34:
          v32 += v33;
          if (!--v28)
          {

            goto LABEL_40;
          }
        }

        (*v75)(v0[15], v0[11], v0[12]);
        SavedLocation.id.getter();
        if (*(v29 + 16))
        {
          v39 = sub_100031B34();
          v41 = v40;

          if (v41)
          {
            v42 = v0[7];
            v43 = v0[5];
            (*(v71 + 16))(v42, *(v29 + 56) + *(v71 + 72) * v39, v43);
            LocationModel.locationOfInterest.getter();
            (*(v71 + 8))(v42, v43);
LABEL_26:
            v49 = v0[8];
            v48 = v0[9];
            (*v73)(v0[14], v0[15], v0[12]);
            sub_1005C1F54(v48, v49, &qword_100CA3588);
            type metadata accessor for LocationOfInterest();
            v79 = v34;
            if (sub_100192228(v49) == 1)
            {
              sub_100018144(v0[8], &qword_100CA3588);
              v50 = 1;
            }

            else
            {
              LocationOfInterest.location.getter();
              sub_100003B20();
              v51 = sub_100003B2C();
              v52(v51);
              v50 = 0;
            }

            v53 = v0[18];
            v54 = v0[15];
            v77 = v0[16];
            v78 = v0[19];
            v55 = v0[12];
            v56 = v0[9];
            sub_10001B350(v0[10], v50, 1, v55);
            NotificationSubscription.Location.init(location:locationOverride:)();
            sub_100018144(v56, &qword_100CA3588);
            (*v72)(v54, v55);
            sub_10000628C();
            sub_10004F998();
            v57 = *v80;
            (*v80)(v78, v53, v77);
            v34 = v79;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100025278();
              sub_100184910();
              v34 = v61;
            }

            v33 = v74;
            v58 = v34[2];
            v29 = v76;
            if (v58 >= v34[3] >> 1)
            {
              sub_1000B0C98();
              sub_100184910();
              v34 = v62;
            }

            v34[2] = v58 + 1;
            sub_10002426C();
            v57(v59 + v60 * v58);
            goto LABEL_34;
          }
        }

        else
        {
        }

        type metadata accessor for LocationOfInterest();
        sub_100003934();
        sub_10001B350(v44, v45, v46, v47);
        goto LABEL_26;
      }

      v34 = _swiftEmptyArrayStorage;
LABEL_40:
      v0[35] = v34;
      v68 = swift_task_alloc();
      v0[36] = v68;
      *v68 = v0;
      sub_100071550(v68);
      sub_1000718DC();

      return sub_100184BFC(v69);
    case 6u:
      v63 = v0[3];
      sub_100036D9C();
      sub_10004F998();
      v64 = *(v63 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v0[37] = *(v64 + *(type metadata accessor for LocationsState() + 40));

      v65 = swift_task_alloc();
      v0[38] = v65;
      *v65 = v0;
      sub_100071550(v65);
      sub_1000718DC();

      return sub_10017F378(v66);
    default:
      v4 = swift_task_alloc();
      v0[31] = v4;
      *v4 = v0;
      sub_100071550(v4);
      sub_1000718DC();

      return sub_100197634(v5);
  }
}

void sub_100184910()
{
  sub_1000064F8();
  if (v4)
  {
    sub_100010804();
    if (v6 != v7)
    {
      sub_100031EDC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10001CA94();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1000422F4(v2, v5, &qword_100CC5238, &unk_100A5F790);
  sub_100011748();
  type metadata accessor for NotificationSubscription.Location();
  sub_100003928();
  sub_100011468();
  if (v1)
  {
    sub_10005200C(&type metadata accessor for NotificationSubscription.Location, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_100049AD4();
  }
}

uint64_t sub_1001849E8@<X0>(__int16 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  v5 = sub_10022C350(&qword_100CB4788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  if ((a1 & 0x100) != 0)
  {
    *(inited + 32) = 0x64656C62616E65;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v4 & 1;
  }

  else
  {
    *(inited + 32) = 28532;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 72) = &type metadata for NetworkState;
    *(inited + 48) = v4;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v5;
  a2[4] = sub_100184F08();
  v10 = sub_100042FB0(a2);
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t sub_100184BFC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for NotificationSubscription.Location();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100184CE0, 0, 0);
}

uint64_t sub_100184CE0()
{
  sub_100013494();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 152) = v6;
    *(v0 + 104) = *(v4 + 56);
    *(v0 + 112) = v5;
    v7 = *(v0 + 88);
    v8 = *(v0 + 56);
    *(v0 + 120) = 0;
    *(v0 + 128) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    sub_1000213E8((v8 + 16));
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v10 = sub_100019AFC(v9);

    return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v10);
  }

  else
  {

    sub_100003B14();

    return v11();
  }
}

uint64_t sub_100184E0C()
{
  sub_100003B08();
  sub_10000C7E4();
  sub_10000CCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100003AF8();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

unint64_t sub_100184F08()
{
  result = qword_100CB4790;
  if (!qword_100CB4790)
  {
    sub_10022E824(&qword_100CB4788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB4790);
  }

  return result;
}

uint64_t sub_100184F6C()
{
  sub_100013494();
  (*(v1[9] + 8))(v1[11], v1[8]);
  sub_100045424();
  if (v3)
  {

    sub_100003B14();

    return v4();
  }

  else
  {
    v6 = sub_100041A98(v2);
    v7(v6);
    sub_1000213E8((v0 + 16));
    v8 = swift_task_alloc();
    v1[17] = v8;
    *v8 = v1;
    v9 = sub_100019AFC();

    return dispatch thunk of NotificationSubscriptionManagerType.updateSubscription(for:)(v9);
  }
}

unint64_t sub_100185060()
{
  result = qword_100CCFBD0;
  if (!qword_100CCFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCFBD0);
  }

  return result;
}

uint64_t sub_1001850B4()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001851BC@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = a1;
  v5 = sub_10022C350(&qword_100CB21E0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  if (v4 != 4)
  {
    sub_10022C350(&qword_100CA36F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2C3F0;
    *(inited + 32) = 0x6361667265746E69;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 72) = &type metadata for NetworkInterface;
    *(inited + 48) = a1;
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v5;
  a2[4] = sub_1001858E0();
  v12 = sub_100042FB0(a2);
  return (*(v7 + 32))(v12, v10, v5);
}

uint64_t sub_100185394()
{
  sub_100003B08();
  sub_10000C7E4();
  v1 = *v0;
  sub_100003AF8();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100328128, v4, v3);
}

uint64_t sub_1001854C0()
{
  v18 = type metadata accessor for UVIndex();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HourWeather();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A5E78();
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *(v7 + 16);
    v16[1] = v4 + 16;
    v17 = v10;
    v11 = (v0 + 8);
    while (1)
    {
      v12 = v17 != v9;
      if (v17 == v9)
      {
LABEL_6:

        goto LABEL_8;
      }

      if (v9 >= *(v8 + 16))
      {
        break;
      }

      (*(v4 + 16))(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9++, v3);
      HourWeather.uvIndex.getter();
      v13 = UVIndex.value.getter();
      (*v11)(v2, v18);
      (*(v4 + 8))(v6, v3);
      if (v13 >= 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v12 = 0;
LABEL_8:
  if (qword_100CA2108 != -1)
  {
LABEL_11:
    swift_once();
  }

  v14 = sub_10022C350(&qword_100CA35A0);
  sub_10000703C(v14, qword_100D8FED0);
  v19 = v12;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100185758(uint64_t a1)
{

  v4 = sub_100185FF4(v3, a1, sub_1001D3704);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100087220();
    sub_1000D42E4();
  }

  else
  {
    *(v1 + 16) = a1;

    return sub_1001854C0();
  }
}

uint64_t sub_100185860()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100185758(v1);
  }

  return result;
}

unint64_t sub_1001858E0()
{
  result = qword_100CB21E8;
  if (!qword_100CB21E8)
  {
    sub_10022E824(&qword_100CB21E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB21E8);
  }

  return result;
}

uint64_t sub_100185944()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100CA2488 != -1)
    {
      swift_once();
    }

    type metadata accessor for LocationViewerStoreObserver();
    sub_10007DDB8(&qword_100CDAF48, type metadata accessor for LocationViewerStoreObserver);
    Configurable.setting<A>(_:)();
    if (v8 != 1)
    {
      goto LABEL_10;
    }

    Location.Identifier.kind.getter();
    v1 = Location.Identifier.Kind.rawValue.getter();
    v3 = v2;
    if (v1 == Location.Identifier.Kind.rawValue.getter() && v3 == v4)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
LABEL_10:

        sub_100185EF4(v7);
      }
    }

    sub_100185EF4(0);
  }

  return result;
}

unint64_t sub_100185B00()
{
  result = qword_100CB21B0;
  if (!qword_100CB21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB21B0);
  }

  return result;
}

uint64_t sub_100185B58()
{
  type metadata accessor for Location.Identifier();

  return sub_100185944();
}

uint64_t sub_100185BE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB21E0);
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1001858E0();
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v7, v2);
}

uint64_t sub_100185DA4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D90720 = result;
  return result;
}

uint64_t sub_100185EF4(uint64_t a1)
{

  v4 = sub_100185FF4(v3, a1, sub_1001D374C);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100087220();
    sub_1000D42E4();
  }

  else
  {
    *(v1 + 24) = a1;

    return sub_1001865C0();
  }
}

BOOL sub_100185FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = a3(a1);
  }

  return (v4 & 1) == 0;
}

uint64_t sub_100186038(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100186044(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CE2950);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (&v18 - v4);
  v6 = type metadata accessor for TimeState();
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v10(&v19, v7);
  v11 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v12 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v13 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v14 = *(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

  (v10)(&v19, v15);
  sub_1000863F8(v19 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v9);

  v16 = *(v3 + 56);
  *v5 = v11;
  v5[1] = v12;
  v5[2] = v13;
  v5[3] = v14;
  sub_100086450(v9, v5 + v16);
  sub_10022C350(&qword_100CE2A08);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_100186210()
{
  sub_10001F680();
  sub_10014986C(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001862B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;

  return sub_1001865C0();
}

uint64_t sub_100186318()
{
  sub_100008188();
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 88);
  v5 = *(v0 + 264);

  sub_10018649C(v4, v2, v1, v5);
  if (v3)
  {
  }

  else
  {
    v7 = *(v0 + 88);
    sub_100187350(*(v0 + 240), *(v0 + 248), *(v0 + 264));

    return _swift_task_switch(sub_10016D974, v7, 0);
  }
}

uint64_t sub_1001863EC()
{
  swift_getKeyPath();
  sub_10001F680();
  sub_10014986C(v0, v1);
  sub_100023108();
}

uint64_t sub_100186470()
{
  sub_100020AF8();
  result = sub_1001863EC();
  *v0 = result;
  return result;
}

uint64_t sub_10018649C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = type metadata accessor for MainAction();
  __chkstk_darwin(v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 112);
  *v10 = a2;
  *(v10 + 1) = a3;
  v10[16] = a4;
  type metadata accessor for LocationsAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1000DC3D4(a2, a3, a4);
  sub_10004F034(v10, v13, v11);
  sub_10003FDF4(v13, &unk_100CD81B0);
  return sub_1000547B8(v10);
}

uint64_t sub_1001865C0()
{
  v1 = v0;
  v2 = sub_1001863EC();
  if (v2)
  {
    v3 = *(v2 + 16);

    v4 = v3 > 9;
  }

  else
  {
    v4 = 0;
  }

  swift_getKeyPath();
  sub_10014986C(&qword_100CD6218, type metadata accessor for TipCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1[32] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1[33] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1[34] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100186810()
{
  sub_100020AF8();
  v0 = sub_10074A448();
  return sub_100005F94(v0);
}

uint64_t sub_100186838(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_10006A8B0();
  return sub_10074AFB0();
}

uint64_t sub_100186868()
{
  sub_100020AF8();
  v0 = sub_10074A4C8();
  return sub_100005F94(v0);
}

uint64_t sub_100186890(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_10003BB90();
  return sub_10074AFB0();
}

uint64_t sub_1001868C0()
{
  sub_100020AF8();
  v0 = sub_10074A548();
  return sub_100005F94(v0);
}

uint64_t sub_1001868E8(unsigned __int8 *a1)
{
  sub_1000317D8(a1);
  sub_100036E70();
  return sub_10074AFB0();
}

uint64_t sub_100186918(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  sub_100003810(v5);
  return sub_100186998(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_100186998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CE2950);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v17 - v7);
  v9 = type metadata accessor for TimeState();
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v8, &qword_100CE2950);
  v12 = *v8;
  v13 = v8[1];
  v15 = v8[2];
  v14 = v8[3];
  sub_100086450(v8 + *(v6 + 56), v11);
  sub_100186B34(a3, v12, v13, v15, v14, v11, 0);

  return sub_100087544();
}