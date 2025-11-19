uint64_t sub_1000E27B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Music.Genre();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000E2A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002264D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E2AFC()
{
  result = qword_1002264E0;
  if (!qword_1002264E0)
  {
    sub_10000460C(&qword_1002264E8);
    sub_1000E0B08();
    sub_10000BA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264E0);
  }

  return result;
}

id sub_1000E2B8C()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  sub_1000024C4(&qword_100226588);
  Binding.projectedValue.getter();
  v2 = v13;
  v3 = v14;
  v15 = v0[2];
  LOBYTE(v16) = *(v0 + 48);
  sub_1000024C4(&unk_1002265A0);
  Binding.projectedValue.getter();
  v4 = v12;
  v5 = v13;
  v6 = type metadata accessor for SearchBar.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV16EventViewService9SearchBar11Coordinator__text];
  *v8 = v12;
  *(v8 + 2) = v2;
  *(v8 + 3) = v3;
  v9 = &v7[OBJC_IVAR____TtCV16EventViewService9SearchBar11Coordinator__isSearching];
  *v9 = v4;
  v9[16] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1000E2C7C()
{
  v1 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000024C4(&qword_1002265C8);
  UIViewRepresentableContext.coordinator.getter();
  [v1 setDelegate:v4];

  [v1 setSearchBarStyle:2];
  if (*(v0 + 64))
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v1 setPlaceholder:v2];

  [v1 setReturnKeyType:0];
  [v1 setShowsCancelButton:0 animated:0];
  return v1;
}

uint64_t sub_1000E2D8C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  aBlock = *v1;
  v19 = v11;
  sub_1000024C4(&qword_100226588);
  Binding.wrappedValue.getter();
  v12 = String._bridgeToObjectiveC()();

  [a1 setText:v12];

  aBlock = v1[2];
  LOBYTE(v19) = *(v1 + 48);
  sub_1000024C4(&unk_1002265A0);
  result = Binding.wrappedValue.getter();
  if (v22 == 1)
  {
    sub_1000E350C();
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v20 = sub_1000E3590;
    v21 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_100185774;
    *(&v19 + 1) = &unk_100216388;
    v16 = _Block_copy(&aBlock);
    v17 = a1;
    static DispatchQoS.unspecified.getter();
    v22 = &_swiftEmptyArrayStorage;
    sub_1000C71C4();
    sub_1000024C4(qword_100225DE0);
    sub_1000604E8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

id sub_1000E32B8@<X0>(void *a1@<X8>)
{
  result = sub_1000E2B8C();
  *a1 = result;
  return result;
}

uint64_t sub_1000E32E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E34B8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E3344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E34B8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000E33A8()
{
  sub_1000E34B8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000E33D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000E33E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E340C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000E3454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E34B8()
{
  result = qword_100226598;
  if (!qword_100226598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226598);
  }

  return result;
}

unint64_t sub_1000E350C()
{
  result = qword_100225DD0;
  if (!qword_100225DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100225DD0);
  }

  return result;
}

uint64_t sub_1000E3558()
{

  return swift_deallocObject();
}

__n128 sub_1000E35B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000E35E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000E3628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E36B0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100226630);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1000024C4(&qword_100226638);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_1000024C4(&qword_100226640);
  sub_1000E3958(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000BFFC(&qword_100226648, &qword_100226630);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_1000050C4(v7, &qword_100226630);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E3958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1000024C4(&qword_100226650);
  __chkstk_darwin(v3 - 8);
  v78 = (&v74 - v4);
  v77 = sub_1000024C4(&qword_100226658);
  v5 = __chkstk_darwin(v77);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v74 - v8;
  __chkstk_darwin(v7);
  v80 = &v74 - v9;
  v83 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v83);
  v11 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v75 = sub_1000024C4(&qword_100226660);
  v19 = __chkstk_darwin(v75);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v23 = *(a1 + 88);
  v84 = a1;
  v24 = *(a1 + 96);
  if (v24 == 1)
  {
    v25 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v23, 0);
    (*(v13 + 8))(v15, v12);
    v25 = *&v91;
  }

  v27 = v25 * 48.0;
  if (COERCE__INT64(fabs(v25 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v24)
  {
    v28 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v23, 0);
    v30 = *(v13 + 8);
    v13 += 8;
    v30(v15, v12);
    v28 = *&v91;
  }

  v31 = v28 * 48.0;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10007E528(v27, v31, v18);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1000024C4(&qword_100226668);
  sub_1000E5658();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = &v22[*(sub_1000024C4(&qword_1002266A8) + 36)];
  v33 = v86;
  *v32 = v85;
  *(v32 + 1) = v33;
  *(v32 + 2) = v87;
  v22[*(sub_1000024C4(&qword_1002266B0) + 36)] = 1;
  v34 = *(v83 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  v13 = *(*(v12 - 8) + 104);
  (v13)(v11 + v34, v18, v12);
  __asm { FMOV            V0.2D, #6.0 }

  v74 = _Q0;
  *v11 = _Q0;
  static Color.black.getter();
  v40 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v41 = &v22[*(sub_1000024C4(&qword_1002266B8) + 36)];
  sub_100039704(v11, v41);
  v42 = v41 + *(sub_1000024C4(&qword_100222870) + 36);
  v43 = v89;
  *v42 = v88;
  *(v42 + 16) = v43;
  *(v42 + 32) = v90;
  v44 = sub_1000024C4(&qword_100222878);
  *(v41 + *(v44 + 52)) = v40;
  *(v41 + *(v44 + 56)) = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_100039768(v11);
  v48 = (v41 + *(sub_1000024C4(&qword_100222880) + 36));
  *v48 = v45;
  v48[1] = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = (v41 + *(sub_1000024C4(&qword_100224440) + 36));
  *v52 = v49;
  v52[1] = v51;
  v23 = static Alignment.center.getter();
  v11 = v53;
  v54 = 0;
  KeyPath = 0;
  if (*(v84 + 80) == 1)
  {
    if (qword_100220C18 == -1)
    {
LABEL_15:
      v56 = qword_100239130;
      type metadata accessor for PlaybackViewModel();
      v54 = swift_allocObject();

      ObservationRegistrar.init()();
      *(v54 + 16) = v56;
      KeyPath = swift_getKeyPath();
      goto LABEL_16;
    }

LABEL_23:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  v57 = &v22[*(sub_1000024C4(&qword_1002266C0) + 36)];
  *v57 = v54;
  *(v57 + 1) = KeyPath;
  v57[16] = 0;
  *(v57 + 3) = v23;
  *(v57 + 4) = v11;
  v58 = &v22[*(v75 + 36)];
  (v13)(&v58[*(v83 + 20)], v18, v12);
  *v58 = v74;
  v59 = static HorizontalAlignment.leading.getter();
  v60 = v78;
  *v78 = v59;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v61 = sub_1000024C4(&qword_1002266C8);
  sub_1000E4EF8(v84, v60 + *(v61 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v79;
  sub_10001AE00(v60, v79, &qword_100226650);
  v63 = (v62 + *(v77 + 36));
  v64 = v94;
  v65 = v96;
  v66 = v97;
  v63[4] = v95;
  v63[5] = v65;
  v63[6] = v66;
  v67 = v92;
  *v63 = v91;
  v63[1] = v67;
  v63[2] = v93;
  v63[3] = v64;
  v68 = v80;
  sub_10001AE00(v62, v80, &qword_100226658);
  v69 = v76;
  sub_10000BEB8(v22, v76, &qword_100226660);
  v70 = v81;
  sub_10000BEB8(v68, v81, &qword_100226658);
  v71 = v82;
  sub_10000BEB8(v69, v82, &qword_100226660);
  v72 = sub_1000024C4(&qword_1002266D0);
  sub_10000BEB8(v70, v71 + *(v72 + 48), &qword_100226658);
  sub_1000050C4(v68, &qword_100226658);
  sub_1000050C4(v22, &qword_100226660);
  sub_1000050C4(v70, &qword_100226658);
  return sub_1000050C4(v69, &qword_100226660);
}

uint64_t sub_1000E4398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v30 = sub_1000024C4(&qword_1002266A0);
  __chkstk_darwin(v30);
  v3 = (&v29 - v2);
  v36 = sub_1000024C4(&qword_1002266F0);
  __chkstk_darwin(v36);
  v34 = &v29 - v4;
  v32 = sub_1000024C4(&qword_1002266F8);
  __chkstk_darwin(v32);
  v6 = &v29 - v5;
  v37 = sub_1000024C4(&qword_100226680);
  __chkstk_darwin(v37);
  v33 = &v29 - v7;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100226690);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v31, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v20 = Image.resizable(capInsets:resizingMode:)();
    (*(v9 + 8))(v11, v8);
    v38 = v20;
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v14, v6, &qword_100226690);
    swift_storeEnumTagMultiPayload();
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0);
    v21 = v33;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v21, v34, &qword_100226680);
    swift_storeEnumTagMultiPayload();
    sub_1000E56E4();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v21, &qword_100226680);
    v22 = v14;
    v23 = &qword_100226690;
  }

  else
  {
    v24 = v33;
    v25 = v34;
    if (v19 == enum case for AsyncImagePhase.failure(_:))
    {
      (*(v16 + 8))(v18, v15);
    }

    else if (v19 != enum case for AsyncImagePhase.empty(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_1000E56E4();
      _ConditionalContent<>.init(storage:)();
      return (*(v16 + 8))(v18, v15);
    }

    *v3 = static Alignment.center.getter();
    v3[1] = v26;
    v27 = sub_1000024C4(&qword_100226700);
    sub_1000E4A6C(v3 + *(v27 + 44));
    sub_10000BEB8(v3, v6, &qword_1002266A0);
    swift_storeEnumTagMultiPayload();
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0);
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v24, v25, &qword_100226680);
    swift_storeEnumTagMultiPayload();
    sub_1000E56E4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v24, &qword_100226680);
    v22 = v3;
    v23 = &qword_1002266A0;
  }

  return sub_1000050C4(v22, v23);
}

uint64_t sub_1000E4A6C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100226708);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1000024C4(&qword_100225A40);
  v12 = __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v16 = _Q0;
  if (qword_100220BA0 != -1)
  {
    swift_once();
  }

  v25 = qword_1002390C0;
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v11 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;

  Image.init(systemName:)();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v28 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v1);
  v29 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = 1;
  v34 = v28;
  LOWORD(v35) = 1;
  *(&v35 + 1) = v29;
  sub_1000024C4(&qword_100226710);
  sub_1000E58E8();
  View.accessibilityIdentifier(_:)();
  v40[3] = v37;
  v40[4] = v38;
  v40[1] = v35;
  v40[2] = v36;
  v40[0] = v34;
  sub_1000050C4(v40, &qword_100226710);
  sub_10000BEB8(v16, v14, &qword_100225A40);
  sub_10000BEB8(v10, v8, &qword_100226708);
  v30 = v33;
  sub_10000BEB8(v14, v33, &qword_100225A40);
  v31 = sub_1000024C4(&qword_100226730);
  sub_10000BEB8(v8, v30 + *(v31 + 48), &qword_100226708);
  sub_1000050C4(v10, &qword_100226708);
  sub_1000050C4(v16, &qword_100225A40);
  sub_1000050C4(v8, &qword_100226708);
  return sub_1000050C4(v14, &qword_100225A40);
}

uint64_t sub_1000E4EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000024C4(&qword_100221B10);
  v4 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v38 - v6;
  v7 = sub_1000024C4(&qword_1002266D8);
  v8 = __chkstk_darwin(v7 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  *v11 = static VerticalAlignment.lastTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_1000024C4(&qword_1002266E0);
  sub_1000E52F4(a1, &v11[*(v12 + 44)]);
  v13 = *(a1 + 24);
  v43 = *(a1 + 16);
  v44 = v13;
  sub_10001877C();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.subheadline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_100017398(v14, v16, v18 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v43 = qword_1002390B8;

  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100017398(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v24;
  v44 = v26;
  v28 &= 1u;
  v45 = v28;
  v46 = v30;
  v47 = KeyPath;
  v48 = 1;
  v49 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  v32 = v40;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v24, v26, v28);

  v33 = v39;
  sub_10000BEB8(v11, v39, &qword_1002266D8);
  v34 = v42;
  sub_10000BEB8(v32, v42, &qword_100221B10);
  v35 = v41;
  sub_10000BEB8(v33, v41, &qword_1002266D8);
  v36 = sub_1000024C4(&qword_1002266E8);
  sub_10000BEB8(v34, v35 + *(v36 + 48), &qword_100221B10);
  sub_1000050C4(v32, &qword_100221B10);
  sub_1000050C4(v11, &qword_1002266D8);
  sub_1000050C4(v34, &qword_100221B10);
  return sub_1000050C4(v33, &qword_1002266D8);
}

uint64_t sub_1000E52F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for Text.Suffix();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000024C4(&qword_100221B10);
  __chkstk_darwin(v28);
  v6 = &v28 - v5;
  v7 = *(a1 + 8);
  v32 = *a1;
  v33 = v7;
  sub_10001877C();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  LOBYTE(v7) = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v32 = v8;
  v33 = v10;
  v34 = v7 & 1;
  v35 = v13;
  v36 = KeyPath;
  v37 = 1;
  v38 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v8, v10, v7 & 1);

  if (*(a1 + 32) == 1)
  {
    static Font.subheadline.getter();
    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v32 = qword_1002390B8;

    v20 = Text.foregroundStyle<A>(_:)();
    v21 = v15;
    v22 = v20;
    v24 = v23;
    v26 = v25;
    sub_100017398(v21, v17, v19 & 1);

    static Text.Suffix.alwaysVisible(_:)();
    sub_100017398(v22, v24, v26 & 1);
  }

  else
  {
    static Text.Suffix.none.getter();
  }

  sub_10002C3C8();
  View.textSuffix(_:)();
  (*(v29 + 8))(v4, v31);
  return sub_1000050C4(v6, &qword_100221B10);
}

unint64_t sub_1000E5658()
{
  result = qword_100226670;
  if (!qword_100226670)
  {
    sub_10000460C(&qword_100226668);
    sub_1000E56E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226670);
  }

  return result;
}

unint64_t sub_1000E56E4()
{
  result = qword_100226678;
  if (!qword_100226678)
  {
    sub_10000460C(&qword_100226680);
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226678);
  }

  return result;
}

unint64_t sub_1000E579C()
{
  result = qword_100226688;
  if (!qword_100226688)
  {
    sub_10000460C(&qword_100226690);
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226688);
  }

  return result;
}

uint64_t sub_1000E5828@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E5858@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000E58E8()
{
  result = qword_100226718;
  if (!qword_100226718)
  {
    sub_10000460C(&qword_100226710);
    sub_1000E5974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226718);
  }

  return result;
}

unint64_t sub_1000E5974()
{
  result = qword_100226720;
  if (!qword_100226720)
  {
    sub_10000460C(&qword_100226728);
    sub_100069870();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226720);
  }

  return result;
}

unint64_t sub_1000E5A30()
{
  result = qword_100226738;
  if (!qword_100226738)
  {
    sub_10000460C(qword_100226740);
    sub_10000460C(&qword_100226630);
    sub_10000BFFC(&qword_100226648, &qword_100226630);
    swift_getOpaqueTypeConformance2();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226738);
  }

  return result;
}

uint64_t sub_1000E5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  swift_getWitnessTable();
  v26[1] = type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8);
  v6 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = v6;
  type metadata accessor for _PreferenceWritingModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = sub_1000E6518();
  WitnessTable = swift_getWitnessTable();
  v37 = v8;
  v38 = WitnessTable;
  v29 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v26[3] = v7;
  v26[2] = swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v26[4] = swift_getWitnessTable();
  v26[5] = type metadata accessor for _BackgroundModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  (*(v4 + 16))(v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30, a2);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = v28;
  *(v18 + 24) = v19;
  (*(v4 + 32))(v18 + v17, v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v35 = GeometryReader.init(content:)();
  v36 = v20;
  static Alignment.center.getter();
  v21 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v22 = swift_getWitnessTable();
  v33 = v21;
  v34 = v22;
  v23 = swift_getWitnessTable();
  sub_1000EE87C(v14, v10, v23);
  v24 = *(v11 + 8);
  v24(v14, v10);
  sub_1000EE87C(v16, v10, v23);
  return (v24)(v16, v10);
}

uint64_t sub_1000E5F0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[4] = a1;
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v25 - v8;
  v10 = sub_10000460C(&qword_1002267C8);
  v25[2] = a4;
  v25[3] = v10;
  v25[0] = a3;
  v25[5] = type metadata accessor for _PreferenceWritingModifier();
  v11 = type metadata accessor for ModifiedContent();
  v27 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v33 = v17;
  v25[1] = *a2;
  v18 = *(a2 + *(type metadata accessor for SizeModifier() + 40));
  v19 = GeometryProxy.frame(in:)();
  v18(v19);
  v20 = sub_1000E6518();
  View.preference<A>(key:value:)();
  (*(v26 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v30 = v20;
  v31 = WitnessTable;
  v22 = swift_getWitnessTable();
  sub_1000EE87C(v14, v11, v22);
  v23 = *(v27 + 8);
  v23(v14, v11);
  sub_1000EE87C(v16, v11, v22);
  return (v23)(v16, v11);
}

uint64_t sub_1000E620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for SizeModifier();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for CoordinateSpace();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 40)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

unint64_t sub_1000E62C4()
{
  swift_getMetatypeMetadata();
  result = type metadata accessor for CoordinateSpace();
  if (v1 <= 0x3F)
  {
    result = sub_100023D44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E636C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CoordinateSpace();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E642C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CoordinateSpace();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000E6518()
{
  result = qword_1002267D0;
  if (!qword_1002267D0)
  {
    sub_10000460C(&qword_1002267C8);
    sub_100057474();
    sub_1000E65A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002267D0);
  }

  return result;
}

unint64_t sub_1000E65A4()
{
  result = qword_1002238C0;
  if (!qword_1002238C0)
  {
    sub_10000460C(&qword_1002238C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002238C0);
  }

  return result;
}

uint64_t sub_1000E6608()
{
  v1 = type metadata accessor for SizeModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 36);
  v4 = type metadata accessor for CoordinateSpace();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000E6704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SizeModifier() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_1000E5F0C(a1, v8, v5, v6, a2);
}

uint64_t sub_1000E67A8()
{
  type metadata accessor for SizeModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_1000E6518();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000E6950(uint64_t a1)
{
  result = sub_1000E7338(&qword_1002267D8, &type metadata accessor for Dance);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E69AC()
{
  result = qword_1002267E0;
  if (!qword_1002267E0)
  {
    sub_10000460C(&qword_1002267E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002267E0);
  }

  return result;
}

uint64_t sub_1000E6B78()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_100225398);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(qword_1002268C0);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000E6D64);
}

uint64_t sub_1000E6D64()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10000BE10(v4, qword_100239108);
  Dance.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Dance();
  sub_1000E7338(&qword_1002253B0, &type metadata accessor for Dance);
  static EventService.RequestType.dance.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000E6F1C;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000E6F1C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1000DE330;
  }

  else
  {
    v3 = sub_1000E70A0;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1000E70A0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_100188274(sub_1000E7380, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000E71E4@<X0>(uint64_t *a1@<X8>)
{
  result = Dance.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000E7228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000E6B78();
}

uint64_t sub_1000E72B4(uint64_t a1)
{
  *(a1 + 8) = sub_1000E7338(&qword_1002268B0, &type metadata accessor for Dance);
  result = sub_1000E7338(&qword_1002268B8, &type metadata accessor for Dance);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E7338(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000E73A0()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100082DA0();
      if (v2 <= 0x3F)
      {
        sub_100029AB4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000E7478(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E7548(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000E7690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000E76FC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000E78CC@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v11;
  a3[1] = v12;
  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for EntertainmentEventView();
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);
  result = swift_storeEnumTagMultiPayload();
  v10 = a3 + *(v7 + 44);
  *v10 = a1;
  v10[8] = a2 & 1;
  return result;
}

uint64_t sub_1000E7A3C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000E7B24;

  return v5();
}

uint64_t sub_1000E7B24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E7C1C()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000E7C70()
{
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_1000E7CC8(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000E7F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v119 = a2;
  v118 = type metadata accessor for TaskPriority();
  v117 = *(v118 - 8);
  v3 = __chkstk_darwin(v118);
  v116 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(a1 - 8);
  v124 = *(v115 + 64);
  __chkstk_darwin(v3);
  v114 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  type metadata accessor for Optional();
  v113 = type metadata accessor for Binding();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v91 - v7;
  v122 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  v9 = sub_1000ED714();
  OpaqueTypeMetadata2 = v6;
  v134 = &type metadata for DefaultHeroImageView;
  v135 = v8;
  v136 = v9;
  type metadata accessor for HeaderModule();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v144 = &protocol witness table for _PaddingLayout;
  v11 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v10;
  v134 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v134 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v125 = v8;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v135 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v136 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v12 = type metadata accessor for ScrollView();
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v134 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v12;
  v134 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v14;
  v134 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v14;
  v134 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v134 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  v18 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v16;
  v134 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v141 = v19;
  v142 = v20;
  v21 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v18;
  v134 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v18;
  v134 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_10001877C();
  OpaqueTypeMetadata2 = v22;
  v134 = &type metadata for String;
  v135 = v23;
  v136 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v22;
  v134 = &type metadata for String;
  v135 = v23;
  v136 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v25;
  v134 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v25;
  v134 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v134 = &type metadata for Bool;
  v135 = v28;
  v136 = &protocol witness table for Bool;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_10000460C(&qword_100226950);
  OpaqueTypeMetadata2 = v27;
  v134 = &type metadata for Bool;
  v135 = v28;
  v136 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_10000460C(&qword_1002245F8);
  v33 = sub_1000ED768();
  OpaqueTypeMetadata2 = v32;
  v134 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v29;
  v134 = v30;
  v135 = v31;
  v136 = v34;
  v100 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v29;
  v134 = v30;
  v135 = v31;
  v136 = v34;
  v98 = swift_getOpaqueTypeConformance2();
  v35 = type metadata accessor for NavigationStack();
  v99 = *(v35 - 8);
  __chkstk_darwin(v35);
  v96 = v91 - v36;
  type metadata accessor for AccessibilityAttachmentModifier();
  v37 = type metadata accessor for ModifiedContent();
  v109 = *(v37 - 8);
  __chkstk_darwin(v37);
  v120 = v91 - v38;
  v39 = swift_getWitnessTable();
  v93 = v39;
  v40 = sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v139 = v39;
  v140 = v40;
  v41 = swift_getWitnessTable();
  v42 = *(v125 + 16);
  v43 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v37;
  v134 = v6;
  v44 = v37;
  v92 = v37;
  v135 = a1;
  v136 = v41;
  v45 = v41;
  v95 = v41;
  v137 = v42;
  v138 = v43;
  v94 = v42;
  v91[1] = v43;
  v102 = swift_getOpaqueTypeMetadata2();
  v106 = *(v102 - 8);
  __chkstk_darwin(v102);
  v121 = v91 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v104 = v47;
  v110 = *(v47 - 8);
  __chkstk_darwin(v47);
  v122 = v91 - v48;
  OpaqueTypeMetadata2 = v44;
  v134 = v6;
  v135 = a1;
  v136 = v45;
  v137 = v42;
  v138 = v43;
  v97 = swift_getOpaqueTypeConformance2();
  v131 = v97;
  v132 = &protocol witness table for _AppearanceActionModifier;
  v103 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v47;
  v134 = v103;
  v108 = swift_getOpaqueTypeMetadata2();
  v107 = *(v108 - 8);
  v49 = __chkstk_darwin(v108);
  v101 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v105 = v91 - v51;
  v52 = v125;
  v128 = v6;
  v129 = v125;
  v130 = v123;
  v53 = v96;
  NavigationStack.init<>(root:)();
  View.accessibilityIdentifier(_:)();
  (*(v99 + 8))(v53, v35);
  v54 = a1;
  v55 = sub_1000E7C70();
  v57 = v56;
  v59 = v58;
  v60 = v6;
  v126 = v6;
  v127 = v52;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v55;
  v134 = v57;
  v135 = v59;
  type metadata accessor for EntertainmentEventViewModel();
  type metadata accessor for Binding();
  v61 = v111;
  Binding.subscript.getter();

  v62 = swift_allocObject();
  *(v62 + 16) = v60;
  *(v62 + 24) = v52;
  v63 = v92;
  v91[0] = v60;
  v64 = v54;
  v65 = v120;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v112 + 8))(v61, v113);
  (*(v109 + 8))(v65, v63);
  v66 = v115;
  v120 = *(v115 + 16);
  v67 = v114;
  v68 = v123;
  (v120)(v114, v123, v64);
  v69 = *(v66 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v60;
  *(v70 + 24) = v52;
  v71 = *(v66 + 32);
  v71(v70 + ((v69 + 32) & ~v69), v67, v64);
  v72 = v102;
  v73 = v121;
  View.onAppear(perform:)();

  (*(v106 + 8))(v73, v72);
  (v120)(v67, v68, v64);
  type metadata accessor for MainActor();
  v74 = static MainActor.shared.getter();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = &protocol witness table for MainActor;
  v76 = v125;
  v75[4] = v91[0];
  v75[5] = v76;
  v71(v75 + ((v69 + 48) & ~v69), v67, v64);
  v77 = v116;
  v78 = v104;
  v79 = v103;
  j___sScP13userInitiatedScPvgZ();
  v90 = v79;
  v80 = v101;
  v81 = v77;
  v82 = v77;
  v83 = v122;
  sub_10000250C(0, v81, 0xD00000000000002DLL, 0x80000001001C7160, 120, &unk_1001BC920, v75, v101, v78, v90);
  (*(v117 + 8))(v82, v118);
  (*(v110 + 8))(v83, v78);
  v84 = v107;
  v85 = *(v107 + 16);
  v86 = v105;
  v87 = v108;
  v85(v105, v80, v108);
  v88 = *(v84 + 8);
  v88(v80, v87);
  v85(v119, v86, v87);
  return (v88)(v86, v87);
}

uint64_t sub_1000E8FF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v157 = a4;
  v158 = a1;
  v154 = type metadata accessor for EntertainmentEventView();
  v153 = *(v154 - 8);
  v151 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = &v97 - v6;
  v150 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ContentMarginPlacement();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ScrollIndicatorVisibility();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v133 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000ED714();
  OpaqueTypeMetadata2 = a2;
  v167 = &type metadata for DefaultHeroImageView;
  v168 = a3;
  v169 = v10;
  type metadata accessor for HeaderModule();
  v11 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v165 = &protocol witness table for _PaddingLayout;
  v12 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v11;
  v167 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v167 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v168 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v169 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v100 = type metadata accessor for VStack();
  v99 = swift_getWitnessTable();
  v13 = type metadata accessor for ScrollView();
  v135 = *(v13 - 8);
  __chkstk_darwin(v13);
  v98 = &v97 - v14;
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v13;
  v167 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v127 = *(v16 - 8);
  __chkstk_darwin(v16);
  v121 = &v97 - v17;
  v117 = v13;
  OpaqueTypeMetadata2 = v13;
  v167 = v15;
  v113 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v167 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v120 = *(v19 - 8);
  __chkstk_darwin(v19);
  v114 = &v97 - v20;
  v132 = v16;
  OpaqueTypeMetadata2 = v16;
  v167 = OpaqueTypeConformance2;
  v109 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v19;
  v167 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v130 = *(v22 - 8);
  __chkstk_darwin(v22);
  v123 = &v97 - v23;
  sub_10000460C(&qword_100221D58);
  v134 = v22;
  v24 = type metadata accessor for ModifiedContent();
  v128 = *(v24 - 8);
  __chkstk_darwin(v24);
  v122 = &v97 - v25;
  v124 = v19;
  OpaqueTypeMetadata2 = v19;
  v167 = v21;
  v106 = v21;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v101 = v26;
  v162 = v26;
  v163 = v27;
  v28 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v24;
  v167 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v116 = *(v29 - 8);
  __chkstk_darwin(v29);
  v111 = &v97 - v30;
  OpaqueTypeMetadata2 = v24;
  v167 = v28;
  v102 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_10001877C();
  OpaqueTypeMetadata2 = v29;
  v167 = &type metadata for String;
  v168 = v31;
  v169 = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v131 = *(v33 - 8);
  __chkstk_darwin(v33);
  v125 = &v97 - v34;
  v119 = v29;
  OpaqueTypeMetadata2 = v29;
  v167 = &type metadata for String;
  v104 = v31;
  v168 = v31;
  v169 = v32;
  v103 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v33;
  v167 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v141 = *(v36 - 8);
  __chkstk_darwin(v36);
  v139 = &v97 - v37;
  v136 = v33;
  OpaqueTypeMetadata2 = v33;
  v167 = v35;
  v110 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v36;
  v167 = &type metadata for Bool;
  v168 = v38;
  v169 = &protocol witness table for Bool;
  v39 = swift_getOpaqueTypeMetadata2();
  v138 = *(v39 - 8);
  __chkstk_darwin(v39);
  v137 = &v97 - v40;
  v41 = sub_10000460C(&qword_100226950);
  v142 = v36;
  OpaqueTypeMetadata2 = v36;
  v167 = &type metadata for Bool;
  v129 = v38;
  v168 = v38;
  v169 = &protocol witness table for Bool;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_10000460C(&qword_1002245F8);
  v44 = sub_1000ED768();
  OpaqueTypeMetadata2 = v43;
  v167 = v44;
  v45 = v98;
  v46 = swift_getOpaqueTypeConformance2();
  v140 = v39;
  OpaqueTypeMetadata2 = v39;
  v167 = v41;
  v126 = v41;
  v118 = v42;
  v168 = v42;
  v169 = v46;
  v108 = v46;
  v115 = swift_getOpaqueTypeMetadata2();
  v112 = *(v115 - 8);
  v47 = __chkstk_darwin(v115);
  v105 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v107 = &v97 - v49;
  v155 = a2;
  v159 = a2;
  v160 = a3;
  v50 = v133;
  v156 = a3;
  v161 = v158;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v39) = static Axis.Set.vertical.getter();
  *(inited + 32) = v39;
  v52 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v52;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v39)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v52)
  {
    Axis.Set.init(rawValue:)();
  }

  v53 = v121;
  v54 = v117;
  View.scrollIndicators(_:axes:)();
  (*(v143 + 8))(v50, v144);
  (*(v135 + 8))(v45, v54);
  static Edge.Set.bottom.getter();
  v55 = v145;
  static ContentMarginPlacement.scrollContent.getter();
  v56 = v114;
  v57 = v132;
  View.contentMargins(_:_:for:)();
  v58 = *(v146 + 8);
  v59 = v147;
  v58(v55, v147);
  (*(v127 + 8))(v53, v57);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v60 = v123;
  v61 = v124;
  View.contentMargins(_:_:for:)();
  v58(v55, v59);
  (*(v120 + 8))(v56, v61);
  v62 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v63 = v122;
  v64 = v134;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v130 + 8))(v60, v64);
  v65 = v149;
  v66 = v148;
  v67 = v150;
  (*(v149 + 104))(v148, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v150);
  v68 = v111;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v65 + 8))(v66, v67);
  (*(v128 + 8))(v63, v24);
  v69 = v154;
  v70 = v158;
  sub_1000E7C1C();
  v71 = sub_100118808();
  v73 = v72;

  OpaqueTypeMetadata2 = v71;
  v167 = v73;
  v74 = v125;
  v75 = v119;
  View.navigationTitle<A>(_:)();

  (*(v116 + 8))(v68, v75);
  sub_1000E7C1C();
  sub_100116470();

  sub_1000024C4(&qword_1002245D8);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v76 = v139;
  v77 = v136;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v131 + 8))(v74, v77);
  v78 = swift_allocObject();
  v79 = v155;
  v80 = v156;
  *(v78 + 16) = v155;
  *(v78 + 24) = v80;
  v81 = v153;
  v82 = v152;
  (*(v153 + 16))(v152, v70, v69);
  v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v79;
  *(v84 + 24) = v80;
  (*(v81 + 32))(v84 + v83, v82, v69);
  v96 = &protocol witness table for Bool;
  v85 = v137;
  v86 = v142;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v87 = (*(v141 + 8))(v76, v86);
  __chkstk_darwin(v87);
  *(&v97 - 4) = v79;
  *(&v97 - 3) = v80;
  v96 = v70;
  v88 = v105;
  v89 = v140;
  View.toolbar<A>(content:)();
  (*(v138 + 8))(v85, v89);
  v90 = v112;
  v91 = *(v112 + 16);
  v92 = v107;
  v93 = v115;
  v91(v107, v88, v115);
  v94 = *(v90 + 8);
  v94(v88, v93);
  v91(v157, v92, v93);
  return (v94)(v92, v93);
}

uint64_t sub_1000EA4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1000ED714();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v23 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  v25 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v26 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  v27 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v18[-v13];
  static HorizontalAlignment.leading.getter();
  v19 = a2;
  v20 = a3;
  v21 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(a4, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_1000EA818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v187 = a4;
  type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  __chkstk_darwin(v7 - 8);
  v159 = &v156 - v8;
  v9 = type metadata accessor for UpcomingViewModel();
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v11 = type metadata accessor for UpcomingModule();
  v183 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v160 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v156 - v14;
  v184 = v15;
  v186 = type metadata accessor for Optional();
  v185 = *(v186 - 8);
  v16 = __chkstk_darwin(v186);
  v200 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v199 = &v156 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v190 = &v156 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v191 = AssociatedTypeWitness;
  v189 = AssociatedConformanceWitness;
  v22 = type metadata accessor for LocationModule();
  v181 = *(v22 - 8);
  __chkstk_darwin(v22);
  v179 = &v156 - v23;
  v182 = v24;
  v198 = type metadata accessor for ModifiedContent();
  v209 = *(v198 - 8);
  v25 = __chkstk_darwin(v198);
  v197 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v180 = &v156 - v28;
  __chkstk_darwin(v27);
  v208 = &v156 - v29;
  v30 = type metadata accessor for DetailsModule();
  v176 = *(v30 - 8);
  __chkstk_darwin(v30);
  v175 = (&v156 - v31);
  v177 = v32;
  v207 = type metadata accessor for ModifiedContent();
  v206 = *(v207 - 8);
  v33 = __chkstk_darwin(v207);
  v196 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v174 = &v156 - v36;
  __chkstk_darwin(v35);
  v205 = &v156 - v37;
  v38 = type metadata accessor for EntertainmentEventView();
  v201 = *(v38 - 8);
  v192 = v201[8];
  v39 = __chkstk_darwin(v38);
  OpaqueTypeConformance2 = &v156 - v40;
  v188 = *(a2 - 8);
  v41 = __chkstk_darwin(v39);
  v164 = (&v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v44 = &v156 - v43;
  v194 = (&v156 - v43);
  v167 = sub_1000ED714();
  *&v217 = a2;
  *(&v217 + 1) = &type metadata for DefaultHeroImageView;
  *&v218 = a3;
  *(&v218 + 1) = v167;
  v45 = type metadata accessor for HeaderModule();
  v170 = *(v45 - 8);
  __chkstk_darwin(v45);
  v165 = &v156 - v46;
  v47 = type metadata accessor for ModifiedContent();
  v173 = *(v47 - 8);
  __chkstk_darwin(v47);
  v172 = &v156 - v48;
  v171 = v45;
  WitnessTable = swift_getWitnessTable();
  v220 = WitnessTable;
  v221 = &protocol witness table for _PaddingLayout;
  v49 = swift_getWitnessTable();
  v178 = v47;
  *&v217 = v47;
  *(&v217 + 1) = v49;
  v169 = v49;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v203 = *(OpaqueTypeMetadata2 - 8);
  v50 = __chkstk_darwin(OpaqueTypeMetadata2);
  v195 = &v156 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v168 = &v156 - v53;
  __chkstk_darwin(v52);
  v202 = &v156 - v54;
  v210 = a3;
  v163 = type metadata accessor for HeaderViewModel();
  sub_1000E7C1C();
  sub_100115D88(v44);

  v55 = a1;
  v56 = sub_1000E7C1C();
  v162 = sub_100115E64(v56);
  v161 = v57;

  sub_1000E7C1C();
  v58 = sub_100115F74();
  v60 = v59;

  sub_1000E7C1C();
  v61 = sub_100115F94();
  v63 = v62;

  sub_1000E7C1C();
  v64 = v164;
  sub_100115D88(v164);

  v65 = sub_10008C468(a2, a3);
  (*(v188 + 8))(v64, a2);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  sub_10002E5E4(v194, v162, v161, v58, v60, v61, v63, 0, 0, v65 & 1, &v217);
  v66 = v201;
  v67 = OpaqueTypeConformance2;
  v164 = v201[2];
  (v164)(OpaqueTypeConformance2, v55, v38);
  v68 = v66;
  v69 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v70 = swift_allocObject();
  v188 = a2;
  v71 = v210;
  *(v70 + 16) = a2;
  *(v70 + 24) = v71;
  v72 = v68[4];
  v201 = v68 + 4;
  v163 = v72;
  v72(v70 + v69, v67, v38);
  v73 = v165;
  sub_10016A66C(sub_1000EDF08, v70, v165);
  static Edge.Set.horizontal.getter();
  v74 = v38;
  if (sub_1000E7CC8(v38))
  {
    sub_100082FDC();
  }

  v75 = v172;
  v76 = v171;
  View.padding(_:_:)();
  (*(v170 + 8))(v73, v76);
  v77 = OpaqueTypeConformance2;
  (v164)(OpaqueTypeConformance2, v55, v74);
  v78 = swift_allocObject();
  v79 = v210;
  *(v78 + 16) = v188;
  *(v78 + 24) = v79;
  v163(v78 + v69, v77, v74);
  v80 = v168;
  v81 = v178;
  v82 = v169;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v173 + 8))(v75, v81);
  *&v217 = v81;
  *(&v217 + 1) = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v203;
  v84 = *(v203 + 16);
  v85 = OpaqueTypeMetadata2;
  v192 = v203 + 16;
  v178 = v84;
  (v84)(v202, v80, OpaqueTypeMetadata2);
  v86 = *(v83 + 8);
  v203 = v83 + 8;
  v201 = v86;
  (v86)(v80, v85);
  type metadata accessor for DetailsViewModel();
  sub_1000E7C1C();
  v87 = v194;
  sub_100115D88(v194);

  sub_1000E7C1C();
  v88 = sub_100118894();
  v89 = v88;

  sub_1000F6130(v87, v88);
  v90 = v175;
  sub_1000924E4(v175);
  static Edge.Set.horizontal.getter();
  if (sub_1000E7CC8(v74))
  {
    sub_1000830AC();
  }

  else
  {
    static Solarium.isEnabled.getter();
  }

  v91 = v177;
  v92 = swift_getWitnessTable();
  v93 = v174;
  View.padding(_:_:)();
  (*(v176 + 1))(v90, v91);
  v216[6] = v92;
  v216[7] = &protocol witness table for _PaddingLayout;
  v94 = v207;
  v188 = swift_getWitnessTable();
  v95 = v206;
  v96 = *(v206 + 16);
  v177 = v206 + 16;
  v176 = v96;
  v96(v205, v93, v94);
  v97 = *(v95 + 8);
  v206 = v95 + 8;
  v194 = v97;
  (v97)(v93, v94);
  type metadata accessor for LocationViewModel();
  v98 = sub_1000E7C1C();
  v99 = sub_100116018(v98);
  v101 = v100;

  v102 = sub_1000E7C1C();
  v103 = v190;
  sub_100116128(v102);

  sub_1000E7C1C();
  v104 = sub_100118894();
  v105 = v104;

  v106 = sub_1000E7C1C();
  LOBYTE(v93) = sub_100116230(v106);

  sub_1001AC5D4(v99, v101, v103, v104, v93);
  v107 = v179;
  sub_100090A38(v179);
  static Edge.Set.horizontal.getter();
  if (sub_1000E7CC8(v74))
  {
    sub_100083044();
  }

  v108 = v182;
  v109 = swift_getWitnessTable();
  v110 = v180;
  View.padding(_:_:)();
  (*(v181 + 8))(v107, v108);
  v216[4] = v109;
  v216[5] = &protocol witness table for _PaddingLayout;
  v111 = v198;
  v181 = swift_getWitnessTable();
  v112 = v209;
  v113 = *(v209 + 16);
  v179 = v209 + 16;
  v175 = v113;
  (v113)(v208, v110, v111);
  v114 = *(v112 + 8);
  v209 = v112 + 8;
  v182 = v114;
  v114(v110, v111);
  sub_1000E7C1C();
  v115 = sub_10011891C();

  *&v217 = v115;
  type metadata accessor for Array();
  swift_getWitnessTable();
  LOBYTE(v112) = Collection.isEmpty.getter();

  if (v112)
  {
    v116 = v200;
    (*(v183 + 56))(v200, 1, 1, v184);
    swift_getWitnessTable();
  }

  else
  {
    v117 = sub_1000E7C1C();
    v118 = (v117 + *(*v117 + 144));
    v119 = v118[1];
    v180 = *v118;

    v120 = sub_1000E7C1C();
    v121 = v190;
    sub_100116128(v120);

    v122 = v191;
    v189 = (*(v189 + 48))(v191);
    v174 = v123;
    (*(v156 + 8))(v121, v122);
    sub_1000E7C1C();
    v124 = sub_10011891C();

    v125 = sub_1000E7C70();
    v127 = v126;
    v129 = v128;
    __chkstk_darwin(v125);
    swift_getKeyPath();
    *&v217 = v125;
    *(&v217 + 1) = v127;
    *&v218 = v129;
    type metadata accessor for EntertainmentEventViewModel();
    type metadata accessor for Binding();
    v130 = v159;
    Binding.subscript.getter();

    v131 = v157;
    sub_1000EF8A0(v180, v119, v189, v174, 1, v124, v130, v157);
    KeyPath = swift_getKeyPath();
    v133 = v160;
    sub_1000C72AC(v131, KeyPath, 0, v160);
    v134 = v184;
    swift_getWitnessTable();
    v135 = v183;
    v136 = *(v183 + 16);
    v137 = v158;
    v136(v158, v133, v134);
    v138 = *(v135 + 8);
    v138(v133, v134);
    v136(v133, v137, v134);
    v138(v137, v134);
    v116 = v200;
    (*(v135 + 32))(v200, v133, v134);
    (*(v135 + 56))(v116, 0, 1, v134);
  }

  v139 = v185;
  v140 = *(v185 + 16);
  v141 = v186;
  v140(v199, v116, v186);
  v210 = *(v139 + 8);
  v210(v116, v141);
  v142 = v195;
  v143 = OpaqueTypeMetadata2;
  v178(v195, v202);
  *&v217 = v142;
  v144 = v196;
  v145 = v207;
  v176(v196, v205, v207);
  *(&v217 + 1) = v144;
  v146 = v197;
  v147 = v198;
  (v175)(v197, v208, v198);
  *&v218 = v146;
  v148 = v199;
  v140(v116, v199, v141);
  *(&v218 + 1) = v116;
  v216[0] = v143;
  v216[1] = v145;
  v216[2] = v147;
  v216[3] = v141;
  v212 = OpaqueTypeConformance2;
  v213 = v188;
  v214 = v181;
  v211 = swift_getWitnessTable();
  v215 = swift_getWitnessTable();
  sub_1000E76FC(&v217, 4uLL, v216);
  v149 = v210;
  v210(v148, v141);
  v150 = v182;
  v182(v208, v147);
  v151 = v145;
  v152 = v194;
  (v194)(v205, v151);
  v153 = v143;
  v154 = v201;
  (v201)(v202, v153);
  v149(v200, v141);
  v150(v197, v147);
  v152(v196, v207);
  return v154(v195, OpaqueTypeMetadata2);
}

uint64_t sub_1000EC0C8@<X0>(void *a1@<X8>)
{
  type metadata accessor for EntertainmentEventView();
  v2 = sub_1000E7C1C();
  v3 = (v2 + *(*v2 + 152));
  v5 = *v3;
  v4 = v3[1];

  sub_1000E7C1C();
  sub_1000024C4(&qword_100221D18);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001B3B50;
  *(v6 + 32) = Color.init(_:bundle:)();
  *(v6 + 40) = Color.init(_:bundle:)();

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

uint64_t sub_1000EC1D4(char a1)
{
  type metadata accessor for EntertainmentEventView();
  sub_1000E7C1C();
  sub_100115FB4((a1 & 1) == 0);
}

uint64_t sub_1000EC278(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for EntertainmentEventView();
  sub_1000E7C1C();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sub_1001164F8(v3);
}

uint64_t sub_1000EC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a2;
  v43 = a3;
  v6 = sub_1000024C4(&qword_1002245E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000024C4(&qword_1002245F0);
  v39 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v37 = *(v14 - 8);
  v38 = v14;
  __chkstk_darwin(v14);
  v36 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002245F8);
  v17 = __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v35 - v21;
  v44 = a1;
  v23 = *(a1 + 16);
  if (v23)
  {
    v40 = v20;
    v41 = a4;
    if (*(v23 + 88) && (*(v23 + 80) & 1) != 0)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        if (*(v23 + 32) > 1u || *(v23 + 32))
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

        v30 = v44 + *(type metadata accessor for EntertainmentEventView() + 44);
        v31 = *v30;
        if (*(v30 + 8) == 1)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v35[1] = static os_log_type_t.fault.getter();
          v32 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v33 = v36;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_10001BC5C(v31, 0);
          (*(v37 + 8))(v33, v38);
          if (v45 != 1)
          {
LABEL_17:
            (*(v7 + 56))(v19, 1, 1, v6);
            v34 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
            v45 = v11;
            v46 = v34;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000EDDE4(v19);
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
    }

LABEL_8:
    v25 = static ToolbarItemPlacement.topBarTrailing.getter();
    __chkstk_darwin(v25);
    v26 = v43;
    *&v35[-8] = v42;
    *&v35[-6] = v26;
    *&v35[-4] = v44;
    sub_10008B1A4();
    ToolbarItem<>.init(placement:content:)();
    v27 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v19, v9, v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v45 = v11;
    v46 = v27;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v19);
    (*(v7 + 8))(v9, v6);
    (*(v39 + 8))(v13, v11);
LABEL_9:
    sub_1000ED768();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_1000EDDE4(v22);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000EC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EntertainmentEventView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_1000EDE4C;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_1000ECAF0(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EntertainmentEventView();
  sub_1000E7C1C();
  v6 = *(a1 + 16);
  if (v6)
  {

    sub_100116658(0, 2, 0, 3u, v6);

    sub_100039CB8(v5);
    DismissAction.callAsFunction()();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ECC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntertainmentEventView();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  type metadata accessor for EntertainmentEventViewModel();
  (*(v6 + 16))(v8, a1, a2);
  sub_100115D48(v8);
  KeyPath = swift_getKeyPath();
  sub_1000E78CC(KeyPath, 0, v13);
  swift_getWitnessTable();
  v17 = *(v10 + 16);
  v17(v15, v13, v9);
  v18 = *(v10 + 8);
  v18(v13, v9);
  v17(a3, v15, v9);
  return v18(v15, v9);
}

uint64_t sub_1000ECEC4(uint64_t a1)
{
  type metadata accessor for EntertainmentEventView();
  sub_1000E7C1C();
  if (*(a1 + 16))
  {

    sub_1001168F0(v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ECF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[179] = a5;
  v5[173] = a4;
  v5[167] = a3;
  v6 = type metadata accessor for EntertainmentEventView();
  v5[185] = v6;
  v7 = *(v6 - 8);
  v5[186] = v7;
  v5[187] = *(v7 + 64);
  v5[188] = swift_task_alloc();
  v5[189] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[190] = static MainActor.shared.getter();
  v5[191] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[192] = v8;

  return _swift_task_switch(sub_1000ED0A8);
}

uint64_t sub_1000ED0A8()
{
  v1 = v0[189];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[179];
  v5 = v0[173];
  v14 = v5;
  v17 = v0[167];
  v18 = v0[188];
  v15 = v4;
  v16 = *(v2 + 16);
  v16(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[193] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = *(v2 + 32);
  v8(v7 + v6, v1, v3);
  v9 = swift_task_alloc();
  v0[194] = v9;
  *(v9 + 16) = &unk_1001BC930;
  *(v9 + 24) = v7;
  swift_asyncLet_begin();
  (v16)(v18, v17, v3);
  v10 = swift_allocObject();
  v0[195] = v10;
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  v8(v10 + v6, v18, v3);
  v11 = swift_task_alloc();
  v0[196] = v11;
  *(v11 + 16) = &unk_1001BC950;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v12, sub_1000ED2AC, v0 + 162);
}

uint64_t sub_1000ED300()
{

  return _swift_asyncLet_finish(v0 + 16, v1, sub_1000ED374, v0 + 1440);
}

uint64_t sub_1000ED390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ED44C);
}

uint64_t sub_1000ED44C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED4E0);
}

uint64_t sub_1000ED4E0()
{

  type metadata accessor for EntertainmentEventView();
  *(v0 + 48) = sub_1000E7C1C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008C0E0;

  return sub_100116950();
}

uint64_t sub_1000ED59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ED5C0);
}

uint64_t sub_1000ED5C0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED654);
}

uint64_t sub_1000ED654()
{

  type metadata accessor for EntertainmentEventView();
  *(v0 + 48) = sub_1000E7C1C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008A6F0;

  return sub_100116E40();
}

unint64_t sub_1000ED714()
{
  result = qword_100226948;
  if (!qword_100226948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226948);
  }

  return result;
}

unint64_t sub_1000ED768()
{
  result = qword_100226958;
  if (!qword_100226958)
  {
    sub_10000460C(&qword_1002245F8);
    sub_10000460C(&qword_1002245F0);
    sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226958);
  }

  return result;
}

__n128 sub_1000ED8BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000ED8FC()
{
  v1 = type metadata accessor for EntertainmentEventView();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 40);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + *(v1 + 44)), *(v3 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000EDA54()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000BD00;

  return sub_1000ECF8C(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_1000EDB4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012AC8;

  return sub_1000ED428(v0 + v5, v2, v3);
}

uint64_t sub_1000EDC34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100012AC8;

  return sub_1000ED59C(v0 + v5, v2, v3);
}

uint64_t sub_1000EDD30(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for EntertainmentEventView();

  return sub_1000EC278(a1, a2);
}

uint64_t sub_1000EDDE4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002245F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EDE64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for EntertainmentEventView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1000EDF08@<X0>(void *a1@<X8>)
{
  type metadata accessor for EntertainmentEventView();

  return sub_1000EC0C8(a1);
}

uint64_t sub_1000EDF94()
{
  v1 = type metadata accessor for EntertainmentEventView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 40);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + *(v1 + 44)), *(v2 + *(v1 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000EE0E4(char a1)
{
  type metadata accessor for EntertainmentEventView();

  return sub_1000EC1D4(a1);
}

uint64_t sub_1000EE170()
{
  type metadata accessor for NavigationPath();
  sub_1000ED714();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10001877C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100226950);
  swift_getOpaqueTypeConformance2();
  sub_10000460C(&qword_1002245F8);
  sub_1000ED768();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for EntertainmentEventView();
  swift_getWitnessTable();
  sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000EE8B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100226960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000EE980(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_100226960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CircularProgressViewStyle()
{
  result = qword_1002269C0;
  if (!qword_1002269C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EEA7C()
{
  sub_1000EEAF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000EEAF8()
{
  if (!qword_1002269D0)
  {
    sub_100068430();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_1002269D0);
    }
  }
}

__n128 sub_1000EEB70@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v5)
  {
    sub_1000EF368(&v63);
  }

  else
  {
    v6 = *&v4;
    v7 = static Alignment.center.getter();
    v9 = v8;
    sub_1000EEE3C(a1, &v78, v6);
    v34 = v84;
    v35 = v85;
    v30 = v80;
    v31 = v81;
    v32 = v82;
    v33 = v83;
    v28 = v78;
    v29 = v79;
    v37[6] = v84;
    v37[7] = v85;
    v37[2] = v80;
    v37[3] = v81;
    v37[4] = v82;
    v37[5] = v83;
    v36 = v86;
    v38 = v86;
    v37[0] = v78;
    v37[1] = v79;
    sub_10000BEB8(&v28, &v63, &qword_100226A50);
    sub_1000050C4(v37, &qword_100226A50);
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v39 = v28;
    v40 = v29;
    type metadata accessor for CircularProgressViewStyle();
    sub_1000024C4(&qword_100226960);
    ScaledMetric.wrappedValue.getter();
    v10 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(v78) = 0;
    static UnitPoint.center.getter();
    *&v63 = v7;
    *(&v63 + 1) = v9;
    v70 = v45;
    v71 = v46;
    *&v72 = v47;
    v66 = v41;
    v67 = v42;
    v68 = v43;
    v69 = v44;
    v64 = v39;
    v65 = v40;
    BYTE8(v72) = v10;
    *&v73 = v12;
    *(&v73 + 1) = v14;
    *&v74 = v16;
    *(&v74 + 1) = v18;
    LOBYTE(v75) = 0;
    *(&v75 + 1) = 0xBFF921FB54442D18;
    *&v76 = v19;
    *(&v76 + 1) = v20;
    sub_1000EF4B8(&v63);
  }

  v60 = v75;
  v61 = v76;
  v62 = v77;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v48 = v63;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  sub_1000024C4(&qword_100226A20);
  sub_1000EF374();
  _ConditionalContent<>.init(storage:)();
  v21 = v91;
  *(a2 + 192) = v90;
  *(a2 + 208) = v21;
  *(a2 + 224) = v92;
  v22 = v87;
  *(a2 + 128) = v86;
  *(a2 + 144) = v22;
  v23 = v89;
  *(a2 + 160) = v88;
  *(a2 + 176) = v23;
  v24 = v83;
  *(a2 + 64) = v82;
  *(a2 + 80) = v24;
  v25 = v85;
  *(a2 + 96) = v84;
  *(a2 + 112) = v25;
  v26 = v79;
  *a2 = v78;
  *(a2 + 16) = v26;
  result = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000EEE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v10 = static HierarchicalShapeStyle.primary.getter();
  type metadata accessor for CircularProgressViewStyle();
  sub_1000024C4(&qword_100226960);
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = static Alignment.center.getter();
  v8 = v7;
  v11 = *a1;
  v12 = Color.opacity(_:)();
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22[0] = v19;
  v22[1] = v20;
  *&v23 = v21;
  DWORD2(v23) = v10;
  WORD6(v23) = 256;
  *&v24 = v6;
  *(&v24 + 1) = v8;
  v13 = v23;
  v14 = v24;
  *(&v26 + 1) = a3;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v11;
  *&v15[56] = v18;
  *(a2 + 128) = v11;
  v25 = v12;
  *&v26 = 0;
  *v15 = v12;
  *&v15[40] = v17;
  *&v15[24] = v27;
  *&v15[8] = v26;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 96) = *&v15[32];
  *(a2 + 112) = *&v15[48];
  *(a2 + 64) = *v15;
  *(a2 + 80) = *&v15[16];
  v31[0] = 0;
  *&v31[1] = a3;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v11;

  sub_10000BEB8(v22, v36, &qword_100226A58);
  sub_10000BEB8(&v26, v36, &qword_100226A60);
  sub_1000050C4(v31, &qword_100226A60);
  v36[0] = v19;
  v36[1] = v20;
  v37 = v21;
  v38 = v10;
  v39 = 256;
  v40 = v6;
  v41 = v8;
  v42 = v12;
  return sub_1000050C4(v36, &qword_100226A58);
}

uint64_t sub_1000EF0C4(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000EF18C@<X0>(uint64_t a1@<X8>)
{
  sub_1000EEB70(v1, v16);
  sub_1000024C4(&qword_100226A00);
  sub_1000EF2EC();
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  v3 = v16[13];
  *(a1 + 192) = v16[12];
  *(a1 + 208) = v3;
  *(a1 + 224) = v17;
  v4 = v16[9];
  *(a1 + 128) = v16[8];
  *(a1 + 144) = v4;
  v5 = v16[11];
  *(a1 + 160) = v16[10];
  *(a1 + 176) = v5;
  v6 = v16[5];
  *(a1 + 64) = v16[4];
  *(a1 + 80) = v6;
  v7 = v16[7];
  *(a1 + 96) = v16[6];
  *(a1 + 112) = v7;
  v8 = v16[1];
  *a1 = v16[0];
  *(a1 + 16) = v8;
  v9 = v16[3];
  *(a1 + 32) = v16[2];
  *(a1 + 48) = v9;
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_1000024C4(&qword_100226A10) + 36));
  v12 = *(sub_1000024C4(&qword_100226A18) + 28);
  v13 = enum case for LayoutDirection.leftToRight(_:);
  v14 = type metadata accessor for LayoutDirection();
  result = (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return result;
}

unint64_t sub_1000EF2EC()
{
  result = qword_100226A08;
  if (!qword_100226A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A08);
  }

  return result;
}

unint64_t sub_1000EF374()
{
  result = qword_100226A28;
  if (!qword_100226A28)
  {
    sub_10000460C(&qword_100226A20);
    sub_1000EF400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A28);
  }

  return result;
}

unint64_t sub_1000EF400()
{
  result = qword_100226A30;
  if (!qword_100226A30)
  {
    sub_10000460C(&qword_100226A38);
    sub_10000BFFC(&qword_100226A40, &qword_100226A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A30);
  }

  return result;
}

unint64_t sub_1000EF4C4()
{
  result = qword_100226A68;
  if (!qword_100226A68)
  {
    sub_10000460C(&qword_100226A10);
    sub_1000EF57C();
    sub_10000BFFC(qword_100226AA8, &qword_100226A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A68);
  }

  return result;
}

unint64_t sub_1000EF57C()
{
  result = qword_100226A70;
  if (!qword_100226A70)
  {
    sub_10000460C(&qword_100226A00);
    sub_1000EF634();
    sub_10000BFFC(&qword_100226A98, &qword_100226AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A70);
  }

  return result;
}

unint64_t sub_1000EF634()
{
  result = qword_100226A78;
  if (!qword_100226A78)
  {
    sub_10000460C(&qword_100226A80);
    sub_1000EF6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A78);
  }

  return result;
}

unint64_t sub_1000EF6B8()
{
  result = qword_100226A88;
  if (!qword_100226A88)
  {
    sub_10000460C(&qword_100226A90);
    sub_1000EF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A88);
  }

  return result;
}

char *sub_1000EF744(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1000EF8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(type metadata accessor for UpcomingViewModel() + 48);
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  v12 = *(*(v11 - 8) + 32);

  return v12(a8 + v10, a7, v11);
}

void sub_1000EF968()
{
  sub_1000EFEF8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Array();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Optional();
      type metadata accessor for Binding();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000EFA34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1000EFC3C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-49 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_53:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }
  }

  else
  {
    v22 = *(v7 + 56);
    v23 = (v11 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v24 = a2 + 1;

    v22(v23, v24);
  }
}

void sub_1000EFEF8()
{
  if (!qword_100226B30[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100226B30);
    }
  }
}

char *sub_1000EFF48()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_1001B5590;
  (*(v1 + 104))(v3, enum case for GridItem.Size.flexible(_:), v0);
  GridItem.init(_:spacing:alignment:)();
  v7 = Array.count.getter();
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  return sub_1000EF744(v6, v8);
}

void sub_1000F00A8(void *a1, uint64_t a2)
{
  sub_1000024C4(&qword_100221508);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B60;
  v6 = a1[2];
  v5 = a1[3];
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_100228B70;
  *(v4 + 32) = 0;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1000F047C(a2);
  if (v7 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_100228B48;
  *(v4 + 72) = v8;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_100228BD0;
  *(v4 + 112) = 17;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_100228BA8;
  *(v4 + 152) = xmmword_1001BCAD0;
  *(v4 + 168) = 3;
  if (a1[9])
  {
    v9 = a1[8];
    v10 = a1[9];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v23 = &type metadata for AnalyticsString;
  v24 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v21 = v9;
  v22 = v10;

  v11 = sub_1001894F4(1, 5, 1, v4);
  v26 = v11;
  v12 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  sub_100118768(4, v14, &v26, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ELL;
  v17[3] = 0x80000001001C4640;
  v17[4] = v11;
  v24 = sub_100006D88;
  v25 = v17;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10015B4A4;
  v23 = &unk_100216728;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

double sub_1000F0384()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection<>.firstIndex(of:)();
  result = -v1;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000F042C()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F047C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F042C();
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    return 15;
  }

  else
  {
    (*(v8 + 32))(v10, v7, v2);
    v12 = sub_10012BCC8(v10, v2, *(a1 + 24));
    (*(v8 + 8))(v10, v2);
    return v12;
  }
}

uint64_t sub_1000F0644()
{

  return swift_deallocObject();
}

uint64_t sub_1000F0684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F069C(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000F0788()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  v1._object = 0x80000001001C7250;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_1000F0860()
{
  type metadata accessor for SavedWallpaperViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000F08B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(&qword_1002216C0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000BEB8(v2 + *(a1 + 36), &v15 - v10, &qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1000F0AB8()
{
  sub_1000024C4(&qword_100226BB8);
  sub_10000460C(&qword_100226BC0);
  sub_10000460C(&qword_1002245E8);
  sub_10000460C(&qword_100226BC8);
  sub_1000F42A8();
  swift_getOpaqueTypeConformance2();
  sub_10000460C(&qword_1002245F0);
  sub_10000BFFC(&qword_100224628, &qword_1002245F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000F0C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100226BC8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_1000024C4(&qword_100226BC0);
  v30 = *(v14 - 8);
  v31 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v17 = sub_1000024C4(&qword_100226BE8);
  v18 = a3;
  sub_1000F0FC4(a1, a2, a3, &v13[*(v17 + 44)]);
  LOBYTE(a3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = &v13[*(v11 + 36)];
  *v19 = a3;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v24 = sub_1000F42A8();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);
  sub_1000050C4(v13, &qword_100226BC8);
  v33 = a2;
  v34 = v18;
  v35 = a1;
  sub_1000024C4(&qword_1002245E8);
  v36 = v11;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = sub_10000460C(&qword_1002245F0);
  v26 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  View.toolbar<A>(content:)();
  return (*(v30 + 8))(v16, v27);
}

uint64_t sub_1000F0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a1;
  v167 = a4;
  v6 = sub_1000024C4(&qword_100226BF0);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v153 = &v148 - v7;
  v8 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v8 - 8);
  v161 = &v148 - v9;
  v163 = type metadata accessor for URL();
  v170 = *(v163 - 8);
  v10 = __chkstk_darwin(v163);
  v151 = v11;
  v152 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v162 = &v148 - v12;
  v13 = sub_1000024C4(&qword_100226BF8);
  v14 = __chkstk_darwin(v13 - 8);
  v166 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v148 - v16;
  v169 = a2;
  v175 = a3;
  v178 = type metadata accessor for SavedWallpaperView();
  v17 = *(v178 - 8);
  v168 = *(v17 + 64);
  __chkstk_darwin(v178);
  v172 = &v148 - v18;
  v19 = type metadata accessor for Image.ResizingMode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000024C4(&qword_100226C00);
  __chkstk_darwin(v23);
  v25 = &v148 - v24;
  v155 = sub_1000024C4(&qword_100226C08);
  __chkstk_darwin(v155);
  v158 = &v148 - v26;
  v154 = sub_1000024C4(&qword_100226C10);
  __chkstk_darwin(v154);
  v159 = &v148 - v27;
  v173 = sub_1000024C4(&qword_100226C18);
  v160 = *(v173 - 8);
  v28 = __chkstk_darwin(v173);
  v157 = (&v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v156 = &v148 - v30;
  v31 = sub_1000024C4(&qword_100226C20);
  v32 = __chkstk_darwin(v31 - 8);
  v174 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v177 = &v148 - v34;
  v35 = String._bridgeToObjectiveC()();

  v36 = [objc_opt_self() imageNamed:v35];

  v150 = v17;
  if (v36)
  {
    v149 = v36;
    Image.init(uiImage:)();
    (*(v20 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v19);
    v148 = Image.resizable(capInsets:resizingMode:)();

    (*(v20 + 8))(v22, v19);
    sub_1000F0860();
    sub_10018B130();

    v37 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v181) = 1;
    LOBYTE(v180[0]) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v179[53] = v218;
    *&v179[69] = v219;
    *&v179[85] = v220;
    *&v179[101] = v221;
    *&v179[5] = v215;
    *&v179[21] = v216;
    v46 = &v25[*(v23 + 36)];
    *&v179[37] = v217;
    v47 = sub_1000024C4(&qword_100226C80);
    v48 = *(v47 + 36);
    v49 = enum case for CoordinateSpace.local(_:);
    v50 = type metadata accessor for CoordinateSpace();
    (*(*(v50 - 8) + 104))(&v46[v48], v49, v50);
    *v46 = &type metadata for BezelSizePreferenceKey;
    v51 = &v46[*(v47 + 40)];
    *v51 = sub_1000D5C00;
    v51[1] = 0;
    *v25 = v148;
    *(v25 + 1) = 0;
    *(v25 + 8) = 1;
    v25[24] = v37;
    *(v25 + 4) = v39;
    *(v25 + 5) = v41;
    *(v25 + 6) = v43;
    *(v25 + 7) = v45;
    v25[64] = 0;
    *(v25 + 65) = 0;
    v52 = *&v179[80];
    *(v25 + 131) = *&v179[64];
    *(v25 + 147) = v52;
    *(v25 + 163) = *&v179[96];
    *(v25 + 22) = *&v179[109];
    v53 = *&v179[16];
    *(v25 + 67) = *v179;
    *(v25 + 83) = v53;
    v54 = *&v179[48];
    *(v25 + 99) = *&v179[32];
    *(v25 + 115) = v54;
    v55 = v172;
    v56 = v178;
    (*(v17 + 16))(v172, v176, v178);
    v57 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v58 = (v168 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v169;
    v61 = v175;
    *(v59 + 16) = v169;
    *(v59 + 24) = v61;
    (*(v17 + 32))(v59 + v57, v55, v56);
    v62 = v149;
    *(v59 + v58) = v149;
    v63 = v158;
    sub_10001AE00(v25, v158, &qword_100226C00);
    v64 = (v63 + *(v155 + 36));
    *v64 = sub_1000F4B68;
    v64[1] = v59;
    v65 = v62;
    v66 = static Alignment.center.getter();
    v68 = v67;
    v69 = v159;
    v70 = &v159[*(v154 + 36)];
    v71 = v176;
    sub_1000F22AC(v176, v60, v61, v70);
    v72 = (v70 + *(sub_1000024C4(&qword_100226C88) + 36));
    *v72 = v66;
    v72[1] = v68;
    sub_10001AE00(v63, v69, &qword_100226C08);
    LOBYTE(v66) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    v81 = v69;
    v82 = v157;
    sub_10001AE00(v81, v157, &qword_100226C10);
    v83 = v173;
    v84 = v82 + *(v173 + 36);
    *v84 = v66;
    *(v84 + 1) = v74;
    *(v84 + 2) = v76;
    *(v84 + 3) = v78;
    *(v84 + 4) = v80;
    v84[40] = 0;
    v85 = v82;
    v86 = v156;
    sub_10001AE00(v85, v156, &qword_100226C18);
    v87 = v86;
    v88 = v177;
    sub_10001AE00(v87, v177, &qword_100226C18);
    (*(v160 + 56))(v88, 0, 1, v83);
    v89 = v71;
    v90 = v88;
  }

  else
  {
    v90 = v177;
    (*(v160 + 56))(v177, 1, 1, v173);
    v89 = v176;
  }

  v91 = v178;
  v160 = static HorizontalAlignment.center.getter();
  v200 = 0;
  sub_1000F2EE8(&v181);
  v206 = *&v182[64];
  v207 = *&v182[80];
  v208[0] = *&v182[96];
  *(v208 + 9) = *&v182[105];
  v203 = *&v182[16];
  v204 = *&v182[32];
  v205 = *&v182[48];
  v201 = v181;
  v202 = *v182;
  v209[5] = *&v182[64];
  v209[6] = *&v182[80];
  v210[0] = *&v182[96];
  *(v210 + 9) = *&v182[105];
  v209[2] = *&v182[16];
  v209[3] = *&v182[32];
  v209[4] = *&v182[48];
  v209[0] = v181;
  v209[1] = *v182;
  sub_10000BEB8(&v201, v180, &qword_100226C28);
  sub_1000050C4(v209, &qword_100226C28);
  *(&v199[5] + 7) = v206;
  *(&v199[6] + 7) = v207;
  *(&v199[7] + 7) = v208[0];
  v199[8] = *(v208 + 9);
  *(&v199[1] + 7) = v202;
  *(&v199[2] + 7) = v203;
  *(&v199[3] + 7) = v204;
  *(&v199[4] + 7) = v205;
  *(v199 + 7) = v201;
  LODWORD(v173) = v200;
  LODWORD(v159) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  LOBYTE(v181) = 0;
  LODWORD(v158) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v161;
  URL.init(string:)();

  v109 = v170;
  v110 = v163;
  v111 = (*(v170 + 48))(v108, 1, v163);
  v112 = v171;
  if (v111 == 1)
  {
    sub_1000050C4(v108, &qword_1002214F8);
    v113 = 1;
    v114 = v165;
  }

  else
  {
    v157 = *(v109 + 32);
    v115 = v162;
    v157();
    v116 = v150;
    (*(v150 + 16))(v172, v89, v91);
    v117 = v152;
    (*(v109 + 16))(v152, v115, v110);
    v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v119 = (v168 + *(v109 + 80) + v118) & ~*(v109 + 80);
    v120 = swift_allocObject();
    v121 = v175;
    *(v120 + 16) = v169;
    *(v120 + 24) = v121;
    (*(v116 + 32))(v120 + v118, v172, v178);
    v112 = v171;
    v122 = (v157)(v120 + v119, v117, v110);
    __chkstk_darwin(v122);
    sub_1000024C4(&qword_100226C40);
    sub_1000F4728();
    v123 = v153;
    Button.init(action:label:)();
    LOBYTE(v120) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v172 = v107;
    v124 = v101;
    v125 = v93;
    v127 = v126;
    v175 = v105;
    v176 = v103;
    v128 = v95;
    v130 = v129;
    v131 = v97;
    v133 = v132;
    v178 = v99;
    v135 = v134;
    (*(v170 + 8))(v162, v110);
    v114 = v165;
    v136 = &v123[*(v165 + 36)];
    *v136 = v120;
    *(v136 + 1) = v127;
    *(v136 + 2) = v130;
    v93 = v125;
    v101 = v124;
    v107 = v172;
    v95 = v128;
    *(v136 + 3) = v133;
    *(v136 + 4) = v135;
    v97 = v131;
    v105 = v175;
    v103 = v176;
    v99 = v178;
    v136[40] = 0;
    v137 = v123;
    v90 = v177;
    sub_10001AE00(v137, v112, &qword_100226BF0);
    v113 = 0;
  }

  (*(v164 + 56))(v112, v113, 1, v114);
  v138 = v174;
  sub_10000BEB8(v90, v174, &qword_100226C20);
  v139 = v166;
  sub_10000BEB8(v112, v166, &qword_100226BF8);
  v140 = v138;
  v141 = v167;
  sub_10000BEB8(v140, v167, &qword_100226C20);
  v142 = sub_1000024C4(&qword_100226C30);
  v143 = *(v142 + 48);
  *(&v180[12] + 1) = v199[5];
  *(&v180[14] + 1) = v199[6];
  *(&v180[16] + 1) = v199[7];
  *(&v180[18] + 1) = v199[8];
  *(&v180[4] + 1) = v199[1];
  *(&v180[6] + 1) = v199[2];
  *(&v180[8] + 1) = v199[3];
  *(&v180[10] + 1) = v199[4];
  v144 = v160;
  v180[0] = v160;
  v180[1] = 0x4020000000000000;
  LOBYTE(v180[2]) = v173;
  *(&v180[2] + 1) = v199[0];
  *(&v180[20] + 1) = *v214;
  HIDWORD(v180[20]) = *&v214[3];
  v145 = v159;
  LOBYTE(v180[21]) = v159;
  *(&v180[21] + 1) = *v213;
  HIDWORD(v180[21]) = *&v213[3];
  v180[22] = v93;
  v180[23] = v95;
  v180[24] = v97;
  v180[25] = v99;
  LOBYTE(v180[26]) = 0;
  *(&v180[26] + 1) = *v212;
  HIDWORD(v180[26]) = *&v212[3];
  v146 = v158;
  LOBYTE(v180[27]) = v158;
  HIDWORD(v180[27]) = *&v211[3];
  *(&v180[27] + 1) = *v211;
  v180[28] = v101;
  v180[29] = v103;
  v180[30] = v105;
  v180[31] = v107;
  LOBYTE(v180[32]) = 0;
  memcpy((v141 + v143), v180, 0x101uLL);
  sub_10000BEB8(v139, v141 + *(v142 + 64), &qword_100226BF8);
  sub_10000BEB8(v180, &v181, &qword_100226C38);
  sub_1000050C4(v112, &qword_100226BF8);
  sub_1000050C4(v177, &qword_100226C20);
  sub_1000050C4(v139, &qword_100226BF8);
  *&v182[81] = v199[5];
  *&v182[97] = v199[6];
  *&v182[113] = v199[7];
  *&v182[129] = v199[8];
  *&v182[17] = v199[1];
  *&v182[33] = v199[2];
  *&v182[49] = v199[3];
  *&v182[65] = v199[4];
  *&v181 = v144;
  *(&v181 + 1) = 0x4020000000000000;
  v182[0] = v173;
  *&v182[1] = v199[0];
  *v183 = *v214;
  *&v183[3] = *&v214[3];
  v184 = v145;
  *v185 = *v213;
  *&v185[3] = *&v213[3];
  v186 = v93;
  v187 = v95;
  v188 = v97;
  v189 = v99;
  v190 = 0;
  *v191 = *v212;
  *&v191[3] = *&v212[3];
  v192 = v146;
  *&v193[3] = *&v211[3];
  *v193 = *v211;
  v194 = v101;
  v195 = v103;
  v196 = v105;
  v197 = v107;
  v198 = 0;
  sub_1000050C4(&v181, &qword_100226C38);
  return sub_1000050C4(v174, &qword_100226C20);
}

uint64_t sub_1000F21A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  type metadata accessor for SavedWallpaperView();
  sub_1000F0860();
  sub_10018B154(v4);

  sub_1000F0860();
  v5 = sub_10018B2B8();

  [a3 size];
  v7 = v5 / v6;
  sub_1000F0860();
  [a3 size];
  sub_10018B340(v7 * v8);

  sub_1000F0860();
  [a3 size];
  sub_10018B4A4(v7 * v9);
}

uint64_t sub_1000F22AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for SavedWallpaperView();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v23 = &v23 - v10;
  v11 = *(a2 - 8);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v24 = a1;
  v17 = sub_1000F0860();
  (*(v11 + 16))(v13, v17 + *(*v17 + 96), a2);

  (*(a3 + 16))(a2, a3);
  (*(v11 + 8))(v13, a2);
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  v19 = v23;
  (*(v8 + 16))(v23, v24, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v19, v7);
  sub_1000024C4(&qword_100226C90);
  sub_1000F4E60();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_1000F25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v61 = a4;
  v62 = a2;
  v59 = a1;
  v67 = a5;
  v5 = sub_1000024C4(&qword_100223250);
  __chkstk_darwin(v5);
  v7 = (&v53 - v6);
  v55 = sub_1000024C4(&qword_100226CF8);
  __chkstk_darwin(v55);
  v54 = &v53 - v8;
  v66 = sub_1000024C4(&qword_100226CE8);
  v9 = __chkstk_darwin(v66);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v53 - v11;
  v64 = sub_1000024C4(&qword_100226D00);
  __chkstk_darwin(v64);
  v65 = &v53 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000024C4(&qword_100226CA8);
  v17 = __chkstk_darwin(v63);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v53 - v20;
  v21 = type metadata accessor for AsyncImagePhase();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v59, v21);
  if ((*(v22 + 88))(v24, v21) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v25 = Image.resizable(capInsets:resizingMode:)();
    (*(v14 + 8))(v16, v13);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v68[54] = v73;
    *&v68[70] = v74;
    *&v68[86] = v75;
    *&v68[102] = v76;
    *&v68[6] = v70;
    *&v68[22] = v71;
    v69 = 1;
    *&v68[38] = v72;
    type metadata accessor for SavedWallpaperView();
    sub_1000F0860();
    sub_10018B608();

    sub_1000F0860();
    sub_10018B62C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000F0860();
    v26 = sub_10018B650();

    v27 = &v19[*(v63 + 36)];
    v28 = *(type metadata accessor for RoundedRectangle() + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = type metadata accessor for RoundedCornerStyle();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = v26;
    v27[1] = v26;
    *(v27 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
    v31 = *&v68[80];
    *(v19 + 82) = *&v68[64];
    *(v19 + 98) = v31;
    *(v19 + 114) = *&v68[96];
    v32 = *&v68[16];
    *(v19 + 18) = *v68;
    *(v19 + 34) = v32;
    v33 = *&v68[48];
    *(v19 + 50) = *&v68[32];
    *(v19 + 66) = v33;
    v34 = v78;
    *(v19 + 136) = v77;
    *v19 = v25;
    *(v19 + 1) = 0;
    *(v19 + 8) = 257;
    *(v19 + 16) = *&v68[110];
    *(v19 + 152) = v34;
    *(v19 + 168) = v79;
    *(v19 + 92) = 0;
    v35 = v19;
    v36 = v57;
    sub_10001AE00(v35, v57, &qword_100226CA8);
    sub_10000BEB8(v36, v65, &qword_100226CA8);
    swift_storeEnumTagMultiPayload();
    sub_1000F4EEC();
    sub_1000F5174();
    _ConditionalContent<>.init(storage:)();

    return sub_1000050C4(v36, &qword_100226CA8);
  }

  else
  {
    type metadata accessor for SavedWallpaperView();
    sub_1000F0860();
    v38 = sub_10018B650();

    v39 = *(type metadata accessor for RoundedRectangle() + 20);
    v40 = enum case for RoundedCornerStyle.continuous(_:);
    v41 = type metadata accessor for RoundedCornerStyle();
    (*(*(v41 - 8) + 104))(v7 + v39, v40, v41);
    *v7 = v38;
    v7[1] = v38;
    *(v7 + *(v5 + 36)) = static Color.black.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v42 = v54;
    sub_10001AE00(v7, v54, &qword_100223250);
    v43 = (v42 + *(v55 + 36));
    v44 = v73;
    v45 = v75;
    v46 = v76;
    v43[4] = v74;
    v43[5] = v45;
    v43[6] = v46;
    v47 = v71;
    v48 = v72;
    *v43 = v70;
    v43[1] = v47;
    v43[2] = v48;
    v43[3] = v44;
    sub_1000F0860();
    sub_10018B608();

    sub_1000F0860();
    sub_10018B62C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v49 = v56;
    sub_10001AE00(v42, v56, &qword_100226CF8);
    v50 = (v49 + *(v66 + 36));
    v51 = v78;
    *v50 = v77;
    v50[1] = v51;
    v50[2] = v79;
    v52 = v58;
    sub_10001AE00(v49, v58, &qword_100226CE8);
    sub_10000BEB8(v52, v65, &qword_100226CE8);
    swift_storeEnumTagMultiPayload();
    sub_1000F4EEC();
    sub_1000F5174();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v52, &qword_100226CE8);
    return (*(v22 + 8))(v24, v21);
  }
}

uint64_t sub_1000F2EE8@<X0>(_OWORD *a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v39 = v8;
  v40 = v7;
  v10 = v9;
  v36 = v11;

  sub_100017398(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v37 = v10 & 1;
  LOBYTE(v66[0]) = v10 & 1;
  LOBYTE(v56[0]) = 0;
  sub_1000F0788();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_100017398(v12, v14, v16 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v66[0] = qword_1002390B8;

  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100017398(v17, v19, v21 & 1);

  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v66[0]) = v26 & 1;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = v36;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = *v44;
  *(&v49 + 1) = v35;
  v50 = 1;
  v41[0] = 1;
  *&v51 = v22;
  *(&v51 + 1) = v24;
  LOBYTE(v52) = v26 & 1;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = *v43;
  *(&v52 + 1) = v28;
  *&v53 = v29;
  *(&v53 + 1) = 2;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v42[3];
  *(&v54 + 1) = *v42;
  *(&v54 + 1) = v30;
  v55 = 1;
  *&v41[8] = v51;
  v41[72] = 1;
  *&v41[56] = v54;
  *&v41[40] = v53;
  *&v41[24] = v52;
  v31 = v46;
  v32 = v47;
  v33 = v49;
  a1[2] = v48;
  a1[3] = v33;
  *a1 = v31;
  a1[1] = v32;
  *(a1 + 121) = *&v41[57];
  a1[6] = *&v41[32];
  a1[7] = *&v41[48];
  a1[4] = *v41;
  a1[5] = *&v41[16];
  v56[0] = v22;
  v56[1] = v24;
  v57 = v26 & 1;
  *v58 = *v43;
  *&v58[3] = *&v43[3];
  v59 = v28;
  v60 = v29;
  v61 = 2;
  v62 = 0;
  *v63 = *v42;
  *&v63[3] = *&v42[3];
  v64 = v30;
  v65 = 1;
  sub_10000BEB8(&v46, v66, &qword_100223100);
  sub_10000BEB8(&v51, v66, &qword_100223100);
  sub_1000050C4(v56, &qword_100223100);
  v66[0] = v40;
  v66[1] = v39;
  v67 = v37;
  *v68 = *v45;
  *&v68[3] = *&v45[3];
  v69 = v36;
  v70 = KeyPath;
  v71 = 2;
  v72 = 0;
  *v73 = *v44;
  *&v73[3] = *&v44[3];
  v74 = v35;
  v75 = 1;
  return sub_1000050C4(v66, &qword_100223100);
}

uint64_t sub_1000F3368(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(qword_100221928);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SavedWallpaperView();
  sub_10000BEB8(a1 + *(v13 + 40), v8, qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v5, v18);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

double sub_1000F3604@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  *&v42 = static Color.white.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v39 = v13;
  v40 = v12;
  v15 = v14;
  v38 = v16;
  sub_100017398(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 & 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[103] = v48;
  *&v41[7] = v42;
  *&v41[23] = v43;
  *&v41[39] = v44;
  v27 = static Color.blue.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v28 = (a1 + *(sub_1000024C4(&qword_100226C40) + 36));
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v28 = _Q0;
  *&v28[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v26;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = 0;
  *(a1 + 161) = *&v41[64];
  *(a1 + 177) = *&v41[80];
  *(a1 + 193) = *&v41[96];
  *(a1 + 97) = *v41;
  *(a1 + 113) = *&v41[16];
  result = *&v41[32];
  *(a1 + 129) = *&v41[32];
  *(a1 + 145) = *&v41[48];
  *(a1 + 208) = *(&v48 + 1);
  *(a1 + 216) = v27;
  *(a1 + 224) = v9;
  return result;
}

uint64_t sub_1000F3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000024C4(&qword_1002245F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v13 = a2;
  v14 = a3;
  v15 = a1;
  sub_10008B1A4();
  ToolbarItem<>.init(placement:content:)();
  sub_10000BFFC(&qword_100224628, &qword_1002245F0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000F3B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SavedWallpaperView();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v9 + 32))(v13 + v12, v11, v8);
  *a4 = 0;
  *(a4 + 8) = sub_1000F437C;
  *(a4 + 16) = v13;
  return result;
}

uint64_t sub_1000F3C54()
{
  v0 = type metadata accessor for DismissAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedWallpaperView();
  sub_1000F08B4(v4, v3);
  DismissAction.callAsFunction()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000F3D44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000F3DA4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  State.init(wrappedValue:)();
  *a2 = v7;
  a2[1] = v8;
  v4 = type metadata accessor for SavedWallpaperView();
  sub_10001AE00(a1, a2 + *(v4 + 36), qword_100224528);
  v5 = *(v4 + 40);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  return swift_storeEnumTagMultiPayload();
}

void sub_1000F3ED0()
{
  type metadata accessor for SavedWallpaperViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_1000170A8(319, &qword_1002219B8, &type metadata accessor for DismissAction);
    if (v1 <= 0x3F)
    {
      sub_1000170A8(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F3FC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002222A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000F4118(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002222A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_1000F42A8()
{
  result = qword_100226BD0;
  if (!qword_100226BD0)
  {
    sub_10000460C(&qword_100226BC8);
    sub_10000BFFC(&qword_100226BD8, &qword_100226BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226BD0);
  }

  return result;
}

uint64_t sub_1000F437C()
{
  type metadata accessor for SavedWallpaperView();

  return sub_1000F3C54();
}

uint64_t sub_1000F4400()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v3 + v13 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000F4638()
{
  v1 = *(type metadata accessor for SavedWallpaperView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000F3368(v0 + v2, v5);
}

unint64_t sub_1000F4728()
{
  result = qword_100226C48;
  if (!qword_100226C48)
  {
    sub_10000460C(&qword_100226C40);
    sub_1000F47E0();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C48);
  }

  return result;
}

unint64_t sub_1000F47E0()
{
  result = qword_100226C50;
  if (!qword_100226C50)
  {
    sub_10000460C(&qword_100226C58);
    sub_1000F4898();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C50);
  }

  return result;
}

unint64_t sub_1000F4898()
{
  result = qword_100226C60;
  if (!qword_100226C60)
  {
    sub_10000460C(&qword_100226C68);
    sub_1000F4924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C60);
  }

  return result;
}

unint64_t sub_1000F4924()
{
  result = qword_100226C70;
  if (!qword_100226C70)
  {
    sub_10000460C(&qword_100226C78);
    sub_10001B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C70);
  }

  return result;
}

uint64_t sub_1000F49B0()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F4B68(uint64_t a1)
{
  v3 = *(type metadata accessor for SavedWallpaperView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000F21A4(a1, v1 + v4, v5);
}

uint64_t sub_1000F4C20()
{
  v1 = type metadata accessor for SavedWallpaperView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F4DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000F25CC(a1, v8, v5, v6, a2);
}

unint64_t sub_1000F4E60()
{
  result = qword_100226C98;
  if (!qword_100226C98)
  {
    sub_10000460C(&qword_100226C90);
    sub_1000F4EEC();
    sub_1000F5174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C98);
  }

  return result;
}

unint64_t sub_1000F4EEC()
{
  result = qword_100226CA0;
  if (!qword_100226CA0)
  {
    sub_10000460C(&qword_100226CA8);
    sub_1000F4FA4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CA0);
  }

  return result;
}

unint64_t sub_1000F4FA4()
{
  result = qword_100226CB0;
  if (!qword_100226CB0)
  {
    sub_10000460C(&qword_100226CB8);
    sub_1000F505C();
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CB0);
  }

  return result;
}

unint64_t sub_1000F505C()
{
  result = qword_100226CC0;
  if (!qword_100226CC0)
  {
    sub_10000460C(&qword_100226CC8);
    sub_1000F50E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CC0);
  }

  return result;
}

unint64_t sub_1000F50E8()
{
  result = qword_100226CD0;
  if (!qword_100226CD0)
  {
    sub_10000460C(&qword_100226CD8);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CD0);
  }

  return result;
}

unint64_t sub_1000F5174()
{
  result = qword_100226CE0;
  if (!qword_100226CE0)
  {
    sub_10000460C(&qword_100226CE8);
    sub_1000F5200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CE0);
  }

  return result;
}

unint64_t sub_1000F5200()
{
  result = qword_100226CF0;
  if (!qword_100226CF0)
  {
    sub_10000460C(&qword_100226CF8);
    sub_10005D9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CF0);
  }

  return result;
}

unint64_t sub_1000F52F0(uint64_t a1)
{
  result = sub_1000F5318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5318()
{
  result = qword_100226D18;
  if (!qword_100226D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D18);
  }

  return result;
}

uint64_t sub_1000F53BC()
{
  nullsub_1();
  type metadata accessor for SafeAreaModifier();

  View.modifier<A>(_:)();
}

uint64_t sub_1000F5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22 = a6;
  v20 = a7;
  v21 = a5;
  v18 = a1;
  v19 = a3;
  v9 = type metadata accessor for CoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeModifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v18 - v15;
  (*(v10 + 16))(v12, a2, v9);
  sub_1000E620C(v18, v12, v19, a4, v16);

  View.modifier<A>(_:)();
  return (*(v14 + 8))(v16, v13);
}

void sub_1000F5624()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

uint64_t sub_1000F5770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F57B8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = Collection.isEmpty.getter();

  if (v4 & 1) != 0 && ((v5 = objc_opt_self(), v6 = [v5 currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7) || ((*(a2 + 64))(a1, a2), v8 = Collection.isEmpty.getter(), , (v8)) && ((v9 = objc_msgSend(v5, "currentDevice"), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10) || ((*(a2 + 72))(a1, a2), swift_getAssociatedTypeWitness(), type metadata accessor for Array(), swift_getWitnessTable(), v11 = Collection.isEmpty.getter(), , (v11)))
  {
    (*(a2 + 80))(a1, a2);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v12 = Collection.isEmpty.getter();

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

Swift::Int sub_1000F5A9C()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000F5B28()
{
  v1 = *(v0 + 24);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F5BA4()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F5C2C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1000F5CD0()
{
  result = qword_100226D88;
  if (!qword_100226D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D88);
  }

  return result;
}

unint64_t sub_1000F5D24(uint64_t a1)
{
  result = sub_1000F5D4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5D4C()
{
  result = qword_100226D90;
  if (!qword_100226D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D90);
  }

  return result;
}

uint64_t sub_1000F5DF8(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5EDC(&qword_100226DE8, &type metadata accessor for Venue);
  result = sub_1000F5EDC(&qword_100226DF0, &type metadata accessor for Venue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F5E84(uint64_t a1)
{
  result = sub_1000F5EDC(&qword_100226DF8, &type metadata accessor for Venue.StructuredAddress);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F5EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F5F6C(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5FF0(&qword_100226E40, &type metadata accessor for Sport.Competitor);
  result = sub_1000F5FF0(qword_100226E48, &type metadata accessor for Sport.Competitor);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F5FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F6038()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000F6130(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000F6FBC(a1, a2);
  return v4;
}

uint64_t sub_1000F61B0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(v3 + 168))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = a1(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_1000F6340()
{
  v1 = *v0;
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - v6;
  if (sub_10008C468(v3, v2))
  {
    v8 = 0;
  }

  else
  {
    (*(v2 + 168))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_1000232C8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

void sub_1000F64E4(uint64_t a1)
{
  v3 = *v1;
  sub_1000024C4(&qword_100221508);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B60;
  v5 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_100228B70;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_10012BCC8(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_100228B48;
  *(v4 + 72) = v7;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_100228BD0;
  *(v4 + 112) = 2;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_100228BA8;
  *(v4 + 152) = xmmword_1001BD070;
  *(v4 + 168) = 3;
  if (*(a1 + 72))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v22 = &type metadata for AnalyticsString;
  v23 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v20 = v8;
  v21 = v9;

  v10 = sub_1001894F4(1, 5, 1, v4);
  v25 = v10;
  v11 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100118768(4, v13, &v25, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v10;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_100216AC0;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1000F6844()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 176))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

id sub_1000F69D4()
{
  result = *(v0 + *(*v0 + 112));
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v2 = result;
      v3 = [result cityWithContextUsingStyle:2];

      if (v3)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000F6A7C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-v5 - 8], v1 + *(v3 + 104), v2);
  sub_1000024C4(&qword_100226ED0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_100012A7C(v9);
    return v7;
  }

  return result;
}

uint64_t sub_1000F6C0C()
{
  swift_getKeyPath();
  sub_1000F6E44();

  return *(v0 + 16);
}

uint64_t sub_1000F6C80(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F6EE4();
  }

  return result;
}

_BYTE *sub_1000F6FBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[16] = 0;
  v6 = &v2[*(v5 + 120)];
  *v6 = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  *(v6 + 3) = v9;
  v10 = *(*v2 + 128);
  *&v2[v10] = [objc_allocWithZone(EKEventStore) init];
  ObservationRegistrar.init()();
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  *&v2[*(*v2 + 112)] = a2;
  return v2;
}

uint64_t sub_1000F70FC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000F7224()
{
  sub_1000F70FC();

  return swift_deallocClassInstance();
}

__n128 sub_1000F72A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000F72B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000F72F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F73E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000024C4(&qword_100227038);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Sport.League();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7534);
}

uint64_t sub_1000F7534()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  Sport.league.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000F7D6C(v0[6]);

    v4 = v0[1];

    return v4(&_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    if (qword_100220BF8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for EventService();
    v7 = sub_10000BE10(v6, qword_100239108);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1000F76D0;

    return Sport.League.eventSchedule(service:)(v7);
  }
}

uint64_t sub_1000F76D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1000F791C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1000F77F8;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000F77F8()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  v9 = sub_1001882B4(sub_1000F7DD4, v8, v1);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000F791C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F79C8(uint64_t a1)
{
  result = sub_1000F7D24(&qword_100226F58, &type metadata accessor for Sport);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F7BD0@<X0>(uint64_t *a1@<X8>)
{
  result = Sport.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000F7C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000F73E0();
}

uint64_t sub_1000F7CA0(uint64_t a1)
{
  *(a1 + 8) = sub_1000F7D24(&qword_100227028, &type metadata accessor for Sport);
  result = sub_1000F7D24(&qword_100227030, &type metadata accessor for Sport);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F7D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F7D6C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100227038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F7E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F7EE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F7FA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtistEventRowViewModel()
{
  result = qword_1002270D0;
  if (!qword_1002270D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8090()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000F810C(uint64_t a1)
{
  result = sub_1000F8AF4(&qword_100227110, &type metadata accessor for Theater);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F8168()
{
  result = qword_100227118;
  if (!qword_100227118)
  {
    sub_10000460C(&qword_100227120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227118);
  }

  return result;
}

uint64_t sub_1000F8334()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_100225388);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_1002271F8);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8520);
}

uint64_t sub_1000F8520()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10000BE10(v4, qword_100239108);
  Theater.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Theater();
  sub_1000F8AF4(&qword_1002253C0, &type metadata accessor for Theater);
  static EventService.RequestType.theater.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000F86D8;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000F86D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1000DE330;
  }

  else
  {
    v3 = sub_1000F885C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1000F885C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1001882F4(sub_1000F8B3C, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000F89A0@<X0>(uint64_t *a1@<X8>)
{
  result = Theater.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000F89E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000F8334();
}

uint64_t sub_1000F8A70(uint64_t a1)
{
  *(a1 + 8) = sub_1000F8AF4(&qword_1002271E8, &type metadata accessor for Theater);
  result = sub_1000F8AF4(&qword_1002271F0, &type metadata accessor for Theater);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F8AF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F8B5C()
{
  result = type metadata accessor for FeaturedVideoPlayer();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F8BFC()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F8C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  sub_1000F8BFC();
  if ((*(v3 + 48))(v9, 1, v2))
  {
    (*(v7 + 8))(v9, v6);
    (*(*(a1 + 24) + 40))(v2);
    v10 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v9, v2);
    (*(v7 + 8))(v9, v6);
    v11 = *(a1 + 24);
    v12 = *(v11 + 40);
    v13 = v12(v2, v11);
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v17 = v12(v2, v11);
    if (v15)
    {
      if (v13 == v17 && v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

id sub_1000F8EE4()
{
  v0 = [objc_allocWithZone(AVPlayerViewController) init];
  v1 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 initWithURL:v3];

  [v0 setModalPresentationStyle:0];
  [v0 setExitsFullScreenWhenPlaybackEnds:1];
  [v0 setShowsPlaybackControls:1];
  [v0 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  [v0 setPlayer:v5];
  v6 = [v0 player];
  if (v6)
  {
    v7 = v6;
    swift_getWitnessTable();
    type metadata accessor for UIViewControllerRepresentableContext();
    UIViewControllerRepresentableContext.coordinator.getter();
    v8 = String._bridgeToObjectiveC()();
    [v7 addObserver:v10 forKeyPath:v8 options:1 context:0];
  }

  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  [v0 setDelegate:v10];

  return v0;
}

id sub_1000F9120()
{
  ObjectType = swift_getObjectType();
  v2 = swift_isaMask & *v0;
  if (*(v0 + *(v2 + 0x68)))
  {

    sub_1000024C4(qword_1002220B8);
    Task.cancel()();

    v2 = swift_isaMask & *v0;
  }

  if (*(v0 + *(v2 + 112)))
  {

    sub_1000024C4(qword_1002220B8);
    Task.cancel()();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000F9274(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x60);
  v3 = type metadata accessor for FeaturedVideoPlayer();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
}

uint64_t sub_1000F9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000024C4(&qword_100227368);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000F94C8);
}

uint64_t sub_1000F94C8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100220BE8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000F963C;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000F963C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000FD094;
  }

  else
  {
    v2 = sub_1000F9750;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000F976C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_1000F9968();

      (*v7)(v5, v6);
      v9 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1000F963C;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F9968()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = Notification.name.getter();
  if (qword_100220BE8 != -1)
  {
    swift_once();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_14:
    v18 = Notification.userInfo.getter();
    if (v18)
    {
      v19 = v18;
      v37[1] = 0x44496F65646976;
      v37[2] = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16))
      {
        v20 = sub_1000FBDEC(v38);
        if (v21)
        {
          sub_100026D04(*(v19 + 56) + 32 * v20, &v39);
          sub_10006065C(v38);

          if (*(&v40 + 1))
          {
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              return result;
            }

            v24 = v38[0];
            v23 = v38[1];
            if (v24 == (*(*(v2 + 88) + 40))(*(v2 + 80)) && v23 == v25)
            {
            }

            else
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v27 & 1) == 0)
              {
                return result;
              }
            }

            v34 = type metadata accessor for TaskPriority();
            (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
            type metadata accessor for MainActor();
            v35 = v1;
            v36 = static MainActor.shared.getter();
            v32 = swift_allocObject();
            v32[2] = v36;
            v32[3] = &protocol witness table for MainActor;
            v32[4] = v35;
            v33 = &unk_1001BD4F8;
            goto LABEL_30;
          }

          return sub_1000050C4(&v39, &unk_100227380);
        }
      }

      sub_10006065C(v38);
    }

    v39 = 0u;
    v40 = 0u;
    return sub_1000050C4(&v39, &unk_100227380);
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = Notification.name.getter();
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = v1;
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  v33 = &unk_1001BD4E0;
LABEL_30:
  sub_1001904E0(0, 0, v5, v33, v32);
}

uint64_t sub_1000F9E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000FCC44(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000050C4(v10, &qword_100227360);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000024C4(&qword_100227368);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000FA1FC);
}

uint64_t sub_1000FA1FC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000FA370;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000FA370()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000FA69C;
  }

  else
  {
    v2 = sub_1000FA484;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000FA4A0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_1000F9968();

      (*v7)(v5, v6);
      v9 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1000FA370;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000FA69C()
{
  *(v0 + 40) = *(v0 + 120);
  sub_1000024C4(qword_1002220B8);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000FA728()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, &v0[*((v2 & v1) + 0x60)], v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  type metadata accessor for FeaturedVideoPlayer();
  sub_1000FC300(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000FA8CC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(*(v1 - 8) + 56))(&v7 - v4, 1, 1, v1);
  type metadata accessor for FeaturedVideoPlayer();
  sub_1000FC300(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000FAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FAACC);
}

uint64_t sub_1000FAACC()
{

  sub_1000FA728();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FABC8);
}

uint64_t sub_1000FABC8()
{

  sub_1000FA8CC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000FAC2C(void *a1, void *a2)
{
  v3 = [a1 player];
  if (v3)
  {
    v4 = v3;
    [v3 rate];
    if (v5 > 0.0)
    {
      v6 = [v4 error];
      if (!v6)
      {
        v7 = 1;
        goto LABEL_6;
      }
    }

    v7 = 0;
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v11[4] = sub_1000FD054;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000FAD80;
    v11[3] = &unk_100216D20;
    v9 = _Block_copy(v11);
    v10 = v4;

    [a2 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1000FAD80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000FADE0(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1000FCFF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001001C7490;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000FAF68(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v9[2] = a3;
  v9[3] = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1000FADE0(sub_1000FCFC8, v9);

  swift_unknownObjectRelease();
}

uint64_t sub_1000FB018(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000FCF80(&qword_100220DF8, type metadata accessor for NSKeyValueChangeKey);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_1000FCCB4(v8, v10, v17, v13);

  return sub_1000050C4(v17, &unk_100227380);
}

uint64_t sub_1000FB1D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      result = type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000FB290(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v33 = *(v5 - 8);
  v6 = *(v33 + 84);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v33 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v6 - 1;
  if (!v6)
  {
    v12 = 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v12 > v11)
  {
    v11 = v12;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v6)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v13;
  v17 = *(v33 + 80);
  v18 = v17 | 7;
  if (a2 <= v11)
  {
    goto LABEL_37;
  }

  v19 = v15 + v10 - ((-17 - v17) | v17) - ((-2 - v18 - (v14 + (v16 & ~v13))) | v18);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v6 == v11)
      {
        v27 = *(v33 + 48);

        return v27(a1, v6, v5);
      }

      else
      {
        v28 = (a1 + v16) & ~v13;
        if (v9 == v11)
        {
          v29 = *(v8 + 48);

          return v29(v28);
        }

        else
        {
          v30 = ((((v14 + v28 + v18 + 1) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {
            v32 = (*(v33 + 48))((v30 + v17 + 8) & ~v17, v6, v5);
            if (v32 >= 2)
            {
              return v32 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *v30;
            if (v31 >= 0xFFFFFFFF)
            {
              LODWORD(v31) = -1;
            }

            return (v31 + 1);
          }
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_1000FB5BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for URL();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v9 - 1;
  v18 = *(v13 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!v9)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  v22 = *(v8 + 80);
  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = v15 + 1;
  }

  v24 = v23 + ((v22 + 16) & ~v22);
  v25 = v22 | 7;
  v26 = v19 + 1;
  v27 = v24 + ((v19 + 1 + ((v15 + v18) & ~v18) + (v22 | 7)) & ~(v22 | 7));
  if (a3 <= v21)
  {
LABEL_29:
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v27 > 3)
  {
    v12 = 1;
    if (v21 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v30 = ~v21 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v12 > 1)
      {
        goto LABEL_32;
      }

LABEL_69:
      if (v12)
      {
        a1[v27] = v31;
      }

      return;
    }

    v31 = (v30 >> (8 * v27)) + 1;
    if (v27)
    {
      v35 = v30 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v35;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a1 = v30;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_32:
        if (v12 == 2)
        {
          *&a1[v27] = v31;
        }

        else
        {
          *&a1[v27] = v31;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_32;
  }

  v28 = ((a3 - v21 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v28))
  {
    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v12 = v29;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  v12 = 4;
  if (v21 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v12)
  {
    goto LABEL_36;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v21)
  {
    v32 = *(v11 + 56);
    v33 = a1;
    v34 = a2;
LABEL_39:

    v32(v33, v34, v9, v7);
    return;
  }

  v36 = &a1[v15 + v18] & ~v18;
  if (v14 == v21)
  {
    v37 = *(v13 + 56);

    v37(v36, a2);
    return;
  }

  v38 = ((v26 + v36 + v25) & ~v25);
  if (v20 < a2)
  {
    if (v24 <= 3)
    {
      v39 = ~(-1 << (8 * v24));
    }

    else
    {
      v39 = -1;
    }

    if (!v24)
    {
      return;
    }

    v40 = v39 & (~v20 + a2);
    if (v24 <= 3)
    {
      v41 = v24;
    }

    else
    {
      v41 = 4;
    }

    bzero(((v26 + v36 + v25) & ~v25), v24);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_66:
        *v38 = v40;
        return;
      }

LABEL_91:
      *v38 = v40;
      return;
    }

    goto LABEL_92;
  }

  v42 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v43 = (a2 - 1);
    }

    *v42 = v43;
    return;
  }

  v44 = v42 + v22 + 8;
  v38 = (v44 & ~v22);
  if (v9)
  {
    v45 = v15;
  }

  else
  {
    v45 = (v15 + 1);
  }

  if (v17 >= a2)
  {
    v32 = *(v11 + 56);
    v34 = (a2 + 1);
    v33 = (v44 & ~v22);
    goto LABEL_39;
  }

  if (v45 <= 3)
  {
    v46 = ~(-1 << (8 * v45));
  }

  else
  {
    v46 = -1;
  }

  if (v45)
  {
    v40 = v46 & (~v17 + a2);
    if (v45 <= 3)
    {
      v41 = v45;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v45);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_66;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (v41 == 3)
    {
      *v38 = v40;
      v38[2] = BYTE2(v40);
    }

    else
    {
      *v38 = v40;
    }
  }
}

uint64_t sub_1000FBA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for FeaturedVideoPlayer();
  v11 = v10[9];
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  *(a6 + v10[10]) = a3;
  v13 = v10[11];
  type metadata accessor for Optional();
  v14 = type metadata accessor for Binding();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a4, v14);
}

void *sub_1000FBB80@<X0>(void *a1@<X8>)
{
  result = sub_1000F90E4();
  *a1 = result;
  return result;
}

uint64_t sub_1000FBBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000FBC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000FBCDC()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

NSString sub_1000FBD38()
{
  result = String._bridgeToObjectiveC()();
  qword_1002390F8 = result;
  return result;
}

NSString sub_1000FBD70()
{
  result = String._bridgeToObjectiveC()();
  qword_100239100 = result;
  return result;
}

unint64_t sub_1000FBDA8(unsigned __int8 a1)
{
  v2 = sub_10008DFB0();

  return sub_1000FBEC4(a1, v2);
}

unint64_t sub_1000FBDEC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000FC134(a1, v4);
}

unint64_t sub_1000FBE34(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000FC1FC(a1, v2);
}

unint64_t sub_1000FBEC4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7261646E656C6163;
          }

          else
          {
            v8 = 0x6E6F697461636F6CLL;
          }

          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7368801;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE700000000000000;
          v8 = 0x7473696C746573;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x676E696D6F637075;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x636973756DLL;
        }

        else
        {
          v8 = 0x7473696C79616C70;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      v10 = 0x676E696D6F637075;
      if (v6 == 5)
      {
        v10 = 0x7473696C746573;
      }

      v11 = 0xE700000000000000;
      if (v6 != 5)
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x7473696C79616C70;
      if (v6 == 3)
      {
        v12 = 0x636973756DLL;
      }

      v13 = 0xE900000000000073;
      if (v6 == 3)
      {
        v13 = 0xE500000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x7261646E656C6163;
      if (v6 != 1)
      {
        v14 = 0x6E6F697461636F6CLL;
      }

      v15 = 0xE800000000000000;
      if (!v6)
      {
        v14 = 7368801;
        v15 = 0xE300000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000FC134(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FCBE8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10006065C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000FC1FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000FC300(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

void sub_1000FC3EC(void *a1, uint64_t a2)
{
  v5 = [a1 player];
  if (v5)
  {
    if ((sub_1000F8C4C(a2) & 1) == 0 || *(v2 + *(a2 + 40)) == 1)
    {
      [v5 pause];
      [a1 setShowsPlaybackControls:0];
      [a1 setShowsPlaybackControls:1];
    }
  }
}

void *sub_1000FC4B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = swift_isaMask;
  v7 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  *&v2[*((v6 & v5) + 0x68)] = 0;
  *&v2[*((swift_isaMask & *v2) + 0x70)] = 0;
  v10 = *((swift_isaMask & *v2) + 0x60);
  v11 = *((v6 & v5) + 0x50);
  v12 = *((v6 & v5) + 0x58);
  v13 = type metadata accessor for FeaturedVideoPlayer();
  (*(*(v13 - 8) + 16))(&v2[v10], a1, v13);
  v25.receiver = v2;
  v25.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v25, "init");
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v17;
  v19 = v14;
  v20 = sub_1000F9E4C(0, 0, v9, &unk_1001BD4B0, v18);
  sub_1000050C4(v9, &qword_100227360);
  *(v19 + *((swift_isaMask & *v19) + 0x68)) = v20;

  v16(v9, 1, 1, v15);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v11;
  v22[5] = v12;
  v22[6] = v21;
  v23 = sub_1000F9E4C(0, 0, v9, &unk_1001BD4C0, v22);
  sub_1000050C4(v9, &qword_100227360);
  *(v19 + *((swift_isaMask & *v19) + 0x70)) = v23;

  return v19;
}

uint64_t sub_1000FC830()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000FC86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012AC8;

  return sub_1000F9374(a1, v4, v5, v6);
}

uint64_t sub_1000FC934()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000FC974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_1000FA0A8(a1, v4, v5, v6);
}

uint64_t sub_1000FCA40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_1000FAB30(a1, v4, v5, v6);
}

uint64_t sub_1000FCAF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000FCB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012AC8;

  return sub_1000FAA34(a1, v4, v5, v6);
}

uint64_t sub_1000FCC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100227360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FCCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (v6 = swift_isaMask & *v4, a1 == 1702125938) && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (a4)
      {
        if (*(a4 + 16))
        {
          v7 = sub_1000FBE34(NSKeyValueChangeNewKey);
          if (v8)
          {
            sub_100026D04(*(a4 + 56) + 32 * v7, v16);
            if ((swift_dynamicCast() & 1) != 0 && v15 != 0.0)
            {
              v9 = [objc_opt_self() defaultCenter];
              if (qword_100220BE8 != -1)
              {
                swift_once();
              }

              v10 = qword_1002390F8;
              sub_1000024C4(&qword_100227390);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001B49B0;
              v16[0] = 0x44496F65646976;
              v16[1] = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              v12 = (*(*(v6 + 88) + 40))(*(v6 + 80));
              *(inited + 96) = &type metadata for ResourceID;
              *(inited + 72) = v12;
              *(inited + 80) = v13;
              sub_1001A9F5C(inited);
              swift_setDeallocating();
              sub_1000050C4(inited + 32, &unk_10022BBD0);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v9 postNotificationName:v10 object:0 userInfo:isa];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000FCF80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FD01C()
{

  return swift_deallocObject();
}

id sub_1000FD054()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) play];
  }

  return result;
}

uint64_t sub_1000FD074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FD09C()
{

  v1 = OBJC_IVAR____TtC16EventViewService17PlaybackViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackViewModel()
{
  result = qword_1002273C8;
  if (!qword_1002273C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD194()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000FD23C()
{
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_1000FD600(319, &qword_100221C00, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_1000FD600(319, &qword_1002219B8, &type metadata accessor for DismissAction);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000FD35C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221B80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(qword_100224528);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000FD4AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221B80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(qword_100224528);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000FD600(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000FD730(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_1000FD794(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ArtistEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_1000FD7FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v3 = type metadata accessor for TaskPriority();
  v184 = *(v3 - 8);
  v185 = v3;
  v4 = __chkstk_darwin(v3);
  v183 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = *(a1 - 1);
  v200 = *(v206 + 64);
  __chkstk_darwin(v4);
  v195 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  type metadata accessor for Optional();
  v196 = type metadata accessor for Binding();
  v199 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v155 - v8;
  *&v208 = type metadata accessor for NavigationPath();
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v7;
  v207 = v10;
  v11 = a1[6];
  v198 = a1;
  swift_getAssociatedTypeWitness();
  v203 = v11;
  v204 = v9;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v12 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v243 = &protocol witness table for EmptyView;
  v244 = WitnessTable;
  v245 = &protocol witness table for EmptyView;
  v193 = &protocol conformance descriptor for <> Section<A, B, C>;
  v14 = swift_getWitnessTable();
  v228 = v12;
  v229 = v14;
  v192 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470);
  v246 = type metadata accessor for ModifiedContent();
  v197 = sub_10000460C(&qword_1002274D8);
  v202 = a1[7];
  v201 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v228 = v9;
  v229 = AssociatedTypeWitness;
  *&v230 = v11;
  *(&v230 + 1) = AssociatedConformanceWitness;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v17 = type metadata accessor for Button();
  v18 = type metadata accessor for PlainButtonStyle();
  v19 = swift_getWitnessTable();
  v20 = sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v228 = v17;
  v229 = v18;
  *&v230 = v19;
  *(&v230 + 1) = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for Section();
  v228 = v17;
  v229 = v18;
  *&v230 = v19;
  *(&v230 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v240 = &protocol witness table for EmptyView;
  v241 = OpaqueTypeConformance2;
  v242 = &protocol witness table for EmptyView;
  v23 = swift_getWitnessTable();
  v228 = v21;
  v229 = v23;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v247 = type metadata accessor for Optional();
  v248 = sub_10000460C(&qword_1002274E0);
  v191 = sub_10000460C(&qword_1002274E8);
  v24 = type metadata accessor for Array();
  v197 = *(*(v202 + 8) + 16);
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_10000460C(&qword_1002274F0);
  v27 = swift_getWitnessTable();
  v28 = swift_getAssociatedConformanceWitness();
  v228 = v24;
  v229 = v25;
  *&v230 = v26;
  *(&v230 + 1) = v27;
  v231 = v28;
  type metadata accessor for ForEach();
  v29 = type metadata accessor for Section();
  v239 = sub_100108FA8();
  v30 = swift_getWitnessTable();
  v236 = &protocol witness table for EmptyView;
  v237 = v30;
  v238 = &protocol witness table for EmptyView;
  v31 = swift_getWitnessTable();
  v228 = v29;
  v229 = v31;
  swift_getOpaqueTypeMetadata2();
  v249 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v32 = type metadata accessor for TupleView();
  v33 = swift_getWitnessTable();
  v228 = &type metadata for Never;
  v229 = v32;
  *&v230 = &protocol witness table for Never;
  *(&v230 + 1) = v33;
  v34 = type metadata accessor for List();
  v35 = type metadata accessor for PlainListStyle();
  v36 = swift_getWitnessTable();
  v228 = v34;
  v229 = v35;
  *&v230 = v36;
  *(&v230 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v228 = v34;
  v229 = v35;
  *&v230 = v36;
  *(&v230 + 1) = &protocol witness table for PlainListStyle;
  v38 = swift_getOpaqueTypeConformance2();
  v228 = OpaqueTypeMetadata2;
  v229 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v228 = OpaqueTypeMetadata2;
  v229 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v228 = v39;
  v229 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v228 = v39;
  v229 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v228 = v41;
  v229 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v228 = v41;
  v229 = v42;
  v44 = swift_getOpaqueTypeConformance2();
  v228 = v43;
  v229 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v228 = v43;
  v229 = v44;
  v46 = swift_getOpaqueTypeConformance2();
  v228 = v45;
  v229 = &type metadata for Bool;
  *&v230 = v46;
  *(&v230 + 1) = &protocol witness table for Bool;
  v47 = swift_getOpaqueTypeMetadata2();
  v48 = sub_10000460C(&qword_100227520);
  v228 = v45;
  v229 = &type metadata for Bool;
  *&v230 = v46;
  *(&v230 + 1) = &protocol witness table for Bool;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10000BFFC(&qword_100227528, &qword_100227520);
  v228 = v47;
  v229 = v48;
  *&v230 = v49;
  *(&v230 + 1) = v50;
  v188 = swift_getOpaqueTypeMetadata2();
  v228 = v47;
  v229 = v48;
  *&v230 = v49;
  *(&v230 + 1) = v50;
  v187 = swift_getOpaqueTypeConformance2();
  v51 = type metadata accessor for NavigationStack();
  v174 = *(v51 - 8);
  __chkstk_darwin(v51);
  v191 = &v155 - v52;
  v53 = sub_1000A62F8();
  v54 = sub_1000A634C();
  v55 = v201;
  v56 = v202;
  v228 = v201;
  v229 = &type metadata for ArtistFetcher;
  *&v230 = &type metadata for PromotionalPlaylistFetcher;
  *(&v230 + 1) = v202;
  v231 = v53;
  v232 = v54;
  v57 = type metadata accessor for MusicEventView();
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v228 = v51;
  v60 = v51;
  v161 = v58;
  v162 = v51;
  v229 = v55;
  *&v230 = v57;
  v159 = v57;
  v160 = v59;
  *(&v230 + 1) = v58;
  v61 = v197;
  v231 = v197;
  v232 = v59;
  v62 = v59;
  v189 = swift_getOpaqueTypeMetadata2();
  v179 = *(v189 - 8);
  __chkstk_darwin(v189);
  v193 = &v155 - v63;
  v64 = type metadata accessor for AppleMusicFetcher();
  v65 = sub_10010B304(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  v228 = v55;
  v229 = v64;
  *&v230 = v56;
  *(&v230 + 1) = v65;
  v66 = type metadata accessor for PromotionalAssetsView();
  v228 = v60;
  v229 = v55;
  v67 = v55;
  *&v230 = v57;
  *(&v230 + 1) = v58;
  v231 = v61;
  v232 = v62;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = swift_getWitnessTable();
  v70 = v189;
  v228 = v189;
  v229 = v67;
  v71 = v67;
  *&v230 = v66;
  v72 = v66;
  v163 = v66;
  v164 = v69;
  *(&v230 + 1) = v68;
  v165 = v68;
  v231 = v61;
  v73 = v61;
  v232 = v69;
  v74 = v69;
  v168 = swift_getOpaqueTypeMetadata2();
  v172 = *(v168 - 8);
  __chkstk_darwin(v168);
  v190 = &v155 - v75;
  v76 = type metadata accessor for ModifiedContent();
  v171 = v76;
  v181 = *(v76 - 8);
  __chkstk_darwin(v76);
  v192 = &v155 - v77;
  v228 = v70;
  v229 = v71;
  v78 = v71;
  *&v230 = v72;
  *(&v230 + 1) = v68;
  v231 = v73;
  v232 = v74;
  v166 = swift_getOpaqueTypeConformance2();
  v234 = v166;
  v235 = &protocol witness table for _AppearanceActionModifier;
  v182 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v170 = swift_getWitnessTable();
  v228 = v76;
  v229 = v170;
  v176 = &unk_1001C94C8;
  v173 = swift_getOpaqueTypeMetadata2();
  v177 = *(v173 - 8);
  __chkstk_darwin(v173);
  v167 = &v155 - v79;
  type metadata accessor for AccessibilityAttachmentModifier();
  v178 = type metadata accessor for ModifiedContent();
  v180 = *(v178 - 8);
  v80 = __chkstk_darwin(v178);
  v169 = &v155 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v175 = &v155 - v82;
  v83 = v203;
  *&v84 = v203;
  *(&v84 + 1) = v56;
  v225 = v205;
  v85 = v198;
  v86 = *(v198 + 2);
  v221 = v207;
  v222 = v86;
  v207 = *(v198 + 4);
  v208 = v86;
  v223 = v84;
  v224 = v207;
  NavigationStack.init<>(root:)();
  v87 = sub_1000FD794(v85);
  v89 = v88;
  v91 = v90;
  v92 = v204;
  v215 = v204;
  v216 = v78;
  v217 = v208;
  v218 = v83;
  v219 = v56;
  v220 = v207;
  swift_getKeyPath();
  v246 = v87;
  v247 = v89;
  v248 = v91;
  v228 = v92;
  v229 = v78;
  v230 = v208;
  v231 = v83;
  v232 = v56;
  v93 = v56;
  v233 = v207;
  type metadata accessor for ArtistEventViewModel();
  v155 = type metadata accessor for Binding();
  Binding.subscript.getter();

  v94 = v206;
  v95 = *(v206 + 16);
  v157 = v206 + 16;
  v158 = v95;
  v96 = v195;
  v97 = v198;
  v95(v195, v205, v198);
  v187 = *(v94 + 80);
  v98 = (v187 + 80) & ~v187;
  v156 = v98;
  v99 = swift_allocObject();
  v100 = v204;
  v101 = v201;
  *(v99 + 16) = v204;
  *(v99 + 24) = v101;
  v102 = v207;
  *(v99 + 32) = v208;
  *(v99 + 48) = v83;
  *(v99 + 56) = v93;
  v103 = v93;
  *(v99 + 64) = v102;
  v104 = *(v94 + 32);
  v206 = v94 + 32;
  v188 = v104;
  v105 = v97;
  v104(v99 + v98, v96, v97);
  swift_checkMetadataState();
  v106 = v194;
  v107 = v162;
  v108 = v191;
  View.sheet<A, B>(item:onDismiss:content:)();

  v109 = *(v199 + 8);
  v199 += 8;
  v161 = v109;
  v109(v106, v196);
  (*(v174 + 8))(v108, v107);
  v110 = sub_1000FD794(v105);
  v112 = v111;
  v114 = v113;
  v209 = v100;
  v210 = v101;
  v211 = v208;
  v115 = v203;
  v212 = v203;
  v213 = v103;
  v214 = v207;
  swift_getKeyPath();
  v228 = v110;
  v229 = v112;
  *&v230 = v114;
  Binding.subscript.getter();

  v116 = swift_allocObject();
  v117 = v201;
  *(v116 + 16) = v100;
  *(v116 + 24) = v117;
  v118 = v207;
  *(v116 + 32) = v208;
  *(v116 + 48) = v115;
  *(v116 + 56) = v103;
  *(v116 + 64) = v118;
  swift_checkMetadataState();
  v119 = v189;
  v120 = v117;
  v121 = v193;
  View.sheet<A, B>(item:onDismiss:content:)();

  v161(v106, v196);
  (*(v179 + 8))(v121, v119);
  v122 = v195;
  v123 = v205;
  v124 = v198;
  v125 = v158;
  v158(v195, v205, v198);
  v126 = v156;
  v127 = swift_allocObject();
  v128 = v203;
  *(v127 + 16) = v204;
  *(v127 + 24) = v120;
  v129 = v207;
  *(v127 + 32) = v208;
  v130 = v202;
  *(v127 + 48) = v128;
  *(v127 + 56) = v130;
  *(v127 + 64) = v129;
  v188(v127 + v126, v122, v124);
  v131 = v168;
  v132 = v190;
  View.onAppear(perform:)();

  (*(v172 + 8))(v132, v131);
  v125(v122, v123, v124);
  type metadata accessor for MainActor();
  v133 = static MainActor.shared.getter();
  v134 = (v187 + 96) & ~v187;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;
  *(v135 + 24) = &protocol witness table for MainActor;
  v136 = v203;
  *(v135 + 32) = v204;
  *(v135 + 40) = v120;
  v137 = v207;
  *(v135 + 48) = v208;
  v138 = v202;
  *(v135 + 64) = v136;
  *(v135 + 72) = v138;
  *(v135 + 80) = v137;
  v188(v135 + v134, v122, v124);
  v139 = v183;
  v141 = v170;
  v140 = v171;
  j___sScP13userInitiatedScPvgZ();
  v142 = v167;
  v143 = v139;
  v144 = v139;
  v145 = v192;
  sub_10000250C(0, v143, 0xD000000000000026, 0x80000001001C7540, 211, &unk_1001BD680, v135, v167, v140, v141);
  (*(v184 + 8))(v144, v185);
  (*(v181 + 8))(v145, v140);
  v228 = v140;
  v229 = v141;
  v146 = swift_getOpaqueTypeConformance2();
  v147 = v169;
  v148 = v173;
  View.accessibilityIdentifier(_:)();
  (*(v177 + 8))(v142, v148);
  v149 = sub_10010B304(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v226 = v146;
  v227 = v149;
  v150 = v178;
  v151 = swift_getWitnessTable();
  v152 = v175;
  sub_1000EE87C(v147, v150, v151);
  v153 = *(v180 + 8);
  v153(v147, v150);
  sub_1000EE87C(v152, v150, v151);
  return (v153)(v152, v150);
}

uint64_t sub_1000FEEE4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v180 = a5;
  v181 = a8;
  v179 = a4;
  v177 = a1;
  v174 = a9;
  v183 = a10;
  v210 = a2;
  v211 = a3;
  v212 = a4;
  v213 = a5;
  v214 = a6;
  v215 = a7;
  v216 = a8;
  v217 = a10;
  v178 = type metadata accessor for ArtistEventView();
  v173 = *(v178 - 8);
  v171 = *(v173 + 64);
  __chkstk_darwin(v178);
  v172 = &v125 - v14;
  v15 = type metadata accessor for ContentMarginPlacement();
  v169 = *(v15 - 8);
  v170 = v15;
  __chkstk_darwin(v15);
  v168 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v166 = *(v17 - 8);
  v167 = v17;
  __chkstk_darwin(v17);
  v165 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrollIndicatorVisibility();
  v163 = *(v19 - 8);
  v164 = v19;
  __chkstk_darwin(v19);
  v162 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for PlainListStyle();
  v161 = *(v175 - 8);
  __chkstk_darwin(v175);
  v160 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = a2;
  swift_getAssociatedTypeWitness();
  v184 = a6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v22 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v203 = &protocol witness table for EmptyView;
  v204 = WitnessTable;
  v205 = &protocol witness table for EmptyView;
  v176 = &protocol conformance descriptor for <> Section<A, B, C>;
  v24 = swift_getWitnessTable();
  v210 = v22;
  v211 = v24;
  v159 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470);
  v206 = type metadata accessor for ModifiedContent();
  v158 = sub_10000460C(&qword_1002274D8);
  v185 = a3;
  v186 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v210 = v182;
  v211 = AssociatedTypeWitness;
  v212 = a6;
  v213 = AssociatedConformanceWitness;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v27 = type metadata accessor for Button();
  v28 = type metadata accessor for PlainButtonStyle();
  v29 = swift_getWitnessTable();
  v30 = sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v210 = v27;
  v211 = v28;
  v212 = v29;
  v213 = v30;
  swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for Section();
  v210 = v27;
  v211 = v28;
  v212 = v29;
  v213 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v200 = &protocol witness table for EmptyView;
  v201 = OpaqueTypeConformance2;
  v202 = &protocol witness table for EmptyView;
  v33 = swift_getWitnessTable();
  v210 = v31;
  v211 = v33;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v207 = type metadata accessor for Optional();
  v208 = sub_10000460C(&qword_1002274E0);
  v158 = sub_10000460C(&qword_1002274E8);
  v34 = type metadata accessor for Array();
  v35 = swift_getAssociatedTypeWitness();
  v36 = sub_10000460C(&qword_1002274F0);
  v37 = swift_getWitnessTable();
  v38 = swift_getAssociatedConformanceWitness();
  v210 = v34;
  v211 = v35;
  v212 = v36;
  v213 = v37;
  v214 = v38;
  type metadata accessor for ForEach();
  v39 = type metadata accessor for Section();
  v199 = sub_100108FA8();
  v40 = swift_getWitnessTable();
  v196 = &protocol witness table for EmptyView;
  v197 = v40;
  v198 = &protocol witness table for EmptyView;
  v41 = swift_getWitnessTable();
  v210 = v39;
  v211 = v41;
  swift_getOpaqueTypeMetadata2();
  v209 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v42 = type metadata accessor for TupleView();
  v130 = v42;
  v129 = swift_getWitnessTable();
  v210 = &type metadata for Never;
  v211 = v42;
  v212 = &protocol witness table for Never;
  v213 = v129;
  v43 = type metadata accessor for List();
  v131 = *(v43 - 8);
  __chkstk_darwin(v43);
  v128 = &v125 - v44;
  v45 = swift_getWitnessTable();
  v126 = v43;
  v46 = v175;
  v210 = v43;
  v211 = v175;
  v212 = v45;
  v213 = &protocol witness table for PlainListStyle;
  v47 = v45;
  v127 = v45;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v148 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v125 = &v125 - v49;
  v210 = v43;
  v211 = v46;
  v212 = v47;
  v213 = &protocol witness table for PlainListStyle;
  v50 = swift_getOpaqueTypeConformance2();
  v210 = OpaqueTypeMetadata2;
  v211 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v155 = *(v51 - 8);
  __chkstk_darwin(v51);
  v152 = &v125 - v52;
  v150 = OpaqueTypeMetadata2;
  v210 = OpaqueTypeMetadata2;
  v211 = v50;
  v133 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v210 = v51;
  v211 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v151 = *(v54 - 8);
  __chkstk_darwin(v54);
  v144 = &v125 - v55;
  v158 = v51;
  v210 = v51;
  v211 = v53;
  v141 = v53;
  v56 = swift_getOpaqueTypeConformance2();
  v210 = v54;
  v211 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v145 = *(v57 - 8);
  __chkstk_darwin(v57);
  v138 = &v125 - v58;
  v153 = v54;
  v210 = v54;
  v211 = v56;
  v135 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v210 = v57;
  v211 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v157 = *(v60 - 8);
  __chkstk_darwin(v60);
  v176 = &v125 - v61;
  v146 = v57;
  v210 = v57;
  v211 = v59;
  v132 = v59;
  v62 = swift_getOpaqueTypeConformance2();
  v210 = v60;
  v211 = &type metadata for Bool;
  v212 = v62;
  v213 = &protocol witness table for Bool;
  v63 = swift_getOpaqueTypeMetadata2();
  v154 = *(v63 - 8);
  __chkstk_darwin(v63);
  v149 = &v125 - v64;
  v65 = sub_10000460C(&qword_100227520);
  v159 = v60;
  v210 = v60;
  v211 = &type metadata for Bool;
  v140 = v62;
  v212 = v62;
  v213 = &protocol witness table for Bool;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_10000BFFC(&qword_100227528, &qword_100227520);
  v156 = v63;
  v210 = v63;
  v211 = v65;
  v147 = v65;
  v68 = v125;
  v139 = v66;
  v212 = v66;
  v213 = v67;
  v137 = v67;
  v69 = swift_getOpaqueTypeMetadata2();
  v142 = *(v69 - 8);
  v143 = v69;
  v70 = __chkstk_darwin(v69);
  v134 = &v125 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v136 = &v125 - v72;
  v187 = v182;
  v188 = v185;
  v189 = v179;
  v190 = v180;
  v191 = v184;
  v192 = v186;
  v193 = v181;
  v194 = v183;
  v73 = v177;
  v195 = v177;
  v74 = v128;
  List<>.init(content:)();
  v75 = v160;
  PlainListStyle.init()();
  v76 = v126;
  v77 = v175;
  View.listStyle<A>(_:)();
  (*(v161 + 8))(v75, v77);
  (*(v131 + 8))(v74, v76);
  v78 = v162;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v36) = static Axis.Set.vertical.getter();
  *(inited + 32) = v36;
  v80 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v80;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v36)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  v81 = v152;
  v82 = v150;
  View.scrollIndicators(_:axes:)();
  (*(v163 + 8))(v78, v164);
  (*(v148 + 8))(v68, v82);
  v83 = v73;
  sub_1000FD730(v178);
  v84 = sub_10007CFDC();

  v210 = v84;
  v85 = v185;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.isEmpty.getter();

  v86 = v144;
  v87 = v158;
  View.scrollDisabled(_:)();
  (*(v155 + 8))(v81, v87);
  v89 = v165;
  v88 = v166;
  v90 = v167;
  (*(v166 + 104))(v165, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v167);
  v91 = v138;
  v92 = v153;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v88 + 8))(v89, v90);
  (*(v151 + 8))(v86, v92);
  static Edge.Set.top.getter();
  v93 = v168;
  static ContentMarginPlacement.automatic.getter();
  v94 = v146;
  View.contentMargins(_:_:for:)();
  (*(v169 + 8))(v93, v170);
  (*(v145 + 8))(v91, v94);
  v96 = v172;
  v95 = v173;
  v97 = v178;
  (*(v173 + 16))(v172, v83, v178);
  v98 = (*(v95 + 80) + 80) & ~*(v95 + 80);
  v99 = swift_allocObject();
  v100 = v181;
  v101 = v182;
  *(v99 + 2) = v182;
  *(v99 + 3) = v85;
  v103 = v179;
  v102 = v180;
  *(v99 + 4) = v179;
  *(v99 + 5) = v102;
  v104 = v186;
  *(v99 + 6) = v184;
  *(v99 + 7) = v104;
  v105 = v183;
  *(v99 + 8) = v100;
  *(v99 + 9) = v105;
  (*(v95 + 32))(&v99[v98], v96, v97);
  v124 = &protocol witness table for Bool;
  v106 = v149;
  v107 = v159;
  v108 = v176;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v109 = (*(v157 + 8))(v108, v107);
  __chkstk_darwin(v109);
  v111 = v184;
  v110 = v185;
  *(&v125 - 10) = v101;
  *(&v125 - 9) = v110;
  *(&v125 - 8) = v103;
  *(&v125 - 7) = v102;
  v112 = v186;
  *(&v125 - 6) = v111;
  *(&v125 - 5) = v112;
  v113 = v183;
  *(&v125 - 4) = v100;
  *(&v125 - 3) = v113;
  v124 = v177;
  v114 = v134;
  v115 = v156;
  v116 = v147;
  v117 = v139;
  v118 = v137;
  View.toolbar<A>(content:)();
  (*(v154 + 8))(v106, v115);
  v210 = v115;
  v211 = v116;
  v212 = v117;
  v213 = v118;
  v119 = swift_getOpaqueTypeConformance2();
  v120 = v136;
  v121 = v143;
  sub_1000EE87C(v114, v143, v119);
  v122 = *(v142 + 8);
  v122(v114, v121);
  sub_1000EE87C(v120, v121, v119);
  return (v122)(v120, v121);
}

uint64_t sub_100100330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v353 = a8;
  v355 = a5;
  v349 = a4;
  v354 = a2;
  v357 = a1;
  v328 = a9;
  v356 = a10;
  v321 = type metadata accessor for Array();
  v399 = v321;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v401 = sub_10000460C(&qword_1002274F0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v309 = *(v14 - 8);
  __chkstk_darwin(v14);
  v306 = v261 - v15;
  v416 = sub_100108FA8();
  v307 = v13;
  v16 = swift_getWitnessTable();
  v413 = &protocol witness table for EmptyView;
  v414 = v16;
  v302 = v16;
  v415 = &protocol witness table for EmptyView;
  v345 = &protocol conformance descriptor for <> Section<A, B, C>;
  v17 = swift_getWitnessTable();
  v340 = v14;
  v399 = v14;
  v339 = v17;
  AssociatedTypeWitness = v17;
  v331 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v308 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v305 = v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v304 = v261 - v21;
  v325 = sub_1000024C4(&qword_100227560);
  __chkstk_darwin(v325);
  v300 = v261 - v22;
  v23 = sub_1000024C4(&qword_1002274E8);
  v303 = *(v23 - 8);
  __chkstk_darwin(v23);
  v301 = v261 - v24;
  v322 = v25;
  v323 = OpaqueTypeMetadata2;
  v327 = type metadata accessor for _ConditionalContent();
  v326 = *(v327 - 8);
  v26 = __chkstk_darwin(v327);
  v338 = v261 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v324 = v261 - v28;
  v29 = sub_1000024C4(&qword_100227568);
  v318 = *(v29 - 8);
  v319 = v29;
  __chkstk_darwin(v29);
  v299 = v261 - v30;
  v296 = sub_1000024C4(&qword_100227570);
  v294 = *(v296 - 8);
  __chkstk_darwin(v296);
  v292 = v261 - v31;
  v295 = sub_1000024C4(&qword_100227578);
  __chkstk_darwin(v295);
  v293 = v261 - v32;
  v33 = sub_1000024C4(&qword_100227580);
  v34 = __chkstk_darwin(v33 - 8);
  v298 = v261 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v297 = v261 - v36;
  v37 = sub_1000024C4(&qword_100224F20);
  v283 = *(v37 - 8);
  v284 = v37;
  __chkstk_darwin(v37);
  v282 = v261 - v38;
  v39 = sub_1000024C4(&qword_100227588);
  v288 = *(v39 - 8);
  v289 = v39;
  __chkstk_darwin(v39);
  v287 = v261 - v40;
  v286 = sub_1000024C4(&qword_100227590);
  v41 = __chkstk_darwin(v286);
  v291 = v261 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v285 = v261 - v44;
  __chkstk_darwin(v43);
  v290 = v261 - v45;
  v320 = sub_1000024C4(&qword_1002274E0);
  v46 = __chkstk_darwin(v320);
  v337 = v261 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v348 = v261 - v48;
  v351 = a7;
  v352 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v354;
  v399 = v354;
  AssociatedTypeWitness = v49;
  v52 = a6;
  v401 = a6;
  WitnessTable = v50;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v53 = type metadata accessor for Button();
  v54 = type metadata accessor for PlainButtonStyle();
  v55 = swift_getWitnessTable();
  v56 = sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v399 = v53;
  AssociatedTypeWitness = v54;
  v401 = v55;
  WitnessTable = v56;
  v263 = swift_getOpaqueTypeMetadata2();
  v57 = type metadata accessor for Section();
  v264 = *(v57 - 8);
  __chkstk_darwin(v57);
  v262 = v261 - v58;
  v399 = v53;
  AssociatedTypeWitness = v54;
  v401 = v55;
  WitnessTable = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v410 = &protocol witness table for EmptyView;
  v411 = OpaqueTypeConformance2;
  v261[1] = OpaqueTypeConformance2;
  v412 = &protocol witness table for EmptyView;
  v60 = swift_getWitnessTable();
  v342 = v57;
  v399 = v57;
  v341 = v60;
  AssociatedTypeWitness = v60;
  v61 = swift_getOpaqueTypeMetadata2();
  v268 = *(v61 - 8);
  __chkstk_darwin(v61);
  v266 = v261 - v62;
  v344 = sub_10000460C(&qword_100223470);
  v269 = v61;
  v63 = type metadata accessor for ModifiedContent();
  v271 = *(v63 - 8);
  v64 = __chkstk_darwin(v63);
  v270 = v261 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v265 = v261 - v67;
  __chkstk_darwin(v66);
  v267 = v261 - v68;
  v69 = sub_1000024C4(&qword_100227598);
  v276 = *(v69 - 8);
  v277 = v69;
  __chkstk_darwin(v69);
  v275 = v261 - v70;
  v71 = sub_1000024C4(&qword_1002275A0);
  v279 = *(v71 - 8);
  v280 = v71;
  __chkstk_darwin(v71);
  v274 = v261 - v72;
  v73 = sub_1000024C4(&qword_1002274D8);
  v74 = __chkstk_darwin(v73);
  v278 = v261 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v281 = v261 - v76;
  v77 = v355;
  v78 = swift_getAssociatedTypeWitness();
  v329 = v78;
  v79 = type metadata accessor for Optional();
  v272 = *(v79 - 8);
  v273 = v79;
  v80 = __chkstk_darwin(v79);
  v314 = (v261 - v81);
  v312 = *(v78 - 8);
  __chkstk_darwin(v80);
  v313 = v261 - v82;
  v310 = v73;
  v336 = v63;
  v333 = type metadata accessor for _ConditionalContent();
  v335 = type metadata accessor for Optional();
  v334 = *(v335 - 8);
  v83 = __chkstk_darwin(v335);
  v347 = v261 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v346 = v261 - v85;
  v350 = v52;
  v86 = v51;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader();
  v87 = type metadata accessor for Section();
  v330 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = v261 - v88;
  v90 = swift_getWitnessTable();
  v407 = &protocol witness table for EmptyView;
  v408 = v90;
  v409 = &protocol witness table for EmptyView;
  v315 = swift_getWitnessTable();
  v399 = v87;
  AssociatedTypeWitness = v315;
  v91 = swift_getOpaqueTypeMetadata2();
  v92 = *(v91 - 8);
  v316 = v91;
  v317 = v92;
  __chkstk_darwin(v91);
  v311 = v261 - v93;
  v345 = type metadata accessor for ModifiedContent();
  v332 = *(v345 - 1);
  v94 = __chkstk_darwin(v345);
  v344 = v261 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v94);
  v343 = v261 - v96;
  v358 = v86;
  v97 = v352;
  v359 = v352;
  v98 = v349;
  v360 = v349;
  v361 = v77;
  v99 = v350;
  v362 = v350;
  v363 = v351;
  v364 = v353;
  v100 = v356;
  v365 = v356;
  v366 = v357;
  v101 = v351;
  v102 = v353;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v103 = v315;
  View.listSectionSeparator(_:edges:)();
  (*(v330 + 8))(v89, v87);
  v399 = v354;
  AssociatedTypeWitness = v97;
  v401 = v98;
  WitnessTable = v355;
  AssociatedConformanceWitness = v99;
  v404 = v101;
  v405 = v102;
  v406 = v100;
  v104 = type metadata accessor for ArtistEventView();
  sub_100102F34(v104);
  v399 = v105;
  AssociatedTypeWitness = v106;
  v401 = v107;
  WitnessTable = v108;
  LOBYTE(AssociatedConformanceWitness) = 0;
  v417 = *&v87;
  v418 = *&v103;
  v109 = swift_getOpaqueTypeConformance2();
  v110 = v344;
  v111 = v316;
  v112 = v311;
  View.listRowInsets(_:)();
  (*(v317 + 8))(v112, v111);
  v113 = sub_10000BFFC(&qword_100223468, &qword_100223470);
  v397 = v109;
  v114 = v329;
  v331 = v113;
  v398 = v113;
  v115 = v345;
  v315 = swift_getWitnessTable();
  sub_1000EE87C(v110, v115, v315);
  v116 = v332 + 8;
  v316 = *(v332 + 8);
  v316(v110, v115);
  v117 = v312;
  sub_1000FD730(v104);
  v118 = v314;
  sub_100077580(v314);
  v119 = v118;

  v120 = (*(v117 + 48))(v118, 1, v114);
  v317 = v116;
  v330 = v104;
  if (v120 != 1)
  {
    v134 = v313;
    v135 = (*(v117 + 32))(v313, v119, v114);
    __chkstk_darwin(v135);
    v136 = v352;
    v261[-10] = v354;
    v261[-9] = v136;
    v137 = v355;
    v261[-8] = v349;
    v261[-7] = v137;
    v138 = v351;
    v261[-6] = v350;
    v261[-5] = v138;
    v139 = v356;
    v261[-4] = v353;
    v261[-3] = v139;
    v140 = v357;
    v261[-2] = v134;
    v261[-1] = v140;
    type metadata accessor for PromotionalPlaylistModule();
    sub_10010B304(&qword_1002275B8, type metadata accessor for PromotionalPlaylistModule);
    v141 = v275;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_100109C98();
    v142 = v274;
    v143 = v277;
    View.listSectionSeparator(_:edges:)();
    (*(v276 + 8))(v141, v143);
    v144 = *(v140 + 16);
    if (!v144)
    {
      goto LABEL_41;
    }

    if (*(v144 + 88) && *(v144 + 80) == 1)
    {
    }

    else
    {
      v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v145 & 1) == 0)
      {

        goto LABEL_20;
      }
    }

    v146 = [objc_opt_self() currentDevice];
    v147 = v142;
    v148 = [v146 userInterfaceIdiom];

    v149 = v148 == 1;
    v142 = v147;
    if (v149)
    {
      v150 = v117;
      v151 = 13.0;
      v152 = 28.0;
      v153 = 100.0;
LABEL_21:
      v166 = v278;
      (*(v279 + 32))(v278, v142, v280);
      v167 = v310;
      v168 = v166 + *(v310 + 36);
      *v168 = v152;
      *(v168 + 8) = v153;
      *(v168 + 16) = v151;
      *(v168 + 24) = v153;
      *(v168 + 32) = 0;
      v169 = v281;
      sub_10001AE00(v166, v281, &qword_1002274D8);
      v170 = sub_100109BA4();
      v417 = *&v342;
      v418 = *&v341;
      v369 = swift_getOpaqueTypeConformance2();
      v370 = v331;
      v171 = swift_getWitnessTable();
      v172 = v347;
      sub_10017387C(v169, v167);
      sub_1000050C4(v169, &qword_1002274D8);
      (*(*(v333 - 8) + 56))(v172, 0, 1, v333);
      v367 = v170;
      v368 = v171;
      swift_getWitnessTable();
      sub_1000E7690(v172, v346);
      v314 = *(v334 + 8);
      v314(v172, v335);
      (*(v150 + 8))(v313, v329);
      v157 = v350;
      v158 = v356;
      v123 = v349;
      v159 = v352;
      goto LABEL_25;
    }

LABEL_20:
    v150 = v117;
    v153 = 16.0;
    v151 = 13.0;
    v152 = 28.0;
    goto LABEL_21;
  }

  v121 = v352;
  v122 = v356;
  v123 = v349;
  v124 = v355;
  v125 = v350;
  (*(v272 + 8))(v118, v273);
  sub_1000FD730(v104);
  v126 = sub_100078144();

  if ((v126 & 1) == 0)
  {
    v154 = v347;
    (*(*(v333 - 8) + 56))(v347, 1, 1, v333);
    v155 = sub_100109BA4();
    v417 = *&v342;
    v418 = *&v341;
    v395 = swift_getOpaqueTypeConformance2();
    v396 = v331;
    v156 = swift_getWitnessTable();
    v393 = v155;
    v394 = v156;
    swift_getWitnessTable();
    sub_1000E7690(v154, v346);
    v314 = *(v334 + 8);
    v314(v154, v335);
    v157 = v125;
    v158 = v122;
    v159 = v121;
    goto LABEL_25;
  }

  __chkstk_darwin(v127);
  v261[-10] = v354;
  v261[-9] = v121;
  v261[-8] = v123;
  v261[-7] = v124;
  v128 = v351;
  v261[-6] = v125;
  v261[-5] = v128;
  v261[-4] = v353;
  v261[-3] = v122;
  v129 = v357;
  v261[-2] = v357;
  v130 = v262;
  Section<>.init(content:)();
  static VerticalEdge.Set.all.getter();
  v131 = v266;
  v132 = v342;
  View.listSectionSeparator(_:edges:)();
  (*(v264 + 8))(v130, v132);
  v133 = *(v129 + 16);
  if (!v133)
  {
    goto LABEL_41;
  }

  if (*(v133 + 88) && *(v133 + 80) == 1)
  {
  }

  else
  {
    v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v160 & 1) == 0)
    {

      goto LABEL_23;
    }
  }

  v161 = [objc_opt_self() currentDevice];
  v162 = [v161 userInterfaceIdiom];

  if (v162 != 1)
  {
LABEL_23:
    v165 = 16.0;
    v163 = 13.0;
    v164 = 28.0;
    goto LABEL_24;
  }

  v163 = 13.0;
  v164 = 28.0;
  v165 = 100.0;
LABEL_24:
  v417 = v164;
  v418 = v165;
  v419 = v163;
  v420 = v165;
  v421 = 0;
  v389 = v342;
  v390 = v341;
  v173 = swift_getOpaqueTypeConformance2();
  v174 = v265;
  v175 = v269;
  View.listRowInsets(_:)();
  (*(v268 + 8))(v131, v175);
  v373 = v173;
  v374 = v331;
  v176 = v336;
  v177 = swift_getWitnessTable();
  v178 = v267;
  sub_1000EE87C(v174, v176, v177);
  v179 = *(v271 + 8);
  v179(v174, v176);
  v180 = v270;
  sub_1000EE87C(v178, v176, v177);
  v181 = sub_100109BA4();
  v182 = v347;
  sub_100173974(v180, v310, v176);
  v179(v180, v176);
  v179(v178, v176);
  (*(*(v333 - 8) + 56))(v182, 0, 1, v333);
  v371 = v181;
  v372 = v177;
  swift_getWitnessTable();
  sub_1000E7690(v182, v346);
  v314 = *(v334 + 8);
  v314(v182, v335);
  v159 = v352;
  v157 = v350;
  v158 = v356;
LABEL_25:
  v183 = v330;
  sub_1000FD730(v330);
  v184 = sub_100077A5C();

  if (v184)
  {
    __chkstk_darwin(v185);
    v261[-10] = v354;
    v261[-9] = v159;
    v186 = v355;
    v261[-8] = v123;
    v261[-7] = v186;
    v187 = v351;
    v261[-6] = v157;
    v261[-5] = v187;
    v261[-4] = v353;
    v261[-3] = v158;
    v188 = v357;
    v261[-2] = v357;
    sub_1000024C4(&qword_100225078);
    sub_100109F08(&qword_100225080, &qword_100225078, &unk_1001BA4E0, sub_1000A6EF4);
    v189 = v282;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_1000A6FC4();
    v190 = v287;
    v191 = v284;
    View.listSectionSeparator(_:edges:)();
    (*(v283 + 8))(v189, v191);
    v192 = *(v188 + 16);
    if (v192)
    {
      if (*(v192 + 88) && *(v192 + 80) == 1)
      {

        v193 = v354;
      }

      else
      {
        v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v193 = v354;
        if ((v198 & 1) == 0)
        {

          goto LABEL_35;
        }
      }

      v199 = [objc_opt_self() currentDevice];
      v200 = [v199 userInterfaceIdiom];

      if (v200 == 1)
      {
        v201 = 2.0;
        v202 = 100.0;
LABEL_36:
        v203 = v285;
        (*(v288 + 32))(v285, v190, v289);
        v204 = v203 + *(v286 + 36);
        *v204 = 0;
        *(v204 + 8) = v202;
        *(v204 + 16) = v201;
        *(v204 + 24) = v202;
        *(v204 + 32) = 0;
        v205 = v290;
        v206 = sub_10001AE00(v203, v290, &qword_100227590);
        __chkstk_darwin(v206);
        v207 = v352;
        v261[-10] = v193;
        v261[-9] = v207;
        v208 = v355;
        v261[-8] = v349;
        v261[-7] = v208;
        v209 = v351;
        v261[-6] = v157;
        v261[-5] = v209;
        v210 = v356;
        v261[-4] = v353;
        v261[-3] = v210;
        v261[-2] = v357;
        sub_1000024C4(&qword_1002275D8);
        sub_10000BFFC(&qword_1002275E0, &qword_1002275D8);
        v211 = v292;
        Section<>.init(content:)();
        static VerticalEdge.Set.all.getter();
        sub_100109FD4();
        v212 = v293;
        v213 = v296;
        View.listSectionSeparator(_:edges:)();
        (*(v294 + 8))(v211, v213);
        v214 = v212 + *(v295 + 36);
        *v214 = 0;
        *(v214 + 8) = 0;
        *(v214 + 16) = xmmword_1001B6770;
        *(v214 + 32) = 0;
        sub_10010A090();
        v215 = v297;
        View.accessibilityIdentifier(_:)();
        sub_1000050C4(v212, &qword_100227578);
        v216 = v205;
        v217 = v205;
        v218 = v291;
        sub_10000BEB8(v217, v291, &qword_100227590);
        v219 = v298;
        sub_10000BEB8(v215, v298, &qword_100227580);
        v220 = v299;
        sub_10000BEB8(v218, v299, &qword_100227590);
        v221 = sub_1000024C4(&qword_1002275F8);
        sub_10000BEB8(v219, v220 + *(v221 + 48), &qword_100227580);
        sub_1000050C4(v215, &qword_100227580);
        sub_1000050C4(v216, &qword_100227590);
        v123 = v349;
        v159 = v352;
        sub_1000050C4(v219, &qword_100227580);
        v196 = v355;
        sub_1000050C4(v218, &qword_100227590);
        v195 = v348;
        sub_10001AE00(v220, v348, &qword_100227568);
        v194 = 0;
        v197 = v340;
        v183 = v330;
        goto LABEL_37;
      }

LABEL_35:
      v202 = 16.0;
      v201 = 2.0;
      goto LABEL_36;
    }

LABEL_41:
    type metadata accessor for RemoteViewConfiguration();
    sub_10010B304(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v194 = 1;
  v195 = v348;
  v196 = v355;
  v197 = v340;
LABEL_37:
  (*(v318 + 56))(v195, v194, 1, v319);
  v222 = v357;
  sub_1000FD730(v183);
  v223 = sub_10007CFDC();

  v389 = v223;
  swift_getWitnessTable();
  v224 = Collection.isEmpty.getter();

  __chkstk_darwin(v225);
  v261[-10] = v354;
  v261[-9] = v159;
  v261[-8] = v123;
  v261[-7] = v196;
  v226 = v351;
  v261[-6] = v350;
  v261[-5] = v226;
  v227 = v356;
  v261[-4] = v353;
  v261[-3] = v227;
  v261[-2] = v222;
  if (v224)
  {
    sub_1000024C4(&qword_1002250B8);
    sub_100109F08(&qword_1002250B0, &qword_1002250B8, &unk_1001BD7B0, sub_1000A7230);
    v228 = v300;
    Section<>.init(content:)();
    v229 = v325;
    v230 = v228 + *(v325 + 36);
    *v230 = 0x4049000000000000;
    *(v230 + 8) = 0;
    *(v230 + 16) = 0;
    *(v230 + 24) = 0;
    *(v230 + 32) = 0;
    static VerticalEdge.Set.all.getter();
    v231 = sub_100109D70();
    v232 = v301;
    View.listSectionSeparator(_:edges:)();
    sub_1000050C4(v228, &qword_100227560);
    v389 = v229;
    v390 = v231;
    swift_getOpaqueTypeConformance2();
    v389 = v197;
    v390 = v339;
    swift_getOpaqueTypeConformance2();
    v233 = v324;
    v234 = v322;
    sub_10017387C(v232, v322);
    (*(v303 + 8))(v232, v234);
  }

  else
  {
    v235 = v306;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    v236 = v305;
    v237 = v339;
    View.listSectionSeparator(_:edges:)();
    (*(v309 + 8))(v235, v197);
    v389 = v197;
    v390 = v237;
    v238 = swift_getOpaqueTypeConformance2();
    v239 = v304;
    v240 = v323;
    sub_1000EE87C(v236, v323, v238);
    v241 = *(v308 + 8);
    v241(v236, v240);
    sub_1000EE87C(v239, v240, v238);
    v242 = sub_100109D70();
    v229 = v325;
    v389 = v325;
    v390 = v242;
    swift_getOpaqueTypeConformance2();
    v233 = v324;
    sub_100173974(v236, v322, v240);
    v241(v236, v240);
    v241(v239, v240);
  }

  v243 = v344;
  v244 = v345;
  (*(v332 + 16))(v344, v343);
  v389 = v243;
  v245 = v347;
  v246 = v335;
  (*(v334 + 16))(v347, v346, v335);
  v390 = v245;
  v247 = v337;
  sub_10000BEB8(v348, v337, &qword_1002274E0);
  v391 = v247;
  v248 = v326;
  v249 = v338;
  v250 = v327;
  (*(v326 + 16))(v338, v233, v327);
  v392 = v249;
  v388[0] = v244;
  v388[1] = v246;
  v388[2] = v320;
  v388[3] = v250;
  v384 = v315;
  v251 = sub_100109BA4();
  v382 = v342;
  v383 = v341;
  v380 = swift_getOpaqueTypeConformance2();
  v381 = v331;
  v252 = swift_getWitnessTable();
  v378 = v251;
  v379 = v252;
  v377 = swift_getWitnessTable();
  v385 = swift_getWitnessTable();
  v386 = sub_100109E28();
  v253 = sub_100109D70();
  v382 = v229;
  v383 = v253;
  v254 = swift_getOpaqueTypeConformance2();
  v382 = v340;
  v383 = v339;
  v255 = swift_getOpaqueTypeConformance2();
  v375 = v254;
  v376 = v255;
  v387 = swift_getWitnessTable();
  sub_1000E76FC(&v389, 4uLL, v388);
  v256 = *(v248 + 8);
  v256(v233, v250);
  sub_1000050C4(v348, &qword_1002274E0);
  v257 = v314;
  v314(v346, v246);
  v258 = v345;
  v259 = v316;
  v316(v343, v345);
  v256(v338, v250);
  sub_1000050C4(v337, &qword_1002274E0);
  v257(v347, v246);
  return v259(v344, v258);
}