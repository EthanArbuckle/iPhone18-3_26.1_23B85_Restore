uint64_t sub_10009E858(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10009E8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v30 = a1;
  v31 = a7;
  v25 = a6;
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000B3DC(&qword_100219110);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v36 = sub_100018EC8();
  WitnessTable = swift_getWitnessTable();
  v26 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v24[1] = swift_getWitnessTable();
  v24[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = v25;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v28;
  v15[4] = v27;
  v15[5] = v17;
  v15[6] = v29;

  v34 = GeometryReader.init(content:)();
  v35 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v32 = v19;
  v33 = v20;
  v21 = swift_getWitnessTable();
  sub_100157EFC(v12, v8, v21);
  v22 = *(v9 + 8);
  v22(v12, v8);
  sub_100157EFC(v14, v8, v21);
  return (v22)(v14, v8);
}

uint64_t sub_10009EC50@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[4] = a3;
  v26 = a1;
  v27 = a6;
  v24[1] = a4;
  v24[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v24[0] = sub_10000B3DC(&qword_100219110);
  v24[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v31 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_100018EC8();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v28 = v19;
  v29 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_100157EFC(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_100157EFC(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t sub_10009EF38()
{

  return swift_deallocObject();
}

uint64_t sub_10009EF88()
{
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000B3DC(&qword_100219110);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_100018EC8();
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

uint64_t sub_10009F130@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10009FEF8(&qword_10021CB88, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  return sub_10009FFA4(v5 + v3, a1);
}

uint64_t sub_10009F1F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  sub_10009FF40(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10009F264(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_100009F70(&qword_10021B370);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021CB80);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for VenueController.Result(0);
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v3[17] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v6;

  return _swift_task_switch(sub_10009F400);
}

uint64_t sub_10009F400()
{
  v1 = v0[15];
  v2 = v0[7];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[19] = OBJC_IVAR____TtC15ShazamEventsApp15VenueController___observationRegistrar;
  v0[2] = v2;
  v0[20] = sub_10009FEF8(&qword_10021CB88, type metadata accessor for VenueController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009FE78(v1);
  v4 = type metadata accessor for Music();
  sub_10009FEF8(&qword_10021B378, &type metadata accessor for Music);
  static EventService.RequestType<>.music.getter();
  v5 = swift_task_alloc();
  v0[21] = v5;
  sub_10009FEF8(&qword_10021CB90, &type metadata accessor for Music);
  *v5 = v0;
  v5[1] = sub_10009F638;
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[13];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v9, v7, v8, v6, v0 + 2, 0, v4, v0 + 2);
}

uint64_t sub_10009F638()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10009F94C;
  }

  else
  {
    v3 = sub_10009F7C0;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_10009F7C0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];

  v6 = *(sub_100009F70(&qword_10021CB98) + 48);
  Venue.Schedule.venue.getter();
  *(v1 + v6) = Venue.Schedule.events.getter();
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;
  v0[4] = v5;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v4 + 8))(v2, v3);
  sub_10009FE78(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10009F94C()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[7];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[3] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009FE78(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10009FA9C()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10009FE78(v0 + OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10009FBB0()
{
  result = type metadata accessor for EventService();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for VenueController.Result(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10009FD24()
{
  sub_10009FD98();
  if (v0 <= 0x3F)
  {
    sub_10009FE14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009FD98()
{
  if (!qword_10021CB40)
  {
    type metadata accessor for Venue();
    sub_10000B3DC(&qword_10021CB48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021CB40);
    }
  }
}

unint64_t sub_10009FE14()
{
  result = qword_10021CB50;
  if (!qword_10021CB50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10021CB50);
  }

  return result;
}

uint64_t sub_10009FE78(uint64_t a1)
{
  v2 = type metadata accessor for VenueController.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009FEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009FF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009FFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0020(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Calendar();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TimeZone();
  v38 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v34 - v13;
  v34 = type metadata accessor for Date();
  v15 = *(v34 - 8);
  v16 = __chkstk_darwin(v34);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  static Date.now.getter();
  v21 = *(a2 + 168);
  v37 = v2;
  v21(a1, a2);
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v23 = v38;
  v35 = v10;
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = v40;
  static Calendar.current.getter();
  v26 = v39;
  Calendar.timeZone.getter();
  v27 = v41;
  (*(v42 + 8))(v25, v43);
  v28 = TimeZone.secondsFromGMT(for:)();
  v29 = *(v23 + 8);
  result = v29(v26, v27);
  if (__OFSUB__(v24, v28))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v29(v35, v27);
    v31 = *(v15 + 8);
    v32 = v34;
    v31(v18, v34);
    v33 = sub_1000A0424(v20, a1, v36);
    v31(v20, v32);
    return (v33 & 1) == 0;
  }

  return result;
}

uint64_t sub_1000A0424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = type metadata accessor for Date();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateInterval();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(a3 + 168))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000FBF34(AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  DateInterval.end.getter();
  (*(v8 + 8))(v10, v19);
  v16 = static Date.> infix(_:_:)();
  (*(v5 + 8))(v7, v21);
  return v16 & 1;
}

uint64_t sub_1000A06D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A0764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000A0830()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A0914()
{
  String.hash(into:)();
}

Swift::Int sub_1000A09E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A0AC4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1E04(*a1);
  *a2 = result;
  return result;
}

void sub_1000A0AF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656D614E65676170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E656C75646F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6341656C75646F6DLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4449656C646E7562;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_1000A0B9C()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_1000A0C64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1E50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A0C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A0D18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A0CC4()
{
  result = qword_10021CBA0;
  if (!qword_10021CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CBA0);
  }

  return result;
}

uint64_t sub_1000A0D18(char a1)
{
  result = 0x746E657665;
  switch(a1)
  {
    case 1:
      result = 0x756D2D746E657665;
      break;
    case 2:
      result = 0x70732D746E657665;
      break;
    case 3:
      result = 0x68742D746E657665;
      break;
    case 4:
      result = 0x61642D746E657665;
      break;
    case 5:
      result = 0x72612D746E657665;
      break;
    case 6:
      v3 = 0x45746E657665;
      goto LABEL_15;
    case 7:
      result = 0x747369747261;
      break;
    case 8:
      result = 0x7245747369747261;
      break;
    case 9:
      result = 0x65756E6576;
      break;
    case 10:
      v3 = 0x4565756E6576;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
      break;
    case 11:
      result = 0x7374656B636974;
      break;
    case 12:
      result = 0x737265746C6966;
      break;
    case 13:
      result = 0x746E65746E6F63;
      break;
    case 14:
      result = 0x45746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A0F3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000A0FE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A106C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1000A10DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A1144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A2398();
  *a1 = result;
  return result;
}

unint64_t sub_1000A1174@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000A11A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A11A0(char a1)
{
  result = 0x7261626C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x726564616568;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x42746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C75646F4D707061;
      break;
    case 7:
      result = 0x707041636973756DLL;
      break;
    case 8:
      result = 0x70417374726F7073;
      break;
    case 9:
      result = 0x737265746C6966;
      break;
    case 10:
      result = 0x694C73746E657665;
      break;
    case 11:
      result = 0x646F4D636973756DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x7473694C746573;
      break;
    case 14:
      result = 0x507473694C746573;
      break;
    case 15:
      result = 0x736F65646976;
      break;
    case 16:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0x676E696D6F637075;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1000A13FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(*v3);
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  return v6;
}

uint64_t sub_1000A147C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    v3 = 0x686372616573;
    switch(a1)
    {
      case 1:
        v3 = 0x6572616873;
        break;
      case 2:
        v3 = 0x7373696D736964;
        break;
      case 3:
        v3 = 0x656B636954746567;
        break;
      case 4:
        v3 = 0x6C61436F54646461;
        break;
      case 5:
        v3 = 0x7370614D776F6873;
        break;
      case 6:
        v3 = 0x64616F6C6E776F64;
        break;
      case 7:
        v5 = 0x657461657263;
        goto LABEL_34;
      case 8:
        v3 = 0x7070416E65706FLL;
        break;
      case 9:
        v3 = 0x6973754D6E65706FLL;
        break;
      case 10:
        v3 = 0x726F70536E65706FLL;
        break;
      case 11:
        v3 = 0xD000000000000011;
        break;
      case 12:
        v3 = 0xD000000000000012;
        break;
      case 13:
        v3 = 0x6E6576456E65706FLL;
        break;
      case 14:
        v3 = 0x746C69466E65706FLL;
        break;
      case 15:
        v3 = 0xD000000000000011;
        break;
      case 16:
      case 32:
        v3 = 0xD000000000000013;
        break;
      case 17:
        v3 = 0x676E6F536E65706FLL;
        break;
      case 18:
        v3 = 0x656469566E65706FLL;
        break;
      case 19:
        v3 = 2036427888;
        break;
      case 20:
        v3 = 0x6573756170;
        break;
      case 21:
        v3 = 0x6C69467465736572;
        break;
      case 22:
        v3 = 0x61577463656C6573;
        break;
      case 23:
        v5 = 0x7463656C6573;
LABEL_34:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x6157000000000000;
        break;
      case 24:
        v3 = 0xD000000000000011;
        break;
      case 25:
        v3 = 0x65726F4D776F6873;
        break;
      case 26:
        v3 = 0x6F68506570697773;
        break;
      case 27:
        v3 = 0x6E6F536570697773;
        break;
      case 28:
        v3 = 0x6469566570697773;
        break;
      case 29:
        v3 = 0x6C61576570697773;
        break;
      case 30:
        v3 = 0x7461576570697773;
        break;
      case 31:
        v3 = 0x706C6C6157657375;
        break;
      default:
        break;
    }
  }

  else
  {
    v3 = a1;
  }

  sub_1000109A4(a1, a2, a3);
  return v3;
}

id sub_1000A191C()
{
  sub_1000A147C(*v0, *(v0 + 8), *(v0 + 16));
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

uint64_t sub_1000A199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v28 = type metadata accessor for Art();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Dance();
  v26 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Theater();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Sport();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Music();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  v18 = sub_100043D3C(v34);
  (*(*(a2 - 8) + 16))(v18, v32, a2);
  sub_10005DA94(v34, v33);
  sub_100009F70(&qword_10021CBF8);
  if (swift_dynamicCast())
  {
    (*(v15 + 8))(v17, v14);
    v19 = 1;
  }

  else if (swift_dynamicCast())
  {
    (*(v11 + 8))(v13, v10);
    v19 = 2;
  }

  else if (swift_dynamicCast())
  {
    (*(v29 + 8))(v9, v7);
    v19 = 3;
  }

  else
  {
    v21 = v30;
    v20 = v31;
    if (swift_dynamicCast())
    {
      (*(v26 + 8))(v21, v20);
      v19 = 4;
    }

    else
    {
      v23 = v27;
      v22 = v28;
      if (swift_dynamicCast())
      {
        (*(v25 + 8))(v23, v22);
        v19 = 5;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  sub_100021498(v33);
  sub_100021498(v34);
  return v19;
}

unint64_t sub_1000A1E04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209580, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A1E50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209618, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A1E9C(uint64_t a1, int a2)
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

uint64_t sub_1000A1EE4(uint64_t result, int a2, int a3)
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

uint64_t sub_1000A1F34(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000A1F50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A20D8()
{
  result = qword_10021CC00;
  if (!qword_10021CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CC00);
  }

  return result;
}

uint64_t sub_1000A2130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000A217C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000A21C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000A21EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A2280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A2344()
{
  result = qword_10021CC58[0];
  if (!qword_10021CC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021CC58);
  }

  return result;
}

uint64_t sub_1000A2398()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000A2404@<X0>(uint64_t a1@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v2 = (a1 + *(type metadata accessor for LocationModule() + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void sub_1000A252C()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_10000B304();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A25D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LocationViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1000A26C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000A27CC()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000A280C()
{
  type metadata accessor for LocationViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000A2858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for LocationViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v35 = sub_100009F70(&qword_10021CCE0);
  __chkstk_darwin(v35);
  v13 = &v33 - v12;
  v36 = sub_100009F70(&qword_10021CCE8);
  __chkstk_darwin(v36);
  v15 = &v33 - v14;
  v16 = sub_100009F70(&qword_10021CCF0);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v34 = &v33 - v18;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v19 = sub_100009F70(&qword_10021CCF8);
  sub_1000A2CE8(v2, v7, v6, &v13[*(v19 + 44)]);
  sub_1000A280C();
  v43 = v7;
  v44 = v6;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v20 = sub_1000A27CC();
  v21 = *(v20 + *(*v20 + 120));

  sub_1000A3A44();
  View.mapItemDetailSheet(isPresented:item:displaysMap:)();

  sub_10000D52C(v13, &qword_10021CCE0);
  LOBYTE(v13) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v36;
  v23 = &v15[*(v36 + 36)];
  *v23 = v13;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = v39;
  static AccessibilityChildBehavior.contain.getter();
  v29 = sub_1000A3AA8();
  v30 = v34;
  View.accessibilityElement(children:)();
  (*(v40 + 8))(v28, v41);
  sub_1000A3B70(v15);
  v45 = v22;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.accessibilityIdentifier(_:)();
  return (*(v38 + 8))(v30, v31);
}

uint64_t sub_1000A2CE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a1;
  v104 = a4;
  v97 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v97);
  v101 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a2;
  v90 = a3;
  v91 = type metadata accessor for LocationModule();
  v88 = *(v91 - 8);
  v86 = *(v88 + 64);
  __chkstk_darwin(v91);
  v87 = &v86 - v7;
  v95 = sub_100009F70(&qword_10021CD10);
  __chkstk_darwin(v95);
  v100 = &v86 - v8;
  v96 = sub_100009F70(&qword_10021CD18);
  v9 = __chkstk_darwin(v96);
  v103 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v98 = &v86 - v12;
  __chkstk_darwin(v11);
  v102 = &v86 - v13;
  v105 = type metadata accessor for AccessibilityTraits();
  v99 = *(v105 - 8);
  __chkstk_darwin(v105);
  v94 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100009F70(&qword_10021AFA8);
  v15 = __chkstk_darwin(v93);
  v17 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v106 = &v86 - v18;
  sub_1000A27CC();

  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_10000D60C(v19, v21, v23 & 1);

  LOBYTE(v19) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v107) = v28 & 1;
  v112 = 0;
  *&v108 = v24;
  *(&v108 + 1) = v26;
  LOBYTE(v109) = v28 & 1;
  *(&v109 + 1) = v30;
  LOBYTE(v110) = v19;
  *(&v110 + 1) = v31;
  *v111 = v32;
  *&v111[8] = v33;
  *&v111[16] = v34;
  v111[24] = 0;
  sub_100009F70(&qword_10021AFE8);
  sub_100071294();
  v35 = v91;
  View.accessibilityIdentifier(_:)();
  v113[2] = v110;
  *v114 = *v111;
  *&v114[9] = *&v111[9];
  v113[0] = v108;
  v113[1] = v109;
  v36 = v92;
  sub_10000D52C(v113, &qword_10021AFE8);
  v37 = v94;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  v99[1](v37, v105);
  v99 = v17;
  sub_10000D52C(v17, &qword_10021AFA8);
  sub_1000A27CC();
  v38 = sub_1000C6E88();
  v40 = v39;

  v41 = sub_1000A27CC();
  v42 = *(v41 + *(*v41 + 120));
  v43 = v42;

  sub_1000A27CC();
  if (*&v36[*(v35 + 36)])
  {

    v45 = sub_1000C6EFC(v44);

    v94 = v38;
    v93 = v40;
    if (v45)
    {
      v46 = v88;
      v47 = v87;
      (*(v88 + 16))(v87, v36, v35);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      v50 = v90;
      *(v49 + 16) = v89;
      *(v49 + 24) = v50;
      (*(v46 + 32))(v49 + v48, v47, v35);
      v105 = sub_1000A3DA8;
    }

    else
    {
      v105 = 0;
      v49 = 0;
    }

    v92 = v42;
    v107 = 0;
    sub_100009F70(&qword_10021CD20);
    State.init(wrappedValue:)();
    v90 = *(&v108 + 1);
    v91 = v108;
    v107 = 0;
    State.init(wrappedValue:)();
    v51 = v108;
    if (qword_100218430 != -1)
    {
      swift_once();
    }

    v52 = qword_100230600;
    v53 = v100;
    v54 = &v100[*(v95 + 36)];
    v55 = v97;
    v56 = *(v97 + 20);
    v57 = enum case for RoundedCornerStyle.continuous(_:);
    v58 = type metadata accessor for RoundedCornerStyle();
    v59 = *(*(v58 - 8) + 104);
    v59(v54 + v56, v57, v58);
    *v54 = v52;
    v54[1] = v52;
    *(v54 + *(sub_100009F70(&qword_100218928) + 36)) = 256;
    v60 = v93;
    *v53 = v94;
    *(v53 + 8) = v60;
    v61 = v105;
    *(v53 + 16) = v92;
    *(v53 + 24) = v61;
    v62 = v91;
    *(v53 + 32) = v49;
    *(v53 + 40) = v62;
    *(v53 + 48) = v90;
    *(v53 + 56) = v51;
    v63 = v101;
    v59(v101 + *(v55 + 20), v57, v58);
    *v63 = v52;
    v63[1] = v52;
    v64 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v65 = Color.init(uiColor:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v66 = v98;
    v67 = &v98[*(v96 + 36)];
    sub_1000A3BD8(v63, v67);
    v68 = v67 + *(sub_100009F70(&qword_10021BE20) + 36);
    v69 = v109;
    *v68 = v108;
    *(v68 + 16) = v69;
    *(v68 + 32) = v110;
    v70 = sub_100009F70(&qword_10021BE28);
    *(v67 + *(v70 + 52)) = v65;
    *(v67 + *(v70 + 56)) = 256;
    v71 = static Alignment.center.getter();
    v73 = v72;
    sub_1000A3C3C(v63);
    v74 = (v67 + *(sub_100009F70(&qword_10021BE30) + 36));
    *v74 = v71;
    v74[1] = v73;
    v75 = static Alignment.center.getter();
    v77 = v76;
    v78 = (v67 + *(sub_100009F70(&qword_10021BDF8) + 36));
    *v78 = v75;
    v78[1] = v77;
    sub_10000F618(v53, v66, &qword_10021CD10);
    v79 = v102;
    sub_10000F618(v66, v102, &qword_10021CD18);
    v80 = v106;
    v81 = v99;
    sub_10000D58C(v106, v99, &qword_10021AFA8);
    v82 = v103;
    sub_10000D58C(v79, v103, &qword_10021CD18);
    v83 = v104;
    sub_10000D58C(v81, v104, &qword_10021AFA8);
    v84 = sub_100009F70(&qword_10021CD28);
    sub_10000D58C(v82, v83 + *(v84 + 48), &qword_10021CD18);
    sub_10000D52C(v79, &qword_10021CD18);
    sub_10000D52C(v80, &qword_10021AFA8);
    sub_10000D52C(v82, &qword_10021CD18);
    return sub_10000D52C(v81, &qword_10021AFA8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3884(uint64_t a1)
{
  v2 = type metadata accessor for LocationModule();
  sub_1000A27CC();
  sub_1000C7028(1);

  sub_1000A27CC();
  if (*(a1 + *(v2 + 36)))
  {

    sub_1000C716C(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C73E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A39D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C73E8();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000A3A38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000A3A44()
{
  result = qword_10021CD00;
  if (!qword_10021CD00)
  {
    sub_10000B3DC(&qword_10021CCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD00);
  }

  return result;
}

unint64_t sub_1000A3AA8()
{
  result = qword_10021CD08;
  if (!qword_10021CD08)
  {
    sub_10000B3DC(&qword_10021CCE8);
    sub_10000B3DC(&qword_10021CCE0);
    sub_1000A3A44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD08);
  }

  return result;
}

uint64_t sub_1000A3B70(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021CCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A3C3C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3C98()
{
  v1 = *(type metadata accessor for LocationModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for LocationViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000A3DA8()
{
  v1 = *(type metadata accessor for LocationModule() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1000A3884(v2);
}

unint64_t sub_1000A3E30()
{
  result = qword_10021CD30;
  if (!qword_10021CD30)
  {
    sub_10000B3DC(&qword_10021CD38);
    sub_10000B3DC(&qword_10021CCE8);
    sub_1000A3AA8();
    swift_getOpaqueTypeConformance2();
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD30);
  }

  return result;
}

uint64_t sub_1000A3F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A3F84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009F70(&qword_10021CD40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A4054(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_10021CD40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CircularProgressViewStyle()
{
  result = qword_10021CDA0;
  if (!qword_10021CDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A4150()
{
  sub_1000A41CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000A41CC()
{
  if (!qword_10021CDB0)
  {
    sub_1000A4228();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_10021CDB0);
    }
  }
}

unint64_t sub_1000A4228()
{
  result = qword_10021CDB8;
  if (!qword_10021CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDB8);
  }

  return result;
}

__n128 sub_1000A4298@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v5)
  {
    sub_1000A4A90(&v63);
  }

  else
  {
    v6 = *&v4;
    v7 = static Alignment.center.getter();
    v9 = v8;
    sub_1000A4564(a1, &v78, v6);
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
    sub_10000D58C(&v28, &v63, &qword_10021CE38);
    sub_10000D52C(v37, &qword_10021CE38);
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
    sub_100009F70(&qword_10021CD40);
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
    sub_1000A4BE0(&v63);
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
  sub_100009F70(&qword_10021CE08);
  sub_1000A4A9C();
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

uint64_t sub_1000A4564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v10 = static HierarchicalShapeStyle.primary.getter();
  type metadata accessor for CircularProgressViewStyle();
  sub_100009F70(&qword_10021CD40);
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

  sub_10000D58C(v22, v36, &qword_10021CE40);
  sub_10000D58C(&v26, v36, &qword_10021CE48);
  sub_10000D52C(v31, &qword_10021CE48);
  v36[0] = v19;
  v36[1] = v20;
  v37 = v21;
  v38 = v10;
  v39 = 256;
  v40 = v6;
  v41 = v8;
  v42 = v12;
  return sub_10000D52C(v36, &qword_10021CE40);
}

uint64_t sub_1000A47EC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000A48B4@<X0>(uint64_t a1@<X8>)
{
  sub_1000A4298(v1, v16);
  sub_100009F70(&qword_10021CDE8);
  sub_1000A4A14();
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
  v11 = (a1 + *(sub_100009F70(&qword_10021CDF8) + 36));
  v12 = *(sub_100009F70(&qword_10021CE00) + 28);
  v13 = enum case for LayoutDirection.leftToRight(_:);
  v14 = type metadata accessor for LayoutDirection();
  result = (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return result;
}

unint64_t sub_1000A4A14()
{
  result = qword_10021CDF0;
  if (!qword_10021CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDF0);
  }

  return result;
}

unint64_t sub_1000A4A9C()
{
  result = qword_10021CE10;
  if (!qword_10021CE10)
  {
    sub_10000B3DC(&qword_10021CE08);
    sub_1000A4B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE10);
  }

  return result;
}

unint64_t sub_1000A4B28()
{
  result = qword_10021CE18;
  if (!qword_10021CE18)
  {
    sub_10000B3DC(&qword_10021CE20);
    sub_10000D1EC(&qword_10021CE28, &qword_10021CE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE18);
  }

  return result;
}

unint64_t sub_1000A4BEC()
{
  result = qword_10021CE50;
  if (!qword_10021CE50)
  {
    sub_10000B3DC(&qword_10021CDF8);
    sub_1000A4CA4();
    sub_10000D1EC(&qword_10021CE90, &qword_10021CE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE50);
  }

  return result;
}

unint64_t sub_1000A4CA4()
{
  result = qword_10021CE58;
  if (!qword_10021CE58)
  {
    sub_10000B3DC(&qword_10021CDE8);
    sub_1000A4D5C();
    sub_10000D1EC(&qword_10021CE80, &qword_10021CE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE58);
  }

  return result;
}

unint64_t sub_1000A4D5C()
{
  result = qword_10021CE60;
  if (!qword_10021CE60)
  {
    sub_10000B3DC(&qword_10021CE68);
    sub_1000A4DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE60);
  }

  return result;
}

unint64_t sub_1000A4DE0()
{
  result = qword_10021CE70;
  if (!qword_10021CE70)
  {
    sub_10000B3DC(&qword_10021CE78);
    sub_1000A4A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE70);
  }

  return result;
}

uint64_t sub_1000A4EFC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000A4F44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A4F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000A4FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A5044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_100009F70(&qword_10021CEE0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = *v2;
  v85 = v2[1];
  v86 = v7;

  v8 = LocalizedStringKey.init(stringLiteral:)();
  v83 = v9;
  v84 = v8;
  v11 = v10;
  v82 = v12;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v80 = v14;
  v81 = v13;
  v16 = v15;
  v79 = v17;
  type metadata accessor for CGSize(0);
  v102 = 0uLL;
  State.init(wrappedValue:)();
  v73 = *(&v91 + 1);
  v74 = v91;
  v78 = v92;
  static Alignment.center.getter();
  v76 = v11 & 1;
  v77 = v16 & 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v71 = v19;
  v72 = v18;
  v69 = v21;
  v70 = v20;
  v104 = 0;
  v68 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = 0;
  v67 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v106 = 0;
  v38 = static Alignment.center.getter();
  v66 = v39;
  v40 = &v6[*(v4 + 44)];
  v41 = static Alignment.bottom.getter();
  v43 = v42;
  sub_1000A54A4(v2, &v102);
  v98 = v102;
  v99[0] = *v103;
  *(v99 + 10) = *&v103[10];
  v100 = v102;
  v101[0] = *v103;
  *(v101 + 10) = *&v103[10];
  sub_1000A5664(&v98, &v88);
  sub_10000D52C(&v100, &qword_10021CEE8);
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 10) = *(v99 + 10);
  *&v88 = v41;
  *(&v88 + 1) = v43;
  sub_100009F70(&qword_10021CEF0);
  sub_10000D1EC(&qword_10021CEF8, &qword_10021CEF0);
  View.accessibilityHidden(_:)();
  v102 = v88;
  *v103 = v89;
  *&v103[16] = v90[0];
  *&v103[26] = *(v90 + 10);
  sub_10000D52C(&v102, &qword_10021CEF0);
  v44 = &v40[*(sub_100009F70(&qword_10021CF00) + 36)];
  v45 = v66;
  *v44 = v38;
  v44[1] = v45;
  v46 = v73;
  *(v6 + 10) = v74;
  *(v6 + 11) = v46;
  v47 = v94;
  *(v6 + 136) = v93;
  v48 = v91;
  *(v6 + 120) = v92;
  *(v6 + 104) = v48;
  v49 = v96;
  *(v6 + 200) = v97;
  v50 = v95;
  *(v6 + 184) = v49;
  v51 = v83;
  *v6 = v84;
  *(v6 + 1) = v51;
  v6[16] = v76;
  v52 = v81;
  *(v6 + 3) = v82;
  *(v6 + 4) = v52;
  *(v6 + 5) = v80;
  v6[48] = v77;
  v53 = v85;
  v54 = v86;
  *(v6 + 7) = v79;
  *(v6 + 8) = v54;
  *(v6 + 9) = v53;
  *(v6 + 12) = v78;
  *(v6 + 168) = v50;
  *(v6 + 152) = v47;
  v6[216] = v75;
  *&v49 = v71;
  *(v6 + 28) = v72;
  *(v6 + 29) = v49;
  *&v49 = v69;
  *(v6 + 30) = v70;
  *(v6 + 31) = v49;
  v6[256] = 0;
  LOBYTE(v53) = v67;
  v6[264] = v68;
  *(v6 + 34) = v23;
  *(v6 + 35) = v25;
  *(v6 + 36) = v27;
  *(v6 + 37) = v29;
  v6[304] = 0;
  v6[312] = v53;
  *(v6 + 40) = v31;
  *(v6 + 41) = v33;
  *(v6 + 42) = v35;
  *(v6 + 43) = v37;
  v6[352] = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v87;
  sub_1000A56D4(v6, v87);
  result = sub_100009F70(&qword_10021CF08);
  v65 = v63 + *(result + 36);
  *v65 = v41;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_1000A54A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    v10 = Color.init(cgColor:)();
  }

  else
  {
    v10 = static Color.blue.getter();
  }

  v11 = v10;
  Image.init(_:bundle:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v12 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  *(a2 + 8) = 256;
  *(a2 + 16) = 16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 257;
  return result;
}

uint64_t sub_1000A5664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021CEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A56D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021CEE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A5748()
{
  result = qword_10021CF10;
  if (!qword_10021CF10)
  {
    sub_10000B3DC(&qword_10021CF08);
    sub_1000A57D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF10);
  }

  return result;
}

unint64_t sub_1000A57D4()
{
  result = qword_10021CF18;
  if (!qword_10021CF18)
  {
    sub_10000B3DC(&qword_10021CEE0);
    sub_1000A588C();
    sub_10000D1EC(&qword_10021CF68, &qword_10021CF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF18);
  }

  return result;
}

unint64_t sub_1000A588C()
{
  result = qword_10021CF20;
  if (!qword_10021CF20)
  {
    sub_10000B3DC(&qword_10021CF28);
    sub_1000A5918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF20);
  }

  return result;
}

unint64_t sub_1000A5918()
{
  result = qword_10021CF30;
  if (!qword_10021CF30)
  {
    sub_10000B3DC(&qword_10021CF38);
    sub_1000A59A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF30);
  }

  return result;
}

unint64_t sub_1000A59A4()
{
  result = qword_10021CF40;
  if (!qword_10021CF40)
  {
    sub_10000B3DC(&qword_10021CF48);
    sub_1000A5A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF40);
  }

  return result;
}

unint64_t sub_1000A5A30()
{
  result = qword_10021CF50;
  if (!qword_10021CF50)
  {
    sub_10000B3DC(&qword_10021CF58);
    sub_1000A5ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF50);
  }

  return result;
}

unint64_t sub_1000A5ABC()
{
  result = qword_10021CF60;
  if (!qword_10021CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF60);
  }

  return result;
}

uint64_t sub_1000A5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimeZone();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A5C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimeZone();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DesignTimeTime()
{
  result = qword_10021CFC8;
  if (!qword_10021CFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A5D70()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A5DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000A5E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TimeZone();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1000A5ED0()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A5FBC()
{
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000A6090()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A6178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static TimeZone.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1000A6228(uint64_t a1)
{
  result = sub_1000A6280(&qword_10021D008, type metadata accessor for DesignTimeTime);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A6280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A62C8()
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

uint64_t sub_1000A637C()
{
  sub_1000A6D08();
}

uint64_t sub_1000A63A4(uint64_t a1)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v3)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    __chkstk_darwin(v3);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A65B0();
  }
}

uint64_t sub_1000A6678()
{
  swift_getKeyPath();
  sub_1000A6520();

  return *(v0 + 40);
}

uint64_t sub_1000A66EC(char a1)
{
  v2 = a1 & 1;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 40) = v2;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A65B0();
  }

  return result;
}

uint64_t sub_1000A6830()
{
  sub_1000A688C();

  return LocalizedStringKey.init(stringLiteral:)();
}

BOOL sub_1000A688C()
{
  sub_1000A6D08();

  v0 = Array.count.getter();

  return v0 > 1;
}

BOOL sub_1000A68F0()
{
  sub_1000A6D08();

  v0 = Array.count.getter();

  return v0 == 1;
}

uint64_t sub_1000A6954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

void sub_1000A69C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001B3D70;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001666DC(1, 5, 1, inited);
  v12 = v8;
  sub_1000109BC(&aBlock, v19);
  sub_1000EB0D0(4, v19, &v12, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001BDDE0;
  v10[4] = v8;
  v17 = sub_100010AAC;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000DCA40;
  v16 = &unk_10020D748;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_1000A6C28()
{

  v1 = qword_10021D020;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000A6C98()
{
  sub_1000A6C28();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A6D08()
{
  swift_getKeyPath();
  sub_1000A6520();

  return *(v0 + 32);
}

uint64_t sub_1000A6D7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000A6D08();
}

__n128 sub_1000A6DF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000A6DFC()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1000A6E38()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A6E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6678();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A6F08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000A88D8(&qword_10021B990, type metadata accessor for ArtistController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state;
  swift_beginAccess();
  return sub_100080978(v5 + v3, a1);
}

uint64_t sub_1000A6FD0(uint64_t a1, uint64_t a2)
{
  v3[197] = v2;
  v3[191] = a2;
  v3[185] = a1;
  v3[198] = sub_100009F70(&unk_10021D210);
  v3[199] = swift_task_alloc();
  v4 = sub_100009F70(&qword_100219FE8);
  v3[200] = v4;
  v3[201] = *(v4 - 8);
  v3[202] = swift_task_alloc();
  v3[203] = type metadata accessor for ArtistController.State(0);
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[206] = static MainActor.shared.getter();
  v3[207] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[208] = v5;

  return _swift_task_switch(sub_1000A7154);
}

uint64_t sub_1000A7154()
{
  v1 = v0[205];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[185];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[209] = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController___observationRegistrar;
  v0[167] = v2;
  v0[210] = sub_1000A88D8(&qword_10021B990, type metadata accessor for ArtistController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v1);
  v6 = swift_allocObject();
  v0[211] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;

  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_allocObject();
  v0[212] = v8;
  *(v8 + 16) = &unk_1001B3F50;
  *(v8 + 24) = v7;

  swift_asyncLet_begin();
  v9 = v0[202];

  return _swift_asyncLet_get_throwing(v0 + 2, v9, sub_1000A73B4, v0 + 162);
}

uint64_t sub_1000A73B4()
{
  *(v1 + 1704) = v0;
  if (v0)
  {

    return _swift_task_switch(sub_1000A7704);
  }

  else
  {
    v2 = *(v1 + 1632);
    v3 = *(v1 + 1616);
    v4 = *(v1 + 1608);
    v5 = *(v1 + 1600);
    *(v1 + 1712) = *(sub_100009F70(&qword_10021B998) + 48);
    (*(v4 + 16))(v2, v3, v5);
    v6 = *(v1 + 1592);

    return _swift_asyncLet_get(v1 + 656, v6, sub_1000A74AC, v1 + 1440);
  }
}

uint64_t sub_1000A74C8()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1576);
  sub_1000A8868(*(v0 + 1592), v1 + *(v0 + 1712));
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 1432) = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v1);

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_1000A7650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A777C()
{
  v1 = v0[213];
  v2 = v0[205];
  v3 = v0[197];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[173] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A78F4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state;
  swift_beginAccess();
  sub_1000A8920(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000A7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100009F70(&qword_10021B370);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7A30);
}

uint64_t sub_1000A7A30()
{
  v1 = type metadata accessor for Music();
  v2 = sub_1000A88D8(&qword_10021B378, &type metadata accessor for Music);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000A7B50;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return EventService.schedule<A>(participantIdentifier:ofType:)(v7, v5, v6, v4, v1, v2);
}

uint64_t sub_1000A7B50()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000A7CF8);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000A7CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for AppleMusicFetcher();
  v4[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1000A7E34;

  return sub_10018482C(a1, a3, a4);
}

uint64_t sub_1000A7E34()
{

  if (v0)
  {

    v1 = sub_1000A7FF0;
  }

  else
  {

    v1 = sub_1000A7F54;
  }

  return _swift_task_switch(v1);
}

uint64_t sub_1000A7F54()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A7FF0()
{

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A8094(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A818C;

  return v6(a1);
}

uint64_t sub_1000A818C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A8284()
{
  sub_1000816D0(v0 + OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state);
  v1 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000A8398()
{
  result = type metadata accessor for ArtistController.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1000A84C8()
{
  sub_10009FE14();
  if (v0 <= 0x3F)
  {
    sub_1000A853C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A853C()
{
  if (!qword_10021D208)
  {
    sub_10000B3DC(&qword_100219FE8);
    sub_10000B3DC(&unk_10021D210);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021D208);
    }
  }
}

uint64_t sub_1000A85D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1000A7960(a1, v4, v5, v6);
}

uint64_t sub_1000A8684()
{

  return swift_deallocObject();
}

uint64_t sub_1000A86C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1000A7D5C(a1, v4, v5, v6);
}

uint64_t sub_1000A8778()
{

  return swift_deallocObject();
}

uint64_t sub_1000A87B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_1000A8094(a1, v4);
}

uint64_t sub_1000A8868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&unk_10021D210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A88D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A8920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A89F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = type metadata accessor for HeaderModule();
  v7 = (a3 + v6[13]);
  *v7 = a1;
  v7[1] = a2;
  v8 = v6[14];
  *(a3 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8);
  swift_storeEnumTagMultiPayload();
  v9 = v6[15];
  *(a3 + v9) = swift_getKeyPath();
  sub_100009F70(&qword_100219720);
  swift_storeEnumTagMultiPayload();
  v10 = (a3 + v6[16]);
  type metadata accessor for RemoteViewConfiguration();
  sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  return result;
}

double sub_1000A8C04()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 281.0;
  if (v1 == 1)
  {
    return 380.0;
  }

  return result;
}

void sub_1000A8D58()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_100018E0C();
    if (v1 <= 0x3F)
    {
      sub_1000A91D8(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        sub_1000A91D8(319, &qword_10021BD18, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          sub_10000B304();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000A8E84(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for HeaderViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[13]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100009F70(&qword_100218D00);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[14];
      goto LABEL_3;
    }

    v15 = sub_100009F70(&qword_10021BCA8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A9038(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for HeaderViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v13 = sub_100009F70(&qword_100218D00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[14];
    goto LABEL_3;
  }

  v15 = sub_100009F70(&qword_10021BCA8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

void sub_1000A91D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1000A9270()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000A92B4()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000A9304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = type metadata accessor for TaskPriority();
  v91 = *(v92 - 8);
  v3 = __chkstk_darwin(v92);
  v90 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(a1 - 1);
  v96 = v88[8];
  __chkstk_darwin(v3);
  v98 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = "troller";
  v6 = a1[2];
  v7 = a1[4];
  type metadata accessor for HeaderViewModel();
  v94 = type metadata accessor for Bindable();
  v87 = *(v94 - 1);
  __chkstk_darwin(v94);
  v71 = &v65 - v8;
  v86 = a1;
  *&v100 = a1[3];
  v9 = a1[5];
  v108 = v100;
  v109 = v9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v108 = v10;
  v109 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000B3DC(&qword_10021D2D8);
  sub_10000B3DC(&qword_10021D2E0);
  swift_getTupleTypeMetadata3();
  v73 = type metadata accessor for TupleView();
  v72 = swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v85 = *(v12 - 8);
  __chkstk_darwin(v12);
  v66 = &v65 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v108 = AssociatedTypeWitness;
  v109 = v15;
  v110 = AssociatedConformanceWitness;
  v111 = v17;
  v18 = type metadata accessor for TicketView();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v108 = v12;
  v109 = v18;
  v70 = v12;
  v67 = v18;
  v110 = v19;
  v111 = v20;
  v21 = v19;
  v69 = v19;
  v68 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = OpaqueTypeMetadata2;
  v81 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v95 = &v65 - v23;
  v108 = v12;
  v109 = v18;
  v110 = v21;
  v111 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  v80 = &unk_1001C2954;
  v78 = swift_getOpaqueTypeMetadata2();
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v65 - v24;
  v82 = type metadata accessor for ModifiedContent();
  v84 = *(v82 - 8);
  v25 = __chkstk_darwin(v82);
  v77 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v79 = &v65 - v27;
  static HorizontalAlignment.center.getter();
  *&v28 = v6;
  *(&v28 + 1) = v100;
  *&v29 = v7;
  *(&v29 + 1) = v9;
  v99 = v29;
  v100 = v28;
  v103 = v28;
  v104 = v29;
  v30 = v97;
  v105 = v97;
  VStack.init(alignment:spacing:content:)();
  v31 = v71;
  v32 = v86;
  sub_1000A92B4();
  v101 = v100;
  v102 = v99;
  swift_getKeyPath();
  v33 = v94;
  Bindable<A>.subscript.getter();

  (*(v87 + 8))(v31, v33);
  LODWORD(v73) = v110;
  v34 = v88;
  v94 = v88[2];
  v35 = v98;
  (v94)(v98, v30, v32);
  v36 = *(v34 + 80);
  v87 = (v36 + 48) & ~v36;
  v37 = swift_allocObject();
  v38 = v99;
  *(v37 + 16) = v100;
  *(v37 + 32) = v38;
  v39 = v34[4];
  v39(v37 + ((v36 + 48) & ~v36), v35, v32);
  v40 = v39;
  v88 = v39;
  swift_checkMetadataState();
  v41 = v70;
  v42 = v66;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v85 + 8))(v42, v41);
  v43 = v98;
  (v94)(v98, v97, v32);
  type metadata accessor for MainActor();
  v44 = static MainActor.shared.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  v46 = v99;
  *(v45 + 32) = v100;
  *(v45 + 48) = v46;
  v40(v45 + ((v36 + 64) & ~v36), v43, v32);
  v47 = v90;
  v48 = v76;
  v49 = OpaqueTypeConformance2;
  j___sScP13userInitiatedScPvgZ();
  v50 = v74;
  v51 = v45;
  v52 = v95;
  sub_100009FB8(0, v47, 0xD000000000000022, (v89 | 0x8000000000000000), 131, &unk_1001B40A8, v51, v74, v48, v49);
  (*(v91 + 8))(v47, v92);
  (*(v81 + 8))(v52, v48);
  v53 = v98;
  (v94)(v98, v97, v32);
  v54 = v87;
  v55 = swift_allocObject();
  v56 = v99;
  *(v55 + 16) = v100;
  *(v55 + 32) = v56;
  (v88)(v55 + v54, v53, v32);
  v108 = v48;
  v109 = v49;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v77;
  v59 = v78;
  View.onDisappear(perform:)();

  (*(v83 + 8))(v50, v59);
  v106 = v57;
  v107 = &protocol witness table for _AppearanceActionModifier;
  v60 = v82;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_100157EFC(v58, v60, v61);
  v63 = *(v84 + 8);
  v63(v58, v60);
  sub_100157EFC(v62, v60, v61);
  return (v63)(v62, v60);
}

uint64_t sub_1000A9FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a4;
  v122 = a1;
  v116 = a6;
  v86 = sub_100009F70(&qword_10021D2E8);
  __chkstk_darwin(v86);
  v84 = (&v83 - v9);
  v89 = sub_100009F70(&qword_10021D2F0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v83 - v10;
  v120 = sub_100009F70(&qword_10021D2F8);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v85 = &v83 - v11;
  v114 = sub_100009F70(&qword_10021D2E0);
  v12 = __chkstk_darwin(v114);
  v115 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v83 - v14;
  v106 = type metadata accessor for AccessibilityTraits();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AccessibilityChildBehavior();
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100009F70(&qword_10021D300);
  __chkstk_darwin(v99);
  v96 = (&v83 - v17);
  v100 = sub_100009F70(&qword_10021D308);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v18;
  v125 = sub_100009F70(&qword_10021D310);
  __chkstk_darwin(v125);
  v98 = &v83 - v19;
  v113 = sub_100009F70(&qword_10021D2D8);
  v112 = *(v113 - 8);
  v20 = __chkstk_darwin(v113);
  v111 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v83 - v22;
  v142 = a3;
  v143 = a5;
  v90 = a5;
  v93 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v94 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  v110 = &protocol conformance descriptor for ZStack<A>;
  WitnessTable = swift_getWitnessTable();
  v142 = v23;
  v143 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v83 - v30;
  static Alignment.bottomTrailing.getter();
  v32 = a2;
  v91 = a2;
  v132 = a2;
  v133 = a3;
  v33 = a3;
  v92 = a3;
  v34 = v95;
  v134 = v95;
  v135 = a5;
  v35 = v122;
  v136 = v122;
  ZStack.init(alignment:content:)();
  v36 = swift_getWitnessTable();
  v109 = v31;
  v103 = v36;
  sub_100157EFC(v29, v25, v36);
  v104 = v26;
  v37 = *(v26 + 8);
  v123 = v29;
  v110 = v25;
  v108 = v26 + 8;
  v107 = v37;
  v37(v29, v25);
  v38 = static HorizontalAlignment.center.getter();
  v39 = v96;
  *v96 = v38;
  *(v39 + 8) = 0x4008000000000000;
  *(v39 + 16) = 0;
  v40 = sub_100009F70(&qword_10021D318);
  v41 = v90;
  sub_1000AC728(v35, v32, v33, v34, v90, v39 + *(v40 + 44));
  v42 = v117;
  static AccessibilityChildBehavior.combine.getter();
  v43 = sub_10000D1EC(&qword_10021D320, &qword_10021D300);
  v44 = v97;
  v45 = v99;
  View.accessibilityElement(children:)();
  v46 = v126[1];
  ++v126;
  v83 = v46;
  v46(v42, v118);
  sub_10000D52C(v39, &qword_10021D300);
  v47 = v102;
  static AccessibilityTraits.isHeader.getter();
  v142 = v45;
  v143 = v43;
  v48 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v98;
  v50 = v100;
  View.accessibilityAddTraits(_:)();
  (*(v105 + 8))(v47, v106);
  (*(v101 + 8))(v44, v50);
  v51 = v91;
  v127 = v91;
  v52 = v92;
  v128 = v92;
  v129 = v34;
  v130 = v48;
  v53 = v122;
  v131 = v122;
  v54 = sub_100009F70(&qword_10021D328);
  v55 = sub_1000AF82C();
  v56 = sub_10000D1EC(&qword_10021D338, &qword_10021D328);
  v106 = v54;
  v105 = v55;
  v102 = v56;
  View.accessibilityLabel<A>(content:)();
  sub_10000D52C(v49, &qword_10021D310);
  v57 = v51;
  v142 = v51;
  v143 = v52;
  v58 = v34;
  v144 = v34;
  v145 = v48;
  type metadata accessor for HeaderModule();
  v59 = v53;
  sub_1000A9270();
  LOBYTE(v54) = sub_10007AD44();

  v60 = 1;
  if (v54)
  {
    v61 = static HorizontalAlignment.center.getter();
    v62 = v84;
    *v84 = v61;
    *(v62 + 8) = 0x4020000000000000;
    *(v62 + 16) = 0;
    v63 = sub_100009F70(&qword_10021D360);
    sub_1000AD16C(v53, v51, v52, v34, v48, v62 + *(v63 + 44));
    v64 = v117;
    static AccessibilityChildBehavior.combine.getter();
    v65 = sub_10000D1EC(&qword_10021D350, &qword_10021D2E8);
    v66 = v87;
    v67 = v86;
    View.accessibilityElement(children:)();
    v83(v64, v118);
    v68 = sub_10000D52C(v62, &qword_10021D2E8);
    v126 = &v83;
    __chkstk_darwin(v68);
    *(&v83 - 6) = v57;
    *(&v83 - 5) = v52;
    *(&v83 - 4) = v58;
    *(&v83 - 3) = v48;
    *(&v83 - 2) = v59;
    sub_100009F70(&qword_10021D348);
    v142 = v67;
    v143 = v65;
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021D358, &qword_10021D348);
    v69 = v85;
    v70 = v89;
    View.accessibilityLabel<A>(content:)();
    (*(v88 + 8))(v66, v70);
    (*(v119 + 32))(v121, v69, v120);
    v60 = 0;
  }

  v71 = v121;
  (*(v119 + 56))(v121, v60, 1, v120);
  v72 = v123;
  v73 = v109;
  v74 = v110;
  (*(v104 + 16))(v123, v109, v110);
  v141[0] = v72;
  v75 = v112;
  v76 = v111;
  v77 = v124;
  v78 = v113;
  (*(v112 + 16))(v111, v124, v113);
  v141[1] = v76;
  v79 = v115;
  sub_10000D58C(v71, v115, &qword_10021D2E0);
  v140[0] = v74;
  v140[1] = v78;
  v140[2] = v114;
  v137 = v103;
  v141[2] = v79;
  v142 = v125;
  v143 = v106;
  v144 = v105;
  v145 = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = sub_1000AF958();
  sub_100151024(v141, 3uLL, v140);
  sub_10000D52C(v71, &qword_10021D2E0);
  v80 = *(v75 + 8);
  v80(v77, v78);
  v81 = v107;
  v107(v73, v74);
  sub_10000D52C(v79, &qword_10021D2E0);
  v80(v76, v78);
  return v81(v123, v74);
}

uint64_t sub_1000AAF5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a4;
  v105 = a2;
  v94 = a1;
  v104 = a6;
  v120 = a2;
  v121 = a3;
  *&v106 = a3;
  v122 = a4;
  v123 = a5;
  v110 = type metadata accessor for HeaderModule();
  v88 = *(v110 - 8);
  v85[1] = *(v88 + 64);
  __chkstk_darwin(v110);
  v86 = v85 - v8;
  v87 = type metadata accessor for PlayButtonView();
  __chkstk_darwin(v87);
  v90 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100009F70(&qword_10021D418);
  __chkstk_darwin(v100);
  v91 = v85 - v10;
  v109 = sub_100009F70(&qword_10021D420);
  v102 = *(v109 - 8);
  v11 = __chkstk_darwin(v109);
  v93 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v85 - v13;
  v101 = sub_100009F70(&qword_10021D2D0);
  v14 = __chkstk_darwin(v101);
  v103 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = v85 - v16;
  v99 = type metadata accessor for AccessibilityChildBehavior();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v18 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a3;
  v121 = a5;
  v96 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for ZStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v85 - v21;
  v23 = swift_getWitnessTable();
  v120 = v19;
  v121 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  v25 = __chkstk_darwin(OpaqueTypeMetadata2);
  v27 = (v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = v85 - v28;
  static Alignment.topLeading.getter();
  v112 = v105;
  v113 = v106;
  v114 = v107;
  v115 = a5;
  v89 = a5;
  v30 = v94;
  v116 = v94;
  v31 = v109;
  ZStack.init(alignment:content:)();
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v98[1](v18, v99);
  (*(v20 + 8))(v22, v19);
  v120 = v19;
  v121 = v23;
  v32 = v108;
  v33 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = v29;
  v95 = OpaqueTypeConformance2;
  sub_100157EFC(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = v111 + 8;
  v35 = *(v111 + 8);
  v98 = v27;
  v99 = OpaqueTypeMetadata2;
  v96 = v35;
  v35(v27, OpaqueTypeMetadata2);
  sub_1000A9270();
  LOBYTE(v18) = sub_10007B0DC();

  if (v18)
  {
    v37 = v110;
    sub_1000A9270();
    v38 = sub_10007B138();

    v39 = v88;
    v40 = v86;
    (*(v88 + 16))(v86, v30, v37);
    v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v42 = swift_allocObject();
    v43 = v106;
    *(v42 + 2) = v105;
    *(v42 + 3) = v43;
    v44 = v89;
    *(v42 + 4) = v107;
    *(v42 + 5) = v44;
    (*(v39 + 32))(&v42[v41], v40, v37);
    v45 = v90;
    *v90 = v38;
    *(v45 + 8) = sub_1000B1130;
    *(v45 + 16) = v42;
    v46 = *(v87 + 20);
    *(v45 + v46) = swift_getKeyPath();
    sub_100009F70(&qword_100219728);
    swift_storeEnumTagMultiPayload();
    sub_100009F70(&qword_100218DC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001ACB00;
    LOBYTE(v37) = static Edge.Set.bottom.getter();
    *(inited + 32) = v37;
    v48 = static Edge.Set.trailing.getter();
    *(inited + 33) = v48;
    v49 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v37)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v50 = Edge.Set.init(rawValue:)();
    v85[0] = v36;
    if (v50 != v48)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v91;
    sub_1000B125C(v45, v91, type metadata accessor for PlayButtonView);
    v60 = v59 + *(v100 + 36);
    *v60 = v49;
    *(v60 + 8) = v52;
    *(v60 + 16) = v54;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *(v60 + 40) = 0;
    sub_1000A9270();

    v107 = sub_100009F70(&qword_100219EF8);
    v61 = swift_allocObject();
    v106 = xmmword_1001AEB90;
    *(v61 + 16) = xmmword_1001AEB90;
    sub_1000A9270();
    v62 = sub_10007AC24();
    v64 = v63;

    *(v61 + 56) = &type metadata for String;
    v105 = sub_100096600();
    *(v61 + 64) = v105;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v65 = String.init(format:_:)();
    v67 = v66;

    v120 = v65;
    v121 = v67;
    sub_1000A9270();
    sub_10007B138();

    sub_1000B0E20();
    v90 = sub_100027068();
    v68 = v93;
    View.accessibilityLabel<A>(_:isEnabled:)();

    sub_10000D52C(v59, &qword_10021D418);
    sub_1000A9270();

    v69 = swift_allocObject();
    *(v69 + 16) = v106;
    sub_1000A9270();
    v70 = sub_10007AC24();
    v72 = v71;

    v73 = v105;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v73;
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    v74 = String.init(format:_:)();
    v76 = v75;

    v120 = v74;
    v121 = v76;
    sub_1000A9270();
    sub_10007B138();

    v77 = v92;
    v31 = v109;
    ModifiedContent<>.accessibilityLabel<A>(_:isEnabled:)();

    sub_10000D52C(v68, &qword_10021D420);
    v32 = v108;
    sub_10000F618(v77, v108, &qword_10021D420);
    v33 = 0;
  }

  (*(v102 + 56))(v32, v33, 1, v31);
  v78 = v98;
  v79 = WitnessTable;
  v80 = v99;
  (*(v111 + 16))(v98, WitnessTable, v99);
  v120 = v78;
  v81 = v103;
  sub_10000D58C(v32, v103, &qword_10021D2D0);
  v121 = v81;
  v119[0] = v80;
  v119[1] = v101;
  v117 = v95;
  v118 = sub_1000B0CBC();
  sub_100151024(&v120, 2uLL, v119);
  sub_10000D52C(v32, &qword_10021D2D0);
  v82 = v79;
  v83 = v96;
  v96(v82, v80);
  sub_10000D52C(v81, &qword_10021D2D0);
  return v83(v78, v80);
}

uint64_t sub_1000ABC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v75 = a6;
  v72 = sub_100009F70(&qword_10021D448);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v60 = &v58 - v10;
  v71 = sub_100009F70(&qword_10021D2C8);
  v11 = __chkstk_darwin(v71);
  v74 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v13;
  v69 = type metadata accessor for AccessibilityTraits();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v76 - 8);
  v15 = __chkstk_darwin(v76);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a3 - 8);
  __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = a3;
  *(&v83 + 1) = a5;
  v63 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v58 - v21;
  type metadata accessor for AccessibilityAttachmentModifier();
  v62 = type metadata accessor for ModifiedContent();
  v77 = *(v62 - 8);
  v23 = __chkstk_darwin(v62);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v58 - v27;
  __chkstk_darwin(v26);
  v78 = &v58 - v29;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = WitnessTable;
  *(&v84 + 1) = a5;
  v61 = type metadata accessor for HeaderModule();
  (*(a1 + *(v61 + 52)))();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  v30 = *(v79 + 8);
  v59 = v17;
  v79 += 8;
  v58 = v30;
  v30(v17, v76);
  (*(v64 + 8))(v19, a3);
  v31 = v66;
  static AccessibilityTraits.isImage.getter();
  *&v83 = a3;
  *(&v83 + 1) = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v31, v69);
  (*(v65 + 8))(v22, OpaqueTypeMetadata2);
  v33 = v62;
  sub_1000A9270();
  v34 = sub_10007AA74();
  v36 = v35;

  *&v83 = v34;
  *(&v83 + 1) = v36;
  sub_100027068();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  v37 = *(v77 + 8);
  v37(v25, v33);
  v38 = sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
  v88 = OpaqueTypeConformance2;
  v89 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v28, v33, WitnessTable);
  v69 = v28;
  v37(v28, v33);
  sub_1000A9270();
  LOBYTE(v36) = sub_10007A818();

  if (v36)
  {
    v39 = sub_1000A9270();
    v40 = (v39 + *(*v39 + 176));
    v41 = *v40;
    v42 = v40[1];

    v43 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v86) = 0;
    *&v80 = v41;
    *(&v80 + 1) = v42;
    LOBYTE(v81) = v43;
    *(&v81 + 1) = v44;
    *v82 = v45;
    *&v82[8] = v46;
    *&v82[16] = v47;
    v82[24] = 0;
    v48 = v59;
    static AccessibilityChildBehavior.ignore.getter();
    sub_100009F70(&qword_10021D458);
    sub_1000B18D8(&qword_10021D460, &qword_10021D458, &unk_1001B4218, sub_1000B13B8);
    v49 = v60;
    View.accessibilityElement(children:)();
    v58(v48, v76);
    v83 = v80;
    v84 = v81;
    *v85 = *v82;
    *&v85[9] = *&v82[9];
    sub_10000D52C(&v83, &qword_10021D458);
    v50 = v70;
    v51 = v73;
    v52 = v49;
    v53 = v72;
    (*(v70 + 32))(v73, v52, v72);
    (*(v50 + 56))(v51, 0, 1, v53);
  }

  else
  {
    v51 = v73;
    (*(v70 + 56))(v73, 1, 1, v72);
  }

  v54 = v69;
  v55 = v78;
  (*(v77 + 16))(v69, v78, v33);
  *&v83 = v54;
  v56 = v74;
  sub_10000D58C(v51, v74, &qword_10021D2C8);
  *(&v83 + 1) = v56;
  *&v80 = v33;
  *(&v80 + 1) = v71;
  v86 = WitnessTable;
  v87 = sub_1000B12C4();
  sub_100151024(&v83, 2uLL, &v80);
  sub_10000D52C(v51, &qword_10021D2C8);
  v37(v55, v33);
  sub_10000D52C(v56, &qword_10021D2C8);
  return (v37)(v54, v33);
}

uint64_t sub_1000AC630(uint64_t a1)
{
  v2 = type metadata accessor for HeaderModule();
  sub_1000A9270();
  sub_10007B974();

  sub_1000A9270();
  if (*(a1 + *(v2 + 64)))
  {

    sub_10007C19C(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AC728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a6;
  v11 = sub_100009F70(&qword_10021D3E0);
  v12 = __chkstk_darwin(v11 - 8);
  v88 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v68 - v14;
  v15 = type metadata accessor for ContentSizeCategory();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = sub_100009F70(&qword_10021D3E8);
  v84 = *(v22 - 8);
  v85 = v22;
  v23 = __chkstk_darwin(v22);
  v86 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v78 = &v68 - v26;
  __chkstk_darwin(v25);
  v90 = &v68 - v27;
  *&v103 = a2;
  *(&v103 + 1) = a3;
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v79 = type metadata accessor for HeaderModule();
  v83 = a1;
  sub_1000A9270();
  sub_10007C928();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v28 = Text.font(_:)();
  v81 = v29;
  v82 = v28;
  v31 = v30;
  v80 = v32;

  KeyPath = swift_getKeyPath();
  v73 = *(v79 + 60);
  sub_100024890(v21);
  v34 = *(v16 + 104);
  v72 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v70 = v16 + 104;
  v71 = v34;
  v34(v19);
  LOBYTE(a5) = sub_1000B06A0(v21, v19);
  v35 = *(v16 + 8);
  v75 = v19;
  v35(v19, v15);
  v74 = v21;
  v76 = v16 + 8;
  v77 = v15;
  v35(v21, v15);
  if (a5)
  {
    v36 = 3;
  }

  else
  {
    v36 = 2;
  }

  v37 = swift_getKeyPath();
  v109 = v31 & 1;
  v108 = 0;
  *&v98 = v82;
  *(&v98 + 1) = v81;
  LOBYTE(v99) = v31 & 1;
  *(&v99 + 1) = v80;
  *&v100 = KeyPath;
  BYTE8(v100) = 1;
  *&v101 = v37;
  *(&v101 + 1) = v36;
  v102 = 0;
  v38 = sub_100009F70(&qword_10021D3F0);
  v39 = sub_1000B0B1C();
  View.accessibilityIdentifier(_:)();
  v105 = v100;
  v106 = v101;
  v107 = v102;
  v103 = v98;
  v104 = v99;
  sub_10000D52C(&v103, &qword_10021D3F0);
  sub_1000A9270();
  sub_10007C9B4();
  v41 = v40;

  if (v41)
  {
    v80 = v39;
    v81 = v38;
    v82 = v35;
    static Font.subheadline.getter();
    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v98 = qword_100230570;

    v79 = Text.foregroundStyle<A>(_:)();
    v69 = v47;
    v49 = v48;
    v51 = v50;
    sub_10000D60C(v42, v44, v46 & 1);

    v52 = swift_getKeyPath();
    v53 = v74;
    sub_100024890(v74);
    v54 = v75;
    v55 = v77;
    v71(v75, v72, v77);
    v56 = sub_1000B06A0(v53, v54);
    v57 = v82;
    v82(v54, v55);
    v57(v53, v55);
    if (v56)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v59 = swift_getKeyPath();
    v97 = v49 & 1;
    v96 = 0;
    *&v91 = v79;
    *(&v91 + 1) = v69;
    LOBYTE(v92) = v49 & 1;
    *(&v92 + 1) = v51;
    *&v93 = v52;
    BYTE8(v93) = 1;
    *&v94 = v59;
    *(&v94 + 1) = v58;
    v95 = 0;
    v60 = v78;
    View.accessibilityIdentifier(_:)();
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v98 = v91;
    v99 = v92;
    sub_10000D52C(&v98, &qword_10021D3F0);
    v61 = v87;
    sub_10000F618(v60, v87, &qword_10021D3E8);
    (*(v84 + 56))(v61, 0, 1, v85);
  }

  else
  {
    v61 = v87;
    (*(v84 + 56))(v87, 1, 1, v85);
  }

  v62 = v90;
  v63 = v86;
  sub_10000D58C(v90, v86, &qword_10021D3E8);
  v64 = v88;
  sub_10000D58C(v61, v88, &qword_10021D3E0);
  v65 = v89;
  sub_10000D58C(v63, v89, &qword_10021D3E8);
  v66 = sub_100009F70(&qword_10021D410);
  sub_10000D58C(v64, v65 + *(v66 + 48), &qword_10021D3E0);
  sub_10000D52C(v61, &qword_10021D3E0);
  sub_10000D52C(v62, &qword_10021D3E8);
  sub_10000D52C(v64, &qword_10021D3E0);
  return sub_10000D52C(v63, &qword_10021D3E8);
}

uint64_t sub_1000ACEFC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  type metadata accessor for HeaderModule();
  sub_1000A9270();
  sub_10007C928();

  sub_100027068();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v21 = v7;
  v9 = v8;
  sub_1000A9270();
  v10 = sub_10007CB50();
  v12 = v11;

  if (v12)
  {
    v22 = v10;
    v23 = v12;
    Text.init<A>(_:)();
  }

  else
  {
    sub_1000A9270();
    v13 = sub_10007C9B4();
    v15 = v14;

    if (!v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = -1;
      goto LABEL_6;
    }

    v22 = v13;
    v23 = v15;
    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v16 = v22;
  v15 = v23;
  v17 = a1;
  v18 = a2;
  v19 = v26;
  sub_1000B05BC(v22, v23, a1);
LABEL_6:
  sub_10000D5FC(v4, v6, v21 & 1);

  sub_1000B05A4(v16, v15, v17, v18, v19);
  sub_1000B05F8(v16, v15, v17, v18, v19);
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v21 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = v16;
  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = v19;
  sub_1000B05F8(v16, v15, v17, v18, v19);
  sub_10000D60C(v4, v6, v21 & 1);
}

uint64_t sub_1000AD16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a6;
  v86 = type metadata accessor for AttributionModule();
  __chkstk_darwin(v86);
  v85 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100009F70(&qword_10021D378);
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin(v12);
  v84 = &v80 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = type metadata accessor for Optional();
  v80 = *(v81 - 8);
  v15 = __chkstk_darwin(v81);
  v87 = &v80 - v16;
  v102 = AssociatedTypeWitness;
  v101 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v88 = &v80 - v17;
  v18 = sub_100009F70(&qword_10021D380);
  v19 = __chkstk_darwin(v18 - 8);
  v103 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = &v80 - v21;
  v98 = type metadata accessor for GlassProminentButtonStyle();
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v117 = a2;
  *(&v117 + 1) = a3;
  *&v118 = a4;
  *(&v118 + 1) = a5;
  v23 = type metadata accessor for HeaderModule();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v80 - v25;
  v94 = sub_100009F70(&qword_10021D388);
  __chkstk_darwin(v94);
  v89 = &v80 - v27;
  v96 = sub_100009F70(&qword_10021D390);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v80 - v28;
  v29 = sub_100009F70(&qword_10021D398);
  v30 = __chkstk_darwin(v29 - 8);
  v100 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v90 = &v80 - v32;
  v33 = *(v24 + 16);
  v91 = a1;
  v92 = v23;
  v33(v26, a1, v23);
  v34 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  *(v35 + 4) = a4;
  *(v35 + 5) = a5;
  (*(v24 + 32))(&v35[v34], v26, v23);
  v108 = a2;
  v109 = a3;
  v110 = a4;
  v111 = a5;
  v112 = a1;
  sub_100009F70(&qword_10021D3A0);
  sub_1000AFBA4();
  v36 = v89;
  Button.init(action:label:)();
  v83 = a2;
  v82 = a4;
  sub_1000A8C04();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = v94;
  v39 = (v36 + *(v94 + 36));
  v40 = v118;
  *v39 = v117;
  v39[1] = v40;
  v39[2] = v119;
  v41 = v95;
  GlassProminentButtonStyle.init()();
  v42 = sub_1000AFC30();
  v43 = sub_1000B0EDC(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle);
  v44 = v93;
  v45 = v98;
  View.buttonStyle<A>(_:)();
  v46 = v90;
  (*(v99 + 8))(v41, v45);
  sub_10000D52C(v36, &qword_10021D388);
  v113 = v38;
  v114 = v45;
  v47 = v107;
  v115 = v42;
  v116 = v43;
  swift_getOpaqueTypeConformance2();
  v48 = v96;
  View.accessibilityIdentifier(_:)();
  (*(v97 + 8))(v44, v48);
  v49 = sub_1000A9270();
  LOBYTE(v48) = sub_10007AE84(v49);

  if (v48)
  {
    sub_1000A9270();
    v50 = v87;
    sub_10007B068();

    if ((*(v101 + 48))(v50, 1, v102) == 1)
    {
      (*(v80 + 8))(v50, v81);
      v37 = 1;
    }

    else
    {
      v51 = v50;
      v52 = v102;
      (*(v101 + 32))(v88, v51, v102);
      sub_1000A9270();
      v99 = sub_10007AA00();
      v98 = v53;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v97 = (*(AssociatedConformanceWitness + 16))(v52, AssociatedConformanceWitness);
      v96 = v55;
      v56 = type metadata accessor for AttributionViewModel();
      v57 = *(v56 + 32);
      v58 = type metadata accessor for URL();
      v59 = v85;
      (*(*(v58 - 8) + 56))(v85 + v57, 1, 1, v58);
      sub_1000A9270();
      LODWORD(v95) = sub_10007BA8C();

      v60 = objc_opt_self();
      v61 = [v60 mainBundle];
      v120._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0xD000000000000031;
      v62._object = 0x80000001001BFEF0;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v120._countAndFlagsBits = 0;
      v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v120);

      *v59 = v64;
      v65 = [v60 mainBundle];
      v121._object = 0xE000000000000000;
      v66._countAndFlagsBits = 0xD00000000000002CLL;
      v66._object = 0x80000001001BFF30;
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      v121._countAndFlagsBits = 0;
      v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v121);

      v59[1] = v68;
      v69 = v98;
      v59[2]._countAndFlagsBits = v99;
      v59[2]._object = v69;
      v70 = v96;
      v59[3]._countAndFlagsBits = v97;
      v59[3]._object = v70;
      v71 = *(v56 + 36);
      v47 = v107;
      *(&v59->_countAndFlagsBits + v71) = v95;
      v72 = (&v59->_countAndFlagsBits + *(v86 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      *v72 = EnvironmentObject.init()();
      v72[1] = v73;
      sub_1000B0EDC(&qword_10021D3D8, type metadata accessor for AttributionModule);
      v74 = v84;
      View.accessibilityIdentifier(_:)();
      sub_1000AFCE8(v59);
      (*(v101 + 8))(v88, v102);
      sub_10000F618(v74, v47, &qword_10021D378);
      v37 = 0;
    }
  }

  (*(v104 + 56))(v47, v37, 1, v105);
  v75 = v100;
  sub_10000D58C(v46, v100, &qword_10021D398);
  v76 = v103;
  sub_10000D58C(v47, v103, &qword_10021D380);
  v77 = v106;
  sub_10000D58C(v75, v106, &qword_10021D398);
  v78 = sub_100009F70(&qword_10021D3D0);
  sub_10000D58C(v76, v77 + *(v78 + 48), &qword_10021D380);
  sub_10000D52C(v47, &qword_10021D380);
  sub_10000D52C(v46, &qword_10021D398);
  sub_10000D52C(v76, &qword_10021D380);
  return sub_10000D52C(v75, &qword_10021D398);
}

uint64_t sub_1000ADE80(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OpenURLAction();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v28 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = &v27 - v13;
  sub_1000A9270();
  v15 = sub_10007AFA0();

  sub_1000A9270();
  if (v15)
  {
    v27 = v3;
    v16 = sub_10007ACD0();

    v36 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v11, v8);
    }

    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);

    v19 = v31;
    sub_100023FD4(v31);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = v33;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    OpenURLAction.callAsFunction(_:)();
    (*(v35 + 8))(v21, v27);
    (*(v32 + 8))(v19, v34);
    sub_1000A9270();
    v22 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24 = *(v1 + *(a1 + 64));
    if (v24)
    {
      v25 = v22;
      v26 = v23;

      sub_10007BE34(v25, v26, v24);

      return (*(v12 + 8))(v14, AssociatedTypeWitness);
    }

LABEL_11:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_100079E60(1);

  sub_1000A9270();
  if (!*(v1 + *(a1 + 64)))
  {
    goto LABEL_11;
  }

  sub_10007BAD4(v18);
}

__n128 sub_1000AE3D4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  type metadata accessor for HeaderModule();
  sub_1000A9270();

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.body.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000D60C(v6, v8, v10 & 1);

  LOBYTE(v6) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  *(a5 + 32) = v6;
  *(a5 + 40) = v19;
  *(a5 + 48) = v21;
  *(a5 + 56) = v23;
  *(a5 + 64) = v25;
  *(a5 + 72) = 0;
  *(a5 + 137) = *&v27[64];
  *(a5 + 153) = *&v27[80];
  *(a5 + 169) = *&v27[96];
  *(a5 + 184) = *(&v34 + 1);
  *(a5 + 73) = *v27;
  *(a5 + 89) = *&v27[16];
  result = *&v27[32];
  *(a5 + 105) = *&v27[32];
  *(a5 + 121) = *&v27[48];
  return result;
}

uint64_t sub_1000AE634@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v80 = a5;
  v9 = type metadata accessor for AttributionModule();
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin(v9);
  v70 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v63[-v14];
  v72 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v71 = &v63[-v16];
  v17 = sub_100009F70(&qword_10021D368);
  v18 = __chkstk_darwin(v17 - 8);
  v77 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v63[-v20];
  v81 = a1;
  v82 = a2;
  v69 = a3;
  v83 = a3;
  v84 = a4;
  type metadata accessor for HeaderModule();
  sub_1000A9270();

  v22 = Text.init(_:tableName:bundle:comment:)();
  v75 = v23;
  v76 = v22;
  v73 = v24;
  v26 = v25;
  v27 = sub_1000A9270();
  LOBYTE(AssociatedTypeWitness) = sub_10007AE84(v27);

  if (AssociatedTypeWitness)
  {
    sub_1000A9270();
    sub_10007B068();

    if ((*(v74 + 48))(v15, 1, v72) != 1)
    {
      v30 = v15;
      v31 = v72;
      (*(v74 + 32))(v71, v30, v72);
      sub_1000A9270();
      v32 = sub_10007AA00();
      v67 = v33;
      v68 = v32;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v69 = (*(AssociatedConformanceWitness + 16))(v31, AssociatedConformanceWitness);
      v66 = v35;
      v65 = type metadata accessor for AttributionViewModel();
      v36 = *(v65 + 32);
      v37 = type metadata accessor for URL();
      v38 = v70;
      (*(*(v37 - 8) + 56))(v70 + v36, 1, 1, v37);
      sub_1000A9270();
      v64 = sub_10007BA8C();

      v39 = objc_opt_self();
      v40 = [v39 mainBundle];
      v85._object = 0xE000000000000000;
      v41._countAndFlagsBits = 0xD000000000000031;
      v41._object = 0x80000001001BFEF0;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v85._countAndFlagsBits = 0;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v85);

      *v38 = v43;
      v44 = [v39 mainBundle];
      v86._object = 0xE000000000000000;
      v45._object = 0x80000001001BFF30;
      v45._countAndFlagsBits = 0xD00000000000002CLL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v86);

      v38[1] = v47;
      v48 = v67;
      v38[2]._countAndFlagsBits = v68;
      v38[2]._object = v48;
      v49 = v65;
      v50 = v66;
      v38[3]._countAndFlagsBits = v69;
      v38[3]._object = v50;
      *(&v38->_countAndFlagsBits + *(v49 + 36)) = v64;
      v51 = v79;
      v52 = (&v38->_countAndFlagsBits + *(v79 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration);
      v53 = EnvironmentObject.init()();
      v55 = v54;
      (*(v74 + 8))(v71, v31);
      *v52 = v53;
      v52[1] = v55;
      sub_1000B125C(v38, v21, type metadata accessor for AttributionModule);
      v29 = v51;
      v28 = 0;
      goto LABEL_6;
    }

    v67[1](v15, v68);
  }

  v28 = 1;
  v29 = v79;
LABEL_6:
  (*(v78 + 56))(v21, v28, 1, v29);
  v56 = v77;
  sub_10000D58C(v21, v77, &qword_10021D368);
  v57 = v80;
  v59 = v75;
  v58 = v76;
  *v80 = v76;
  v57[1] = v59;
  v60 = v73 & 1;
  *(v57 + 16) = v73 & 1;
  v57[3] = v26;
  v61 = sub_100009F70(&qword_10021D370);
  sub_10000D58C(v56, v57 + *(v61 + 48), &qword_10021D368);
  sub_10000D5FC(v58, v59, v60);

  sub_10000D52C(v21, &qword_10021D368);
  sub_10000D52C(v56, &qword_10021D368);
  sub_10000D60C(v58, v59, v60);
}

uint64_t sub_1000AED4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v38 = &v32 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v41 = v12;
  v42 = AssociatedConformanceWitness;
  v43 = v14;
  v35 = v14;
  v36 = AssociatedConformanceWitness;
  v15 = v14;
  v16 = type metadata accessor for TicketViewModel();
  __chkstk_darwin(v16 - 8);
  v34 = &v32 - v17;
  v40 = AssociatedTypeWitness;
  v41 = v12;
  v42 = AssociatedConformanceWitness;
  v43 = v15;
  v18 = type metadata accessor for TicketView();
  v37 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  type metadata accessor for HeaderModule();
  sub_1000A9270();
  v24 = sub_10007AA00();
  v32 = v25;
  v33 = v24;

  sub_1000A9270();
  v26 = v38;
  sub_10007B068();

  sub_1000A9270();
  v27 = sub_10007ACD0();

  v28 = v34;
  sub_1000979A0(v33, v32, v26, v27, v34);
  sub_10009504C(v28, v21);
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC(v21, v18, WitnessTable);
  v30 = *(v37 + 8);
  v30(v21, v18);
  sub_100157EFC(v23, v18, WitnessTable);
  return (v30)(v23, v18);
}

uint64_t sub_1000AF0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AF148);
}

uint64_t sub_1000AF148()
{
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  type metadata accessor for HeaderModule();
  sub_1000A9270();
  v1 = sub_10007B0DC();

  if (v1)
  {
    sub_1000A9270();
    sub_10007B904();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000AF210()
{
  type metadata accessor for HeaderModule();
  sub_1000A9270();
  v0 = sub_10007B0DC();

  if (v0)
  {
    sub_1000A9270();
    sub_10007BA20();
  }

  return result;
}

uint64_t sub_1000AF2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100079DEC();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000AF314(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000AF324@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for HeaderModule();

  return sub_1000AED4C(v3, v4, v5, v6, a1);
}

uint64_t sub_1000AF3D0()
{
  v1 = type metadata accessor for HeaderModule();
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  type metadata accessor for HeaderViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = *(v1 + 56);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 60);
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000AF5E4()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for HeaderModule() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000AF6F8;

  return sub_1000AF0A8(v8, v9, v0 + v7, v3, v2, v4, v5);
}

uint64_t sub_1000AF6F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000AF82C()
{
  result = qword_10021D330;
  if (!qword_10021D330)
  {
    sub_10000B3DC(&qword_10021D310);
    sub_10000B3DC(&qword_10021D300);
    sub_10000D1EC(&qword_10021D320, &qword_10021D300);
    swift_getOpaqueTypeConformance2();
    sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D330);
  }

  return result;
}

unint64_t sub_1000AF958()
{
  result = qword_10021D340;
  if (!qword_10021D340)
  {
    sub_10000B3DC(&qword_10021D2E0);
    sub_10000B3DC(&qword_10021D2F0);
    sub_10000B3DC(&qword_10021D348);
    sub_10000B3DC(&qword_10021D2E8);
    sub_10000D1EC(&qword_10021D350, &qword_10021D2E8);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021D358, &qword_10021D348);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D340);
  }

  return result;
}

uint64_t sub_1000AFAF8()
{
  type metadata accessor for HeaderModule();
  v0 = type metadata accessor for HeaderModule();
  return sub_1000ADE80(v0);
}

unint64_t sub_1000AFBA4()
{
  result = qword_10021D3A8;
  if (!qword_10021D3A8)
  {
    sub_10000B3DC(&qword_10021D3A0);
    sub_100071294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3A8);
  }

  return result;
}

unint64_t sub_1000AFC30()
{
  result = qword_10021D3B0;
  if (!qword_10021D3B0)
  {
    sub_10000B3DC(&qword_10021D388);
    sub_10000D1EC(&qword_10021D3B8, &qword_10021D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3B0);
  }

  return result;
}

uint64_t sub_1000AFCE8(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AFD44()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10021D240 = result;
  return result;
}

uint64_t sub_1000AFE2C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_100009F70(&qword_10021D470);
  __chkstk_darwin(v1);
  v3 = &v43 - v2;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v4 = Text.font(_:)();
  v6 = v5;
  v8 = v7;

  v46 = static Color.white.getter();
  v9 = Text.foregroundStyle<A>(_:)();
  v43 = v10;
  v44 = v9;
  v12 = v11;
  v14 = v13;
  sub_10000D60C(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v4) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v12 &= 1u;
  v49 = v12;
  v48 = 0;
  v47 = 0;
  v24 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v50 = 0;
  v33 = static Alignment.center.getter();
  v34 = &v3[*(v1 + 36)];
  *v34 = v33;
  v34[1] = v35;
  v36 = sub_100009F70(&qword_10021D478);
  sub_1000B00F8(v34 + *(v36 + 44));
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = (v34 + *(sub_100009F70(&qword_10021D480) + 36));
  *v40 = v37;
  v40[1] = v39;
  v41 = v43;
  *v3 = v44;
  *(v3 + 1) = v41;
  v3[16] = v12;
  *(v3 + 3) = v14;
  *(v3 + 4) = KeyPath;
  *(v3 + 5) = 1;
  v3[48] = 0;
  v3[56] = v4;
  *(v3 + 8) = v17;
  *(v3 + 9) = v19;
  *(v3 + 10) = v21;
  *(v3 + 11) = v23;
  v3[96] = 0;
  v3[104] = v24;
  *(v3 + 14) = v26;
  *(v3 + 15) = v28;
  *(v3 + 16) = v30;
  *(v3 + 17) = v32;
  v3[144] = 0;
  sub_1000B17F4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v3, &qword_10021D470);
}

uint64_t sub_1000B00F8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_100009F70(&qword_10021B648);
  v1 = __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_100009F70(&qword_10021D4B8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v29 - v10);
  v12 = &v29 + *(v9 + 44) - v10;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = *(v13 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  v29 = _Q0;
  *v12 = _Q0;
  *&v12[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  *v11 = 11;
  v17(&v4[*(v13 + 20)], v15, v16);
  *v4 = v29;
  if (qword_1002183E0 != -1)
  {
    swift_once();
  }

  v23 = Color.opacity(_:)();
  v24 = v30;
  *&v4[*(v30 + 52)] = v23;
  *&v4[*(v24 + 56)] = 256;
  sub_10000D58C(v11, v8, &qword_10021D4B8);
  v25 = v31;
  sub_10000D58C(v4, v31, &qword_10021B648);
  v26 = v32;
  sub_10000D58C(v8, v32, &qword_10021D4B8);
  v27 = sub_100009F70(&qword_10021D4C0);
  sub_10000D58C(v25, v26 + *(v27 + 48), &qword_10021B648);
  sub_10000D52C(v4, &qword_10021B648);
  sub_10000D52C(v11, &qword_10021D4B8);
  sub_10000D52C(v25, &qword_10021B648);
  return sub_10000D52C(v8, &qword_10021D4B8);
}

uint64_t sub_1000B041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1000B04EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000B0550@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B05A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B05BC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000B05BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000D5FC(a1, a2, a3 & 1);
}

uint64_t sub_1000B05F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B0610(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000B0610(uint64_t a1, uint64_t a2, char a3)
{
  sub_10000D60C(a1, a2, a3 & 1);
}

uint64_t sub_1000B064C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

BOOL sub_1000B06A0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_1000B0AB8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000B0B1C()
{
  result = qword_10021D3F8;
  if (!qword_10021D3F8)
  {
    sub_10000B3DC(&qword_10021D3F0);
    sub_1000B0BD4();
    sub_10000D1EC(&qword_100219800, &qword_100219808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3F8);
  }

  return result;
}

unint64_t sub_1000B0BD4()
{
  result = qword_10021D400;
  if (!qword_10021D400)
  {
    sub_10000B3DC(&qword_10021D408);
    sub_10000D1EC(&qword_10021A638, &qword_10021A640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D400);
  }

  return result;
}

unint64_t sub_1000B0CBC()
{
  result = qword_10021D428;
  if (!qword_10021D428)
  {
    sub_10000B3DC(&qword_10021D2D0);
    sub_1000B0D6C(&qword_10021D430, &qword_10021D420, &unk_1001B41D8, sub_1000B0E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D428);
  }

  return result;
}

uint64_t sub_1000B0D6C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2);
    a4();
    sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B0E20()
{
  result = qword_10021D438;
  if (!qword_10021D438)
  {
    sub_10000B3DC(&qword_10021D418);
    sub_1000B0EDC(&qword_10021D440, type metadata accessor for PlayButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D438);
  }

  return result;
}

uint64_t sub_1000B0EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B0F24()
{
  v1 = type metadata accessor for HeaderModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  type metadata accessor for HeaderViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 56);
  sub_100009F70(&qword_100218DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 60);
  sub_100009F70(&qword_100219720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ContentSizeCategory();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000B1148(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for HeaderModule() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000B125C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B12C4()
{
  result = qword_10021D450;
  if (!qword_10021D450)
  {
    sub_10000B3DC(&qword_10021D2C8);
    sub_10000B3DC(&qword_10021D458);
    sub_1000B18D8(&qword_10021D460, &qword_10021D458, &unk_1001B4218, sub_1000B13B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D450);
  }

  return result;
}

unint64_t sub_1000B13B8()
{
  result = qword_10021D468;
  if (!qword_10021D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D468);
  }

  return result;
}

uint64_t sub_1000B141C()
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000B3DC(&qword_10021D2D8);
  sub_10000B3DC(&qword_10021D2E0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TicketView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_1000B17F4()
{
  result = qword_10021D488;
  if (!qword_10021D488)
  {
    sub_10000B3DC(&qword_10021D470);
    sub_1000B18D8(&qword_10021D490, &qword_10021D498, &unk_1001B42B8, sub_1000B195C);
    sub_10000D1EC(&qword_10021D4B0, &qword_10021D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D488);
  }

  return result;
}

uint64_t sub_1000B18D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

void sub_1000B19DC()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        sub_100010780();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                type metadata accessor for ObservationRegistrar();
                if (v7 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000B1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1000B8B50(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1000B1D44()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1000B2B3C();
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(v1 + 8) + 136))(v2);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v7, AssociatedTypeWitness);
    return v11;
  }
}

uint64_t sub_1000B1FE4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B2280@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_1000B2B3C();
  v7 = *(AssociatedTypeWitness - 8);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedTypeWitness();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v6, AssociatedTypeWitness);
  }
}

uint64_t sub_1000B251C(char a1)
{
  if (a1)
  {
    v1 = sub_1000B1D44();
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_1000B7630(v1, v2);
}

uint64_t sub_1000B2554@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = *(*v1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000B2694()
{
  v1 = *(v0 + *(*v0 + 248));

  return v1;
}

void *sub_1000B26FC()
{
  sub_1000B9C80(v3);
  if (!v3[3] || !v3[1])
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001ACB00;
  sub_10008319C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v3);
  return v0;
}

uint64_t sub_1000B2898()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, v0 + *(v1 + 208), v8);
  v12 = *(v3 - 8);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v12 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  return v13 & 1;
}

uint64_t sub_1000B2B3C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = v10 - v5;
  (*(v1 + 88))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v10[1] = v8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

void sub_1000B2D5C(uint64_t a1)
{
  v42 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = *(v2 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  sub_100009F70(qword_100218F38);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001AD7C0;
  v14 = *(v7 + 8);
  v15 = sub_1000A199C(v1 + *(v2 + 200), v3, v14);
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_10021CBA8;
  *(v13 + 32) = v15;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_10021CC30;
  *(v13 + 72) = 3;
  sub_1000B3374(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v16 = 12;
  }

  else
  {
    v16 = 11;
  }

  v17 = v12;
  v18 = v40;
  (*(v10 + 8))(v17, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_10021CC08;
  *(v13 + 112) = v16;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v48 = v13;
  v19 = v1 + *(*v1 + 208);
  v20 = v41;
  (*(v18 + 16))(v6, v19, v41);
  v21 = *(v3 - 8);
  v22 = &type metadata for AnalyticsString;
  v23 = &off_10021CBD0;
  if ((*(v21 + 48))(v6, 1, v3) == 1)
  {
    (*(v18 + 8))(v6, v20);
  }

  else
  {
    v24 = (*(v14 + 120))(v3, v14);
    v26 = v25;
    (*(v21 + 8))(v6, v3);
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_1001666DC((v27 > 1), v28 + 1, 1, v13);
    }

    v45 = &type metadata for AnalyticsString;
    v46 = &off_10021CBD0;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v24;
    v44 = v26;
    *(v13 + 16) = v28 + 1;
    sub_100071318(&aBlock, v13 + 40 * v28 + 32);
  }

  if (*(v42 + 72))
  {
    v29 = *(v42 + 64);
    v30 = *(v42 + 72);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v45 = &type metadata for AnalyticsString;
  v46 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v29;
  v44 = v30;
  v48 = v13;
  v31 = *(v13 + 16);
  v32 = *(v13 + 24);

  if (v31 >= v32 >> 1)
  {
    v13 = sub_1001666DC((v32 > 1), v31 + 1, 1, v13);
    v48 = v13;
    v22 = v45;
    v23 = v46;
  }

  v33 = sub_100031420(&aBlock, v22);
  __chkstk_darwin(v33);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_1000EB0D0(v31, v35, &v48, v22, v23);
  sub_100021498(&aBlock);
  v37 = String._bridgeToObjectiveC()();
  v38 = swift_allocObject();
  v38[2] = 0xD00000000000001ELL;
  v38[3] = 0x80000001001BDDE0;
  v38[4] = v13;
  v46 = sub_100038F2C;
  v47 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_1000DCA40;
  v45 = &unk_10020DAB8;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);
}

uint64_t sub_1000B3374@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v18 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, v1 + *(v2 + 208), v9);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v3 + 104))(v4, v3);
    (*(v13 + 8))(v12, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_1000B3788@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return sub_10000F680(v1 + v3, a1);
}

uint64_t sub_1000B3840()
{
  v0 = sub_1000B9F74();

  return v0;
}

void *sub_1000B3878()
{
  v0 = sub_1000B9BF0();
  v1 = v0;
  return v0;
}

uint64_t sub_1000B38A4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_1000B79A0(&v13 - v8);
  if ((*(v3 + 48))(v9, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v9, v6);
    v10 = type metadata accessor for URL();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v9, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v3 + 8))(v5, AssociatedTypeWitness);
  }
}

uint64_t sub_1000B3B34()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B3DD0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B406C()
{
  sub_1000BA110();
}

uint64_t sub_1000B4094@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000B41F8()
{
  v0 = sub_1000B9B5C();

  return v0;
}

uint64_t sub_1000B4230()
{
  swift_getKeyPath();
  sub_1000B7328();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_1000B42C0(char a1)
{
  v3 = *(*v1 + 152);
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
    sub_1000B7490();
  }

  return result;
}

void sub_1000B4430(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = (*(*(*(*v5 + 104) + 8) + 120))(*(*v5 + 80));
  v13 = v12;
  v14 = sub_1000A199C(v5 + *(*v5 + 200), *(*v5 + 80), *(*(*v5 + 104) + 8));
  sub_100009F70(qword_100218F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = a1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v16 = *(a5 + 64);
    v17 = *(a5 + 72);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v24 = v16;
  v25 = v17;

  sub_1000109A4(a2, a3, a4);

  v18 = sub_1001666DC(1, 5, 1, inited);
  v22 = v18;
  sub_1000109BC(&aBlock, v29);
  sub_1000EB0D0(4, v29, &v22, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001BDDE0;
  v20[4] = v18;
  v27 = sub_100010AAC;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000DCA40;
  v26 = &unk_10020DA68;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v21);
}

uint64_t sub_1000B476C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000B485C(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(*(*v1 + 104) + 8) + 120))(*(*v1 + 80));
  v6 = v5;
  v7 = sub_1000A199C(v2 + *(*v2 + 200), *(*v2 + 80), *(*(*v2 + 104) + 8));
  sub_1000DCEDC(v4, v6, v7, a1);
}

uint64_t sub_1000B4960()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 104) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;

  return _swift_task_switch(sub_1000B4A9C);
}

uint64_t sub_1000B4A9C()
{
  if (sub_1000B9BF0())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(*(*(**(v0 + 16) + 104) + 8) + 176))(*(**(v0 + 16) + 80));
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1000B4C18;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000B4C18(uint64_t a1)
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
    v10 = sub_1000B4E38;
  }

  else
  {
    *(v5 + 96) = a1;
    (*v7)(v8, v9);
    v10 = sub_1000B4DC0;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_1000B4DC0()
{
  v1 = *(v0 + 96);

  sub_1000B8028(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B4E38()
{

  sub_1000B8028(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B4EAC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = *(*(v2 + 104) + 8);
  v4 = *(v2 + 80);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_1000B502C;

  return v7(v4, v3);
}

uint64_t sub_1000B502C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    dispatch thunk of Actor.unownedExecutor.getter();
    v5 = sub_1000B521C;
  }

  else
  {
    *(v4 + 56) = a1;
    dispatch thunk of Actor.unownedExecutor.getter();
    v5 = sub_1000B51AC;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000B51AC()
{
  v1 = *(v0 + 56);

  sub_1000B77B8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B521C()
{
  v15 = v0;

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
    v14 = v6;
    *v4 = 136315394;
    v7 = sub_1000B562C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 45;
      v9 = 0xE100000000000000;
    }

    v10 = sub_10005D4E8(v7, v9, &v14);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for artist: %s, error: %@", v4, 0x16u);
    sub_10000D52C(v5, &qword_10021B938);

    sub_100021498(v6);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000B5458()
{
  v0 = sub_100009F70(qword_100218748);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  sub_1000B38A4(v3);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_10000D52C(v3, qword_100218748);
    v8 = 1;
  }

  else
  {
    sub_1000B26FC();
    URL.appending(queryItems:)();

    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  (*(v7 + 56))(v5, v8, 1, v6);
  return sub_1000B7D78(v5);
}

uint64_t sub_1000B55F0(uint64_t a1)
{
  sub_1000BA8F0(a1);
  if (!v1)
  {
    sub_1000B881C();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000B562C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  sub_1000B2B3C();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v4, AssociatedTypeWitness);
    return v8;
  }
}

uint64_t sub_1000B5858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 112);
  v3[6] = *(v4 + 88);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v3[12] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v6;

  return _swift_task_switch(sub_1000B59A4);
}

uint64_t sub_1000B59A4()
{
  v10 = v0[5];

  v1 = ResourceID.init(_:)();
  v3 = v2;
  v0[14] = v2;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000B5B0C;
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  return v9(v5, v1, v3, v6, v7);
}

uint64_t sub_1000B5B0C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000B5D04;
  }

  else
  {

    v2 = sub_1000B5C28;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000B5C28()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_1000BAA10(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B5D04()
{
  v13 = v0;

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
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10005D4E8(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch music artist for artist: %s, error: %@", v6, 0x16u);
    sub_10000D52C(v7, &qword_10021B938);

    sub_100021498(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000B5F34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 120);
  v3[6] = *(v4 + 96);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v3[13] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;

  return _swift_task_switch(sub_1000B608C);
}

uint64_t sub_1000B608C()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_1000B881C();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1000B62F4;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_1000B881C();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_1000B6530;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_100020BB8(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_1000B62F4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000B676C;
  }

  else
  {
    v2 = sub_1000B644C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000B644C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_1000BAEB0(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B6530()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1000B6A24;
  }

  else
  {
    v2 = sub_1000B6688;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000B6688()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_1000BAEB0(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B676C()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000B881C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_10000D52C(v8, &qword_10021B938);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000B6A24()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000B881C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_10000D52C(v8, &qword_10021B938);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000B6CDC()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v1[48] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[49] = v3;

  return _swift_task_switch(sub_1000B6DF8);
}

uint64_t sub_1000B6DF8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1000B6F24;

  return sub_10013AF88(v0 + 144, v4, v6);
}

uint64_t sub_1000B6F24()
{

  return _swift_task_switch(sub_1000B7044);
}

uint64_t sub_1000B7044()
{

  sub_1000B81FC((v0 + 18));
  sub_1000B9C80((v0 + 10));
  if (v0[13] && v0[17])
  {
    sub_100009F70(&qword_10021C438);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001ACB00;
    sub_10008319C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_1000831F8((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_1000B9C80((v0 + 2));
    if (v0[5] && v0[9])
    {
      sub_100009F70(&qword_10021C438);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001ACB00;
      sub_10008319C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_1000831F8((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_1000B8358(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000B73C8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7568(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7630(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
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
    sub_1000B7490();
  }
}

uint64_t sub_1000B77B8(uint64_t a1)
{
  v3 = *(*v1 + 160);
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
    sub_1000B7490();
  }
}

uint64_t sub_1000B79A0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = *(*v1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000B7AF4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7CE4(uint64_t a1)
{
  v2 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F680(a1, &v6 - v3);
  return sub_1000B7D78(v4);
}

uint64_t sub_1000B7D78(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *(v4 + 184);
  swift_beginAccess();
  sub_10000F680(v1 + v8, v7);
  v9 = *(v4 + 80);
  v16 = *(v4 + 96);
  v17 = v9;
  v15 = *(v4 + 112);
  sub_1000BA1A0();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = sub_10000D52C(v7, qword_100218748);
  if (v10)
  {
    swift_beginAccess();
    sub_1000BA254(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v12 = v16;
    *(&v15 - 3) = v17;
    *(&v15 - 2) = v12;
    *(&v15 - 1) = v15;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_1000B7490();
  }

  return sub_10000D52C(a1, qword_100218748);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  sub_1000BA254(a2, a1 + v4);
  return swift_endAccess();
}

void sub_1000B8028(void *a1)
{
  v3 = *(*v1 + 192);
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
    sub_1000B7490();
  }
}

double sub_1000B81B0@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B9C80(v6);
  sub_10008319C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

uint64_t sub_1000B81FC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1000B7490();
  sub_1000831F8(a1);
}

uint64_t sub_1000B82B4(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 232));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_1000B8358(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 240));
  sub_100009F70(&qword_100219F00);
  sub_10007CA7C();
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
    sub_1000B7490();
  }
}

uint64_t sub_1000B84F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*v2 + 104) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v10 = sub_1000B878C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_100009F70(&qword_100219EF8);
    v14 = swift_allocObject();
    v24[1] = a2;
    v15 = v14;
    *(v14 + 16) = xmmword_1001ACB00;
    (*(v4 + 168))(v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v15[7] = &type metadata for String;
    v20 = sub_100096600();
    v15[4] = v17;
    v15[5] = v19;
    v15[12] = &type metadata for String;
    v15[13] = v20;
    v15[8] = v20;
    v15[9] = v12;
    v15[10] = v13;
    return String.init(format:_:)();
  }

  else
  {
    (*(v4 + 168))(v5, v4);
    v22 = swift_getAssociatedConformanceWitness();
    v23 = sub_1000FC8F4(AssociatedTypeWitness, v22);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    return v23;
  }
}

id sub_1000B878C()
{
  result = sub_1000B9BF0();
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

uint64_t sub_1000B881C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, v0 + *(v1 + 208), v3);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_1000755BC(v2, v7, v11);
  (*(v12 + 8))(v6, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1000B8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  v73 = a2;
  v72 = a1;
  v5 = *v4;
  v6 = sub_100009F70(qword_100218748);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = v5[10];
  v78 = type metadata accessor for Optional();
  v77 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = v5[16];
  v69 = *(v9 - 8);
  v15 = v69 + 56;
  v16 = *(v69 + 56);
  v16(v4 + v14, 1, 1, v9);
  v75 = v15;
  v74 = v16;
  v16(v13, 1, 1, v9);
  v17 = *(*v4 + 136);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(v4 + v17, v13, v18);
  v19 = (v4 + *(*v4 + 144));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v4 + *(*v4 + 152)) = 1;
  *(v4 + *(*v4 + 160)) = static Array._allocateUninitialized(_:)();
  v20 = *(*v4 + 168);
  v71 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v20, 1, 1, AssociatedTypeWitness);
  v22 = *(*v4 + 176);
  v70 = v5[12];
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_1000B9AEC(v8, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  sub_10008319C(&v82, v81);
  sub_1000831F8(v86);
  v25 = (v4 + *(*v4 + 232));
  v26 = v85;
  v25[2] = v84;
  v25[3] = v26;
  v27 = v83;
  *v25 = v82;
  v25[1] = v27;
  v28 = (v4 + *(*v4 + 240));
  *v28 = 0;
  v28[1] = 0;
  v29 = v4 + *(*v4 + 248);
  *v29 = LocalizedStringKey.init(stringLiteral:)();
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  *(v29 + 24) = v32;
  v33 = (v4 + *(*v4 + 256));
  v34 = objc_opt_self();
  v35 = [v34 mainBundle];
  v87._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v36._object = 0x80000001001BF370;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v87);

  *v33 = v38;
  v39 = (v4 + *(*v4 + 264));
  v40 = [v34 mainBundle];
  v88._object = 0xE000000000000000;
  v41 = v69;
  v42._countAndFlagsBits = 0xD00000000000002DLL;
  v42._object = 0x80000001001C0290;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v40, v43, v88);

  *v39 = v44;
  v45 = (v4 + *(*v4 + 272));
  v46 = [v34 mainBundle];
  v89._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v47._object = 0x80000001001C02C0;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v89);

  *v45 = v49;
  v50 = (v4 + *(*v4 + 280));
  *v50 = 0xD000000000000010;
  v50[1] = 0x80000001001C0300;
  v51 = (v4 + *(*v4 + 288));
  v52 = [v34 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000029;
  v53._object = 0x80000001001C0320;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v90);

  *v51 = v55;
  v56 = (v4 + *(*v4 + 296));
  v57 = [v34 mainBundle];
  v91._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0xD000000000000037;
  v58._object = 0x80000001001C0350;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v91);

  *v56 = v60;
  v61 = v72;
  v62 = v73;
  ObservationRegistrar.init()();
  (*(v41 + 16))(v4 + *(*v4 + 200), v61, v9);
  v63 = *(v41 + 48);
  if (v63(v62, 1, v9) == 1)
  {
    v64 = v76;
    (*(v41 + 32))(v76, v61, v9);
    v65 = v63(v62, 1, v9);
    v66 = v78;
    v67 = v77;
    if (v65 != 1)
    {
      (*(v77 + 8))(v62, v78);
    }
  }

  else
  {
    (*(v41 + 8))(v61, v9);
    v64 = v76;
    (*(v41 + 32))(v76, v62, v9);
    v66 = v78;
    v67 = v77;
  }

  v74(v64, 0, 1, v9);
  (*(v67 + 32))(v4 + *(*v4 + 208), v64, v66);
  (*(*(v71 - 8) + 32))(v4 + *(*v4 + 216), v79);
  (*(*(v70 - 8) + 32))(v4 + *(*v4 + 224), v80);
  return v4;
}

char *sub_1000B9574()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v2], v4);
  v5(&v0[*(*v0 + 136)], v4);

  v6 = *(*v0 + 168);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v0[v6], v8);
  v9 = *(*v0 + 176);
  v10 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v0[v9], v11);
  sub_10000D52C(&v0[*(*v0 + 184)], qword_100218748);

  (*(*(v3 - 8) + 8))(&v0[*(*v0 + 200)], v3);
  v5(&v0[*(*v0 + 208)], v4);
  (*(*(v7 - 8) + 8))(&v0[*(*v0 + 216)], v7);
  (*(*(v10 - 8) + 8))(&v0[*(*v0 + 224)], v10);

  v12 = *(*v0 + 304);
  v13 = type metadata accessor for ObservationRegistrar();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  return v0;
}

uint64_t sub_1000B9A7C()
{
  sub_1000B9574();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B9AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(qword_100218748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B9B5C()
{
  swift_getKeyPath();
  sub_1000B7328();

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_1000B9BF0()
{
  swift_getKeyPath();
  sub_1000B7328();

  return *(v0 + *(*v0 + 192));
}

__n128 sub_1000B9C80@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000B7328();

  v3 = v1 + *(*v1 + 232);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1000B9D2C@<X0>(_OWORD *a1@<X8>)
{
  sub_1000B9C80(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

uint64_t sub_1000B9D7C(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_1000B81FC(v5);
}

__n128 sub_1000B9DD4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1000B9E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1000A0020(*(*v4 + 80), *(*(*v4 + 104) + 8));
  sub_1000B881C();
  v11 = v10;
  if (v10)
  {
  }

  v12 = sub_1000B2898();
  v13 = [a4 isHidden];
  v14 = *(a1 + 72);
  if (!v14)
  {
    v15 = 0;
    v16 = 0;
    if ((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 64) == a2 && v14 == a3)
  {
    if (!((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1))
    {
      v15 = 1;
LABEL_13:
      v16 = v15 ^ 1;
      return v16 & 1;
    }
  }

  else
  {
    v17 = v11 != 0;
    v18 = v13;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v17 || (v9 & 1) == 0) | (v12 | v18) & 1))
    {
      v15 = v19;
      goto LABEL_13;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000B9F74()
{
  swift_getKeyPath();
  sub_1000B7328();

  return *(v0 + *(*v0 + 240));
}

uint64_t sub_1000BA018(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 88);
  if (!v2 || !*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_1000D8558(a2);
  if ((v5 & 1) == 0)
  {

LABEL_7:
    v7 = 1;
    return v7 & 1;
  }

  v6 = *(*(v2 + 56) + v4);

  if (v6 <= 1 || v6 == 2)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 ^ 1;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BA110()
{
  swift_getKeyPath();
  sub_1000B7328();

  return *(v0 + *(*v0 + 160));
}

unint64_t sub_1000BA1A0()
{
  result = qword_10021D558;
  if (!qword_10021D558)
  {
    sub_10000B3DC(qword_100218748);
    sub_1000BB2D0(&qword_10021D560, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D558);
  }

  return result;
}

uint64_t sub_1000BA254(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(qword_100218748);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA368(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v18 = v12;
  v20 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v6;
    v16 = v18;
    *(&v18 - 40) = v19;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_1000B7490();
  }
}

uint64_t sub_1000BA62C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v18 = v12;
  v20 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v6;
    v16 = v18;
    *(&v18 - 40) = v19;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_1000B7490();
  }
}

uint64_t sub_1000BA8F0(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 8);
      if (*(v4 - 16) && *(v4 - 16) != 2)
      {

        return v5;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        return v5;
      }

      ++v3;

      v4 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000BAA10(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = v3[21];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v18 = v3[10];
  v19 = *(v4 + 6);
  v12 = v3[15];
  v13 = v20;
  v21 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v17 - 6) = v18;
    *(&v17 - 5) = v6;
    *(&v17 - 2) = v19;
    *(&v17 - 2) = v5;
    *(&v17 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v13;
    sub_1000B7490();
  }
}

uint64_t sub_1000BAD58@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000BA110();
}

uint64_t sub_1000BADCC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000B9F74();
  a1[1] = v2;
}

uint64_t sub_1000BAE0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B8358(v1, v2);
}

uint64_t sub_1000BAE58()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 240));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000BAEB0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = *(v4 + 176);
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v12, v8);
  v13 = *(v5 + 104);
  v18 = *(v5 + 80);
  v19 = v13;
  v20 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v5)
  {
    swift_beginAccess();
    (*(v9 + 24))(v2 + v12, a1, v8);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v19;
    *(&v18 - 3) = v18;
    *(&v18 - 4) = v7;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v6;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_1000B7490();
  }
}

unint64_t sub_1000BB21C()
{
  result = qword_10021D570;
  if (!qword_10021D570)
  {
    sub_10000B3DC(&qword_10021D568);
    sub_1000BB2D0(&qword_10021D578, sub_1000BB318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D570);
  }

  return result;
}

uint64_t sub_1000BB2D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BB318()
{
  result = qword_1002231A0;
  if (!qword_1002231A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002231A0);
  }

  return result;
}

id sub_1000BB364@<X0>(void *a1@<X8>)
{
  v2 = sub_1000B9BF0();
  *a1 = v2;

  return v2;
}

void sub_1000BB3A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B8028(v1);
}

void sub_1000BB3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 192);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1000BB48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BB4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B4230();
  *a1 = result;
  return result;
}

uint64_t sub_1000BB528@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000B9B5C();
  a1[1] = v2;
}

uint64_t sub_1000BB568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B7630(v1, v2);
}

uint64_t sub_1000BB5B4()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 144));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000BB640(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000BB658(uint64_t a1, int a2)
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

uint64_t sub_1000BB6A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000BB71C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021D580);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v40 = sub_100009F70(&qword_10021D588);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = &v37 - v11;
  v41 = sub_100009F70(&qword_10021D590);
  __chkstk_darwin(v41);
  v14 = &v37 - v13;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_100009F70(&qword_10021D598);
  sub_1000BBCD8(v2, &v10[*(v15 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v16 = sub_10000D1EC(&qword_10021D5A0, &qword_10021D580);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v39);
  sub_10000D52C(v10, &qword_10021D580);
  v17 = swift_allocObject();
  v18 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v2 + 64);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  sub_1000BD6FC(v2, v46);
  v20 = v37;
  static AccessibilityActionKind.default.getter();
  v46[0] = v8;
  v46[1] = v16;
  swift_getOpaqueTypeConformance2();
  v21 = v40;
  View.accessibilityAction(_:_:)();

  (*(v42 + 8))(v20, v43);
  (*(v38 + 8))(v12, v21);
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = &v14[*(sub_100009F70(&qword_10021D5A8) + 36)];
  *v25 = static Alignment.center.getter();
  v25[1] = v26;
  v27 = sub_100009F70(&qword_10021D5B0);
  sub_1000BC9E0(v2, (v25 + *(v27 + 44)));
  v28 = (v25 + *(sub_100009F70(&qword_10021D5B8) + 36));
  *v28 = v22;
  v28[1] = v24;
  v29 = swift_allocObject();
  v30 = *(v2 + 48);
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(v2 + 64);
  v31 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v31;
  v32 = &v14[*(v41 + 36)];
  *v32 = sub_1000BCDF8;
  *(v32 + 1) = 0;
  *(v32 + 2) = sub_1000BD734;
  *(v32 + 3) = v29;
  v47[0] = *(v2 + 16);
  v45 = v47[0];
  v33 = swift_allocObject();
  v34 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(v2 + 64);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  sub_1000BD6FC(v2, v46);
  sub_1000BD6FC(v2, v46);
  sub_10000D58C(v47, v46, &qword_10021D568);
  sub_100009F70(&qword_10021D568);
  sub_1000BD7AC();
  sub_1000BB21C();
  View.onChange<A>(of:initial:_:)();

  sub_10000D52C(v47, &qword_10021D568);
  return sub_10000D52C(v14, &qword_10021D590);
}

uint64_t sub_1000BBCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_100009F70(&qword_10021D620);
  v4 = __chkstk_darwin(v3 - 8);
  v103 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v88 - v6;
  v7 = type metadata accessor for RoundedCornerStyle();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Image.ResizingMode();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100009F70(&qword_10021D628);
  __chkstk_darwin(v92);
  v13 = (&v88 - v12);
  v99 = sub_100009F70(&qword_10021D630);
  __chkstk_darwin(v99);
  v95 = &v88 - v14;
  v97 = sub_100009F70(&qword_10021D638);
  __chkstk_darwin(v97);
  v98 = &v88 - v15;
  v16 = type metadata accessor for OpacityTransition();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v96 = sub_100009F70(&qword_10021D640);
  __chkstk_darwin(v96);
  v89 = &v88 - v23;
  v24 = sub_100009F70(&qword_10021D648);
  v25 = __chkstk_darwin(v24 - 8);
  v101 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v88 - v27;
  v100 = a1;
  v111 = *(a1 + 40);
  sub_100009F70(&qword_10021D600);
  State.wrappedValue.getter();
  v105 = v28;
  if (v106)
  {
    v89 = v106;
    Image.init(uiImage:)();
    v29 = v90;
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v90);
    v88 = Image.resizable(capInsets:resizingMode:)();

    (*(v9 + 8))(v11, v29);
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition);
    v30 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    if (qword_100218430 != -1)
    {
      swift_once();
    }

    v32 = v93;
    v31 = v94;
    v33 = v91;
    (*(v93 + 104))(v91, enum case for RoundedCornerStyle.continuous(_:), v94);
    v34 = v13 + *(sub_100009F70(&qword_10021D6A8) + 36);
    v35 = type metadata accessor for UnevenRoundedRectangle();
    (*(v32 + 16))(&v34[*(v35 + 20)], v33, v31);
    RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    (*(v32 + 8))(v33, v31);
    *v34 = v37;
    *(v34 + 1) = v39;
    *(v34 + 2) = v41;
    *(v34 + 3) = v43;
    *&v34[*(sub_100009F70(&qword_10021D6C8) + 36)] = 256;
    *v13 = v88;
    v13[1] = v30;
    *(v13 + *(v92 + 36)) = 1;
    sub_1000BF1E8();
    v44 = v95;
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v13, &qword_10021D628);
    v45 = static Alignment.center.getter();
    v47 = v46;
    sub_100009F70(&qword_1002199C0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001ACB00;
    *(v48 + 32) = static Color.clear.getter();
    *(v48 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v49 = v119;
    v50 = v98;
    v51 = v44 + *(v99 + 36);
    *v51 = v45;
    *(v51 + 8) = v47;
    *(v51 + 16) = v49;
    v52 = v121;
    *(v51 + 24) = v120;
    *(v51 + 40) = v52;
    sub_10000D58C(v44, v50, &qword_10021D630);
    swift_storeEnumTagMultiPayload();
    sub_1000BF104();
    sub_1000BF3E4();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v44, &qword_10021D630);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v53 = v119;
    v54 = v120;
    v55 = v121;
    v95 = *(&v121 + 1);
    v93 = *(&v120 + 1);
    v94 = v122;
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition);
    v56 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    v118 = v54;
    v117 = v55;
    *&v111 = 6;
    *(&v111 + 1) = v53;
    LOBYTE(v112) = v54;
    *(&v112 + 1) = v106;
    DWORD1(v112) = *(&v106 + 3);
    *(&v112 + 1) = v93;
    LOBYTE(v113) = v55;
    *(&v113 + 1) = v116[0];
    DWORD1(v113) = *(v116 + 3);
    *(&v113 + 1) = v95;
    *&v114 = v94;
    *(&v114 + 1) = v56;
    sub_100009F70(&qword_10021D650);
    sub_1000BEFC0();
    v57 = v89;
    View.accessibilityHidden(_:)();

    v58 = static Alignment.center.getter();
    v60 = v59;
    sub_100009F70(&qword_1002199C0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1001ACB00;
    *(v61 + 32) = static Color.clear.getter();
    *(v61 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v62 = v123;
    v63 = &v57[*(v96 + 36)];
    *v63 = v58;
    *(v63 + 1) = v60;
    *(v63 + 2) = v62;
    v64 = v125;
    *(v63 + 24) = v124;
    *(v63 + 40) = v64;
    sub_10000D58C(v57, v98, &qword_10021D640);
    swift_storeEnumTagMultiPayload();
    sub_1000BF104();
    sub_1000BF3E4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v57, &qword_10021D640);
  }

  v65 = v100;
  v66 = v100[1];
  v99 = *v100;
  v67 = v100[2];

  v68 = sub_10016E564(v67);
  v70 = v69;
  v71 = v65[3];
  v72 = v65[4];
  sub_100009F70(&qword_100218DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  sub_1000BF57C(v71);
  v74 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v74;
  v75 = static Edge.Set.bottom.getter();
  *(inited + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  v77 = v105;
  EdgeInsets.init(_all:)();
  LOBYTE(v116[0]) = 0;
  *&v106 = v99;
  *(&v106 + 1) = v66;
  *&v107 = v68;
  *(&v107 + 1) = v70;
  *&v108 = v71;
  *(&v108 + 1) = v72;
  LOBYTE(v109) = v76;
  *(&v109 + 1) = v78;
  *&v110[0] = v79;
  *(&v110[0] + 1) = v80;
  *&v110[1] = v81;
  BYTE8(v110[1]) = 0;
  sub_100009F70(&qword_10021D6F8);
  sub_1000BFAA0(&qword_10021D700, &qword_10021D6F8, &unk_1001B4880, sub_1000BF58C);
  v82 = v102;
  View.accessibilityIdentifier(_:)();
  v113 = v108;
  v114 = v109;
  v115[0] = v110[0];
  *(v115 + 9) = *(v110 + 9);
  v111 = v106;
  v112 = v107;
  sub_10000D52C(&v111, &qword_10021D6F8);
  v83 = v101;
  sub_10000D58C(v77, v101, &qword_10021D648);
  v84 = v103;
  sub_10000D58C(v82, v103, &qword_10021D620);
  v85 = v104;
  sub_10000D58C(v83, v104, &qword_10021D648);
  v86 = sub_100009F70(&qword_10021D710);
  sub_10000D58C(v84, v85 + *(v86 + 48), &qword_10021D620);
  sub_10000D52C(v82, &qword_10021D620);
  sub_10000D52C(v77, &qword_10021D648);
  sub_10000D52C(v84, &qword_10021D620);
  return sub_10000D52C(v83, &qword_10021D648);
}

uint64_t sub_1000BC9E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021D608);
  v5 = __chkstk_darwin(v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v7;
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for Image.ResizingMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 40);
  sub_100009F70(&qword_10021D600);
  State.wrappedValue.getter();
  if (v29)
  {
    v26 = v29;
    Image.init(uiImage:)();
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v15);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v16 + 8))(v18, v15);
    OpacityTransition.init()();
    (*(v9 + 16))(v12, v14, v8);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition);
    v20 = AnyTransition.init<A>(_:)();

    (*(v9 + 8))(v14, v8);

    v21 = 257;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  *&v30 = 6;
  sub_100019990();
  v22 = v27;
  View.accessibilityHidden(_:)();
  v23 = v28;
  sub_10000D58C(v22, v28, &qword_10021D608);
  *a2 = v19;
  a2[1] = 0;
  a2[2] = v21;
  a2[3] = v20;
  v24 = sub_100009F70(&qword_10021D610);
  sub_10000D58C(v23, a2 + *(v24 + 48), &qword_10021D608);
  sub_1000BEEF8(v19);
  sub_1000BEF38(v19);
  sub_10000D52C(v22, &qword_10021D608);
  sub_10000D52C(v23, &qword_10021D608);
  return sub_1000BEF38(v19);
}

uint64_t sub_1000BCDF8@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BCE24(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = *a1;
  v21 = *(a2 + 56);
  v19[0] = *(a2 + 56);
  v20 = v7;
  sub_100009F70(&qword_10021D5F8);
  State.wrappedValue.setter();
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v19[0] = v21;
  State.wrappedValue.getter();
  v11 = v20;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v10;

  sub_1000BD6FC(a2, v19);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = *a2;
  *(v15 + 72) = *(a2 + 16);
  v17 = *(a2 + 48);
  *(v15 + 88) = *(a2 + 32);
  *(v15 + 104) = v17;
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v9;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 120) = *(a2 + 64);
  *(v15 + 56) = v16;
  *(v15 + 128) = v11;
  *(v15 + 136) = 0x4063400000000000;
  sub_10013F12C(0, 0, v6, &unk_1001B47E0, v15);
}

uint64_t sub_1000BD00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v8 = *a3;
  v7 = *(a3 + 8);
  v9 = *(a3 + 16);
  v18[0] = *(a3 + 56);
  sub_100009F70(&qword_10021D5F8);
  State.wrappedValue.getter();
  v10 = v19;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v9;

  sub_1000BD6FC(a3, v18);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = *a3;
  *(v14 + 72) = *(a3 + 16);
  v16 = *(a3 + 48);
  *(v14 + 88) = *(a3 + 32);
  *(v14 + 104) = v16;
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v8;
  *(v14 + 40) = v7;
  *(v14 + 48) = v9;
  *(v14 + 120) = *(a3 + 64);
  *(v14 + 56) = v15;
  *(v14 + 128) = v10;
  *(v14 + 136) = 0x4063400000000000;
  sub_10013F12C(0, 0, v6, &unk_1001B47D0, v14);
}

uint64_t sub_1000BD1BC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 72) = type metadata accessor for MainActor();
  *(v9 + 80) = static MainActor.shared.getter();
  *(v9 + 88) = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 96) = v10;

  return _swift_task_switch(sub_1000BD25C);
}

uint64_t sub_1000BD25C()
{
  *(v0 + 16) = *(*(v0 + 48) + 40);
  sub_100009F70(&qword_10021D600);
  State.wrappedValue.getter();
  v1 = *(v0 + 32);
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1000BD33C;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  return sub_10016E640(v1, v5, v3, v4);
}

uint64_t sub_1000BD33C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  *(v4 + 120) = 0;
  *(v4 + 128) = a1;

  return _swift_task_switch(sub_1000BD464);
}

uint64_t sub_1000BD464()
{
  *(v0 + 136) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BD4F0);
}

uint64_t sub_1000BD4F0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return _swift_task_switch(sub_1000BD5BC);
}

uint64_t sub_1000BD5BC()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BD624(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_100009F70(&qword_10021D600);
  return State.wrappedValue.setter();
}

uint64_t sub_1000BD6CC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000BD73C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000BD7AC()
{
  result = qword_10021D5C0;
  if (!qword_10021D5C0)
  {
    sub_10000B3DC(&qword_10021D590);
    sub_1000BD864();
    sub_10000D1EC(&qword_10021D5E8, &qword_10021D5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5C0);
  }

  return result;
}

unint64_t sub_1000BD864()
{
  result = qword_10021D5C8;
  if (!qword_10021D5C8)
  {
    sub_10000B3DC(&qword_10021D5A8);
    sub_1000BD91C();
    sub_10000D1EC(&qword_10021D5E0, &qword_10021D5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5C8);
  }

  return result;
}

unint64_t sub_1000BD91C()
{
  result = qword_10021D5D0;
  if (!qword_10021D5D0)
  {
    sub_10000B3DC(&qword_10021D5D8);
    sub_10000B3DC(&qword_10021D580);
    sub_10000D1EC(&qword_10021D5A0, &qword_10021D580);
    swift_getOpaqueTypeConformance2();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5D0);
  }

  return result;
}

uint64_t sub_1000BDA48(uint64_t a1)
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
  v11[1] = sub_1000214E4;

  return sub_1000BD1BC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1000BDB30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v64 = type metadata accessor for AccessibilityTraits();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021D718);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_100009F70(&qword_10021D720);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_100009F70(&qword_10021D728);
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v17 = sub_100009F70(&qword_10021D730);
  sub_1000BE120(v2, &v9[*(v17 + 44)]);
  v9[*(v7 + 36)] = 0;
  v18 = *v2;
  v66 = *(v2 + 16);
  v67 = v18;
  v19 = *(v2 + 32);
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  v20[1] = *v2;
  v20[2] = v21;
  v20[3] = *(v2 + 32);
  sub_1000BF7C4(&v67, v65);
  sub_10000D58C(&v66, v65, &qword_100219F00);
  sub_1000BF57C(v19);
  sub_1000BF820();
  View.onTapGesture(count:perform:)();

  sub_10000D52C(v9, &qword_10021D718);
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v12[*(sub_100009F70(&qword_10021D750) + 36)];
  *v30 = v2;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(v2) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v12[*(sub_100009F70(&qword_10021D758) + 36)];
  *v39 = v2;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v2) = static Edge.Set.trailing.getter();
  v40 = &v12[*(sub_100009F70(&qword_10021D760) + 36)];
  *v40 = v2;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  v40[40] = 1;
  v41 = [objc_opt_self() tertiarySystemBackgroundColor];
  v42 = Color.init(uiColor:)();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v43 = &v12[*(sub_100009F70(&qword_10021D768) + 36)];
  *v43 = v42;
  v43[8] = v9;
  v44 = &v12[*(v10 + 36)];
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #10.0 }

  *v44 = _Q0;
  *&v44[*(sub_100009F70(&qword_100218928) + 36)] = 256;
  static AccessibilityChildBehavior.combine.getter();
  v53 = sub_1000BF904();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v6, v60);
  sub_10000D52C(v12, &qword_10021D720);
  v54 = v61;
  static AccessibilityTraits.isButton.getter();
  v65[0] = v10;
  v65[1] = v53;
  swift_getOpaqueTypeConformance2();
  v55 = v57;
  View.accessibilityAddTraits(_:)();
  (*(v62 + 8))(v54, v64);
  return (*(v58 + 8))(v16, v55);
}

uint64_t sub_1000BE120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v2 = sub_100009F70(&qword_10021D798);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v53 = sub_100009F70(&qword_10021D7A0) - 8;
  v5 = __chkstk_darwin(v53);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v45 - v8;
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v10 = sub_100009F70(&qword_10021B4D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v46 = sub_100009F70(&qword_10021D7A8);
  __chkstk_darwin(v46);
  v14 = &v45 - v13;
  v15 = sub_100009F70(&qword_10021D7B0);
  v16 = __chkstk_darwin(v15 - 8);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = Image.symbolRenderingMode(_:)();

  sub_10000D52C(v12, &qword_10021B4D8);
  v22 = static Color.white.getter();
  v23 = static Color.blue.getter();
  v24 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v54 = v21;
  *(&v54 + 1) = v22;
  *&v55 = v23;
  *(&v55 + 1) = KeyPath;
  *&v56 = v24;
  sub_100009F70(&qword_10021D7B8);
  sub_1000BFC24();
  View.accessibilityIdentifier(_:)();

  v14[*(v46 + 36)] = 1;
  sub_1000BFCDC();
  v26 = v19;
  View.accessibilityHidden(_:)();
  sub_10000D52C(v14, &qword_10021D7A8);
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v27 = sub_100009F70(&qword_10021D7E0);
  v28 = v48;
  sub_1000BE81C(v48, &v4[*(v27 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v47;
  sub_10000F618(v4, v47, &qword_10021D798);
  v30 = (v29 + *(v53 + 44));
  v31 = v59;
  v30[4] = v58;
  v30[5] = v31;
  v30[6] = v60;
  v32 = v55;
  *v30 = v54;
  v30[1] = v32;
  v33 = v57;
  v30[2] = v56;
  v30[3] = v33;
  v34 = v49;
  sub_10000F618(v29, v49, &qword_10021D7A0);
  if (*(v28 + 32))
  {
    v35 = Image.init(systemName:)();
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    v53 = Font.weight(_:)();

    v36 = swift_getKeyPath();
    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v37 = Color.opacity(_:)();
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v53 = 0;
    v37 = 0;
  }

  v38 = v50;
  sub_10000D58C(v26, v50, &qword_10021D7B0);
  v39 = v51;
  sub_10000D58C(v34, v51, &qword_10021D7A0);
  v40 = v52;
  sub_10000D58C(v38, v52, &qword_10021D7B0);
  v41 = sub_100009F70(&qword_10021D7E8);
  sub_10000D58C(v39, v40 + *(v41 + 48), &qword_10021D7A0);
  v42 = (v40 + *(v41 + 64));
  v43 = v53;
  sub_1000BFD94(v35);
  sub_1000BFDF8(v35);
  *v42 = v35;
  v42[1] = v36;
  v42[2] = v43;
  v42[3] = v37;
  sub_10000D52C(v34, &qword_10021D7A0);
  sub_10000D52C(v26, &qword_10021D7B0);
  sub_1000BFDF8(v35);
  sub_10000D52C(v39, &qword_10021D7A0);
  return sub_10000D52C(v38, &qword_10021D7B0);
}