uint64_t sub_1000DCCC0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v7 = v14[0];
  }

  swift_getKeyPath();
  v14[0] = v7;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v7 + v9, v14, &unk_10025B1C0, &unk_1001CFA90);

  if (!v14[3])
  {
    return sub_10000F500(v14, &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_100028458(v14, v13);
  sub_10000F500(v14, &unk_10025B1C0, &unk_1001CFA90);
  v10 = *sub_100027874(v13, v13[3]);
  sub_10000E064(IAPayloadValueWritingToolsInteractionTypeShare);
  return sub_10000F4B4(v13);
}

void sub_1000DCF20(uint64_t *a1)
{
  v2 = sub_10000341C(&qword_10025E088, &qword_1001D3658);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for AttributedString();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);

  if ((v14 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v13 = v21[0];
  }

  swift_getKeyPath();
  v21[0] = v13;
  sub_1000DDA04(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
  v17 = v16;

  if (!v16)
  {
    sub_1000DDB24();
    AttributedString.init(stringLiteral:)();
    v17 = NSAttributedString.init(_:)();
  }

  sub_10000341C(&qword_100264130, &qword_1001D3668);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001CF9D0;
  *(v18 + 32) = UIActivityTypeCopyToPasteboard;
  v21[0] = v17;
  v21[1] = v18;
  v19 = UIActivityTypeCopyToPasteboard;
  sub_1000DA7F8();
  v20 = *(type metadata accessor for ActionButtonView(0) + 32);
  sub_10000341C(&qword_10025DDA8, &qword_1001D31D8);
  State.projectedValue.getter();
  sub_10006BC84();
  View.presentationDetents(_:selection:)();

  sub_10000F500(v5, &qword_10025E088, &qword_1001D3658);
}

void sub_1000DD288()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0x4024000000000000;
  if (v1 == 6)
  {
    v2 = 0x401C000000000000;
  }

  qword_100261540 = v2;
  byte_100261548 = 0;
}

uint64_t sub_1000DD2FC()
{
  sub_10000341C(&qword_1002617F0, &qword_1001D7A80);
  sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
  sub_100003E34(&unk_10025E090, &qword_1001D3660);
  sub_1000DD65C();
  sub_10006BC84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return Section<>.init(content:)();
}

__n128 sub_1000DD440@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v4 = sub_10000341C(&qword_1002617E0, &qword_1001D7A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(&qword_1002617E8, &qword_1001D7A40) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

void sub_1000DD538()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0xC024000000000000;
  if (v1 == 6)
  {
    v2 = 0xC036000000000000;
  }

  qword_100261550 = v2;
  byte_100261558 = 0;
}

uint64_t sub_1000DD5AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000DD5D8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000DD65C()
{
  result = qword_100261800;
  if (!qword_100261800)
  {
    sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
    sub_1000DD6E8();
    sub_100029424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261800);
  }

  return result;
}

unint64_t sub_1000DD6E8()
{
  result = qword_100261808;
  if (!qword_100261808)
  {
    sub_100003E34(&qword_100261810, &qword_1001D7A98);
    sub_1000DD774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261808);
  }

  return result;
}

unint64_t sub_1000DD774()
{
  result = qword_100261818;
  if (!qword_100261818)
  {
    sub_100003E34(&qword_100261820, &qword_1001D7AA0);
    sub_1000DD82C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261818);
  }

  return result;
}

unint64_t sub_1000DD82C()
{
  result = qword_100261828;
  if (!qword_100261828)
  {
    sub_100003E34(&qword_100261830, &qword_1001D7AA8);
    sub_1000DD8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261828);
  }

  return result;
}

unint64_t sub_1000DD8B8()
{
  result = qword_100261838;
  if (!qword_100261838)
  {
    sub_100003E34(&qword_100261840, &qword_1001D7AB0);
    sub_100003E34(&qword_100261848, &unk_1001D7AB8);
    type metadata accessor for SmallIconTitleLabelStyle(255);
    sub_100007120(&qword_100261850, &qword_100261848, &unk_1001D7AB8);
    sub_1000DDA04(&unk_10025D780, type metadata accessor for SmallIconTitleLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261838);
  }

  return result;
}

uint64_t sub_1000DDA04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000DDA80()
{
  v1 = *(type metadata accessor for ActionButtonView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1000DCF20(v2);
}

void sub_1000DDAF4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000B2ACC(v2);
}

unint64_t sub_1000DDB24()
{
  result = qword_10025F2D0;
  if (!qword_10025F2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025F2D0);
  }

  return result;
}

uint64_t sub_1000DDB94()
{
  v1 = (type metadata accessor for ActionButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);
  v7 = *(v0 + v3 + 24);
  j__swift_release();
  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = v0 + v3 + v1[10];
  v11 = type metadata accessor for PresentationDetent();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(v10 + *(sub_10000341C(&qword_10025DDA8, &qword_1001D31D8) + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DDD14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1000DDDBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DDDF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000DDE1C()
{
  result = qword_100261868;
  if (!qword_100261868)
  {
    sub_100003E34(&qword_10025E0B8, &qword_1001D36B0);
    sub_10006C0D4();
    sub_1000DDA04(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261868);
  }

  return result;
}

uint64_t sub_1000DDF2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DDF94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DE028()
{
  v2 = *(type metadata accessor for ModelResponseView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100028688;

  return sub_1000D5EDC(v4, v5, v0 + v3);
}

uint64_t sub_1000DE10C()
{
  v1 = type metadata accessor for ModelResponseView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = v5 + v1[6];
  v10 = *v9;
  v11 = v9[8];
  j__swift_release();
  v12 = (v5 + v1[7]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v5 + v1[8] + 8);

  v16 = v5 + v1[9];

  v17 = *(v16 + 1);

  v18 = v5 + v1[10];
  v19 = *v18;

  v20 = *(v18 + 1);

  v21 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v22 = type metadata accessor for NavigationPath();
  (*(*(v22 - 8) + 8))(&v18[v21], v22);
  v23 = (v5 + v1[11]);
  if (*v23)
  {
    v24 = v23[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DE308()
{
  v1 = *(type metadata accessor for ModelResponseView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1000D4208(0);
}

double sub_1000DE368@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_1000D539C(a1).n128_u64[0];
  return result;
}

uint64_t sub_1000DE37C()
{
  v1 = type metadata accessor for ModelResponseView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v1[5]);

  v10 = v6 + v1[6];
  v11 = *v10;
  v12 = v10[8];
  j__swift_release();
  v13 = (v6 + v1[7]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v6 + v1[8] + 8);

  v17 = v6 + v1[9];

  v18 = *(v17 + 1);

  v19 = v6 + v1[10];
  v20 = *v19;

  v21 = *(v19 + 1);

  v22 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v23 = type metadata accessor for NavigationPath();
  (*(*(v23 - 8) + 8))(&v19[v22], v23);
  v24 = (v6 + v1[11]);
  if (*v24)
  {
    v25 = v24[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DE580@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for ModelResponseView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000D2734(v6, a1);
}

uint64_t sub_1000DE5F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DE630(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for ModelResponseView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000D8750(a1, a2, v6);
}

unint64_t sub_1000DE6C0()
{
  result = qword_1002618B0;
  if (!qword_1002618B0)
  {
    sub_100003E34(&qword_1002618A8, &qword_1001D7D50);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_1000DE778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002618B0);
  }

  return result;
}

unint64_t sub_1000DE778()
{
  result = qword_1002618B8;
  if (!qword_1002618B8)
  {
    sub_100003E34(&qword_1002618C0, &qword_1001D7D58);
    sub_10006B6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002618B8);
  }

  return result;
}

unint64_t sub_1000DE86C()
{
  result = qword_100261918;
  if (!qword_100261918)
  {
    sub_100003E34(&qword_100261910, &qword_1001D7E08);
    sub_100007120(&qword_100261920, &qword_100261928, &unk_1001D7E10);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261918);
  }

  return result;
}

unint64_t sub_1000DE924()
{
  result = qword_100261930;
  if (!qword_100261930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261930);
  }

  return result;
}

unint64_t sub_1000DE9A4()
{
  result = qword_100261938;
  if (!qword_100261938)
  {
    sub_100003E34(&qword_1002618E0, &qword_1001D7DD8);
    sub_1000DEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261938);
  }

  return result;
}

unint64_t sub_1000DEA30()
{
  result = qword_100261940;
  if (!qword_100261940)
  {
    sub_100003E34(&qword_1002618D8, &qword_1001D7DD0);
    sub_100007120(&qword_100261948, &qword_1002618D0, &qword_1001D7DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261940);
  }

  return result;
}

unint64_t sub_1000DEAE8()
{
  result = qword_100261950;
  if (!qword_100261950)
  {
    sub_100003E34(&qword_1002618F8, &qword_1001D7DF0);
    sub_1000DEB74();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261950);
  }

  return result;
}

unint64_t sub_1000DEB74()
{
  result = qword_100261958;
  if (!qword_100261958)
  {
    sub_100003E34(&qword_1002618F0, &qword_1001D7DE8);
    sub_100003E34(&qword_1002618E0, &qword_1001D7DD8);
    sub_1000DE9A4();
    sub_10002AC34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261958);
  }

  return result;
}

uint64_t sub_1000DEC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000DECC0()
{
  result = qword_1002619B0;
  if (!qword_1002619B0)
  {
    sub_100003E34(&qword_1002619A0, &qword_1001D7E88);
    sub_10009BED4();
    sub_1000DED4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619B0);
  }

  return result;
}

unint64_t sub_1000DED4C()
{
  result = qword_1002619B8;
  if (!qword_1002619B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619B8);
  }

  return result;
}

unint64_t sub_1000DEDD8()
{
  result = qword_1002619D0;
  if (!qword_1002619D0)
  {
    sub_100003E34(&qword_1002619C8, &qword_1001D7F98);
    sub_1000DECC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619D0);
  }

  return result;
}

unint64_t sub_1000DEE68()
{
  result = qword_1002619D8;
  if (!qword_1002619D8)
  {
    sub_100003E34(&qword_1002617E8, &qword_1001D7A40);
    sub_100007120(&qword_1002619E0, &qword_1002617E0, &qword_1001D7A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619D8);
  }

  return result;
}

unint64_t sub_1000DEF24()
{
  result = qword_1002619E8;
  if (!qword_1002619E8)
  {
    sub_100003E34(&qword_10025C760, &unk_1001D1830);
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619E8);
  }

  return result;
}

unint64_t sub_1000DEFF0()
{
  result = qword_1002619F0;
  if (!qword_1002619F0)
  {
    sub_100003E34(&qword_1002619F8, &unk_1001D7FA0);
    sub_100003E34(&qword_1002617F8, &unk_1001D7A88);
    sub_100003E34(&unk_10025E090, &qword_1001D3660);
    sub_1000DD65C();
    sub_10006BC84();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002619F0);
  }

  return result;
}

unint64_t sub_1000DF118()
{
  result = qword_100261A00;
  if (!qword_100261A00)
  {
    sub_100003E34(&qword_100261880, &qword_1001D7C28);
    sub_1000DEF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261A00);
  }

  return result;
}

uint64_t sub_1000DF1CC()
{
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000DF23C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000DF2DC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000DF3BC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_1000DF43C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0CBC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1000DF4B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000DF4F8(v2, v3);
}

uint64_t sub_1000DF4F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (v6 = *(v2 + 32), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000DF628()
{
  v1[5] = v0;
  v2 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(sub_10000341C(&qword_100261B78, &qword_1001D8040) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = *(*(sub_10000341C(&qword_100261B80, &qword_1001D8048) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for RateLimitBudgets();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = *(*(sub_10000341C(&qword_100261B88, &unk_1001D8050) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for ExternalPartnerAuthenticator();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = *(*(sub_10000341C(&qword_10025F480, &qword_1001D4510) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v13 = type metadata accessor for ModelBundle();
  v1[18] = v13;
  v14 = *(v13 - 8);
  v1[19] = v14;
  v15 = *(v14 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v17;
  v1[24] = v16;

  return _swift_task_switch(sub_1000DF8FC, v17, v16);
}

uint64_t sub_1000DF8FC()
{
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v1 = static GenerativeAssistantSettingsUserDefaults.forcedRateLimitState()();
  if (v1 != 2 && (v1 & 1) != 0)
  {
    v2 = v0[22];

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "RateLimited is forced by UserDefaults", v6, 2u);
    }

    v7 = v0[5];

    if (*(v7 + 16) == 1)
    {
      *(v7 + 16) = 1;
    }

    else
    {
      v49 = v0[5];
      swift_getKeyPath();
      v50 = swift_task_alloc();
      *(v50 + 16) = v49;
      *(v50 + 24) = 1;
      v0[4] = v49;
      sub_1000E0CBC();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    goto LABEL_14;
  }

  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  type metadata accessor for CompositionModel(0);
  sub_100071008(v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[22];
    v12 = v0[17];

    v13 = &qword_10025F480;
    v14 = &qword_1001D4510;
    v15 = v12;
LABEL_13:
    sub_10000F500(v15, v13, v14);
    goto LABEL_14;
  }

  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  static ExternalPartnerAuthenticator.sharedAuthenticator(for:)();
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v19 = v0[22];
    v20 = v0[13];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v13 = &unk_100261B88;
    v14 = &unk_1001D8050;
    v15 = v20;
    goto LABEL_13;
  }

  v35 = v0[9];
  v36 = v0[10];
  v37 = v0[8];
  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
  ExternalPartnerAuthenticator.lastRateLimitBudgets.getter();
  if ((*(v36 + 48))(v37, 1, v35) != 1)
  {
    v51 = v0[22];
    v52 = v0[12];
    v53 = v0[9];
    v54 = v0[10];
    v55 = v0[8];
    v56 = v0[5];

    (*(v54 + 32))(v52, v55, v53);
    v57 = RateLimitBudgets.isRateLimited.getter() & 1;
    v59 = v0[19];
    v58 = v0[20];
    v60 = v0[18];
    v61 = v0[15];
    v62 = v0[14];
    v74 = v62;
    v76 = v0[16];
    v63 = v0[12];
    v65 = v0[9];
    v64 = v0[10];
    if (v57 == *(v56 + 16))
    {
      (*(v64 + 8))(v0[12], v0[9]);
      (*(v61 + 8))(v76, v74);
      (*(v59 + 8))(v58, v60);
      *(v56 + 16) = v57;
    }

    else
    {
      v72 = v0[18];
      v66 = v0[5];
      swift_getKeyPath();
      v67 = swift_task_alloc();
      *(v67 + 16) = v66;
      *(v67 + 24) = v57;
      v0[3] = v66;
      sub_1000E0CBC();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      (*(v64 + 8))(v63, v65);
      (*(v61 + 8))(v76, v74);
      (*(v59 + 8))(v58, v72);
    }

LABEL_14:
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[12];
    v26 = v0[13];
    v27 = v0[11];
    v73 = v0[8];
    v75 = v0[7];
    v29 = v0[5];
    v28 = v0[6];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);

    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v29;
    sub_10015C9C8(0, 0, v28, &unk_1001D8068, v32);

    v33 = v0[1];

    return v33();
  }

  v38 = v0[16];
  v39 = v0[7];
  sub_10000F500(v0[8], &qword_100261B80, &qword_1001D8048);
  ExternalPartnerAuthenticator.credentials.getter();
  v40 = type metadata accessor for Credentials();
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    v41 = v0[22];
    v43 = v0[19];
    v42 = v0[20];
    v44 = v0[18];
    v46 = v0[15];
    v45 = v0[16];
    v47 = v0[14];
    v48 = v0[7];

    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);
    v13 = &qword_100261B78;
    v14 = &qword_1001D8040;
    v15 = v48;
    goto LABEL_13;
  }

  sub_10000F500(v0[7], &qword_100261B78, &qword_1001D8040);
  v68 = async function pointer to ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()[1];
  v69 = swift_task_alloc();
  v0[25] = v69;
  *v69 = v0;
  v69[1] = sub_1000E0028;
  v70 = v0[16];
  v71 = v0[11];

  return ExternalPartnerAuthenticator.retrieveLatestRateLimitBudgets()(v71);
}

uint64_t sub_1000E0028()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_1000E042C;
  }

  else
  {
    v7 = sub_1000E0164;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000E0164()
{
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];

  v6 = RateLimitBudgets.isRateLimited.getter() & 1;
  (*(v3 + 8))(v2, v4);
  if (v6 == *(v5 + 16))
  {
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v14 + 8))(v13, v15);
    *(v5 + 16) = v6;
  }

  else
  {
    v7 = v0[26];
    v8 = v0[19];
    v31 = v0[18];
    v33 = v0[20];
    v9 = v0[15];
    v30 = v0[16];
    v10 = v0[14];
    v11 = v0[5];
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = v6;
    v0[2] = v11;
    sub_1000E0CBC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v9 + 8))(v30, v10);
    (*(v8 + 8))(v33, v31);
  }

  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[11];
  v32 = v0[8];
  v34 = v0[7];
  v24 = v0[5];
  v23 = v0[6];
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  sub_10015C9C8(0, 0, v23, &unk_1001D8068, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1000E042C()
{
  v35 = v0;
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v8 = v0[26];
  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F08);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[26];
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10002510C(0x2868736572666572, 0xE900000000000029, &v34);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s failed: %@", v14, 0x16u);
    sub_10000F500(v15, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v16);
  }

  else
  {
  }

  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[16];
  v21 = v0[17];
  v22 = v0[12];
  v23 = v0[13];
  v24 = v0[11];
  v32 = v0[8];
  v33 = v0[7];
  v26 = v0[5];
  v25 = v0[6];
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);

  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = &protocol witness table for MainActor;
  v29[4] = v26;
  sub_10015C9C8(0, 0, v25, &unk_1001D8068, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1000E0784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = async function pointer to static SettingsRemoteLocalization.upgradeIAPString()[1];
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1000E0830;

  return static SettingsRemoteLocalization.upgradeIAPString()();
}

uint64_t sub_1000E0830(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v10 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0974, v8, v7);
}

uint64_t sub_1000E0974()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  sub_1000DF4F8(v1, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E09F0()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC21WritingToolsUIService25CompositionRateLimitModel___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositionRateLimitModel()
{
  result = qword_100261A38;
  if (!qword_100261A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0AE8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E0B8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E0BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1000E0784(a1, v4, v5, v6);
}

unint64_t sub_1000E0CBC()
{
  result = qword_100261B90;
  if (!qword_100261B90)
  {
    type metadata accessor for CompositionRateLimitModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261B90);
  }

  return result;
}

uint64_t sub_1000E0D18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000DF4F8(v2, v3);
}

uint64_t sub_1000E0D58()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_1000E0DF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v6 = sub_10000341C(&qword_100261B98, &qword_1001D8220);
  sub_1000E1064(a1, a2 & 1, a3 + *(v6 + 44));
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a3 + *(sub_10000341C(&qword_100261BA0, &qword_1001D8228) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a3 + *(sub_10000341C(&qword_100261BA8, &qword_1001D8230) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = (a3 + *(sub_10000341C(&qword_100261BB0, &qword_1001D8238) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #10.0 }

  *v27 = _Q0;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v36 = qword_100277188;
  v37 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v27[*(v37 + 52)] = v36;
  *&v27[*(v37 + 56)] = 256;

  v38 = static Alignment.center.getter();
  v40 = v39;
  v41 = &v27[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v41 = v38;
  v41[1] = v40;
  LOBYTE(v38) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  result = sub_10000341C(&qword_100261BB8, &unk_1001D8240);
  v51 = a3 + *(result + 36);
  *v51 = v38;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  return result;
}

uint64_t sub_1000E1064@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v62 = &v54 - v11;
  v12 = sub_10000341C(&qword_100261BC0, &qword_1001D8250);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  v14 = __chkstk_darwin(v12);
  v63 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x1000000000000026;
  v20._object = 0x80000001001E6370;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
  v21._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v21);

  v22._object = 0x80000001001E63A0;
  v22._countAndFlagsBits = 0x100000000000001ALL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  LocalizedStringKey.init(stringInterpolation:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  v27 = v26;
  static Font.headline.getter();
  v28 = Text.font(_:)();
  v69 = v29;
  v70 = v28;
  v60 = v30;
  v71 = v31;

  sub_10002A984(v23, v25, v27 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v32 = Text.init(_:tableName:bundle:comment:)();
  v61 = v33;
  v58 = v34;
  v68 = v35;

  if ((v59 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v54 + 8))(v8, v55);
    a1 = v72;
  }

  swift_getKeyPath();
  v72 = a1;
  sub_1000E2714(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  v72 = v37;
  sub_1000E2714(&qword_100261B90, type metadata accessor for CompositionRateLimitModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v37 + 24);
  v38 = *(v37 + 32);

  v72 = v39;
  v73 = v38;
  sub_10002AC34();
  v40 = v62;
  Button<>.init<A>(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v57 = v17;
  v41 = v65;
  View.bold(_:)();
  (*(v64 + 8))(v40, v41);
  LOBYTE(v40) = v60 & 1;
  LOBYTE(v72) = v60 & 1;
  v42 = v66;
  v43 = *(v66 + 16);
  v44 = v63;
  v45 = v17;
  v46 = v67;
  v43(v63, v45, v67);
  v47 = v69;
  *a3 = v70;
  *(a3 + 8) = v47;
  *(a3 + 16) = v40;
  *(a3 + 24) = v71;
  *(a3 + 32) = v32;
  v56 = v32;
  v48 = v61;
  *(a3 + 40) = v61;
  LOBYTE(v41) = v58 & 1;
  *(a3 + 48) = v58 & 1;
  *(a3 + 56) = v68;
  v49 = sub_10000341C(&qword_100261BC8, &unk_1001D82A8);
  v43((a3 + *(v49 + 64)), v44, v46);
  v50 = v70;
  sub_100007D98(v70, v47, v40);

  v51 = v56;
  sub_100007D98(v56, v48, v41);
  v52 = *(v42 + 8);

  v52(v57, v46);
  v52(v44, v46);
  sub_10002A984(v51, v48, v41);

  sub_10002A984(v50, v69, v72);
}

void sub_1000E1748()
{
  v0 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    (*(v6 + 104))(v9, enum case for GenerativeAssistantSettingsDestination.upgradePlan(_:), v5);
    (*(v1 + 104))(v4, enum case for GenerativeAssistantSettingsDestination.Origin.writingTools(_:), v0);
    GenerativeAssistantSettingsDestination.fullURL(origin:)();
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v5);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    (*(v11 + 8))(v14, v10);
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 openSensitiveURL:v19 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E1A38(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 10;
  v18 = 0xE100000000000000;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v16;
  }

  swift_getKeyPath();
  v16 = a1;
  sub_1000E2714(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  v16 = v10;
  sub_1000E2714(&qword_100261B90, type metadata accessor for CompositionRateLimitModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + 24);
  v12 = *(v10 + 32);

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  return v17;
}

uint64_t sub_1000E1CA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a1;
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v56 = &v53 - v6;
  v7 = type metadata accessor for GenerativeAssistantSettingsDestination.Origin();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for URL();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v53);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  v21 = a3 + *(sub_10000341C(&qword_100261BD0, &qword_1001D82B8) + 44);
  (*(v13 + 104))(v16, enum case for GenerativeAssistantSettingsDestination.upgradePlan(_:), v12);
  (*(v8 + 104))(v11, enum case for GenerativeAssistantSettingsDestination.Origin.writingTools(_:), v7);
  GenerativeAssistantSettingsDestination.fullURL(origin:)();
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  *v21 = static VerticalAlignment.center.getter();
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v22 = sub_10000341C(&qword_100261BD8, &qword_1001D82C0);
  sub_1000E21B8(v55, v54 & 1, v20, v21 + *(v22 + 44));
  (*(v17 + 8))(v20, v53);
  v23 = type metadata accessor for Font.Design();
  v24 = v56;
  (*(*(v23 - 8) + 56))(v56, 1, 1, v23);
  v25 = static Font.system(size:weight:design:)();
  sub_1000E26A4(v24);
  KeyPath = swift_getKeyPath();
  v27 = (a3 + *(sub_10000341C(&qword_100261BE0, &qword_1001D82F8) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  LOBYTE(v25) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a3 + *(sub_10000341C(&qword_100261BE8, &qword_1001D8300) + 36);
  *v36 = v25;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  v37 = (a3 + *(sub_10000341C(&qword_100261BF0, &qword_1001D8308) + 36));
  v38 = *(type metadata accessor for RoundedRectangle() + 20);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #10.0 }

  *v37 = _Q0;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v46 = qword_100277188;
  v47 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v37[*(v47 + 52)] = v46;
  *&v37[*(v47 + 56)] = 256;

  v48 = static Alignment.center.getter();
  v50 = v49;
  result = sub_10000341C(&qword_10025C5C8, &qword_1001DC380);
  v52 = &v37[*(result + 36)];
  *v52 = v48;
  v52[1] = v50;
  return result;
}

uint64_t sub_1000E21B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001001E6410;
  v13._countAndFlagsBits = 0xD000000000000024;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v14);

  v15._object = 0x80000001001E6440;
  v15._countAndFlagsBits = 0x1000000000000027;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v16._countAndFlagsBits = sub_1000E1A38(a1, a2 & 1);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

  v17._countAndFlagsBits = 10333;
  v17._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  sub_1000E2714(&qword_100261BF8, &type metadata accessor for URL);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)();
  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  LocalizedStringKey.init(stringInterpolation:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  v33 = v24;
  KeyPath = swift_getKeyPath();
  v26 = v34;
  (*(v9 + 16))(v34, a3, v8);
  v27 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v28 = swift_allocObject();
  (*(v9 + 32))(v28 + v27, v26, v8);
  v29 = (a4 + *(sub_10000341C(&qword_100261C00, &qword_1001D8340) + 36));
  v30 = *(sub_10000341C(&qword_100261C08, &qword_1001D8348) + 28);
  result = OpenURLAction.init(handler:)();
  *v29 = KeyPath;
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v33;
  return result;
}

uint64_t sub_1000E24C8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000E2590()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  else
  {
    __break(1u);
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_1000E26A4(uint64_t a1)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E2784()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E280C()
{
  v0 = *(*(type metadata accessor for URL() - 8) + 80);

  return sub_1000E2590();
}

unint64_t sub_1000E2890()
{
  result = qword_100261C10;
  if (!qword_100261C10)
  {
    sub_100003E34(&qword_100261BB8, &unk_1001D8240);
    sub_1000E2A74(&qword_100261C18, &qword_100261BB0, &qword_1001D8238, sub_1000E2948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C10);
  }

  return result;
}

unint64_t sub_1000E2978()
{
  result = qword_100261C28;
  if (!qword_100261C28)
  {
    sub_100003E34(&qword_100261BA0, &qword_1001D8228);
    sub_100007120(&qword_100261C30, &qword_100261C38, &qword_1001D8350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C28);
  }

  return result;
}

uint64_t sub_1000E2A74(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E2B54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E2BD8()
{
  result = qword_100261C50;
  if (!qword_100261C50)
  {
    sub_100003E34(&qword_100261BE0, &qword_1001D82F8);
    sub_100007120(&qword_100261C58, &qword_100261C60, &qword_1001D8358);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261C50);
  }

  return result;
}

void sub_1000E2D20()
{
  v0 = type metadata accessor for UIHostingControllerSizingOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v80 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for QuestionnaireView(0);
  v3 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_100261CA0, &unk_1001D8380);
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v8 = __chkstk_darwin(v6);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = type metadata accessor for NavigationPath();
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  __chkstk_darwin(v19);
  v72 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  NavigationPath.init()();
  type metadata accessor for MainActor();
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  v74 = v19;
  Binding.init(get:set:)();
  v26 = type metadata accessor for CommonUIManager();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_10015671C();
  v29 = v77;
  v30 = *&v77[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_questionnaireModel];
  v75 = v18;
  sub_1000E3754(v18, v16);

  sub_10015DDD8(v31, v16, v5);
  sub_1000E37C4(&qword_10025B380, type metadata accessor for QuestionnaireView);
  sub_1000E37C4(&qword_10025B1E0, type metadata accessor for CommonUIManager);

  View.environment<A>(_:)();

  sub_1000E380C(v5);
  v32 = *(v81 + 16);
  v76 = v11;
  v79 = v6;
  v32(v78, v11, v6);
  v33 = objc_allocWithZone(sub_10000341C(&qword_100261CA8, &unk_1001D8390));
  v34 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v35 = [v29 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_14;
  }

  v36 = v35;
  v37 = v34;
  v38 = [v37 view];
  if (!v38)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = v38;
  [v36 addSubview:v38];

  v40 = [v37 view];
  if (!v40)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v41 = v40;
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v29 addChildViewController:v37];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1001CE090;
  v43 = [v37 view];
  if (!v43)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v29 view];
  if (!v46)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47 = v46;
  v48 = [v46 leadingAnchor];

  v49 = [v45 constraintEqualToAnchor:v48];
  *(v42 + 32) = v49;
  v50 = [v37 view];
  if (!v50)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [v29 view];
  if (!v53)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v42 + 40) = v56;
  v57 = [v37 view];
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v29 view];
  if (!v60)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v61 = v60;
  v62 = [v60 topAnchor];

  v63 = [v59 constraintEqualToAnchor:v62];
  *(v42 + 48) = v63;
  v64 = [v37 view];

  if (!v64)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v65 = [v64 bottomAnchor];

  v66 = [v29 view];
  if (v66)
  {
    v67 = v66;
    v68 = objc_opt_self();
    v69 = [v67 bottomAnchor];

    v70 = [v65 constraintEqualToAnchor:v69];
    *(v42 + 56) = v70;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v68 activateConstraints:isa];

    (*(v81 + 8))(v76, v79);
    sub_1000E3868(v75);
    (*(v73 + 8))(v72, v74);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_1000E3674()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuestionnaireOnlyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E371C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E3754(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E37C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E380C(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E3868(uint64_t a1)
{
  v2 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E38E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_100261CB0, &unk_1001D83A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 92);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E39B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_100261CB0, &unk_1001D83A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FeedbackView()
{
  result = qword_100261D10;
  if (!qword_100261D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E3AB4()
{
  sub_1000E3E10(319, &qword_100261D20, &type metadata accessor for FBKEvaluationController, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000E3DC0(319, &qword_10025B490, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000E3E10(319, &qword_100261D28, type metadata accessor for Attachment, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000E3DC0(319, &qword_100261D30, &type metadata for String, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_1000E3DC0(319, &qword_100261D38, &type metadata for Data, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_1000E3DC0(319, &qword_100261D40, &type metadata for Mode, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000E3D5C();
              if (v6 <= 0x3F)
              {
                sub_1000E3DC0(319, &qword_100261D58, &type metadata for CGFloat, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_1000E3E10(319, &unk_100261D60, &type metadata accessor for AccessibilityTechnologies, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
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

void sub_1000E3D5C()
{
  if (!qword_100261D48)
  {
    sub_100003E34(&qword_100261D50, &qword_1001D83C8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100261D48);
    }
  }
}

void sub_1000E3DC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000E3E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000E3E88()
{
  result = qword_100261DD8;
  if (!qword_100261DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261DD8);
  }

  return result;
}

uint64_t sub_1000E3EDC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v31;
  v6 = v31 * 0.5;
  v7 = v32;
  v8 = DWORD1(v32);
  v9 = *(&v32 + 1);
  v10 = v33;

  v11 = static Alignment.center.getter();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v12 = *v30;
  v13 = *&v30[16];
  v38 = *v30;
  v39 = *&v30[16];
  v28 = v34[0];
  v29 = v32;
  v36 = v34[0];
  v37 = v32;
  *&v40 = v11;
  *(&v40 + 1) = v14;
  v15 = v2[1];
  *a2 = *v2;
  a2[1] = v15;
  *(a2 + 89) = *(v2 + 89);
  v16 = v2[5];
  a2[4] = v2[4];
  a2[5] = v16;
  v17 = v2[3];
  a2[2] = v2[2];
  a2[3] = v17;
  v18 = v40;
  a2[10] = v39;
  a2[11] = v18;
  v19 = v38;
  a2[8] = v37;
  a2[9] = v19;
  a2[7] = v36;
  v41[2] = v12;
  v41[3] = v13;
  v41[0] = v28;
  v41[1] = v29;
  v42 = v11;
  v43 = v14;
  sub_1000081F8(v34, v21, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(v2, v21, &qword_10025BAF0, &qword_1001D0988);
  sub_1000081F8(&v36, v21, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v41, &qword_100261FA8, &qword_1001D8600);
  *v21 = v6;
  *&v21[1] = v5;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = a1;
  v27 = 256;
  return sub_10000F500(v21, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v37;
  v13 = v37 * 0.5;
  v15 = v38;
  v14 = DWORD1(v38);
  v16 = *(&v38 + 1);
  v17 = v39;

  v18 = static Alignment.center.getter();
  v20 = v19;
  *v40 = v37 * 0.5;
  *(v40 + 1) = v37;
  v40[1] = v38;
  *v41 = v39;
  *&v41[16] = a1;
  *&v41[24] = 256;
  v35 = v38;
  *v36 = v39;
  *&v36[10] = *&v41[10];
  v34 = v40[0];
  v44 = *v36;
  v45 = *&v36[16];
  v42 = v40[0];
  v43 = v38;
  *&v46 = v18;
  *(&v46 + 1) = v19;
  sub_1000081F8(v9, a6, a2, a3);
  v21 = (a6 + *(sub_10000341C(a4, a5) + 36));
  v22 = *&v36[16];
  v21[2] = *v36;
  v21[3] = v22;
  v21[4] = v46;
  v23 = v43;
  *v21 = v42;
  v21[1] = v23;
  v47[2] = *v36;
  v47[3] = *&v36[16];
  v47[0] = v34;
  v47[1] = v35;
  v48 = v18;
  v49 = v20;
  sub_1000081F8(v40, v27, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(&v42, v27, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v47, &qword_100261FA8, &qword_1001D8600);
  *v27 = v13;
  *&v27[1] = v12;
  v28 = v15;
  v29 = v14;
  v30 = v16;
  v31 = v17;
  v32 = a1;
  v33 = 256;
  return sub_10000F500(v27, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E42E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = static Alignment.center.getter();
  v14 = v13;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = sub_10000341C(&qword_100261FE8, &qword_1001D8638);
  (*(*(v15 - 8) + 16))(a2, v3, v15);
  v16 = (a2 + *(sub_10000341C(&qword_100261FF0, &unk_1001D8640) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v12;
  v42 = v14;
  sub_1000081F8(v33, v20, &qword_100261FD8, &qword_1001D8628);
  sub_1000081F8(&v35, v20, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v40, &qword_100261FA8, &qword_1001D8600);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_10000F500(v20, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E44F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v35;
  v13 = v35 * 0.5;
  v14 = v36;
  v15 = DWORD1(v36);
  v16 = *(&v36 + 1);
  v17 = v37;

  v18 = static Alignment.center.getter();
  *v38 = v35 * 0.5;
  *(v38 + 1) = v35;
  v38[1] = v36;
  *v39 = v37;
  *&v39[16] = a1;
  *&v39[24] = 256;
  *v34 = v37;
  *&v34[10] = *&v39[10];
  v19 = *v34;
  v20 = *&v34[16];
  v42 = *v34;
  v43 = *&v34[16];
  v32 = v38[0];
  v33 = v36;
  v40 = v38[0];
  v41 = v36;
  *&v44 = v18;
  *(&v44 + 1) = v21;
  *a6 = a2;
  *(a6 + 8) = a3;
  a4 &= 1u;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  v22 = v44;
  *(a6 + 80) = v43;
  *(a6 + 96) = v22;
  v23 = v42;
  *(a6 + 48) = v41;
  *(a6 + 64) = v23;
  *(a6 + 32) = v40;
  v45[2] = v19;
  v45[3] = v20;
  v45[0] = v32;
  v45[1] = v33;
  v46 = v18;
  v47 = v21;
  sub_1000081F8(v38, v25, &qword_100261FD8, &qword_1001D8628);
  sub_100007D98(a2, a3, a4);

  sub_1000081F8(&v40, v25, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v45, &qword_100261FA8, &qword_1001D8600);
  *v25 = v13;
  *&v25[1] = v12;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = a1;
  v31 = 256;
  return sub_10000F500(v25, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4714@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v32;
  v6 = v32 * 0.5;
  v7 = v33;
  v8 = DWORD1(v33);
  v9 = *(&v33 + 1);
  v10 = v34;

  v11 = static Alignment.center.getter();
  *v40 = v32 * 0.5;
  *(v40 + 1) = v32;
  v40[1] = v33;
  *v41 = v34;
  *&v41[16] = a1;
  *&v41[24] = 256;
  *v31 = v34;
  *&v31[10] = *&v41[10];
  v12 = *v31;
  v13 = *&v31[16];
  v44 = *v31;
  v45 = *&v31[16];
  v29 = v40[0];
  v30 = v33;
  v42 = v40[0];
  v43 = v33;
  *&v46 = v11;
  *(&v46 + 1) = v14;
  v16 = *(v2 + 3);
  v15 = *(v2 + 4);
  v17 = *v2;
  v39 = *(v2 + 16);
  v38 = v17;
  v37 = v16;
  v36 = *(v2 + 40);
  v35 = v15;
  *(a2 + 25) = *(v2 + 25);
  v18 = v2[1];
  *a2 = *v2;
  a2[1] = v18;
  v19 = v46;
  a2[6] = v45;
  a2[7] = v19;
  v20 = v44;
  a2[4] = v43;
  a2[5] = v20;
  a2[3] = v42;
  v47[2] = v12;
  v47[3] = v13;
  v47[0] = v29;
  v47[1] = v30;
  v48 = v11;
  v49 = v14;
  sub_1000081F8(v40, v22, &qword_100261FD8, &qword_1001D8628);
  sub_1000F49D4(&v38, v22);
  sub_1000081F8(&v37, v22, &qword_1002620C8, &qword_1001D87D0);
  sub_1000F4A30(&v35, v22);
  sub_1000081F8(&v42, v22, &qword_100261FA8, &qword_1001D8600);
  sub_10000F500(v47, &qword_100261FA8, &qword_1001D8600);
  *v22 = v6;
  *&v22[1] = v5;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = a1;
  v28 = 256;
  return sub_10000F500(v22, &qword_100261FD8, &qword_1001D8628);
}

uint64_t sub_1000E4968()
{
  v0 = sub_100007A3C(&off_10024AAE0);
  result = swift_arrayDestroy();
  qword_100277100 = v0;
  return result;
}

uint64_t sub_1000E49B4()
{
  v0 = sub_100007A3C(&off_10024AB40);
  result = swift_arrayDestroy();
  qword_100277108 = v0;
  return result;
}

uint64_t sub_1000E4A1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for FBKSEvaluation.Subject();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(sub_1000E4B10, v7, v6);
}

uint64_t sub_1000E4B10()
{
  v1 = *(v0 + 24);
  sub_1000E4F4C(*(v0 + 48));
  v2 = async function pointer to FBKSEvaluation.Subject._remoteEvaluate(action:showFeedbackForm:)[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1000E4BBC;
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  return FBKSEvaluation.Subject._remoteEvaluate(action:showFeedbackForm:)(v5, 1);
}

uint64_t sub_1000E4BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1000E4D7C;
  }

  else
  {
    v7 = sub_1000E4CF8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000E4CF8()
{
  v1 = v0[7];

  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000E4D7C()
{
  v1 = v0[7];

  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F80);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unexpected error trying to launch remote evaluation: %@.", v8, 0xCu);
    sub_10000F500(v9, &unk_10025D580, &qword_1001CFA60);
  }

  else
  {
    v11 = v0[11];
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000E4F4C@<X0>(uint64_t *a1@<X8>)
{
  v293 = a1;
  v269 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v268 = *(v269 - 8);
  v2 = *(v268 + 64);
  v3 = __chkstk_darwin(v269);
  v266 = v261 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v264 = v261 - v6;
  __chkstk_darwin(v5);
  v8 = v261 - v7;
  v302 = type metadata accessor for FBKSForm.Question();
  v300 = *(v302 - 8);
  v9 = *(v300 + 64);
  v10 = __chkstk_darwin(v302);
  v282 = (v261 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v267 = v261 - v13;
  __chkstk_darwin(v12);
  v283 = (v261 - v14);
  v15 = type metadata accessor for FeedbackView();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v296 = v261 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v272 = v261 - v20;
  __chkstk_darwin(v19);
  v22 = v261 - v21;
  v301 = type metadata accessor for FBKSInteraction.Content();
  *&v298 = *(v301 - 8);
  v23 = *(v298 + 64);
  v24 = __chkstk_darwin(v301);
  v284 = (v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v291 = (v261 - v27);
  __chkstk_darwin(v26);
  v285 = (v261 - v28);
  v281 = type metadata accessor for CharacterSet();
  v280 = *(v281 - 1);
  v29 = *(v280 + 64);
  __chkstk_darwin(v281);
  v279 = v261 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000341C(&qword_100261EF0, &qword_1001D8568);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = v261 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v310 = v261 - v37;
  v38 = __chkstk_darwin(v36);
  v299 = (v261 - v39);
  __chkstk_darwin(v38);
  v309 = v261 - v40;
  v41 = sub_10000341C(&qword_100261EF8, &qword_1001D8570);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v290 = v261 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v304 = v261 - v46;
  __chkstk_darwin(v45);
  v48 = v261 - v47;
  v49 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v50 = *(v49 - 8);
  v51 = v50[8];
  v52 = __chkstk_darwin(v49);
  v303 = (v261 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v52);
  v55 = v261 - v54;
  v56 = *(v1 + 128);
  v57 = *(v1 + 144);
  v58 = *(v1 + 152);
  v295 = *(v1 + 136);
  v292 = v57;
  sub_1000ED2BC(v56, v295, v57, v58, v313);
  v286 = v313[1];
  v287 = v313[3];
  v288 = v313[5];
  v289 = v313[7];
  v307 = v1;
  v265 = v8;
  v294 = v35;
  v275 = v22;
  v271 = v313[6];
  v270 = v313[4];
  v274 = v313[2];
  v273 = v313[0];
  v276 = v56;
  if (v58 != 255)
  {
    if (v58 == 1)
    {
      if (v295 == 1)
      {
        v59 = &enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:);
        goto LABEL_10;
      }
    }

    else if (v58 == 2 && v56 == 2 && !(v292 | v295))
    {
      v59 = &enum case for FBKSInteraction.FeatureDomain.smartReplies(_:);
      goto LABEL_10;
    }
  }

  v59 = &enum case for FBKSInteraction.FeatureDomain.writingTools(_:);
LABEL_10:
  v60 = v50[13];
  v60(v55, *v59, v49);
  v61 = v49;
  v62 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  v261[0] = *(v62 - 8);
  v63 = v261[0] + 56;
  v64 = *(v261[0] + 56);
  v64(v48, 1, 1, v62);
  v263 = v62;
  v262 = v64;
  v261[1] = v63;
  v64(v304, 1, 1, v62);
  v65 = v307;
  v306 = v61;
  v308 = v50;
  v297 = v48;
  v305 = v55;
  v278 = v50 + 13;
  v277 = v60;
  if (v58 == 255)
  {
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000F34C(v72, qword_100276F80);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v71 = v301;
    if (!v75)
    {
      goto LABEL_19;
    }

    v76 = swift_slowAlloc();
    *v76 = 0;
    v77 = "Feedback Initiated - No Subject";
    goto LABEL_18;
  }

  v66 = v303;
  v60(v303, enum case for FBKSInteraction.FeatureDomain.writingTools(_:), v61);
  v67 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
  v68 = v50[1];
  v68(v66, v61);
  if ((v67 & 1) == 0)
  {
    v60(v66, enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:), v61);
    v69 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
    v68(v66, v61);
    if ((v69 & 1) == 0)
    {
      v60(v66, enum case for FBKSInteraction.FeatureDomain.smartReplies(_:), v61);
      v162 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
      v68(v66, v61);
      if (v162)
      {
        v65 = v307;
        if (qword_10025A7A8 != -1)
        {
          swift_once();
        }

        v163 = v65[2];
        v71 = v301;
        if (!v163)
        {
          goto LABEL_124;
        }

        v164 = v65[1];
        if (sub_10013845C(v164, v65[2], qword_100277108))
        {
          v295 = 0x80000001001E65C0;
          v165 = v304;
          sub_10000F500(v304, &qword_100261EF8, &qword_1001D8570);
          v166 = v297;
          sub_10000F500(v297, &qword_100261EF8, &qword_1001D8570);
          v167 = *(v261[0] + 104);
          v168 = v263;
          v167(v166, enum case for FBKSInteraction.AnnotatedContent.IconType.singleMessage(_:), v263);
          v169 = v166;
          v170 = v262;
          v262(v169, 0, 1, v168);
          v167(v165, enum case for FBKSInteraction.AnnotatedContent.IconType.smartReplyMessageGenerated(_:), v168);
          v65 = v307;
          v170(v165, 0, 1, v168);
          v292 = 0xD000000000000014;
          goto LABEL_21;
        }

        if (qword_10025A7A0 != -1)
        {
          swift_once();
        }

        if (sub_10013845C(v164, v163, qword_100277100))
        {
          v292 = 0xD000000000000010;
          v295 = 0x80000001001E65A0;
          v255 = v304;
          sub_10000F500(v304, &qword_100261EF8, &qword_1001D8570);
          v256 = v297;
          sub_10000F500(v297, &qword_100261EF8, &qword_1001D8570);
          v257 = *(v261[0] + 104);
          v258 = v263;
          v257(v256, enum case for FBKSInteraction.AnnotatedContent.IconType.mailMessage(_:), v263);
          v259 = v256;
          v260 = v262;
          v262(v259, 0, 1, v258);
          v257(v255, enum case for FBKSInteraction.AnnotatedContent.IconType.smartReplyMailGenerated(_:), v258);
          v65 = v307;
          v260(v255, 0, 1, v258);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v65 = v307;
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v205 = type metadata accessor for Logger();
      sub_10000F34C(v205, qword_100276F80);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      v206 = os_log_type_enabled(v73, v74);
      v71 = v301;
      if (!v206)
      {
LABEL_19:

LABEL_20:
        v292 = 0;
        v295 = 0;
        goto LABEL_21;
      }

      v76 = swift_slowAlloc();
      *v76 = 0;
      v77 = "Feedback Initiated - Ignoring subject for domain";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v73, v74, v77, v76, 2u);

      goto LABEL_19;
    }
  }

  v292 = sub_1000EEF90(v276, v295, v292, v58);
  v295 = v70;
  v65 = v307;
  v71 = v301;
LABEL_21:
  v78 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v79 = *(v78 - 8);
  v80 = *(v79 + 56);
  v81 = v79 + 56;
  v80(v309, 1, 1, v78);
  v82 = v65[6];
  if (v82)
  {
    v83 = v65[5];
    v311[0] = v83;
    v311[1] = v82;
    v84 = v279;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10002AC34();
    v85 = StringProtocol.trimmingCharacters(in:)();
    v87 = v86;
    (*(v280 + 8))(v84, v281);

    v88 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v88 = v85 & 0xFFFFFFFFFFFFLL;
    }

    if (v88)
    {
      v89 = v285;
      *v285 = v83;
      v89[1] = v82;
      v90 = v298;
      (*(v298 + 104))(v89, enum case for FBKSInteraction.Content.text(_:), v71);
      v91 = *(v90 + 16);
      v281 = v80;
      v91(v291, v89, v71);
      swift_bridgeObjectRetain_n();
      sub_1000081F8(v313, v311, &qword_100261F00, &qword_1001D8578);

      v92 = v81;

      sub_1000081F8(v313, v311, &qword_100261F00, &qword_1001D8578);

      sub_1000081F8(v297, v290, &qword_100261EF8, &qword_1001D8570);
      v93 = v299;
      v80 = v281;
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      v94 = v309;
      sub_10000F500(v309, &qword_100261EF0, &qword_1001D8568);
      v280 = v92;
      v80(v93, 0, 1, v78);
      sub_10002A894(v93, v94, &qword_100261EF0, &qword_1001D8568);
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_10000F34C(v95, qword_100276F80);
      v65 = v307;
      v96 = v275;
      sub_1000F3AC4(v307, v275, type metadata accessor for FeedbackView);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v311[0] = v100;
        *v99 = 136642819;
        v101 = *(v96 + 48);
        if (!v101)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v102 = v100;
        v103 = *(v96 + 40);
        v104 = *(v96 + 48);

        sub_1000F3B94(v96, type metadata accessor for FeedbackView);
        v105 = sub_10002510C(v103, v101, v311);

        *(v99 + 4) = v105;
        _os_log_impl(&_mh_execute_header, v97, v98, "Feedback Initiated - originalContent: %{sensitive}s", v99, 0xCu);
        sub_10000F4B4(v102);

        v71 = v301;
        (*(v298 + 8))(v285, v301);
        v80 = v281;
      }

      else
      {

        sub_1000F3B94(v96, type metadata accessor for FeedbackView);
        v71 = v301;
        (*(v298 + 8))(v285, v301);
      }

      v81 = v280;
    }
  }

  v80(v310, 1, 1, v78);
  v106 = v65[10];
  if (v106)
  {
    v107 = v65[9];
    v108 = HIBYTE(v106) & 0xF;
    if ((v106 & 0x2000000000000000) == 0)
    {
      v108 = v107 & 0xFFFFFFFFFFFFLL;
    }

    if (v108)
    {
      v280 = v81;
      v109 = v284;
      *v284 = v107;
      v109[1] = v106;
      v110 = v298;
      (*(v298 + 104))(v109, enum case for FBKSInteraction.Content.text(_:), v71);
      (*(v110 + 16))(v291, v109, v71);

      sub_1000081F8(v313, v311, &qword_100261F00, &qword_1001D8578);

      v281 = v80;

      sub_1000081F8(v313, v311, &qword_100261F00, &qword_1001D8578);

      sub_1000081F8(v304, v290, &qword_100261EF8, &qword_1001D8570);
      v111 = v299;
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      v112 = v310;
      sub_10000F500(v310, &qword_100261EF0, &qword_1001D8568);
      v281(v111, 0, 1, v78);
      sub_10002A894(v111, v112, &qword_100261EF0, &qword_1001D8568);
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v113 = type metadata accessor for Logger();
      sub_10000F34C(v113, qword_100276F80);
      v114 = v272;
      sub_1000F3AC4(v65, v272, type metadata accessor for FeedbackView);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v311[0] = v118;
        *v117 = 136642819;
        v119 = *(v114 + 80);
        v120 = v301;
        if (v119)
        {
          v121 = v118;
          v122 = *(v114 + 72);
          v123 = *(v114 + 80);

          sub_1000F3B94(v114, type metadata accessor for FeedbackView);
          v124 = sub_10002510C(v122, v119, v311);

          *(v117 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v115, v116, "Feedback Initiated - generatedContent: %{sensitive}s", v117, 0xCu);
          sub_10000F4B4(v121);

          (*(v298 + 8))(v284, v120);
          goto LABEL_42;
        }

        goto LABEL_123;
      }

      sub_1000F3B94(v114, type metadata accessor for FeedbackView);
      (*(v298 + 8))(v284, v301);
    }
  }

LABEL_42:
  v125 = sub_1000ED7E0();
  (v308[2])(v303, v305, v306);
  v126 = v65[1];
  v127 = v65[2];
  sub_1000081F8(v309, v299, &qword_100261EF0, &qword_1001D8568);
  sub_1000081F8(v310, v294, &qword_100261EF0, &qword_1001D8568);
  v128 = v65[11];
  v129 = v65[12];
  objc_allocWithZone(type metadata accessor for FBKSInteraction());

  v299 = v125;
  v130 = FBKSInteraction.init(featureDomain:bundleID:prefillQuestions:originalAnnotatedContent:generatedAnnotatedContent:extraContent:modelVersion:diagnostics:auxiliaryMetrics:isHighPriority:)();
  v131 = v295;
  v301 = v130;
  if (!v295)
  {
    v157 = v308;
    goto LABEL_84;
  }

  sub_10000341C(&qword_100261F08, &unk_1001D8580);
  v132 = (sub_10000341C(&qword_10025AC40, &qword_1001CE920) - 8);
  v133 = *(*v132 + 72);
  v134 = (*(*v132 + 80) + 32) & ~*(*v132 + 80);
  v135 = swift_allocObject();
  v298 = xmmword_1001CF9D0;
  *(v135 + 16) = xmmword_1001CF9D0;
  v136 = v135 + v134;
  v137 = v132[14];
  strcpy(v136, ":sub_feature");
  *(v136 + 13) = 0;
  *(v136 + 14) = -5120;
  v138 = *(v300 + 104);
  LODWORD(v294) = enum case for FBKSForm.Question.custom(_:);
  v291 = v138;
  (v138)(v136);
  sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
  v139 = swift_allocObject();
  *(v139 + 16) = v298;
  *(v139 + 32) = v292;
  *(v139 + 40) = v131;
  *(v136 + v137) = v139;

  sub_10000688C(v135);
  swift_setDeallocating();
  sub_10000F500(v136, &qword_10025AC40, &qword_1001CE920);
  swift_deallocClassInstance();
  dispatch thunk of FBKSInteraction.prefillQuestions.setter();
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v140 = type metadata accessor for Logger();
  sub_10000F34C(v140, qword_100276F80);

  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v311[0] = v144;
    *v143 = 136315138;
    *(v143 + 4) = sub_10002510C(v292, v131, v311);
    _os_log_impl(&_mh_execute_header, v141, v142, "Feedback Initiated - Subject: %s", v143, 0xCu);
    sub_10000F4B4(v144);
  }

  v65 = v307;
  v145 = v303;
  v146 = v306;
  v277(v303, enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:), v306);
  v147 = static FBKSInteraction.FeatureDomain.== infix(_:_:)();
  (v308[1])(v145, v146);
  if (v147)
  {
    v148 = dispatch thunk of FBKSInteraction.prefillQuestions.modify();
    if (!*v149)
    {
      v171 = v148;

      (v171)(v311, 0);
      v131 = 0;
LABEL_74:
      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        v311[0] = v303;
        *v198 = 136315138;
        type metadata accessor for GenerativeAssistantSettingsProvider();
        static GenerativeAssistantSettingsProvider.shared.getter();
        v199 = v266;
        dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

        v200 = v268;
        v201 = v199;
        v202 = v269;
        if ((*(v268 + 88))(v201, v269) == enum case for GenerativeAssistantSettingsProvider.LLMProvider.chatGPT(_:))
        {
          v203 = 0xE600000000000000;
          v204 = 0x49416E65704FLL;
        }

        else
        {
          static GenerativeAssistantSettingsProvider.shared.getter();
          *&v298 = v131;
          v207 = v264;
          dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

          v204 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
          v203 = v208;
          v209 = *(v200 + 8);
          v210 = v207;
          v131 = v298;
          v209(v210, v202);
          v209(v266, v202);
        }

        v211 = sub_10002510C(v204, v203, v311);

        *(v198 + 4) = v211;
        _os_log_impl(&_mh_execute_header, v196, v197, "Feedback Initiated - Model: %s", v198, 0xCu);
        sub_10000F4B4(v303);

        v157 = v308;
      }

      else
      {

        v157 = v308;
      }

LABEL_84:
      v158 = v296;
      v159 = v65[29];
      if (v159)
      {
        goto LABEL_85;
      }

      goto LABEL_53;
    }

    v150 = v149;
    v303 = v148;
    v151 = v283;
    *v283 = 0xD000000000000012;
    v151[1] = 0x80000001001E6580;
    v291();
    type metadata accessor for GenerativeAssistantSettingsProvider();
    static GenerativeAssistantSettingsProvider.shared.getter();
    v152 = v265;
    dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

    v153 = v268;
    v154 = v269;
    if ((*(v268 + 88))(v152, v269) == enum case for GenerativeAssistantSettingsProvider.LLMProvider.chatGPT(_:))
    {
      v155 = 0xE600000000000000;
      v156 = 0x49416E65704FLL;
    }

    else
    {
      static GenerativeAssistantSettingsProvider.shared.getter();
      v172 = v264;
      dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

      v173 = GenerativeAssistantSettingsProvider.LLMProvider.rawValue.getter();
      v155 = v174;
      v175 = v153;
      v156 = v173;
      v176 = *(v175 + 8);
      v176(v172, v154);
      v176(v152, v154);
    }

    v177 = *v150;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v312 = *v150;
    v179 = v312;
    *v150 = 0x8000000000000000;
    v181 = sub_100005298(v283);
    v182 = *(v179 + 2);
    v183 = (v180 & 1) == 0;
    v184 = v182 + v183;
    if (__OFADD__(v182, v183))
    {
      __break(1u);
    }

    else
    {
      v185 = v180;
      if (*(v179 + 3) >= v184)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000F30C0(&type metadata accessor for FBKSForm.Question, &qword_10025AC48, &qword_1001CE928);
        }
      }

      else
      {
        sub_1000F1634(v184, isUniquelyReferenced_nonNull_native);
        v186 = sub_100005298(v283);
        if ((v185 & 1) != (v187 & 1))
        {
          goto LABEL_125;
        }

        v181 = v186;
      }

      v188 = *v150;
      *v150 = v312;

      v189 = *v150;
      if ((v185 & 1) == 0)
      {
        v190 = v267;
        (*(v300 + 16))(v267, v283, v302);
        sub_1000F20AC(v181, v190, _swiftEmptyArrayStorage, v189, &type metadata accessor for FBKSForm.Question);
      }

      v150 = *(v189 + 7);
      v179 = v150[v181];
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v150[v181] = v179;
      if (v191)
      {
        goto LABEL_71;
      }
    }

    v179 = sub_10017DD84(0, *(v179 + 2) + 1, 1, v179);
    v150[v181] = v179;
LABEL_71:
    v193 = *(v179 + 2);
    v192 = *(v179 + 3);
    if (v193 >= v192 >> 1)
    {
      v150[v181] = sub_10017DD84((v192 > 1), v193 + 1, 1, v179);
    }

    (*(v300 + 8))(v283, v302);
    v194 = v150[v181];
    *(v194 + 2) = v193 + 1;
    v195 = &v194[16 * v193];
    *(v195 + 4) = v156;
    *(v195 + 5) = v155;
    (v303)(v311, 0);
    v131 = sub_1000F4AD8;
    v65 = v307;
    goto LABEL_74;
  }

  v131 = 0;
  v158 = v296;
  v157 = v308;
  v159 = v65[29];
  if (v159)
  {
LABEL_85:
    v212 = v131;
    v303 = v65[28];
    v213 = v311;
    v214 = dispatch thunk of FBKSInteraction.prefillQuestions.modify();
    v216 = v214;
    if (!*v215)
    {
      sub_10000F500(v313, &qword_100261F00, &qword_1001D8578);

      v216(v311, 0);
      v160 = v157;
      v161 = 0;
      v228 = v303;
LABEL_99:
      if (qword_10025A708 != -1)
      {
        swift_once();
      }

      v237 = type metadata accessor for Logger();
      sub_10000F34C(v237, qword_100276F80);

      v238 = Logger.logObject.getter();
      v239 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v238, v239))
      {
        v240 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v311[0] = v241;
        *v240 = 136315138;
        v242 = sub_10002510C(v228, v159, v311);

        *(v240 + 4) = v242;
        _os_log_impl(&_mh_execute_header, v238, v239, "Feedback Initiated - model language: %s", v240, 0xCu);
        sub_10000F4B4(v241);
        v160 = v308;
      }

      else
      {
      }

      goto LABEL_105;
    }

    v131 = v215;
    *&v298 = v214;
    v217 = v282;
    *v282 = 0x6C5F6C65646F6D3ALL;
    *(v217 + 8) = 0xEF65676175676E61;
    (*(v300 + 104))(v217, enum case for FBKSForm.Question.custom(_:), v302);

    v218 = *v131;
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v312 = *v131;
    v219 = v312;
    *v131 = 0x8000000000000000;
    v221 = sub_100005298(v217);
    v222 = *(v219 + 2);
    v223 = (v220 & 1) == 0;
    v224 = v222 + v223;
    if (__OFADD__(v222, v223))
    {
      __break(1u);
LABEL_119:
      v213 = sub_10017DD84(0, *(v213 + 2) + 1, 1, v213);
      v157[v221] = v213;
LABEL_96:
      v234 = *(v213 + 2);
      v233 = *(v213 + 3);
      v228 = v303;
      if (v234 >= v233 >> 1)
      {
        v157[v221] = sub_10017DD84((v233 > 1), v234 + 1, 1, v213);
      }

      (*(v300 + 8))(v282, v302);
      v235 = v157[v221];
      *(v235 + 16) = v234 + 1;
      v236 = v235 + 16 * v234;
      *(v236 + 32) = v228;
      *(v236 + 40) = v159;
      (v298)(v311, 0);
      v161 = sub_1000F4AD8;
      v65 = v307;
      v160 = v308;
      goto LABEL_99;
    }

    v225 = v220;
    if (*(v219 + 3) >= v224)
    {
      if ((v158 & 1) == 0)
      {
        sub_1000F30C0(&type metadata accessor for FBKSForm.Question, &qword_10025AC48, &qword_1001CE928);
      }

LABEL_93:
      v158 = v296;
      sub_10000F500(v313, &qword_100261F00, &qword_1001D8578);

      v229 = *v131;
      *v131 = v312;

      v230 = *v131;
      if ((v225 & 1) == 0)
      {
        v231 = v267;
        (*(v300 + 16))(v267, v217, v302);
        sub_1000F20AC(v221, v231, _swiftEmptyArrayStorage, v230, &type metadata accessor for FBKSForm.Question);
      }

      v157 = v230[7];
      v213 = v157[v221];
      v232 = swift_isUniquelyReferenced_nonNull_native();
      v157[v221] = v213;
      v131 = v212;
      if (v232)
      {
        goto LABEL_96;
      }

      goto LABEL_119;
    }

    sub_1000F1634(v224, v158);
    v226 = sub_100005298(v217);
    if ((v225 & 1) == (v227 & 1))
    {
      v221 = v226;
      goto LABEL_93;
    }

LABEL_125:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_53:
  sub_10000F500(v313, &qword_100261F00, &qword_1001D8578);

  v160 = v157;
  v161 = 0;
LABEL_105:
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v243 = type metadata accessor for Logger();
  sub_10000F34C(v243, qword_100276F80);
  sub_1000F3AC4(v65, v158, type metadata accessor for FeedbackView);
  v244 = Logger.logObject.getter();
  v245 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v311[0] = v247;
    *v246 = 136380675;
    if (*(v158 + 96))
    {
      v248 = *(v158 + 88);
      v249 = *(v158 + 96);
    }

    else
    {
      v248 = 0;
      v249 = 0xE000000000000000;
    }

    sub_1000F3B94(v158, type metadata accessor for FeedbackView);
    v250 = sub_10002510C(v248, v249, v311);

    *(v246 + 4) = v250;
    _os_log_impl(&_mh_execute_header, v244, v245, "Feedback Initiated - modelInfoString: %{private}s", v246, 0xCu);
    sub_10000F4B4(v247);
  }

  else
  {

    sub_1000F3B94(v158, type metadata accessor for FeedbackView);
  }

  sub_10000F500(v310, &qword_100261EF0, &qword_1001D8568);
  sub_10000F500(v309, &qword_100261EF0, &qword_1001D8568);
  sub_10000F500(v304, &qword_100261EF8, &qword_1001D8570);
  sub_10000F500(v297, &qword_100261EF8, &qword_1001D8570);
  (v160[1])(v305, v306);
  v251 = v293;
  *v293 = v301;
  v252 = enum case for FBKSEvaluation.Subject.interaction(_:);
  v253 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v253 - 8) + 104))(v251, v252, v253);
  sub_1000F3AB4(v131);
  return sub_1000F3AB4(v161);
}

uint64_t sub_1000E7628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for FeedbackView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v40 = sub_10000341C(&qword_100261F90, &unk_1001DE270);
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v40);
  v10 = &v39 - v9;
  v43 = sub_10000341C(&qword_100262040, &qword_1001D86A8);
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v43);
  v13 = &v39 - v12;
  v14 = sub_10000341C(&qword_100261F88, &unk_1001D85F0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  sub_1000F3AC4(v3, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1000F3B2C(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FeedbackView);
  v45 = a1;
  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v21 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v22 = type metadata accessor for IconOnlyLabelStyle();
  v23 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v24 = sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270);
  v25 = v40;
  View.help(_:)();

  (*(v42 + 8))(v10, v25);
  LOBYTE(v25) = static Edge.Set.bottom.getter();
  v26 = v39;
  *(v39 + 154);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v41 + 32))(v18, v13, v43);
  v35 = &v18[*(v15 + 44)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = static Color.blue.getter();
  v37 = *(v26 + 200);
  sub_1000E4100(v36, &qword_100261F88, &unk_1001D85F0, &qword_100261F70, &qword_1001D85E8, v44);

  return sub_10000F500(v18, &qword_100261F88, &unk_1001D85F0);
}

uint64_t sub_1000E7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for FeedbackView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v40 = sub_10000341C(&qword_100262070, &qword_1001D86E0);
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v40);
  v10 = &v39 - v9;
  v43 = sub_10000341C(&qword_100262078, &qword_1001D86E8);
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v43);
  v13 = &v39 - v12;
  v14 = sub_10000341C(&qword_100262080, &qword_1001D86F0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  sub_1000F3AC4(v3, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1000F3B2C(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FeedbackView);
  v45 = a1;
  sub_10000341C(&qword_100262088, &qword_1001D86F8);
  v21 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v22 = type metadata accessor for TitleAndIconLabelStyle();
  v23 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v24 = sub_1000F48D8(&qword_100262090, &type metadata accessor for TitleAndIconLabelStyle);
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100007120(&qword_100262098, &qword_100262070, &qword_1001D86E0);
  v25 = v40;
  View.help(_:)();

  (*(v42 + 8))(v10, v25);
  LOBYTE(v25) = static Edge.Set.bottom.getter();
  v26 = v39;
  *(v39 + 154);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v41 + 32))(v18, v13, v43);
  v35 = &v18[*(v15 + 44)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = static Color.blue.getter();
  v37 = *(v26 + 200);
  sub_1000E4100(v36, &qword_100262080, &qword_1001D86F0, &qword_100262058, &qword_1001D86D0, v44);

  return sub_10000F500(v18, &qword_100262080, &qword_1001D86F0);
}

uint64_t sub_1000E8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_1000E8114, v9, v8);
}

uint64_t sub_1000E8114()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Report a Concern button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.reportConcern(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E8294;
  v9 = v0[5];
  v10 = v0[2];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000E8294()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return _swift_task_switch(sub_1000E8418, v7, v6);
}

uint64_t sub_1000E8418()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000E8480@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v24 = a6;
  v25 = a1;
  v6 = type metadata accessor for FBKSEvaluation.Action();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v12 = *(v11 - 8);
  v18 = v11;
  v19 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for FBKEvaluationController();
  (*(v7 + 104))(v10, enum case for FBKSEvaluation.Action.reportConcern(_:), v6);
  static FBKEvaluationController.systemImageName(for:hasResponse:)();
  (*(v7 + 8))(v10, v6);
  Label<>.init(_:systemImage:)();
  v20(0);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_1000F48D8(v21, v22);
  v16 = v18;
  View.labelStyle<A>(_:)();
  return (*(v19 + 8))(v15, v16);
}

uint64_t sub_1000E8700@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v100) = a2;
  v113 = a3;
  v114 = a1;
  v4 = type metadata accessor for FeedbackView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v115 = sub_10000341C(&qword_100261FE0, &qword_1001D8630);
  v7 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v9 = &v90 - v8;
  v10 = sub_10000341C(&qword_100261FE8, &qword_1001D8638);
  v11 = *(v10 - 8);
  v116 = v10;
  v117 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v90 - v13;
  v15 = sub_10000341C(&qword_100261FF0, &unk_1001D8640);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v111 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v112 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v110 = &v90 - v22;
  __chkstk_darwin(v21);
  v24 = &v90 - v23;
  sub_1000F3AC4(a1, &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedbackView);
  v25 = *(v5 + 80);
  v26 = (v25 + 16) & ~v25;
  v105 = v6;
  v103 = v25;
  v27 = swift_allocObject();
  v104 = v26;
  v106 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F3B2C(v106, v27 + v26, type metadata accessor for FeedbackView);
  v28 = sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v29 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v30 = type metadata accessor for IconOnlyLabelStyle();
  v31 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v32 = sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  *&v199 = v29;
  *(&v199 + 1) = v30;
  *&v200 = v31;
  *(&v200 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v28;
  Button.init(action:label:)();
  v101 = "ints, list, or table.";
  LocalizedStringKey.init(stringLiteral:)();
  v34 = sub_1000F3F70();
  View.help(_:)();

  v108 = v9;
  sub_10000F500(v9, &qword_100261FE0, &qword_1001D8630);
  v35 = static Color.red.getter();
  v36 = *(v114 + 200);
  v109 = v24;
  sub_1000E42E8(v35, v24);

  v37 = *(v117 + 8);
  v107 = v14;
  v117 += 8;
  v37(v14, v116);
  if (v100)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v96 = v189;
    v97 = v187;
    v94 = v192;
    v95 = v191;
    v120 = 1;
    v119 = v188;
    v118 = v190;
    LocalizedStringKey.init(stringLiteral:)();
    v38 = Text.init(_:tableName:bundle:comment:)();
    v40 = v39;
    v42 = v41;
    v98 = v37;
    static Font.footnote.getter();
    v100 = OpaqueTypeConformance2;
    v43 = Text.font(_:)();
    v99 = v34;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_10002A984(v38, v40, v42 & 1);

    LODWORD(v199) = static HierarchicalShapeStyle.secondary.getter();
    v49 = Text.foregroundStyle<A>(_:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_10002A984(v44, v46, v48 & 1);

    v56 = static Color.red.getter();
    sub_1000E44F4(v56, v49, v51, v53 & 1, v55, &v199);

    sub_10002A984(v49, v51, v53 & 1);

    v125 = v203;
    v126 = v204;
    v127 = v205;
    v121 = v199;
    v122 = v200;
    v123 = v201;
    v124 = v202;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v143 = v125;
    v144 = v126;
    v145 = v127;
    v139 = v121;
    v140 = v122;
    v141 = v123;
    v142 = v124;
    v92 = v195;
    v93 = v193;
    LOBYTE(v55) = v196;
    v91 = v197;
    v57 = v198;
    v130 = 1;
    v129 = v194;
    v128 = v196;
    LOBYTE(v49) = v120;
    v58 = v119;
    v59 = v118;
    v60 = v194;
    v131[4] = v125;
    v131[5] = v126;
    v131[6] = v127;
    v132 = v121;
    v131[0] = v121;
    v131[1] = v122;
    v131[2] = v123;
    v131[3] = v124;
    v136 = v125;
    v137 = v126;
    v138 = v127;
    v133 = v122;
    v134 = v123;
    v135 = v124;
    sub_1000081F8(&v121, &v199, &qword_100262038, &unk_1001D8670);
    sub_1000081F8(v131, &v199, &qword_100262038, &unk_1001D8670);
    sub_10000F500(&v139, &qword_100262038, &unk_1001D8670);
    *&v171 = 0;
    BYTE8(v171) = v49;
    *&v172 = v97;
    BYTE8(v172) = v58;
    *&v173 = v96;
    BYTE8(v173) = v59;
    *&v174 = v95;
    *(&v174 + 1) = v94;
    v179 = v136;
    v180 = v137;
    v181 = v138;
    v175 = v132;
    v176 = v133;
    v178 = v135;
    v177 = v134;
    *&v182 = 0;
    BYTE8(v182) = 1;
    *&v183 = v93;
    BYTE8(v183) = v60;
    *&v184 = v92;
    BYTE8(v184) = v55;
    *&v185 = v91;
    *(&v185 + 1) = v57;
    sub_1000F413C(&v171);
    v211 = v183;
    v212 = v184;
    v213 = v185;
    v214 = v186;
    v207 = v179;
    v208 = v180;
    v209 = v181;
    v210 = v182;
    v203 = v175;
    v204 = v176;
    v205 = v177;
    v206 = v178;
    v199 = v171;
    v200 = v172;
    v201 = v173;
    v202 = v174;
    sub_10000341C(&qword_100262008, &qword_1001D8650);
    sub_10000341C(&qword_100262010, &qword_1001D8658);
    sub_100007120(&qword_100262018, &qword_100262008, &qword_1001D8650);
    sub_1000F4088();
    v37 = v98;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(&v121, &qword_100262038, &unk_1001D8670);
    v211 = v167;
    v212 = v168;
    v213 = v169;
    v214 = v170;
    v207 = v163;
    v208 = v164;
    v209 = v165;
    v210 = v166;
    v203 = v159;
    v204 = v160;
    v205 = v161;
    v206 = v162;
    v199 = v155;
    v200 = v156;
    v201 = v157;
    v202 = v158;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v121) = 1;
    LOBYTE(v193) = BYTE8(v132);
    LOBYTE(v187) = BYTE8(v133);
    LOBYTE(v131[0]) = 1;
    *&v199 = 0;
    BYTE8(v199) = 1;
    *&v200 = v132;
    BYTE8(v200) = BYTE8(v132);
    *&v201 = v133;
    BYTE8(v201) = BYTE8(v133);
    v202 = v134;
    LOBYTE(v203) = 1;
    sub_10000341C(&qword_10025B9C0, &qword_1001D6190);
    sub_10002AF84();
    _ConditionalContent<>.init(storage:)();
    v173 = v141;
    v174 = v142;
    LOBYTE(v175) = v143;
    v172 = v140;
    v171 = v139;
    sub_1000F407C(&v171);
    v167 = v183;
    v168 = v184;
    v169 = v185;
    v170 = v186;
    v164 = v180;
    v165 = v181;
    v166 = v182;
    v159 = v175;
    v160 = v176;
    v161 = v177;
    v162 = v178;
    v163 = v179;
    v155 = v171;
    v156 = v172;
    v157 = v173;
    v158 = v174;
    sub_10000341C(&qword_100262008, &qword_1001D8650);
    sub_10000341C(&qword_100262010, &qword_1001D8658);
    sub_100007120(&qword_100262018, &qword_100262008, &qword_1001D8650);
    sub_1000F4088();
    _ConditionalContent<>.init(storage:)();
  }

  v61 = v106;
  sub_1000F3AC4(v114, v106, type metadata accessor for FeedbackView);
  v62 = v104;
  v63 = swift_allocObject();
  sub_1000F3B2C(v61, v63 + v62, type metadata accessor for FeedbackView);
  v64 = v108;
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  v65 = v107;
  View.help(_:)();

  sub_10000F500(v64, &qword_100261FE0, &qword_1001D8630);
  v66 = static Color.red.getter();
  v67 = v110;
  sub_1000E42E8(v66, v110);

  v37(v65, v116);
  v68 = v109;
  v69 = v112;
  sub_1000081F8(v109, v112, &qword_100261FF0, &unk_1001D8640);
  v151 = v211;
  v152 = v212;
  v153 = v213;
  v154 = v214;
  v147 = v207;
  v148 = v208;
  v149 = v209;
  v150 = v210;
  v143 = v203;
  v144 = v204;
  v145 = v205;
  v146 = v206;
  v139 = v199;
  v140 = v200;
  v141 = v201;
  v142 = v202;
  v70 = v111;
  sub_1000081F8(v67, v111, &qword_100261FF0, &unk_1001D8640);
  v71 = v113;
  sub_1000081F8(v69, v113, &qword_100261FF0, &unk_1001D8640);
  v72 = sub_10000341C(&qword_100262028, &qword_1001D8660);
  v73 = *(v72 + 48);
  v74 = v152;
  v167 = v151;
  v168 = v152;
  v75 = v153;
  v169 = v153;
  v76 = v147;
  v77 = v148;
  v163 = v147;
  v164 = v148;
  v78 = v149;
  v79 = v150;
  v165 = v149;
  v166 = v150;
  v80 = v143;
  v81 = v144;
  v159 = v143;
  v160 = v144;
  v82 = v145;
  v83 = v146;
  v161 = v145;
  v162 = v146;
  v84 = v139;
  v85 = v140;
  v155 = v139;
  v156 = v140;
  v86 = v141;
  v87 = v142;
  v157 = v141;
  v158 = v142;
  v88 = v71 + v73;
  *(v88 + 192) = v151;
  *(v88 + 208) = v74;
  *(v88 + 224) = v75;
  *(v88 + 128) = v76;
  *(v88 + 144) = v77;
  *(v88 + 160) = v78;
  *(v88 + 176) = v79;
  *(v88 + 64) = v80;
  *(v88 + 80) = v81;
  *(v88 + 96) = v82;
  *(v88 + 112) = v83;
  *v88 = v84;
  *(v88 + 16) = v85;
  v170 = v154;
  *(v88 + 240) = v154;
  *(v88 + 32) = v86;
  *(v88 + 48) = v87;
  sub_1000081F8(v70, v71 + *(v72 + 64), &qword_100261FF0, &unk_1001D8640);
  sub_1000081F8(&v155, &v171, &qword_100262030, &qword_1001D8668);
  sub_10000F500(v67, &qword_100261FF0, &unk_1001D8640);
  sub_10000F500(v68, &qword_100261FF0, &unk_1001D8640);
  sub_10000F500(v70, &qword_100261FF0, &unk_1001D8640);
  v183 = v151;
  v184 = v152;
  v185 = v153;
  v186 = v154;
  v179 = v147;
  v180 = v148;
  v181 = v149;
  v182 = v150;
  v175 = v143;
  v176 = v144;
  v177 = v145;
  v178 = v146;
  v171 = v139;
  v172 = v140;
  v173 = v141;
  v174 = v142;
  sub_10000F500(&v171, &qword_100262030, &qword_1001D8668);
  return sub_10000F500(v69, &qword_100261FF0, &unk_1001D8640);
}

uint64_t sub_1000E960C(void *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FeedbackView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v24[-v12];
  sub_1000081F8((a1 + 20), &v25, &unk_10025D568, &unk_1001D23B0);
  if (v26)
  {
    sub_100008198(&v25, v27);
    if (a1[2])
    {
      v14 = a1[4];
      if (v14)
      {
        v15 = a1[1];
        v16 = a1[3];
        sub_10000341C(&unk_10025F490, &unk_1001CFA50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001CF9E0;
        *(inited + 32) = String._bridgeToObjectiveC()();
        *(inited + 40) = String._bridgeToObjectiveC()();
        *(inited + 48) = String._bridgeToObjectiveC()();
        *(inited + 56) = String._bridgeToObjectiveC()();
        v14 = sub_100005794(inited);
        swift_setDeallocating();
        sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
        swift_arrayDestroy();
      }
    }

    else
    {
      v14 = 0;
    }

    v23 = *sub_100027874(v27, v27[3]);
    sub_100151D20(*a2, v14);

    return sub_10000F4B4(v27);
  }

  else
  {
    sub_10000F500(&v25, &unk_10025D568, &unk_1001D23B0);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    sub_1000F3AC4(a1, &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FeedbackView);
    type metadata accessor for MainActor();
    v19 = static MainActor.shared.getter();
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = &protocol witness table for MainActor;
    sub_1000F3B2C(&v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for FeedbackView);
    sub_10015C9C8(0, 0, v13, a4, v21);
  }
}

uint64_t sub_1000E994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_1000E9A40, v9, v8);
}

uint64_t sub_1000E9A40()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Thumbs Up button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.thumbsUp(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E9BC0;
  v9 = v0[5];
  v10 = v0[2];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000E9BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return _swift_task_switch(sub_1000F4AD0, v7, v6);
}

uint64_t sub_1000E9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for FBKSEvaluation.Action();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_1000E9E5C, v9, v8);
}

uint64_t sub_1000E9E5C()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Thumbs Down button pressed - launching remote eval", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FBKSEvaluation.Action.thumbsDown(_:), v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000E9BC0;
  v9 = v0[5];
  v10 = v0[2];

  return sub_1000E4A1C(v9);
}

uint64_t sub_1000EA004@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for IconOnlyLabelStyle();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKSEvaluation.Action();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v21 = *(v19 - 8);
  v12 = *(v21 + 64);
  __chkstk_darwin(v19);
  v14 = &v19 - v13;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for FBKEvaluationController();
  (*(v8 + 104))(v11, *a1, v7);
  static FBKEvaluationController.systemImageName(for:hasResponse:)();
  (*(v8 + 8))(v11, v7);
  Label<>.init(_:systemImage:)();
  v15 = v20;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_1000F48D8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v16 = v19;
  v17 = v22;
  View.labelStyle<A>(_:)();
  (*(v23 + 8))(v15, v17);
  return (*(v21 + 8))(v14, v16);
}

uint64_t sub_1000EA330@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v23 = a1;
  v6 = sub_10000341C(&qword_100261FC0, &qword_1001D8610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22[-v8];
  v10 = sub_10000341C(&qword_100261FC8, &qword_1001D8618);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v22[-v15];
  sub_1000E8700(a2, v4, v9);
  v17 = static Color.blue.getter();
  v18 = *(a2 + 200);
  sub_1000E4100(v17, &qword_100261FC0, &qword_1001D8610, &qword_100261FC8, &qword_1001D8618, v16);

  sub_10000F500(v9, &qword_100261FC0, &qword_1001D8610);
  sub_1000081F8(v16, v14, &qword_100261FC8, &qword_1001D8618);
  *a3 = 0;
  *(a3 + 8) = 0;
  LOBYTE(v4) = (v23 & 1) == 0;
  *(a3 + 9) = v4;
  v19 = sub_10000341C(&qword_100261FD0, &qword_1001D8620);
  sub_1000081F8(v14, a3 + *(v19 + 48), &qword_100261FC8, &qword_1001D8618);
  v20 = a3 + *(v19 + 64);
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 9) = v4;
  sub_10000F500(v16, &qword_100261FC8, &qword_1001D8618);
  return sub_10000F500(v14, &qword_100261FC8, &qword_1001D8618);
}

void sub_1000EA534()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSEvaluation.Subject();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FeedbackView();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v33 - v12;
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000F34C(v14, qword_100276F80);
  sub_1000F3AC4(v0, v13, type metadata accessor for FeedbackView);
  sub_1000F3AC4(v0, v11, type metadata accessor for FeedbackView);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v33[1] = v15;
    v34 = v3;
    v35 = v2;
    v18 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v18 = 136643075;
    if (*(v13 + 6))
    {
      v19 = *(v13 + 5);
      v20 = *(v13 + 6);
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    sub_1000F3B94(v13, type metadata accessor for FeedbackView);
    v21 = sub_10002510C(v19, v20, v38);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2085;
    if (*(v11 + 10))
    {
      v22 = *(v11 + 9);
      v23 = *(v11 + 10);
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    sub_1000F3B94(v11, type metadata accessor for FeedbackView);
    v24 = sub_10002510C(v22, v23, v38);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Feedback View with input string: <%{sensitive}s>, output string: <%{sensitive}s>", v18, 0x16u);
    swift_arrayDestroy();

    v3 = v34;
    v2 = v35;
  }

  else
  {

    sub_1000F3B94(v11, type metadata accessor for FeedbackView);
    sub_1000F3B94(v13, type metadata accessor for FeedbackView);
  }

  sub_1000081F8(v1 + 160, &v36, &unk_10025D568, &unk_1001D23B0);
  if (v37)
  {
    sub_100008198(&v36, v38);
    v25 = sub_100027874(v38, v38[3]);
    v26 = String._bridgeToObjectiveC()();
    v27 = *v25;
    sub_100151D20(v26, 0);

    sub_10000F4B4(v38);
    return;
  }

  sub_10000F500(&v36, &unk_10025D568, &unk_1001D23B0);
  sub_1000E4F4C(v6);
  v28 = (*(v3 + 88))(v6, v2);
  if (v28 != enum case for FBKSEvaluation.Subject.id(_:))
  {
    if (v28 == enum case for FBKSEvaluation.Subject.interaction(_:))
    {
      (*(v3 + 96))(v6, v2);
      v29 = *v6;
      dispatch thunk of FBKSInteraction.presented(_:)();

      return;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to mark the interaction - unknown interaction case", v32, 2u);
    }
  }

  (*(v3 + 8))(v6, v2);
}

void sub_1000EAA38(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000F34C(v1, qword_100276F80);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to mark the interaction as presented: %@", v3, 0xCu);
      sub_10000F500(v4, &unk_10025D580, &qword_1001CFA60);
    }

    else
    {
    }
  }
}

uint64_t sub_1000EABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for FeedbackView();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v3 - 8);
  v35 = v5;
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000341C(&unk_1002637B0, &qword_1001D8498);
  v7 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v9 = &v32 - v8;
  v10 = sub_10000341C(&qword_100261DE0, &qword_1001D84A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v34 = sub_10000341C(&qword_100261DE8, &qword_1001D84A8);
  v15 = *(*(v34 - 8) + 64);
  v16 = __chkstk_darwin(v34);
  v18 = &v32 - v17;
  if (*(v1 + 155) != 1 || (!*(v1 + 156) ? (v19 = 0.0) : (v19 = 1.0), v16 = sub_1000EB188(), (v16 & 1) == 0))
  {
    v19 = 1.0;
  }

  __chkstk_darwin(v16);
  *(&v32 - 2) = v1;
  sub_10000341C(&qword_100261DF0, &qword_1001D84B0);
  sub_1000EF3AC();
  Section<>.init(content:)();
  v20 = enum case for DynamicTypeSize.accessibility2(_:);
  v21 = type metadata accessor for DynamicTypeSize();
  (*(*(v21 - 8) + 104))(v9, v20, v21);
  sub_1000F48D8(&qword_100261E90, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000EF7A4();
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498);
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v9, &unk_1002637B0, &qword_1001D8498);
    (*(v11 + 8))(v14, v10);
    sub_1000F3AC4(v2, v6, type metadata accessor for FeedbackView);
    v23 = *(v33 + 80);
    v24 = swift_allocObject();
    sub_1000F3B2C(v6, v24 + ((v23 + 16) & ~v23), type metadata accessor for FeedbackView);
    v25 = &v18[*(sub_10000341C(&qword_100261EA0, &qword_1001D8508) + 36)];
    *v25 = sub_1000EF838;
    v25[1] = v24;
    v25[2] = 0;
    v25[3] = 0;
    v26 = *(v2 + 153);
    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v29 = &v18[*(sub_10000341C(&qword_100261EA8, &qword_1001D8540) + 36)];
    *v29 = KeyPath;
    v29[1] = sub_10002AAC0;
    v29[2] = v28;
    v30 = *(v2 + 216);
    v38 = *(v2 + 208);
    v39 = v30;
    sub_10000341C(&qword_100261EB0, &unk_1001D8548);
    State.wrappedValue.getter();
    *&v18[*(v34 + 36)] = v37;
    v38 = v19;
    sub_1000F3AC4(v2, v6, type metadata accessor for FeedbackView);
    v31 = swift_allocObject();
    *(v31 + 16) = v19;
    sub_1000F3B2C(v6, v31 + ((v23 + 24) & ~v23), type metadata accessor for FeedbackView);
    sub_1000F37E0();
    View.onChange<A>(of:initial:_:)();

    return sub_10000F500(v18, &qword_100261DE8, &qword_1001D84A8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EB188()
{
  v0 = type metadata accessor for AccessibilityTechnologies();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v4 = __chkstk_darwin(v0);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v20 - v11;
  __chkstk_darwin(v10);
  v14 = v20 - v13;
  sub_1000EF198(v20 - v13);
  sub_10000341C(&qword_100261ED0, &qword_1001D8558);
  v15 = *(v1 + 72);
  v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D0580;
  static AccessibilityTechnologies.voiceOver.getter();
  static AccessibilityTechnologies.voiceControl.getter();
  static AccessibilityTechnologies.switchControl.getter();
  static AccessibilityTechnologies.fullKeyboardAccess.getter();
  v20[1] = v17;
  sub_1000F48D8(&qword_100261ED8, &type metadata accessor for AccessibilityTechnologies);
  sub_10000341C(&qword_100261EE0, &qword_1001D8560);
  sub_100007120(&qword_100261EE8, &qword_100261EE0, &qword_1001D8560);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 16))(v6, v14, v0);
  dispatch thunk of SetAlgebra.intersection(_:)();
  LOBYTE(v17) = dispatch thunk of SetAlgebra.isEmpty.getter();
  v18 = *(v2 + 8);
  v18(v9, v0);
  v18(v12, v0);
  v18(v14, v0);
  return v17 & 1;
}

uint64_t sub_1000EB45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v74 = sub_10000341C(&qword_100261E88, &unk_1001D84F8);
  v3 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v5 = &v60 - v4;
  v62 = sub_10000341C(&qword_100261E78, &qword_1001D84F0);
  v6 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v60 = (&v60 - v7);
  v61 = sub_10000341C(&qword_100261F20, &qword_1001D8598);
  v8 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v10 = &v60 - v9;
  v68 = sub_10000341C(&qword_100261E68, &qword_1001D84E8);
  v11 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v63 = &v60 - v12;
  v65 = sub_10000341C(&qword_100261E48, &qword_1001D84D8);
  v13 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v15 = &v60 - v14;
  v70 = sub_10000341C(&qword_100261F28, &qword_1001D85A0);
  v16 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v72 = &v60 - v17;
  v66 = sub_10000341C(&qword_100261F30, &qword_1001D85A8);
  v18 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v64 = &v60 - v19;
  v20 = sub_10000341C(&qword_100261F38, &qword_1001D85B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v67 = sub_10000341C(&qword_100261E18, &qword_1001D84C0);
  v24 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v26 = &v60 - v25;
  v71 = sub_10000341C(&qword_100261E08, &qword_1001D84B8);
  v27 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v69 = &v60 - v28;
  v29 = sub_10000341C(&qword_100261E28, &qword_1001D84C8);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v60 - v31;
  v33 = a1;
  v34 = *(a1 + 154);
  if (v34 <= 1)
  {
    if (*(a1 + 154))
    {
      *v15 = static VerticalAlignment.center.getter();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v55 = sub_10000341C(&qword_100261F50, &qword_1001D85C8);
      sub_1000EC550(a1, &v15[*(v55 + 44)]);
      [objc_opt_self() feedbackViewHeight];
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v56 = &v15[*(v65 + 36)];
      v57 = v76;
      *v56 = v75;
      *(v56 + 1) = v57;
      *(v56 + 2) = v77;
      v45 = &qword_100261E48;
      v39 = &qword_1001D84D8;
      sub_1000081F8(v15, v23, &qword_100261E48, &qword_1001D84D8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF57C();
      sub_1000EF634();
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v26, v64, &qword_100261E18, &qword_1001D84C0);
      swift_storeEnumTagMultiPayload();
      sub_1000EF4F0();
      sub_1000EF6EC();
      v58 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v26, &qword_100261E18, &qword_1001D84C0);
      sub_1000081F8(v58, v72, &qword_100261E08, &qword_1001D84B8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF464();
      sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v58, &qword_100261E08, &qword_1001D84B8);
      v42 = v15;
    }

    else
    {
      *v32 = static HorizontalAlignment.center.getter();
      *(v32 + 1) = 0;
      v32[16] = 1;
      v43 = sub_10000341C(&qword_100261F58, &qword_1001D85D0);
      sub_1000EC0E8(a1, &v32[*(v43 + 44)]);
      v44 = &v32[*(v29 + 36)];
      *v44 = sub_1000EC468;
      v44[1] = 0;
      v44[2] = 0;
      v44[3] = 0;
      v45 = &qword_100261E28;
      v39 = &qword_1001D84C8;
      sub_1000081F8(v32, v23, &qword_100261E28, &qword_1001D84C8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF57C();
      sub_1000EF634();
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v26, v64, &qword_100261E18, &qword_1001D84C0);
      swift_storeEnumTagMultiPayload();
      sub_1000EF4F0();
      sub_1000EF6EC();
      v46 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v26, &qword_100261E18, &qword_1001D84C0);
      sub_1000081F8(v46, v72, &qword_100261E08, &qword_1001D84B8);
      swift_storeEnumTagMultiPayload();
      sub_1000EF464();
      sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v46, &qword_100261E08, &qword_1001D84B8);
      v42 = v32;
    }

    v52 = v45;
    goto LABEL_12;
  }

  if (v34 == 2)
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v47 = sub_10000341C(&qword_100261F50, &qword_1001D85C8);
    sub_1000EC550(a1, &v15[*(v47 + 44)]);
    [objc_opt_self() feedbackViewHeight];
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v48 = &v15[*(v65 + 36)];
    v49 = v76;
    *v48 = v75;
    *(v48 + 1) = v49;
    *(v48 + 2) = v77;
    v38 = &qword_100261E48;
    v39 = &qword_1001D84D8;
    sub_1000081F8(v15, v10, &qword_100261E48, &qword_1001D84D8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0);
    v50 = v63;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v50, v64, &qword_100261E68, &qword_1001D84E8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF4F0();
    sub_1000EF6EC();
    v51 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v50, &qword_100261E68, &qword_1001D84E8);
    sub_1000081F8(v51, v72, &qword_100261E08, &qword_1001D84B8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v51, &qword_100261E08, &qword_1001D84B8);
    v42 = v15;
    goto LABEL_8;
  }

  if (v34 == 3)
  {
    v35 = static VerticalAlignment.center.getter();
    v36 = v60;
    *v60 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = sub_10000341C(&qword_100261F48, &qword_1001D85C0);
    sub_1000ECA08(v33, v36 + *(v37 + 44));
    v38 = &qword_100261E78;
    v39 = &qword_1001D84F0;
    sub_1000081F8(v36, v10, &qword_100261E78, &qword_1001D84F0);
    swift_storeEnumTagMultiPayload();
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0);
    v40 = v63;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v40, v64, &qword_100261E68, &qword_1001D84E8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF4F0();
    sub_1000EF6EC();
    v41 = v69;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v40, &qword_100261E68, &qword_1001D84E8);
    sub_1000081F8(v41, v72, &qword_100261E08, &qword_1001D84B8);
    swift_storeEnumTagMultiPayload();
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v41, &qword_100261E08, &qword_1001D84B8);
    v42 = v36;
LABEL_8:
    v52 = v38;
LABEL_12:
    v54 = v39;
    return sub_10000F500(v42, v52, v54);
  }

  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v53 = sub_10000341C(&qword_100261F40, &qword_1001D85B8);
  sub_1000ECE80(a1, &v5[*(v53 + 44)]);
  sub_1000081F8(v5, v72, &qword_100261E88, &unk_1001D84F8);
  swift_storeEnumTagMultiPayload();
  sub_1000EF464();
  sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
  _ConditionalContent<>.init(storage:)();
  v42 = v5;
  v52 = &qword_100261E88;
  v54 = &unk_1001D84F8;
  return sub_10000F500(v42, v52, v54);
}

uint64_t sub_1000EC0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_10000341C(&qword_100261F68, &qword_1001D85E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for IconOnlyLabelStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_100261F70, &qword_1001D85E8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v22 - v17;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v25[3] = &type metadata for WritingTools, v25[4] = sub_10002AC88(), LOBYTE(v25[0]) = 14, v19 = isFeatureEnabled(_:)(), sub_10000F4B4(v25), (v19 & 1) == 0))
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v21 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(0, v23, &v5[*(v21 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8);
    *v9 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    IconOnlyLabelStyle.init()();
    sub_1000E7628(v14, v18);
    (*(v11 + 8))(v14, v10);
    sub_1000081F8(v18, v9, &qword_100261F70, &qword_1001D85E8);
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v18, &qword_100261F70, &qword_1001D85E8);
  }
}

void sub_1000EC468()
{
  if (qword_10025A708 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Report a Concern button - horizontal", v2, 2u);
  }
}

uint64_t sub_1000EC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v29 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  v2 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v4 = &v28 - v3;
  v5 = sub_10000341C(&qword_100262048, &qword_1001D86C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v28 - v7);
  v31 = sub_10000341C(&qword_100262050, &qword_1001D86C8);
  v9 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TitleAndIconLabelStyle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000341C(&qword_100262058, &qword_1001D86D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v28 - v22;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v33[3] = &type metadata for WritingTools, v33[4] = sub_10002AC88(), LOBYTE(v33[0]) = 14, v24 = isFeatureEnabled(_:)(), sub_10000F4B4(v33), (v24 & 1) == 0))
  {
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v27 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(1, v30, &v4[*(v27 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8);
    *v8 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100262068, &qword_100262050, &qword_1001D86C8);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    TitleAndIconLabelStyle.init()();
    sub_1000E7B24(v16, v23);
    (*(v13 + 8))(v16, v12);
    sub_1000081F8(v23, v21, &qword_100262058, &qword_1001D86D0);
    *v11 = 0;
    v11[8] = 1;
    v25 = sub_10000341C(&qword_100262060, &qword_1001D86D8);
    sub_1000081F8(v21, &v11[*(v25 + 48)], &qword_100262058, &qword_1001D86D0);
    sub_10000F500(v21, &qword_100262058, &qword_1001D86D0);
    sub_1000081F8(v11, v8, &qword_100262050, &qword_1001D86C8);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100262068, &qword_100262050, &qword_1001D86C8);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v11, &qword_100262050, &qword_1001D86C8);
    return sub_10000F500(v23, &qword_100262058, &qword_1001D86D0);
  }
}

uint64_t sub_1000ECA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v29 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  v3 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v5 = &v28 - v4;
  v32 = sub_10000341C(&qword_100261F68, &qword_1001D85E0);
  v6 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v8 = (&v28 - v7);
  v9 = type metadata accessor for IconOnlyLabelStyle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000341C(&qword_100261F70, &qword_1001D85E8);
  v14 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v16 = &v28 - v15;
  v17 = sub_10000341C(&qword_1002620A0, &qword_1001D8700);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v28 - v22;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v33[3] = &type metadata for WritingTools, v33[4] = sub_10002AC88(), LOBYTE(v33[0]) = 14, v24 = isFeatureEnabled(_:)(), sub_10000F4B4(v33), (v24 & 1) == 0))
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v25 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(0, v31, &v5[*(v25 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8);
    *v8 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    IconOnlyLabelStyle.init()();
    sub_1000E7628(v13, v16);
    (*(v10 + 8))(v13, v9);
    sub_1000081F8(v16, v8, &qword_100261F70, &qword_1001D85E8);
    swift_storeEnumTagMultiPayload();
    sub_1000F3BF4();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v16, &qword_100261F70, &qword_1001D85E8);
  }

  sub_1000081F8(v23, v21, &qword_1002620A0, &qword_1001D8700);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v26 = sub_10000341C(&qword_1002620A8, &qword_1001D8708);
  sub_1000081F8(v21, a2 + *(v26 + 64), &qword_1002620A0, &qword_1001D8700);
  sub_10000F500(v23, &qword_1002620A0, &qword_1001D8700);
  return sub_10000F500(v21, &qword_1002620A0, &qword_1001D8700);
}

uint64_t sub_1000ECE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_10000341C(&qword_100261F60, &qword_1001D85D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_10000341C(&qword_1002620B0, &unk_1001D8710);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for TitleAndIconLabelStyle();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_100262058, &qword_1001D86D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v22 - v17;
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1 && (v25[3] = &type metadata for WritingTools, v25[4] = sub_10002AC88(), LOBYTE(v25[0]) = 14, v19 = isFeatureEnabled(_:)(), sub_10000F4B4(v25), (v19 & 1) == 0))
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v21 = sub_10000341C(&qword_100261FB0, &qword_1001D8608);
    sub_1000EA330(1, v23, &v5[*(v21 + 44)]);
    sub_100007120(&qword_100261FB8, &qword_100261F60, &qword_1001D85D8);
    *v9 = AnyView.init<A>(_:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F4724();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    TitleAndIconLabelStyle.init()();
    sub_1000E7B24(v14, v18);
    (*(v11 + 8))(v14, v10);
    sub_1000081F8(v18, v9, &qword_100262058, &qword_1001D86D0);
    swift_storeEnumTagMultiPayload();
    sub_1000F4724();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v18, &qword_100262058, &qword_1001D86D0);
  }
}

uint64_t sub_1000ED200()
{
  static Animation.easeInOut(duration:)();
  Animation.delay(_:)();

  withAnimation<A>(_:_:)();
}

void sub_1000ED2BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t *a5@<X8>)
{
  if (a4 > 1u)
  {
    if (a4 != 255 && a3 | a2 | a1 && (a1 != 1 || a3 | a2))
    {
      v7 = 0xD000000000000011;
      v24 = objc_opt_self();
      v25 = [v24 mainBundle];
      v53._object = 0x80000001001E6920;
      v26._countAndFlagsBits = 0x64657463656C6553;
      v26._object = 0xED00007478655420;
      v53._countAndFlagsBits = 0xD0000000000000BELL;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v53);
      countAndFlagsBits = v28._countAndFlagsBits;
      object = v28._object;

      v15 = [v24 mainBundle];
      v54._object = 0x80000001001E6A00;
      v29._countAndFlagsBits = 0x6974736567677553;
      v29._object = 0xEB00000000736E6FLL;
      v54._countAndFlagsBits = 0xD00000000000006CLL;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v15, v30, v54);
      v19 = v31._countAndFlagsBits;
      v20 = v31._object;
      v22 = "that is sent to Writing tools.";
      v21 = 0xEF7478742E796C70;
      v23 = 0x65725F7472616D73;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    if (a2 == 1)
    {
      v32 = objc_opt_self();
      v33 = [v32 mainBundle];
      v55._object = 0xE000000000000000;
      v34._countAndFlagsBits = 0x64657463656C6553;
      v34._object = 0xED00007478655420;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v55);
      countAndFlagsBits = v36._countAndFlagsBits;
      object = v36._object;

      v50._countAndFlagsBits = sub_1000971C0();
      v50._object = v37;
      v38._countAndFlagsBits = 0x7478655420;
      v38._object = 0xE500000000000000;
      String.append(_:)(v38);
      v15 = [v32 mainBundle];
      v56._object = 0x80000001001E6A90;
      v56._countAndFlagsBits = 0xD00000000000006FLL;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v15, v39, v56);
      v19 = v40._countAndFlagsBits;
      v20 = v40._object;

      v7 = 0xD000000000000012;
      v22 = "ns generated by Smart Reply.";
      v41 = 0x74757074756FLL;
LABEL_18:
      v23 = v41 & 0xFFFFFFFFFFFFLL | 0x745F000000000000;
      v21 = 0xEF7478742E747865;
      goto LABEL_19;
    }

LABEL_17:
    v7 = 0xD000000000000011;
    v42 = objc_opt_self();
    v43 = [v42 mainBundle];
    v57._object = 0xE000000000000000;
    v44._countAndFlagsBits = 0x64657463656C6553;
    v44._object = 0xED00007478655420;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v57);
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;

    v15 = [v42 mainBundle];
    v58._object = 0x80000001001E68B0;
    v47._countAndFlagsBits = 0x5420646574696445;
    v47._object = 0xEB00000000747865;
    v58._countAndFlagsBits = 0xD00000000000006DLL;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v15, v48, v58);
    v19 = v49._countAndFlagsBits;
    v20 = v49._object;
    v22 = "s requests to Writing Tools.";
    v41 = 0x646574696465;
    goto LABEL_18;
  }

  v6 = (a1 & 0xFE) == 8 || (a1 & 0xFE) == 6;
  if (!v6 || a3)
  {
    goto LABEL_17;
  }

  v7 = 0xD000000000000011;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v51._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x64657463656C6553;
  v10._object = 0xED00007478655420;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v51);
  countAndFlagsBits = v12._countAndFlagsBits;
  object = v12._object;

  v15 = [v8 mainBundle];
  v52._object = 0x80000001001E6B00;
  v16._countAndFlagsBits = 0x7972616D6D7553;
  v52._countAndFlagsBits = 0xD000000000000085;
  v16._object = 0xE700000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v52);
  v19 = v18._countAndFlagsBits;
  v20 = v18._object;
  v21 = 0xEB00000000747874;
  v22 = "s requests to Writing Tools.";
  v23 = 0x2E7972616D6D7573;
LABEL_19:

  *a5 = countAndFlagsBits;
  a5[1] = object;
  a5[2] = v7;
  a5[3] = v22 | 0x8000000000000000;
  a5[4] = v19;
  a5[5] = v20;
  a5[6] = v23;
  a5[7] = v21;
}

void *sub_1000ED7E0()
{
  v1 = 0xD00000000000009BLL;
  v2 = type metadata accessor for FeedbackView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v153 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_100261EF0, &qword_1001D8568);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v155 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v154 = &v152 - v10;
  __chkstk_darwin(v9);
  v170 = &v152 - v11;
  v165 = type metadata accessor for Attachment(0);
  v167 = *(v165 - 8);
  v12 = *(v167 + 64);
  v13 = __chkstk_darwin(v165);
  v179 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v152 - v15;
  v168 = sub_10000341C(&qword_100261F10, &qword_1001D8590);
  *&v189 = *(v168 - 8);
  v17 = *(v189 + 64);
  __chkstk_darwin(v168);
  v166 = (&v152 - v18);
  v19 = sub_10000341C(&qword_100261F18, &unk_1001DF340);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v186 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = (&v152 - v23);
  v24 = sub_10000341C(&qword_100261EF8, &qword_1001D8570);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v152 - v26;
  v28 = type metadata accessor for FBKSInteraction.Content();
  v29 = *(v28 - 8);
  v30 = *(v29 + 8);
  v31 = __chkstk_darwin(v28);
  v161 = (&v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v34 = (&v152 - v33);
  v35 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v177 = *(v35 - 8);
  v178 = v35;
  v36 = *(v177 + 64);
  v37 = __chkstk_darwin(v35);
  v187 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v162 = &v152 - v40;
  __chkstk_darwin(v39);
  v43 = v0[8];
  p_name = &stru_100256FF8.name;
  v163 = v0;
  v175 = v29;
  v176 = v28;
  v174 = v27;
  v173 = v34;
  if (!v43)
  {
    v188 = _swiftEmptyArrayStorage;
    countAndFlagsBits = v177;
    v54 = v168;
    v55 = v186;
    goto LABEL_5;
  }

  v188 = v0[7];
  *v34 = v188;
  v34[1] = v43;
  v184 = (&v152 - v41);
  (*(v29 + 13))(v34, enum case for FBKSInteraction.Content.text(_:), v28);
  v45 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v46 = [v45 mainBundle];
  v192._object = 0x80000001001E67E0;
  v47._countAndFlagsBits = 0x74736575716552;
  v192._countAndFlagsBits = 0xD0000000000000ACLL;
  v47._object = 0xE700000000000000;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v192);

  v49 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v49 - 8) + 56))(v27, 1, 1, v49);
  v50 = v184;
  FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
  v51 = sub_10017E218(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = v51[2];
  v52 = v51[3];
  v188 = v51;
  countAndFlagsBits = v28 + 1;
  if (v28 >= v52 >> 1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v54 = v168;
    v55 = v186;
    v56 = v188;
    v188[2] = countAndFlagsBits;
    countAndFlagsBits = v177;
    (*(v177 + 32))(v56 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v28, v50, v178);
    v0 = v163;
    p_name = (&stru_100256FF8 + 8);
LABEL_5:
    v57 = 0;
    v50 = 0;
    v58 = v0[13];
    v59 = *(v58 + 16);
    v160 = v16 + 8;
    v184 = (v189 + 56);
    v183 = (v189 + 48);
    v181 = 0x80000001001E6730;
    v169 = enum case for FBKSInteraction.Content.image(_:);
    v171 = (v175 + 104);
    v172 = countAndFlagsBits + 32;
    *&v42 = 136642819;
    v164 = v42;
    v180 = v59;
    v182 = v58;
    if (!v59)
    {
LABEL_6:
      v60 = 1;
      *&v189 = v59;
      goto LABEL_9;
    }

    while (1)
    {
      v52 = *(v58 + 16);
      if (v57 >= v52)
      {
        goto LABEL_58;
      }

      v61 = v57 + 1;
      v62 = v58 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v57;
      v63 = *(v54 + 48);
      v64 = v166;
      *v166 = v57;
      sub_1000F3AC4(v62, v64 + v63, type metadata accessor for Attachment);
      sub_10002A894(v64, v55, &qword_100261F10, &qword_1001D8590);
      v60 = 0;
      *&v189 = v61;
LABEL_9:
      (*v184)(v55, v60, 1, v54);
      v65 = v185;
      sub_10002A894(v55, v185, &qword_100261F18, &unk_1001DF340);
      if ((*v183)(v65, 1, v54) == 1)
      {
        break;
      }

      v66 = *v65;
      sub_1000F3B2C(v65 + *(v54 + 48), v16, type metadata accessor for Attachment);
      v67 = [objc_opt_self() p_name[386]];
      v193._object = v181;
      v193._countAndFlagsBits = v1 + 15;
      v68._countAndFlagsBits = 0x656D686361747441;
      v68._object = 0xEA0000000000746ELL;
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v193)._countAndFlagsBits;

      result = Data.init(contentsOf:options:)();
      v72 = result;
      v73 = v71;
      if (*(v182 + 16) == 1)
      {
        v159 = 0;
        v74 = 0xE000000000000000;
      }

      else
      {
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        v191[0] = v66 + 1;
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v75;
      }

      v76 = URL.pathExtension.getter();
      v78 = v77;

      v79 = HIBYTE(v78) & 0xF;
      if ((v78 & 0x2000000000000000) == 0)
      {
        v79 = v76 & 0xFFFFFFFFFFFFLL;
      }

      if (v79)
      {
        v80._countAndFlagsBits = URL.pathExtension.getter();
        v191[0] = 46;
        v191[1] = 0xE100000000000000;
        String.append(_:)(v80);

        v81 = v191[1];
        v156 = v191[0];
      }

      else
      {
        v156 = 0;
        v81 = 0xE000000000000000;
      }

      if (*&v160[*(v165 + 20)])
      {
        v158 = 0;
        v157 = 0xE000000000000000;
      }

      else
      {
        v158 = URL.lastPathComponent.getter();
        v157 = v82;
      }

      strcpy(v191, "attachment");
      BYTE3(v191[1]) = 0;
      HIDWORD(v191[1]) = -369098752;
      v83._countAndFlagsBits = v159;
      v83._object = v74;
      String.append(_:)(v83);

      v84._countAndFlagsBits = v156;
      v84._object = v81;
      String.append(_:)(v84);

      v159 = v191[1];
      v85 = v173;
      *v173 = v72;
      v85[1] = v73;
      (*v171)(v85, v169, v176);
      v86 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
      (*(*(v86 - 8) + 56))(v174, 1, 1, v86);
      sub_10004DC4C(v72, v73);
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188 = sub_10017E218(0, v188[2] + 1, 1, v188);
      }

      p_name = (&stru_100256FF8 + 8);
      v1 = 0xD00000000000009BLL;
      v28 = v188[2];
      v87 = v188[3];
      if (v28 >= v87 >> 1)
      {
        v188 = sub_10017E218(v87 > 1, v28 + 1, 1, v188);
      }

      sub_10004DD08(v72, v73);
      v88 = v188;
      v188[2] = v28 + 1;
      (*(v177 + 32))(v88 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v28, v162, v178);
      sub_1000F3B94(v16, type metadata accessor for Attachment);
      v55 = v186;
      v58 = v182;
      v59 = v180;
      v57 = v189;
      if (v189 == v180)
      {
        goto LABEL_6;
      }
    }

    countAndFlagsBits = v163[15];
    v89 = *(countAndFlagsBits + 16);

    if (!v89)
    {
      break;
    }

    v28 = 0;
    v52 = 0x80000001001E65E0;
    v184 = 0x80000001001E65E0;
    v185 = (countAndFlagsBits + 32);
    v186 = countAndFlagsBits;
    while (v28 < v89)
    {
      v90 = *&v185[2 * v28++];
      v189 = v90;
      v91 = *(&v90 + 1);
      if (v89 == 1)
      {
        sub_10004DC4C(v189, *(&v90 + 1));
        v1 = 0;
        v92 = 0xE000000000000000;
      }

      else
      {
        v191[0] = v28;
        sub_10004DC4C(v189, *(&v90 + 1));
        v1 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v93;
      }

      v94 = v176;
      v95 = v173;
      *v173 = v189;
      (*v171)(v95, v169, v94);
      sub_10004DC4C(v189, v91);
      v191[0] = sub_1000971C0();
      v191[1] = v96;
      v97._countAndFlagsBits = 0x6567616D4920;
      v97._object = 0xE600000000000000;
      String.append(_:)(v97);
      v98 = v191[0];
      v99 = v191[1];
      v100 = [objc_opt_self() mainBundle];
      v194._object = v184;
      v101._countAndFlagsBits = v98;
      v101._object = v99;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v194._countAndFlagsBits = 0xD00000000000009BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v194);

      strcpy(v191, "output_image");
      BYTE5(v191[1]) = 0;
      HIWORD(v191[1]) = -5120;
      v103._countAndFlagsBits = v1;
      v103._object = v92;
      String.append(_:)(v103);

      v104._countAndFlagsBits = 1735290926;
      v104._object = 0xE400000000000000;
      String.append(_:)(v104);

      v105 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
      (*(*(v105 - 8) + 56))(v174, 1, 1, v105);
      FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188 = sub_10017E218(0, v188[2] + 1, 1, v188);
      }

      v106 = v170;
      v16 = v175;
      v107 = v177;
      countAndFlagsBits = v186;
      v109 = v188[2];
      v108 = v188[3];
      if (v109 >= v108 >> 1)
      {
        v188 = sub_10017E218(v108 > 1, v109 + 1, 1, v188);
      }

      sub_10004DD08(v189, v91);
      v110 = v187;
      v111 = v188;
      v188[2] = v109 + 1;
      v112 = v111 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v109;
      v50 = v178;
      (*(v107 + 32))(v112, v110, v178);
      v89 = *(countAndFlagsBits + 16);
      if (v28 == v89)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v188 = sub_10017E218(v52 > 1, countAndFlagsBits, 1, v188);
  }

  v106 = v170;
  v16 = v175;
  v107 = v177;
  v50 = v178;
LABEL_43:

  v113 = *(v107 + 56);
  v113(v106, 1, 1, v50);
  v114 = v163[14];
  if (!*(v114 + 16))
  {
    v151 = v106;
LABEL_56:
    sub_10000F500(v151, &qword_100261EF0, &qword_1001D8568);
    return v188;
  }

  v191[0] = v163[14];

  v115 = sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  *&v189 = v113;
  v116 = v115;
  v117 = sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v118 = BidirectionalCollection<>.joined(separator:)();
  v120 = v119;

  v121 = v161;
  *v161 = v118;
  v121[1] = v120;
  v122 = v176;
  (*(v16 + 13))(v121, enum case for FBKSInteraction.Content.text(_:), v176);
  (*(v16 + 2))(v173, v121, v122);
  v191[0] = sub_1000971C0();
  v191[1] = v123;
  v124._countAndFlagsBits = 0x7473656767755320;
  v124._object = 0xEC000000736E6F69;
  String.append(_:)(v124);
  v125 = v191[0];
  v126 = v191[1];
  v127 = [objc_opt_self() mainBundle];
  v195._object = 0x80000001001E6680;
  v195._countAndFlagsBits = 0xD0000000000000AFLL;
  v128._countAndFlagsBits = v125;
  v128._object = v126;
  v129._countAndFlagsBits = 0;
  v129._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v195);

  v130 = v170;
  v191[0] = v114;

  v186 = v117;
  v187 = v116;
  BidirectionalCollection<>.joined(separator:)();

  v131 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  (*(*(v131 - 8) + 56))(v174, 1, 1, v131);
  v132 = v154;
  FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
  sub_10000F500(v130, &qword_100261EF0, &qword_1001D8568);
  v133 = v178;
  (v189)(v132, 0, 1, v178);
  sub_10002A894(v132, v130, &qword_100261EF0, &qword_1001D8568);
  v134 = v155;
  sub_1000081F8(v130, v155, &qword_100261EF0, &qword_1001D8568);
  v135 = v177;
  result = (*(v177 + 48))(v134, 1, v133);
  if (result != 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v153;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v188 = sub_10017E218(0, v188[2] + 1, 1, v188);
    }

    v139 = v188[2];
    v138 = v188[3];
    if (v139 >= v138 >> 1)
    {
      v188 = sub_10017E218(v138 > 1, v139 + 1, 1, v188);
    }

    v140 = v188;
    v188[2] = v139 + 1;
    (*(v135 + 32))(v140 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v139, v134, v178);
    if (qword_10025A708 != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    sub_10000F34C(v141, qword_100276F80);
    sub_1000F3AC4(v163, v137, type metadata accessor for FeedbackView);
    v142 = Logger.logObject.getter();
    v143 = v137;
    v144 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v142, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *v145 = v164;
      v190 = *(v143 + 112);
      v191[0] = v146;

      v147 = BidirectionalCollection<>.joined(separator:)();
      v149 = v148;

      sub_1000F3B94(v143, type metadata accessor for FeedbackView);
      v150 = sub_10002510C(v147, v149, v191);

      *(v145 + 4) = v150;
      _os_log_impl(&_mh_execute_header, v142, v144, "Feedback Initiated - refinementsContent: %{sensitive}s", v145, 0xCu);
      sub_10000F4B4(v146);
    }

    else
    {

      sub_1000F3B94(v143, type metadata accessor for FeedbackView);
    }

    (*(v175 + 1))(v161, v176);
    v151 = v130;
    goto LABEL_56;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1000EEF90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      return 0x65736F706D6F43;
    }

    else
    {
      v8 = 0x6552207472616D53;
      if (a1 == 1 && (a3 | a2) == 0)
      {
        v8 = 0x616572666F6F7250;
      }

      if (a3 | a2 | a1)
      {
        return v8;
      }

      else
      {
        return 0x20676E6974697257;
      }
    }
  }

  else if (a1 > 4u)
  {
    v9 = 0x6E696F502079654BLL;
    v10 = 1953720652;
    if (a1 != 8)
    {
      v10 = 0x656C626154;
    }

    if (a1 != 7)
    {
      v9 = v10;
    }

    v11 = 0x646E45206E65704FLL;
    if (a1 != 5)
    {
      v11 = 0x7972616D6D7553;
    }

    if (a1 <= 6u)
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v5 = 0x65746972776552;
    v6 = 0x657369636E6F43;
    v7 = 0x796C646E65697246;
    if (a1 != 3)
    {
      v7 = 0x69737365666F7250;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x616572666F6F7250;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1000EF198@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FeedbackView();
  sub_1000081F8(v1 + *(v12 + 92), v11, &qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for AccessibilityTechnologies();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_1000EF3AC()
{
  result = qword_100261DF8;
  if (!qword_100261DF8)
  {
    sub_100003E34(&qword_100261DF0, &qword_1001D84B0);
    sub_1000EF464();
    sub_100007120(&qword_100261E80, &qword_100261E88, &unk_1001D84F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261DF8);
  }

  return result;
}

unint64_t sub_1000EF464()
{
  result = qword_100261E00;
  if (!qword_100261E00)
  {
    sub_100003E34(&qword_100261E08, &qword_1001D84B8);
    sub_1000EF4F0();
    sub_1000EF6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E00);
  }

  return result;
}

unint64_t sub_1000EF4F0()
{
  result = qword_100261E10;
  if (!qword_100261E10)
  {
    sub_100003E34(&qword_100261E18, &qword_1001D84C0);
    sub_1000EF57C();
    sub_1000EF634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E10);
  }

  return result;
}

unint64_t sub_1000EF57C()
{
  result = qword_100261E20;
  if (!qword_100261E20)
  {
    sub_100003E34(&qword_100261E28, &qword_1001D84C8);
    sub_100007120(&qword_100261E30, &qword_100261E38, &qword_1001D84D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E20);
  }

  return result;
}

unint64_t sub_1000EF634()
{
  result = qword_100261E40;
  if (!qword_100261E40)
  {
    sub_100003E34(&qword_100261E48, &qword_1001D84D8);
    sub_100007120(&qword_100261E50, &qword_100261E58, &qword_1001D84E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E40);
  }

  return result;
}

unint64_t sub_1000EF6EC()
{
  result = qword_100261E60;
  if (!qword_100261E60)
  {
    sub_100003E34(&qword_100261E68, &qword_1001D84E8);
    sub_1000EF634();
    sub_100007120(&qword_100261E70, &qword_100261E78, &qword_1001D84F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E60);
  }

  return result;
}

unint64_t sub_1000EF7A4()
{
  result = qword_100261E98;
  if (!qword_100261E98)
  {
    sub_100003E34(&qword_100261DE0, &qword_1001D84A0);
    sub_1000EF3AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261E98);
  }

  return result;
}

void sub_1000EF838()
{
  v1 = *(type metadata accessor for FeedbackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_1000EA534();
}

uint64_t sub_1000EF894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002620D0, &unk_1001D87D8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000EF90C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000341C(&qword_10025AC60, &qword_1001CE930);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000EFBD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100008150(v25, v37);
      }

      else
      {
        sub_10002B0D0(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100008150(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000EFEB0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_10000341C(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1000F02A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_100008198(v25, v37);
      }

      else
      {
        sub_100028458(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100008198(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000F0564(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000341C(&qword_10025AD10, &unk_1001D8720);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000F0938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000F0BF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000341C(&qword_10025AC68, &qword_1001CE938);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      UnitPoint.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v23;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000F0E84(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000341C(&qword_10025AD30, &qword_1001D8740);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000F1260(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000F1634(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FBKSForm.Question();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000341C(&qword_10025AC48, &qword_1001CE928);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1000F48D8(&qword_10025AC50, &type metadata accessor for FBKSForm.Question);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000F1A24(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_10000341C(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1000F48D8(&unk_10025AC80, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

unint64_t sub_1000F1E00(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1000F1E44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008150(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F1EB4(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008198(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000F1F24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000F1FF4(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000F20AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

id sub_1000F2168()
{
  v1 = v0;
  sub_10000341C(&qword_10025AC60, &qword_1001CE930);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F22C8()
{
  v1 = v0;
  sub_10000341C(&unk_10025AC10, &unk_1001CE8F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10002B0D0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008150(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1000F24A8()
{
  v1 = v0;
  sub_10000341C(&qword_10025ACD8, &qword_1001CE998);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100028458(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008198(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1000F2650()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(&qword_10025AD10, &unk_1001D8720);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000F28D4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1000F2B4C()
{
  v1 = v0;
  sub_10000341C(&qword_10025ACA0, &qword_1001CE960);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000F2CC4()
{
  v1 = v0;
  sub_10000341C(&qword_10025AC68, &qword_1001CE938);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1000F2E3C()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(&qword_10025AD50, &qword_1001CEA08);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000F30C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_10000341C(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

id sub_1000F3350(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000341C(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

uint64_t sub_1000F35DC()
{
  v1 = type metadata accessor for FeedbackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 80);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 112);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 152);
  if (v15 != 255)
  {
    sub_10000F428(v5[16], v5[17], v5[18], v15);
  }

  if (v5[23])
  {
    sub_10000F4B4(v5 + 20);
  }

  v16 = v5[27];

  v17 = v5[29];

  v18 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
    v20 = *(v5 + v18);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F377C()
{
  v1 = *(*(type metadata accessor for FeedbackView() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1000ED200();
}

unint64_t sub_1000F37E0()
{
  result = qword_100261EB8;
  if (!qword_100261EB8)
  {
    sub_100003E34(&qword_100261DE8, &qword_1001D84A8);
    sub_1000F386C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EB8);
  }

  return result;
}

unint64_t sub_1000F386C()
{
  result = qword_100261EC0;
  if (!qword_100261EC0)
  {
    sub_100003E34(&qword_100261EA8, &qword_1001D8540);
    sub_1000F3924();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EC0);
  }

  return result;
}

unint64_t sub_1000F3924()
{
  result = qword_100261EC8;
  if (!qword_100261EC8)
  {
    sub_100003E34(&qword_100261EA0, &qword_1001D8508);
    sub_100003E34(&qword_100261DE0, &qword_1001D84A0);
    sub_100003E34(&unk_1002637B0, &qword_1001D8498);
    sub_1000EF7A4();
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261EC8);
  }

  return result;
}

uint64_t sub_1000F3A4C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  sub_10000341C(&qword_100261EB0, &unk_1001D8548);
  return State.wrappedValue.setter();
}

uint64_t sub_1000F3AB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F3AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F3B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000F3BF4()
{
  result = qword_100261F78;
  if (!qword_100261F78)
  {
    sub_100003E34(&qword_100261F70, &qword_1001D85E8);
    sub_1000F3CAC();
    sub_100007120(&qword_100261FA0, &qword_100261FA8, &qword_1001D8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261F78);
  }

  return result;
}

unint64_t sub_1000F3CAC()
{
  result = qword_100261F80;
  if (!qword_100261F80)
  {
    sub_100003E34(&qword_100261F88, &unk_1001D85F0);
    sub_100003E34(&qword_100261F90, &unk_1001DE270);
    sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261F80);
  }

  return result;
}

uint64_t sub_1000F3DA8()
{
  v1 = type metadata accessor for FeedbackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 80);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 112);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 152);
  if (v15 != 255)
  {
    sub_10000F428(v5[16], v5[17], v5[18], v15);
  }

  if (v5[23])
  {
    sub_10000F4B4(v5 + 20);
  }

  v16 = v5[27];

  v17 = v5[29];

  v18 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
    v20 = *(v5 + v18);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000F3F70()
{
  result = qword_100261FF8;
  if (!qword_100261FF8)
  {
    sub_100003E34(&qword_100261FE0, &qword_1001D8630);
    sub_100007120(&qword_100261F98, &qword_100261F90, &unk_1001DE270);
    sub_1000F4028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100261FF8);
  }

  return result;
}

unint64_t sub_1000F4028()
{
  result = qword_100262000;
  if (!qword_100262000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262000);
  }

  return result;
}

unint64_t sub_1000F4088()
{
  result = qword_100262020;
  if (!qword_100262020)
  {
    sub_100003E34(&qword_100262010, &qword_1001D8658);
    sub_10002AF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262020);
  }

  return result;
}

uint64_t sub_1000F4148(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000E9D68(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000F4238()
{
  v1 = type metadata accessor for FeedbackView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 80);

  v12 = *(v0 + v3 + 96);

  v13 = *(v0 + v3 + 104);

  v14 = *(v0 + v3 + 112);

  v15 = *(v0 + v3 + 120);

  v16 = *(v0 + v3 + 152);
  if (v16 != 255)
  {
    sub_10000F428(v6[16], v6[17], v6[18], v16);
  }

  if (v6[23])
  {
    sub_10000F4B4(v6 + 20);
  }

  v17 = v6[27];

  v18 = v6[29];

  v19 = *(v1 + 92);
  sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = type metadata accessor for AccessibilityTechnologies();
    (*(*(v20 - 8) + 8))(v6 + v19, v20);
  }

  else
  {
    v21 = *(v6 + v19);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F43E0(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1000E994C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000F4558(uint64_t a1)
{
  v4 = *(type metadata accessor for FeedbackView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_1000E8020(a1, v6, v7, v1 + v5);
}

unint64_t sub_1000F4724()
{
  result = qword_1002620B8;
  if (!qword_1002620B8)
  {
    sub_100003E34(&qword_100262058, &qword_1001D86D0);
    sub_1000F47DC();
    sub_100007120(&qword_100261FA0, &qword_100261FA8, &qword_1001D8600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002620B8);
  }

  return result;
}

unint64_t sub_1000F47DC()
{
  result = qword_1002620C0;
  if (!qword_1002620C0)
  {
    sub_100003E34(&qword_100262080, &qword_1001D86F0);
    sub_100003E34(&qword_100262070, &qword_1001D86E0);
    sub_100007120(&qword_100262098, &qword_100262070, &qword_1001D86E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002620C0);
  }

  return result;
}

uint64_t sub_1000F48D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F4940()
{
  sub_100003E34(&qword_100261DE8, &qword_1001D84A8);
  sub_1000F37E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F4AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1000F4BC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000F4CA0(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v5, &unk_10025B1C0, &unk_1001CFA90);
  v3 = *a2;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v5, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1000F4DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView);
  return result;
}

uint64_t sub_1000F4E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_100262580, &qword_1001CFF70);
}

uint64_t sub_1000F4F58(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_1000081F8(a1, &v10[-v6], &unk_100262580, &qword_1001CFF70);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v7, &unk_100262580, &qword_1001CFF70);
}

uint64_t sub_1000F50F8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000F51D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions);
  return result;
}

uint64_t sub_1000F52FC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000F5488()
{
  v0 = type metadata accessor for TextComposerClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  TextComposerClient.init()();
  dispatch thunk of TextComposerClient.requestPrewarming(for:)();
}

uint64_t sub_1000F54E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for UUID();
  v7[18] = v8;
  v9 = *(v8 - 8);
  v7[19] = v9;
  v10 = *(v9 + 64) + 15;
  v7[20] = swift_task_alloc();
  v11 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  v7[21] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v13 = *(*(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v14 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for MainActor();
  v7[28] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[29] = v16;
  v7[30] = v15;

  return _swift_task_switch(sub_1000F56A4, v16, v15);
}

uint64_t sub_1000F56A4()
{
  v1 = v0[26];
  v2 = v0[14];
  swift_getKeyPath();
  v0[31] = OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel___observationRegistrar;
  v0[8] = v2;
  v0[32] = sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);
  swift_getKeyPath();
  v0[9] = v3;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v3 + v4, v1, &unk_100262580, &qword_1001CFF70);

  v5 = type metadata accessor for CompositionModel.Session(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  sub_10000F500(v1, &unk_100262580, &qword_1001CFF70);
  if (v7 == 1)
  {
    goto LABEL_11;
  }

  v8 = v0[25];
  v9 = v0[14];
  swift_getKeyPath();
  v0[12] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = v2;
  v10 = *(v2 + 32);
  swift_getKeyPath();
  v0[13] = v10;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v10 + v11, v8, &unk_100262580, &qword_1001CFF70);

  v12 = v6(v8, 1, v5);
  v13 = v0[25];
  if (v12 == 1)
  {
    sub_10000F500(v0[25], &unk_100262580, &qword_1001CFF70);
    v14 = 1;
  }

  else
  {
    v15 = v0[24];
    v16 = *v13;
    sub_100099074(v13);
    v17 = [v16 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = 0;
  }

  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[22];
  v21 = v0[18];
  v22 = v0[19];
  v23 = v0[15];
  (*(v22 + 56))(v18, v14, 1, v21);
  v24 = *(v19 + 48);
  sub_1000081F8(v18, v20, &unk_100262450, &qword_1001CFAA0);
  sub_1000081F8(v23, v20 + v24, &unk_100262450, &qword_1001CFAA0);
  v25 = *(v22 + 48);
  if (v25(v20, 1, v21) == 1)
  {
    v26 = v0[18];
    sub_10000F500(v0[24], &unk_100262450, &qword_1001CFAA0);
    if (v25(v20 + v24, 1, v26) == 1)
    {
      sub_10000F500(v0[22], &unk_100262450, &qword_1001CFAA0);
LABEL_19:
      v46 = v0[17];
      if (v46 && ((v46 & 0x2000000000000000) != 0 ? (v47 = HIBYTE(v46) & 0xF) : (v47 = v0[16] & 0xFFFFFFFFFFFFLL), v47))
      {
        v49 = v0[31];
        v48 = v0[32];
        v50 = v0[27];
        v51 = v0[14];
        swift_getKeyPath();
        v0[11] = v51;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v0[35] = *(v51 + 32);

        v0[36] = static MainActor.shared.getter();
        v53 = dispatch thunk of Actor.unownedExecutor.getter();
        v0[37] = v53;
        v0[38] = v52;

        return _swift_task_switch(sub_1000F61C8, v53, v52);
      }

      else
      {
        v54 = v0[28];

        v56 = v0[25];
        v55 = v0[26];
        v58 = v0[23];
        v57 = v0[24];
        v59 = v0[22];
        v60 = v0[20];

        v61 = v0[1];

        return v61();
      }
    }

    goto LABEL_10;
  }

  v27 = v0[18];
  sub_1000081F8(v0[22], v0[23], &unk_100262450, &qword_1001CFAA0);
  v28 = v25(v20 + v24, 1, v27);
  v29 = v0[23];
  v30 = v0[24];
  if (v28 == 1)
  {
    v32 = v0[18];
    v31 = v0[19];
    sub_10000F500(v0[24], &unk_100262450, &qword_1001CFAA0);
    (*(v31 + 8))(v29, v32);
LABEL_10:
    sub_10000F500(v0[22], &qword_10025F358, &qword_1001D4140);
    goto LABEL_11;
  }

  v40 = v0[22];
  v42 = v0[19];
  v41 = v0[20];
  v43 = v0[18];
  (*(v42 + 32))(v41, v20 + v24, v43);
  sub_1001068A4(&unk_10025F360, &type metadata accessor for UUID);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v42 + 8);
  v45(v41, v43);
  sub_10000F500(v30, &unk_100262450, &qword_1001CFAA0);
  v45(v29, v43);
  v2 = v62;
  sub_10000F500(v40, &unk_100262450, &qword_1001CFAA0);
  if (v44)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000F34C(v33, qword_100276F08);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Starting session from handoff", v36, 2u);
  }

  v37 = v0[14];

  swift_getKeyPath();
  v0[10] = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[33] = *(v2 + 32);

  v38 = swift_task_alloc();
  v0[34] = v38;
  *v38 = v0;
  v38[1] = sub_1000F5F08;

  return sub_10007AB54();
}

uint64_t sub_1000F5F08()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v7 = *v0;

  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return _swift_task_switch(sub_1000F604C, v5, v4);
}

uint64_t sub_1000F604C()
{
  v1 = v0[17];
  if (v1 && ((v1 & 0x2000000000000000) != 0 ? (v2 = HIBYTE(v1) & 0xF) : (v2 = v0[16] & 0xFFFFFFFFFFFFLL), v2))
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = v0[27];
    v6 = v0[14];
    swift_getKeyPath();
    v0[11] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[35] = *(v6 + 32);

    v0[36] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[37] = v8;
    v0[38] = v7;

    return _swift_task_switch(sub_1000F61C8, v8, v7);
  }

  else
  {
    v9 = v0[28];

    v11 = v0[25];
    v10 = v0[26];
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];
    v15 = v0[20];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000F61C8()
{
  v1 = v0[17];
  sub_10006CF60("Composition");
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1000F627C;
  v3 = v0[35];
  v4 = v0[16];

  return sub_10007DE34(v4, v1);
}

uint64_t sub_1000F627C()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_1000F639C, v4, v3);
}