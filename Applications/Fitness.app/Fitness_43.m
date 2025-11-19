uint64_t sub_1004D9200(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E9A30);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  result = swift_beginAccess();
  v14 = *(v1 + 40);
  if (*(v14 + 16))
  {

    v15 = sub_1004C5CD4(a1);
    if (v16)
    {
      (*(v7 + 16))(v9, *(v14 + 56) + *(v7 + 72) * v15, v6);

      (*(v7 + 32))(v12, v9, v6);
      swift_beginAccess();
      sub_1004D902C(a1, v5);
      sub_10000EA04(v5, &qword_1008E9A30);
      swift_endAccess();
      sub_1004D8F08();
      ImpressionsCalculator.removeElement(_:)();

      return (*(v7 + 8))(v12, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004D9430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DCC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1004D9574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvancedGoalViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004D95CC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.calendar.setter();
}

uint64_t sub_1004D9694(void *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v27 = a5;
  v28 = a4;
  v25 = a3;
  v24 = a2;
  v23 = a1;
  v5 = type metadata accessor for AdvancedChangeGoalView();
  __chkstk_darwin(v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100140278(&qword_1008F0110);
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  *v7 = swift_getKeyPath();
  sub_100140278(&qword_1008E2280);
  swift_storeEnumTagMultiPayload();
  v14 = v7 + v5[5];
  sub_10046440C();
  sub_1004D99C4(&qword_1008F0118, sub_10046440C);
  *v14 = Environment.init<A>(_:)();
  v14[8] = v15 & 1;
  v16 = (v7 + v5[6]);
  type metadata accessor for GoalDaysModel();
  sub_1004D99C4(&unk_1008E2210, type metadata accessor for GoalDaysModel);
  v17 = v23;
  *v16 = ObservedObject.init(wrappedValue:)();
  v16[1] = v18;
  *(v7 + v5[7]) = v24;
  *(v7 + v5[8]) = v25;
  *(v7 + v5[9]) = v27;
  sub_1004D99C4(&qword_1008F0120, type metadata accessor for AdvancedChangeGoalView);
  View.environment<A>(_:)();
  sub_1004D9A0C(v7);
  v19 = v26;
  (*(v8 + 16))(v10, v13, v26);
  v20 = objc_allocWithZone(sub_100140278(&qword_1008F0128));
  v21 = _UIHostingView.init(rootView:)();
  (*(v8 + 8))(v13, v19);
  return v21;
}

uint64_t sub_1004D99C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004D9A0C(uint64_t a1)
{
  v2 = type metadata accessor for AdvancedChangeGoalView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004D9A68@<X0>(uint64_t *a1@<X8>)
{
  result = AnyRegexOutput.count.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004D9AD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F680(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_100006260(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1004D9B74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F6BC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

size_t sub_1004D9C00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10057F6A8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_100140278(&qword_1008DF158) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100015E80(v11, a2, &qword_1008DF158);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

id sub_1004D9D44()
{
  result = [objc_allocWithZone(type metadata accessor for Navigator()) init];
  qword_100925BA8 = result;
  return result;
}

void sub_1004D9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  (*(a3 + 16))(a3, isa, v6);
}

uint64_t sub_1004D9E8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100140278(&qword_1008DF158);
  __chkstk_darwin(v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR___CHNavigator_urlKeys;
  result = swift_beginAccess();
  v13 = *(v2 + v11);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    for (i = (v13 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      if (v14 == ++v15)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1004D9B74(v15);
    swift_endAccess();

    swift_beginAccess();
    sub_1004D9C00(v15, v10);
    swift_endAccess();
    v18 = *(v5 + 48);
    v19 = sub_100140278(&qword_1008E8FD8);
    v20 = *(v19 - 8);
    (*(v20 + 32))(v7, v10, v19);

    return (*(v20 + 8))(v7, v19);
  }

  return result;
}

uint64_t sub_1004DA120(uint64_t a1, void *a2)
{
  v3 = v2;
  v105 = a2;
  v104 = type metadata accessor for DispatchWorkItemFlags();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for URL();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = v7;
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for AnyRegexOutput.Element();
  v93 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E8FC0);
  __chkstk_darwin(v9 - 8);
  v131 = &v91 - v10;
  v123 = sub_100140278(&qword_1008E8FC8);
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v109 = &v91 - v12;
  v13 = sub_100140278(&qword_1008E8FD8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91 - v15;
  v17 = sub_100140278(&qword_1008DF158);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v112 = &v91 - v19;
  v20 = sub_100140278(&qword_1008F0168);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v126 = &v91 - v25;
  __chkstk_darwin(v24);
  v120 = &v91 - v26;
  v98 = a1;
  v121 = URL.absoluteString.getter();
  v122 = v27;
  v28 = OBJC_IVAR___CHNavigator_urlHandlers;
  swift_beginAccess();
  v29 = *(v3 + v28);
  v130 = (v18 + 56);
  v111 = v18;
  v129 = (v18 + 48);
  v30 = *(v29 + 16);
  v124 = (v14 + 32);
  v119 = (v14 + 8);
  v115 = (v11 + 56);
  v106 = v11;
  v110 = (v11 + 48);
  v114 = v29;

  v32 = 0;
  v128 = 0;
  v118 = v30;
  v113 = v16;
  v125 = v23;
  while (1)
  {
    if (v32 == v30)
    {
      v33 = 1;
      v127 = v30;
    }

    else
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      if (v32 >= *(v114 + 16))
      {
        goto LABEL_34;
      }

      sub_1004DB320(v114 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v32, v23);
      v33 = 0;
      v127 = v32 + 1;
    }

    v34 = *v130;
    v35 = 1;
    (*v130)(v23, v33, 1, v17);
    v36 = *v129;
    if ((*v129)(v23, 1, v17) != 1)
    {
      v37 = *(v17 + 48);
      v38 = *(v17 + 64);
      v39 = v125;
      v40 = *v124;
      v41 = v36;
      v42 = v112;
      (*v124)(v112, v125, v13);
      v117 = *&v39[v37];
      v43 = swift_allocObject();
      *(v43 + 16) = *&v39[v38];
      v116 = *(v17 + 48);
      v44 = v126;
      v45 = &v126[*(v17 + 64)];
      v46 = v42;
      v36 = v41;
      v40(v126, v46, v13);
      v35 = 0;
      *&v44[v116] = v117;
      v16 = v113;
      *v45 = sub_1004DB3FC;
      v45[1] = v43;
    }

    v47 = v126;
    v34(v126, v35, 1, v17);
    v48 = v47;
    v49 = v120;
    sub_100015E80(v48, v120, &qword_1008F0168);
    if (v36(v49, 1, v17) == 1)
    {

      return 0;
    }

    v50 = *(v49 + *(v17 + 48));
    v51 = (v49 + *(v17 + 64));
    v52 = *v51;
    v53 = v51[1];
    (*v124)(v16, v49, v13);
    v54 = v128;
    Regex.firstMatch(in:)();
    if (v54)
    {

      (*v119)(v16, v13);
      (*v115)(v131, 1, 1, v123);
      v128 = 0;
      v23 = v125;
      goto LABEL_3;
    }

    v117 = v50;
    v55 = (*v110)(v131, 1, v123);
    v23 = v125;
    if (v55 != 1)
    {
      break;
    }

    v128 = 0;
    (*v119)(v16, v13);

LABEL_3:
    result = sub_10000EA04(v131, &qword_1008E8FC0);
    v30 = v118;
    v32 = v127;
  }

  (*(v106 + 32))(v109, v131, v123);
  v56 = v105;
  v57 = v117;
  if (*(v105 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout) == 1 && *(v117 + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout) != 1)
  {

    v82 = static os_log_type_t.default.getter();
    v83 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v82))
    {
      v84 = v83;
      v85 = swift_slowAlloc();
      v86 = v13;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v85 = 136315650;
      *(v85 + 4) = sub_10000AFDC(0xD000000000000019, 0x800000010075FB40, aBlock);
      *(v85 + 12) = 2112;
      *(v85 + 14) = v57;
      *(v85 + 22) = 2112;
      *(v85 + 24) = v56;
      *v87 = v57;
      v87[1] = v56;
      v89 = v57;
      v90 = v56;
      _os_log_impl(&_mh_execute_header, v84, v82, "%s behavior=%@ denied navigating to url with context=%@", v85, 0x20u);
      sub_100140278(&unk_1008DB8B0);
      swift_arrayDestroy();

      sub_100005A40(v88);

      (*(v106 + 8))(v109, v123);
      (*v119)(v16, v86);
    }

    else
    {

      (*(v106 + 8))(v109, v123);
      (*v119)(v16, v13);
    }

    return 0;
  }

  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v58 = aBlock[0];
  if (aBlock[0] < 0)
  {
    goto LABEL_35;
  }

  v131 = v13;
  v59 = _swiftEmptyArrayStorage;
  v116 = v53;
  v92 = v52;
  if (aBlock[0])
  {
    v60 = 0;
    v61 = (v93 + 8);
    do
    {
      __chkstk_darwin(result);
      *(&v91 - 2) = v60;
      swift_getKeyPath();
      v63 = v107;
      Regex.Match.subscript.getter();

      AnyRegexOutput.Element.range.getter();
      v65 = v64;
      result = (*v61)(v63, v108);
      if ((v65 & 1) == 0)
      {
        String.subscript.getter();
        v66 = static String._fromSubstring(_:)();
        v68 = v67;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100042744(0, *(v59 + 2) + 1, 1, v59);
          v59 = result;
        }

        v70 = *(v59 + 2);
        v69 = *(v59 + 3);
        if (v70 >= v69 >> 1)
        {
          result = sub_100042744((v69 > 1), v70 + 1, 1, v59);
          v59 = result;
        }

        *(v59 + 2) = v70 + 1;
        v62 = &v59[16 * v70];
        *(v62 + 4) = v66;
        *(v62 + 5) = v68;
      }

      ++v60;
    }

    while (v58 != v60);
  }

  sub_1000078CC();
  v71 = static OS_dispatch_queue.main.getter();
  v72 = v96;
  v73 = v95;
  v74 = v97;
  (*(v96 + 16))(v95, v98, v97);
  v75 = (*(v72 + 80) + 40) & ~*(v72 + 80);
  v76 = swift_allocObject();
  v77 = v116;
  *(v76 + 2) = v92;
  *(v76 + 3) = v77;
  *(v76 + 4) = v59;
  (*(v72 + 32))(&v76[v75], v73, v74);
  aBlock[4] = sub_1004DB390;
  aBlock[5] = v76;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085D228;
  v78 = _Block_copy(aBlock);

  v79 = v99;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v80 = v102;
  v81 = v104;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v78);

  (*(v103 + 8))(v80, v81);
  (*(v100 + 8))(v79, v101);
  (*(v106 + 8))(v109, v123);
  (*v119)(v113, v131);
  return 1;
}

id sub_1004DB27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Navigator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004DB320(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004DB3FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1004DB474()
{
  result = qword_1008F0170;
  if (!qword_1008F0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0170);
  }

  return result;
}

unint64_t sub_1004DB4CC()
{
  result = qword_1008F0178;
  if (!qword_1008F0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0178);
  }

  return result;
}

uint64_t sub_1004DB524(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_1004DB928(a1);
}

uint64_t sub_1004DB5CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100202050;

  return sub_1004DBABC();
}

unint64_t sub_1004DB674()
{
  result = qword_1008F0180;
  if (!qword_1008F0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0180);
  }

  return result;
}

unint64_t sub_1004DB6D0()
{
  result = qword_1008F0188;
  if (!qword_1008F0188)
  {
    sub_100141EEC(&qword_1008F0190);
    sub_10036FD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0188);
  }

  return result;
}

uint64_t sub_1004DB754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004DB80C();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1004DB80C()
{
  result = qword_1008F0198;
  if (!qword_1008F0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0198);
  }

  return result;
}

uint64_t sub_1004DB860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10016200C;

  return (sub_1004DBD18)(a2, a3);
}

uint64_t sub_1004DB948()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 <= 8)
      {
        sub_100140278(&qword_1008DD148);
        type metadata accessor for AppDependencyManager();
        static AppDependencyManager.shared.getter();
        v8 = AppDependency.__allocating_init(key:manager:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1001A35D8(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1001A35D8((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v5 = &v3[16 * v10];
        *(v5 + 4) = v8;
        v5[40] = v6;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_1004DBAD8()
{
  sub_100140278(&qword_1008DE608);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D4140;
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  *(v1 + 32) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 40) = 1;
  static AppDependencyManager.shared.getter();
  *(v1 + 48) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 56) = 5;
  static AppDependencyManager.shared.getter();
  *(v1 + 64) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 72) = 0;
  static AppDependencyManager.shared.getter();
  *(v1 + 80) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 88) = 2;
  static AppDependencyManager.shared.getter();
  *(v1 + 96) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 104) = 6;
  static AppDependencyManager.shared.getter();
  *(v1 + 112) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 120) = 4;
  static AppDependencyManager.shared.getter();
  *(v1 + 128) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 136) = 3;
  static AppDependencyManager.shared.getter();
  *(v1 + 144) = AppDependency.__allocating_init(key:manager:)();
  *(v1 + 152) = 7;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004DBD18(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_1004DBDE8;

  return sub_1004DBABC();
}

uint64_t sub_1004DBDE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004DBF60, 0, 0);
  }
}

uint64_t sub_1004DBF60()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v3 = &selRef_initWithLayer_;
  if (v2)
  {
    v4 = 0;
    v45 = -v2;
    v5 = v1 + 40;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v44 = v6;
      v7 = (v5 + 16 * v4++);
      while (1)
      {
        if ((v4 - 1) >= *(v1 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v8 = *(v7 - 1);
        v9 = *v7;

        AppDependency.wrappedValue.getter();
        v10 = v0[10];
        v0[11] = 0;
        v11 = [v10 v3[33]];

        v12 = v0[11];
        if (v11)
        {
          v13 = v12;
          [v11 wheelchairUse];

          v14 = sub_10007C29C();
          v16 = v15;
        }

        else
        {
          v17 = v12;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v14 = sub_10007C29C();
          v16 = v18;
          v3 = &selRef_initWithLayer_;
        }

        v20 = v0[14];
        v19 = v0[15];
        v0[2] = v14;
        v0[3] = v16;
        v0[4] = v20;
        v0[5] = v19;
        sub_10000FCBC();
        v21 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

        if (v21)
        {
          break;
        }

        ++v4;
        v7 += 16;
        if (v45 + v4 == 1)
        {
          v6 = v44;
          goto LABEL_18;
        }
      }

      v6 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100186448(0, v44[2] + 1, 1);
        v6 = v44;
      }

      v23 = v6[2];
      v22 = v6[3];
      if (v23 >= v22 >> 1)
      {
        sub_100186448((v22 > 1), v23 + 1, 1);
        v6 = v44;
      }

      v6[2] = v23 + 1;
      v24 = &v6[2 * v23];
      v24[4] = v8;
      *(v24 + 40) = v9;
      v5 = v1 + 40;
    }

    while (v45 + v4);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_18:

  v46 = v6[2];
  if (v46)
  {
    v25 = 0;
    v26 = v6 + 5;
    while (1)
    {
      if (v25 >= v6[2])
      {
        goto LABEL_32;
      }

      v27 = v6;
      v28 = *(v26 - 1);
      v29 = *v26;

      AppDependency.wrappedValue.getter();
      v30 = v0[12];
      v0[13] = 0;
      v31 = [v30 v3[33]];

      v32 = v0[13];
      if (v31)
      {
        v33 = v32;
        [v31 wheelchairUse];

        v34 = sub_10007C29C();
        v36 = v35;
      }

      else
      {
        v37 = v32;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v34 = sub_10007C29C();
        v36 = v38;
        v3 = &selRef_initWithLayer_;
      }

      v40 = v0[14];
      v39 = v0[15];
      v0[6] = v34;
      v0[7] = v36;
      v0[8] = v40;
      v0[9] = v39;
      sub_10000FCBC();
      v41 = StringProtocol.localizedCaseInsensitiveCompare<A>(_:)();

      if (!v41)
      {
        break;
      }

      ++v25;

      v26 += 16;
      v6 = v27;
      if (v46 == v25)
      {
        goto LABEL_28;
      }
    }

    sub_100140278(&qword_1008DE608);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1006D46C0;
    v6[4] = v28;
    *(v6 + 40) = v29;
  }

LABEL_28:
  v42 = v0[1];

  return v42(v6);
}

id sub_1004DC3AC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

uint64_t sub_1004DC3EC(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = type metadata accessor for WorkoutSummaryDataSourceBridge();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_observers;
  *&v5[v6] = [objc_opt_self() weakObjectsHashTable];
  *&v5[OBJC_IVAR___CHWorkoutSummaryDataSourceBridge_bridgedValue] = a1;
  v10.receiver = v5;
  v10.super_class = v4;

  v7 = objc_msgSendSuper2(&v10, "init");
  sub_1004DCAAC();
  dispatch thunk of WorkoutSummaryDataSource.add(observer:)();
  v8 = a2(v7);

  return v8;
}

id sub_1004DC61C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutUIControllerFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004DC674()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1004DC6B0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v42 = a5;
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v9 = type metadata accessor for SnapshotClient();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v38 - v12;
  v14 = type metadata accessor for FitnessIntelligenceConnection();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InferenceClient();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v48 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = v38 - v22;
  v24 = OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue;
  v25 = *(v15 + 16);
  v25(v17, a4 + OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue, v14, v21);
  InferenceClient.init(connection:)();
  (v25)(v17, a4 + v24, v14);
  v38[0] = v13;
  SnapshotClient.init(connection:)();
  v26 = objc_allocWithZone(type metadata accessor for SeymourSubscriptionProvider());

  v38[1] = SeymourSubscriptionProvider.init(dependencies:)();
  (v25)(v17, a4 + v24, v14);
  (*(v49 + 16))(v48, v23, v50);
  v27 = v40;
  v28 = v41;
  (*(v40 + 16))(v39, v13, v41);
  v29 = *(v42 + OBJC_IVAR___CHWorkoutVoiceAvailabilityProvider_bridgedValue);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = v31;
  type metadata accessor for WorkoutUIController();
  swift_allocObject();
  v32 = v29;

  v33 = v45;
  v34 = v46;
  v35 = v47;
  v36 = WorkoutUIController.init(rootViewController:unitManager:workoutController:fitnessIntelligenceConnection:inferenceClient:snapshotClient:seymourSubscriptionProvider:workoutVoiceAvailabilityProvider:summaryViewControllerCompletion:)();
  (*(v27 + 8))(v38[0], v28);
  (*(v49 + 8))(v23, v50);
  return v36;
}

unint64_t sub_1004DCAAC()
{
  result = qword_1008EE188;
  if (!qword_1008EE188)
  {
    type metadata accessor for WorkoutSummaryDataSourceBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE188);
  }

  return result;
}

void sub_1004DCB2C()
{
  LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v8) = 256;
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  v5 = [objc_opt_self() keyColors];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 nonGradientTextColor];

    if (v7)
    {
      Color.init(uiColor:)();
      Text.foregroundStyle<A>(_:)();
      sub_10004642C(v0, v2, v4 & 1);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004DCD48()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return Image.init(_internalSystemName:)();
}

void *sub_1004DCD7C()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_100140278(&qword_1008EBCE0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1003D9D48(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_1004DCF28@<X0>(uint64_t *a1@<X8>)
{
  sub_1004DCFB8(&unk_1008EE7F0);
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004DCFB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomizeSummaryTip();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004DCFFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1004DD284(char a1, uint64_t a2)
{
  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    log = v5;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 4) = a1 & 1;
    *(v6 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v6 + 10) = v8;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, log, v4, "Notification authorization granted: %{BOOL}d, error: %@", v6, 0x12u);
    sub_1001F3454(v7);
  }
}

id sub_1004DD4F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationConsentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004DD5BC()
{
  sub_1004DD940(319, &qword_1008F03A0, &type metadata accessor for TrainingLoadDataType, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1004DD940(319, &qword_1008F03A8, type metadata accessor for LoadDetailViewControllerCoordinator, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1004DD9A4();
      if (v2 <= 0x3F)
      {
        sub_1004F3F20(319, &qword_1008F03B0, &unk_1008E4010, &unk_1006DCBA0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1004F3F20(319, &qword_1008F03B8, &qword_1008F03C0, &unk_1006F5588, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10014C794(319, &qword_1008DDD48);
            if (v5 <= 0x3F)
            {
              sub_1004DD940(319, &qword_1008F03C8, &type metadata accessor for DayIndex, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_1004F3F20(319, &qword_1008F03D0, &qword_1008F03D8, &unk_1006F5590, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10014C794(319, &qword_1008F03E0);
                  if (v8 <= 0x3F)
                  {
                    sub_1000059F8(319, &qword_1008F03E8);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for DayIndex();
                      if (v10 <= 0x3F)
                      {
                        sub_1004DD940(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
                        if (v11 <= 0x3F)
                        {
                          sub_1004DD940(319, &qword_1008DDD50, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
                          if (v12 <= 0x3F)
                          {
                            sub_1004DD940(319, &qword_1008F03F0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                            if (v13 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_1004DD940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1004DD9A4()
{
  if (!qword_1008E30A0)
  {
    sub_1000059F8(255, &qword_1008F24B0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E30A0);
    }
  }
}

void *sub_1004DDA28()
{
  v77 = type metadata accessor for Logger();
  v1 = *(v77 - 8);
  __chkstk_darwin(v77);
  v90 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for EnvironmentValues();
  v3 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F08C0);
  __chkstk_darwin(v5 - 8);
  v80 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v67 - v8;
  v10 = type metadata accessor for SleepingSampleViewModel();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = v67 - v14;
  v97 = type metadata accessor for SleepingSampleDataType();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v76 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v91 = v67 - v18;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v20 = (v0 + *(DetailsStackedChartView + 52));
  v22 = *v20;
  v21 = v20[1];
  v99 = v22;
  v100 = v21;
  sub_100140278(&qword_1008F0550);
  State.wrappedValue.getter();
  if (*(v98 + 16))
  {
    v24 = *(v98 + 16);
    v25 = v1;
    v26 = 0;
    v27 = v0 + *(DetailsStackedChartView + 68);
    v86 = *v27;
    v85 = *(v27 + 8);
    v29 = *(v15 + 16);
    v28 = v15 + 16;
    v94 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v67[1] = v98;
    v31 = (v98 + v30);
    v84 = *(v28 + 56);
    v73 = (v3 + 8);
    v32 = (v11 + 48);
    v82 = (v11 + 56);
    v92 = (v28 - 8);
    v93 = (v11 + 32);
    v72 = (v25 + 8);
    v71 = (v11 + 16);
    v75 = v11;
    v70 = v11 + 8;
    *&v23 = 134217984;
    v68 = v23;
    v96 = _swiftEmptyArrayStorage;
    v33 = v80;
    v87 = v9;
    v34 = v91;
    v35 = v24;
    v83 = v32;
    v95 = v28;
    v74 = v10;
    v29(v91, (v98 + v30), v97);
    while (1)
    {
      if (v85)
      {
        v37 = v86;
      }

      else
      {
        v38 = v86;

        static os_log_type_t.fault.getter();
        v39 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v40 = v78;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v38, 0);
        (*v73)(v40, v79);
        v37 = v99;
      }

      sub_1001D427C();
      v41 = dispatch thunk of SleepingSampleViewModelProvider.viewModels.getter();

      __chkstk_darwin(v42);
      v67[-2] = v34;
      sub_100415374(sub_1004F326C, v41, v33);

      v43 = v34;
      v44 = *v32;
      if ((*v32)(v33, 1, v10) == 1)
      {
        sub_10000EA04(v33, &qword_1008F08C0);
        static WOLog.trainingLoad.getter();
        v45 = v76;
        v46 = v97;
        v94(v76, v43, v97);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v69 = v26;
          v50 = v35;
          v51 = v49;
          *v49 = v68;
          v52 = SleepingSampleDataType.rawValue.getter();
          (*v92)(v45, v46);
          *(v51 + 1) = v52;
          _os_log_impl(&_mh_execute_header, v47, v48, "Didn't find sleeping sample view model for data type: %ld", v51, 0xCu);
          v35 = v50;
          v26 = v69;
        }

        else
        {
          (*v92)(v45, v46);
        }

        v53 = v87;

        (*v72)(v90, v77);
        v54 = 1;
        v33 = v80;
        v10 = v74;
        v32 = v83;
      }

      else
      {
        v53 = v87;
        (*v93)(v87, v33, v10);
        v54 = 0;
      }

      (*v82)(v53, v54, 1, v10);

      if (v44(v53, 1, v10) == 1)
      {
        v34 = v91;
        v36 = v97;
        (*v92)(v91, v97);
        sub_10000EA04(v53, &qword_1008F08C0);
      }

      else
      {
        v55 = *v93;
        v56 = v88;
        (*v93)(v88, v53, v10);
        (*v71)(v89, v56, v10);
        v57 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v97;
        v81 = v35;
        v59 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = sub_1001A3700(0, v57[2] + 1, 1, v57);
        }

        v61 = v57[2];
        v60 = v57[3];
        v62 = v75;
        if (v61 >= v60 >> 1)
        {
          v65 = sub_1001A3700(v60 > 1, v61 + 1, 1, v57);
          v62 = v75;
          v96 = v65;
        }

        else
        {
          v96 = v57;
        }

        v63 = v62;
        (*(v62 + 8))(v88, v10);
        v34 = v91;
        (*v92)(v91, v36);
        v64 = v96;
        v96[2] = v61 + 1;
        v55(&v64[((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v61], v89, v10);
        v26 = v59;
        v35 = v81;
        v32 = v83;
      }

      v31 += v84;
      if (!--v35)
      {
        break;
      }

      v94(v34, v31, v36);
    }

    return v96;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1004DE358()
{
  v1 = type metadata accessor for WarmupProgress();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OvernightMetricsViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008F08B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = v0 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = v8;
    v18 = static Log.runtimeIssuesLog.getter();
    v28 = v5;
    v19 = v2;
    v20 = v18;
    os_log(_:dso:log:_:_:)();

    v2 = v19;
    v5 = v28;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v16, 0);
    (*(v9 + 8))(v11, v27);
    v17 = v30;
  }

  sub_1001D427C();

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  OvernightMetricsViewModel.warmupProgress.getter();
  (*(v5 + 8))(v7, v4);
  v21 = type metadata accessor for OvernightMetricsWarmupProgress();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10000EA04(v14, &qword_1008F08B8);
    v23 = 0;
  }

  else
  {
    v24 = v29;
    OvernightMetricsWarmupProgress.overallProgress.getter();
    (*(v22 + 8))(v14, v21);
    v25 = WarmupProgress.isComplete.getter();
    (*(v2 + 8))(v24, v1);
    v23 = v25 ^ 1;
  }

  return v23 & 1;
}

uint64_t sub_1004DE740()
{
  v1 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v1);
  v3 = &v33 - v2;
  v4 = type metadata accessor for GregorianDayRange();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayIndex();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v17 = (v0 + *(DetailsStackedChartView + 56));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v39) = v18;
  v40 = v19;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  v38 = v1;
  if (v41)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  else
  {
  }

  sub_100140278(&qword_1008F0328);
  State.wrappedValue.getter();
  v22 = v0 + *(DetailsStackedChartView + 68);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v23, 0);
    (*(v33 + 8))(v9, v34);
    v24 = v39;
  }

  swift_getKeyPath();
  v39 = v24;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v28 = v36;
  v27 = v37;
  (*(v36 + 16))(v6, &v24[v26], v37);

  GregorianDayRange.dayIndexRange.getter();
  (*(v28 + 8))(v6, v27);
  v29 = v35;
  (*(v11 + 16))(v35, &v3[*(v38 + 36)], v10);
  sub_10000EA04(v3, &qword_1008E04A8);
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v11 + 8);
  v31(v29, v10);
  v31(v15, v10);
  v21 = v30 ^ 1;
  return v21 & 1;
}

uint64_t sub_1004DEC98()
{
  v25 = type metadata accessor for SleepingSampleViewModelProvider.DataFreshness();
  v1 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v12 = *v11;
  v13 = *(v11 + 8);
  v24 = v8;
  if (v13 == 1)
  {
    v14 = v12;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v12, 0);
    (*(v8 + 8))(v10, v7);
    v14 = v26;
  }

  sub_1001D467C();

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.getter();

  if (ViewModel)
  {
    v17 = 1;
  }

  else
  {
    if (v13)
    {
      v18 = v12;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v12, 0);
      (*(v24 + 8))(v10, v7);
      v18 = v26;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.dataFreshness.getter();

    v20 = v25;
    (*(v1 + 104))(v3, enum case for SleepingSampleViewModelProvider.DataFreshness.receivedFromPreviousDayRange(_:), v25);
    v17 = static SleepingSampleViewModelProvider.DataFreshness.== infix(_:_:)();
    v21 = *(v1 + 8);
    v21(v3, v20);
    v21(v6, v20);
  }

  return v17 & 1;
}

uint64_t sub_1004DEFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v137 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for EnvironmentValues();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v116 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DayIndex();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v6 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView);
  v8 = v7;
  v9 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100140278(&qword_1008F04A8);
  __chkstk_darwin(v143);
  v11 = &v108 - v10;
  v140 = sub_100140278(&qword_1008F0498);
  v115 = *(v140 - 1);
  __chkstk_darwin(v140);
  v138 = (&v108 - v12);
  v119 = sub_100140278(&qword_1008F0490);
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v141 = &v108 - v13;
  v122 = sub_100140278(&qword_1008F0488);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v108 - v14;
  v124 = sub_100140278(&qword_1008F0480);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v108 - v15;
  v128 = sub_100140278(&qword_1008F0470);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v108 - v16;
  v131 = sub_100140278(&qword_1008F0468);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v108 - v17;
  v133 = sub_100140278(&qword_1008F0460);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v108 - v18;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = sub_100140278(&qword_1008F0510);
  sub_1004E02E4(a1, &v11[*(v19 + 44)]);
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v20 = *(v6 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1004F4200(v9, v22 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v23 = *(sub_100140278(&qword_1008F04C0) + 36);
  v109 = v11;
  v24 = &v11[v23];
  *v24 = sub_1004EFAC0;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v25 = v8;
  v26 = swift_allocObject();
  sub_1004F4200(v9, v26 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v27 = DetailsStackedChartView;
  v28 = &v11[*(v143 + 9)];
  *v28 = 0;
  *(v28 + 1) = 0;
  *(v28 + 2) = sub_1004EFAEC;
  *(v28 + 3) = v26;
  sub_100140278(&qword_1008F0328);
  v29 = v110;
  State.wrappedValue.getter();
  sub_1004F2EE8(a1, v9, type metadata accessor for LoadDetailsStackedChartView);
  v145 = v20;
  v146 = v25;
  v30 = swift_allocObject();
  v139 = v21;
  v142 = v9;
  sub_1004F4200(v9, v30 + v21, type metadata accessor for LoadDetailsStackedChartView);
  v31 = sub_1004EF710();
  v32 = sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex);
  v33 = v111;
  v34 = v109;
  View.onChange<A>(of:initial:_:)();

  v35 = v33;
  (*(v112 + 8))(v29, v33);
  sub_10000EA04(v34, &qword_1008F04A8);
  v36 = *(v27 + 68);
  v147 = a1;
  v37 = a1 + v36;
  v38 = *v37;
  v39 = *(v37 + 8);
  if (v39 == 1)
  {
    v40 = v38;
    v41 = v113;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v38, 0);
    v41 = v113;
    (*(v113 + 8))(v43, v114);
    v40 = v150;
  }

  swift_getKeyPath();
  v150 = v40;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutsWithEffortQuantities;
  swift_beginAccess();
  v45 = *&v40[v44];

  v148 = v45;
  v46 = v142;
  sub_1004F2EE8(v147, v142, type metadata accessor for LoadDetailsStackedChartView);
  v47 = v139;
  v48 = swift_allocObject();
  sub_1004F4200(v46, v48 + v47, type metadata accessor for LoadDetailsStackedChartView);
  v49 = sub_100140278(&qword_1008F04A0);
  v150 = v143;
  v151 = v35;
  v50 = v49;
  v152 = v31;
  v153 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_1004EF854();
  v53 = v140;
  v54 = v138;
  View.onChange<A>(of:initial:_:)();

  (*(v115 + 8))(v54, v53);
  if (v39)
  {
    v55 = v38;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v56 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v57 = v116;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v38, 0);
    (*(v41 + 8))(v57, v114);
    v55 = v150;
  }

  v58 = sub_1001D3C20();

  v148 = v58;
  v143 = type metadata accessor for LoadDetailsStackedChartView;
  v59 = v142;
  sub_1004F2EE8(v147, v142, type metadata accessor for LoadDetailsStackedChartView);
  v60 = v139;
  v61 = swift_allocObject();
  v138 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F4200(v59, v61 + v60, type metadata accessor for LoadDetailsStackedChartView);
  v62 = sub_100140278(&qword_1008F03D8);
  v150 = v140;
  v151 = v50;
  v152 = OpaqueTypeConformance2;
  v153 = v52;
  v140 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1004EF9C4();
  v65 = v118;
  v66 = v119;
  v67 = v141;
  View.onChange<A>(of:initial:_:)();

  (*(v117 + 8))(v67, v66);
  v68 = v147;
  v69 = (v147 + *(DetailsStackedChartView + 56));
  v70 = *v69;
  v71 = *(v69 + 1);
  LOBYTE(v150) = v70;
  v151 = v71;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  sub_1004F2EE8(v68, v59, v143);
  v72 = swift_allocObject();
  sub_1004F4200(v59, v72 + v60, v138);
  v150 = v66;
  v151 = v62;
  v152 = v63;
  v153 = v64;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_10034D2BC();
  v75 = v121;
  v76 = v122;
  View.onChange<A>(of:initial:_:)();

  (*(v120 + 8))(v65, v76);
  v77 = v147;
  v78 = (v147 + *(DetailsStackedChartView + 48));
  v79 = *v78;
  v80 = *(v78 + 1);
  LOBYTE(v150) = v79;
  v151 = v80;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  sub_1004F2EE8(v77, v59, v143);
  v81 = swift_allocObject();
  sub_1004F4200(v59, v81 + v60, v138);
  v150 = v76;
  v151 = &type metadata for DayRangeForStackedLoadCharts;
  v152 = v73;
  v153 = v74;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v125;
  v84 = v124;
  View.onChange<A>(of:initial:_:)();

  v85 = (*(v123 + 8))(v75, v84);
  v146 = &v108;
  __chkstk_darwin(v85);
  *(&v108 - 2) = v77;
  v86 = sub_100140278(&qword_1008F0478);
  v150 = v84;
  v151 = &type metadata for Bool;
  v152 = v82;
  v153 = &protocol witness table for Bool;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = sub_100141EEC(&qword_1008F0500);
  v89 = sub_10014A6B0(&qword_1008F0508, &qword_1008F0500);
  v150 = v88;
  v151 = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v127;
  v92 = v128;
  View.toolbar<A>(content:)();
  (*(v126 + 8))(v83, v92);
  v93 = [objc_opt_self() mainBundle];
  v94 = String._bridgeToObjectiveC()();
  v95 = [v93 localizedStringForKey:v94 value:0 table:0];

  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v148 = v96;
  v149 = v98;
  v150 = v92;
  v151 = v86;
  v152 = v87;
  v153 = v90;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_10000FCBC();
  v101 = v130;
  v102 = v131;
  View.navigationTitle<A>(_:)();

  (*(v129 + 8))(v91, v102);
  v103 = v135;
  v104 = v134;
  v105 = v137;
  (*(v135 + 104))(v134, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v137);
  v150 = v102;
  v151 = &type metadata for String;
  v152 = v99;
  v153 = v100;
  swift_getOpaqueTypeConformance2();
  v106 = v133;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v103 + 8))(v104, v105);
  return (*(v132 + 8))(v101, v106);
}

uint64_t sub_1004E02E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v128 = sub_100140278(&qword_1008F0568);
  __chkstk_darwin(v128);
  v131 = (&v108 - v3);
  v132 = sub_100140278(&qword_1008F0570);
  v110 = *(v132 - 8);
  __chkstk_darwin(v132);
  v109 = &v108 - v4;
  v126 = type metadata accessor for OvernightMetricsViewModel();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for EnvironmentValues();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F0578);
  __chkstk_darwin(v7 - 8);
  v133 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = &v108 - v10;
  v123 = type metadata accessor for Divider();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v136 = &v108 - v13;
  v14 = sub_100140278(&qword_1008F0580);
  __chkstk_darwin(v14 - 8);
  v129 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v140 = (&v108 - v17);
  v139 = (sub_100140278(&qword_1008F0588) - 8);
  __chkstk_darwin(v139);
  v127 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  v119 = type metadata accessor for SegmentedPickerStyle();
  v137 = *(v119 - 8);
  __chkstk_darwin(v119);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100140278(&qword_1008F0590);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v25 = &v108 - v24;
  v26 = sub_100140278(&qword_1008F0598);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v138 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = (&v108 - v30);
  v116 = LocalizedStringKey.init(stringLiteral:)();
  v115 = v32;
  v114 = v33;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v34 = a1 + *(DetailsStackedChartView + 56);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v143) = v35;
  v144 = v36;
  sub_100140278(&qword_1008F0518);
  State.projectedValue.getter();
  sub_100140278(&qword_1008F05A0);
  sub_10034C648();
  sub_10014A6B0(&qword_1008F05A8, &qword_1008F05A0);
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_10014A6B0(&qword_1008F05B0, &qword_1008F0590);
  v37 = v117;
  v38 = v119;
  View.pickerStyle<A>(_:)();
  v137[1](v23, v38);
  (*(v118 + 8))(v25, v37);
  LOBYTE(v38) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v31 + *(sub_100140278(&qword_1008F05B8) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v38) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v31 + *(sub_100140278(&qword_1008F05C0) + 36);
  *v56 = v38;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = static Edge.Set.bottom.getter();
  v58 = *(v27 + 44);
  v137 = v31;
  v59 = v31 + v58;
  *v59 = v57;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  v59[40] = 1;
  *v21 = static HorizontalAlignment.leading.getter();
  *(v21 + 1) = 0x4028000000000000;
  v21[16] = 0;
  v60 = sub_100140278(&qword_1008F05C8);
  sub_1004E1724(v135, &v21[*(v60 + 44)]);
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v61 = *(v139 + 11);
  v139 = v21;
  v62 = &v21[v61];
  *v62 = v38;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  v67 = static HorizontalAlignment.center.getter();
  v68 = v140;
  *v140 = v67;
  v68[1] = 0;
  *(v68 + 16) = 0;
  v69 = v68 + *(sub_100140278(&qword_1008F05D0) + 44);
  v70 = v136;
  Divider.init()();
  v71 = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v119 = v145;
  LOBYTE(v37) = v146;
  v118 = v147;
  LOBYTE(v31) = v148;
  v72 = v150;
  v117 = v149;
  v73 = v122;
  v74 = *(v122 + 16);
  v75 = v121;
  v76 = v70;
  v77 = v123;
  v74(v121, v76, v123);
  v142 = v37;
  v141 = v31;
  v78 = v75;
  v74(v69, v75, v77);
  v79 = &v69[*(sub_100140278(&qword_1008F05D8) + 48)];
  v80 = v142;
  v81 = v141;
  v82 = v119;
  *v79 = v71;
  *(v79 + 1) = v82;
  v79[16] = v80;
  *(v79 + 3) = v118;
  v83 = v135;
  v79[32] = v81;
  *(v79 + 5) = v117;
  *(v79 + 6) = v72;
  v84 = *(v73 + 8);

  v84(v136, v77);

  v84(v78, v77);
  v85 = v83 + *(DetailsStackedChartView + 68);
  v86 = *v85;
  if (*(v85 + 8) == 1)
  {
    v87 = v86;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v88 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v89 = v111;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v86, 0);
    (*(v112 + 8))(v89, v113);
    v87 = v143;
  }

  v90 = v124;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v91 = OvernightMetricsViewModel.isWatchExperienceAvailable.getter();

  v92 = (*(v125 + 8))(v90, v126);
  v93 = v130;
  if (v91 == 2 || (v91 & 1) == 0)
  {
    v97 = v131;
    *v131 = 0;
    *(v97 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F05E0, &qword_1008F0570);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v92);
    static Axis.Set.vertical.getter();
    sub_100140278(&qword_1008F05F0);
    sub_1004F299C();
    v94 = v109;
    ScrollView.init(_:showsIndicators:content:)();
    v95 = v110;
    v96 = v132;
    (*(v110 + 16))(v131, v94, v132);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F05E0, &qword_1008F0570);
    _ConditionalContent<>.init(storage:)();
    (*(v95 + 8))(v94, v96);
  }

  v98 = v138;
  sub_10001B104(v137, v138, &qword_1008F0598);
  v99 = v127;
  sub_10001B104(v139, v127, &qword_1008F0588);
  v100 = v140;
  v101 = v129;
  sub_10001B104(v140, v129, &qword_1008F0580);
  v102 = v133;
  sub_10001B104(v93, v133, &qword_1008F0578);
  v103 = v98;
  v104 = v93;
  v105 = v134;
  sub_10001B104(v103, v134, &qword_1008F0598);
  v106 = sub_100140278(&qword_1008F05E8);
  sub_10001B104(v99, v105 + v106[12], &qword_1008F0588);
  sub_10001B104(v101, v105 + v106[16], &qword_1008F0580);
  sub_10001B104(v102, v105 + v106[20], &qword_1008F0578);
  sub_10000EA04(v104, &qword_1008F0578);
  sub_10000EA04(v100, &qword_1008F0580);
  sub_10000EA04(v139, &qword_1008F0588);
  sub_10000EA04(v137, &qword_1008F0598);
  sub_10000EA04(v102, &qword_1008F0578);
  sub_10000EA04(v101, &qword_1008F0580);
  sub_10000EA04(v99, &qword_1008F0588);
  return sub_10000EA04(v138, &qword_1008F0598);
}

uint64_t sub_1004E1230@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v1 = sub_100140278(&qword_1008F0A48);
  v59 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v56 - v4;
  __chkstk_darwin(v5);
  v63 = &v56 - v6;
  __chkstk_darwin(v7);
  v58 = (&v56 - v8);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v64 = v19;
  v65 = v21;
  sub_10000FCBC();
  *v14 = Text.init<A>(_:)();
  *(v14 + 1) = v22;
  v14[16] = v23 & 1;
  *(v14 + 3) = v24;
  *(v14 + 16) = 256;
  v56 = v14;
  v25 = [v15 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v64 = v28;
  v65 = v30;
  v31 = Text.init<A>(_:)();
  v57 = v11;
  *v11 = v31;
  *(v11 + 1) = v32;
  v11[16] = v33 & 1;
  *(v11 + 3) = v34;
  *(v11 + 16) = 257;
  v35 = [v15 mainBundle];
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 localizedStringForKey:v36 value:0 table:0];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v64 = v38;
  v65 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v58;
  v42 = v59;
  *v58 = v41;
  v43[1] = v44;
  *(v43 + 16) = v45 & 1;
  v43[3] = v46;
  *(v43 + 16) = 258;
  v47 = *(v42 + 16);
  v48 = v63;
  v47(v63, v14, v1);
  v49 = v60;
  v50 = v57;
  v47(v60, v57, v1);
  v51 = v61;
  v47(v61, v43, v1);
  v52 = v62;
  v47(v62, v48, v1);
  v53 = sub_100140278(&qword_1008F0A50);
  v47(&v52[*(v53 + 48)], v49, v1);
  v47(&v52[*(v53 + 64)], v51, v1);
  v54 = *(v42 + 8);
  v54(v43, v1);
  v54(v50, v1);
  v54(v56, v1);
  v54(v51, v1);
  v54(v49, v1);
  return (v54)(v63, v1);
}

uint64_t sub_1004E1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F08C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_100140278(&qword_1008F08D0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v30 - v14);
  if (qword_1008DA608 != -1)
  {
    swift_once();
  }

  *v15 = xmmword_100925200;
  v16 = sub_100140278(&qword_1008F08D8);
  sub_1004E1A1C(a1, v15 + *(v16 + 44));
  v17 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 + *(sub_100140278(&qword_1008F08E0) + 36);
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  *(v15 + *(v10 + 36)) = 0x3FF0000000000000;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v27 = sub_100140278(&qword_1008F08E8);
  sub_1004E4188(a1, &v9[*(v27 + 44)]);
  sub_10001B104(v15, v12, &qword_1008F08D0);
  sub_10001B104(v9, v6, &qword_1008F08C8);
  sub_10001B104(v12, a2, &qword_1008F08D0);
  v28 = sub_100140278(&qword_1008F08F0);
  sub_10001B104(v6, a2 + *(v28 + 48), &qword_1008F08C8);
  sub_10000EA04(v9, &qword_1008F08C8);
  sub_10000EA04(v15, &qword_1008F08D0);
  sub_10000EA04(v6, &qword_1008F08C8);
  return sub_10000EA04(v12, &qword_1008F08D0);
}

uint64_t sub_1004E1A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v146 = type metadata accessor for DayIndex();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_100140278(&qword_1008F09D8);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v143 = &v143 - v4;
  v5 = sub_100140278(&qword_1008F09E0);
  __chkstk_darwin(v5 - 8);
  v170 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v173 = &v143 - v8;
  v165 = sub_100140278(&qword_1008F09E8);
  __chkstk_darwin(v165);
  v152 = &v143 - v9;
  DataType = type metadata accessor for TrainingLoadDataType();
  v156 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v155 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v148 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100140278(&qword_1008F09F0);
  v151 = *(v164 - 8);
  __chkstk_darwin(v164);
  v150 = &v143 - v13;
  v162 = sub_100140278(&qword_1008F09F8);
  __chkstk_darwin(v162);
  v163 = &v143 - v14;
  v15 = sub_100140278(&qword_1008F0A00);
  __chkstk_darwin(v15 - 8);
  v17 = &v143 - v16;
  v175 = type metadata accessor for GregorianDayRange();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v143 - v21;
  v160 = type metadata accessor for EnvironmentValues();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TrainingLoadChart.Configuration();
  __chkstk_darwin(v24 - 8);
  v26 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v147 = &v143 - v28;
  v161 = sub_100140278(&qword_1008F0A08);
  __chkstk_darwin(v161);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v143 - v32;
  v34 = sub_100140278(&qword_1008F0A10);
  __chkstk_darwin(v34 - 8);
  v166 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v172 = &v143 - v37;
  v38 = sub_1004DEC98();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v39 = *(DetailsStackedChartView + 68);
  v167 = a1;
  v40 = a1 + v39;
  v41 = *v40;
  v42 = *(v40 + 8);
  v177 = v41;
  v154 = v42;
  if (v38)
  {
    if (v42)
    {
      v43 = v41;
      v44 = v43;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v46 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v153 = v17;
      v47 = v41;
      v48 = v158;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v47, 0);
      v49 = *(v159 + 8);
      v50 = v160;
      v49(v48, v160);
      v44 = v183;

      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v52 = v47;
      v17 = v153;
      sub_1000A73A4(v52, 0);
      v49(v48, v50);
      v43 = v183;
    }

    v53 = DetailsStackedChartView;
    swift_getKeyPath();
    *&v183 = v43;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v55 = v174;
    v56 = v175;
    (*(v174 + 16))(v22, &v43[v54], v175);

    sub_1001DB2C4(v22, v147);
    (*(v55 + 8))(v22, v56);
    v57 = v53;
    sub_100140278(&qword_1008F0328);
    v58 = v167;
    State.projectedValue.getter();
    v59 = sub_100140278(&qword_1008F0A18);
    (*(*(v59 - 8) + 56))(v17, 0, 1, v59);
    LOBYTE(v180) = 0;
    static Binding.constant(_:)();
    TrainingLoadChart.init(configuration:selectedDay:inSelectionMode:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v60 = v161;
    v61 = &v33[*(v161 + 36)];
    v62 = v181;
    *v61 = v180;
    *(v61 + 1) = v62;
    *(v61 + 2) = v182;
    sub_10001B104(v33, v163, &qword_1008F0A08);
    swift_storeEnumTagMultiPayload();
    v63 = sub_1004F3684();
    v64 = sub_1004F3740();
    *&v183 = v60;
    *(&v183 + 1) = v165;
    *&v184 = v63;
    *(&v184 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v172;
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v33, &qword_1008F0A08);
    v66 = v57;
  }

  else
  {
    v153 = v17;
    if (v42)
    {
      v45 = v41;
      v147 = v45;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v67 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v68 = v158;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v177, 0);
      v69 = *(v159 + 8);
      v70 = v160;
      v69(v68, v160);
      v147 = v183;

      static os_log_type_t.fault.getter();
      v71 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v177, 0);
      v72 = v68;
      v41 = v177;
      v69(v72, v70);
      v45 = v183;
    }

    v73 = DetailsStackedChartView;
    swift_getKeyPath();
    *&v183 = v45;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v74 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    (*(v174 + 16))(v19, &v45[v74], v175);

    if (v154)
    {
      v75 = v41;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v76 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v77 = v158;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v41, 0);
      (*(v159 + 8))(v77, v160);
      v75 = v183;
    }

    sub_1001D467C();

    sub_100140278(&qword_1008F0320);
    v78 = v155;
    v79 = v167;
    Binding.wrappedValue.getter();
    dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

    (*(v156 + 8))(v78, DataType);
    v80 = v147;
    sub_1001DAAE8(v19, v12, v26);

    (*(v148 + 8))(v12, ViewModel);
    (*(v174 + 8))(v19, v175);
    sub_100140278(&qword_1008F0328);
    v81 = v153;
    State.projectedValue.getter();
    v82 = sub_100140278(&qword_1008F0A18);
    v83 = 1;
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    v84 = (v79 + *(v73 + 48));
    v85 = *v84;
    v86 = *(v84 + 1);
    LOBYTE(v180) = v85;
    *(&v180 + 1) = v86;
    sub_100140278(&qword_1008DDBB8);
    State.projectedValue.getter();
    v58 = v79;
    TrainingLoadChart.init(configuration:selectedDay:inSelectionMode:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v87 = v161;
    v88 = &v30[*(v161 + 36)];
    v89 = v181;
    *v88 = v180;
    *(v88 + 1) = v89;
    *(v88 + 2) = v182;
    v90 = sub_1004DEC98();
    v91 = v152;
    if ((v90 & 1) == 0)
    {
      sub_1004E317C(v152);
      v83 = 0;
    }

    v92 = sub_100140278(&qword_1008F0780);
    (*(*(v92 - 8) + 56))(v91, v83, 1, v92);
    static GestureMask.all.getter();
    v93 = sub_1004F3684();
    v94 = sub_1004F3740();
    v95 = v150;
    v96 = v165;
    View.gesture<A>(_:including:)();
    sub_10000EA04(v91, &qword_1008F09E8);
    sub_10000EA04(v30, &qword_1008F0A08);
    v97 = v151;
    v98 = v164;
    (*(v151 + 16))(v163, v95, v164);
    swift_storeEnumTagMultiPayload();
    *&v183 = v87;
    *(&v183 + 1) = v96;
    *&v184 = v93;
    *(&v184 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v65 = v172;
    _ConditionalContent<>.init(storage:)();
    (*(v97 + 8))(v95, v98);
    v66 = DetailsStackedChartView;
  }

  type metadata accessor for LoadDetailsStackedChartView(0);
  v99 = *(v58 + v66[6]);
  if (!v99)
  {
    goto LABEL_19;
  }

  v100 = v66;
  v101 = (v58 + v66[12]);
  v102 = *v101;
  v103 = *(v101 + 1);
  LOBYTE(v183) = *v101;
  *(&v183 + 1) = v103;
  v104 = v99;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  if (v178 != 1 || (sub_1004DEC98() & 1) != 0)
  {

LABEL_19:
    v105 = 1;
    v106 = v169;
    goto LABEL_20;
  }

  if (v154)
  {
    v113 = v177;
  }

  else
  {
    v114 = v177;

    static os_log_type_t.fault.getter();
    v115 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v116 = v158;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v114, 0);
    (*(v159 + 8))(v116, v160);
    v113 = v183;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320);
  v117 = v155;
  Binding.wrappedValue.getter();
  v118 = v143;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v156 + 8))(v117, DataType);
  v119 = v100;
  v175 = v100[11];
  v120 = v58;
  ChartLollipopView = type metadata accessor for TrainingLoadChartLollipopView();
  v177 = sub_100140278(&qword_1008F0328);
  State.wrappedValue.getter();
  v122 = (v120 + v100[14]);
  v123 = *v122;
  v124 = *(v122 + 1);
  LOBYTE(v183) = v123;
  *(&v183 + 1) = v124;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  LODWORD(v174) = v178;
  v125 = (v120 + v100[7]);
  v127 = *v125;
  v126 = v125[1];
  *&v183 = v127;
  *(&v183 + 1) = v126;
  sub_100140278(&qword_1008F0558);
  State.wrappedValue.getter();
  v128 = v178;
  v183 = *(v120 + v119[8]);
  sub_100140278(&qword_1008F0560);
  State.wrappedValue.getter();
  v129 = v178;
  LOBYTE(v178) = v102;
  v179 = v103;
  State.projectedValue.getter();
  v130 = v183;
  v131 = v184;
  *(v118 + ChartLollipopView[6]) = v174;
  *(v118 + ChartLollipopView[7]) = v128;
  *(v118 + ChartLollipopView[8]) = v129;
  *(v118 + ChartLollipopView[9]) = v104;
  v132 = v118 + ChartLollipopView[10];
  *v132 = v130;
  *(v132 + 16) = v131;
  v133 = v118 + ChartLollipopView[11];
  type metadata accessor for BalanceDataProvider();
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  *v133 = Environment.init<A>(_:)();
  *(v133 + 8) = v134 & 1;
  v135 = ChartLollipopView[12];
  *(v118 + v135) = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v136 = (v118 + *(sub_100140278(&qword_1008F0A40) + 36));
  v137 = v184;
  *v136 = v183;
  v136[1] = v137;
  v136[2] = v185;
  v138 = v144;
  State.wrappedValue.getter();
  sub_1004E38E0();
  v140 = v139;
  (*(v145 + 8))(v138, v146);
  v141 = v169;
  v142 = (v118 + *(v169 + 36));
  *v142 = v140;
  v142[1] = 0x4051C00000000000;
  sub_100015E80(v118, v173, &qword_1008F09D8);
  v106 = v141;
  v105 = 0;
  v65 = v172;
LABEL_20:
  v107 = v173;
  (*(v168 + 56))(v173, v105, 1, v106);
  v108 = v166;
  sub_10001B104(v65, v166, &qword_1008F0A10);
  v109 = v170;
  sub_10001B104(v107, v170, &qword_1008F09E0);
  v110 = v171;
  sub_10001B104(v108, v171, &qword_1008F0A10);
  v111 = sub_100140278(&qword_1008F0A38);
  sub_10001B104(v109, v110 + *(v111 + 48), &qword_1008F09E0);
  sub_10000EA04(v107, &qword_1008F09E0);
  sub_10000EA04(v65, &qword_1008F0A10);
  sub_10000EA04(v109, &qword_1008F09E0);
  return sub_10000EA04(v108, &qword_1008F0A10);
}

uint64_t sub_1004E317C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for DelayedLongPressGesture();
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  __chkstk_darwin(v3);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SpatialTapGesture();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100140278(&qword_1008F0808);
  v61 = *(v53 - 8);
  __chkstk_darwin(v53);
  v60 = &v41 - v7;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v9 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView - 8);
  v11 = v10;
  v12 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v42);
  v13 = type metadata accessor for DragGesture();
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008F0810);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v46 = &v41 - v18;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v19 = v2;
  v20 = v12;
  v41 = v12;
  v45 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F2EE8(v19, v12, type metadata accessor for LoadDetailsStackedChartView);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v44 = v11;
  v22 = swift_allocObject();
  v43 = type metadata accessor for LoadDetailsStackedChartView;
  sub_1004F4200(v20, v22 + v21, type metadata accessor for LoadDetailsStackedChartView);
  sub_1004EFA78(&qword_1008EDA18, &type metadata accessor for DragGesture);
  sub_1004EFA78(&qword_1008EDA20, &type metadata accessor for DragGesture.Value);
  v23 = v47;
  Gesture<>.onChanged(_:)();

  (*(v48 + 8))(v16, v23);
  static CoordinateSpaceProtocol<>.local.getter();
  v24 = v51;
  SpatialTapGesture.init<A>(count:coordinateSpace:)();
  v25 = v41;
  sub_1004F2EE8(v59, v41, type metadata accessor for LoadDetailsStackedChartView);
  v26 = swift_allocObject();
  sub_1004F4200(v25, v26 + v21, type metadata accessor for LoadDetailsStackedChartView);
  sub_1004EFA78(&qword_1008F0818, &type metadata accessor for SpatialTapGesture);
  v27 = v60;
  v28 = v52;
  Gesture.onEnded(_:)();

  (*(v54 + 8))(v24, v28);
  v29 = sub_100140278(&qword_1008F0780);
  v30 = v55 + *(v29 + 52);
  v31 = v27;
  v32 = v53;
  (*(v61 + 16))(v30, v31, v53);
  v33 = sub_100140278(&qword_1008F0820);
  v34 = v49;
  v35 = v50;
  v36 = v46;
  (*(v49 + 16))(v30 + *(v33 + 52), v46, v50);
  v37 = v56;
  DelayedLongPressGesture.init(minimumDuration:maximumDistance:)();
  sub_1004F2EE8(v59, v25, v45);
  v38 = swift_allocObject();
  sub_1004F4200(v25, v38 + v21, v43);
  sub_1004EFA78(&qword_1008F0828, &type metadata accessor for DelayedLongPressGesture);
  v39 = v57;
  Gesture.onEnded(_:)();

  (*(v58 + 8))(v37, v39);
  (*(v61 + 8))(v60, v32);
  return (*(v34 + 8))(v36, v35);
}

uint64_t sub_1004E38E0()
{
  v63 = type metadata accessor for DayIndex();
  v1 = *(v63 - 8);
  __chkstk_darwin(v63);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = &v46 - v4;
  v48 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v48);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v46 - v7;
  v8 = type metadata accessor for GregorianDayRange();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v52 = DayIndex.value.getter();
  v19 = v0 + *(DetailsStackedChartView + 68);
  v20 = *v19;
  v58 = *(v19 + 8);
  v50 = v14;
  v49 = v15;
  if (v58 == 1)
  {
    v22 = v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v20, 0);
    (*(v15 + 8))(v17, v14);
    v22 = v66;
  }

  swift_getKeyPath();
  v66 = v22;
  v57 = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v56 = *(v9 + 16);
  v56(v13, &v22[v23], v8);

  v24 = v61;
  GregorianDayRange.dayIndexRange.getter();
  v25 = *(v9 + 8);
  v59 = v9 + 8;
  v55 = v25;
  v25(v13, v8);
  v26 = v62;
  v27 = v63;
  v54 = *(v1 + 16);
  v54(v62, v24, v63);
  sub_10000EA04(v24, &qword_1008E04A8);
  v28 = DayIndex.value.getter();
  v29 = *(v1 + 8);
  v60 = v1 + 8;
  v53 = v29;
  result = (v29)(v26, v27);
  if (__OFSUB__(v52, v28))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v52 -= v28;
  if (v58)
  {
    v31 = v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v20, 0);
    (*(v49 + 8))(v17, v50);
    v31 = v65;
  }

  swift_getKeyPath();
  v65 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v34 = v46;
  v56(v46, &v31[v33], v8);

  v35 = v47;
  GregorianDayRange.dayIndexRange.getter();
  v55(v34, v8);
  v36 = v51;
  v37 = v63;
  v54(v51, v35 + *(v48 + 36), v63);
  sub_10000EA04(v35, &qword_1008E04A8);
  v38 = DayIndex.value.getter();
  v53(v36, v37);
  if (v58)
  {
    v39 = v20;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v20, 0);
    (*(v49 + 8))(v17, v50);
    v39 = v64;
  }

  swift_getKeyPath();
  v64 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v56(v13, &v39[v41], v8);

  v42 = v61;
  GregorianDayRange.dayIndexRange.getter();
  v55(v13, v8);
  v43 = v62;
  v44 = v63;
  v54(v62, v42, v63);
  sub_10000EA04(v42, &qword_1008E04A8);
  v45 = DayIndex.value.getter();
  result = (v53)(v43, v44);
  if (__OFSUB__(v38, v45))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1004E4188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_100140278(&qword_1008F08F8);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v57 = (&v53 - v4);
  v54 = sub_100140278(&qword_1008F0900);
  __chkstk_darwin(v54);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v53 - v7;
  v8 = sub_100140278(&qword_1008F0908);
  __chkstk_darwin(v8 - 8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = sub_100140278(&qword_1008F0910);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v17 = sub_100140278(&qword_1008F0918);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  *v16 = static HorizontalAlignment.leading.getter();
  *(v16 + 1) = 0;
  v27 = 1;
  v16[16] = 1;
  v28 = sub_100140278(&qword_1008F0920);
  sub_1004E4700(a1, &v16[*(v28 + 44)]);
  v29 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = &v16[*(v14 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 48);
  v36 = *v35;
  v37 = *(v35 + 8);
  v63 = v36;
  v64 = v37;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  if (v62)
  {
    v38 = 0.6;
  }

  else
  {
    v38 = 1.0;
  }

  sub_100015E80(v16, v23, &qword_1008F0910);
  *&v23[*(v18 + 44)] = v38;
  sub_100015E80(v23, v26, &qword_1008F0918);
  if (sub_1004DEC98())
  {
    v39 = v55;
    ProgressView<>.init<>()();
    v40 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v41 = v39 + *(v54 + 36);
    *v41 = v40;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v46 = v56;
    sub_10001B104(v39, v56, &qword_1008F0900);
    v47 = v57;
    *v57 = 0;
    *(v47 + 8) = 1;
    v48 = sub_100140278(&qword_1008F0930);
    sub_10001B104(v46, v47 + *(v48 + 48), &qword_1008F0900);
    sub_10000EA04(v39, &qword_1008F0900);
    sub_10000EA04(v46, &qword_1008F0900);
    sub_100015E80(v47, v12, &qword_1008F08F8);
    v27 = 0;
  }

  (*(v59 + 56))(v12, v27, 1, v60);
  sub_10001B104(v26, v20, &qword_1008F0918);
  v49 = v58;
  sub_10001B104(v12, v58, &qword_1008F0908);
  v50 = v61;
  sub_10001B104(v20, v61, &qword_1008F0918);
  v51 = sub_100140278(&qword_1008F0928);
  sub_10001B104(v49, v50 + *(v51 + 48), &qword_1008F0908);
  sub_10000EA04(v12, &qword_1008F0908);
  sub_10000EA04(v26, &qword_1008F0918);
  sub_10000EA04(v49, &qword_1008F0908);
  return sub_10000EA04(v20, &qword_1008F0918);
}

uint64_t sub_1004E4700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v3 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v3 - 8);
  v82 = &v77 - v4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v92 = *(DataType - 8);
  v93 = DataType;
  __chkstk_darwin(DataType);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for EnvironmentValues();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v89 = *(ViewModel - 8);
  v90 = ViewModel;
  __chkstk_darwin(ViewModel);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v87 = sub_100140278(&qword_1008F0938);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  v96 = a1;
  v95 = a1;
  sub_100140278(&qword_1008F0940);
  sub_100140278(&qword_1008F0948);
  v17 = sub_100141EEC(&qword_1008F0950);
  v18 = sub_10014A6B0(&qword_1008F0958, &qword_1008F0950);
  v19 = sub_100264AB4();
  v98 = v17;
  v99 = &type metadata for PickerLabelStyle;
  v100 = v18;
  v101 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008F0960, &qword_1008F0948);
  v84 = v16;
  Menu.init(content:label:)();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v20 = (a1 + *(DetailsStackedChartView + 56));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v98) = v21;
  v99 = v22;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  v81 = a1;
  if (v97)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (sub_1004DEC98())
  {
LABEL_6:
    v24 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_11;
  }

  v26 = a1 + *(DetailsStackedChartView + 68);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    v28 = v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = v78;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v27, 0);
    (*(v79 + 8))(v30, v80);
    v28 = v98;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320);
  v31 = v91;
  Binding.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v92 + 8))(v31, v93);
  v24 = TrainingLoadViewModel.localizedDescription(onDay:)();
  v25 = v32;
  (*(v89 + 8))(v12, v90);
LABEL_11:
  v98 = v24;
  v99 = v25;
  sub_10000FCBC();
  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  static Font.body.getter();
  v38 = Text.font(_:)();
  v40 = v39;
  v42 = v41;

  sub_10004642C(v33, v35, v37 & 1);

  v43 = enum case for Font.Design.rounded(_:);
  v44 = type metadata accessor for Font.Design();
  v45 = *(v44 - 8);
  v46 = v82;
  (*(v45 + 104))(v82, v43, v44);
  (*(v45 + 56))(v46, 0, 1, v44);
  v47 = Text.fontDesign(_:)();
  v49 = v48;
  v51 = v50;
  sub_10004642C(v38, v40, v42 & 1);

  sub_10000EA04(v46, &qword_1008DC448);
  v52 = v81 + *(DetailsStackedChartView + 68);
  v53 = *v52;
  if (*(v52 + 8) == 1)
  {
    v54 = v53;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = v78;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v53, 0);
    (*(v79 + 8))(v56, v80);
    v54 = v98;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320);
  v57 = v91;
  Binding.wrappedValue.getter();
  v58 = v83;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v92 + 8))(v57, v93);
  v59 = TrainingLoadViewModel.color(onDay:)();
  (*(v89 + 8))(v58, v90);
  v98 = v59;
  v60 = Text.foregroundStyle<A>(_:)();
  v62 = v61;
  LODWORD(DetailsStackedChartView) = v63;
  v65 = v64;
  sub_10004642C(v47, v49, v51 & 1);

  v66 = v86;
  v67 = *(v86 + 16);
  v68 = v85;
  v69 = v84;
  v70 = v87;
  v67(v85, v84, v87);
  v71 = v88;
  v67(v88, v68, v70);
  v72 = &v71[*(sub_100140278(&qword_1008F0968) + 48)];
  *v72 = v60;
  *(v72 + 1) = v62;
  v73 = DetailsStackedChartView;
  v74 = DetailsStackedChartView & 1;
  v72[16] = DetailsStackedChartView & 1;
  *(v72 + 3) = v65;
  sub_10006965C(v60, v62, v73 & 1);
  v75 = *(v66 + 8);

  v75(v69, v70);
  sub_10004642C(v60, v62, v74);

  return (v75)(v68, v70);
}

uint64_t sub_1004E516C()
{
  v0 = sub_100140278(&qword_1008F0320);
  __chkstk_darwin(v0);
  LocalizedStringKey.init(stringLiteral:)();
  Binding.projectedValue.getter();
  type metadata accessor for TrainingLoadDataType();
  sub_100140278(&qword_1008F09A0);
  sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType);
  sub_1004F34D4();
  return Picker<>.init(_:selection:content:)();
}

uint64_t sub_1004E52E0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v7, 0);
    (*(v3 + 8))(v5, v2);
    v8 = v13;
  }

  sub_1001D467C();

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.viewModels.getter();

  v13 = ViewModel;
  swift_getKeyPath();
  sub_100140278(&qword_1008F09C8);
  sub_100140278(&qword_1008F09C0);
  sub_10014A6B0(&qword_1008F09D0, &qword_1008F09C8);
  sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType);
  sub_1004F3558();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004E5588@<X0>(uint64_t a1@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v5 = &View - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = TrainingLoadViewModel.localizedName()();
  sub_10000FCBC();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  TrainingLoadViewModel.dataType.getter();
  v13 = a1 + *(sub_100140278(&qword_1008DB058) + 36);
  (*(v3 + 32))(v13, v5, DataType);
  *(v13 + *(sub_100140278(&qword_1008DB060) + 36)) = 1;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008F09C0);
  v17 = (a1 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v14;
  return result;
}

uint64_t sub_1004E5724(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F0950);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = a1;
  sub_100140278(&qword_1008F0970);
  sub_100140278(&qword_1008F0978);
  sub_1004F32A4();
  sub_1004F335C();
  Label.init(title:icon:)();
  sub_10014A6B0(&qword_1008F0958, &qword_1008F0950);
  sub_100264AB4();
  View.labelStyle<A>(_:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004E58E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v11 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v40 = a1;
  v15 = a1 + v14;
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    countAndFlagsBits = v16;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    v37 = v8;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v16, 0);
    (*(v38 + 8))(v10, v37);
    countAndFlagsBits = v41._countAndFlagsBits;
  }

  sub_1001D467C();

  sub_100140278(&qword_1008F0320);
  Binding.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v5 + 8))(v7, DataType);
  View = TrainingLoadViewModel.localizedName()();
  (*(v11 + 8))(v13, ViewModel);
  v41 = View;
  sub_10000FCBC();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Font.body.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_10004642C(v21, v23, v25 & 1);

  v33 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v41._countAndFlagsBits = v33;
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1004E5CA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(sub_100140278(&qword_1008F0998) + 36));
  v6 = *(sub_100140278(&qword_1008E97F8) + 28);
  v7 = enum case for Image.Scale.small(_:);
  v8 = type metadata accessor for Image.Scale();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  v9 = static Color.white.getter();
  v10 = swift_getKeyPath();
  result = sub_100140278(&qword_1008F0978);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_1004E5DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100140278(&qword_1008F0650);
  sub_1004E5FE0(a1, a2 + *(v4 + 44));
  v5 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(sub_100140278(&qword_1008F0628) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_100140278(&qword_1008F0618) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a2 + *(sub_100140278(&qword_1008F0608) + 36);
  *v34 = v25;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v35 = static Alignment.center.getter();
  v37 = v36;
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  v38 = 0;
  if (v41 == 1)
  {
    static Color.black.getter();
    v38 = Color.opacity(_:)();
  }

  result = sub_100140278(&qword_1008F05F0);
  v40 = (a2 + *(result + 36));
  *v40 = v38;
  v40[1] = v35;
  v40[2] = v37;
  return result;
}

uint64_t sub_1004E5FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v210 = sub_100140278(&qword_1008F0658);
  __chkstk_darwin(v210);
  v170 = &v168 - v3;
  v175 = type metadata accessor for Divider();
  v201 = *(v175 - 8);
  __chkstk_darwin(v175);
  v172 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v174 = &v168 - v6;
  v173 = sub_100140278(&qword_1008F0660);
  v200 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v176 = &v168 - v9;
  v207 = sub_100140278(&qword_1008F0668);
  __chkstk_darwin(v207);
  v209 = &v168 - v10;
  v208 = sub_100140278(&qword_1008F0670);
  __chkstk_darwin(v208);
  v199 = &v168 - v11;
  v12 = type metadata accessor for PlainButtonStyle();
  v195 = *(v12 - 8);
  v196 = v12;
  __chkstk_darwin(v12);
  v193 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v204 = *(DetailsStackedChartView - 8);
  __chkstk_darwin(DetailsStackedChartView);
  v205 = v15;
  *&v206 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_100140278(&qword_1008F0678);
  v184 = *(v187 - 8);
  __chkstk_darwin(v187);
  v181 = &v168 - v16;
  v17 = sub_100140278(&qword_1008F0680);
  v189 = *(v17 - 8);
  v190 = v17;
  __chkstk_darwin(v17);
  v183 = &v168 - v18;
  v182 = sub_100140278(&qword_1008F0688);
  __chkstk_darwin(v182);
  v188 = &v168 - v19;
  v186 = sub_100140278(&qword_1008F0690);
  __chkstk_darwin(v186);
  v192 = &v168 - v20;
  v191 = sub_100140278(&qword_1008F0698);
  __chkstk_darwin(v191);
  v197 = &v168 - v21;
  v185 = sub_100140278(&qword_1008F06A0);
  __chkstk_darwin(v185);
  v198 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v194 = &v168 - v24;
  __chkstk_darwin(v25);
  v212 = &v168 - v26;
  v27 = type metadata accessor for Font.Leading();
  v179 = *(v27 - 8);
  v180 = v27;
  __chkstk_darwin(v27);
  v178 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Image.ResizingMode();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v177 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v203 = type metadata accessor for OvernightMetricsViewModel();
  *&v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v33 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v168 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = DetailsStackedChartView;
  v38 = a1 + *(DetailsStackedChartView + 68);
  v39 = *v38;
  if (*(v38 + 8) == 1)
  {
    v40 = v39;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    v168 = v30;
    v42 = v29;
    v43 = a1;
    v44 = v41;
    os_log(_:dso:log:_:_:)();

    a1 = v43;
    v29 = v42;
    v30 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v39, 0);
    (*(v35 + 8))(v37, v34);
    v40 = *&v239[0];
  }

  sub_1001D427C();

  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

  v45 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
  (*(v202 + 8))(v33, v203);
  if ((v45 == 2 || (v45 & 1) == 0) && (v46 = sub_1004DDA28()[2], , v46) && (sub_1004DE358() & 1) == 0)
  {
    *&v239[0] = sub_1004DDA28();
    *&v203 = swift_getKeyPath();
    v132 = v206;
    sub_1004F2EE8(a1, v206, type metadata accessor for LoadDetailsStackedChartView);
    v133 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v134 = swift_allocObject();
    sub_1004F4200(v132, v134 + v133, type metadata accessor for LoadDetailsStackedChartView);
    sub_100140278(&qword_1008F06A8);
    sub_100140278(&qword_1008F06B0);
    sub_10014A6B0(&qword_1008F06B8, &qword_1008F06A8);
    sub_1004EFA78(&qword_1008F06C0, &type metadata accessor for SleepingSampleDataType);
    v212 = &protocol conformance descriptor for TupleView<A>;
    sub_10014A6B0(&qword_1008F06C8, &qword_1008F06B0);
    ForEach<>.init(_:id:content:)();
    v135 = v169;
    v136 = a1 + *(v169 + 40);
    v137 = *v136;
    v138 = *(v136 + 8);
    LOBYTE(v235) = v137;
    *(&v235 + 1) = v138;
    sub_100140278(&qword_1008DDBB8);
    State.projectedValue.getter();
    v139 = v239[0];
    v140 = v239[1];
    v141 = (a1 + *(v135 + 52));
    v143 = *v141;
    v142 = v141[1];
    *&v235 = v143;
    *(&v235 + 1) = v142;
    sub_100140278(&qword_1008F0550);
    State.projectedValue.getter();
    v144 = *&v239[0];
    type metadata accessor for BalanceDataProvider();
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    v206 = *(v239 + 8);
    v145 = Environment.init<A>(_:)();
    v227 = v139;
    LOBYTE(v228) = v140;
    *(&v228 + 1) = v144;
    v229[0] = v206;
    *&v229[1] = v145;
    BYTE8(v229[1]) = v146 & 1;
    v147 = v174;
    Divider.init()();
    v204 = *(a1 + *(v135 + 20));

    *&v203 = Environment.init<A>(_:)();
    v149 = v148;
    v150 = *(v200 + 16);
    v151 = v171;
    v152 = v173;
    v150(v171, v176, v173);
    v219 = v227;
    v220 = v228;
    v221[0] = v229[0];
    *(v221 + 9) = *(v229 + 9);
    v153 = *(v201 + 16);
    v154 = v147;
    v155 = v175;
    v153(v172, v154, v175);
    v156 = v149 & 1;
    LOBYTE(v259) = v149 & 1;
    LODWORD(v206) = v149 & 1;
    v157 = v170;
    v150(v170, v151, v152);
    v158 = sub_100140278(&qword_1008F06D0);
    v159 = (v157 + v158[12]);
    v160 = *(v221 + 9);
    *(v237 + 9) = *(v221 + 9);
    v161 = v220;
    v235 = v219;
    v236 = v220;
    v162 = v221[0];
    v237[0] = v221[0];
    *v159 = v219;
    v159[1] = v161;
    v159[2] = v162;
    *(v159 + 41) = v160;
    v163 = v172;
    v153((v157 + v158[16]), v172, v155);
    v164 = v157 + v158[20];
    LOBYTE(v158) = v259;
    v165 = v203;
    *v164 = v204;
    *(v164 + 8) = v165;
    *(v164 + 16) = v158;

    sub_1004F2C6C(&v227, v239);
    sub_1000A72F0(v165, v156);
    sub_1004F2C6C(&v235, v239);

    sub_1000A72F0(v165, v158);

    sub_1000A73A4(v165, v158);
    v166 = *(v201 + 8);
    v201 += 8;
    v205 = v166;
    v166(v163, v155);
    v239[0] = v219;
    v239[1] = v220;
    v240[0] = v221[0];
    *(v240 + 9) = *(v221 + 9);
    sub_1004F2CA4(v239);
    v167 = *(v200 + 8);
    v200 += 8;
    v167(v171, v152);
    sub_10001B104(v157, v209, &qword_1008F0658);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F06D8, &qword_1008F0670);
    sub_10014A6B0(&qword_1008F06E0, &qword_1008F0658);
    _ConditionalContent<>.init(storage:)();

    sub_1000A73A4(v165, v206);
    sub_1004F2CA4(&v227);
    sub_10000EA04(v157, &qword_1008F0658);
    v205(v174, v175);
    return (v167)(v176, v173);
  }

  else
  {
    Image.init(_:bundle:)();
    v47 = v177;
    (*(v30 + 104))(v177, enum case for Image.ResizingMode.stretch(_:), v29);
    v48 = Image.resizable(capInsets:resizingMode:)();

    (*(v30 + 8))(v47, v29);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v201 = a1;
    v49 = v253;
    v50 = v254;
    v51 = v255;
    v52 = v256;
    v53 = v257;
    v54 = v258;
    LOBYTE(v235) = v254;
    LOBYTE(v227) = v256;
    v55 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    LOBYTE(v239[0]) = 0;
    LOBYTE(v47) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v219) = 0;
    *&v239[0] = v48;
    *(&v239[0] + 1) = v49;
    LOBYTE(v239[1]) = v50;
    *(&v239[1] + 1) = v51;
    LOBYTE(v240[0]) = v52;
    *(&v240[0] + 1) = v53;
    *&v240[1] = v54;
    WORD4(v240[1]) = 256;
    LOBYTE(v241) = v55;
    *(&v241 + 1) = v57;
    *&v242 = v59;
    *(&v242 + 1) = v61;
    *&v243 = v63;
    BYTE8(v243) = 0;
    HIDWORD(v243) = *(&v235 + 3);
    *(&v243 + 9) = v235;
    LOBYTE(v244) = v47;
    DWORD1(v244) = *(&v227 + 3);
    *(&v244 + 1) = v227;
    *(&v244 + 1) = v64;
    *&v245[0] = v65;
    *(&v245[0] + 1) = v66;
    *&v245[1] = v67;
    BYTE8(v245[1]) = 0;
    v68 = v201;
    sub_1004E7928(&v235);
    LOBYTE(v49) = v237[0];
    v202 = v236;
    v203 = v235;
    static Font.body.getter();
    v70 = v178;
    v69 = v179;
    v71 = v180;
    (*(v179 + 104))(v178, enum case for Font.Leading.tight(_:), v180);
    v72 = Font.leading(_:)();

    (*(v69 + 8))(v70, v71);
    KeyPath = swift_getKeyPath();
    v74 = [objc_opt_self() secondaryLabelColor];
    v75 = Color.init(_:)();
    v246 = v49;
    LOBYTE(v49) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v227) = 0;
    v248 = v202;
    v247 = v203;
    LOBYTE(v249) = v246;
    *(&v249 + 1) = KeyPath;
    *&v250 = v72;
    *(&v250 + 1) = v75;
    LOBYTE(v251) = v49;
    *(&v251 + 1) = v235;
    DWORD1(v251) = *(&v235 + 3);
    *(&v251 + 1) = v76;
    *&v252[0] = v77;
    *(&v252[0] + 1) = v78;
    *&v252[1] = v79;
    BYTE8(v252[1]) = 0;
    v80 = v206;
    sub_1004F2EE8(v68, v206, type metadata accessor for LoadDetailsStackedChartView);
    v81 = (*(v204 + 80) + 16) & ~*(v204 + 80);
    v82 = swift_allocObject();
    v83 = sub_1004F4200(v80, v82 + v81, type metadata accessor for LoadDetailsStackedChartView);
    __chkstk_darwin(v83);
    sub_100140278(&qword_1008F06E8);
    v84 = sub_100141EEC(&qword_1008F06F0);
    v85 = sub_1004F2D08();
    *&v235 = v84;
    *(&v235 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    v86 = v181;
    Button.init(action:label:)();
    v87 = v193;
    PlainButtonStyle.init()();
    sub_10014A6B0(&qword_1008F0700, &qword_1008F0678);
    sub_1004EFA78(&qword_1008F0708, &type metadata accessor for PlainButtonStyle);
    v88 = v183;
    v89 = v187;
    v90 = v196;
    View.buttonStyle<A>(_:)();
    (*(v195 + 8))(v87, v90);
    (*(v184 + 8))(v86, v89);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v91 = v188;
    (*(v189 + 32))(v188, v88, v190);
    v92 = (v91 + *(v182 + 36));
    v93 = v264;
    v92[4] = v263;
    v92[5] = v93;
    v92[6] = v265;
    v94 = v260;
    *v92 = v259;
    v92[1] = v94;
    v95 = v262;
    v92[2] = v261;
    v92[3] = v95;
    LOBYTE(v86) = static Edge.Set.all.getter();
    v96 = v192;
    sub_100015E80(v91, v192, &qword_1008F0688);
    v97 = v96 + *(v186 + 36);
    *v97 = v86;
    *(v97 + 8) = 0u;
    *(v97 + 24) = 0u;
    *(v97 + 40) = 1;
    v98 = sub_100046170();
    v99 = Color.init(uiColor:)();
    LOBYTE(v91) = static Edge.Set.all.getter();
    v100 = v197;
    sub_100015E80(v96, v197, &qword_1008F0690);
    v101 = v100 + *(v191 + 36);
    *v101 = v99;
    *(v101 + 8) = v91;
    v102 = v194;
    v103 = &v194[*(v185 + 36)];
    v104 = *(type metadata accessor for RoundedRectangle() + 20);
    v105 = enum case for RoundedCornerStyle.continuous(_:);
    v106 = type metadata accessor for RoundedCornerStyle();
    (*(*(v106 - 8) + 104))(&v103[v104], v105, v106);
    __asm { FMOV            V0.2D, #10.0 }

    *v103 = _Q0;
    *&v103[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
    sub_100015E80(v100, v102, &qword_1008F0698);
    v112 = v212;
    sub_100015E80(v102, v212, &qword_1008F06A0);
    v224 = v243;
    v225 = v244;
    v226[0] = v245[0];
    *(v226 + 9) = *(v245 + 9);
    v221[0] = v240[0];
    v221[1] = v240[1];
    v222 = v241;
    v223 = v242;
    v219 = v239[0];
    v220 = v239[1];
    v217 = v251;
    v218[0] = v252[0];
    *(v218 + 9) = *(v252 + 9);
    v213 = v247;
    v214 = v248;
    v215 = v249;
    v216 = v250;
    v113 = v112;
    v114 = v198;
    sub_10001B104(v113, v198, &qword_1008F06A0);
    v115 = v225;
    v229[4] = v224;
    v229[5] = v225;
    v116 = v226[0];
    v230[0] = v226[0];
    *(v230 + 9) = *(v226 + 9);
    v117 = v221[0];
    v118 = v221[1];
    v229[0] = v221[0];
    v229[1] = v221[1];
    v119 = v222;
    v120 = v223;
    v229[2] = v222;
    v229[3] = v223;
    v121 = v219;
    v122 = v220;
    v227 = v219;
    v228 = v220;
    v123 = v199;
    *(v199 + 6) = v224;
    v123[7] = v115;
    v123[8] = v116;
    *(v123 + 137) = *(v226 + 9);
    v123[2] = v117;
    v123[3] = v118;
    v123[4] = v119;
    v123[5] = v120;
    *v123 = v121;
    v123[1] = v122;
    v124 = v217;
    v125 = v218[0];
    v231[4] = v217;
    v232[0] = v218[0];
    v126 = *(v218 + 9);
    *(v232 + 9) = *(v218 + 9);
    v127 = v214;
    v231[0] = v213;
    v231[1] = v214;
    v129 = v215;
    v128 = v216;
    v231[2] = v215;
    v231[3] = v216;
    v123[10] = v213;
    v123[11] = v127;
    v123[12] = v129;
    v123[13] = v128;
    v123[14] = v124;
    v123[15] = v125;
    *(v123 + 249) = v126;
    v130 = sub_100140278(&qword_1008F0710);
    sub_10001B104(v114, v123 + *(v130 + 64), &qword_1008F06A0);
    sub_10001B104(v239, &v235, &qword_1008F0718);
    sub_10001B104(&v247, &v235, &qword_1008F0720);
    sub_10001B104(&v227, &v235, &qword_1008F0718);
    sub_10001B104(v231, &v235, &qword_1008F0720);
    sub_10000EA04(v114, &qword_1008F06A0);
    v233[4] = v217;
    v234[0] = v218[0];
    *(v234 + 9) = *(v218 + 9);
    v233[0] = v213;
    v233[1] = v214;
    v233[2] = v215;
    v233[3] = v216;
    sub_10000EA04(v233, &qword_1008F0720);
    v237[4] = v224;
    v237[5] = v225;
    v238[0] = v226[0];
    *(v238 + 9) = *(v226 + 9);
    v237[0] = v221[0];
    v237[1] = v221[1];
    v237[2] = v222;
    v237[3] = v223;
    v235 = v219;
    v236 = v220;
    sub_10000EA04(&v235, &qword_1008F0718);
    sub_10001B104(v123, v209, &qword_1008F0670);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008F06D8, &qword_1008F0670);
    sub_10014A6B0(&qword_1008F06E0, &qword_1008F0658);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(&v247, &qword_1008F0720);
    sub_10000EA04(v239, &qword_1008F0718);
    sub_10000EA04(v123, &qword_1008F0670);
    return sub_10000EA04(v212, &qword_1008F06A0);
  }
}

double sub_1004E7928@<D0>(uint64_t a1@<X8>)
{
  sub_1004DE358();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1004E7A44(uint64_t a1)
{
  v28 = type metadata accessor for OvernightMetricsViewModel();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_1004DE358();
  result = type metadata accessor for LoadDetailsStackedChartView(0);
  v17 = *(a1 + *(result + 20));
  if (v15)
  {
    if (!v17)
    {
      return result;
    }

    v18 = a1 + *(result + 68);
    v19 = *v18;
    if (*(v18 + 8) == 1)
    {
      v20 = v19;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v19, 0);
      (*(v6 + 8))(v8, v5);
      v20 = v29;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v2 + 8))(v4, v28);
    sub_10043DB74(v14);
  }

  else
  {
    if (!v17)
    {
      return result;
    }

    v21 = a1 + *(result + 68);
    v22 = *v21;
    if (*(v21 + 8) == 1)
    {
      v23 = v22;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v22, 0);
      (*(v6 + 8))(v8, v5);
      v23 = v29;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v2 + 8))(v4, v28);
    sub_10043DBA4(v11);
    v14 = v11;
  }

  return (*(v9 + 8))(v14, v27);
}

uint64_t sub_1004E7E48@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = type metadata accessor for Font.Leading();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E800C(&v14);
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  static Font.body.getter();
  (*(v2 + 104))(v4, enum case for Font.Leading.tight(_:), v1);
  v10 = Font.leading(_:)();

  (*(v2 + 8))(v4, v1);
  KeyPath = swift_getKeyPath();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = KeyPath;
  v20 = v10;
  static Font.Weight.semibold.getter();
  sub_100140278(&qword_1008F06F0);
  sub_1004F2D08();
  View.fontWeight(_:)();
  sub_10017A8F0(v5, v6, v7);
}

double sub_1004E800C@<D0>(uint64_t a1@<X8>)
{
  sub_1004DE358();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1004E8128(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleDataType();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return SleepingSampleViewModel.dataType.setter();
}

uint64_t sub_1004E81F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = type metadata accessor for Divider();
  v25 = *(v5 - 8);
  v6 = v25;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_100140278(&qword_1008F0728);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0x4028000000000000;
  v17[16] = 0;
  v18 = sub_100140278(&qword_1008F0730);
  sub_1004E846C(a1, a2, &v17[*(v18 + 44)]);
  Divider.init()();
  sub_10001B104(v17, v14, &qword_1008F0728);
  v19 = *(v6 + 16);
  v20 = v5;
  v19(v8, v11, v5);
  v21 = v26;
  sub_10001B104(v14, v26, &qword_1008F0728);
  v22 = v21 + *(sub_100140278(&qword_1008F0738) + 48);
  v19(v22, v8, v20);
  v23 = *(v25 + 8);
  v23(v11, v20);
  sub_10000EA04(v17, &qword_1008F0728);
  v23(v8, v20);
  return sub_10000EA04(v14, &qword_1008F0728);
}

uint64_t sub_1004E846C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100140278(&qword_1008F0740);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v28 - v10);
  v12 = sub_100140278(&qword_1008F0748);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v18 = sub_100140278(&qword_1008F0750);
  sub_1004E8730(a1, a2, &v17[*(v18 + 44)]);
  if (qword_1008DA608 != -1)
  {
    swift_once();
  }

  *v11 = xmmword_100925200;
  v19 = sub_100140278(&qword_1008F0758);
  sub_1004E9EF8(a1, a2, v11 + *(v19 + 44));
  v20 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v21 = v11 + *(v6 + 36);
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_10001B104(v17, v14, &qword_1008F0748);
  sub_10001B104(v11, v8, &qword_1008F0740);
  sub_10001B104(v14, a3, &qword_1008F0748);
  v26 = sub_100140278(&qword_1008F0760);
  sub_10001B104(v8, a3 + *(v26 + 48), &qword_1008F0740);
  sub_10000EA04(v11, &qword_1008F0740);
  sub_10000EA04(v17, &qword_1008F0748);
  sub_10000EA04(v8, &qword_1008F0740);
  return sub_10000EA04(v14, &qword_1008F0748);
}

uint64_t sub_1004E8730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v130 = a3;
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v118 = &v111 - v5;
  v6 = sub_100140278(&qword_1008F0830);
  v114 = *(v6 - 8);
  v115 = v6;
  __chkstk_darwin(v6);
  v112 = &v111 - v7;
  v113 = sub_100140278(&qword_1008F0838);
  __chkstk_darwin(v113);
  v119 = &v111 - v8;
  v9 = sub_100140278(&qword_1008F0840);
  v127 = *(v9 - 8);
  v128 = v9;
  __chkstk_darwin(v9);
  v117 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v116 = &v111 - v12;
  v13 = sub_100140278(&qword_1008F0848);
  __chkstk_darwin(v13 - 8);
  v129 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v111 - v16;
  v17 = type metadata accessor for SleepingSampleDataType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v123 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v111 - v21;
  v23 = sub_100140278(&qword_1008E9840);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = (&v111 - v25);
  v125 = sub_100140278(&qword_1008F0850) - 8;
  __chkstk_darwin(v125);
  v126 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v124 = &v111 - v29;
  __chkstk_darwin(v30);
  v131 = &v111 - v31;
  SleepingSampleViewModel.dataType.getter();
  v120 = SleepingSampleDataType.preferredImage.getter();
  v122 = *(v18 + 8);
  v122(v22, v17);
  v32 = (v26 + *(v24 + 44));
  v33 = v26;
  v34 = *(sub_100140278(&qword_1008E97F8) + 28);
  v35 = enum case for Image.Scale.small(_:);
  v36 = type metadata accessor for Image.Scale();
  v37 = v32 + v34;
  v38 = a1;
  (*(*(v36 - 8) + 104))(v37, v35, v36);
  *v32 = swift_getKeyPath();
  v39 = v33;
  *v33 = v120;
  LOBYTE(v35) = static Edge.Set.trailing.getter();
  SleepingSampleViewModel.dataType.getter();
  v40 = v123;
  (*(v18 + 104))(v123, enum case for SleepingSampleDataType.bloodOxygen(_:), v17);
  sub_1004EFA78(&qword_1008E0510, &type metadata accessor for SleepingSampleDataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v41 = v40;
  v42 = v122;
  v122(v41, v17);
  v42(v22, v17);
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v124;
  sub_100015E80(v39, v124, &qword_1008E9840);
  v52 = v51 + *(v125 + 44);
  *v52 = v35;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  sub_100015E80(v51, v131, &qword_1008F0850);
  SleepingSampleViewModel.dataType.getter();
  v53 = SleepingSampleDataType.localizedName.getter();
  v55 = v54;
  v56 = v17;
  v57 = v121;
  v42(v22, v56);
  *&v148 = v53;
  *(&v148 + 1) = v55;
  sub_10000FCBC();
  v58 = Text.init<A>(_:)();
  v60 = v59;
  LOBYTE(v55) = v61;
  static Font.body.getter();
  v62 = Text.font(_:)();
  v123 = v63;
  v124 = v62;
  LODWORD(v122) = v64;
  v125 = v65;

  sub_10004642C(v58, v60, v55 & 1);

  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v67 = (v57 + *(DetailsStackedChartView + 56));
  v68 = *v67;
  v69 = *(v67 + 1);
  LOBYTE(v148) = v68;
  *(&v148 + 1) = v69;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  if (v133)
  {
    v70 = v132;
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v71 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    v70 = v132;
  }

  if (sub_1004DEC98())
  {
LABEL_6:
    (*(v127 + 56))(v70, 1, 1, v128);
    goto LABEL_11;
  }

  v120 = DetailsStackedChartView;
  v72 = static VerticalAlignment.firstTextBaseline.getter();
  v138 = 0;
  sub_1004E9424(v38, &v148);
  v143 = v152;
  v144 = v153;
  v145 = v154;
  v139 = v148;
  v140 = v149;
  v141 = v150;
  v142 = v151;
  v146[0] = v148;
  v146[1] = v149;
  v146[2] = v150;
  v146[3] = v151;
  v146[4] = v152;
  v146[5] = v153;
  v147 = v154;
  sub_10001B104(&v139, &v133, &qword_1008F0860);
  sub_10000EA04(v146, &qword_1008F0860);
  *(&v137[3] + 7) = v142;
  *(&v137[4] + 7) = v143;
  *(&v137[5] + 7) = v144;
  *(v137 + 7) = v139;
  *(&v137[1] + 7) = v140;
  *(&v137[6] + 7) = v145;
  *(&v137[2] + 7) = v141;
  v73 = v138;
  v74 = SleepingSampleViewModel.primaryTintColor.getter();
  v75 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  *(&v134[3] + 1) = v137[3];
  *(&v134[4] + 1) = v137[4];
  *(&v134[5] + 1) = v137[5];
  v134[6] = *(&v137[5] + 15);
  *(v134 + 1) = v137[0];
  *(&v134[1] + 1) = v137[1];
  *&v133 = v72;
  *(&v133 + 1) = 0x4000000000000000;
  LOBYTE(v134[0]) = v73;
  *(&v134[2] + 1) = v137[2];
  *&v135 = v74;
  *(&v135 + 1) = KeyPath;
  v136 = v75;
  static Font.Weight.medium.getter();
  v77 = sub_100140278(&qword_1008F0868);
  v78 = sub_1004F30D0();
  v79 = v112;
  View.fontWeight(_:)();
  v154 = v134[5];
  v155 = v134[6];
  v156 = v135;
  v157 = v136;
  v150 = v134[1];
  v151 = v134[2];
  v152 = v134[3];
  v153 = v134[4];
  v148 = v133;
  v149 = v134[0];
  sub_10000EA04(&v148, &qword_1008F0868);
  v80 = enum case for Font.Design.rounded(_:);
  v81 = type metadata accessor for Font.Design();
  v82 = *(v81 - 8);
  v83 = v118;
  (*(v82 + 104))(v118, v80, v81);
  (*(v82 + 56))(v83, 0, 1, v81);
  *&v133 = v77;
  *(&v133 + 1) = v78;
  swift_getOpaqueTypeConformance2();
  v84 = v119;
  v85 = v115;
  View.fontDesign(_:)();
  sub_10000EA04(v83, &qword_1008DC448);
  (*(v114 + 8))(v79, v85);
  LOBYTE(v80) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v86 = v84 + *(v113 + 36);
  *v86 = v80;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88;
  *(v86 + 24) = v89;
  *(v86 + 32) = v90;
  *(v86 + 40) = 0;
  v91 = (v57 + *(v120 + 48));
  v92 = *v91;
  v93 = *(v91 + 1);
  LOBYTE(v133) = v92;
  *(&v133 + 1) = v93;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  if (v138)
  {
    v94 = 0.6;
  }

  else
  {
    v94 = 1.0;
  }

  v95 = v117;
  sub_100015E80(v84, v117, &qword_1008F0838);
  v96 = v128;
  *(v95 + *(v128 + 36)) = v94;
  v97 = v95;
  v98 = v116;
  sub_100015E80(v97, v116, &qword_1008F0840);
  sub_100015E80(v98, v70, &qword_1008F0840);
  (*(v127 + 56))(v70, 0, 1, v96);
LABEL_11:
  v99 = v131;
  v100 = v126;
  sub_10001B104(v131, v126, &qword_1008F0850);
  v101 = v70;
  v102 = v129;
  sub_10001B104(v101, v129, &qword_1008F0848);
  v103 = v130;
  sub_10001B104(v100, v130, &qword_1008F0850);
  v104 = sub_100140278(&qword_1008F0858);
  v105 = v103 + v104[12];
  v107 = v123;
  v106 = v124;
  *v105 = v124;
  *(v105 + 8) = v107;
  v108 = v122 & 1;
  *(v105 + 16) = v122 & 1;
  *(v105 + 24) = v125;
  v109 = v103 + v104[16];
  *v109 = 0;
  *(v109 + 8) = 0;
  sub_10001B104(v102, v103 + v104[20], &qword_1008F0848);
  sub_10006965C(v106, v107, v108);

  sub_10000EA04(v132, &qword_1008F0848);
  sub_10000EA04(v99, &qword_1008F0850);
  sub_10000EA04(v102, &qword_1008F0848);
  sub_10004642C(v106, v107, v108);

  return sub_10000EA04(v100, &qword_1008F0850);
}

uint64_t sub_1004E9424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for Text.Scale();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleDataType();
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v88 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v80 - v8;
  v87 = type metadata accessor for LocalizationFeature();
  v10 = *(v87 - 8);
  __chkstk_darwin(v87);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v80 - v14;
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  SleepingSampleViewModel.formattedCurrentAggregateValue.getter();
  v23 = (*(v17 + 48))(v15, 1, v16);
  v92 = v9;
  if (v23 == 1)
  {
    sub_10000EA04(v15, &unk_1008EE8E0);
    v24 = v87;
    (*(v10 + 104))(v12, enum case for LocalizationFeature.workout(_:), v87);
    v25 = static Localization.workoutUILocalizedString(_:feature:)();
    v27 = v26;
    (*(v10 + 8))(v12, v24);
    v98.value._countAndFlagsBits = v25;
    v98.value._object = v27;
    sub_10000FCBC();
    v28 = Text.init<A>(_:)();
    v109 = v29 & 1;
    v108 = 1;
    v115.value._countAndFlagsBits = v28;
    v115.value._object = v30;
    LOBYTE(v116) = v29 & 1;
    *(&v116 + 1) = v96[0];
    DWORD1(v116) = *(v96 + 3);
    *(&v116 + 1) = v31;
    v117 = v103;
    v118 = v104;
    v119 = 1;
    sub_100140278(&qword_1008F0898);
    sub_10014A6B0(&qword_1008F08A0, &qword_1008F0898);
    _ConditionalContent<>.init(storage:)();
    v112 = v100;
    v113 = v101;
    v114 = v102;
    v110 = v98;
    v111 = v99;
    v117 = v100;
    v118 = v101;
    v119 = v102;
    v115 = v98;
    v116 = v99;
    v32 = v95;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v82 = Text.init(_:)();
    v83 = v33;
    v81 = v34;
    v80 = v35;
    v87 = a1;
    SleepingSampleViewModel.dataType.getter();
    v36 = v93;
    v37 = v94;
    v38 = v88;
    (*(v93 + 104))(v88, enum case for SleepingSampleDataType.wristTemperature(_:), v94);
    sub_1004EFA78(&qword_1008E0510, &type metadata accessor for SleepingSampleDataType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v39 = *(v36 + 8);
    v39(v38, v37);
    v39(v9, v37);
    v85 = v17;
    v86 = v16;
    v84 = v22;
    if (v98.value._countAndFlagsBits == v115.value._countAndFlagsBits)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v40 = Text.init(_:tableName:bundle:comment:)();
      v42 = v41;
      v44 = v43;
      v45 = v89;
      static Text.Scale.secondary.getter();
      v46 = Text.textScale(_:isEnabled:)();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      sub_10004642C(v40, v42, v44 & 1);

      (*(v90 + 8))(v45, v91);
      v53 = v50 & 1;
      sub_10006965C(v46, v48, v50 & 1);
    }

    else
    {
      v46 = 0;
      v48 = 0;
      v53 = 0;
      v52 = 0;
    }

    v54 = v81 & 1;
    LOBYTE(v96[0]) = v81 & 1;
    v56 = v82;
    v55 = v83;
    sub_10006965C(v82, v83, v81 & 1);
    v57 = v80;

    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    LOBYTE(v103.value._countAndFlagsBits) = 0;
    v98.value._countAndFlagsBits = v56;
    v98.value._object = v55;
    LOBYTE(v99) = v96[0];
    *(&v99 + 1) = v57;
    v100.value._countAndFlagsBits = v46;
    v100.value._object = v48;
    *&v101 = v53;
    *(&v101 + 1) = v52;
    LOBYTE(v102) = 0;
    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_10006965C(v56, v55, v54);

    sub_1001E53F8(v46, v48, v53, v52);
    sub_100140278(&qword_1008F0898);
    sub_10014A6B0(&qword_1008F08A0, &qword_1008F0898);
    _ConditionalContent<>.init(storage:)();
    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    sub_1001E543C(v46, v48, v53, v52);
    sub_10004642C(v56, v55, v54);

    (*(v85 + 8))(v84, v86);
    LOBYTE(v102) = v119;
    v100 = v117;
    v101 = v118;
    v98 = v115;
    v99 = v116;
    v112 = v117;
    v113 = v118;
    v114 = v119;
    v110 = v115;
    v111 = v116;
    v32 = v95;
  }

  v58 = v94;
  sub_10001B104(&v115, &v98, &qword_1008F08A8);
  v59 = v92;
  SleepingSampleViewModel.dataType.getter();
  v60 = SleepingSampleViewModel.preferredAggregateValueUnit.getter();
  v61 = SleepingSampleDataType.localizedUnitString(for:)(v60);
  object = v61.value._object;

  (*(v93 + 8))(v59, v58);
  if (v61.value._object)
  {
    v98 = v61;
    sub_10000FCBC();
    v63 = Text.init<A>(_:)();
    v65 = v64;
    v67 = v66;
    v68 = v89;
    static Text.Scale.secondary.getter();
    v69 = Text.textScale(_:isEnabled:)();
    object = v70;
    v72 = v71;
    v74 = v73;
    sub_10004642C(v63, v65, v67 & 1);
    v32 = v95;

    (*(v90 + 8))(v68, v91);
    v75 = v72 & 1;
    sub_10006965C(v69, object, v72 & 1);
  }

  else
  {
    v69 = 0;
    v75 = 0;
    v74 = 0;
  }

  v96[2] = v112;
  v96[3] = v113;
  v97 = v114;
  v96[0] = v110;
  v96[1] = v111;
  v100 = v112;
  v101 = v113;
  LOBYTE(v102) = v114;
  v98 = v110;
  v99 = v111;
  sub_10001B104(v96, &v103, &qword_1008F08B0);
  sub_1001E53F8(v69, object, v75, v74);
  sub_10000EA04(&v115, &qword_1008F08A8);
  sub_1001E543C(v69, object, v75, v74);
  v76 = v101;
  *(v32 + 32) = v100;
  *(v32 + 48) = v76;
  v77 = v102;
  v78 = v99;
  *v32 = v98;
  *(v32 + 16) = v78;
  *(v32 + 64) = v77;
  *(v32 + 72) = v69;
  *(v32 + 80) = object;
  *(v32 + 88) = v75;
  *(v32 + 96) = v74;
  sub_1001E543C(v69, object, v75, v74);
  v105 = v112;
  v106 = v113;
  v107 = v114;
  v103 = v110;
  v104 = v111;
  return sub_10000EA04(&v103, &qword_1008F08A8);
}

uint64_t sub_1004E9EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  v102 = a1;
  v100 = sub_100140278(&qword_1008F0768);
  __chkstk_darwin(v100);
  v93 = v75 - v4;
  v90 = sub_100140278(&qword_1008F0770);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v81 = (v75 - v5);
  v6 = sub_100140278(&qword_1008F0778);
  __chkstk_darwin(v6 - 8);
  v91 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = v75 - v9;
  v84 = sub_100140278(&qword_1008F0780);
  __chkstk_darwin(v84);
  v82 = v75 - v10;
  v87 = sub_100140278(&qword_1008F0788);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - v11;
  v85 = sub_100140278(&qword_1008F0790);
  __chkstk_darwin(v85);
  v88 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v75 - v14;
  v99 = sub_100140278(&qword_1008F0798);
  __chkstk_darwin(v99);
  v16 = v75 - v15;
  v17 = sub_100140278(&qword_1008F07A0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v20 = type metadata accessor for DayIndex();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v25 = DetailsStackedChartView[11];
  v26 = sub_100140278(&qword_1008F0328);
  v78 = v25;
  v77 = v26;
  State.wrappedValue.getter();
  v27 = (a2 + DetailsStackedChartView[12]);
  v28 = *v27;
  v29 = *(v27 + 1);
  v97 = v28;
  LOBYTE(v104) = v28;
  v96 = v29;
  *(&v104 + 1) = v29;
  v95 = sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  v30 = v108;
  v31 = (a2 + DetailsStackedChartView[14]);
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v104) = v32;
  *(&v104 + 1) = v33;
  sub_100140278(&qword_1008F0518);
  State.wrappedValue.getter();
  v34 = sub_100553BAC(v23, v30);
  v35 = *(v21 + 8);
  v80 = v20;
  v79 = v21 + 8;
  v35(v23, v20);
  v94 = a2;
  if (sub_1004DEC98())
  {

    *&v104 = _swiftEmptyArrayStorage;
    *(&v104 + 1) = _swiftEmptyArrayStorage;
    v105 = 0uLL;
    LOBYTE(v106) = 1;
    *(&v106 + 1) = _swiftEmptyArrayStorage;
    v107 = 0;
    sub_1004F2DDC();
    View.chartXAxis(_:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v36 = &v19[*(v17 + 36)];
    v37 = v105;
    *v36 = v104;
    *(v36 + 1) = v37;
    *(v36 + 2) = v106;
    v38 = &qword_1008F07A0;
    sub_10001B104(v19, v16, &qword_1008F07A0);
    swift_storeEnumTagMultiPayload();
    sub_1004F2E30();
    sub_10014A6B0(&qword_1008F07C8, &qword_1008F0768);
    _ConditionalContent<>.init(storage:)();
    v39 = v19;
  }

  else
  {
    v75[0] = v35;
    v75[2] = v17;
    v76 = v16;
    v40 = v102;
    v41 = SleepingSampleViewModel.chronologicalBaselineComparisons.getter();
    __chkstk_darwin(v41);
    v75[-2] = v40;
    v42 = sub_100666FD4(sub_1004F2DC0, &v75[-4], v41);
    v75[1] = v42;

    SleepingSampleViewModel.chartableMedialRange.getter();
    v44 = v43;
    v46 = v45;
    v47 = v34;
    v48 = SleepingSampleViewModel.keyDatesForTimeAxis.getter();
    LOBYTE(v104) = v97;
    *(&v104 + 1) = v96;
    State.wrappedValue.getter();
    *&v104 = v42;
    *(&v104 + 1) = v47;
    *&v105 = v44;
    *(&v105 + 1) = v46;
    LOBYTE(v106) = 0;
    *(&v106 + 1) = v48;
    v107 = v108;
    v49 = v82;
    sub_1004E317C(v82);
    static GestureMask.all.getter();
    v50 = sub_1004F2DDC();
    v51 = sub_10014A6B0(&qword_1008F07B0, &qword_1008F0780);
    v52 = v83;
    v53 = v84;
    View.gesture<A>(_:including:)();
    sub_10000EA04(v49, &qword_1008F0780);

    *&v104 = &type metadata for SleepingSampleMetricChartView;
    *(&v104 + 1) = v53;
    *&v105 = v50;
    *(&v105 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    v54 = v98;
    v55 = v87;
    View.chartXAxis(_:)();
    (*(v86 + 8))(v52, v55);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v56 = (v54 + *(v85 + 36));
    v57 = v109;
    *v56 = v108;
    v56[1] = v57;
    v56[2] = v110;
    LOBYTE(v104) = v97;
    *(&v104 + 1) = v96;
    State.wrappedValue.getter();
    if (v103 == 1)
    {
      v58 = v94;
      sub_1004DE740();
      v59 = static VerticalAlignment.center.getter();
      v60 = v81;
      *v81 = v59;
      *(v60 + 8) = 0x4000000000000000;
      *(v60 + 16) = 0;
      v61 = sub_100140278(&qword_1008F07D0);
      sub_1004EAB60(v47, v102, v58, v60 + *(v61 + 44));

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v62 = (v60 + *(sub_100140278(&qword_1008F07D8) + 36));
      v63 = v105;
      *v62 = v104;
      v62[1] = v63;
      v62[2] = v106;
      State.wrappedValue.getter();
      sub_1004E38E0();
      v65 = v64;
      (v75[0])(v23, v80);
      v66 = v90;
      v67 = (v60 + *(v90 + 36));
      *v67 = v65;
      v67[1] = 0xC049000000000000;
      v68 = v92;
      sub_100015E80(v60, v92, &qword_1008F0770);
      v69 = 0;
    }

    else
    {

      v69 = 1;
      v68 = v92;
      v66 = v90;
    }

    (*(v89 + 56))(v68, v69, 1, v66);
    v38 = &qword_1008F0790;
    v70 = v88;
    sub_10001B104(v54, v88, &qword_1008F0790);
    v71 = v91;
    sub_10001B104(v68, v91, &qword_1008F0778);
    v72 = v93;
    sub_10001B104(v70, v93, &qword_1008F0790);
    v73 = sub_100140278(&qword_1008F07B8);
    sub_10001B104(v71, v72 + *(v73 + 48), &qword_1008F0778);
    sub_10000EA04(v71, &qword_1008F0778);
    sub_10000EA04(v70, &qword_1008F0790);
    sub_10001B104(v72, v76, &qword_1008F0768);
    swift_storeEnumTagMultiPayload();
    sub_1004F2E30();
    sub_10014A6B0(&qword_1008F07C8, &qword_1008F0768);
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v72, &qword_1008F0768);
    sub_10000EA04(v68, &qword_1008F0778);
    v39 = v98;
  }

  return sub_10000EA04(v39, v38);
}

uint64_t sub_1004EAB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v7 = type metadata accessor for DayIndex();
  v115 = *(v7 - 8);
  v116 = v7;
  __chkstk_darwin(v7);
  v113 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v97 - v10;
  v11 = sub_100140278(&qword_1008F07E0);
  __chkstk_darwin(v11 - 8);
  v123 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v97 - v14;
  v124 = sub_100140278(&qword_1008F07E8);
  __chkstk_darwin(v124);
  v125 = &v97 - v15;
  v16 = type metadata accessor for SleepingSampleChartLollipopView();
  __chkstk_darwin(v16);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008F07F0);
  v120 = *(v19 - 8);
  v121 = v19;
  __chkstk_darwin(v19);
  v122 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v117 = &v97 - v22;
  __chkstk_darwin(v23);
  v118 = &v97 - v24;
  v25 = *(a1 + 16);
  v112 = a2;
  if (v25)
  {
    v103 = v25;
    v26 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
    v99 = *(v26 - 8);
    v102 = v26 - 8;
    v27 = v99;
    v111 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v28 = type metadata accessor for SleepingSampleViewModel();
    v98 = *(v28 - 8);
    v101 = v28 - 8;
    v29 = *(v98 + 16);
    v107 = v28;
    v29(v18, a2);
    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    v31 = (a3 + *(DetailsStackedChartView + 56));
    v32 = *v31;
    v33 = *(v31 + 1);
    v106 = v32;
    LOBYTE(v127) = v32;
    v105 = v33;
    v128 = v33;
    sub_100140278(&qword_1008F0518);
    State.wrappedValue.getter();
    v34 = v130;
    sub_100140278(&qword_1008F0328);
    State.wrappedValue.getter();
    v35 = v16[7];
    v100 = a1;
    sub_1004F2EE8(a1 + v111, &v18[v35], type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
    v36 = *(v27 + 56);
    v37 = 1;
    v111 = v26;
    v36(&v18[v35], 0, 1, v26);
    v110 = DetailsStackedChartView;
    v38 = (a3 + *(DetailsStackedChartView + 48));
    v39 = *v38;
    v40 = *(v38 + 1);
    v109 = v39;
    v130 = v39;
    v108 = v40;
    v131 = v40;
    sub_100140278(&qword_1008DDBB8);
    State.projectedValue.getter();
    v41 = v127;
    v42 = v128;
    v18[v16[5]] = v34;
    v43 = v129;
    v18[v16[8]] = 1;
    v44 = &v18[v16[9]];
    *v44 = v41;
    *(v44 + 1) = v42;
    v44[16] = v43;
    v45 = v16[10];
    *&v18[v45] = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
    sub_1004F2EE8(v18, v125, type metadata accessor for SleepingSampleChartLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView);
    v46 = v118;
    _ConditionalContent<>.init(storage:)();
    sub_1004F2F50(v18);
    if (sub_1004DE740())
    {
      v104 = UIFontTextStyleLargeTitle;
      if (v103 != 1)
      {
        v79 = v99;
        v103 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v102 = v100 + *(v99 + 72);
        (*(v98 + 16))(v18, v112, v107);
        LOBYTE(v127) = v106;
        v128 = v105;
        sub_100140278(&qword_1008F0518);
        State.wrappedValue.getter();
        LODWORD(v112) = v130;
        sub_100140278(&qword_1008F0328);
        v80 = v114;
        State.wrappedValue.getter();
        v81 = v113;
        DayIndex.init(integerLiteral:)();
        static DayIndex.+ infix(_:_:)();
        v82 = *(v115 + 8);
        v83 = v81;
        v84 = v116;
        v82(v83, v116);
        v82(v80, v84);
        v85 = v16[7];
        sub_1004F2EE8(v102 + v103, &v18[v85], type metadata accessor for SleepingSampleBaselineRelativeChartPoint);
        (*(v79 + 56))(&v18[v85], 0, 1, v111);
        v130 = v109;
        v131 = v108;
        sub_100140278(&qword_1008DDBB8);
        State.projectedValue.getter();
        v86 = v127;
        v87 = v128;
        v88 = v129;
        v18[v16[5]] = v112;
        v18[v16[8]] = 0;
        v89 = &v18[v16[9]];
        *v89 = v86;
        *(v89 + 1) = v87;
        v89[16] = v88;
        v90 = v16[10];
        *&v18[v90] = [objc_opt_self() preferredFontForTextStyle:v104];
        sub_1004F2EE8(v18, v125, type metadata accessor for SleepingSampleChartLollipopView);
        swift_storeEnumTagMultiPayload();
        v78 = v117;
        goto LABEL_8;
      }

LABEL_6:
      type metadata accessor for SleepingSampleViewModel();
      (*(*(v107 - 8) + 16))(v18, v112);
      LOBYTE(v127) = v106;
      v128 = v105;
      sub_100140278(&qword_1008F0518);
      State.wrappedValue.getter();
      v66 = v130;
      type metadata accessor for LoadDetailsStackedChartView(0);
      sub_100140278(&qword_1008F0328);
      v67 = v114;
      State.wrappedValue.getter();
      v68 = v113;
      DayIndex.init(integerLiteral:)();
      static DayIndex.+ infix(_:_:)();
      v69 = *(v115 + 8);
      v70 = v68;
      v71 = v116;
      v69(v70, v116);
      v69(v67, v71);
      v72 = v16[7];
      type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
      (*(*(v111 - 8) + 56))(&v18[v72], 1, 1);
      v130 = v109;
      v131 = v108;
      sub_100140278(&qword_1008DDBB8);
      State.projectedValue.getter();
      v73 = v127;
      v74 = v128;
      v18[v16[5]] = v66;
      v75 = v129;
      v18[v16[8]] = 0;
      v76 = &v18[v16[9]];
      *v76 = v73;
      *(v76 + 1) = v74;
      v76[16] = v75;
      v77 = v16[10];
      *&v18[v77] = [objc_opt_self() preferredFontForTextStyle:v104];
      sub_1004F2EE8(v18, v125, type metadata accessor for SleepingSampleChartLollipopView);
      swift_storeEnumTagMultiPayload();
      sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView);
      v78 = v117;
LABEL_8:
      _ConditionalContent<>.init(storage:)();
      sub_1004F2F50(v18);
      sub_100015E80(v78, v126, &qword_1008F07F0);
      v37 = 0;
    }
  }

  else
  {
    v47 = type metadata accessor for SleepingSampleViewModel();
    v48 = *(*(v47 - 8) + 16);
    v107 = v47;
    v48(v18, a2);
    v49 = type metadata accessor for LoadDetailsStackedChartView(0);
    v50 = (a3 + *(v49 + 56));
    v51 = *v50;
    v52 = *(v50 + 1);
    v106 = v51;
    LOBYTE(v127) = v51;
    v105 = v52;
    v128 = v52;
    sub_100140278(&qword_1008F0518);
    State.wrappedValue.getter();
    v53 = v130;
    sub_100140278(&qword_1008F0328);
    State.wrappedValue.getter();
    v54 = v16[7];
    v55 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint();
    v56 = *(*(v55 - 8) + 56);
    v37 = 1;
    v111 = v55;
    v56(&v18[v54], 1, 1);
    v110 = v49;
    v57 = (a3 + *(v49 + 48));
    v58 = *v57;
    v59 = *(v57 + 1);
    v109 = v58;
    v130 = v58;
    v108 = v59;
    v131 = v59;
    sub_100140278(&qword_1008DDBB8);
    State.projectedValue.getter();
    v60 = v127;
    v61 = v128;
    v18[v16[5]] = v53;
    v62 = v129;
    v18[v16[8]] = 1;
    v63 = &v18[v16[9]];
    *v63 = v60;
    *(v63 + 1) = v61;
    v63[16] = v62;
    v64 = v16[10];
    v65 = objc_opt_self();
    v104 = UIFontTextStyleLargeTitle;
    *&v18[v64] = [v65 preferredFontForTextStyle:?];
    sub_1004F2EE8(v18, v125, type metadata accessor for SleepingSampleChartLollipopView);
    swift_storeEnumTagMultiPayload();
    sub_1004EFA78(&qword_1008F07F8, type metadata accessor for SleepingSampleChartLollipopView);
    v46 = v118;
    _ConditionalContent<>.init(storage:)();
    sub_1004F2F50(v18);
    if (sub_1004DE740())
    {
      goto LABEL_6;
    }
  }

  v91 = v126;
  (*(v120 + 56))(v126, v37, 1, v121);
  v92 = v122;
  sub_10001B104(v46, v122, &qword_1008F07F0);
  v93 = v123;
  sub_10001B104(v91, v123, &qword_1008F07E0);
  v94 = v119;
  sub_10001B104(v92, v119, &qword_1008F07F0);
  v95 = sub_100140278(&qword_1008F0800);
  sub_10001B104(v93, v94 + *(v95 + 48), &qword_1008F07E0);
  sub_10000EA04(v91, &qword_1008F07E0);
  sub_10000EA04(v46, &qword_1008F07F0);
  sub_10000EA04(v93, &qword_1008F07E0);
  return sub_10000EA04(v92, &qword_1008F07F0);
}

void sub_1004EB9E4(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EBC8C();
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v7 = (a1 + *(DetailsStackedChartView + 52));
  v9 = *v7;
  v8 = v7[1];
  v23 = *v7;
  v24 = v8;
  sub_100140278(&qword_1008F0550);
  State.wrappedValue.getter();
  v10 = *(v22 + 16);

  if (!v10)
  {
    v11 = a1 + *(DetailsStackedChartView + 68);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      v13 = v12;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      v21 = v2;
      v15 = v14;
      os_log(_:dso:log:_:_:)();

      v2 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v12, 0);
      (*(v3 + 8))(v5, v2);
      v13 = v23;
    }

    v16 = sub_1001D3C20();

    v23 = v9;
    v24 = v8;
    v22 = v16;
    State.wrappedValue.setter();
  }

  v17 = a1 + *(DetailsStackedChartView + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v18, 0);
    (*(v3 + 8))(v5, v2);
    v19 = v23;
  }

  sub_1001D9610();
}

uint64_t sub_1004EBC8C()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v7 = v0 + DetailsStackedChartView[17];
  v8 = *v7;
  v9 = *(v7 + 8);
  v25 = v3;
  v26 = v2;
  if (v9 == 1)
  {
    v10 = v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v8, 0);
    (*(v3 + 8))(v5, v2);
    v10 = v28;
  }

  swift_getKeyPath();
  *&v28 = v10;
  sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *&v10[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyItemsInDayRange];

  __chkstk_darwin(v13);
  *(&v24 - 2) = v1;
  v14 = sub_10066682C(sub_1004F2958, (&v24 - 4), v12);

  v15 = (v1 + DetailsStackedChartView[7]);
  v17 = *v15;
  v16 = v15[1];
  *&v28 = v17;
  *(&v28 + 1) = v16;
  v27 = v14;
  sub_100140278(&qword_1008F0558);
  State.wrappedValue.setter();
  if (v9)
  {
    v18 = v8;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v8, 0);
    (*(v25 + 8))(v5, v26);
    v18 = v28;
  }

  swift_getKeyPath();
  *&v28 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *&v18[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummaries];

  __chkstk_darwin(v21);
  *(&v24 - 2) = v1;
  v22 = sub_10042C650(sub_1004F2974, (&v24 - 4), v20);

  v28 = *(v1 + DetailsStackedChartView[8]);
  v27 = v22;
  sub_100140278(&qword_1008F0560);
  return State.wrappedValue.setter();
}

void sub_1004EC094(uint64_t a1)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for GregorianDayRange();
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 68);
  v16 = *v15;
  v24 = *(v15 + 8);
  if (v24 == 1)
  {
    v17 = v16;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    v23 = DataType;
    v19 = v11;
    v20 = v18;
    os_log(_:dso:log:_:_:)();

    v11 = v19;
    DataType = v23;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v16, 0);
    (*(v12 + 8))(v14, v19);
    v17 = v26;
  }

  sub_10034C69C(0, v10);
  sub_1001D4BC0(v10);

  (*(v3 + 104))(v7, enum case for TrainingLoadDataType.workout(_:), DataType);
  (*(v3 + 16))(v25, v7, DataType);
  sub_100140278(&qword_1008F0320);
  Binding.wrappedValue.setter();
  (*(v3 + 8))(v7, DataType);
  if (v24)
  {
    v21 = v16;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v16, 0);
    (*(v12 + 8))(v14, v11);
    v21 = v26;
  }

  sub_1001D9ED4();
}

uint64_t sub_1004EC454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DayIndex();
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    [*(a3 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 60)) selectionChanged];
  }

  return sub_1004EBC8C();
}

uint64_t sub_1004EC504()
{
  type metadata accessor for LoadDetailsStackedChartView(0);

  sub_100140278(&qword_1008F0550);
  return State.wrappedValue.setter();
}

void sub_1004EC578(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for GregorianDayRange();
  __chkstk_darwin(v5 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v14 = (a3 + *(DetailsStackedChartView + 48));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v22) = v15;
  v23 = v16;
  v21[15] = 0;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.setter();
  v17 = a3 + *(DetailsStackedChartView + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v18, 0);
    (*(v9 + 8))(v11, v8);
    v19 = v22;
  }

  sub_10034C69C(v12, v7);
  sub_1001D4BC0(v7);
}

void sub_1004EC78C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v38 = a3;
  v5 = type metadata accessor for DayIndex();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v32 - v8;
  v10 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for GregorianDayRange();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if ((*a2 & 1) == 0)
    {
      v33 = v19;
      DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
      v22 = v38 + *(DetailsStackedChartView + 68);
      v23 = *v22;
      if (*(v22 + 8) == 1)
      {
        v24 = v23;
      }

      else
      {

        v32[1] = static os_log_type_t.fault.getter();
        v26 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v23, 0);
        (*(v18 + 8))(v21, v33);
        v24 = v39;
      }

      swift_getKeyPath();
      v39 = v24;
      sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
      swift_beginAccess();
      (*(v14 + 16))(v16, &v24[v27], v13);

      GregorianDayRange.dayIndexRange.getter();
      (*(v14 + 8))(v16, v13);
      v28 = *(v10 + 36);
      v30 = v36;
      v29 = v37;
      v31 = *(v36 + 16);
      v31(v9, &v12[v28], v37);
      sub_10000EA04(v12, &qword_1008E04A8);
      v31(v35, v9, v29);
      sub_100140278(&qword_1008F0328);
      State.wrappedValue.setter();
      (*(v30 + 8))(v9, v29);
    }
  }

  else if (*a2)
  {
    v25 = *(v38 + *(type metadata accessor for LoadDetailsStackedChartView(0) + 60));

    [v25 selectionChanged];
  }
}

uint64_t sub_1004ECC48(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008F0500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.confirmationAction.getter();
  v9 = a1;
  sub_100140278(&qword_1008F0520);
  sub_1004EFDC4();
  ToolbarItem<>.init(placement:content:)();
  sub_10014A6B0(&qword_1008F0508, &qword_1008F0500);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004ECE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v5 = *(DetailsStackedChartView - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(DetailsStackedChartView - 8);
  sub_1004F2EE8(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadDetailsStackedChartView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1004F4200(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LoadDetailsStackedChartView);
  Button.init(action:label:)();
  v9 = (a2 + *(sub_100140278(&qword_1008F0538) + 36));
  v10 = *(sub_100140278(&qword_1008E9848) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v11 = type metadata accessor for SymbolRenderingMode();
  (*(*(v11 - 8) + 56))(v9 + v10, 0, 1, v11);
  *v9 = swift_getKeyPath();
  v12 = [objc_opt_self() secondaryLabelColor];
  v13 = Color.init(_:)();
  result = sub_100140278(&qword_1008F0520);
  *(a2 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_1004ED024()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v5 + 104))(&v13 - v10, enum case for TrainingLoadDataType.workout(_:), DataType, v9);
  (*(v5 + 16))(v7, v11, DataType);
  sub_100140278(&qword_1008F0320);
  Binding.wrappedValue.setter();
  (*(v5 + 8))(v11, DataType);
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100487CFC(v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004ED228(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v11 = (a2 + *(DetailsStackedChartView + 48));
  v12 = *v11;
  v13 = *(v11 + 1);
  v20[16] = v12;
  v21 = v13;
  sub_100140278(&qword_1008DDBB8);
  result = State.wrappedValue.getter();
  if (v20[15] == 1)
  {
    sub_100487D24(v9);
    (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
    v15 = static LayoutDirection.== infix(_:_:)();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
    if (v15)
    {
      DragGesture.Value.location.getter();
    }

    else
    {
      v18 = *(a2 + *(DetailsStackedChartView + 36));
      DragGesture.Value.location.getter();
      v17 = v18 - v19;
    }

    return sub_1004ED404(v17);
  }

  return result;
}

uint64_t sub_1004ED404(double a1)
{
  v3 = type metadata accessor for DayIndex();
  v122 = *(v3 - 8);
  __chkstk_darwin(v3);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v97 - v6;
  __chkstk_darwin(v7);
  v98 = &v97 - v8;
  __chkstk_darwin(v9);
  v113 = &v97 - v10;
  __chkstk_darwin(v11);
  v104 = &v97 - v12;
  __chkstk_darwin(v13);
  v120 = &v97 - v14;
  __chkstk_darwin(v15);
  v121 = &v97 - v16;
  v17 = sub_100140278(&qword_1008E0490);
  __chkstk_darwin(v17 - 8);
  v110 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v97 - v20;
  v112 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v112);
  v100 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  v106 = type metadata accessor for GregorianDayRange();
  v123 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v97 - v28;
  v30 = type metadata accessor for EnvironmentValues();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v35 = *(v1 + *(DetailsStackedChartView + 36));
  v36 = v35 + -9.0;
  if (v35 + -9.0 >= a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = v35 + -9.0;
  }

  v38 = fmin(v36, 0.0);
  if (a1 < 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  v101 = DetailsStackedChartView;
  v40 = *(DetailsStackedChartView + 68);
  v105 = v1;
  v41 = v1 + v40;
  v42 = *v41;
  v118 = *(v41 + 8);
  v107 = v33;
  v111 = v42;
  v109 = v30;
  v108 = v31;
  if (v118 == 1)
  {
    v44 = v42;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v42, 0);
    (*(v31 + 8))(v33, v30);
    v44 = v127;
  }

  swift_getKeyPath();
  v127 = v44;
  v117 = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v46 = v123;
  v47 = *(v123 + 16);
  v48 = v106;
  v116 = v123 + 16;
  v115 = v47;
  v47(v29, &v44[v45], v106);

  GregorianDayRange.dayIndexRange.getter();
  v49 = *(v46 + 8);
  v123 = v46 + 8;
  v114 = v49;
  v49(v29, v48);
  v50 = v122;
  v119 = *(v122 + 16);
  v119(v21, v25, v3);
  v51 = *(v50 + 56);
  v51(v21, 0, 1, v3);
  v52 = v110;
  v51(v110, 1, 1, v3);
  v53 = sub_1003EE600(v21, v52);
  sub_10000EA04(v52, &qword_1008E0490);
  sub_10000EA04(v21, &qword_1008E0490);
  result = sub_10000EA04(v25, &qword_1008E04A8);
  if (__OFSUB__(v53, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v55 = (v36 - v39) * (v53 - 1) / v36;
  if (COERCE__INT64(fabs(v55)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v56 = v111;
  if (v118)
  {
    v57 = v111;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v59 = v107;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v56, 0);
    (*(v108 + 8))(v59, v109);
    v57 = v126;
  }

  swift_getKeyPath();
  v126 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v115(v29, &v57[v60], v48);

  GregorianDayRange.dayIndexRange.getter();
  v114(v29, v48);
  v61 = v120;
  v119(v120, &v25[*(v112 + 36)], v3);
  sub_10000EA04(v25, &qword_1008E04A8);
  static DayIndex.- infix(_:_:)();
  v62 = (v122 + 8);
  v110 = *(v122 + 8);
  (v110)(v61, v3);
  if (v118)
  {
    v63 = v56;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v64 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v65 = v107;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v56, 0);
    (*(v108 + 8))(v65, v109);
    v63 = v125;
  }

  swift_getKeyPath();
  v125 = v63;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v66 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v115(v29, &v63[v66], v48);

  GregorianDayRange.dayIndexRange.getter();
  v114(v29, v48);
  v67 = v120;
  v119(v120, v25, v3);
  sub_10000EA04(v25, &qword_1008E04A8);
  v68 = v98;
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v69 = v68;
  v70 = v3;
  v71 = v3;
  v72 = v110;
  (v110)(v69, v70);
  v73 = v62;
  v74 = v71;
  v98 = v73;
  v72(v67, v71);
  if (v118)
  {
    v75 = v111;
  }

  else
  {
    v76 = v111;

    static os_log_type_t.fault.getter();
    v77 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v78 = v107;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v76, 0);
    (*(v108 + 8))(v78, v109);
    v75 = v124;
  }

  v79 = v121;
  v80 = v103;
  v81 = v102;
  swift_getKeyPath();
  v124 = v75;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v82 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
  swift_beginAccess();
  v83 = &v75[v82];
  v84 = v99;
  v115(v99, v83, v48);

  v85 = v100;
  GregorianDayRange.dayIndexRange.getter();
  v114(v84, v48);
  v86 = v119;
  v119(v81, (v85 + *(v112 + 36)), v74);
  sub_10000EA04(v85, &qword_1008E04A8);
  sub_1004EFA78(&qword_1008E04C0, &type metadata accessor for DayIndex);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v87 = v110;
    (v110)(v81, v74);
    v86(v80, v79, v74);
    v88 = v86;
    v89 = v122;
  }

  else
  {
    v90 = v81;
    v88 = v86;
    v89 = v122;
    (*(v122 + 32))(v80, v90, v74);
    v87 = v110;
  }

  v91 = v113;
  v92 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v93 = (v92 & 1) == 0;
  if (v92)
  {
    v94 = v91;
  }

  else
  {
    v94 = v80;
  }

  if (v93)
  {
    v95 = v91;
  }

  else
  {
    v95 = v80;
  }

  v87(v94, v74);
  v96 = v104;
  (*(v89 + 32))(v104, v95, v74);
  v88(v120, v96, v74);
  sub_100140278(&qword_1008F0328);
  State.wrappedValue.setter();
  v87(v96, v74);
  return (v87)(v121, v74);
}

uint64_t sub_1004EE268(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DayIndex();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v16 = DetailsStackedChartView[11];
  sub_100140278(&qword_1008F0328);
  v28 = v16;
  State.wrappedValue.getter();
  sub_100487D24(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
  LOBYTE(v16) = static LayoutDirection.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v17(v9, v3);
  if (v16)
  {
    SpatialTapGesture.Value.location.getter();
  }

  else
  {
    v19 = *(a2 + DetailsStackedChartView[9]);
    SpatialTapGesture.Value.location.getter();
    v18 = v19 - v20;
  }

  sub_1004ED404(v18);
  v21 = (a2 + DetailsStackedChartView[12]);
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v34) = *v21;
  v35 = v23;
  sub_100140278(&qword_1008DDBB8);
  State.wrappedValue.getter();
  v24 = v32;
  if (v33)
  {
    v25 = v29;
    State.wrappedValue.getter();
    sub_1004EFA78(&qword_1008E04B8, &type metadata accessor for DayIndex);
    dispatch thunk of Strideable.distance(to:)();
    v26 = *(v31 + 8);
    v26(v25, v24);
    if (v34)
    {
      return (v26)(v14, v24);
    }

    v34 = v22;
    v35 = v23;
    v33 = 0;

    State.wrappedValue.setter();
    v26(v14, v24);
  }

  else
  {
    LOBYTE(v34) = v22;
    v35 = v23;
    v33 = 1;

    State.wrappedValue.setter();
    (*(v31 + 8))(v14, v24);
  }
}

uint64_t sub_1004EE62C()
{
  type metadata accessor for LoadDetailsStackedChartView(0);
  sub_100140278(&qword_1008DDBB8);
  return State.wrappedValue.setter();
}

void sub_1004EE6A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for Calendar();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v52 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for GregorianDayRange();
  v45 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DayIndex();
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  sub_100007C5C(a1, v54);
  sub_100140278(&unk_1008E4E60);
  sub_1000059F8(0, &qword_1008ED7C0);
  if (swift_dynamicCast())
  {
    v40 = v7;
    v41 = a3;
    v22 = v55;
    v23 = [v55 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    sub_100140278(&qword_1008F0328);
    State.wrappedValue.getter();
    v25 = a2 + *(DetailsStackedChartView + 68);
    v26 = *v25;
    LODWORD(v25) = *(v25 + 8);
    v42 = v3;
    if (v25 == 1)
    {
      v27 = v26;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v26, 0);
      (*(v43 + 8))(v12, v44);
      v27 = v54[0];
    }

    swift_getKeyPath();
    v54[0] = v27;
    sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v29 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v30 = v45;
    v31 = &v27[v29];
    v32 = v50;
    v33 = v51;
    (*(v45 + 16))(v50, v31, v51);

    v34 = v52;
    GregorianDayRange.gregorianCalendar.getter();
    (*(v30 + 8))(v32, v33);
    DayIndex.startDate(in:)();
    (*(v53 + 8))(v34, v40);
    (*(v48 + 8))(v15, v49);
    v35 = Date.isSameDay(as:)();
    v36 = *(v46 + 8);
    v37 = v18;
    v38 = v47;
    v36(v37, v47);
    v36(v21, v38);
    a3 = v41;
    if ((v35 & 1) == 0)
    {

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  *a3 = v22;
}

uint64_t sub_1004EEC54(id *a1, uint64_t a2)
{
  v64 = type metadata accessor for Calendar();
  v68 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for GregorianDayRange();
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayIndex();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v61 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v50 - v17;
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = v50 - v21;
  v23 = [*a1 _startDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v14 + 32);
    v52 = v22;
    v25(v22, v18, v13);
    DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
    sub_100140278(&qword_1008F0328);
    State.wrappedValue.getter();
    v27 = a2 + *(DetailsStackedChartView + 68);
    v28 = *v27;
    v51 = *(v27 + 8);
    v54 = v13;
    v55 = v2;
    v53 = v14;
    if (v51 == 1)
    {
      v29 = v28;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v32 = v58;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v28, 0);
      (*(v59 + 8))(v32, v60);
      v29 = v67;
    }

    swift_getKeyPath();
    v67 = v29;
    v50[1] = sub_1004EFA78(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v34 = v65;
    v35 = v63;
    v50[0] = *(v65 + 16);
    (v50[0])(v7, &v29[v33], v63);

    v36 = v62;
    GregorianDayRange.gregorianCalendar.getter();
    v37 = *(v34 + 8);
    v65 = v34 + 8;
    v37(v7, v35);
    v38 = v61;
    DayIndex.startDate(in:)();
    v39 = *(v68 + 8);
    v68 += 8;
    v39(v36, v64);
    (*(v56 + 8))(v12, v57);
    if (v51)
    {
      v40 = v28;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v42 = v58;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v28, 0);
      (*(v59 + 8))(v42, v60);
      v40 = v66;
    }

    swift_getKeyPath();
    v66 = v40;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__dayRange;
    swift_beginAccess();
    v44 = v63;
    (v50[0])(v7, &v40[v43], v63);

    v45 = v62;
    GregorianDayRange.gregorianCalendar.getter();
    v37(v7, v44);
    v46 = v52;
    v30 = Calendar.isDate(_:inSameDayAs:)();
    v39(v45, v64);
    v47 = v54;
    v48 = *(v53 + 8);
    v48(v38, v54);
    v48(v46, v47);
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_1004EF374()
{
  sub_100140278(&qword_1008F0458);
  sub_100141EEC(&qword_1008F0460);
  sub_100141EEC(&qword_1008F0468);
  sub_100141EEC(&qword_1008F0470);
  sub_100141EEC(&qword_1008F0478);
  sub_100141EEC(&qword_1008F0480);
  sub_100141EEC(&qword_1008F0488);
  sub_100141EEC(&qword_1008F0490);
  sub_100141EEC(&qword_1008F03D8);
  sub_100141EEC(&qword_1008F0498);
  sub_100141EEC(&qword_1008F04A0);
  sub_100141EEC(&qword_1008F04A8);
  type metadata accessor for DayIndex();
  sub_1004EF710();
  sub_1004EFA78(&qword_1008E04B0, &type metadata accessor for DayIndex);
  swift_getOpaqueTypeConformance2();
  sub_1004EF854();
  swift_getOpaqueTypeConformance2();
  sub_1004EF9C4();
  swift_getOpaqueTypeConformance2();
  sub_10034D2BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100141EEC(&qword_1008F0500);
  sub_10014A6B0(&qword_1008F0508, &qword_1008F0500);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

unint64_t sub_1004EF710()
{
  result = qword_1008F04B0;
  if (!qword_1008F04B0)
  {
    sub_100141EEC(&qword_1008F04A8);
    sub_1004EF79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04B0);
  }

  return result;
}

unint64_t sub_1004EF79C()
{
  result = qword_1008F04B8;
  if (!qword_1008F04B8)
  {
    sub_100141EEC(&qword_1008F04C0);
    sub_10014A6B0(&qword_1008F04C8, &qword_1008F04D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04B8);
  }

  return result;
}

unint64_t sub_1004EF854()
{
  result = qword_1008F04D8;
  if (!qword_1008F04D8)
  {
    sub_100141EEC(&qword_1008F04A0);
    sub_1004EF8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04D8);
  }

  return result;
}

unint64_t sub_1004EF8D8()
{
  result = qword_1008F04E0;
  if (!qword_1008F04E0)
  {
    sub_100141EEC(&qword_1008F04E8);
    sub_1004EF95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04E0);
  }

  return result;
}

unint64_t sub_1004EF95C()
{
  result = qword_1008F04F0;
  if (!qword_1008F04F0)
  {
    sub_1000059F8(255, &unk_1008DEED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04F0);
  }

  return result;
}

unint64_t sub_1004EF9C4()
{
  result = qword_1008F04F8;
  if (!qword_1008F04F8)
  {
    sub_100141EEC(&qword_1008F03D8);
    sub_1004EFA78(&qword_1008E0508, &type metadata accessor for SleepingSampleDataType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F04F8);
  }

  return result;
}

uint64_t sub_1004EFA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EFB18(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1004EFB94(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004EC454(a1, a2, v6);
}

uint64_t sub_1004EFC70()
{
  type metadata accessor for LoadDetailsStackedChartView(0);

  return sub_1004EC504();
}

uint64_t sub_1004EFD20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1004EFDC4()
{
  result = qword_1008F0528;
  if (!qword_1008F0528)
  {
    sub_100141EEC(&qword_1008F0520);
    sub_1004EFE7C();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0528);
  }

  return result;
}

unint64_t sub_1004EFE7C()
{
  result = qword_1008F0530;
  if (!qword_1008F0530)
  {
    sub_100141EEC(&qword_1008F0538);
    sub_10014A6B0(&qword_1008F0540, &qword_1008F0548);
    sub_10014A6B0(&qword_1008E9860, &qword_1008E9848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0530);
  }

  return result;
}

uint64_t sub_1004EFF8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AccessibilityTraits();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100140278(&qword_1008F0A68);
  __chkstk_darwin(v57);
  v9 = &v56 - v8;
  v59 = sub_100140278(&qword_1008F0A70);
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v56 - v10;
  v60 = sub_100140278(&qword_1008F0A78);
  __chkstk_darwin(v60);
  v13 = &v56 - v12;
  v65 = sub_100140278(&qword_1008F0A80);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = &v56 - v14;
  v69 = sub_100140278(&qword_1008F0A88);
  __chkstk_darwin(v69);
  v16 = &v56 - v15;
  v17 = sub_100140278(&qword_1008F0AE8);
  v18 = *(v17 - 8);
  v74 = v17;
  v75 = v18;
  __chkstk_darwin(v17);
  v70 = &v56 - v19;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = sub_100140278(&qword_1008F0A90);
  sub_1004F098C(&v9[*(v20 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68);
  v22 = v57;
  View.accessibilityElement(children:)();
  (*(v62 + 8))(v7, v63);
  sub_10000EA04(v9, &qword_1008F0A68);
  v23 = v64;
  static AccessibilityTraits.isButton.getter();
  *&v77 = v22;
  *(&v77 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v59;
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v23, v68);
  (*(v61 + 8))(v11, v24);
  v13[*(sub_100140278(&qword_1008F0AA0) + 36)] = 0;
  v25 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v27 = v60;
  v28 = &v13[*(v60 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  static Font.Weight.semibold.getter();
  v29 = sub_1004F39AC();
  v30 = v58;
  v31 = v27;
  View.fontWeight(_:)();
  sub_10000EA04(v13, &qword_1008F0A78);
  v32 = v71;
  v33 = v72;
  v34 = v73;
  (*(v72 + 104))(v71, enum case for DynamicTypeSize.large(_:), v73);
  *&v77 = v31;
  *(&v77 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v65;
  View.dynamicTypeSize(_:)();
  (*(v33 + 8))(v32, v34);
  (*(v66 + 8))(v30, v35);
  v36 = [objc_opt_self() secondaryLabelColor];
  v37 = Color.init(_:)();
  v38 = swift_getKeyPath();
  v39 = &v16[*(sub_100140278(&qword_1008F0AC8) + 36)];
  *v39 = v38;
  v39[1] = v37;
  LOBYTE(v37) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v40 = v69;
  v41 = &v16[*(v69 + 36)];
  *v41 = v37;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = swift_allocObject();
  v47 = v2[1];
  v46[1] = *v2;
  v46[2] = v47;
  v46[3] = v2[2];
  *(v46 + 57) = *(v2 + 41);
  sub_1004F2C6C(v2, &v77);
  v48 = sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &unk_1006F5EC0, sub_1004F3C54);
  v49 = v70;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v16, &qword_1008F0A88);
  v77 = *v2;
  v78 = *(v2 + 16);
  sub_100140278(&qword_1008DDE80);
  Binding.projectedValue.getter();
  v50 = swift_allocObject();
  v51 = v2[1];
  v50[1] = *v2;
  v50[2] = v51;
  v50[3] = v2[2];
  *(v50 + 57) = *(v2 + 41);
  v52 = swift_allocObject();
  v53 = v2[1];
  v52[1] = *v2;
  v52[2] = v53;
  v52[3] = v2[2];
  *(v52 + 57) = *(v2 + 41);
  sub_1004F2C6C(v2, &v77);
  sub_1004F2C6C(v2, &v77);
  type metadata accessor for OvernightMetricsReorderingView(0);
  *&v77 = v40;
  *(&v77 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  sub_1004EFA78(&qword_1008F0AF0, type metadata accessor for OvernightMetricsReorderingView);
  v54 = v74;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v75 + 8))(v49, v54);
}

uint64_t sub_1004F098C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E76A0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17[0] = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  sub_10001B104(v7, v4, &qword_1008E76A0);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = sub_100140278(&qword_1008F0AE0);
  sub_10001B104(v4, a1 + *(v15 + 64), &qword_1008E76A0);
  sub_10006965C(v8, v10, v12 & 1);

  sub_10000EA04(v7, &qword_1008E76A0);
  sub_10000EA04(v4, &qword_1008E76A0);
  sub_10004642C(v8, v10, v12 & 1);
}

uint64_t sub_1004F0BA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  v10 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  sub_100265000(&v10, v5);

  sub_100140278(&qword_1008DDE80);
  Binding.wrappedValue.getter();
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  sub_1004F3DC4(&v10);
}

uint64_t sub_1004F0C58()
{
  sub_100140278(&qword_1008F0AF8);
  Binding.wrappedValue.getter();
  sub_1002E1CA4(v1);
}

__n128 sub_1004F0CC0@<Q0>(uint64_t *a1@<X8>)
{
  sub_100140278(&qword_1008F0AF8);
  Binding.projectedValue.getter();
  *a1 = swift_getKeyPath();
  sub_100140278(&qword_1008EE800);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for OvernightMetricsReorderingView(0) + 20);
  *v2 = v4;
  result = v5;
  *(v2 + 8) = v5;
  return result;
}

uint64_t sub_1004F0DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v51 = a2;
  v3 = type metadata accessor for OvernightMetricsReorderingView(0);
  v48 = *(v3 - 8);
  v47 = *(v48 + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E62D8);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  __chkstk_darwin(v5);
  v46 = &v41 - v7;
  v42 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008F0BA8);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = sub_100140278(&qword_1008F0BA0);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v52 = &v41 - v20;
  v53 = a1;
  sub_100140278(&qword_1008F0BD8);
  sub_1004F4094();
  List<>.init(content:)();
  KeyPath = swift_getKeyPath();
  v22 = v15;
  v23 = &v17[*(v15 + 36)];
  v24 = *(sub_100140278(&qword_1008F0BD0) + 28);
  (*(v12 + 104))(v14, enum case for EditMode.active(_:), v11);
  static Binding.constant(_:)();
  (*(v12 + 8))(v14, v11);
  v25 = sub_100140278(&qword_1008F0C08);
  (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
  *v23 = KeyPath;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(v12) = v29;
  v30 = v42;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v42);
  v31 = sub_1004F3FA8();
  View.navigationBarTitle(_:displayMode:)();
  sub_10004642C(v26, v28, v12 & 1);

  (*(v8 + 8))(v10, v30);
  sub_10000EA04(v17, &qword_1008F0BA8);
  LocalizedStringKey.init(stringLiteral:)();
  v32 = v45;
  sub_1004F2EE8(v41, v45, type metadata accessor for OvernightMetricsReorderingView);
  v33 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v34 = swift_allocObject();
  sub_1004F4200(v32, v34 + v33, type metadata accessor for OvernightMetricsReorderingView);
  v35 = v46;
  Button<>.init(_:action:)();
  v54 = v22;
  v55 = v31;
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8);
  v36 = v52;
  v37 = v35;
  v38 = v43;
  v39 = v49;
  View.navigationBarItems<A>(trailing:)();
  (*(v50 + 8))(v37, v39);
  return (*(v44 + 8))(v36, v38);
}

uint64_t sub_1004F1464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OvernightMetricsReorderingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = a1 + *(v7 + 28);
  v15 = *v8;
  v16 = *(v8 + 8);
  sub_100140278(&qword_1008F0AF8);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_100140278(&qword_1008F03D8);
  sub_100140278(&qword_1008F0C10);
  sub_10014A6B0(&qword_1008F0C18, &qword_1008F03D8);
  v15 = &type metadata for Text;
  *&v16 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  sub_1004F2EE8(a1, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OvernightMetricsReorderingView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1004F4200(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for OvernightMetricsReorderingView);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1004F43C8;
  *(v11 + 24) = v10;
  result = sub_100140278(&qword_1008F0BD8);
  v13 = (a2 + *(result + 36));
  *v13 = sub_1004F4448;
  v13[1] = v11;
  return result;
}

uint64_t sub_1004F1704()
{
  SleepingSampleDataType.localizedName.getter();
  sub_10000FCBC();
  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  static Font.headline.getter();
  v5 = Text.font(_:)();
  v7 = v6;
  v9 = v8;

  sub_10004642C(v0, v2, v4 & 1);

  static VerticalEdge.Set.all.getter();
  View.listRowSeparator(_:edges:)();
  sub_10004642C(v5, v7, v9 & 1);
}

uint64_t sub_1004F181C()
{
  type metadata accessor for OvernightMetricsReorderingView(0);

  sub_100140278(&qword_1008F0AF8);
  Binding.wrappedValue.getter();
  sub_100140278(&qword_1008F03D8);
  sub_10014A6B0(&qword_1008F0C20, &qword_1008F03D8);
  MutableCollection.move(fromOffsets:toOffset:)();
  Binding.wrappedValue.setter();
}

uint64_t sub_1004F1960(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v7, &qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004F1BDC()
{
  sub_100140278(&qword_1008F0B98);
  sub_100141EEC(&qword_1008F0BA0);
  sub_100141EEC(&qword_1008E62D8);
  sub_100141EEC(&qword_1008F0BA8);
  sub_1004F3FA8();
  swift_getOpaqueTypeConformance2();
  sub_10014A6B0(&qword_1008E62E0, &qword_1008E62D8);
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t sub_1004F1D2C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v64 = a1;
  v65 = a2;
  v67 = a4;
  v4 = type metadata accessor for DynamicTypeSize();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityTraits();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008F0A68);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v50 = sub_100140278(&qword_1008F0A70);
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v49 - v14;
  v51 = sub_100140278(&qword_1008F0A78);
  __chkstk_darwin(v51);
  v17 = &v49 - v16;
  v18 = sub_100140278(&qword_1008F0A80);
  v19 = *(v18 - 8);
  v56 = v18;
  v57 = v19;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v60 = sub_100140278(&qword_1008F0A88);
  __chkstk_darwin(v60);
  v23 = &v49 - v22;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v24 = sub_100140278(&qword_1008F0A90);
  sub_1004F2474(&v13[*(v24 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v25 = sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68);
  View.accessibilityElement(children:)();
  (*(v54 + 8))(v10, v55);
  sub_10000EA04(v13, &qword_1008F0A68);
  v26 = v52;
  static AccessibilityTraits.isLink.getter();
  v68 = v11;
  v69 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v50;
  View.accessibilityAddTraits(_:)();
  (*(v58 + 8))(v26, v59);
  (*(v53 + 8))(v15, v27);
  v17[*(sub_100140278(&qword_1008F0AA0) + 36)] = 0;
  v28 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v30 = v51;
  v31 = &v17[*(v51 + 36)];
  *v31 = KeyPath;
  v31[1] = v28;
  static Font.Weight.semibold.getter();
  v32 = sub_1004F39AC();
  View.fontWeight(_:)();
  sub_10000EA04(v17, &qword_1008F0A78);
  v33 = v61;
  v34 = v62;
  v35 = v63;
  (*(v62 + 104))(v61, enum case for DynamicTypeSize.large(_:), v63);
  v68 = v30;
  v69 = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v56;
  View.dynamicTypeSize(_:)();
  (*(v34 + 8))(v33, v35);
  (*(v57 + 8))(v21, v36);
  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = Color.init(_:)();
  v39 = swift_getKeyPath();
  v40 = &v23[*(sub_100140278(&qword_1008F0AC8) + 36)];
  *v40 = v39;
  v40[1] = v38;
  LOBYTE(v38) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v41 = &v23[*(v60 + 36)];
  *v41 = v38;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = swift_allocObject();
  v47 = v65;
  *(v46 + 16) = v64;
  *(v46 + 24) = v47;
  LOBYTE(v38) = v66 & 1;
  *(v46 + 32) = v66 & 1;

  sub_1000A72F0(v47, v38);
  sub_1004F2AB0(&qword_1008F0AD0, &qword_1008F0A88, &unk_1006F5EC0, sub_1004F3C54);
  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v23, &qword_1008F0A88);
}

uint64_t sub_1004F2474@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E76A0);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v17 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17[0] = Image.init(systemName:)();
  View.accessibilityHidden(_:)();

  sub_10001B104(v7, v4, &qword_1008E76A0);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = sub_100140278(&qword_1008F0AE0);
  sub_10001B104(v4, a1 + *(v15 + 64), &qword_1008E76A0);
  sub_10006965C(v8, v10, v12 & 1);

  sub_10000EA04(v7, &qword_1008E76A0);
  sub_10000EA04(v4, &qword_1008E76A0);
  sub_10004642C(v8, v10, v12 & 1);
}

void sub_1004F2684(uint64_t a1, void *a2, char a3)
{
  v21 = a2;
  v22 = type metadata accessor for OvernightMetricsViewModel();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3)
    {
      v16 = v21;
    }

    else
    {
      v20 = v5;
      v17 = v21;

      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v19 = v17;
      v5 = v20;
      sub_1000A73A4(v19, 0);
      (*(v9 + 8))(v11, v8);
      v16 = v23;
    }

    sub_1001D427C();

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v5 + 8))(v7, v22);
    sub_10043DB74(v15);
    (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_1004F299C()
{
  result = qword_1008F05F8;
  if (!qword_1008F05F8)
  {
    sub_100141EEC(&qword_1008F05F0);
    sub_1004F2AB0(&qword_1008F0600, &qword_1008F0608, &unk_1006F5810, sub_1004F2A80);
    sub_10014A6B0(&qword_1008F0640, &qword_1008F0648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F05F8);
  }

  return result;
}

uint64_t sub_1004F2AB0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004F2B34()
{
  result = qword_1008F0620;
  if (!qword_1008F0620)
  {
    sub_100141EEC(&qword_1008F0628);
    sub_10014A6B0(&qword_1008F0630, &qword_1008F0638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0620);
  }

  return result;
}

uint64_t sub_1004F2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004E81F0(a1, v6, a2);
}

unint64_t sub_1004F2D08()
{
  result = qword_1008F06F8;
  if (!qword_1008F06F8)
  {
    sub_100141EEC(&qword_1008F06F0);
    sub_100336064();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F06F8);
  }

  return result;
}

unint64_t sub_1004F2DDC()
{
  result = qword_1008F07A8;
  if (!qword_1008F07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F07A8);
  }

  return result;
}

unint64_t sub_1004F2E30()
{
  result = qword_1008F07C0;
  if (!qword_1008F07C0)
  {
    sub_100141EEC(&qword_1008F07A0);
    sub_1004F2DDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F07C0);
  }

  return result;
}

uint64_t sub_1004F2EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F2F50(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleChartLollipopView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F2FDC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LoadDetailsStackedChartView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1004F3060()
{
  type metadata accessor for LoadDetailsStackedChartView(0);

  return sub_1004EE62C();
}

unint64_t sub_1004F30D0()
{
  result = qword_1008F0870;
  if (!qword_1008F0870)
  {
    sub_100141EEC(&qword_1008F0868);
    sub_1004F3188();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0870);
  }

  return result;
}

unint64_t sub_1004F3188()
{
  result = qword_1008F0878;
  if (!qword_1008F0878)
  {
    sub_100141EEC(&qword_1008F0880);
    sub_10014A6B0(&qword_1008F0888, &qword_1008F0890);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0878);
  }

  return result;
}

unint64_t sub_1004F32A4()
{
  result = qword_1008F0980;
  if (!qword_1008F0980)
  {
    sub_100141EEC(&qword_1008F0970);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0980);
  }

  return result;
}

unint64_t sub_1004F335C()
{
  result = qword_1008F0988;
  if (!qword_1008F0988)
  {
    sub_100141EEC(&qword_1008F0978);
    sub_1004F3414();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0988);
  }

  return result;
}

unint64_t sub_1004F3414()
{
  result = qword_1008F0990;
  if (!qword_1008F0990)
  {
    sub_100141EEC(&qword_1008F0998);
    sub_1002397DC();
    sub_10014A6B0(&qword_1008E9820, &qword_1008E97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0990);
  }

  return result;
}

unint64_t sub_1004F34D4()
{
  result = qword_1008F09B0;
  if (!qword_1008F09B0)
  {
    sub_100141EEC(&qword_1008F09A0);
    sub_1004F3558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F09B0);
  }

  return result;
}

unint64_t sub_1004F3558()
{
  result = qword_1008F09B8;
  if (!qword_1008F09B8)
  {
    sub_100141EEC(&qword_1008F09C0);
    type metadata accessor for TrainingLoadDataType();
    sub_1004EFA78(&qword_1008F09A8, &type metadata accessor for TrainingLoadDataType);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F09B8);
  }

  return result;
}

unint64_t sub_1004F3684()
{
  result = qword_1008F0A20;
  if (!qword_1008F0A20)
  {
    sub_100141EEC(&qword_1008F0A08);
    sub_1004EFA78(&qword_1008F0A28, &type metadata accessor for TrainingLoadChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0A20);
  }

  return result;
}

unint64_t sub_1004F3740()
{
  result = qword_1008F0A30;
  if (!qword_1008F0A30)
  {
    sub_100141EEC(&qword_1008F09E8);
    sub_10014A6B0(&qword_1008F07B0, &qword_1008F0780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0A30);
  }

  return result;
}

uint64_t sub_1004F37F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1004F384C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1004F38B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004F38CC(uint64_t a1, int a2)
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

uint64_t sub_1004F3914(uint64_t result, int a2, int a3)
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

unint64_t sub_1004F39AC()
{
  result = qword_1008F0AA8;
  if (!qword_1008F0AA8)
  {
    sub_100141EEC(&qword_1008F0A78);
    sub_1004F3A64();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AA8);
  }

  return result;
}

unint64_t sub_1004F3A64()
{
  result = qword_1008F0AB0;
  if (!qword_1008F0AB0)
  {
    sub_100141EEC(&qword_1008F0AA0);
    sub_1004F3B1C();
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AB0);
  }

  return result;
}

unint64_t sub_1004F3B1C()
{
  result = qword_1008F0AB8;
  if (!qword_1008F0AB8)
  {
    sub_100141EEC(&qword_1008F0AC0);
    sub_100141EEC(&qword_1008F0A68);
    sub_10014A6B0(&qword_1008F0A98, &qword_1008F0A68);
    swift_getOpaqueTypeConformance2();
    sub_1004EFA78(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AB8);
  }

  return result;
}

unint64_t sub_1004F3C54()
{
  result = qword_1008F0AD8;
  if (!qword_1008F0AD8)
  {
    sub_100141EEC(&qword_1008F0AC8);
    sub_100141EEC(&qword_1008F0A80);
    sub_100141EEC(&qword_1008F0A78);
    sub_1004F39AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0AD8);
  }

  return result;
}

void sub_1004F3E40()
{
  sub_1004DD940(319, &qword_1008DDD50, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1004F3F20(319, &unk_1008F0B68, &qword_1008F03D8, &unk_1006F5590, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1004F3F20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100141EEC(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1004F3FA8()
{
  result = qword_1008F0BB0;
  if (!qword_1008F0BB0)
  {
    sub_100141EEC(&qword_1008F0BA8);
    sub_10014A6B0(&qword_1008F0BB8, &qword_1008F0BC0);
    sub_10014A6B0(&qword_1008F0BC8, &qword_1008F0BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BB0);
  }

  return result;
}

unint64_t sub_1004F4094()
{
  result = qword_1008F0BE0;
  if (!qword_1008F0BE0)
  {
    sub_100141EEC(&qword_1008F0BD8);
    sub_1004F414C();
    sub_10014A6B0(&qword_1008F0BF8, &qword_1008F0C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BE0);
  }

  return result;
}

unint64_t sub_1004F414C()
{
  result = qword_1008F0BE8;
  if (!qword_1008F0BE8)
  {
    sub_100141EEC(&qword_1008F0BF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F0BE8);
  }

  return result;
}

uint64_t sub_1004F4200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F4294()
{
  v1 = *(type metadata accessor for OvernightMetricsReorderingView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100140278(&qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1004F43C8()
{
  type metadata accessor for OvernightMetricsReorderingView(0);

  return sub_1004F181C();
}

void *sub_1004F4450(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_1000059F8(0, &qword_1008E9FF8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1004C5AA8(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_1004F4514(uint64_t a1)
{
  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend);
  result = [v4 snapshots];
  if (result)
  {
    v6 = result;
    sub_1000059F8(0, &qword_1008E1750);
    sub_1000059F8(0, &qword_1008E9FF8);
    sub_1004F6630();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_1004F4450(v3, v7);

    if (v8)
    {
      v9 = [v8 activitySummary];
      if (v9)
      {
        if ([v4 isMe])
        {
          v10 = [*(v1 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_pauseRingsCoordinator) isPausedForActivitySummaryCacheIndex:a1];
        }

        else
        {
          v10 = 0;
        }

        [v9 setDeprecatedPauseForInternalSwiftClient:v10];
      }

      v3 = v8;
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004F46E0()
{
  result = [*(v0 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) snapshots];
  if (result)
  {
    v2 = result;
    sub_1000059F8(0, &qword_1008E1750);
    sub_1000059F8(0, &qword_1008E9FF8);
    sub_1004F6630();
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = __CocoaDictionary.count.getter();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F4878(void (*a1)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a2)(void, Swift::Int, uint64_t, uint64_t))
{
  v5 = [*(v2 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) snapshots];
  if (!v5)
  {
LABEL_14:
    __break(1u);

    __break(1u);
    return result;
  }

  v6 = v5;
  sub_1000059F8(0, &qword_1008E1750);
  sub_1000059F8(0, &qword_1008E9FF8);
  sub_1004F6630();
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10031164C(v7);
  sub_1004F4FF0(&v13, a1, a2);

  v8 = v13;
  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*(v13 + 16))
  {
LABEL_5:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_8;
    }

    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);
LABEL_8:
      v10 = v9;

      v11 = [v10 longLongValue];

      return v11;
    }

    __break(1u);
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1004F4A30()
{
  v1 = type metadata accessor for DateComponents();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v17 = [*(v0 + OBJC_IVAR____TtC10FitnessApp50ActivitySharingFriendDetailActivitySummaryProvider_friend) currentSnapshot];
  if (v17 && (v18 = v17, [v17 snapshotIndex], v18, (v19 = _HKStartDateForSnapshotIndex()) != 0))
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v16, v12, v6);
  }

  else
  {
    Date.init()();
  }

  static Calendar.current.getter();
  Date.startOfFitnessWeek(for:)();
  sub_100140278(&unk_1008E51B0);
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D46C0;
  (*(v22 + 104))(v24 + v23, enum case for Calendar.Component.day(_:), v21);
  sub_10001C970(v24);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v21);
  swift_deallocClassInstance();
  v25 = v32;
  Calendar.dateComponents(_:from:to:)();

  v26 = DateComponents.day.getter();
  LOBYTE(v21) = v27;
  (*(v35 + 8))(v25, v36);
  v28 = *(v7 + 8);
  v28(v9, v6);
  (*(v33 + 8))(v5, v34);
  v28(v16, v6);
  if (v21)
  {
    v29 = 0;
  }

  else
  {
    v29 = v26;
  }

  result = 6 - v29;
  if (__OFSUB__(6, v29))
  {
    __break(1u);
  }

  return result;
}

id sub_1004F4F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendDetailActivitySummaryProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004F4FF0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001AB738(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1004F5084(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1004F5084(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000059F8(0, &qword_1008E1750);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1004F51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 longLongValue];
      v13 = [v11 longLongValue];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004F52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 longLongValue];
      v13 = [v11 longLongValue];

      if (v13 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004F5398(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001A99A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1004F6068((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001A99A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1001A9918(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 longLongValue];
      v104 = [v14 longLongValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 longLongValue];
        v7 = [v18 longLongValue];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1001A1D54((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1004F6068((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A99A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1001A9918(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 longLongValue];
    v41 = [v39 longLongValue];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_1004F5A00(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001A99A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1004F634C((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001A99A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_1001A9918(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 longLongValue];
      v104 = [v14 longLongValue];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 longLongValue];
        v7 = [v18 longLongValue];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001A1D54(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1001A1D54((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1004F634C((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A99A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_1001A9918(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 longLongValue];
    v41 = [v39 longLongValue];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1004F6068(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 longLongValue];
          v35 = [v33 longLongValue];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 longLongValue];
          v20 = [v18 longLongValue];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1004F634C(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 longLongValue];
          v35 = [v33 longLongValue];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 longLongValue];
          v20 = [v18 longLongValue];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

unint64_t sub_1004F6630()
{
  result = qword_1008E53E0;
  if (!qword_1008E53E0)
  {
    sub_1000059F8(255, &qword_1008E1750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E53E0);
  }

  return result;
}

uint64_t sub_1004F66C4()
{
  static Axis.Set.vertical.getter();
  sub_100140278(&qword_1008F0C78);
  sub_1004F716C();
  return ScrollView.init(_:showsIndicators:content:)();
}

__n128 sub_1004F6750@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a3;
  v24 = a4;
  v6 = sub_100140278(&qword_1008F0C88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_100140278(&qword_1008F0CA0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = static HorizontalAlignment.center.getter();
  v27 = 0;
  sub_1004F6B4C(a1, a2, v30);
  memcpy(v28, v30, 0x119uLL);
  memcpy(v29, v30, 0x119uLL);
  sub_10001B104(v28, v25, &qword_1008F0CA8);
  sub_10000EA04(v29, &qword_1008F0CA8);
  memcpy(&v26[7], v28, 0x119uLL);
  *v25 = v13;
  *&v25[8] = 0;
  v25[16] = v27;
  memcpy(&v25[17], v26, 0x120uLL);
  v14 = sub_100140278(&qword_1008F0C90);
  v15 = sub_10014A6B0(&qword_1008F0C98, &qword_1008F0C90);
  View.scrollContentBackground(_:)();
  memcpy(v30, v25, 0x131uLL);
  sub_10000EA04(v30, &qword_1008F0C90);
  static Edge.Set.horizontal.getter();
  *v25 = v14;
  *&v25[8] = v15;
  swift_getOpaqueTypeConformance2();
  View.scenePadding(_:)();
  (*(v7 + 8))(v9, v6);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = v24;
  (*(v22 + 32))(v24, v12, v23);
  v17 = v16 + *(sub_100140278(&qword_1008F0C78) + 36);
  v18 = *&v25[80];
  *(v17 + 64) = *&v25[64];
  *(v17 + 80) = v18;
  *(v17 + 96) = *&v25[96];
  v19 = *&v25[16];
  *v17 = *v25;
  *(v17 + 16) = v19;
  result = *&v25[48];
  *(v17 + 32) = *&v25[32];
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_1004F6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = *(v68[0] + 16);

    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_1004F72AC(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    v36 = EnvironmentObject.init()();
    v43 = v5;
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_1004F72AC(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    v37 = EnvironmentObject.init()();
    v42 = v6;
    v7 = static Edge.Set.all.getter();
    LOBYTE(v68[0]) = 0;
    if (v4)
    {
      type metadata accessor for ReachableContactsDataSource();
      sub_1004F72AC(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource);

      v8 = EnvironmentObject.init()();
      v4 = v9;
      v10 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v40 = v12;
      v41 = v11;
      v38 = v14;
      v39 = v13;
      LOBYTE(v68[0]) = 0;
      v15 = v10;
    }

    else
    {
      v8 = 0;
      a1 = 0;
      v15 = 0;
      v40 = 0;
      v41 = 0;
      v38 = 0;
      v39 = 0;
    }

    v16 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v83 = 0;
    v25 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v84 = 0;
    *&v52 = v36;
    *(&v52 + 1) = v43;
    *&v53 = v37;
    *(&v53 + 1) = v42;
    v54[0] = v7;
    *&v54[1] = v85[0];
    *&v54[4] = *(v85 + 3);
    *&v54[8] = xmmword_1006E6740;
    *&v54[24] = xmmword_1006D46A0;
    v54[40] = 0;
    *(&__src[3] + 9) = *&v54[25];
    __src[2] = *v54;
    __src[3] = *&v54[16];
    __src[0] = v52;
    __src[1] = v53;
    *&v55 = v8;
    *(&v55 + 1) = v4;
    *&v56 = a1;
    *(&v56 + 1) = v15;
    *&v57 = v41;
    *(&v57 + 1) = v40;
    *&v58 = v39;
    *(&v58 + 1) = v38;
    v59 = 0;
    LOBYTE(__src[9]) = 0;
    __src[7] = v57;
    __src[8] = v58;
    __src[5] = v55;
    __src[6] = v56;
    *&v60 = 0x403E000000000000;
    *(&v60 + 1) = 0xD00000000000001DLL;
    *&v61 = 0x800000010074F390;
    BYTE8(v61) = v16;
    *&v62 = v18;
    *(&v62 + 1) = v20;
    *&v63 = v22;
    *(&v63 + 1) = v24;
    LOBYTE(v64) = 0;
    BYTE8(v64) = v25;
    *&v65 = v26;
    *(&v65 + 1) = v28;
    *&v66 = v30;
    *(&v66 + 1) = v32;
    v67 = 0;
    *(&__src[12] + 8) = v63;
    *(&__src[11] + 8) = v62;
    *(&__src[10] + 8) = v61;
    *(&__src[9] + 8) = v60;
    BYTE8(__src[16]) = 0;
    *(&__src[15] + 8) = v66;
    *(&__src[14] + 8) = v65;
    *(&__src[13] + 8) = v64;
    v50 = 1;
    memcpy(a3, __src, 0x110uLL);
    *(a3 + 272) = 0;
    *(a3 + 280) = 1;
    v68[0] = 0x403E000000000000;
    v68[1] = 0xD00000000000001DLL;
    v68[2] = 0x800000010074F390;
    v69 = v16;
    v70 = v18;
    v71 = v20;
    v72 = v22;
    v73 = v24;
    v74 = 0;
    v75 = v25;
    v76 = v27;
    v77 = v29;
    v78 = v31;
    v79 = v33;
    v80 = 0;
    sub_10001B104(&v52, v44, &qword_1008F0CB0);
    sub_10001B104(&v55, v44, &qword_1008F0CB8);
    sub_10001B104(&v60, v44, &qword_1008F0CC0);
    sub_10000EA04(v68, &qword_1008F0CC0);
    v81[0] = v8;
    v81[1] = v4;
    v81[2] = a1;
    v81[3] = v15;
    v81[4] = v41;
    v81[5] = v40;
    v81[6] = v39;
    v81[7] = v38;
    v82 = 0;
    sub_10000EA04(v81, &qword_1008F0CB8);
    v44[0] = v36;
    v44[1] = v43;
    v44[2] = v37;
    v44[3] = v42;
    v45 = v7;
    *v46 = v85[0];
    *&v46[3] = *(v85 + 3);
    v47 = xmmword_1006E6740;
    v48 = xmmword_1006D46A0;
    v49 = 0;
    return sub_10000EA04(v44, &qword_1008F0CB0);
  }

  else
  {
    type metadata accessor for ReachableContactsDataSource();
    sub_1004F72AC(&qword_1008DC048, type metadata accessor for ReachableContactsDataSource);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}