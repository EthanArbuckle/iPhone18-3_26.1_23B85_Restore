uint64_t sub_1000E0760(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_100080584;

  return sub_10014E440(v3, v4);
}

uint64_t sub_1000E0820(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_1000DCEDC(v2, v3, 6, v1);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E122C(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E08E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*v2 + 96);
  v4 = a2(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2 + v3, 1, 1, v4);
  *(v2 + *(*v2 + 104)) = 1;
  v6 = (v2 + *(*v2 + 112));
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 120)) = &_swiftEmptyArrayStorage;
  *(v2 + *(*v2 + 128)) = 0;
  v7 = (v2 + *(*v2 + 144));
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v26._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x80000001001BF370;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v26);

  *v7 = v12;
  v13 = (v2 + *(*v2 + 152));
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001001C0900;
  v14 = (v2 + *(*v2 + 160));
  v15 = [v8 mainBundle];
  v27._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000029;
  v16._object = 0x80000001001C0320;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v27);

  *v14 = v18;
  v19 = (v2 + *(*v2 + 168));
  v20 = [v8 mainBundle];
  v28._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x80000001001C0350;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v28);

  *v19 = v23;
  ObservationRegistrar.init()();
  (*(v5 + 32))(v2 + *(*v2 + 136), a1, v4);
  return v2;
}

uint64_t sub_1000E0C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15EventController__state;
  swift_beginAccess();
  return sub_1000E0E8C(v3 + v4, a2, type metadata accessor for EventController.State);
}

uint64_t sub_1000E0CEC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E0E8C(a1, v6, type metadata accessor for EventController.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000E122C(&qword_10021E540, type metadata accessor for EventController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000E171C(v6, type metadata accessor for EventController.State);
}

uint64_t sub_1000E0E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000E0EF4()
{
  result = qword_10021E570;
  if (!qword_10021E570)
  {
    sub_10000B3DC(&qword_10021E518);
    sub_1000E0F80();
    sub_1000E1060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E570);
  }

  return result;
}

unint64_t sub_1000E0F80()
{
  result = qword_10021E578;
  if (!qword_10021E578)
  {
    sub_10000B3DC(&qword_10021E510);
    sub_10000D1EC(&qword_10021E580, &qword_10021E520);
    sub_10000D1EC(&qword_10021E588, &qword_10021E4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E578);
  }

  return result;
}

unint64_t sub_1000E1060()
{
  result = qword_10021E590;
  if (!qword_10021E590)
  {
    sub_10000B3DC(&qword_10021E4D8);
    sub_10000D1EC(&qword_10021E598, &qword_10021E4E8);
    sub_10000D1EC(&qword_10021E5A0, &qword_10021E4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E590);
  }

  return result;
}

unint64_t sub_1000E1144()
{
  result = qword_10021E5A8;
  if (!qword_10021E5A8)
  {
    sub_10000B3DC(&qword_10021E4B8);
    sub_10000D1EC(&qword_10021E568, &qword_10021E4C0);
    sub_1000E122C(&qword_10021B9D8, type metadata accessor for ErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5A8);
  }

  return result;
}

uint64_t sub_1000E122C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E1274()
{
  result = qword_10021E5B0;
  if (!qword_10021E5B0)
  {
    sub_10000B3DC(&qword_10021E528);
    sub_1000E0EF4();
    sub_1000E1144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5B0);
  }

  return result;
}

uint64_t sub_1000E1300(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = type metadata accessor for Sport();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1 + v2, 1, 1, v3);
  v5 = (v1 + *(*v1 + 104));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = &_swiftEmptyArrayStorage;
  v6 = *(*v1 + 128);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + *(*v1 + 136)) = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 64);
  sub_10008319C(&v31, v30);
  sub_1000831F8(v35);
  v8 = (v1 + *(*v1 + 152));
  v9 = v34;
  v8[2] = v33;
  v8[3] = v9;
  v10 = v32;
  *v8 = v31;
  v8[1] = v10;
  v11 = (v1 + *(*v1 + 160));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + *(*v1 + 168));
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v36._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v15._object = 0x80000001001BF370;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

  *v12 = v17;
  v18 = (v1 + *(*v1 + 176));
  v19 = [v13 mainBundle];
  v37._object = 0xE000000000000000;
  v20._object = 0x80000001001C0320;
  v20._countAndFlagsBits = 0xD000000000000029;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v37);

  *v18 = v22;
  v23 = (v1 + *(*v1 + 184));
  v24 = [v13 mainBundle];
  v38._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000037;
  v25._object = 0x80000001001C0350;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v38);

  *v23 = v27;
  ObservationRegistrar.init()();
  (*(v4 + 32))(v1 + *(*v1 + 144), a1, v3);
  return v1;
}

uint64_t sub_1000E16BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E16EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E171C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E1788()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D890;

  return sub_1000E0760((v0 + 16));
}

unint64_t sub_1000E183C()
{
  result = qword_10021E5E0;
  if (!qword_10021E5E0)
  {
    sub_10000B3DC(&qword_10021E5E8);
    sub_100080A3C();
    sub_1000E1274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E5E0);
  }

  return result;
}

uint64_t sub_1000E18CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000E18F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E1914(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000E195C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E19DC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v15 = *(v0 + 64);
      v9 = *(v0 + 56);
      v14 = v9;
      if (v15 != 1)
      {

        static os_log_type_t.fault.getter();
        v10 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10000D52C(&v14, &qword_10021E658);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v9) = v13[15];
      }

      v11 = v9 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000E4B68(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000E1C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  static Axis.Set.horizontal.getter();
  v16 = a2;
  sub_100009F70(&qword_10021E600);
  sub_1000E25AC();
  ScrollView.init(_:showsIndicators:content:)();
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 81) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a2 + 64);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = (a3 + *(sub_100009F70(&qword_10021E620) + 36));
  *v13 = sub_1000E2754;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return sub_1000E256C(a2, v17);
}

uint64_t sub_1000E1E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_100009F70(&qword_10021E618);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v21[1] = *(sub_100009F70(&qword_10021E628) + 44);
  v24 = *a1;
  v25 = v24;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_10000D58C(&v25, v23, &qword_10021E630);
  sub_1000E256C(a1, v23);
  sub_100009F70(&qword_10021E630);
  sub_100009F70(&qword_10021E638);
  sub_10000D1EC(&qword_10021E640, &qword_10021E630);
  sub_1000E3F5C();
  sub_10000D1EC(&qword_10021E650, &qword_10021E638);
  ForEach<>.init(_:id:content:)();
  v9 = static Edge.Set.horizontal.getter();
  sub_1000E19DC();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v22;
  sub_10000F618(v5, v22, &qword_10021E618);
  result = sub_100009F70(&qword_10021E600);
  v20 = v18 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1000E20DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TabButton();
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_100009F70(&qword_10021E638);
  __chkstk_darwin(v9);
  v11 = &v25[-v10 - 8];
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 16);
  if (v14 == 1)
  {
    if (v13 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
    if (!v13)
    {
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_12;
  }

  if (v13 < 2)
  {
    goto LABEL_8;
  }

  if (*(a2 + 8) == v12 && v14 == v13)
  {
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_12:
  v16 = swift_allocObject();
  v17 = *(a2 + 48);
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v18;
  *(v16 + 88) = v12;
  *(v16 + 96) = v13;
  *v8 = v12;
  *(v8 + 1) = v13;
  v8[16] = v15 & 1;
  *(v8 + 3) = sub_1000E4070;
  *(v8 + 4) = v16;
  v19 = *(v6 + 28);
  *&v8[v19] = swift_getKeyPath();
  sub_100009F70(&qword_100219718);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    if (v13 == 1)
    {
      v20 = 0xEF6E6F697461636FLL;
      v21 = 0x4C746E6572727563;
    }

    else
    {
      v21 = v12;
      v20 = v13;
    }
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 7105633;
  }

  sub_1000E40A4(v8, v11);
  v22 = &v11[*(v9 + 52)];
  *v22 = v21;
  v22[1] = v20;
  sub_10000F618(v11, a3, &qword_10021E638);
  sub_1000E4108(v12, v13);
  sub_1000E4108(v12, v13);
  sub_1000E4108(v12, v13);
  return sub_1000E256C(a2, v25);
}

uint64_t sub_1000E2368(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;

    v4 = sub_100105B10(v3, v2);
    v6 = v5;

    if (v6 != 2)
    {
      (*(a1 + 24))(v4, v6);
      if (v6)
      {
        if (v6 == 1)
        {
          sub_1000E3EE0(v4, 1uLL);
        }
      }

      else
      {
        sub_1000E3EE0(v4, 0);
      }

      static UnitPoint.trailing.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E4B68(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E24D4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_1000E2564;
  a1[1] = v5;
  return sub_1000E256C(v10, v9);
}

unint64_t sub_1000E25AC()
{
  result = qword_10021E608;
  if (!qword_10021E608)
  {
    sub_10000B3DC(&qword_10021E600);
    sub_10000D1EC(&qword_10021E610, &qword_10021E618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E608);
  }

  return result;
}

uint64_t sub_1000E2664()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));
  (*(v2 + 8))(v0 + ((v3 + 81) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000E2754()
{
  type metadata accessor for ScrollViewProxy();

  return sub_1000E2368(v0 + 16);
}

void sub_1000E27B8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x80000001001C09A0;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10021E5F0 = v3;
}

uint64_t sub_1000E285C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_100009F70(&qword_10021E708);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v23 = sub_100009F70(&qword_10021E710);
  __chkstk_darwin(v23);
  v22 = &v22 - v5;
  v26 = sub_100009F70(&qword_10021E718);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v8 = sub_100009F70(&qword_10021E720);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v25 = sub_100009F70(&qword_10021E728);
  __chkstk_darwin(v25);
  v12 = &v22 - v11;
  v13 = sub_100009F70(&qword_10021E730);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v24 = sub_100009F70(&qword_10021E738);
  __chkstk_darwin(v24);
  v17 = &v22 - v16;
  v18 = v1[1];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1000E332C(v4);
      sub_1000E476C();
      v19 = v22;
      View.accessibilityIdentifier(_:)();
      sub_10000D52C(v4, &qword_10021E708);
      sub_10000D58C(v19, v10, &qword_10021E710);
      swift_storeEnumTagMultiPayload();
      sub_1000E46B8(&qword_10021E780, &qword_10021E738, &unk_1001B63A0, sub_1000E43AC);
      sub_1000E46B8(&qword_10021E788, &qword_10021E710, &unk_1001B6378, sub_1000E476C);
      _ConditionalContent<>.init(storage:)();
      sub_10000D58C(v12, v7, &qword_10021E728);
      swift_storeEnumTagMultiPayload();
      sub_1000E45D4();
      _ConditionalContent<>.init(storage:)();
      sub_10000D52C(v12, &qword_10021E728);
      return sub_10000D52C(v19, &qword_10021E710);
    }

    sub_1000E2F10(*v1, v18, v15);
    sub_1000E43AC();
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v15, &qword_10021E730);
    sub_10000D58C(v17, v7, &qword_10021E738);
    swift_storeEnumTagMultiPayload();
    sub_1000E45D4();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &unk_1001B63A0, sub_1000E43AC);
    _ConditionalContent<>.init(storage:)();
    v21 = v17;
  }

  else
  {
    if (qword_1002183F8 != -1)
    {
      swift_once();
    }

    sub_1000E2F10(xmmword_10021E5F0, *(&xmmword_10021E5F0 + 1), v15);
    sub_1000E43AC();
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v15, &qword_10021E730);
    sub_10000D58C(v17, v10, &qword_10021E738);
    swift_storeEnumTagMultiPayload();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &unk_1001B63A0, sub_1000E43AC);
    sub_1000E46B8(&qword_10021E788, &qword_10021E710, &unk_1001B6378, sub_1000E476C);
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v12, v7, &qword_10021E728);
    swift_storeEnumTagMultiPayload();
    sub_1000E45D4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v12, &qword_10021E728);
    v21 = v17;
  }

  return sub_10000D52C(v21, &qword_10021E738);
}

uint64_t sub_1000E2F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v41 = type metadata accessor for ColorScheme();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_100009F70(&qword_10021E760);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v42 = sub_100009F70(&qword_10021E750);
  __chkstk_darwin(v42);
  v43 = &v41 - v16;
  v45 = a1;
  v46 = a2;
  v47 = v3;

  sub_100009F70(&qword_10021AFE8);
  sub_100071294();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v15[*(v13 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  if (*(v3 + 16) == 1)
  {
    v22 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton();
    sub_100024640(v11);
    v23 = v41;
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v41);
    v24 = static ColorScheme.== infix(_:_:)();
    v25 = *(v6 + 8);
    v25(v9, v23);
    v25(v11, v23);
    v26 = objc_opt_self();
    if (v24)
    {
      v27 = [v26 systemGray6Color];
    }

    else
    {
      v27 = [v26 systemGray5Color];
    }

    v28 = v27;
    v22 = Color.init(uiColor:)();
  }

  v29 = v22;
  v30 = v43;
  v31 = static Edge.Set.all.getter();
  sub_10000F618(v15, v30, &qword_10021E760);
  v32 = v30 + *(v42 + 36);
  *v32 = v29;
  *(v32 + 8) = v31;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v33 = qword_100230600;
  v34 = sub_100009F70(&qword_10021E730);
  v35 = v44;
  v36 = (v44 + *(v34 + 36));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v33;
  v36[1] = v33;
  *(v36 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  return sub_10000F618(v30, v35, &qword_10021E750);
}

uint64_t sub_1000E332C@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v88 = type metadata accessor for AccessibilityTraits();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v68 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v66 - v5;
  v6 = type metadata accessor for TitleAndIconLabelStyle();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  __chkstk_darwin(v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolVariants();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021E800);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for LocationButton();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009F70(&qword_10021E7D8);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = sub_100009F70(&qword_10021E7D0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v70 = &v66 - v24;
  v77 = sub_100009F70(&qword_10021E7C0);
  __chkstk_darwin(v77);
  v81 = &v66 - v25;
  v80 = sub_100009F70(&qword_10021E7B0);
  __chkstk_darwin(v80);
  v82 = &v66 - v26;
  v83 = sub_100009F70(&qword_10021E7A0);
  __chkstk_darwin(v83);
  v84 = &v66 - v27;
  static LocationButton.Title.currentLocation.getter();
  v28 = type metadata accessor for LocationButton.Title();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);

  LocationButton.init(_:action:)();
  static SymbolVariants.fill.getter();
  v29 = sub_1000E4B68(&qword_10021E7E0, &type metadata accessor for LocationButton);
  View.symbolVariant(_:)();
  (*(v74 + 8))(v11, v75);
  (*(v71 + 8))(v17, v15);
  v30 = v76;
  TitleAndIconLabelStyle.init()();
  v89 = v15;
  v90 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1000E4B68(&qword_10021E7E8, &type metadata accessor for TitleAndIconLabelStyle);
  v31 = v70;
  v32 = v72;
  v33 = v78;
  View.labelStyle<A>(_:)();
  (*(v79 + 8))(v30, v33);
  (*(v73 + 8))(v21, v32);
  v34 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v31[*(v23 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = *(v1 + 16);
  if (v37 == 1)
  {
    if (qword_100218328 != -1)
    {
      swift_once();
    }

    v38 = qword_100230560;
  }

  else
  {
    v38 = static Color.primary.getter();
  }

  v39 = v82;
  v40 = swift_getKeyPath();
  v41 = v31;
  v42 = v81;
  sub_10000F618(v41, v81, &qword_10021E7D0);
  v43 = (v42 + *(v77 + 36));
  *v43 = v40;
  v43[1] = v38;
  if (v37)
  {
    v44 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton();
    v45 = v66;
    sub_100024640(v66);
    v46 = v68;
    v47 = v67;
    v48 = v69;
    (*(v68 + 104))(v67, enum case for ColorScheme.light(_:), v69);
    v49 = static ColorScheme.== infix(_:_:)();
    v50 = *(v46 + 8);
    v50(v47, v48);
    v50(v45, v48);
    v51 = objc_opt_self();
    if (v49)
    {
      v52 = [v51 systemGray6Color];
    }

    else
    {
      v52 = [v51 systemGray5Color];
    }

    v53 = v52;
    v44 = Color.init(uiColor:)();
  }

  v54 = v44;
  v55 = swift_getKeyPath();
  v89 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  sub_10000F618(v42, v39, &qword_10021E7C0);
  v57 = (v39 + *(v80 + 36));
  *v57 = v55;
  v57[1] = v56;
  if (qword_100218430 != -1)
  {
    swift_once();
  }

  v58 = qword_100230600;
  v59 = v84;
  v60 = &v84[*(v83 + 36)];
  v61 = *(type metadata accessor for RoundedRectangle() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = v58;
  v60[1] = v58;
  *(v60 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
  sub_10000F618(v39, v59, &qword_10021E7B0);
  v64 = v85;
  static AccessibilityTraits.isButton.getter();
  sub_1000E479C();
  View.accessibility(addTraits:)();
  (*(v86 + 8))(v64, v88);
  return sub_10000D52C(v59, &qword_10021E7A0);
}

double sub_1000E3D38@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_100027068();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.footnote.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10000D60C(v3, v5, v7 & 1);

  if (*(a1 + 16) == 1)
  {
    v13 = [objc_opt_self() systemBackgroundColor];
    Color.init(uiColor:)();
  }

  else
  {
    static Color.primary.getter();
  }

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10000D60C(v8, v10, v12 & 1);

  v21 = static Edge.Set.horizontal.getter();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_1000E3EE0(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10008324C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000E3EF0()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_1000E3F5C()
{
  result = qword_10021E648;
  if (!qword_10021E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E648);
  }

  return result;
}

uint64_t type metadata accessor for TabButton()
{
  result = qword_10021E6B8;
  if (!qword_10021E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3FFC()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_100027EB0(*(v0 + 72), *(v0 + 80));
  if (*(v0 + 96) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E40A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4108(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000E4130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_100219838);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E4200(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100219838);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000E42B0()
{
  sub_100018E0C();
  if (v0 <= 0x3F)
  {
    sub_100027A4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000E43AC()
{
  result = qword_10021E740;
  if (!qword_10021E740)
  {
    sub_10000B3DC(&qword_10021E730);
    sub_1000E4464();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E740);
  }

  return result;
}

unint64_t sub_1000E4464()
{
  result = qword_10021E748;
  if (!qword_10021E748)
  {
    sub_10000B3DC(&qword_10021E750);
    sub_1000E451C();
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E748);
  }

  return result;
}

unint64_t sub_1000E451C()
{
  result = qword_10021E758;
  if (!qword_10021E758)
  {
    sub_10000B3DC(&qword_10021E760);
    sub_10000D1EC(&qword_10021E768, &qword_10021E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E758);
  }

  return result;
}

unint64_t sub_1000E45D4()
{
  result = qword_10021E778;
  if (!qword_10021E778)
  {
    sub_10000B3DC(&qword_10021E728);
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &unk_1001B63A0, sub_1000E43AC);
    sub_1000E46B8(&qword_10021E788, &qword_10021E710, &unk_1001B6378, sub_1000E476C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E778);
  }

  return result;
}

uint64_t sub_1000E46B8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_1000E4B68(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E479C()
{
  result = qword_10021E798;
  if (!qword_10021E798)
  {
    sub_10000B3DC(&qword_10021E7A0);
    sub_1000E4854();
    sub_10000D1EC(&qword_100218920, &qword_100218928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E798);
  }

  return result;
}

unint64_t sub_1000E4854()
{
  result = qword_10021E7A8;
  if (!qword_10021E7A8)
  {
    sub_10000B3DC(&qword_10021E7B0);
    sub_1000E490C();
    sub_10000D1EC(&qword_10021E7F0, &qword_10021E7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7A8);
  }

  return result;
}

unint64_t sub_1000E490C()
{
  result = qword_10021E7B8;
  if (!qword_10021E7B8)
  {
    sub_10000B3DC(&qword_10021E7C0);
    sub_1000E49C4();
    sub_10000D1EC(&qword_100219128, &qword_100219130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7B8);
  }

  return result;
}

unint64_t sub_1000E49C4()
{
  result = qword_10021E7C8;
  if (!qword_10021E7C8)
  {
    sub_10000B3DC(&qword_10021E7D0);
    sub_10000B3DC(&qword_10021E7D8);
    type metadata accessor for TitleAndIconLabelStyle();
    type metadata accessor for LocationButton();
    sub_1000E4B68(&qword_10021E7E0, &type metadata accessor for LocationButton);
    swift_getOpaqueTypeConformance2();
    sub_1000E4B68(&qword_10021E7E8, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E7C8);
  }

  return result;
}

uint64_t sub_1000E4B68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E4BD8()
{
  result = qword_10021E808;
  if (!qword_10021E808)
  {
    sub_10000B3DC(&qword_10021E810);
    sub_1000E45D4();
    sub_1000E46B8(&qword_10021E780, &qword_10021E738, &unk_1001B63A0, sub_1000E43AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E808);
  }

  return result;
}

uint64_t sub_1000E4D6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    type metadata accessor for DesignTimeSong();
    if (a1 != a2)
    {
      do
      {
        while (1)
        {
          v6 = MusicItemID.init(stringLiteral:)();
          v8 = v7;
          if (v6 != MusicItemID.init(stringLiteral:)() || v8 != v9)
          {
            break;
          }

          if (!--v2)
          {
            return 1;
          }
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        --v2;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_1000E4E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeMusicPlaylist() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000E7E94(v13, v10, type metadata accessor for DesignTimeMusicPlaylist);
        sub_1000E7E94(v14, v7, type metadata accessor for DesignTimeMusicPlaylist);
        v16 = sub_10018A9C0(v10, v7);
        sub_1000E7EFC(v7, type metadata accessor for DesignTimeMusicPlaylist);
        sub_1000E7EFC(v10, type metadata accessor for DesignTimeMusicPlaylist);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000E5030(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for URL();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v7 - 8);
  v69 = &v61 - v8;
  v70 = sub_100009F70(&qword_10021E8E8);
  __chkstk_darwin(v70);
  v10 = &v61 - v9;
  v73 = type metadata accessor for DesignTimeImage();
  v11 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - v14;
  v71 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v71);
  v79 = &v61 - v16;
  v75 = type metadata accessor for DesignTimeMusicAlbum();
  v17 = __chkstk_darwin(v75);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v22 = (&v61 - v21);
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (!v23 || a1 == a2)
    {
      return 1;
    }

    v62 = v6;
    v72 = v15;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v76 = a2 + v24;
    v77 = a1 + v24;
    v25 = (v11 + 48);
    v26 = (v4 + 48);
    v61 = (v4 + 32);
    v63 = (v4 + 8);
    v65 = *(v20 + 72);
    v66 = (v11 + 48);
    v67 = v10;
    v68 = (v4 + 48);
    while (1)
    {
      sub_1000E7E94(v77, v22, type metadata accessor for DesignTimeMusicAlbum);
      sub_1000E7E94(v76, v19, type metadata accessor for DesignTimeMusicAlbum);
      v27 = *v22 == *v19 && v22[1] == v19[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v22[2] == v19[2] && v22[3] == v19[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = *(v75 + 24);
      v30 = *(v71 + 48);
      v31 = v79;
      sub_10000D58C(v22 + v29, v79, &qword_10021E8F0);
      sub_10000D58C(v19 + v29, v31 + v30, &qword_10021E8F0);
      v32 = *v25;
      v33 = v73;
      if ((*v25)(v31, 1, v73) == 1)
      {
        if (v32(v79 + v30, 1, v33) != 1)
        {
          goto LABEL_40;
        }

        sub_10000D52C(v79, &qword_10021E8F0);
      }

      else
      {
        v34 = v79;
        v35 = v72;
        sub_10000D58C(v79, v72, &qword_10021E8F0);
        if (v32(v34 + v30, 1, v33) == 1)
        {
          sub_1000E7EFC(v35, type metadata accessor for DesignTimeImage);
LABEL_40:
          v59 = &qword_10021E8F8;
          v60 = v79;
LABEL_43:
          sub_10000D52C(v60, v59);
          break;
        }

        v36 = v79 + v30;
        v37 = v74;
        sub_100028E88(v36, v74);
        v26 = v68;
        if ((*v35 != *v37 || v35[1] != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_38:
          sub_1000E7EFC(v74, type metadata accessor for DesignTimeImage);
          sub_1000E7EFC(v72, type metadata accessor for DesignTimeImage);
          v59 = &qword_10021E8F0;
          v60 = v79;
          goto LABEL_43;
        }

        v38 = *(v33 + 24);
        v39 = *(v74 + v38);
        if (*(v72 + v38))
        {
          if (!v39)
          {
            goto LABEL_38;
          }

          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
          v40 = v39;
          v33 = v73;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_38;
        }

        v42 = *(v33 + 28);
        v43 = v72;
        v44 = *(v72 + v42);
        v45 = *(v74 + v42);
        sub_1000E7EFC(v74, type metadata accessor for DesignTimeImage);
        sub_1000E7EFC(v43, type metadata accessor for DesignTimeImage);
        sub_10000D52C(v79, &qword_10021E8F0);
        v27 = v44 == v45;
        v25 = v66;
        if (!v27)
        {
          break;
        }
      }

      v46 = *(v75 + 28);
      v47 = *(v70 + 48);
      v48 = v67;
      sub_10000D58C(v22 + v46, v67, qword_100218748);
      sub_10000D58C(v19 + v46, v48 + v47, qword_100218748);
      v49 = *v26;
      if ((*v26)(v48, 1, v78) == 1)
      {
        if (v49(v48 + v47, 1, v78) != 1)
        {
          goto LABEL_42;
        }

        sub_10000D52C(v48, qword_100218748);
        sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
      }

      else
      {
        v50 = v69;
        sub_10000D58C(v48, v69, qword_100218748);
        if (v49(v48 + v47, 1, v78) == 1)
        {
          (*v63)(v50, v78);
LABEL_42:
          v59 = &qword_10021E8E8;
          v60 = v48;
          goto LABEL_43;
        }

        v51 = v62;
        v52 = v78;
        (*v61)(v62, v48 + v47, v78);
        sub_1000E7E4C(&qword_10021D560, &type metadata accessor for URL);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = v50;
        v54 = *v63;
        v55 = v51;
        v56 = v68;
        (*v63)(v55, v52);
        v57 = v53;
        v26 = v56;
        v54(v57, v52);
        v25 = v66;
        sub_10000D52C(v48, qword_100218748);
        sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
        if ((v64 & 1) == 0)
        {
          return 0;
        }
      }

      v76 += v65;
      v77 += v65;
      if (!--v23)
      {
        return 1;
      }
    }

    sub_1000E7EFC(v19, type metadata accessor for DesignTimeMusicAlbum);
    sub_1000E7EFC(v22, type metadata accessor for DesignTimeMusicAlbum);
  }

  return 0;
}

uint64_t sub_1000E59A8(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for DesignTimeImage();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v54 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v51 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v51);
  v10 = &v44 - v9;
  v50 = type metadata accessor for DesignTimeArtist();
  v11 = __chkstk_darwin(v50);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v16 = (&v44 - v15);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      return 1;
    }

    v53 = v8;
    v48 = v10;
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v55 = a2 + v18;
    v20 = (v4 + 48);
    v21 = *(v14 + 72);
    v46 = &v44 - v15;
    v47 = v21;
    v22 = v49;
    v45 = (v4 + 48);
    while (1)
    {
      sub_1000E7E94(v19, v16, type metadata accessor for DesignTimeArtist);
      sub_1000E7E94(v55, v13, type metadata accessor for DesignTimeArtist);
      v27 = *v16 == *v13 && v16[1] == v13[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v16[2] == v13[2] && v16[3] == v13[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v52 = v19;
      v29 = v20;
      v30 = *(v50 + 24);
      v31 = *(v51 + 48);
      v32 = v48;
      sub_10000D58C(v16 + v30, v48, &qword_10021E8F0);
      sub_10000D58C(v13 + v30, v32 + v31, &qword_10021E8F0);
      v33 = *v29;
      if ((*v29)(v32, 1, v22) == 1)
      {
        if (v33(v32 + v31, 1, v22) != 1)
        {
          goto LABEL_34;
        }

        v20 = v29;
        sub_10000D52C(v32, &qword_10021E8F0);
        sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        v34 = v53;
        sub_10000D58C(v32, v53, &qword_10021E8F0);
        if (v33(v32 + v31, 1, v22) == 1)
        {
          sub_1000E7EFC(v34, type metadata accessor for DesignTimeImage);
          v16 = v46;
LABEL_34:
          v42 = &qword_10021E8F8;
LABEL_35:
          sub_10000D52C(v32, v42);
          break;
        }

        v35 = v32 + v31;
        v36 = v54;
        sub_100028E88(v35, v54);
        v37 = v34[1];
        v27 = *v34 == *v36;
        v16 = v46;
        if ((!v27 || v37 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_31:
          sub_1000E7EFC(v54, type metadata accessor for DesignTimeImage);
          sub_1000E7EFC(v53, type metadata accessor for DesignTimeImage);
          v42 = &qword_10021E8F0;
          goto LABEL_35;
        }

        v38 = *(v22 + 24);
        v39 = *(v54 + v38);
        if (*(v53 + v38))
        {
          if (!v39)
          {
            goto LABEL_31;
          }

          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
          v40 = v39;
          v22 = v49;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v39)
        {
          goto LABEL_31;
        }

        v23 = *(v22 + 28);
        v24 = v53;
        v25 = *(v53 + v23);
        v26 = *(v54 + v23);
        sub_1000E7EFC(v54, type metadata accessor for DesignTimeImage);
        sub_1000E7EFC(v24, type metadata accessor for DesignTimeImage);
        sub_10000D52C(v32, &qword_10021E8F0);
        sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
        v27 = v25 == v26;
        v20 = v45;
        if (!v27)
        {
          return 0;
        }
      }

      v55 += v47;
      v19 = v52 + v47;
      if (!--v17)
      {
        return 1;
      }
    }

    sub_1000E7EFC(v13, type metadata accessor for DesignTimeArtist);
    sub_1000E7EFC(v16, type metadata accessor for DesignTimeArtist);
  }

  return 0;
}

uint64_t sub_1000E5FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1000E6084(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DesignTimeImage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  String.hash(into:)();
  String.hash(into:)();
  v15 = v1[4];
  Hasher._combine(_:)(*(v15 + 16));
  for (i = *(v15 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }

  sub_1000E6D8C(a1, v1[5]);
  sub_1000E6810(a1, v1[6]);
  v17 = type metadata accessor for DesignTimeMusicKitArtist();
  sub_10000D58C(v1 + *(v17 + 36), v14, &qword_10021E8F0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
    v19 = v23;
    v18 = v24;
  }

  else
  {
    sub_100028E88(v14, v11);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
    v18 = v24;
    dispatch thunk of Hashable.hash(into:)();
    v19 = v23;
    if (*&v11[*(v8 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v11[*(v8 + 28)]);
    sub_1000E7EFC(v11, type metadata accessor for DesignTimeImage);
  }

  sub_10000D58C(v1 + *(v17 + 40), v7, qword_100218748);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v22;
    (*(v19 + 32))(v22, v7, v18);
    Hasher._combine(_:)(1u);
    sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v20, v18);
  }
}

uint64_t sub_1000E65A0(uint64_t a1)
{
  result = sub_1000E7E4C(&qword_10021E888, type metadata accessor for DesignTimeMusicKitArtist);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicKitArtist()
{
  result = qword_10021E958;
  if (!qword_10021E958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E66C0(uint64_t a1)
{
  *(a1 + 8) = sub_1000E7E4C(&qword_10021E8D0, type metadata accessor for DesignTimeMusicKitArtist);
  result = sub_1000E7E4C(&qword_10021E8D8, type metadata accessor for DesignTimeMusicKitArtist);
  *(a1 + 16) = result;
  return result;
}

Swift::Int sub_1000E678C()
{
  Hasher.init(_seed:)();
  sub_1000E6084(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000E67D0()
{
  Hasher.init(_seed:)();
  sub_1000E6084(v1);
  return Hasher._finalize()();
}

void sub_1000E6810(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v33 = &v24 - v6;
  v7 = type metadata accessor for DesignTimeImage();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v30 = type metadata accessor for DesignTimeMusicAlbum();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  if (v16)
  {
    v17 = v13;
    v18 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v30 + 24);
    v30 = *(v30 + 28);
    v31 = v19;
    v20 = (v28 + 48);
    v26 = (v28 + 32);
    v25 = (v28 + 8);
    v28 = *(v17 + 72);
    v29 = (v32 + 48);
    v32 = v7;
    do
    {
      sub_1000E7E94(v18, v15, type metadata accessor for DesignTimeMusicAlbum);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000D58C(&v15[v31], v12, &qword_10021E8F0);
      if ((*v29)(v12, 1, v7) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100028E88(v12, v9);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v9[*(v7 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v7 = v32;
        Hasher._combine(_:)(v9[*(v32 + 28)]);
        sub_1000E7EFC(v9, type metadata accessor for DesignTimeImage);
      }

      v21 = v33;
      sub_10000D58C(&v15[v30], v33, qword_100218748);
      if ((*v20)(v21, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v27;
        (*v26)(v27, v21, v3);
        Hasher._combine(_:)(1u);
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        v23 = v22;
        v7 = v32;
        (*v25)(v23, v3);
      }

      sub_1000E7EFC(v15, type metadata accessor for DesignTimeMusicAlbum);
      v18 += v28;
      --v16;
    }

    while (v16);
  }
}

void sub_1000E6D8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for DesignTimeImage();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v10 - 8);
  v39 = &v27 - v11;
  v12 = type metadata accessor for DesignTimeMusicPlaylist();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  v38 = v16;
  if (v16)
  {
    v17 = a2;
    v18 = 0;
    v37 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = v12[9];
    v35 = v12[8];
    v36 += 6;
    v33 = v12[10];
    v34 = v19;
    v20 = v28;
    v31 = *(v13 + 72);
    v32 = (v28 + 6);
    ++v28;
    v29 = (v20 + 4);
    do
    {
      sub_1000E7E94(v37 + v31 * v18, v15, type metadata accessor for DesignTimeMusicPlaylist);
      String.hash(into:)();
      String.hash(into:)();
      if (*(v15 + 5))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!*(v15 + 7))
        {
          goto LABEL_8;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!*(v15 + 7))
        {
LABEL_8:
          Hasher._combine(_:)(0);
          goto LABEL_9;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_9:
      v21 = v39;
      sub_10000D58C(&v15[v35], v39, &qword_10021E8F0);
      if ((*v36)(v21, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v40;
        sub_100028E88(v21, v40);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*(v22 + *(v8 + 24)))
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v23 = v40;
        Hasher._combine(_:)(*(v40 + *(v8 + 28)));
        sub_1000E7EFC(v23, type metadata accessor for DesignTimeImage);
      }

      sub_10000D58C(&v15[v34], v7, qword_100218748);
      if ((*v32)(v7, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v24 = v30;
        (*v29)(v30, v7, v3);
        Hasher._combine(_:)(1u);
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        (*v28)(v24, v3);
      }

      v25 = *&v15[v33];
      Hasher._combine(_:)(*(v25 + 16));
      for (i = *(v25 + 16); i; --i)
      {
        MusicItemID.init(stringLiteral:)();
        String.hash(into:)();
      }

      ++v18;
      sub_1000E7EFC(v15, type metadata accessor for DesignTimeMusicPlaylist);
    }

    while (v18 != v38);
  }
}

void sub_1000E7418(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DesignTimeImage();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DesignTimeArtist();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = *(v9 + 24);
    v15 = v10;
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = (v20 + 48);
    v18 = *(v15 + 72);
    v19 = v14;
    v20 = v18;
    do
    {
      sub_1000E7E94(v16, v12, type metadata accessor for DesignTimeArtist);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000D58C(&v12[v14], v8, &qword_10021E8F0);
      if ((*v17)(v8, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
        sub_1000E7EFC(v12, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        sub_100028E88(v8, v5);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        type metadata accessor for URL();
        sub_1000E7E4C(&qword_1002191D8, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v5[*(v3 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_1000E7E4C(&qword_1002194F8, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v5[*(v3 + 28)]);
        sub_1000E7EFC(v12, type metadata accessor for DesignTimeArtist);
        sub_1000E7EFC(v5, type metadata accessor for DesignTimeImage);
        v14 = v19;
      }

      v16 += v20;
      --v13;
    }

    while (v13);
  }
}

BOOL sub_1000E77D8(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v6 - 8);
  v44 = &v41 - v7;
  v8 = sub_100009F70(&qword_10021E8E8);
  __chkstk_darwin(v8);
  v45 = &v41 - v9;
  v10 = type metadata accessor for DesignTimeImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100009F70(&qword_10021E8F0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v41 - v15);
  v17 = sub_100009F70(&qword_10021E8F8);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_1000E4D6C(a1[4], a2[4]) & 1) == 0 || (sub_1000E4E78(a1[5], a2[5]) & 1) == 0 || (sub_1000E5030(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v42 = v4;
  v41 = type metadata accessor for DesignTimeMusicKitArtist();
  v20 = *(v41 + 36);
  v21 = *(v17 + 48);
  sub_10000D58C(a1 + v20, v19, &qword_10021E8F0);
  v22 = a2 + v20;
  v23 = v21;
  sub_10000D58C(v22, &v19[v21], &qword_10021E8F0);
  v24 = *(v11 + 48);
  if (v24(v19, 1, v10) != 1)
  {
    sub_10000D58C(v19, v16, &qword_10021E8F0);
    if (v24(&v19[v23], 1, v10) != 1)
    {
      sub_100028E88(&v19[v23], v13);
      v27 = sub_100022244(v16, v13);
      sub_1000E7EFC(v13, type metadata accessor for DesignTimeImage);
      sub_1000E7EFC(v16, type metadata accessor for DesignTimeImage);
      sub_10000D52C(v19, &qword_10021E8F0);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    sub_1000E7EFC(v16, type metadata accessor for DesignTimeImage);
LABEL_15:
    v25 = &qword_10021E8F8;
    v26 = v19;
LABEL_23:
    sub_10000D52C(v26, v25);
    return 0;
  }

  if (v24(&v19[v23], 1, v10) != 1)
  {
    goto LABEL_15;
  }

  sub_10000D52C(v19, &qword_10021E8F0);
LABEL_17:
  v28 = *(v41 + 40);
  v29 = *(v8 + 48);
  v30 = a1 + v28;
  v31 = v45;
  sub_10000D58C(v30, v45, qword_100218748);
  sub_10000D58C(a2 + v28, v31 + v29, qword_100218748);
  v32 = v46;
  v33 = *(v46 + 48);
  v34 = v42;
  if (v33(v31, 1, v42) == 1)
  {
    if (v33(v31 + v29, 1, v34) == 1)
    {
      sub_10000D52C(v31, qword_100218748);
      return 1;
    }

    goto LABEL_22;
  }

  v35 = v44;
  sub_10000D58C(v31, v44, qword_100218748);
  if (v33(v31 + v29, 1, v34) == 1)
  {
    (*(v32 + 8))(v35, v34);
LABEL_22:
    v25 = &qword_10021E8E8;
    v26 = v31;
    goto LABEL_23;
  }

  v37 = v31 + v29;
  v38 = v43;
  (*(v32 + 32))(v43, v37, v34);
  sub_1000E7E4C(&qword_10021D560, &type metadata accessor for URL);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v32 + 8);
  v40(v38, v34);
  v40(v35, v34);
  sub_10000D52C(v31, qword_100218748);
  return (v39 & 1) != 0;
}

uint64_t sub_1000E7E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E7E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E7EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E7F70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_10021E8F0);
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
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000E80C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021E8F0);
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
      v13 = sub_100009F70(qword_100218748);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000E81FC()
{
  sub_1000E83D0(319, &qword_10021E968, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000E83D0(319, &qword_10021E970, type metadata accessor for DesignTimeMusicPlaylist, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1000E83D0(319, &qword_10021E978, type metadata accessor for DesignTimeMusicAlbum, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1000E83D0(319, &qword_10021E980, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000E83D0(319, &qword_100218E80, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000E83D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000E8434()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000E8580(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000E9A94(a1);
  return v2;
}

uint64_t sub_1000E85C0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000E86A8();

  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000E8748(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000E88E8()
{
  swift_getKeyPath();
  sub_1000E86A8();

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1000E8970(char a1)
{
  v3 = *(*v1 + 104);
  sub_10001EBF4();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8810();
  }

  return result;
}

uint64_t sub_1000E8AD0()
{
  v0 = sub_1000EB4B4();

  return v0;
}

uint64_t sub_1000E8B08(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8810();
  }
}

uint64_t sub_1000E8C80()
{
  sub_1000EB540();
}

uint64_t sub_1000E8CA8(uint64_t a1)
{
  v3 = *(*v1 + 120);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8810();
  }
}

void *sub_1000E8E40()
{
  v0 = sub_1000EB61C();
  v1 = v0;
  return v0;
}

void sub_1000E8E6C(void *a1)
{
  v3 = *(*v1 + 128);
  sub_100009F70(&qword_10021D568);
  sub_1000BB21C();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8810();
  }
}

uint64_t sub_1000E8FE4@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1000E86A8();

  v3 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_1000E90C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 136);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

uint64_t sub_1000E917C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = (*(*(v2 + 88) + 136))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000E92AC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = v28 - v9;
  v11 = *(v5 - 8);
  __chkstk_darwin(v8);
  v13 = v28 - v12;
  v14 = sub_1000E9A04();
  if (v15)
  {
    v16 = v15;
    v29 = v14;
    sub_100009F70(&qword_100219EF8);
    v17 = swift_allocObject();
    v28[1] = a2;
    v18 = v17;
    *(v17 + 16) = xmmword_1001ACB00;
    sub_1000E8FE4(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = v21;
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    v18[7] = &type metadata for String;
    v23 = sub_100096600();
    v18[4] = v20;
    v18[5] = v22;
    v18[12] = &type metadata for String;
    v18[13] = v23;
    v24 = v29;
    v18[8] = v23;
    v18[9] = v24;
    v18[10] = v16;
    return String.init(format:_:)();
  }

  else
  {
    sub_1000E8FE4(v13);
    (*(v4 + 168))(v5, v4);
    (*(v11 + 8))(v13, v5);
    v26 = swift_getAssociatedConformanceWitness();
    v27 = sub_1000FC8F4(AssociatedTypeWitness, v26);
    (*(v7 + 8))(v10, AssociatedTypeWitness);
    return v27;
  }
}

uint64_t sub_1000E95E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = (*(*(v2 + 88) + 120))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000E96F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - v5;
  sub_1000E8FE4(&v8 - v5);
  (*(*(v2 + 88) + 176))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000E97F8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v14 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v14 - v9;
  sub_1000E8FE4(&v14 - v9);
  (*(v1 + 176))(v2, v1);
  (*(v8 + 8))(v10, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v12;
}

id sub_1000E9A04()
{
  result = sub_1000EB61C();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E9A94(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  (*(*(v3 - 8) + 56))(&v28 - v5, 1, 1, v3);
  v7 = *(*v1 + 96);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(v1 + v7, v6, v8);
  *(v1 + *(*v1 + 104)) = 1;
  v9 = (v1 + *(*v1 + 112));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 120)) = static Array._allocateUninitialized(_:)();
  *(v1 + *(*v1 + 128)) = 0;
  v10 = (v1 + *(*v1 + 144));
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v29._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x80000001001BF370;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v29);

  *v10 = v15;
  v16 = (v1 + *(*v1 + 152));
  *v16 = 0xD000000000000011;
  v16[1] = 0x80000001001C0900;
  v17 = (v1 + *(*v1 + 160));
  v18 = [v11 mainBundle];
  v30._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000029;
  v19._object = 0x80000001001C0320;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v30);

  *v17 = v21;
  v22 = (v1 + *(*v1 + 168));
  v23 = [v11 mainBundle];
  v31._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x80000001001C0350;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v31);

  *v22 = v26;
  ObservationRegistrar.init()();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 136), a1);
  return v1;
}

uint64_t sub_1000E9E74(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E917C(a1);
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_1000E8B08(v1, v2);
}

uint64_t sub_1000E9EAC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v1[8] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;

  return _swift_task_switch(sub_1000E9FD8);
}

uint64_t sub_1000E9FD8()
{
  v1 = v0[3];
  sub_1000E8FE4(v0[6]);
  v2 = *(v1 + 88);
  v6 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000EA100;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_1000EA100(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000EA300;
  }

  else
  {
    v4[12] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000EA288;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_1000EA288()
{
  v1 = *(v0 + 96);

  sub_1000E8CA8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EA300()
{
  v14 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = sub_1000E97F8();
    v9 = sub_10005D4E8(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for venue: %s, error: %@", v4, 0x16u);
    sub_1000EB068(v5);

    sub_100021498(v6);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000EA520()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*v0 + 88);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;

  return _swift_task_switch(sub_1000EA658);
}

uint64_t sub_1000EA658()
{
  if (sub_1000EB61C())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_1000E96F0(0);
    v3 = swift_task_alloc();
    v0[11] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1000EA77C;
    v5 = v0[7];
    v6 = v0[5];

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000EA77C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = *(v4 + 56);
  v9 = *(v4 + 40);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_1000EA99C;
  }

  else
  {
    *(v5 + 96) = a1;
    (*v7)(v8, v9);
    v10 = sub_1000EA924;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_1000EA924()
{
  v1 = *(v0 + 96);

  sub_1000E8E6C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EA99C()
{

  sub_1000E8E6C(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EAA10(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v9 - v5;
  sub_1000E8FE4(&v9 - v5);
  v7 = sub_1000A199C(v6, v3, *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_1000EAB08(uint64_t a1)
{
  v2 = sub_1000E95E0(a1);
  v4 = v3;
  v5 = sub_1000EAA10(v2);
  sub_1000DCEDC(v2, v4, v5, a1);
}

void sub_1000EAB68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v9 = a1;
  v10 = sub_1000E95E0(a1);
  v12 = v11;
  v13 = sub_1000EAA10(v10);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = v9;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v15 = *(a5 + 64);
    v16 = *(a5 + 72);
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v23 = v15;
  v24 = v16;

  sub_1000109A4(a2, a3, a4);

  v17 = sub_1001666DC(1, 5, 1, inited);
  v21 = v17;
  sub_1000109BC(&aBlock, v28);
  sub_1000EB0D0(4, v28, &v21, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = 0xD00000000000001ELL;
  v19[3] = 0x80000001001BDDE0;
  v19[4] = v17;
  v26 = sub_1000EBA28;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000DCA40;
  v25 = &unk_10020E9C0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v20);
}

uint64_t sub_1000EAE00()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 136), v2);

  v4 = *(*v0 + 176);
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1000EAFF8()
{
  sub_1000EAE00();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EB068(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EB0D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100043D3C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100071318(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000EB170@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000EB540();
}

__n128 sub_1000EB1E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000EB1F0()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 120)) = *(v0 + 24);
}

uint64_t sub_1000EB240(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = *(v4 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v11 = *(v4 + 88);
  v15[4] = *(*(v11 + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, a1, v6);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v12);
    v15[-2] = v5;
    v15[-1] = v11;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v2;
    v15[-1] = a1;
    sub_1000E8810();
  }
}

uint64_t sub_1000EB4B4()
{
  swift_getKeyPath();
  sub_1000E86A8();

  return *(v0 + *(*v0 + 112));
}

uint64_t sub_1000EB540()
{
  swift_getKeyPath();
  sub_1000E86A8();

  return *(v0 + *(*v0 + 120));
}

uint64_t sub_1000EB61C()
{
  swift_getKeyPath();
  sub_1000E86A8();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1000EB6A4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v14[-v7];
  v9 = *(v4 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if (v4)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    *&v14[-16] = v5;
    *&v14[-8] = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v14[-16] = v2;
    *&v14[-8] = a1;
    sub_1000E8810();
  }
}

id sub_1000EB8F4@<X0>(void *a1@<X8>)
{
  v2 = sub_1000EB61C();
  *a1 = v2;

  return v2;
}

void sub_1000EB930(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000E8E6C(v1);
}

void sub_1000EB96C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 128);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1000EB9E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000EBA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EBA48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000E88E8();
  *a1 = result;
  return result;
}

uint64_t sub_1000EBACC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000EB4B4();
  a1[1] = v2;
}

uint64_t sub_1000EBB0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000E8B08(v1, v2);
}

uint64_t sub_1000EBB6C()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1000EBD4C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 96);
  v9 = *(v4 + 104);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 12;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_1000109A4(a1, a2, a3);

  v14 = sub_1001666DC(1, 5, 1, inited);
  v18 = v14;
  sub_1000109BC(&aBlock, v25);
  sub_1000EB0D0(4, v25, &v18, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001BDDE0;
  v16[4] = v14;
  v23 = sub_100010AAC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000DCA40;
  v22 = &unk_10020EAC8;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1000EC04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v12 = swift_allocObject();
  sub_1000EC59C(a1, a2, a3, a4, a5, a6);
  return v12;
}

double sub_1000EC0CC()
{
  swift_getKeyPath();
  sub_1000EC288();

  return *(v0 + 120);
}

uint64_t sub_1000EC140(double a1)
{
  sub_10001EA38();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 120) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000EC318();
  }

  return result;
}

double sub_1000EC3E0()
{
  swift_getKeyPath();
  sub_1000EC288();

  return *(v0 + 128);
}

uint64_t sub_1000EC454(double a1)
{
  sub_10001EA38();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 128) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000EC318();
  }

  return result;
}

uint64_t sub_1000EC59C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  *(v6 + 16) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 24) = v13;
  *(v6 + 32) = v14 & 1;
  *(v6 + 40) = v15;
  *(v6 + 48) = 0x7A65426863746177;
  *(v6 + 56) = 0xEA00000000006C65;
  *(v6 + 64) = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 72) = v16;
  *(v6 + 80) = v17 & 1;
  *(v6 + 88) = v18;
  ObservationRegistrar.init()();
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  *(v6 + 112) = a3;
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 136) = a4;
  return v6;
}

uint64_t sub_1000EC684()
{

  v1 = qword_10021EA48;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000EC724()
{
  sub_1000EC684();

  return swift_deallocClassInstance();
}

uint64_t sub_1000EC794()
{

  return swift_deallocObject();
}

uint64_t sub_1000EC7D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000EC84C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000EC858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v3[11] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v4;

  return _swift_task_switch(sub_1000EC8F4);
}

uint64_t sub_1000EC8F4()
{
  v1 = *(v0 + 56);
  v5 = *(v0 + 64);
  *(v0 + 40) = v5;
  v2 = sub_100043D3C((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_10009A860;

  return sub_100033744(v0 + 16);
}

double sub_1000EC9D4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 120) = result;
  return result;
}

double sub_1000ECA44()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 128) = result;
  return result;
}

uint64_t sub_1000ECA5C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v7;
  *(a4 + 89) = *(a1 + 89);
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v9;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  *(a4 + 112) = EnvironmentObject.init()();
  *(a4 + 120) = v10;
  v11 = type metadata accessor for PlaylistModule();
  v12 = *(v11 + 56);
  *(a4 + v12) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  result = swift_storeEnumTagMultiPayload();
  v14 = a4 + *(v11 + 60);
  *v14 = a2;
  *(v14 + 8) = a3 & 1;
  return result;
}

void sub_1000ECBA8()
{
  type metadata accessor for PlaylistViewModel();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      sub_10000E648();
      if (v2 <= 0x3F)
      {
        sub_1000F565C(319, &qword_10021A870, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000ECCA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_100218D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000ECD70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_100218D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000ECE64(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 112);
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
      v11 = v1 + *(a1 + 60);
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
  sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000ED0E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v29 = sub_10000B3DC(&qword_10021AFA8);
  v30 = a1[2];
  v3 = type metadata accessor for Array();
  v31 = a1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v4 = type metadata accessor for Button();
  v22 = type metadata accessor for PlainButtonStyle();
  v25 = v4;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  v26 = type metadata accessor for AccessibilityAttachmentModifier();
  v23 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v3;
  v46 = &type metadata for String;
  v47 = v23;
  v48 = swift_getWitnessTable();
  v49 = &protocol witness table for String;
  v18[2] = type metadata accessor for ForEach();
  v27 = a1[3];
  type metadata accessor for Array();
  v28 = a1[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v19 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v18[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v49 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v20 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v42 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v47 = v19;
  v48 = v21;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v44;
  v39 = swift_getWitnessTable();
  v37 = v5;
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v18 - v11;
  static HorizontalAlignment.leading.getter();
  *&v13 = v30;
  *(&v13 + 1) = v27;
  *&v14 = v31;
  *(&v14 + 1) = v28;
  v34 = v13;
  v35 = v14;
  v36 = v32;
  VStack.init(alignment:spacing:content:)();
  v15 = swift_getWitnessTable();
  sub_100157EFC(v10, v6, v15);
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_100157EFC(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t sub_1000ED8BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v144 = a1;
  v145 = a2;
  v139 = a6;
  v9 = type metadata accessor for ContentMarginPlacement();
  v137 = *(v9 - 8);
  v138 = v9;
  __chkstk_darwin(v9);
  v136 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollIndicatorVisibility();
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v132 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Array();
  v146 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v14 = type metadata accessor for Button();
  v15 = type metadata accessor for PlainButtonStyle();
  v130 = v15;
  v142 = v14;
  WitnessTable = swift_getWitnessTable();
  v133 = WitnessTable;
  v129 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  *&v173 = v14;
  *(&v173 + 1) = v15;
  *&v174 = WitnessTable;
  *(&v174 + 1) = v129;
  v126 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v143 = type metadata accessor for AccessibilityAttachmentModifier();
  v17 = type metadata accessor for ModifiedContent();
  v131 = v17;
  v18 = swift_getWitnessTable();
  *&v173 = v13;
  *(&v173 + 1) = &type metadata for String;
  *&v174 = v17;
  *(&v174 + 1) = v18;
  *&v175 = &protocol witness table for String;
  v124 = type metadata accessor for ForEach();
  v19 = type metadata accessor for Array();
  v140 = a3;
  v141 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v127 = swift_getWitnessTable();
  v22 = v129;
  v21 = v130;
  *&v173 = v20;
  *(&v173 + 1) = v130;
  *&v174 = v127;
  *(&v174 + 1) = v129;
  swift_getOpaqueTypeMetadata2();
  v23 = type metadata accessor for ModifiedContent();
  v125 = v23;
  v24 = swift_getWitnessTable();
  *&v173 = v19;
  *(&v173 + 1) = &type metadata for String;
  *&v174 = v23;
  *(&v174 + 1) = v24;
  *&v175 = &protocol witness table for String;
  v123 = type metadata accessor for ForEach();
  v128 = type metadata accessor for _ConditionalContent();
  *&v173 = v142;
  *(&v173 + 1) = v21;
  *&v174 = v133;
  *(&v174 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v171 = OpaqueTypeConformance2;
  v172 = v26;
  v170 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *&v173 = v20;
  *(&v173 + 1) = v21;
  *&v174 = v127;
  *(&v174 + 1) = v22;
  v168 = swift_getOpaqueTypeConformance2();
  v169 = v26;
  v133 = v26;
  v167 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v165 = v27;
  v166 = v28;
  swift_getWitnessTable();
  v111 = type metadata accessor for HStack();
  v110 = swift_getWitnessTable();
  v29 = type metadata accessor for ScrollView();
  v123 = *(v29 - 8);
  __chkstk_darwin(v29);
  v109 = &v103 - v30;
  v31 = swift_getWitnessTable();
  *&v173 = v29;
  *(&v173 + 1) = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v118 = &v103 - v33;
  v125 = v29;
  *&v173 = v29;
  *(&v173 + 1) = v31;
  v113 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  *&v173 = OpaqueTypeMetadata2;
  *(&v173 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v120 = *(v35 - 8);
  __chkstk_darwin(v35);
  v117 = &v103 - v36;
  v127 = OpaqueTypeMetadata2;
  *&v173 = OpaqueTypeMetadata2;
  *(&v173 + 1) = v34;
  v112 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v126 = v35;
  *&v173 = v35;
  *(&v173 + 1) = v37;
  v116 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v119 = *(v38 - 8);
  __chkstk_darwin(v38);
  v115 = &v103 - v39;
  v122 = v40;
  v131 = type metadata accessor for ModifiedContent();
  v128 = *(v131 - 8);
  v41 = __chkstk_darwin(v131);
  v130 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v114 = &v103 - v44;
  __chkstk_darwin(v43);
  v129 = &v103 - v45;
  v46 = type metadata accessor for AccessibilityTraits();
  v107 = *(v46 - 8);
  v108 = v46;
  __chkstk_darwin(v46);
  v106 = &v103 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100009F70(&qword_10021AFA8);
  v48 = __chkstk_darwin(v142);
  v121 = &v103 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v105 = &v103 - v51;
  __chkstk_darwin(v50);
  v143 = &v103 - v52;
  v53 = v144[5];
  v177 = v144[4];
  v178[0] = v53;
  *(v178 + 9) = *(v144 + 89);
  v54 = v144[1];
  v173 = *v144;
  v174 = v54;
  v55 = v144[3];
  v175 = v144[2];
  v176 = v55;
  *&v159 = v145;
  v57 = v140;
  v56 = v141;
  *(&v159 + 1) = v140;
  *&v160 = v146;
  *(&v160 + 1) = v141;
  type metadata accessor for PlaylistViewModel();
  sub_100032F58();
  v58 = Text.init(_:tableName:bundle:comment:)();
  v60 = v59;
  LOBYTE(v26) = v61;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v62 = Text.font(_:)();
  v103 = v63;
  v104 = v62;
  LOBYTE(v22) = v64;
  v66 = v65;
  v67 = v144;

  sub_10000D60C(v58, v60, v26 & 1);

  LOBYTE(v35) = static Edge.Set.leading.getter();
  v69 = v145;
  v68 = v146;
  *&v159 = v145;
  *(&v159 + 1) = v57;
  *&v160 = v146;
  *(&v160 + 1) = v56;
  v70 = type metadata accessor for PlaylistModule();
  sub_1000ECE64(v70);
  EdgeInsets.init(_all:)();
  v164 = v22 & 1;
  v163 = 0;
  *&v155 = v104;
  *(&v155 + 1) = v103;
  LOBYTE(v156) = v22 & 1;
  *(&v156 + 1) = v66;
  LOBYTE(v157) = v35;
  *(&v157 + 1) = v71;
  *&v158[0] = v72;
  *(&v158[0] + 1) = v73;
  *&v158[1] = v74;
  BYTE8(v158[1]) = 0;
  sub_100009F70(&qword_10021AFE8);
  sub_100071294();
  v75 = v105;
  View.accessibilityIdentifier(_:)();
  v161 = v157;
  v162[0] = v158[0];
  *(v162 + 9) = *(v158 + 9);
  v159 = v155;
  v160 = v156;
  v76 = v132;
  sub_10000D52C(&v159, &qword_10021AFE8);
  v77 = v106;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v107 + 8))(v77, v108);
  sub_10000D52C(v75, &qword_10021AFA8);
  static Axis.Set.horizontal.getter();
  v147 = v69;
  v148 = v140;
  v149 = v68;
  v150 = v141;
  v78 = v109;
  v151 = v67;
  sub_1001511F4();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100009F70(&qword_10021A390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v75) = static Axis.Set.vertical.getter();
  *(inited + 32) = v75;
  v80 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v80;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v75)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v80)
  {
    Axis.Set.init(rawValue:)();
  }

  v81 = v118;
  v82 = v125;
  View.scrollIndicators(_:axes:)();
  (*(v134 + 8))(v76, v135);
  (*(v123 + 8))(v78, v82);
  static Edge.Set.leading.getter();
  sub_1000ECE64(v70);
  v146 = v70;
  v83 = v136;
  static ContentMarginPlacement.scrollContent.getter();
  v84 = v117;
  v85 = v127;
  View.contentMargins(_:_:for:)();
  v86 = v138;
  v87 = *(v137 + 8);
  v87(v83, v138);
  (*(v124 + 8))(v81, v85);
  static Edge.Set.trailing.getter();
  sub_1000ECE64(v146);
  static ContentMarginPlacement.scrollContent.getter();
  v89 = v115;
  v88 = v116;
  v90 = v126;
  View.contentMargins(_:_:for:)();
  v87(v83, v86);
  (*(v120 + 8))(v84, v90);
  *&v155 = v90;
  *(&v155 + 1) = v88;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v114;
  v93 = v122;
  View.accessibilityIdentifier(_:)();
  (*(v119 + 8))(v89, v93);
  v154[2] = v91;
  v154[3] = v133;
  v94 = v131;
  v95 = swift_getWitnessTable();
  v96 = v129;
  sub_100157EFC(v92, v94, v95);
  v97 = v128;
  v98 = *(v128 + 8);
  v98(v92, v94);
  v99 = v143;
  v100 = v121;
  sub_10000D58C(v143, v121, &qword_10021AFA8);
  *&v155 = v100;
  v101 = v130;
  (*(v97 + 16))(v130, v96, v94);
  *(&v155 + 1) = v101;
  v154[0] = v142;
  v154[1] = v94;
  v152 = sub_1000F5B38(&qword_10021B000, &qword_10021AFA8, &unk_1001B6A30, sub_100071294);
  v153 = v95;
  sub_100151024(&v155, 2uLL, v154);
  v98(v96, v94);
  sub_10000D52C(v99, &qword_10021AFA8);
  v98(v101, v94);
  return sub_10000D52C(v100, &qword_10021AFA8);
}

uint64_t sub_1000EE960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v29 = a2;
  v31 = a1;
  v32 = a6;
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  v23 = type metadata accessor for PlainButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v25 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v20[0] = type metadata accessor for ForEach();
  v27 = a3;
  type metadata accessor for Array();
  v28 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v8 = type metadata accessor for Button();
  v21 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v20[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v50 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v24 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v43 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v46 = v8;
  v47 = v23;
  v48 = v21;
  v49 = v22;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v45;
  v40 = swift_getWitnessTable();
  v38 = v9;
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  v33 = v29;
  v34 = v27;
  v35 = v30;
  v36 = v28;
  v37 = v31;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  sub_100157EFC(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_100157EFC(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1000EEF9C@<X0>(unsigned __int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a6;
  v103 = a5;
  v92 = a2;
  v9 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  v93 = a3;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  v112 = &unk_1001B6AD0;
  swift_getWitnessTable();
  v10 = type metadata accessor for Button();
  v11 = type metadata accessor for PlainButtonStyle();
  v111 = &protocol conformance descriptor for Button<A>;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v109 = WitnessTable;
  v110 = v10;
  v107 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v106 = type metadata accessor for AccessibilityAttachmentModifier();
  v101 = &protocol conformance descriptor for [A];
  v89 = v9;
  *&v144 = v9;
  *(&v144 + 1) = &type metadata for String;
  v108 = type metadata accessor for ModifiedContent();
  *&v145 = v108;
  *(&v145 + 1) = swift_getWitnessTable();
  v85 = *(&v145 + 1);
  *&v146 = &protocol witness table for String;
  v14 = type metadata accessor for ForEach();
  KeyPath = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v87 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v86 = v81 - v17;
  v18 = v92;
  *&v144 = v92;
  *(&v144 + 1) = a3;
  *&v145 = a4;
  *(&v145 + 1) = v103;
  v96 = type metadata accessor for PlaylistModule();
  v90 = *(v96 - 8);
  v94 = *(v90 + 64);
  __chkstk_darwin(v96);
  v95 = v81 - v19;
  v20 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  v21 = type metadata accessor for Button();
  v104 = swift_getWitnessTable();
  v105 = v21;
  *&v144 = v21;
  *(&v144 + 1) = v11;
  v111 = v13;
  v112 = v11;
  *&v145 = v104;
  *(&v145 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for ModifiedContent();
  v23 = swift_getWitnessTable();
  v84 = v20;
  *&v144 = v20;
  v24 = v90;
  *(&v144 + 1) = &type metadata for String;
  *&v145 = v22;
  v106 = v22;
  v81[1] = v23;
  *(&v145 + 1) = v23;
  *&v146 = &protocol witness table for String;
  v25 = type metadata accessor for ForEach();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v83 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v82 = v81 - v29;
  v98 = v30;
  v107 = v14;
  v31 = v103;
  v32 = type metadata accessor for _ConditionalContent();
  v100 = *(v32 - 8);
  v101 = v32;
  __chkstk_darwin(v32);
  v99 = v81 - v33;
  v34 = a1[5];
  v148 = a1[4];
  v149[0] = v34;
  *(v149 + 9) = *(a1 + 89);
  v35 = a1[1];
  v144 = *a1;
  v145 = v35;
  v36 = a1[3];
  v146 = a1[2];
  v147 = v36;
  v37 = v93;
  v138 = __PAIR128__(v93, v18);
  v97 = a4;
  *&v139 = a4;
  *(&v139 + 1) = v31;
  type metadata accessor for PlaylistViewModel();
  v38 = sub_100032FE0();
  v91 = v24 + 16;
  v39 = a1[5];
  v142 = a1[4];
  v143[0] = v39;
  *(v143 + 9) = *(a1 + 89);
  v40 = a1[1];
  v138 = *a1;
  v139 = v40;
  v41 = a1[3];
  v140 = a1[2];
  v141 = v41;
  if (v38)
  {
    v137 = sub_100033050();
    __chkstk_darwin(v137);
    v81[-4] = v18;
    v81[-3] = v37;
    v42 = v97;
    v79 = v97;
    v80 = v31;
    KeyPath = swift_getKeyPath();
    v89 = v26;
    v44 = v95;
    v43 = v96;
    (*(v24 + 16))(v95, a1, v96);
    v45 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v18;
    *(v46 + 3) = v37;
    *(v46 + 4) = v42;
    *(v46 + 5) = v31;
    (*(v24 + 32))(&v46[v45], v44, v43);
    v133 = v105;
    v134 = v112;
    v135 = v104;
    v136 = v111;
    v103 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    v117 = OpaqueTypeConformance2;
    v118 = v48;
    v49 = swift_getWitnessTable();
    v79 = v49;
    v50 = v83;
    ForEach<>.init(_:id:content:)();
    v116 = v49;
    v51 = v98;
    v52 = swift_getWitnessTable();
    v53 = v82;
    sub_100157EFC(v50, v51, v52);
    v54 = *(v89 + 8);
    v54(v50, v51);
    sub_100157EFC(v53, v51, v52);
    v133 = v110;
    v134 = v112;
    v135 = v109;
    v136 = v111;
    v114 = swift_getOpaqueTypeConformance2();
    v115 = v48;
    v113 = swift_getWitnessTable();
    swift_getWitnessTable();
    v55 = v99;
    sub_100061878(v50, v51);
    v54(v50, v51);
    v54(v53, v51);
  }

  else
  {
    v137 = sub_10003311C();
    __chkstk_darwin(v137);
    v81[-4] = v18;
    v81[-3] = v37;
    v56 = v97;
    v79 = v97;
    v80 = v31;
    v84 = swift_getKeyPath();
    v58 = v95;
    v57 = v96;
    (*(v24 + 16))(v95, a1, v96);
    v59 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v60 = swift_allocObject();
    *(v60 + 2) = v18;
    *(v60 + 3) = v37;
    *(v60 + 4) = v56;
    *(v60 + 5) = v31;
    (*(v24 + 32))(&v60[v59], v58, v57);
    v133 = v110;
    v134 = v112;
    v135 = v109;
    v136 = v111;
    v103 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    v131 = v61;
    v132 = v62;
    v63 = swift_getWitnessTable();
    v79 = v63;
    v64 = v87;
    ForEach<>.init(_:id:content:)();
    v130 = v63;
    v65 = v107;
    v66 = swift_getWitnessTable();
    v67 = v86;
    sub_100157EFC(v64, v65, v66);
    v68 = *(KeyPath + 8);
    v68(v64, v65);
    sub_100157EFC(v67, v65, v66);
    v133 = v105;
    v134 = v112;
    v135 = v104;
    v136 = v111;
    v128 = swift_getOpaqueTypeConformance2();
    v129 = v62;
    v127 = swift_getWitnessTable();
    v69 = v98;
    swift_getWitnessTable();
    v55 = v99;
    sub_100061970(v64, v69, v65);
    v68(v64, v65);
    v68(v67, v65);
  }

  v71 = v111;
  v70 = v112;
  v133 = v105;
  v134 = v112;
  v135 = v104;
  v136 = v111;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v125 = v72;
  v126 = v73;
  v124 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v133 = v110;
  v134 = v70;
  v135 = v109;
  v136 = v71;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v73;
  v121 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v119 = v74;
  v120 = v75;
  v76 = v101;
  v77 = swift_getWitnessTable();
  sub_100157EFC(v55, v76, v77);
  return (*(v100 + 8))(v55, v76);
}

uint64_t sub_1000EFCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  v82 = a6;
  v83 = a2;
  v86 = a7;
  v87 = a1;
  v11 = type metadata accessor for PlainButtonStyle();
  v67 = v11;
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v84 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a3;
  v96 = a4;
  v97 = a5;
  v98 = a6;
  v78 = type metadata accessor for PlaylistModule();
  v13 = *(v78 - 8);
  v80 = *(v13 + 64);
  v14 = __chkstk_darwin(v78);
  v16 = &v60 - v15;
  v17 = *(a3 - 8);
  v73 = *(v17 + 64);
  __chkstk_darwin(v14);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v76 = type metadata accessor for PlaylistItem();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v79 = *(v20 - 8);
  __chkstk_darwin(v20);
  v69 = &v60 - v21;
  v23 = v22;
  v68 = v22;
  v24 = swift_getWitnessTable();
  v65 = v24;
  v64 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v95 = v23;
  v96 = v11;
  v97 = v24;
  v98 = v64;
  v71 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v62 = &v60 - v25;
  type metadata accessor for AccessibilityAttachmentModifier();
  v74 = type metadata accessor for ModifiedContent();
  v77 = *(v74 - 8);
  v26 = __chkstk_darwin(v74);
  v63 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v70 = &v60 - v28;
  v29 = v17;
  (*(v17 + 16))(v19, v87, a3);
  v30 = v13;
  v31 = *(v13 + 16);
  v32 = v16;
  v33 = v78;
  v31(v16, v83, v78);
  v34 = v29;
  v35 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v36 = (v73 + *(v30 + 80) + v35) & ~*(v30 + 80);
  v37 = swift_allocObject();
  v38 = a3;
  *(v37 + 2) = a3;
  v39 = v81;
  *(v37 + 3) = v81;
  *(v37 + 4) = a5;
  v40 = a5;
  v41 = v82;
  *(v37 + 5) = v82;
  v42 = &v37[v35];
  v43 = v38;
  (*(v34 + 32))(v42, v61);
  (*(v30 + 32))(&v37[v36], v32, v33);
  v88 = v43;
  v89 = v39;
  v90 = v40;
  v91 = v41;
  v92 = v87;
  v44 = v69;
  Button.init(action:label:)();
  v45 = v84;
  PlainButtonStyle.init()();
  v46 = v62;
  v47 = v68;
  v48 = v67;
  v49 = v65;
  v50 = v64;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v45, v48);
  (*(v79 + 8))(v44, v47);
  v95 = v47;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v63;
  v53 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v72 + 8))(v46, v53);
  v54 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v93 = OpaqueTypeConformance2;
  v94 = v54;
  v55 = v74;
  v56 = swift_getWitnessTable();
  v57 = v70;
  sub_100157EFC(v52, v55, v56);
  v58 = *(v77 + 8);
  v58(v52, v55);
  sub_100157EFC(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_1000F0498(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v34 = a4;
  v37 = type metadata accessor for OpenURLAction();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(a5 + 96))(a3, a5);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000D52C(v13, qword_100218748);
  }

  (*(v15 + 32))(v20, v13, v14);
  v44 = __PAIR128__(v34, a3);
  v33 = a3;
  v22 = v34;
  *&v45 = a5;
  v23 = v35;
  *(&v45 + 1) = v35;
  type metadata accessor for PlaylistModule();
  sub_100023FD4(v10);
  v24 = *(a2 + 80);
  v48 = *(a2 + 64);
  *v49 = v24;
  *&v49[9] = *(a2 + 89);
  v25 = *(a2 + 16);
  v44 = *a2;
  v45 = v25;
  v26 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v26;
  *&v38 = v33;
  *(&v38 + 1) = v22;
  *&v39 = a5;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistViewModel();
  sub_1000331E8(v20, v18);
  OpenURLAction.callAsFunction(_:)();
  v27 = *(v15 + 8);
  v27(v18, v14);
  (*(v36 + 8))(v10, v37);
  v28 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43[0] = v28;
  *(v43 + 9) = *(a2 + 89);
  v29 = *(a2 + 16);
  v38 = *a2;
  v39 = v29;
  v30 = *(a2 + 32);
  v41 = *(a2 + 48);
  v40 = v30;
  if (*(a2 + 112))
  {

    sub_100033274(v31);

    return (v27)(v20, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000F4DE4(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F08A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  __chkstk_darwin(v5 - 8);
  v27 = &v23 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for PlaylistItem();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = (*(a2 + 64))(a1, a2);
  v23 = v15;
  v24 = v14;
  v16 = (*(a2 + 72))(a1, a2);
  v18 = v17;
  v19 = v27;
  (*(a2 + 88))(a1, a2);
  sub_1000F0B24(v24, v23, v16, v18, v19, v11);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v11, v7, WitnessTable);
  v21 = *(v8 + 8);
  v21(v11, v7);
  sub_100157EFC(v13, v7, WitnessTable);
  return (v21)(v13, v7);
}

uint64_t sub_1000F0B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for PlaylistItem() + 40);
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t sub_1000F0BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v79 = a3;
  v84 = a1;
  v85 = a2;
  v83 = a7;
  v11 = type metadata accessor for PlainButtonStyle();
  v65 = v11;
  v82 = *(v11 - 8);
  __chkstk_darwin(v11);
  v81 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a6;
  v70 = a6;
  v72 = type metadata accessor for PlaylistModule();
  v13 = *(v72 - 8);
  v78 = *(v13 + 64);
  v14 = __chkstk_darwin(v72);
  v16 = &v58 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v59 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = type metadata accessor for PlaylistItem();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Button();
  v77 = *(v19 - 8);
  __chkstk_darwin(v19);
  v67 = &v58 - v20;
  v22 = v21;
  v66 = v21;
  v23 = swift_getWitnessTable();
  v63 = v23;
  v62 = sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  v94 = v22;
  v95 = v11;
  v96 = v23;
  v97 = v62;
  v69 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v60 = &v58 - v24;
  type metadata accessor for AccessibilityAttachmentModifier();
  v73 = type metadata accessor for ModifiedContent();
  v76 = *(v73 - 8);
  v25 = __chkstk_darwin(v73);
  v61 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v68 = &v58 - v27;
  (*(v17 + 16))(&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v84, a4);
  v28 = v13;
  v29 = *(v13 + 16);
  v30 = v16;
  v31 = v72;
  v29(v16, v85, v72);
  v32 = v17;
  v33 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v34 = (v18 + *(v28 + 80) + v33) & ~*(v28 + 80);
  v35 = swift_allocObject();
  v36 = v79;
  *(v35 + 2) = v79;
  *(v35 + 3) = a4;
  v37 = a4;
  v38 = v80;
  v39 = v70;
  *(v35 + 4) = v80;
  *(v35 + 5) = v39;
  v40 = &v35[v33];
  v41 = v37;
  (*(v32 + 32))(v40, v59);
  (*(v28 + 32))(&v35[v34], v30, v31);
  v86 = v36;
  v87 = v41;
  v88 = v38;
  v89 = v39;
  v90 = v84;
  v91 = v85;
  v42 = v67;
  Button.init(action:label:)();
  v43 = v81;
  PlainButtonStyle.init()();
  v44 = v60;
  v45 = v66;
  v46 = v65;
  v47 = v63;
  v48 = v62;
  View.buttonStyle<A>(_:)();
  (*(v82 + 8))(v43, v46);
  (*(v77 + 8))(v42, v45);
  v94 = v45;
  v95 = v46;
  v96 = v47;
  v97 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v61;
  v51 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v71 + 8))(v44, v51);
  v52 = sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v92 = OpaqueTypeConformance2;
  v93 = v52;
  v53 = v73;
  v54 = swift_getWitnessTable();
  v55 = v68;
  sub_100157EFC(v50, v53, v54);
  v56 = *(v76 + 8);
  v56(v50, v53);
  sub_100157EFC(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_1000F13C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v33 = a3;
  v9 = type metadata accessor for OpenURLAction();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  (*(a6 + 64))(a4, a6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000D52C(v14, qword_100218748);
  }

  (*(v16 + 32))(v21, v14, v15);
  v23 = a6;
  v32 = a6;
  v24 = a4;
  v25 = v33;
  *&v41 = v33;
  *(&v41 + 1) = v24;
  v26 = v34;
  *&v42 = v34;
  *(&v42 + 1) = v23;
  type metadata accessor for PlaylistModule();
  sub_100023FD4(v11);
  v27 = a2[5];
  v45 = a2[4];
  v46[0] = v27;
  *(v46 + 9) = *(a2 + 89);
  v28 = a2[1];
  v41 = *a2;
  v42 = v28;
  v29 = a2[3];
  v43 = a2[2];
  v44 = v29;
  v37 = v25;
  v38 = v24;
  v39 = v26;
  v40 = v32;
  type metadata accessor for PlaylistViewModel();
  sub_1000331E8(v21, v19);
  OpenURLAction.callAsFunction(_:)();
  v30 = *(v16 + 8);
  v30(v19, v15);
  (*(v35 + 8))(v11, v36);
  return (v30)(v21, v15);
}

uint64_t sub_1000F16E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PlaylistItem();
  v30 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = (*(a3 + 48))(a2, a3);
  v26 = v17;
  v27 = v16;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v25 = v18;
  v20 = *(a3 + 56);

  v20(a2, a3);
  sub_1000F0B24(v27, v26, v25, v19, v9, v13);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v13, v10, WitnessTable);
  v22 = *(v30 + 8);
  v22(v13, v10);
  sub_100157EFC(v15, v10, WitnessTable);
  return (v22)(v15, v10);
}

uint64_t sub_1000F19B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_1000F1A10(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000F1A38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 56))(*(a1 + a2 - 32));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000F1A90()
{
  v1 = type metadata accessor for PlaylistModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 56);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100027EB0(*(v2 + *(v1 + 60)), *(v2 + *(v1 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F1C2C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for PlaylistModule() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_1000F1CF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = type metadata accessor for PlaylistModule();
  v6 = (v4 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v4, v1);
  v7 = v0 + v6;

  v8 = *(v5 + 56);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v5 + 60)), *(v7 + *(v5 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F1EF4()
{
  v1 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v2 = *(*(v0[2] - 8) + 64);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v3 = *(type metadata accessor for PlaylistModule() - 8);
  v4 = v0 + ((v1 + v2 + *(v3 + 80)) & ~*(v3 + 80));

  return sub_1000F0498(v0 + v1, v4, v6, v7, v8, v9);
}

uint64_t sub_1000F2024()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = type metadata accessor for PlaylistModule();
  v6 = (v4 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v4, v1);
  v7 = v0 + v6;

  v8 = *(v5 + 56);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_100027EB0(*(v7 + *(v5 + 60)), *(v7 + *(v5 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_1000F2234()
{
  v1 = (*(*(v0[3] - 8) + 80) + 48) & ~*(*(v0[3] - 8) + 80);
  v2 = *(*(v0[3] - 8) + 64);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v3 = *(type metadata accessor for PlaylistModule() - 8);
  v4 = (v0 + ((v1 + v2 + *(v3 + 80)) & ~*(v3 + 80)));

  return sub_1000F13C4(v0 + v1, v4, v6, v7, v8, v9);
}

uint64_t sub_1000F2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v57);
  v56 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v4;
  type metadata accessor for PlaylistArtworkView();
  sub_10000B3DC(&qword_10021EBD8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v47 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  sub_10000B3DC(&qword_1002188F8);
  v12 = type metadata accessor for ModifiedContent();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  sub_10000B3DC(&qword_100218928);
  v48 = v12;
  v15 = type metadata accessor for ModifiedContent();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v50 = &v43 - v16;
  v54 = v17;
  v18 = type metadata accessor for ModifiedContent();
  v55 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v49 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v43 - v21;
  static HorizontalAlignment.center.getter();
  v59 = v44;
  v60 = v45;
  v61 = v46;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v23 = v14;
  View.frame(width:height:alignment:)();
  (*(v6 + 8))(v8, v5);
  v24 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v70 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v68 = WitnessTable;
  v69 = &protocol witness table for _FrameLayout;
  v25 = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v47 + 8))(v11, v9);
  if (qword_100218428 != -1)
  {
    swift_once();
  }

  v26 = qword_1002305F8;
  v27 = *(v57 + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  v30 = v56;
  (*(*(v29 - 8) + 104))(v56 + v27, v28, v29);
  *v30 = v26;
  v30[1] = v26;
  v31 = sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  v66 = v25;
  v67 = v31;
  v32 = v48;
  v33 = swift_getWitnessTable();
  sub_1000F4DE4(&qword_10021EBE0, &type metadata accessor for RoundedRectangle);
  v34 = v50;
  View.clipShape<A>(_:style:)();
  sub_1000A3C3C(v30);
  (*(v51 + 8))(v23, v32);
  static Edge.Set.all.getter();
  v35 = sub_10000D1EC(&qword_100218920, &qword_100218928);
  v64 = v33;
  v65 = v35;
  v36 = v54;
  v37 = swift_getWitnessTable();
  v38 = v49;
  View.padding(_:_:)();
  (*(v53 + 8))(v34, v36);
  v62 = v37;
  v63 = &protocol witness table for _PaddingLayout;
  v39 = swift_getWitnessTable();
  v40 = v52;
  sub_100157EFC(v38, v18, v39);
  v41 = *(v55 + 8);
  v41(v38, v18);
  sub_100157EFC(v40, v18, v39);
  return (v41)(v40, v18);
}

uint64_t sub_1000F2B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_100009F70(&qword_10021EBD8);
  v3 = __chkstk_darwin(v33);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PlaylistArtworkView();
  v30 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v31 = &v30 - v15;
  v16 = type metadata accessor for PlaylistItem();
  (*(v8 + 16))(v10, a1 + *(v16 + 40), v7);
  sub_1000F2F6C(v10, v14, 240.0);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v14, v11, WitnessTable);
  v17 = v30;
  v18 = *(v30 + 8);
  v18(v14, v11);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = sub_100009F70(&qword_10021EBE8);
  sub_1000F301C(a1, &v6[*(v19 + 44)]);
  LOBYTE(v10) = static Edge.Set.horizontal.getter();
  v20 = &v6[*(sub_100009F70(&qword_10021EBF0) + 36)];
  *v20 = v10;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  LOBYTE(v10) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v21 = v33;
  v22 = &v6[*(v33 + 36)];
  *v22 = v10;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v31;
  (*(v17 + 16))(v14, v31, v11);
  v39[0] = v14;
  v28 = v34;
  sub_10000D58C(v6, v34, &qword_10021EBD8);
  v39[1] = v28;
  v38[0] = v11;
  v38[1] = v21;
  v36 = WitnessTable;
  v37 = sub_1000F4E2C();
  sub_100151024(v39, 2uLL, v38);
  sub_10000D52C(v6, &qword_10021EBD8);
  v18(v27, v11);
  sub_10000D52C(v28, &qword_10021EBD8);
  return (v18)(v14, v11);
}

uint64_t sub_1000F2F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  v7 = type metadata accessor for PlaylistArtworkView();
  *(a2 + *(v7 + 36)) = a3;
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1000F301C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_100009F70(&qword_10021EC18);
  v4 = __chkstk_darwin(v3 - 8);
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v77 = &v64 - v6;
  v7 = sub_100009F70(&qword_10021EC20);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = sub_100009F70(&qword_10021EC28);
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v72 = a1;
  v15 = *a1;
  v16 = a1[1];
  v80 = v15;
  v81 = v16;
  v17 = sub_100027068();

  v67 = v17;
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  LODWORD(v71) = v26;
  v75 = v27;

  sub_10000D60C(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v29 = &v9[*(v7 + 36)];
  v30 = sub_100009F70(&qword_10021EC30);
  v31 = *(v30 + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = type metadata accessor for Text.TruncationMode();
  v34 = *(v33 - 8);
  v69 = *(v34 + 104);
  v70 = v33;
  v68 = v34 + 104;
  v69(v29 + v31, v32);
  *v29 = swift_getKeyPath();
  *v9 = v23;
  *(v9 + 1) = v25;
  v9[16] = v71 & 1;
  *(v9 + 3) = v75;
  *(v9 + 4) = KeyPath;
  v35 = 1;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v36 = sub_1000F5068();
  v75 = v14;
  v71 = v7;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v9, &qword_10021EC20);
  v37 = v72[3];
  if (v37)
  {
    v64 = v36;
    v65 = v32;
    v66 = v30;
    v80 = v72[2];
    v81 = v37;

    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    static Font.subheadline.getter();
    v43 = Text.font(_:)();
    v45 = v44;
    v47 = v46;

    sub_10000D60C(v38, v40, v42 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v80 = qword_100230570;

    v48 = Text.foregroundStyle<A>(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_10000D60C(v43, v45, v47 & 1);

    v55 = swift_getKeyPath();
    v56 = &v9[*(v71 + 36)];
    (v69)(v56 + *(v66 + 28), v65, v70);
    *v56 = swift_getKeyPath();
    *v9 = v48;
    *(v9 + 1) = v50;
    v9[16] = v52 & 1;
    *(v9 + 3) = v54;
    *(v9 + 4) = v55;
    *(v9 + 5) = 1;
    v9[48] = 0;
    v57 = v76;
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v9, &qword_10021EC20);
    v58 = v77;
    sub_1000F5120(v57, v77);
    v35 = 0;
  }

  else
  {
    v57 = v76;
    v58 = v77;
  }

  (*(v73 + 56))(v58, v35, 1, v74);
  v59 = v75;
  sub_10000D58C(v75, v57, &qword_10021EC28);
  v60 = v78;
  sub_10000D58C(v58, v78, &qword_10021EC18);
  v61 = v79;
  sub_10000D58C(v57, v79, &qword_10021EC28);
  v62 = sub_100009F70(qword_10021EC48);
  sub_10000D58C(v60, v61 + *(v62 + 48), &qword_10021EC18);
  sub_10000D52C(v58, &qword_10021EC18);
  sub_10000D52C(v59, &qword_10021EC28);
  sub_10000D52C(v60, &qword_10021EC18);
  return sub_10000D52C(v57, &qword_10021EC28);
}

uint64_t sub_1000F3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  (*(v10 + 16))(&v28 - v11, v3, v9);
  v13 = *(v8 - 8);
  v14 = 1;
  result = (*(v13 + 48))(v12, 1, v8);
  if (result == 1)
  {
    v8 = v9;
    v16 = v29;
LABEL_16:
    (*(v10 + 8))(v12, v8);
    v27 = type metadata accessor for URL();
    return (*(*(v27 - 8) + 56))(v16, v14, 1, v27);
  }

  v17 = *(v3 + *(a1 + 36));
  v18 = v3 + *(a1 + 40);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v20 == 1)
  {
    v21 = *v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v21 = v30;
  }

  v23 = v17 * v21;
  if (COERCE__INT64(fabs(v17 * v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20)
  {
    v24 = *&v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v24 = v30;
  }

  v16 = v29;
  v26 = v17 * v24;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 < 9.22337204e18)
  {
    (*(*(a1 + 24) + 40))(v23, v26, 1, v8);
    v14 = 0;
    v10 = v13;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1000F3ACC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_1000F3C7C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_10021BC68);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000F3680(a1, v7);
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100009F70(&qword_10021A7A0);
  sub_10004F9BC();
  AsyncImage.init(url:scale:transaction:content:)();
  v13 = &v10[*(sub_100009F70(&qword_10021BC70) + 36)];
  *v13 = 0x3FF0000000000000;
  *(v13 + 4) = 0;
  v10[*(v8 + 36)] = 1;
  sub_10008D700();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v10, &qword_10021BC68);
}

uint64_t sub_1000F3F10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AsyncImagePhase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v8 + 96))(v10, v7);
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v11 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v6, v3);
    v19 = v11;
    v20 = 0;
    swift_retain_n();
    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();

    v13 = v21;
    v14 = v22;
  }

  else
  {
    v15 = type metadata accessor for PlaylistArtworkView();
    v19 = sub_1000F3ACC(v15);
    v20 = 1;
    sub_100009F70(&qword_10021A7B8);
    sub_10004FA48();
    _ConditionalContent<>.init(storage:)();
    v13 = v21;
    v14 = v22;
    result = (*(v8 + 8))(v10, v7);
  }

  v16 = v18;
  *v18 = v13;
  *(v16 + 8) = v14;
  return result;
}

void sub_1000F422C()
{
  sub_1000F565C(319, &qword_10021EBD0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F42E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
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

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 32) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1000F44A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1000F479C()
{
  sub_10000B3DC(&qword_10021AFA8);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_1000F4DE4(&qword_100218810, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem();
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_1000F4DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F4E2C()
{
  result = qword_10021EBF8;
  if (!qword_10021EBF8)
  {
    sub_10000B3DC(&qword_10021EBD8);
    sub_1000F4EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EBF8);
  }

  return result;
}

unint64_t sub_1000F4EB8()
{
  result = qword_10021EC00;
  if (!qword_10021EC00)
  {
    sub_10000B3DC(&qword_10021EBF0);
    sub_10000D1EC(&qword_10021EC08, &qword_10021EC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EC00);
  }

  return result;
}

uint64_t sub_1000F4F9C(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000F5068()
{
  result = qword_10021EC38;
  if (!qword_10021EC38)
  {
    sub_10000B3DC(&qword_10021EC20);
    sub_10002764C();
    sub_10000D1EC(&qword_10021EC40, &qword_10021EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EC38);
  }

  return result;
}

uint64_t sub_1000F5120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021EC28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000F5198()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    sub_1000F565C(319, &qword_1002198C0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F5244(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_1000F53D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = ((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1000F565C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000F56AC()
{
  type metadata accessor for PlaylistArtworkView();
  sub_10000B3DC(&qword_10021EBD8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_1002188F8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100218928);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000D1EC(&qword_1002188F0, &qword_1002188F8);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_100218920, &qword_100218928);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000F5928()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PlaylistArtworkView();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  sub_100027EB0(*(v0 + v3 + *(v2 + 40)), *(v0 + v3 + *(v2 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000F5A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PlaylistArtworkView();

  return sub_1000F3F10(a1, a2);
}

uint64_t sub_1000F5B38(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_1000F4DE4(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000F5C04(uint64_t a1, void (*a2)(void, void), void *a3, uint64_t a4, uint64_t a5)
{
  v129 = a2;
  v9 = sub_100009F70(&qword_10021E558);
  __chkstk_darwin(v9 - 8);
  v104 = &v96 - v10;
  v125 = type metadata accessor for Sport();
  v105 = *(v125 - 8);
  __chkstk_darwin(v125);
  v100 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(qword_100218748);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v96 - v15;
  v16 = type metadata accessor for URL();
  v123 = *(v16 - 8);
  v124 = v16;
  v17 = __chkstk_darwin(v16);
  v97 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v96 - v19;
  v20 = sub_100009F70(&qword_10021E4E0);
  v21 = __chkstk_darwin(v20 - 8);
  v118 = &v96 - v22;
  v121 = *(a4 - 8);
  v23 = __chkstk_darwin(v21);
  v103 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v96 - v25;
  v26 = type metadata accessor for Music();
  v119 = *(v26 - 8);
  v120 = v26;
  __chkstk_darwin(v26);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TimeZone();
  v115 = *(v28 - 8);
  v116 = v28;
  __chkstk_darwin(v28);
  v114 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Date();
  v113 = *(v131 - 8);
  __chkstk_darwin(v131);
  v112 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DateInterval();
  v109 = *(v130 - 8);
  __chkstk_darwin(v130);
  v108 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v126 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v110 = &v96 - v32;
  v33 = type metadata accessor for String.Encoding();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = objc_opt_self();
  v122 = a3;
  v38 = [v37 eventWithEventStore:a3];
  v39 = *(a5 + 136);
  v40 = v38;
  v39(a4, a5);
  v41 = String._bridgeToObjectiveC()();

  [v40 setTitle:v41];

  v42 = *(a5 + 120);
  v133 = a1;
  v43 = a4;
  v44 = a4;
  v45 = a5;
  v42(v44, a5);
  static String.Encoding.utf8.getter();
  v46 = String.data(using:allowLossyConversion:)();
  v48 = v47;

  (*(v34 + 8))(v36, v33);
  if (v48 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v40 setStructuredData:isa];

    sub_1000F6A9C(v46, v48);
  }

  v50 = v129;
  if (v129)
  {
    v51 = objc_opt_self();
    v52 = v50;
    v53 = [v51 locationWithMapItem:v52];
    [v40 setStructuredLocation:v53];
  }

  v54 = *(v45 + 168);
  v127 = v45;
  v128 = v45 + 168;
  v129 = v54;
  v55 = v110;
  v56 = v43;
  v54(v43, v45);
  v57 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v134 = v40;
  v106 = AssociatedConformanceWitness;
  v107 = *(AssociatedConformanceWitness + 16);
  v59 = v108;
  v107(v57, AssociatedConformanceWitness);
  v126 = *(v126 + 8);
  (v126)(v55, v57);
  v60 = v112;
  DateInterval.start.getter();
  v132 = v56;
  v109 = *(v109 + 8);
  (v109)(v59, v130);
  v61 = Date._bridgeToObjectiveC()().super.isa;
  v113 = *(v113 + 8);
  (v113)(v60, v131);
  [v134 setStartDate:v61];

  v129(v132, v127);
  v62 = v106;
  v107(v57, v106);
  (v126)(v55, v57);
  DateInterval.end.getter();
  (v109)(v59, v130);
  v63 = v132;
  v64 = Date._bridgeToObjectiveC()().super.isa;
  (v113)(v60, v131);
  [v134 setEndDate:v64];

  v65 = v133;
  v129(v63, v127);
  v66 = v114;
  v67 = v134;
  (*(v62 + 24))(v57, v62);
  (v126)(v55, v57);
  v68 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v115 + 8))(v66, v116);
  [v67 setTimeZone:v68];

  v69 = [v122 defaultCalendarForNewEvents];
  [v67 setCalendar:v69];

  v70 = *(v121 + 16);
  v70(v117, v65, v63);
  v71 = v118;
  v72 = v120;
  v73 = swift_dynamicCast();
  v74 = v119;
  v75 = *(v119 + 56);
  if (v73)
  {
    v75(v71, 0, 1, v72);
    v76 = v101;
    (*(v74 + 32))(v101, v71, v72);
    v77 = v102;
    Music.webURL.getter();
    v78 = v123;
    v79 = v124;
    v80 = (*(v123 + 48))(v77, 1, v124);
    v81 = v125;
    if (v80 != 1)
    {
      v87 = v98;
      (*(v78 + 32))(v98, v77, v79);
      URL.absoluteString.getter();
      v88 = String._bridgeToObjectiveC()();

      v89 = v134;
      [v134 setNotes:v88];

      (*(v78 + 8))(v87, v79);
      (*(v74 + 8))(v76, v72);
      return v134;
    }

    (*(v74 + 8))(v76, v72);
    sub_10000D52C(v77, qword_100218748);
  }

  else
  {
    v75(v71, 1, 1, v72);
    sub_10000D52C(v71, &qword_10021E4E0);
    v79 = v124;
    v81 = v125;
    v78 = v123;
  }

  v70(v103, v133, v132);
  v82 = v104;
  v83 = swift_dynamicCast();
  v84 = v105;
  if (v83)
  {
    (*(v105 + 56))(v82, 0, 1, v81);
    v85 = v100;
    (*(v84 + 32))(v100, v82, v81);
    v86 = v99;
    Sport.webURL.getter();
    if ((*(v78 + 48))(v86, 1, v79) == 1)
    {

      (*(v84 + 8))(v85, v81);
      sub_10000D52C(v86, qword_100218748);
    }

    else
    {
      v90 = v79;
      v91 = v97;
      (*(v78 + 32))(v97, v86, v90);
      URL.absoluteString.getter();
      v92 = v85;
      v93 = String._bridgeToObjectiveC()();

      v94 = v134;
      [v134 setNotes:v93];

      (*(v78 + 8))(v91, v90);
      (*(v84 + 8))(v92, v81);
    }
  }

  else
  {

    (*(v84 + 56))(v82, 1, 1, v81);
    sub_10000D52C(v82, &qword_10021E558);
  }

  return v134;
}

uint64_t sub_1000F6A9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100035DB0(a1, a2);
  }

  return a1;
}

unint64_t sub_1000F6AB8(uint64_t a1)
{
  result = sub_1000F6AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6AE0()
{
  result = qword_10021ECD0[0];
  if (!qword_10021ECD0[0])
  {
    type metadata accessor for EventAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021ECD0);
  }

  return result;
}

char *sub_1000F6B38(char *result, uint64_t a2)
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

uint64_t sub_1000F6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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

void sub_1000F6D5C()
{
  sub_1000F72EC();
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

uint64_t sub_1000F6E28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1000F7030(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

void sub_1000F72EC()
{
  if (!qword_10021EBD0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10021EBD0);
    }
  }
}

char *sub_1000F733C()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_1001AF670;
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

  return sub_1000F6B38(v6, v8);
}

void sub_1000F749C(void *a1, uint64_t a2)
{
  sub_100009F70(qword_100218F38);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001AD8A0;
  v6 = a1[2];
  v5 = a1[3];
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_10021CBD0;
  *(v4 + 32) = 0;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1000F7870(a2);
  if (v7 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_10021CBA8;
  *(v4 + 72) = v8;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_10021CC30;
  *(v4 + 112) = 17;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_10021CC08;
  *(v4 + 152) = xmmword_1001B6D00;
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
  v24 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  v21 = v9;
  v22 = v10;

  v11 = sub_1001666DC(1, 5, 1, v4);
  v26 = v11;
  v12 = sub_100031420(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  sub_1000EB0D0(4, v14, &v26, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100021498(&aBlock);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ELL;
  v17[3] = 0x80000001001BDDE0;
  v17[4] = v11;
  v24 = sub_100010AAC;
  v25 = v17;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000DCA40;
  v23 = &unk_10020ED88;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

double sub_1000F7778()
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

uint64_t sub_1000F7820()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F7870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F7820();
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    return 15;
  }

  else
  {
    (*(v8 + 32))(v10, v7, v2);
    v12 = sub_1000A199C(v10, v2, *(a1 + 24));
    (*(v8 + 8))(v10, v2);
    return v12;
  }
}

uint64_t sub_1000F7A38()
{

  return swift_deallocObject();
}

uint64_t sub_1000F7A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F7A90(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

id sub_1000F7B7C()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  sub_100009F70(&qword_10021EDF8);
  Binding.projectedValue.getter();
  v2 = v13;
  v3 = v14;
  v15 = v0[2];
  LOBYTE(v16) = *(v0 + 48);
  sub_100009F70(&qword_100218960);
  Binding.projectedValue.getter();
  v4 = v12;
  v5 = v13;
  v6 = type metadata accessor for SearchBar.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp9SearchBar11Coordinator__text];
  *v8 = v12;
  *(v8 + 2) = v2;
  *(v8 + 3) = v3;
  v9 = &v7[OBJC_IVAR____TtCV15ShazamEventsApp9SearchBar11Coordinator__isSearching];
  *v9 = v4;
  v9[16] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1000F7C6C()
{
  v1 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100009F70(&qword_10021EE28);
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

uint64_t sub_1000F7D7C(void *a1)
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
  sub_100009F70(&qword_10021EDF8);
  Binding.wrappedValue.getter();
  v12 = String._bridgeToObjectiveC()();

  [a1 setText:v12];

  aBlock = v1[2];
  LOBYTE(v19) = *(v1 + 48);
  sub_100009F70(&qword_100218960);
  result = Binding.wrappedValue.getter();
  if (v22 == 1)
  {
    sub_1000F845C();
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v20 = sub_1000F84E0;
    v21 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_1001914E4;
    *(&v19 + 1) = &unk_10020EE88;
    v16 = _Block_copy(&aBlock);
    v17 = a1;
    static DispatchQoS.unspecified.getter();
    v22 = &_swiftEmptyArrayStorage;
    sub_1000F84F0();
    sub_100009F70(&qword_1002231F0);
    sub_1000F8548();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1000F82A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000F82DC@<X0>(void *a1@<X8>)
{
  result = sub_1000F7B7C();
  *a1 = result;
  return result;
}

uint64_t sub_1000F8318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F8408();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F8408();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F83E0()
{
  sub_1000F8408();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F8408()
{
  result = qword_10021EE08;
  if (!qword_10021EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE08);
  }

  return result;
}

unint64_t sub_1000F845C()
{
  result = qword_1002231E0;
  if (!qword_1002231E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002231E0);
  }

  return result;
}

uint64_t sub_1000F84A8()
{

  return swift_deallocObject();
}

unint64_t sub_1000F84F0()
{
  result = qword_10021EE10;
  if (!qword_10021EE10)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE10);
  }

  return result;
}

unint64_t sub_1000F8548()
{
  result = qword_10021EE20;
  if (!qword_10021EE20)
  {
    sub_10000B3DC(&qword_1002231F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE20);
  }

  return result;
}

uint64_t sub_1000F85B4()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
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

uint64_t sub_1000F8660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for PageControl() + 36);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Binding();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

id sub_1000F8700()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent:0.3];

  return v1;
}

uint64_t sub_1000F876C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for Binding();
  return a2(v3);
}

uint64_t sub_1000F87C4(uint64_t a1)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for PageControl.Coordinator();
  sub_1000F876C(a1, &Binding.projectedValue.getter);
  v5 = swift_allocObject();
  sub_1000F8E6C(v4);
  return v5;
}

uint64_t sub_1000F8898(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1000F8E6C(a1);
  return v2;
}

id sub_1000F88D8()
{
  v0 = [objc_allocWithZone(UIPageControl) init];
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v4 action:"pageDidChange:" forControlEvents:4096];

  [v0 setNumberOfPages:Array.count.getter()];
  v1 = sub_1000F8700();
  [v0 setPageIndicatorTintColor:v1];

  v2 = [objc_opt_self() labelColor];
  [v0 setCurrentPageIndicatorTintColor:v2];

  return v0;
}

uint64_t sub_1000F8A18(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Optional();
  v28 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v32 = &v27 - v8;
  v33 = *(v5 - 8);
  __chkstk_darwin(v7);
  v29 = v10;
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v15 = v37;
  v16 = *v3;
  v17 = *(*v37 + 104);
  swift_beginAccess();
  *(v15 + v17) = v16;

  sub_1000F876C(a3, &Binding.projectedValue.getter);
  v18 = *(*v15 + 96);
  swift_beginAccess();
  v19 = v14;
  v20 = v31;
  (*(v12 + 40))(v15 + v18, v19, v11);
  swift_endAccess();
  v21 = [v20 numberOfPages];
  if (v21 != Array.count.getter())
  {
    [v20 setNumberOfPages:Array.count.getter()];
  }

  v22 = v32;
  sub_1000F876C(a3, &Binding.wrappedValue.getter);
  v23 = v33;
  if ((*(v33 + 48))(v22, 1, v5) == 1)
  {

    return (*(v28 + 8))(v22, v29);
  }

  else
  {
    v25 = v30;
    (*(v23 + 32))(v30, v22, v5);
    v34 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection<>.firstIndex(of:)();
    if (v36 == 1 || (v26 = v35, v26 == [v20 currentPage]))
    {
      (*(v23 + 8))(v25, v5);
    }

    else
    {
      [v20 setCurrentPage:v26];

      return (*(v23 + 8))(v25, v5);
    }
  }
}

uint64_t sub_1000F8E6C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  *(v1 + v3) = static Array._allocateUninitialized(_:)();
  v4 = *(*v1 + 96);
  type metadata accessor for Optional();
  v5 = type metadata accessor for Binding();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_1000F8F34(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v11 - v5;
  v8 = *(v7 + 104);
  swift_beginAccess();
  v14 = *(v1 + v8);
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v13 = v11[1];
  v12 = [a1 currentPage];
  sub_100009F70(qword_10021EF10);
  result = Range.contains(_:)();
  if (result)
  {
    [a1 currentPage];
    swift_beginAccess();
    Array.subscript.getter();
    swift_endAccess();
    v10 = [a1 interactionState];
    if (v10 != 2)
    {
      v10 = static Animation.default.getter();
    }

    __chkstk_darwin(v10);
    *&v11[-1] = v1;
    *(&v11[-1] + 1) = v6;
    withAnimation<A>(_:_:)();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1000F9190(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = *(v4 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v12, a1 + v13, v9);
  v14 = *(v5 - 8);
  (*(v14 + 16))(v8, a2, v5);
  (*(v14 + 56))(v8, 0, 1, v5);
  Binding.wrappedValue.setter();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000F9398(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1000F8F34(v3);
}

uint64_t sub_1000F93E8()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1000F9494()
{
  sub_1000F93E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F950C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000F87C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000F95B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000F962C()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000F96A0()
{
  result = type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F973C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11));
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
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
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

void sub_1000F993C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v14 = -2 - ((-9 - v11) | v12) - (((-17 - v11) | v11) - v13);
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
LABEL_54:
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
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
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
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *a1 = v22;
  }

  else
  {
    v23 = *(v7 + 56);
    v24 = (v11 + (((&a1[v12 + 8] & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v25 = a2 + 1;

    v23(v24, v25);
  }
}

uint64_t sub_1000F9CF8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000F9D10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000F9D20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000F9D68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000F9DBC()
{
  result = qword_10021F030;
  if (!qword_10021F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F030);
  }

  return result;
}

id sub_1000F9E20@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for CalendarSheet.CalendarCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV15ShazamEventsApp13CalendarSheet19CalendarCoordinator_completionHandler];
  *v7 = v4;
  v7[1] = v3;
  sub_1000BF57C(v4);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000F9EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F9FCC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F9F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F9FCC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F9FA4()
{
  sub_1000F9FCC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F9FCC()
{
  result = qword_10021F038;
  if (!qword_10021F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F038);
  }

  return result;
}

id sub_1000FA020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(EKEventEditViewController) init];
  v6 = [v5 navigationBar];
  v7 = [objc_opt_self() blueColor];
  [v6 setTintColor:v7];

  sub_100009F70(&unk_10021F040);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setEditViewDelegate:v9];

  [v5 setEventStore:a3];
  [v5 setEvent:a2];
  return v5;
}

uint64_t sub_1000FA138(uint64_t a1)
{
  result = sub_1000FB91C(&qword_10021F050, &type metadata accessor for Theater);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FA194()
{
  result = qword_10021F058;
  if (!qword_10021F058)
  {
    sub_10000B3DC(&qword_10021F060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F058);
  }

  return result;
}

uint64_t sub_1000FA360@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v43 = type metadata accessor for Calendar();
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TimeZone();
  v47 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v44 = *(v42 - 8);
  v13 = __chkstk_darwin(v42);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - v17;
  __chkstk_darwin(v16);
  v41 = &v32 - v19;
  Time.dateInterval.getter();
  DateInterval.start.getter();
  v20 = *(v10 + 8);
  v37 = v10 + 8;
  v38 = v9;
  v36 = v20;
  v20(v12, v9);
  v40 = v1;
  Time.timeZone.getter();
  v21 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v22 = *(v46 + 8);
  v39 = v3;
  v23 = v46 + 8;
  v22(v3, v43);
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = *(v47 + 8);
  v47 += 8;
  result = v25(v6, v45);
  if (__OFSUB__(v21, v24))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v34 = v22;
    v27 = v45;
    v46 = v23;
    v25(v8, v45);
    v28 = *(v44 + 8);
    v44 += 8;
    v33 = v28;
    v28(v18, v42);
    Time.dateInterval.getter();
    DateInterval.end.getter();
    v36(v12, v38);
    Time.timeZone.getter();
    v29 = TimeZone.secondsFromGMT(for:)();
    v30 = v39;
    static Calendar.current.getter();
    Calendar.timeZone.getter();
    v34(v30, v43);
    v31 = TimeZone.secondsFromGMT(for:)();
    result = v25(v6, v27);
    if (!__OFSUB__(v29, v31))
    {
      Date.addingTimeInterval(_:)();
      v25(v8, v45);
      v33(v15, v42);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA8D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v53 = a3;
  v52 = a2;
  v4 = type metadata accessor for DateInterval();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TimeZone();
  v9 = *(v49 - 8);
  v10 = __chkstk_darwin(v49);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Time();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = __chkstk_darwin(v19);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v38 - v23;
  v46 = a1;
  v53(v22);
  Time.timeZone.getter();
  v25 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v15;
  v38 = v25;
  v25(v18, v15);
  v40 = v14;
  v26 = TimeZone.secondsFromGMT(for:)();
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  (*(v50 + 8))(v8, v51);
  v27 = TimeZone.secondsFromGMT(for:)();
  v28 = *(v9 + 8);
  v29 = v12;
  v30 = v49;
  result = v28(v29, v49);
  if (__OFSUB__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v32 = v28(v40, v30);
    v53(v32);
    v33 = v45;
    sub_1000FA360(v45);
    v38(v18, v42);
    v34 = v39;
    DateInterval.end.getter();
    (*(v47 + 8))(v33, v48);
    v35 = static Date.> infix(_:_:)();
    v36 = v44;
    v37 = *(v43 + 8);
    v37(v34, v44);
    v37(v24, v36);
    return v35 & 1;
  }

  return result;
}

uint64_t sub_1000FAE4C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = &_swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_1000FB134()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100009F70(&qword_10021F138);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021F140);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB320);
}

uint64_t sub_1000FB320()
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
  Theater.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Theater();
  sub_1000FB91C(&qword_10021F148, &type metadata accessor for Theater);
  static EventService.RequestType.theater.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000FB4D8;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000FB4D8()
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
    v3 = sub_1000FB65C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1000FB65C()
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
  v9 = sub_1000FAE4C(sub_1000FB964, v8, v7, &type metadata accessor for Theater, sub_1001445C8);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000FB7C8@<X0>(uint64_t *a1@<X8>)
{
  result = Theater.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000FB80C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FC70;

  return sub_1000FB134();
}

uint64_t sub_1000FB898(uint64_t a1)
{
  *(a1 + 8) = sub_1000FB91C(&qword_10021F128, &type metadata accessor for Theater);
  result = sub_1000FB91C(&qword_10021F130, &type metadata accessor for Theater);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000FB91C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FB998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date.FormatStyle();
  v11 = *(v44 - 8);
  v12 = __chkstk_darwin(v44);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v41 = &v41 - v16;
  v17 = __chkstk_darwin(v15);
  v42 = &v41 - v18;
  v19 = __chkstk_darwin(v17);
  v43 = &v41 - v20;
  __chkstk_darwin(v19);
  v45 = &v41 - v21;
  v22 = type metadata accessor for Date();
  v49 = *(v22 - 8);
  v50 = v22;
  __chkstk_darwin(v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  DateInterval.start.getter();
  (*(v26 + 8))(v28, v25);
  sub_1000FD278(a2, a3);
  v29 = v41;
  Date.FormatStyle.weekday(_:)();
  v30 = *(v11 + 8);
  v31 = v14;
  v32 = v44;
  v30(v31, v44);
  v33 = v46;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v34 = v42;
  Date.FormatStyle.day(_:)();
  (*(v47 + 8))(v33, v48);
  v35 = v32;
  v30(v29, v32);
  v36 = v51;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v37 = v43;
  Date.FormatStyle.month(_:)();
  (*(v53 + 8))(v36, v54);
  v30(v34, v35);
  v38 = v55;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v39 = v45;
  Date.FormatStyle.year(_:)();
  (*(v56 + 8))(v38, v57);
  v30(v37, v35);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v30(v39, v35);
  (*(v49 + 8))(v24, v50);
  return v58;
}

uint64_t sub_1000FBF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v68 = type metadata accessor for Calendar();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date();
  v69 = *(v65 - 8);
  v18 = __chkstk_darwin(v65);
  v64 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v50 - v21;
  __chkstk_darwin(v20);
  v63 = &v50 - v23;
  v24 = a2;
  v25 = a2 + 16;
  v26 = *(a2 + 16);
  v27 = a1;
  v28 = a1;
  v29 = v24;
  v55 = v26;
  v56 = v25;
  (v26)(v28);
  DateInterval.start.getter();
  v30 = *(v15 + 8);
  v57 = v15 + 8;
  v58 = v14;
  v54 = v30;
  v30(v17, v14);
  v31 = *(v29 + 24);
  v61 = v27;
  v62 = v3;
  v60 = v29;
  v53 = v31;
  v31(v27, v29);
  v66 = v13;
  v32 = TimeZone.secondsFromGMT(for:)();
  v33 = v67;
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v34 = *(v70 + 8);
  v35 = v70 + 8;
  v34(v33, v68);
  v36 = TimeZone.secondsFromGMT(for:)();
  v37 = *(v72 + 8);
  v59 = v11;
  v72 += 8;
  result = v37(v11, v71);
  if (__OFSUB__(v32, v36))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v70 = v35;
    v37(v66, v71);
    v39 = *(v69 + 8);
    v69 += 8;
    v50 = v39;
    v39(v22, v65);
    v40 = v61;
    v51 = v34;
    v41 = v37;
    v42 = v60;
    v55(v61, v60);
    DateInterval.end.getter();
    v54(v17, v58);
    v43 = v42;
    v44 = v41;
    v53(v40, v43);
    v45 = TimeZone.secondsFromGMT(for:)();
    v46 = v67;
    static Calendar.current.getter();
    v47 = v59;
    Calendar.timeZone.getter();
    v51(v46, v68);
    v48 = TimeZone.secondsFromGMT(for:)();
    result = v44(v47, v71);
    if (!__OFSUB__(v45, v48))
    {
      v49 = v64;
      Date.addingTimeInterval(_:)();
      v44(v66, v71);
      v50(v49, v65);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FC47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v31 = &v30 - v14;
  v38 = type metadata accessor for Date();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v30 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v17 + 8))(v19, v16);
  sub_1000FD278(a1, a2);
  v20 = v32;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v35 + 8))(v20, v37);
  v21 = v34;
  v22 = *(v33 + 8);
  v22(v10, v34);
  v23 = v39;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v24 = v31;
  Date.FormatStyle.month(_:)();
  (*(v40 + 8))(v23, v41);
  v25 = v21;
  v22(v13, v21);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  v26 = v24;
  v27 = v25;
  v28 = v30;
  Date.formatted<A>(_:)();
  v22(v26, v27);
  (*(v36 + 8))(v28, v38);
  return v42;
}

uint64_t sub_1000FC8F4(uint64_t a1, uint64_t a2)
{
  if (sub_1000FE2B8(a1, a2))
  {

    return sub_1000FDE00(a1, a2);
  }

  else
  {

    return sub_1000FC47C(a1, a2);
  }
}

uint64_t sub_1000FC968(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v11;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DateInterval();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v44._object = 0xE000000000000000;
  v18._object = 0x80000001001C0320;
  v18._countAndFlagsBits = 0xD000000000000029;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v44);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001ACB00;
  v22 = a2;
  v23 = *(a2 + 16);
  v33 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v34);
  sub_1000FD278(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v24 = v37;
  Date.FormatStyle.weekday(_:)();
  (*(v41 + 8))(v6, v43);
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v10, v39);
  *(v21 + 56) = &type metadata for String;
  v27 = sub_100096600();
  *(v21 + 64) = v27;
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v40 + 8))(v13, v42);
  v28 = sub_1000FD544(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v27;
  *(v21 + 72) = v28;
  *(v21 + 80) = v29;
  v30 = String.init(format:_:)();

  return v30;
}

uint64_t sub_1000FCDF0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v11;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DateInterval();
  v14 = *(v34 - 8);
  __chkstk_darwin(v34);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v44._object = 0xE000000000000000;
  v18._object = 0x80000001001C0350;
  v18._countAndFlagsBits = 0xD000000000000037;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v44);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_100009F70(&qword_100219EF8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001ACB00;
  v22 = a2;
  v23 = *(a2 + 16);
  v33 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v34);
  sub_1000FD278(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  v24 = v37;
  Date.FormatStyle.weekday(_:)();
  (*(v41 + 8))(v6, v43);
  v25 = v39;
  v26 = *(v38 + 8);
  v26(v10, v39);
  *(v21 + 56) = &type metadata for String;
  v27 = sub_100096600();
  *(v21 + 64) = v27;
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v40 + 8))(v13, v42);
  v28 = sub_1000FD544(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v27;
  *(v21 + 72) = v28;
  *(v21 + 80) = v29;
  v30 = String.init(format:_:)();

  return v30;
}

uint64_t sub_1000FD278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Calendar();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for TimeZone();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009F70(&qword_10021F180);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_100009F70(&qword_10021F188);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(a2 + 24))(a1, a2);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

uint64_t sub_1000FD544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.FormatStyle();
  v31 = *(v33 - 8);
  v9 = __chkstk_darwin(v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v29 = &v29 - v15;
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateInterval();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v19 + 8))(v21, v18);
  sub_1000FD278(a1, a2);
  v22 = v32;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
  v23 = v30;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v38 + 8))(v22, v39);
  Date.FormatStyle.hour(_:)();
  (*(v34 + 8))(v23, v36);
  v24 = *(v31 + 8);
  v25 = v33;
  v24(v11, v33);
  v26 = v40;
  static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
  v27 = v29;
  Date.FormatStyle.minute(_:)();
  (*(v41 + 8))(v26, v42);
  v24(v14, v25);
  sub_1000FEA80(&qword_10021F178, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v24(v27, v25);
  (*(v35 + 8))(v17, v37);
  return v43;
}

uint64_t sub_1000FDA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v38 = sub_100009F70(&qword_10021F168);
  v5 = __chkstk_darwin(v38);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v34 - v7;
  v8 = type metadata accessor for Date();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v40 = type metadata accessor for DateInterval();
  v13 = *(v40 - 8);
  v14 = __chkstk_darwin(v40);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  sub_1000FBF34(a1, a2, &v34 - v17);
  DateInterval.start.getter();
  v19 = *(v13 + 8);
  v20 = v18;
  v21 = v40;
  v19(v20, v40);
  sub_1000FBF34(a1, a2, v16);
  v22 = v41;
  DateInterval.end.getter();
  v19(v16, v21);
  sub_1000FEA80(&qword_10021F170, &type metadata accessor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v36;
    v24 = v37;
    v26 = *(v37 + 32);
    v26(v36, v12, v8);
    v27 = v38;
    v26((v25 + *(v38 + 48)), v22, v8);
    v28 = v35;
    sub_1000FE9A0(v25, v35);
    v29 = *(v27 + 48);
    v30 = v39;
    v26(v39, v28, v8);
    v31 = *(v24 + 8);
    v31(v28 + v29, v8);
    sub_1000FEA10(v25, v28);
    v32 = *(v27 + 48);
    v33 = sub_100009F70(&qword_10021F158);
    v26(&v30[*(v33 + 36)], (v28 + v32), v8);
    return (v31)(v28, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FDE00(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.IntervalFormatStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = sub_100009F70(&qword_10021F158);
  __chkstk_darwin(v16 - 8);
  v18 = &v21 - v17;
  sub_1000FDA54(a1, v21, &v21 - v17);
  static FormatStyle<>.interval.getter();
  Date.IntervalFormatStyle.day()();
  v19 = *(v7 + 8);
  v19(v10, v6);
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.IntervalFormatStyle.month(_:)();
  (*(v3 + 8))(v5, v22);
  v19(v13, v6);
  sub_1000FEA80(&qword_10021F160, &type metadata accessor for Date.IntervalFormatStyle);
  Range<>.formatted<A>(_:)();
  v19(v15, v6);
  sub_1000FE938(v18);
  return v23;
}

uint64_t sub_1000FE0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.DateStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021F158);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  sub_1000FDA54(a1, a2, &v17 - v13);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  v15 = Range<>.formatted(date:time:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_1000FE938(v14);
  return v15;
}

uint64_t sub_1000FE2B8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for Date();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = __chkstk_darwin(v3);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DateInterval();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Calendar();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateComponents();
  v38 = *(v15 - 8);
  v39 = v15;
  __chkstk_darwin(v15);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100009F70(qword_10021F190);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001AEB90;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.day(_:), v17);
  sub_100106D6C(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v21 = v43;
  sub_1000FBF34(a1, v43, v12);
  v22 = v7;
  DateInterval.start.getter();
  v23 = *(v37 + 8);
  v23(v12, v8);
  v24 = v36;
  sub_1000FBF34(a1, v21, v36);
  v25 = v42;
  DateInterval.end.getter();
  v23(v24, v8);
  v27 = v34;
  v26 = v35;
  Calendar.dateComponents(_:from:to:)();

  v28 = v45;
  v29 = *(v44 + 8);
  v29(v25, v45);
  v29(v22, v28);
  (*(v40 + 8))(v26, v41);
  v30 = DateComponents.day.getter();
  LODWORD(v28) = v31;
  (*(v38 + 8))(v27, v39);
  return (v30 > 0) & ~v28;
}

uint64_t sub_1000FE75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000FE2B8(a1, a2))
  {

    return sub_1000FE0BC(a1, a2);
  }

  else
  {
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    v9 = sub_1000FB998(v7, a1, a2);
    (*(v5 + 8))(v7, v4);
    return v9;
  }
}

uint64_t sub_1000FE88C(uint64_t a1, uint64_t a2)
{
  if (sub_1000FE2B8(a1, a2))
  {
    return 0;
  }

  else
  {
    return sub_1000FD544(a1, a2);
  }
}

uint64_t sub_1000FE8E0(uint64_t a1)
{
  result = sub_1000FEA80(&qword_10021F150, &type metadata accessor for Time);
  *(a1 + 8) = result;
  return result;
}