void sub_1006BE990()
{
  if (!qword_100CD1E88)
  {
    sub_10022E824(&qword_100CA4D38);
    sub_100006F64(&qword_100CA4D40, &qword_100CA4D38);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD1E88);
    }
  }
}

void sub_1006BEA34()
{
  if (!qword_100CD1E90)
  {
    sub_10022E824(&qword_100CA6BC0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD1E90);
    }
  }
}

unint64_t sub_1006BEA98()
{
  result = qword_100CD1E98;
  if (!qword_100CD1E98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CD1E98);
  }

  return result;
}

uint64_t sub_1006BEB10@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v76 = sub_10022C350(&unk_100CE1680);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v90 = &v73 - v3;
  v4 = type metadata accessor for MoonScrubberView();
  v85 = *(v4 - 8);
  v5 = (v4 - 8);
  __chkstk_darwin(v4 - 8);
  v86 = v6;
  v87 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CA6BC0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v88 = &v73 - v8;
  type metadata accessor for Date();
  sub_1000037C4();
  v92 = v10;
  v93 = v9;
  __chkstk_darwin(v9);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v73 - v13;
  v14 = type metadata accessor for MoonScrubberViewModel();
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v24 = type metadata accessor for ScrubberView(0);
  v78 = v24;
  __chkstk_darwin(v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10022C350(&qword_100CD1ED8);
  sub_1000037C4();
  v74 = v27;
  __chkstk_darwin(v28);
  v84 = &v73 - v29;
  v31 = v5[8];
  v30 = v5[9];
  v79 = v5;
  v32 = *(v1 + v30);
  sub_100035B30(v1 + v31, (v26 + 8));
  v33 = v5[10];
  v94 = v1;
  v80 = *(v1 + v33);
  v34 = *(v1 + 8);

  sub_100989B78();
  v82 = *&v23[v15[10]];

  sub_1006BF7B0(v23, type metadata accessor for MoonScrubberViewModel);
  sub_100989B78();
  v35 = *&v20[v15[11]];

  sub_1006BF7B0(v20, type metadata accessor for MoonScrubberViewModel);
  sub_100989B78();
  v36 = v15[12];
  v37 = &v26[*(v24 + 40)];
  v38 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v39 + 16))(&v37[v38], &v17[v36]);
  sub_1006BF7B0(v17, type metadata accessor for MoonScrubberViewModel);
  *v37 = v82;
  *(v37 + 1) = v35;
  v40 = v78;
  v82 = v34;
  sub_100989B78();
  v41 = *(v92 + 16);
  v41(v91, &v23[v15[9]], v93);
  v81 = v23;
  sub_1006BF7B0(v23, type metadata accessor for MoonScrubberViewModel);
  sub_10022C350(&qword_100CD1E18);
  State.projectedValue.getter();
  *&v26[v40[20]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  *v26 = v32;
  *(v26 + 6) = v80;
  if (qword_100CA2910 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v26 + 7) = sub_10085834C();
  *(v26 + 8) = sub_1008583AC();
  *(v26 + 9) = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  v42 = &v26[v40[11]];
  v98 = 0;
  sub_100004880();
  State.init(wrappedValue:)();
  v43 = *(&v95 + 1);
  *v42 = v95;
  *(v42 + 1) = v43;
  v44 = &v26[v40[12]];
  v98 = 0;
  LOBYTE(v99) = 1;
  sub_10022C350(&qword_100CA6188);
  sub_100004880();
  State.init(wrappedValue:)();
  v45 = BYTE8(v95);
  v46 = v96;
  *v44 = v95;
  v44[8] = v45;
  *(v44 + 2) = v46;
  v47 = v91;
  v48 = v93;
  v41(v83, v91, v93);
  State.init(wrappedValue:)();
  (*(v92 + 8))(v47, v48);
  sub_100014CEC();
  sub_100008CE0();
  sub_100014CEC();
  sub_100008CE0();
  v49 = &v26[v40[16]];
  v98 = 0;
  v99 = 0;
  sub_100004880();
  State.init(wrappedValue:)();
  v50 = v96;
  *v49 = v95;
  *(v49 + 2) = v50;
  sub_100014CEC();
  sub_100008CE0();
  v51 = &v26[v40[18]];
  LOBYTE(v98) = 1;
  sub_100004880();
  State.init(wrappedValue:)();
  v52 = *(&v95 + 1);
  *v51 = v95;
  *(v51 + 1) = v52;
  v53 = &v26[v40[21]];
  *v53 = FocusState.init<>()() & 1;
  *(v53 + 1) = v54;
  v53[16] = v55 & 1;
  v56 = v81;
  sub_100989B78();
  v57 = v88;
  sub_1002ACB5C(v56, v88);
  sub_1006BF7B0(v56, type metadata accessor for MoonScrubberViewModel);
  v58 = v87;
  sub_1006BF5B4(v94, v87);
  v59 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v60 = swift_allocObject();
  sub_1006BF618(v58, v60 + v59);
  sub_100010848();
  v63 = sub_1006BF808(v61, v62);
  v64 = sub_1006BF6FC();
  v65 = v84;
  v66 = v89;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v57, &qword_100CA6BC0);
  sub_1006BF7B0(v26, type metadata accessor for ScrubberView);
  v67 = enum case for DynamicTypeSize.xxLarge(_:);
  v68 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  v70 = v90;
  (*(v69 + 104))(v90, v67, v68);
  sub_1006BF808(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *&v95 = v40;
    *(&v95 + 1) = v66;
    v96 = v63;
    v97 = v64;
    sub_100008CC8();
    swift_getOpaqueTypeConformance2();
    sub_10000652C(&qword_100CA53C8);
    v72 = v75;
    View.dynamicTypeSize<A>(_:)();
    sub_1000180EC(v70, &unk_100CE1680);
    return (*(v74 + 8))(v65, v72);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006BF4A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&qword_100CA6BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1002ACB5C(a2, &v10 - v7);
  type metadata accessor for MoonScrubberView();
  sub_1002ACB5C(v8, v5);
  sub_10022C350(&qword_100CD1E18);
  State.wrappedValue.setter();
  return sub_1000180EC(v8, &qword_100CA6BC0);
}

uint64_t sub_1006BF5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BF618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonScrubberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BF67C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MoonScrubberView();

  return sub_1006BF4A8(a1, a2);
}

unint64_t sub_1006BF6FC()
{
  result = qword_100CD1EE8;
  if (!qword_100CD1EE8)
  {
    sub_10022E824(&qword_100CA6BC0);
    sub_1006BF808(&qword_100CD1EF0, type metadata accessor for ScrubberDateSelection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1EE8);
  }

  return result;
}

uint64_t sub_1006BF7B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1006BF808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006BF858(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1006BF898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1006BF92C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1006BF918(v2 | *a1, v3 | *a2);
}

uint64_t sub_1006BF95C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CC3D28);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  type metadata accessor for MainActor();
  sub_1006BFF58(v1, &v21);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10001CABC(v9);
  sub_1006BFF58(v1, &v21);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10001CABC(v11);
  Binding.init(get:set:)();
  sub_10022C350(&qword_100CB8160);
  sub_100422844();
  Toggle.init(isOn:label:)();
  v12 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v14 = &v7[*(v5 + 44)];
  *v14 = KeyPath;
  v14[1] = v12;
  if ((*(v2 + 2) & 1) != 0 || (*(v2 + 3) & 1) == 0)
  {
    if (*(v2 + 4))
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = *v2 ^ 1;
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v15 & 1;
  sub_1006BFFA8(v7, a1);
  result = sub_10022C350(&qword_100CC3D30);
  v19 = (a1 + *(result + 36));
  *v19 = v16;
  v19[1] = sub_100168F20;
  v19[2] = v17;
  return result;
}

uint64_t sub_1006BFBC0@<X0>(__int16 *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_10022C350(&qword_100CA5A80);
  result = State.wrappedValue.getter();
  if (v6 == 1 && ((a1[1] & 1) != 0 || (*(a1 + 3) & 1) == 0))
  {
    if (a1[2])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = *a1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_1006BFC5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  return (*(a4 + 8))(v5);
}

uint64_t sub_1006BFCD0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = 256;
  return result;
}

void *sub_1006BFD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[34];
  v4 = v1[35];
  v5 = v1[80];
  v6 = v1[81];
  sub_1006BFE9C(v1, __src);
  v7 = swift_allocObject();
  result = memcpy((v7 + 16), __src, 0x52uLL);
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  *(a1 + 4) = v4;
  *(a1 + 8) = sub_1006BFED4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v3 & v5;
  *(a1 + 32) = 0;
  return result;
}

unint64_t sub_1006BFEE8()
{
  result = qword_100CD1EF8;
  if (!qword_100CD1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD1EF8);
  }

  return result;
}

uint64_t sub_1006BFFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CC3D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C0018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1006C0138()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100031EE8();
  sub_100060DE0(v6, v0, &qword_100CA3538);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100024D10(v0, 1, v11);

  if (v12 == 1)
  {
    sub_100018144(v0, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v13 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100018144(v6, &qword_100CA3538);
    sub_1000244CC();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000244CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;

  swift_task_create();

  sub_100018144(v6, &qword_100CA3538);

LABEL_9:
  sub_10000536C();
}

void sub_1006C03F4()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100031EE8();
  sub_100060DE0(v6, v0, &qword_100CA3538);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_100024D10(v0, 1, v11);

  if (v12 == 1)
  {
    sub_100018144(v0, &qword_100CA3538);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v0, v11);
  }

  v13 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100018144(v6, &qword_100CA3538);
    sub_1000244CC();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v2;
    sub_10022C350(&qword_100CD1FC0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_1000244CC();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;

  sub_10022C350(&qword_100CD1FC0);
  swift_task_create();

  sub_100018144(v6, &qword_100CA3538);

LABEL_9:
  sub_10000536C();
}

uint64_t sub_1006C06C4()
{
  v14 = v0;

  if (qword_100CA26F0 != -1)
  {
    sub_10001F570();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90B38);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 32) = v5;
    swift_errorRetain();
    sub_10022C350(&qword_100CD8220);
    v8 = String.init<A>(describing:)();
    v10 = sub_100078694(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to read notification subscriptions from store: %{public}s", v6, 0xCu);
    sub_100006F14(v7);
  }

  else
  {
  }

  sub_100003B14();

  return v11();
}

uint64_t NotificationSubscriptionMonitor.deinit()
{

  sub_100006F14(v0 + 64);

  return v0;
}

uint64_t NotificationSubscriptionMonitor.__deallocating_deinit()
{
  NotificationSubscriptionMonitor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1006C0974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C0A3C, v6, v5);
}

uint64_t sub_1006C0A3C()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570();
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.subscribed");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C0B84()
{
  sub_100003B08();
  sub_10003000C();
  v2 = *v1;
  sub_100003AF8();
  *v3 = v2;

  sub_100031EF8();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return _swift_task_switch(sub_1000DC36C, v6, v5);
}

uint64_t sub_1006C0C90()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C0974(v3, v4, v5, v6);
}

uint64_t sub_1006C0D3C()
{
  v1 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100031EE8();
  v3 = type metadata accessor for TaskPriority();
  sub_10001B350(v0, 1, 1, v3);
  sub_100007E8C();
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = static NotificationsActor.shared.getter();
  sub_100010860();
  v8 = sub_10006CF08(v6, 255, v7);
  sub_100018450();
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v4;

  sub_1006C0138();
}

uint64_t sub_1006C0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C0F30, v6, v5);
}

uint64_t sub_1006C0F30()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570();
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.unsubscribed");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C1078()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C0E68(v3, v4, v5, v6);
}

uint64_t NotificationSubscriptionMonitor.notificationAvailabilityChange(_:)()
{
  v0 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100031DD4();
  sub_1000061CC(v2);
  sub_100007E8C();
  swift_allocObject();
  swift_weakInit();

  static NotificationsActor.shared.getter();
  sub_100010860();
  sub_10006CF08(v3, 255, v4);
  sub_100018450();
  v5 = swift_allocObject();
  sub_1000242CC(v5);
  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1006C1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_10006CF08(&qword_100CD1F00, 255, &type metadata accessor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1006C12D0, v6, v5);
}

uint64_t sub_1006C12D0()
{
  sub_100013494();
  sub_10000488C();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v3 = sub_10003A31C(v2);
    *v3 = v4;
    sub_10000CDDC(v3);

    return sub_1000D86A0();
  }

  else
  {

    if (qword_100CA26F0 != -1)
    {
      sub_10001F570();
    }

    v6 = type metadata accessor for Logger();
    sub_10000703C(v6, qword_100D90B38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (sub_1000054A4(v8))
    {
      v9 = sub_10000389C();
      sub_100025054(v9);
      sub_10000FA14(&_mh_execute_header, v10, v11, "Self deallocated in NotificationSubscriptionMonitor.notificationAvailabilityChange");
      sub_100007E54();
    }

    sub_100003B14();

    return v12();
  }
}

uint64_t sub_1006C1418()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_10000622C(v1);

  return sub_1006C1208(v3, v4, v5, v6);
}

uint64_t sub_1006C14DC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1006C15D0;

  return v5(v2 + 32);
}

uint64_t sub_1006C15D0()
{
  sub_100003B08();
  sub_10000C7E4();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100003AF8();
  *v5 = v4;

  *v3 = *(v2 + 32);
  sub_100003B14();

  return v6();
}

uint64_t sub_1006C16D0()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_1006C1760()
{
  sub_100013494();
  sub_100011388();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  v3 = sub_100014158(v1);

  return v4(v3);
}

uint64_t sub_1006C17F0(uint64_t a1)
{
  v209 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v215 = v3;
  sub_1000038CC();
  v208 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v214 = v5;
  sub_1000038CC();
  v207 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v213 = v7;
  sub_1000038CC();
  v205 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v212 = v9;
  sub_1000038CC();
  v203 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v211 = v11;
  sub_1000038CC();
  v200 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v210 = v13;
  v14 = sub_10022C350(&qword_100CA65C0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003990(&v181 - v16);
  v17 = sub_10022C350(&qword_100CA65D0);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100003990(&v181 - v19);
  v20 = sub_10022C350(&qword_100CA65C8);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003990(&v181 - v22);
  v23 = sub_10022C350(&qword_100CA65E8);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003990(v26);
  v27 = sub_10022C350(&qword_100CA6610);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v206 = v30;
  v31 = sub_10022C350(&qword_100CA6618);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v204 = v34;
  v35 = sub_10022C350(&qword_100CA6620);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v202 = v38;
  v39 = sub_10022C350(&qword_100CA6628);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v199 = v42;
  v43 = sub_10022C350(&qword_100CA6630);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v198 = v46;
  v47 = sub_10022C350(&qword_100CA6638);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  v50 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  sub_10000E70C();
  sub_100003990(v52);
  v53 = sub_10022C350(&qword_100CA6640);
  v54 = sub_100003810(v53);
  __chkstk_darwin(v54);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  v57 = &v181 - v56;
  v58 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  v62 = &v181 - v61;
  __chkstk_darwin(v63);
  sub_100003908();
  __chkstk_darwin(v64);
  v66 = &v181 - v65;
  v67 = type metadata accessor for LocationPreviewViewState(0);
  v68 = sub_100003810(v67);
  __chkstk_darwin(v68);
  v70 = &v181 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v72);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v73);
  v75 = (&v181 - v74);
  sub_100022FF8();
  v76 = a1;
  v182 = v77;
  sub_1000951B0(a1 + v77, v75, v78);
  v79 = *v75;
  v80 = *(v75 + *(v71 + 36) + 8) == 1;
  v201 = v71;
  v188 = v50;
  if (v80)
  {
    v81 = objc_opt_self();

    v82 = [v81 currentDevice];
    [v82 userInterfaceIdiom];

    LODWORD(v82) = *(v75 + *(v71 + 28));
    sub_100028940();
    if (v82 == 1)
    {
LABEL_7:

      return 1;
    }
  }

  else
  {

    sub_100028940();
  }

  if (*(v79 + 64) != 1)
  {
    goto LABEL_7;
  }

  v83 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_100019D00();
  sub_1000951B0(v76 + v83, v66, v84);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1000048B0();
    sub_10009EFC8(v66, v85);
    return 1;
  }

  sub_1000D388C(v66, v70, type metadata accessor for LocationPreviewViewState);
  sub_100003934();
  sub_10001B350(v88, v89, v90, v200);
  sub_100003934();
  sub_10001B350(v91, v92, v93, v203);
  sub_100003934();
  sub_10001B350(v94, v95, v96, v205);
  sub_100003934();
  sub_10001B350(v97, v98, v99, v207);
  sub_100003934();
  sub_10001B350(v100, v101, v102, v208);
  sub_100003934();
  sub_10001B350(v103, v104, v105, v209);
  sub_100003934();
  sub_10001B350(v106, v107, v108, v201);
  type metadata accessor for PreviewLocation();
  v109 = v184;
  sub_100003934();
  sub_10001B350(v110, v111, v112, v113);
  v114 = type metadata accessor for LocationPreviewModalViewState(0);
  v115 = v186;
  swift_storeEnumTagMultiPayload();
  v116 = v114;
  v117 = v76;
  sub_10001B350(v115, 0, 1, v116);
  type metadata accessor for SelectedSearchResult();
  v118 = v187;
  sub_100003934();
  sub_10001B350(v119, v120, v121, v122);
  v181 = v83;
  v123 = v185;
  sub_10043DB64(v109, v115, v118, v185);

  sub_1000180EC(v118, &qword_100CA65C0);
  sub_1000180EC(v115, &qword_100CA65D0);
  sub_1000180EC(v109, &qword_100CA65C8);
  sub_10009EFC8(v70, type metadata accessor for LocationPreviewViewState);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v123, 0, 1, v58);
  sub_100019D00();
  sub_1000951B0(v117 + v181, v62, v124);
  v125 = v189;
  sub_1002AB08C(v123, v189, &qword_100CA65E8);
  sub_1000038B4(v125, 1, v58);
  if (v80)
  {
    sub_1000180EC(v125, &qword_100CA65E8);
  }

  else
  {
    sub_1000048B0();
    sub_10009EFC8(v62, v126);
    sub_100010878();
    sub_1000D388C(v125, v62, v127);
  }

  v128 = v193;
  v129 = v192;
  v130 = *(&v191 + 1);
  v131 = v188;
  v132 = v183;
  sub_100010878();
  sub_1000D388C(v62, v130, v133);
  v193 = *(v117 + 16);
  LODWORD(v192) = *(v117 + 24);
  sub_1002AB08C(v57, v132, &qword_100CA6640);
  v134 = sub_10000C834();
  v135 = v200;
  sub_1000038B4(v134, v136, v200);
  if (v80)
  {
    v137 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000951B0(v137, v210, v138);
    v139 = sub_10000C834();
    v141 = sub_100024D10(v139, v140, v135);

    v80 = v141 == 1;
    v142 = v207;
    v143 = v205;
    v144 = v203;
    if (!v80)
    {
      sub_1000180EC(v132, &qword_100CA6640);
    }
  }

  else
  {
    sub_1000D388C(v132, v210, type metadata accessor for AppConfigurationState);

    v142 = v207;
    v143 = v205;
    v144 = v203;
  }

  sub_1002AB08C(v197, v131, &qword_100CA6638);
  sub_1000038B4(v131, 1, v144);
  if (v80)
  {
    v145 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    sub_1000951B0(v117 + v145, v211, type metadata accessor for EnvironmentState);
    sub_1000038B4(v131, 1, v144);
    v146 = v208;
    if (!v80)
    {
      sub_1000180EC(v131, &qword_100CA6638);
    }
  }

  else
  {
    sub_1000D388C(v131, v211, type metadata accessor for EnvironmentState);
    v146 = v208;
  }

  v147 = v190;
  sub_1002AB08C(v198, v190, &qword_100CA6630);
  sub_1000038B4(v147, 1, v143);
  if (v80)
  {
    v148 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000951B0(v148, v212, v149);
    sub_1000038B4(v147, 1, v143);
    if (!v80)
    {
      sub_1000180EC(v147, &qword_100CA6630);
    }
  }

  else
  {
    sub_1000D388C(v147, v212, type metadata accessor for LocationsState);
  }

  v150 = v191;
  sub_1002AB08C(v199, v191, &qword_100CA6628);
  sub_1000038B4(v150, 1, v142);
  if (v80)
  {
    v151 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000951B0(v151, v213, v152);
    sub_1000038B4(v150, 1, v142);
    v153 = v195;
    if (!v80)
    {
      sub_1000180EC(v150, &qword_100CA6628);
    }
  }

  else
  {
    sub_1000D388C(v150, v213, type metadata accessor for NotificationsState);
    v153 = v195;
  }

  sub_1002AB08C(v202, v129, &qword_100CA6620);
  sub_1000038B4(v129, 1, v146);
  if (v80)
  {
    v154 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000951B0(v154, v214, v155);
    sub_1000038B4(v129, 1, v146);
    v156 = v196;
    if (!v80)
    {
      sub_1000180EC(v129, &qword_100CA6620);
    }
  }

  else
  {
    sub_1000D388C(v129, v214, type metadata accessor for NotificationsOptInState);
    v156 = v196;
  }

  sub_1002AB08C(v204, v153, &qword_100CA6618);
  v157 = v209;
  sub_1000038B4(v153, 1, v209);
  if (v80)
  {
    v158 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000951B0(v158, v215, v159);
    sub_1000038B4(v153, 1, v157);
    v160 = v201;
    if (!v80)
    {
      sub_1000180EC(v153, &qword_100CA6618);
    }
  }

  else
  {
    sub_1000D388C(v153, v215, type metadata accessor for TimeState);
    v160 = v201;
  }

  sub_1002AB08C(v206, v156, &qword_100CA6610);
  v161 = sub_10000C834();
  sub_1000038B4(v161, v162, v160);
  if (v80)
  {
    sub_100022FF8();
    sub_1000951B0(v117 + v182, v128, v163);
    v164 = sub_10000C834();
    sub_1000038B4(v164, v165, v160);
    v166 = v128;
    if (!v80)
    {
      sub_1000180EC(v156, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000D388C(v156, v128, type metadata accessor for ViewState);
    v166 = v128;
  }

  sub_100010878();
  v167 = v194;
  sub_1000D388C(v130, v194, v168);
  v170 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v169 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v172 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v171 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v173 = v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v174 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v175 = v117;
  v177 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v176 = *(v173 + 16);
  v178 = *(v175 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v180) = v174;
  sub_10003E038(v193, v192, v210, v211, v212, v213, v214, v215, v166, v167, v170, v169, v172, v171, v180, v177, v176, v178, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
  v86 = v179;

  return v86;
}

uint64_t sub_1006C2878@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocationViewComponentContainerDescriptor();
  v3 = sub_100588E2C(v2);
  if (v3)
  {
    sub_1001B3B30(v3 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for LocationComponentContainerViewModel();

  return sub_10001B350(a1, v4, 1, v5);
}

uint64_t sub_1006C2908(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v13 = &v27 - v12;
  __chkstk_darwin(v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006C2D24()
{
  sub_10000C778();
  v29 = v0;
  v2 = v1;
  v32 = v3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v36 = v4;
  __chkstk_darwin(v5);
  sub_1000037D8();
  type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v34 = v7;
  v35 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchTime();
  sub_100007FD0();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003C38();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v29 - v19;
  __chkstk_darwin(v21);
  v23 = &v29 - v22;
  sub_10000C70C(0, &qword_100CB4670);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v13 + 8);
  v30 = v11;
  v24(v17, v11);
  + infix(_:_:)();
  v24(v20, v11);
  v37[4] = v32;
  v37[5] = v2;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_1000742F0;
  v37[3] = &unk_100C67210;
  v25 = _Block_copy(v37);

  static DispatchQoS.unspecified.getter();
  v37[0] = _swiftEmptyArrayStorage;
  sub_100121A00(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v31;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  v27 = sub_10001173C();
  v28(v27);
  (*(v34 + 8))(v10, v35);
  v24(v23, v30);
  sub_10000536C();
}

uint64_t sub_1006C30F0(void *a1)
{
  v1 = a1[3];
  v8 = a1[2];
  v9 = v1;
  v2 = a1[5];
  v10 = a1[4];
  v11 = v2;
  v3 = *(*(v2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v12 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for Page();
  return sub_1006C2908(sub_1006D4748, &v7, v1, v4, &type metadata for Never, v3, &protocol witness table for Never, v5);
}

uint64_t sub_1006C320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a8;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v21 - v14;
  __chkstk_darwin(v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v19 = type metadata accessor for AnimatableTabView();
  (*(v21 + *(v19 + 76)))(v22);
  swift_checkMetadataState();
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  return sub_1006C33D8(v18, v15, a3, AssociatedTypeWitness, v23);
}

uint64_t sub_1006C33D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Page();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1006C34A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v57 = a7;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = a2;
  v61 = AssociatedTypeWitness;
  v62 = a4;
  v63 = AssociatedConformanceWitness;
  v14 = type metadata accessor for LazyHStackAnimatableTabView();
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v51 = &v47 - v18;
  v60 = a2;
  v61 = AssociatedTypeWitness;
  v62 = a4;
  v63 = AssociatedConformanceWitness;
  v19 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v49 = *(v19 - 8);
  __chkstk_darwin(v19);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v47 = &v47 - v22;
  v50 = type metadata accessor for EnvironmentValues();
  v23 = *(v50 - 8);
  __chkstk_darwin(v50);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for _ConditionalContent();
  v55 = *(v26 - 8);
  v56 = v26;
  __chkstk_darwin(v26);
  v54 = &v47 - v27;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = v53;
  v64 = a6;
  v28 = (a1 + *(type metadata accessor for AnimatableTabView() + 80));
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v29, 0);
    (*(v23 + 8))(v25, v50);
    if (v60 != 1)
    {
      goto LABEL_6;
    }
  }

  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 != 1)
  {
    v39 = v48;
    sub_1006C3B30();
    WitnessTable = swift_getWitnessTable();
    v41 = v47;
    sub_1000833D8(v39, v19, WitnessTable);
    v35 = *(v49 + 8);
    v35(v39, v19);
    sub_1000833D8(v41, v19, WitnessTable);
    swift_getWitnessTable();
    v36 = v54;
    sub_1003E8038();
    v35(v39, v19);
    v37 = v41;
    v38 = v19;
    goto LABEL_8;
  }

LABEL_6:
  sub_1006C3B30();
  v33 = swift_getWitnessTable();
  v34 = v51;
  sub_1000833D8(v16, v14, v33);
  v35 = *(v52 + 8);
  v35(v16, v14);
  sub_1000833D8(v34, v14, v33);
  swift_getWitnessTable();
  v36 = v54;
  sub_10012D09C();
  v35(v16, v14);
  v37 = v34;
  v38 = v14;
LABEL_8:
  v35(v37, v38);
  v42 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v58 = v42;
  v59 = v43;
  v44 = v56;
  v45 = swift_getWitnessTable();
  sub_1000833D8(v36, v44, v45);
  return (*(v55 + 8))(v36, v44);
}

void sub_1006C3B30()
{
  sub_10000C778();
  v20[2] = v2;
  v21 = v1;
  v4 = v3;
  v20[1] = *(v3 + 48);
  sub_100043A44();
  swift_getAssociatedTypeWitness();
  sub_1000717DC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Binding();
  sub_1000037C4();
  v7 = __chkstk_darwin(v6);
  v9 = v20 - v8;
  (*(v10 + 16))(v20 - v8, v0 + *(v4 + 60), v7);
  v11 = (v0 + *(v4 + 64));
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v0 + *(v4 + 68));
  v15 = *(v0 + *(v4 + 72));

  v16 = sub_1006C30F0(v4);
  v17 = *(v4 + 16);
  v18 = *(v4 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21(v9, v13, v12, v14, v15, v16, v17, AssociatedTypeWitness, v18, AssociatedConformanceWitness);
  sub_10000536C();
}

uint64_t sub_1006C3CD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a6;
  swift_getAssociatedTypeWitness();
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = a1;
  AssociatedTypeWitness = a2;
  v24 = a3;
  AssociatedConformanceWitness = a4;
  v26 = a5;
  type metadata accessor for AnimatableTabView();
  sub_1006C3B30();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v14, v11);
  sub_1000833D8(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_1006C3EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v15 = type metadata accessor for TransitionContext();
  v16 = type metadata accessor for Optional();
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for Optional();
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - v20;
  v22 = type metadata accessor for Binding();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v45 = a7;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v23 = type metadata accessor for LazyHStackAnimatableTabView();
  sub_10001B350(v21, 1, 1, a8);
  sub_100123640(v21);
  v24 = (a9 + v23[14]);
  v25 = v41;
  *v24 = v40;
  v24[1] = v25;
  *(a9 + v23[15]) = v42;
  v26 = a9 + v23[16];
  *v26 = sub_1001241A8() & 1;
  *(v26 + 8) = v27;
  v28 = a9 + v23[17];
  *v28 = sub_1001241A8() & 1;
  *(v28 + 8) = v29;
  v30 = a9 + v23[18];
  *v30 = sub_1001241A8() & 1;
  *(v30 + 8) = v31;
  sub_10001B350(v18, 1, 1, v15);
  sub_1001246D8(v18, a7, a8, a10, a11);
  v32 = (a9 + v23[20]);
  *v32 = sub_100126398();
  v32[1] = v33;
  *(a9 + v23[21]) = v43;
  *(a9 + v23[22]) = v44;
  v34 = a9 + v23[23];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = a9 + v23[24];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = a9 + v23[25];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  v37 = a9 + v23[26];
  result = swift_getKeyPath();
  *v37 = result;
  *(v37 + 8) = 0;
  return result;
}

uint64_t sub_1006C41FC()
{
  type metadata accessor for Binding();

  return Binding.wrappedValue.getter();
}

uint64_t sub_1006C423C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  type metadata accessor for Binding();
  Binding.wrappedValue.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1006C4330()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    return 0;
  }

  return static Solarium.isEnabled.getter();
}

uint64_t sub_1006C43AC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 84)))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = (v1 + *(a1 + 92));
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

uint64_t sub_1006C4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a1;
  v61 = a6;
  v68 = a2;
  v69 = a3;
  v52 = a3;
  v70 = a4;
  v71 = a5;
  v10 = type metadata accessor for LazyHStackAnimatableTabView();
  v56 = *(v10 - 8);
  v57 = v10;
  v58 = *(v56 + 64);
  __chkstk_darwin(v10);
  v54 = a4;
  v55 = &v43 - v11;
  v68 = a2;
  v69 = a3;
  v53 = a2;
  v70 = a4;
  v71 = a5;
  v60 = type metadata accessor for Page();
  v12 = type metadata accessor for Array();
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v44 = a5;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v68 = v16;
  v69 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v13;
  v69 = v14;
  v70 = WitnessTable;
  v71 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = v13;
  v69 = v14;
  v70 = WitnessTable;
  v71 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v68 = v13;
  v69 = &type metadata for Solarium;
  v70 = OpaqueTypeMetadata2;
  v71 = WitnessTable;
  v72 = &protocol witness table for Solarium;
  v73 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v68 = v13;
  v69 = &type metadata for Solarium;
  v70 = OpaqueTypeMetadata2;
  v71 = WitnessTable;
  v72 = &protocol witness table for Solarium;
  v73 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for EmptyView;
  v67 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v48 = v22;
  v47 = swift_getWitnessTable();
  v68 = v22;
  v69 = v47;
  v46 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:alignment:)>>;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ModifiedContent();
  v45 = v23;
  v50 = v12;
  v49 = swift_getWitnessTable();
  v24 = v52;
  v68 = v12;
  v69 = v52;
  v70 = v23;
  v71 = v49;
  v72 = a5;
  v25 = type metadata accessor for ForEach();
  v51 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - v30;
  v32 = v56;
  v33 = v57;
  v65 = *(v59 + *(v57 + 88));
  v34 = v55;
  (*(v56 + 16))(v55, v29);
  v35 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v54;
  *(v36 + 2) = v53;
  *(v36 + 3) = v24;
  v38 = v44;
  *(v36 + 4) = v37;
  *(v36 + 5) = v38;
  (*(v32 + 32))(&v36[v35], v34, v33);

  v68 = v48;
  v69 = v47;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = &protocol witness table for _GeometryGroupEffect;
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v62 = v39;
  v40 = swift_getWitnessTable();
  sub_1000833D8(v27, v25, v40);
  v41 = *(v51 + 8);
  v41(v27, v25);
  sub_1000833D8(v31, v25, v40);
  return (v41)(v31, v25);
}

uint64_t sub_1006C4B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v41 = a4;
  v40 = a3;
  v44 = a2;
  v43 = a1;
  v45 = a7;
  v8 = type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v56 = v8;
  v57 = &type metadata for Solarium;
  v58 = OpaqueTypeMetadata2;
  v59 = WitnessTable;
  v60 = &protocol witness table for Solarium;
  v61 = OpaqueTypeConformance2;
  v54 = &protocol witness table for EmptyView;
  v55 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = swift_getWitnessTable();
  v56 = v12;
  v57 = v15;
  v35 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v36 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v37 = v19;
  v20 = type metadata accessor for ModifiedContent();
  v39 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v34 - v24;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = a6;
  v50 = v43;
  v51 = v44;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  VStack.init(alignment:spacing:content:)();
  sub_10022C350(&qword_100CB59A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(a6) = static Axis.Set.horizontal.getter();
  *(inited + 32) = a6;
  v27 = static Axis.Set.vertical.getter();
  *(inited + 33) = v27;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a6)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v27)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  v28 = v35;
  View.containerRelativeFrame(_:alignment:)();
  (*(v38 + 8))(v14, v12);
  v56 = v12;
  v57 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v37;
  sub_1006C6068();
  (*(v36 + 8))(v18, v30);
  v52 = v29;
  v53 = &protocol witness table for _GeometryGroupEffect;
  v31 = swift_getWitnessTable();
  sub_1000833D8(v22, v20, v31);
  v32 = *(v39 + 8);
  v32(v22, v20);
  sub_1000833D8(v25, v20, v31);
  return (v32)(v25, v20);
}

uint64_t sub_1006C5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v116 = a2;
  v112 = a1;
  v109 = a7;
  type metadata accessor for TransitionContext();
  v97 = type metadata accessor for Optional();
  __chkstk_darwin(v97);
  v99 = &v88 - v11;
  v121 = a3;
  v122 = a4;
  v123 = a5;
  v124 = a6;
  v114 = a5;
  v115 = a6;
  v111 = type metadata accessor for Page();
  v95 = *(v111 - 8);
  __chkstk_darwin(v111);
  v96 = &v88 - v12;
  v121 = a3;
  v122 = a4;
  v123 = a5;
  v124 = a6;
  v13 = type metadata accessor for PageContainer();
  v100 = *(v13 - 8);
  __chkstk_darwin(v13);
  v98 = &v88 - v14;
  v15 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v121 = v17;
  v122 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v121 = v13;
  v122 = v15;
  v123 = WitnessTable;
  v124 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = v13;
  v122 = v15;
  v123 = WitnessTable;
  v124 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v108 = v13;
  v121 = v13;
  v122 = &type metadata for Solarium;
  v113 = OpaqueTypeMetadata2;
  v123 = OpaqueTypeMetadata2;
  v124 = WitnessTable;
  v117 = WitnessTable;
  v125 = &protocol witness table for Solarium;
  v126 = v21;
  v107 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v94 = *(v22 - 8);
  __chkstk_darwin(v22);
  v93 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v88 - v25;
  v26 = *(a4 - 8);
  __chkstk_darwin(v27);
  v88 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v32 = &v88 - v31;
  v33 = *(v29 - 8);
  __chkstk_darwin(v34);
  v110 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v88 - v37;
  __chkstk_darwin(v39);
  v41 = &v88 - v40;
  v106 = v22;
  v105 = type metadata accessor for _ConditionalContent();
  v104 = *(v105 - 8);
  v42 = __chkstk_darwin(v105);
  v103 = &v88 - v43;
  v44 = *(v111 + 52);
  v91 = v26;
  (*(v26 + 16))(v41, v112 + v44, a4, v42);
  sub_10001B350(v41, 0, 1, a4);
  v101 = a3;
  v121 = a3;
  v122 = a4;
  v123 = v114;
  v124 = v115;
  v102 = type metadata accessor for LazyHStackAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  v90 = TupleTypeMetadata2;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *(v33 + 16);
  v46(v32, v41, v29);
  v46(&v32[v45], v38, v29);
  if (sub_100024D10(v32, 1, a4) == 1)
  {
    v47 = *(v33 + 8);
    v47(v38, v29);
    v47(v41, v29);
    v48 = sub_100024D10(&v32[v45], 1, a4);
    v49 = v116;
    if (v48 == 1)
    {
      v47(v32, v29);
      v50 = v102;
LABEL_13:
      v65 = v96;
      (*(v95 + 16))(v96, v112, v111);
      v66 = (v49 + *(v50 + 56));
      v67 = *v66;
      v68 = v66[1];
      type metadata accessor for State();

      v69 = v99;
      State.wrappedValue.getter();
      v70 = v98;
      v71 = v68;
      v72 = v101;
      v74 = v114;
      v73 = v115;
      sub_10012CE9C(v65, v67, v71, v69, v98);
      v75 = Solarium.init()();
      __chkstk_darwin(v75);
      *(&v88 - 6) = v72;
      *(&v88 - 5) = a4;
      *(&v88 - 4) = v74;
      *(&v88 - 3) = v73;
      v76 = swift_checkMetadataState();
      v54 = v107;
      v87 = v107;
      v77 = v93;
      v53 = v108;
      View.staticIf<A, B>(_:then:)();
      (*(v100 + 8))(v70, v53);
      v121 = v53;
      v122 = &type metadata for Solarium;
      v123 = v76;
      v124 = v117;
      v125 = &protocol witness table for Solarium;
      v126 = v54;
      v78 = swift_getOpaqueTypeConformance2();
      v79 = v92;
      v80 = v106;
      sub_1000833D8(v77, v106, v78);
      v81 = *(v94 + 8);
      v81(v77, v80);
      sub_1000833D8(v79, v80, v78);
      v56 = v103;
      v52 = v117;
      sub_10012D09C();
      v81(v77, v80);
      v82 = v80;
      v55 = v113;
      v81(v79, v82);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v46(v110, v32, v29);
  if (sub_100024D10(&v32[v45], 1, a4) == 1)
  {
    v51 = *(v33 + 8);
    v51(v38, v29);
    v51(v41, v29);
    (*(v91 + 8))(v110, a4);
    v49 = v116;
LABEL_6:
    (*(v89 + 8))(v32, v90);
    v52 = v117;
    v50 = v102;
    goto LABEL_7;
  }

  v60 = v91;
  v61 = v88;
  (*(v91 + 32))(v88, &v32[v45], a4);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v61, a4);
  v64 = *(v33 + 8);
  v64(v38, v29);
  v64(v41, v29);
  v63(v110, a4);
  v64(v32, v29);
  v49 = v116;
  v52 = v117;
  v50 = v102;
  if (v62)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((sub_1006C43AC(v50) & 1) == 0)
  {
    if ((sub_1006C4330() & 1) == 0)
    {
      goto LABEL_13;
    }

    v57 = (v49 + *(v50 + 72));
    v58 = *v57;
    v59 = *(v57 + 1);
    LOBYTE(v121) = v58;
    v122 = v59;
    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.getter();
    if (v118)
    {
      goto LABEL_13;
    }
  }

  v54 = v107;
  v53 = v108;
  v121 = v108;
  v55 = v113;
  v122 = &type metadata for Solarium;
  v123 = v113;
  v124 = v52;
  v125 = &protocol witness table for Solarium;
  v126 = v107;
  swift_getOpaqueTypeConformance2();
  v56 = v103;
  sub_1003E8038();
LABEL_14:
  v121 = v53;
  v122 = &type metadata for Solarium;
  v123 = v55;
  v124 = v52;
  v125 = &protocol witness table for Solarium;
  v126 = v54;
  v83 = swift_getOpaqueTypeConformance2();
  v119 = &protocol witness table for EmptyView;
  v120 = v83;
  v84 = v105;
  v85 = swift_getWitnessTable();
  sub_1000833D8(v56, v84, v85);
  return (*(v104 + 8))(v56, v84);
}

uint64_t sub_1006C5E4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a2;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v16 = (a3 + *(type metadata accessor for LazyHStackAnimatableTabView() + 104));
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  static os_log_type_t.fault.getter();
  v18 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000E4DF8(v17, 0);
  (*(v13 + 8))(v15, v12);
  if (v21 == 1)
  {
LABEL_5:
    ScrollTransitionPhase.isIdentity.getter();
  }

LABEL_6:
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.opacity(_:)();
}

uint64_t sub_1006C607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a6;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v11 = type metadata accessor for LazyHStackAnimatableTabView();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - v14;
  (*(v12 + 16))(&v65 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v68 = v17;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  type metadata accessor for Page();
  v65 = type metadata accessor for Array();
  v86 = a2;
  v87 = a3;
  v88 = a4;
  v89 = a5;
  v66 = a5;
  v18 = type metadata accessor for PageContainer();
  v19 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for EmptyVisualEffect();
  v22 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v86 = v21;
  v87 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v18;
  v87 = v19;
  v88 = WitnessTable;
  v89 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v18;
  v87 = v19;
  v88 = WitnessTable;
  v89 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v86 = v18;
  v87 = &type metadata for Solarium;
  v88 = OpaqueTypeMetadata2;
  v89 = WitnessTable;
  v90 = &protocol witness table for Solarium;
  v91 = v25;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v86 = v18;
  v87 = &type metadata for Solarium;
  v88 = OpaqueTypeMetadata2;
  v89 = WitnessTable;
  v90 = &protocol witness table for Solarium;
  v91 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v84 = &protocol witness table for EmptyView;
  v85 = v26;
  swift_getWitnessTable();
  v27 = type metadata accessor for VStack();
  v28 = swift_getWitnessTable();
  v86 = v27;
  v87 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  v30 = v65;
  v31 = swift_getWitnessTable();
  v86 = v30;
  v87 = a3;
  v88 = v29;
  v89 = v31;
  v90 = a5;
  type metadata accessor for ForEach();
  v86 = v27;
  v87 = v28;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = &protocol witness table for _GeometryGroupEffect;
  v81 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v32 = type metadata accessor for LazyHStack();
  v33 = swift_getWitnessTable();
  v86 = v32;
  v87 = v33;
  swift_getOpaqueTypeMetadata2();
  v86 = v32;
  v87 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for ScrollView();
  v35 = swift_getWitnessTable();
  v86 = v34;
  v87 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v86 = v34;
  v87 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v86 = v34;
  v87 = &type metadata for Solarium;
  v88 = v36;
  v89 = v35;
  v90 = &protocol witness table for Solarium;
  v91 = v37;
  v67 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  v38 = type metadata accessor for ModifiedContent();
  v86 = v34;
  v87 = &type metadata for Solarium;
  v88 = v36;
  v89 = v35;
  v90 = &protocol witness table for Solarium;
  v91 = v37;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = &protocol witness table for _AppearanceActionModifier;
  v39 = swift_getWitnessTable();
  v86 = v38;
  v87 = a3;
  v40 = v66;
  v88 = v39;
  v89 = v66;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = type metadata accessor for PagingScrollTargetBehavior();
  v86 = v38;
  v87 = a3;
  v88 = v39;
  v89 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v86 = v41;
  v87 = v42;
  v88 = v43;
  v89 = &protocol witness table for PagingScrollTargetBehavior;
  v44 = swift_getOpaqueTypeMetadata2();
  v86 = v41;
  v87 = v42;
  v88 = v43;
  v89 = &protocol witness table for PagingScrollTargetBehavior;
  v45 = swift_getOpaqueTypeConformance2();
  v86 = v44;
  v87 = v45;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v46 = type metadata accessor for ModifiedContent();
  v86 = v44;
  v87 = v45;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = &protocol witness table for _AllowsHitTestingModifier;
  v75 = swift_getWitnessTable();
  v76 = &protocol witness table for _TransactionModifier;
  v47 = swift_getWitnessTable();
  v48 = v40[1];
  v86 = v46;
  v87 = a3;
  v88 = v47;
  v89 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v86 = v46;
  v87 = a3;
  v88 = v47;
  v89 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v86 = v49;
  v87 = a3;
  v88 = v50;
  v89 = v48;
  v51 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v52 = type metadata accessor for ModifiedContent();
  v86 = v49;
  v87 = a3;
  v88 = v50;
  v89 = v48;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_1006D5DC4();
  v55 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v73 = v53;
  v74 = v55;
  v56 = swift_getWitnessTable();
  v86 = v51;
  v87 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v88 = v52;
  v89 = v53;
  v90 = v54;
  v91 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v58 = type metadata accessor for Array();
  v86 = v51;
  v87 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v88 = v52;
  v89 = v53;
  v90 = v54;
  v91 = v56;
  v59 = swift_getOpaqueTypeConformance2();
  v72 = v48;
  v60 = swift_getWitnessTable();
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  swift_getOpaqueTypeMetadata2();
  v86 = v57;
  v87 = v58;
  v88 = v59;
  v89 = v60;
  swift_getOpaqueTypeConformance2();
  v70 = ScrollViewReader.init(content:)();
  v71 = v61;
  v62 = type metadata accessor for ScrollViewReader();
  v63 = swift_getWitnessTable();
  sub_1000833D8(&v70, v62, v63);

  v70 = v86;
  v71 = v87;
  sub_1000833D8(&v70, v62, v63);
}

uint64_t sub_1006C6A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v102 = a2;
  v110 = a1;
  v111 = a7;
  v137 = a3;
  v138 = a4;
  v139 = a5;
  v140 = a6;
  v101 = type metadata accessor for LazyHStackAnimatableTabView();
  v108 = *(v101 - 8);
  v109 = *(v108 + 64);
  __chkstk_darwin(v101);
  v107 = &v90 - v11;
  v105 = type metadata accessor for ScrollViewProxy();
  v104 = *(v105 - 8);
  v106 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a3;
  v137 = a3;
  v138 = a4;
  v115 = a5;
  v139 = a5;
  v140 = a6;
  type metadata accessor for Page();
  v114 = type metadata accessor for Array();
  v137 = a3;
  v138 = a4;
  v117 = a4;
  v139 = a5;
  v140 = a6;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v137 = v16;
  v138 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v137 = v13;
  v138 = v14;
  v139 = WitnessTable;
  v140 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v137 = v13;
  v138 = v14;
  v139 = WitnessTable;
  v140 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v137 = v13;
  v138 = &type metadata for Solarium;
  v139 = OpaqueTypeMetadata2;
  v140 = WitnessTable;
  v141 = &protocol witness table for Solarium;
  v142 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v137 = v13;
  v138 = &type metadata for Solarium;
  v139 = OpaqueTypeMetadata2;
  v140 = WitnessTable;
  v141 = &protocol witness table for Solarium;
  v142 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v135 = &protocol witness table for EmptyView;
  v136 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable();
  v137 = v22;
  v138 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v25 = v114;
  v26 = swift_getWitnessTable();
  v137 = v25;
  v138 = a4;
  v139 = v24;
  v140 = v26;
  v141 = a6;
  type metadata accessor for ForEach();
  v137 = v22;
  v138 = v23;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = &protocol witness table for _GeometryGroupEffect;
  v132 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v27 = type metadata accessor for LazyHStack();
  v28 = swift_getWitnessTable();
  v137 = v27;
  v138 = v28;
  swift_getOpaqueTypeMetadata2();
  v137 = v27;
  v138 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for ScrollView();
  v30 = swift_getWitnessTable();
  v137 = v29;
  v138 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v137 = v29;
  v138 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v137 = v29;
  v138 = &type metadata for Solarium;
  v139 = v31;
  v140 = v30;
  v141 = &protocol witness table for Solarium;
  v142 = v32;
  v100 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for ModifiedContent();
  v137 = v29;
  v138 = &type metadata for Solarium;
  v139 = v31;
  v140 = v30;
  v141 = &protocol witness table for Solarium;
  v142 = v32;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = &protocol witness table for _AppearanceActionModifier;
  v34 = swift_getWitnessTable();
  v35 = v117;
  v137 = v33;
  v138 = v117;
  v139 = v34;
  v140 = a6;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = type metadata accessor for PagingScrollTargetBehavior();
  v137 = v33;
  v138 = v35;
  v139 = v34;
  v140 = a6;
  v113 = a6;
  v38 = swift_getOpaqueTypeConformance2();
  v137 = v36;
  v138 = v37;
  v139 = v38;
  v140 = &protocol witness table for PagingScrollTargetBehavior;
  v39 = swift_getOpaqueTypeMetadata2();
  v137 = v36;
  v138 = v37;
  v139 = v38;
  v140 = &protocol witness table for PagingScrollTargetBehavior;
  v40 = swift_getOpaqueTypeConformance2();
  v137 = v39;
  v138 = v40;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v41 = type metadata accessor for ModifiedContent();
  v137 = v39;
  v138 = v40;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = &protocol witness table for _AllowsHitTestingModifier;
  v126 = swift_getWitnessTable();
  v127 = &protocol witness table for _TransactionModifier;
  v42 = swift_getWitnessTable();
  v43 = a6[1];
  v137 = v41;
  v138 = v35;
  v139 = v42;
  v140 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v137 = v41;
  v138 = v35;
  v139 = v42;
  v140 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v137 = v44;
  v138 = v35;
  v139 = v45;
  v140 = v43;
  v112 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v46 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v47 = type metadata accessor for ModifiedContent();
  v137 = v44;
  v138 = v35;
  v139 = v45;
  v140 = v43;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_1006D5DC4();
  v50 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v124 = v48;
  v125 = v50;
  v51 = swift_getWitnessTable();
  v137 = v46;
  v138 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v139 = v47;
  v140 = v48;
  v141 = v49;
  v142 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v96 = v52;
  v99 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = &v90 - v53;
  v91 = &v90 - v53;
  v55 = type metadata accessor for Array();
  v93 = v55;
  v137 = v46;
  v138 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v139 = v47;
  v140 = v48;
  v141 = v49;
  v142 = v51;
  v56 = swift_getOpaqueTypeConformance2();
  v94 = v56;
  v123 = v43;
  v95 = swift_getWitnessTable();
  v137 = v52;
  v138 = v55;
  v139 = v56;
  v140 = v95;
  v98 = swift_getOpaqueTypeMetadata2();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v90 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v97 = &v90 - v59;
  v60 = v101;
  v61 = v102;
  sub_1006C7884(v101, v54);
  v137 = *(v61 + *(v60 + 88));
  v119 = v116;
  v62 = v117;
  v120 = v117;
  v121 = v115;
  v122 = v113;

  v63 = swift_checkMetadataState();
  v64 = swift_getWitnessTable();
  v66 = sub_1006C2908(sub_1006D6864, v118, v63, v62, &type metadata for Never, v64, &protocol witness table for Never, v65);
  v114 = v66;

  v137 = v66;
  v67 = v104;
  v68 = v103;
  v69 = v105;
  (*(v104 + 16))(v103, v110, v105);
  v70 = v108;
  v71 = v107;
  v72 = v60;
  (*(v108 + 16))(v107, v61, v60);
  v73 = v67;
  v74 = (*(v67 + 80) + 48) & ~*(v67 + 80);
  v75 = (v106 + *(v70 + 80) + v74) & ~*(v70 + 80);
  v76 = swift_allocObject();
  *(v76 + 2) = v116;
  *(v76 + 3) = v62;
  v77 = v113;
  *(v76 + 4) = v115;
  *(v76 + 5) = v77;
  (*(v73 + 32))(&v76[v74], v68, v69);
  (*(v70 + 32))(&v76[v75], v71, v72);
  v78 = swift_checkMetadataState();
  v79 = v96;
  v80 = v94;
  v81 = v95;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v82 = v92;
  v83 = v79;
  v84 = v91;
  View.onChange<A>(of:initial:_:)();

  (*(v99 + 8))(v84, v83);
  v137 = v83;
  v138 = v78;
  v139 = v80;
  v140 = v81;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v97;
  v87 = v98;
  sub_1000833D8(v82, v98, v85);
  v88 = v100[1];
  v88(v82, v87);
  sub_1000833D8(v86, v87, v85);
  return (v88)(v86, v87);
}

uint64_t sub_1006C7884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = *(a1 + 24);
  v188 = type metadata accessor for Optional();
  v135 = *(v188 - 8);
  __chkstk_darwin(v188);
  v189 = &v135 - v4;
  v185 = *(v3 - 1);
  __chkstk_darwin(v5);
  v186 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v184 = &v135 - v8;
  v9 = *(a1 + 16);
  v205 = *(a1 + 32);
  v201 = a1;
  v227 = v9;
  v228 = v3;
  v10 = v9;
  v229 = v205;
  v138 = type metadata accessor for TransitionContext();
  v139 = type metadata accessor for Optional();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v135 - v11;
  v12 = type metadata accessor for ScrollIndicatorVisibility();
  v182 = *(v12 - 8);
  v183 = v12;
  __chkstk_darwin(v12);
  v181 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for PagingScrollTargetBehavior();
  v180 = *(v198 - 8);
  __chkstk_darwin(v198);
  v179 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Binding();
  v176 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = &v135 - v15;
  v204 = *(a1 - 8);
  v195 = *(v204 + 64);
  __chkstk_darwin(v16);
  v202 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v10;
  v227 = v10;
  v228 = v3;
  v229 = v205;
  type metadata accessor for Page();
  v200 = type metadata accessor for Array();
  v227 = v10;
  v228 = v3;
  v140 = v3;
  v229 = v205;
  v18 = type metadata accessor for PageContainer();
  v19 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for EmptyVisualEffect();
  v22 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v227 = v21;
  v228 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v227 = v18;
  v228 = v19;
  *&v229 = WitnessTable;
  *(&v229 + 1) = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v227 = v18;
  v228 = v19;
  *&v229 = WitnessTable;
  *(&v229 + 1) = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v227 = v18;
  v228 = &type metadata for Solarium;
  *&v229 = OpaqueTypeMetadata2;
  *(&v229 + 1) = WitnessTable;
  v230 = &protocol witness table for Solarium;
  v231 = v25;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v227 = v18;
  v228 = &type metadata for Solarium;
  *&v229 = OpaqueTypeMetadata2;
  *(&v229 + 1) = WitnessTable;
  v230 = &protocol witness table for Solarium;
  v231 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v225 = &protocol witness table for EmptyView;
  v226 = v26;
  swift_getWitnessTable();
  v27 = type metadata accessor for VStack();
  v28 = swift_getWitnessTable();
  v227 = v27;
  v228 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  v30 = v200;
  v31 = swift_getWitnessTable();
  v227 = v30;
  v228 = v3;
  *&v229 = v29;
  *(&v229 + 1) = v31;
  v196 = *(&v205 + 1);
  v230 = *(&v205 + 1);
  type metadata accessor for ForEach();
  v227 = v27;
  v228 = v28;
  v223 = swift_getOpaqueTypeConformance2();
  v224 = &protocol witness table for _GeometryGroupEffect;
  v200 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v222 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v32 = type metadata accessor for LazyHStack();
  v33 = swift_getWitnessTable();
  v227 = v32;
  v228 = v33;
  v193 = swift_getOpaqueTypeMetadata2();
  v227 = v32;
  v228 = v33;
  v192 = swift_getOpaqueTypeConformance2();
  v34 = type metadata accessor for ScrollView();
  v194 = *(v34 - 8);
  __chkstk_darwin(v34);
  v191 = &v135 - v35;
  v36 = swift_getWitnessTable();
  v227 = v34;
  v228 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v227 = v34;
  v228 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v227 = v34;
  v228 = &type metadata for Solarium;
  *&v229 = v37;
  v144 = v37;
  *(&v229 + 1) = v36;
  v230 = &protocol witness table for Solarium;
  v231 = v38;
  v39 = v38;
  v190 = v38;
  v158 = swift_getOpaqueTypeMetadata2();
  v164 = *(v158 - 8);
  __chkstk_darwin(v158);
  v150 = &v135 - v40;
  v41 = type metadata accessor for ModifiedContent();
  v166 = *(v41 - 8);
  __chkstk_darwin(v41);
  v155 = &v135 - v42;
  v227 = v34;
  v228 = &type metadata for Solarium;
  *&v229 = v37;
  *(&v229 + 1) = v36;
  v230 = &protocol witness table for Solarium;
  v231 = v39;
  v154 = swift_getOpaqueTypeConformance2();
  v220 = v154;
  v221 = &protocol witness table for _AppearanceActionModifier;
  v43 = swift_getWitnessTable();
  v44 = v41;
  v152 = v41;
  v153 = v43;
  v45 = v140;
  v227 = v41;
  v228 = v140;
  *&v229 = v43;
  v46 = v43;
  *(&v229 + 1) = *(&v205 + 1);
  v47 = swift_getOpaqueTypeMetadata2();
  v160 = *(v47 - 8);
  __chkstk_darwin(v47);
  v151 = &v135 - v48;
  v227 = v44;
  v228 = v45;
  *&v229 = v46;
  *(&v229 + 1) = *(&v205 + 1);
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v47;
  v146 = v47;
  v51 = v198;
  v227 = v47;
  v228 = v198;
  *&v229 = v49;
  *(&v229 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v52 = v49;
  v147 = v49;
  v53 = swift_getOpaqueTypeMetadata2();
  v157 = *(v53 - 8);
  __chkstk_darwin(v53);
  v145 = &v135 - v54;
  v227 = v50;
  v228 = v51;
  *&v229 = v52;
  *(&v229 + 1) = &protocol witness table for PagingScrollTargetBehavior;
  v55 = swift_getOpaqueTypeConformance2();
  v227 = v53;
  v228 = v55;
  v141 = v55;
  v142 = v53;
  v56 = v55;
  v57 = swift_getOpaqueTypeMetadata2();
  v163 = *(v57 - 8);
  __chkstk_darwin(v57);
  v143 = &v135 - v58;
  v165 = v59;
  v60 = type metadata accessor for ModifiedContent();
  v161 = *(v60 - 8);
  __chkstk_darwin(v60);
  v159 = &v135 - v61;
  v62 = type metadata accessor for ModifiedContent();
  v168 = *(v62 - 8);
  __chkstk_darwin(v62);
  v167 = &v135 - v63;
  v227 = v53;
  v228 = v56;
  v64 = v45;
  v148 = swift_getOpaqueTypeConformance2();
  v218 = v148;
  v219 = &protocol witness table for _AllowsHitTestingModifier;
  v162 = v60;
  v149 = swift_getWitnessTable();
  v216 = v149;
  v217 = &protocol witness table for _TransactionModifier;
  v65 = swift_getWitnessTable();
  v66 = *(v196 + 1);
  v227 = v62;
  v228 = v64;
  *&v229 = v65;
  *(&v229 + 1) = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v170 = *(v67 - 8);
  __chkstk_darwin(v67);
  v197 = &v135 - v68;
  v169 = v62;
  v227 = v62;
  v228 = v64;
  v156 = v65;
  *&v229 = v65;
  *(&v229 + 1) = v66;
  v171 = swift_getOpaqueTypeConformance2();
  v172 = v67;
  v227 = v67;
  v228 = v64;
  *&v229 = v171;
  *(&v229 + 1) = v66;
  v200 = v66;
  v69 = swift_getOpaqueTypeMetadata2();
  v173 = *(v69 - 8);
  v174 = v69;
  __chkstk_darwin(v69);
  v199 = &v135 - v70;
  static Axis.Set.horizontal.getter();
  v71 = v203;
  v210 = v203;
  v211 = v64;
  v212 = v205;
  v72 = v177;
  v213 = v177;
  v73 = v191;
  sub_100127D4C();
  Solarium.init()();
  v206 = v71;
  v207 = v64;
  v208 = v205;
  v209 = v72;
  swift_checkMetadataState();
  v133 = v190;
  v74 = v150;
  View.staticIf<A, B>(_:then:)();
  (*(v194 + 8))(v73, v34);
  v75 = v204;
  v76 = v202;
  v77 = v201;
  v193 = *(v204 + 16);
  v194 = v204 + 16;
  v193(v202, v72, v201);
  v78 = *(v75 + 80);
  v79 = (v78 + 48) & ~v78;
  v191 = (v79 + v195);
  v192 = v78;
  v80 = swift_allocObject();
  *(v80 + 16) = v71;
  *(v80 + 24) = v64;
  *(v80 + 32) = v205;
  v81 = *(v75 + 32);
  v195 = v79;
  v204 = v75 + 32;
  v190 = v81;
  v81(v80 + v79, v76, v77);
  v82 = v155;
  v83 = v158;
  View.onAppear(perform:)();
  v84 = v72;

  (*(v164 + 8))(v74, v83);
  v85 = v72 + *(v77 + 52);
  v86 = type metadata accessor for State();
  v87 = v175;
  v158 = v86;
  v164 = v85;
  State.projectedValue.getter();
  v89 = v151;
  v88 = v152;
  View.scrollPosition<A>(id:anchor:)();
  (*(v176 + 8))(v87, v178);
  v90 = v82;
  v91 = v143;
  (*(v166 + 8))(v90, v88);
  v92 = v179;
  PagingScrollTargetBehavior.init()();
  v94 = v145;
  v93 = v146;
  v95 = v198;
  View.scrollTargetBehavior<A>(_:)();
  (*(v180 + 8))(v92, v95);
  (*(v160 + 8))(v89, v93);
  v96 = v181;
  static ScrollIndicatorVisibility.hidden.getter();
  v97 = v142;
  sub_10012BC6C();
  View.scrollIndicators(_:axes:)();
  (*(v182 + 8))(v96, v183);
  v98 = v201;
  (*(v157 + 8))(v94, v97);
  if ((sub_1006C43AC(v98) & 1) == 0)
  {
    v99 = v139;
    type metadata accessor for State();
    v100 = v136;
    State.wrappedValue.getter();
    sub_100024D10(v100, 1, v138);
    (*(v137 + 8))(v100, v99);
  }

  v101 = v159;
  v102 = v165;
  View.allowsHitTesting(_:)();
  (*(v163 + 8))(v91, v102);
  v103 = v167;
  v104 = v162;
  View.transaction(_:)();
  (*(v161 + 8))(v101, v104);
  v105 = v184;
  sub_1006C41FC();
  v106 = v202;
  v193(v202, v84, v98);
  v107 = swift_allocObject();
  *(v107 + 16) = v203;
  *(v107 + 24) = v64;
  *(v107 + 32) = v205;
  v190(v107 + v195, v106, v98);
  v108 = v169;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  View.onChange<A>(of:initial:_:)();

  v109 = v64;
  v110 = v185;
  v111 = *(v185 + 8);
  v198 = v185 + 8;
  v196 = v111;
  v111(v105, v109);
  (*(v168 + 8))(v103, v108);
  v112 = v189;
  State.wrappedValue.getter();
  v113 = v112;
  if (sub_100024D10(v112, 1, v109) == 1)
  {
    v114 = v186;
    v115 = v98;
    sub_1006C41FC();
    v116 = v189;
    if (sub_100024D10(v189, 1, v109) != 1)
    {
      (*(v135 + 8))(v116, v188);
    }
  }

  else
  {
    v115 = v98;
    v117 = *(v110 + 32);
    v114 = v186;
    v117(v186, v113, v109);
  }

  v118 = v202;
  v193(v202, v84, v115);
  v119 = swift_allocObject();
  v120 = v203;
  *&v121 = v203;
  *(&v121 + 1) = v109;
  v122 = v205;
  *(v119 + 16) = v121;
  *(v119 + 32) = v122;
  v190(v119 + v195, v118, v115);
  v123 = v171;
  v124 = v172;
  v125 = v200;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v126 = v197;
  View.onChange<A>(of:initial:_:)();

  v196(v114, v109);
  v127 = (*(v170 + 8))(v126, v124);
  __chkstk_darwin(v127);
  *(&v135 - 4) = v120;
  *(&v135 - 3) = v109;
  v134 = *(&v205 + 1);
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v128 = v174;
  type metadata accessor for ModifiedContent();
  v227 = v124;
  v228 = v109;
  *&v229 = v123;
  *(&v229 + 1) = v125;
  v129 = swift_getOpaqueTypeConformance2();
  sub_1006D5DC4();
  v130 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v214 = v129;
  v215 = v130;
  v133 = swift_getWitnessTable();
  v131 = v199;
  View.staticIf<A, B>(_:then:)();
  return (*(v173 + 8))(v131, v128);
}

uint64_t sub_1006C9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v17 - v14;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  type metadata accessor for LazyHStackAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  v17[1] = a8;
  swift_getWitnessTable();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1006C91F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a1;
  v27 = a6;
  v24 = a2;
  v25 = a4;
  v29 = a5;
  type metadata accessor for Page();
  type metadata accessor for Array();
  v28 = a3;
  type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v41 = &protocol witness table for EmptyView;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  v39 = swift_getOpaqueTypeConformance2();
  v40 = &protocol witness table for _GeometryGroupEffect;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v23[1] = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PagingScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v34 = swift_getOpaqueTypeConformance2();
  v35 = &protocol witness table for _AllowsHitTestingModifier;
  v32 = swift_getWitnessTable();
  v33 = &protocol witness table for _TransactionModifier;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for ForceInvalidationAfterExtendedLaunch(255);
  v8 = type metadata accessor for ModifiedContent();
  v9 = swift_getOpaqueTypeConformance2();
  v10 = sub_1006D5DC4();
  v30 = v9;
  v31 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v11 = swift_getWitnessTable();
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v12 = swift_getOpaqueTypeMetadata2();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  v43 = v24;
  v44 = v28;
  v45 = v25;
  v46 = v29;
  v19 = type metadata accessor for LazyHStackAnimatableTabView();
  sub_1006C7884(v19, v15);
  v43 = OpaqueTypeMetadata2;
  v44 = &type metadata for UsePostExtendedLaunchTabViewInvalidationWorkaround;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v20 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v15, v12, v20);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_1000833D8(v18, v12, v20);
  return (v21)(v18, v12);
}

uint64_t sub_1006C9AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a1;
  v48 = a6;
  v10 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v10 - 8);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  v61 = a3;
  v44 = a2;
  v62 = a4;
  v63 = a5;
  v45 = a4;
  v49 = a5;
  type metadata accessor for Page();
  v12 = type metadata accessor for Array();
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v60 = v16;
  v61 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v13;
  v61 = v14;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v13;
  v61 = v14;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v60 = v13;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v60 = v13;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v58 = &protocol witness table for EmptyView;
  v59 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable();
  v60 = v22;
  v61 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v25 = swift_getWitnessTable();
  v60 = v12;
  v61 = a3;
  v62 = v24;
  v63 = v25;
  v64 = v49;
  type metadata accessor for ForEach();
  v60 = v22;
  v61 = v23;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = &protocol witness table for _GeometryGroupEffect;
  v55 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v26 = type metadata accessor for LazyHStack();
  v43 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v40 - v27;
  v41 = swift_getWitnessTable();
  v60 = v26;
  v61 = v41;
  v42 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v40 - v34;
  v50 = v44;
  v51 = a3;
  v52 = v45;
  v53 = v49;
  v54 = v47;
  static VerticalAlignment.center.getter();
  sub_100128E20();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v36 = v41;
  View.scrollTargetLayout(isEnabled:)();
  (*(v43 + 8))(v28, v26);
  v60 = v26;
  v61 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v32, v29, v37);
  v38 = *(v30 + 8);
  v38(v32, v29);
  sub_1000833D8(v35, v29, v37);
  return (v38)(v35, v29);
}

uint64_t sub_1006CA150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a1;
  v26 = a6;
  v23 = a2;
  v24 = a4;
  type metadata accessor for Page();
  v22 = type metadata accessor for Array();
  type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v37 = OpaqueTypeConformance2;
  v30 = &protocol witness table for EmptyView;
  v31 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v34 = type metadata accessor for ModifiedContent();
  v35 = swift_getWitnessTable();
  v36 = a5;
  type metadata accessor for ForEach();
  v32 = v9;
  v33 = WitnessTable;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = &protocol witness table for _GeometryGroupEffect;
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = type metadata accessor for WireframeScrollInterestView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v32 = v23;
  v33 = a3;
  v34 = v24;
  v35 = a5;
  v18 = type metadata accessor for LazyHStackAnimatableTabView();
  sub_100129F80(v18, v14);
  v19 = swift_getWitnessTable();
  sub_1000833D8(v14, v11, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_1000833D8(v17, v11, v19);
  return (v20)(v17, v11);
}

uint64_t sub_1006CA5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a2;
  v60 = a1;
  v61 = a7;
  v62 = a4;
  v68 = a3;
  v69 = a4;
  v53 = a3;
  v54 = a5;
  v70 = a5;
  v71 = a6;
  v58 = type metadata accessor for LazyHStackAnimatableTabView();
  v56 = *(v58 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin(v58);
  v55 = &v49 - v11;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  type metadata accessor for Page();
  v12 = type metadata accessor for Array();
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v52 = a6;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v68 = v16;
  v69 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v13;
  v69 = v14;
  v70 = WitnessTable;
  v71 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = v13;
  v69 = v14;
  v70 = WitnessTable;
  v71 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v68 = v13;
  v69 = &type metadata for Solarium;
  v70 = OpaqueTypeMetadata2;
  v71 = WitnessTable;
  v72 = &protocol witness table for Solarium;
  v73 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v68 = v13;
  v69 = &type metadata for Solarium;
  v70 = OpaqueTypeMetadata2;
  v71 = WitnessTable;
  v72 = &protocol witness table for Solarium;
  v73 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v66 = &protocol witness table for EmptyView;
  v67 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable();
  v68 = v22;
  v69 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v25 = swift_getWitnessTable();
  v68 = v12;
  v69 = v62;
  v70 = v24;
  v71 = v25;
  v72 = a6;
  type metadata accessor for ForEach();
  v68 = v22;
  v69 = v23;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = &protocol witness table for _GeometryGroupEffect;
  v63 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v26 = type metadata accessor for LazyHStack();
  v27 = swift_getWitnessTable();
  v68 = v26;
  v69 = v27;
  swift_getOpaqueTypeMetadata2();
  v68 = v26;
  v69 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for ScrollView();
  v50 = swift_getWitnessTable();
  v68 = v28;
  v69 = v50;
  v51 = &opaque type descriptor for <<opaque return type of View.onScrollPhaseChange(_:)>>;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v36 = &v49 - v35;
  v38 = v55;
  v37 = v56;
  v39 = v58;
  (*(v56 + 16))(v55, v59, v58, v34);
  v40 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v41 = swift_allocObject();
  v42 = v62;
  *(v41 + 2) = v53;
  *(v41 + 3) = v42;
  v43 = v52;
  *(v41 + 4) = v54;
  *(v41 + 5) = v43;
  (*(v37 + 32))(&v41[v40], v38, v39);
  v44 = swift_checkMetadataState();
  v45 = v50;
  View.onScrollPhaseChange(_:)();

  v68 = v44;
  v69 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v32, v29, v46);
  v47 = *(v30 + 8);
  v47(v32, v29);
  sub_1000833D8(v36, v29, v46);
  return (v47)(v36, v29);
}

uint64_t sub_1006CAC84()
{
  type metadata accessor for LazyHStackAnimatableTabView();
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  result = ScrollPhase.isScrolling.getter();
  if (v1 != (result & 1))
  {
    ScrollPhase.isScrolling.getter();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1006CADB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v17 - v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  type metadata accessor for LazyHStackAnimatableTabView();
  sub_1006C41FC();
  sub_10001B350(v15, 0, 1, a3);
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v10 + 8))(v15, v9);
}

void sub_1006CAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v121 = a2;
  v108 = *(a5 - 8);
  __chkstk_darwin(a1);
  v106 = v12;
  v107 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v13;
  v129 = v14;
  v130 = v15;
  v131 = v16;
  v17 = type metadata accessor for LazyHStackAnimatableTabView();
  v105 = *(v17 - 8);
  v103 = *(v105 + 64);
  __chkstk_darwin(v17);
  v104 = &v94 - v18;
  v128 = a4;
  v129 = a5;
  v130 = a6;
  v131 = a7;
  v113 = type metadata accessor for TransitionContext();
  v114 = type metadata accessor for Optional();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v101 = &v94 - v21;
  __chkstk_darwin(v22);
  v109 = &v94 - v23;
  v128 = a4;
  v129 = a5;
  v122 = a6;
  v123 = a7;
  v130 = a6;
  v131 = a7;
  v24 = type metadata accessor for Page();
  v25 = type metadata accessor for Optional();
  v117 = *(v25 - 8);
  v118 = v25;
  __chkstk_darwin(v25);
  v115 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v94 - v28;
  v119 = *(v24 - 8);
  __chkstk_darwin(v30);
  v100 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v99 = &v94 - v33;
  __chkstk_darwin(v34);
  v116 = &v94 - v35;
  __chkstk_darwin(v36);
  v120 = &v94 - v37;
  v38 = (a3 + *(v17 + 68));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v128) = *v38;
  v129 = v40;
  sub_10022C350(&qword_100CA5A80);
  v41 = State.wrappedValue.getter();
  if (v125)
  {
    LOBYTE(v128) = v39;
    v129 = v40;
    LOBYTE(v125) = 0;
    State.wrappedValue.setter();
  }

  else
  {
    v111 = v17;
    v42 = *(a3 + *(v17 + 88));
    v128 = v42;
    __chkstk_darwin(v41);
    *(&v94 - 6) = a4;
    *(&v94 - 5) = a5;
    v43 = v123;
    *(&v94 - 4) = v122;
    *(&v94 - 3) = v43;
    v110 = a3;
    *(&v94 - 2) = a3;
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.first(where:)();

    if (sub_100024D10(v29, 1, v24) == 1)
    {
      (*(v117 + 8))(v29, v118);
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000703C(v44, qword_100D90A90);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "[LazyHStack AnimatableTabView] The internal tab view selection does not correspond to a known page", v47, 2u);
      }

      sub_1006D3104();
    }

    else
    {
      v97 = *(v119 + 32);
      v48 = v97(v120, v29, v24);
      v98 = &v94;
      v128 = v42;
      __chkstk_darwin(v48);
      v96 = a4;
      *(&v94 - 6) = a4;
      *(&v94 - 5) = a5;
      v95 = a5;
      v49 = v123;
      *(&v94 - 4) = v122;
      *(&v94 - 3) = v49;
      *(&v94 - 2) = v121;

      v50 = v115;
      Sequence.first(where:)();

      v51 = v24;
      if (sub_100024D10(v50, 1, v24) == 1)
      {
        (*(v117 + 8))(v50, v118);
        if (qword_100CA26B8 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000703C(v52, qword_100D90A90);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "[LazyHStack AnimatableTabView] The tab view destination does not correspond to a known page", v55, 2u);
        }

        sub_1006D3104();
        (*(v119 + 8))(v120, v51);
      }

      else
      {
        v56 = v116;
        v97(v116, v50, v24);
        v57 = v111;
        v58 = v110;
        v59 = (v110 + *(v111 + 56));
        if (*v59)
        {
          v118 = *v59;
          v60 = v24;
          v61 = v59[1];
          v62 = (v110 + *(v111 + 80));
          v64 = *v62;
          v63 = v62[1];
          v128 = *v62;
          v129 = v63;

          sub_10022C350(&qword_100CD2330);
          State.wrappedValue.getter();
          if (__OFADD__(v127, 1))
          {
            __break(1u);
          }

          else
          {
            v125 = v64;
            v126 = v63;
            v124 = v127 + 1;
            State.wrappedValue.setter();

            v128 = v64;
            v129 = v63;
            State.wrappedValue.getter();
            v65 = v125;
            v66 = (v58 + *(v57 + 76));
            v67 = v114;
            type metadata accessor for State();
            v68 = v109;
            State.wrappedValue.getter();
            v69 = sub_100024D10(v68, 1, v113);
            v70 = *(v112 + 8);
            v70(v68, v67);
            v71 = v95;
            if (v69 == 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              v73 = v65;
              v115 = v65;
              v74 = *(v119 + 16);
              v117 = v61;
              v75 = v99;
              v94 = v60;
              v74(v99, v120, v60);
              v109 = v66;
              v76 = v100;
              v74(v100, v116, v60);
              v77 = v101;
              v78 = v73;
              v79 = v71;
              sub_1006CC0B0(v75, v76, v78, v101);
              sub_10001B350(v77, 0, 1, v113);
              v80 = v114;
              (*(v112 + 16))(v102, v77, v114);
              State.wrappedValue.setter();
              v70(v77, v80);
              v81 = v105;
              v82 = v104;
              v83 = v111;
              (*(v105 + 16))(v104, v110, v111);
              v84 = v108;
              v85 = v107;
              (*(v108 + 16))(v107, v121, v79);
              v86 = (*(v81 + 80) + 48) & ~*(v81 + 80);
              v87 = (v103 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
              v88 = (*(v84 + 80) + v87 + 8) & ~*(v84 + 80);
              v89 = swift_allocObject();
              *(v89 + 2) = v96;
              *(v89 + 3) = v79;
              v90 = v123;
              *(v89 + 4) = v122;
              *(v89 + 5) = v90;
              (*(v81 + 32))(&v89[v86], v82, v83);
              *&v89[v87] = v115;
              (*(v84 + 32))(&v89[v88], v85, v79);
              sub_1006C2D24();

              v91 = *(v119 + 8);
              v92 = v94;
              v91(v116, v94);
              v91(v120, v92);
            }

            else
            {
              sub_1006D3104();
              v72 = *(v119 + 8);
              v72(v116, v60);
              v72(v120, v60);
            }
          }
        }

        else
        {
          sub_1006D3104();
          v93 = *(v119 + 8);
          v93(v56, v51);
          v93(v120, v51);
        }
      }
    }
  }
}

uint64_t sub_1006CBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a2;
  v38 = a5;
  v39 = a1;
  v46 = *(a4 - 8);
  __chkstk_darwin(a1);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v35 - v12;
  v37 = *(v10 - 8);
  __chkstk_darwin(v14);
  v41 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  v42 = a3;
  v43 = a4;
  v22 = v38;
  v44 = v38;
  v45 = a6;
  v23 = type metadata accessor for Page();
  (*(v46 + 16))(v21, v39 + *(v23 + 52), a4);
  sub_10001B350(v21, 0, 1, a4);
  v42 = a3;
  v43 = a4;
  v24 = a6;
  v25 = v37;
  v39 = v24;
  v44 = v22;
  v45 = v24;
  type metadata accessor for LazyHStackAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  v40 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = *(v25 + 16);
  v27(v13, v21, v10);
  v27(&v13[v26], v18, v10);
  if (sub_100024D10(v13, 1, a4) != 1)
  {
    v27(v41, v13, v10);
    if (sub_100024D10(&v13[v26], 1, a4) != 1)
    {
      v31 = v46;
      (*(v46 + 32))(v36, &v13[v26], a4);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v31 + 8);
      v46 = v31 + 8;
      v32(v36, a4);
      v33 = *(v25 + 8);
      v33(v18, v10);
      v33(v21, v10);
      v32(v41, a4);
      v33(v13, v10);
      return v29 & 1;
    }

    v30 = *(v25 + 8);
    v30(v18, v10);
    v30(v21, v10);
    (*(v46 + 8))(v41, a4);
    goto LABEL_6;
  }

  v28 = *(v25 + 8);
  v28(v18, v10);
  v28(v21, v10);
  if (sub_100024D10(&v13[v26], 1, a4) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v13, v40);
    v29 = 0;
    return v29 & 1;
  }

  v28(v13, v10);
  v29 = 1;
  return v29 & 1;
}

uint64_t sub_1006CC0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Page();
  v8 = *(*(v7 - 8) + 32);
  v8(a4, a1, v7);
  v9 = type metadata accessor for TransitionContext();
  result = (v8)(a4 + *(v9 + 52), a2, v7);
  *(a4 + *(v9 + 56)) = a3;
  return result;
}

void sub_1006CC1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a3;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v11 = type metadata accessor for TransitionContext();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  type metadata accessor for LazyHStackAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v17, 1, v11))
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v18 = v21;
    (*(v21 + 16))(v13, v17, v11);
    (*(v15 + 8))(v17, v14);
    v19 = *&v13[*(v11 + 56)];
    (*(v18 + 8))(v13, v11);
    if (v19 == v22)
    {
      sub_1006D3104();
    }
  }
}

uint64_t sub_1006CC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v15 = type metadata accessor for LazyHStackAnimatableTabView();
  v16 = (a3 + *(v15 + 64));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v25) = *v16;
  v26 = v18;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v24)
  {
    LOBYTE(v25) = v17;
    v26 = v18;
    v24 = 0;
  }

  else
  {
    (*(v8 + 16))(v10, a2, a5);
    sub_1006C423C(v10, v15);
    v19 = (a3 + *(v15 + 68));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v25) = v20;
    v26 = v21;
    v24 = 1;
  }

  return State.wrappedValue.setter();
}

uint64_t sub_1006CC574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a1;
  v69 = a6;
  v66 = type metadata accessor for ForceInvalidationAfterExtendedLaunch(0);
  __chkstk_darwin(v66);
  v67 = (v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = a2;
  v85 = a3;
  v70 = a3;
  v86 = a4;
  v87 = a5;
  type metadata accessor for Page();
  v11 = type metadata accessor for Array();
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v12 = a5;
  v65 = a5;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v84 = v16;
  v85 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = v14;
  v86 = WitnessTable;
  v87 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = v13;
  v85 = v14;
  v86 = WitnessTable;
  v87 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = &type metadata for Solarium;
  v86 = OpaqueTypeMetadata2;
  v87 = WitnessTable;
  v88 = &protocol witness table for Solarium;
  v89 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v84 = v13;
  v85 = &type metadata for Solarium;
  v86 = OpaqueTypeMetadata2;
  v87 = WitnessTable;
  v88 = &protocol witness table for Solarium;
  v89 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v82 = &protocol witness table for EmptyView;
  v83 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable();
  v84 = v22;
  v85 = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v25 = swift_getWitnessTable();
  v26 = v70;
  v84 = v11;
  v85 = v70;
  v86 = v24;
  v87 = v25;
  v88 = v12;
  type metadata accessor for ForEach();
  v84 = v22;
  v85 = v23;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = &protocol witness table for _GeometryGroupEffect;
  v79 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WireframeScrollInterestView();
  swift_getWitnessTable();
  v27 = type metadata accessor for LazyHStack();
  v28 = swift_getWitnessTable();
  v84 = v27;
  v85 = v28;
  swift_getOpaqueTypeMetadata2();
  v84 = v27;
  v85 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for ScrollView();
  v30 = swift_getWitnessTable();
  v84 = v29;
  v85 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v84 = v29;
  v85 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v84 = v29;
  v85 = &type metadata for Solarium;
  v86 = v31;
  v87 = v30;
  v88 = &protocol witness table for Solarium;
  v89 = v32;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for ModifiedContent();
  v84 = v29;
  v85 = &type metadata for Solarium;
  v86 = v31;
  v87 = v30;
  v88 = &protocol witness table for Solarium;
  v89 = v32;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = &protocol witness table for _AppearanceActionModifier;
  v34 = swift_getWitnessTable();
  v84 = v33;
  v85 = v26;
  v35 = v65;
  v86 = v34;
  v87 = v65;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = type metadata accessor for PagingScrollTargetBehavior();
  v84 = v33;
  v85 = v26;
  v86 = v34;
  v87 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = &protocol witness table for PagingScrollTargetBehavior;
  v39 = swift_getOpaqueTypeMetadata2();
  v84 = v36;
  v85 = v37;
  v86 = v38;
  v87 = &protocol witness table for PagingScrollTargetBehavior;
  v40 = swift_getOpaqueTypeConformance2();
  v84 = v39;
  v85 = v40;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v41 = type metadata accessor for ModifiedContent();
  v84 = v39;
  v85 = v40;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for _AllowsHitTestingModifier;
  v64 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v73 = swift_getWitnessTable();
  v74 = &protocol witness table for _TransactionModifier;
  v42 = swift_getWitnessTable();
  v43 = v35[1];
  v84 = v41;
  v85 = v26;
  v86 = v42;
  v87 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v65 = v44;
  v84 = v41;
  v85 = v26;
  v86 = v42;
  v87 = v43;
  v63 = swift_getOpaqueTypeConformance2();
  v84 = v44;
  v85 = v26;
  v86 = v63;
  v87 = v43;
  v62[1] = swift_getOpaqueTypeMetadata2();
  v45 = v66;
  v46 = type metadata accessor for ModifiedContent();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = v62 - v51;
  KeyPath = swift_getKeyPath();
  v54 = v67;
  *v67 = KeyPath;
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v55 = v54 + *(v45 + 20);
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_100121A00(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState);
  *v55 = Environment.init<A>(_:)();
  *(v55 + 8) = v56 & 1;
  v84 = v65;
  v85 = v70;
  v86 = v63;
  v87 = v43;
  v57 = swift_getOpaqueTypeConformance2();
  View.modifier<A>(_:)();
  sub_1006D5FBC(v54);
  v58 = sub_100121A00(&qword_100CD2340, type metadata accessor for ForceInvalidationAfterExtendedLaunch);
  v71 = v57;
  v72 = v58;
  v59 = swift_getWitnessTable();
  sub_1000833D8(v49, v46, v59);
  v60 = *(v47 + 8);
  v60(v49, v46);
  sub_1000833D8(v52, v46, v59);
  return (v60)(v52, v46);
}

uint64_t sub_1006CCF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v28 = a1;
  v29 = a2;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v32 = type metadata accessor for TransitionContext();
  v33 = type metadata accessor for Optional();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v21 = (v28 + *(type metadata accessor for LazyHStackAnimatableTabView() + 64));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v34) = v22;
  v35 = v23;
  v38 = 1;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  (*(*(a4 - 8) + 16))(v20, v29, a4);
  sub_10001B350(v20, 0, 1, a4);
  (*(v15 + 16))(v17, v20, v14);
  type metadata accessor for State();
  State.wrappedValue.setter();
  (*(v15 + 8))(v20, v14);
  sub_10001B350(v13, 1, 1, v32);
  v24 = v31;
  v25 = v33;
  (*(v31 + 16))(v30, v13, v33);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_1006CD230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1006CD2D0();
  v6 = v5;
  v7 = sub_10022C350(&qword_100CD2478);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10022C350(qword_100CD2480);
  v9 = (a2 + *(result + 52));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

unint64_t sub_1006CD2D0()
{
  v1 = v0;
  v2 = 0xD000000000000013;
  v3 = type metadata accessor for EnvironmentValues();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutDirection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  sub_1001681D4();
  (*(v7 + 104))(v9, enum case for LayoutDirection.leftToRight(_:), v6);
  v13 = static LayoutDirection.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v23 = 0xD00000000000002DLL;
    v24 = 0x8000000100ADB7E0;
    v15 = *(v1 + *(type metadata accessor for ForceInvalidationAfterExtendedLaunch(0) + 20) + 8);

    if ((v15 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v22 + 8))(v5, v3);
    }

    v17 = sub_1004237C8();

    if (v17)
    {
      v18 = 0x65736C6166;
    }

    else
    {
      v18 = 1702195828;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = v19;
    String.append(_:)(*&v18);

    return v23;
  }

  return v2;
}

uint64_t sub_1006CD5E4()
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA29B8 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  return v1;
}

uint64_t sub_1006CD66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v29 = *(v3 + 16);
  v29(&v25 - v7, v6);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = &protocol witness table for MainActor;
  v13 = a1[2];
  v27 = a1[3];
  v12 = v27;
  v28 = v13;
  *(v11 + 4) = v13;
  *(v11 + 5) = v12;
  v14 = a1[4];
  v25 = a1[5];
  v15 = v25;
  v26 = v14;
  *(v11 + 6) = v14;
  *(v11 + 7) = v15;
  v16 = *(v3 + 32);
  v16(&v11[v10], v8, a1);
  v17 = v31;
  (v29)(v31, v30, a1);
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  v21 = v27;
  v20 = v28;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v20;
  v22 = v25;
  v23 = v26;
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  *(v19 + 7) = v22;
  v16(&v19[v10], v17, a1);
  return Binding.init(get:set:)();
}

uint64_t sub_1006CD898()
{
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for State();
  return State.wrappedValue.getter();
}

uint64_t sub_1006CD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  __chkstk_darwin(a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  (*(v8 + 16))(v10, a1, a6);
  type metadata accessor for State();
  return State.wrappedValue.setter();
}

uint64_t sub_1006CD9FC(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 92)))
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = (v1 + *(a1 + 96));
    v7 = *v8;
    if (*(v8 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000E4DF8(v7, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v7) = v11[15];
    }
  }

  return v7 & 1;
}

uint64_t sub_1006CDB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v50 = a1;
  v55 = *(a1 - 8);
  __chkstk_darwin(a1);
  v52 = v2;
  v54 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v60 = v3[3];
  v4 = v60;
  v61 = v5;
  v62 = v6;
  v63 = v7;
  type metadata accessor for Page();
  v8 = type metadata accessor for Array();
  v48 = v6;
  v49 = v8;
  v51 = v4;
  v60 = v4;
  v61 = v5;
  v62 = v6;
  v63 = v7;
  v9 = type metadata accessor for PageContainer();
  v10 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for EmptyVisualEffect();
  v13 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v60 = v12;
  v61 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v9;
  v61 = v10;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v9;
  v61 = v10;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v60 = v9;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v16;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v60 = v9;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v58 = &protocol witness table for EmptyView;
  v59 = v17;
  swift_getWitnessTable();
  v18 = type metadata accessor for VStack();
  v19 = swift_getWitnessTable();
  v60 = v18;
  v61 = v5;
  v62 = v19;
  v63 = v7;
  v20 = type metadata accessor for IDView();
  v21 = v49;
  v22 = swift_getWitnessTable();
  v60 = v21;
  v61 = v5;
  v49 = v5;
  v62 = v20;
  v63 = v22;
  v47 = v7;
  v64 = v7;
  v23 = type metadata accessor for ForEach();
  v57 = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v46 = v23;
  v24 = type metadata accessor for WireframeScrollInterestView();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v43[-v29];
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v44 = byte_100D8FB88;
  v31 = v50;
  v32 = v54;
  v33 = *(v53 + *(v50 + 64));
  v34 = v55;
  (*(v55 + 16))(v54);
  v35 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v38 = v48;
  v37 = v49;
  *(v36 + 2) = v51;
  *(v36 + 3) = v37;
  v39 = v47;
  *(v36 + 4) = v38;
  *(v36 + 5) = v39;
  (*(v34 + 32))(&v36[v35], v32, v31);

  sub_10012A5C4(6447476, 0xE300000000000000, v44, v33, sub_1006D5954, v27);
  v40 = swift_getWitnessTable();
  sub_1000833D8(v27, v24, v40);
  v41 = *(v25 + 8);
  v41(v27, v24);
  sub_1000833D8(v30, v24, v40);
  return (v41)(v30, v24);
}

uint64_t sub_1006CE0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a1;
  v55 = a6;
  v60 = a2;
  v61 = a3;
  v47 = a2;
  v48 = a4;
  v62 = a4;
  v63 = a5;
  v10 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v50 = *(v10 - 8);
  v51 = v10;
  v52 = *(v50 + 64);
  __chkstk_darwin(v10);
  v49 = v44 - v11;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v54 = type metadata accessor for Page();
  v56 = type metadata accessor for Array();
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v12 = type metadata accessor for PageContainer();
  v13 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v60 = v15;
  v61 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v12;
  v61 = v13;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = v12;
  v61 = v13;
  v62 = WitnessTable;
  v63 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v60 = v12;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v60 = v12;
  v61 = &type metadata for Solarium;
  v62 = OpaqueTypeMetadata2;
  v63 = WitnessTable;
  v64 = &protocol witness table for Solarium;
  v65 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v58 = &protocol witness table for EmptyView;
  v59 = v20;
  swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  v22 = swift_getWitnessTable();
  v60 = v21;
  v61 = a3;
  v23 = a3;
  v62 = v22;
  v63 = a5;
  v44[0] = a5;
  v24 = type metadata accessor for IDView();
  v44[1] = v24;
  v25 = v56;
  v45 = swift_getWitnessTable();
  v60 = v25;
  v61 = a3;
  v62 = v24;
  v63 = v45;
  v64 = a5;
  v26 = type metadata accessor for ForEach();
  v46 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = v44 - v31;
  v33 = v50;
  v34 = v51;
  v60 = *(v53 + *(v51 + 56));
  v35 = v49;
  (*(v50 + 16))(v49, v30);
  v36 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 2) = v47;
  *(v37 + 3) = v23;
  v39 = v44[0];
  *(v37 + 4) = v38;
  *(v37 + 5) = v39;
  (*(v33 + 32))(&v37[v36], v35, v34);

  v40 = swift_getWitnessTable();
  swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v57 = v40;
  v41 = swift_getWitnessTable();
  sub_1000833D8(v28, v26, v41);
  v42 = *(v46 + 8);
  v42(v28, v26);
  sub_1000833D8(v32, v26, v41);
  return (v42)(v32, v26);
}

uint64_t sub_1006CE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a5;
  v37 = a4;
  v39 = a1;
  v40 = a2;
  v41 = a7;
  v9 = type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v50 = v9;
  v51 = &type metadata for Solarium;
  v52 = OpaqueTypeMetadata2;
  v53 = WitnessTable;
  v54 = &protocol witness table for Solarium;
  v55 = OpaqueTypeConformance2;
  v48 = &protocol witness table for EmptyView;
  v49 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v33 = v13;
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v32 = &v30 - v14;
  v34 = swift_getWitnessTable();
  v15 = v37;
  v50 = v13;
  v51 = v37;
  v52 = v34;
  v53 = a6;
  v16 = a6;
  v31 = a6;
  v17 = type metadata accessor for IDView();
  v35 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v30 - v21;
  v23 = a3;
  v42 = a3;
  v43 = v15;
  v24 = v38;
  v44 = v38;
  v45 = v16;
  v46 = v39;
  v47 = v40;
  j___s7SwiftUI19HorizontalAlignmentV6centerACvgZ();
  v25 = v32;
  VStack.init(alignment:spacing:content:)();
  v50 = v23;
  v51 = v15;
  v52 = v24;
  v53 = v31;
  type metadata accessor for Page();
  v26 = v33;
  View.id<A>(_:)();
  (*(v36 + 8))(v25, v26);
  v27 = swift_getWitnessTable();
  sub_1000833D8(v19, v17, v27);
  v28 = *(v35 + 8);
  v28(v19, v17);
  sub_1000833D8(v22, v17, v27);
  return (v28)(v22, v17);
}

uint64_t sub_1006CEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a2;
  v78 = a1;
  v86 = a7;
  type metadata accessor for TransitionContext();
  v71 = type metadata accessor for Optional();
  __chkstk_darwin(v71);
  v73 = &v66 - v11;
  v93 = a3;
  v94 = a4;
  v95 = a5;
  v96 = a6;
  v87 = a6;
  v88 = type metadata accessor for Page();
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v70 = &v66 - v12;
  v93 = a3;
  v94 = a4;
  v95 = a5;
  v96 = a6;
  v13 = type metadata accessor for PageContainer();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v66 - v14;
  v15 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v17 = type metadata accessor for EmptyVisualEffect();
  v18 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v93 = v17;
  v94 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v13;
  v94 = v15;
  v95 = WitnessTable;
  v96 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = v13;
  v94 = v15;
  v95 = WitnessTable;
  v96 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v84 = v13;
  v85 = WitnessTable;
  v93 = v13;
  v94 = &type metadata for Solarium;
  v89 = OpaqueTypeMetadata2;
  v95 = OpaqueTypeMetadata2;
  v96 = WitnessTable;
  v97 = &protocol witness table for Solarium;
  v98 = v21;
  v83 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v68 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v67 = &v66 - v26;
  v27 = *(a4 - 1);
  __chkstk_darwin(v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v31;
  v82 = type metadata accessor for _ConditionalContent();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v66 - v32;
  v75 = a3;
  v93 = a3;
  v94 = a4;
  v76 = a5;
  v95 = a5;
  v96 = v87;
  v33 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for State();
  v34 = v77;
  State.wrappedValue.getter();
  v35 = v78;
  LOBYTE(OpaqueTypeConformance2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v27 + 8))(v30, a4);
  if (OpaqueTypeConformance2 & 1) != 0 || (sub_1006CD9FC(v33) & 1) == 0 && (*(v34 + v33[20]) != 1 || (v62 = (v34 + v33[19]), v63 = *v62, v64 = *(v62 + 1), LOBYTE(v93) = v63, v94 = v64, sub_10022C350(&qword_100CA5A80), State.wrappedValue.getter(), (v90)))
  {
    v36 = v70;
    (*(v69 + 16))(v70, v35, v88);
    v37 = (v34 + v33[15]);
    v38 = *v37;
    v39 = v37[1];
    type metadata accessor for State();

    v40 = v73;
    State.wrappedValue.getter();
    v41 = v24;
    v42 = v72;
    v43 = v39;
    v44 = v75;
    v45 = v76;
    v46 = v87;
    sub_10012CE9C(v36, v38, v43, v40, v72);
    v47 = Solarium.init()();
    __chkstk_darwin(v47);
    *(&v66 - 6) = v44;
    *(&v66 - 5) = a4;
    *(&v66 - 4) = v45;
    *(&v66 - 3) = v46;
    v48 = swift_checkMetadataState();
    v49 = v83;
    v65 = v83;
    v50 = v84;
    v51 = v85;
    View.staticIf<A, B>(_:then:)();
    (*(v74 + 8))(v42, v50);
    v93 = v50;
    v94 = &type metadata for Solarium;
    v95 = v48;
    v96 = v51;
    v97 = &protocol witness table for Solarium;
    v98 = v49;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v67;
    v54 = v81;
    sub_1000833D8(v41, v81, v52);
    v55 = *(v68 + 8);
    v55(v41, v54);
    sub_1000833D8(v53, v54, v52);
    v56 = v79;
    sub_10012D09C();
    v55(v41, v54);
    v55(v53, v54);
    v57 = v89;
  }

  else
  {
    v50 = v84;
    v51 = v85;
    v93 = v84;
    v57 = v89;
    v94 = &type metadata for Solarium;
    v95 = v89;
    v96 = v85;
    v49 = v83;
    v97 = &protocol witness table for Solarium;
    v98 = v83;
    swift_getOpaqueTypeConformance2();
    v56 = v79;
    sub_1003E8038();
  }

  v93 = v50;
  v94 = &type metadata for Solarium;
  v95 = v57;
  v96 = v51;
  v97 = &protocol witness table for Solarium;
  v98 = v49;
  v58 = swift_getOpaqueTypeConformance2();
  v91 = &protocol witness table for EmptyView;
  v92 = v58;
  v59 = v82;
  v60 = swift_getWitnessTable();
  sub_1000833D8(v56, v59, v60);
  return (*(v80 + 8))(v56, v59);
}

void sub_1006CF448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_10000C778();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v87 = v31;
  v92 = v32;
  v94 = v33;
  v89 = v34;
  v90 = a21;
  v93 = type metadata accessor for ScrollTransitionConfiguration();
  sub_1000037C4();
  v91 = v35;
  __chkstk_darwin(v36);
  sub_1000037D8();
  v88 = v38 - v37;
  v95 = v30;
  v96 = v28;
  v82 = v30;
  v83 = v28;
  v39 = v28;
  v97 = v26;
  v98 = v24;
  v84 = v26;
  v85 = v24;
  v40 = v24;
  v86 = v22(0, &v95);
  sub_1000037C4();
  v42 = v41;
  __chkstk_darwin(v43);
  v45 = &v78 - v44;
  v95 = v30;
  v96 = v39;
  v97 = v26;
  v98 = v40;
  v46 = type metadata accessor for PageContainer();
  v47 = sub_10022E824(&qword_100CC5C30);
  sub_100006558();
  v78 = v46;
  swift_getWitnessTable();
  sub_100052704();
  v48 = type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  v51 = sub_100121A00(v49, v50);
  v95 = v48;
  v96 = v51;
  sub_10001CAD0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v46;
  v96 = v47;
  v53 = v47;
  v97 = v46;
  v98 = OpaqueTypeConformance2;
  v54 = v46;
  v79 = OpaqueTypeConformance2;
  v80 = &opaque type descriptor for <<opaque return type of View.scrollTransition<A>(_:axis:transition:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v81 = v56;
  __chkstk_darwin(v57);
  sub_100003C38();
  v59 = __chkstk_darwin(v58);
  v61 = &v78 - v60;
  v62 = v45;
  v63 = v86;
  (*(v42 + 16))(v45, v87, v86, v59);
  v64 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v65 = swift_allocObject();
  v66 = v83;
  *(v65 + 2) = v82;
  *(v65 + 3) = v66;
  v67 = v85;
  *(v65 + 4) = v84;
  *(v65 + 5) = v67;
  (*(v42 + 32))(&v65[v64], v62, v63);
  v68 = swift_checkMetadataState();
  v69 = v88;
  static ScrollTransitionConfiguration.interactive.getter();
  v70 = v53;
  v71 = v54;
  v72 = v79;
  View.scrollTransition<A>(_:axis:transition:)();

  (*(v91 + 8))(v69, v93);
  v95 = v68;
  v96 = v70;
  v97 = v71;
  v98 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = sub_1000D42A0();
  sub_1000833D8(v74, v75, v73);
  v76 = *(v81 + 8);
  v77 = sub_1000D42A0();
  v76(v77);
  sub_1000833D8(v61, OpaqueTypeMetadata2, v73);
  (v76)(v61, OpaqueTypeMetadata2);
  sub_10000536C();
}

uint64_t sub_1006CF830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v124 = *(a1 - 8);
  __chkstk_darwin(a1);
  v131 = v2;
  v132 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v125 = *(v4 - 1);
  __chkstk_darwin(v3);
  v123 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v6;
  v7 = *(v6 + 16);
  v134 = *(v6 + 32);
  v149 = v7;
  v150 = v4;
  v8 = v7;
  v133 = v7;
  v151 = v134;
  v97 = type metadata accessor for TransitionContext();
  v98 = type metadata accessor for Optional();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v94 - v9;
  v149 = v8;
  v150 = v4;
  v151 = v134;
  type metadata accessor for Page();
  v10 = type metadata accessor for Array();
  v149 = v8;
  v150 = v4;
  v151 = v134;
  v11 = type metadata accessor for PageContainer();
  v12 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for EmptyVisualEffect();
  v15 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v149 = v14;
  v150 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v149 = v11;
  v150 = v12;
  *&v151 = WitnessTable;
  *(&v151 + 1) = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v149 = v11;
  v150 = v12;
  *&v151 = WitnessTable;
  *(&v151 + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v149 = v11;
  v150 = &type metadata for Solarium;
  *&v151 = OpaqueTypeMetadata2;
  *(&v151 + 1) = WitnessTable;
  v152 = &protocol witness table for Solarium;
  v153 = v18;
  v128 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v149 = v11;
  v150 = &type metadata for Solarium;
  *&v151 = OpaqueTypeMetadata2;
  *(&v151 + 1) = WitnessTable;
  v152 = &protocol witness table for Solarium;
  v153 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v147 = &protocol witness table for EmptyView;
  v148 = v19;
  v127 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable();
  v20 = type metadata accessor for VStack();
  v21 = swift_getWitnessTable();
  v149 = v20;
  v150 = v4;
  *&v151 = v21;
  v129 = *(&v134 + 1);
  *(&v151 + 1) = *(&v134 + 1);
  v22 = type metadata accessor for IDView();
  v23 = swift_getWitnessTable();
  v149 = v10;
  v150 = v4;
  *&v151 = v22;
  *(&v151 + 1) = v23;
  v152 = *(&v134 + 1);
  type metadata accessor for ForEach();
  v146 = swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = type metadata accessor for WireframeScrollInterestView();
  v25 = swift_getWitnessTable();
  v149 = v4;
  v150 = v24;
  *&v151 = *(&v134 + 1);
  *(&v151 + 1) = v25;
  v26 = type metadata accessor for TabView();
  v27 = type metadata accessor for PageTabViewStyle();
  v28 = swift_getWitnessTable();
  v149 = v26;
  v150 = v27;
  *&v151 = v28;
  *(&v151 + 1) = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for LazyPageTabViewStyle();
  v149 = v26;
  v150 = v29;
  *&v151 = v28;
  *(&v151 + 1) = &protocol witness table for LazyPageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v99 = type metadata accessor for _ConditionalContent();
  v30 = type metadata accessor for Group();
  v118 = *(v30 - 8);
  __chkstk_darwin(v30);
  v105 = &v94 - v31;
  v32 = type metadata accessor for ModifiedContent();
  v117 = *(v32 - 8);
  __chkstk_darwin(v32);
  v112 = &v94 - v33;
  v34 = type metadata accessor for ModifiedContent();
  v121 = *(v34 - 8);
  __chkstk_darwin(v34);
  v119 = &v94 - v35;
  v149 = v26;
  v150 = v27;
  *&v151 = v28;
  *(&v151 + 1) = &protocol witness table for PageTabViewStyle;
  v36 = swift_getOpaqueTypeConformance2();
  v149 = v26;
  v150 = v29;
  *&v151 = v28;
  *(&v151 + 1) = &protocol witness table for LazyPageTabViewStyle;
  v37 = swift_getOpaqueTypeConformance2();
  v144 = v36;
  v145 = v37;
  v143 = swift_getWitnessTable();
  v120 = v30;
  v101 = swift_getWitnessTable();
  v141 = v101;
  v142 = &protocol witness table for _AllowsHitTestingModifier;
  v115 = v32;
  v103 = swift_getWitnessTable();
  v139 = v103;
  v140 = &protocol witness table for _TransactionModifier;
  v38 = swift_getWitnessTable();
  v149 = v34;
  v150 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v149 = v34;
  v150 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v149 = v34;
  v150 = &type metadata for Solarium;
  *&v151 = v39;
  *(&v151 + 1) = v38;
  v152 = &protocol witness table for Solarium;
  v153 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v107 = *(v41 - 8);
  __chkstk_darwin(v41);
  v127 = &v94 - v42;
  v149 = v34;
  v150 = &type metadata for Solarium;
  v102 = v39;
  *&v151 = v39;
  *(&v151 + 1) = v38;
  v152 = &protocol witness table for Solarium;
  v153 = v40;
  v100 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = *(v129 + 8);
  v149 = v41;
  v150 = v4;
  *&v151 = v43;
  *(&v151 + 1) = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v113 = *(v45 - 8);
  __chkstk_darwin(v45);
  v128 = &v94 - v46;
  v110 = v41;
  v149 = v41;
  v150 = v4;
  v104 = v43;
  *&v151 = v43;
  *(&v151 + 1) = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v116 = v45;
  v149 = v45;
  v150 = v4;
  v109 = v47;
  *&v151 = v47;
  *(&v151 + 1) = v44;
  v129 = v44;
  v48 = v130;
  v114 = swift_getOpaqueTypeMetadata2();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v106 = &v94 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v108 = &v94 - v51;
  v135 = v133;
  v136 = v4;
  v137 = v134;
  v138 = v48;
  v52 = v105;
  Group<A>.init(content:)();
  v53 = v122;
  if ((sub_1006CD9FC(v122) & 1) == 0)
  {
    v54 = v98;
    type metadata accessor for State();
    v55 = v95;
    State.wrappedValue.getter();
    sub_100024D10(v55, 1, v97);
    (*(v96 + 8))(v55, v54);
  }

  v56 = v112;
  v57 = v120;
  View.allowsHitTesting(_:)();
  (*(v118 + 8))(v52, v57);
  v58 = v119;
  v59 = v115;
  View.transaction(_:)();
  (*(v117 + 8))(v56, v59);
  v60 = Solarium.init()();
  __chkstk_darwin(v60);
  *&v61 = v133;
  v62 = v133;
  *(&v61 + 1) = v4;
  v63 = v134;
  *(&v94 - 3) = v61;
  *(&v94 - 2) = v63;
  swift_checkMetadataState();
  v93 = v100;
  View.staticIf<A, B>(_:then:)();
  v121[1](v58, v34);
  type metadata accessor for Binding();
  v64 = v123;
  Binding.wrappedValue.getter();
  v65 = v124;
  v66 = v48;
  v67 = *(v124 + 16);
  v119 = (v124 + 16);
  v121 = v67;
  v68 = v132;
  (v67)(v132, v66, v53);
  v69 = *(v65 + 80);
  v120 = (v69 + 48) & ~v69;
  v70 = swift_allocObject();
  *(v70 + 16) = v62;
  *(v70 + 24) = v4;
  *(v70 + 32) = v134;
  v71 = v53;
  v124 = *(v65 + 32);
  (v124)(v70 + ((v69 + 48) & ~v69), v68, v53);
  v72 = v110;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v73 = v64;
  v74 = v127;
  View.onChange<A>(of:initial:_:)();

  v75 = *(v125 + 8);
  v75(v73, v4);
  (*(v107 + 8))(v74, v72);
  type metadata accessor for State();
  v76 = v130;
  v77 = v73;
  State.wrappedValue.getter();
  v78 = v132;
  (v121)(v132, v76, v71);
  v79 = v120;
  v80 = swift_allocObject();
  *(v80 + 16) = v133;
  *(v80 + 24) = v4;
  *(v80 + 32) = v134;
  (v124)(v80 + v79, v78, v71);
  v81 = v116;
  v82 = v109;
  v83 = v129;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v84 = v106;
  v85 = v77;
  v86 = v83;
  v87 = v128;
  View.onChange<A>(of:initial:_:)();

  v75(v85, v4);
  (*(v113 + 8))(v87, v81);
  v149 = v81;
  v150 = v4;
  *&v151 = v82;
  *(&v151 + 1) = v86;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v108;
  v90 = v114;
  sub_1000833D8(v84, v114, v88);
  v91 = *(v111 + 8);
  v91(v84, v90);
  sub_1000833D8(v89, v90, v88);
  return (v91)(v89, v90);
}

uint64_t sub_1006D09AC@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v134 = a4;
  v132 = a1;
  v130 = a6;
  v137 = type metadata accessor for LazyPageTabViewStyle();
  v118 = *(v137 - 8);
  __chkstk_darwin(v137);
  v117 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a2;
  v144 = a3;
  v11 = a2;
  v133 = a2;
  v145 = a4;
  v146 = a5;
  v135 = a5;
  type metadata accessor for Page();
  v12 = type metadata accessor for Array();
  v143 = v11;
  v144 = a3;
  v145 = a4;
  v146 = a5;
  v13 = type metadata accessor for PageContainer();
  v14 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for EmptyVisualEffect();
  v17 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v143 = v16;
  v144 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = v13;
  v144 = v14;
  v145 = WitnessTable;
  v146 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = v13;
  v144 = v14;
  v145 = WitnessTable;
  v146 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v143 = v13;
  v144 = &type metadata for Solarium;
  v145 = OpaqueTypeMetadata2;
  v146 = WitnessTable;
  v147 = &protocol witness table for Solarium;
  v148 = v20;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v143 = v13;
  v144 = &type metadata for Solarium;
  v145 = OpaqueTypeMetadata2;
  v146 = WitnessTable;
  v147 = &protocol witness table for Solarium;
  v148 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v141 = &protocol witness table for EmptyView;
  v142 = v21;
  swift_getWitnessTable();
  v22 = type metadata accessor for VStack();
  v23 = swift_getWitnessTable();
  v143 = v22;
  v144 = a3;
  v24 = a3;
  v25 = v135;
  v145 = v23;
  v146 = v135;
  v26 = type metadata accessor for IDView();
  v27 = swift_getWitnessTable();
  v143 = v12;
  v144 = v24;
  v145 = v26;
  v146 = v27;
  v147 = v25;
  v28 = v25;
  type metadata accessor for ForEach();
  v140 = swift_getWitnessTable();
  swift_getWitnessTable();
  v29 = type metadata accessor for WireframeScrollInterestView();
  v30 = swift_getWitnessTable();
  v143 = v24;
  v144 = v29;
  v145 = v28;
  v146 = v30;
  v31 = type metadata accessor for TabView();
  v32 = swift_getWitnessTable();
  v143 = v31;
  v144 = v137;
  v145 = v32;
  v146 = &protocol witness table for LazyPageTabViewStyle;
  v33 = swift_getOpaqueTypeMetadata2();
  v116 = *(v33 - 8);
  __chkstk_darwin(v33);
  v115 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v114 = &v106 - v36;
  v37 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  v113 = *(v37 - 8);
  __chkstk_darwin(v37);
  v111 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v110 = &v106 - v40;
  v41 = type metadata accessor for PageTabViewStyle();
  v112 = *(v41 - 8);
  __chkstk_darwin(v41);
  v109 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Binding();
  v43 = type metadata accessor for Optional();
  __chkstk_darwin(v43 - 8);
  v120 = &v106 - v44;
  v45 = swift_checkMetadataState();
  v122 = *(v45 - 8);
  __chkstk_darwin(v45);
  v121 = &v106 - v46;
  v136 = v47;
  v143 = v47;
  v144 = v41;
  v127 = v41;
  v131 = v32;
  v145 = v32;
  v146 = &protocol witness table for PageTabViewStyle;
  v48 = swift_getOpaqueTypeMetadata2();
  v108 = *(v48 - 8);
  __chkstk_darwin(v48);
  v107 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v106 = &v106 - v51;
  v52 = type metadata accessor for EnvironmentValues();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v106 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v48;
  v128 = v33;
  v126 = type metadata accessor for _ConditionalContent();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v106 - v56;
  v143 = v133;
  v144 = v24;
  v129 = v24;
  v145 = v134;
  v146 = v28;
  v57 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v58 = &v132[*(v57 + 100)];
  v59 = *v58;
  if (v58[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v80 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v59, 0);
    (*(v53 + 8))(v55, v52);
    if (v143 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v81 = v120;
    v82 = v132;
    sub_1006CD66C(v57, v120);
    v83 = sub_10001B350(v81, 0, 1, v119);
    __chkstk_darwin(v83);
    v84 = v134;
    v85 = v129;
    *(&v106 - 6) = v133;
    *(&v106 - 5) = v85;
    v86 = v135;
    *(&v106 - 4) = v84;
    *(&v106 - 3) = v86;
    *(&v106 - 2) = v82;
    swift_checkMetadataState();
    v87 = v121;
    TabView.init(selection:content:)();
    v88 = v110;
    static PageTabViewStyle.IndexDisplayMode.never.getter();
    v89 = v113;
    (*(v113 + 16))(v111, v88, v37);
    v90 = v109;
    PageTabViewStyle.init(indexDisplayMode:)();
    (*(v89 + 8))(v88, v37);
    v91 = v107;
    v92 = v136;
    v76 = v127;
    v93 = v131;
    View.tabViewStyle<A>(_:)();
    (*(v112 + 8))(v90, v76);
    (*(v122 + 8))(v87, v92);
    v143 = v92;
    v144 = v76;
    v145 = v93;
    v146 = &protocol witness table for PageTabViewStyle;
    v94 = v93;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = v106;
    v97 = v123;
    sub_1000833D8(v91, v123, v95);
    v98 = *(v108 + 8);
    v98(v91, v97);
    sub_1000833D8(v96, v97, v95);
    v143 = v136;
    v144 = v137;
    v145 = v94;
    v146 = &protocol witness table for LazyPageTabViewStyle;
    swift_getOpaqueTypeConformance2();
    v79 = v124;
    sub_1003E8038();
    v99 = v91;
    v71 = v131;
    v98(v99, v97);
    v98(v96, v97);
    goto LABEL_6;
  }

  if (v59)
  {
    goto LABEL_5;
  }

LABEL_3:
  v60 = v120;
  v61 = v132;
  sub_1006CD66C(v57, v120);
  v62 = sub_10001B350(v60, 0, 1, v119);
  __chkstk_darwin(v62);
  v63 = v134;
  v64 = v129;
  *(&v106 - 6) = v133;
  *(&v106 - 5) = v64;
  v65 = v135;
  *(&v106 - 4) = v63;
  *(&v106 - 3) = v65;
  *(&v106 - 2) = v61;
  swift_checkMetadataState();
  v66 = v121;
  TabView.init(selection:content:)();
  v67 = v117;
  static TabViewStyle<>.lazyPage.getter();
  v68 = v115;
  v70 = v136;
  v69 = v137;
  v71 = v131;
  View.tabViewStyle<A>(_:)();
  (*(v118 + 8))(v67, v69);
  (*(v122 + 8))(v66, v70);
  v143 = v70;
  v144 = v69;
  v145 = v71;
  v146 = &protocol witness table for LazyPageTabViewStyle;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v114;
  v74 = v128;
  sub_1000833D8(v68, v128, v72);
  v75 = *(v116 + 8);
  v75(v68, v74);
  sub_1000833D8(v73, v74, v72);
  v143 = v70;
  v76 = v127;
  v144 = v127;
  v145 = v71;
  v146 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  v77 = v124;
  sub_10012D09C();
  v75(v68, v74);
  v78 = v74;
  v79 = v77;
  v75(v73, v78);
LABEL_6:
  v100 = v136;
  v143 = v136;
  v144 = v76;
  v145 = v71;
  v146 = &protocol witness table for PageTabViewStyle;
  v101 = swift_getOpaqueTypeConformance2();
  v143 = v100;
  v144 = v137;
  v145 = v71;
  v146 = &protocol witness table for LazyPageTabViewStyle;
  v102 = swift_getOpaqueTypeConformance2();
  v138 = v101;
  v139 = v102;
  v103 = v126;
  v104 = swift_getWitnessTable();
  sub_1000833D8(v79, v103, v104);
  return (*(v125 + 8))(v79, v103);
}

void sub_1006D1904()
{
  sub_10000C778();
  sub_100120104();
  type metadata accessor for Page();
  type metadata accessor for Array();
  sub_100120104();
  type metadata accessor for PageContainer();
  sub_10022E824(&qword_100CC5C30);
  sub_100006558();
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_100010890();
  sub_100121A00(v0, v1);
  sub_10001CAD0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_100088480();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  sub_100088480();
  sub_10001F590();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for VStack();
  sub_100008CF4();
  swift_getWitnessTable();
  sub_100120104();
  type metadata accessor for IDView();
  sub_100016D5C();
  swift_getWitnessTable();
  sub_100120104();
  type metadata accessor for ForEach();
  sub_100052028();
  swift_getWitnessTable();
  sub_100008C6C();
  swift_getWitnessTable();
  v2 = type metadata accessor for WireframeScrollInterestView();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_1006CDB64(v10, v8);
  sub_100074E00();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v8, v2, WitnessTable);
  v12 = *(v4 + 8);
  v12(v8, v2);
  v13 = sub_1000D42A0();
  sub_1000833D8(v13, v14, WitnessTable);
  v15 = sub_1000D42A0();
  (v12)(v15);
  sub_10000536C();
}

uint64_t sub_1006D1C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a2;
  v66 = a1;
  v67 = a7;
  v78 = a3;
  v79 = a4;
  v59 = a3;
  v80 = a5;
  v81 = a6;
  v60 = a5;
  v64 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v62 = *(v64 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v55 - v11;
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  type metadata accessor for Page();
  v55 = type metadata accessor for Array();
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a6;
  v12 = type metadata accessor for PageContainer();
  v13 = sub_10022E824(&qword_100CC5C30);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for EmptyVisualEffect();
  v16 = sub_100121A00(&qword_100CA4688, &type metadata accessor for EmptyVisualEffect);
  v78 = v15;
  v79 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v12;
  v79 = v13;
  v80 = WitnessTable;
  v81 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = v12;
  v79 = v13;
  v80 = WitnessTable;
  v81 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v78 = v12;
  v79 = &type metadata for Solarium;
  v80 = OpaqueTypeMetadata2;
  v81 = WitnessTable;
  v82 = &protocol witness table for Solarium;
  v83 = v19;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  v78 = v12;
  v79 = &type metadata for Solarium;
  v80 = OpaqueTypeMetadata2;
  v81 = WitnessTable;
  v82 = &protocol witness table for Solarium;
  v83 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v76 = &protocol witness table for EmptyView;
  v77 = v20;
  v56 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  v22 = swift_getWitnessTable();
  v78 = v21;
  v79 = a4;
  v80 = v22;
  v81 = a6;
  v23 = type metadata accessor for IDView();
  v24 = v55;
  v25 = swift_getWitnessTable();
  v78 = v24;
  v79 = a4;
  v58 = a4;
  v80 = v23;
  v81 = v25;
  v82 = a6;
  v57 = a6;
  type metadata accessor for ForEach();
  v75 = swift_getWitnessTable();
  swift_getWitnessTable();
  v26 = type metadata accessor for WireframeScrollInterestView();
  v27 = swift_getWitnessTable();
  v78 = a4;
  v79 = v26;
  v80 = a6;
  v81 = v27;
  v28 = type metadata accessor for TabView();
  v29 = type metadata accessor for PageTabViewStyle();
  v30 = swift_getWitnessTable();
  v78 = v28;
  v79 = v29;
  v80 = v30;
  v81 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for LazyPageTabViewStyle();
  v78 = v28;
  v79 = v31;
  v80 = v30;
  v81 = &protocol witness table for LazyPageTabViewStyle;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  v32 = type metadata accessor for ModifiedContent();
  v78 = v28;
  v79 = v29;
  v80 = v30;
  v81 = &protocol witness table for PageTabViewStyle;
  v33 = swift_getOpaqueTypeConformance2();
  v78 = v28;
  v79 = v31;
  v80 = v30;
  v81 = &protocol witness table for LazyPageTabViewStyle;
  v34 = swift_getOpaqueTypeConformance2();
  v73 = v33;
  v74 = v34;
  v72 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v71 = &protocol witness table for _AllowsHitTestingModifier;
  v68 = swift_getWitnessTable();
  v69 = &protocol witness table for _TransactionModifier;
  v55 = v32;
  v35 = swift_getWitnessTable();
  v78 = v32;
  v79 = v35;
  v56 = &opaque type descriptor for <<opaque return type of View.onScrollPhaseChange(_:)>>;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v40);
  v43 = &v55 - v42;
  v44 = v62;
  v45 = v61;
  v46 = v64;
  (*(v62 + 16))(v61, v65, v64, v41);
  v47 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v49 = v58;
  *(v48 + 2) = v59;
  *(v48 + 3) = v49;
  v50 = v57;
  *(v48 + 4) = v60;
  *(v48 + 5) = v50;
  (*(v44 + 32))(&v48[v47], v45, v46);
  v51 = swift_checkMetadataState();
  View.onScrollPhaseChange(_:)();

  v78 = v51;
  v79 = v35;
  v52 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v39, v36, v52);
  v53 = *(v37 + 8);
  v53(v39, v36);
  sub_1000833D8(v43, v36, v52);
  return (v53)(v43, v36);
}

uint64_t sub_1006D241C()
{
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  result = ScrollPhase.isScrolling.getter();
  if (v1 != (result & 1))
  {
    ScrollPhase.isScrolling.getter();
    return State.wrappedValue.setter();
  }

  return result;
}

void sub_1006D24E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v112 = a2;
  v99 = *(a5 - 8);
  __chkstk_darwin(a1);
  v97 = v12;
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v13;
  v120 = v14;
  v121 = v15;
  v122 = v16;
  v17 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v96 = *(v17 - 8);
  v94 = *(v96 + 64);
  __chkstk_darwin(v17);
  v95 = &v85 - v18;
  v119 = a4;
  v120 = a5;
  v121 = a6;
  v122 = a7;
  v105 = type metadata accessor for TransitionContext();
  v102 = type metadata accessor for Optional();
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v85 - v21;
  __chkstk_darwin(v22);
  v101 = &v85 - v23;
  v119 = a4;
  v120 = a5;
  v113 = a7;
  v114 = a6;
  v121 = a6;
  v122 = a7;
  v24 = type metadata accessor for Page();
  v25 = type metadata accessor for Optional();
  v107 = *(v25 - 8);
  v108 = v25;
  __chkstk_darwin(v25);
  v106 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v85 - v28;
  v110 = *(v24 - 8);
  __chkstk_darwin(v30);
  v91 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v90 = &v85 - v33;
  __chkstk_darwin(v34);
  v109 = &v85 - v35;
  __chkstk_darwin(v36);
  v111 = &v85 - v37;
  v38 = (a3 + *(v17 + 72));
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v119) = *v38;
  v120 = v40;
  sub_10022C350(&qword_100CA5A80);
  v41 = State.wrappedValue.getter();
  if (v116)
  {
    LOBYTE(v119) = v39;
    v120 = v40;
    LOBYTE(v116) = 0;
    State.wrappedValue.setter();
  }

  else
  {
    v103 = v17;
    v42 = *(a3 + *(v17 + 56));
    v119 = v42;
    __chkstk_darwin(v41);
    *(&v85 - 6) = a4;
    *(&v85 - 5) = a5;
    v43 = v113;
    *(&v85 - 4) = v114;
    *(&v85 - 3) = v43;
    v100 = a3;
    *(&v85 - 2) = a3;
    type metadata accessor for Array();

    swift_getWitnessTable();
    Sequence.first(where:)();

    if (sub_100024D10(v29, 1, v24) == 1)
    {
      (*(v107 + 8))(v29, v108);
      if (qword_100CA26B8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000703C(v44, qword_100D90A90);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "The internal tab view selection does not correspond to a known page", v47, 2u);
      }

      sub_1006D3104();
    }

    else
    {
      v86 = *(v110 + 32);
      v48 = v86(v111, v29, v24);
      v89 = &v85;
      v119 = v42;
      __chkstk_darwin(v48);
      v88 = a4;
      *(&v85 - 6) = a4;
      *(&v85 - 5) = a5;
      v85 = a5;
      v49 = v113;
      *(&v85 - 4) = v114;
      *(&v85 - 3) = v49;
      *(&v85 - 2) = v112;

      v50 = v106;
      Sequence.first(where:)();

      if (sub_100024D10(v50, 1, v24) == 1)
      {
        (*(v107 + 8))(v50, v108);
        if (qword_100CA26B8 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000703C(v51, qword_100D90A90);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "The tab view destination does not correspond to a known page", v54, 2u);
        }

        sub_1006D3104();
        (*(v110 + 8))(v111, v24);
      }

      else
      {
        v87 = v24;
        v86(v109, v50, v24);
        v55 = v103;
        v56 = v100;
        v57 = (v100 + *(v103 + 88));
        v59 = *v57;
        v58 = v57[1];
        v119 = *v57;
        v120 = v58;

        sub_10022C350(&qword_100CD2330);
        State.wrappedValue.getter();
        if (__OFADD__(v118, 1))
        {
          __break(1u);
        }

        else
        {
          v116 = v59;
          v117 = v58;
          v115 = v118 + 1;
          State.wrappedValue.setter();

          v119 = v59;
          v120 = v58;
          State.wrappedValue.getter();
          v60 = v116;
          v61 = v56 + *(v55 + 84);
          v62 = v102;
          v63 = type metadata accessor for State();
          v64 = v101;
          v108 = v61;
          State.wrappedValue.getter();
          LODWORD(v61) = sub_100024D10(v64, 1, v105);
          v107 = *(v104 + 8);
          (v107)(v64, v62);
          v65 = v113;
          v66 = v85;
          if (v61 == 1 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v67 = *(v110 + 16);
            v68 = v60;
            v106 = v60;
            v69 = v90;
            v101 = v63;
            v70 = v87;
            v67(v90, v111);
            v71 = v91;
            (v67)(v91, v109, v70);
            v72 = v92;
            sub_1006CC0B0(v69, v71, v68, v92);
            sub_10001B350(v72, 0, 1, v105);
            (*(v104 + 16))(v93, v72, v62);
            State.wrappedValue.setter();
            (v107)(v72, v62);
            v73 = (v100 + *(v103 + 60));
            v74 = *v73;
            v107 = v73[1];
            v108 = v74;
            v75 = v96;
            v76 = v95;
            (*(v96 + 16))(v95);
            v77 = v99;
            v78 = v98;
            (*(v99 + 16))(v98, v112, v66);
            v79 = (*(v75 + 80) + 48) & ~*(v75 + 80);
            v80 = (v94 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
            v81 = (*(v77 + 80) + v80 + 8) & ~*(v77 + 80);
            v82 = swift_allocObject();
            *(v82 + 2) = v88;
            *(v82 + 3) = v66;
            *(v82 + 4) = v114;
            *(v82 + 5) = v65;
            (*(v75 + 32))(&v82[v79], v76, v103);
            *&v82[v80] = v106;
            (*(v77 + 32))(&v82[v81], v78, v66);
            sub_1006C2D24();
          }

          else
          {
            sub_1006D3104();
          }

          v83 = *(v110 + 8);
          v84 = v87;
          v83(v109, v87);
          v83(v111, v84);
        }
      }
    }
  }
}

void sub_1006D3104()
{
  sub_10000C778();
  v0 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  Transaction.disablesPageScrollAnimations.setter();
  Transaction.disablesAnimations.setter();
  Transaction.animation.setter();
  static os_signpost_type_t.event.getter();
  sub_10000C70C(0, &qword_100CA2E40);
  v7 = OS_os_log.init(subsystem:category:)();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v2 + 8))(v6, v0);
  withTransaction<A>(_:_:)();

  sub_10000536C();
}

uint64_t sub_1006D32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  type metadata accessor for Page();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  LOBYTE(a5) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v10 + 8))(v12, a4);
  return a5 & 1;
}

uint64_t sub_1006D33FC()
{
  sub_1000437E8();
  type metadata accessor for Page();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1006D3478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a3;
  v22 = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v11 = type metadata accessor for TransitionContext();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  type metadata accessor for LegacyLazyPageAnimatableTabView();
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (sub_100024D10(v17, 1, v11))
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v18 = v21;
    (*(v21 + 16))(v13, v17, v11);
    (*(v15 + 8))(v17, v14);
    v19 = *&v13[*(v11 + 56)];
    (*(v18 + 8))(v13, v11);
    if (v19 == v22)
    {
      sub_1006D3104();
    }
  }
}

uint64_t sub_1006D36C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v15 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  v16 = (a3 + *(v15 + 68));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v25) = *v16;
  v26 = v18;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v24)
  {
    LOBYTE(v25) = v17;
    v26 = v18;
    v24 = 0;
  }

  else
  {
    (*(v8 + 16))(v10, a2, a5);
    type metadata accessor for Binding();
    Binding.wrappedValue.setter();
    v19 = (a3 + *(v15 + 72));
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v25) = v20;
    v26 = v21;
    v24 = 1;
  }

  return State.wrappedValue.setter();
}

uint64_t sub_1006D3858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a3;
  v27 = a2;
  v25 = a1;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v28 = type metadata accessor for TransitionContext();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v26 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *(a4 - 8);
  __chkstk_darwin(v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v20 = (v25 + *(type metadata accessor for LegacyLazyPageAnimatableTabView() + 68));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v29) = v21;
  v30 = v22;
  v33 = 1;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.setter();
  (*(v16 + 16))(v19, v27, a4);
  type metadata accessor for State();
  State.wrappedValue.setter();
  sub_10001B350(v15, 1, 1, v28);
  (*(v11 + 16))(v26, v15, v10);
  type metadata accessor for State();
  State.wrappedValue.setter();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1006D3AF0()
{
  type metadata accessor for PageContainer();
  sub_10022C350(&qword_100CD2470);
  State.wrappedValue.getter();
  v0 = *(v2 + 16);

  if (v0 == 1)
  {
    State.wrappedValue.getter();
    *(v2 + 16) = 0;
  }

  else
  {

    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }
}

uint64_t sub_1006D3C24(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (v12 >= a2)
  {
LABEL_29:
    if (v7 >= v11)
    {
      v26 = a1;
      v10 = v7;
      v14 = v5;
    }

    else
    {
      v24 = (((&a1[v16] & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) == 0)
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }

      v26 = (v24 + v13 + 8) & ~v13;
    }

    return sub_100024D10(v26, v10, v14);
  }

  else
  {
    v17 = ((((((*(*(result - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v17 <= 3)
    {
      v18 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_29;
        }

LABEL_25:
        v22 = (v21 - 1) << (8 * v17);
        if (v17 <= 3)
        {
          v23 = *a1;
        }

        else
        {
          v22 = 0;
          v23 = *a1;
        }

        result = v12 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1006D3EC8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(v8 + 64);
  v17 = ((v15 + 16) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
  v18 = ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 >= v13)
        {
          v28 = a1;
          v29 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v24 = ((a1 + v16) & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v17 <= 3)
            {
              v25 = ~(-1 << (8 * v17));
            }

            else
            {
              v25 = -1;
            }

            if (v17)
            {
              v26 = v25 & (~v13 + a2);
              if (v17 <= 3)
              {
                v27 = v17;
              }

              else
              {
                v27 = 4;
              }

              bzero(v24, v17);
              switch(v27)
              {
                case 2:
                  *v24 = v26;
                  break;
                case 3:
                  *v24 = v26;
                  v24[2] = BYTE2(v26);
                  break;
                case 4:
                  *v24 = v26;
                  break;
                default:
                  *v24 = v26;
                  break;
              }
            }

            return;
          }

          v30 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v31 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v31 = (a2 - 1);
            }

            *v30 = v31;
            return;
          }

          v28 = (v30 + v15 + 8) & ~v15;
          v29 = a2;
        }

        sub_10001B350(v28, v29, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    bzero(a1, ((((((v17 + (v16 & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v18 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006D424C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006D429C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1006D4338(_BYTE *a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a3;
  v13 = type metadata accessor for EnvironmentValues();
  v38 = *(v13 - 8);
  v39 = v13;
  __chkstk_darwin(v13);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v15 = type metadata accessor for TransitionContext();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v35 = &v35 - v21;
    v36 = v22;
    v46 = a4;
    v47 = a5;
    v48 = a6;
    v49 = a7;
    v23 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
    v24 = v40;
    (*(v17 + 16))(v19, v40 + *(v23 + 60), v16);
    if (sub_100024D10(v19, 1, v15) == 1)
    {
      (*(v17 + 8))(v19, v16);
    }

    else
    {
      v26 = v35;
      v25 = v36;
      (*(v36 + 32))(v35, v19, v15);
      v46 = a4;
      v47 = a5;
      v48 = a6;
      v49 = a7;
      type metadata accessor for Page();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v27 = *v24;
        v28 = *(v24 + 8);

        if ((v28 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v29 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v24 = v40;
          v30 = v37;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v38 + 8))(v30, v39);
          v27 = v46;
        }

        *(v27 + 16) = 1;

        v31 = (v24 + *(v23 + 64));
        v33 = v31[1];
        v34 = *(v31 + 16);
        v46 = *v31;
        v32 = v46;
        v47 = v33;
        LOBYTE(v48) = v34;

        sub_10022C350(&unk_100CB3AA0);
        Binding.wrappedValue.getter();
        v42 = v32;
        v43 = v33;
        v44 = v34;
        v41 = (v45 & 1) == 0;
        Binding.wrappedValue.setter();
        (*(v36 + 8))(v35, v15);
      }

      else
      {
        (*(v25 + 8))(v26, v15);
      }
    }
  }
}

uint64_t sub_1006D4770(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v7 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v10 <= v15)
  {
    v10 = v15;
  }

  v16 = *(v6 + 80);
  v17 = *(*(v5 - 8) + 64);
  if (v7)
  {
    v18 = 7;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(v12 + 80);
  if (v14)
  {
    v20 = 8;
  }

  else
  {
    v20 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v16 | 7;
  v22 = ((v16 + 16) & ~v16) + v17 + v21;
  v23 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8) + 31;
  v24 = v19 | v16;
  v25 = (v19 | v16) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 16;
  v27 = *(*(v11 - 8) + 64) + v16;
  if (v10 >= a2)
  {
LABEL_44:
    v35 = ~v16;
    if (v8 == v10)
    {
      v36 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {

        return sub_100024D10((v36 + v16 + 8) & v35, v7, v5);
      }

      v37 = *v36;
LABEL_53:
      if (v37 >= 0xFFFFFFFF)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }

    v38 = (v22 + result) & ~v21;
    if (v9 == v10)
    {
      v39 = sub_100024D10(v38, v7, v5);
      if (v39 >= 2)
      {
        return v39 - 1;
      }

      else
      {
        return 0;
      }
    }

    v40 = ((v23 + v38) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) == 0)
    {
      v37 = *v40;
      goto LABEL_53;
    }

    if (v14)
    {
      v41 = (v26 + ((((((v40 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25;
      if (v13 >= v7)
      {
        v7 = v13;
        v5 = v11;
      }

      else
      {
        v41 = (v27 + v41) & v35;
      }

      v42 = sub_100024D10(v41, v7, v5);
      v43 = v42 != 0;
      result = (v42 - 1);
      if (result != 0 && v43)
      {
        return result;
      }
    }

    return 0;
  }

  v28 = ((v20 + (((v27 & ~v16) + v17 + (((v27 & ~v16) + v17 + v24) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((((((((v23 + (v22 & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25) + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  v29 = (a2 - v10 + 255) >> 8;
  if (v28 <= 3)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = 2;
  }

  if (v30 >= 0x10000)
  {
    LODWORD(v31) = 4;
  }

  else
  {
    LODWORD(v31) = 2;
  }

  if (v30 < 0x100)
  {
    LODWORD(v31) = 1;
  }

  if (v30 >= 2)
  {
    v31 = v31;
  }

  else
  {
    v31 = 0;
  }

  switch(v31)
  {
    case 1:
      v32 = *(result + v28);
      if (!*(result + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    case 2:
      v32 = *(result + v28);
      if (!*(result + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_40;
    case 3:
      __break(1u);
      return result;
    case 4:
      v32 = *(result + v28);
      if (!v32)
      {
        goto LABEL_44;
      }

LABEL_40:
      v33 = (v32 - 1) << (8 * v28);
      if (v28 <= 3)
      {
        v34 = *result;
      }

      else
      {
        v33 = 0;
        v34 = *result;
      }

      result = v10 + (v34 | v33) + 1;
      break;
    default:
      goto LABEL_44;
  }

  return result;
}

void sub_1006D4AC0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v10)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v15 + 84);
  if (v10 <= v17)
  {
    v18 = *(v15 + 84);
  }

  else
  {
    v18 = *(v9 + 84);
  }

  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = v19;
  }

  if (v16 <= v20)
  {
    v16 = v20;
  }

  v21 = *(v9 + 80);
  v22 = *(*(v8 - 8) + 64);
  v23 = ((v21 + 16) & ~v21) + v22 + (v21 | 7);
  if (v10)
  {
    v24 = *(*(v8 - 8) + 64);
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 31;
  v26 = *(v15 + 80) | v21;
  v27 = (*(v15 + 80) | v21) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v28 = v26 + 16;
  v29 = (v26 + 16 + ((((((((v25 + (v23 & ~(v21 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27;
  v30 = *(v15 + 64) + v21;
  v31 = ((v30 & ~v21) + v22 + (((v30 & ~v21) + v22 + v26) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v31 + 8;
  v33 = v31 + 9;
  if (v18)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = ((((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 95) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 < a3)
  {
    v36 = (a3 - v16 + 255) >> 8;
    if (v35 <= 3)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    if (v37 >= 2)
    {
      v7 = v38;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v16 < a2)
  {
    v39 = ~v16 + a2;
    bzero(a1, ((((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 95) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v35 <= 3)
    {
      v40 = (v39 >> 8) + 1;
    }

    else
    {
      v40 = 1;
    }

    if (v35 > 3)
    {
      *a1 = v39;
    }

    else
    {
      *a1 = v39;
    }

    switch(v7)
    {
      case 1:
        a1[v35] = v40;
        break;
      case 2:
        *&a1[v35] = v40;
        break;
      case 3:
        goto LABEL_91;
      case 4:
        *&a1[v35] = v40;
        break;
      default:
        return;
    }

    return;
  }

  v41 = ~v21;
  switch(v7)
  {
    case 1:
      a1[v35] = 0;
      if (a2)
      {
        goto LABEL_55;
      }

      return;
    case 2:
      *&a1[v35] = 0;
      if (a2)
      {
        goto LABEL_55;
      }

      return;
    case 3:
LABEL_91:
      __break(1u);
      return;
    case 4:
      *&a1[v35] = 0;
      goto LABEL_54;
    default:
LABEL_54:
      if (!a2)
      {
        return;
      }

LABEL_55:
      if (v11 == v16)
      {
        v42 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) == 0)
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

        v49 = (v42 + v21 + 8) & v41;
        goto LABEL_72;
      }

      v44 = (&a1[v23] & ~(v21 | 7));
      if (v12 == v16)
      {
        if (v13 < a2)
        {
          v45 = ((v24 + 7) & 0xFFFFFFF8) + 8;
          if (((v24 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v46 = ~v13;
LABEL_80:
          v50 = v46 + a2;
          v51 = v44;
          v52 = v45;
          goto LABEL_81;
        }

        a2 = (a2 + 1);
        v49 = v44;
      }

      else
      {
        v47 = ((v44 + v25) & 0xFFFFFFFFFFFFFFF8);
        if ((v16 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v48 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v48 = (a2 - 1);
          }

          *v47 = v48;
          return;
        }

        v44 = ((v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27);
        if (v20 < a2)
        {
          v45 = ((v34 + 7) & 0xFFFFFFF8) + 8;
          if (((v34 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v46 = ~v20;
          goto LABEL_80;
        }

        v50 = a2 - v18;
        if (a2 >= v18)
        {
          if (!v32)
          {
            return;
          }

          v51 = ((v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27);
          v52 = v32;
LABEL_81:
          bzero(v51, v52);
          *v44 = v50;
          return;
        }

        if (v17 >= v10)
        {
          a2 = (a2 + 1);
          v49 = (v28 + ((((((v47 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v27;
          v10 = v17;
          v8 = v14;
        }

        else
        {
          v49 = (v44 + v30) & v41;
          a2 = (a2 + 1);
        }
      }

LABEL_72:

      sub_10001B350(v49, a2, v10, v8);
      return;
  }
}

uint64_t sub_1006D4F04(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v7 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(*(v5 - 8) + 64);
  v18 = *(v11 + 80);
  if (v13)
  {
    v19 = 8;
  }

  else
  {
    v19 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16;
  v21 = v16 | 7;
  v22 = ((v16 + 16) & ~v16) + v17 + v21;
  v23 = v17 + 7;
  v24 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v18 | v16;
  v26 = v25 | 7;
  v27 = (v25 | 7) + 17;
  v28 = *(*(v10 - 8) + 64) + v16;
  v29 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v30 = v19 + (((v28 & ~v20) + v17 + (((v28 & ~v20) + v17 + v25) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v27 + ((((((((((v24 + (v22 & ~v21) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + 89;
  if (v30 > 3)
  {
    goto LABEL_22;
  }

  v32 = v29 + 255;
  if ((v29 + 255) > 0xFFFEFF)
  {
    v31 = *&a1[v30];
    if (!v31)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (v32 >> 8 > 0xFE)
  {
    v31 = *&a1[v30];
    if (!*&a1[v30])
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (v32 >= 0x100)
  {
LABEL_22:
    v31 = a1[v30];
    if (!a1[v30])
    {
      goto LABEL_34;
    }

LABEL_29:
    v33 = (v31 - 1) << (8 * v30);
    if (v30 <= 3)
    {
      v34 = *a1;
    }

    else
    {
      v33 = 0;
      v34 = *a1;
    }

    return v15 + (v34 | v33) + 1;
  }

LABEL_34:
  v36 = ~v20;
  if (v14 > v8)
  {
    v37 = &a1[v22] & ~v21;
    if (v9 == v15)
    {
      if (v7 < 0x7FFFFFFE)
      {
        v38 = *((v23 + v37) & 0xFFFFFFFFFFFFFFF8);
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        if ((v38 + 1) >= 2)
        {
          return v38;
        }

        else
        {
          return 0;
        }
      }

      goto LABEL_50;
    }

    v41 = (v37 + v24 + 8);
    if (v15 == 0x7FFFFFFF)
    {
      v40 = *v41;
      goto LABEL_46;
    }

    if (v13)
    {
      v42 = (v27 + ((((((((((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
      if (v12 >= v7)
      {
        v7 = v12;
        v5 = v10;
      }

      else
      {
        v42 = (v28 + v42) & v36;
      }

      v43 = sub_100024D10(v42, v7, v5);
      v44 = v43 != 0;
      result = (v43 - 1);
      if (result != 0 && v44)
      {
        return result;
      }
    }

    return 0;
  }

  v39 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v37 = (v39 + v20 + 8) & v36;
LABEL_50:

    return sub_100024D10(v37, v7, v5);
  }

  v40 = *v39;
LABEL_46:
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_1006D5264(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v57 = v12;
  v13 = *(a4 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v10 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v9 + 80);
  v21 = *(*(v8 - 8) + 64);
  v22 = ((v20 + 16) & ~v20) + v21;
  v23 = v20 | 7;
  v24 = v21 + 7;
  v25 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v14 + 80) | v20;
  v27 = v26 | 7;
  v28 = (v26 | 7) + 17;
  v29 = *(*(v13 - 8) + 64) + v20;
  v30 = ((v29 & ~v20) + v21 + (((v29 & ~v20) + v21 + v26) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v30 + 8;
  v32 = v30 + 9;
  if (v16)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  v34 = ((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v28 + ((((((((((v25 + ((v22 + v23) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~(v26 | 7)) + 89;
  v35 = a3 >= v19;
  v36 = a3 - v19;
  if (v36 != 0 && v35)
  {
    v7 = 1;
    if (v34 <= 3)
    {
      v37 = v36 + 255;
      if (v37 >> 8 < 0xFF)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }

      if (v37 < 0x100)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFEFF)
      {
        v7 = v38;
      }

      else
      {
        v7 = 4;
      }
    }
  }

  if (v19 < a2)
  {
    v39 = ~v19 + a2;
    if (v34 <= 3)
    {
      v40 = (v39 >> 8) + 1;
      bzero(a1, v34);
      *a1 = v39;
    }

    else
    {
      bzero(a1, v34);
      *a1 = v39;
      v40 = 1;
    }

    switch(v7)
    {
      case 1:
        a1[v34] = v40;
        break;
      case 2:
        *&a1[v34] = v40;
        break;
      case 3:
        goto LABEL_99;
      case 4:
        *&a1[v34] = v40;
        break;
      default:
        return;
    }

    return;
  }

  v41 = ~v20;
  v42 = v25 + 8;
  switch(v7)
  {
    case 1:
      a1[v34] = 0;
      if (a2)
      {
        goto LABEL_43;
      }

      return;
    case 2:
      *&a1[v34] = 0;
      if (a2)
      {
        goto LABEL_43;
      }

      return;
    case 3:
LABEL_99:
      __break(1u);
      return;
    case 4:
      *&a1[v34] = 0;
      goto LABEL_42;
    default:
LABEL_42:
      if (!a2)
      {
        return;
      }

LABEL_43:
      if (v17 <= v11)
      {
        if (v11 >= a2)
        {
          v45 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v46 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v46 = (a2 - 1);
            }

LABEL_86:
            *v45 = v46;
            return;
          }

          v44 = (v45 + v20 + 8) & v41;
          goto LABEL_74;
        }

        if (v22 <= 3)
        {
          v47 = ~(-1 << (8 * v22));
        }

        else
        {
          v47 = -1;
        }

        if (v22)
        {
          v48 = v47 & (~v11 + a2);
          if (v22 <= 3)
          {
            v49 = v22;
          }

          else
          {
            v49 = 4;
          }

          bzero(a1, v22);
          switch(v49)
          {
            case 2:
              *a1 = v48;
              break;
            case 3:
              *a1 = v48;
              a1[2] = BYTE2(v48);
              break;
            case 4:
              goto LABEL_72;
            default:
              *a1 = v48;
              break;
          }
        }
      }

      else
      {
        v44 = &a1[v22 + v23] & ~v23;
        if (v57 == v19)
        {
          if (v10 < 0x7FFFFFFE)
          {
            v45 = ((v24 + v44) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v45 = 0;
              *v45 = a2 - 0x7FFFFFFF;
              return;
            }

            v46 = a2;
            goto LABEL_86;
          }

          goto LABEL_74;
        }

        v50 = (v44 + v42);
        if (v19 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v51 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v51 = (a2 - 1);
          }

          *v50 = v51;
          return;
        }

        v43 = ~v27;
        a1 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v27);
        if (v18 >= a2)
        {
          if (v17 < a2)
          {
            if (v33 < 4)
            {
              v55 = ~(-1 << (8 * v33));
            }

            else
            {
              v55 = -1;
            }

            if (v33)
            {
              v56 = v55 & (~v17 + a2);
              bzero(((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43), v33);
              if (v33 == 1)
              {
                *a1 = v56;
              }

              else
              {
                *a1 = v56;
              }
            }

            return;
          }

          v48 = a2 - v16;
          if (a2 < v16)
          {
            if (v15 >= v10)
            {
              a2 = (a2 + 1);
              v44 = (v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43;
              v10 = v15;
              v8 = v13;
            }

            else
            {
              v44 = &a1[v29] & v41;
              a2 = (a2 + 1);
            }

LABEL_74:

            sub_10001B350(v44, a2, v10, v8);
            return;
          }

          if (!v31)
          {
            return;
          }

          v53 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43);
          v54 = v31;
        }

        else
        {
          v52 = ((v33 + 7) & 0xFFFFFFF8) + 8;
          if (((v33 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
          {
            return;
          }

          v48 = ~v18 + a2;
          v53 = ((v28 + ((((((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v43);
          v54 = v52;
        }

        bzero(v53, v54);
LABEL_72:
        *a1 = v48;
      }

      return;
  }
}

uint64_t sub_1006D5A60()
{
  sub_1000437E8();
  v0 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_100003810(v0);

  return sub_1006CD898();
}

void sub_1006D5B08()
{
  sub_10004E348();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_100020A54();
  v3 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_100003DDC();
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v5;

  sub_10003C724();
  type metadata accessor for Binding();
  sub_10000CDE8();
  v8 = *(v7 + 8);
  v9 = (v7 + 8);
  v8(v6 + v10, v1);
  v11 = sub_100037270();
  v8(v11, v1);
  sub_10003C724();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000B0EC4();

  sub_100032688();

  sub_1000D3F54();
  sub_1000D3F54();
  sub_1000D3F54();
  if (!sub_10004E928())
  {
    sub_100003B20();
    v17 = *(v12 + 8);
    v13 = sub_10001173C();
    v14(v13);
    sub_100069878();
    sub_1000C83AC();
    v9();
    v15 = sub_1000249C0();
    v17(v15, v2);
    v16 = sub_1000B99EC();
    (v9)(v16);
  }

  sub_100011680();
  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000D3F54();
  sub_100019D18();
  sub_10003C708(*(v3 + 108));
  sub_10002C9B0();
  sub_100013454();
}

uint64_t sub_1006D5CFC(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_1000437E8();
  v5 = type metadata accessor for LegacyLazyPageAnimatableTabView();
  sub_100003810(v5);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  return sub_1006CD900(a1, v7, v8, v9, v3, v4);
}

unint64_t sub_1006D5DC4()
{
  result = qword_100CD2338;
  if (!qword_100CD2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD2338);
  }

  return result;
}

uint64_t sub_1006D5F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  sub_100041B0C();
  v31 = v17;
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_100030590();
  sub_10003BF08();
  sub_1000C9060();

  return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, v31, v16, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D5FBC(uint64_t a1)
{
  v2 = type metadata accessor for ForceInvalidationAfterExtendedLaunch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D60C0()
{
  v5 = sub_100036E0C();
  v7 = *(v6(v5) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = v1 + ((v9 + *(*(v2 - 8) + 80) + 8) & ~*(*(v2 - 8) + 80));

  return v13(v1 + v8, v10, v11, v0, v2, v3, v4);
}

uint64_t sub_1006D6264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  v31 = v17;
  v32 = *(v16 + 16);
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_100030590();
  sub_10003BF08();
  sub_1000C9060();

  return v28(v21, v22, v23, v24, v25, v26, v27, v28, a9, v31, v32, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D6340(uint64_t (*a1)(void, void *), uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v12[0] = v2[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v7 = a1(0, v12);
  sub_100003810(v7);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(v9, v3, v4, v5, v6);
}

uint64_t sub_1006D64B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100013330();
  a23 = v25;
  a24 = v26;
  v27 = v24[3];
  v28 = v24[4];
  v29 = v24[5];
  v43 = v30;
  a11 = v24[2];
  a12 = v27;
  a13 = v28;
  a14 = v29;
  v32 = v31(0, &a11);
  sub_100003810(v32);
  sub_100030590();
  sub_1000C9060();

  return v40(v33, v34, v35, v36, v37, v38, v39, v40, a9, v43, a11, a12, a13, a14, a15, a16);
}

void sub_1006D6570()
{
  sub_10004E348();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_10000ECFC();
  v3 = type metadata accessor for LazyHStackAnimatableTabView();
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  sub_10003C724();
  type metadata accessor for Binding();
  sub_10000CDE8();
  v7 = *(v6 + 8);
  v7(v5 + v8, v1);
  v9 = sub_100037270();
  if (!sub_100024D10(v9, 1, v1))
  {
    v10 = sub_100003A80();
    (v7)(v10);
  }

  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000B0EC4();

  sub_100032688();
  sub_1000D3F54();
  sub_1000D3F54();
  sub_1000D3F54();
  if (!sub_10004E928())
  {
    sub_100022F14();
    v17 = *(v11 + 8);
    v12 = sub_100014268();
    v13(v12);
    v14 = sub_100069878();
    v7(v14, v1);
    v15 = sub_1000249C0();
    v17(v15, v2);
    v16 = sub_1000B99EC();
    (v7)(v16);
  }

  sub_100011680();
  type metadata accessor for Optional();
  sub_100013B04();
  type metadata accessor for State();
  sub_1000715A4();
  sub_1000D3F54();

  sub_10003C708(*(v3 + 92));
  sub_100019D18();
  sub_10002C9B0();
  sub_100013454();
}

uint64_t sub_1006D67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100013330();
  v30 = v17;
  v31 = *(v16 + 16);
  v18 = sub_100021610();
  v20 = v19(v18);
  sub_100003810(v20);
  sub_1000C9060();

  return v27(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14, a15, a16);
}

uint64_t sub_1006D6888()
{
  sub_100041B0C();
  v7 = *(type metadata accessor for ScrollViewProxy() - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  sub_1000437E8();
  v10 = type metadata accessor for LazyHStackAnimatableTabView();
  sub_100003810(v10);
  v12 = v1 + ((v9 + v8 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1006C9090(v2, v0, v1 + v9, v12, v3, v4, v5, v6);
}

void sub_1006D69BC()
{
  sub_10013D908(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10013D908(319, &unk_100CD23B0, type metadata accessor for ExtendedAppLaunchState, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006D6AB0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v5 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v8 - 8) + 64);
  v17 = *(v6 + 80) | *(v9 + 80);
  v18 = (v16 + 7 + ((v16 + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  v20 = v18 + 9;
  if (v11)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v17 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = v17 + 16;
  if (v13 >= a2)
  {
LABEL_33:
    v31 = ~v14;
    if (v11 >= 0x7FFFFFFF)
    {
      if (v7 < v10)
      {
        result = (v15 + result) & v31;
        v7 = v10;
        v5 = v8;
      }

      return sub_100024D10(result, v7, v5);
    }

    v32 = (v23 + ((result + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22;
    if (v12 != v13)
    {
      if (v11)
      {
        v33 = v19;
      }

      else
      {
        v33 = v19 + 1;
      }

      v34 = *((((v33 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      return (v34 + 1);
    }

    if (v11 >= 2)
    {
      if (v7 < v10)
      {
        v32 = (v15 + v32) & v31;
        v7 = v10;
        v5 = v8;
      }

      v35 = sub_100024D10(v32, v7, v5);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v24 = ((((v21 + ((v23 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v24 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v13 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 2:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(result + v24);
      if (!v28)
      {
        goto LABEL_33;
      }

LABEL_30:
      v29 = v28 - 1;
      if ((v24 & 0xFFFFFFF8) != 0)
      {
        v29 = 0;
        v30 = *result;
      }

      else
      {
        v30 = 0;
      }

      result = v13 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_33;
  }

  return result;
}

void sub_1006D6D6C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(v12 + 80);
  v18 = v17;
  v19 = v17;
  v20 = *(*(v8 - 8) + 64) + v17;
  v21 = (v20 & ~v19) + *(*(v11 - 8) + 64);
  v22 = *(v9 + 80) | v18;
  v23 = v22 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = v22 + 16;
  v25 = (v22 + 16 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & v23;
  v26 = (v21 + 7 + ((v21 + v22) & ~v22)) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + 8;
  v28 = v26 + 9;
  if (v14)
  {
    v28 = v27;
  }

  v29 = ((((v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    v30 = a3 - v16;
    if (((((v28 + v25 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v7 = v32;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = a2 - v16;
    }

    if (v29)
    {
      v34 = ~v16 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    switch(v7)
    {
      case 1:
        a1[v29] = v33;
        break;
      case 2:
        *&a1[v29] = v33;
        break;
      case 3:
        goto LABEL_76;
      case 4:
        *&a1[v29] = v33;
        break;
      default:
        return;
    }

    return;
  }

  v35 = ~v19;
  switch(v7)
  {
    case 1:
      a1[v29] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 2:
      *&a1[v29] = 0;
      if (a2)
      {
        goto LABEL_39;
      }

      return;
    case 3:
LABEL_76:
      __break(1u);
      return;
    case 4:
      *&a1[v29] = 0;
      goto LABEL_38;
    default:
LABEL_38:
      if (!a2)
      {
        return;
      }

LABEL_39:
      if (v14 >= 0x7FFFFFFF)
      {
        if (a2 > v14)
        {
          if (v21 <= 3)
          {
            v36 = ~(-1 << (8 * v21));
          }

          else
          {
            v36 = -1;
          }

          if (v21)
          {
            v37 = v36 & (~v14 + a2);
            if (v21 <= 3)
            {
              v38 = v21;
            }

            else
            {
              v38 = 4;
            }

            bzero(a1, v21);
            switch(v38)
            {
              case 2:
                *a1 = v37;
                break;
              case 3:
                *a1 = v37;
                a1[2] = BYTE2(v37);
                break;
              case 4:
                goto LABEL_66;
              default:
                *a1 = v37;
                break;
            }
          }

          return;
        }

        if (v10 < v13)
        {
          v39 = &a1[v20] & v35;
          goto LABEL_58;
        }

        goto LABEL_69;
      }

      a1 = ((v24 + (&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8)) & v23);
      if (v15 != v16)
      {
        if (v14)
        {
          v40 = v27;
        }

        else
        {
          v40 = v27 + 1;
        }

        v41 = (((&a1[v40 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v41 = a2 & 0x7FFFFFFF;
          v41[1] = 0;
        }

        else
        {
          *v41 = (a2 - 1);
        }

        return;
      }

      v37 = a2 - v14;
      if (a2 < v14)
      {
        if (v10 < v13)
        {
          v39 = &a1[v20] & v35;
          a2 = (a2 + 1);
LABEL_58:
          v10 = v13;
          v8 = v11;
LABEL_70:

          sub_10001B350(v39, a2, v10, v8);
          return;
        }

        a2 = (a2 + 1);
LABEL_69:
        v39 = a1;
        goto LABEL_70;
      }

      if (v27)
      {
        bzero(a1, v27);
LABEL_66:
        *a1 = v37;
      }

      return;
  }
}

uint64_t sub_1006D7164()
{
  v5 = sub_100036E0C();
  v7 = v6(v5);
  sub_100003810(v7);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return v11(v9, v0, v2, v3, v4);
}

uint64_t sub_1006D71FC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(a3 + 16);
  v9 = *(v7 + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v7 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v7 + 80);
  v16 = *(*(v6 - 8) + 64);
  v17 = *(v10 + 80);
  if (v12)
  {
    v18 = 8;
  }

  else
  {
    v18 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15;
  v20 = v17 | v15;
  v21 = v20 | 7;
  v22 = *(*(v8 - 8) + 64) + v15;
  v23 = (((v22 & ~v19) + v16 + (((v22 & ~v19) + v16 + v20) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + v18;
  if (v14 >= a2)
  {
LABEL_36:
    v31 = ((result & 0xFFFFFFFFFFFFFFF8) + v19 + 25) & ~v19;
    if (v9 == v14)
    {

      return sub_100024D10(v31, v9, v6);
    }

    v32 = (v31 + v16 + v21) & ~v21;
    if (v13 != v14)
    {
      v33 = *(((v23 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    if (v12 >= 2)
    {
      if (v11 >= v9)
      {
        v9 = v11;
        v6 = v8;
      }

      else
      {
        v32 = (v22 + v32) & ~v19;
      }

      v34 = sub_100024D10(v32, v9, v6);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v24 = ((v23 + ((v21 + v16 + ((v19 + 25) & ~v19)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v25 = (a2 - v14 + 255) >> 8;
  if (v24 <= 3)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 2;
  }

  if (v26 >= 0x10000)
  {
    LODWORD(v27) = 4;
  }

  else
  {
    LODWORD(v27) = 2;
  }

  if (v26 < 0x100)
  {
    LODWORD(v27) = 1;
  }

  if (v26 >= 2)
  {
    v27 = v27;
  }

  else
  {
    v27 = 0;
  }

  switch(v27)
  {
    case 1:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    case 2:
      v28 = *(result + v24);
      if (!*(result + v24))
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    case 3:
      __break(1u);
      return result;
    case 4:
      v28 = *(result + v24);
      if (!v28)
      {
        goto LABEL_36;
      }

LABEL_32:
      v29 = (v28 - 1) << (8 * v24);
      if (v24 <= 3)
      {
        v30 = *result;
      }

      else
      {
        v29 = 0;
        v30 = *result;
      }

      result = v14 + (v30 | v29) + 1;
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

void sub_1006D749C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80) | v18;
  v21 = v20 | 7;
  v22 = ((v20 | 7) + v19 + ((v18 + 25) & ~v18)) & ~(v20 | 7);
  v23 = *(*(v11 - 8) + 64) + v18;
  v24 = ((v23 & ~v18) + v19 + (((v23 & ~v18) + v19 + v20) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + 8;
  v26 = v24 + 9;
  if (v14)
  {
    v26 = v25;
  }

  v27 = ((v26 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v17 < a3)
  {
    v28 = (a3 - v17 + 255) >> 8;
    if (v27 <= 3)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v7 = v30;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v17 >= a2)
  {
    v33 = ~v18;
    v34 = ~v21;
    switch(v7)
    {
      case 1:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 2:
        *(a1 + v27) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *(a1 + v27) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (!a2)
        {
          return;
        }

LABEL_41:
        v35 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v18 + 25) & v33;
        if (v10 == v17)
        {
          goto LABEL_42;
        }

        v36 = ((v35 + v19 + v21) & v34);
        if (v15 == v17)
        {
          v37 = a2 - v14;
          if (a2 >= v14)
          {
            if (v25)
            {
              bzero(((v35 + v19 + v21) & v34), v25);
              *v36 = v37;
            }
          }

          else
          {
            if (v13 >= v10)
            {
              a2 = (a2 + 1);
              v35 = (v35 + v19 + v21) & v34;
              v10 = v13;
              v8 = v11;
            }

            else
            {
              v35 = (v36 + v23) & v33;
              a2 = (a2 + 1);
            }

LABEL_42:

            sub_10001B350(v35, a2, v10, v8);
          }
        }

        else
        {
          v38 = (v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v38 + 16) = 0;
            *v38 = a2 & 0x7FFFFFFF;
            *(v38 + 8) = 0;
          }

          else
          {
            *(v38 + 8) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v31 = ~v17 + a2;
    bzero(a1, v27);
    if (v27 <= 3)
    {
      v32 = (v31 >> 8) + 1;
    }

    else
    {
      v32 = 1;
    }

    if (v27 > 3)
    {
      *a1 = v31;
    }

    else
    {
      *a1 = v31;
    }

    switch(v7)
    {
      case 1:
        *(a1 + v27) = v32;
        break;
      case 2:
        *(a1 + v27) = v32;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *(a1 + v27) = v32;
        break;
      default:
        return;
    }
  }
}

void sub_1006D77C8()
{
  sub_100041B0C();
  sub_1000437E8();
  v0 = type metadata accessor for RebuildPageWhenSidebarCollapsesDuringTransitionModifier();
  sub_100003810(v0);
  sub_100030590();
  sub_10003BF08();

  sub_1006D4338(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1006D789C()
{
  v0 = sub_10022C350(&qword_100CD25C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v11[-1] - v2;
  sub_10022C350(&qword_100CD25C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = (&v11[-1] - v5);
  sub_10098A0B8();
  if ((v16 & 0xC0) == 0x80 && (v16 == 128 ? (v7 = v11[0] == 1) : (v7 = 0), v7 && (v8 = vorrq_s8(vorrq_s8(v12, v14), vorrq_s8(v13, v15)), !(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v11[3] | v11[2] | v11[1]))))
  {
    *v6 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_1006D9A70();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10026BA38(v11);
    sub_1006D7AEC(v3);
    if (qword_100CA23F8 != -1)
    {
      swift_once();
    }

    *&v3[*(v0 + 36)] = qword_100D90688;
    sub_1000955E0(v3, v6, &qword_100CD25C0);
    swift_storeEnumTagMultiPayload();
    sub_1006D9A70();

    _ConditionalContent<>.init(storage:)();
    return sub_10003FDA0(v3, &qword_100CD25C0);
  }
}

uint64_t sub_1006D7AEC@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v2 = type metadata accessor for AutomationInfo(0);
  v3 = sub_10001BA94(v2, &v143);
  __chkstk_darwin(v3);
  sub_100003990(&v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10022C350(&qword_100CD2660);
  sub_10001BA94(v5, &v142);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(&qword_100CD2640);
  sub_10001BA94(v8, &v147);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100003990(v10);
  v11 = sub_10022C350(&qword_100CD2688);
  sub_10001BA94(v11, &v146);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100003990(v13);
  v14 = sub_10022C350(&qword_100CD2610);
  sub_10001BA94(v14, v150);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  sub_100003990(v16);
  v17 = sub_10022C350(&qword_100CD2630);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  v20 = &v120 - v19;
  v21 = sub_10022C350(&qword_100CD2690);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  v25 = sub_10022C350(&qword_100CD2620);
  sub_10001BA94(v25, &v145.i64[1]);
  sub_100003828();
  __chkstk_darwin(v26);
  v27 = sub_10022C350(&qword_100CD2600);
  sub_10001BA94(v27, &v140.i64[1]);
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CD2698);
  sub_10001BA94(v30, &v148);
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  sub_100003990(v32);
  sub_10022C350(&qword_100CD26A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = (&v120 - v34);
  v36 = sub_10022C350(&qword_100CD25F0);
  sub_10001BA94(v36, &v148.i64[1]);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  sub_100003990(v38);
  v39 = v1;
  sub_10098A0B8();
  v41 = *(&v142 + 1) | (BYTE3(v142) << 16);
  v42 = v149 >> 6;
  if (v42)
  {
    if (v42 == 1)
    {
      v135[0] = v142;
      v135[1] = v143;
      v136 = v144;
      v137 = v145;
      v138 = v146;
      v139 = v147;
      v140 = v148;
      v141 = v149 & 0x3F;
      __chkstk_darwin(v40);
      *(&v120 - 2) = v1;
      *(&v120 - 1) = v135;
      sub_10022C350(&qword_100CD26A8);
      v43 = sub_10022E824(&qword_100CD26B0);
      v44 = sub_10022E824(&qword_100CD26B8);
      v45 = sub_10022E824(&qword_100CD26C0);
      v46 = sub_100014AD8();
      sub_10022E824(v46);
      v47 = sub_10023FBF4(&qword_100CD26D0, &qword_100CD26C8);
      sub_10004E960(v47);
      v48 = sub_100023010();
      v131 = v45;
      v132 = v48;
      v49 = sub_100023010();
      v50 = sub_100014AD8();
      sub_10022E824(v50);
      v51 = sub_10023FBF4(&qword_100CD26E0, &qword_100CD26D8);
      sub_10004E960(v51);
      v52 = sub_100023010();
      v131 = v43;
      v132 = v44;
      v133 = v49;
      v134 = v52;
      sub_100023010();
      v53 = v124;
      NavigationStack.init<>(root:)();
      v54 = static Color.primary.getter();
      KeyPath = swift_getKeyPath();
      v56 = (v53 + *(sub_10022C350(&qword_100CD2670) + 36));
      *v56 = KeyPath;
      v56[1] = v54;
      v57 = *(v123 + 36);
      v58 = enum case for ColorScheme.dark(_:);
      v59 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      v61 = *(v60 + 104);
      v61(v53 + v57, v58, v59);
      sub_10000E7B0();
      sub_10001B350(v62, v63, v64, v59);
      type metadata accessor for AutomationViewInfo(0);
      v65 = v125;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v66 = sub_10022C350(&qword_100CD2650);
      v67 = v126;
      v68 = v126 + *(v66 + 36);
      v69 = type metadata accessor for AutomationInfoProperty();
      sub_1003AFC6C(v65, v68 + *(v69 + 24));
      *v68 = 0;
      *(v68 + 8) = 0xE000000000000000;
      *(v68 + 16) = swift_getKeyPath();
      *(v68 + 24) = 0;
      sub_1000955E0(v53, v67, &qword_100CD2660);
      sub_1001C9E84(v65);
      sub_10003FDA0(v53, &qword_100CD2660);
      sub_10026BA38(&v142);
      v61(v67 + *(v128 + 36), v58, v59);
      sub_10000E7B0();
      sub_10001B350(v70, v71, v72, v59);
      sub_1000955E0(v67, v127, &qword_100CD2640);
      swift_storeEnumTagMultiPayload();
      sub_1006D9D24();
      sub_1006D9E68();
      sub_100017CB0();
      _ConditionalContent<>.init(storage:)();
      sub_100074E34();
      sub_1000955E0(v73, v74, &qword_100CD2610);
      sub_100028968();
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v75, v76, v77, v78);
      sub_1006D9C98();
      sub_100006570();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v65, &qword_100CD2610);
      sub_1000164CC();
      return sub_10003FDA0(v79, v80);
    }

    if (v149 != 128 || (v87 = vorrq_s8(vorrq_s8(v148, v146), vorrq_s8(v147, v145)), v142 | (v41 << 8) | (HIDWORD(v142) << 32) | *&vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL)) | v144 | v143 | *(&v144 + 1)))
    {
      *v35 = static Color.clear.getter();
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1006D9BE0();

      sub_1000698A8();
      _ConditionalContent<>.init(storage:)();
      sub_100074E34();
      sub_1000955E0(v116, v117, &qword_100CD25F0);
      sub_100028968();
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v118, &qword_100CD25F0, &unk_100A77EC8, v119);
      sub_1006D9C98();
      sub_100006570();
      _ConditionalContent<>.init(storage:)();

      v98 = v21;
      v99 = &qword_100CD25F0;
    }

    else
    {
      v88 = v121;
      sub_100035B30((v1 + 2), v121);
      v89 = *(v122 + 36);
      v90 = enum case for ColorScheme.dark(_:);
      v91 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      (*(v92 + 104))(v88 + v89, v90, v91);
      sub_10000E7B0();
      sub_10001B350(v93, v94, v95, v91);
      sub_1000955E0(v88, v35, &qword_100CD2600);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1006D9BE0();
      sub_1000698A8();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v21, v129, &qword_100CD25F0);
      swift_storeEnumTagMultiPayload();
      sub_10001F5C0();
      sub_1006DA604(v96, &qword_100CD25F0, &unk_100A77EC8, v97);
      sub_1006D9C98();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v21, &qword_100CD25F0);
      v98 = v88;
      v99 = &qword_100CD2600;
    }
  }

  else
  {
    v82 = v21;
    v83 = v24;
    v84 = v1[5];
    v85 = v39[6];
    if (v142)
    {
      sub_1000161C0(v39 + 2, v39[5]);
      *(&v136 + 1) = v84;
      v137.i64[0] = *(v85 + 16);
      sub_100042FB0(v135);
      sub_1000164CC();
      v86();
      v137.i8[10] = BYTE2(v41);
      v137.i16[4] = v41;
      sub_1003AAAFC(v135, v83);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1006D9DB0();
      sub_100013B10();
      _ConditionalContent<>.init(storage:)();
      sub_1003AAB58(v135);
    }

    else
    {
      sub_1000161C0(v39 + 2, v39[5]);
      *(v20 + 3) = v84;
      *(v20 + 4) = *(v85 + 8);
      sub_100042FB0(v20);
      sub_1000164CC();
      v100();
      v20[40] = 0;
      v101 = *(v17 + 36);
      v102 = enum case for ColorScheme.dark(_:);
      v103 = type metadata accessor for ColorScheme();
      sub_1000037E8();
      (*(v104 + 104))(&v20[v101], v102, v103);
      sub_10000E7B0();
      sub_10001B350(v105, v106, v107, v103);
      sub_1000955E0(v20, v83, &qword_100CD2630);
      sub_100014AD8();
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1006D9DB0();
      sub_100013B10();
      _ConditionalContent<>.init(storage:)();
      sub_1000164CC();
      sub_10003FDA0(v108, v109);
    }

    sub_1000955E0(v41, v127, &qword_100CD2620);
    swift_storeEnumTagMultiPayload();
    sub_1006D9D24();
    sub_1006D9E68();
    sub_100017CB0();
    _ConditionalContent<>.init(storage:)();
    sub_100074E34();
    sub_1000955E0(v110, v111, &qword_100CD2610);
    sub_100028968();
    swift_storeEnumTagMultiPayload();
    sub_10001F5C0();
    sub_1006DA604(v112, v113, v114, v115);
    sub_1006D9C98();
    sub_100006570();
    _ConditionalContent<>.init(storage:)();
    sub_10003FDA0(v82, &qword_100CD2610);
    v98 = v41;
    v99 = &qword_100CD2620;
  }

  return sub_10003FDA0(v98, v99);
}