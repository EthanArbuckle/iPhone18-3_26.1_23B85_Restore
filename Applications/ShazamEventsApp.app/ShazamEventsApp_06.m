uint64_t sub_1000BE81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100009F70(&qword_10021D7F0);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v47 - v6;
  v7 = sub_100009F70(&qword_1002197C0);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = __chkstk_darwin(v7);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v47 - v10;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  KeyPath = swift_getKeyPath();
  v55 = v12;
  v56 = v14;
  v20 = v16 & 1;
  v57 = v16 & 1;
  v58 = v18;
  v59 = KeyPath;
  v21 = 1;
  v60 = 1;
  v61 = 0;
  v22 = sub_100009F70(&qword_1002197F0);
  v23 = sub_10002764C();
  v51 = v11;
  v47[0] = v23;
  v47[1] = v22;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v12, v14, v20);

  v24 = *(a1 + 24);
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    v21 = 1;
LABEL_9:
    v41 = v52;
    v42 = v54;
    v27 = v48;
    goto LABEL_10;
  }

  v26 = qword_100218338;

  v27 = v48;
  if (v26 != -1)
  {
    swift_once();
  }

  v55 = qword_100230570;

  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v32 = v31;

  static Font.caption.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_10000D60C(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v55 = v33;
  v56 = v35;
  v37 &= 1u;
  v57 = v37;
  v58 = v39;
  v59 = v40;
  v60 = 1;
  v61 = 0;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v33, v35, v37);

  v41 = v52;
  sub_10000F618(v27, v52, &qword_1002197C0);
  v21 = 0;
  v42 = v54;
LABEL_10:
  (*(v49 + 56))(v41, v21, 1, v50);
  v43 = v51;
  sub_10000D58C(v51, v27, &qword_1002197C0);
  v44 = v53;
  sub_10000D58C(v41, v53, &qword_10021D7F0);
  sub_10000D58C(v27, v42, &qword_1002197C0);
  v45 = sub_100009F70(&qword_10021D7F8);
  sub_10000D58C(v44, v42 + *(v45 + 48), &qword_10021D7F0);
  sub_10000D52C(v41, &qword_10021D7F0);
  sub_10000D52C(v43, &qword_1002197C0);
  sub_10000D52C(v44, &qword_10021D7F0);
  return sub_10000D52C(v27, &qword_1002197C0);
}

uint64_t sub_1000BED90()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BEE10(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[16];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000D890;

  return sub_1000BD1BC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1000BEEF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000BEF38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000BEF78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BEFC0()
{
  result = qword_10021D658;
  if (!qword_10021D658)
  {
    sub_10000B3DC(&qword_10021D650);
    sub_1000BF078();
    sub_10000D1EC(&qword_10021D670, &qword_10021D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D658);
  }

  return result;
}

unint64_t sub_1000BF078()
{
  result = qword_10021D660;
  if (!qword_10021D660)
  {
    sub_10000B3DC(&qword_10021D668);
    sub_100019990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D660);
  }

  return result;
}

unint64_t sub_1000BF104()
{
  result = qword_10021D680;
  if (!qword_10021D680)
  {
    sub_10000B3DC(&qword_10021D630);
    sub_1000BF4C8(&qword_10021D688, &qword_10021D690, &unk_1001B4848, sub_1000BF1E8);
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D680);
  }

  return result;
}

unint64_t sub_1000BF1E8()
{
  result = qword_10021D698;
  if (!qword_10021D698)
  {
    sub_10000B3DC(&qword_10021D628);
    sub_1000BF274();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D698);
  }

  return result;
}

unint64_t sub_1000BF274()
{
  result = qword_10021D6A0;
  if (!qword_10021D6A0)
  {
    sub_10000B3DC(&qword_10021D6A8);
    sub_1000BF32C();
    sub_10000D1EC(&qword_10021D6C0, &qword_10021D6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6A0);
  }

  return result;
}

unint64_t sub_1000BF32C()
{
  result = qword_10021D6B0;
  if (!qword_10021D6B0)
  {
    sub_10000B3DC(&qword_10021D6B8);
    sub_10000D1EC(&qword_10021D670, &qword_10021D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6B0);
  }

  return result;
}

unint64_t sub_1000BF3E4()
{
  result = qword_10021D6E0;
  if (!qword_10021D6E0)
  {
    sub_10000B3DC(&qword_10021D640);
    sub_1000BF4C8(&qword_10021D6E8, &qword_10021D6F0, &unk_1001B4870, sub_1000BEFC0);
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6E0);
  }

  return result;
}

uint64_t sub_1000BF4C8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BF57C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000BF58C()
{
  result = qword_10021D708;
  if (!qword_10021D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D708);
  }

  return result;
}

__n128 sub_1000BF5E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000BF5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000BF63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BF698()
{
  sub_10000B3DC(&qword_10021D590);
  sub_10000B3DC(&qword_10021D568);
  sub_1000BD7AC();
  sub_1000BB21C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BF744()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BF794()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1000BF820()
{
  result = qword_10021D738;
  if (!qword_10021D738)
  {
    sub_10000B3DC(&qword_10021D718);
    sub_10000D1EC(&qword_10021D740, &qword_10021D748);
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D738);
  }

  return result;
}

unint64_t sub_1000BF904()
{
  result = qword_10021D770;
  if (!qword_10021D770)
  {
    sub_10000B3DC(&qword_10021D720);
    sub_1000BF9BC();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D770);
  }

  return result;
}

unint64_t sub_1000BF9BC()
{
  result = qword_10021D778;
  if (!qword_10021D778)
  {
    sub_10000B3DC(&qword_10021D768);
    sub_1000BFAA0(&qword_10021D780, &qword_10021D760, &unk_1001B4988, sub_1000BFB24);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D778);
  }

  return result;
}

uint64_t sub_1000BFAA0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BFB54()
{
  result = qword_10021D790;
  if (!qword_10021D790)
  {
    sub_10000B3DC(&qword_10021D750);
    sub_10000B3DC(&qword_10021D718);
    sub_1000BF820();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D790);
  }

  return result;
}

unint64_t sub_1000BFC24()
{
  result = qword_10021D7C0;
  if (!qword_10021D7C0)
  {
    sub_10000B3DC(&qword_10021D7B8);
    sub_1000778C4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C0);
  }

  return result;
}

unint64_t sub_1000BFCDC()
{
  result = qword_10021D7C8;
  if (!qword_10021D7C8)
  {
    sub_10000B3DC(&qword_10021D7A8);
    sub_1000BF4C8(&qword_10021D7D0, &qword_10021D7D8, &unk_1001B4A00, sub_1000BFC24);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C8);
  }

  return result;
}

uint64_t sub_1000BFD94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000BFDF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000BFE64()
{
  result = qword_10021D800;
  if (!qword_10021D800)
  {
    sub_10000B3DC(&qword_10021D808);
    sub_10000B3DC(&qword_10021D720);
    sub_1000BF904();
    swift_getOpaqueTypeConformance2();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D800);
  }

  return result;
}

uint64_t sub_1000BFF68(uint64_t a1)
{
  result = sub_1000C0950(&qword_10021D810, &type metadata accessor for Dance);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BFFC4()
{
  result = qword_10021D818;
  if (!qword_10021D818)
  {
    sub_10000B3DC(&qword_10021D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D818);
  }

  return result;
}

uint64_t sub_1000C0190()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100009F70(&qword_10021D8F8);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021D900);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000C037C);
}

uint64_t sub_1000C037C()
{
  if (qword_100218350 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10001FDF4(v4, qword_100230588);
  Dance.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Dance();
  sub_1000C0950(&qword_10021D908, &type metadata accessor for Dance);
  static EventService.RequestType.dance.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000C0534;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000C0534()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_10001FB0C;
  }

  else
  {
    v3 = sub_1000C06B8;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1000C06B8()
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
  v9 = sub_1000FAD8C(sub_1000C0998, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000C07FC@<X0>(uint64_t *a1@<X8>)
{
  result = Dance.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000C0840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FC70;

  return sub_1000C0190();
}

uint64_t sub_1000C08CC(uint64_t a1)
{
  *(a1 + 8) = sub_1000C0950(&qword_10021D8E8, &type metadata accessor for Dance);
  result = sub_1000C0950(&qword_10021D8F0, &type metadata accessor for Dance);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C0950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C09CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C0A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeTicketAttribution()
{
  result = qword_10021D968;
  if (!qword_10021D968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1000C0B7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C0C24()
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000C0CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C0D9C(uint64_t a1)
{
  result = sub_1000C0DF4(&qword_10021D9A8, type metadata accessor for DesignTimeTicketAttribution);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C0DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0E4C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  result = ResourceID.init(_:)();
  qword_1002305D0 = result;
  *algn_1002305D8 = v5;
  return result;
}

Swift::Int sub_1000C0F38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000C0F84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000C0FD0()
{
  result = qword_10021D9B0;
  if (!qword_10021D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D9B0);
  }

  return result;
}

unint64_t sub_1000C1024(uint64_t a1)
{
  *(a1 + 8) = sub_1000C1054();
  result = sub_1000C10A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C1054()
{
  result = qword_10021D9B8;
  if (!qword_10021D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D9B8);
  }

  return result;
}

unint64_t sub_1000C10A8()
{
  result = qword_10021D9C0[0];
  if (!qword_10021D9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021D9C0);
  }

  return result;
}

uint64_t sub_1000C10FC()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1000C5A78(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1000C117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UpcomingViewModel();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for UpcomingModule();
  v10 = (a4 + *(v9 + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  v13 = a4 + *(v9 + 40);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  return result;
}

void sub_1000C129C()
{
  type metadata accessor for UpcomingViewModel();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_100050558();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C133C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v13 = (a2 - v8 + 255) >> 8;
  if (v12 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v12];
      if (!*&a1[v12])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v17 = *&a1[v12];
      if (!v17)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v16 || (v17 = a1[v12]) == 0)
  {
LABEL_36:
    if (v8 == 0x7FFFFFFF)
    {
      v21 = *(a1 + 1);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v22 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = (v17 - 1) << (8 * v12);
  if (v12 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v8 + (v20 | v19) + 1;
}

void sub_1000C1524(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = ((((-2 - ((((-49 - v12) | v12) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v12) | v12) - v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    v15 = (a3 - v11 + 255) >> 8;
    if (v14 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
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

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if (v11 == 0x7FFFFFFF)
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
      v20 = *(v7 + 56);
      v21 = (v12 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v12 | 7) + 32) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12;
      v22 = a2 + 1;

      v20(v21, v22);
    }

    return;
  }

  v18 = ~v11 + a2;
  bzero(a1, v14);
  if (v14 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_29:
      if (v6 == 2)
      {
        *&a1[v14] = v19;
      }

      else
      {
        *&a1[v14] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v6 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    a1[v14] = v19;
  }
}

double sub_1000C17B8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.85;
  if (v1 == 1)
  {
    return 0.45;
  }

  return result;
}

uint64_t sub_1000C1828(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(a1 + 36));
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
      v11 = v1 + *(a1 + 40);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
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
  sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C1AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  sub_10000B3DC(&qword_10021DA48);
  v4 = *(a1 + 16);
  type metadata accessor for Array();
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021DA50);
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v19 = sub_1000C5148();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v22 = WitnessTable;
  v23 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  static HorizontalAlignment.leading.getter();
  v17[4] = v4;
  v17[5] = v5;
  v18 = v2;
  VStack.init(alignment:spacing:content:)();
  v14 = swift_getWitnessTable();
  sub_100157EFC(v11, v7, v14);
  v15 = *(v8 + 8);
  v15(v11, v7);
  sub_100157EFC(v13, v7, v14);
  return (v15)(v13, v7);
}

uint64_t sub_1000C1F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v125 = a4;
  v124 = type metadata accessor for ContentMarginPlacement();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ScrollIndicatorVisibility();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v8 - 8);
  v118 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v119 = *(v10 - 8);
  __chkstk_darwin(v10);
  v115 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10000B3DC(&qword_10021DA50);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v132 = v12;
  v133 = AssociatedTypeWitness;
  v134 = v14;
  v135 = WitnessTable;
  v136 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v131[7] = sub_1000C5148();
  swift_getWitnessTable();
  v17 = type metadata accessor for LazyHGrid();
  v18 = swift_getWitnessTable();
  v132 = v17;
  v133 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = v17;
  v133 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = type metadata accessor for ScrollView();
  v96 = *(v19 - 8);
  __chkstk_darwin(v19);
  v93 = &v88 - v20;
  v21 = swift_getWitnessTable();
  v132 = v19;
  v133 = v10;
  v91 = v10;
  v134 = v21;
  v135 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v22 = v21;
  v92 = v21;
  v23 = swift_getOpaqueTypeMetadata2();
  v109 = *(v23 - 8);
  __chkstk_darwin(v23);
  v88 = &v88 - v24;
  v132 = v19;
  v133 = v10;
  v134 = v22;
  v135 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeConformance2();
  v132 = v23;
  v133 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v108 = *(v26 - 8);
  __chkstk_darwin(v26);
  v100 = &v88 - v27;
  v113 = v23;
  v132 = v23;
  v133 = v25;
  v102 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v132 = v26;
  v133 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v107 = *(v29 - 8);
  __chkstk_darwin(v29);
  v106 = &v88 - v30;
  v112 = v26;
  v132 = v26;
  v133 = v28;
  v101 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v111 = v29;
  v132 = v29;
  v133 = v31;
  v104 = v31;
  v99 = swift_getOpaqueTypeMetadata2();
  v110 = *(v99 - 8);
  v32 = __chkstk_darwin(v99);
  v117 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v103 = &v88 - v35;
  __chkstk_darwin(v34);
  v114 = &v88 - v36;
  v37 = sub_100009F70(&qword_10021DA88);
  __chkstk_darwin(v37 - 8);
  v39 = &v88 - v38;
  v40 = sub_100009F70(&qword_10021DA48);
  v41 = __chkstk_darwin(v40);
  v105 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v88 - v44;
  __chkstk_darwin(v43);
  v47 = &v88 - v46;
  *v39 = static HorizontalAlignment.leading.getter();
  *(v39 + 1) = 0x4024000000000000;
  v39[16] = 0;
  v48 = sub_100009F70(&qword_10021DA90);
  v49 = v97;
  sub_1000C2DA8(a1, a2, &v39[*(v48 + 44)]);
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v89 = type metadata accessor for UpcomingModule();
  sub_1000C1828(v89);
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v39;
  v59 = a1;
  v60 = v88;
  sub_10000F618(v58, v45, &qword_10021DA88);
  v98 = v40;
  v61 = &v45[*(v40 + 36)];
  *v61 = v26;
  v62 = v116;
  *(v61 + 1) = v51;
  *(v61 + 2) = v53;
  *(v61 + 3) = v55;
  *(v61 + 4) = v57;
  v61[40] = 0;
  v90 = v47;
  sub_10000F618(v45, v47, &qword_10021DA48);
  static Axis.Set.horizontal.getter();
  v126 = a2;
  v127 = v49;
  v128 = v59;
  v63 = v93;
  sub_1001511F4();
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v64 = v115;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v65 = v91;
  View.scrollTargetBehavior<A>(_:)();
  (*(v119 + 8))(v64, v65);
  (*(v96 + 8))(v63, v19);
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v19) = static Axis.Set.vertical.getter();
  *(inited + 32) = v19;
  v67 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v67;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v19)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v67)
  {
    Axis.Set.init(rawValue:)();
  }

  v68 = v100;
  v69 = v113;
  View.scrollIndicators(_:axes:)();
  (*(v120 + 8))(v62, v121);
  (*(v109 + 8))(v60, v69);
  static Edge.Set.leading.getter();
  v70 = v89;
  sub_1000C1828(v89);
  v71 = v122;
  static ContentMarginPlacement.scrollContent.getter();
  v72 = v106;
  v73 = v112;
  View.contentMargins(_:_:for:)();
  v74 = *(v123 + 8);
  v75 = v124;
  v74(v71, v124);
  (*(v108 + 8))(v68, v73);
  static Edge.Set.trailing.getter();
  sub_1000C1828(v70);
  static ContentMarginPlacement.scrollContent.getter();
  v76 = v103;
  v77 = v111;
  v78 = v104;
  View.contentMargins(_:_:for:)();
  v74(v71, v75);
  (*(v107 + 8))(v72, v77);
  v132 = v77;
  v133 = v78;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v114;
  v81 = v99;
  sub_100157EFC(v76, v99, v79);
  v82 = v110;
  v83 = *(v110 + 8);
  v83(v76, v81);
  v84 = v90;
  v85 = v105;
  sub_10000D58C(v90, v105, &qword_10021DA48);
  v132 = v85;
  v86 = v117;
  (*(v82 + 16))(v117, v80, v81);
  v133 = v86;
  v131[0] = v98;
  v131[1] = v81;
  v129 = sub_1000C539C();
  v130 = v79;
  sub_100151024(&v132, 2uLL, v131);
  v83(v80, v81);
  sub_10000D52C(v84, &qword_10021DA48);
  v83(v86, v81);
  return sub_10000D52C(v85, &qword_10021DA48);
}

uint64_t sub_1000C2DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v46 = a3;
  v44 = sub_100009F70(&qword_10021DAD0) - 8;
  v3 = __chkstk_darwin(v44);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for AccessibilityTraits();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(&qword_10021DAD8);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_100009F70(&qword_10021DAE0);
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = sub_100009F70(&qword_10021DAE8);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v23 = sub_100009F70(&qword_10021DAF0);
  sub_1000C32D0(v39, &v13[*(v23 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v24 = sub_10000D1EC(&qword_10021DAF8, &qword_10021DAD8);
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v37);
  sub_10000D52C(v13, &qword_10021DAD8);
  v25 = v38;
  static AccessibilityTraits.isHeader.getter();
  v47 = v11;
  v48 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v36;
  View.accessibilityAddTraits(_:)();
  (*(v41 + 8))(v25, v42);
  (*(v35 + 8))(v16, v26);
  v27 = v43;
  Divider.init()();
  v28 = static SafeAreaRegions.container.getter();
  v29 = static Edge.Set.horizontal.getter();
  v30 = v27 + *(v44 + 44);
  *v30 = v28;
  *(v30 + 8) = v29;
  sub_10000D58C(v22, v20, &qword_10021DAE8);
  v31 = v45;
  sub_10000D58C(v27, v45, &qword_10021DAD0);
  v32 = v46;
  sub_10000D58C(v20, v46, &qword_10021DAE8);
  v33 = sub_100009F70(&qword_10021DB00);
  sub_10000D58C(v31, v32 + *(v33 + 48), &qword_10021DAD0);
  sub_10000D52C(v27, &qword_10021DAD0);
  sub_10000D52C(v22, &qword_10021DAE8);
  sub_10000D52C(v31, &qword_10021DAD0);
  return sub_10000D52C(v20, &qword_10021DAE8);
}

uint64_t sub_1000C32D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100009F70(&qword_10021DB08);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v51 - v6;
  v7 = sub_100009F70(&qword_10021DB10);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = __chkstk_darwin(v7);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v52 = a1;
  v12 = a1[1];
  v60 = *a1;
  v61 = v12;
  v13 = sub_100027068();

  v51 = v13;
  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10000D60C(v14, v16, v13 & 1);

  v60 = v18;
  v61 = v20;
  v62 = v22 & 1;
  v63 = v24;
  v55 = v11;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v18, v20, v22 & 1);

  v25 = v52[3];
  if (v25)
  {
    v60 = v52[2];
    v61 = v25;

    v26 = Text.init<A>(_:)();
    v28 = v27;
    v30 = v29;
    static Font.subheadline.getter();
    v31 = Text.font(_:)();
    v33 = v32;
    v35 = v34;

    sub_10000D60C(v26, v28, v30 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v60 = qword_100230570;

    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_10000D60C(v31, v33, v35 & 1);

    v60 = v36;
    v61 = v38;
    v62 = v40 & 1;
    v63 = v42;
    v43 = v56;
    View.accessibilityIdentifier(_:)();
    sub_10000D60C(v36, v38, v40 & 1);

    v44 = v57;
    sub_10000F618(v43, v57, &qword_10021DB10);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v43 = v56;
    v44 = v57;
  }

  (*(v53 + 56))(v44, v45, 1, v54);
  v46 = v55;
  sub_10000D58C(v55, v43, &qword_10021DB10);
  v47 = v58;
  sub_10000D58C(v44, v58, &qword_10021DB08);
  v48 = v59;
  sub_10000D58C(v43, v59, &qword_10021DB10);
  v49 = sub_100009F70(&qword_10021DB18);
  sub_10000D58C(v47, v48 + *(v49 + 48), &qword_10021DB08);
  sub_10000D52C(v44, &qword_10021DB08);
  sub_10000D52C(v46, &qword_10021DB10);
  sub_10000D52C(v47, &qword_10021DB08);
  return sub_10000D52C(v43, &qword_10021DB10);
}

uint64_t sub_1000C37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7 - 8);
  v33 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000B3DC(&qword_10021DA50);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v9;
  v40 = AssociatedTypeWitness;
  v41 = v11;
  v42 = WitnessTable;
  v43 = AssociatedConformanceWitness;
  v28[1] = type metadata accessor for ForEach();
  v38 = sub_1000C5148();
  v28[0] = swift_getWitnessTable();
  v14 = type metadata accessor for LazyHGrid();
  v32 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v28 - v15;
  v17 = swift_getWitnessTable();
  v39 = v14;
  v40 = v17;
  v29 = v17;
  v30 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v28 - v22;
  type metadata accessor for UpcomingViewModel();
  sub_1000F733C();
  static VerticalAlignment.top.getter();
  v35 = a2;
  v36 = a3;
  v37 = a1;
  sub_1000C10FC();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v24 = v29;
  View.scrollTargetLayout(isEnabled:)();
  (*(v32 + 8))(v16, v14);
  v39 = v14;
  v40 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v31 + 8);
  v26(v21, OpaqueTypeMetadata2);
  sub_100157EFC(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1000C3BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v36 = a3;
  v38 = type metadata accessor for UpcomingModule();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v30 - v8;
  v9 = type metadata accessor for Array();
  v35 = v9;
  v30 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v11 = sub_10000B3DC(&qword_10021DA50);
  v33 = v11;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v9;
  v42 = AssociatedTypeWitness;
  v43 = v11;
  v44 = WitnessTable;
  v45 = AssociatedConformanceWitness;
  v14 = type metadata accessor for ForEach();
  v37 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  v41 = *(a1 + 40);
  v20 = v31;
  v21 = a1;
  v22 = v38;
  (*(v7 + 16))(v31, v21, v38);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = a2;
  *(v24 + 24) = v25;
  (*(v7 + 32))(v24 + v23, v20, v22);
  v26 = sub_1000C5148();

  ForEach<>.init(_:content:)();
  v40 = v26;
  v27 = swift_getWitnessTable();
  sub_100157EFC(v17, v14, v27);
  v28 = *(v37 + 8);
  v28(v17, v14);
  sub_100157EFC(v19, v14, v27);
  return (v28)(v19, v14);
}

uint64_t sub_1000C3F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a2;
  v93 = a5;
  v94 = a1;
  v7 = type metadata accessor for PlainButtonStyle();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = __chkstk_darwin(v7);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a3 - 8);
  __chkstk_darwin(v8);
  v71 = v10;
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UpcomingModule();
  v69 = *(v70 - 8);
  v67 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v66 - v11;
  v78 = sub_100009F70(&qword_10021DA78);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v66 - v12;
  v84 = sub_100009F70(&qword_10021DA70);
  v79 = *(v84 - 8);
  __chkstk_darwin(v84);
  v77 = &v66 - v13;
  v14 = sub_100009F70(&qword_10021DAB0);
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v80 = &v66 - v15;
  v16 = sub_100009F70(&qword_10021DA68);
  v91 = *(v16 - 8);
  v92 = v16;
  __chkstk_darwin(v16);
  v76 = &v66 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v21 = &v66 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v88 = type metadata accessor for Optional();
  v24 = *(v88 - 8);
  __chkstk_darwin(v88);
  v26 = &v66 - v25;
  v27 = *(a4 + 176);
  v89 = a3;
  v87 = a4;
  v27(a3, a4);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v19 + 8))(v21, AssociatedTypeWitness);
  v28 = *(v23 - 8);
  if ((*(v28 + 48))(v26, 1, v23) == 1)
  {
    (*(v24 + 8))(v26, v88);
LABEL_5:
    v64 = 1;
    v63 = v93;
    return (*(v91 + 56))(v63, v64, 1, v92);
  }

  v29 = swift_getAssociatedConformanceWitness();
  v30 = (*(v29 + 24))(v23, v29);
  v32 = v31;
  (*(v28 + 8))(v26, v23);
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = v69;
  v34 = v68;
  v35 = v70;
  (*(v69 + 16))(v68, v90, v70);
  v36 = v73;
  v37 = *(v73 + 16);
  v38 = v72;
  v88 = v32;
  v39 = v89;
  v37(v72, v94);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v36 + 80);
  v42 = v67 + v41 + v40;
  v67 = v30;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  v45 = v87;
  *(v44 + 16) = v39;
  *(v44 + 24) = v45;
  (*(v33 + 32))(v44 + v40, v34, v35);
  v46 = (*(v36 + 32))(v44 + v43, v38, v39);
  __chkstk_darwin(v46);
  *(&v66 - 6) = v39;
  *(&v66 - 5) = v45;
  v47 = v94;
  *(&v66 - 4) = v90;
  *(&v66 - 3) = v47;
  v48 = v88;
  *(&v66 - 2) = v67;
  *(&v66 - 1) = v48;
  sub_100009F70(&qword_10021DAB8);
  sub_1000C5990();
  v49 = v74;
  Button.init(action:label:)();

  v50 = v81;
  PlainButtonStyle.init()();
  v51 = sub_10000D1EC(&qword_10021DA80, &qword_10021DA78);
  v52 = sub_1000C5A78(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v53 = v77;
  v54 = v78;
  v55 = v86;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v50, v55);
  (*(v75 + 8))(v49, v54);
  LODWORD(v88) = static Axis.Set.horizontal.getter();
  static Alignment.leading.getter();
  v56 = swift_allocObject();
  *(v56 + 16) = v89;
  *(v56 + 24) = v45;
  v95 = v54;
  v96 = v55;
  v97 = v51;
  v98 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v80;
  v59 = v84;
  View.containerRelativeFrame(_:alignment:_:)();

  (*(v79 + 8))(v53, v59);
  type metadata accessor for UpcomingViewModel();
  sub_1000F7778();
  v95 = v59;
  v96 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v60 = v76;
  v61 = v83;
  View.accessibilitySortPriority(_:)();
  (*(v82 + 8))(v58, v61);
  v62 = v93;
  sub_10000F618(v60, v93, &qword_10021DA68);
  v63 = v62;
  v64 = 0;
  return (*(v91 + 56))(v63, v64, 1, v92);
}

uint64_t sub_1000C4A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(a3 - 8);
  (*(v10 + 16))(&v14 - v8, a2, a3);
  (*(v10 + 56))(v9, 0, 1, a3);
  v11 = type metadata accessor for UpcomingViewModel();
  sub_1000F7A90(v9);
  (*(v7 + 8))(v9, v6);
  if (*(a1 + *(type metadata accessor for UpcomingModule() + 36)))
  {

    sub_1000F749C(v12, v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a2;
  v62 = a7;
  v12 = type metadata accessor for DateInterval();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = &v48 - v16;
  v64 = a5;
  v18 = swift_getAssociatedTypeWitness();
  v63 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v57 = type metadata accessor for UpcomingModuleItem();
  __chkstk_darwin(v57);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 32) == 1)
  {
    v23 = v64;
    v56 = (*(a6 + 136))(v64, a6);
    v61 = v24;
    v53 = *(a6 + 168);
    (v53)(v23, a6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = sub_1000FC968(v18, AssociatedConformanceWitness);
    v54 = v26;
    v55 = v25;
    v27 = *(v63 + 8);
    v27(v20, v18);
    v28 = v23;
    v29 = v18;
    v30 = v53;
    (v53)(v28, a6);
    v31 = sub_1000FCDF0(v29, AssociatedConformanceWitness);
    v33 = v32;
    v27(v20, v29);
    v34 = v31;
  }

  else
  {
    AssociatedConformanceWitness = v18;
    v56 = a3;
    v51 = *(a6 + 176);
    v35 = v51;
    v61 = a4;

    v53 = v20;
    v50 = v15;
    v36 = v64;
    v35(v64, a6);
    v37 = swift_getAssociatedConformanceWitness();
    v49 = *(v37 + 48);
    v38 = v49(AssociatedTypeWitness, v37);
    v54 = v39;
    v55 = v38;
    v50 = *(v50 + 8);
    (v50)(v17, AssociatedTypeWitness);
    v40 = v36;
    v29 = AssociatedConformanceWitness;
    v51(v40, a6);
    v34 = v49(AssociatedTypeWitness, v37);
    v33 = v41;
    (v50)(v17, AssociatedTypeWitness);
    v20 = v53;
    v30 = *(a6 + 168);
  }

  (v30)(v64, a6);
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v58;
  sub_1000FBF34(v29, v42, v58);
  (*(v63 + 8))(v20, v29);
  DateInterval.start.getter();
  (*(v59 + 8))(v43, v60);
  v44 = v61;
  v45 = v62;
  *v22 = v56;
  v22[1] = v44;
  v46 = v54;
  v22[2] = v55;
  v22[3] = v46;
  v22[4] = v34;
  v22[5] = v33;
  sub_1000C6584(v22, v45);
  result = sub_100009F70(&qword_10021DAB8);
  *(v45 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1000C5148()
{
  result = qword_10021DA58;
  if (!qword_10021DA58)
  {
    sub_10000B3DC(&qword_10021DA50);
    sub_1000C51CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA58);
  }

  return result;
}

unint64_t sub_1000C51CC()
{
  result = qword_10021DA60;
  if (!qword_10021DA60)
  {
    sub_10000B3DC(&qword_10021DA68);
    sub_10000B3DC(&qword_10021DA70);
    sub_10000B3DC(&qword_10021DA78);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021DA80, &qword_10021DA78);
    sub_1000C5A78(&qword_100218810, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000C5A78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA60);
  }

  return result;
}

unint64_t sub_1000C539C()
{
  result = qword_10021DA98;
  if (!qword_10021DA98)
  {
    sub_10000B3DC(&qword_10021DA48);
    sub_10000D1EC(&qword_10021DAA0, &qword_10021DA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA98);
  }

  return result;
}

uint64_t sub_1000C5460()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UpcomingModule();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  v4 = v3 + *(type metadata accessor for UpcomingViewModel() + 48);

  type metadata accessor for Optional();
  v5 = *(type metadata accessor for Binding() + 32);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v1))
  {
    (*(v6 + 8))(v4 + v5, v1);
  }

  sub_100027EB0(*(v3 + *(v2 + 40)), *(v3 + *(v2 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000C5604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UpcomingModule() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000C3F4C(a1, v8, v5, v6, a2);
}

uint64_t sub_1000C56A0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UpcomingModule();
  v3 = *(*(v2 - 8) + 80);
  v10 = *(*(v2 - 8) + 64);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v4 + *(type metadata accessor for UpcomingViewModel() + 48);

  type metadata accessor for Optional();
  v8 = *(type metadata accessor for Binding() + 32);
  if (!(*(v5 + 48))(v7 + v8, 1, v1))
  {
    (*(v5 + 8))(v7 + v8, v1);
  }

  sub_100027EB0(*(v0 + v4 + *(v2 + 40)), *(v0 + v4 + *(v2 + 40) + 8));
  (*(v5 + 8))(v0 + ((v4 + v10 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C58A8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for UpcomingModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1000C4A10(v0 + v3, v4, v1);
}

unint64_t sub_1000C5990()
{
  result = qword_10021DAC0;
  if (!qword_10021DAC0)
  {
    sub_10000B3DC(&qword_10021DAB8);
    sub_1000C5A78(&qword_10021DAC8, type metadata accessor for UpcomingModuleItem);
    sub_10000D1EC(&qword_100219D48, &qword_100219D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DAC0);
  }

  return result;
}

uint64_t sub_1000C5A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for UpcomingModuleItem()
{
  result = qword_10021DB78;
  if (!qword_10021DB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DBC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_100009F70(&qword_10021DBC8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_100009F70(&qword_10021DBD0);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_100009F70(&qword_10021DBD8);
  v16 = __chkstk_darwin(v15 - 8);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = type metadata accessor for CalendarIcon();
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  v27 = *(type metadata accessor for UpcomingModuleItem() + 28);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 16))(v26, a1 + v27, v28);
  v29 = *(v21 + 28);
  *&v26[v29] = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v30 = sub_100009F70(&qword_10021DBE0);
  sub_1000C60D0(a1, &v7[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v7, v10, &qword_10021DBC0);
  v31 = &v10[*(v8 + 36)];
  v32 = v56;
  *(v31 + 4) = v55;
  *(v31 + 5) = v32;
  *(v31 + 6) = v57;
  v33 = v52;
  *v31 = v51;
  *(v31 + 1) = v33;
  v34 = v54;
  *(v31 + 2) = v53;
  *(v31 + 3) = v34;
  v35 = v42;
  static AccessibilityChildBehavior.combine.getter();
  v36 = sub_1000C6B58();
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v35, v47);
  sub_10000D52C(v10, &qword_10021DBC8);
  v49 = v8;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v14, v37);
  sub_1000C6C10(v26, v24);
  v38 = v43;
  sub_10000D58C(v19, v43, &qword_10021DBD8);
  v39 = v48;
  sub_1000C6C10(v24, v48);
  v40 = sub_100009F70(&qword_10021DBF8);
  sub_10000D58C(v38, v39 + *(v40 + 48), &qword_10021DBD8);
  sub_10000D52C(v19, &qword_10021DBD8);
  sub_1000C6C74(v26);
  sub_10000D52C(v38, &qword_10021DBD8);
  return sub_1000C6C74(v24);
}

uint64_t sub_1000C60D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = sub_100009F70(&qword_1002197C0);
  v3 = __chkstk_darwin(v44);
  v48 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v47 = v43 - v6;
  v7 = __chkstk_darwin(v5);
  v46 = v43 - v8;
  __chkstk_darwin(v7);
  v10 = v43 - v9;

  static Font.body.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  KeyPath = swift_getKeyPath();
  v50 = v11;
  v51 = v13;
  v19 = v15 & 1;
  v52 = v15 & 1;
  v53 = v17;
  v54 = KeyPath;
  v55 = 1;
  v56 = 0;
  v20 = sub_100009F70(&qword_1002197F0);
  v21 = sub_10002764C();
  v45 = v10;
  v43[0] = v21;
  v43[1] = v20;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v11, v13, v19);

  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v50 = qword_100230570;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10000D60C(v22, v24, v26 & 1);

  v34 = swift_getKeyPath();
  v50 = v27;
  v51 = v29;
  v31 &= 1u;
  v52 = v31;
  v53 = v33;
  v54 = v34;
  v55 = 1;
  v56 = 0;
  v35 = v47;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v27, v29, v31);

  v36 = *(a1 + 40);
  v50 = *(a1 + 32);
  v51 = v36;
  sub_100027068();
  v37 = v46;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10000D52C(v35, &qword_1002197C0);
  v38 = v45;
  sub_10000D58C(v45, v35, &qword_1002197C0);
  v39 = v48;
  sub_10000D58C(v37, v48, &qword_1002197C0);
  v40 = v49;
  sub_10000D58C(v35, v49, &qword_1002197C0);
  v41 = sub_100009F70(&qword_10021DC00);
  sub_10000D58C(v39, v40 + *(v41 + 48), &qword_1002197C0);
  sub_10000D52C(v37, &qword_1002197C0);
  sub_10000D52C(v38, &qword_1002197C0);
  sub_10000D52C(v39, &qword_1002197C0);
  return sub_10000D52C(v35, &qword_1002197C0);
}

uint64_t sub_1000C6530@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100009F70(&qword_10021DBB8);
  return sub_1000C5B50(v1, a1 + *(v3 + 44));
}

uint64_t sub_1000C6584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpcomingModuleItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C65FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C66BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C6760()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C67E4()
{
  sub_10000B3DC(&qword_10021DA48);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021DA50);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1000C5148();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

unint64_t sub_1000C6B58()
{
  result = qword_10021DBE8;
  if (!qword_10021DBE8)
  {
    sub_10000B3DC(&qword_10021DBC8);
    sub_10000D1EC(&qword_10021DBF0, &qword_10021DBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DBE8);
  }

  return result;
}

uint64_t sub_1000C6C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarIcon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C6C74(uint64_t a1)
{
  v2 = type metadata accessor for CalendarIcon();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C6D1C()
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

uint64_t sub_1000C6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  sub_1000C75D4(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1000C6EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 88);
  if (v3 && *(v3 + 16))
  {

    v4 = sub_1000D8558(2u);
    if (v5)
    {
      v6 = *(*(v3 + 56) + v4);

      if (v6 <= 1 && v6)
      {

        v7 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v8 ^ 1;
      }
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & (*(v2 + *(*v2 + 120)) != 0);
}

uint64_t sub_1000C7028(char a1)
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
    sub_1000C74FC();
  }

  return result;
}

void sub_1000C716C(uint64_t a1)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v5 = v1[3];
  v4 = v1[4];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + *(*v1 + 136));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 4;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001B4EC0;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001666DC(1, 5, 1, inited);
  v13 = v9;
  sub_1000109BC(&aBlock, v20);
  sub_1000EB0D0(4, v20, &v13, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001BDDE0;
  v11[4] = v9;
  v18 = sub_100010AAC;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020DF60;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1000C73E8()
{
  swift_getKeyPath();
  sub_1000C745C();

  return *(v0 + 16);
}

uint64_t *sub_1000C75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  *(v5 + 16) = 0;
  v12 = v5 + *(v11 + 128);
  *v12 = LocalizedStringKey.init(stringLiteral:)();
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  *(v12 + 24) = v15;
  ObservationRegistrar.init()();
  v5[3] = a1;
  v5[4] = a2;
  (*(*(*(v11 + 80) - 8) + 32))(v5 + *(*v5 + 112), a3);
  *(v5 + *(*v5 + 120)) = a4;
  *(v5 + *(*v5 + 136)) = a5;
  return v5;
}

uint64_t *sub_1000C7714()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 144);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000C7828()
{
  sub_1000C7714();

  return swift_deallocClassInstance();
}

__n128 sub_1000C78AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000C78B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C78F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C7910()
{
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_100022910();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000C7A40(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009F70(&qword_100218950);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = sub_100009F70(&qword_1002195B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[16]];

  return v15(v16, a2, v14);
}

char *sub_1000C7BE4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_100218950);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = sub_100009F70(&qword_1002195B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[16]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000C7DD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001B30C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000C7ED4@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v9;
  a1[1] = v10;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  a1[2] = EnvironmentObject.init()();
  a1[3] = v2;
  v3 = type metadata accessor for PromotionalAssetsView();
  v4 = v3[14];
  *(a1 + v4) = swift_getKeyPath();
  sub_100009F70(&qword_100219710);
  swift_storeEnumTagMultiPayload();
  v5 = v3[15];
  *(a1 + v5) = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  v6 = v3[16];
  *(a1 + v6) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8);
  swift_storeEnumTagMultiPayload();
  v7 = v3[17];
  *(a1 + v7) = swift_getKeyPath();
  return swift_storeEnumTagMultiPayload();
}

double sub_1000C8088@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000C809C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_1000C80F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_1000C8158(uint64_t a1)
{
  if (static Solarium.isEnabled.getter())
  {
    v2 = 0;
  }

  else
  {
    sub_1000C809C(a1);
    sub_10001A39C();

    v2 = static Visibility.== infix(_:_:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000C81B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v181 = sub_100009F70(&qword_100219278);
  v3 = __chkstk_darwin(v181);
  v171 = &v130 - v4;
  v188 = *(a1 - 1);
  v183 = *(v188 + 64);
  __chkstk_darwin(v3);
  v185 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoordinateSpace();
  v175 = *(v6 - 8);
  v176 = v6;
  __chkstk_darwin(v6);
  v174 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for NavigationPath();
  *&v186 = a1[4];
  *&v187 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1000D29C4();
  v221 = WitnessTable;
  v222 = v12;
  v220 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v208 = v10;
  v209 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  v208 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  type metadata accessor for ModifiedContent();
  v209 = type metadata accessor for Optional();
  v184 = a1;
  v14 = a1[5];
  v170 = a1[3];
  v173 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for SetlistView();
  v16 = swift_getWitnessTable();
  v216 = v15;
  v217 = v16;
  swift_getOpaqueTypeMetadata2();
  v169 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40);
  type metadata accessor for _ConditionalContent();
  v210 = type metadata accessor for Optional();
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v216 = AssociatedTypeWitness;
  v217 = v17;
  v218 = AssociatedConformanceWitness;
  v219 = v18;
  type metadata accessor for PhoneWallpapersWatchFacesView();
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v211 = type metadata accessor for Optional();
  v212 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v19 = type metadata accessor for ScrollView();
  v20 = swift_getWitnessTable();
  v208 = v19;
  v209 = v20;
  swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for ModifiedContent();
  v208 = v19;
  v209 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v215 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v180 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v22 = swift_getWitnessTable();
  v208 = v21;
  v209 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v208 = v21;
  v209 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_100027068();
  v208 = OpaqueTypeMetadata2;
  v209 = &type metadata for String;
  v210 = v24;
  v211 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = sub_10000B3DC(&qword_10021DD48);
  v208 = OpaqueTypeMetadata2;
  v209 = &type metadata for String;
  v210 = v24;
  v211 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v208 = v26;
  v209 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v208 = &type metadata for Solarium;
  v209 = &protocol witness table for Solarium;
  v30 = swift_getOpaqueTypeConformance2();
  v208 = v26;
  v209 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v208 = v26;
  v209 = v27;
  v210 = v29;
  v211 = v28;
  v212 = v30;
  v213 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v208 = v26;
  v209 = v27;
  v210 = v29;
  v211 = v28;
  v212 = v30;
  v213 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10001EA38();
  v208 = v32;
  v209 = &type metadata for CGFloat;
  v210 = v33;
  v211 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = sub_10000B3DC(&qword_10021DD50);
  v208 = v32;
  v209 = &type metadata for CGFloat;
  v210 = v33;
  v211 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_10000D1EC(&qword_10021DD58, &qword_10021DD50);
  v208 = v35;
  v209 = v36;
  v210 = v37;
  v211 = v38;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD60);
  v39 = type metadata accessor for ModifiedContent();
  v208 = v35;
  v209 = v36;
  v210 = v37;
  v211 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_10000D1EC(&qword_10021DD68, &qword_10021DD60);
  v206 = v40;
  v207 = v41;
  v158 = v39;
  v157 = swift_getWitnessTable();
  v42 = type metadata accessor for NavigationStack();
  v161 = *(v42 - 8);
  __chkstk_darwin(v42);
  v151 = &v130 - v43;
  sub_10000B3DC(&qword_10021DD70);
  v44 = type metadata accessor for ModifiedContent();
  v164 = *(v44 - 8);
  __chkstk_darwin(v44);
  v150 = &v130 - v45;
  sub_10000B3DC(&qword_10021DD78);
  v134 = v44;
  v46 = type metadata accessor for ModifiedContent();
  v162 = *(v46 - 8);
  __chkstk_darwin(v46);
  v160 = &v130 - v47;
  sub_10000B3DC(&qword_10021DD80);
  v135 = v46;
  v48 = type metadata accessor for ModifiedContent();
  v165 = *(v48 - 8);
  __chkstk_darwin(v48);
  v159 = &v130 - v49;
  sub_10000B3DC(&qword_10021DD88);
  v137 = v48;
  v50 = type metadata accessor for ModifiedContent();
  v166 = *(v50 - 8);
  __chkstk_darwin(v50);
  v179 = &v130 - v51;
  v141 = v50;
  v52 = type metadata accessor for ModifiedContent();
  v167 = *(v52 - 8);
  __chkstk_darwin(v52);
  v178 = &v130 - v53;
  v146 = v52;
  v54 = type metadata accessor for ModifiedContent();
  v168 = *(v54 - 8);
  __chkstk_darwin(v54);
  v163 = &v130 - v55;
  v56 = swift_getWitnessTable();
  v131 = v56;
  v57 = sub_10000D1EC(&qword_10021DD90, &qword_10021DD70);
  v204 = v56;
  v205 = v57;
  v58 = swift_getWitnessTable();
  v132 = v58;
  v59 = sub_10000D1EC(&qword_10021DD98, &qword_10021DD78);
  v202 = v58;
  v203 = v59;
  v60 = swift_getWitnessTable();
  v133 = v60;
  v61 = sub_10000D1EC(&qword_10021DDA0, &qword_10021DD80);
  v200 = v60;
  v201 = v61;
  v62 = swift_getWitnessTable();
  v136 = v62;
  v63 = sub_10000D1EC(&qword_10021DDA8, &qword_10021DD88);
  v198 = v62;
  v199 = v63;
  v138 = swift_getWitnessTable();
  v196 = v138;
  v197 = &protocol witness table for _AppearanceActionModifier;
  v145 = swift_getWitnessTable();
  v194 = v145;
  v195 = &protocol witness table for _AppearanceActionModifier;
  v64 = swift_getWitnessTable();
  v65 = sub_10001E89C();
  v142 = v54;
  v143 = v64;
  v66 = v181;
  v208 = v54;
  v209 = v181;
  v210 = v64;
  v211 = v65;
  v67 = v65;
  v153 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v68 = swift_getOpaqueTypeMetadata2();
  v148 = v68;
  v156 = *(v68 - 8);
  __chkstk_darwin(v68);
  v177 = &v130 - v69;
  v208 = v54;
  v209 = v66;
  v210 = v64;
  v211 = v67;
  v139 = v67;
  v147 = swift_getOpaqueTypeConformance2();
  v208 = v68;
  v209 = v66;
  v210 = v147;
  v211 = v67;
  v149 = swift_getOpaqueTypeMetadata2();
  v154 = *(v149 - 8);
  __chkstk_darwin(v149);
  v140 = &v130 - v70;
  v155 = type metadata accessor for ModifiedContent();
  v169 = *(v155 - 8);
  v71 = __chkstk_darwin(v155);
  v144 = &v130 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v152 = &v130 - v73;
  *&v74 = v187;
  *(&v74 + 1) = v170;
  *&v75 = v186;
  *(&v75 + 1) = v173;
  v186 = v75;
  v187 = v74;
  v189 = v74;
  v190 = v75;
  v76 = v182;
  v191 = v182;
  v77 = v151;
  NavigationStack.init<>(root:)();
  v170 = sub_1000D2A30();
  v79 = v174;
  v78 = v175;
  v80 = v176;
  v175[13](v174, enum case for CoordinateSpace.local(_:), v176);
  v81 = v150;
  sub_10007EDF4(&type metadata for PromotionalAssetsViewSizePreferenceKey, v79, sub_1000D4C30, 0, v42, v131, v150);
  (v78[1])(v79, v80);
  (*(v161 + 8))(v77, v42);
  v82 = v188;
  v83 = *(v188 + 16);
  v173 = v188 + 16;
  v174 = v83;
  v85 = v184;
  v84 = v185;
  (v83)(v185, v76, v184);
  v176 = *(v82 + 80);
  v86 = (v176 + 48) & ~v176;
  v87 = swift_allocObject();
  v88 = v186;
  *(v87 + 16) = v187;
  *(v87 + 32) = v88;
  v89 = *(v82 + 32);
  v188 = v82 + 32;
  v175 = v89;
  (v89)(v87 + v86, v84, v85);
  sub_1000D3348(&qword_10021DDB8, type metadata accessor for CGSize);
  v90 = v160;
  v91 = v134;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v164 + 8))(v81, v91);
  v170 = sub_1000D2B34();
  v92 = v159;
  v93 = v135;
  sub_10007EFB4();
  (*(v162 + 8))(v90, v93);
  v94 = v185;
  v95 = v182;
  v96 = v174;
  (v174)(v185, v182, v85);
  v161 = v86;
  v97 = swift_allocObject();
  v98 = v186;
  *(v97 + 16) = v187;
  *(v97 + 32) = v98;
  (v175)(v97 + v86, v94, v85);
  sub_10001E738();
  v99 = v137;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v165 + 8))(v92, v99);
  v100 = v185;
  (v96)(v185, v95, v85);
  v101 = v161;
  v102 = swift_allocObject();
  v103 = v186;
  *(v102 + 16) = v187;
  *(v102 + 32) = v103;
  v104 = v175;
  (v175)(v102 + v101, v100, v85);
  v105 = v179;
  v106 = v141;
  View.onAppear(perform:)();

  (*(v166 + 8))(v105, v106);
  v107 = v184;
  (v174)(v100, v95, v184);
  v108 = swift_allocObject();
  v109 = v186;
  *(v108 + 16) = v187;
  *(v108 + 32) = v109;
  v104(v108 + v101, v100, v107);
  v110 = v163;
  v111 = v146;
  v112 = v178;
  View.onDisappear(perform:)();

  (*(v167 + 8))(v112, v111);
  v113 = v171;
  sub_100023FFC(v171);
  v114 = v142;
  v115 = v181;
  v116 = v139;
  View.onChange<A>(of:initial:_:)();
  sub_10000D52C(v113, &qword_100219278);
  (*(v168 + 8))(v110, v114);
  sub_100023FFC(v113);
  v117 = v140;
  v119 = v147;
  v118 = v148;
  v120 = v177;
  View.onChange<A>(of:initial:_:)();
  sub_10000D52C(v113, &qword_100219278);
  (*(v156 + 8))(v120, v118);
  v208 = v118;
  v209 = v115;
  v210 = v119;
  v211 = v116;
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v144;
  v123 = v149;
  View.accessibilityIdentifier(_:)();
  (*(v154 + 8))(v117, v123);
  v124 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v192 = v121;
  v193 = v124;
  v125 = v155;
  v126 = swift_getWitnessTable();
  v127 = v152;
  sub_100157EFC(v122, v125, v126);
  v128 = *(v169 + 8);
  v128(v122, v125);
  sub_100157EFC(v127, v125, v126);
  return (v128)(v127, v125);
}

uint64_t sub_1000C9AA0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v182 = a3;
  v181 = a1;
  v175 = a6;
  v173 = sub_100009F70(&qword_100219278);
  __chkstk_darwin(v173);
  v174 = v119 - v10;
  v190 = a2;
  v191 = a3;
  v192 = a4;
  v193 = a5;
  v177 = type metadata accessor for PromotionalAssetsView();
  v172 = *(v177 - 8);
  v170 = *(v172 + 64);
  __chkstk_darwin(v177);
  v171 = v119 - v11;
  v176 = sub_100009F70(&qword_10021DD48);
  v169 = *(v176 - 8);
  __chkstk_darwin(v176);
  v168 = v119 - v12;
  v13 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v166 = *(v13 - 8);
  v167 = v13;
  __chkstk_darwin(v13);
  v165 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrollIndicatorVisibility();
  v163 = *(v15 - 8);
  v164 = v15;
  __chkstk_darwin(v15);
  v121 = v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = a2;
  v179 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  v19 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1000D29C4();
  v203 = WitnessTable;
  v204 = v21;
  v202 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v190 = v19;
  v191 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  v190 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  type metadata accessor for ModifiedContent();
  v191 = type metadata accessor for Optional();
  v180 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for SetlistView();
  v24 = swift_getWitnessTable();
  v198 = v23;
  v199 = v24;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40);
  type metadata accessor for _ConditionalContent();
  v192 = type metadata accessor for Optional();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v198 = AssociatedTypeWitness;
  v199 = v25;
  v200 = AssociatedConformanceWitness;
  v201 = v26;
  type metadata accessor for PhoneWallpapersWatchFacesView();
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v27 = v176;
  type metadata accessor for _ConditionalContent();
  v193 = type metadata accessor for Optional();
  v194 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  *&v120 = type metadata accessor for VStack();
  v119[1] = swift_getWitnessTable();
  v28 = type metadata accessor for ScrollView();
  v123 = *(v28 - 8);
  __chkstk_darwin(v28);
  v119[0] = v119 - v29;
  v30 = swift_getWitnessTable();
  v190 = v28;
  v191 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v158 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v154 = v119 - v32;
  v160 = v33;
  v34 = type metadata accessor for ModifiedContent();
  v161 = *(v34 - 8);
  __chkstk_darwin(v34);
  v157 = v119 - v35;
  v124 = v28;
  v190 = v28;
  v191 = v30;
  v122 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v196 = OpaqueTypeConformance2;
  v197 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v36 = swift_getWitnessTable();
  v190 = v34;
  v191 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v153 = *(v37 - 8);
  __chkstk_darwin(v37);
  v150 = v119 - v38;
  v130 = v34;
  v190 = v34;
  v191 = v36;
  v136 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_100027068();
  v190 = v37;
  v191 = &type metadata for String;
  v192 = v39;
  v193 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v159 = *(v41 - 8);
  __chkstk_darwin(v41);
  v155 = v119 - v42;
  v156 = v37;
  v190 = v37;
  v191 = &type metadata for String;
  v141 = v39;
  v192 = v39;
  v193 = v40;
  v139 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v190 = v41;
  v191 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v190 = &type metadata for Solarium;
  v191 = &protocol witness table for Solarium;
  v45 = swift_getOpaqueTypeConformance2();
  v190 = v41;
  v191 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v190 = v41;
  v191 = v27;
  v192 = v44;
  v193 = v43;
  v194 = v45;
  v195 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v149 = *(v47 - 8);
  __chkstk_darwin(v47);
  v145 = v43;
  v146 = v119 - v48;
  v162 = v41;
  v190 = v41;
  v191 = v27;
  v128 = v44;
  v129 = v45;
  v192 = v44;
  v193 = v43;
  v194 = v45;
  v195 = v46;
  v125 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10001EA38();
  v190 = v47;
  v191 = &type metadata for CGFloat;
  v192 = v49;
  v193 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v143 = *(v51 - 8);
  __chkstk_darwin(v51);
  v135 = v119 - v52;
  v53 = sub_10000B3DC(&qword_10021DD50);
  v152 = v47;
  v190 = v47;
  v191 = &type metadata for CGFloat;
  v131 = v49;
  v192 = v49;
  v193 = v50;
  v126 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_10000D1EC(&qword_10021DD58, &qword_10021DD50);
  v148 = v51;
  v190 = v51;
  v191 = v53;
  v138 = v53;
  v56 = v119[0];
  v133 = v54;
  v192 = v54;
  v193 = v55;
  v127 = v55;
  v57 = swift_getOpaqueTypeMetadata2();
  v140 = *(v57 - 8);
  __chkstk_darwin(v57);
  v132 = v119 - v58;
  sub_10000B3DC(&qword_10021DD60);
  v144 = v57;
  v151 = type metadata accessor for ModifiedContent();
  v147 = *(v151 - 8);
  v59 = __chkstk_darwin(v151);
  v137 = v119 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v142 = v119 - v61;
  v183 = v178;
  v184 = v182;
  v185 = v179;
  v186 = v180;
  v187 = v181;
  static Axis.Set.vertical.getter();
  sub_1001511F4();
  v62 = v121;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  v120 = xmmword_1001ACB00;
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v46) = static Axis.Set.vertical.getter();
  *(inited + 32) = v46;
  v64 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v64;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v46)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v64)
  {
    Axis.Set.init(rawValue:)();
  }

  v65 = v154;
  v66 = v124;
  View.scrollIndicators(_:axes:)();
  (*(v163 + 8))(v62, v164);
  (*(v123 + 8))(v56, v66);
  sub_100009F70(&qword_100218DC0);
  v67 = swift_initStackObject();
  *(v67 + 16) = v120;
  v68 = static Edge.Set.top.getter();
  *(v67 + 32) = v68;
  v69 = static Edge.Set.bottom.getter();
  *(v67 + 33) = v69;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v68)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v69)
  {
    Edge.Set.init(rawValue:)();
  }

  static SafeAreaRegions.all.getter();
  v70 = v157;
  v71 = v160;
  View.ignoresSafeArea(_:edges:)();
  (*(v158 + 8))(v65, v71);
  v73 = v165;
  v72 = v166;
  v74 = v167;
  (*(v166 + 104))(v165, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v167);
  v75 = v150;
  v76 = v130;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v72 + 8))(v73, v74);
  (*(v161 + 8))(v70, v76);
  sub_1000C809C(v177);
  v77 = sub_10001DC3C();
  v79 = v78;

  v190 = v77;
  v191 = v79;
  v81 = v155;
  v80 = v156;
  View.navigationTitle<A>(_:)();

  (*(v153 + 8))(v75, v80);
  Solarium.init()();
  v82 = v168;
  v83 = static ViewInputPredicate.! prefix(_:)();
  __chkstk_darwin(v83);
  v84 = v178;
  v85 = v182;
  v119[-6] = v178;
  v119[-5] = v85;
  v86 = v85;
  v87 = v180;
  v119[-4] = v179;
  v119[-3] = v87;
  swift_checkMetadataState();
  v118 = v125;
  v88 = v146;
  v89 = v162;
  v90 = v176;
  View.staticIf<A, B>(_:then:)();
  (*(v169 + 8))(v82, v90);
  (*(v159 + 8))(v81, v89);
  v92 = v171;
  v91 = v172;
  v93 = v181;
  v94 = v177;
  (*(v172 + 16))(v171, v181, v177);
  v95 = (*(v91 + 80) + 48) & ~*(v91 + 80);
  v96 = swift_allocObject();
  *(v96 + 2) = v84;
  *(v96 + 3) = v86;
  v98 = v179;
  v97 = v180;
  *(v96 + 4) = v179;
  *(v96 + 5) = v97;
  (*(v91 + 32))(&v96[v95], v92, v94);
  v118 = v126;
  v99 = v135;
  v100 = v152;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v101 = (*(v149 + 8))(v88, v100);
  __chkstk_darwin(v101);
  v102 = v182;
  v119[-6] = v178;
  v119[-5] = v102;
  v119[-4] = v98;
  v119[-3] = v97;
  v118 = v93;
  v104 = v132;
  v103 = v133;
  v105 = v148;
  v106 = v138;
  v107 = v127;
  View.toolbar<A>(content:)();
  (*(v143 + 8))(v99, v105);
  static Animation.easeInOut.getter();
  v108 = v174;
  sub_100023FFC(v174);
  v190 = v105;
  v191 = v106;
  v192 = v103;
  v193 = v107;
  v109 = swift_getOpaqueTypeConformance2();
  sub_10001E89C();
  v110 = v137;
  v111 = v144;
  View.animation<A>(_:value:)();

  sub_10000D52C(v108, &qword_100219278);
  (*(v140 + 8))(v104, v111);
  v112 = sub_10000D1EC(&qword_10021DD68, &qword_10021DD60);
  v188 = v109;
  v189 = v112;
  v113 = v151;
  v114 = swift_getWitnessTable();
  v115 = v142;
  sub_100157EFC(v110, v113, v114);
  v116 = *(v147 + 8);
  v116(v110, v113);
  sub_100157EFC(v115, v113, v114);
  return (v116)(v115, v113);
}

uint64_t sub_1000CB0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v20 = a4;
  v21 = a1;
  v22 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v35 = sub_1000D29C4();
  v33 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  v36 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  type metadata accessor for ModifiedContent();
  v37 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40);
  type metadata accessor for _ConditionalContent();
  v38 = type metadata accessor for Optional();
  v29 = AssociatedTypeWitness;
  v30 = swift_getAssociatedTypeWitness();
  v31 = AssociatedConformanceWitness;
  v32 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PhoneWallpapersWatchFacesView();
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v39 = type metadata accessor for Optional();
  v40 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  static HorizontalAlignment.leading.getter();
  v24 = a2;
  v25 = a3;
  v26 = v20;
  v27 = v23;
  v28 = v21;
  VStack.init(alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  sub_100157EFC(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_100157EFC(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1000CB74C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v532 = a5;
  v535 = a1;
  v499 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v502 = swift_getAssociatedConformanceWitness();
  v503 = v9;
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  v10 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v602 = sub_1000D29C4();
  v600 = swift_getWitnessTable();
  v516 = swift_getWitnessTable();
  *&v582 = v10;
  *(&v582 + 1) = v516;
  v520 = &opaque type descriptor for <<opaque return type of View.onScrollVisibilityChange(threshold:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  v517 = OpaqueTypeMetadata2;
  v12 = type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  v522 = v12;
  v530 = type metadata accessor for ModifiedContent();
  v519 = *(v530 - 8);
  v13 = __chkstk_darwin(v530);
  v529 = v476 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = v14;
  v15 = __chkstk_darwin(v13);
  v523 = v476 - v16;
  v525 = *(v12 - 8);
  v17 = __chkstk_darwin(v15);
  v528 = v476 - v18;
  v518 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(v17);
  v527 = v476 - v19;
  v20 = swift_checkMetadataState();
  v515 = *(v20 - 8);
  __chkstk_darwin(v20);
  v514 = v476 - v21;
  v536 = a2;
  v534 = a3;
  v537 = a3;
  v538 = a4;
  v22 = v532;
  v539 = v532;
  v23 = v535;
  v540 = v535;
  swift_checkMetadataState();
  Group<A>.init(content:)();
  *&v582 = a2;
  v531 = a2;
  *(&v582 + 1) = a3;
  v583 = a4;
  v521 = a4;
  v584 = v22;
  v24 = type metadata accessor for PromotionalAssetsView();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v526 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v476 - v526;
  v28 = *(v25 + 16);
  v510 = (v25 + 16);
  v511 = v26;
  v509 = v28;
  v29 = v23;
  v31 = v30;
  (v28)(v476 - v526, v29);
  v524 = *(v25 + 80);
  v507 = &v26[(v524 + 48) & ~v524];
  v508 = ((v524 + 48) & ~v524);
  v32 = v508;
  v33 = swift_allocObject();
  v34 = v534;
  *(v33 + 16) = a2;
  *(v33 + 24) = v34;
  *(v33 + 32) = a4;
  *(v33 + 40) = v22;
  v35 = *(v25 + 32);
  v36 = v31;
  v35(&v32[v33], v27, v31);
  v37 = v20;
  v38 = v516;
  v39 = v514;
  View.onScrollVisibilityChange(threshold:_:)();

  v40 = v39;
  v41 = v37;
  (*(v515 + 8))(v40, v37);
  v42 = type metadata accessor for CoordinateSpace();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v514 = v44;
  v494 = ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (v476 - v494);
  *&v582 = v41;
  *(&v582 + 1) = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v520 = sub_1000D30F8();
  v47 = *(v43 + 104);
  LODWORD(v492) = enum case for CoordinateSpace.local(_:);
  v493 = v43 + 104;
  v491 = v47;
  v47(v45);
  v48 = v517;
  v49 = v527;
  sub_10007EDF4(&type metadata for TourPhotosViewSizePreferenceKey, v45, sub_1000D4C30, 0, v517, OpaqueTypeConformance2, v528);
  v50 = *(v43 + 8);
  v515 = v43 + 8;
  v516 = v42;
  v490 = v50;
  (v50)(v45, v42);
  v51 = (*(v518 + 1))(v49, v48);
  __chkstk_darwin(v51);
  v52 = v476 - v526;
  (v509)(v476 - v526, v535, v36);
  v53 = swift_allocObject();
  v54 = v534;
  *(v53 + 16) = v531;
  *(v53 + 24) = v54;
  v55 = v532;
  *(v53 + 32) = v521;
  *(v53 + 40) = v55;
  v500 = v35;
  v501 = (v25 + 32);
  v35(&v508[v53], v52, v36);
  v56 = sub_10000D1EC(&qword_10021DDF8, &qword_10021DD20);
  v598 = OpaqueTypeConformance2;
  v599 = v56;
  v57 = v522;
  v58 = swift_getWitnessTable();
  v59 = sub_1000D3348(&qword_10021DDB8, type metadata accessor for CGSize);
  v60 = v523;
  v520 = v59;
  v61 = v528;
  View.onPreferenceChange<A>(_:perform:)();
  v62 = v36;

  (*(v525 + 8))(v61, v57);
  v63 = sub_10000D1EC(&qword_10021DE00, &qword_10021DD28);
  v596 = v58;
  v597 = v63;
  v64 = v530;
  v495 = swift_getWitnessTable();
  sub_100157EFC(v60, v64, v495);
  v496 = v519[1];
  v497 = v519 + 1;
  v496(v60, v64);
  v65 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  v522 = v66;
  v67 = type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  v68 = type metadata accessor for ModifiedContent();
  v69 = type metadata accessor for Optional();
  v528 = *(v69 - 8);
  v518 = *(v528 + 64);
  __chkstk_darwin(v69);
  v527 = v70;
  v71 = (v476 - v70);
  v533 = v62;
  sub_1000C809C(v62);
  LOBYTE(v60) = sub_10001BF70();

  v523 = v71;
  v505 = v68;
  v506 = v69;
  v504 = v67;
  if (v60)
  {
    v517 = v476;
    v489 = *(v68 - 8);
    v488 = v489[8];
    v73 = __chkstk_darwin(v72);
    v485 = (v476 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    v486 = v476;
    v487 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
    v75 = __chkstk_darwin(v73);
    v482 = v476 - v76;
    v484 = v476;
    v483 = *(v67 - 8);
    v77 = __chkstk_darwin(v75);
    v525 = v476 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    v481 = v476;
    v480 = *(v522 - 8);
    __chkstk_darwin(v77);
    v479 = v476 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for FeaturedVideosViewModel();
    v80 = v533;
    sub_1000C809C(v533);
    v81 = sub_10001BA10();
    v83 = v82;

    sub_1000C809C(v80);
    v84 = sub_10001BF90();

    sub_1000C809C(v80);
    v85 = sub_10001B9D4();

    v478 = sub_1000A6954(v81, v83, v84, v85);
    v86 = sub_1000C80F8(v80);
    v476[3] = v87;
    v476[4] = v86;
    v88 = v87;
    v90 = v89;
    v476[2] = v89;
    __chkstk_darwin(v86);
    v91 = v531;
    v92 = v532;
    v93 = v534;
    v476[-4] = v531;
    v476[-3] = v93;
    v94 = v521;
    v476[-2] = v521;
    v476[-1] = v92;
    v476[1] = swift_getKeyPath();
    v577 = v86;
    v578 = v88;
    v579 = v90;
    type metadata accessor for Optional();
    v95 = type metadata accessor for Binding();
    v477 = v476;
    __chkstk_darwin(v95 - 8);
    v97 = v476 - v96;
    *&v582 = v91;
    *(&v582 + 1) = v93;
    v583 = v94;
    v584 = v92;
    type metadata accessor for PromotionalAssetsViewModel();
    type metadata accessor for Binding();
    Binding.subscript.getter();

    __chkstk_darwin(v98);
    v100 = v476 - v99;
    (*(*(v65 - 8) + 56))(v476 - v99, 1, 1, v65);
    v101 = v479;
    v102 = sub_1001217A0(v97, v100, v479);
    __chkstk_darwin(v102);
    v103 = (v476 - v494);
    v104 = v522;
    v105 = swift_getWitnessTable();
    sub_1000D35D0();
    v106 = v516;
    (v491)(v103, v492, v516);
    sub_10007EDF4(&type metadata for FeaturedVideosViewSizePreferenceKey, v103, sub_1000D4C30, 0, v104, v105, v525);
    (v490)(v103, v106);
    v107 = v480[1](v101, v104);
    __chkstk_darwin(v107);
    v108 = v476 - v526;
    v109 = v533;
    (v509)(v476 - v526, v535, v533);
    v110 = swift_allocObject();
    v111 = v534;
    *(v110 + 16) = v531;
    *(v110 + 24) = v111;
    *(v110 + 32) = v521;
    *(v110 + 40) = v92;
    v500(&v508[v110], v108, v109);
    v112 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30);
    v543 = v105;
    v114 = v504;
    v113 = v505;
    v544 = v112;
    v115 = swift_getWitnessTable();
    v116 = v482;
    v117 = v525;
    View.onPreferenceChange<A>(_:perform:)();

    (*(v483 + 8))(v117, v114);
    v118 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38);
    v541 = v115;
    v542 = v118;
    v119 = swift_getWitnessTable();
    v120 = v485;
    sub_100157EFC(v116, v113, v119);
    v121 = v489;
    v122 = v489[1];
    v123 = v122(v116, v113);
    __chkstk_darwin(v123);
    v124 = v476 - v487;
    sub_100157EFC(v120, v113, v119);
    v125 = v122(v120, v113);
    __chkstk_darwin(v125);
    v126 = (v476 - v527);
    (v121[4])(v476 - v527, v124, v113);
    (v121[7])(v126, 0, 1, v113);
    sub_100150FB8(v126, v523);
    (*(v528 + 8))(v126, v506);
  }

  else
  {
    __chkstk_darwin(v72);
    v127 = (v476 - v527);
    (*(*(v68 - 8) + 56))(v476 - v527, 1, 1, v68);
    v128 = swift_getWitnessTable();
    v129 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30);
    v594 = v128;
    v595 = v129;
    v130 = swift_getWitnessTable();
    v131 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38);
    v592 = v130;
    v593 = v131;
    swift_getWitnessTable();
    sub_100150FB8(v127, v71);
    (*(v528 + 8))(v127, v69);
  }

  v132 = v533;
  v133 = v534;
  v134 = v531;
  swift_getAssociatedTypeWitness();
  v491 = swift_getAssociatedConformanceWitness();
  v135 = type metadata accessor for SetlistView();
  v515 = swift_getWitnessTable();
  v516 = v135;
  *&v582 = v135;
  *(&v582 + 1) = v515;
  v136 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v137 = type metadata accessor for ModifiedContent();
  v138 = sub_10000B3DC(&qword_10021DD40);
  v520 = v137;
  v493 = v138;
  v517 = type metadata accessor for _ConditionalContent();
  v139 = type metadata accessor for Optional();
  v494 = v476;
  v526 = *(v139 - 8);
  v527 = v139;
  v514 = *(v526 + 64);
  __chkstk_darwin(v139);
  v525 = v476 - v140;
  sub_1000C809C(v132);
  v141 = sub_10001C958();

  if (v141)
  {
    v490 = v136;
    v142 = swift_checkMetadataState();
    v492 = v476;
    v143 = *(v142 - 8);
    v486 = *(v143 + 64);
    __chkstk_darwin(v142);
    v487 = v144;
    v145 = v476 - v144;
    sub_1000C809C(v132);
    v146 = type metadata accessor for Optional();
    v147 = *(v146 - 8);
    __chkstk_darwin(v146);
    v149 = v476 - v148;
    sub_10001C8E4(v476 - v148);

    if ((*(v143 + 48))(v149, 1, v142) != 1)
    {
      v488 = v143;
      v489 = v145;
      v193 = (*(v143 + 32))(v145, v149, v142);
      v534 = v476;
      v532 = *(v520 - 1);
      v531 = *(v532 + 8);
      v194 = __chkstk_darwin(v193);
      v524 = (v195 + 15) & 0xFFFFFFFFFFFFFFF0;
      v511 = v476 - v524;
      v521 = v476;
      v196 = __chkstk_darwin(v194);
      v508 = v476 - v197;
      v510 = v476;
      v509 = *(v490 - 1);
      __chkstk_darwin(v196);
      v500 = (v476 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0));
      v484 = swift_checkMetadataState();
      v507 = v476;
      v501 = *(v484 - 1);
      __chkstk_darwin(v484);
      v200 = (v476 - v199);
      v485 = v142;
      v491 = type metadata accessor for SetlistViewModel();
      v201 = v533;
      sub_1000C809C(v533);
      v202 = sub_10001BA10();
      v482 = v203;
      v483 = v202;

      sub_1000C809C(v201);
      v204 = sub_10001C31C();
      v206 = v205;

      __chkstk_darwin(v207);
      v208 = v476 - v487;
      (*(v488 + 16))(v476 - v487, v489, v142);
      sub_1000C809C(v201);
      v209 = sub_10001CC28();

      sub_100037514(v483, v482, v204, v206, v208, v209 & 1);
      sub_100049C48(v200);
      v210 = type metadata accessor for AccessibilityChildBehavior();
      v211 = *(v210 - 8);
      __chkstk_darwin(v210);
      v213 = v476 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
      static AccessibilityChildBehavior.contain.getter();
      v214 = v500;
      v215 = v484;
      v216 = v515;
      View.accessibilityElement(children:)();
      (*(v211 + 8))(v213, v210);
      (v501[1])(v200, v215);
      *&v582 = v215;
      *(&v582 + 1) = v216;
      v217 = swift_getOpaqueTypeConformance2();
      v218 = v508;
      v219 = v490;
      View.accessibilityIdentifier(_:)();
      (v509[1])(v214, v219);
      v220 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
      v547 = v217;
      v548 = v220;
      v221 = v520;
      v222 = swift_getWitnessTable();
      v223 = v511;
      sub_100157EFC(v218, v221, v222);
      v224 = *(v532 + 1);
      v225 = v224(v218, v221);
      v532 = v476;
      __chkstk_darwin(v225);
      v226 = v476 - v524;
      v227 = sub_100157EFC(v223, v221, v222);
      __chkstk_darwin(v227);
      v229 = v476 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
      v230 = sub_1000D3214();
      *&v582 = &type metadata for SetlistLoadingView;
      *(&v582 + 1) = v230;
      v231 = swift_getOpaqueTypeConformance2();
      sub_100061878(v226, v221);
      v224(v226, v221);
      v224(v223, v221);
      (*(v488 + 8))(v489, v485);
      (*(*(v517 - 1) + 56))(v229, 0, 1, v517);
      v545 = v222;
      v546 = v231;
      swift_getWitnessTable();
      sub_100150FB8(v229, v525);
      (*(v526 + 8))(v229, v527);
      goto LABEL_15;
    }

    (*(v147 + 8))(v149, v146);
    v132 = v533;
    v133 = v534;
    v134 = v531;
  }

  v150 = v535;
  sub_1000C809C(v132);
  if (!v150[2])
  {
LABEL_36:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v152 = sub_10001D7A4(v151);

  if ((v152 & 1) == 0)
  {
    __chkstk_darwin(v153);
    v185 = v476 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(*(v517 - 1) + 56))(v185, 1, 1, v517);
    *&v582 = v516;
    *(&v582 + 1) = v515;
    v186 = swift_getOpaqueTypeConformance2();
    v187 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    v590 = v186;
    v591 = v187;
    v188 = swift_getWitnessTable();
    v189 = sub_1000D3214();
    *&v582 = &type metadata for SetlistLoadingView;
    *(&v582 + 1) = v189;
    v190 = swift_getOpaqueTypeConformance2();
    v588 = v188;
    v589 = v190;
    swift_getWitnessTable();
    sub_100150FB8(v185, v525);
    (*(v526 + 8))(v185, v527);
    v192 = v502;
    v191 = v503;
    goto LABEL_16;
  }

  v492 = v476;
  v486 = ~v524;
  v491 = *(v493 - 8);
  v154 = __chkstk_darwin(v153);
  v490 = v476 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = v476;
  __chkstk_darwin(v154);
  v488 = v476 - v156;
  v157 = v535;
  sub_1000C809C(v132);
  LODWORD(v487) = sub_10001C91C();

  v485 = v476;
  v159 = v511;
  __chkstk_darwin(v158);
  v160 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = v509;
  (v509)(v476 - v160, v157, v132);
  v162 = swift_allocObject();
  *(v162 + 16) = v134;
  *(v162 + 24) = v133;
  v163 = v521;
  v164 = v532;
  *(v162 + 32) = v521;
  *(v162 + 40) = v164;
  v507 = v162;
  v165 = (v500)(&v508[v162], v476 - v160, v132);
  v508 = v476;
  __chkstk_darwin(v165);
  v166 = v476 - v160;
  v161(v476 - v160, v157, v132);
  type metadata accessor for MainActor();
  v167 = static MainActor.shared.getter();
  v168 = (v524 + 64) & v486;
  v169 = swift_allocObject();
  v169[2] = v167;
  v169[3] = &protocol witness table for MainActor;
  v170 = v534;
  v169[4] = v531;
  v169[5] = v170;
  v171 = v532;
  v169[6] = v163;
  v169[7] = v171;
  v500(v169 + v168, v166, v132);
  v172 = type metadata accessor for TaskPriority();
  v173 = *(v172 - 8);
  v174 = *(v173 + 64);
  __chkstk_darwin(v172);
  v175 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = v476 - v175;
  static TaskPriority.userInitiated.getter();
  if (sub_1001A7444(2, 26, 4, 0))
  {
    v531 = type metadata accessor for _TaskModifier2();
    v532 = v476;
    v534 = v476;
    v524 = *(v531 - 8);
    __chkstk_darwin(v531);
    v178 = v476 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v582 = 0;
    *(&v582 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v582 = 0xD000000000000038;
    *(&v582 + 1) = 0x80000001001C0630;
    v577 = 109;
    v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v179);

    v521 = v476;
    __chkstk_darwin(v180);
    (*(v173 + 16))(v476 - v175, v476 - v175, v172);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v173 + 8))(v476 - v175, v172);
    v181 = sub_100009F70(&qword_1002184C8);
    v182 = v488;
    (*(v524 + 32))(v488 + *(v181 + 36), v178, v531);
  }

  else
  {
    v232 = sub_100009F70(&qword_1002184D0);
    v182 = v488;
    v233 = (v488 + *(v232 + 36));
    v234 = type metadata accessor for _TaskModifier();
    (*(v173 + 32))(&v233[*(v234 + 20)], v176, v172);
    *v233 = &unk_1001B5298;
    *(v233 + 1) = v169;
  }

  *v182 = v487 & 1;
  v183 = v507;
  *(v182 + 8) = sub_1000D3390;
  *(v182 + 16) = v183;
  v236 = v490;
  v235 = v491;
  v237 = v493;
  v238 = (*(v491 + 32))(v490, v182, v493);
  __chkstk_darwin(v238);
  v240 = v476 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v582 = v516;
  *(&v582 + 1) = v515;
  v241 = swift_getOpaqueTypeConformance2();
  v242 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v551 = v241;
  v552 = v242;
  v243 = v520;
  v244 = swift_getWitnessTable();
  v245 = sub_1000D3214();
  *&v582 = &type metadata for SetlistLoadingView;
  *(&v582 + 1) = v245;
  v246 = swift_getOpaqueTypeConformance2();
  sub_100061970(v236, v243, v237);
  (*(v235 + 8))(v236, v237);
  (*(*(v517 - 1) + 56))(v240, 0, 1, v517);
  v549 = v244;
  v550 = v246;
  swift_getWitnessTable();
  sub_100150FB8(v240, v525);
  (*(v526 + 8))(v240, v527);
LABEL_15:
  v192 = v502;
  v191 = v503;
LABEL_16:
  v247 = swift_getAssociatedTypeWitness();
  v248 = swift_getAssociatedConformanceWitness();
  *&v582 = v191;
  *(&v582 + 1) = v247;
  v583 = v192;
  v584 = v248;
  v249 = type metadata accessor for PhoneWallpapersWatchFacesView();
  v501 = type metadata accessor for PhoneWallpaperView();
  v250 = type metadata accessor for Optional();
  v500 = v248;
  v509 = type metadata accessor for WatchFacesView();
  v507 = type metadata accessor for Optional();
  v508 = v250;
  swift_getTupleTypeMetadata2();
  v251 = type metadata accessor for TupleView();
  v524 = v249;
  v252 = type metadata accessor for _ConditionalContent();
  v253 = type metadata accessor for Optional();
  v510 = v476;
  v532 = v253;
  v534 = *(v253 - 8);
  v254 = v534[8];
  v255 = (v254 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v253);
  v531 = v476 - v255;
  v256 = v533;
  sub_1000C809C(v533);
  v257 = [objc_opt_self() currentDevice];
  v258 = [v257 userInterfaceIdiom];

  AssociatedConformanceWitness = v251;
  AssociatedTypeWitness = v252;
  v511 = v254;
  if (v258)
  {
    v521 = v476;
    __chkstk_darwin(v259);
    (*(*(v252 - 8) + 56))(v476 - v255, 1, 1, v252);
    v260 = swift_getWitnessTable();
    v261 = swift_getWitnessTable();
    v586 = v260;
    v587 = v261;
    swift_getWitnessTable();
    sub_100150FB8(v476 - v255, v531);
    (v534[1])(v476 - v255, v532);
  }

  else
  {
    v489 = v247;
    v262 = v508;
    v521 = v476;
    v493 = *(v252 - 8);
    __chkstk_darwin(v259);
    v491 = v263;
    v264 = v476 - ((v263 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000C809C(v256);
    v265 = sub_10001CFF4();

    v267 = v256;
    v492 = v264;
    if (v265)
    {
      v490 = v476;
      v268 = v524;
      v509 = *(v524 - 8);
      v508 = v509[8];
      v269 = __chkstk_darwin(v266);
      v507 = ((v270 + 15) & 0xFFFFFFFFFFFFFFF0);
      v488 = v476 - v507;
      v501 = v476;
      __chkstk_darwin(v269);
      v487 = v476 - v271;
      sub_1000C809C(v256);
      v272 = sub_10001BA10();
      v485 = v273;
      v486 = v272;

      sub_1000C809C(v256);
      v274 = sub_10001C31C();
      v483 = v275;
      v484 = v274;

      type metadata accessor for PhoneWallpaperViewModel();
      sub_1000C809C(v256);
      v276 = sub_10001BA10();
      v278 = v277;

      sub_1000C809C(v256);
      v279 = sub_10001D264();

      sub_1000C809C(v256);
      sub_10001BD34();
      v281 = v280;

      sub_1000C809C(v256);
      v282 = sub_10001A584();

      sub_1000C809C(v256);
      v283 = sub_10001D0BC();

      v503 = sub_100099B88(v276, v278, v279, v283, v281, v282);
      type metadata accessor for WatchFacesViewModel();
      sub_1000C809C(v256);
      v284 = sub_10001BA10();
      v286 = v285;

      sub_1000C809C(v256);
      v287 = sub_10001D0DC();

      sub_1000C809C(v256);
      sub_10001BD34();
      v289 = v288;

      sub_1000C809C(v256);
      v290 = sub_10001A584();

      sub_1000C809C(v256);
      v291 = sub_10001D0BC();

      v292 = sub_1000EC04C(v284, v286, v287, v291, v289, v290);
      v293 = v487;
      sub_10018BC28(v486, v485, v484, v483, v503, v292, v487);
      v294 = swift_getWitnessTable();
      v295 = v488;
      sub_100157EFC(v293, v268, v294);
      v296 = v509[1];
      v297 = v296(v293, v268);
      __chkstk_darwin(v297);
      v298 = (v476 - v507);
      sub_100157EFC(v295, v268, v294);
      swift_getWitnessTable();
      v299 = v492;
      sub_100061878(v298, v268);
      v296(v298, v268);
      v300 = v296(v295, v268);
      v301 = v299;
    }

    else
    {
      v302 = *(v262 - 1);
      v303 = *(v302 + 64);
      __chkstk_darwin(v266);
      v304 = (v303 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_1000C809C(v267);
      v305 = sub_10001CD08();

      v490 = v476;
      v487 = v302;
      v488 = v476 - v304;
      v486 = v303;
      if (v305)
      {
        v485 = v476;
        v307 = v501;
        v484 = *(v501 - 1);
        v483 = v484[8];
        v308 = __chkstk_darwin(v306);
        v480 = (v476 - ((v309 + 15) & 0xFFFFFFFFFFFFFFF0));
        v481 = v476;
        v482 = (v309 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v308);
        v311 = v476 - v310;
        v312 = v267;
        v313 = v503;
        v479 = type metadata accessor for PhoneWallpaperViewModel();
        sub_1000C809C(v312);
        v314 = sub_10001BA10();
        v477 = v315;
        v478 = v314;

        sub_1000C809C(v312);
        v316 = sub_10001D264();

        sub_1000C809C(v312);
        sub_10001BD34();
        v318 = v317;

        sub_1000C809C(v312);
        v319 = sub_10001A584();

        sub_1000C809C(v312);
        v320 = sub_10001D0BC();
        v502 = v304;
        v321 = v320;

        sub_100099B88(v478, v477, v316, v321, v318, v319);
        v322 = type metadata accessor for Optional();
        __chkstk_darwin(v322 - 8);
        v324 = v476 - v323;
        (*(*(v313 - 1) + 56))(v476 - v323, 1, 1, v313);
        v325 = v311;
        sub_100006C94(v324, v311);
        v326 = swift_getWitnessTable();
        v327 = v480;
        v328 = v325;
        sub_100157EFC(v325, v307, v326);
        v329 = v484;
        v330 = v484[1];
        v331 = v330(v328, v307);
        v503 = v476;
        __chkstk_darwin(v331);
        v332 = v476 - v482;
        sub_100157EFC(v327, v307, v326);
        v333 = v330(v327, v307);
        __chkstk_darwin(v333);
        v334 = (v476 - v502);
        (*(v329 + 32))(v476 - v502, v332, v307);
        (*(v329 + 56))(v334, 0, 1, v307);
        sub_100150FB8(v334, v488);
        v335 = (*(v487 + 8))(v334, v262);
        v267 = v312;
      }

      else
      {
        __chkstk_darwin(v306);
        (*(*(v501 - 1) + 56))(v476 - v304, 1, 1, v501);
        swift_getWitnessTable();
        sub_100150FB8(v476 - v304, v476 - v304);
        v335 = (*(v302 + 8))(v476 - v304, v262);
      }

      v336 = v507;
      v337 = v509;
      v338 = v489;
      v489 = v476;
      v502 = *(v507 - 1);
      v339 = *(v502 + 8);
      __chkstk_darwin(v335);
      v340 = (v339 + 15) & 0xFFFFFFFFFFFFFFF0;
      v503 = (v476 - v340);
      sub_1000C809C(v267);
      v341 = sub_10001CD28();

      if (v341)
      {
        v484 = v476;
        v485 = *(v337 - 1);
        v483 = v485[8];
        v343 = __chkstk_darwin(v342);
        v345 = v476 - ((v344 + 15) & 0xFFFFFFFFFFFFFFF0);
        v481 = v476;
        v482 = (v344 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v343);
        v346 = v267;
        v348 = v476 - v347;
        v480 = type metadata accessor for WatchFacesViewModel();
        v500 = ((v339 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1000C809C(v346);
        v349 = sub_10001BA10();
        v478 = v350;
        v479 = v349;

        sub_1000C809C(v346);
        v351 = sub_10001D0DC();

        sub_1000C809C(v346);
        sub_10001BD34();
        v353 = v352;

        sub_1000C809C(v346);
        v354 = sub_10001A584();

        sub_1000C809C(v346);
        LOBYTE(v346) = sub_10001D0BC();

        sub_1000EC04C(v479, v478, v351, v346 & 1, v353, v354);
        v355 = type metadata accessor for Optional();
        __chkstk_darwin(v355 - 8);
        v357 = v476 - v356;
        (*(*(v338 - 1) + 56))(v476 - v356, 1, 1, v338);
        sub_10001555C(v357, v348);
        v358 = swift_getWitnessTable();
        v359 = v345;
        sub_100157EFC(v348, v509, v358);
        v360 = v485;
        v361 = v485[1];
        v362 = v361(v348, v509);
        __chkstk_darwin(v362);
        v363 = v476 - v482;
        sub_100157EFC(v359, v509, v358);
        v364 = v361(v359, v509);
        v365 = v509;
        __chkstk_darwin(v364);
        v366 = (v476 - v500);
        (*(v360 + 32))(v476 - v500, v363, v365);
        v367 = v360;
        v262 = v508;
        (*(v367 + 56))(v366, 0, 1, v365);
        sub_100150FB8(v366, v503);
        v368 = *(v502 + 1);
        v485 = ((v502 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v500 = v368;
        v369 = (v368)(v366, v336);
      }

      else
      {
        __chkstk_darwin(v342);
        (*(*(v337 - 1) + 56))(v476 - v340, 1, 1, v337);
        swift_getWitnessTable();
        sub_100150FB8(v476 - v340, v503);
        v370 = *(v502 + 1);
        v485 = ((v502 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v500 = v370;
        v369 = (v370)(v476 - v340, v336);
      }

      v371 = v336;
      v509 = v476;
      v372 = AssociatedConformanceWitness;
      v483 = *(AssociatedConformanceWitness - 8);
      v373 = __chkstk_darwin(v369);
      v375 = v476 - ((v374 + 15) & 0xFFFFFFFFFFFFFFF0);
      v484 = v476;
      __chkstk_darwin(v373);
      v377 = v476 - ((v376 + 15) & 0xFFFFFFFFFFFFFFF0);
      v378 = v487;
      v379 = (*(v487 + 16))(v377, v488, v262);
      v486 = v476;
      *&v582 = v377;
      __chkstk_darwin(v379);
      v380 = v476 - ((v339 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v502 + 2))(v380, v503, v371);
      *(&v582 + 1) = v380;
      v577 = v262;
      v578 = v371;
      v556 = swift_getWitnessTable();
      v572 = swift_getWitnessTable();
      v555 = swift_getWitnessTable();
      v573 = swift_getWitnessTable();
      sub_100151024(&v582, 2uLL, &v577);
      v381 = v371;
      v382 = v500;
      (v500)(v380, v381);
      v383 = *(v378 + 8);
      v383(v377, v262);
      v384 = v524;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v301 = v492;
      sub_100061970(v375, v384, v372);
      (*(v483 + 8))(v375, v372);
      v382(v503, v507);
      v300 = (v383)(v488, v508);
    }

    __chkstk_darwin(v300);
    v386 = v476 - ((v385 + 15) & 0xFFFFFFFFFFFFFFF0);
    v387 = swift_getWitnessTable();
    v388 = swift_getWitnessTable();
    v553 = v387;
    v554 = v388;
    v389 = AssociatedTypeWitness;
    v390 = swift_getWitnessTable();
    sub_100157EFC(v301, v389, v390);
    v391 = v493;
    v392 = (*(v493 + 8))(v301, v389);
    v393 = v511;
    __chkstk_darwin(v392);
    (*(v391 + 32))(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v386, v389);
    (*(v391 + 56))(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v389);
    sub_100150FB8(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v531);
    (v534[1])(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v532);
  }

  v394 = sub_100009F70(&qword_10021A880);
  v507 = *(*(v394 - 8) + 64);
  __chkstk_darwin(v394);
  v521 = (v476 - v395);
  v396 = v533;
  v397 = v535;
  sub_1000C809C(v533);
  if (!v397[2])
  {
    goto LABEL_36;
  }

  v508 = v394;
  v509 = v476;

  v399 = sub_10001EF0C(v398);
  v401 = v400;

  if (!v401)
  {
    goto LABEL_33;
  }

  v402 = HIBYTE(v401) & 0xF;
  if ((v401 & 0x2000000000000000) == 0)
  {
    v402 = v399 & 0xFFFFFFFFFFFFLL;
  }

  if (!v402)
  {
    v436 = type metadata accessor for AppModule();
    v434 = v521;
    v435 = (*(*(v436 - 8) + 56))(v521, 1, 1, v436);
  }

  else
  {
LABEL_33:
    v403 = type metadata accessor for AppModule();
    v503 = v476;
    v404 = *(v403 - 8);
    __chkstk_darwin(v403);
    v406 = v476 - ((v405 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000C809C(v396);
    v407 = sub_10001BA10();
    v500 = v408;
    v501 = v407;

    sub_1000C809C(v396);
    v409 = sub_100009F70(qword_100218748);
    v502 = v476;
    __chkstk_darwin(v409 - 8);
    v410 = v396;
    v412 = v476 - v411;
    sub_10001BA88();

    sub_1000C809C(v410);

    v414 = sub_10001EF0C(v413);
    v416 = v415;

    type metadata accessor for AppViewModel();
    v417 = swift_allocObject();
    v418 = v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_subheaderTitle;
    *v418 = LocalizedStringKey.init(stringLiteral:)();
    *(v418 + 8) = v419;
    *(v418 + 16) = v420 & 1;
    *(v418 + 24) = v421;
    v422 = v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_descriptionTitle;
    *v422 = LocalizedStringKey.init(stringLiteral:)();
    *(v422 + 8) = v423;
    *(v422 + 16) = v424 & 1;
    *(v422 + 24) = v425;
    ObservationRegistrar.init()();
    *(v417 + 16) = 0;
    v426 = v500;
    *(v417 + 24) = v501;
    *(v417 + 32) = v426;
    sub_1000B9AEC(v412, v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL);
    v427 = (v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
    *v427 = v414;
    v427[1] = v416;
    *(v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) = 1;
    *(v417 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_analyticsPageNameType) = 13;
    KeyPath = swift_getKeyPath();
    *v406 = v417;
    v578 = 0;
    v577 = 0;
    sub_100009F70(&qword_100219F00);
    State.init(wrappedValue:)();
    v429 = v583;
    *(v406 + 8) = v582;
    *(v406 + 3) = v429;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *(v406 + 4) = EnvironmentObject.init()();
    *(v406 + 5) = v430;
    v431 = *(v403 + 28);
    *&v406[v431] = swift_getKeyPath();
    sub_100009F70(&qword_100218DF8);
    swift_storeEnumTagMultiPayload();
    v432 = &v406[*(v403 + 32)];
    *v432 = KeyPath;
    v432[8] = 0;
    v433 = v406;
    v434 = v521;
    sub_1000D3274(v433, v521);
    v435 = (*(v404 + 56))(v434, 0, 1, v403);
  }

  v535 = v476;
  __chkstk_darwin(v435);
  v438 = (v476 - ((v437 + 15) & 0xFFFFFFFFFFFFFFF0));
  v503 = v438;
  v439 = v530;
  v440 = (v519[2])(v438, v529);
  v533 = v476;
  *&v582 = v438;
  __chkstk_darwin(v440);
  v442 = v476 - ((v441 + 15) & 0xFFFFFFFFFFFFFFF0);
  v518 = v442;
  v443 = v506;
  v444 = (*(v528 + 16))(v442, v523);
  v519 = v476;
  *(&v582 + 1) = v442;
  __chkstk_darwin(v444);
  v446 = v476 - ((v445 + 15) & 0xFFFFFFFFFFFFFFF0);
  v502 = v446;
  v447 = v527;
  v448 = (*(v526 + 16))(v446, v525, v527);
  v514 = v476;
  v583 = v446;
  __chkstk_darwin(v448);
  v450 = v476 - ((v449 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = v450;
  v451 = v534;
  v453 = v531;
  v452 = v532;
  v454 = (v534[2])(v450, v531, v532);
  v511 = v476;
  v584 = v450;
  __chkstk_darwin(v454);
  v456 = v476 - ((v455 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = v456;
  sub_1000D32D8(v434, v456);
  v585 = v456;
  v577 = v439;
  v578 = v443;
  v457 = v443;
  v579 = v447;
  v580 = v452;
  v581 = v508;
  v572 = v495;
  v458 = swift_getWitnessTable();
  v459 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30);
  v570 = v458;
  v571 = v459;
  v460 = swift_getWitnessTable();
  v461 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38);
  v568 = v460;
  v569 = v461;
  v567 = swift_getWitnessTable();
  v573 = swift_getWitnessTable();
  v565 = v516;
  v566 = v515;
  v462 = swift_getOpaqueTypeConformance2();
  v463 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v563 = v462;
  v564 = v463;
  v464 = swift_getWitnessTable();
  v465 = sub_1000D3214();
  v565 = &type metadata for SetlistLoadingView;
  v566 = v465;
  v466 = swift_getOpaqueTypeConformance2();
  v561 = v464;
  v562 = v466;
  v560 = swift_getWitnessTable();
  v574 = swift_getWitnessTable();
  v467 = swift_getWitnessTable();
  v468 = swift_getWitnessTable();
  v558 = v467;
  v559 = v468;
  v557 = swift_getWitnessTable();
  v575 = swift_getWitnessTable();
  v576 = sub_100058F24();
  sub_100151024(&v582, 5uLL, &v577);
  sub_10000D52C(v521, &qword_10021A880);
  v469 = v451[1];
  v534 = v451 + 1;
  v469(v453, v452);
  v470 = *(v526 + 8);
  v470(v525, v447);
  v471 = *(v528 + 8);
  v472 = v457;
  v471(v523, v457);
  v473 = v530;
  v474 = v496;
  v496(v529, v530);
  sub_10000D52C(v507, &qword_10021A880);
  v469(v501, v532);
  v470(v502, v527);
  v471(v518, v472);
  return v474(v503, v473);
}

uint64_t sub_1000CFDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for TourPhotosView();
  v79 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v76 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = v71 - v14;
  v83 = v15;
  v86 = type metadata accessor for _ConditionalContent();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v71 - v16;
  v77 = a2;
  *&v99 = a2;
  *(&v99 + 1) = a3;
  v80 = a3;
  v81 = a4;
  *&v100 = a4;
  *(&v100 + 1) = a5;
  v17 = a5;
  v18 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v18);
  LOBYTE(a5) = sub_10001CCE8();

  if (a5)
  {
    type metadata accessor for TourPhotosViewModel();
    sub_1000C809C(v18);
    v19 = sub_10001BA10();
    v75 = v20;

    sub_1000C809C(v18);
    v21 = sub_10001CE6C();

    sub_1000C809C(v18);
    v22 = sub_10001C31C();
    v24 = v23;

    sub_1000C809C(v18);
    v25 = sub_10001A584();

    sub_1000C809C(v18);
    sub_10001BAFC();
    v27 = v26;

    sub_1000C809C(v18);
    v28 = sub_10001D3EC();

    v75 = sub_100075A7C(v19, v75, v21, v22, v24, v28 & 1, v25, v27);
    v29 = sub_1000C80F8(v18);
    v31 = v30;
    v33 = v32;
    __chkstk_darwin(v29);
    v34 = v77;
    v35 = v80;
    v71[-4] = v77;
    v71[-3] = v35;
    v36 = v81;
    v71[-2] = v81;
    v71[-1] = v17;
    v71[2] = a1;
    v37 = v36;
    swift_getKeyPath();
    *&v95 = v29;
    *(&v95 + 1) = v31;
    *&v96 = v33;
    *&v99 = v34;
    *(&v99 + 1) = v35;
    *&v100 = v37;
    *(&v100 + 1) = v17;
    type metadata accessor for PromotionalAssetsViewModel();
    v71[1] = type metadata accessor for Binding();
    Binding.subscript.getter();

    v74 = *(&v99 + 1);
    v38 = v99;
    v73 = v100;
    v72 = BYTE8(v100);

    v39 = sub_1000C80F8(v18);
    v41 = v40;
    v43 = v42;
    __chkstk_darwin(v39);
    v71[-4] = v34;
    v71[-3] = v35;
    v71[-2] = v37;
    v71[-1] = v17;
    swift_getKeyPath();
    v90 = v39;
    v91 = v41;
    v92 = v43;
    Binding.subscript.getter();

    v44 = v87;
    v45 = v88;
    v46 = v89;

    v47 = v76;
    sub_10012E5C0(v38, v74, v73, v72, v44, v45, v76, v46);
    v48 = v83;
    WitnessTable = swift_getWitnessTable();
    v50 = v78;
    sub_100157EFC(v47, v48, WitnessTable);
    v51 = *(v79 + 8);
    v51(v47, v48);
    sub_100157EFC(v50, v48, WitnessTable);
    sub_1000D29C4();
    v52 = v84;
    sub_100061878(v47, v48);
    v51(v47, v48);
    v51(v50, v48);
  }

  else
  {
    sub_1000C809C(v18);
    v53 = sub_10001C31C();
    v55 = v54;

    sub_1000C809C(v18);
    v56 = sub_10001C548();

    sub_1000C809C(v18);
    v57 = sub_10001D3EC();

    sub_1000C809C(v18);
    v58 = sub_10001A95C();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    *&v95 = v53;
    *(&v95 + 1) = v55;
    *&v96 = v56;
    BYTE8(v96) = v57 & 1;
    *&v97 = v58;
    *(&v97 + 1) = v60;
    *&v98 = v62;
    *(&v98 + 1) = v64;
    v65 = v83;
    swift_getWitnessTable();
    sub_1000D29C4();
    v52 = v84;
    sub_100061970(&v95, v65, &type metadata for TourPhotosDefaultView);
    v99 = v95;
    v100 = v96;
    v101 = v97;
    v102 = v98;
    sub_1000D3DBC(&v99);
  }

  v66 = swift_getWitnessTable();
  v67 = sub_1000D29C4();
  v93 = v66;
  v94 = v67;
  v68 = v86;
  v69 = swift_getWitnessTable();
  sub_100157EFC(v52, v68, v69);
  return (*(v85 + 8))(v52, v68);
}

uint64_t sub_1000D0620(char a1)
{
  v2 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v2);
  sub_10001D8CC((a1 & 1) == 0);
}

uint64_t sub_1000D0684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(double))
{
  v8 = *(a1 + 8);
  v9 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v9);
  a7(v8);
}

uint64_t sub_1000D06EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v9 = type metadata accessor for PromotionalAssetsView();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v20 = v23;
  *(v19 + 6) = a4;
  *(v19 + 7) = v20;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_10013F12C(0, 0, v15, &unk_1001B52F8, v19);
}

uint64_t sub_1000D090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v8[12] = dispatch thunk of Actor.unownedExecutor.getter();
  v8[13] = v9;

  return _swift_task_switch(sub_1000D09AC);
}

uint64_t sub_1000D09AC()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView();
  *(v0 + 112) = sub_1000C809C(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D0A64;

  return sub_10001D4E4();
}

uint64_t sub_1000D0A64()
{

  return _swift_task_switch(sub_1000D4C34);
}

uint64_t sub_1000D0BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v7[12] = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v8;

  return _swift_task_switch(sub_1000D0C48);
}

uint64_t sub_1000D0C48()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView();
  *(v0 + 112) = sub_1000C809C(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D0D00;

  return sub_10001D4E4();
}

uint64_t sub_1000D0D00()
{

  return _swift_task_switch(sub_1000D0E44);
}

uint64_t sub_1000D0E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D0EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a5;
  v30 = a2;
  v31 = a1;
  v32 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1000D29C4();
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  v35 = AssociatedTypeWitness;
  v36 = swift_getAssociatedTypeWitness();
  v37 = AssociatedConformanceWitness;
  v38 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PhoneWallpapersWatchFacesView();
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  v46 = sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v11 = swift_getOpaqueTypeConformance2();
  v12 = sub_100027068();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = v11;
  v45 = v12;
  v14 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeMetadata2;
  v43 = v14;
  v27[1] = &opaque type descriptor for <<opaque return type of View.toolbarBackgroundVisibility(_:for:)>>;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v27 - v20;
  v42 = v28;
  v43 = a4;
  v44 = v29;
  v45 = a6;
  v22 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v22);
  sub_10001A39C();

  sub_100009F70(&qword_10021A898);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001AEB90;
  static ToolbarPlacement.navigationBar.getter();
  v23 = swift_checkMetadataState();
  View.toolbarBackgroundVisibility(_:for:)();

  v42 = v23;
  v43 = v14;
  v24 = swift_getOpaqueTypeConformance2();
  sub_100157EFC(v19, v15, v24);
  v25 = *(v16 + 8);
  v25(v19, v15);
  sub_100157EFC(v21, v15, v24);
  return (v25)(v21, v15);
}

double sub_1000D173C@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  result = v3 + v4;
  *a1 = v3 + v4;
  return result;
}

uint64_t sub_1000D177C(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v3);
  sub_100019F10(v2);

  sub_1000C809C(v3);
  if (v2 > 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_10001A424(v4);
}

uint64_t sub_1000D1814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v60 = a1;
  v64 = a6;
  v68 = sub_100009F70(&qword_10021DDC8);
  __chkstk_darwin(v68);
  v67 = &v53 - v9;
  v10 = sub_100009F70(&qword_10021A8B0);
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  v61 = sub_100009F70(&qword_10021DDD0);
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v53 - v13;
  v14 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v14 - 8);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(&qword_10021DDD8);
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v57 = &v53 - v17;
  v18 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009F70(&qword_10021DDE0);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v62 = &v53 - v29;
  v70 = a2;
  v71 = a3;
  v74 = a2;
  v75 = a3;
  v72 = a4;
  v76 = a4;
  v30 = v60;
  v77 = v73;
  v31 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v31);
  sub_10001BA88();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000D52C(v20, qword_100218748);
    (*(v12 + 56))(v28, 1, 1, v61);
    v32 = sub_10000D1EC(&qword_10021DDE8, &qword_10021DDD8);
    v74 = v16;
    v75 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v62;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D2D94(v28);
  }

  else
  {
    v34 = *(v22 + 32);
    v55 = v24;
    v56 = v21;
    v34(v24, v20, v21);
    v54 = v16;
    v35 = v61;
    v36 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v36);
    v37 = v71;
    *(&v53 - 6) = v70;
    *(&v53 - 5) = v37;
    v38 = v73;
    *(&v53 - 4) = v72;
    *(&v53 - 3) = v38;
    *(&v53 - 2) = v24;
    *(&v53 - 1) = v30;
    type metadata accessor for ShareButton();
    sub_1000D3348(&qword_10021A8F8, type metadata accessor for ShareButton);
    v39 = v57;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000D1EC(&qword_10021DDE8, &qword_10021DDD8);
    v41 = v59;
    v42 = v54;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v12 + 16))(v28, v41, v35);
    (*(v12 + 56))(v28, 0, 1, v35);
    v74 = v42;
    v75 = v40;
    swift_getOpaqueTypeConformance2();
    v33 = v62;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D2D94(v28);
    (*(v12 + 8))(v41, v35);
    (*(v58 + 8))(v39, v42);
    (*(v22 + 8))(v55, v56);
  }

  v43 = static ToolbarItemPlacement.topBarTrailing.getter();
  __chkstk_darwin(v43);
  v44 = v71;
  *(&v53 - 6) = v70;
  *(&v53 - 5) = v44;
  v45 = v73;
  *(&v53 - 4) = v72;
  *(&v53 - 3) = v45;
  *(&v53 - 2) = v30;
  sub_100042DC4();
  v46 = v63;
  ToolbarItem<>.init(placement:content:)();
  v47 = v67;
  v48 = *(v68 + 48);
  sub_1000D2E0C(v33, v67);
  v49 = v65;
  v50 = v47 + v48;
  v51 = v66;
  (*(v65 + 16))(v50, v46, v66);
  TupleToolbarContent.init(_:)();
  (*(v49 + 8))(v46, v51);
  return sub_1000D2D94(v33);
}

uint64_t sub_1000D2014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v12 = type metadata accessor for PromotionalAssetsView();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(a7, a1, v16);
  (*(v13 + 16))(v15, v22, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v23;
  *(v18 + 4) = a5;
  *(v18 + 5) = v19;
  (*(v13 + 32))(&v18[v17], v15, v12);
  result = type metadata accessor for ShareButton();
  v21 = (a7 + *(result + 20));
  *v21 = sub_1000D2E8C;
  v21[1] = v18;
  return result;
}

uint64_t sub_1000D21C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = v22;
  v16 = type metadata accessor for PromotionalAssetsView();
  LOBYTE(a1) = sub_1000C8158(v16);
  sub_100024868(v15);
  v17 = *(v10 + 32);
  v17(v13, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  result = (v17)(v19 + v18, v13, v9);
  *a5 = 0;
  *(a5 + 1) = a1 & 1;
  *(a5 + 8) = sub_10004329C;
  *(a5 + 16) = v19;
  return result;
}

uint64_t sub_1000D2364(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009F70(&qword_100219278);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = a1[1];
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v16 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v16);
  sub_10001A60C(v14);

  sub_1000C809C(v16);
  sub_10001A7F8(v15);

  sub_1000C809C(v16);
  sub_100023FFC(v13);
  sub_10001ACBC(v13);
}

void sub_1000D2498(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_1000D24A4(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v5);
  sub_10001A9EC(v1, v2, v3, v4);
}

uint64_t sub_1000D251C(uint64_t a1)
{
  v2 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v2);
  v3 = sub_10001BA10();
  v5 = v4;

  v6 = *(a1 + 16);
  if (v6)
  {

    sub_1000DCEDC(v3, v5, 13, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000D2614(uint64_t a1, void **a2, uint64_t a3, Class (*a4)(uint64_t a1), uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  aBlock = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v12 = type metadata accessor for PromotionalAssetsView();
  sub_1000C809C(v12);
  v13 = sub_10001BA10();
  v15 = v14;

  v16 = *(a1 + 16);
  if (v16)
  {
    sub_100009F70(qword_100218F38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v13;
    *(inited + 48) = v15;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 0;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = a6;
    *(inited + 168) = 3;
    if (*(v16 + 72))
    {
      v18 = *(v16 + 64);
      v19 = *(v16 + 72);
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v28 = v18;
    v29 = v19;

    v20 = sub_1001666DC(1, 5, 1, inited);
    v25 = v20;
    sub_1000109BC(&aBlock, v26);
    sub_1000EB0D0(4, v26, &v25, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    v22[2] = 0xD00000000000001ELL;
    v22[3] = 0x80000001001BDDE0;
    v22[4] = v20;
    v31 = a8;
    v32 = v22;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000DCA40;
    v30 = a9;
    v23 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000D293C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

unint64_t sub_1000D29C4()
{
  result = qword_10021DD18;
  if (!qword_10021DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DD18);
  }

  return result;
}

unint64_t sub_1000D2A30()
{
  result = qword_10021DDB0;
  if (!qword_10021DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDB0);
  }

  return result;
}

uint64_t sub_1000D2A88(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1000D2364(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D2B34()
{
  result = qword_10021DDC0;
  if (!qword_10021DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDC0);
  }

  return result;
}

uint64_t sub_1000D2B88(double *a1)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D24A4(a1);
}

uint64_t sub_1000D2C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D2CC0(uint64_t a1, double *a2)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D177C(a1, a2);
}

uint64_t sub_1000D2D94(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021DDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D2E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021DDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D2EBC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(type metadata accessor for PromotionalAssetsView() - 8);
  sub_1000D2614(v4 + ((*(v12 + 80) + 48) & ~*(v12 + 80)), v8, v9, v10, v11, a4, a1, a2, a3);
}

uint64_t sub_1000D2F7C()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D304C(char a1)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D0620(a1);
}

unint64_t sub_1000D30F8()
{
  result = qword_10021DDF0;
  if (!qword_10021DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDF0);
  }

  return result;
}

uint64_t sub_1000D3164(uint64_t a1, void (*a2)(double))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for PromotionalAssetsView() - 8);
  return sub_1000D0684(a1, v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

unint64_t sub_1000D3214()
{
  result = qword_10021DE18;
  if (!qword_10021DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE18);
  }

  return result;
}

uint64_t sub_1000D3274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D32D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D33A8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000D345C()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000AF6F8;

  return sub_1000D0BA8(v8, v9, v0 + v7, v3, v2, v4, v5);
}

__n128 sub_1000D35C4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000D35D0()
{
  result = qword_10021DE20;
  if (!qword_10021DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE20);
  }

  return result;
}

uint64_t sub_1000D3624()
{
  v1 = type metadata accessor for PromotionalAssetsView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));

  v3 = v1[14];
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[15];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[16];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D3964()
{
  v1 = type metadata accessor for PromotionalAssetsView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[14];
  sub_100009F70(&qword_100219710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[15];
  sub_100009F70(&qword_100219718);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[16];
  sub_100009F70(&qword_1002196E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D3C94(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_1000D4C18;

  return sub_1000D090C(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1000D3E10@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001B30C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000D3F24()
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  sub_1000D29C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28);
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000B3DC(&qword_10021DD30);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PhoneWallpapersWatchFacesView();
  type metadata accessor for PhoneWallpaperView();
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  sub_10000B3DC(&qword_10021A880);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD48);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10001EA38();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD50);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021DD58, &qword_10021DD50);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD60);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021DD68, &qword_10021DD60);
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  sub_10000B3DC(&qword_10021DD70);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD78);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD80);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD88);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100219278);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DD90, &qword_10021DD70);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DD98, &qword_10021DD78);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DDA0, &qword_10021DD80);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DDA8, &qword_10021DD88);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10001E89C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

unint64_t sub_1000D4B44(uint64_t a1)
{
  result = sub_1000D30F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4B6C(uint64_t a1)
{
  result = sub_1000D35D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4B94(uint64_t a1)
{
  result = sub_1000D2A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4BBC(uint64_t a1)
{
  result = sub_1000D2B34();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000D4C38(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000D4C64(uint64_t a1, int a2)
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

uint64_t sub_1000D4CAC(uint64_t result, int a2, int a3)
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

uint64_t sub_1000D4D34@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DE28);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_10021DE30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_100009F70(&qword_10021DE38);
  sub_1000D4FDC(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000D1EC(&qword_10021DE40, &qword_10021DE28);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_10000D52C(v7, &qword_10021DE28);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000D4FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_100009F70(&qword_10021DE48);
  __chkstk_darwin(v3 - 8);
  v78 = (&v74 - v4);
  v77 = sub_100009F70(&qword_10021DE50);
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
  v16 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v75 = sub_100009F70(&qword_10021DE58);
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
    sub_100027EB0(v23, 0);
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
    sub_100027EB0(v23, 0);
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

  sub_100157F1C(v27, v31, v18);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_100009F70(&qword_10021DE60);
  sub_1000D6CDC();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = &v22[*(sub_100009F70(&qword_10021DEA0) + 36)];
  v33 = v86;
  *v32 = v85;
  *(v32 + 1) = v33;
  *(v32 + 2) = v87;
  v22[*(sub_100009F70(&qword_10021DEA8) + 36)] = 1;
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
  v41 = &v22[*(sub_100009F70(&qword_10021DEB0) + 36)];
  sub_1000A3BD8(v11, v41);
  v42 = v41 + *(sub_100009F70(&qword_10021BE20) + 36);
  v43 = v89;
  *v42 = v88;
  *(v42 + 16) = v43;
  *(v42 + 32) = v90;
  v44 = sub_100009F70(&qword_10021BE28);
  *(v41 + *(v44 + 52)) = v40;
  *(v41 + *(v44 + 56)) = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_1000A3C3C(v11);
  v48 = (v41 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v48 = v45;
  v48[1] = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = (v41 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v52 = v49;
  v52[1] = v51;
  v23 = static Alignment.center.getter();
  v11 = v53;
  v54 = 0;
  KeyPath = 0;
  if (*(v84 + 80) == 1)
  {
    if (qword_100218450 == -1)
    {
LABEL_15:
      v56 = qword_100230608;
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
  v57 = &v22[*(sub_100009F70(&qword_10021DEB8) + 36)];
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
  v61 = sub_100009F70(&qword_10021DEC0);
  sub_1000D657C(v84, v60 + *(v61 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v79;
  sub_10000F618(v60, v79, &qword_10021DE48);
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
  sub_10000F618(v62, v80, &qword_10021DE50);
  v69 = v76;
  sub_10000D58C(v22, v76, &qword_10021DE58);
  v70 = v81;
  sub_10000D58C(v68, v81, &qword_10021DE50);
  v71 = v82;
  sub_10000D58C(v69, v82, &qword_10021DE58);
  v72 = sub_100009F70(&qword_10021DEC8);
  sub_10000D58C(v70, v71 + *(v72 + 48), &qword_10021DE50);
  sub_10000D52C(v68, &qword_10021DE50);
  sub_10000D52C(v22, &qword_10021DE58);
  sub_10000D52C(v70, &qword_10021DE50);
  return sub_10000D52C(v69, &qword_10021DE58);
}

uint64_t sub_1000D5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v30 = sub_100009F70(&qword_10021DE98);
  __chkstk_darwin(v30);
  v3 = (&v29 - v2);
  v36 = sub_100009F70(&qword_10021DEF0);
  __chkstk_darwin(v36);
  v34 = &v29 - v4;
  v32 = sub_100009F70(&qword_10021DEF8);
  __chkstk_darwin(v32);
  v6 = &v29 - v5;
  v37 = sub_100009F70(&qword_10021DE78);
  __chkstk_darwin(v37);
  v33 = &v29 - v7;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021DE88);
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

    sub_10000D58C(v14, v6, &qword_10021DE88);
    swift_storeEnumTagMultiPayload();
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98);
    v21 = v33;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v21, v34, &qword_10021DE78);
    swift_storeEnumTagMultiPayload();
    sub_1000D6D68();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v21, &qword_10021DE78);
    v22 = v14;
    v23 = &qword_10021DE88;
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
      sub_1000D6D68();
      _ConditionalContent<>.init(storage:)();
      return (*(v16 + 8))(v18, v15);
    }

    *v3 = static Alignment.center.getter();
    v3[1] = v26;
    v27 = sub_100009F70(&qword_10021DF00);
    sub_1000D60F0(v3 + *(v27 + 44));
    sub_10000D58C(v3, v6, &qword_10021DE98);
    swift_storeEnumTagMultiPayload();
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98);
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v24, v25, &qword_10021DE78);
    swift_storeEnumTagMultiPayload();
    sub_1000D6D68();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v24, &qword_10021DE78);
    v22 = v3;
    v23 = &qword_10021DE98;
  }

  return sub_10000D52C(v22, v23);
}

uint64_t sub_1000D60F0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DF08);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_100009F70(&qword_10021DF10);
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
  if (qword_100218340 != -1)
  {
    swift_once();
  }

  v25 = qword_100230578;
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
  sub_100009F70(&qword_10021DF18);
  sub_1000D6FF8();
  View.accessibilityIdentifier(_:)();
  v40[3] = v37;
  v40[4] = v38;
  v40[1] = v35;
  v40[2] = v36;
  v40[0] = v34;
  sub_10000D52C(v40, &qword_10021DF18);
  sub_10000D58C(v16, v14, &qword_10021DF10);
  sub_10000D58C(v10, v8, &qword_10021DF08);
  v30 = v33;
  sub_10000D58C(v14, v33, &qword_10021DF10);
  v31 = sub_100009F70(&qword_10021DF38);
  sub_10000D58C(v8, v30 + *(v31 + 48), &qword_10021DF08);
  sub_10000D52C(v10, &qword_10021DF08);
  sub_10000D52C(v16, &qword_10021DF10);
  sub_10000D52C(v8, &qword_10021DF08);
  return sub_10000D52C(v14, &qword_10021DF10);
}

uint64_t sub_1000D657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100009F70(&qword_1002197C0);
  v4 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v38 - v6;
  v7 = sub_100009F70(&qword_10021DED0);
  v8 = __chkstk_darwin(v7 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  *v11 = static VerticalAlignment.lastTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_100009F70(&qword_10021DED8);
  sub_1000D6978(a1, &v11[*(v12 + 44)]);
  v13 = *(a1 + 24);
  v43 = *(a1 + 16);
  v44 = v13;
  sub_100027068();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.subheadline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_10000D60C(v14, v16, v18 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v43 = qword_100230570;

  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000D60C(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v24;
  v44 = v26;
  v28 &= 1u;
  v45 = v28;
  v46 = v30;
  v47 = KeyPath;
  v48 = 1;
  v49 = 0;
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  v32 = v40;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v24, v26, v28);

  v33 = v39;
  sub_10000D58C(v11, v39, &qword_10021DED0);
  v34 = v42;
  sub_10000D58C(v32, v42, &qword_1002197C0);
  v35 = v41;
  sub_10000D58C(v33, v41, &qword_10021DED0);
  v36 = sub_100009F70(&qword_10021DEE0);
  sub_10000D58C(v34, v35 + *(v36 + 48), &qword_1002197C0);
  sub_10000D52C(v32, &qword_1002197C0);
  sub_10000D52C(v11, &qword_10021DED0);
  sub_10000D52C(v34, &qword_1002197C0);
  return sub_10000D52C(v33, &qword_10021DED0);
}

uint64_t sub_1000D6978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for Text.Suffix();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100009F70(&qword_1002197C0);
  __chkstk_darwin(v28);
  v6 = &v28 - v5;
  v7 = *(a1 + 8);
  v32 = *a1;
  v33 = v7;
  sub_100027068();

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
  sub_100009F70(&qword_1002197F0);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v8, v10, v7 & 1);

  if (*(a1 + 32) == 1)
  {
    static Font.subheadline.getter();
    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v32 = qword_100230570;

    v20 = Text.foregroundStyle<A>(_:)();
    v21 = v15;
    v22 = v20;
    v24 = v23;
    v26 = v25;
    sub_10000D60C(v21, v17, v19 & 1);

    static Text.Suffix.alwaysVisible(_:)();
    sub_10000D60C(v22, v24, v26 & 1);
  }

  else
  {
    static Text.Suffix.none.getter();
  }

  sub_1000D6F64();
  View.textSuffix(_:)();
  (*(v29 + 8))(v4, v31);
  return sub_10000D52C(v6, &qword_1002197C0);
}

unint64_t sub_1000D6CDC()
{
  result = qword_10021DE68;
  if (!qword_10021DE68)
  {
    sub_10000B3DC(&qword_10021DE60);
    sub_1000D6D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE68);
  }

  return result;
}

unint64_t sub_1000D6D68()
{
  result = qword_10021DE70;
  if (!qword_10021DE70)
  {
    sub_10000B3DC(&qword_10021DE78);
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE70);
  }

  return result;
}

unint64_t sub_1000D6E20()
{
  result = qword_10021DE80;
  if (!qword_10021DE80)
  {
    sub_10000B3DC(&qword_10021DE88);
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE80);
  }

  return result;
}

uint64_t sub_1000D6EAC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D6F04@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000D6F64()
{
  result = qword_10021DEE8;
  if (!qword_10021DEE8)
  {
    sub_10000B3DC(&qword_1002197C0);
    sub_10002764C();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DEE8);
  }

  return result;
}

unint64_t sub_1000D6FF8()
{
  result = qword_10021DF20;
  if (!qword_10021DF20)
  {
    sub_10000B3DC(&qword_10021DF18);
    sub_1000D7084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF20);
  }

  return result;
}

unint64_t sub_1000D7084()
{
  result = qword_10021DF28;
  if (!qword_10021DF28)
  {
    sub_10000B3DC(&qword_10021DF30);
    sub_100079534();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF28);
  }

  return result;
}

unint64_t sub_1000D7140()
{
  result = qword_10021DF40;
  if (!qword_10021DF40)
  {
    sub_10000B3DC(&qword_10021DF48);
    sub_10000B3DC(&qword_10021DE28);
    sub_10000D1EC(&qword_10021DE40, &qword_10021DE28);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF40);
  }

  return result;
}

uint64_t sub_1000D7284@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for UUID();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DesignTimeImage();
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100009F70(qword_100218748);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  result = v15(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL.init(string:)();
    result = v15(v10, 1, v13);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      (*(v1 + 8))(v3, v23);
      *v6 = ResourceID.init(_:)();
      v6[1] = v17;
      v19 = v4[6];
      v18 = v4[7];
      v20 = *(v14 + 32);
      v20(v6 + v4[5], v10, v13);
      *(v6 + v19) = 0;
      *(v6 + v18) = 0;
      v21 = v24;
      UUID.init()();
      v22 = type metadata accessor for DesignTimeWatchFace();
      v20((v21 + *(v22 + 20)), v12, v13);
      return sub_100028E88(v6, v21 + *(v22 + 24));
    }
  }

  __break(1u);
  return result;
}

void sub_1000D7574()
{
  type metadata accessor for UUID();
  sub_1000D7A00(&qword_10021DF98, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for DesignTimeWatchFace();
  type metadata accessor for URL();
  sub_1000D7A00(&qword_1002191D8, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v2 = v0 + *(v1 + 24);
  String.hash(into:)();
  v3 = type metadata accessor for DesignTimeImage();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(v3 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000D7A00(&qword_1002194F8, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(v3 + 28)));
}

uint64_t sub_1000D773C(uint64_t a1)
{
  *(a1 + 8) = sub_1000D7A00(&qword_10021DF88, type metadata accessor for DesignTimeWatchFace);
  result = sub_1000D7A00(&qword_10021DF90, type metadata accessor for DesignTimeWatchFace);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeWatchFace()
{
  result = qword_10021E000;
  if (!qword_10021E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7854@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_1000D7904()
{
  Hasher.init(_seed:)();
  sub_1000D7574();
  return Hasher._finalize()();
}

Swift::Int sub_1000D7948()
{
  Hasher.init(_seed:)();
  sub_1000D7574();
  return Hasher._finalize()();
}

uint64_t sub_1000D7984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_100022244((a1 + v6), (a2 + v6));
}

uint64_t sub_1000D7A00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D7A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DesignTimeImage();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000D7C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DesignTimeImage();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000D7D60()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DesignTimeImage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D7DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000D7E70(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000D8630(v13), (v5 & 1) == 0))
  {

    sub_1000D8674(v13);
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_1000363B0(*(v3 + 56) + 32 * v4, &v14);
  sub_1000D8674(v13);

  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_1000D83F4(&v14);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v7 = v13[0];
    v6 = v13[1];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D86C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v12 = v13[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v13[0] = v12;

    static Published.subscript.setter();
    sub_100035DB0(v7, v6);

    return;
  }

LABEL_10:
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10001FDF4(v8, qword_100230610);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "User activity missing remote configuration", v11, 2u);
  }
}

uint64_t sub_1000D81E8()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp20ShazamEventsAppModel__remoteViewConfiguration;
  v2 = sub_100009F70(&qword_10021E118);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShazamEventsAppModel()
{
  result = qword_10021E070;
  if (!qword_10021E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D82F8()
{
  sub_1000D8390();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000D8390()
{
  if (!qword_10021E080)
  {
    sub_10000B3DC(&unk_10021E088);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10021E080);
    }
  }
}

uint64_t sub_1000D83F4(uint64_t a1)
{
  v2 = sub_100009F70(&unk_10021F7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D845C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000D84DC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1000D8558(unsigned __int8 a1)
{
  v2 = sub_100083D04();

  return sub_1000D8728(a1, v2);
}

unint64_t sub_1000D85A0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000D8998(a1, v2);
}

unint64_t sub_1000D8630(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000D8A9C(a1, v4);
}

unint64_t sub_1000D86C8()
{
  result = qword_10021E110;
  if (!qword_10021E110)
  {
    type metadata accessor for RemoteViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E110);
  }

  return result;
}

unint64_t sub_1000D8728(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1000D8998(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000D8A9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000D8B64(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000D8674(v8);
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

uint64_t sub_1000D8BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000D8C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
  result = qword_10021E178;
  if (!qword_10021E178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D8D88()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D8E30(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100009F70(&qword_10021E1B8);
  __chkstk_darwin(v6);
  v8 = &v36[-v7];
  *v8 = static Alignment.center.getter();
  v8[1] = v9;
  v10 = sub_100009F70(&qword_10021E1C0);
  sub_1000D91B0(a1, v8 + *(v10 + 44));
  v11 = v8 + *(sub_100009F70(&qword_10021E1C8) + 36);
  *v11 = 0x3FFC71C71C71C71CLL;
  *(v11 + 4) = 0;
  v12 = *(v3 + 28);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  __asm { FMOV            V0.2D, #24.0 }

  *v5 = _Q0;
  static Color.black.getter();
  v20 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v21 = v8 + *(sub_100009F70(&qword_10021E1D0) + 36);
  sub_1000A3BD8(v5, v21);
  v22 = v21 + *(sub_100009F70(&qword_10021BE20) + 36);
  v23 = v37;
  *v22 = *&v36[8];
  *(v22 + 16) = v23;
  *(v22 + 32) = v38;
  v24 = sub_100009F70(&qword_10021BE28);
  *(v21 + *(v24 + 52)) = v20;
  *(v21 + *(v24 + 56)) = 256;
  v25 = static Alignment.center.getter();
  v27 = v26;
  sub_1000A3C3C(v5);
  v28 = (v21 + *(sub_100009F70(&qword_10021BE30) + 36));
  *v28 = v25;
  v28[1] = v27;
  v29 = static Alignment.center.getter();
  v31 = v30;
  v32 = (v21 + *(sub_100009F70(&qword_10021BDF8) + 36));
  *v32 = v29;
  v32[1] = v31;
  static Color.black.getter();
  v33 = Color.opacity(_:)();

  v34 = v8 + *(sub_100009F70(&qword_10021E1D8) + 36);
  *v34 = v33;
  *(v34 + 8) = xmmword_1001B59F0;
  *(v34 + 3) = 0x4024000000000000;
  *(v8 + *(v6 + 36)) = 1;
  sub_1000D98D4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v8, &qword_10021E1B8);
}

uint64_t sub_1000D91B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a1;
  v49 = a2;
  v45 = type metadata accessor for Image.ResizingMode();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021E210);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v47 = sub_100009F70(&qword_10021E218) - 8;
  v8 = __chkstk_darwin(v47);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v44 - v10;
  v12 = sub_100009F70(&qword_10021E220);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v46 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #24.0 }

  *v17 = _Q0;

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = &v17[*(v13 + 60)];
  v27 = v51;
  *v26 = v50;
  *(v26 + 1) = v27;
  *(v26 + 4) = v52;
  *&v17[*(v13 + 64)] = 256;

  Image.init(systemName:)();
  v28 = enum case for Image.TemplateRenderingMode.original(_:);
  v29 = type metadata accessor for Image.TemplateRenderingMode();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v7, v28, v29);
  (*(v30 + 56))(v7, 0, 1, v29);
  Image.renderingMode(_:)();

  sub_10000D52C(v7, &qword_10021E210);
  v31 = v45;
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v45);
  v32 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v31);
  v53 = v32;
  LOWORD(v54) = 1;
  *(&v54 + 1) = 0x3FFC71C71C71C71CLL;
  LOWORD(v55) = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021E228);
  sub_1000D9B5C();
  View.containerRelativeFrame(_:alignment:_:)();

  sub_100009F70(&qword_1002199C0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001ACB00;
  static Color.white.getter();
  v34 = Color.opacity(_:)();

  *(v33 + 32) = v34;
  *(v33 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Color.white.getter();
  Color.opacity(_:)();

  v35 = &v11[*(sub_100009F70(&qword_10021E238) + 36)];
  sub_100009F70(&qword_10021E240);
  static ShadowStyle.inner(color:radius:x:y:)();

  v36 = v54;
  *v35 = v53;
  *(v35 + 1) = v36;
  *(v35 + 4) = v55;
  static Color.black.getter();
  Color.opacity(_:)();

  sub_100009F70(&qword_10021E248);
  static ShadowStyle.inner(color:radius:x:y:)();

  static Color.black.getter();
  v37 = Color.opacity(_:)();

  v38 = v46;
  v39 = &v11[*(v47 + 44)];
  *v39 = v37;
  *(v39 + 8) = xmmword_1001B5A00;
  *(v39 + 3) = 0x4010000000000000;
  sub_1000D9BE8(v17, v38);
  v40 = v48;
  sub_1000D9C58(v11, v48);
  v41 = v49;
  sub_1000D9BE8(v38, v49);
  v42 = sub_100009F70(&qword_10021E250);
  sub_1000D9C58(v40, v41 + *(v42 + 48));
  sub_10000D52C(v11, &qword_10021E218);
  sub_10000D52C(v17, &qword_10021E220);
  sub_10000D52C(v40, &qword_10021E218);
  return sub_10000D52C(v38, &qword_10021E220);
}

unint64_t sub_1000D98D4()
{
  result = qword_10021E1E0;
  if (!qword_10021E1E0)
  {
    sub_10000B3DC(&qword_10021E1B8);
    sub_1000D9960();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1E0);
  }

  return result;
}

unint64_t sub_1000D9960()
{
  result = qword_10021E1E8;
  if (!qword_10021E1E8)
  {
    sub_10000B3DC(&qword_10021E1D8);
    sub_1000D99EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1E8);
  }

  return result;
}

unint64_t sub_1000D99EC()
{
  result = qword_10021E1F0;
  if (!qword_10021E1F0)
  {
    sub_10000B3DC(&qword_10021E1D0);
    sub_1000D9AA4();
    sub_10000D1EC(&qword_10021BDF0, &qword_10021BDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1F0);
  }

  return result;
}

unint64_t sub_1000D9AA4()
{
  result = qword_10021E1F8;
  if (!qword_10021E1F8)
  {
    sub_10000B3DC(&qword_10021E1C8);
    sub_10000D1EC(&qword_10021E200, &qword_10021E208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1F8);
  }

  return result;
}

unint64_t sub_1000D9B5C()
{
  result = qword_10021E230;
  if (!qword_10021E230)
  {
    sub_10000B3DC(&qword_10021E228);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E230);
  }

  return result;
}

uint64_t sub_1000D9BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D9CCC()
{
  result = qword_10021E258;
  if (!qword_10021E258)
  {
    sub_10000B3DC(&qword_10021E260);
    sub_1000D98D4();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E258);
  }

  return result;
}

Swift::Int sub_1000D9D68()
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

void sub_1000D9DF4()
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

Swift::Int sub_1000D9E70()
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

uint64_t sub_1000D9EF8(void *a1, void *a2)
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

unint64_t sub_1000D9F9C()
{
  result = qword_10021E268;
  if (!qword_10021E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E268);
  }

  return result;
}

unint64_t sub_1000D9FF0(uint64_t a1)
{
  result = sub_1000DA018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA018()
{
  result = qword_10021E270;
  if (!qword_10021E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E270);
  }

  return result;
}

uint64_t sub_1000DA06C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DA0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000DA108()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000E7418(v4, v1);
  sub_1000E7418(v4, v2);
  return Hasher._finalize()();
}

void sub_1000DA15C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000E7418(a1, v3);

  sub_1000E7418(a1, v4);
}

Swift::Int sub_1000DA19C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000E7418(v4, v1);
  sub_1000E7418(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1000DA1EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000E59A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1000E59A8(v2, v3);
}

unint64_t sub_1000DA24C()
{
  result = qword_10021E278;
  if (!qword_10021E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E278);
  }

  return result;
}

unint64_t sub_1000DA2A4()
{
  result = qword_10021E280;
  if (!qword_10021E280)
  {
    type metadata accessor for DesignTimeArtist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E280);
  }

  return result;
}

unint64_t sub_1000DA2FC(uint64_t a1)
{
  result = sub_1000DA324();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA324()
{
  result = qword_10021E2B8;
  if (!qword_10021E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E2B8);
  }

  return result;
}

uint64_t sub_1000DA378()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100009F70(&qword_10021E2C0);
  v4 = (type metadata accessor for DesignTimeArtist() - 8);
  v5 = *(*v4 + 72);
  v6 = *(*v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v44 = v7;
  v45 = v6;
  v42 = v5;
  v43 = 2 * v5;
  v8 = v5;
  v9 = swift_allocObject();
  v47 = v9;
  *(v9 + 16) = xmmword_1001AD7C0;
  v10 = (v9 + v7);
  UUID.init()();
  UUID.uuidString.getter();
  v11 = *(v1 + 8);
  v50 = v1 + 8;
  v51 = v0;
  v41 = v11;
  v11(v3, v0);
  v12 = ResourceID.init(_:)();
  v14 = v13;
  v15 = v4[8];
  v40 = v4;
  sub_1000214E8((v10 + v15));
  v48 = type metadata accessor for DesignTimeImage();
  v49 = *(*(v48 - 8) + 56);
  v49(v10 + v15, 0, 1, v48);
  *v10 = v12;
  v10[1] = v14;
  v10[2] = 0x676147207964614CLL;
  v10[3] = 0xE900000000000061;
  v16 = v10 + v8;
  UUID.init()();
  UUID.uuidString.getter();
  v17 = v0;
  v18 = v41;
  v41(v3, v17);
  v19 = ResourceID.init(_:)();
  v21 = v20;
  v22 = v4[8];
  sub_1000214E8(&v16[v22]);
  v23 = &v16[v22];
  v24 = v48;
  v25 = v49;
  v49(v23, 0, 1, v48);
  *v16 = v19;
  *(v16 + 1) = v21;
  strcpy(v16 + 16, "Maggie Rogers");
  *(v16 + 15) = -4864;
  v26 = (v10 + v43);
  UUID.init()();
  UUID.uuidString.getter();
  v18(v3, v51);
  v27 = ResourceID.init(_:)();
  v29 = v28;
  v30 = v40;
  v31 = v40[8];
  sub_1000214E8((v26 + v31));
  v25(v26 + v31, 0, 1, v24);
  *v26 = v27;
  v26[1] = v29;
  v26[2] = 0x45206E61766C7953;
  v26[3] = 0xEB000000006F7373;
  v32 = v44;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001AEB90;
  v34 = (v33 + v32);
  UUID.init()();
  UUID.uuidString.getter();
  v18(v3, v51);
  v35 = ResourceID.init(_:)();
  v37 = v36;
  v38 = v30[8];
  sub_1000216E0((v34 + v38));
  v49(v34 + v38, 0, 1, v48);
  *v34 = v35;
  v34[1] = v37;
  v34[2] = 0x676147207964614CLL;
  v34[3] = 0xE900000000000061;
  return v47;
}

uint64_t sub_1000DA7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_100218950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000DA888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009F70(&qword_100218950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for LoadingView()
{
  result = qword_10021E340;
  if (!qword_10021E340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DA998()
{
  sub_1000391A4();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000DAA38()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021E2C8 = result;
  unk_10021E2D0 = v1;
  byte_10021E2D8 = v2 & 1;
  qword_10021E2E0 = v3;
  return result;
}

uint64_t sub_1000DAA80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100009F70(&qword_10021E398);
  sub_1000DAB0C(a1, (a2 + *(v5 + 44)));
  v6 = static SafeAreaRegions.all.getter();
  v7 = static Edge.Set.all.getter();
  result = sub_100009F70(&qword_10021E378);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  v9[8] = v7;
  return result;
}

uint64_t sub_1000DAB0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v2 = sub_100009F70(&qword_10021E3A0);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v28 = sub_100009F70(&qword_10021E3A8);
  __chkstk_darwin(v28);
  v6 = &v24 - v5;
  v7 = sub_100009F70(&qword_10021E3B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v26 = Color.init(uiColor:)();
  if (qword_1002183F0 != -1)
  {
    swift_once();
  }

  ProgressView<>.init<>(_:)();
  sub_10000D1EC(&qword_10021E3B8, &qword_10021E3A0);
  v15 = v25;
  View.accessibilityIdentifier(_:)();
  v16 = (*(v24 + 8))(v4, v15);
  __chkstk_darwin(v16);
  *(&v24 - 2) = v27;
  sub_100009F70(&qword_10021E3C0);
  sub_1000DB850();
  v17 = sub_10000B3DC(&qword_10021A8B8);
  v18 = sub_1000DB938();
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_1000DBA2C(v6);
  v19 = *(v8 + 16);
  v19(v11, v13, v7);
  v20 = v29;
  *v29 = v26;
  v21 = sub_100009F70(&qword_10021E3D8);
  v19(v20 + *(v21 + 48), v11, v7);
  v22 = *(v8 + 8);

  v22(v13, v7);
  v22(v11, v7);
}

uint64_t sub_1000DAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009F70(&qword_10021A8A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_100009F70(&qword_10021A8B0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_100009F70(&qword_10021A8B8);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for LoadingView() + 20);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000DBA94(v13);
LABEL_8:
        sub_1000DB938();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000DBA94(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.topBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000DB43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_100219710);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000DBB04(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_10004329C;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_1000DB718()
{
  sub_100009F70(&qword_10021E378);
  sub_1000DB790();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000DB790()
{
  result = qword_10021E380;
  if (!qword_10021E380)
  {
    sub_10000B3DC(&qword_10021E378);
    sub_10000D1EC(&qword_10021E388, &qword_10021E390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E380);
  }

  return result;
}

unint64_t sub_1000DB850()
{
  result = qword_10021E3C8;
  if (!qword_10021E3C8)
  {
    sub_10000B3DC(&qword_10021E3A8);
    sub_10000D1EC(&qword_10021E3B8, &qword_10021E3A0);
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3C8);
  }

  return result;
}

unint64_t sub_1000DB938()
{
  result = qword_10021E3D0;
  if (!qword_10021E3D0)
  {
    sub_10000B3DC(&qword_10021A8B8);
    sub_10000B3DC(&qword_10021A8B0);
    sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3D0);
  }

  return result;
}

uint64_t sub_1000DBA2C(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021E3A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DBA94(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021A8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DBB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_100219710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DBB74()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1000DBC54()
{
  result = qword_10021E3F0;
  if (!qword_10021E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3F0);
  }

  return result;
}

uint64_t sub_1000DBCBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(qword_100218748);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DBD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(qword_100218748);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AttributionViewModel()
{
  result = qword_10021E450;
  if (!qword_10021E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DBE88()
{
  sub_100010780();
  if (v0 <= 0x3F)
  {
    sub_1000DBF28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DBF28()
{
  if (!qword_10021E460)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021E460);
    }
  }
}

uint64_t sub_1000DBF78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v12 - 8);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009F70(&qword_10021A248);
  __chkstk_darwin(v14 - 8);
  v48 = &v39 - v15;
  v16 = sub_100009F70(qword_100218748);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AttributionViewModel();
  sub_10000F680(v2 + *(v26 + 32), v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000D52C(v21, qword_100218748);
    object = v2[1]._object;
    countAndFlagsBits = v2[1]._countAndFlagsBits;
    v51 = object;

    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    String.append(_:)(v2[3]);
    AttributeContainer.init()();
    return AttributedString.init(_:attributes:)();
  }

  else
  {
    v42 = v5;
    (*(v23 + 32))(v25, v21, v22);
    v30 = v2->_object;
    countAndFlagsBits = v2->_countAndFlagsBits;
    v51 = v30;

    v31._countAndFlagsBits = 23328;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v2[3]._countAndFlagsBits;
    v40 = v2[3]._object;
    v32._object = v40;
    v41 = v32._countAndFlagsBits;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 10333;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_100035F10();
    v43 = v25;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    (*(v23 + 56))(v19, 1, 1, v22);
    (*(v45 + 104))(v47, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v46);
    (*(v7 + 104))(v9, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v6);
    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v36 = v48;
    AttributedString.init(markdown:options:baseURL:)();
    (*(v23 + 8))(v43, v22);
    v37 = type metadata accessor for AttributedString();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v36, 0, 1, v37);
    return (*(v38 + 32))(v49, v36, v37);
  }
}

void sub_1000DC608(uint64_t a1)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v4 = v1[4];
  v5 = v1[5];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v6 = *(v1 + *(type metadata accessor for AttributionViewModel() + 36));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 5;
  v7 = v1[6];
  v8 = v1[7];
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = v7;
  *(inited + 160) = v8;
  *(inited + 168) = 0;
  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v17 = v9;
  v18 = v10;

  v11 = sub_1001666DC(1, 5, 1, inited);
  v15 = v11;
  sub_1000109BC(&aBlock, v22);
  sub_1000EB0D0(4, v22, &v15, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001ELL;
  v13[3] = 0x80000001001BDDE0;
  v13[4] = v11;
  v20 = sub_100010AAC;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000DCA40;
  v19 = &unk_10020E648;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_1000DC888()
{

  return swift_deallocObject();
}

uint64_t sub_1000DC8C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000DC90C@<D0>(uint64_t a1@<X8>)
{
  sub_100009F70(&qword_1002199C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001ACB00;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v2 + 32) = Color.init(uiColor:)();
  *(v2 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

unint64_t sub_1000DC9EC()
{
  result = qword_10021E4A0;
  if (!qword_10021E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E4A0);
  }

  return result;
}

Class sub_1000DCA40(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10002EB9C();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1000DCACC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100009F70(&qword_10021E4A8);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1000DCD70()
{
  v1 = v0;
  sub_100009F70(&qword_10021E4A8);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void sub_1000DCEDC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = a3;
  if (*(a4 + 72))
  {
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_1001666DC(1, 3, 1, inited);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v9;
  v16 = v10;
  v11[2] = 3;
  sub_100071318(&aBlock, (v11 + 14));
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x80000001001C08E0;
  v13[4] = v11;
  v18 = sub_1000DD130;
  v19 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020E6B8;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_1000DD0F0()
{

  return swift_deallocObject();
}

uint64_t sub_1000DD14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000DD168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    sub_10005DA94(v2, v37);
    v7 = v38;
    v8 = v39;
    sub_100028124(v37, v38);
    v9 = (*(v8 + 16))(v7, v8);
    if (v9 <= 1)
    {
      if (v9)
      {
        v11 = 0xE800000000000000;
        v10 = 0x4449656C646E7562;
        if (!v3[2])
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        v10 = 25705;
        if (!v3[2])
        {
          goto LABEL_19;
        }
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE800000000000000;
      v10 = 0x656D614E65676170;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else if (v9 == 3)
    {
      v10 = 0x614E656C75646F6DLL;
      v11 = 0xEA0000000000656DLL;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0x6341656C75646F6DLL;
      v11 = 0xEC0000006E6F6974;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    sub_100022004(v10, v11);
    v13 = v12;

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_20:
    v14 = v38;
    v15 = v39;
    sub_100028124(v37, v38);
    v16 = (*(v15 + 16))(v14, v15);
    if (v16 <= 1)
    {
      v17 = v16 ? 0x4449656C646E7562 : 25705;
      v18 = v16 ? 0xE800000000000000 : 0xE200000000000000;
    }

    else if (v16 == 2)
    {
      v18 = 0xE800000000000000;
      v17 = 0x656D614E65676170;
    }

    else if (v16 == 3)
    {
      v17 = 0x614E656C75646F6DLL;
      v18 = 0xEA0000000000656DLL;
    }

    else
    {
      v17 = 0x6341656C75646F6DLL;
      v18 = 0xEC0000006E6F6974;
    }

    v19 = v38;
    v20 = v39;
    sub_100028124(v37, v38);
    v21 = (*(v20 + 32))(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v23 = sub_100022004(v17, v18);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1000DCACC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_100022004(v17, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v34 = v23;
    sub_1000DCD70();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v4 = v23;

      v3 = v36;
      v5 = v36[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v21;

      goto LABEL_4;
    }

LABEL_38:
    v3 = v36;
    v36[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v36[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v18;
    *(v36[7] + 8 * v23) = v21;
    v32 = v36[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_45;
    }

    v36[2] = v33;
LABEL_4:
    sub_100021498(v37);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DD558(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000DD644(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v59 = a1;
  v3 = sub_100009F70(&qword_10021E4E0);
  __chkstk_darwin(v3 - 8);
  v63 = &v58 - v4;
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Music();
  v58 = *(v6 - 8);
  v7 = v58 + 56;
  v8 = *(v58 + 56);
  v8(v2 + v5, 1, 1, v6);
  v9 = v2 + *(*v2 + 136);
  v62 = v7;
  v61 = v8;
  v8(v9, 1, 1, v6);
  v10 = (v2 + *(*v2 + 144));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 152)) = 1;
  *(v2 + *(*v2 + 160)) = &_swiftEmptyArrayStorage;
  v11 = *(*v2 + 168);
  v12 = type metadata accessor for Artist();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = *(*v2 + 176);
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = *(*v2 + 184);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + *(*v2 + 192)) = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, 64);
  sub_10008319C(&v65, v64);
  sub_1000831F8(v69);
  v17 = (v2 + *(*v2 + 232));
  v18 = v68;
  v17[2] = v67;
  v17[3] = v18;
  v19 = v66;
  *v17 = v65;
  v17[1] = v19;
  v20 = (v2 + *(*v2 + 240));
  *v20 = 0;
  v20[1] = 0;
  v21 = v2 + *(*v2 + 248);
  *v21 = LocalizedStringKey.init(stringLiteral:)();
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  *(v21 + 24) = v24;
  v25 = (v2 + *(*v2 + 256));
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v70._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x80000001001BF370;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v70);

  *v25 = v30;
  v31 = (v2 + *(*v2 + 264));
  v32 = [v26 mainBundle];
  v71._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD00000000000002DLL;
  v33._object = 0x80000001001C0290;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v71);

  *v31 = v35;
  v36 = (v2 + *(*v2 + 272));
  v37 = [v26 mainBundle];
  v72._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD00000000000003ALL;
  v38._object = 0x80000001001C02C0;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v72);

  *v36 = v40;
  v41 = (v2 + *(*v2 + 280));
  *v41 = 0xD000000000000010;
  v41[1] = 0x80000001001C0300;
  v42 = (v2 + *(*v2 + 288));
  v43 = [v26 mainBundle];
  v73._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000029;
  v44._object = 0x80000001001C0320;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v73);

  *v42 = v46;
  v47 = (v2 + *(*v2 + 296));
  v48 = [v26 mainBundle];
  v74._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000037;
  v49._object = 0x80000001001C0350;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v74);

  *v47 = v51;
  v52 = v59;
  v53 = v58;
  v54 = v60;
  ObservationRegistrar.init()();
  (*(v53 + 16))(v2 + *(*v2 + 200), v52, v6);
  v55 = *(v53 + 48);
  if (v55(v54, 1, v6) == 1)
  {
    v56 = v63;
    (*(v53 + 32))(v63, v52, v6);
    if (v55(v54, 1, v6) != 1)
    {
      sub_10000D52C(v54, &qword_10021E4E0);
    }
  }

  else
  {
    (*(v53 + 8))(v52, v6);
    v56 = v63;
    (*(v53 + 32))(v63, v54, v6);
  }

  v61(v56, 0, 1, v6);
  sub_10000F618(v56, v2 + *(*v2 + 208), &qword_10021E4E0);
  return v2;
}

uint64_t sub_1000DDDF0@<X0>(uint64_t a1@<X8>)
{
  v233 = a1;
  v222 = type metadata accessor for ErrorView();
  __chkstk_darwin(v222);
  v174 = (&v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = sub_100009F70(&qword_10021E4B0);
  __chkstk_darwin(v176);
  v178 = &v172 - v3;
  v220 = sub_100009F70(&qword_10021E4B8);
  __chkstk_darwin(v220);
  v179 = &v172 - v4;
  v177 = sub_100009F70(&qword_10021E4C0);
  __chkstk_darwin(v177);
  v173 = (&v172 - v5);
  v183 = type metadata accessor for Theater();
  v182 = *(v183 - 8);
  v6 = __chkstk_darwin(v183);
  v172 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v175 = &v172 - v8;
  v194 = sub_100009F70(&qword_10021E4C8);
  __chkstk_darwin(v194);
  v181 = (&v172 - v9);
  v189 = type metadata accessor for Sport();
  v188 = *(v189 - 8);
  v10 = __chkstk_darwin(v189);
  v180 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v187 = &v172 - v12;
  v190 = sub_100009F70(&qword_10021E4D0);
  __chkstk_darwin(v190);
  v192 = &v172 - v13;
  v214 = sub_100009F70(&qword_10021E4D8);
  __chkstk_darwin(v214);
  v193 = &v172 - v14;
  v15 = sub_100009F70(&qword_10021E4E0);
  __chkstk_darwin(v15 - 8);
  v185 = &v172 - v16;
  v191 = sub_100009F70(&qword_10021E4E8);
  __chkstk_darwin(v191);
  v186 = (&v172 - v17);
  v199 = type metadata accessor for Music();
  v198 = *(v199 - 8);
  v18 = __chkstk_darwin(v199);
  v184 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = &v172 - v20;
  v209 = sub_100009F70(&qword_10021E4F0);
  __chkstk_darwin(v209);
  v197 = (&v172 - v21);
  v207 = type metadata accessor for Dance();
  v206 = *(v207 - 8);
  v22 = __chkstk_darwin(v207);
  v196 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v202 = &v172 - v24;
  v216 = sub_100009F70(&qword_10021E4F8);
  __chkstk_darwin(v216);
  v218 = &v172 - v25;
  v210 = sub_100009F70(&qword_10021E500);
  __chkstk_darwin(v210);
  v212 = &v172 - v26;
  v204 = sub_100009F70(&qword_10021E508);
  __chkstk_darwin(v204);
  v205 = &v172 - v27;
  v211 = sub_100009F70(&qword_10021E510);
  __chkstk_darwin(v211);
  v208 = &v172 - v28;
  v217 = sub_100009F70(&qword_10021E518);
  __chkstk_darwin(v217);
  v213 = &v172 - v29;
  v203 = sub_100009F70(&qword_10021E520);
  __chkstk_darwin(v203);
  v201 = (&v172 - v30);
  v224 = type metadata accessor for Art();
  v223 = *(v224 - 8);
  v31 = __chkstk_darwin(v224);
  v200 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v172 - v33;
  v232 = sub_100009F70(&qword_10021E528);
  __chkstk_darwin(v232);
  v219 = &v172 - v34;
  v35 = sub_100009F70(&qword_10021E530);
  v36 = __chkstk_darwin(v35);
  v221 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v229 = &v172 - v38;
  v227 = sub_100009F70(&qword_10021B968);
  __chkstk_darwin(v227);
  v40 = (&v172 - v39);
  v231 = sub_100009F70(&qword_10021E538);
  __chkstk_darwin(v231);
  v234 = &v172 - v41;
  v225 = sub_100009F70(&qword_10021B978);
  __chkstk_darwin(v225);
  v43 = &v172 - v42;
  v230 = sub_100009F70(&qword_10021B980);
  __chkstk_darwin(v230);
  v45 = &v172 - v44;
  v226 = sub_100009F70(&qword_10021B988);
  __chkstk_darwin(v226);
  v47 = (&v172 - v46);
  v48 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v48);
  v50 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = v1;
  v51 = *(v1 + 16);
  swift_getKeyPath();
  v236 = v51;
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  sub_1000E0E8C(v51 + v52, v50, type metadata accessor for EventController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v229;
      sub_10000F618(v50, v229, &qword_10021E530);
      v55 = v35[12];
      v56 = v35[16];
      v57 = v35[20];
      v58 = v35[24];
      v59 = v221;
      sub_10000D58C(v54, v221, &qword_10021E548);
      sub_10000D58C(v54 + v55, v59 + v55, &qword_10021E550);
      sub_10000D58C(v54 + v56, v59 + v56, &qword_10021E4E0);
      sub_10000D58C(v54 + v57, v59 + v57, &qword_10021E558);
      sub_10000D58C(v58 + v54, v58 + v59, &qword_10021E560);
      v60 = v223;
      v61 = v224;
      v62 = (*(v223 + 48))(v59, 1, v224);
      v227 = v57;
      v228 = v58;
      if (v62 != 1)
      {
        v100 = v215;
        (*(v60 + 32))(v215, v59, v61);
        v101 = v200;
        (*(v60 + 16))(v200, v100, v61);
        sub_100009F70(&qword_10021E5D8);
        swift_allocObject();
        v226 = v55;
        v102 = sub_1000E08E0(v101, &type metadata accessor for Art);
        KeyPath = swift_getKeyPath();
        *&v237 = v102;
        State.init(wrappedValue:)();
        v104 = *(&v238 + 1);
        v105 = v201;
        *v201 = v238;
        v105[1] = v104;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
        v105[2] = EnvironmentObject.init()();
        v105[3] = v106;
        v107 = v203;
        v108 = *(v203 + 40);
        *(v105 + v108) = swift_getKeyPath();
        sub_100009F70(&qword_100219710);
        swift_storeEnumTagMultiPayload();
        v109 = v105 + *(v107 + 44);
        *v109 = KeyPath;
        v109[8] = 0;
        sub_10000D58C(v105, v205, &qword_10021E520);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E580, &qword_10021E520);
        v110 = v59;
        sub_10000D1EC(&qword_10021E588, &qword_10021E4F0);
        v111 = v208;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v111, v212, &qword_10021E510);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v112 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v111, &qword_10021E510);
        sub_10000D58C(v112, v218, &qword_10021E518);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v113 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v112, &qword_10021E518);
        sub_10000D52C(v105, &qword_10021E520);
        (*(v223 + 8))(v215, v224);
        sub_10000D52C(v228 + v110, &qword_10021E560);
        sub_10000D52C(v110 + v227, &qword_10021E558);
        sub_10000D52C(v110 + v56, &qword_10021E4E0);
        v81 = &qword_10021E550;
        v114 = v110 + v226;
        v80 = v113;
LABEL_18:
        sub_10000D52C(v114, v81);
        v66 = v234;
        goto LABEL_19;
      }

      v63 = v206;
      v64 = v207;
      v65 = (*(v206 + 48))(v59 + v55, 1, v207);
      v66 = v234;
      if (v65 != 1)
      {
        v115 = v202;
        (*(v63 + 32))(v202, v59 + v55, v64);
        v116 = v196;
        (*(v63 + 16))(v196, v115, v64);
        sub_100009F70(&qword_10021E5D0);
        swift_allocObject();
        v117 = sub_1000E08E0(v116, &type metadata accessor for Dance);
        v118 = swift_getKeyPath();
        *&v237 = v117;
        State.init(wrappedValue:)();
        v119 = *(&v238 + 1);
        v120 = v197;
        *v197 = v238;
        v120[1] = v119;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
        v120[2] = EnvironmentObject.init()();
        v120[3] = v121;
        v122 = v209;
        v123 = *(v209 + 40);
        *(v120 + v123) = swift_getKeyPath();
        sub_100009F70(&qword_100219710);
        swift_storeEnumTagMultiPayload();
        v124 = v120 + *(v122 + 44);
        *v124 = v118;
        v124[8] = 0;
        sub_10000D58C(v120, v205, &qword_10021E4F0);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E580, &qword_10021E520);
        sub_10000D1EC(&qword_10021E588, &qword_10021E4F0);
        v125 = v208;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v125, v212, &qword_10021E510);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v126 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v125, &qword_10021E510);
        sub_10000D58C(v126, v218, &qword_10021E518);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v80 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v126, &qword_10021E518);
        sub_10000D52C(v120, &qword_10021E4F0);
        (*(v206 + 8))(v202, v207);
        sub_10000D52C(v228 + v59, &qword_10021E560);
        sub_10000D52C(v59 + v227, &qword_10021E558);
        sub_10000D52C(v59 + v56, &qword_10021E4E0);
        sub_10000D52C(v59, &qword_10021E548);
LABEL_19:
        sub_10000D58C(v80, v66, &qword_10021E528);
        swift_storeEnumTagMultiPayload();
        sub_100080A3C();
        sub_1000E1274();
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v80, &qword_10021E528);
        v92 = &qword_10021E530;
        v91 = v229;
        return sub_10000D52C(v91, v92);
      }

      v67 = v198;
      v68 = v199;
      if ((*(v198 + 48))(v59 + v56, 1, v199) == 1)
      {
        v226 = v55;
        v69 = v188;
        v70 = v189;
        if ((*(v188 + 48))(v59 + v57, 1, v189) == 1)
        {
          v71 = v182;
          v72 = v183;
          if ((*(v182 + 48))(v58 + v59, 1, v183) == 1)
          {
            v73 = swift_getKeyPath();
            v74 = v174;
            *v174 = v73;
            sub_100009F70(&qword_100219710);
            swift_storeEnumTagMultiPayload();
            v75 = v222;
            v76 = *(v222 + 20);
            *(v74 + v76) = swift_getKeyPath();
            sub_100009F70(&qword_100219718);
            swift_storeEnumTagMultiPayload();
            v77 = (v74 + *(v75 + 24));
            type metadata accessor for RemoteViewConfiguration();
            sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
            *v77 = EnvironmentObject.init()();
            v77[1] = v78;
            sub_1000E0E8C(v74, v178, type metadata accessor for ErrorView);
            swift_storeEnumTagMultiPayload();
            sub_10000D1EC(&qword_10021E568, &qword_10021E4C0);
            sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView);
            v79 = v179;
            _ConditionalContent<>.init(storage:)();
            sub_10000D58C(v79, v218, &qword_10021E4B8);
            swift_storeEnumTagMultiPayload();
            sub_1000E0EF4();
            sub_1000E1144();
            v80 = v219;
            _ConditionalContent<>.init(storage:)();
            sub_10000D52C(v79, &qword_10021E4B8);
            sub_1000E171C(v74, type metadata accessor for ErrorView);
            v81 = &qword_10021E530;
LABEL_17:
            v114 = v59;
            goto LABEL_18;
          }

          v158 = v58 + v59;
          v159 = v175;
          (*(v71 + 32))(v175, v158, v72);
          v160 = v172;
          (*(v71 + 16))(v172, v159, v72);
          sub_100009F70(&qword_10021E5B8);
          swift_allocObject();
          v161 = sub_1000E08E0(v160, &type metadata accessor for Theater);
          v162 = swift_getKeyPath();
          *&v237 = v161;
          State.init(wrappedValue:)();
          v163 = *(&v238 + 1);
          v164 = v173;
          *v173 = v238;
          v164[1] = v163;
          type metadata accessor for RemoteViewConfiguration();
          sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
          v164[2] = EnvironmentObject.init()();
          v164[3] = v165;
          v166 = v177;
          v167 = *(v177 + 40);
          *(v164 + v167) = swift_getKeyPath();
          sub_100009F70(&qword_100219710);
          swift_storeEnumTagMultiPayload();
          v168 = v164 + *(v166 + 44);
          *v168 = v162;
          v168[8] = 0;
          sub_10000D58C(v164, v178, &qword_10021E4C0);
          swift_storeEnumTagMultiPayload();
          sub_10000D1EC(&qword_10021E568, &qword_10021E4C0);
          sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView);
          v169 = v179;
          _ConditionalContent<>.init(storage:)();
          sub_10000D58C(v169, v218, &qword_10021E4B8);
          swift_storeEnumTagMultiPayload();
          sub_1000E0EF4();
          sub_1000E1144();
          v170 = v219;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v169, &qword_10021E4B8);
          sub_10000D52C(v164, &qword_10021E4C0);
          (*(v182 + 8))(v175, v183);
          sub_10000D52C(v59 + v227, &qword_10021E558);
          sub_10000D52C(v59 + v56, &qword_10021E4E0);
          v143 = v59 + v226;
          v80 = v170;
        }

        else
        {
          v144 = v59 + v57;
          v145 = v187;
          (*(v69 + 32))(v187, v144, v70);
          v146 = v180;
          (*(v69 + 16))(v180, v145, v70);
          sub_100009F70(&qword_10021E5C0);
          swift_allocObject();
          v147 = sub_1000E1300(v146);
          v148 = swift_getKeyPath();
          *&v237 = v147;
          State.init(wrappedValue:)();
          v149 = *(&v238 + 1);
          v150 = v181;
          *v181 = v238;
          v150[1] = v149;
          type metadata accessor for RemoteViewConfiguration();
          sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
          v150[2] = EnvironmentObject.init()();
          v150[3] = v151;
          v152 = v194;
          v153 = *(v194 + 40);
          *(v150 + v153) = swift_getKeyPath();
          sub_100009F70(&qword_100219710);
          swift_storeEnumTagMultiPayload();
          v154 = v150 + *(v152 + 44);
          *v154 = v148;
          v154[8] = 0;
          sub_10000D58C(v150, v192, &qword_10021E4C8);
          swift_storeEnumTagMultiPayload();
          sub_10000D1EC(&qword_10021E598, &qword_10021E4E8);
          sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8);
          v155 = v193;
          _ConditionalContent<>.init(storage:)();
          sub_10000D58C(v155, v212, &qword_10021E4D8);
          swift_storeEnumTagMultiPayload();
          sub_1000E0F80();
          sub_1000E1060();
          v156 = v213;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v155, &qword_10021E4D8);
          sub_10000D58C(v156, v218, &qword_10021E518);
          swift_storeEnumTagMultiPayload();
          sub_1000E0EF4();
          sub_1000E1144();
          v157 = v219;
          _ConditionalContent<>.init(storage:)();
          sub_10000D52C(v156, &qword_10021E518);
          sub_10000D52C(v150, &qword_10021E4C8);
          (*(v188 + 8))(v187, v189);
          sub_10000D52C(v228 + v59, &qword_10021E560);
          sub_10000D52C(v59 + v56, &qword_10021E4E0);
          v143 = v59 + v226;
          v80 = v157;
        }
      }

      else
      {
        v127 = v59 + v56;
        v128 = v195;
        (*(v67 + 32))(v195, v127, v68);
        v129 = v184;
        (*(v67 + 16))(v184, v128, v68);
        v130 = v185;
        (*(v67 + 56))(v185, 1, 1, v68);
        sub_100009F70(&qword_10021E5C8);
        swift_allocObject();
        v131 = sub_1000DD644(v129, v130);
        v132 = swift_getKeyPath();
        *&v237 = v131;
        State.init(wrappedValue:)();
        v133 = *(&v238 + 1);
        v134 = v186;
        *v186 = v238;
        v134[1] = v133;
        type metadata accessor for RemoteViewConfiguration();
        sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
        v134[2] = EnvironmentObject.init()();
        v134[3] = v135;
        v136 = v191;
        v137 = *(v191 + 72);
        *(v134 + v137) = swift_getKeyPath();
        sub_100009F70(&qword_100219710);
        swift_storeEnumTagMultiPayload();
        v138 = *(v136 + 76);
        *(v134 + v138) = swift_getKeyPath();
        sub_100009F70(&qword_100219718);
        swift_storeEnumTagMultiPayload();
        v139 = v134 + *(v136 + 80);
        *v139 = v132;
        v139[8] = 0;
        sub_10000D58C(v134, v192, &qword_10021E4E8);
        swift_storeEnumTagMultiPayload();
        sub_10000D1EC(&qword_10021E598, &qword_10021E4E8);
        sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8);
        v140 = v193;
        _ConditionalContent<>.init(storage:)();
        sub_10000D58C(v140, v212, &qword_10021E4D8);
        swift_storeEnumTagMultiPayload();
        sub_1000E0F80();
        sub_1000E1060();
        v141 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v140, &qword_10021E4D8);
        sub_10000D58C(v141, v218, &qword_10021E518);
        swift_storeEnumTagMultiPayload();
        sub_1000E0EF4();
        sub_1000E1144();
        v142 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_10000D52C(v141, &qword_10021E518);
        sub_10000D52C(v134, &qword_10021E4E8);
        (*(v198 + 8))(v195, v199);
        sub_10000D52C(v228 + v59, &qword_10021E560);
        sub_10000D52C(v59 + v227, &qword_10021E558);
        v143 = v59 + v55;
        v80 = v142;
      }

      sub_10000D52C(v143, &qword_10021E550);
      v81 = &qword_10021E548;
      goto LABEL_17;
    }

    *v47 = swift_getKeyPath();
    sub_100009F70(&qword_100219710);
    swift_storeEnumTagMultiPayload();
    v93 = (v47 + *(type metadata accessor for LoadingView() + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v93 = EnvironmentObject.init()();
    v93[1] = v94;
    v95 = v228;
    v96 = *v228;
    v237 = *(v228 + 24);
    v238 = v96;
    v97 = swift_allocObject();
    v98 = v95[1];
    *(v97 + 16) = *v95;
    *(v97 + 32) = v98;
    *(v97 + 48) = *(v95 + 4);
    v99 = (v47 + *(v226 + 36));
    type metadata accessor for _TaskModifier();
    sub_100081738(&v238, v235);

    sub_10000D58C(&v237, v235, &qword_10021B9F0);
    static TaskPriority.userInitiated.getter();
    *v99 = &unk_1001B6168;
    v99[1] = v97;
    sub_10000D58C(v47, v43, &qword_10021B988);
    swift_storeEnumTagMultiPayload();
    sub_100080AC8();
    sub_100080BB4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v45, v234, &qword_10021B980);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_1000E1274();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v45, &qword_10021B980);
    v91 = v47;
    v92 = &qword_10021B988;
  }

  else
  {
    sub_1000E171C(v50, type metadata accessor for EventController.State);
    *v40 = swift_getKeyPath();
    sub_100009F70(&qword_100219710);
    swift_storeEnumTagMultiPayload();
    v82 = v222;
    v83 = *(v222 + 20);
    *(v40 + v83) = swift_getKeyPath();
    sub_100009F70(&qword_100219718);
    swift_storeEnumTagMultiPayload();
    v84 = (v40 + *(v82 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    *v84 = EnvironmentObject.init()();
    v84[1] = v85;
    v86 = v228;
    v87 = *v228;
    v237 = *(v228 + 24);
    v238 = v87;
    v88 = swift_allocObject();
    v89 = v86[1];
    *(v88 + 16) = *v86;
    *(v88 + 32) = v89;
    *(v88 + 48) = *(v86 + 4);
    v90 = (v40 + *(v227 + 36));
    *v90 = sub_1000E1780;
    v90[1] = v88;
    v90[2] = 0;
    v90[3] = 0;
    sub_10000D58C(v40, v43, &qword_10021B968);
    swift_storeEnumTagMultiPayload();

    sub_100081738(&v238, v235);
    sub_10000D58C(&v237, v235, &qword_10021B9F0);
    sub_100080AC8();
    sub_100080BB4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v45, v234, &qword_10021B980);
    swift_storeEnumTagMultiPayload();
    sub_100080A3C();
    sub_1000E1274();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v45, &qword_10021B980);
    v91 = v40;
    v92 = &qword_10021B968;
  }

  return sub_10000D52C(v91, v92);
}