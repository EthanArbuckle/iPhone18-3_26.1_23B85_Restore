id sub_100001FC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void type metadata accessor for UIBackgroundTaskIdentifier()
{
  if (!qword_10001D1D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10001D1D8);
    }
  }
}

uint64_t sub_1000020FC(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100002150(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1000021A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *sub_1000021E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002200()
{
  v2 = *v0;
  sub_100002378(&qword_10001D1F8);
  sub_100002378(&unk_10001D200);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100002378(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000023BC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  swift_beginAccess();
  if (*(a1 + 16) == UIBackgroundTaskInvalid)
  {
    static PeopleLogger.messages.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "sendMessage cleanup but task invalid", v12, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    static PeopleLogger.messages.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "sendMessage cleanup task", v15, 2u);
    }

    (*(v3 + 8))(v9, v2);
    v16 = [objc_opt_self() sharedApplication];
    swift_beginAccess();
    [v16 endBackgroundTask:*(a1 + 16)];
  }
}

uint64_t sub_100002630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1000026B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageComposer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000270C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for MessageDetails.EventSource();
  sub_100007184(&qword_10001D2C8, &type metadata accessor for MessageDetails.EventSource);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000027A4(a1, v5);
}

unint64_t sub_1000027A4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MessageDetails.EventSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100007184(&qword_10001D2D0, &type metadata accessor for MessageDetails.EventSource);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_100002964()
{
  v0 = type metadata accessor for PeopleURL.PathAction();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006FA4(&qword_10001D2D8, &qword_100014E68);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100006FA4(&qword_10001D2E0, &unk_100014E70);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - v15;
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  URLComponents.peopleAction.getter();
  (*(v1 + 104))(v16, enum case for PeopleURL.PathAction.sendMessage(_:), v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  sub_1000070BC(v18, v8, &qword_10001D2E0, &unk_100014E70);
  sub_1000070BC(v16, &v8[v19], &qword_10001D2E0, &unk_100014E70);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    sub_1000070BC(v8, v13, &qword_10001D2E0, &unk_100014E70);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = &v8[v19];
      v23 = v27;
      (*(v1 + 32))(v27, v22, v0);
      sub_100007184(&qword_10001D2E8, &type metadata accessor for PeopleURL.PathAction);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v1 + 8);
      v24(v23, v0);
      sub_100007124(v16, &qword_10001D2E0, &unk_100014E70);
      sub_100007124(v18, &qword_10001D2E0, &unk_100014E70);
      v24(v13, v0);
      sub_100007124(v8, &qword_10001D2E0, &unk_100014E70);
      return v21 & 1;
    }

    sub_100007124(v16, &qword_10001D2E0, &unk_100014E70);
    sub_100007124(v18, &qword_10001D2E0, &unk_100014E70);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  sub_100007124(v16, &qword_10001D2E0, &unk_100014E70);
  sub_100007124(v18, &qword_10001D2E0, &unk_100014E70);
  if (v20(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    sub_100007124(v8, &qword_10001D2D8, &qword_100014E68);
    v21 = 0;
    return v21 & 1;
  }

  sub_100007124(v8, &qword_10001D2E0, &unk_100014E70);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100002DB0(uint64_t a1)
{
  v1[51] = a1;
  v2 = *(*(sub_100006FA4(&qword_10001D298, &qword_100014E40) - 8) + 64) + 15;
  v1[52] = swift_task_alloc();
  v3 = *(*(sub_100006FA4(&qword_10001D2A0, &qword_100014E48) - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v4 = type metadata accessor for AskToMetrics();
  v1[54] = v4;
  v5 = *(v4 - 8);
  v1[55] = v5;
  v6 = *(v5 + 64) + 15;
  v1[56] = swift_task_alloc();
  v7 = type metadata accessor for DiscoveredHandles();
  v1[57] = v7;
  v8 = *(v7 - 8);
  v1[58] = v8;
  v9 = *(v8 + 64) + 15;
  v1[59] = swift_task_alloc();
  v10 = *(*(sub_100006FA4(&qword_10001D2A8, &unk_100014E50) - 8) + 64) + 15;
  v1[60] = swift_task_alloc();
  v11 = type metadata accessor for ResolvedFamily();
  v1[61] = v11;
  v12 = *(v11 - 8);
  v1[62] = v12;
  v13 = *(v12 + 64) + 15;
  v1[63] = swift_task_alloc();
  v14 = type metadata accessor for MessageDetails.EventStatus();
  v1[64] = v14;
  v15 = *(v14 - 8);
  v1[65] = v15;
  v16 = *(v15 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v1[69] = v17;
  v18 = *(v17 - 8);
  v1[70] = v18;
  v19 = *(v18 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v20 = type metadata accessor for MessageDetails();
  v1[77] = v20;
  v21 = *(v20 - 8);
  v1[78] = v21;
  v22 = *(v21 + 64) + 15;
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v23 = *(*(sub_100006FA4(&qword_10001D2B0, &qword_100014FA0) - 8) + 64) + 15;
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v24 = type metadata accessor for MessageDetails.EventSource();
  v1[85] = v24;
  v25 = *(v24 - 8);
  v1[86] = v25;
  v26 = *(v25 + 64) + 15;
  v1[87] = swift_task_alloc();
  v27 = type metadata accessor for PeopleURL.Parameter();
  v1[88] = v27;
  v28 = *(v27 - 8);
  v1[89] = v28;
  v29 = *(v28 + 64) + 15;
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[92] = static MainActor.shared.getter();
  v31 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[93] = v31;
  v1[94] = v30;

  return _swift_task_switch(sub_10000329C, v31, v30);
}

uint64_t sub_10000329C()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[51];
  v5 = *(v2 + 104);
  v5(v1, enum case for PeopleURL.Parameter.requestID(_:), v3);
  v6 = URLComponents.subscript.getter();
  v8 = v7;
  v0[95] = v7;
  v9 = *(v2 + 8);
  v9(v1, v3);
  if (!v8)
  {
    v18 = v0[92];

    goto LABEL_5;
  }

  v53 = v6;
  v10 = v0[90];
  v11 = v0[88];
  v12 = v0[86];
  v55 = v0[85];
  v57 = v8;
  v13 = v0[84];
  v14 = v0[51];
  v5(v10, enum case for PeopleURL.Parameter.eventSource(_:), v11);
  URLComponents.subscript.getter();
  v9(v10, v11);
  MessageDetails.EventSource.init(rawValue:)();
  v15 = *(v12 + 48);
  v0[96] = v15;
  v0[97] = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v13, 1, v55) == 1)
  {
    v16 = v0[92];
    v17 = v0[84];

    sub_100007124(v17, &qword_10001D2B0, &qword_100014FA0);
LABEL_5:
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v19 = v0[91];
    v20 = v0[90];
    v21 = v0[87];
    v22 = v0[84];
    v23 = v0[83];
    v24 = v0[82];
    v25 = v0[81];
    v26 = v0[80];
    v27 = v0[79];
    v28 = v0[76];
    v41 = v0[75];
    v42 = v0[74];
    v43 = v0[73];
    v44 = v0[72];
    v45 = v0[71];
    v46 = v0[68];
    v47 = v0[67];
    v48 = v0[66];
    v49 = v0[63];
    v50 = v0[60];
    v51 = v0[59];
    v52 = v0[56];
    v54 = v0[53];
    v56 = v0[52];

    v29 = v0[1];

    return v29();
  }

  (*(v0[86] + 32))(v0[87], v0[84], v0[85]);
  v31 = swift_allocObject();
  v0[98] = v31;
  *(v31 + 16) = UIBackgroundTaskInvalid;
  v32 = (v31 + 16);
  v33 = [objc_opt_self() sharedApplication];
  v34 = String._bridgeToObjectiveC()();
  v0[22] = sub_100006FFC;
  v0[23] = v31;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100002630;
  v0[21] = &unk_100018B70;
  v35 = _Block_copy(v0 + 18);
  v36 = v0[23];

  v37 = [v33 beginBackgroundTaskWithName:v34 expirationHandler:v35];
  _Block_release(v35);

  swift_beginAccess();
  *v32 = v37;
  if (qword_10001D140 != -1)
  {
    swift_once();
  }

  v38 = swift_task_alloc();
  v0[99] = v38;
  *v38 = v0;
  v38[1] = sub_1000037E4;
  v39 = v0[87];
  v40 = v0[81];

  return sub_10000A654(v40, v53, v57, v39);
}

uint64_t sub_1000037E4()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = v2[95];

  v6 = v2[94];
  v7 = v2[93];
  if (v0)
  {
    v8 = sub_100006DB4;
  }

  else
  {
    v8 = sub_100003938;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100003938()
{
  v211 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  static PeopleLogger.messages.getter();
  v205 = *(v3 + 16);
  v205(v2, v1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 640);
  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 608);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  if (v8)
  {
    v196 = *(v0 + 552);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v210[0] = v16;
    *v15 = 136315138;
    v179 = MessageDetails.debugDescription.getter();
    v190 = v12;
    v18 = v17;
    v184 = v7;
    v19 = *(v10 + 8);
    v19(v9, v11);
    v20 = sub_100007DDC(v179, v18, v210);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v184, "Fetched & created %s", v15, 0xCu);
    sub_10000701C(v16);

    v21 = *(v13 + 8);
    v21(v190, v196);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  *(v0 + 816) = v19;
  *(v0 + 808) = v21;
  if (qword_10001D148 != -1)
  {
    swift_once();
  }

  v22 = qword_10001D938;
  if (!*(qword_10001D938 + 16) || (v23 = sub_10000270C(*(v0 + 696)), (v24 & 1) == 0))
  {
    v35 = *(v0 + 784);
    v36 = *(v0 + 736);
    v37 = *(v0 + 696);
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);
    v40 = *(v0 + 648);
    v41 = *(v0 + 624);
    v42 = *(v0 + 616);

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v19(v40, v42);
    (*(v38 + 8))(v37, v39);
LABEL_12:

    v43 = *(v0 + 728);
    v44 = *(v0 + 720);
    v45 = *(v0 + 696);
    v46 = *(v0 + 672);
    v47 = *(v0 + 664);
    v48 = *(v0 + 656);
    v49 = *(v0 + 648);
    v50 = *(v0 + 640);
    v51 = *(v0 + 632);
    v52 = *(v0 + 608);
    v153 = *(v0 + 600);
    buf = *(v0 + 592);
    v157 = *(v0 + 584);
    log = *(v0 + 576);
    v163 = *(v0 + 568);
    v166 = *(v0 + 544);
    v168 = *(v0 + 536);
    v171 = *(v0 + 528);
    v175 = *(v0 + 504);
    v180 = *(v0 + 480);
    v185 = *(v0 + 472);
    v191 = *(v0 + 448);
    v197 = *(v0 + 424);
    v203 = *(v0 + 416);

    v53 = *(v0 + 8);
LABEL_30:

    return v53();
  }

  v25 = *(v0 + 648);
  v26 = *(v0 + 544);
  v27 = *(v0 + 536);
  v28 = *(v0 + 520);
  v29 = *(v0 + 512);
  v30 = (*(v22 + 56) + (v23 << 6));
  v31 = v30[3];
  v33 = *v30;
  v32 = v30[1];
  *(v0 + 48) = v30[2];
  *(v0 + 64) = v31;
  *(v0 + 16) = v33;
  *(v0 + 32) = v32;
  sub_1000070BC(v0 + 16, v0 + 80, &qword_10001D2B8, &qword_100014E60);
  MessageDetails.status.getter();
  (*(v28 + 104))(v27, enum case for MessageDetails.EventStatus.pending(_:), v29);
  sub_100007184(&qword_10001D2C0, &type metadata accessor for MessageDetails.EventStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v202 = v19;
  if (*(v0 + 376) == *(v0 + 392) && *(v0 + 384) == *(v0 + 400))
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v54 = *(v0 + 544);
  v55 = *(v0 + 512);
  v56 = *(*(v0 + 520) + 8);
  v56(*(v0 + 536), v55);
  v56(v54, v55);

  if ((v34 & 1) == 0)
  {
    v66 = *(v0 + 736);
    v67 = *(v0 + 648);
    v68 = *(v0 + 632);
    v69 = *(v0 + 616);
    v70 = *(v0 + 568);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleLogger.messages.getter();
    v205(v68, v67, v69);
    v71 = Logger.logObject.getter();
    v172 = static os_log_type_t.debug.getter();
    v72 = os_log_type_enabled(v71, v172);
    v73 = *(v0 + 784);
    v206 = *(v0 + 696);
    v74 = *(v0 + 688);
    v192 = *(v0 + 648);
    v198 = *(v0 + 680);
    v75 = *(v0 + 632);
    v76 = *(v0 + 624);
    v77 = *(v0 + 616);
    v176 = *(v0 + 560);
    v78 = *(v0 + 552);
    v181 = v78;
    v186 = *(v0 + 568);
    if (v72)
    {
      v169 = *(v0 + 688);
      v79 = *(v0 + 528);
      v158 = *(v0 + 512);
      bufa = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v210[0] = v164;
      *bufa = 136315138;
      loga = v71;
      MessageDetails.status.getter();
      v80 = MessageDetails.EventStatus.rawValue.getter();
      v82 = v81;
      v56(v79, v158);
      v202(v75, v77);
      v83 = sub_100007DDC(v80, v82, v210);

      *(bufa + 4) = v83;
      _os_log_impl(&_mh_execute_header, loga, v172, "Event status != pending (%s), no message to send", bufa, 0xCu);
      sub_10000701C(v164);

      v21(v186, v181);
      v202(v192, v77);
      (*(v169 + 8))(v206, v198);
    }

    else
    {

      v202(v75, v77);
      v21(v186, v181);
      v202(v192, v77);
      (*(v74 + 8))(v206, v198);
    }

LABEL_29:

    v113 = *(v0 + 728);
    v114 = *(v0 + 720);
    v115 = *(v0 + 696);
    v116 = *(v0 + 672);
    v117 = *(v0 + 664);
    v118 = *(v0 + 656);
    v119 = *(v0 + 648);
    v120 = *(v0 + 640);
    v121 = *(v0 + 632);
    v122 = *(v0 + 608);
    bufb = *(v0 + 600);
    v159 = *(v0 + 592);
    logb = *(v0 + 584);
    v165 = *(v0 + 576);
    v167 = *(v0 + 568);
    v170 = *(v0 + 544);
    v174 = *(v0 + 536);
    v178 = *(v0 + 528);
    v183 = *(v0 + 504);
    v189 = *(v0 + 480);
    v195 = *(v0 + 472);
    v201 = *(v0 + 448);
    v204 = *(v0 + 424);
    v208 = *(v0 + 416);

    v53 = *(v0 + 8);
    goto LABEL_30;
  }

  v57 = *(v0 + 648);
  v58 = *(v0 + 488);
  v59 = *(v0 + 496);
  v60 = *(v0 + 480);
  MessageDetails.family.getter();
  if ((*(v59 + 48))(v60, 1, v58) == 1)
  {
    v61 = *(v0 + 736);
    v62 = *(v0 + 480);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    v63 = &unk_10001D2A8;
    v64 = &unk_100014E50;
    v65 = v62;
LABEL_25:
    sub_100007124(v65, v63, v64);
    v102 = *(v0 + 576);
    static PeopleLogger.messages.getter();
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    v105 = os_log_type_enabled(v103, v104);
    v106 = *(v0 + 784);
    v207 = *(v0 + 696);
    v107 = *(v0 + 688);
    v194 = *(v0 + 648);
    v200 = *(v0 + 680);
    v108 = *(v0 + 624);
    v188 = *(v0 + 616);
    v109 = *(v0 + 576);
    v110 = *(v0 + 560);
    v111 = *(v0 + 552);
    if (v105)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Only send message if I am requesting family member ", v112, 2u);
    }

    v21(v109, v111);
    v202(v194, v188);
    (*(v107 + 8))(v207, v200);
    goto LABEL_29;
  }

  (*(*(v0 + 496) + 32))(*(v0 + 504), *(v0 + 480), *(v0 + 488));
  v84 = ResolvedFamily.requestingFamilyMember.getter();
  v85 = [v84 isMe];

  if (!v85)
  {
    v101 = *(v0 + 736);
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));

    v63 = &qword_10001D2B8;
    v64 = &qword_100014E60;
    v65 = v0 + 16;
    goto LABEL_25;
  }

  v86 = *(v0 + 776);
  v87 = *(v0 + 768);
  v88 = *(v0 + 680);
  v89 = *(v0 + 664);
  v90 = *(v0 + 648);
  v91 = *(v0 + 448);
  AskToMetrics.init(isAskToProcess:)();
  MessageDetails.eventSource.getter();
  if (v87(v89, 1, v88) == 1)
  {
    v92 = *(v0 + 736);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
LABEL_22:
    v93 = *(v0 + 688);
    v182 = *(v0 + 680);
    v187 = *(v0 + 696);
    v193 = *(v0 + 664);
    v199 = *(v0 + 784);
    v94 = *(v0 + 624);
    v173 = *(v0 + 616);
    v177 = *(v0 + 648);
    v95 = *(v0 + 496);
    v96 = *(v0 + 504);
    v97 = *(v0 + 488);
    v99 = *(v0 + 440);
    v98 = *(v0 + 448);
    v100 = *(v0 + 432);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v99 + 8))(v98, v100);
    (*(v95 + 8))(v96, v97);
    v202(v177, v173);
    (*(v93 + 8))(v187, v182);
    sub_100007124(v193, &qword_10001D2B0, &qword_100014FA0);
    goto LABEL_12;
  }

  v124 = *(v0 + 688);
  v125 = *(v0 + 680);
  v126 = *(v0 + 656);
  sub_1000070BC(*(v0 + 664), v126, &qword_10001D2B0, &qword_100014FA0);
  v127 = (*(v124 + 88))(v126, v125);
  if (v127 == enum case for MessageDetails.EventSource.askToBuy(_:))
  {
    v128 = *(v0 + 504);
    type metadata accessor for ServerFeatureFlag();
    static ServerFeatureFlag.shared.getter();
    v129 = ServerFeatureFlag.preventAskToBuyDeviceValidation.getter();
    *(v0 + 994) = v129 & 1;

    type metadata accessor for MessageSendRules();
    *(v0 + 888) = static MessageSendRules.sharedInstance.getter();
    v130 = ResolvedFamily.approvers.getter();
    *(v0 + 896) = v130;
    v131 = type metadata accessor for MessageDeviceCapabilityLookup();
    if (v129)
    {
      *(v0 + 232) = static MessageDeviceCapabilityLookup.sharedInstance.getter();
      v132 = v0 + 232;
      *(v0 + 256) = v131;
      *(v0 + 264) = &protocol witness table for MessageDeviceCapabilityLookup;
      v133 = *(&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + 1);
      v209 = (&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:));
      v134 = swift_task_alloc();
      *(v0 + 904) = v134;
      *v134 = v0;
      v135 = sub_1000056F0;
    }

    else
    {
      *(v0 + 192) = static MessageDeviceCapabilityLookup.sharedInstance.getter();
      v132 = v0 + 192;
      *(v0 + 216) = v131;
      *(v0 + 224) = &protocol witness table for MessageDeviceCapabilityLookup;
      v145 = *(&async function pointer to dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:) + 1);
      v209 = (&async function pointer to dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:) + async function pointer to dispatch thunk of MessageSendRules.approversSupportingAskToBuyMessage(_:lookup:));
      v134 = swift_task_alloc();
      *(v0 + 912) = v134;
      *v134 = v0;
      v135 = sub_1000059B4;
    }

    v134[1] = v135;
    v143 = *(v0 + 472);
    v146 = v130;
    v144 = v132;
  }

  else
  {
    if (v127 != enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v147 = *(v0 + 736);
      v148 = *(v0 + 688);
      v149 = *(v0 + 680);
      v150 = *(v0 + 656);

      sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
      (*(v148 + 8))(v150, v149);
      goto LABEL_22;
    }

    v136 = *(v0 + 504);
    type metadata accessor for ServerFeatureFlag();
    static ServerFeatureFlag.shared.getter();
    v137 = ServerFeatureFlag.preventScreenTimeMessageDeviceValidation.getter();
    *(v0 + 992) = v137 & 1;

    type metadata accessor for MessageSendRules();
    *(v0 + 824) = static MessageSendRules.sharedInstance.getter();
    v138 = ResolvedFamily.approvers.getter();
    *(v0 + 832) = v138;
    v139 = type metadata accessor for MessageDeviceCapabilityLookup();
    v140 = static MessageDeviceCapabilityLookup.sharedInstance.getter();
    if (v137)
    {
      *(v0 + 336) = v139;
      *(v0 + 344) = &protocol witness table for MessageDeviceCapabilityLookup;
      *(v0 + 312) = v140;
      v141 = *(&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + 1);
      v209 = (&async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:) + async function pointer to dispatch thunk of MessageSendRules.iMessageHandles(for:lookup:));
      v142 = swift_task_alloc();
      *(v0 + 840) = v142;
      *v142 = v0;
      v142[1] = sub_1000049A8;
      v143 = *(v0 + 472);
      v144 = v0 + 312;
    }

    else
    {
      *(v0 + 296) = v139;
      *(v0 + 304) = &protocol witness table for MessageDeviceCapabilityLookup;
      *(v0 + 272) = v140;
      v151 = *(&async function pointer to dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:) + 1);
      v209 = (&async function pointer to dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:) + async function pointer to dispatch thunk of MessageSendRules.approversSupportingScreenTimeMessage(_:lookup:));
      v152 = swift_task_alloc();
      *(v0 + 848) = v152;
      *v152 = v0;
      v152[1] = sub_100004C6C;
      v143 = *(v0 + 472);
      v144 = v0 + 272;
    }

    v146 = v138;
  }

  return v209(v143, v146, v144);
}

uint64_t sub_1000049A8()
{
  v1 = *v0;
  v2 = (*v0)[105];
  v3 = (*v0)[104];
  v4 = (*v0)[103];
  v8 = *v0;

  sub_10000701C(v1 + 39);
  v5 = v1[94];
  v6 = v1[93];

  return _swift_task_switch(sub_100004B14, v6, v5);
}

uint64_t sub_100004B14()
{
  v1 = v0[63];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v5 = v0[53];
  type metadata accessor for MessageSendRules();
  v0[107] = static MessageSendRules.sharedInstance.getter();
  v6 = ResolvedFamily.requestingFamilyMember.getter();
  v0[108] = v6;
  v7 = ResolvedFamily.approvers.getter();
  v0[109] = v7;
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8 = *(&async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + 1);
  v13 = &async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendScreenTimeRequest(from:to:client:askToMetrics:discoveredHandles:);
  v9 = swift_task_alloc();
  v0[110] = v9;
  *v9 = v0;
  v9[1] = sub_100004DD8;
  v10 = v0[56];
  v11 = v0[53];

  return (v13)(v6, v7, 0, v10, v11);
}

uint64_t sub_100004C6C()
{
  v1 = *v0;
  v2 = (*v0)[106];
  v3 = (*v0)[104];
  v4 = (*v0)[103];
  v8 = *v0;

  sub_10000701C(v1 + 34);
  v5 = v1[94];
  v6 = v1[93];

  return _swift_task_switch(sub_1000071CC, v6, v5);
}

uint64_t sub_100004DD8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v4 = *(*v1 + 872);
  v5 = *(*v1 + 864);
  v6 = *(*v1 + 856);
  v7 = *(*v1 + 424);
  v11 = *v1;
  *(*v1 + 993) = a1;

  sub_100007124(v7, &qword_10001D2A0, &qword_100014E48);
  v8 = *(v2 + 752);
  v9 = *(v2 + 744);

  return _swift_task_switch(sub_100004F8C, v9, v8);
}

uint64_t sub_100004F8C()
{
  v112 = v0;
  if (*(v0 + 993) == 1)
  {
    v1 = *(v0 + 992);
    v2 = *(v0 + 472);
    sub_100007124(*(v0 + 664), &qword_10001D2B0, &qword_100014FA0);
    if (DiscoveredHandles.allMembersMeetRequirements.getter())
    {
      v3 = *(v0 + 600);
      v4 = *(v0 + 472);
      *(v0 + 952) = DiscoveredHandles.iMessageHandles.getter();
      static PeopleLogger.messages.getter();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 808);
      v9 = *(v0 + 600);
      v10 = *(v0 + 560);
      v11 = *(v0 + 552);
      if (v7)
      {
        v108 = v1;
        v12 = swift_slowAlloc();
        v103 = v8;
        v13 = swift_slowAlloc();
        v111 = v13;
        *v12 = 136315138;
        v14 = Array.description.getter();
        v16 = sub_100007DDC(v14, v15, &v111);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "MessageComposer validated destinations %s", v12, 0xCu);
        sub_10000701C(v13);

        v1 = v108;

        v103(v9, v11);
      }

      else
      {

        v8(v9, v11);
      }

      v58 = *(v0 + 416);
      v59 = type metadata accessor for URL();
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
      v60 = swift_task_alloc();
      *(v0 + 960) = v60;
      *v60 = v0;
      v60[1] = sub_100006438;
      v61 = *(v0 + 648);
      v62 = *(v0 + 416);

      return (sub_10000BC34)(v61, v1, v62);
    }

    v38 = *(v0 + 736);
    v101 = *(v0 + 696);
    v106 = *(v0 + 784);
    v39 = *(v0 + 688);
    v93 = *(v0 + 816);
    v97 = *(v0 + 680);
    v85 = *(v0 + 616);
    v89 = *(v0 + 648);
    v40 = *(v0 + 496);
    v77 = *(v0 + 504);
    v81 = *(v0 + 624);
    v73 = *(v0 + 488);
    v41 = *(v0 + 464);
    v42 = *(v0 + 472);
    v44 = *(v0 + 448);
    v43 = *(v0 + 456);
    v45 = *(v0 + 432);
    v46 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v46 + 8))(v44, v45);
    (*(v41 + 8))(v42, v43);
    (*(v40 + 8))(v77, v73);
    v93(v89, v85);
    (*(v39 + 8))(v101, v97);

    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 696);
    v50 = *(v0 + 672);
    v51 = *(v0 + 664);
    v52 = *(v0 + 656);
    v53 = *(v0 + 648);
    v54 = *(v0 + 640);
    v55 = *(v0 + 632);
    v56 = *(v0 + 608);
    v63 = *(v0 + 600);
    v65 = *(v0 + 592);
    v67 = *(v0 + 584);
    v69 = *(v0 + 576);
    v71 = *(v0 + 568);
    v74 = *(v0 + 544);
    v78 = *(v0 + 536);
    v82 = *(v0 + 528);
    v86 = *(v0 + 504);
    v90 = *(v0 + 480);
    v94 = *(v0 + 472);
    v98 = *(v0 + 448);
    v102 = *(v0 + 424);
    v107 = *(v0 + 416);

    v37 = *(v0 + 8);
  }

  else
  {
    v91 = *(v0 + 816);
    v109 = *(v0 + 784);
    v17 = *(v0 + 736);
    v18 = *(v0 + 688);
    v95 = *(v0 + 680);
    v99 = *(v0 + 696);
    v104 = *(v0 + 664);
    v83 = *(v0 + 616);
    v87 = *(v0 + 648);
    v19 = *(v0 + 496);
    v75 = *(v0 + 504);
    v79 = *(v0 + 624);
    v20 = *(v0 + 488);
    v21 = *(v0 + 464);
    v22 = *(v0 + 472);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    (*(v26 + 8))(v23, v25);
    (*(v21 + 8))(v22, v24);
    (*(v19 + 8))(v75, v20);
    v91(v87, v83);
    (*(v18 + 8))(v99, v95);
    sub_100007124(v104, &qword_10001D2B0, &qword_100014FA0);

    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    v29 = *(v0 + 696);
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 608);
    v64 = *(v0 + 600);
    v66 = *(v0 + 592);
    v68 = *(v0 + 584);
    v70 = *(v0 + 576);
    v72 = *(v0 + 568);
    v76 = *(v0 + 544);
    v80 = *(v0 + 536);
    v84 = *(v0 + 528);
    v88 = *(v0 + 504);
    v92 = *(v0 + 480);
    v96 = *(v0 + 472);
    v100 = *(v0 + 448);
    v105 = *(v0 + 424);
    v110 = *(v0 + 416);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_1000056F0()
{
  v1 = *v0;
  v2 = (*v0)[113];
  v3 = (*v0)[112];
  v4 = (*v0)[111];
  v8 = *v0;

  sub_10000701C(v1 + 29);
  v5 = v1[94];
  v6 = v1[93];

  return _swift_task_switch(sub_10000585C, v6, v5);
}

uint64_t sub_10000585C()
{
  v1 = v0[63];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[57];
  v5 = v0[53];
  type metadata accessor for MessageSendRules();
  v0[115] = static MessageSendRules.sharedInstance.getter();
  v6 = ResolvedFamily.requestingFamilyMember.getter();
  v0[116] = v6;
  v7 = ResolvedFamily.approvers.getter();
  v0[117] = v7;
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v8 = *(&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + 1);
  v13 = &async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:);
  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = sub_100005B20;
  v10 = v0[56];
  v11 = v0[53];

  return (v13)(v6, v7, 0, v10, v11);
}

uint64_t sub_1000059B4()
{
  v1 = *v0;
  v2 = (*v0)[114];
  v3 = (*v0)[112];
  v4 = (*v0)[111];
  v8 = *v0;

  sub_10000701C(v1 + 24);
  v5 = v1[94];
  v6 = v1[93];

  return _swift_task_switch(sub_1000071D0, v6, v5);
}

uint64_t sub_100005B20(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *(*v1 + 936);
  v5 = *(*v1 + 928);
  v6 = *(*v1 + 920);
  v7 = *(*v1 + 424);
  v11 = *v1;
  *(*v1 + 995) = a1;

  sub_100007124(v7, &qword_10001D2A0, &qword_100014E48);
  v8 = *(v2 + 752);
  v9 = *(v2 + 744);

  return _swift_task_switch(sub_100005CD4, v9, v8);
}

uint64_t sub_100005CD4()
{
  v112 = v0;
  if (*(v0 + 995) == 1)
  {
    v1 = *(v0 + 994);
    v2 = *(v0 + 472);
    sub_100007124(*(v0 + 664), &qword_10001D2B0, &qword_100014FA0);
    if (DiscoveredHandles.allMembersMeetRequirements.getter())
    {
      v3 = *(v0 + 600);
      v4 = *(v0 + 472);
      *(v0 + 952) = DiscoveredHandles.iMessageHandles.getter();
      static PeopleLogger.messages.getter();

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 808);
      v9 = *(v0 + 600);
      v10 = *(v0 + 560);
      v11 = *(v0 + 552);
      if (v7)
      {
        v108 = v1;
        v12 = swift_slowAlloc();
        v103 = v8;
        v13 = swift_slowAlloc();
        v111 = v13;
        *v12 = 136315138;
        v14 = Array.description.getter();
        v16 = sub_100007DDC(v14, v15, &v111);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "MessageComposer validated destinations %s", v12, 0xCu);
        sub_10000701C(v13);

        v1 = v108;

        v103(v9, v11);
      }

      else
      {

        v8(v9, v11);
      }

      v58 = *(v0 + 416);
      v59 = type metadata accessor for URL();
      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
      v60 = swift_task_alloc();
      *(v0 + 960) = v60;
      *v60 = v0;
      v60[1] = sub_100006438;
      v61 = *(v0 + 648);
      v62 = *(v0 + 416);

      return (sub_10000BC34)(v61, v1, v62);
    }

    v38 = *(v0 + 736);
    v101 = *(v0 + 696);
    v106 = *(v0 + 784);
    v39 = *(v0 + 688);
    v93 = *(v0 + 816);
    v97 = *(v0 + 680);
    v85 = *(v0 + 616);
    v89 = *(v0 + 648);
    v40 = *(v0 + 496);
    v77 = *(v0 + 504);
    v81 = *(v0 + 624);
    v73 = *(v0 + 488);
    v41 = *(v0 + 464);
    v42 = *(v0 + 472);
    v44 = *(v0 + 448);
    v43 = *(v0 + 456);
    v45 = *(v0 + 432);
    v46 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    (*(v46 + 8))(v44, v45);
    (*(v41 + 8))(v42, v43);
    (*(v40 + 8))(v77, v73);
    v93(v89, v85);
    (*(v39 + 8))(v101, v97);

    v47 = *(v0 + 728);
    v48 = *(v0 + 720);
    v49 = *(v0 + 696);
    v50 = *(v0 + 672);
    v51 = *(v0 + 664);
    v52 = *(v0 + 656);
    v53 = *(v0 + 648);
    v54 = *(v0 + 640);
    v55 = *(v0 + 632);
    v56 = *(v0 + 608);
    v63 = *(v0 + 600);
    v65 = *(v0 + 592);
    v67 = *(v0 + 584);
    v69 = *(v0 + 576);
    v71 = *(v0 + 568);
    v74 = *(v0 + 544);
    v78 = *(v0 + 536);
    v82 = *(v0 + 528);
    v86 = *(v0 + 504);
    v90 = *(v0 + 480);
    v94 = *(v0 + 472);
    v98 = *(v0 + 448);
    v102 = *(v0 + 424);
    v107 = *(v0 + 416);

    v37 = *(v0 + 8);
  }

  else
  {
    v91 = *(v0 + 816);
    v109 = *(v0 + 784);
    v17 = *(v0 + 736);
    v18 = *(v0 + 688);
    v95 = *(v0 + 680);
    v99 = *(v0 + 696);
    v104 = *(v0 + 664);
    v83 = *(v0 + 616);
    v87 = *(v0 + 648);
    v19 = *(v0 + 496);
    v75 = *(v0 + 504);
    v79 = *(v0 + 624);
    v20 = *(v0 + 488);
    v21 = *(v0 + 464);
    v22 = *(v0 + 472);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);

    sub_100007124(v0 + 16, &qword_10001D2B8, &qword_100014E60);
    (*(v26 + 8))(v23, v25);
    (*(v21 + 8))(v22, v24);
    (*(v19 + 8))(v75, v20);
    v91(v87, v83);
    (*(v18 + 8))(v99, v95);
    sub_100007124(v104, &qword_10001D2B0, &qword_100014FA0);

    v27 = *(v0 + 728);
    v28 = *(v0 + 720);
    v29 = *(v0 + 696);
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 608);
    v64 = *(v0 + 600);
    v66 = *(v0 + 592);
    v68 = *(v0 + 584);
    v70 = *(v0 + 576);
    v72 = *(v0 + 568);
    v76 = *(v0 + 544);
    v80 = *(v0 + 536);
    v84 = *(v0 + 528);
    v88 = *(v0 + 504);
    v92 = *(v0 + 480);
    v96 = *(v0 + 472);
    v100 = *(v0 + 448);
    v105 = *(v0 + 424);
    v110 = *(v0 + 416);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100006438(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = (*v3)[120];
  v11 = *v3;
  v4[121] = a1;
  v4[122] = a2;
  v4[123] = v2;

  if (v2)
  {
    v6 = v4[119];
    sub_100007124(v4[52], &qword_10001D298, &qword_100014E40);
    sub_100007124((v4 + 2), &qword_10001D2B8, &qword_100014E60);

    v7 = v4[94];
    v8 = v4[93];
    v9 = sub_100006B2C;
  }

  else
  {
    sub_100007124(v4[52], &qword_10001D298, &qword_100014E40);
    v7 = v4[94];
    v8 = v4[93];
    v9 = sub_1000065B0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000065B0()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[119];
  v4 = v0[92];
  v5 = v0[81];

  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[5];
  v11 = v0[7];
  v12 = v0[9];

  v13 = String._bridgeToObjectiveC()();

  MessageDetails.requestID.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = Array._bridgeToObjectiveC()().super.isa;

  LODWORD(v3) = [v6 sendPayload:isa extensionBundleID:v13 chatGUID:v14 withRecipients:v15];

  if (v3)
  {
    v16 = v0[74];
    static PeopleLogger.messages.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[122];
    v21 = v0[121];
    v77 = v0[102];
    v64 = v0[101];
    v22 = v0[87];
    v23 = v0[86];
    v79 = v0[85];
    v75 = v0[81];
    v70 = v0[78];
    v73 = v0[77];
    v24 = v0[70];
    v56 = v0[69];
    v58 = v0[74];
    v25 = v0[62];
    v66 = v0[61];
    v68 = v0[63];
    v26 = v0[58];
    v27 = v0[57];
    v60 = v27;
    v62 = v0[59];
    v54 = v0[56];
    v28 = v0[55];
    v52 = v0[54];
    if (v19)
    {
      v49 = v0[121];
      v50 = v0[122];
      v51 = v0[87];
      v29 = v0[98];
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Message send with imcore seems OK";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v17, v18, v31, v30, 2u);

      sub_100007068(v49, v50);

      v64(v58, v56);
      (*(v28 + 8))(v54, v52);
      (*(v26 + 8))(v62, v60);
      (*(v25 + 8))(v68, v66);
      v77(v75, v73);
      (*(v23 + 8))(v51, v79);
      goto LABEL_8;
    }
  }

  else
  {
    v32 = v0[73];
    static PeopleLogger.messages.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v17, v18);
    v20 = v0[122];
    v21 = v0[121];
    v77 = v0[102];
    v64 = v0[101];
    v22 = v0[87];
    v23 = v0[86];
    v79 = v0[85];
    v75 = v0[81];
    v71 = v0[78];
    v73 = v0[77];
    v34 = v0[70];
    v56 = v0[69];
    v58 = v0[73];
    v25 = v0[62];
    v66 = v0[61];
    v68 = v0[63];
    v26 = v0[58];
    v35 = v0[57];
    v60 = v35;
    v62 = v0[59];
    v54 = v0[56];
    v28 = v0[55];
    v52 = v0[54];
    if (v33)
    {
      v49 = v0[121];
      v50 = v0[122];
      v51 = v0[87];
      v36 = v0[98];
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Message send with imcore failed";
      goto LABEL_6;
    }
  }

  sub_100007068(v21, v20);

  v64(v58, v56);
  (*(v28 + 8))(v54, v52);
  (*(v26 + 8))(v62, v60);
  (*(v25 + 8))(v68, v66);
  v77(v75, v73);
  (*(v23 + 8))(v22, v79);
LABEL_8:

  v37 = v0[91];
  v38 = v0[90];
  v39 = v0[87];
  v40 = v0[84];
  v41 = v0[83];
  v42 = v0[82];
  v43 = v0[81];
  v44 = v0[80];
  v45 = v0[79];
  v46 = v0[76];
  v53 = v0[75];
  v55 = v0[74];
  v57 = v0[73];
  v59 = v0[72];
  v61 = v0[71];
  v63 = v0[68];
  v65 = v0[67];
  v67 = v0[66];
  v69 = v0[63];
  v72 = v0[60];
  v74 = v0[59];
  v76 = v0[56];
  v78 = v0[53];
  v80 = v0[52];

  v47 = v0[1];

  return v47();
}

uint64_t sub_100006B2C()
{
  v38 = v0[102];
  v1 = v0[92];
  v42 = v0[87];
  v44 = v0[98];
  v2 = v0[86];
  v40 = v0[85];
  v34 = v0[77];
  v36 = v0[81];
  v3 = v0[62];
  v30 = v0[63];
  v32 = v0[78];
  v4 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[56];
  v8 = v0[57];
  v9 = v0[54];
  v10 = v0[55];

  (*(v10 + 8))(v7, v9);
  (*(v5 + 8))(v6, v8);
  (*(v3 + 8))(v30, v4);
  v38(v36, v34);
  (*(v2 + 8))(v42, v40);

  v45 = v0[123];
  v11 = v0[91];
  v12 = v0[90];
  v13 = v0[87];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[76];
  v23 = v0[75];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  v27 = v0[71];
  v28 = v0[68];
  v29 = v0[67];
  v31 = v0[66];
  v33 = v0[63];
  v35 = v0[60];
  v37 = v0[59];
  v39 = v0[56];
  v41 = v0[53];
  v43 = v0[52];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100006DB4()
{
  v1 = v0[98];
  v2 = v0[92];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];

  (*(v4 + 8))(v3, v5);

  v32 = v0[100];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[84];
  v10 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  v13 = v0[80];
  v14 = v0[79];
  v15 = v0[76];
  v18 = v0[75];
  v19 = v0[74];
  v20 = v0[73];
  v21 = v0[72];
  v22 = v0[71];
  v23 = v0[68];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[63];
  v27 = v0[60];
  v28 = v0[59];
  v29 = v0[56];
  v30 = v0[53];
  v31 = v0[52];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100006FA4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000701C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000070BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006FA4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006FA4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007184(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10000739C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000074E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_100007600;

  return sub_100002DB0(a5);
}

uint64_t sub_100007600()
{
  v2 = v0;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 64) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1000077C4;
  }

  else
  {
    v8 = sub_10000775C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000775C()
{
  v1 = v0[6];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000077C4()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  static PeopleLogger.messages.getter();
  swift_errorRetain();
  Logger.ifError(_:message:)();

  (*(v4 + 8))(v3, v5);
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

id sub_1000079F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100007AA8()
{
  result = qword_10001D428;
  if (!qword_10001D428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001D428);
  }

  return result;
}

uint64_t sub_100007AF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007BEC;

  return v7(a1);
}

uint64_t sub_100007BEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007CE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009CF8;

  return v7(a1);
}

uint64_t sub_100007DDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007EA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000972C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000701C(v11);
  return v7;
}

unint64_t sub_100007EA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100007FB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100007FB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008000(a1, a2);
  sub_100008130(&off_100018AF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008000(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000821C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000821C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100008130(uint64_t result)
{
  v2 = *(result + 16);
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100008290(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000821C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100006FA4(&qword_10001D458, qword_100014F08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008290(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006FA4(&qword_10001D458, qword_100014F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100008384(uint64_t a1)
{
  v3 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v109 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v105 - v7;
  v120 = type metadata accessor for PeopleURL.Scheme();
  v8 = *(v120 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v120);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006FA4(&qword_10001D440, &qword_100014ED0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v105 - v13;
  v15 = type metadata accessor for URLComponents();
  v112 = *(v15 - 8);
  v16 = *(v112 + 64);
  v17 = __chkstk_darwin(v15);
  v107 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v18;
  __chkstk_darwin(v17);
  v122 = &v105 - v19;
  v139 = type metadata accessor for Logger();
  v20 = *(v139 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v139);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v124 = &v105 - v26;
  __chkstk_darwin(v25);
  v131 = &v105 - v27;
  v134 = type metadata accessor for URL();
  v28 = *(v134 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v134);
  __chkstk_darwin(v30);
  v141 = &v105 - v32;
  v33 = *(v1 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer);
  if (!v33)
  {
    static PeopleLogger.messages.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v144[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100007DDC(0xD000000000000019, 0x8000000100014940, v144);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s impossible error, no peopleView", v42, 0xCu);
      sub_10000701C(v43);
    }

    (*(v20 + 8))(v24, v139);
    return;
  }

  v128 = v31;
  v130 = v14;
  v110 = v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = v33;

    __CocoaSet.makeIterator()();
    sub_100007AA8();
    sub_1000096E4(&qword_10001D430, sub_100007AA8);
    Set.Iterator.init(_cocoa:)();
    a1 = v144[0];
    v36 = v144[1];
    v37 = v144[2];
    v38 = v144[3];
    v39 = v144[4];
  }

  else
  {
    v44 = -1 << *(a1 + 32);
    v36 = a1 + 56;
    v37 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v39 = v46 & *(a1 + 56);
    v47 = v33;

    v38 = 0;
  }

  v106 = v37;
  v48 = (v37 + 64) >> 6;
  v127 = (v28 + 16);
  v140 = (v28 + 8);
  v135 = (v20 + 8);
  v118 = "T@UIWindow,N,&,Vwindow";
  v126 = (v112 + 48);
  v121 = (v112 + 32);
  v117 = enum case for PeopleURL.Scheme.message(_:);
  v116 = (v8 + 104);
  v115 = (v8 + 8);
  v114 = (v112 + 8);
  v105 = v112 + 16;
  *&v35 = 136315650;
  v113 = v35;
  v133 = v15;
  v49 = v134;
  v125 = v48;
  v132 = a1;
  v129 = v36;
  while (a1 < 0)
  {
    v53 = __CocoaSet.Iterator.next()();
    if (!v53 || (v142 = v53, sub_100007AA8(), swift_dynamicCast(), v52 = v143[0], v138 = v39, !v143[0]))
    {
LABEL_43:
      sub_1000092C4();

      return;
    }

LABEL_21:
    v54 = [v52 URL];
    v55 = v141;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v131;
    static PeopleLogger.messages.getter();
    v57 = v128;
    (*v127)(v128, v55, v49);
    v58 = v52;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    v61 = os_log_type_enabled(v59, v60);
    v137 = v58;
    if (v61)
    {
      v62 = v58;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v143[0] = v123;
      *v63 = v113;
      *(v63 + 4) = sub_100007DDC(0xD000000000000019, v118 | 0x8000000000000000, v143);
      *(v63 + 12) = 2112;
      *(v63 + 14) = v62;
      *v64 = v52;
      *(v63 + 22) = 2080;
      sub_1000096E4(&qword_10001D448, &type metadata accessor for URL);
      v65 = v62;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v136 = *v140;
      v136(v57, v49);
      v69 = sub_100007DDC(v66, v68, v143);

      *(v63 + 24) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s url centext: %@ url: %s", v63, 0x20u);
      sub_100007124(v64, &qword_10001D450, &qword_100014FB0);

      swift_arrayDestroy();
      v15 = v133;
    }

    else
    {

      v136 = *v140;
      v136(v57, v49);
    }

    v70 = *v135;
    (*v135)(v56, v139);
    v71 = v130;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v72 = (*v126)(v71, 1, v15);
    a1 = v132;
    if (v72 == 1)
    {
      sub_100007124(v71, &qword_10001D440, &qword_100014ED0);
LABEL_31:
      v95 = v124;
      v36 = v129;
      v94 = v136;
      static PeopleLogger.messages.getter();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Url does not represent people/can't be parsed", v98, 2u);
        v15 = v133;
      }

      v70(v95, v139);
      v49 = v134;
      v48 = v125;
      goto LABEL_34;
    }

    v73 = *v121;
    v74 = v122;
    (*v121)(v122, v71, v15);
    URLComponents.scheme.getter();
    v75 = v15;
    v76 = v119;
    v77 = v120;
    (*v116)(v119, v117, v120);
    v78 = static PeopleURL.Scheme.== infix(_:_:)();

    (*v115)(v76, v77);
    if ((v78 & 1) == 0)
    {
      (*v114)(v74, v75);
      v15 = v75;
      goto LABEL_31;
    }

    if (sub_100002964())
    {
      v79 = type metadata accessor for TaskPriority();
      v123 = *(v79 - 8);
      v80 = v111;
      (*(v123 + 56))(v111, 1, 1, v79);
      v81 = v112;
      v82 = v107;
      v83 = v74;
      v84 = v133;
      (*(v112 + 16))(v107, v83, v133);
      type metadata accessor for MainActor();
      v85 = v110;
      v86 = static MainActor.shared.getter();
      v87 = (*(v81 + 80) + 40) & ~*(v81 + 80);
      v88 = swift_allocObject();
      *(v88 + 2) = v86;
      *(v88 + 3) = &protocol witness table for MainActor;
      *(v88 + 4) = v85;
      v89 = v82;
      v90 = v123;
      v91 = v84;
      v92 = v79;
      v73(&v88[v87], v89, v91);
      v93 = v109;
      sub_100009584(v80, v109);
      LODWORD(v86) = (*(v90 + 48))(v93, 1, v79);

      v94 = v136;
      if (v86 == 1)
      {
        sub_100007124(v93, &qword_10001D438, &qword_100014EC8);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v90 + 8))(v93, v92);
      }

      v100 = *(v88 + 2);
      v99 = *(v88 + 3);
      swift_unknownObjectRetain();

      a1 = v132;
      v36 = v129;
      v48 = v125;
      if (v100)
      {
        swift_getObjectType();
        v101 = dispatch thunk of Actor.unownedExecutor.getter();
        v103 = v102;
        swift_unknownObjectRelease();
      }

      else
      {
        v101 = 0;
        v103 = 0;
      }

      v49 = v134;
      sub_100007124(v111, &qword_10001D438, &qword_100014EC8);
      v104 = swift_allocObject();
      *(v104 + 16) = &unk_100014EE0;
      *(v104 + 24) = v88;
      if (v103 | v101)
      {
        v143[1] = 0;
        v143[2] = 0;
        v143[3] = v101;
        v143[4] = v103;
      }

      swift_task_create();

      v15 = v133;
      (*v114)(v122, v133);
LABEL_34:
      v39 = v138;
      v94(v141, v49);
    }

    else
    {

      v15 = v133;
      (*v114)(v74, v133);
      v49 = v134;
      v36 = v129;
      v48 = v125;
      v39 = v138;
      v136(v141, v134);
    }
  }

  v50 = v38;
  v51 = v39;
  if (v39)
  {
LABEL_17:
    v138 = (v51 - 1) & v51;
    v52 = *(*(a1 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v51)))));
    if (!v52)
    {
      goto LABEL_43;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v38 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v38 >= v48)
    {
      goto LABEL_43;
    }

    v51 = *(v36 + 8 * v38);
    ++v50;
    if (v51)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1000092CC()
{
  v1 = type metadata accessor for URLComponents();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009398(uint64_t a1)
{
  v4 = *(type metadata accessor for URLComponents() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009490;

  return sub_1000074E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100009490()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009584(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000095F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000962C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009490;

  return sub_100007CE4(a1, v5);
}

uint64_t sub_1000096E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000972C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000978C(void *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v46 - v10;
  static PeopleLogger.messages.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100007DDC(0xD00000000000001FLL, 0x8000000100014980, &v50);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000701C(v15);
  }

  v16 = *(v6 + 8);
  v16(v11, v5);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v18 = result;
    v46[1] = v6;
    v19 = objc_opt_self();
    v48 = a1;
    v20 = [v19 mainScreen];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [objc_allocWithZone(UIWindow) initWithFrame:{v22, v24, v26, v28}];
    v30 = *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_window) = v29;
    v31 = v29;

    v32 = v31;
    [v32 setOpaque:0];
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    [v32 setWindowScene:v18];
    [v32 setRootViewController:*(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_rootViewController)];
    [v32 makeKeyAndVisible];
    v34 = [objc_allocWithZone(type metadata accessor for MessageComposer()) init];
    v35 = *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer);
    *(v3 + OBJC_IVAR____TtC20PeopleMessageService13SceneDelegate_messageComposer) = v34;

    v36 = [v49 URLContexts];
    sub_100007AA8();
    sub_1000096E4(&qword_10001D430, sub_100007AA8);
    v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *(v37 + 16);
    }

    if (v38)
    {
      v39 = [v49 URLContexts];
      v40 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100008384(v40);
    }

    else
    {
      v41 = v47;
      static PeopleLogger.messages.getter();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_100007DDC(0xD00000000000001FLL, 0x8000000100014980, &v50);
        _os_log_impl(&_mh_execute_header, v42, v43, "%s missing URL data", v44, 0xCu);
        sub_10000701C(v45);
      }

      else
      {
      }

      return (v16)(v41, v5);
    }
  }

  return result;
}

uint64_t sub_100009CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006FA4(&qword_10001D438, &qword_100014EC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000070BC(a3, v27 - v11, &qword_10001D438, &qword_100014EC8);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007124(v12, &qword_10001D438, &qword_100014EC8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100006FA4(&qword_10001D568, &qword_100014FE0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100007124(a3, &qword_10001D438, &qword_100014EC8);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007124(a3, &qword_10001D438, &qword_100014EC8);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100006FA4(&qword_10001D568, &qword_100014FE0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000A010()
{
  v0 = type metadata accessor for RequestMessageDetailsBuilder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v9 = v0;
  v10 = &protocol witness table for RequestMessageDetailsBuilder;
  *&v8 = RequestMessageDetailsBuilder.init()();
  v6 = type metadata accessor for ContactFetcher();
  v7 = &protocol witness table for ContactFetcher;
  *&v5 = ContactFetcher.__allocating_init()();
  type metadata accessor for MessagePackage();
  v3 = swift_allocObject();
  sub_10001146C(&v8, v3 + 16);
  result = sub_10001146C(&v5, v3 + 56);
  qword_10001D930 = v3;
  return result;
}

uint64_t sub_10000A0B8()
{
  sub_100006FA4(&qword_10001D578, &qword_100015000);
  v0 = sub_100006FA4(&qword_10001D580, &qword_100015008);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100014F20;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  v6 = enum case for MessageDetails.EventSource.screenTime(_:);
  v7 = type metadata accessor for MessageDetails.EventSource();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v4, v6, v7);
  *v5 = 0xD000000000000029;
  v5[1] = 0x8000000100014AD0;
  v5[2] = 0xD000000000000011;
  v5[3] = 0x8000000100014B00;
  v5[4] = 0xD000000000000022;
  v5[5] = 0x8000000100014B20;
  v5[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[7] = v9;
  v10 = (v4 + v1 + *(v0 + 48));
  v8();
  *v10 = 0xD000000000000027;
  v10[1] = 0x8000000100014B50;
  v10[2] = 0x7975426F546B7341;
  v10[3] = 0xE800000000000000;
  v10[4] = 0xD000000000000022;
  v10[5] = 0x8000000100014B80;
  v10[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10[7] = v11;
  v12 = sub_10000B2F4(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10001D938 = v12;
  return result;
}

uint64_t sub_10000A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10000A428, 0, 0);
}

uint64_t sub_10000A428()
{
  v33 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  static PeopleLogger.messages.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  if (v8)
  {
    v31 = v0[7];
    v15 = swift_slowAlloc();
    v29 = v7;
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315138;
    v17 = URL.absoluteString.getter();
    v30 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_100007DDC(v17, v19, &v32);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v29, "Fetching %s", v15, 0xCu);
    sub_10000701C(v16);

    (*(v10 + 8))(v30, v31);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[3];
  v22 = Data.init(contentsOf:options:)();
  v23 = v0[9];
  v24 = v0[6];
  v25 = v0[2];
  *v25 = v22;
  v25[1] = v26;

  v27 = v0[1];

  return v27();
}

uint64_t sub_10000A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = type metadata accessor for Logger();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_100006FA4(&qword_10001D528, &qword_100014F90);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = type metadata accessor for MessageDetails.EventSource();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000A7EC, 0, 0);
}

uint64_t sub_10000A7EC()
{
  v1 = v0[9];
  (*(v0[18] + 104))(v0[20], enum case for MessageDetails.EventSource.unknown(_:), v0[17]);
  sub_1000110C8(&qword_10001D530, &type metadata accessor for MessageDetails.EventSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v2 = 1;
  }

  else
  {
    v3 = v0[3];
    v4 = v0[5];
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5 = *(v0[18] + 8);
  v5(v0[20], v0[17]);

  if (v2)
  {
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[16];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    static PeopleLogger.messages.getter();
    swift_errorRetain();
    Logger.ifError(_:message:)();

    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    (*(v15 + 16))(v14, v0[9], v16);
    if ((*(v15 + 88))(v14, v16) == enum case for MessageDetails.EventSource.screenTime(_:))
    {
      v17 = v0[16];
      static PeopleConstants.screenTimeRequestEventTTL.getter();
    }

    else
    {
      v18 = v0[19];
      v19 = v0[16];
      v20 = v0[17];
      static PeopleConstants.askToBuyEventTTL.getter();
      v5(v18, v20);
    }

    v21 = v0[10];
    v22 = v21[6];
    sub_10000AFAC(v21 + 2, v21[5]);
    v23 = async function pointer to dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)[1];
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_10000AB44;
    v25 = v0[16];
    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[6];
    v29 = v0[7];

    return dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(v28, v26, v29, v27, 0, 1, v25, v21 + 7);
  }
}

uint64_t sub_10000AB44()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10000ACFC;
  }

  else
  {
    v3 = sub_10000AC58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000AC58()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000ACFC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  static PeopleLogger.messages.getter();
  swift_errorRetain();
  Logger.ifError(_:message:)();

  (*(v6 + 8))(v5, v7);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000AE1C(uint64_t result)
{
  v2 = *(result + 16);
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_10000AFF0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000AF48()
{
  sub_10000701C((v0 + 16));
  sub_10000701C((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_10000AFAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

size_t sub_10000AFF0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006FA4(&qword_10001D570, &qword_100014FF8);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000B1C8(char *a1, int64_t a2, char a3)
{
  result = sub_10000B1E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B1E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006FA4(&qword_10001D538, &qword_100014FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_10000B2F4(uint64_t a1)
{
  v2 = sub_100006FA4(&qword_10001D580, &qword_100015008);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100006FA4(&qword_10001D588, &unk_100015010);
  v8 = static _DictionaryStorage.allocate(capacity:)();
  v9 = *(v2 + 48);
  v10 = *(v3 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v32 = v10;

  sub_1000070BC(a1 + v11, v6, &qword_10001D580, &qword_100015008);
  v12 = sub_10000270C(v6);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v14 = v12;
  v15 = &v6[v9];
  v31 = type metadata accessor for MessageDetails.EventSource();
  v16 = *(v31 - 8);
  v30 = *(v16 + 32);
  v17 = *(v16 + 72);
  v18 = a1 + v32 + v11;
  while (1)
  {
    *(v8 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    result = v30(v8[6] + v17 * v14, v6, v31);
    v20 = (v8[7] + (v14 << 6));
    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    v23 = *(v15 + 1);
    *v20 = *v15;
    v20[1] = v23;
    v20[2] = v22;
    v20[3] = v21;
    v24 = v8[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      break;
    }

    v8[2] = v26;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v27 = v18 + v32;
    sub_1000070BC(v18, v6, &qword_10001D580, &qword_100015008);
    v14 = sub_10000270C(v6);
    v18 = v27;
    if (v28)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B538(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = *(*(sub_100006FA4(&qword_10001D438, &qword_100014EC8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000B6A0, 0, 0);
}

uint64_t sub_10000B6A0()
{
  v45 = v0;
  v1 = v0[4];
  if (static AMSBagHelper.isTrustedDomain(for:)())
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[4];
    static TaskPriority.userInitiated.getter();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    (*(v4 + 16))(v2, v7, v6);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    (*(v4 + 32))(v10 + v9, v2, v6);
    v11 = sub_100009CFC(0, 0, v3, &unk_100014FD8, v10);
    v0[14] = v11;
    v12 = async function pointer to Task<>.value.getter[1];
    v13 = swift_task_alloc();
    v0[15] = v13;
    v14 = sub_100006FA4(&qword_10001D568, &qword_100014FE0);
    *v13 = v0;
    v13[1] = sub_10000BA94;

    return Task<>.value.getter(v0 + 2, v11, v14);
  }

  else
  {
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[9];
    v18 = v0[7];
    v19 = v0[4];
    static PeopleLogger.messages.getter();
    (*(v17 + 16))(v15, v19, v16);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[11];
    v25 = v0[8];
    v24 = v0[9];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];
    if (v22)
    {
      v43 = v0[5];
      v29 = swift_slowAlloc();
      v41 = v21;
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136315138;
      sub_1000110C8(&qword_10001D448, &type metadata accessor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v26;
      v33 = v32;
      (*(v24 + 8))(v23, v25);
      v34 = sub_100007DDC(v31, v33, &v44);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v20, v41, "%s not in trusted list", v29, 0xCu);
      sub_10000701C(v30);

      (*(v27 + 8))(v42, v43);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v27 + 8))(v26, v28);
    }

    v36 = v0[12];
    v35 = v0[13];
    v37 = v0[11];
    v38 = v0[7];

    v39 = v0[1];

    return v39(0, 0xF000000000000000);
  }
}

uint64_t sub_10000BA94()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10000BB90, 0, 0);
}

uint64_t sub_10000BB90()
{
  v1 = v0[14];

  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8(v3, v2);
}

uint64_t sub_10000BC34(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 784) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a3;
  v4 = type metadata accessor for Logger();
  *(v3 + 232) = v4;
  v5 = *(v4 - 8);
  *(v3 + 240) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v7 = type metadata accessor for URLQueryItem();
  *(v3 + 312) = v7;
  v8 = *(v7 - 8);
  *(v3 + 320) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  v10 = type metadata accessor for ATURL.Parser();
  *(v3 + 344) = v10;
  v11 = *(v10 - 8);
  *(v3 + 352) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 360) = swift_task_alloc();
  v13 = *(*(sub_100006FA4(&qword_10001D440, &qword_100014ED0) - 8) + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v14 = type metadata accessor for URLComponents();
  *(v3 + 376) = v14;
  v15 = *(v14 - 8);
  *(v3 + 384) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  PartyApps = type metadata accessor for FirstPartyApps();
  *(v3 + 408) = PartyApps;
  v18 = *(PartyApps - 8);
  *(v3 + 416) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v20 = sub_100006FA4(&qword_10001D298, &qword_100014E40);
  *(v3 + 432) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 488) = swift_task_alloc();
  *(v3 + 496) = swift_task_alloc();
  v22 = type metadata accessor for URL();
  *(v3 + 504) = v22;
  v23 = *(v22 - 8);
  *(v3 + 512) = v23;
  v24 = *(v23 + 64) + 15;
  *(v3 + 520) = swift_task_alloc();
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  *(v3 + 544) = swift_task_alloc();
  *(v3 + 552) = swift_task_alloc();
  v25 = *(*(sub_100006FA4(&qword_10001D2B0, &qword_100014FA0) - 8) + 64) + 15;
  *(v3 + 560) = swift_task_alloc();
  v26 = type metadata accessor for MessageDetails.EventSource();
  *(v3 + 568) = v26;
  v27 = *(v26 - 8);
  *(v3 + 576) = v27;
  v28 = *(v27 + 64) + 15;
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v29 = type metadata accessor for MessageDetails();
  *(v3 + 624) = v29;
  v30 = *(v29 - 8);
  *(v3 + 632) = v30;
  v31 = *(v30 + 64) + 15;
  *(v3 + 640) = swift_task_alloc();

  return _swift_task_switch(sub_10000C148, 0, 0);
}

uint64_t sub_10000C148()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  (*(v0[79] + 16))(v0[80], v0[27], v0[78]);
  MessageDetails.eventSource.getter();
  v4 = *(v1 + 48);
  v5 = v4(v3, 1, v2);
  v6 = v0[77];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  if (v5 == 1)
  {
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v11(v6, enum case for MessageDetails.EventSource.unknown(_:), v0[71]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_100007124(v0[70], &qword_10001D2B0, &qword_100014FA0);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[70], v0[71]);
    v10 = enum case for MessageDetails.EventSource.unknown(_:);
    v11 = *(v7 + 104);
    v12 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  }

  v0[81] = v11;
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[71];
  v0[82] = v12;
  v11(v14, v10, v15);
  v0[83] = sub_1000110C8(&qword_10001D530, &type metadata accessor for MessageDetails.EventSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[14] == v0[16] && v0[15] == v0[17])
  {
    v16 = 1;
  }

  else
  {
    v17 = v0[15];
    v18 = v0[17];
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19 = v0[76];
  v20 = v0[72];
  v21 = v0[71];
  v22 = *(v20 + 8);
  v0[84] = v22;
  v0[85] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v19, v21);

  if (v16)
  {
    v23 = v0[80];
    v24 = v0[79];
    v25 = v0[78];
    v26 = v0[77];
    v27 = v0[71];
LABEL_24:
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v22(v26, v27);
    (*(v24 + 8))(v23, v25);
    v47 = v0[80];
    v48 = v0[77];
    v49 = v0[76];
    v50 = v0[75];
    v51 = v0[74];
    v52 = v0[73];
    v53 = v0[70];
    v54 = v0[69];
    v55 = v0[68];
    v56 = v0[67];
    v61 = v0[66];
    v62 = v0[65];
    v63 = v0[62];
    v64 = v0[61];
    v65 = v0[60];
    v66 = v0[59];
    v67 = v0[58];
    v68 = v0[57];
    v69 = v0[56];
    v70 = v0[55];
    v71 = v0[53];
    v72 = v0[50];
    v73 = v0[49];
    v74 = v0[46];
    v75 = v0[45];
    v76 = v0[42];
    v77 = v0[41];
    v78 = v0[38];
    v79 = v0[37];
    v80 = v0[36];
    v81 = v0[35];
    v82 = v0[34];
    v83 = v0[33];
    v84 = v0[32];
    v85 = v0[31];

    v57 = v0[1];

    return v57();
  }

  if (qword_10001D148 != -1)
  {
    swift_once();
  }

  v28 = qword_10001D938;
  if (!*(qword_10001D938 + 16) || (v29 = sub_10000270C(v0[77]), (v30 & 1) == 0))
  {
    v23 = v0[80];
    v24 = v0[79];
    v25 = v0[78];
    v26 = v0[77];
    v27 = v0[71];
    goto LABEL_24;
  }

  v31 = v0[80];
  v32 = (*(v28 + 56) + (v29 << 6));
  v0[86] = v32[1];
  v0[87] = v32[2];
  v0[88] = v32[3];
  v0[89] = v32[4];
  v0[90] = v32[5];
  v0[91] = v32[6];
  v0[92] = v32[7];

  MessageDetails.thumbnailPath.getter();
  if (!v33)
  {
    goto LABEL_18;
  }

  v34 = v0[63];
  v35 = v0[64];
  v36 = v0[62];
  URL.init(string:)();

  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    sub_100007124(v0[62], &qword_10001D298, &qword_100014E40);
LABEL_18:
    v37 = v0[80];
    v39 = v0[52];
    v38 = v0[53];
    v40 = v0[51];
    v41 = MessageDetails.bundleId.getter();
    v43 = v42;
    v0[95] = v42;
    type metadata accessor for AppBundleResolver();
    if (!v43)
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    (*(v39 + 104))(v38, enum case for FirstPartyApps.none(_:), v40);
    v44 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
    v45 = swift_task_alloc();
    v0[96] = v45;
    *v45 = v0;
    v45[1] = sub_10000EC4C;
    v46 = v0[53];

    return static AppBundleResolver.resolveThumbnail(_:_:)(v41, v43, v46);
  }

  (*(v0[64] + 32))(v0[69], v0[62], v0[63]);
  v58 = swift_task_alloc();
  v0[93] = v58;
  *v58 = v0;
  v58[1] = sub_10000C8B0;
  v59 = v0[69];

  return sub_10000B538(v59);
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = a2;
  v5 = v3[93];
  v7 = *v2;
  v4[94] = a2;

  return _swift_task_switch(sub_10000C9B8, 0, 0);
}

uint64_t sub_10000C9B8()
{
  v427 = v0;
  v1 = v0;
  v2 = v0[94];
  if (v2 >> 60 == 15)
  {
    (*(v0[64] + 8))(v0[69], v0[63]);
    goto LABEL_6;
  }

  v3 = v0[9];
  v4 = v0[69];
  v6 = v0[63];
  v5 = v0[64];
  v7 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithData:isa];

  sub_100010F9C(v3, v2);
  (*(v5 + 8))(v4, v6);
  if (v9)
  {
    v10 = v1[63];
    v11 = v1[64];
    v12 = v1[61];
    v13 = v1[50];
    v14 = v1[28];
    URLComponents.init()();
    sub_1000070BC(v14, v12, &qword_10001D298, &qword_100014E40);
    v15 = *(v11 + 48);
    v423 = v1;
    v410 = v9;
    if (v15(v12, 1, v10) == 1)
    {
      sub_100007124(v1[61], &qword_10001D298, &qword_100014E40);
    }

    else
    {
      v28 = v1[47];
      v29 = v1[48];
      v30 = v1[46];
      (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v29 + 48))(v30, 1, v28) == 1)
      {
        v31 = v1[46];
        (*(v1[64] + 8))(v1[68], v1[63]);
        sub_100007124(v31, &qword_10001D440, &qword_100014ED0);
      }

      else
      {
        (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
        v32 = URLComponents.queryItems.getter();
        if (v32)
        {
          v404 = v15;
          v33 = v1[68];
          v418 = *(v32 + 16);
          if (v418)
          {
            v398 = v32;
            v34 = v1[45];
            ATURL.Parser.init()();
            type metadata accessor for ATPayload();
            sub_1000110C8(&qword_10001D558, &type metadata accessor for ATPayload);
            sub_1000110C8(&qword_10001D560, &type metadata accessor for ATPayload);
            ATURL.Parser.parse<A>(_:from:)();
            v144 = v1[26];
            v145 = ATPayload.question.getter();
            ATQuestion.notificationText.getter();
            v147 = v146;

            if (!v147)
            {
              v148 = ATPayload.question.getter();
              ATQuestion.summary.getter();
            }

            v149 = v1[80];
            v150 = v1[40];
            MessageDetails.notificationCaption.setter();

            v151 = 0;
            v152 = (v150 + 8);
            do
            {
              v153 = v151;
              if (v418 == v151)
              {
                break;
              }

              if (v151 >= v398[2])
              {
                __break(1u);
                return static AppBundleResolver.resolveThumbnail(_:_:)(v26, v27, v25);
              }

              (*(v150 + 16))(v423[42], v398 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v151, v423[39]);
              v154 = URLQueryItem.name.getter();
              v156 = v423[42];
              v157 = v423[39];
              v158 = v154 == 0x69616E626D756874 && v155 == 0xED0000617461446CLL;
              if (v158)
              {

                (*v152)(v156, v157);
                break;
              }

              ++v151;
              v159 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v26 = (*v152)(v156, v157);
            }

            while ((v159 & 1) == 0);
            v1 = v423;
            v310 = v423[68];
            v311 = v423[63];
            v312 = v423[64];
            v314 = v423[48];
            v313 = v423[49];
            v315 = v423[47];
            (*(v423[44] + 8))(v423[45], v423[43]);
            (*(v314 + 8))(v313, v315);
            (*(v312 + 8))(v310, v311);
            v158 = v418 == v153;
            v15 = v404;
            v9 = v410;
            v38 = v398;
            if (v158)
            {
              goto LABEL_18;
            }

            v316 = v423[38];
            static PeopleLogger.messages.getter();
            v317 = Logger.logObject.getter();
            v318 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v317, v318))
            {
              v319 = swift_slowAlloc();
              *v319 = 0;
              _os_log_impl(&_mh_execute_header, v317, v318, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v319, 2u);
            }

            v320 = v423[80];
            v321 = v423[38];
            v322 = v423[29];
            v323 = v423[30];

            (*(v323 + 8))(v321, v322);
            goto LABEL_23;
          }

          v139 = v1[63];
          v140 = v1[64];
          v142 = v1[48];
          v141 = v1[49];
          v143 = v1[47];

          (*(v142 + 8))(v141, v143);
          (*(v140 + 8))(v33, v139);
          v38 = &_swiftEmptyArrayStorage;
          v15 = v404;
LABEL_18:
          v39 = v1[80];
          v40 = MessageDetails.thumbnailData.getter();
          if (v41 >> 60 != 15)
          {
            sub_100010F9C(v40, v41);
            goto LABEL_24;
          }

          v42 = UIImagePNGRepresentation(v9);
          if (v42)
          {
            v43 = v42;
            static Data._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v44 = v1[80];
LABEL_23:
          MessageDetails.thumbnailData.setter();
LABEL_24:
          v45 = v1[80];
          v46 = v1[37];
          MessageDetails.queryItems.getter();
          static PeopleLogger.messages.getter();

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v382 = v48;
            v49 = swift_slowAlloc();
            v378 = swift_slowAlloc();
            v425 = v378;
            *v49 = 134218242;
            *(v49 + 4) = v38[2];

            v386 = v49;
            *(v49 + 12) = 2080;
            v50 = v38[2];
            v399 = v38;
            if (v50)
            {
              v405 = v15;
              v51 = v423[40];
              v426[0] = &_swiftEmptyArrayStorage;
              sub_10000B1C8(0, v50, 0);
              v52 = &_swiftEmptyArrayStorage;
              v53 = *(v51 + 16);
              v51 += 16;
              v54 = v38 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
              v413 = *(v51 + 56);
              v419 = v53;
              v55 = (v51 - 8);
              do
              {
                v56 = v423[41];
                v57 = v423[39];
                v419(v56, v54, v57);
                v58 = URLQueryItem.name.getter();
                v60 = v59;
                (*v55)(v56, v57);
                v426[0] = v52;
                v62 = v52[2];
                v61 = v52[3];
                if (v62 >= v61 >> 1)
                {
                  sub_10000B1C8((v61 > 1), v62 + 1, 1);
                  v52 = v426[0];
                }

                v52[2] = v62 + 1;
                v63 = &v52[2 * v62];
                *(v63 + 4) = v58;
                *(v63 + 5) = v60;
                v54 += v413;
                --v50;
              }

              while (v50);
              v15 = v405;
            }

            v67 = v423[37];
            v68 = v423[29];
            v69 = v423[30];
            v70 = Array.description.getter();
            v72 = v71;
            v1 = v423;

            v73 = sub_100007DDC(v70, v72, &v425);

            *(v386 + 14) = v73;
            _os_log_impl(&_mh_execute_header, v47, v382, "Appending %ld additional components to conversation url: %s", v386, 0x16u);
            sub_10000701C(v378);

            v420 = *(v69 + 8);
            v420(v67, v68);
            v9 = v410;
            v38 = v399;
          }

          else
          {
            v64 = v1[37];
            v65 = v1[29];
            v66 = v1[30];

            v420 = *(v66 + 8);
            v420(v64, v65);
          }

          v74 = v1[63];
          v75 = v1[60];
          v76 = v1[50];
          sub_10000AE1C(v38);
          URLComponents.queryItems.setter();
          URLComponents.url.getter();
          if (v15(v75, 1, v74) == 1)
          {
            v77 = v1[92];
            v78 = v1[90];
            v79 = v1[88];
            v80 = v1[86];
            v400 = v1[84];
            v406 = v1[85];
            v81 = v1[79];
            v414 = v1[78];
            v421 = v1[80];
            v390 = v1[71];
            v395 = v1[77];
            v82 = v9;
            v83 = v1[60];
            v84 = v1;
            v85 = v1[50];
            v87 = v84[47];
            v86 = v84[48];

            sub_100007124(v83, &qword_10001D298, &qword_100014E40);
            static PeopleErrors.createError(_:code:)();
            swift_willThrow();

            (*(v86 + 8))(v85, v87);
            v400(v395, v390);
            (*(v81 + 8))(v421, v414);
            goto LABEL_101;
          }

          v88 = *(v1 + 784);
          (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
          if (v88 != 1)
          {
            v112 = v1[80];
            v113 = [objc_allocWithZone(MSMessageTemplateLayout) init];
            [v113 setImage:v9];
            MessageDetails.notificationCaption.getter();
            v114 = String._bridgeToObjectiveC()();

            [v113 setCaption:v114];

            v115 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v113];
            v116 = v115;
LABEL_83:
            v408 = v116;
            v227 = v1[80];
            v228 = v1[67];
            v229 = v1[34];
            v230 = [objc_allocWithZone(MSSession) init];
            v231 = [objc_allocWithZone(MSMessage) initWithSession:v230];

            URL._bridgeToObjectiveC()(v232);
            v234 = v233;
            [v231 setURL:v233];

            [v231 setLayout:v116];
            MessageDetails.notificationCaption.getter();
            v235 = String._bridgeToObjectiveC()();

            [v231 setSummaryText:v235];

            static PeopleLogger.messages.getter();
            v236 = v231;
            v237 = Logger.logObject.getter();
            v238 = static os_log_type_t.debug.getter();

            v416 = v236;
            if (os_log_type_enabled(v237, v238))
            {
              v239 = swift_slowAlloc();
              v240 = swift_slowAlloc();
              v426[0] = v240;
              *v239 = 136315138;
              v241 = [v236 URL];
              if (v241)
              {
                v242 = v1[55];
                v243 = v241;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v244 = 0;
              }

              else
              {
                v244 = 1;
              }

              v248 = v1[54];
              v249 = v1[34];
              v251 = v1[29];
              v250 = v1[30];
              (*(v1[64] + 56))(v1[55], v244, 1, v1[63]);
              v252 = String.init<A>(describing:)();
              v254 = sub_100007DDC(v252, v253, v426);

              *(v239 + 4) = v254;
              _os_log_impl(&_mh_execute_header, v237, v238, "message url %s", v239, 0xCu);
              sub_10000701C(v240);

              v420(v249, v251);
              v9 = v410;
              v236 = v416;
            }

            else
            {
              v245 = v1[34];
              v246 = v1[29];
              v247 = v1[30];

              v420(v245, v246);
            }

            v255 = v9;
            v256 = UIImageJPEGRepresentation(v255, 0.4);
            if (v256)
            {
              v257 = v256;
              v258 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v260 = v259;

              v396 = v260;
              v402 = v258;
              v261.super.isa = Data._bridgeToObjectiveC()().super.isa;
            }

            else
            {

              v261.super.isa = 0;
              v396 = 0xF000000000000000;
              v402 = 0;
            }

            v262 = v1[92];
            v263 = v1[90];
            v264 = v1[88];
            v265 = v1[87];
            v266 = v1[86];

            String.localized.getter();

            v267 = String._bridgeToObjectiveC()();

            v268 = [v236 ppl_pluginPayloadWithAppIconData:v261.super.isa appName:v267 allowDataPayloads:0];

            v269 = [v268 data];
            v411 = v255;
            if (v269)
            {
              v270 = v1[33];
              v424 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v392 = v271;

              static PeopleLogger.messages.getter();
              v272 = Logger.logObject.getter();
              v273 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v272, v273))
              {
                v274 = swift_slowAlloc();
                *v274 = 0;
                _os_log_impl(&_mh_execute_header, v272, v273, "SPI Payload successful!", v274, 2u);
              }

              v328 = v1[84];
              v329 = v1[85];
              v275 = v1[79];
              v330 = v1[78];
              v331 = v1[80];
              v276 = v1;
              v332 = v1[76];
              v333 = v1[75];
              v334 = v1[74];
              v335 = v1[73];
              v326 = v1[71];
              v327 = v1[77];
              v336 = v1[70];
              v337 = v1[69];
              v338 = v1[68];
              v339 = v1[66];
              v277 = v1[64];
              v324 = v1[63];
              v325 = v1[67];
              v340 = v1[65];
              v341 = v1[62];
              v342 = v1[61];
              v343 = v1[60];
              v344 = v1[59];
              v346 = v1[58];
              v348 = v1[57];
              v350 = v1[56];
              v352 = v1[55];
              v354 = v1[53];
              v278 = v1[50];
              v280 = v1[47];
              v279 = v1[48];
              v356 = v1[49];
              v358 = v1[46];
              v360 = v1[45];
              v362 = v1[42];
              v364 = v1[41];
              v366 = v1[38];
              v369 = v1[37];
              v372 = v1[36];
              v375 = v1[35];
              v281 = v1[33];
              v379 = v1[34];
              v383 = v1[32];
              v387 = v1[31];
              v282 = v1[30];
              v283 = v276[29];

              sub_100010F9C(v402, v396);
              v420(v281, v283);
              (*(v277 + 8))(v325, v324);
              (*(v279 + 8))(v278, v280);
              v328(v327, v326);
              (*(v275 + 8))(v331, v330);

              v284 = v276[1];

              return v284(v424, v392);
            }

            v286 = v1[32];
            static PeopleLogger.messages.getter();
            v287 = Logger.logObject.getter();
            v288 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v287, v288))
            {
              v289 = swift_slowAlloc();
              *v289 = 0;
              _os_log_impl(&_mh_execute_header, v287, v288, "Message _pluginPayload create failed", v289, 2u);
            }

            v380 = v1[84];
            v384 = v1[85];
            v290 = v1[79];
            v388 = v1[78];
            v393 = v1[80];
            v373 = v1[71];
            v376 = v1[77];
            v291 = v1[67];
            v84 = v1;
            v294 = v1 + 63;
            v293 = v1[63];
            v292 = v294[1];
            v295 = v84[48];
            v367 = v84[47];
            v370 = v84[50];
            v296 = v84[32];
            v297 = v84[29];
            v298 = v84[30];

            v420(v296, v297);
            static PeopleErrors.createError(_:code:)();
            swift_willThrow();

            sub_100010F9C(v402, v396);
            (*(v292 + 8))(v291, v293);
            (*(v295 + 8))(v370, v367);
            v380(v376, v373);
            (*(v290 + 8))(v393, v388);
LABEL_101:
            v299 = v84[80];
            v300 = v84[77];
            v301 = v84[76];
            v302 = v84[75];
            v303 = v84[74];
            v304 = v84[73];
            v305 = v84[70];
            v306 = v84[69];
            v307 = v84[68];
            v308 = v84[67];
            v345 = v84[66];
            v347 = v84[65];
            v349 = v84[62];
            v351 = v84[61];
            v353 = v84[60];
            v355 = v84[59];
            v357 = v84[58];
            v359 = v84[57];
            v361 = v84[56];
            v363 = v84[55];
            v365 = v84[53];
            v368 = v84[50];
            v371 = v84[49];
            v374 = v84[46];
            v377 = v84[45];
            v381 = v84[42];
            v385 = v84[41];
            v389 = v84[38];
            v394 = v84[37];
            v397 = v84[36];
            v403 = v84[35];
            v409 = v84[34];
            v412 = v84[33];
            v417 = v84[32];
            v422 = v84[31];

            v309 = v84[1];

            return v309();
          }

          v407 = v15;
          v89 = v1[77];
          v90 = v1[75];
          v91 = v1[72];
          v92 = v1[71];
          v93 = v1[36];
          static PeopleLogger.messages.getter();
          (*(v91 + 16))(v90, v89, v92);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.debug.getter();
          v96 = os_log_type_enabled(v94, v95);
          v97 = v1[85];
          v98 = v1[84];
          v99 = v1[75];
          v100 = v1[71];
          v101 = v1[36];
          v102 = v1[29];
          v415 = v1[30];
          if (v96)
          {
            v401 = v1[29];
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v426[0] = v104;
            *v103 = 136315138;
            v105 = MessageDetails.EventSource.rawValue.getter();
            v391 = v101;
            v107 = v106;
            v98(v99, v100);
            v108 = v105;
            v1 = v423;
            v109 = sub_100007DDC(v108, v107, v426);

            *(v103 + 4) = v109;
            _os_log_impl(&_mh_execute_header, v94, v95, "Using LP fallback for %s", v103, 0xCu);
            sub_10000701C(v104);

            v110 = v391;
            v111 = v401;
          }

          else
          {

            v98(v99, v100);
            v110 = v101;
            v111 = v102;
          }

          v420(v110, v111);
          v117 = v1[83];
          v118 = v1[82];
          v119 = v1[77];
          v120 = enum case for MessageDetails.EventSource.screenTime(_:);
          (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v121 = v1[85];
          v122 = v1[84];
          v123 = v1[74];
          v124 = v1[71];
          if (v1[18] == v1[20] && v1[19] == v1[21])
          {
            v122(v1[74], v1[71]);
          }

          else
          {
            v125 = v1[19];
            v126 = v1[21];
            v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v122(v123, v124);

            if ((v127 & 1) == 0)
            {
              v136 = v1[80];
              MessageDetails.title.getter();
              v137 = String.trim()();

              if (v137._countAndFlagsBits == static MessageDetails.titleFallbackKey.getter() && v137._object == v138)
              {
              }

              else
              {
                v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v160 & 1) == 0)
                {
                  v162 = v1[80];
                  MessageDetails.title.getter();
                  goto LABEL_63;
                }
              }

              v161 = v1[80];
              MessageDetails.notificationCaption.getter();
LABEL_63:
              v163 = v1[83];
              v164 = v1[82];
              v165 = v1[81];
              v166 = v1[77];
              v167 = v1[73];
              v168 = v1[71];
              (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
              v165(v167, v120, v168);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v169 = v1[85];
              v170 = v1[84];
              v171 = v1[73];
              v172 = v1[71];
              if (v1[22] == v1[24] && v1[23] == v1[25])
              {
                v170(v1[73], v1[71]);
              }

              else
              {
                v173 = v1[23];
                v174 = v1[25];
                v175 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v170(v171, v172);

                if ((v175 & 1) == 0)
                {
                  type metadata accessor for ServerFeatureFlag();
                  static ServerFeatureFlag.shared.getter();
                  ServerFeatureFlag.lpForAskToBuyFallback.getter();
                  goto LABEL_69;
                }
              }

              type metadata accessor for ServerFeatureFlag();
              static ServerFeatureFlag.shared.getter();
              ServerFeatureFlag.lpForScreenTimeFallback.getter();
LABEL_69:

              object = String.trimToNil()().value._object;

              if (object)
              {
                v178 = v1[58];
                v177 = v1[59];
                URL.init(string:)();

                sub_100010FB0(v178, v177);
              }

              v179 = v1[63];
              v180 = v1[57];
              sub_1000070BC(v1[59], v180, &qword_10001D298, &qword_100014E40);
              LODWORD(v179) = v407(v180, 1, v179);
              sub_100007124(v180, &qword_10001D298, &qword_100014E40);
              if (v179 == 1)
              {
                v181 = v1[90];
                v182 = v1[89];
                v183 = v1[58];
                v184 = v1[59];
                URL.init(string:)();
                sub_100010FB0(v183, v184);
              }

              v185 = v1[35];
              static PeopleLogger.messages.getter();
              v186 = Logger.logObject.getter();
              v187 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v186, v187))
              {
                v188 = v1[63];
                v189 = v1[59];
                v190 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                *v190 = 138412290;
                swift_beginAccess();
                v192 = v407(v189, 1, v188);
                v193 = 0;
                if (!v192)
                {
                  v194 = v1[66];
                  v195 = v1[63];
                  v196 = v1[64];
                  (*(v196 + 16))(v194, v1[59], v195);
                  v197 = URL.absoluteString.getter();
                  v199 = v198;
                  (*(v196 + 8))(v194, v195);
                  sub_100011020();
                  swift_allocError();
                  *v200 = v197;
                  v200[1] = v199;
                  v1 = v423;
                  v193 = _swift_stdlib_bridgeErrorToNSError();
                }

                *(v190 + 4) = v193;
                *v191 = v193;
                _os_log_impl(&_mh_execute_header, v186, v187, "alternate url %@", v190, 0xCu);
                sub_100007124(v191, &qword_10001D450, &qword_100014FB0);
              }

              v201 = v1[63];
              v202 = v1[59];
              v203 = v1[56];
              v204 = v1[35];
              v206 = v1[29];
              v205 = v1[30];

              v420(v204, v206);
              swift_beginAccess();
              sub_1000070BC(v202, v203, &qword_10001D298, &qword_100014E40);
              v208 = 0;
              v9 = v410;
              if (v407(v203, 1, v201) != 1)
              {
                v209 = v1[63];
                v210 = v1[64];
                v211 = v1[56];
                URL._bridgeToObjectiveC()(v207);
                v208 = v212;
                (*(v210 + 8))(v211, v209);
              }

              v213 = String._bridgeToObjectiveC()();

              v214 = UIImagePNGRepresentation(v410);
              if (v214)
              {
                v215 = v214;
                v216 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v218 = v217;

                v219.super.isa = Data._bridgeToObjectiveC()().super.isa;
                sub_100007068(v216, v218);
              }

              else
              {
                v219.super.isa = 0;
              }

              v220 = v1[92];
              v221 = v1[91];
              v222 = v1[59];
              v223 = [objc_opt_self() createRichLinkLayoutWithURL:v208 title:v213 imageData:v219.super.isa];

              v224 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v223];
              sub_100006FA4(&qword_10001D538, &qword_100014FA8);
              v225 = swift_allocObject();
              *(v225 + 16) = xmmword_100014F30;
              *(v225 + 32) = v221;
              *(v225 + 40) = v220;

              v116 = v224;
              v226 = Array._bridgeToObjectiveC()().super.isa;

              [v116 setPpl_requiredCapabilities:v226];

              sub_100007124(v222, &qword_10001D298, &qword_100014E40);
              goto LABEL_83;
            }
          }

          v128 = v1[80];
          String.localized.getter();
          sub_100006FA4(&qword_10001D548, &qword_100014FB8);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_100014F20;
          v130 = MessageDetails.childName.getter();
          v132 = v131;
          *(v129 + 56) = &type metadata for String;
          v133 = sub_100011074();
          *(v129 + 64) = v133;
          *(v129 + 32) = v130;
          *(v129 + 40) = v132;
          v134 = MessageDetails.title.getter();
          *(v129 + 96) = &type metadata for String;
          *(v129 + 104) = v133;
          *(v129 + 72) = v134;
          *(v129 + 80) = v135;
          String.init(format:_:)();

          goto LABEL_63;
        }

        v35 = v1[68];
        v36 = v1[63];
        v37 = v1[64];
        (*(v1[48] + 8))(v1[49], v1[47]);
        (*(v37 + 8))(v35, v36);
      }
    }

    v38 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_6:
  v16 = v1[80];
  v18 = v1[52];
  v17 = v1[53];
  v19 = v1[51];
  v20 = MessageDetails.bundleId.getter();
  v22 = v21;
  v1[95] = v21;
  type metadata accessor for AppBundleResolver();
  if (!v22)
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  (*(v18 + 104))(v17, enum case for FirstPartyApps.none(_:), v19);
  v23 = async function pointer to static AppBundleResolver.resolveThumbnail(_:_:)[1];
  v24 = swift_task_alloc();
  v1[96] = v24;
  *v24 = v1;
  v24[1] = sub_10000EC4C;
  v25 = v1[53];
  v26 = v20;
  v27 = v22;

  return static AppBundleResolver.resolveThumbnail(_:_:)(v26, v27, v25);
}

uint64_t sub_10000EC4C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = a2;
  v5 = v3[96];
  v6 = v3[53];
  v7 = v3[52];
  v8 = v3[51];
  v3[95];
  v10 = *v2;
  v4[97] = a2;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_10000EDD8, 0, 0);
}

void sub_10000EDD8()
{
  v413 = v0;
  v1 = v0;
  v2 = v0[97];
  if (v2 >> 60 == 15 || (v3 = v0[12], v4 = objc_allocWithZone(UIImage), isa = Data._bridgeToObjectiveC()().super.isa, v6 = [v4 initWithData:isa], isa, sub_100010F9C(v3, v2), !v6))
  {
    v7 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() imageNamed:v7];
  }

  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = v0[50];
  v12 = v0[28];
  URLComponents.init()();
  sub_1000070BC(v12, v10, &qword_10001D298, &qword_100014E40);
  v13 = *(v9 + 48);
  v410 = v0;
  v399 = v6;
  if (v13(v10, 1, v8) == 1)
  {
    sub_100007124(v0[61], &qword_10001D298, &qword_100014E40);
LABEL_12:
    v24 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v14 = v0[47];
  v15 = v0[48];
  v16 = v1[46];
  (*(v1[64] + 32))(v1[68], v1[61], v1[63]);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v1[46];
    (*(v1[64] + 8))(v1[68], v1[63]);
    sub_100007124(v17, &qword_10001D440, &qword_100014ED0);
    goto LABEL_12;
  }

  (*(v1[48] + 32))(v1[49], v1[46], v1[47]);
  v18 = URLComponents.queryItems.getter();
  if (!v18)
  {
    v21 = v1[68];
    v22 = v1[63];
    v23 = v1[64];
    (*(v1[48] + 8))(v1[49], v1[47]);
    (*(v23 + 8))(v21, v22);
    goto LABEL_12;
  }

  v19 = v1[68];
  v407 = *(v18 + 16);
  if (!v407)
  {
    v126 = v1[63];
    v127 = v1[64];
    v129 = v1[48];
    v128 = v1[49];
    v130 = v1[47];

    (*(v129 + 8))(v128, v130);
    (*(v127 + 8))(v19, v126);
    v24 = &_swiftEmptyArrayStorage;
LABEL_13:
    v25 = v1[80];
    v26 = MessageDetails.thumbnailData.getter();
    if (v27 >> 60 == 15)
    {
      if (v6)
      {
        v28 = UIImagePNGRepresentation(v6);
        if (v28)
        {
          v29 = v28;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v30 = v1[80];
      MessageDetails.thumbnailData.setter();
    }

    else
    {
      sub_100010F9C(v26, v27);
    }

    goto LABEL_19;
  }

  v384 = v18;
  v20 = v1[45];
  ATURL.Parser.init()();
  type metadata accessor for ATPayload();
  sub_1000110C8(&qword_10001D558, &type metadata accessor for ATPayload);
  sub_1000110C8(&qword_10001D560, &type metadata accessor for ATPayload);
  ATURL.Parser.parse<A>(_:from:)();
  v131 = v1[26];
  v132 = ATPayload.question.getter();
  ATQuestion.notificationText.getter();
  v134 = v133;

  v396 = v13;
  if (!v134)
  {
    v135 = ATPayload.question.getter();
    ATQuestion.summary.getter();
  }

  v136 = v1[80];
  v137 = v1[40];
  MessageDetails.notificationCaption.setter();

  v138 = 0;
  v139 = (v137 + 8);
  do
  {
    v140 = v138;
    if (v407 == v138)
    {
      break;
    }

    if (v138 >= v384[2])
    {
      __break(1u);
      return;
    }

    (*(v137 + 16))(v410[42], v384 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v138, v410[39]);
    v141 = URLQueryItem.name.getter();
    v143 = v410[42];
    v144 = v410[39];
    if (v141 == 0x69616E626D756874 && v142 == 0xED0000617461446CLL)
    {

      (*v139)(v143, v144);
      break;
    }

    ++v138;
    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v139)(v143, v144);
  }

  while ((v146 & 1) == 0);
  v1 = v410;
  v298 = v410[68];
  v299 = v410[63];
  v300 = v410[64];
  v302 = v410[48];
  v301 = v410[49];
  v303 = v410[47];
  (*(v410[44] + 8))(v410[45], v410[43]);
  (*(v302 + 8))(v301, v303);
  (*(v300 + 8))(v298, v299);
  v13 = v396;
  v6 = v399;
  v24 = v384;
  if (v407 == v140)
  {
    goto LABEL_13;
  }

  v304 = v410[38];
  static PeopleLogger.messages.getter();
  v305 = Logger.logObject.getter();
  v306 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v305, v306))
  {
    v307 = swift_slowAlloc();
    *v307 = 0;
    _os_log_impl(&_mh_execute_header, v305, v306, "AskTo supplied the thumbnail data. Removing the existing thumbnailData.", v307, 2u);
  }

  v308 = v410[80];
  v309 = v410[38];
  v310 = v410[29];
  v311 = v410[30];

  (*(v311 + 8))(v309, v310);
  MessageDetails.thumbnailData.setter();
  v24 = v384;
LABEL_19:
  v31 = v1[80];
  v32 = v1[37];
  MessageDetails.queryItems.getter();
  static PeopleLogger.messages.getter();

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v374 = v34;
    v393 = v13;
    v35 = swift_slowAlloc();
    v370 = swift_slowAlloc();
    v411 = v370;
    *v35 = 134218242;
    *(v35 + 4) = v24[2];

    v378 = v35;
    *(v35 + 12) = 2080;
    v36 = v24[2];
    v385 = v24;
    if (v36)
    {
      v37 = v1[40];
      v412[0] = &_swiftEmptyArrayStorage;
      sub_10000B1C8(0, v36, 0);
      v38 = &_swiftEmptyArrayStorage;
      v39 = *(v37 + 16);
      v37 += 16;
      v40 = v24 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v402 = *(v37 + 56);
      v408 = v39;
      v41 = (v37 - 8);
      do
      {
        v42 = v410[41];
        v43 = v410[39];
        v408(v42, v40, v43);
        v44 = URLQueryItem.name.getter();
        v46 = v45;
        (*v41)(v42, v43);
        v412[0] = v38;
        v48 = v38[2];
        v47 = v38[3];
        if (v48 >= v47 >> 1)
        {
          sub_10000B1C8((v47 > 1), v48 + 1, 1);
          v38 = v412[0];
        }

        v38[2] = v48 + 1;
        v49 = &v38[2 * v48];
        *(v49 + 4) = v44;
        *(v49 + 5) = v46;
        v40 += v402;
        --v36;
      }

      while (v36);
      v1 = v410;
      v6 = v399;
    }

    v55 = v1[37];
    v57 = v1[29];
    v56 = v1[30];
    v58 = Array.description.getter();
    v60 = v59;

    v61 = sub_100007DDC(v58, v60, &v411);

    *(v378 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v33, v374, "Appending %ld additional components to conversation url: %s", v378, 0x16u);
    sub_10000701C(v370);

    v53 = *(v56 + 8);
    v53(v55, v57);
    v13 = v393;
    v54 = v385;
  }

  else
  {
    v50 = v1[37];
    v51 = v1[29];
    v52 = v1[30];

    v53 = *(v52 + 8);
    v53(v50, v51);
    v54 = v24;
  }

  v62 = v1[63];
  v63 = v1[60];
  v64 = v1[50];
  sub_10000AE1C(v54);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if (v13(v63, 1, v62) == 1)
  {
    v65 = v1[92];
    v66 = v6;
    v67 = v1[90];
    v68 = v1[88];
    v69 = v1[86];
    v390 = v1[84];
    v394 = v1[85];
    v70 = v1[79];
    v400 = v1[78];
    v403 = v1[80];
    v379 = v1[71];
    v386 = v1[77];
    v71 = v1[60];
    v72 = v1;
    v73 = v1[50];
    v75 = v72[47];
    v74 = v72[48];

    sub_100007124(v71, &qword_10001D298, &qword_100014E40);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();

    (*(v74 + 8))(v73, v75);
    v390(v386, v379);
    (*(v70 + 8))(v403, v400);
LABEL_100:
    v287 = v72[80];
    v288 = v72[77];
    v289 = v72[76];
    v290 = v72[75];
    v291 = v72[74];
    v292 = v72[73];
    v293 = v72[70];
    v294 = v72[69];
    v295 = v72[68];
    v296 = v72[67];
    v332 = v72[66];
    v334 = v72[65];
    v336 = v72[62];
    v338 = v72[61];
    v340 = v72[60];
    v342 = v72[59];
    v344 = v72[58];
    v346 = v72[57];
    v348 = v72[56];
    v350 = v72[55];
    v352 = v72[53];
    v354 = v72[50];
    v357 = v72[49];
    v360 = v72[46];
    v363 = v72[45];
    v366 = v72[42];
    v369 = v72[41];
    v373 = v72[38];
    v377 = v72[37];
    v383 = v72[36];
    v389 = v72[35];
    v392 = v72[34];
    v398 = v72[33];
    v401 = v72[32];
    v406 = v72[31];

    v297 = v72[1];

    v297();
    return;
  }

  v76 = *(v1 + 784);
  (*(v1[64] + 32))(v1[67], v1[60], v1[63]);
  v77 = &MSMessageConverter__metaData;
  v409 = v53;
  if (v76 != 1)
  {
    v99 = v1[80];
    v100 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    [v100 setImage:v6];
    MessageDetails.notificationCaption.getter();
    v101 = String._bridgeToObjectiveC()();

    [v100 setCaption:v101];

    v102 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v100];
    v103 = v102;
    goto LABEL_80;
  }

  v395 = v13;
  v78 = v1[77];
  v79 = v1[75];
  v80 = v1[72];
  v81 = v1[71];
  v82 = v1[36];
  static PeopleLogger.messages.getter();
  (*(v80 + 16))(v79, v78, v81);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v1[85];
  v87 = v1[84];
  v88 = v1[75];
  v89 = v1[71];
  v90 = v1[36];
  v91 = v1[29];
  v404 = v1[30];
  if (v85)
  {
    v387 = v1[29];
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v412[0] = v93;
    *v92 = 136315138;
    v94 = MessageDetails.EventSource.rawValue.getter();
    v380 = v90;
    v96 = v95;
    v87(v88, v89);
    v97 = v94;
    v1 = v410;
    v98 = sub_100007DDC(v97, v96, v412);

    *(v92 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v83, v84, "Using LP fallback for %s", v92, 0xCu);
    sub_10000701C(v93);

    v409(v380, v387);
  }

  else
  {

    v87(v88, v89);
    v53(v90, v91);
  }

  v104 = v1[83];
  v105 = v1[82];
  v106 = v1[77];
  v107 = enum case for MessageDetails.EventSource.screenTime(_:);
  (v1[81])(v1[74], enum case for MessageDetails.EventSource.screenTime(_:), v1[71]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v108 = v1[85];
  v109 = v1[84];
  v110 = v1[74];
  v111 = v1[71];
  if (v1[18] == v1[20] && v1[19] == v1[21])
  {
    v109(v1[74], v1[71]);

LABEL_39:
    v115 = v1[80];
    String.localized.getter();
    sub_100006FA4(&qword_10001D548, &qword_100014FB8);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_100014F20;
    v117 = MessageDetails.childName.getter();
    v119 = v118;
    *(v116 + 56) = &type metadata for String;
    v120 = sub_100011074();
    *(v116 + 64) = v120;
    *(v116 + 32) = v117;
    *(v116 + 40) = v119;
    v121 = MessageDetails.title.getter();
    *(v116 + 96) = &type metadata for String;
    *(v116 + 104) = v120;
    *(v116 + 72) = v121;
    *(v116 + 80) = v122;
    String.init(format:_:)();

    goto LABEL_58;
  }

  v112 = v1[19];
  v113 = v1[21];
  v114 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v109(v110, v111);

  if (v114)
  {
    goto LABEL_39;
  }

  v123 = v1[80];
  MessageDetails.title.getter();
  v124 = String.trim()();

  if (v124._countAndFlagsBits == static MessageDetails.titleFallbackKey.getter() && v124._object == v125)
  {
  }

  else
  {
    v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v147 & 1) == 0)
    {
      v149 = v1[80];
      MessageDetails.title.getter();
      goto LABEL_58;
    }
  }

  v148 = v1[80];
  MessageDetails.notificationCaption.getter();
LABEL_58:
  v150 = v1[83];
  v151 = v1[82];
  v152 = v1[81];
  v153 = v1[77];
  v154 = v1[73];
  v155 = v1[71];
  (*(v1[64] + 56))(v1[59], 1, 1, v1[63]);
  v152(v154, v107, v155);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v156 = v1[85];
  v157 = v1[84];
  v158 = v1[73];
  v159 = v1[71];
  if (v1[22] == v1[24] && v1[23] == v1[25])
  {
    v157(v1[73], v1[71]);

    v53 = v409;
  }

  else
  {
    v160 = v1[23];
    v161 = v1[25];
    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v157(v158, v159);

    v53 = v409;
    if ((v162 & 1) == 0)
    {
      type metadata accessor for ServerFeatureFlag();
      static ServerFeatureFlag.shared.getter();
      ServerFeatureFlag.lpForAskToBuyFallback.getter();
      goto LABEL_64;
    }
  }

  type metadata accessor for ServerFeatureFlag();
  static ServerFeatureFlag.shared.getter();
  ServerFeatureFlag.lpForScreenTimeFallback.getter();
LABEL_64:

  object = String.trimToNil()().value._object;

  if (object)
  {
    v165 = v1[58];
    v164 = v1[59];
    URL.init(string:)();

    sub_100010FB0(v165, v164);
  }

  v166 = v1[63];
  v167 = v1[57];
  sub_1000070BC(v1[59], v167, &qword_10001D298, &qword_100014E40);
  LODWORD(v166) = v395(v167, 1, v166);
  sub_100007124(v167, &qword_10001D298, &qword_100014E40);
  if (v166 == 1)
  {
    v168 = v1[90];
    v169 = v1[89];
    v170 = v1[58];
    v171 = v1[59];
    URL.init(string:)();
    sub_100010FB0(v170, v171);
  }

  v172 = v1[35];
  static PeopleLogger.messages.getter();
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = v1[63];
    v176 = v1[59];
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *v177 = 138412290;
    swift_beginAccess();
    v179 = v395(v176, 1, v175);
    v180 = 0;
    if (!v179)
    {
      v181 = v1[66];
      v183 = v1[63];
      v182 = v1[64];
      (*(v182 + 16))(v181, v1[59], v183);
      v184 = URL.absoluteString.getter();
      v186 = v185;
      (*(v182 + 8))(v181, v183);
      sub_100011020();
      swift_allocError();
      *v187 = v184;
      v187[1] = v186;
      v1 = v410;
      v180 = _swift_stdlib_bridgeErrorToNSError();
    }

    *(v177 + 4) = v180;
    *v178 = v180;
    _os_log_impl(&_mh_execute_header, v173, v174, "alternate url %@", v177, 0xCu);
    sub_100007124(v178, &qword_10001D450, &qword_100014FB0);

    v53 = v409;
  }

  v188 = v1[63];
  v189 = v1[59];
  v190 = v1[56];
  v191 = v1[35];
  v193 = v1[29];
  v192 = v1[30];

  v53(v191, v193);
  swift_beginAccess();
  sub_1000070BC(v189, v190, &qword_10001D298, &qword_100014E40);
  v195 = 0;
  if (v395(v190, 1, v188) != 1)
  {
    v197 = v1[63];
    v196 = v1[64];
    v198 = v1[56];
    URL._bridgeToObjectiveC()(v194);
    v195 = v199;
    (*(v196 + 8))(v198, v197);
  }

  v200 = String._bridgeToObjectiveC()();

  if (v399)
  {
    v201 = UIImagePNGRepresentation(v399);
    v77 = &MSMessageConverter__metaData;
    if (v201)
    {
      v202 = v201;
      v203 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v205 = v204;

      v206.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100007068(v203, v205);
    }

    else
    {
      v206.super.isa = 0;
    }
  }

  else
  {
    v206.super.isa = 0;
    v77 = &MSMessageConverter__metaData;
  }

  v207 = v1[92];
  v208 = v1[91];
  v209 = v1[59];
  v210 = [objc_opt_self() createRichLinkLayoutWithURL:v195 title:v200 imageData:v206.super.isa];

  v211 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v210];
  sub_100006FA4(&qword_10001D538, &qword_100014FA8);
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_100014F30;
  *(v212 + 32) = v208;
  *(v212 + 40) = v207;

  v103 = v211;
  v213 = Array._bridgeToObjectiveC()().super.isa;

  [v103 setPpl_requiredCapabilities:v213];

  sub_100007124(v209, &qword_10001D298, &qword_100014E40);
  v6 = v399;
LABEL_80:
  v397 = v103;
  v214 = v1[80];
  v215 = v1[67];
  v216 = v1[34];
  v217 = [objc_allocWithZone(MSSession) v77[31].ivars];
  v218 = [objc_allocWithZone(MSMessage) initWithSession:v217];

  URL._bridgeToObjectiveC()(v219);
  v221 = v220;
  [v218 setURL:v220];

  [v218 setLayout:v103];
  MessageDetails.notificationCaption.getter();
  v222 = String._bridgeToObjectiveC()();

  [v218 setSummaryText:v222];

  static PeopleLogger.messages.getter();
  v223 = v218;
  v224 = Logger.logObject.getter();
  v225 = static os_log_type_t.debug.getter();

  v405 = v223;
  if (os_log_type_enabled(v224, v225))
  {
    v226 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v412[0] = v227;
    *v226 = 136315138;
    v228 = [v223 URL];
    if (v228)
    {
      v229 = v1[55];
      v230 = v228;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v231 = 0;
    }

    else
    {
      v231 = 1;
    }

    v235 = v1[54];
    v236 = v1[34];
    v238 = v1[29];
    v237 = v1[30];
    (*(v1[64] + 56))(v1[55], v231, 1, v1[63]);
    v239 = String.init<A>(describing:)();
    v241 = sub_100007DDC(v239, v240, v412);

    *(v226 + 4) = v241;
    _os_log_impl(&_mh_execute_header, v224, v225, "message url %s", v226, 0xCu);
    sub_10000701C(v227);

    v409(v236, v238);
    v6 = v399;
    if (!v399)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v232 = v1[34];
    v233 = v1[29];
    v234 = v1[30];

    v53(v232, v233);
    if (!v6)
    {
      goto LABEL_90;
    }
  }

  v242 = v6;
  v243 = UIImageJPEGRepresentation(v242, 0.4);
  if (v243)
  {
    v244 = v243;
    v245 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v247 = v246;

    v388 = v247;
    v391 = v245;
    v248.super.isa = Data._bridgeToObjectiveC()().super.isa;
    goto LABEL_91;
  }

LABEL_90:
  v248.super.isa = 0;
  v388 = 0xF000000000000000;
  v391 = 0;
LABEL_91:
  v249 = v1[92];
  v250 = v1[90];
  v251 = v1[88];
  v252 = v1[87];
  v253 = v1[86];

  String.localized.getter();

  v254 = String._bridgeToObjectiveC()();

  v255 = [v223 ppl_pluginPayloadWithAppIconData:v248.super.isa appName:v254 allowDataPayloads:0];

  v256 = [v255 data];
  if (!v256)
  {
    v274 = v1[32];
    static PeopleLogger.messages.getter();
    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 0;
      _os_log_impl(&_mh_execute_header, v275, v276, "Message _pluginPayload create failed", v277, 2u);
    }

    v368 = v1[84];
    v372 = v1[85];
    v278 = v1[79];
    v376 = v1[78];
    v382 = v1[80];
    v362 = v1[71];
    v365 = v1[77];
    v279 = v1[67];
    v72 = v1;
    v282 = v1 + 63;
    v281 = v1[63];
    v280 = v282[1];
    v283 = v72[48];
    v356 = v72[47];
    v359 = v72[50];
    v284 = v72[32];
    v285 = v72[29];
    v286 = v72[30];

    v409(v284, v285);
    static PeopleErrors.createError(_:code:)();
    swift_willThrow();

    sub_100010F9C(v391, v388);
    (*(v280 + 8))(v279, v281);
    (*(v283 + 8))(v359, v356);
    v368(v365, v362);
    (*(v278 + 8))(v382, v376);
    goto LABEL_100;
  }

  v257 = v1[33];
  v258 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v375 = v259;
  v381 = v258;

  static PeopleLogger.messages.getter();
  v260 = Logger.logObject.getter();
  v261 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v260, v261))
  {
    v262 = swift_slowAlloc();
    *v262 = 0;
    _os_log_impl(&_mh_execute_header, v260, v261, "SPI Payload successful!", v262, 2u);
  }

  v316 = v1[84];
  v317 = v1[85];
  v263 = v1[80];
  v264 = v1[79];
  v318 = v1[78];
  v319 = v1[76];
  v320 = v1[75];
  v321 = v1[74];
  v314 = v1[71];
  v315 = v1[77];
  v322 = v1[73];
  v323 = v1[70];
  v324 = v1[69];
  v325 = v1[68];
  v326 = v1[66];
  v327 = v1[65];
  v265 = v1[64];
  v312 = v1[63];
  v313 = v1[67];
  v328 = v1[62];
  v329 = v1[61];
  v330 = v1[60];
  v331 = v1[59];
  v333 = v1[58];
  v335 = v1[57];
  v337 = v1[56];
  v339 = v1[55];
  v266 = v1[50];
  v341 = v1[53];
  v343 = v1[49];
  v268 = v1[47];
  v267 = v1[48];
  v345 = v1[46];
  v347 = v1[45];
  v349 = v1[42];
  v351 = v1[41];
  v353 = v1[38];
  v355 = v1[37];
  v358 = v1[36];
  v269 = v1[33];
  v361 = v1[35];
  v364 = v1[34];
  v367 = v1[32];
  v371 = v1[31];
  v270 = v1;
  v271 = v1[30];
  v272 = v270[29];

  sub_100010F9C(v391, v388);
  v409(v269, v272);
  (*(v265 + 8))(v313, v312);
  (*(v267 + 8))(v266, v268);
  v316(v315, v314);
  (*(v264 + 8))(v263, v318);

  v273 = v410[1];

  v273(v381, v375);
}

uint64_t sub_100010F9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007068(a1, a2);
  }

  return a1;
}

uint64_t sub_100010FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006FA4(&qword_10001D298, &qword_100014E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100011020()
{
  result = qword_10001D540;
  if (!qword_10001D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D540);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_10001D550;
  if (!qword_10001D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001D550);
  }

  return result;
}

uint64_t sub_1000110C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011110()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000111D4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009490;

  return sub_10000A30C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000112C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000112FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011488;

  return sub_100007AF4(a1, v5);
}

uint64_t sub_1000113B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009490;

  return sub_100007AF4(a1, v5);
}

uint64_t sub_10001146C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::String __swiftcall String.trim()()
{
  v0 = String.trim()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}