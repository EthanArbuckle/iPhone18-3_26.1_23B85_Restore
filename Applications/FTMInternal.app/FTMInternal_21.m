unint64_t sub_100270974()
{
  result = qword_100379D08;
  if (!qword_100379D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D08);
  }

  return result;
}

unint64_t sub_1002709CC()
{
  result = qword_100379D10;
  if (!qword_100379D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D10);
  }

  return result;
}

unint64_t sub_100270A24()
{
  result = qword_100379D18;
  if (!qword_100379D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D18);
  }

  return result;
}

unint64_t sub_100270A7C()
{
  result = qword_100379D20;
  if (!qword_100379D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D20);
  }

  return result;
}

unint64_t sub_100270AD4()
{
  result = qword_100379D28;
  if (!qword_100379D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D28);
  }

  return result;
}

unint64_t sub_100270B2C()
{
  result = qword_100379D30;
  if (!qword_100379D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D30);
  }

  return result;
}

unint64_t sub_100270B84()
{
  result = qword_100379D38;
  if (!qword_100379D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D38);
  }

  return result;
}

unint64_t sub_100270BDC()
{
  result = qword_100379D40;
  if (!qword_100379D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D40);
  }

  return result;
}

unint64_t sub_100270C34()
{
  result = qword_100379D48;
  if (!qword_100379D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D48);
  }

  return result;
}

unint64_t sub_100270C8C()
{
  result = qword_100379D50;
  if (!qword_100379D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D50);
  }

  return result;
}

unint64_t sub_100270CE4()
{
  result = qword_100379D58;
  if (!qword_100379D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D58);
  }

  return result;
}

unint64_t sub_100270D3C()
{
  result = qword_100379D60;
  if (!qword_100379D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D60);
  }

  return result;
}

unint64_t sub_100270D94()
{
  result = qword_100379D68;
  if (!qword_100379D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D68);
  }

  return result;
}

unint64_t sub_100270DEC()
{
  result = qword_100379D70;
  if (!qword_100379D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D70);
  }

  return result;
}

unint64_t sub_100270E44()
{
  result = qword_100379D78;
  if (!qword_100379D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100379D78);
  }

  return result;
}

uint64_t sub_100270EA4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_100374FF8 != -1)
  {
    swift_once();
  }

  [v2 removeObserver:v0 name:static NSNotificationName.subsIdSelectionChange object:0];

  v3 = [v1 defaultCenter];
  if (qword_100375008 != -1)
  {
    swift_once();
  }

  [v3 removeObserver:v0 name:static NSNotificationName.dashboardMetricUpdate object:0];

  v4 = [v1 defaultCenter];
  if (qword_100375000 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v0 name:static NSNotificationName.numberOfSubsChanged object:0];

  v5 = [v1 defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  [v5 removeObserver:v0 name:static NSNotificationName.NewABMMetric object:0];

  v6 = [v1 defaultCenter];
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v0 name:static NSNotificationName.NewCTMetric object:0];

  v7 = [v1 defaultCenter];
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  [v7 removeObserver:v0 name:static NSNotificationName.isAirPlaneModeEnabled object:0];

  sub_1001AD9E4(v0 + 24);
  v8 = *(v0 + 56);

  return v0;
}

uint64_t sub_100271190()
{
  sub_100270EA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1002711C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v93 = a5;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v81);
  v80 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v79);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      if (qword_100375018 != -1)
      {
        swift_once();
      }

      v76 = qword_100382500;
      v16 = *(qword_100382500 + 26) == 1;
      v72 = a4;
      v71 = a2;
      v70 = a3;
      if (v16)
      {
        if (qword_100374FB0 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1002EED40;
        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        *(v17 + 32) = v15;
        os_log(_:dso:log:type:_:)();
      }

      else
      {
        if (qword_100374FB0 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      v77 = swift_allocObject();
      *(v77 + 16) = _swiftEmptyArrayStorage;
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v73 = &v97;
      v74 = (v9 + 8);
      v75 = (v12 + 8);
      v19 = (a1 + 56);
      v20 = v76;
      while (1)
      {
        v21 = *(v19 - 3);
        v22 = *(v19 - 2);
        v23 = *(v19 - 1);
        v24 = *v19;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v26 = *(Strong + 48);
          v27 = v21;
          v28 = v22;
          v29 = v23;
          v30 = v23;
          v31 = v24;
          v32 = v26;

          dispatch_group_enter(v32);
        }

        else
        {
          v33 = v21;
          v34 = v22;
          v29 = v23;
          v35 = v23;
          v36 = v24;
        }

        v37 = *(v20 + 156);
        v38 = *(v20 + 160);
        v39 = swift_weakLoadStrong();
        if (v38 == 1)
        {
          if (v39)
          {
            v40 = *(v39 + 48);

            dispatch_group_leave(v40);
          }
        }

        else if (v39)
        {
          v90 = *(v39 + 16);

          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v41;
          v91 = v29;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v43;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v15;
          v45 = v44;
          v82 = v46;
          v47 = swift_allocObject();
          v48 = v93;
          *(v47 + 16) = v77;
          *(v47 + 24) = v48;

          v49 = sub_10025C024();
          v89 = v49;
          v50 = swift_allocObject();
          v88 = v22;
          v51 = v50;
          *(v50 + 16) = sub_100274FE0;
          *(v50 + 24) = v47;
          v87 = *(v49 + 24);
          v52 = swift_allocObject();
          swift_weakInit();
          v53 = swift_allocObject();
          v86 = v52;
          v54 = v85;
          *(v53 + 16) = v52;
          *(v53 + 24) = v54;
          *(v53 + 32) = v84;
          *(v53 + 40) = v42;
          *(v53 + 48) = v83;
          *(v53 + 56) = v45;
          *(v53 + 64) = v82;
          *(v53 + 72) = v37;
          *(v53 + 80) = sub_1001AD9DC;
          *(v53 + 88) = v51;
          v99 = sub_1002530D4;
          v100 = v53;
          aBlock = _NSConcreteStackBlock;
          v96 = 1107296256;
          v97 = sub_10020C96C;
          v98 = &unk_1003217A8;
          v55 = _Block_copy(&aBlock);

          v85 = v21;
          v56 = v78;
          static DispatchQoS.unspecified.getter();
          v101 = _swiftEmptyArrayStorage;
          sub_100274F58(&qword_1003784A0, 255, &type metadata accessor for DispatchWorkItemFlags);
          sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
          sub_1002302F0();
          v57 = v80;
          v58 = v81;
          v15 = v92;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v55);

          v59 = v58;
          v20 = v76;
          (*v74)(v57, v59);
          (*v75)(v56, v79);

          goto LABEL_18;
        }

LABEL_18:
        v19 += 5;
        if (!--v15)
        {
          swift_beginAccess();
          v60 = swift_weakLoadStrong();
          if (v60)
          {
            v61 = *(v60 + 48);

            sub_1002181D0();
            v62 = static OS_dispatch_queue.main.getter();
            v63 = swift_allocObject();
            v64 = v70;
            v63[2] = v71;
            v63[3] = v64;
            v65 = v93;
            v63[4] = v72;
            v63[5] = v65;
            v63[6] = v77;
            v99 = sub_100274F30;
            v100 = v63;
            aBlock = _NSConcreteStackBlock;
            v96 = 1107296256;
            v97 = sub_10020C96C;
            v98 = &unk_1003216E0;
            v66 = _Block_copy(&aBlock);

            swift_errorRetain();

            v67 = v78;
            static DispatchQoS.unspecified.getter();
            v94 = _swiftEmptyArrayStorage;
            sub_100274F58(&qword_1003784A0, 255, &type metadata accessor for DispatchWorkItemFlags);
            sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
            sub_1002302F0();
            v68 = v80;
            v69 = v81;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_group.notify(qos:flags:queue:execute:)();
            _Block_release(v66);

            (*v74)(v68, v69);
            (*v75)(v67, v79);
          }
        }
      }
    }
  }

  if (qword_100374FB0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  return a3(0, a2);
}

void sub_100271C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Metric(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    sub_100275604(a1 + v10, v9, type metadata accessor for Metric);
    swift_beginAccess();
    v11 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1002250B0(0, v11[2] + 1, 1, v11);
      *(a3 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1002250B0(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    sub_10027559C(v9, v11 + v10 + *(v6 + 72) * v14, type metadata accessor for Metric);
    *(a3 + 16) = v11;
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 48);

    dispatch_group_leave(v16);
  }
}

uint64_t sub_100271E80(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    a2(0, a1);
  }

  else
  {
    swift_beginAccess();
    if (!*(*(a5 + 16) + 16))
    {
      return a2(_swiftEmptyArrayStorage, 0);
    }

    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED40;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD000000000000014;
    *(v7 + 40) = 0x80000001002BFBE0;
    print(_:separator:terminator:)();

    swift_beginAccess();
    v8 = *(a5 + 16);

    a2(v9, 0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = *(v11 + 32);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 32))(ObjectType, v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10027202C(uint64_t a1)
{
  v2 = v1;
  v188 = a1;
  v198 = type metadata accessor for Date();
  v189 = *(v198 - 8);
  v3 = *(v189 + 64);
  __chkstk_darwin(v198);
  v5 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v185 = &v179 - v7;
  v8 = sub_1001A551C(&qword_100379FD0, &qword_1002F5C58);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v179 - v13;
  __chkstk_darwin(v15);
  v17 = &v179 - v16;
  __chkstk_darwin(v18);
  v201 = &v179 - v19;
  v20 = sub_1001A551C(&qword_100379FD8, &qword_1002F5C60);
  v184 = *(v20 - 8);
  v21 = *(v184 + 64);
  __chkstk_darwin(v20);
  v194 = (&v179 - v22);
  v23 = sub_1001A551C(&qword_100379FE0, &qword_1002F5C68);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v203 = (&v179 - v28);
  v29 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  v183 = *(v29 - 8);
  v30 = *(v183 + 64);
  __chkstk_darwin(v29 - 8);
  v182 = (&v179 - v31);
  v217 = type metadata accessor for Metric(0);
  v186 = *(v217 - 8);
  v32 = *(v186 + 64);
  __chkstk_darwin(v217);
  v34 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DashboardViewModelObject();
  v220 = *(v35 - 8);
  v221 = v35;
  v36 = *(v220 + 64);
  __chkstk_darwin(v35);
  v191 = &v179 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v187 = &v179 - v39;
  __chkstk_darwin(v40);
  v190 = &v179 - v41;
  __chkstk_darwin(v42);
  v218 = (&v179 - v43);
  __chkstk_darwin(v44);
  v46 = (&v179 - v45);
  if (qword_100374FB0 != -1)
  {
LABEL_106:
    swift_once();
  }

  static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)();
  if (*(v2 + 40))
  {
    return result;
  }

  v181 = v5;
  v48 = v188;
  v49 = *(v188 + 16);
  v199 = v2;
  v180 = v11;
  v50 = v49;
  v193 = v14;
  v192 = v17;
  v200 = v20;
  v202 = v26;
  v219 = v49;
  if (v49)
  {
    v227 = _swiftEmptyArrayStorage;
    sub_1001F5644(0, v49, 0);
    v51 = 0;
    v216 = v227;
    *&v197 = v48 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
    v196 = (v189 + 16);
    v195 = *(v186 + 72);
    do
    {
      v215 = (v51 + 1);
      sub_100275604(v197 + v195 * v51, v34, type metadata accessor for Metric);
      v52 = v217;
      v53 = *&v34[*(v217 + 20)];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      i = v55;
      v214 = v54;
      v56 = *&v34[v52[12]];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v211 = v58;
      v212 = v57;
      v59 = *&v34[v52[6]];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v209 = v61;
      v210 = v60;
      v204 = *&v34[v52[8]];
      v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v207 = v62;
      v63 = *&v34[v52[7]];
      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v205 = v64;
      v65 = String.init(_:)(*&v34[v52[9]]);
      countAndFlagsBits = v65._countAndFlagsBits;
      object = v65._object;
      sub_1001A56A0();
      v68 = 15;
      v69 = &off_10031A230;
      while (1)
      {
        v70 = *(v69 - 1);
        v71 = *v69;
        v226 = v65;
        v224 = v70;
        v225 = v71;

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v69 += 2;
        if (!--v68)
        {
          goto LABEL_10;
        }
      }

      v226 = v65;
      v224 = v70;
      v225 = v71;
      v222 = 0;
      v223 = 0xE000000000000000;
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v73 = v72;

      object = v73;
LABEL_10:
      v74 = *&v34[*(v217 + 52)];
      v75 = v221;
      (*v196)(v46 + *(v221 + 44), &v34[*(v217 + 44)], v198);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = sub_1001E1BFC();
      v78 = v77;

      v79 = i;
      *v46 = v214;
      v46[1] = v79;
      v80 = v211;
      v46[2] = v212;
      v46[3] = v80;
      v81 = v209;
      v46[4] = v210;
      v46[5] = v81;
      v82 = v207;
      v46[6] = v208;
      v46[7] = v82;
      v83 = v205;
      v46[8] = v206;
      v46[9] = v83;
      v46[10] = countAndFlagsBits;
      v46[11] = object;
      *(v46 + 24) = v74;
      v84 = (v46 + *(v75 + 48));
      *v84 = v76;
      v84[1] = v78;
      sub_10027566C(v34, type metadata accessor for Metric);
      v85 = v216;
      v227 = v216;
      v14 = *(v216 + 16);
      v86 = *(v216 + 24);
      v2 = v199;
      if (v14 >= v86 >> 1)
      {
        sub_1001F5644(v86 > 1, v14 + 1, 1);
        v85 = v227;
      }

      v85[2] = v14 + 1;
      v87 = (*(v220 + 80) + 32) & ~*(v220 + 80);
      v216 = v85;
      sub_10027559C(v46, v85 + v87 + *(v220 + 72) * v14, type metadata accessor for DashboardViewModelObject);
      v50 = v219;
      v51 = v215;
    }

    while (v215 != v219);
    v17 = v192;
    v20 = v200;
    v26 = v202;
  }

  else
  {
    v216 = _swiftEmptyArrayStorage;
  }

  v88 = type metadata accessor for DashboardViewModel();
  v90 = sub_100274F58(&qword_100379FC8, v89, type metadata accessor for DashboardViewModel);
  v208 = v88;
  v212 = v90;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v91 = *(v2 + 56);
  *(v2 + 56) = v216;

  v92 = _swiftEmptyArrayStorage;
  if (v50)
  {
    v226._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1001F5604(0, v50, 0);
    v50 = 0;
    v92 = v226._countAndFlagsBits;
    v14 = v188 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
    v93 = *(v186 + 72);
    v46 = &qword_100377168;
    v94 = v183;
    v95 = v182;
    do
    {
      sub_1002738DC(v14, v95);
      v226._countAndFlagsBits = v92;
      v97 = v92[2];
      v96 = v92[3];
      if (v97 >= v96 >> 1)
      {
        sub_1001F5604(v96 > 1, v97 + 1, 1);
        v94 = v183;
        v92 = v226._countAndFlagsBits;
      }

      v92[2] = v97 + 1;
      sub_1001B603C(v95, v92 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v97, &qword_100377168, &unk_1002F5C70);
      v14 += v93;
      v219 = (v219 - 1);
    }

    while (v219);
    v17 = v192;
    v20 = v200;
    v26 = v202;
  }

  if (v92[2])
  {
    sub_1001A551C(&qword_100377158, &qword_1002F2308);
    v98 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v98 = &_swiftEmptyDictionarySingleton;
  }

  v5 = v199;
  v226._countAndFlagsBits = v98;

  sub_100275040(v99, 1, &v226);
  v196 = v50;

  v34 = v226._countAndFlagsBits;
  v100 = *(v5 + 56);
  v214 = (v184 + 48);
  v215 = (v184 + 56);
  v219 = (v220 + 56);
  v217 = v220 + 48;
  v11 = *(v100 + 16);
  v207 = (v189 + 16);
  v206 = (v189 + 32);
  v205 = (v189 + 24);
  v204 = (v189 + 8);
  v211 = v100;

  v2 = 0;
  v197 = xmmword_1002EED40;
  v209 = _swiftEmptyArrayStorage;
  for (i = v11; ; v11 = i)
  {
    while (1)
    {
      while (1)
      {
        if (v2 == v11)
        {
          v105 = 1;
          v2 = v11;
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          if (v2 >= *(v211 + 16))
          {
            goto LABEL_105;
          }

          v106 = v211 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v2;
          v107 = *(v20 + 48);
          v5 = v194;
          *v194 = v2;
          sub_100275604(v106, v5 + v107, type metadata accessor for DashboardViewModelObject);
          sub_1001B603C(v5, v26, &qword_100379FD8, &qword_1002F5C60);
          v105 = 0;
          ++v2;
        }

        (*v215)(v26, v105, 1, v20);
        v108 = v203;
        sub_1001B603C(v26, v203, &qword_100379FE0, &qword_1002F5C68);
        if ((*v214)(v108, 1, v20) == 1)
        {

          v11 = *(v209 + 2);
          v2 = v199;
          v20 = v208;
          if (v11)
          {
            v14 = (v209 + 32);
            while (1)
            {
              v158 = *v14;
              v14 += 8;
              v26 = v158;
              v159 = *(v2 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v159 = sub_1001FA794(v159);
              }

              v160 = v159[2];
              if (v26 >= v160)
              {
                break;
              }

              v46 = (v160 - 1);
              v17 = *(v220 + 72);
              v161 = v159 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + v17 * v26;
              sub_10027566C(v161, type metadata accessor for DashboardViewModelObject);
              if (v17 > 0 || v161 >= v161 + v17 + v17 * (v46 - v26))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v17)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v159[2] = v46;
              v5 = ObservableObject<>.objectWillChange.getter();
              ObservableObjectPublisher.send()();

              v157 = *(v2 + 56);
              *(v2 + 56) = v159;

              v11 = (v11 - 1);
              if (!v11)
              {
                goto LABEL_84;
              }
            }
          }

          else
          {
LABEL_84:

            v14 = (v34 + 64);
            v162 = 1 << v34[32];
            v163 = -1;
            if (v162 < 64)
            {
              v163 = ~(-1 << v162);
            }

            v17 = v163 & *(v34 + 8);
            v46 = ((v162 + 63) >> 6);

            v26 = 0;
            while (v17)
            {
              v164 = v17;
LABEL_93:
              v17 = (v164 - 1) & v164;
              if (*(v34 + 2))
              {
                v166 = (*(v34 + 6) + ((v26 << 10) | (16 * __clz(__rbit64(v164)))));
                v167 = *v166;
                v11 = v166[1];

                v168 = sub_1001F66B8(v167, v11);
                v5 = v169;

                if (v5)
                {
                  v170 = *(v220 + 72);
                  v171 = v187;
                  sub_100275604(*(v34 + 7) + v170 * v168, v187, type metadata accessor for DashboardViewModelObject);
                  v172 = v171;
                  v173 = v190;
                  sub_10027559C(v172, v190, type metadata accessor for DashboardViewModelObject);
                  sub_100275604(v173, v191, type metadata accessor for DashboardViewModelObject);
                  v174 = *(v2 + 56);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v174 = sub_100225714(0, v174[2] + 1, 1, v174);
                  }

                  v20 = v174[2];
                  v175 = v174[3];
                  if (v20 >= v175 >> 1)
                  {
                    v174 = sub_100225714(v175 > 1, v20 + 1, 1, v174);
                  }

                  v174[2] = v20 + 1;
                  v176 = v174 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + v20 * v170;
                  v11 = type metadata accessor for DashboardViewModelObject;
                  sub_10027559C(v191, v176, type metadata accessor for DashboardViewModelObject);
                  v5 = ObservableObject<>.objectWillChange.getter();
                  ObservableObjectPublisher.send()();

                  sub_10027566C(v190, type metadata accessor for DashboardViewModelObject);
                  v177 = *(v2 + 56);
                  *(v2 + 56) = v174;
                }
              }
            }

            while (1)
            {
              v165 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v165 >= v46)
              {

                sub_100274800(*(*(v2 + 56) + 16), 0);
              }

              v164 = *(v14 + 8 * v165);
              ++v26;
              if (v164)
              {
                v26 = v165;
                goto LABEL_93;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v216 = *v108;
        v109 = v218;
        sub_10027559C(v108 + *(v20 + 48), v218, type metadata accessor for DashboardViewModelObject);
        v110 = v109[5];
        v226._countAndFlagsBits = v109[4];
        v226._object = v110;

        v111 = String.init<A>(_:)();
        v113 = v112;
        v114 = v109[9];
        v226._countAndFlagsBits = v109[8];
        v226._object = v114;

        v14 = String.init<A>(_:)();
        v46 = v115;
        v226._countAndFlagsBits = v111;
        v226._object = v113;

        v116._countAndFlagsBits = v14;
        v116._object = v46;
        String.append(_:)(v116);

        v117 = v226._object;
        if (*(v34 + 2))
        {
          v118 = v226._countAndFlagsBits;
          v119 = sub_1001F66B8(v226._countAndFlagsBits, v226._object);
          if (v120)
          {
            break;
          }
        }

        v130 = v201;
        (*v219)(v201, 1, 1, v221);

        sub_1002756CC(v130);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = sub_1002248CC(0, *(v209 + 2) + 1, 1, v209);
        }

        v11 = i;
        v5 = *(v209 + 2);
        v131 = *(v209 + 3);
        if (v5 >= v131 >> 1)
        {
          v209 = sub_1002248CC((v131 > 1), v5 + 1, 1, v209);
        }

        v26 = v202;
        sub_10027566C(v218, type metadata accessor for DashboardViewModelObject);
        v132 = v209;
        *(v209 + 2) = v5 + 1;
        *&v132[8 * v5 + 32] = v216;
      }

      v121 = v220;
      v14 = *(v220 + 72);
      v5 = v201;
      sub_100275604(*(v34 + 7) + v14 * v119, v201, type metadata accessor for DashboardViewModelObject);
      v46 = *(v121 + 56);
      v122 = 1;
      (v46)(v5, 0, 1, v221);
      sub_1002756CC(v5);
      if (*(v34 + 2))
      {
        v5 = v34;
        v123 = sub_1001F66B8(v118, v117);
        if (v124)
        {
          sub_100275604(*(v34 + 7) + v123 * v14, v17, type metadata accessor for DashboardViewModelObject);
          v122 = 0;
        }
      }

      v101 = v122;
      v102 = v221;
      (v46)(v17, v101, 1, v221);
      v103 = *v217;
      if ((*v217)(v17, 1, v102))
      {
        sub_10027566C(v218, type metadata accessor for DashboardViewModelObject);
        v104 = v17;
        goto LABEL_27;
      }

      v210 = *(v17 + 80);
      v125 = v17;
      v126 = *(v17 + 88);

      sub_1002756CC(v125);
      if (*(v34 + 2) && (v127 = sub_1001F66B8(v118, v117), (v128 & 1) != 0))
      {
        sub_100275604(*(v34 + 7) + v127 * v14, v193, type metadata accessor for DashboardViewModelObject);
        v129 = 0;
      }

      else
      {
        v129 = 1;
      }

      v104 = v193;
      v5 = v221;
      (v46)(v193, v129, 1, v221);
      if (!v103(v104, 1, v5))
      {
        break;
      }

      sub_10027566C(v218, type metadata accessor for DashboardViewModelObject);

      v17 = v192;
LABEL_27:

      sub_1002756CC(v104);
      v20 = v200;
      v26 = v202;
      v11 = i;
    }

    v133 = v181;
    v134 = v198;
    (*v207)(v181, v104 + *(v221 + 44), v198);
    sub_1002756CC(v104);
    (*v206)(v185, v133, v134);
    v135 = *(v199 + 56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v137 = v216;
    if ((v216 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }

LABEL_52:
    v136 = v135[2];
    if (v137 >= v136)
    {
      goto LABEL_108;
    }

    v138 = (*(v220 + 80) + 32) & ~*(v220 + 80);
    v195 = v14 * v137;
    v139 = v135 + v138 + v14 * v137;
    v140 = *(v139 + 11);
    *(v139 + 10) = v210;
    *(v139 + 11) = v126;

    v141 = v135;
    v142 = v199;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v143 = *(v142 + 56);
    *(v142 + 56) = v141;

    v144 = *(v142 + 56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = sub_1001FA794(v144);
    }

    v17 = v192;
    v136 = *(v144 + 2);
    if (v216 >= v136)
    {
      goto LABEL_109;
    }

    (*v205)(&v144[v138 + *(v221 + 44) + v195], v185, v198);
    v145 = v199;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v146 = *(v145 + 56);
    *(v145 + 56) = v144;

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v20 = v200;
    if (*(qword_100382500 + 26) == 1)
    {
      if (qword_100374FA8 != -1)
      {
        swift_once();
      }

      v216 = qword_100382490;
      LODWORD(v210) = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v147 = swift_allocObject();
      *(v147 + 16) = v197;
      v226._countAndFlagsBits = v118;
      v226._object = v117;

      v148 = String.init<A>(_:)();
      v195 = v149;
      *(v147 + 56) = &type metadata for String;
      *(v147 + 64) = sub_1001A76E8();
      v150 = v195;
      *(v147 + 32) = v148;
      *(v147 + 40) = v150;
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      if (qword_100374FA8 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    v151 = sub_1001F66B8(v118, v117);
    if (v152)
    {
      v153 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v226._countAndFlagsBits = v34;
      v26 = v202;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001FA1D8();
        v34 = v226._countAndFlagsBits;
      }

      v155 = *(*(v34 + 6) + 16 * v153 + 8);

      v5 = v180;
      sub_10027559C(*(v34 + 7) + v153 * v14, v180, type metadata accessor for DashboardViewModelObject);
      sub_1001F8940(v153, v34);
      v156 = 0;
    }

    else
    {
      v156 = 1;
      v5 = v180;
      v26 = v202;
    }

    (v46)(v5, v156, 1, v221);

    sub_1002756CC(v5);
    (*v204)(v185, v198);
    sub_10027566C(v218, type metadata accessor for DashboardViewModelObject);
  }

  v135 = sub_1001FA794(v135);
  v137 = v216;
  if ((v216 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  v178 = *(v136 - 256);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1002738DC@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = type metadata accessor for Metric(0);
  v5 = String.init(_:)(*(a1 + v4[6]));
  v6 = String.init(_:)(*(a1 + v4[7]));

  String.append(_:)(v6);

  *a2 = v5;
  v51 = a2;
  v7 = *(a1 + v4[5]);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v9;
  v49 = v8;
  v10 = *(a1 + v4[12]);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v12;
  v47 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v14;
  v45 = v13;
  v39 = *(a1 + v4[8]);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v16;
  v43 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v18;
  v41 = v17;
  v50 = v4;
  v52 = a1;
  v19 = String.init(_:)(*(a1 + v4[9]));
  countAndFlagsBits = v19._countAndFlagsBits;
  object = v19._object;
  v22 = &off_10031A230;
  v23 = 15;
  sub_1001A56A0();
  while (1)
  {
    v24 = *(v22 - 1);
    v25 = *v22;

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v22 += 2;
    if (!--v23)
    {
      goto LABEL_6;
    }
  }

  countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v27 = v26;

  object = v27;
LABEL_6:
  v28 = v51 + *(sub_1001A551C(&qword_100377168, &unk_1002F5C70) + 48);
  v29 = *(v52 + v50[13]);
  v30 = v50[11];
  v31 = type metadata accessor for DashboardViewModelObject();
  v32 = *(v31 + 44);
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 16))(&v28[v32], v52 + v30, v33);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = sub_1001E1BFC();
  v36 = v35;

  *v28 = v49;
  *(v28 + 1) = v48;
  *(v28 + 2) = v47;
  *(v28 + 3) = v46;
  *(v28 + 4) = v45;
  *(v28 + 5) = v44;
  *(v28 + 6) = v43;
  *(v28 + 7) = v42;
  *(v28 + 8) = v41;
  *(v28 + 9) = v40;
  *(v28 + 10) = countAndFlagsBits;
  *(v28 + 11) = object;
  *(v28 + 24) = v29;
  v38 = &v28[*(v31 + 48)];
  *v38 = v34;
  v38[1] = v36;
  return result;
}

void sub_100273BB0()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v1 = swift_allocObject();
    swift_weakInit();
    swift_retain_n();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    v4[2] = sub_100274E54;
    v4[3] = v1;
    v4[4] = v3;
    v5 = *&v2[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
    if (*(v5 + 160))
    {
      v6 = v2;

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_10027403C(0, 0);
    }

    else
    {
      v7 = *(v5 + 156);
      v8 = v2;

      sub_10025C024();
      v9 = swift_allocObject();
      *(v9 + 16) = sub_100274E9C;
      *(v9 + 24) = v4;

      sub_10025FCC4(v7, sub_1001AD9DC, v9);
    }
  }
}

uint64_t sub_10027403C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10027202C(a1);
    }

    Date.init()();
    v9 = sub_1001E0710();
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 32);

    if (!v14)
    {
    }

    ObjectType = swift_getObjectType();
    (*(v15 + 16))(v9, v11, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10027202C(_swiftEmptyArrayStorage);
  }

  if (qword_100374FB0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002EED40;
  if (a2)
  {
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v28[4] = v19;
  v28[5] = v20;
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_1001A76E8();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = *(v24 + 32);

    if (v25)
    {
      v27 = swift_getObjectType();
      (*(v26 + 32))(v27, v26);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100274404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = 1;
  v8 = *a1;
  v9 = a1[1];
  v10 = String._bridgeToObjectiveC()();
  v11 = a1[2];
  v12 = a1[3];
  v13 = String._bridgeToObjectiveC()();
  v14 = a1[4];
  v15 = a1[5];
  v16 = String._bridgeToObjectiveC()();
  v17 = a1[8];
  v18 = a1[9];
  v19 = String._bridgeToObjectiveC()();
  v20 = *(a1 + 24);
  v27[0] = v10;
  v27[1] = v13;
  v27[2] = v16;
  v27[3] = v19;
  v28 = v20;
  v21 = *(v4 + 16);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v23[4] = a3;
  v24 = v21;

  sub_10025C024();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_100274E10;
  *(v25 + 24) = v23;

  sub_10025FFD0(v27, sub_100231C34, v25);
}

void sub_1002745A4(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = [objc_opt_self() defaultCenter];
    if (qword_100375008 != -1)
    {
      swift_once();
    }

    [v5 postNotificationName:static NSNotificationName.dashboardMetricUpdate object:0 userInfo:0];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 40) = 0;
    }

    a4(1, 0);
  }

  else
  {
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    v9 = String.init<A>(_:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1001A76E8();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      *(v12 + 40) = 0;
    }

    a4(0, a2);
  }
}

uint64_t sub_100274800(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100375018 != -1)
  {
    v12 = a1;
    v13 = a2;
    swift_once();
    a2 = v13;
    a1 = v12;
  }

  if (*(qword_100382500 + 155) == 1)
  {
    type metadata accessor for DashboardViewModel();
    sub_100274F58(&qword_100379FC8, v4, type metadata accessor for DashboardViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 64) = 2;
  }

  else if (*(qword_100382500 + 168) < 1)
  {
    type metadata accessor for DashboardViewModel();
    sub_100274F58(&qword_100379FC8, v10, type metadata accessor for DashboardViewModel);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 64) = 3;
  }

  else
  {
    v6 = a1;
    v7 = a2;
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002EED40;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = 0xD000000000000012;
    if ((v7 & 1) != 0 || v6 < 1)
    {
      *(v8 + 40) = 0x80000001002BFA70;
      print(_:separator:terminator:)();

      type metadata accessor for DashboardViewModel();
      sub_100274F58(&qword_100379FC8, v11, type metadata accessor for DashboardViewModel);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v3 + 64) = 0;
    }

    else
    {
      *(v8 + 40) = 0x80000001002BFA90;
      print(_:separator:terminator:)();

      type metadata accessor for DashboardViewModel();
      sub_100274F58(&qword_100379FC8, v9, type metadata accessor for DashboardViewModel);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v3 + 64) = 1;
    }
  }

  return result;
}

uint64_t sub_100274AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100274BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DashboardViewModelObject()
{
  result = qword_100379F70;
  if (!qword_100379F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100274CAC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1001BE3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100274D5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DashboardViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100274D98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100274DD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100274E1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274E5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100274EA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100274EE0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100274F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100274F58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100274FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274FE8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100275040(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for DashboardViewModelObject();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v17 = (&v61 - v16);
  v67 = *(a1 + 16);
  if (!v67)
  {
  }

  v63 = v3;
  v64 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v66 = *(v15 + 72);
  v68 = a1;
  v62 = v20;
  sub_100275734(a1 + v20, &v61 - v16);
  v21 = v17[1];
  v71 = *v17;
  v22 = v71;
  v72 = v21;
  v65 = v19;
  sub_10027559C(v17 + v19, v11, type metadata accessor for DashboardViewModelObject);
  v23 = *a3;
  v25 = sub_1001F66B8(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1001FA1D8();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1001F7EF8(v28, v18 & 1);
  v30 = *a3;
  v31 = sub_1001F66B8(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v64 = *(v64 + 72);
      sub_10027559C(v11, v37 + v64 * v25, type metadata accessor for DashboardViewModelObject);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v68;
        if (v67 != 1)
        {
          v42 = v68 + v66 + v62;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            sub_100275734(v42, v17);
            v44 = v17[1];
            v71 = *v17;
            v45 = v71;
            v72 = v44;
            sub_10027559C(v17 + v65, v11, type metadata accessor for DashboardViewModelObject);
            v46 = *a3;
            v47 = sub_1001F66B8(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              sub_1001F7EF8(v51, 1);
              v53 = *a3;
              v47 = sub_1001F66B8(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            sub_10027559C(v11, v55[7] + v64 * v47, type metadata accessor for DashboardViewModelObject);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v66;
            v41 = v68;
            if (v67 == v43)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();
    v73 = v33;
    swift_errorRetain();
    sub_1001A551C(&unk_100375F10, &unk_1002F5C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10027566C(v11, type metadata accessor for DashboardViewModelObject);
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v59._object = 0x80000001002BFD70;
  v59._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v59);
  _print_unlocked<A, B>(_:_:)();
  v60._countAndFlagsBits = 39;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10027559C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100275604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027566C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002756CC(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100379FD0, &qword_1002F5C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100275734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002757B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100275800(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10027586C()
{
  v0 = sub_1001A551C(&qword_100379FE8, &qword_1002F5D38);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v22 - v2;
  v4 = sub_1001A551C(&qword_100379FF0, &unk_1002F5D40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_1001A551C(&qword_100375580, &qword_1002EF748);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = sub_10027673C();
  if (v12[2])
  {
    v13 = v12;
    *v3 = static HorizontalAlignment.center.getter();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v14 = sub_1001A551C(&qword_100379FF8, &unk_1002F5D50);
    sub_100275B58(v13, &v3[*(v14 + 44)]);

    sub_1001AC934(v3, v7, &qword_100379FE8, &qword_1002F5D38);
    swift_storeEnumTagMultiPayload();
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38);
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v3, &qword_100379FE8, &qword_1002F5D38);
  }

  else
  {

    ProgressView<>.init<>()();
    v16 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v17 = &v11[*(v8 + 36)];
    *v17 = v16;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_1001AC934(v11, v7, &qword_100375580, &qword_1002EF748);
    swift_storeEnumTagMultiPayload();
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38);
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v11, &qword_100375580, &qword_1002EF748);
  }
}

uint64_t sub_100275B58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1001A551C(&qword_10037A010, &qword_1002F5D68);
  v32 = *(v10 - 8);
  v11 = v32;
  v12 = *(v32 + 64);
  __chkstk_darwin(v10);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v38 = a1;

  v34 = sub_1001A551C(&qword_10037A018, &qword_1002F5D70);
  v33 = type metadata accessor for UUID();
  sub_1001A551C(&qword_10037A020, &qword_1002F5D78);
  sub_1001AD0C8(&qword_10037A028, &qword_10037A018, &qword_1002F5D70);
  sub_1001AD0C8(&qword_10037A030, &qword_10037A020, &qword_1002F5D78);
  sub_1002776D0();
  v17 = v16;
  ForEach<>.init(_:content:)();
  Divider.init()();
  v18 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = &v9[*(v4 + 44)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = *(v11 + 16);
  v25 = v35;
  v24(v35, v17, v10);
  v26 = v36;
  sub_1001AC934(v9, v36, &qword_10037A008, &qword_1002F5D60);
  v27 = v37;
  v24(v37, v25, v10);
  v28 = sub_1001A551C(&qword_10037A040, &unk_1002F5D80);
  sub_1001AC934(v26, &v27[*(v28 + 48)], &qword_10037A008, &qword_1002F5D60);
  sub_1001AC99C(v9, &qword_10037A008, &qword_1002F5D60);
  v29 = *(v32 + 8);
  v29(v17, v10);
  sub_1001AC99C(v26, &qword_10037A008, &qword_1002F5D60);
  return (v29)(v25, v10);
}

uint64_t sub_100275ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_100376D18, &qword_1002F1E58);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_1001A551C(&qword_10037A048, &unk_1002F5D90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  v23 = (a1 + *(type metadata accessor for FTMCellMonitorHardwareDetailModel() + 20));
  v24 = *v23 == 0x754E20656E6F6850 && v23[1] == 0xED00003A7265626DLL;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    Divider.init()();
    v25 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v26 = &v15[*(v11 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_100277728(v15, v22);
    (*(v12 + 56))(v22, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v22, 1, 1, v11);
  }

  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v31 = sub_1001A551C(&qword_100376D28, &qword_1002F1E60);
  sub_100276238(a1, &v10[*(v31 + 44)]);
  sub_1001AC934(v22, v19, &qword_10037A048, &unk_1002F5D90);
  sub_1001AC934(v10, v7, &qword_100376D18, &qword_1002F1E58);
  sub_1001AC934(v19, a2, &qword_10037A048, &unk_1002F5D90);
  v32 = sub_1001A551C(&qword_10037A050, &unk_1002F5DA0);
  sub_1001AC934(v7, a2 + *(v32 + 48), &qword_100376D18, &qword_1002F1E58);
  sub_1001AC99C(v10, &qword_100376D18, &qword_1002F1E58);
  sub_1001AC99C(v22, &qword_10037A048, &unk_1002F5D90);
  sub_1001AC99C(v7, &qword_100376D18, &qword_1002F1E58);
  return sub_1001AC99C(v19, &qword_10037A048, &unk_1002F5D90);
}

uint64_t sub_100276238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v66 - v7;
  v8 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  v9 = (a1 + *(v8 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + *(v8 + 24));
  v14 = v12[1];
  v67 = *v12;
  v13 = v67;
  *&v91 = v10;
  *(&v91 + 1) = v11;
  sub_1001A56A0();

  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Color.blue.getter();
  v20 = Text.foregroundColor(_:)();
  v68 = v21;
  v69 = v20;
  v23 = v22;
  v70 = v24;

  sub_1001ACFEC(v15, v17, v19 & 1);

  v77 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v76 = v23 & 1;
  LOBYTE(v87) = 0;
  *&v91 = v13;
  *(&v91 + 1) = v14;
  v66 = v14;

  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  static Color.gray.getter();
  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  LOBYTE(v14) = v41;
  v43 = v42;

  sub_1001ACFEC(v33, v35, v37 & 1);

  LOBYTE(v33) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v80 = v14 & 1;
  v78 = 0;
  *&v83 = v38;
  *(&v83 + 1) = v40;
  LOBYTE(v84) = v14 & 1;
  *(&v84 + 1) = v87;
  DWORD1(v84) = *(&v87 + 3);
  *(&v84 + 1) = v43;
  LOBYTE(v85) = v33;
  *(&v85 + 1) = *v79;
  DWORD1(v85) = *&v79[3];
  *(&v85 + 1) = v44;
  *&v86[0] = v45;
  *(&v86[0] + 1) = v46;
  *&v86[1] = v47;
  BYTE8(v86[1]) = 0;
  v48 = swift_allocObject();
  v49 = v66;
  *(v48 + 16) = v67;
  *(v48 + 24) = v49;
  v93 = v85;
  *v94 = v86[0];
  *&v94[9] = *(v86 + 9);
  v91 = v83;
  v92 = v84;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v50 = v75;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001AC99C(&v83, &qword_1003755C0, &qword_1002F1E70);
  v51 = v71;
  v52 = v72;
  v53 = *(v72 + 16);
  v54 = v73;
  v53(v71, v50, v73);
  v55 = v68;
  v56 = v69;
  *&v87 = v69;
  *(&v87 + 1) = v68;
  LOBYTE(v88) = v76;
  *(&v88 + 1) = *v82;
  DWORD1(v88) = *&v82[3];
  v57 = v70;
  *(&v88 + 1) = v70;
  LOBYTE(v89) = v77;
  *(&v89 + 1) = *v81;
  DWORD1(v89) = *&v81[3];
  *(&v89 + 1) = v26;
  *&v90[0] = v28;
  *(&v90[0] + 1) = v30;
  *&v90[1] = v32;
  BYTE8(v90[1]) = 0;
  v58 = v87;
  v59 = v88;
  v60 = v89;
  v61 = v74;
  *(v74 + 57) = *(v90 + 9);
  v62 = v90[0];
  *(v61 + 32) = v60;
  *(v61 + 48) = v62;
  *v61 = v58;
  *(v61 + 16) = v59;
  *(v61 + 80) = 0;
  *(v61 + 88) = 1;
  v63 = (v61 + *(sub_1001A551C(&qword_100376D40, &qword_1002F1E78) + 64));
  v53(v63, v51, v54);
  sub_1001AC934(&v87, &v91, &qword_1003755C0, &qword_1002F1E70);
  v64 = *(v52 + 8);
  v64(v75, v54);
  v64(v51, v54);
  *&v91 = v56;
  *(&v91 + 1) = v55;
  LOBYTE(v92) = v76;
  *(&v92 + 1) = *v82;
  DWORD1(v92) = *&v82[3];
  *(&v92 + 1) = v57;
  LOBYTE(v93) = v77;
  *(&v93 + 1) = *v81;
  DWORD1(v93) = *&v81[3];
  *(&v93 + 1) = v26;
  *v94 = v28;
  *&v94[8] = v30;
  *&v94[16] = v32;
  v94[24] = 0;
  return sub_1001AC99C(&v91, &qword_1003755C0, &qword_1002F1E70);
}

void *sub_10027673C()
{
  v1 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v137 - v7;
  __chkstk_darwin(v9);
  v147 = &v137 - v10;
  __chkstk_darwin(v11);
  v13 = (&v137 - v12);
  __chkstk_darwin(v14);
  v16 = &v137 - v15;
  __chkstk_darwin(v17);
  v148 = &v137 - v18;
  __chkstk_darwin(v19);
  v149 = &v137 - v20;
  __chkstk_darwin(v21);
  v150 = &v137 - v22;
  __chkstk_darwin(v23);
  v25 = &v137 - v24;
  __chkstk_darwin(v26);
  v151 = &v137 - v27;
  __chkstk_darwin(v28);
  v30 = &v137 - v29;
  __chkstk_darwin(v31);
  v142 = &v137 - v32;
  if (qword_100375018 != -1)
  {
LABEL_95:
    swift_once();
  }

  v33 = qword_100382500;
  swift_beginAccess();
  v34 = *(v33 + 88);
  v35 = *(v34 + 16);
  if (!v35)
  {
    return _swiftEmptyArrayStorage;
  }

  v139 = v30;
  v145 = v25;
  v146 = v2;
  v144 = v16;
  v141 = v13;
  v143 = v8;
  v36 = *(v33 + 160);
  v37 = _swiftEmptyArrayStorage;
  v140 = v5;
  if (v36)
  {
    v38 = 0;
    goto LABEL_32;
  }

  v25 = *(v33 + 156);
  v39 = v35 - 1;
  if (v35 > v25)
  {
    v39 = *(v33 + 156);
  }

  v153 = v39;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v40 = qword_100382508;
  v41 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v8 = *(v40 + v41);
  v158 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v137 = v33;
    v138 = v1;
    v1 = 0;
    v5 = (v8 & 0xC000000000000001);
    v30 = (v8 & 0xFFFFFFFFFFFFFF8);
    v13 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    v152 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v44 = v158;
          v1 = v138;
          v33 = v137;
          goto LABEL_26;
        }
      }

      else
      {
        if (v1 >= *(v30 + 2))
        {
          __break(1u);
          goto LABEL_95;
        }

        v0 = *(v8 + 8 * v1 + 32);

        v16 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_23;
        }
      }

      if (*(v0 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v25)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v42 = v2;
        v43 = v158[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v2 = v42;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v30 = v152;
      }

      else
      {
      }

      ++v1;
      if (v16 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_26:

  if ((v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *(v44 + 16);
  }

  if (!v45)
  {
    v59 = v142;
    UUID.init()();
    v60 = (v59 + *(v1 + 28));
    v61 = (v59 + *(v1 + 20));
    v16 = 0x2020202020202020;
    *v61 = 0x2020202020202020;
    v61[1] = 0xEA00000000002020;
    v62 = (v59 + *(v1 + 24));
    *v62 = 0x2020202020202020;
    v62[1] = 0xEA00000000002020;
    *v60 = 0;
    v60[1] = 0;
    v37 = sub_10022573C(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v37[2];
    v63 = v37[3];
    v0 = v33;
    if (v2 >= v63 >> 1)
    {
      v37 = sub_10022573C(v63 > 1, v2 + 1, 1, v37);
    }

    v37[2] = v2 + 1;
    v25 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v64 = *(v146 + 72);
    sub_1002777D0(v142, v37 + v25 + v64 * v2);
    v65 = v139;
    UUID.init()();
    v66 = (v65 + *(v1 + 28));
    v67 = (v65 + *(v1 + 20));
    *v67 = 0x2020202020202020;
    v67[1] = 0xEA00000000002020;
    v68 = (v65 + *(v1 + 24));
    *v68 = 0x2020202020202020;
    v68[1] = 0xEA00000000002020;
    *v66 = 0;
    v66[1] = 0;
    v70 = v37[2];
    v69 = v37[3];
    if (v70 >= v69 >> 1)
    {
      v37 = sub_10022573C(v69 > 1, v70 + 1, 1, v37);
    }

    v37[2] = v70 + 1;
    sub_1002777D0(v139, v37 + v25 + v70 * v64);
    v33 = v0;
    v38 = v153;
    if ((v153 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v37 = _swiftEmptyArrayStorage;
  v38 = v153;
  if ((v153 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

LABEL_31:
  v34 = *(v33 + 88);
  v35 = *(v34 + 16);
LABEL_32:
  if (v38 >= v35)
  {
    __break(1u);
  }

  else
  {
    v153 = v38;
    v47 = v34 + 224 * v38;
    v49 = *(v47 + 32);
    v48 = *(v47 + 40);

    v16 = v151;
    UUID.init()();
    v50 = (v16 + *(v1 + 28));
    v51 = (v16 + *(v1 + 20));
    *v51 = 0x3A72656972726143;
    v51[1] = 0xE800000000000000;
    v52 = (v16 + *(v1 + 24));
    *v52 = v49;
    v52[1] = v48;
    *v50 = 0;
    v50[1] = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }
  }

  v37 = sub_10022573C(0, v37[2] + 1, 1, v37);
LABEL_34:
  v54 = v37[2];
  v53 = v37[3];
  v55 = v54 + 1;
  if (v54 >= v53 >> 1)
  {
    v37 = sub_10022573C(v53 > 1, v54 + 1, 1, v37);
  }

  v37[2] = v55;
  v25 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v2 = *(v146 + 72);
  sub_1002777D0(v151, v37 + v25 + v2 * v54);
  if (*(v33 + 26) == 1)
  {
    v56 = *(v33 + 88);
    if (v153 >= *(v56 + 16))
    {
      __break(1u);
      goto LABEL_108;
    }

    v46 = *(v56 + 224 * v153 + 97);
    if (v46 <= 2)
    {
      if (v46)
      {
        if (v46 == 1)
        {
          v57 = 0xE200000000000000;
          v58 = 21070;
        }

        else
        {
          v57 = 0xE300000000000000;
          v58 = 4543564;
        }
      }

      else
      {
        v57 = 0xE600000000000000;
        v58 = 0x41534E20524ELL;
      }

LABEL_57:
      v16 = v145;
      UUID.init()();
      v71 = (v16 + *(v1 + 28));
      v72 = (v16 + *(v1 + 20));
      *v72 = 978600274;
      v72[1] = 0xE400000000000000;
      v73 = (v16 + *(v1 + 24));
      *v73 = v58;
      v73[1] = v57;
      *v71 = 0;
      v71[1] = 0;
      v54 = v37[2];
      v56 = v37[3];
      v55 = v54 + 1;
      if (v54 < v56 >> 1)
      {
LABEL_58:
        v37[2] = v55;
        sub_1002777D0(v145, v37 + v25 + v54 * v2);
        goto LABEL_59;
      }

LABEL_108:
      v37 = sub_10022573C(v56 > 1, v55, 1, v37);
      goto LABEL_58;
    }

    if (v46 <= 4)
    {
      if (v46 == 3)
      {
        v57 = 0xE400000000000000;
        v58 = 1398033749;
      }

      else
      {
        v57 = 0xE500000000000000;
        v58 = 0x4E41525455;
      }

      goto LABEL_57;
    }

LABEL_51:
    if (v46 == 5)
    {
      v57 = 0xE300000000000000;
      v58 = 5067591;
    }

    else
    {
      v57 = 0xE700000000000000;
      v58 = 0x6E776F6E6B6E55;
    }

    goto LABEL_57;
  }

LABEL_59:
  v74 = *(v33 + 88);
  if (v153 >= *(v74 + 16))
  {
    __break(1u);
  }

  else
  {
    v0 = v33;
    v75 = v74 + 224 * v153;
    v77 = *(v75 + 152);
    v76 = *(v75 + 160);

    v54 = v150;
    UUID.init()();
    v78 = (v54 + *(v1 + 28));
    v79 = (v54 + *(v1 + 20));
    *v79 = 0xD000000000000015;
    v79[1] = 0x80000001002BFD90;
    v80 = (v54 + *(v1 + 24));
    *v80 = v77;
    v80[1] = v76;
    *v78 = 0;
    v78[1] = 0;
    v16 = v37[2];
    v74 = v37[3];
    v55 = v16 + 1;
    if (v16 < v74 >> 1)
    {
      goto LABEL_61;
    }
  }

  v37 = sub_10022573C(v74 > 1, v55, 1, v37);
LABEL_61:
  v81 = v0;
  v37[2] = v55;
  sub_1002777D0(v150, v37 + v25 + v16 * v2);
  v82 = *(v0 + 88);
  if (v153 >= *(v82 + 16))
  {
    __break(1u);
  }

  else
  {
    v83 = v82 + 224 * v153;
    v85 = *(v83 + 168);
    v84 = *(v83 + 176);

    v86 = v149;
    UUID.init()();
    v87 = (v86 + *(v1 + 28));
    v88 = (v86 + *(v1 + 20));
    *v88 = 977486164;
    v88[1] = 0xE400000000000000;
    v89 = (v86 + *(v1 + 24));
    *v89 = v85;
    v89[1] = v84;
    *v87 = 0;
    v87[1] = 0;
    v16 = v37[2];
    v82 = v37[3];
    v55 = v16 + 1;
    if (v16 < v82 >> 1)
    {
      goto LABEL_63;
    }
  }

  v37 = sub_10022573C(v82 > 1, v55, 1, v37);
LABEL_63:
  v37[2] = v55;
  sub_1002777D0(v149, v37 + v25 + v16 * v2);
  v90 = *(v81 + 88);
  if (v153 >= *(v90 + 16))
  {
    __break(1u);
  }

  else
  {
    v91 = v90 + 224 * v153;
    v93 = *(v91 + 184);
    v92 = *(v91 + 192);

    v94 = v148;
    UUID.init()();
    v95 = (v94 + *(v1 + 28));
    v96 = (v94 + *(v1 + 20));
    *v96 = 0x3A4E4D4C50;
    v96[1] = 0xE500000000000000;
    v97 = (v94 + *(v1 + 24));
    *v97 = v93;
    v97[1] = v92;
    *v95 = 0;
    v95[1] = 0;
    v16 = v37[2];
    v90 = v37[3];
    v55 = v16 + 1;
    if (v16 < v90 >> 1)
    {
      goto LABEL_65;
    }
  }

  v37 = sub_10022573C(v90 > 1, v55, 1, v37);
LABEL_65:
  v37[2] = v55;
  sub_1002777D0(v148, v37 + v25 + v16 * v2);
  if (*(v81 + 26) != 1)
  {
    goto LABEL_85;
  }

  v98 = *(v81 + 88);
  if (v153 >= *(v98 + 16))
  {
    __break(1u);
  }

  else
  {
    v99 = v98 + 224 * v153;
    v101 = *(v99 + 104);
    v100 = *(v99 + 112);

    v102 = v144;
    UUID.init()();
    v103 = (v102 + *(v1 + 28));
    v104 = (v102 + *(v1 + 20));
    *v104 = 0x3A6449206C6C6543;
    v104[1] = 0xE800000000000000;
    v105 = (v102 + *(v1 + 24));
    *v105 = v101;
    v105[1] = v100;
    *v103 = 0;
    v103[1] = 0;
    v16 = v37[2];
    v98 = v37[3];
    v55 = v16 + 1;
    if (v16 < v98 >> 1)
    {
      goto LABEL_68;
    }
  }

  v37 = sub_10022573C(v98 > 1, v55, 1, v37);
LABEL_68:
  v54 = 0xD000000000000010;
  v37[2] = v55;
  sub_1002777D0(v144, v37 + v25 + v16 * v2);
  if (*(v81 + 26) != 1)
  {
    goto LABEL_85;
  }

  v106 = *(v81 + 88);
  if (v153 >= *(v106 + 16))
  {
    __break(1u);
  }

  else
  {
    v107 = *(v106 + 224 * v153 + 96);
    if (v107 <= 2)
    {
      if (v107)
      {
        if (v107 == 1)
        {
          v108 = 0xEB00000000534D53;
          v54 = 0x2026206563696F56;
        }

        else
        {
          v108 = 0xE500000000000000;
          v54 = 0x6563696F56;
        }
      }

      else
      {
        v108 = 0x80000001002B92A0;
      }
    }

    else if (v107 > 4)
    {
      if (v107 == 5)
      {
        v108 = 0xE700000000000000;
        v54 = 0x6E776F6E6B6E55;
      }

      else
      {
        v54 = 0;
        v108 = 0xE000000000000000;
      }
    }

    else if (v107 == 3)
    {
      v54 = 5459283;
      v108 = 0xE300000000000000;
    }

    else
    {
      v108 = 0xE300000000000000;
      v54 = 5456722;
    }

    v16 = v141;
    UUID.init()();
    v109 = (v16 + *(v1 + 28));
    v110 = (v16 + *(v1 + 20));
    *v110 = 0x7461745320534D49;
    v110[1] = 0xEB000000003A7375;
    v111 = (v16 + *(v1 + 24));
    *v111 = v54;
    v111[1] = v108;
    *v109 = 0;
    v109[1] = 0;
    v54 = v37[2];
    v106 = v37[3];
    v55 = v54 + 1;
    if (v54 < v106 >> 1)
    {
      goto LABEL_84;
    }
  }

  v37 = sub_10022573C(v106 > 1, v55, 1, v37);
LABEL_84:
  v37[2] = v55;
  sub_1002777D0(v141, v37 + v25 + v54 * v2);
LABEL_85:
  v112 = *(v81 + 88);
  if (v153 >= *(v112 + 16))
  {
    __break(1u);
  }

  else
  {
    v113 = v112 + 224 * v153;
    v115 = *(v113 + 80);
    v114 = *(v113 + 88);

    v16 = v147;
    UUID.init()();
    v116 = (v16 + *(v1 + 28));
    v117 = v16 + *(v1 + 20);
    strcpy(v117, "Phone Number:");
    *(v117 + 14) = -4864;
    v118 = (v16 + *(v1 + 24));
    *v118 = v115;
    v118[1] = v114;
    *v116 = 0;
    v116[1] = 0;
    v54 = v37[2];
    v112 = v37[3];
    v55 = v54 + 1;
    if (v54 < v112 >> 1)
    {
      goto LABEL_87;
    }
  }

  v37 = sub_10022573C(v112 > 1, v55, 1, v37);
LABEL_87:
  v37[2] = v55;
  sub_1002777D0(v147, v37 + v25 + v54 * v2);
  if (*(v81 + 24) == 1)
  {
    v119 = *(v81 + 88);
    if (v153 >= *(v119 + 16))
    {
      __break(1u);
    }

    else
    {
      v120 = v119 + 224 * v153;
      v122 = *(v120 + 200);
      v121 = *(v120 + 208);
      v158 = v122;
      v159 = v121;
      v156 = 0x6C7070612E6D6F63;
      v157 = 0xEA00000000002E65;
      v154 = 0;
      v155 = 0xE000000000000000;
      sub_1001A56A0();
      v123 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v125 = v124;
      v16 = v143;
      UUID.init()();
      v126 = (v16 + *(v1 + 28));
      v127 = (v16 + *(v1 + 20));
      *v127 = 0x3A656C646E7542;
      v127[1] = 0xE700000000000000;
      v128 = (v16 + *(v1 + 24));
      *v128 = v123;
      v128[1] = v125;
      *v126 = 0;
      v126[1] = 0;
      v54 = v37[2];
      v119 = v37[3];
      v55 = v54 + 1;
      if (v54 < v119 >> 1)
      {
        goto LABEL_90;
      }
    }

    v37 = sub_10022573C(v119 > 1, v55, 1, v37);
LABEL_90:
    v37[2] = v55;
    sub_1002777D0(v143, v37 + v25 + v54 * v2);
    v129 = *(v81 + 88);
    if (v153 >= *(v129 + 16))
    {
      __break(1u);
    }

    else
    {
      v130 = v129 + 224 * v153;
      v132 = *(v130 + 216);
      v131 = *(v130 + 224);

      v16 = v140;
      UUID.init()();
      v133 = (v16 + *(v1 + 28));
      v134 = (v16 + *(v1 + 20));
      *v134 = 0x5620656C646E7542;
      v134[1] = 0xEF3A6E6F69737265;
      v135 = (v16 + *(v1 + 24));
      *v135 = v132;
      v135[1] = v131;
      *v133 = 0;
      v133[1] = 0;
      v54 = v37[2];
      v129 = v37[3];
      v55 = v54 + 1;
      if (v54 < v129 >> 1)
      {
LABEL_92:
        v37[2] = v55;
        sub_1002777D0(v16, v37 + v25 + v54 * v2);
        return v37;
      }
    }

    v37 = sub_10022573C(v129 > 1, v55, 1, v37);
    goto LABEL_92;
  }

  return v37;
}

unint64_t sub_1002776D0()
{
  result = qword_10037A038;
  if (!qword_10037A038)
  {
    type metadata accessor for FTMCellMonitorHardwareDetailModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A038);
  }

  return result;
}

uint64_t sub_100277728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100277798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002777D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorHardwareDetailModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100277838()
{
  result = qword_10037A058;
  if (!qword_10037A058)
  {
    sub_1001A55C8(&qword_10037A060, &unk_1002F5DB0);
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A058);
  }

  return result;
}

uint64_t sub_10027791C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002785CC(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100277998(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v21[0] = v2 + 32;
  v21[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (*(v13 + 48) == *(*v15 + 48) && *(v13 + 56) == *(*v15 + 56))
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v17 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v17;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for FTMAllMetricsModel();
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v20[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v20[1] = v8;
    sub_100278A90(v20, v22, v21, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_100277B0C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_1001A551C(&qword_10037A078, &qword_1002F5E90);
  sub_100277BA4(a2, v5, a3 + *(v6 + 44));
}

void sub_100277BA4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v9 = a1 + 8 * a2;
  v72 = v11;
  v73 = v10;
  v70 = a3;
  v71 = v12;
  v69 = &v68 - v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = *(v9 + 32);

LABEL_5:
  v15 = *(v14 + 48);
  v16 = *(v14 + 56);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(v9 + 32);
  }

  v18 = *(v17 + 104);
  v74 = *(v17 + 96);

  *&v93 = v15;
  *(&v93 + 1) = v16;
  sub_1001A56A0();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Color.blue.getter();
  v24 = Text.foregroundColor(_:)();
  v77 = v25;
  v78 = v24;
  v27 = v26;
  v79 = v28;

  sub_1001ACFEC(v19, v21, v23 & 1);

  v76 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v75 = v27 & 1;
  LOBYTE(v89) = 0;
  *&v93 = v74;
  *(&v93 + 1) = v18;
  v68 = v18;

  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  static Color.gray.getter();
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;

  sub_1001ACFEC(v37, v39, v41 & 1);

  LOBYTE(v37) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v82 = v46 & 1;
  v80 = 0;
  *&v85 = v42;
  *(&v85 + 1) = v44;
  LOBYTE(v86) = v46 & 1;
  *(&v86 + 1) = v89;
  DWORD1(v86) = *(&v89 + 3);
  *(&v86 + 1) = v48;
  LOBYTE(v87) = v37;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  *(&v87 + 1) = v49;
  *&v88[0] = v50;
  *(&v88[0] + 1) = v51;
  *&v88[1] = v52;
  BYTE8(v88[1]) = 0;
  v53 = swift_allocObject();
  v54 = v68;
  *(v53 + 16) = v74;
  *(v53 + 24) = v54;
  v95 = v87;
  *v96 = v88[0];
  *&v96[9] = *(v88 + 9);
  v93 = v85;
  v94 = v86;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v55 = v69;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001AC99C(&v85, &qword_1003755C0, &qword_1002F1E70);
  v57 = v71;
  v56 = v72;
  v58 = *(v72 + 16);
  v59 = v73;
  v58(v71, v55, v73);
  *&v89 = v78;
  *(&v89 + 1) = v77;
  LOBYTE(v90) = v75;
  *(&v90 + 1) = *v84;
  DWORD1(v90) = *&v84[3];
  *(&v90 + 1) = v79;
  LOBYTE(v91) = v76;
  *(&v91 + 1) = *v83;
  DWORD1(v91) = *&v83[3];
  *(&v91 + 1) = v30;
  *&v92[0] = v32;
  *(&v92[0] + 1) = v34;
  *&v92[1] = v36;
  BYTE8(v92[1]) = 0;
  v60 = v89;
  v61 = v90;
  v62 = v91;
  v63 = v70;
  *(v70 + 57) = *(v92 + 9);
  v64 = v92[0];
  *(v63 + 32) = v62;
  *(v63 + 48) = v64;
  *v63 = v60;
  *(v63 + 16) = v61;
  *(v63 + 80) = 0;
  *(v63 + 88) = 1;
  v65 = sub_1001A551C(&qword_10037A080, &unk_1002F5E98);
  v58(v63 + *(v65 + 64), v57, v59);
  v66 = (v63 + *(v65 + 80));
  v66[1] = 0u;
  v66[2] = 0u;
  *v66 = 0u;
  sub_1001AC934(&v89, &v93, &qword_1003755C0, &qword_1002F1E70);
  sub_10027B718(0, 0, 0, 0, 0);
  v67 = *(v56 + 8);
  v67(v55, v59);
  sub_10027B77C(0, 0, 0, 0, 0);
  v67(v57, v59);
  *&v93 = v78;
  *(&v93 + 1) = v77;
  LOBYTE(v94) = v75;
  *(&v94 + 1) = *v84;
  DWORD1(v94) = *&v84[3];
  *(&v94 + 1) = v79;
  LOBYTE(v95) = v76;
  *(&v95 + 1) = *v83;
  DWORD1(v95) = *&v83[3];
  *(&v95 + 1) = v30;
  *v96 = v32;
  *&v96[8] = v34;
  *&v96[16] = v36;
  v96[24] = 0;
  sub_1001AC99C(&v93, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_10027815C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v27[-v9];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v27[-v17];
  v19 = *a1;
  v20 = *a2;
  v21 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v19 + v21, v10, &qword_100375738, &qword_1002EF900);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v22(v10, 1, v11) != 1)
    {
      sub_1001AC99C(v10, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
  }

  v23 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v20 + v23, v7, &qword_100375738, &qword_1002EF900);
  if (v22(v7, 1, v11) == 1)
  {
    Date.init()();
    if (v22(v7, 1, v11) != 1)
    {
      sub_1001AC99C(v7, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v7, v11);
  }

  v24 = static Date.> infix(_:_:)();
  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v18, v11);
  return v24 & 1;
}

uint64_t sub_100278488()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_10027AA90(v4, v3);
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    swift_getKeyPath();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v1;
    v8[4] = v2;
    v8[5] = v4;
    v8[6] = v3;

    sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
    sub_1001A551C(&qword_10037A068, &qword_1002F5E88);
    sub_1001DBBC0();
    sub_10027B67C();
    return ForEach<>.init(_:id:content:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1002785CC(void *a1)
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v44 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = v44 - v16;
  v17 = a1[1];
  result = _minimumMergeRunLength(_:)(v17);
  v19 = v17;
  if (result < v17)
  {
    if (v17 >= -1)
    {
      v20 = result;
      v21 = v19 / 2;
      if (v19 <= 1)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMAllMetricsModel();
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
      }

      v43 = v22 & 0xFFFFFFFFFFFFFF8;
      v59[0] = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
      v59[1] = v21;
      sub_100279270(v59, v58, a1, v20);
      *(v43 + 16) = 0;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v17 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v17 >= 2)
  {
    v53 = v14;
    v54 = v6;
    v44[1] = v1;
    v23 = *a1;
    v24 = (v11 + 48);
    v49 = (v11 + 8);
    v50 = (v11 + 32);
    v25 = -1;
    v26 = 1;
    v55 = v23;
    v51 = (v11 + 48);
    v52 = v9;
    v45 = v17;
    do
    {
      v47 = v26;
      v48 = v25;
      v27 = v55[v26];
      v46 = v23;
      do
      {
        v56 = v25;
        v28 = *v23;
        v29 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        sub_1001AC934(v27 + v29, v9, &qword_100375738, &qword_1002EF900);
        v30 = *v24;
        if ((*v24)(v9, 1, v10) == 1)
        {

          Date.init()();
          if (v30(v9, 1, v10) != 1)
          {
            sub_1001AC99C(v9, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v50)(v60, v9, v10);
        }

        v31 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v57 = v28;
        v32 = v28 + v31;
        v33 = v54;
        sub_1001AC934(v32, v54, &qword_100375738, &qword_1002EF900);
        if (v30(v33, 1, v10) == 1)
        {
          v34 = v53;
          Date.init()();
          v35 = v30(v33, 1, v10);
          v36 = v10;
          v37 = v56;
          if (v35 != 1)
          {
            sub_1001AC99C(v33, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v34 = v53;
          (*v50)(v53, v33, v10);
          v36 = v10;
          v37 = v56;
        }

        v38 = v60;
        v39 = static Date.> infix(_:_:)();
        v40 = *v49;
        (*v49)(v34, v36);
        v40(v38, v36);

        v24 = v51;
        v9 = v52;
        v10 = v36;
        if ((v39 & 1) == 0)
        {
          break;
        }

        if (!v55)
        {
          goto LABEL_28;
        }

        v41 = *v23;
        v27 = v23[1];
        *v23 = v27;
        v23[1] = v41;
        --v23;
        v42 = __CFADD__(v37, 1);
        v25 = v37 + 1;
      }

      while (!v42);
      v26 = v47 + 1;
      v23 = v46 + 1;
      v25 = v48 - 1;
    }

    while (v47 + 1 != v45);
  }

  return result;
}

uint64_t sub_100278A90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_153;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v8);
      v11 = *(*a3 + 8 * v6);
      result = *(v10 + 48);
      v12 = result == *(v11 + 48) && *(v10 + 56) == *(v11 + 56);
      if (v12)
      {
        v4 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = result;
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v13 = v9 + 8 * v6 + 16;
        do
        {
          v14 = *(v13 - 8);
          result = *(*v13 + 48);
          if (result == *(v14 + 48) && *(*v13 + 56) == *(v14 + 56))
          {
            if (v4)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v4 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v13 += 8;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_23:
      if (v4)
      {
LABEL_24:
        if (v8 < v6)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        if (v6 < v8)
        {
          v16 = 8 * v8 - 8;
          v17 = 8 * v6;
          v18 = v8;
          v19 = v6;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_188;
              }

              v20 = *(v21 + v17);
              *(v21 + v17) = *(v21 + v16);
              *(v21 + v16) = v20;
            }

            ++v19;
            v16 -= 8;
            v17 += 8;
          }

          while (v19 < v18);
        }
      }
    }

    v22 = a3[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          result = sub_1001FA564(v7);
          v7 = result;
LABEL_155:
          v95 = *(v7 + 2);
          if (v95 < 2)
          {
          }

          while (*a3)
          {
            v96 = *&v7[16 * v95];
            v97 = *&v7[16 * v95 + 24];
            sub_100279FE0((*a3 + 8 * v96), (*a3 + 8 * *&v7[16 * v95 + 16]), (*a3 + 8 * v97), v4);
            if (v101)
            {
            }

            if (v97 < v96)
            {
              goto LABEL_179;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1001FA564(v7);
            }

            if (v95 - 2 >= *(v7 + 2))
            {
              goto LABEL_180;
            }

            v98 = &v7[16 * v95];
            *v98 = v96;
            *(v98 + 1) = v97;
            result = sub_1001FA4D8(v95 - 1);
            v95 = *(v7 + 2);
            if (v95 <= 1)
            {
            }
          }

LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (v6 + a4 >= v22)
        {
          v23 = a3[1];
        }

        else
        {
          v23 = v6 + a4;
        }

        if (v23 < v6)
        {
          goto LABEL_184;
        }

        if (v8 != v23)
        {
          v24 = *a3;
          v25 = *a3 + 8 * v8 - 8;
          v4 = (v6 - v8);
          do
          {
            v26 = *(v24 + 8 * v8);
            v27 = v4;
            v28 = v25;
            do
            {
              v29 = *(v26 + 48) == *(*v28 + 48) && *(v26 + 56) == *(*v28 + 56);
              if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              if (!v24)
              {
                goto LABEL_185;
              }

              v30 = *v28;
              v26 = v28[1];
              *v28 = v26;
              v28[1] = v30;
              --v28;
            }

            while (!__CFADD__(v27++, 1));
            ++v8;
            v25 += 8;
            --v4;
          }

          while (v8 != v23);
          v8 = v23;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v102 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1001FA578(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1001FA578((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v34;
    v35 = &v7[16 * v33];
    *(v35 + 4) = v6;
    *(v35 + 5) = v102;
    if (!*v100)
    {
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    if (!v33)
    {
      goto LABEL_3;
    }

    __dst = *v100;
    do
    {
      v36 = v34 - 1;
      if (v34 >= 4)
      {
        v41 = &v7[16 * v34 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_167;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_168;
        }

        v48 = &v7[16 * v34];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_170;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_173;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_177;
          }

          if (v39 < v73)
          {
            v36 = v34 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

      if (v34 == 3)
      {
        v37 = *(v7 + 4);
        v38 = *(v7 + 5);
        v47 = __OFSUB__(v38, v37);
        v39 = v38 - v37;
        v40 = v47;
LABEL_75:
        if (v40)
        {
          goto LABEL_169;
        }

        v53 = &v7[16 * v34];
        v55 = *v53;
        v54 = *(v53 + 1);
        v56 = __OFSUB__(v54, v55);
        v57 = v54 - v55;
        v58 = v56;
        if (v56)
        {
          goto LABEL_172;
        }

        v59 = &v7[16 * v36 + 32];
        v61 = *v59;
        v60 = *(v59 + 1);
        v47 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v47)
        {
          goto LABEL_175;
        }

        if (__OFADD__(v57, v62))
        {
          goto LABEL_176;
        }

        if (v57 + v62 >= v39)
        {
          if (v39 < v62)
          {
            v36 = v34 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v63 = &v7[16 * v34];
      v65 = *v63;
      v64 = *(v63 + 1);
      v47 = __OFSUB__(v64, v65);
      v57 = v64 - v65;
      v58 = v47;
LABEL_89:
      if (v58)
      {
        goto LABEL_171;
      }

      v66 = &v7[16 * v36];
      v68 = *(v66 + 4);
      v67 = *(v66 + 5);
      v47 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v47)
      {
        goto LABEL_174;
      }

      if (v69 < v57)
      {
        break;
      }

LABEL_96:
      if (v36 - 1 >= v34)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v74 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v105 = v36 - 1;
      v106 = v36;
      v75 = *&v7[16 * v36 + 32];
      v76 = *&v7[16 * v36 + 40];
      v108 = *&v7[16 * v36 + 16];
      v109 = v7;
      v77 = (v74 + 8 * v108);
      v78 = 8 * v75;
      v7 = (v74 + 8 * v75);
      v107 = v76;
      v79 = 8 * v76;
      v80 = (v74 + 8 * v76);
      v81 = 8 * v75 - 8 * v108;
      v82 = 8 * v76 - 8 * v75;
      if (v81 >= v82)
      {
        if (v7 != __dst || v80 <= __dst)
        {
          memmove(__dst, (v74 + 8 * v75), 8 * v76 - 8 * v75);
        }

        v83 = &__dst[v82];
        if (v82 >= 1 && v78 > 8 * v108)
        {
          v86 = v107;
          v85 = v108;
          while (1)
          {
            v4 = v7 - 8;
            v80 -= 8;
            v89 = v83;
            while (1)
            {
              v90 = *(v89 - 1);
              v89 -= 8;
              v91 = *(v90 + 56);
              v92 = *(v90 + 48) == *(*v4 + 48) && v91 == *(*v4 + 56);
              if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v80 + 8 != v83)
              {
                *v80 = *v89;
              }

              v80 -= 8;
              v83 = v89;
              if (v89 <= __dst)
              {
                v83 = v89;
                v84 = __dst;
                v4 = v7;
                goto LABEL_142;
              }
            }

            if (v80 + 8 != v7)
            {
              *v80 = *v4;
            }

            if (v83 <= __dst)
            {
              v84 = __dst;
              goto LABEL_142;
            }

            v84 = __dst;
            v7 -= 8;
            if (v77 >= v4)
            {
              goto LABEL_142;
            }
          }
        }

        v84 = __dst;
        v4 = v7;
        goto LABEL_140;
      }

      if (v77 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v74 + 8 * v108), 8 * v75 - 8 * v108);
      }

      v83 = &__dst[v81];
      if (v81 < 1 || v79 <= v78)
      {
        v84 = __dst;
        v4 = v77;
LABEL_140:
        v86 = v107;
        v85 = v108;
        goto LABEL_142;
      }

      v84 = __dst;
      v86 = v107;
      v85 = v108;
      do
      {
        v87 = *(*v7 + 48) == *(*v84 + 48) && *(*v7 + 56) == *(*v84 + 56);
        if (!v87 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v88 = v7;
          v12 = v77 == v7;
          v7 += 8;
          if (v12)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v77 = *v88;
          goto LABEL_115;
        }

        v88 = v84;
        v12 = v77 == v84;
        v84 += 8;
        if (!v12)
        {
          goto LABEL_114;
        }

LABEL_115:
        v77 += 8;
      }

      while (v84 < v83 && v7 < v80);
      v4 = v77;
LABEL_142:
      if (v4 != v84 || v4 >= &v84[(v83 - v84 + (v83 - v84 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v84, 8 * ((v83 - v84) / 8));
      }

      v93 = v109;
      if (v86 < v85)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1001FA564(v109);
      }

      if (v106 > *(v93 + 2))
      {
        goto LABEL_166;
      }

      v94 = &v93[16 * v105];
      *(v94 + 4) = v85;
      *(v94 + 5) = v86;
      result = sub_1001FA4D8(v106);
      v7 = v93;
      v34 = *(v93 + 2);
    }

    while (v34 > 1);
LABEL_3:
    v6 = v102;
    v5 = a3[1];
    if (v102 < v5)
    {
      continue;
    }

    break;
  }

LABEL_153:
  v4 = *v100;
  if (*v100)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_155;
    }

    goto LABEL_186;
  }

LABEL_191:
  __break(1u);
  return result;
}

void sub_100279270(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v128 - v13;
  __chkstk_darwin(v14);
  v137 = &v128 - v15;
  __chkstk_darwin(v16);
  v136 = &v128 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  __chkstk_darwin(v20);
  v150 = &v128 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v140 = &v128 - v27;
  v139 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_112:
    a3 = *v130;
    if (!*v130)
    {
      goto LABEL_153;
    }

    a4 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v123 = a4;
LABEL_115:
      v153 = v123;
      a4 = *(v123 + 2);
      if (a4 >= 2)
      {
        while (*v139)
        {
          v124 = *&v123[16 * a4];
          v125 = v123;
          v126 = *&v123[16 * a4 + 24];
          sub_10027A218((*v139 + 8 * v124), (*v139 + 8 * *&v123[16 * a4 + 16]), (*v139 + 8 * v126), a3);
          if (v5)
          {
            goto LABEL_123;
          }

          if (v126 < v124)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_1001FA564(v125);
          }

          if (a4 - 2 >= *(v125 + 2))
          {
            goto LABEL_141;
          }

          v127 = &v125[16 * a4];
          *v127 = v124;
          *(v127 + 1) = v126;
          v153 = v125;
          sub_1001FA4D8(a4 - 1);
          v123 = v153;
          a4 = *(v153 + 2);
          if (a4 <= 1)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_151;
      }

LABEL_123:

      return;
    }

LABEL_147:
    v123 = sub_1001FA564(a4);
    goto LABEL_115;
  }

  v135 = v26;
  v142 = v25;
  v128 = a4;
  v29 = 0;
  v30 = (v24 + 48);
  v146 = (v24 + 8);
  v147 = (v24 + 32);
  v31 = _swiftEmptyArrayStorage;
  v143 = v11;
  v32 = v148;
  v145 = (v24 + 48);
  while (1)
  {
    v131 = v29;
    if (v29 + 1 >= v28)
    {
      v41 = v29 + 1;
    }

    else
    {
      v141 = v28;
      v129 = v31;
      v33 = *v139;
      v34 = *(*v139 + 8 * (v29 + 1));
      a3 = *(*v139 + 8 * v29);
      v151 = a3;
      v152 = v34;

      LODWORD(v144) = sub_10027815C(&v152, &v151);
      if (v5)
      {

        return;
      }

      a4 = v29 + 2;
      v134 = 8 * v29;
      v35 = (v33 + 8 * v29 + 16);
      v138 = 0;
      while (1)
      {
        v41 = v141;
        if (v141 == a4)
        {
          break;
        }

        v42 = *(v35 - 1);
        a3 = *v35;
        v43 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v44 = v136;
        sub_1001AC934(a3 + v43, v136, &qword_100375738, &qword_1002EF900);
        v45 = *v30;
        if ((*v30)(v44, 1, v18) == 1)
        {

          Date.init()();
          if (v45(v44, 1, v18) != 1)
          {
            sub_1001AC99C(v44, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v147)(v140, v44, v18);
        }

        v46 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v47 = &v42[v46];
        v48 = v137;
        sub_1001AC934(v47, v137, &qword_100375738, &qword_1002EF900);
        v49 = v45(v48, 1, v18);
        v149 = v42;
        if (v49 == 1)
        {
          v36 = v135;
          Date.init()();
          if (v45(v48, 1, v18) != 1)
          {
            sub_1001AC99C(v48, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v36 = v135;
          (*v147)(v135, v48, v18);
        }

        v37 = v140;
        v38 = static Date.> infix(_:_:)();
        v39 = *v146;
        (*v146)(v36, v18);
        v39(v37, v18);

        v40 = v144 ^ v38;
        ++a4;
        ++v35;
        v5 = v138;
        v30 = v145;
        if (v40)
        {
          v41 = a4 - 1;
          break;
        }
      }

      v31 = v129;
      v32 = v148;
      v50 = v134;
      if (v144)
      {
        v51 = v131;
        if (v41 < v131)
        {
          goto LABEL_146;
        }

        if (v131 < v41)
        {
          v52 = 8 * v41 - 8;
          v53 = v41;
          do
          {
            if (v51 != --v53)
            {
              v55 = *v139;
              if (!*v139)
              {
                goto LABEL_150;
              }

              v54 = *(v55 + v50);
              *(v55 + v50) = *(v55 + v52);
              *(v55 + v52) = v54;
            }

            ++v51;
            v52 -= 8;
            v50 += 8;
          }

          while (v51 < v53);
        }
      }
    }

    v56 = v139[1];
    if (v41 >= v56)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v41, v131))
    {
      goto LABEL_143;
    }

    if (v41 - v131 >= v128)
    {
LABEL_38:
      v59 = v41;
      goto LABEL_39;
    }

    if (__OFADD__(v131, v128))
    {
      goto LABEL_144;
    }

    if (v131 + v128 >= v56)
    {
      v57 = v139[1];
    }

    else
    {
      v57 = v131 + v128;
    }

    if (v57 < v131)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v58 = v131;
    if (v41 == v57)
    {
      v59 = v41;
      goto LABEL_40;
    }

    v129 = v31;
    v138 = v5;
    v144 = *v139;
    v107 = (v144 + 8 * v41 - 8);
    v108 = (v131 - v41);
    v132 = v57;
LABEL_94:
    v141 = v41;
    a3 = *(v144 + 8 * v41);
    v133 = v108;
    v134 = v107;
LABEL_95:
    v149 = v108;
    v109 = *v107;
    v110 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    sub_1001AC934(a3 + v110, v32, &qword_100375738, &qword_1002EF900);
    v111 = *v30;
    if ((*v30)(v32, 1, v18) == 1)
    {

      Date.init()();
      if (v111(v32, 1, v18) != 1)
      {
        sub_1001AC99C(v32, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      (*v147)(v150, v32, v18);
    }

    v112 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    v113 = v109 + v112;
    v114 = v143;
    sub_1001AC934(v113, v143, &qword_100375738, &qword_1002EF900);
    if (v111(v114, 1, v18) == 1)
    {
      v115 = v142;
      Date.init()();
      v116 = v18;
      if (v111(v114, 1, v18) != 1)
      {
        sub_1001AC99C(v114, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      v115 = v142;
      (*v147)(v142, v114, v18);
      v116 = v18;
    }

    v117 = v150;
    v118 = static Date.> infix(_:_:)();
    v119 = *v146;
    (*v146)(v115, v116);
    a4 = v116;
    v119(v117, v116);

    if (v118)
    {
      break;
    }

    v32 = v148;
    v30 = v145;
    v18 = v116;
LABEL_93:
    v41 = v141 + 1;
    v107 = (v134 + 8);
    v108 = v133 - 1;
    v59 = v132;
    if (v141 + 1 != v132)
    {
      goto LABEL_94;
    }

    v5 = v138;
    v31 = v129;
LABEL_39:
    v58 = v131;
LABEL_40:
    if (v59 < v58)
    {
      goto LABEL_142;
    }

    v132 = v59;
    v60 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v60;
    }

    else
    {
      v31 = sub_1001FA578(0, *(v60 + 2) + 1, 1, v60);
    }

    a3 = *(v31 + 2);
    v61 = *(v31 + 3);
    v62 = a3 + 1;
    if (a3 >= v61 >> 1)
    {
      v31 = sub_1001FA578((v61 > 1), a3 + 1, 1, v31);
    }

    *(v31 + 2) = v62;
    v63 = &v31[16 * a3];
    v64 = v132;
    *(v63 + 4) = v131;
    *(v63 + 5) = v64;
    v149 = *v130;
    if (!v149)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v62 - 1;
        if (v62 >= 4)
        {
          v69 = &v31[16 * v62 + 32];
          v70 = *(v69 - 64);
          v71 = *(v69 - 56);
          v75 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          if (v75)
          {
            goto LABEL_129;
          }

          v74 = *(v69 - 48);
          v73 = *(v69 - 40);
          v75 = __OFSUB__(v73, v74);
          v67 = v73 - v74;
          v68 = v75;
          if (v75)
          {
            goto LABEL_130;
          }

          v76 = &v31[16 * v62];
          v78 = *v76;
          v77 = *(v76 + 1);
          v75 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v75)
          {
            goto LABEL_132;
          }

          v75 = __OFADD__(v67, v79);
          v80 = v67 + v79;
          if (v75)
          {
            goto LABEL_135;
          }

          if (v80 >= v72)
          {
            v98 = &v31[16 * a3 + 32];
            v100 = *v98;
            v99 = *(v98 + 1);
            v75 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v75)
            {
              goto LABEL_139;
            }

            if (v67 < v101)
            {
              a3 = v62 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v68)
            {
              goto LABEL_131;
            }

            v81 = &v31[16 * v62];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_134;
            }

            v87 = &v31[16 * a3 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_138;
            }

            if (v85 + v90 < v67)
            {
              goto LABEL_74;
            }

            if (v67 < v90)
            {
              a3 = v62 - 2;
            }
          }
        }

        else
        {
          if (v62 == 3)
          {
            v65 = *(v31 + 4);
            v66 = *(v31 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
            goto LABEL_60;
          }

          v91 = &v31[16 * v62];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_74:
          if (v86)
          {
            goto LABEL_133;
          }

          v94 = &v31[16 * a3];
          v96 = *(v94 + 4);
          v95 = *(v94 + 5);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_136;
          }

          if (v97 < v85)
          {
            break;
          }
        }

        a4 = a3 - 1;
        if (a3 - 1 >= v62)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v139)
        {
          goto LABEL_149;
        }

        v102 = v31;
        v103 = *&v31[16 * a4 + 32];
        v104 = *&v31[16 * a3 + 40];
        sub_10027A218((*v139 + 8 * v103), (*v139 + 8 * *&v31[16 * a3 + 32]), (*v139 + 8 * v104), v149);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v104 < v103)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = v102;
        }

        else
        {
          v105 = sub_1001FA564(v102);
        }

        v32 = v148;
        if (a4 >= *(v105 + 2))
        {
          goto LABEL_128;
        }

        v106 = &v105[16 * a4];
        *(v106 + 4) = v103;
        *(v106 + 5) = v104;
        v153 = v105;
        a4 = &v153;
        sub_1001FA4D8(a3);
        v31 = v153;
        v62 = *(v153 + 2);
        if (v62 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v139[1];
    v29 = v132;
    if (v132 >= v28)
    {
      goto LABEL_112;
    }
  }

  v32 = v148;
  v120 = v149;
  if (v144)
  {
    v121 = *v107;
    a3 = v107[1];
    *v107 = a3;
    v107[1] = v121;
    --v107;
    v122 = __CFADD__(v120, 1);
    v108 = v120 + 1;
    v30 = v145;
    v18 = v116;
    if (v122)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_100279FE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 48) == *(*v4 + 48) && *(*v6 + 56) == *(*v4 + 56);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 56);
      v21 = *(v19 + 48) == *(*v17 + 48) && v20 == *(*v17 + 56);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10027A218(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v78 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v79 = (&v72 - v12);
  __chkstk_darwin(v13);
  v77 = &v72 - v14;
  __chkstk_darwin(v15);
  v76 = (&v72 - v16);
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v82 = &v72 - v20;
  __chkstk_darwin(v21);
  v75 = (&v72 - v22);
  __chkstk_darwin(v23);
  v81 = &v72 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 >= v29 >> 3)
  {
    v81 = v24;
    if (a4 != a2 || &a2[8 * v30] <= a4)
    {
      v50 = v25;
      memmove(a4, a2, 8 * v30);
      v25 = v50;
    }

    v85 = &a4[8 * v30];
    v51 = v79;
    if (a3 - a2 < 8)
    {
      v49 = a2;
    }

    else
    {
      v49 = a2;
      if (a2 > a1)
      {
        v52 = (v25 + 48);
        v74 = (v25 + 8);
        v75 = (v25 + 32);
        v76 = (v25 + 48);
        v84 = a4;
        v73 = a1;
LABEL_34:
        v80 = v49;
        v53 = v49 - 8;
        v54 = a3 - 8;
        v55 = v85;
        v77 = v49 - 8;
        do
        {
          v56 = *(v55 - 1);
          v55 -= 8;
          v57 = *v53;
          v58 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          sub_1001AC934(v56 + v58, v51, &qword_100375738, &qword_1002EF900);
          v59 = *v52;
          v60 = (*v52)(v51, 1, v17);
          v83 = v54;
          if (v60 == 1)
          {

            Date.init()();
            if (v59(v51, 1, v17) != 1)
            {
              sub_1001AC99C(v51, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v75)(v82, v51, v17);
          }

          v61 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v62 = v57 + v61;
          v63 = v78;
          sub_1001AC934(v62, v78, &qword_100375738, &qword_1002EF900);
          if (v59(v63, 1, v17) == 1)
          {
            v64 = v81;
            Date.init()();
            if (v59(v63, 1, v17) != 1)
            {
              sub_1001AC99C(v63, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            v64 = v81;
            (*v75)(v81, v63, v17);
          }

          v65 = v82;
          v66 = static Date.> infix(_:_:)();
          v67 = *v74;
          (*v74)(v64, v17);
          v67(v65, v17);

          if (v66)
          {
            a3 = v83;
            a4 = v84;
            v51 = v79;
            v69 = v73;
            v70 = v77;
            if (v83 + 8 != v80)
            {
              *v83 = *v77;
            }

            v52 = v76;
            if (v85 <= a4 || (v49 = v70, v70 <= v69))
            {
              v49 = v70;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v68 = v83;
          a4 = v84;
          v51 = v79;
          if (v83 + 8 != v85)
          {
            *v83 = *v55;
          }

          v54 = v68 - 8;
          v85 = v55;
          v52 = v76;
          v53 = v77;
        }

        while (v55 > a4);
        v85 = v55;
        v49 = v80;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v85 = &a4[8 * v28];
    if (a2 - a1 >= 8)
    {
      v32 = a2;
      if (a2 < a3)
      {
        v33 = (v25 + 48);
        v78 = (v25 + 8);
        v79 = (v25 + 32);
        v82 = (v25 + 48);
        v83 = a3;
        while (1)
        {
          v80 = v32;
          v34 = *v32;
          v35 = *a4;
          v36 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v37 = v76;
          sub_1001AC934(v34 + v36, v76, &qword_100375738, &qword_1002EF900);
          v38 = *v33;
          v39 = (*v33)(v37, 1, v17);
          v84 = a4;
          if (v39 == 1)
          {

            Date.init()();
            if (v38(v37, 1, v17) != 1)
            {
              sub_1001AC99C(v37, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v79)(v81, v37, v17);
          }

          v40 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v41 = v35 + v40;
          v42 = v77;
          sub_1001AC934(v41, v77, &qword_100375738, &qword_1002EF900);
          v43 = v38(v42, 1, v17);
          v44 = v75;
          if (v43 == 1)
          {
            Date.init()();
            if (v38(v42, 1, v17) != 1)
            {
              sub_1001AC99C(v42, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v79)(v75, v42, v17);
          }

          v45 = v81;
          v46 = static Date.> infix(_:_:)();
          v47 = *v78;
          (*v78)(v44, v17);
          v47(v45, v17);

          if ((v46 & 1) == 0)
          {
            break;
          }

          v48 = v80;
          v32 = v80 + 8;
          a4 = v84;
          if (a1 != v80)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v33 = v82;
          if (a4 >= v85 || v32 >= v83)
          {
            goto LABEL_27;
          }
        }

        v48 = v84;
        a4 = v84 + 8;
        v32 = v80;
        if (a1 == v84)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v48;
        goto LABEL_25;
      }
    }

LABEL_27:
    v49 = a1;
  }

LABEL_54:
  if (v49 != a4 || v49 >= &a4[(v85 - a4 + (v85 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v49, a4, 8 * ((v85 - a4) / 8));
  }

  return 1;
}

uint64_t sub_10027AA90(unint64_t a1, unint64_t a2)
{
  if (qword_100375020 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  [*(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100382500 + 160);
  v5 = _swiftEmptyArrayStorage;
  v85 = a1;
  v86 = a2;
  v84 = qword_100382500;
  if (v4)
  {
    goto LABEL_30;
  }

  v6 = *(qword_100382500 + 156);
  v95 = a1;
  v96 = a2;

  v7._countAndFlagsBits = 126;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v92 = v6;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v10 = v95;
  v9 = v96;
  v11 = qword_100382508;
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v95 = _swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v15 = 0;
  a2 = v13 & 0xC000000000000001;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  v17 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
  v90 = v14;
  v91 = v13;
  while (a2)
  {
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_23;
    }

LABEL_14:
    v19 = *(a1 + 16) == v10 && *(a1 + 24) == v9;
    if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + *v17))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = v17;
      v21 = v10;
      v22 = v9;
      v23 = v16;
      v24 = a2;
      v25 = *(v95 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a2 = v24;
      v16 = v23;
      v9 = v22;
      v10 = v21;
      v17 = v20;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = v90;
      v13 = v91;
    }

    else
    {
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_24;
    }
  }

  if (v15 >= *(v16 + 16))
  {
    goto LABEL_116;
  }

  a1 = *(v13 + 8 * v15 + 32);

  v18 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v5 = v95;
LABEL_26:

  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_29:

      v5 = _swiftEmptyArrayStorage;
    }
  }

  else if (!*(v5 + 16))
  {
    goto LABEL_29;
  }

LABEL_30:
  v97 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = v5 & 0xC000000000000001;
    v91 = v5 & 0xFFFFFFFFFFFFFF8;
    v87 = v5 + 32;
    a1 = _swiftEmptyArrayStorage;
    v89 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        if (v29)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v31 = v30;
          v32 = __OFADD__(v27++, 1);
          if (v32)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v27 >= *(v91 + 16))
          {
            goto LABEL_118;
          }

          v31 = *(v87 + 8 * v27);

          v32 = __OFADD__(v27++, 1);
          if (v32)
          {
            goto LABEL_115;
          }
        }

        v33 = *(v31 + 56);
        v95 = *(v31 + 48);
        v96 = v33;
        __chkstk_darwin(v30);
        v83[2] = &v95;

        a2 = sub_1001E2ED0(sub_1002071E0, v83, a1);

        if ((a2 & 1) == 0)
        {
          break;
        }

LABEL_35:

        if (v27 == v26)
        {
          goto LABEL_78;
        }
      }

      v88 = v28;
      v35 = *(v31 + 48);
      v34 = *(v31 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_100224D30(0, *(a1 + 16) + 1, 1, a1);
      }

      v37 = *(a1 + 16);
      v36 = *(a1 + 24);
      a2 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v90 = sub_100224D30((v36 > 1), v37 + 1, 1, a1);
      }

      else
      {
        v90 = a1;
      }

      a1 = 0;
      v38 = v90;
      *(v90 + 2) = a2;
      v39 = &v38[16 * v37];
      *(v39 + 4) = v35;
      *(v39 + 5) = v34;
      v95 = _swiftEmptyArrayStorage;
      do
      {
        if (v29)
        {
          a2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v41 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (a1 >= *(v91 + 16))
          {
            goto LABEL_114;
          }

          a2 = *(v5 + 8 * a1 + 32);

          v41 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            swift_once();
            goto LABEL_2;
          }
        }

        v42 = *(a2 + 48) == *(v31 + 48) && *(a2 + 56) == *(v31 + 56);
        if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v40 = *(v95 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++a1;
      }

      while (v41 != v26);

      v95 = sub_10021A608(v43);
      v28 = v88;
      sub_10027791C(&v95);
      if (v28)
      {
        goto LABEL_152;
      }

      v44 = v95;
      a1 = v90;
      if (v95 < 0 || (v95 & 0x4000000000000000) != 0)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_34:

          goto LABEL_35;
        }
      }

      else if (!*(v95 + 16))
      {
        goto LABEL_34;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v44 + 16))
        {
          goto LABEL_119;
        }

        v45 = *(v44 + 32);
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = 0;
        v46 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = 0;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v89 = v97;
    }

    while (v27 != v26);
  }

  else
  {
    v28 = 0;
    a1 = _swiftEmptyArrayStorage;
    v89 = _swiftEmptyArrayStorage;
  }

LABEL_78:

  if (v85 == 0x544C20726568744FLL && v86 == 0xEF73646E61422045 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v47 = *(v84 + 160);
    v90 = a1;
    if (v47)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      v50 = v89;
LABEL_128:
      v88 = v28;
      v93 = _swiftEmptyArrayStorage;
      if (v50 >> 62)
      {
        goto LABEL_146;
      }

      v74 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v74)
      {
LABEL_147:

        v28 = v88;
        goto LABEL_148;
      }

LABEL_130:
      v75 = 0;
      v76 = v50 & 0xC000000000000001;
      v77 = v50 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v76)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v50 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v75 >= *(v77 + 16))
          {
            goto LABEL_145;
          }

          v78 = *(v50 + 8 * v75 + 32);

          v50 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            v74 = _CocoaArrayWrapper.endIndex.getter();
            if (!v74)
            {
              goto LABEL_147;
            }

            goto LABEL_130;
          }
        }

        v79 = *(v78 + 48) == v48 && *(v78 + 56) == v49;
        if (v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v80 = *(v93 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v75;
        v19 = v50 == v74;
        v50 = v89;
        if (v19)
        {
          goto LABEL_147;
        }
      }
    }

    v51 = *(v84 + 156);
    v95 = 2118472780;
    v96 = 0xE400000000000000;
    LODWORD(v93) = v51;
    v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v52);

    v53 = v95;
    a2 = v96;
    v54 = qword_100382508;
    v55 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v56 = *(v54 + v55);
    v93 = _swiftEmptyArrayStorage;
    if (v56 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v57)
    {
      v58 = 0;
      v59 = v56 & 0xC000000000000001;
      v60 = v56 & 0xFFFFFFFFFFFFFF8;
      v91 = v57;
      v88 = v56 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v59)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a1 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v58 >= *(v60 + 16))
          {
            goto LABEL_117;
          }

          v61 = *(v56 + 8 * v58 + 32);

          a1 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
LABEL_104:
            __break(1u);
            goto LABEL_148;
          }
        }

        v62 = v61[2] == v53 && v61[3] == a2;
        if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v61 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) & 1) != 0 && (v61[6] == 1684955458 && v61[7] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v63 = v53;
          v64 = a2;
          v65 = v59;
          v66 = v56;
          v67 = *(v93 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v56 = v66;
          v59 = v65;
          a2 = v64;
          v53 = v63;
          v60 = v88;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v57 = v91;
        }

        else
        {
        }

        ++v58;
      }

      while (a1 != v57);
    }

    v93 = sub_10021A608(v68);
    sub_10027791C(&v93);
    v50 = v89;

    v69 = v93;
    if ((v93 & 0x8000000000000000) == 0 && (v93 & 0x4000000000000000) == 0)
    {
      if (*(v93 + 16))
      {
        goto LABEL_109;
      }

LABEL_127:

      v48 = 0;
      v49 = 0xE000000000000000;
      goto LABEL_128;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_127;
    }

LABEL_109:
    if ((v69 & 0xC000000000000001) != 0)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_112;
    }

    if (*(v69 + 16))
    {
      v70 = *(v69 + 32);

LABEL_112:

      v93 = 0x20646E6142;
      v94 = 0xE500000000000000;
      v71 = *(v70 + 128);
      v72 = *(v70 + 136);

      v73._countAndFlagsBits = v71;
      v73._object = v72;
      String.append(_:)(v73);

      v48 = v93;
      v49 = v94;
      goto LABEL_128;
    }

    __break(1u);
LABEL_152:

    __break(1u);
LABEL_153:

    __break(1u);
  }

  else
  {
LABEL_148:
    [*(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];

    v93 = sub_10021A608(v81);
    sub_100277998(&v93);
    if (v28)
    {
      goto LABEL_153;
    }

    return v93;
  }

  return result;
}

uint64_t sub_10027B624()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10027B66C(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  sub_100277B0C(a1, v2[2], a2);
}

unint64_t sub_10027B67C()
{
  result = qword_10037A070;
  if (!qword_10037A070)
  {
    sub_1001A55C8(&qword_10037A068, &qword_1002F5E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A070);
  }

  return result;
}

uint64_t sub_10027B6E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10027B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_10027B77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_10027B7E4()
{
  result = qword_10037A088;
  if (!qword_10037A088)
  {
    sub_1001A55C8(&qword_10037A090, qword_1002F5EA8);
    sub_10027B67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A088);
  }

  return result;
}

uint64_t sub_10027B868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_1001A551C(&qword_10037A0B0, &qword_1002F5F70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1001A5610(a1, a1[3]);
  sub_10027BF48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10027BA14()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10027BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10027BB1C(uint64_t a1)
{
  v2 = sub_10027BF48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027BB58(uint64_t a1)
{
  v2 = sub_10027BF48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027BB94(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10027BBDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027BC40()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int sub_10027BC94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027BCF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10027BD9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_10027BD48()
{
  result = qword_10037A098;
  if (!qword_10037A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A098);
  }

  return result;
}

uint64_t sub_10027BD9C(uint64_t *a1)
{
  v3 = sub_1001A551C(&qword_10037A0A0, &qword_1002F5F68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1001A5610(a1, v8);
  sub_10027BF48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1001A5654(a1);
  return v8;
}

unint64_t sub_10027BF48()
{
  result = qword_10037A0A8;
  if (!qword_10037A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0A8);
  }

  return result;
}

uint64_t sub_10027BFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027BFF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10027C054()
{
  result = qword_10037A0B8;
  if (!qword_10037A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0B8);
  }

  return result;
}

unint64_t sub_10027C0AC()
{
  result = qword_10037A0C0;
  if (!qword_10037A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0C0);
  }

  return result;
}

unint64_t sub_10027C104()
{
  result = qword_10037A0C8;
  if (!qword_10037A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0C8);
  }

  return result;
}

id sub_10027C158()
{
  type metadata accessor for CellularLoggingViewController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_10027C200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100282DE8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10027C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100282DE8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10027C2C8()
{
  sub_100282DE8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_10027C374(void *a1)
{
  v2 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for FavoritesTableCellV2();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v4 = String._bridgeToObjectiveC()();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setSeparatorStyle:0];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setDataSource:a1];
  [v6 setDelegate:a1];
  [v6 setAlwaysBounceVertical:1];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  [result frame];
  v11 = v10;

  result = [a1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  [result frame];
  v14 = v13;

  result = [a1 view];
  if (result)
  {
    v15 = result;
    [result frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v25.origin.x = v17;
    v25.origin.y = v19;
    v25.size.width = v21;
    v25.size.height = v23;
    v24 = [objc_allocWithZone(UIView) initWithFrame:{v11, v14, CGRectGetWidth(v25), 14.0}];
    [v6 setTableHeaderView:v24];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10027C5FC()
{
  v1 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_10027C6C4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for LoadingView());
    v6 = sub_100205B14(0xD000000000000020, 0x80000001002C0200, 0.0, 0.0, 0.0, 0.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setHidden:0];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10027C7B4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10027C818(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIButton) init];
  [v2 setClipsToBounds:1];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setTitleColor:v5 forState:0];
  v6 = [v4 grayColor];
  v7 = sub_1002827CC(0xD000000000000013, 0x80000001002C0380, 0x746C7561666544, 0xE700000000000000, v6);

  [v2 setAttributedTitle:v7 forState:0];
  v8 = [v2 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() systemFontOfSize:18.0];
    [v9 setFont:v10];
  }

  [v2 addTarget:a1 action:"didTapConfig" forControlEvents:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

id sub_10027CA14(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_10027CA94(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_10027CA94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(UIButton) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setTitle:v6 forState:0];

  v7 = [v5 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v8 setFont:v9];
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 colorNamed:v10];

  [v5 setTitleColor:v12 forState:0];
  [v5 addTarget:a1 action:*a3 forControlEvents:1];
  v13 = v5;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];
  [v14 setCornerRadius:12.0];

  v15 = [v13 layer];
  [v15 setBorderWidth:1.0];

  [v13 setClipsToBounds:1];
  v16 = [v13 layer];

  v17 = String._bridgeToObjectiveC()();
  v18 = [v11 colorNamed:v17];

  if (v18)
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v16 setBorderColor:v19];

  return v13;
}

id sub_10027CD64(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIButton) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setTitle:v3 forState:0];

  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4];

  [v2 setTitleColor:v6 forState:0];
  v7 = [v2 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v8 setFont:v9];
  }

  [v2 addTarget:a1 action:"didTapStop" forControlEvents:1];
  v10 = v2;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v10 layer];
  [v11 setCornerRadius:12.0];

  v12 = [v10 layer];
  [v12 setBorderWidth:1.0];

  [v10 setClipsToBounds:1];
  v13 = [v10 layer];

  v14 = String._bridgeToObjectiveC()();
  v15 = [v5 colorNamed:v14];

  if (v15)
  {
    v16 = [v15 CGColor];
  }

  else
  {
    v16 = 0;
  }

  [v13 setBorderColor:v16];

  return v10;
}

id sub_10027D02C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UISlider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setMinimumTrackTintColor:v5];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 colorNamed:v6];

  [v2 setMaximumTrackTintColor:v7];
  v8 = [v4 whiteColor];
  [v2 setThumbTintColor:v8];

  LODWORD(v9) = 1149239296;
  [v2 setMaximumValue:v9];
  [v2 setMinimumValue:8589936700.0];
  [v2 setValue:1 animated:8589936700.0];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 153) == 1)
  {
    [v2 setMinimumValue:3.68934975e19];
    LODWORD(v10) = 1166016512;
    [v2 setMaximumValue:v10];
    [v2 setValue:1 animated:3.68934975e19];
    v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues;
    v12 = *(a1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues);
    *(a1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues) = _swiftEmptyArrayStorage;

    [v2 minimumValue];
    for (i = v13; ; i = i + i)
    {
      [v2 maximumValue];
      if (i > v15)
      {
        break;
      }

      v16 = *(a1 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + v11) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100225940(0, *(v16 + 2) + 1, 1, v16);
        *(a1 + v11) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_100225940((v18 > 1), v19 + 1, 1, v16);
      }

      *(v16 + 2) = v19 + 1;
      *&v16[4 * v19 + 32] = i;
      *(a1 + v11) = v16;
    }

    v20 = "sliderValueChangedSinope:";
  }

  else
  {
    v20 = "didChangedChunkFileSliderValue:";
  }

  [v2 addTarget:a1 action:v20 forControlEvents:4096];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_10027D374(uint64_t a1)
{
  v2 = [objc_allocWithZone(UISlider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setMinimumTrackTintColor:v5];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 colorNamed:v6];

  [v2 setMaximumTrackTintColor:v7];
  v8 = [v4 whiteColor];
  [v2 setThumbTintColor:v8];

  [v2 setMaximumValue:1.58456366e29];
  LODWORD(v9) = 1132462080;
  [v2 setMinimumValue:v9];
  LODWORD(v10) = 1132462080;
  [v2 setValue:1 animated:v10];
  [v2 addTarget:a1 action:"didChangedMaxLogsSlider:" forControlEvents:4096];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_10027D550(uint64_t *a1, uint64_t (*a2)(void))
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

void sub_10027D5B0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CellularLoggingViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (!v1 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v2 = String._bridgeToObjectiveC()();
    [v0 setTitle:v2];
  }

  v3 = [objc_allocWithZone(type metadata accessor for CellularLoggingService()) init];
  v4 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService];
  *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = v3;
  v5 = v3;

  if (v5)
  {
    *&v5[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_delegate + 8] = &off_100321A68;
    swift_unknownObjectWeakAssign();
  }

  sub_10027F9F8();
}

void sub_10027D8EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v16;
  if (qword_100375018 != -1)
  {
    v49 = v15;
    v37 = &v42 - v16;
    v38 = v0;
    v39 = v17;
    swift_once();
    v17 = v39;
    v0 = v38;
    v18 = v37;
    v15 = v49;
  }

  if ((*(qword_100382500 + 154) & 1) == 0)
  {
    v46 = v17;
    v47 = v6;
    v48 = v5;
    v49 = v15;
    *(qword_100382500 + 154) = 1;
    v20 = sub_10027C2F0();
    v21 = *v19;
    if (!*v19)
    {
LABEL_13:
      (v20)(aBlock, 0);
      v44 = v0;
      v45 = v1;
      v28 = sub_10027C354();
      [v28 reloadData];

      v29 = sub_10027C9F4();
      sub_1001D54B4();

      if (qword_100374F90 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v30 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v31 = v18;
      + infix(_:_:)();
      v46 = *(v46 + 8);
      v32 = v13;
      v33 = v49;
      (v46)(v32, v49);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100282DC0;
      aBlock[5] = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100321BD8;
      v35 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100222030();
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_1002302F0();
      v36 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);

      (*(v45 + 8))(v4, v36);
      (*(v47 + 8))(v9, v48);
      (v46)(v31, v33);
      return;
    }

    v22 = v19;
    if (!(v21 >> 62))
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v21 = *v22;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!(v21 >> 62))
        {
          v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
          sub_100204C28(0, v24);
          goto LABEL_13;
        }

        goto LABEL_21;
      }
    }

    if (v21 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (v40 < 0)
      {
        goto LABEL_23;
      }

      v41 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v43;
      if (v43 < 0 || v41 < v43)
      {
        __break(1u);
LABEL_21:
        v40 = _CocoaArrayWrapper.endIndex.getter();
        if ((v40 & 0x8000000000000000) == 0)
        {
LABEL_24:
          v24 = v40;
          goto LABEL_9;
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v26 = sub_100227334(0, v25);
    v27 = *v22;
    *v22 = v26;

    goto LABEL_13;
  }
}

uint64_t sub_10027DE9C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration);
    v3 = *(result + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration + 8);

    v4 = sub_10027D00C();
    [v4 value];
    v6 = v5;

    v7 = sub_10027D354();
    [v7 value];
    v9 = v8;

    sub_10027F7F4(v6, v9);
  }

  return result;
}

uint64_t sub_10027E0C4()
{
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v22 - 8);
  v0 = *(v25 + 64);
  __chkstk_darwin(v22);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100282DB8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100321BB0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100222030();
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v18 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v2, v18);
  (*(v23 + 8))(v6, v24);
  return (v21)(v14, v7);
}

void sub_10027E4B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
    if (v2)
    {
      v3 = qword_100375018;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      *(qword_100382500 + 154) = 0;
      v5 = *&v4[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
      v6 = [v5 stop];

      v1 = v6;
    }
  }
}

uint64_t sub_10027E5A0()
{
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v22 - 8);
  v0 = *(v26 + 64);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = sub_10027CA74();
  sub_1001D54B4();

  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100282DB0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100321B88;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100222030();
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v19 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v2, v19);
  (*(v24 + 8))(v6, v25);
  return (v23)(v14, v7);
}

void sub_10027E9A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
    if (v2)
    {
      v3 = v2;
      sub_10027F57C();

      v1 = v3;
    }
  }
}

void sub_10027EA60()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
  if (v1)
  {
    v2 = qword_100374F90;
    v4 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v3 = *&v4[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
  }
}

void sub_10027EBA8(id a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 32);
    v7 = v5 - 1;
    if (v5 != 1)
    {
      v8 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues);

      v9 = 36;
      v10 = v6;
      do
      {
        v11 = *(v4 + v9);
        [a1 value];
        v13 = vabds_f32(v11, v12);
        [a1 value];
        if (v13 < vabds_f32(v10, v14))
        {
          v6 = v11;
          v10 = v11;
        }

        v9 += 4;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0.0;
  }

  *&a2 = v6;
  [a1 setValue:1 animated:a2];
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < 9.2234e18)
  {
    v15 = sub_10027D334();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v16;

    v17._countAndFlagsBits = 6441760;
    v17._object = 0xE300000000000000;
    String.append(_:)(v17);

    v18 = [objc_opt_self() grayColor];
    v19 = sub_1002827CC(0xD000000000000011, 0x80000001002C0270, v20, v21, v18);

    [v15 setAttributedText:v19];
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_10027EE00(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = sub_10027D00C();
  [v5 minimumValue];
  v7 = v6;

  if (v4 != v7)
  {
    goto LABEL_6;
  }

  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) minimumValue];
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 < 9.2234e18)
  {
LABEL_14:
    v16 = sub_10027D334();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v17;

    v18._countAndFlagsBits = 6441760;
    v18._object = 0xE300000000000000;
    String.append(_:)(v18);

    v19 = [objc_opt_self() grayColor];
    v20 = sub_1002827CC(0xD000000000000011, 0x80000001002C0270, v21, v22, v19);

    [v16 setAttributedText:v20];
    return;
  }

  __break(1u);
LABEL_6:
  [a1 value];
  v10 = v9;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) maximumValue];
  if (v10 != v12)
  {
    goto LABEL_11;
  }

  [*(v1 + v11) maximumValue];
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 9.2234e18)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_11:
  [a1 value];
  v15 = roundf(v14 * 0.03125) * 32.0;
  [a1 setValue:?];
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 9.2234e18)
  {
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_10027F0F4(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = sub_10027D00C();
  [v5 minimumValue];
  v7 = v6;

  if (v4 != v7)
  {
    goto LABEL_6;
  }

  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) minimumValue];
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 < 9.2234e18)
  {
LABEL_14:
    v16 = sub_10027D530();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v17;

    v18._countAndFlagsBits = 0x73656C696620;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);

    v19 = [objc_opt_self() grayColor];
    v20 = sub_1002827CC(0x20676F6C2078614DLL, 0xEE00203A656C6966, v21, v22, v19);

    [v16 setAttributedText:v20];
    return;
  }

  __break(1u);
LABEL_6:
  [a1 value];
  v10 = v9;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) maximumValue];
  if (v10 != v12)
  {
    goto LABEL_11;
  }

  [*(v1 + v11) maximumValue];
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 9.2234e18)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_11:
  [a1 value];
  v15 = roundf(v14);
  [a1 setValue:?];
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 9.2234e18)
  {
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_10027F3E4(uint64_t a1)
{
  v3 = type metadata accessor for MultiChoiceSelectionModal();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_dismissButton;
  *&v4[v5] = sub_10021C6F4();
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_tableViewData] = a1;
  v8.receiver = v4;
  v8.super_class = v3;

  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v7 = v6;
  [v7 setTransitioningDelegate:{v1, v8.receiver, v8.super_class}];
  *&v7[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_delegate + 8] = &off_100321A58;
  swift_unknownObjectWeakAssign();
  [v7 setModalPresentationStyle:4];

  [v1 presentViewController:v7 animated:1 completion:0];
}

void sub_10027F57C()
{
  v1 = v0;
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v3 = sub_10027C2F0();
  v4 = *v2;
  if (*v2)
  {
    v5 = v2;
    if (!(v4 >> 62))
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v4 = *v5;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!(v4 >> 62))
        {
          v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
          sub_100204C28(0, v7);
          goto LABEL_12;
        }

        goto LABEL_17;
      }
    }

    if (v4 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20 < 0)
      {
        goto LABEL_19;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v19 < 0 || (v8 = v19, v21 < v19))
      {
        __break(1u);
LABEL_17:
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if ((v20 & 0x8000000000000000) == 0)
        {
LABEL_20:
          v7 = v20;
          goto LABEL_8;
        }

        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v9 = sub_100227334(0, v8);
    v10 = *v5;
    *v5 = v9;
  }

LABEL_12:
  (v3)(&v22, 0);
  v11 = sub_10027C354();
  [v11 reloadData];

  v12 = sub_10027C6C4();
  [v12 setHidden:0];

  v13 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v14 = *(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  v15 = sub_100205934();

  v16 = String._bridgeToObjectiveC()();
  [v15 setText:v16];

  v17 = *(v1 + v13);
  v18 = sub_10020582C();

  [v18 stopAnimating];
}

void sub_10027F7F4(float a1, float a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
    if (v4)
    {
      v7 = objc_allocWithZone(CellularLoggingConfiguration);
      v18 = v3;
      v8 = v4;
      v9 = [v7 init];
      v10 = String._bridgeToObjectiveC()();
      [v9 setActiveConfig:v10];

      v11 = objc_allocWithZone(NSNumber);
      *&v12 = a1;
      v13 = [v11 initWithFloat:v12];
      [v9 setChunkFileSize:v13];

      v14 = objc_allocWithZone(NSNumber);
      *&v15 = a2;
      v16 = [v14 initWithFloat:v15];
      [v9 setMaxNumberOfLogs:v16];

      if (qword_100374FA0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      v17 = v9;
    }
  }
}

void sub_10027F9F8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = sub_10027C354();
  [v2 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = sub_10027C6C4();
  [v5 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView];
  [v7 addSubview:v9];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = sub_10027C5FC();
  [v9 addSubview:v10];

  v11 = sub_10027C794();
  [v9 addSubview:v11];

  v12 = sub_10027D00C();
  [v9 addSubview:v12];

  v13 = sub_10027D354();
  [v9 addSubview:v13];

  v14 = sub_10027D334();
  [v9 addSubview:v14];

  v15 = sub_10027D530();
  [v9 addSubview:v15];

  v16 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView];
  [v9 addSubview:v16];
  v17 = [objc_opt_self() whiteColor];
  [v9 setBackgroundColor:v17];

  [v16 setAxis:0];
  [v16 setAlignment:3];
  [v16 setSpacing:10.0];
  [v16 setDistribution:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v166 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002F1550;
  v19 = [v16 leftAnchor];
  v20 = [v9 safeAreaLayoutGuide];
  v21 = [v20 leftAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:5.0];
  *(v18 + 32) = v22;
  v23 = [v16 rightAnchor];
  v24 = [v9 safeAreaLayoutGuide];
  v25 = [v24 rightAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-5.0];
  *(v18 + 40) = v26;
  v27 = [v16 bottomAnchor];
  v28 = [v9 safeAreaLayoutGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-5.0];
  *(v18 + 48) = v30;
  sub_1001E1BB4(0, &qword_1003774A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:isa];

  v32 = sub_10027C9F4();
  [v16 addArrangedSubview:v32];

  v33 = sub_10027CD44();
  [v16 addArrangedSubview:v33];

  v34 = sub_10027CA74();
  v163 = v16;
  [v16 addArrangedSubview:v34];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1002F6100;
  v36 = [v9 leftAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v38 = v37;
  v39 = [v37 safeAreaLayoutGuide];

  v40 = [v39 leftAnchor];
  v41 = [v36 constraintEqualToAnchor:v40];

  *(v35 + 32) = v41;
  v42 = [v9 rightAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 rightAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v35 + 40) = v47;
  v48 = [v9 topAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 topAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v35 + 48) = v53;
  v54 = [v9 heightAnchor];
  v55 = [v54 constraintEqualToConstant:200.0];

  *(v35 + 56) = v55;
  v56 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton;
  v57 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] topAnchor];
  v58 = [v9 safeAreaLayoutGuide];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:5.0];
  *(v35 + 64) = v60;
  v61 = [*&v0[v56] leftAnchor];
  v62 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView;
  v63 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] leftAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];

  *(v35 + 72) = v64;
  v65 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel;
  v66 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] leftAnchor];
  v67 = [*&v0[v62] leftAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v35 + 80) = v68;
  v69 = [*&v0[v65] topAnchor];
  v70 = [*&v0[v56] safeAreaLayoutGuide];
  v71 = [v70 bottomAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v35 + 88) = v72;
  v164 = v9;
  v73 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  v74 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] leftAnchor];
  v75 = [*&v0[v62] leftAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v35 + 96) = v76;
  v77 = [*&v0[v73] topAnchor];
  v78 = [*&v0[v65] safeAreaLayoutGuide];
  v79 = [v78 bottomAnchor];

  v80 = [v77 constraintEqualToAnchor:v79];
  *(v35 + 104) = v80;
  v81 = [*&v0[v73] widthAnchor];
  v82 = [v164 widthAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-40.0];

  *(v35 + 112) = v83;
  v84 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel;
  v85 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] leftAnchor];
  v86 = [*&v0[v62] leftAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v35 + 120) = v87;
  v88 = [*&v0[v84] topAnchor];
  v89 = [*&v0[v73] safeAreaLayoutGuide];
  v90 = [v89 bottomAnchor];

  v91 = [v88 constraintEqualToAnchor:v90];
  *(v35 + 128) = v91;
  v92 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider;
  v93 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] leftAnchor];
  v94 = [*&v0[v62] leftAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v35 + 136) = v95;
  v96 = [*&v0[v92] topAnchor];
  v97 = [*&v0[v84] safeAreaLayoutGuide];
  v98 = [v97 bottomAnchor];

  v99 = [v96 constraintEqualToAnchor:v98];
  *(v35 + 144) = v99;
  v100 = [*&v0[v92] widthAnchor];
  v101 = [v164 widthAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:-40.0];

  *(v35 + 152) = v102;
  v103 = [*&v0[v62] centerXAnchor];
  v104 = [v164 centerXAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v35 + 160) = v105;
  v106 = [*&v0[v62] bottomAnchor];
  v107 = [v163 safeAreaLayoutGuide];
  v108 = [v107 topAnchor];

  v109 = [v106 constraintEqualToAnchor:v108 constant:-5.0];
  *(v35 + 168) = v109;
  v110 = [*&v0[v62] heightAnchor];
  v111 = [v110 constraintEqualToConstant:1.0];

  *(v35 + 176) = v111;
  v112 = [*&v0[v62] widthAnchor];
  v113 = [v164 widthAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-40.0];

  *(v35 + 184) = v114;
  v115 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v115];

  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1002EF930;
  v117 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView;
  v118 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] topAnchor];
  v119 = [v164 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v116 + 32) = v120;
  v121 = [*&v0[v117] leadingAnchor];
  v122 = [v0 view];
  if (!v122)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v123 = v122;
  v124 = [v122 safeAreaLayoutGuide];

  v125 = [v124 leadingAnchor];
  v126 = [v121 constraintEqualToAnchor:v125];

  *(v116 + 40) = v126;
  v127 = [*&v0[v117] trailingAnchor];
  v128 = [v0 view];
  if (!v128)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v129 = v128;
  v130 = [v128 safeAreaLayoutGuide];

  v131 = [v130 trailingAnchor];
  v132 = [v127 constraintEqualToAnchor:v131];

  *(v116 + 48) = v132;
  v133 = [*&v0[v117] bottomAnchor];
  v134 = [v0 view];
  if (!v134)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v135 = v134;
  v136 = [v134 safeAreaLayoutGuide];

  v137 = [v136 bottomAnchor];
  v138 = [v133 constraintEqualToAnchor:v137];

  *(v116 + 56) = v138;
  v139 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v139];

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1002EF930;
  v141 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v142 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] topAnchor];
  v143 = [v164 bottomAnchor];
  v144 = [v142 constraintEqualToAnchor:v143];

  *(v140 + 32) = v144;
  v145 = [*&v0[v141] leadingAnchor];
  v146 = [v0 view];
  if (!v146)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v147 = v146;
  v148 = [v146 safeAreaLayoutGuide];

  v149 = [v148 leadingAnchor];
  v150 = [v145 constraintEqualToAnchor:v149];

  *(v140 + 40) = v150;
  v151 = [*&v0[v141] trailingAnchor];
  v152 = [v0 view];
  if (!v152)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v153 = v152;
  v154 = [v152 safeAreaLayoutGuide];

  v155 = [v154 trailingAnchor];
  v156 = [v151 constraintEqualToAnchor:v155];

  *(v140 + 48) = v156;
  v157 = [*&v0[v141] bottomAnchor];
  v158 = [v0 view];
  if (!v158)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v159 = v158;
  v160 = [v158 safeAreaLayoutGuide];

  v161 = [v160 bottomAnchor];
  v162 = [v157 constraintEqualToAnchor:v161];

  *(v140 + 56) = v162;
  v165 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v165];
}

id sub_100280D60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition;
  *&v4[v7] = [objc_allocWithZone(type metadata accessor for CircularTransition()) init];
  v8 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView;
  *&v4[v8] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations] = _swiftEmptyArrayStorage;
  v9 = &v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration];
  *v9 = 0x746C7561666544;
  *(v9 + 1) = 0xE700000000000000;
  v10 = &v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_loadingViewContext];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs;
  sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
  *&v4[v11] = NSNumber.init(integerLiteral:)(0);
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___startButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___resetButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___stopButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] = 0;
  v12 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for CellularLoggingViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v13, a3);

  return v14;
}

id sub_100280FE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for CircularTransition()) init];
  v5 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView;
  *&v2[v5] = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations] = _swiftEmptyArrayStorage;
  v6 = &v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration];
  *v6 = 0x746C7561666544;
  *(v6 + 1) = 0xE700000000000000;
  v7 = &v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_loadingViewContext];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs;
  sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
  *&v2[v8] = NSNumber.init(integerLiteral:)(0);
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___startButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___resetButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___stopButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] = 0;
  v9 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView;
  *&v2[v9] = [objc_allocWithZone(UIView) init];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CellularLoggingViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

void sub_10028120C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData);

  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations);

  v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_loadingViewContext + 8);

  v5 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues);

  v6 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView);
}

id sub_100281384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CellularLoggingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100281560(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_1001A76E8();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:type:_:)();

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v20 = v2;
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v11 = swift_allocObject();
    *(v11 + 16) = sub_10028264C;
    *(v11 + 24) = v7;

    v12 = String._bridgeToObjectiveC()();
    v25 = sub_1002826A8;
    v26 = v11;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10025BE04;
    v24 = &unk_100321AE8;
    v13 = _Block_copy(&aBlock);

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = sub_10028264C;
    *(v16 + 24) = v7;

    v17 = String._bridgeToObjectiveC()();
    v25 = sub_1002826C8;
    v26 = v16;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10025BE04;
    v24 = &unk_100321B38;
    v18 = _Block_copy(&aBlock);

    v19 = [v14 actionWithTitle:v17 style:1 handler:v18];
    _Block_release(v18);

    [v10 addAction:v15];
    [v10 addAction:v19];
    [v20 presentViewController:v10 animated:1 completion:0];

    sub_1001D4FA4();
  }

  return result;
}

void sub_10028196C(unint64_t a1)
{
  v2 = v1;
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v12 = *(v2 + v4);
      }

      _CocoaArrayWrapper.endIndex.getter();
    }

    sub_100281B10(a1);
    v6 = sub_10027C2F0();
    if (*v7)
    {

      sub_1001E3764(v8);
    }

    (v6)(v13, 0);
  }

  else
  {
    *(v2 + v4) = a1;
  }

  v9 = sub_10027C6C4();
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v9 setHidden:v10 > 0];

  v11 = sub_10027C354();
  [v11 reloadData];
}

void sub_100281B10(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    if (v5 < 0)
    {
      v25 = *(v1 + v4);
    }
  }

  else if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (v6 < [*(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs) integerValue])
  {
    return;
  }

  v7 = *(v2 + v4);
  if (v7)
  {
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v26 = *(v2 + v4);
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v9 = qword_100382488;
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002EED40;
    if (a1 >> 62)
    {
      v30 = v10;
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v30;
      v12 = __OFADD__(v8, v27);
      v13 = v8 + v27;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = __OFADD__(v8, v11);
      v13 = v8 + v11;
      if (!v12)
      {
LABEL_14:
        *(v10 + 56) = &type metadata for Int;
        *(v10 + 64) = &protocol witness table for Int;
        *(v10 + 32) = v13;
        os_log(_:dso:log:type:_:)();

        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_15:
  v9 = sub_10027C2F0();
  v15 = *v14;
  if (*v14)
  {
    v8 = v14;
    if (!(v15 >> 62))
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v15 = *v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!(v15 >> 62))
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
          sub_100204C28(0, v17);
          goto LABEL_24;
        }

        goto LABEL_41;
      }
    }

    if (!(v15 >> 62))
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

LABEL_37:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28 < 0)
    {
      goto LABEL_43;
    }

    v29 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v31;
    if (v31 < 0 || v29 < v31)
    {
      __break(1u);
LABEL_41:
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if ((v28 & 0x8000000000000000) == 0)
      {
LABEL_44:
        v17 = v28;
        goto LABEL_20;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_23:
    v19 = sub_100227334(0, v18);
    v20 = *v8;
    *v8 = v19;
  }

LABEL_24:
  (v9)(v32, 0);
  v21 = sub_10027C2F0();
  if (*v22)
  {

    sub_1001E3764(v23);
  }

  (v21)(v32, 0);
  v24 = sub_10027C354();
  [v24 reloadData];
}

unint64_t sub_100281FB8(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  type metadata accessor for FavoritesTableCellV2();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (!v14)
    {
      return v12;
    }

    result = IndexPath.row.getter();
    v37 = v4;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v14 + 8 * result + 32);
LABEL_7:
      v17 = v16;

      v18 = sub_1001CF7C4();
      v19 = [v17 fileName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v38 = 0x6D616E20656C6946;
      v39 = 0xEB00000000203A65;
      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);

      String.init<A>(_:)();
      v24 = String._bridgeToObjectiveC()();

      [v18 setText:v24];

      v25 = sub_1001CF7DC();
      v26 = [v17 fileSize];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v38 = 0x7A695320656C6946;
      v39 = 0xEB00000000203A65;
      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      String.init<A>(_:)();
      v31 = String._bridgeToObjectiveC()();

      [v25 setText:v31];

      v32 = sub_1001CF7F4();
      v33 = [v17 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001D5114(2);
      (*(v37 + 8))(v7, v3);
      v34 = String._bridgeToObjectiveC()();

      [v32 setText:v34];

      v35 = sub_1001CF878();
      [v35 setHidden:1];

      return v12;
    }

    __break(1u);
  }

  else
  {

    v36 = objc_allocWithZone(UITableViewCell);

    return [v36 init];
  }

  return result;
}

uint64_t sub_100282614()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100282670()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002826B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002826D0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration);
  v4 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration + 8);
  *v3 = a1;
  v3[1] = a2;

  v5 = *v3;
  v6 = v3[1];
  v7 = objc_opt_self();

  v8 = [v7 grayColor];
  v9 = sub_1002827CC(0xD000000000000013, 0x80000001002C0380, v5, v6, v8);

  v10 = sub_10027C794();
  [v10 setAttributedTitle:v9 forState:0];
}

id sub_1002827CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{

  v8._countAndFlagsBits = a3;
  v8._object = a4;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(NSMutableAttributedString);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithString:{v10, a1, a2}];

  v12 = [v11 mutableString];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 rangeOfString:v13 options:1];
  v16 = v15;

  if (v14 != NSNotFound.getter())
  {
    [v11 addAttribute:NSForegroundColorAttributeName value:a5 range:{v14, v16}];
  }

  return v11;
}

id sub_100282904()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setTextColor:v3];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 153))
  {
    v4 = 0x624B2032313520;
  }

  else
  {
    v4 = 0x624B20323320;
  }

  if (*(qword_100382500 + 153))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = [v2 grayColor];
  v7 = sub_1002827CC(0xD000000000000010, 0x80000001002C0360, v4, v5, v6);

  [v0 setAttributedText:v7];
  [v0 setTextAlignment:2];
  v8 = [objc_opt_self() systemFontOfSize:18.0];
  [v0 setFont:v8];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_100282AF0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setTextColor:v3];
  v4 = [v2 grayColor];
  v5 = sub_1002827CC(0x20676F6C2078614DLL, 0xED00003A656C6966, 0x6C69662036353220, 0xEA00000000007365, v4);

  [v0 setAttributedText:v5];
  [v0 setTextAlignment:2];
  v6 = [objc_opt_self() systemFontOfSize:18.0];
  [v0 setFont:v6];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_100282C78(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition];
  *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode) = a1;
  v3 = sub_10027C9F4();
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = (v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint);
  *v8 = v5;
  v8[1] = v7;
  [*(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle) setCenter:{v5, v7}];
  result = [v1 view];
  if (result)
  {
    v10 = result;
    v11 = [result backgroundColor];

    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor);
      *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor) = v11;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100282D78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100282DE8()
{
  result = qword_10037A2D0;
  if (!qword_10037A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A2D0);
  }

  return result;
}

char *sub_100282E60()
{
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging] = 0;
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_timer] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CellularLoggingService();
  v1 = objc_msgSendSuper2(&v7, "init");
  v2 = [objc_allocWithZone(CellularLogging) init];
  v3 = OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging;
  v4 = *&v1[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
  *&v1[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging] = v2;

  v5 = *&v1[v3];
  if (v5)
  {
    [v5 setDelegate:v1];
  }

  sub_100282F40();
  return v1;
}

void sub_100282F40()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_100283B0C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10025BE6C;
  v6[3] = &unk_100321C48;
  v3 = _Block_copy(v6);
  v4 = v0;

  v5 = [v1 addObserverForName:UIApplicationWillTerminateNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

void sub_100283070(uint64_t a1, uint64_t a2)
{
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v3 = *(a2 + OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging);
  if (v3)
  {
    v4 = [v3 stop];
  }

  else
  {
    static os_log_type_t.default.getter();

    os_log(_:dso:log:type:_:)();
  }
}

id sub_100283174()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:UIApplicationWillTerminateNotification];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CellularLoggingService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100283300(void *result, uint64_t a2)
{
  if (result && (result = sub_1001EB754(result)) != 0)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10028196C(v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_1001A76E8();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:type:_:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_errorRetain();
      sub_100281560(a2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10028358C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    swift_unknownObjectRelease();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
LABEL_24:

    os_log(_:dso:log:type:_:)();
    return;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (a3 && (v5 = a3, v6 = Strong, (v7 = [v5 maxNumberOfLogs]) != 0))
        {
          v13 = *(v6 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs);
          *(v6 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs) = v7;
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      return;
    }

    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    goto LABEL_24;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1001A76E8();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:type:_:)();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100281560(a2);
    swift_unknownObjectRelease();
  }
}

void *sub_100283958(void *result)
{
  if (result)
  {
    result = sub_1001EB860(result);
    if (result)
    {
      v1 = result;
      if (qword_100374FA0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations;
        v5 = *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations);
        *(v3 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations) = v1;

        v6 = *(v3 + v4);

        sub_10027F3E4(v7);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100283AD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100283B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100283B2C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v18 = v12;
  v19 = v13;
  sub_1001AC6D0(&v18);
  sub_100284444(SBYTE10(v19));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v6;
  v13 = v7;
  sub_10023AE00(0, 0, &v12, *(v1 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService));
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for SURLSessionRunningView() + 28)) = KeyPath;
  sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SURLSessionRunningViewModel();
  sub_100285280();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v4;
  State.init(wrappedValue:)();
  *(a1 + 16) = v6;
  *(a1 + 24) = *(&v6 + 1);
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  State.init(wrappedValue:)();
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_100283D3C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_100283DF4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100283EB0(__int128 *a1, void **a2)
{
  v3 = a1[3];
  v18[2] = a1[2];
  v18[3] = v3;
  v18[4] = a1[4];
  v19 = *(a1 + 40);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[2];
  v7 = a1[4];
  v15 = a1[3];
  v16 = v7;
  v17 = *(a1 + 40);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v14 = v6;
  sub_1002851AC(v18, v11);
  v9 = v5;
  return static Published.subscript.setter();
}

uint64_t sub_100283F74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[2] = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v13[0] = v7;
  v13[1] = v8;
  sub_1001AC6D0(v13);
  if (v14)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1001AC6D0(&v7);
  return BYTE1(v10);
}

void sub_100284098()
{
  if (qword_100375040 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10021F6F4(v1, qword_100382540);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s getting traffic descriptors", v4, 0xCu);
    sub_1001A5654(v5);
  }

  v6 = [*(v0 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) getTrafficDescriptors];
  if (v6)
  {
    v7 = v6;
    sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
      *(v9 + 12) = 2080;
      v10 = Array.description.getter();
      v12 = v11;

      v13 = sub_100223114(v10, v12, &v18);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s: %s", v9, 0x16u);
      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "%s: no descriptors available", v15, 0xCu);
      sub_1001A5654(v16);

      goto LABEL_10;
    }
  }
}

void sub_100284444(char a1)
{
  v2 = v1;
  if (qword_100375040 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10021F6F4(v4, qword_100382540);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100223114(0xD00000000000001ALL, 0x80000001002C0630, &v36);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s invoked", v7, 0xCu);
    sub_1001A5654(v8);
  }

  if (a1 != 24)
  {
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    sub_10021F6F4(v4, qword_100382528);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = qword_1002F6448[a1];
      _os_log_impl(&_mh_execute_header, v21, v22, "settings application category to %ld", v23, 0xCu);
    }

    sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
    v24.super.super.isa = NSNumber.init(integerLiteral:)(qword_1002F6448[a1]).super.super.isa;
    v25 = [*(v2 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) setApplicationCategory:v24.super.super.isa];
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_10023E8AC(a1);
      v32 = sub_100223114(v30, v31, &v36);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_100223114(v33, v34, &v36);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "unable to set category %s due to %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  sub_10021F6F4(v4, qword_100382528);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "settings application category to nil", v11, 2u);
  }

  v12 = [*(v2 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) setApplicationCategory:0];
  if (v12)
  {
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_100223114(v18, v19, &v36);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "unable to set category (nil) due to %s", v16, 0xCu);
      sub_1001A5654(v17);
    }

    else
    {
    }

LABEL_24:
    sub_100285208();
    swift_allocError();
    swift_willThrow();
  }
}

char *sub_100284A04(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v4 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v4;
  v9[5] = *(a1 + 64);
  v10 = *(a1 + 80);
  v5 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v5;
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = [objc_allocWithZone(SPCoreTelephonyAdapter) init];
  *&v1[OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService] = v6;
  v9[0].receiver = v1;
  v9[0].super_class = ObjectType;
  v7 = [(objc_super *)v9 init];
  [*&v7[OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService] setDelegate:v7];
  return v7;
}

uint64_t type metadata accessor for SURLSessionViewModel()
{
  result = qword_10037A3B8;
  if (!qword_10037A3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100284BF8()
{
  sub_100284C94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100284C94()
{
  if (!qword_10037A3C8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10037A3C8);
    }
  }
}

void sub_100284E20(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10021F6F4(v7, qword_100382528);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315650;
    sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
    v10 = Array.description.getter();
    v12 = sub_100223114(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100223114(a2, a3, &v14);
    *(v9 + 22) = 1024;
    *(v9 + 24) = a4 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v8, "slicing descriptors were updated: %s appInfo=%s status=%{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
  }
}

void sub_100285000(void *a1)
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10021F6F4(v2, qword_100382528);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "slicing running app state changed: %@", v5, 0xCu);
    sub_10028513C(v6);
  }
}

uint64_t sub_10028513C(uint64_t a1)
{
  v2 = sub_1001A551C(&unk_100379B60, &unk_1002F3B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100285208()
{
  result = qword_10037A448;
  if (!qword_10037A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A448);
  }

  return result;
}

unint64_t sub_100285280()
{
  result = qword_10037A450;
  if (!qword_10037A450)
  {
    type metadata accessor for SURLSessionRunningViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A450);
  }

  return result;
}

unint64_t sub_1002852EC()
{
  result = qword_10037A460;
  if (!qword_10037A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A460);
  }

  return result;
}

uint64_t sub_10028536C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100382448 == -1)
  {
    if (qword_100382450)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100285C98();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100382450)
    {
      return _availability_version_check();
    }
  }

  if (qword_100382440 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100285CB0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100382430 < v11;
    if (dword_100382430 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100382434 > a3)
      {
        return 1;
      }

      if (dword_100382434 >= a3)
      {
        return dword_100382438 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100382430 < a2;
  if (dword_100382430 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100285500(uint64_t result)
{
  v1 = qword_100382450;
  if (qword_100382450)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100382450 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100382430, &dword_100382434, &dword_100382438);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100285834(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412802;
  v4 = @"NRSlicing";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to read carrier bundle key %@ from context %@ with error: %@", &v3, 0x20u);
}

void sub_100285B5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error setting the category %@. %@", &v3, 0x16u);
}

void sub_100285BE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error getting slice traffic descriptors %@", &v2, 0xCu);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}