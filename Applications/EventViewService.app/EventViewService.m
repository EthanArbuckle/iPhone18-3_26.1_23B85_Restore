uint64_t sub_100002318()
{
  if (sub_1001AD108(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100002380()
{
  if (sub_1001AD108(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_100002474();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_100002EE8(&qword_100220CB0, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_100002474()
{
  result = qword_100220CA8;
  if (!qword_100220CA8)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220CA8);
  }

  return result;
}

uint64_t sub_1000024C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000250C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a4;
  v36 = a5;
  if (sub_1001AD108(2, 26, 4, 0))
  {
    v37 = a7;
    v38 = a2;
    v39 = a6;
    v40 = a8;
    v41 = a9;
    v42 = a10;
    v17 = type metadata accessor for _TaskModifier2();
    v18 = *(v17 - 8);
    __chkstk_darwin(v17);
    v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      v34 = v10;
      _StringGuts.grow(_:)(17);

      strcpy(v44, "View.task @ ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      v28._countAndFlagsBits = a3;
      v28._object = v35;
      String.append(_:)(v28);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      String.append(_:)(v29);
      v43 = v36;
      v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v30);
    }

    v31 = type metadata accessor for TaskPriority();
    __chkstk_darwin(v31);
    (*(v33 + 16))(&v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v38);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    View.modifier<A>(_:)();

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v21 = type metadata accessor for _TaskModifier();
    v22 = __chkstk_darwin(v21);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v22 + 20);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 16))(&v24[v25], a2, v26);
    *v24 = a6;
    *(v24 + 1) = a7;
    View.modifier<A>(_:)();
    return sub_100002874(v24);
  }
}

uint64_t sub_100002874(uint64_t a1)
{
  v2 = type metadata accessor for _TaskModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000028F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002908(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002928(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100002988@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000029B8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002A30(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002AB0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_100002B98()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100002C00()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100002C6C(uint64_t a1)
{
  v2 = sub_100002EE8(&qword_100220ED8, type metadata accessor for DocumentAttributeKey);
  v3 = sub_100002EE8(&qword_100220EE0, type metadata accessor for DocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002D28(uint64_t a1)
{
  v2 = sub_100002EE8(&qword_100220EE8, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_100002EE8(&unk_100220EF0, type metadata accessor for DocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002DE4(uint64_t a1)
{
  v2 = sub_100002EE8(&qword_100220D28, type metadata accessor for ASCAppState);
  v3 = sub_100002EE8(&qword_100220D30, type metadata accessor for ASCAppState);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002F78(uint64_t a1)
{
  v2 = sub_100002EE8(&qword_100220DF8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_100002EE8(&unk_100220E00, type metadata accessor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003034@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000307C(uint64_t a1)
{
  v2 = sub_100002EE8(&unk_10022BBE0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100002EE8(&qword_100220E10, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003138()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003174()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000031C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10000323C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000332C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000334C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_100003604(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_1000036C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000038EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100004738(&qword_1002211C8, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  return sub_1000047E4(v5 + v3, a1);
}

uint64_t sub_1000039B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  sub_100004780(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100003A20(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1000024C4(&qword_1002211B8);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_1002211C0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for VenueController.Result(0);
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v3[17] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v6;

  return _swift_task_switch(sub_100003BBC);
}

uint64_t sub_100003BBC()
{
  v1 = v0[15];
  v2 = v0[7];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[19] = OBJC_IVAR____TtC16EventViewService15VenueController___observationRegistrar;
  v0[2] = v2;
  v0[20] = sub_100004738(&qword_1002211C8, type metadata accessor for VenueController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000046B8(v1);
  v4 = type metadata accessor for Music();
  sub_100004738(&qword_1002211D0, &type metadata accessor for Music);
  static EventService.RequestType<>.music.getter();
  v5 = swift_task_alloc();
  v0[21] = v5;
  sub_100004738(&qword_1002211D8, &type metadata accessor for Music);
  *v5 = v0;
  v5[1] = sub_100003DF4;
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[13];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v9, v7, v8, v6, v0 + 2, 0, v4, v0 + 2);
}

uint64_t sub_100003DF4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_100004108;
  }

  else
  {
    v3 = sub_100003F7C;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_100003F7C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];

  v6 = *(sub_1000024C4(&qword_1002211E0) + 48);
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
  sub_1000046B8(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100004108()
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

  sub_1000046B8(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004258()
{
  v1 = OBJC_IVAR____TtC16EventViewService15VenueController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000046B8(v0 + OBJC_IVAR____TtC16EventViewService15VenueController__result);
  v3 = OBJC_IVAR____TtC16EventViewService15VenueController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10000436C()
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

uint64_t sub_100004490(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000451C()
{
  sub_100004590();
  if (v0 <= 0x3F)
  {
    sub_100004654();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100004590()
{
  if (!qword_100221178)
  {
    type metadata accessor for Venue();
    sub_10000460C(&qword_100221180);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100221178);
    }
  }
}

uint64_t sub_10000460C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004654()
{
  result = qword_100221188;
  if (!qword_100221188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100221188);
  }

  return result;
}

uint64_t sub_1000046B8(uint64_t a1)
{
  v2 = type metadata accessor for VenueController.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000047E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000048A8()
{
  v1 = type metadata accessor for DesignTimeImage();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024C4(&qword_100221250);
  __chkstk_darwin();
  v6 = &v8 - v5;
  String.hash(into:)();
  String.hash(into:)();
  v7 = type metadata accessor for DesignTimeArtist();
  sub_100005054(v0 + *(v7 + 24), v6);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_100005180(v6, v4);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    type metadata accessor for URL();
    sub_1000051E4(&qword_100221260, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    if (*&v4[*(v1 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_1000051E4(&qword_100221268, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v4[*(v1 + 28)]);
    sub_100005124(v4);
  }
}

uint64_t sub_100004B14()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100004B44()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100004B84(uint64_t a1)
{
  *(a1 + 8) = sub_1000051E4(&qword_100221230, type metadata accessor for DesignTimeArtist);
  result = sub_1000051E4(&qword_100221238, type metadata accessor for DesignTimeArtist);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeArtist()
{
  result = qword_1002212C8;
  if (!qword_1002212C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100004C58()
{
  result = qword_100221240;
  if (!qword_100221240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221240);
  }

  return result;
}

uint64_t sub_100004CAC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_100004D00()
{
  Hasher.init(_seed:)();
  sub_1000048A8();
  return Hasher._finalize()();
}

Swift::Int sub_100004D44()
{
  Hasher.init(_seed:)();
  sub_1000048A8();
  return Hasher._finalize()();
}

BOOL sub_100004D84(void *a1, void *a2)
{
  v4 = type metadata accessor for DesignTimeImage();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000024C4(&qword_100221250);
  __chkstk_darwin();
  v9 = (&v18 - v8);
  v10 = sub_1000024C4(&qword_100221258);
  __chkstk_darwin();
  v12 = &v18 - v11;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for DesignTimeArtist() + 24);
  v14 = *(v10 + 48);
  sub_100005054(a1 + v13, v12);
  sub_100005054(a2 + v13, &v12[v14]);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) != 1)
  {
    sub_100005054(v12, v9);
    if (v15(&v12[v14], 1, v4) != 1)
    {
      sub_100005180(&v12[v14], v7);
      v17 = sub_10005859C(v9, v7);
      sub_100005124(v7);
      sub_100005124(v9);
      sub_1000050C4(v12, &qword_100221250);
      return (v17 & 1) != 0;
    }

    sub_100005124(v9);
LABEL_12:
    sub_1000050C4(v12, &qword_100221258);
    return 0;
  }

  if (v15(&v12[v14], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1000050C4(v12, &qword_100221250);
  return 1;
}

uint64_t sub_100005054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000024C4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100005124(uint64_t a1)
{
  v2 = type metadata accessor for DesignTimeImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000051E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005240(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_100221250);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100005310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_100221250);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000053C0()
{
  sub_100005444();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100005444()
{
  if (!qword_1002212D8)
  {
    type metadata accessor for DesignTimeImage();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002212D8);
    }
  }
}

uint64_t sub_1000054E4()
{
  Music.Artist.id.getter();

  return ResourceID.init(_:)();
}

uint64_t sub_100005514(uint64_t a1)
{
  *(a1 + 8) = sub_100005598(&qword_100221358, &type metadata accessor for Music.Artist);
  result = sub_100005598(&qword_100221360, &type metadata accessor for Music.Artist);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100005598(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000055F4()
{
  result = qword_100221368;
  if (!qword_100221368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221368);
  }

  return result;
}

id sub_100005648()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_1000056B8(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_100005794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000058A0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000057F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000058A0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100005878()
{
  sub_1000058A0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000058A0()
{
  result = qword_100221370;
  if (!qword_100221370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221370);
  }

  return result;
}

uint64_t sub_100005944(uint64_t a1)
{
  *(a1 + 8) = sub_1000059C8(&qword_1002213C8, &type metadata accessor for Sport.League);
  result = sub_1000059C8(&qword_1002213D0, &type metadata accessor for Sport.League);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000059C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3838383736343436;
  }

  else
  {
    v3 = 0x3534333939343832;
  }

  if (v2)
  {
    v4 = 0xE900000000000039;
  }

  else
  {
    v4 = 0xEA00000000003932;
  }

  if (*a2)
  {
    v5 = 0x3838383736343436;
  }

  else
  {
    v5 = 0x3534333939343832;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003932;
  }

  else
  {
    v6 = 0xE900000000000039;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100005AC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100005B4C()
{
  String.hash(into:)();
}

Swift::Int sub_100005BC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100005C4C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100211388, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100005CAC(uint64_t *a1@<X8>)
{
  v2 = 0x3534333939343832;
  if (*v1)
  {
    v2 = 0x3838383736343436;
  }

  v3 = 0xE900000000000039;
  if (*v1)
  {
    v3 = 0xEA00000000003932;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100005D04()
{
  v1 = (v0 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
  v2 = *(v0 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID + 8);
  if (!v2)
  {

LABEL_15:

    return v2 & 1;
  }

  v3 = *v1;
  if (*v1 == 0x3534333939343832 && v2 == 0xE900000000000039)
  {
LABEL_14:
    LOBYTE(v2) = 1;
    goto LABEL_15;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    if (v3 != 0x3838383736343436 || v2 != 0xEA00000000003932)
    {
      LOBYTE(v2) = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  LOBYTE(v2) = 1;
  return v2 & 1;
}

uint64_t sub_100005E40()
{
  v1[10] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v1[15] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;

  return _swift_task_switch(sub_100005F58);
}

uint64_t sub_100005F58()
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
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_100006084;

  return sub_1001537FC(v0 + 16, v4, v6);
}

uint64_t sub_100006084()
{

  return _swift_task_switch(sub_1000061A4);
}

uint64_t sub_1000061A4()
{

  v1 = v0[5];
  if (v1 && v0[9])
  {
    sub_1000024C4(&qword_100221500);
    type metadata accessor for URLQueryItem();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001B3B50;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    v3 = v2;
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v4 = v3[2];

  if (v4)
  {
    URLComponents.init()();
    if (v1 && v0[9])
    {
      sub_1000024C4(&qword_100221500);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001B3B50;
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
    }

    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    sub_100006C2C((v0 + 2));
    URLComponents.queryItems.setter();
    v4 = URLComponents.percentEncodedQuery.getter();
    v9 = v8;
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    sub_100006C2C((v0 + 2));
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v4, v9);
}

void sub_10000644C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v11 = *(v4 + 24);
  v10 = *(v4 + 32);
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v10;
  v12 = *(v4 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType);
  if (v12 == 15)
  {
    LOBYTE(v12) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v12;
  if (*(v4 + 16))
  {
    v13 = 8;
  }

  else
  {
    v13 = 6;
  }

  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = v13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v14 = *(a4 + 64);
    v15 = *(a4 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v22 = v14;
  v23 = v15;

  sub_100006C80(a1, a2, a3);

  v16 = sub_1001894F4(1, 5, 1, inited);
  v20 = v16;
  sub_100006C98(&aBlock, v27);
  sub_100118768(4, v27, &v20, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000001ELL;
  v18[3] = 0x80000001001C4640;
  v18[4] = v16;
  v25 = sub_100006D88;
  v26 = v18;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10015B4A4;
  v24 = &unk_1002121C0;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_1000066E4()
{

  sub_100006BC4(v0 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL);

  v1 = OBJC_IVAR____TtC16EventViewService12AppViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppViewModel()
{
  result = qword_100221410;
  if (!qword_100221410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006840()
{
  sub_10000693C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000693C()
{
  if (!qword_100221420)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100221420);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppViewModel.App(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppViewModel.App(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006B08()
{
  result = qword_1002214E0;
  if (!qword_1002214E0)
  {
    sub_10000460C(&qword_1002214E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002214E0);
  }

  return result;
}

unint64_t sub_100006B70()
{
  result = qword_1002214F0;
  if (!qword_1002214F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002214F0);
  }

  return result;
}

uint64_t sub_100006BC4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002214F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006C80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100006D48()
{

  return swift_deallocObject();
}

uint64_t sub_100006D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100006DCC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100006E00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100006E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100006EB8()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v0[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v0[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v0[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

uint64_t sub_100007030()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_100007060()
{
  Hasher.init(_seed:)();
  sub_100006EB8();
  return Hasher._finalize()();
}

Swift::Int sub_1000070A4()
{
  Hasher.init(_seed:)();
  sub_100006EB8();
  return Hasher._finalize()();
}

uint64_t sub_1000070E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_100007714(v9, v10) & 1;
}

uint64_t sub_100007144@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v2;
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_10000792C(v9, &v8);
}

Swift::Int sub_10000719C()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100006EB8();
  }

  return Hasher._finalize()();
}

void sub_100007288()
{
  v1 = *(v0 + 48);
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100006EB8();
  }
}

Swift::Int sub_10000734C()
{
  v1 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100006EB8();
  }

  return Hasher._finalize()();
}

uint64_t sub_100007434(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10000799C(v11, v13) & 1;
}

unint64_t sub_1000074BC()
{
  result = qword_100221510;
  if (!qword_100221510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221510);
  }

  return result;
}

unint64_t sub_100007514()
{
  result = qword_100221518;
  if (!qword_100221518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221518);
  }

  return result;
}

unint64_t sub_100007568(uint64_t a1)
{
  *(a1 + 8) = sub_100007598();
  result = sub_1000075EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100007598()
{
  result = qword_100221568;
  if (!qword_100221568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221568);
  }

  return result;
}

unint64_t sub_1000075EC()
{
  result = qword_100221570;
  if (!qword_100221570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221570);
  }

  return result;
}

unint64_t sub_100007640(uint64_t a1)
{
  result = sub_100007668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100007668()
{
  result = qword_100221578;
  if (!qword_100221578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221578);
  }

  return result;
}

unint64_t sub_1000076C0()
{
  result = qword_100221580;
  if (!qword_100221580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221580);
  }

  return result;
}

uint64_t sub_100007714(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10000792C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000799C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100007C60(), (static NSObject.== infix(_:_:)())))
  {
    v6 = *(a1 + 88);
    v51[2] = *(a1 + 72);
    v51[3] = v6;
    v7 = *(a1 + 120);
    v51[4] = *(a1 + 104);
    v51[5] = v7;
    v8 = *(a1 + 56);
    v51[0] = *(a1 + 40);
    v51[1] = v8;
    v9 = *(a2 + 88);
    v50[2] = *(a2 + 72);
    v50[3] = v9;
    v10 = *(a2 + 120);
    v50[4] = *(a2 + 104);
    v50[5] = v10;
    v11 = *(a2 + 56);
    v50[0] = *(a2 + 40);
    v50[1] = v11;
    v12 = v51[0];
    if (*(&v51[0] + 1) == 1)
    {
      if (*(&v50[0] + 1) == 1)
      {
        v13 = 1;
        *&v38 = *&v51[0];
        *(&v38 + 1) = 1;
        v14 = *(a1 + 72);
        v15 = *(a1 + 104);
        v41 = *(a1 + 88);
        v42 = v15;
        v43 = *(a1 + 120);
        v39 = *(a1 + 56);
        v40 = v14;
        sub_10000792C(v51, v52);
        sub_10000792C(v50, v52);
        v16 = &v38;
LABEL_20:
        sub_1000050C4(v16, &qword_100221588);
        return v13 & 1;
      }
    }

    else if (*(&v50[0] + 1) != 1)
    {
      v31 = v50[0];
      v23 = *(a2 + 72);
      v24 = *(a2 + 104);
      v34 = *(a2 + 88);
      v35 = v24;
      v36 = *(a2 + 120);
      v32 = *(a2 + 56);
      v33 = v23;
      v42 = v24;
      v43 = v36;
      v40 = v23;
      v41 = v34;
      v38 = v50[0];
      v39 = v32;
      v25 = *(a1 + 56);
      v26 = *(a1 + 120);
      v27 = *(a1 + 88);
      v52[4] = *(a1 + 104);
      v52[5] = v26;
      v28 = *(a1 + 72);
      v52[1] = v25;
      v52[2] = v28;
      v52[3] = v27;
      v52[0] = v51[0];
      v13 = sub_100007714(v52, &v38);
      sub_10000792C(v51, v37);
      sub_10000792C(v50, v37);
      sub_1000050C4(&v31, &qword_100221588);
      v37[0] = v12;
      v29 = *(a1 + 72);
      v30 = *(a1 + 104);
      v37[3] = *(a1 + 88);
      v37[4] = v30;
      v37[5] = *(a1 + 120);
      v37[1] = *(a1 + 56);
      v37[2] = v29;
      v16 = v37;
      goto LABEL_20;
    }

    v38 = v51[0];
    v18 = *(a1 + 72);
    v19 = *(a1 + 104);
    v41 = *(a1 + 88);
    v42 = v19;
    v43 = *(a1 + 120);
    v39 = *(a1 + 56);
    v40 = v18;
    v44 = v50[0];
    v20 = *(a2 + 120);
    v21 = *(a2 + 88);
    v48 = *(a2 + 104);
    v49 = v20;
    v22 = *(a2 + 56);
    v46 = *(a2 + 72);
    v47 = v21;
    v45 = v22;
    sub_10000792C(v51, v52);
    sub_10000792C(v50, v52);
    sub_1000050C4(&v38, &qword_100221598);
    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_100007C60()
{
  result = qword_100221590;
  if (!qword_100221590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100221590);
  }

  return result;
}

__n128 sub_100007CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100007CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_100007D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100007DB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007E74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeTicket()
{
  result = qword_1002215F8;
  if (!qword_1002215F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007F64()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100007FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10000805C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000083C8(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100008110()
{
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000083C8(&qword_100221260, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000081A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000083C8(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100008258(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

uint64_t sub_100008344(uint64_t a1)
{
  *(a1 + 8) = sub_1000083C8(&qword_100221640, type metadata accessor for DesignTimeTicket);
  result = sub_1000083C8(&qword_100221648, type metadata accessor for DesignTimeTicket);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000083C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008410(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100008428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100008484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000084E4()
{
  result = qword_100221650;
  if (!qword_100221650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221650);
  }

  return result;
}

uint64_t sub_100008544()
{
  v1 = v0[1];
  v2 = 0x4C746E6572727563;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 7105633;
  }

  sub_1000088D0(*v0, v1);
  return v3;
}

uint64_t sub_1000085B4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

Swift::Int sub_100008614()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100008694()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 1;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  Hasher._combine(_:)(2uLL);

  String.hash(into:)();
}

Swift::Int sub_10000871C()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 != 1)
    {
      Hasher._combine(_:)(2uLL);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100008798(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000087EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100008848(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10000887C()
{
  result = qword_100221658;
  if (!qword_100221658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221658);
  }

  return result;
}

uint64_t sub_1000088D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 sub_1000088FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100008910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100008958(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000089D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v69 = sub_1000024C4(&qword_100221660);
  __chkstk_darwin(v69);
  v4 = (&v54 - v3);
  v59 = type metadata accessor for Music();
  v58 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v54 - v7;
  v63 = sub_1000024C4(&qword_100221668);
  __chkstk_darwin(v63);
  v56 = (&v54 - v8);
  v65 = sub_1000024C4(&qword_100221670);
  __chkstk_darwin(v65);
  v67 = &v54 - v9;
  v60 = sub_1000024C4(&qword_100221678);
  __chkstk_darwin(v60);
  v62 = &v54 - v10;
  v66 = sub_1000024C4(&qword_100221680);
  __chkstk_darwin(v66);
  v64 = &v54 - v11;
  v61 = sub_1000024C4(&qword_100221688);
  __chkstk_darwin(v61);
  v13 = (&v54 - v12);
  v14 = sub_1000024C4(&qword_100221690);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = *(v1 + 3);
  v70 = type metadata accessor for PromotionalAssetsFetcher();
  v71 = sub_10000BF90(&qword_100221698, type metadata accessor for PromotionalAssetsFetcher);
  swift_getKeyPath();
  v72[3] = v17;
  sub_10000BFFC(&qword_1002216A0, &qword_1002216A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_10000BEB8(v17 + v18, v16, &qword_100221690);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v58;
      v21 = v57;
      v22 = v59;
      (*(v58 + 32))(v57, v16, v59);
      v23 = v55;
      (*(v20 + 16))(v55, v21, v22);
      type metadata accessor for AppleMusicFetcher();
      v24 = swift_allocObject();
      swift_defaultActor_initialize();
      sub_1000024C4(&qword_1002216B0);
      swift_allocObject();
      v72[0] = sub_10000AD08(v23, v24);
      State.init(wrappedValue:)();
      v25 = *(&v74 + 1);
      *v4 = v74;
      v4[1] = v25;
      type metadata accessor for RemoteViewConfiguration();
      sub_10000BF90(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      v4[2] = EnvironmentObject.init()();
      v4[3] = v26;
      v27 = v69;
      v28 = *(v69 + 56);
      *(v4 + v28) = swift_getKeyPath();
      sub_1000024C4(&qword_1002216C0);
      swift_storeEnumTagMultiPayload();
      v29 = v27[15];
      *(v4 + v29) = swift_getKeyPath();
      sub_1000024C4(&qword_1002216C8);
      swift_storeEnumTagMultiPayload();
      v30 = v27[16];
      *(v4 + v30) = swift_getKeyPath();
      sub_1000024C4(&qword_1002216D0);
      swift_storeEnumTagMultiPayload();
      v31 = v27[17];
      *(v4 + v31) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      sub_10000BEB8(v4, v67, &qword_100221660);
      swift_storeEnumTagMultiPayload();
      sub_10000B9A0();
      sub_10000BFFC(&qword_100221700, &qword_100221660);
      _ConditionalContent<>.init(storage:)();
      sub_1000050C4(v4, &qword_100221660);
      return (*(v20 + 8))(v21, v22);
    }

    *v13 = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v47 = (v13 + *(type metadata accessor for LoadingView() + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_10000BF90(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *v47 = EnvironmentObject.init()();
    v47[1] = v48;
    v49 = *v2;
    v75 = *(v2 + 16);
    v73 = v2[2];
    v74 = v49;
    v50 = swift_allocObject();
    v51 = v2[1];
    v50[1] = *v2;
    v50[2] = v51;
    v50[3] = v2[2];
    v52 = (v13 + *(v61 + 36));
    type metadata accessor for _TaskModifier();
    sub_10000BBE8(&v74, v72);

    sub_10000BEB8(&v73, v72, &qword_100221708);
    static TaskPriority.userInitiated.getter();
    *v52 = &unk_1001B4458;
    v52[1] = v50;
    v44 = &qword_100221688;
    sub_10000BEB8(v13, v62, &qword_100221688);
    swift_storeEnumTagMultiPayload();
    sub_10000BA2C();
    sub_10000BB18();
    v53 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v53, v67, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_10000BFFC(&qword_100221700, &qword_100221660);
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v53, &qword_100221680);
    v46 = v13;
  }

  else
  {
    sub_1000050C4(v16, &qword_100221690);
    KeyPath = swift_getKeyPath();
    v34 = v56;
    *v56 = KeyPath;
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ErrorView();
    v36 = *(v35 + 20);
    *(v34 + v36) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v37 = (v34 + *(v35 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_10000BF90(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *v37 = EnvironmentObject.init()();
    v37[1] = v38;
    v39 = *v2;
    v75 = *(v2 + 16);
    v73 = v2[2];
    v74 = v39;
    v40 = swift_allocObject();
    v41 = v2[1];
    *(v40 + 1) = *v2;
    *(v40 + 2) = v41;
    *(v40 + 3) = v2[2];
    v42 = v62;
    v43 = (v34 + *(v63 + 36));
    *v43 = sub_10000BBE0;
    v43[1] = v40;
    v43[2] = 0;
    v43[3] = 0;
    v44 = &qword_100221668;
    sub_10000BEB8(v34, v42, &qword_100221668);
    swift_storeEnumTagMultiPayload();

    sub_10000BBE8(&v74, v72);
    sub_10000BEB8(&v73, v72, &qword_100221708);
    sub_10000BA2C();
    sub_10000BB18();
    v45 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v45, v67, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_10000BFFC(&qword_100221700, &qword_100221660);
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v45, &qword_100221680);
    v46 = v34;
  }

  return sub_1000050C4(v46, v44);
}

uint64_t sub_1000095B8(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v8 = sub_10000A4BC;
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v6 = sub_100009884;
  }

  else
  {
    v8 = sub_1000099C0;
    v5 = swift_task_alloc();
    v1[4] = v5;
    *v5 = v1;
    v6 = sub_1000096E8;
  }

  v5[1] = v6;

  return v8(v4, v3);
}

uint64_t sub_1000096E8()
{

  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009824);
}

uint64_t sub_100009824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009884()
{

  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C1D8);
}

uint64_t sub_1000099C0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000024C4(&qword_100221710);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_1000024C4(&qword_100221690);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v3[16] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;

  return _swift_task_switch(sub_100009B2C);
}

uint64_t sub_100009B2C()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher();
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_10000BF90(&qword_100221698, type metadata accessor for PromotionalAssetsFetcher);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000BFFC(&qword_1002216A0, &qword_1002216A8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000050C4(v1, &qword_100221690);
  v12 = (*(v5 + 24) + **(v5 + 24));
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_100009DD0;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return v12(v8, v9, v10, v4, v5);
}

uint64_t sub_100009DD0()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10000A210;
  }

  else
  {
    v2 = sub_100009F0C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100009F0C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[14];
  if (v4 == 1)
  {
    v8 = v0[8];
    sub_1000050C4(v0[9], &qword_100221710);
    sub_1000024C4(&qword_100221720);
    sub_10000BFFC(&qword_100221728, &qword_100221720);
    *v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v9 = swift_task_alloc();
    *v9 = v5;
    v9[1] = v6;
    swift_getKeyPath();

    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    v0[4] = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v14 = v0[8];
    (*(v12 + 32))(v11, v0[9], v13);
    (*(v12 + 16))(v7, v11, v13);
    swift_storeEnumTagMultiPayload();
    v15 = swift_task_alloc();
    *v15 = v5;
    v15[1] = v6;
    swift_getKeyPath();

    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = v7;
    v0[5] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v12 + 8))(v11, v13);
  }

  sub_1000050C4(v7, &qword_100221690);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000A210()
{

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch event promotional assets: %@", v4, 0xCu);
    sub_1000050C4(v5, &qword_100221718);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000050C4(v8, &qword_100221690);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000A4BC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000024C4(&qword_100221710);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Music();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = sub_1000024C4(&qword_100221690);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v3[16] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;

  return _swift_task_switch(sub_10000A628);
}

uint64_t sub_10000A628()
{
  v1 = v0[14];
  v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v4 = type metadata accessor for PromotionalAssetsFetcher();
  v0[18] = v4;
  *v3 = v4;
  v5 = sub_10000BF90(&qword_100221698, type metadata accessor for PromotionalAssetsFetcher);
  v0[19] = v5;
  v3[1] = v5;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[20] = *(*v2 + 112);
  v0[2] = v2;
  v0[21] = sub_10000BFFC(&qword_1002216A0, &qword_1002216A8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000050C4(v1, &qword_100221690);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10000A840;
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  return sub_100114024(v8, v9, v10);
}

uint64_t sub_10000A840()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10000A97C;
  }

  else
  {
    v2 = sub_100009F0C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_10000A97C()
{

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch artist promotional assets: %@", v4, 0xCu);
    sub_1000050C4(v5, &qword_100221718);
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 112);
  v9 = *(v0 + 64);
  v13 = *(v0 + 144);

  *v8 = v7;
  swift_storeEnumTagMultiPayload();
  *swift_task_alloc() = v13;
  swift_getKeyPath();

  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v0 + 24) = v9;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000050C4(v8, &qword_100221690);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000AC28(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = *(result + 32);
    if (v1)
    {
      v2 = *result;
      v3 = *(result + 8);

      sub_10015B530(v2, v3, 14, v1);
    }

    else
    {
      type metadata accessor for RemoteViewConfiguration();
      sub_10000BF90(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000AD08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_1000024C4(&qword_100221738);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Music.Artist();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Music();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + *(*v2 + 128)) = 0;
  v15 = (v2 + *(*v2 + 136));
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 144)) = 1;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v16 = (v3 + *(*v3 + 168));
  *v16 = 0u;
  v16[1] = 0u;
  v17 = *(*v2 + 176);
  v18 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  v19 = v3 + *(*v3 + 200);
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v2 + *(*v2 + 208)) = 0;
  v20 = *(*v2 + 216);
  v21 = type metadata accessor for PromotionalContent.Video();
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  ObservationRegistrar.init()();
  v22 = *(v12 + 16);
  v22(v3 + *(*v3 + 112), a1, v11);
  v37 = v14;
  v22(v14, a1, v11);
  Music.lineup.getter();
  v23 = sub_10000BFFC(&qword_100221740, &qword_100221738);
  v24 = (*(v23 + 40))(v5, v23);
  (*(v6 + 8))(v8, v5);
  if (*(v24 + 16))
  {
    v26 = v34;
    v25 = v35;
    v27 = v36;
    (*(v35 + 16))(v34, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v36);

    v28 = Music.Artist.name.getter();
    v30 = v29;
    (*(v25 + 8))(v26, v27);
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  sub_1000024C4(&qword_100221748);
  swift_allocObject();
  v31 = sub_10000B3C8(v37, v28, v30, v38);
  (*(v12 + 8))(a1, v11);
  *(v3 + *(*v3 + 120)) = v31;
  return v3;
}

__n128 sub_10000B2EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10000B2F8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 96);
  swift_beginAccess();
  sub_10000BE48(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10000B370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007EAEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000024C4(&qword_100221750);
  (__chkstk_darwin)();
  v11 = v29 - v10;
  v12 = *(*v5 + 144);
  v13 = type metadata accessor for Playlist();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + *(*v5 + 152)) = 0;
  ObservationRegistrar.init()();
  v14 = *(*v5 + 112);
  v15 = type metadata accessor for Music();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a1, v15);
  v17 = (v5 + *(*v5 + 120));
  *v17 = a2;
  v17[1] = a3;
  *(v5 + *(*v5 + 128)) = a4;
  v18 = Music.playlists.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18;
    v21 = type metadata accessor for Playlist();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v11, v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21);

    (*(v22 + 56))(v11, 0, 1, v21);
  }

  else
  {

    v23 = type metadata accessor for Playlist();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  v24 = v19 != 0;
  v25 = sub_1000050C4(v11, &qword_100221750);
  *(v5 + *(*v5 + 136)) = v24;
  v26 = *(*v5 + 152);
  if ((v24 ^ *(v5 + v26)))
  {
    __chkstk_darwin(v25);
    v29[-4] = v15;
    v29[-3] = type metadata accessor for AppleMusicFetcher();
    v29[-2] = sub_10000BF90(&qword_100221758, &type metadata accessor for Music);
    v29[-1] = sub_10000BF90(&qword_100221760, type metadata accessor for AppleMusicFetcher);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v29[-2] = v5;
    LOBYTE(v29[-1]) = v24;
    v29[1] = v5;
    sub_10000BFFC(&qword_100221768, &qword_100221748);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v16 + 8))(a1, v15);
  }

  else
  {
    (*(v16 + 8))(a1, v15);
    *(v5 + v26) = v24;
  }

  return v5;
}

uint64_t sub_10000B8F4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v2 - 8);
  sub_10000BEB8(a1, &v5 - v3, &qword_100221730);
  return EnvironmentValues.horizontalSizeClass.setter();
}

unint64_t sub_10000B9A0()
{
  result = qword_1002216D8;
  if (!qword_1002216D8)
  {
    sub_10000460C(&qword_100221680);
    sub_10000BA2C();
    sub_10000BB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002216D8);
  }

  return result;
}

unint64_t sub_10000BA2C()
{
  result = qword_1002216E0;
  if (!qword_1002216E0)
  {
    sub_10000460C(&qword_100221688);
    sub_10000BF90(&qword_1002216E8, type metadata accessor for LoadingView);
    sub_10000BF90(&qword_100220CB0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002216E0);
  }

  return result;
}

unint64_t sub_10000BB18()
{
  result = qword_1002216F0;
  if (!qword_1002216F0)
  {
    sub_10000460C(&qword_100221668);
    sub_10000BF90(&qword_1002216F8, type metadata accessor for ErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002216F0);
  }

  return result;
}

uint64_t sub_10000BC20()
{
  sub_10000BBD8();

  return swift_deallocObject();
}

uint64_t sub_10000BC6C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000BD00;

  return sub_1000095B8(v0 + 16);
}

uint64_t sub_10000BD00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000BE10(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BEB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000024C4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000BF20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007EAEC();
  *a1 = result & 1;
  return result;
}

__n128 sub_10000BF84(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10000BF90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BFFC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000C044(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000C058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000C0A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_10000C104()
{
  result = qword_100221770;
  if (!qword_100221770)
  {
    sub_10000460C(&qword_100221778);
    sub_10000B9A0();
    sub_10000BFFC(&qword_100221700, &qword_100221660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221770);
  }

  return result;
}

__n128 sub_10000C1DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C1F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000C210(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_10000C270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v5)
  {
    v6 = v2[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v7)
  {
    v8 = v2[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v9)
  {
    v10 = v2[3];
  }

  else
  {
    v10 = 0;
  }

  v11 = static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v11)
  {
    v12 = v2[4];
  }

  else
  {
    v12 = 0;
  }

  v13 = static Edge.Set.all.getter();
  v14 = sub_1000024C4(&qword_100221780);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_1000024C4(&qword_100221788);
  v16 = a2 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v6;
  *(v16 + 16) = v8;
  *(v16 + 24) = v10;
  *(v16 + 32) = v12;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_10000C408()
{
  result = qword_100221790;
  if (!qword_100221790)
  {
    sub_10000460C(&qword_100221788);
    sub_10000C494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221790);
  }

  return result;
}

unint64_t sub_10000C494()
{
  result = qword_100221798[0];
  if (!qword_100221798[0])
  {
    sub_10000460C(&qword_100221780);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100221798);
  }

  return result;
}

void sub_10000C4FC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000103A0();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

double sub_10000C70C()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_10000C794(double a1)
{
  v3 = *(*v1 + 128);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

uint64_t sub_10000CA70()
{
  v0 = sub_100011140();

  return v0;
}

uint64_t sub_10000CAA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
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
    sub_10000C998();
  }
}

uint64_t sub_10000CC20()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_10000CCA8(char a1)
{
  v3 = *(*v1 + 144);
  sub_100011044();
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
    sub_10000C998();
  }

  return result;
}

double sub_10000CE08()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_10000CE90(double a1)
{
  v3 = *(*v1 + 152);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

double sub_10000CFF4()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_10000D07C(double a1)
{
  v3 = *(*v1 + 160);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

double sub_10000D1E0()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 168));
}

uint64_t sub_10000D270(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *(*v4 + 168));
  sub_100010B88();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v9[3] = a4;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000C998();
  }

  return result;
}

uint64_t sub_10000D3FC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10000C8F8();

  v3 = *(*v1 + 176);
  swift_beginAccess();
  return sub_100010C7C(v1 + v3, a1);
}

uint64_t sub_10000D4AC(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100010C7C(a1, &v6 - v3);
  return sub_10000D540(v4);
}

uint64_t sub_10000D540(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *(v4 + 176);
  swift_beginAccess();
  sub_100010C7C(v1 + v8, v7);
  v9 = *(v4 + 80);
  v15 = *(v4 + 96);
  v16 = v9;
  sub_100010CEC();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = sub_1000103F8(v7);
  if (v10)
  {
    swift_beginAccess();
    sub_100010DC8(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v12 = v15;
    *(&v15 - 2) = v16;
    *(&v15 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_10000C998();
  }

  return sub_1000103F8(a1);
}

uint64_t sub_10000D740(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  sub_100010DC8(a2, a1 + v4);
  return swift_endAccess();
}

double sub_10000D7B8()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 184));
}

uint64_t sub_10000D840(double a1)
{
  v3 = *(*v1 + 184);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

double sub_10000D9A4()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 192));
}

uint64_t sub_10000DA2C(double a1)
{
  v3 = *(*v1 + 192);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

uint64_t sub_10000DB90()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 200));
}

uint64_t sub_10000DC20(uint64_t a1, char a2)
{
  v4 = v2 + *(*v2 + 200);
  v5 = a2 & 1;
  sub_1000024C4(&qword_100221850);
  sub_100011884();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v4 = a1;
    *(v4 + 8) = v5;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000C998();
  }

  return result;
}

double sub_10000DDB4()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 208));
}

uint64_t sub_10000DE3C(double a1)
{
  v3 = *(*v1 + 208);
  sub_100010E88();
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
    sub_10000C998();
  }

  return result;
}

uint64_t sub_10000DFA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10000C8F8();

  v3 = *(*v1 + 216);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10000E10C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 216);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

BOOL sub_10000E258()
{
  v0 = -sub_10000C70C();
  v1 = sub_10000D7B8();
  return v1 + sub_10000D9A4() <= v0;
}

uint64_t sub_10000E380()
{
  v0 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_10000CFF4();
  sub_10000D1E0();
  sub_10000D3FC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000103F8(v2);
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 104))(v7, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_100010D70();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  return (v11)(v9, v3);
}

uint64_t sub_10000E5B8()
{
  v0 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_10000CFF4();
  sub_10000D1E0();
  sub_10000D1E0();
  sub_10000D3FC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000103F8(v2);
  }

  (*(v4 + 32))(v9, v2, v3);
  (*(v4 + 104))(v7, enum case for UserInterfaceSizeClass.compact(_:), v3);
  sub_100010D70();
  dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  return (v11)(v9, v3);
}

uint64_t sub_10000E814()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 104))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_10000E99C()
{
  v1 = *(*v0 + 96);
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

uint64_t sub_10000EBA0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  sub_10000E99C();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v4, AssociatedTypeWitness);
    return v8;
  }
}

uint64_t sub_10000EDCC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v16 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  sub_10000E99C();
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v4, AssociatedTypeWitness);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v9, 1, v6) == 1)
    {
      (*(v16 + 8))(v9, v7);
      return 0;
    }

    else
    {
      v13 = swift_getAssociatedConformanceWitness();
      v14 = (*(v13 + 24))(v6, v13);
      (*(v12 + 8))(v9, v6);
      return v14;
    }
  }
}

uint64_t sub_10000F1DC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v13 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v3);
  v8 = v13 - v7;
  sub_10007E9A8(v5);
  if ((*(v6 + 48))(v5, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v5, v1);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v5, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13[1] = (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v11 = Collection.isEmpty.getter();
    (*(v6 + 8))(v8, AssociatedTypeWitness);

    v9 = v11 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_10000F5CC(void (*a1)(void))
{
  a1();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v1 = Collection.isEmpty.getter();

  return (v1 & 1) == 0;
}

uint64_t sub_10000F6F0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 104))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_10000F878()
{
  v0 = sub_10000F5CC(sub_10000FAE8) && sub_10000F5CC(sub_10000F960);
  if (sub_10000F5CC(sub_10000F6F0) || sub_10000F5CC(sub_10000E814))
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_10000F1DC();
  }

  return v0 & v1 & 1;
}

uint64_t sub_10000F960()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 104))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_10000FAE8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 104))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_10000FC70()
{
  v1 = sub_10000F5CC(sub_10000F6F0) || sub_10000F5CC(sub_10000FAE8) || sub_10000F5CC(sub_10000F960);
  if (sub_10000F5CC(sub_10000E814) || !v1)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(v0 + *(*v0 + 120));
    v3 = *(v2 + *(*v2 + 136)) ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_10000FD68()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v1[4] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v2;

  return _swift_task_switch(sub_10000FE00);
}

uint64_t sub_10000FE00()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10000FEA8;

  return sub_10007EB74();
}

uint64_t sub_10000FEA8()
{

  return _swift_task_switch(sub_100009824);
}

uint64_t sub_10000FFC8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 88);
  if (!v3 || !*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1000FBDA8(5u);
  if ((v5 & 1) == 0)
  {

LABEL_9:
    v9 = *(v2 + *(*v2 + 120));
    return *(v9 + *(*v9 + 136));
  }

  v6 = *(*(v3 + 56) + v4);

  if (v6 > 1 && v6 != 2)
  {

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000100F0(char a1)
{
  if (a1)
  {
    v1 = sub_10000EBA0();
    if (!v2)
    {
      v1 = 0;
      v2 = 0xE000000000000000;
    }
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_10000CAA8(v1, v2);
}

uint64_t sub_100010138()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 80));

  sub_1000103F8(v0 + *(*v0 + 176));
  v1 = *(*v0 + 216);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 224);
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100010330()
{
  sub_100010138();

  return swift_deallocClassInstance();
}

void sub_1000103A0()
{
  if (!qword_100221820)
  {
    type metadata accessor for UserInterfaceSizeClass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100221820);
    }
  }
}

uint64_t sub_1000103F8(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100010460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v4 = *v2;
  v48 = v4;
  v49 = a2;
  v5 = v4[12];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v46 = &v41 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = __chkstk_darwin(v11);
  v44 = &v41 - v13;
  v50 = *(v6 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  *(v3 + v4[16]) = 0;
  v16 = (v3 + *(*v3 + 136));
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v3 + *(*v3 + 144)) = 1;
  *(v3 + *(*v3 + 152)) = 0;
  *(v3 + *(*v3 + 160)) = 0;
  v17 = (v3 + *(*v3 + 168));
  *v17 = 0u;
  v17[1] = 0u;
  v18 = *(*v3 + 176);
  v19 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  *(v3 + *(*v3 + 184)) = 0;
  *(v3 + *(*v3 + 192)) = 0;
  v20 = v3 + *(*v3 + 200);
  *v20 = 0;
  v20[8] = 1;
  *(v3 + *(*v3 + 208)) = 0;
  v21 = *(*v3 + 216);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  ObservationRegistrar.init()();
  v23 = *(v50 + 16);
  v24 = v45;
  v23(v3 + *(*v3 + 112), v45, v6);
  v23(v15, v24, v6);
  v25 = v46;
  v26 = AssociatedTypeWitness;
  (*(v5 + 88))(v6, v5);
  v27 = *(AssociatedConformanceWitness + 40);
  v28 = v25;
  v45 = AssociatedConformanceWitness;
  v29 = AssociatedConformanceWitness;
  v30 = v44;
  v31 = v27(v26, v29);
  (*(v47 + 8))(v28, v26);
  v51 = v31;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v32 = *(v10 - 8);
  if ((*(v32 + 48))(v30, 1, v10) == 1)
  {
    (*(v42 + 8))(v30, v43);
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = swift_getAssociatedConformanceWitness();
    v33 = (*(v35 + 48))(v10, v35);
    v34 = v36;
    (*(v32 + 8))(v30, v10);
  }

  v37 = v48[11];
  v38 = v48[13];
  v51 = v6;
  v52 = v37;
  v53 = v5;
  v54 = v38;
  type metadata accessor for PlaylistController();
  v39 = sub_10007FE6C(v15, v33, v34, v49);
  (*(v50 + 8))(v15, v6);
  *(v3 + *(*v3 + 120)) = v39;
  return v3;
}

unint64_t sub_100010B88()
{
  result = qword_100221828;
  if (!qword_100221828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221828);
  }

  return result;
}

void sub_100010BDC(uint64_t a1@<X8>)
{
  *a1 = sub_10000D1E0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_100010C44(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_100010C50()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 168);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_100010C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010CEC()
{
  result = qword_100221830;
  if (!qword_100221830)
  {
    sub_10000460C(&qword_100221730);
    sub_100010D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221830);
  }

  return result;
}

unint64_t sub_100010D70()
{
  result = qword_100221838;
  if (!qword_100221838)
  {
    type metadata accessor for UserInterfaceSizeClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221838);
  }

  return result;
}

uint64_t sub_100010DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221730);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100010E88()
{
  result = qword_100221840;
  if (!qword_100221840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221840);
  }

  return result;
}

double sub_100010F3C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 160)) = result;
  return result;
}

double sub_100010FC0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 152)) = result;
  return result;
}

uint64_t sub_100010FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000CC20();
  *a1 = result;
  return result;
}

unint64_t sub_100011044()
{
  result = qword_100221848;
  if (!qword_100221848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221848);
  }

  return result;
}

double sub_10001111C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 128)) = result;
  return result;
}

uint64_t sub_100011140()
{
  swift_getKeyPath();
  sub_10000C8F8();

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_1000111CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100011140();
  a1[1] = v2;
}

uint64_t sub_10001120C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10000CAA8(v1, v2);
}

uint64_t sub_100011258()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 136));
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_100011310()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 192)) = result;
  return result;
}

uint64_t sub_100011334(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v20 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = v3[27];
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  v19 = v3[11];
  v11 = v3[13];
  v12 = v21;
  v22 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = (*(v7 + 8))(v9, v6);
  if (v4)
  {
    swift_beginAccess();
    (*(v7 + 24))(v2 + v10, v12, v6);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v13);
    *&v15 = v5;
    *(&v15 + 1) = v19;
    *&v16 = v20;
    *(&v16 + 1) = v11;
    *(&v18 - 2) = v15;
    *(&v18 - 1) = v16;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v12;
    sub_10000C998();
  }
}

double sub_10001170C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 184)) = result;
  return result;
}

uint64_t sub_100011730(uint64_t result)
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
      if (*(v4 - 16) && *(v4 - 16) != 1)
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

double sub_100011860()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + *(**(v0 + 16) + 208)) = result;
  return result;
}

unint64_t sub_100011884()
{
  result = qword_100221858;
  if (!qword_100221858)
  {
    sub_10000460C(&qword_100221850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221858);
  }

  return result;
}

void sub_100011914()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + *(**(v0 + 16) + 200);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t value<A>(iOS:iPadOS:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return a3();
  }

  else
  {
    return a1();
  }
}

uint64_t sub_100011A10(uint64_t *a1, int a2)
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

uint64_t sub_100011A58(uint64_t result, int a2, int a3)
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

Swift::Int sub_100011AAC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10004BD18(v4, v1);
  sub_10004BD18(v4, v2);
  return Hasher._finalize()();
}

void sub_100011B00(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_10004BD18(a1, v3);

  sub_10004BD18(a1, v4);
}

Swift::Int sub_100011B40()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10004BD18(v4, v1);
  sub_10004BD18(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100011B90(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10004A2A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_10004A2A8(v2, v3);
}

unint64_t sub_100011BF0()
{
  result = qword_100221860;
  if (!qword_100221860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221860);
  }

  return result;
}

unint64_t sub_100011C48()
{
  result = qword_100221868;
  if (!qword_100221868)
  {
    type metadata accessor for DesignTimeArtist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221868);
  }

  return result;
}

unint64_t sub_100011CA0(uint64_t a1)
{
  result = sub_100011CC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100011CC8()
{
  result = qword_1002218A0;
  if (!qword_1002218A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002218A0);
  }

  return result;
}

uint64_t sub_100011D1C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000024C4(&qword_1002218A8);
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
  *(v9 + 16) = xmmword_1001B49A0;
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
  sub_100057B70((v10 + v15));
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
  sub_100057B70(&v16[v22]);
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
  sub_100057B70((v26 + v31));
  v25(v26 + v31, 0, 1, v24);
  *v26 = v27;
  v26[1] = v29;
  v26[2] = 0x45206E61766C7953;
  v26[3] = 0xEB000000006F7373;
  v32 = v44;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001B49B0;
  v34 = (v33 + v32);
  UUID.init()();
  UUID.uuidString.getter();
  v18(v3, v51);
  v35 = ResourceID.init(_:)();
  v37 = v36;
  v38 = v30[8];
  sub_100057950((v34 + v38));
  v49(v34 + v38, 0, 1, v48);
  *v34 = v35;
  v34[1] = v37;
  v34[2] = 0x676147207964614CLL;
  v34[3] = 0xE900000000000061;
  return v47;
}

unint64_t sub_100012144()
{
  result = qword_1002218B0;
  if (!qword_1002218B0)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002218B0);
  }

  return result;
}

uint64_t sub_10001219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100012AC8;

  return v13(a1, a2, a3, 0, 0, a4, a5);
}

uint64_t sub_1000122E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_100012310);
}

uint64_t sub_100012310()
{
  v0[7] = type metadata accessor for AppleMusicFetcher();
  v0[8] = swift_allocObject();
  swift_defaultActor_initialize();

  v1 = ResourceID.init(_:)();
  v3 = v2;
  v0[9] = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100012400;
  v5 = v0[2];

  return sub_10009A824(v5, v1, v3);
}

uint64_t sub_100012400()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100012548);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100012548()
{
  v18 = v0;
  v1 = v0[6];

  if (v1)
  {
    v2 = v0[6];
    v3 = qword_100220C90;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000BE10(v4, qword_100239158);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[5];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100139F7C(v7, v2, &v17);
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching fallback promotional playlist. ID: %s", v8, 0xCu);
      sub_100012A7C(v9);
    }

    v0[12] = swift_allocObject();
    swift_defaultActor_initialize();
    v10 = ResourceID.init(_:)();
    v12 = v11;
    v0[13] = v11;
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_1000127B4;
    v14 = v0[2];

    return sub_10009A824(v14, v10, v12);
  }

  else
  {
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000127B4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10001293C;
  }

  else
  {

    v2 = sub_1000128D8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000128D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001293C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000129B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000BD00;

  return sub_1000122E8(a1, a2, a3, a4, a5);
}

uint64_t sub_100012A7C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100012AE0()
{
  result = qword_1002218D8;
  if (!qword_1002218D8)
  {
    type metadata accessor for Artist();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002218D8);
  }

  return result;
}

unint64_t sub_100012B3C()
{
  result = qword_1002218E0;
  if (!qword_1002218E0)
  {
    sub_10000460C(&qword_1002218E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002218E0);
  }

  return result;
}

uint64_t sub_100012BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppleMusicFetcher();
  *(v3 + 16) = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100012C74;

  return sub_100099904(a1, a2, a3);
}

uint64_t sub_100012C74()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100012DB0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100012DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100012E14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = *(a1 - 1);
  v72 = *(v66 + 64);
  __chkstk_darwin(a1);
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationPath();
  v4 = a1[3];
  v5 = type metadata accessor for Array();
  *&v68 = a1[5];
  *&v69 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_10000460C(&qword_1002219C8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = v5;
  v82 = AssociatedTypeWitness;
  v83 = v7;
  v84 = WitnessTable;
  v85 = AssociatedConformanceWitness;
  v10 = type metadata accessor for ForEach();
  v80 = sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
  v11 = swift_getWitnessTable();
  v81 = v10;
  v82 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219D8);
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v13 = swift_getWitnessTable();
  v81 = &type metadata for Never;
  v82 = v12;
  v83 = &protocol witness table for Never;
  v84 = v13;
  v14 = type metadata accessor for List();
  v15 = type metadata accessor for PlainListStyle();
  v16 = swift_getWitnessTable();
  v81 = v14;
  v82 = v15;
  v83 = v16;
  v84 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219E0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v17 = type metadata accessor for VStack();
  v18 = swift_getWitnessTable();
  v81 = v17;
  v82 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = v17;
  v82 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = sub_10000460C(&qword_1002219E8);
  v81 = OpaqueTypeMetadata2;
  v82 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_10000460C(&qword_1002219F0);
  v25 = sub_10000BFFC(&qword_1002219F8, &qword_1002219F0);
  v81 = v24;
  v82 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = v26;
  swift_getOpaqueTypeMetadata2();
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = type metadata accessor for NavigationStack();
  v59 = *(v27 - 8);
  __chkstk_darwin(v27);
  v56 = &v56 - v28;
  v60 = type metadata accessor for ModifiedContent();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v70 = &v56 - v29;
  v62 = type metadata accessor for ModifiedContent();
  v64 = *(v62 - 8);
  v30 = __chkstk_darwin(v62);
  v58 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v61 = &v56 - v32;
  v33 = a1;
  *&v34 = a1[2];
  *(&v34 + 1) = v69;
  v69 = v34;
  *&v35 = a1[4];
  *(&v35 + 1) = v68;
  v68 = v35;
  v73 = v34;
  v74 = v35;
  v36 = v71;
  v75 = v71;
  NavigationStack.init<>(root:)();
  v37 = v66;
  v57 = *(v66 + 16);
  v38 = v65;
  v57(v65, v36, a1);
  v39 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  *(v40 + 16) = v69;
  *(v40 + 32) = v41;
  v66 = *(v37 + 32);
  (v66)(v40 + v39, v38, v33);
  v42 = v27;
  v43 = swift_getWitnessTable();
  v44 = v56;
  View.onAppear(perform:)();

  (*(v59 + 8))(v44, v42);
  v57(v38, v71, v33);
  v45 = swift_allocObject();
  v46 = v68;
  *(v45 + 16) = v69;
  *(v45 + 32) = v46;
  (v66)(v45 + v39, v38, v33);
  v78 = v43;
  v79 = &protocol witness table for _AppearanceActionModifier;
  v47 = v60;
  v48 = swift_getWitnessTable();
  v49 = v58;
  v50 = v70;
  View.onDisappear(perform:)();

  (*(v63 + 8))(v50, v47);
  v76 = v48;
  v77 = &protocol witness table for _AppearanceActionModifier;
  v51 = v62;
  v52 = swift_getWitnessTable();
  v53 = v61;
  sub_1000EE87C(v49, v51, v52);
  v54 = *(v64 + 8);
  v54(v49, v51);
  sub_1000EE87C(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1000137E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a5;
  v83 = a4;
  v82 = a2;
  v89 = a1;
  v87 = a6;
  v86 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  v88 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_10000460C(&qword_1002219C8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v8;
  v102 = AssociatedTypeWitness;
  v103 = v10;
  v104 = WitnessTable;
  v105 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v100 = sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
  v14 = swift_getWitnessTable();
  v101 = v13;
  v102 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219D8);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v16 = swift_getWitnessTable();
  v101 = &type metadata for Never;
  v102 = v15;
  v103 = &protocol witness table for Never;
  v104 = v16;
  v17 = type metadata accessor for List();
  v18 = type metadata accessor for PlainListStyle();
  v19 = swift_getWitnessTable();
  v101 = v17;
  v102 = v18;
  v103 = v19;
  v104 = &protocol witness table for PlainListStyle;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219E0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  v78 = swift_getWitnessTable();
  v20 = type metadata accessor for VStack();
  v80 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  v23 = swift_getWitnessTable();
  v101 = v20;
  v102 = v23;
  v24 = v20;
  v75 = v20;
  v25 = v23;
  v76 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v74 = &v62 - v27;
  v101 = v24;
  v102 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeConformance2;
  v29 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeMetadata2();
  v67 = v30;
  v77 = *(v30 - 8);
  __chkstk_darwin(v30);
  v73 = &v62 - v31;
  v32 = sub_10000460C(&qword_1002219E8);
  v66 = v32;
  v101 = OpaqueTypeMetadata2;
  v102 = v29;
  v33 = swift_getOpaqueTypeConformance2();
  v65 = v33;
  v34 = sub_10000460C(&qword_1002219F0);
  v35 = sub_10000BFFC(&qword_1002219F8, &qword_1002219F0);
  v101 = v34;
  v102 = v35;
  v64 = swift_getOpaqueTypeConformance2();
  v101 = v30;
  v102 = v32;
  v103 = v33;
  v104 = v64;
  v68 = &opaque type descriptor for <<opaque return type of View.toolbar<A>(content:)>>;
  v69 = swift_getOpaqueTypeMetadata2();
  v70 = *(v69 - 8);
  v36 = __chkstk_darwin(v69);
  v62 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v63 = &v62 - v38;
  v39 = v82;
  v95 = v82;
  v96 = v88;
  v40 = v83;
  v41 = v81;
  v97 = v83;
  v98 = v81;
  v99 = v89;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v42 = v85;
  v43 = v84;
  v44 = v86;
  (*(v85 + 104))(v84, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v86);
  v45 = v74;
  v46 = v75;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v42 + 8))(v43, v44);
  (*(v80 + 8))(v22, v46);
  v47 = v88;
  v101 = v39;
  v102 = v88;
  v103 = v40;
  v104 = v41;
  v48 = v41;
  type metadata accessor for TicketViewModel();
  v49 = v89;
  v50 = v73;
  v51 = v71;
  View.navigationTitle(_:)();
  (*(v79 + 8))(v45, v51);
  v90 = v39;
  v91 = v47;
  v92 = v40;
  v93 = v48;
  v94 = v49;
  v52 = v62;
  v53 = v67;
  v54 = v66;
  v55 = v65;
  v56 = v64;
  View.toolbar<A>(content:)();
  (*(v77 + 8))(v50, v53);
  v101 = v53;
  v102 = v54;
  v103 = v55;
  v104 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v63;
  v59 = v69;
  sub_1000EE87C(v52, v69, v57);
  v60 = *(v70 + 8);
  v60(v52, v59);
  sub_1000EE87C(v58, v59, v57);
  return (v60)(v58, v59);
}

uint64_t sub_1000141B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v70 = a1;
  v63 = a4;
  *&v68 = a2;
  v65 = a6;
  OpaqueTypeConformance2 = type metadata accessor for PlainListStyle();
  v64 = *(OpaqueTypeConformance2 - 8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Array();
  *(&v68 + 1) = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_10000460C(&qword_1002219C8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v94 = v8;
  *(&v94 + 1) = AssociatedTypeWitness;
  *&v95 = v10;
  *(&v95 + 1) = WitnessTable;
  *&v96 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ForEach();
  v87[5] = sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
  v14 = swift_getWitnessTable();
  *&v94 = v13;
  *(&v94 + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219D8);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  v57 = swift_getWitnessTable();
  *&v94 = &type metadata for Never;
  *(&v94 + 1) = v15;
  *&v95 = &protocol witness table for Never;
  *(&v95 + 1) = v57;
  v16 = type metadata accessor for List();
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  v19 = swift_getWitnessTable();
  v20 = OpaqueTypeConformance2;
  *&v94 = v16;
  *(&v94 + 1) = OpaqueTypeConformance2;
  *&v95 = v19;
  *(&v95 + 1) = &protocol witness table for PlainListStyle;
  v56 = &opaque type descriptor for <<opaque return type of View.listStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v66 = OpaqueTypeMetadata2;
  v67 = v22;
  v23 = __chkstk_darwin(OpaqueTypeMetadata2);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v60 = &v56 - v26;
  v71 = v68;
  v27 = v63;
  v72 = v63;
  v73 = v69;
  v74 = v70;
  List<>.init(content:)();
  v28 = v62;
  PlainListStyle.init()();
  View.listStyle<A>(_:)();
  v64[1](v28, v20);
  (*(v58 + 8))(v18, v16);
  *&v94 = v16;
  *(&v94 + 1) = v20;
  *&v95 = v19;
  *(&v95 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v25;
  v29 = v66;
  sub_1000EE87C(v25, v66, OpaqueTypeConformance2);
  v30 = *(v67 + 8);
  v62 = (v67 + 8);
  v64 = v30;
  (v30)(v25, v29);
  v94 = v68;
  *&v95 = v27;
  *(&v95 + 1) = v69;
  type metadata accessor for TicketViewModel();

  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  v35 = v34;
  static Font.Weight.regular.getter();
  v36 = Text.fontWeight(_:)();
  v38 = v37;
  LOBYTE(v29) = v39;
  sub_100017398(v31, v33, v35 & 1);

  static Font.footnote.getter();
  v40 = Text.font(_:)();
  v42 = v41;
  LOBYTE(v27) = v43;
  v45 = v44;

  sub_100017398(v36, v38, v29 & 1);

  LOBYTE(v29) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v87[0]) = v27 & 1;
  LOBYTE(v78[0]) = 0;
  *&v88 = v40;
  *(&v88 + 1) = v42;
  LOBYTE(v89) = v27 & 1;
  *(&v89 + 1) = v94;
  DWORD1(v89) = *(&v94 + 3);
  *(&v89 + 1) = v45;
  *&v90 = 0x3FE0000000000000;
  BYTE8(v90) = v29;
  HIDWORD(v90) = *(&v79 + 3);
  *(&v90 + 9) = v79;
  *&v91 = v46;
  *(&v91 + 1) = v47;
  *&v92 = v48;
  *(&v92 + 1) = v49;
  v93 = 0;
  v50 = v66;
  v52 = v59;
  v51 = v60;
  (*(v67 + 16))(v59, v60, v66);
  v85 = 0;
  v86 = 1;
  v87[0] = v52;
  v87[1] = &v85;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v79 = v88;
  v80 = v89;
  v87[2] = &v79;
  sub_10000BEB8(&v88, &v94, &qword_1002219E0);
  v78[0] = v50;
  v78[1] = &type metadata for Spacer;
  v78[2] = sub_1000024C4(&qword_1002219E0);
  v75 = OpaqueTypeConformance2;
  v76 = &protocol witness table for Spacer;
  v77 = sub_1000173A8();
  sub_1000E76FC(v87, 3uLL, v78);
  sub_1000050C4(&v88, &qword_1002219E0);
  v53 = v51;
  v54 = v64;
  (v64)(v53, v50);
  v96 = v81;
  v97 = v82;
  v98 = v83;
  v99 = v84;
  v94 = v79;
  v95 = v80;
  sub_1000050C4(&v94, &qword_1002219E0);
  return (v54)(v52, v50);
}

uint64_t sub_10001496C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v113 = a4;
  v118 = a1;
  v108 = a6;
  v10 = sub_1000024C4(&qword_1002219C8);
  v117 = v10;
  v107 = *(v10 - 8);
  __chkstk_darwin(v10);
  v86 = &v78 - v11;
  v102 = type metadata accessor for Optional();
  v99 = *(v102 - 8);
  v12 = __chkstk_darwin(v102);
  v100 = &v78 - v13;
  v110 = *(a2 - 8);
  v14 = __chkstk_darwin(v12);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v15;
  __chkstk_darwin(v14);
  v103 = &v78 - v16;
  v104 = sub_1000024C4(&qword_1002219D8);
  v17 = __chkstk_darwin(v104);
  v106 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v78 - v19;
  v122 = a2;
  v123 = a3;
  v124 = a4;
  v125 = a5;
  v111 = type metadata accessor for TicketView();
  v20 = *(v111 - 8);
  v101 = *(v20 + 64);
  __chkstk_darwin(v111);
  v109 = &v78 - v21;
  v22 = type metadata accessor for Array();
  v94 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = AssociatedTypeWitness;
  v97 = v22;
  WitnessTable = swift_getWitnessTable();
  v95 = WitnessTable;
  v112 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = v22;
  v123 = AssociatedTypeWitness;
  v124 = v10;
  v125 = WitnessTable;
  v126 = AssociatedConformanceWitness;
  v26 = type metadata accessor for ForEach();
  v98 = *(v26 - 8);
  __chkstk_darwin(v26);
  v93 = &v78 - v27;
  v91 = sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
  v121[2] = v91;
  v90 = swift_getWitnessTable();
  v122 = v26;
  v123 = v90;
  v92 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v114 = *(OpaqueTypeMetadata2 - 8);
  v28 = __chkstk_darwin(OpaqueTypeMetadata2);
  v30 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v115 = &v78 - v31;
  v88 = a2;
  v122 = a2;
  v123 = a3;
  v32 = v113;
  v124 = v113;
  v125 = a5;
  v33 = a5;
  v89 = type metadata accessor for TicketViewModel();
  v34 = v118;
  v122 = sub_100159C68();
  v35 = *(v20 + 16);
  v36 = v109;
  v37 = v111;
  v80 = v20 + 16;
  v78 = v35;
  v35(v109, v34, v111);
  v38 = *(v20 + 80);
  v39 = (v38 + 48) & ~v38;
  v79 = &v101[v39];
  v81 = v38 | 7;
  v40 = swift_allocObject();
  v41 = v112;
  *(v40 + 2) = a2;
  *(v40 + 3) = v41;
  *(v40 + 4) = v32;
  *(v40 + 5) = v33;
  v87 = v33;
  v42 = *(v20 + 32);
  v82 = v39;
  v83 = v20 + 32;
  v42(&v40[v39], v36, v37);
  v76 = v94;
  v43 = v93;
  ForEach<>.init(_:content:)();
  static VerticalEdge.Set.top.getter();
  v44 = v90;
  View.listSectionSeparator(_:edges:)();
  v45 = v100;
  v98[1](v43, v26);
  v122 = v26;
  v123 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = OpaqueTypeMetadata2;
  sub_1000EE87C(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = v114 + 8;
  v48 = *(v114 + 8);
  v101 = v30;
  v98 = v48;
  (v48)(v30, v47);
  v50 = v102;
  v51 = v99;
  v52 = v118;
  (*(v99 + 2))(v45, v118 + *(v89 + 52), v102);
  v53 = v110;
  v54 = v88;
  if ((*(v110 + 48))(v45, 1) == 1)
  {
    (*(v51 + 1))(v45, v50);
    v55 = v105;
    (*(v107 + 56))(v105, 1, 1, v117);
  }

  else
  {
    v99 = v42;
    v97 = *(v53 + 32);
    v56 = v103;
    v97(v103, v45, v54);
    v102 = v49;
    v57 = v109;
    v58 = v111;
    v78(v109, v52, v111);
    v59 = v85;
    (*(v53 + 16))(v85, v56, v54);
    v60 = &v79[*(v53 + 80)] & ~*(v53 + 80);
    v61 = swift_allocObject();
    v63 = v112;
    v62 = v113;
    *(v61 + 2) = v54;
    *(v61 + 3) = v63;
    v100 = OpaqueTypeConformance2;
    v64 = v87;
    *(v61 + 4) = v62;
    *(v61 + 5) = v64;
    v99(&v61[v82], v57, v58);
    v65 = (v97)(&v61[v60], v59, v54);
    __chkstk_darwin(v65);
    *(&v78 - 6) = v54;
    *(&v78 - 5) = v63;
    *(&v78 - 4) = v62;
    *(&v78 - 3) = v64;
    OpaqueTypeConformance2 = v100;
    v66 = v103;
    v76 = v118;
    v77 = v103;
    sub_100017CCC();
    v67 = v86;
    Button.init(action:label:)();
    v68 = v107;
    v55 = v105;
    v69 = v117;
    (*(v107 + 32))(v105, v67, v117);
    (*(v68 + 56))(v55, 0, 1, v69);
    (*(v110 + 8))(v66, v54);
  }

  v70 = v115;
  v71 = v101;
  v72 = OpaqueTypeMetadata2;
  (*(v114 + 16))(v101, v115, OpaqueTypeMetadata2);
  v122 = v71;
  v73 = v106;
  sub_10000BEB8(v55, v106, &qword_1002219D8);
  v123 = v73;
  v121[0] = v72;
  v121[1] = v104;
  v119 = OpaqueTypeConformance2;
  v120 = sub_100017814();
  sub_1000E76FC(&v122, 2uLL, v121);
  sub_1000050C4(v55, &qword_1002219D8);
  v74 = v98;
  (v98)(v70, v72);
  sub_1000050C4(v73, &qword_1002219D8);
  return (v74)(v71, v72);
}

uint64_t sub_1000154E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v31 = a4;
  v32 = a5;
  v29 = a1;
  v30 = a2;
  v33 = a6;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v27 = v10;
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v10;
  v40 = v11;
  v12 = v10;
  v41 = v13;
  v42 = v14;
  v15 = type metadata accessor for TicketView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  (*(v16 + 16))(&v26 - v18, v30, v15);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v12;
  *(v22 + 3) = a3;
  v23 = v31;
  v24 = v32;
  *(v22 + 4) = v31;
  *(v22 + 5) = v24;
  (*(v16 + 32))(&v22[v20], v19, v15);
  (*(v8 + 32))(&v22[v21], v28, a3);
  v34 = v27;
  v35 = a3;
  v36 = v23;
  v37 = v24;
  v38 = v29;
  sub_100017CCC();
  return Button.init(action:label:)();
}

uint64_t sub_100015748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = type metadata accessor for URL();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v17 = type metadata accessor for TicketView();
  sub_100039C90(v16);
  (*(a6 + 40))(a4, a6);
  OpenURLAction.callAsFunction(_:)();
  (*(v11 + 8))(v13, v27);
  (*(v14 + 8))(v16, v25);
  v18 = (*(a6 + 32))(a4, a6);
  v20 = *(a1 + *(v17 + 52));
  if (v20)
  {
    v21 = v18;
    v22 = v19;

    v30 = v28;
    v31 = a4;
    v32 = v29;
    v33 = a6;
    type metadata accessor for TicketViewModel();
    sub_100159D18(v21, v22, v20);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000159D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a2;
  v27 = type metadata accessor for URL();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OpenURLAction();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v31 = a4;
  v28 = a4;
  v29 = a6;
  v32 = a5;
  v33 = a6;
  v17 = type metadata accessor for TicketView();
  sub_100039C90(v16);
  (*(a5 + 24))(a3, a5);
  OpenURLAction.callAsFunction(_:)();
  (*(v11 + 8))(v13, v27);
  (*(v14 + 8))(v16, v25);
  v18 = (*(a5 + 16))(a3, a5);
  v20 = *(a1 + *(v17 + 52));
  if (v20)
  {
    v21 = v18;
    v22 = v19;

    v30 = a3;
    v31 = v28;
    v32 = a5;
    v33 = v29;
    type metadata accessor for TicketViewModel();
    sub_100159D18(v21, v22, v20);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100015C58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  type metadata accessor for TicketViewModel();
  sub_1000024C4(&qword_100221A38);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001B49B0;
  v7 = (*(a2 + 16))(a1, a2);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100017D20();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  result = String.init(format:_:)();
  *a3 = result;
  a3[1] = v11;
  return result;
}

uint64_t sub_100015D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000024C4(&qword_1002219F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16[-v13];
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  sub_1000024C4(&qword_100221A00);
  sub_10000BFFC(&qword_100221A08, &qword_100221A00);
  ToolbarItem<>.init(placement:content:)();
  sub_10000BFFC(&qword_1002219F8, &qword_1002219F0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100015F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v18 = a4;
  type metadata accessor for TicketView();
  sub_100039CB8(v17);
  v19 = *(v12 + 32);
  v19(v15, v17, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v19((v21 + v20), v15, v11);
  v27 = a2;
  v28 = v24;
  v29 = v18;
  v30 = v25;
  v31 = a1;
  return Button.init(action:label:)();
}

uint64_t sub_10001611C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TicketViewModel();

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000161D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v7 = *(a1 + *(type metadata accessor for TicketView() + 52));
  if (v7)
  {

    v8 = type metadata accessor for TicketViewModel();
    a6(v7, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000162A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TicketViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for TicketView();
  v6 = (a2 + v5[13]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100016404();
  *v6 = EnvironmentObject.init()();
  v6[1] = v7;
  v8 = v5[14];
  *(a2 + v8) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);
  swift_storeEnumTagMultiPayload();
  v9 = v5[15];
  *(a2 + v9) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100016404()
{
  result = qword_1002216B8;
  if (!qword_1002216B8)
  {
    type metadata accessor for RemoteViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002216B8);
  }

  return result;
}

uint64_t sub_100016460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v21 = 1;
  sub_1000165B8(a1, a2, &v15);
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v22 = v15;
  v27[1] = v16;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[0] = v15;
  sub_10000BEB8(&v22, v14, &qword_100221A48);
  sub_1000050C4(v27, &qword_100221A48);
  *&v20[23] = v23;
  *&v20[39] = v24;
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[7] = v22;
  LOBYTE(a1) = v21;
  LOBYTE(a2) = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  v8 = *&v20[48];
  *(a3 + 49) = *&v20[32];
  *(a3 + 65) = v8;
  *(a3 + 81) = *&v20[64];
  v9 = *&v20[16];
  *(a3 + 17) = *v20;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 96) = *&v20[79];
  *(a3 + 33) = v9;
  *(a3 + 104) = a2;
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  *(a3 + 128) = v12;
  *(a3 + 136) = v13;
  *(a3 + 144) = 0;
  return result;
}

uint64_t sub_1000165B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000024C4(&qword_100221A50);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v30 = a1;
  v31 = a2;
  sub_10001877C();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.callout.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v28 = v17;
  v19 = v18;

  sub_100017398(v9, v11, v13 & 1);

  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  v21 = Image.symbolRenderingMode(_:)();

  sub_1000050C4(v8, &qword_100221A50);
  v22 = static Color.blue.getter();
  v23 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v25 = v28 & 1;
  LOBYTE(v30) = v28 & 1;
  v29 = 1;
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v25;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = v23;
  sub_1000187D8(v14, v16, v25);

  sub_100017398(v14, v16, v25);
}

void sub_100016808()
{
  type metadata accessor for TicketViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_1000170A8(319, &qword_1002219B8, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000170A8(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100016900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v26 = *(a3 + 16);
  v5 = *(v26 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(type metadata accessor for DismissAction() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v27 = v10;
  v11 = *(type metadata accessor for OpenURLAction() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  if (v6)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_37;
  }

  v15 = (((((((((((v14 + *(v5 + 64) + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + ((v27 + v17 + ((v16 + v15 + 16) & ~v16) + 1) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v22 < 2)
    {
LABEL_37:
      if ((v7 & 0x80000000) != 0)
      {
        v25 = (*(v5 + 48))((a1 + v13 + 16) & ~v13, v6, v26);
        if (v25 >= 2)
        {
          return v25 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_37;
  }

LABEL_26:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v8 + (v18 | v23) + 1;
}

void sub_100016C0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v34 = v6;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for DismissAction() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = type metadata accessor for OpenURLAction();
  v13 = v7;
  v14 = 0;
  v15 = *(v12 - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  v17 = *(v6 + 80);
  if (v13)
  {
    v18 = *(v6 + 64);
  }

  else
  {
    v18 = *(v6 + 64) + 1;
  }

  v19 = *(v10 + 80) & 0xF8 | 7;
  v20 = *(v15 + 80) & 0xF8 | 7;
  v21 = v16 + ((v11 + v20 + ((v19 + ((((((((((((v18 + ((v17 + 16) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v19) + 1) & ~v20) + 1;
  if (a3 <= v9)
  {
    goto LABEL_27;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v9 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v14 = 4;
      if (v9 >= a2)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v14 = v23;
    }

    else
    {
      v14 = 0;
    }

LABEL_27:
    if (v9 >= a2)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v14 = 1;
  if (v9 >= a2)
  {
LABEL_37:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v21] = 0;
    }

    else if (v14)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

LABEL_44:
      if ((v8 & 0x80000000) != 0)
      {
        v27 = ~v17;
        v28 = &a1[v17 + 16];
        v29 = (v28 & v27);
        if (v8 >= a2)
        {
          v33 = *(v34 + 56);

          v33(v28 & v27, a2 + 1);
        }

        else
        {
          if (v18 <= 3)
          {
            v30 = ~(-1 << (8 * v18));
          }

          else
          {
            v30 = -1;
          }

          if (v18)
          {
            v31 = v30 & (~v8 + a2);
            if (v18 <= 3)
            {
              v32 = v18;
            }

            else
            {
              v32 = 4;
            }

            bzero(v29, v18);
            if (v32 > 2)
            {
              if (v32 == 3)
              {
                *v29 = v31;
                v29[2] = BYTE2(v31);
              }

              else
              {
                *v29 = v31;
              }
            }

            else if (v32 == 1)
            {
              *v29 = v31;
            }

            else
            {
              *v29 = v31;
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

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_28:
  v24 = ~v9 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v14 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_65:
    if (v14 > 1)
    {
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_65;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v14 > 1)
    {
LABEL_69:
      if (v14 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v14 > 1)
    {
      goto LABEL_69;
    }
  }

LABEL_66:
  if (v14)
  {
    a1[v21] = v25;
  }
}

void sub_100017044()
{
  if (!qword_1002219B0)
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1002219B0);
    }
  }
}

void sub_1000170A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10001718C(void (*a1)(uint64_t, uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for TicketView() - 8);
  return sub_1000161D0(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_100017274()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100017398(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000173A8()
{
  result = qword_100221A10;
  if (!qword_100221A10)
  {
    sub_10000460C(&qword_1002219E0);
    sub_100017434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A10);
  }

  return result;
}

unint64_t sub_100017434()
{
  result = qword_100221A18;
  if (!qword_100221A18)
  {
    sub_10000460C(&qword_100221A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A18);
  }

  return result;
}

uint64_t sub_1000174B8()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TicketView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(type metadata accessor for TicketViewModel() + 52);
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  v6 = *(v2 + 56);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v2 + 60);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100017758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for TicketView() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_1000154E0(a1, v9, v5, v6, v7, a2);
}

unint64_t sub_100017814()
{
  result = qword_100221A28;
  if (!qword_100221A28)
  {
    sub_10000460C(&qword_1002219D8);
    sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A28);
  }

  return result;
}

uint64_t sub_1000178C4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for TicketView();
  v3 = *(*(v2 - 8) + 80);
  v13 = *(*(v2 - 8) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v3 + 48) & ~v3);

  v7 = *(type metadata accessor for TicketViewModel() + 52);
  if (!(*(v4 + 48))(v6 + v7, 1, v1))
  {
    (*(v4 + 8))(v6 + v7, v1);
  }

  v8 = *(v2 + 56);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = *(v2 + 60);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((((v3 + 48) & ~v3) + v13 + v5) & ~v5), v1);
  return swift_deallocObject();
}

uint64_t sub_100017BC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TicketView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1000159D0(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_100017CCC()
{
  result = qword_100221A30;
  if (!qword_100221A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A30);
  }

  return result;
}

unint64_t sub_100017D20()
{
  result = qword_100221A40;
  if (!qword_100221A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A40);
  }

  return result;
}

uint64_t sub_100017D74()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for TicketView();
  v16 = *(*(v3 - 8) + 80);
  v14 = *(*(v3 - 8) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v15 = (v16 + 48) & ~v16;
  v6 = v0 + v15;

  v7 = *(type metadata accessor for TicketViewModel() + 52);
  v8 = *(v2 - 8);
  if (!(*(v8 + 48))(v0 + v15 + v7, 1, v2))
  {
    (*(v8 + 8))(v6 + v7, v2);
  }

  v9 = *(v3 + 56);
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = *(v3 + 60);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v15 + v14 + v5) & ~v5), v1);
  return swift_deallocObject();
}

uint64_t sub_10001809C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TicketView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((v6 + *(v5 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_100015748(v0 + v6, v7, v1, v2, v3, v4);
}

uint64_t sub_100018194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 40) + 32))(*(v1 + 24));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000181D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001821C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100018268()
{
  type metadata accessor for NavigationPath();
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_1002219C8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_10000BFFC(&qword_1002219D0, &qword_1002219C8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219D8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  type metadata accessor for PlainListStyle();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219E0);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002219E8);
  swift_getOpaqueTypeConformance2();
  sub_10000460C(&qword_1002219F0);
  sub_10000BFFC(&qword_1002219F8, &qword_1002219F0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10001877C()
{
  result = qword_100221A58;
  if (!qword_100221A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A58);
  }

  return result;
}

uint64_t sub_1000187D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000187EC()
{
  result = qword_100221A60;
  if (!qword_100221A60)
  {
    sub_10000460C(&qword_100221A68);
    sub_10000BFFC(&qword_100221A70, &qword_100221A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A60);
  }

  return result;
}

uint64_t sub_1000188B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000188D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000188EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100018934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000189B4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100221A80);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_1000024C4(&qword_100221A88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if (*(v1 + 32) == 1)
  {
    v12 = static VerticalAlignment.top.getter();
  }

  else
  {
    v12 = static VerticalAlignment.center.getter();
  }

  *v7 = v12;
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v13 = sub_1000024C4(&qword_100221A90);
  sub_100018C80(v1, &v7[*(v13 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v14 = sub_10000BFFC(&qword_100221A98, &qword_100221A80);
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v4, v18);
  sub_1000050C4(v7, &qword_100221A80);
  v20 = v5;
  v21 = v14;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100018C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000024C4(&qword_100221AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_1000024C4(&qword_100221AA8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - v11;
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_1000024C4(&qword_100221AB0);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  sub_10000BEB8(a1 + 40, &v34 - v20, &qword_100221AB8);
  v22 = type metadata accessor for ArtistImage();
  v23 = *(v22 + 20);
  *&v21[v23] = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v24 = &v21[*(v22 + 24)];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v21[*(v16 + 44)] = 1;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v25 = sub_1000024C4(&qword_100221AC0);
  sub_100019050(a1, &v5[*(v25 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v5, v12, &qword_100221AA0);
  v26 = &v12[*(v7 + 44)];
  v27 = v41;
  *(v26 + 4) = v40;
  *(v26 + 5) = v27;
  *(v26 + 6) = v42;
  v28 = v37;
  *v26 = v36;
  *(v26 + 1) = v28;
  v29 = v39;
  *(v26 + 2) = v38;
  *(v26 + 3) = v29;
  sub_10001AE00(v12, v14, &qword_100221AA8);
  sub_10000BEB8(v21, v19, &qword_100221AB0);
  v30 = v34;
  sub_10000BEB8(v14, v34, &qword_100221AA8);
  v31 = v35;
  sub_10000BEB8(v19, v35, &qword_100221AB0);
  v32 = sub_1000024C4(&qword_100221AC8);
  sub_10000BEB8(v30, v31 + *(v32 + 48), &qword_100221AA8);
  sub_1000050C4(v14, &qword_100221AA8);
  sub_1000050C4(v21, &qword_100221AB0);
  sub_1000050C4(v30, &qword_100221AA8);
  return sub_1000050C4(v19, &qword_100221AB0);
}

uint64_t sub_100019050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000024C4(&qword_100221AD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = sub_1000024C4(&qword_100221AD8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000024C4(&qword_100221AE0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v37 - v18;
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0x4000000000000000;
  v19[16] = 0;
  v20 = sub_1000024C4(&qword_100221AE8);
  sub_10001947C(a1, &v19[*(v20 + 44)]);
  if (*(a1 + 32) == 1)
  {
    v21 = LocalizedStringKey.init(stringLiteral:)();
    v39 = a2;
    v23 = v22;
    v25 = v24;
    v38 = v4;
    v27 = v26;
    v28 = static Edge.Set.bottom.getter();
    v37 = v7;
    v29 = v28;
    EdgeInsets.init(_all:)();
    v44 = 0;
    *&v40 = v21;
    *(&v40 + 1) = v23;
    LOBYTE(v41) = v25 & 1;
    *(&v41 + 1) = v27;
    LOBYTE(v42) = v29;
    *(&v42 + 1) = v30;
    *v43 = v31;
    *&v43[8] = v32;
    *&v43[16] = v33;
    v43[24] = 0;
    sub_1000024C4(&qword_100221AF8);
    sub_10001AD20();
    v34 = v37;
    a2 = v39;
    View.accessibilityIdentifier(_:)();
    v46[0] = *v43;
    *(v46 + 9) = *&v43[9];
    v45[1] = v41;
    v45[2] = v42;
    v45[0] = v40;
    sub_1000050C4(v45, &qword_100221AF8);
    sub_10001AE00(v34, v13, &qword_100221AD0);
    (*(v5 + 56))(v13, 0, 1, v38);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_10000BEB8(v19, v17, &qword_100221AE0);
  sub_10000BEB8(v13, v11, &qword_100221AD8);
  sub_10000BEB8(v17, a2, &qword_100221AE0);
  v35 = sub_1000024C4(&qword_100221AF0);
  sub_10000BEB8(v11, a2 + *(v35 + 48), &qword_100221AD8);
  sub_1000050C4(v13, &qword_100221AD8);
  sub_1000050C4(v19, &qword_100221AE0);
  sub_1000050C4(v11, &qword_100221AD8);
  return sub_1000050C4(v17, &qword_100221AE0);
}

uint64_t sub_10001947C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000024C4(&qword_100221B10);
  v4 = __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_1000024C4(&qword_100221B18);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_1000024C4(&qword_100221B20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 8) = 0x4010000000000000;
  *(v10 + 16) = 0;
  v17 = sub_1000024C4(&qword_100221B28);
  sub_100019840(a1, (v10 + *(v17 + 44)));
  sub_10000BFFC(&qword_100221B30, &qword_100221B18);
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v10, &qword_100221B18);
  v18 = *a1;
  v19 = a1[1];
  v34 = v18;
  v35 = v19;
  sub_10001877C();

  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v34 = v20;
  v35 = v22;
  v36 = v10 & 1;
  v37 = v25;
  v38 = KeyPath;
  v39 = 1;
  v40 = 0;
  sub_1000024C4(&qword_100221B38);
  sub_10001B3F8();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v20, v22, v10 & 1);

  sub_10000BEB8(v16, v14, &qword_100221B20);
  v27 = v32;
  sub_10000BEB8(v7, v32, &qword_100221B10);
  v28 = v33;
  sub_10000BEB8(v14, v33, &qword_100221B20);
  v29 = sub_1000024C4(&qword_100221B58);
  sub_10000BEB8(v27, v28 + *(v29 + 48), &qword_100221B10);
  sub_1000050C4(v7, &qword_100221B10);
  sub_1000050C4(v16, &qword_100221B20);
  sub_1000050C4(v27, &qword_100221B10);
  return sub_1000050C4(v14, &qword_100221B20);
}

uint64_t sub_100019840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000024C4(&qword_100221B60);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v44 = Image.init(systemName:)();
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  v43 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v40 = objc_opt_self();
  v10 = [v40 secondaryLabelColor];
  v41 = Color.init(uiColor:)();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v46 = v11;
  v47 = v12;
  sub_10001877C();

  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v38 = v19;
  v39 = v20;
  v22 = v21;

  sub_100017398(v13, v15, v17 & 1);

  v23 = &v9[*(sub_1000024C4(&qword_100221B68) + 36)];
  v24 = *(sub_1000024C4(&qword_100221B70) + 28);
  v25 = enum case for Text.Case.uppercase(_:);
  v26 = type metadata accessor for Text.Case();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23 + v24, v25, v26);
  (*(v27 + 56))(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  v28 = v38;
  *v9 = v18;
  *(v9 + 1) = v28;
  v9[16] = v22 & 1;
  v29 = v40;
  *(v9 + 3) = v39;
  v30 = [v29 secondaryLabelColor];
  *&v9[*(v5 + 44)] = Color.init(uiColor:)();
  v31 = v45;
  sub_10000BEB8(v9, v45, &qword_100221B60);
  v32 = v43;
  v34 = v41;
  v33 = KeyPath;
  *a2 = v44;
  a2[1] = v33;
  a2[2] = v32;
  a2[3] = v34;
  v35 = sub_1000024C4(&qword_100221B78);
  sub_10000BEB8(v31, a2 + *(v35 + 48), &qword_100221B60);

  sub_1000050C4(v9, &qword_100221B60);
  sub_1000050C4(v31, &qword_100221B60);
}

uint64_t type metadata accessor for ArtistImage()
{
  result = qword_100221BE0;
  if (!qword_100221BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BEB8(v1, v23, &qword_100221AB8);
  v7 = v24;
  if (!v24)
  {
    sub_1000050C4(v23, &qword_100221AB8);
    v19 = type metadata accessor for URL();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  v8 = v25;
  v21 = sub_10001BED0(v23, v24);
  result = type metadata accessor for ArtistImage();
  v10 = v1 + *(result + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 == 1)
  {
    v13 = *v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v13 = v22;
  }

  v15 = v13 * 56.0;
  if (COERCE__INT64(fabs(v13 * 56.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v16 = *&v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v11, 0);
    result = (*(v4 + 8))(v6, v3);
    v16 = v22;
  }

  v18 = v16 * 56.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v18 < 9.22337204e18)
  {
    (*(v8 + 32))(v15, v18, v7, v8);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    return sub_100012A7C(v23);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10001A004@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ArtistImage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34[-v6 - 8];
  v8 = sub_1000024C4(&qword_100221CA8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34[-v10 - 8];
  sub_100019C2C(v7);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_10001BAB4(v1, &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_10001BC68(&v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v13 + v12);
  sub_1000024C4(&qword_100221CB0);
  sub_10001BD4C();
  AsyncImage.init(url:scale:transaction:content:)();
  sub_10000BFFC(&qword_100221CF0, &qword_100221CA8);
  v14 = v33;
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (v14 + *(sub_1000024C4(&qword_100221CF8) + 36));
  v16 = v35;
  *v15 = *&v34[88];
  v15[1] = v16;
  v15[2] = v36;
  v17 = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v18 = v37;
  LODWORD(v9) = v38;
  LODWORD(v7) = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = static Alignment.center.getter();
  v27 = v26;
  *&v43 = v18;
  *(&v43 + 1) = __PAIR64__(v7, v9);
  *&v44 = v19;
  *(&v44 + 1) = v20;
  *&v45 = v21;
  *(&v45 + 1) = v17 | 0x3DCCCCCD00000000;
  LOWORD(v46) = 256;
  *(&v46 + 1) = v22;
  *&v47 = v24;
  *(&v47 + 1) = v25;
  v48 = v26;
  v28 = sub_1000024C4(&qword_100221D00);
  v29 = v33 + *(v28 + 36);
  v30 = v46;
  *(v29 + 32) = v45;
  *(v29 + 48) = v30;
  *(v29 + 64) = v47;
  *(v29 + 80) = v48;
  v31 = v44;
  *v29 = v43;
  *(v29 + 16) = v31;
  v49 = v18;
  v50 = v9;
  v51 = v7;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v17;
  v56 = 1036831949;
  v57 = 256;
  v58 = v22;
  v59 = v24;
  v60 = v25;
  v61 = v27;
  sub_10000BEB8(&v43, v34, &qword_100221D08);
  return sub_1000050C4(&v49, &qword_100221D08);
}

double sub_10001A434@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    *&v38 = v12;
    WORD4(v38) = 256;
    sub_10001BEC8(&v38);
    v49 = v42;
    v50 = v43;
    v51[0] = v44[0];
    *(v51 + 9) = *(v44 + 9);
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    swift_retain_n();
    sub_1000024C4(&qword_100221CC8);
    sub_1000024C4(&qword_100221CE8);
    sub_10001BE04();
    sub_10000BFFC(&qword_100221CE0, &qword_100221CE8);
    _ConditionalContent<>.init(storage:)();

    v49 = v35;
    v50 = v36;
    v51[0] = v37[0];
    *(v51 + 9) = *(v37 + 9);
    v45 = v31;
    v46 = v32;
    v13 = v33;
    v14 = v34;
  }

  else
  {
    v15 = static Alignment.center.getter();
    v17 = v16;
    sub_10001A924(&v45);
    v26 = v49;
    v27 = v50;
    v28 = *&v51[0];
    v22 = v45;
    v23 = v46;
    v24 = v47;
    v25 = v48;
    v29[0] = v45;
    v29[1] = v46;
    v29[2] = v47;
    v29[3] = v48;
    v29[4] = v49;
    v29[5] = v50;
    v30 = *&v51[0];
    sub_10000BEB8(&v22, &v38, &qword_100221D10);
    sub_1000050C4(v29, &qword_100221D10);
    v36 = v26;
    v37[0] = v27;
    *&v37[1] = v28;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    *&v31 = v15;
    *(&v31 + 1) = v17;
    sub_10001BEBC(&v31);
    v49 = v35;
    v50 = v36;
    v51[0] = v37[0];
    *(v51 + 9) = *(v37 + 9);
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    sub_1000024C4(&qword_100221CC8);
    sub_1000024C4(&qword_100221CE8);
    sub_10001BE04();
    sub_10000BFFC(&qword_100221CE0, &qword_100221CE8);
    _ConditionalContent<>.init(storage:)();
    (*(v9 + 8))(v11, v8);
    v49 = v42;
    v50 = v43;
    v51[0] = v44[0];
    *(v51 + 9) = *(v44 + 9);
    v45 = v38;
    v46 = v39;
    v13 = v40;
    v14 = v41;
  }

  v47 = v13;
  v48 = v14;
  v18 = v50;
  a2[4] = v49;
  a2[5] = v18;
  a2[6] = v51[0];
  *(a2 + 105) = *(v51 + 9);
  v19 = v46;
  *a2 = v45;
  a2[1] = v19;
  result = *&v47;
  v21 = v48;
  a2[2] = v47;
  a2[3] = v21;
  return result;
}

double sub_10001A924@<D0>(uint64_t a1@<X8>)
{
  v33 = type metadata accessor for Image.ResizingMode();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  sub_1000024C4(&qword_100221D18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001B3B50;
  type metadata accessor for ArtistImage();
  sub_100039EE0(v11);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  v13 = static ColorScheme.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  v15 = objc_opt_self();
  v16 = &selRef_systemGray6Color;
  if ((v13 & 1) == 0)
  {
    v16 = &selRef_systemGray4Color;
  }

  v17 = [v15 *v16];
  *(v12 + 32) = Color.init(uiColor:)();
  v18 = objc_opt_self();
  v19 = [v18 systemGray5Color];
  *(v12 + 40) = Color.init(uiColor:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v20 = v34;
  Image.init(systemName:)();
  v21 = *(v2 + 104);
  v32 = v35;
  v31 = v36;
  v22 = v33;
  v21(v4, enum case for Image.ResizingMode.stretch(_:), v33);
  v23 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v22);
  v24 = [v18 tertiaryLabelColor];
  v25 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  *a1 = v20;
  *(a1 + 24) = v31;
  *(a1 + 8) = v32;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;
  *(a1 + 56) = v26;
  *(a1 + 64) = v27;
  *(a1 + 72) = v28;
  *(a1 + 80) = v29;
  result = v41[0];
  *(a1 + 88) = *v41;
  return result;
}

unint64_t sub_10001AD20()
{
  result = qword_100221B00;
  if (!qword_100221B00)
  {
    sub_10000460C(&qword_100221AF8);
    sub_10001ADAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221B00);
  }

  return result;
}

unint64_t sub_10001ADAC()
{
  result = qword_100221B08;
  if (!qword_100221B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221B08);
  }

  return result;
}

uint64_t sub_10001AE00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000024C4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001AE6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v2 = sub_1000024C4(&qword_100221C58);
  sub_10001B080(a1 + *(v2 + 44));
  v3 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_1000024C4(&qword_100221C60) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(sub_1000024C4(&qword_100221C68) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  v23 = [objc_opt_self() secondarySystemBackgroundColor];
  v24 = Color.init(_:)();
  v25 = static Edge.Set.all.getter();
  v26 = a1 + *(sub_1000024C4(&qword_100221C70) + 36);
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = (a1 + *(sub_1000024C4(&qword_100221C78) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #6.0 }

  *v27 = _Q0;
  result = sub_1000024C4(&qword_100221C80);
  *&v27[*(result + 36)] = 256;
  return result;
}

uint64_t sub_10001B080@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1000024C4(&qword_100221C88);
  v2 = __chkstk_darwin(v1 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v28 = &v28 - v4;
  v5 = Image.init(_:bundle:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = v5;
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_1000024C4(&qword_100221C90);
  sub_10001BA30();
  View.accessibilityHidden(_:)();

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;

  sub_100017398(v6, v8, v10 & 1);

  v31 = static Color.blue.getter();
  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100017398(v11, v13, v15 & 1);

  v24 = v28;
  v23 = v29;
  sub_10000BEB8(v28, v29, &qword_100221C88);
  v25 = v30;
  sub_10000BEB8(v23, v30, &qword_100221C88);
  v26 = v25 + *(sub_1000024C4(&qword_100221CA0) + 48);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20 & 1;
  *(v26 + 24) = v22;
  sub_1000187D8(v16, v18, v20 & 1);

  sub_1000050C4(v24, &qword_100221C88);
  sub_100017398(v16, v18, v20 & 1);

  return sub_1000050C4(v23, &qword_100221C88);
}

unint64_t sub_10001B3F8()
{
  result = qword_100221B40;
  if (!qword_100221B40)
  {
    sub_10000460C(&qword_100221B38);
    sub_10000BFFC(&qword_100221B48, &qword_100221B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221B40);
  }

  return result;
}

uint64_t sub_10001B4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001B508(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001B56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000024C4(&qword_100221B80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10001B648(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_1000024C4(&qword_100221B80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001B6F8()
{
  sub_10001B794();
  if (v0 <= 0x3F)
  {
    sub_10001B7F8();
    if (v1 <= 0x3F)
    {
      sub_10001B850();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001B794()
{
  if (!qword_100221BF0)
  {
    sub_10000460C(&qword_100221BF8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100221BF0);
    }
  }
}

void sub_10001B7F8()
{
  if (!qword_100221C00)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100221C00);
    }
  }
}

void sub_10001B850()
{
  if (!qword_100221C08)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100221C08);
    }
  }
}

unint64_t sub_10001B8A4()
{
  result = qword_100221C40;
  if (!qword_100221C40)
  {
    sub_10000460C(&qword_100221C48);
    sub_10000460C(&qword_100221A80);
    sub_10000BFFC(&qword_100221A98, &qword_100221A80);
    swift_getOpaqueTypeConformance2();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C40);
  }

  return result;
}

unint64_t sub_10001B9A0()
{
  result = qword_100221C50;
  if (!qword_100221C50)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C50);
  }

  return result;
}

unint64_t sub_10001BA30()
{
  result = qword_100221C98;
  if (!qword_100221C98)
  {
    sub_10000460C(&qword_100221C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221C98);
  }

  return result;
}

uint64_t sub_10001BAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BB18()
{
  v1 = type metadata accessor for ArtistImage();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100012A7C(v0 + v2);
  }

  v4 = *(v1 + 20);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_10001BC5C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10001BC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10001BCCC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ArtistImage();

  return sub_10001A434(a1, a2);
}

unint64_t sub_10001BD4C()
{
  result = qword_100221CB8;
  if (!qword_100221CB8)
  {
    sub_10000460C(&qword_100221CB0);
    sub_10001BE04();
    sub_10000BFFC(&qword_100221CE0, &qword_100221CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221CB8);
  }

  return result;
}

unint64_t sub_10001BE04()
{
  result = qword_100221CC0;
  if (!qword_100221CC0)
  {
    sub_10000460C(&qword_100221CC8);
    sub_10000BFFC(&qword_100221CD0, &qword_100221CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221CC0);
  }

  return result;
}

void *sub_10001BED0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10001BF18()
{
  result = qword_100221D20;
  if (!qword_100221D20)
  {
    sub_10000460C(&qword_100221C78);
    sub_10001BFD0();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D20);
  }

  return result;
}

unint64_t sub_10001BFD0()
{
  result = qword_100221D28;
  if (!qword_100221D28)
  {
    sub_10000460C(&qword_100221C70);
    sub_10001C088();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D28);
  }

  return result;
}

unint64_t sub_10001C088()
{
  result = qword_100221D30;
  if (!qword_100221D30)
  {
    sub_10000460C(&qword_100221C68);
    sub_10001C114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D30);
  }

  return result;
}

unint64_t sub_10001C114()
{
  result = qword_100221D38;
  if (!qword_100221D38)
  {
    sub_10000460C(&qword_100221C60);
    sub_10000BFFC(&qword_100221D40, &qword_100221D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D38);
  }

  return result;
}

unint64_t sub_10001C1D0()
{
  result = qword_100221D68;
  if (!qword_100221D68)
  {
    sub_10000460C(&qword_100221D00);
    sub_10001C288();
    sub_10000BFFC(&qword_100221D88, &qword_100221D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D68);
  }

  return result;
}

unint64_t sub_10001C288()
{
  result = qword_100221D70;
  if (!qword_100221D70)
  {
    sub_10000460C(&qword_100221CF8);
    sub_10001C314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D70);
  }

  return result;
}

unint64_t sub_10001C314()
{
  result = qword_100221D78;
  if (!qword_100221D78)
  {
    sub_10000460C(&qword_100221D80);
    sub_10000BFFC(&qword_100221CF0, &qword_100221CA8);
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D78);
  }

  return result;
}

unint64_t sub_10001C3D4(uint64_t a1)
{
  result = sub_10001C3FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001C3FC()
{
  result = qword_100221D90;
  if (!qword_100221D90)
  {
    type metadata accessor for EventAttribution();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221D90);
  }

  return result;
}

uint64_t sub_10001C454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001C49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001C534(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10001C5FC@<X0>(uint64_t a1@<X8>)
{
  v233 = a1;
  v222 = type metadata accessor for ErrorView();
  __chkstk_darwin(v222);
  v174 = (&v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = sub_1000024C4(&qword_100221D98);
  __chkstk_darwin(v176);
  v178 = &v172 - v3;
  v220 = sub_1000024C4(&qword_100221DA0);
  __chkstk_darwin(v220);
  v179 = &v172 - v4;
  v177 = sub_1000024C4(&qword_100221DA8);
  __chkstk_darwin(v177);
  v173 = (&v172 - v5);
  v183 = type metadata accessor for Theater();
  v182 = *(v183 - 8);
  v6 = __chkstk_darwin(v183);
  v172 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v175 = &v172 - v8;
  v194 = sub_1000024C4(&qword_100221DB0);
  __chkstk_darwin(v194);
  v181 = (&v172 - v9);
  v189 = type metadata accessor for Sport();
  v188 = *(v189 - 8);
  v10 = __chkstk_darwin(v189);
  v180 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v187 = &v172 - v12;
  v190 = sub_1000024C4(&qword_100221DB8);
  __chkstk_darwin(v190);
  v192 = &v172 - v13;
  v214 = sub_1000024C4(&qword_100221DC0);
  __chkstk_darwin(v214);
  v193 = &v172 - v14;
  v15 = sub_1000024C4(&qword_100221710);
  __chkstk_darwin(v15 - 8);
  v185 = &v172 - v16;
  v191 = sub_1000024C4(&qword_100221DC8);
  __chkstk_darwin(v191);
  v186 = (&v172 - v17);
  v199 = type metadata accessor for Music();
  v198 = *(v199 - 8);
  v18 = __chkstk_darwin(v199);
  v184 = &v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = &v172 - v20;
  v209 = sub_1000024C4(&qword_100221DD0);
  __chkstk_darwin(v209);
  v197 = (&v172 - v21);
  v207 = type metadata accessor for Dance();
  v206 = *(v207 - 8);
  v22 = __chkstk_darwin(v207);
  v196 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v202 = &v172 - v24;
  v216 = sub_1000024C4(&qword_100221DD8);
  __chkstk_darwin(v216);
  v218 = &v172 - v25;
  v210 = sub_1000024C4(&qword_100221DE0);
  __chkstk_darwin(v210);
  v212 = &v172 - v26;
  v204 = sub_1000024C4(&qword_100221DE8);
  __chkstk_darwin(v204);
  v205 = &v172 - v27;
  v211 = sub_1000024C4(&qword_100221DF0);
  __chkstk_darwin(v211);
  v208 = &v172 - v28;
  v217 = sub_1000024C4(&qword_100221DF8);
  __chkstk_darwin(v217);
  v213 = &v172 - v29;
  v203 = sub_1000024C4(&qword_100221E00);
  __chkstk_darwin(v203);
  v201 = (&v172 - v30);
  v224 = type metadata accessor for Art();
  v223 = *(v224 - 8);
  v31 = __chkstk_darwin(v224);
  v200 = &v172 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v215 = &v172 - v33;
  v232 = sub_1000024C4(&qword_100221E08);
  __chkstk_darwin(v232);
  v219 = &v172 - v34;
  v35 = sub_1000024C4(&qword_100221E10);
  v36 = __chkstk_darwin(v35);
  v221 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v229 = &v172 - v38;
  v227 = sub_1000024C4(&qword_100221668);
  __chkstk_darwin(v227);
  v40 = (&v172 - v39);
  v231 = sub_1000024C4(&qword_100221E18);
  __chkstk_darwin(v231);
  v234 = &v172 - v41;
  v225 = sub_1000024C4(&qword_100221678);
  __chkstk_darwin(v225);
  v43 = &v172 - v42;
  v230 = sub_1000024C4(&qword_100221680);
  __chkstk_darwin(v230);
  v45 = &v172 - v44;
  v226 = sub_1000024C4(&qword_100221688);
  __chkstk_darwin(v226);
  v47 = (&v172 - v46);
  v48 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v48);
  v50 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = v1;
  v51 = *(v1 + 16);
  swift_getKeyPath();
  v236 = v51;
  sub_10001FAEC(&qword_100221E20, type metadata accessor for EventController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = OBJC_IVAR____TtC16EventViewService15EventController__state;
  swift_beginAccess();
  sub_10001F74C(v51 + v52, v50, type metadata accessor for EventController.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v54 = v229;
      sub_10001AE00(v50, v229, &qword_100221E10);
      v55 = v35[12];
      v56 = v35[16];
      v57 = v35[20];
      v58 = v35[24];
      v59 = v221;
      sub_10000BEB8(v54, v221, &qword_100221E28);
      sub_10000BEB8(v54 + v55, v59 + v55, &qword_100221E30);
      sub_10000BEB8(v54 + v56, v59 + v56, &qword_100221710);
      sub_10000BEB8(v54 + v57, v59 + v57, &qword_100221E38);
      sub_10000BEB8(v58 + v54, v58 + v59, &qword_100221E40);
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
        sub_1000024C4(&qword_100221EB8);
        swift_allocObject();
        v226 = v55;
        v102 = sub_10001FBC0(v101, &type metadata accessor for Art);
        KeyPath = swift_getKeyPath();
        *&v237 = v102;
        State.init(wrappedValue:)();
        v104 = *(&v238 + 1);
        v105 = v201;
        *v201 = v238;
        v105[1] = v104;
        type metadata accessor for RemoteViewConfiguration();
        sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
        v105[2] = EnvironmentObject.init()();
        v105[3] = v106;
        v107 = v203;
        v108 = *(v203 + 40);
        *(v105 + v108) = swift_getKeyPath();
        sub_1000024C4(&qword_1002216C0);
        swift_storeEnumTagMultiPayload();
        v109 = v105 + *(v107 + 44);
        *v109 = KeyPath;
        v109[8] = 0;
        sub_10000BEB8(v105, v205, &qword_100221E00);
        swift_storeEnumTagMultiPayload();
        sub_10000BFFC(&qword_100221E60, &qword_100221E00);
        v110 = v59;
        sub_10000BFFC(&qword_100221E68, &qword_100221DD0);
        v111 = v208;
        _ConditionalContent<>.init(storage:)();
        sub_10000BEB8(v111, v212, &qword_100221DF0);
        swift_storeEnumTagMultiPayload();
        sub_10001F840();
        sub_10001F920();
        v112 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v111, &qword_100221DF0);
        sub_10000BEB8(v112, v218, &qword_100221DF8);
        swift_storeEnumTagMultiPayload();
        sub_10001F7B4();
        sub_10001FA04();
        v113 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v112, &qword_100221DF8);
        sub_1000050C4(v105, &qword_100221E00);
        (*(v223 + 8))(v215, v224);
        sub_1000050C4(v228 + v110, &qword_100221E40);
        sub_1000050C4(v110 + v227, &qword_100221E38);
        sub_1000050C4(v110 + v56, &qword_100221710);
        v81 = &qword_100221E30;
        v114 = v110 + v226;
        v80 = v113;
LABEL_18:
        sub_1000050C4(v114, v81);
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
        sub_1000024C4(&qword_100221EB0);
        swift_allocObject();
        v117 = sub_10001FBC0(v116, &type metadata accessor for Dance);
        v118 = swift_getKeyPath();
        *&v237 = v117;
        State.init(wrappedValue:)();
        v119 = *(&v238 + 1);
        v120 = v197;
        *v197 = v238;
        v120[1] = v119;
        type metadata accessor for RemoteViewConfiguration();
        sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
        v120[2] = EnvironmentObject.init()();
        v120[3] = v121;
        v122 = v209;
        v123 = *(v209 + 40);
        *(v120 + v123) = swift_getKeyPath();
        sub_1000024C4(&qword_1002216C0);
        swift_storeEnumTagMultiPayload();
        v124 = v120 + *(v122 + 44);
        *v124 = v118;
        v124[8] = 0;
        sub_10000BEB8(v120, v205, &qword_100221DD0);
        swift_storeEnumTagMultiPayload();
        sub_10000BFFC(&qword_100221E60, &qword_100221E00);
        sub_10000BFFC(&qword_100221E68, &qword_100221DD0);
        v125 = v208;
        _ConditionalContent<>.init(storage:)();
        sub_10000BEB8(v125, v212, &qword_100221DF0);
        swift_storeEnumTagMultiPayload();
        sub_10001F840();
        sub_10001F920();
        v126 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v125, &qword_100221DF0);
        sub_10000BEB8(v126, v218, &qword_100221DF8);
        swift_storeEnumTagMultiPayload();
        sub_10001F7B4();
        sub_10001FA04();
        v80 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v126, &qword_100221DF8);
        sub_1000050C4(v120, &qword_100221DD0);
        (*(v206 + 8))(v202, v207);
        sub_1000050C4(v228 + v59, &qword_100221E40);
        sub_1000050C4(v59 + v227, &qword_100221E38);
        sub_1000050C4(v59 + v56, &qword_100221710);
        sub_1000050C4(v59, &qword_100221E28);
LABEL_19:
        sub_10000BEB8(v80, v66, &qword_100221E08);
        swift_storeEnumTagMultiPayload();
        sub_10000B9A0();
        sub_10001FB34();
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v80, &qword_100221E08);
        v92 = &qword_100221E10;
        v91 = v229;
        return sub_1000050C4(v91, v92);
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
            sub_1000024C4(&qword_1002216C0);
            swift_storeEnumTagMultiPayload();
            v75 = v222;
            v76 = *(v222 + 20);
            *(v74 + v76) = swift_getKeyPath();
            sub_1000024C4(&qword_1002216C8);
            swift_storeEnumTagMultiPayload();
            v77 = (v74 + *(v75 + 24));
            type metadata accessor for RemoteViewConfiguration();
            sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
            *v77 = EnvironmentObject.init()();
            v77[1] = v78;
            sub_10001F74C(v74, v178, type metadata accessor for ErrorView);
            swift_storeEnumTagMultiPayload();
            sub_10000BFFC(&qword_100221E48, &qword_100221DA8);
            sub_10001FAEC(&qword_1002216F8, type metadata accessor for ErrorView);
            v79 = v179;
            _ConditionalContent<>.init(storage:)();
            sub_10000BEB8(v79, v218, &qword_100221DA0);
            swift_storeEnumTagMultiPayload();
            sub_10001F7B4();
            sub_10001FA04();
            v80 = v219;
            _ConditionalContent<>.init(storage:)();
            sub_1000050C4(v79, &qword_100221DA0);
            sub_1000206F8(v74, type metadata accessor for ErrorView);
            v81 = &qword_100221E10;
LABEL_17:
            v114 = v59;
            goto LABEL_18;
          }

          v158 = v58 + v59;
          v159 = v175;
          (*(v71 + 32))(v175, v158, v72);
          v160 = v172;
          (*(v71 + 16))(v172, v159, v72);
          sub_1000024C4(&qword_100221E98);
          swift_allocObject();
          v161 = sub_10001FBC0(v160, &type metadata accessor for Theater);
          v162 = swift_getKeyPath();
          *&v237 = v161;
          State.init(wrappedValue:)();
          v163 = *(&v238 + 1);
          v164 = v173;
          *v173 = v238;
          v164[1] = v163;
          type metadata accessor for RemoteViewConfiguration();
          sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
          v164[2] = EnvironmentObject.init()();
          v164[3] = v165;
          v166 = v177;
          v167 = *(v177 + 40);
          *(v164 + v167) = swift_getKeyPath();
          sub_1000024C4(&qword_1002216C0);
          swift_storeEnumTagMultiPayload();
          v168 = v164 + *(v166 + 44);
          *v168 = v162;
          v168[8] = 0;
          sub_10000BEB8(v164, v178, &qword_100221DA8);
          swift_storeEnumTagMultiPayload();
          sub_10000BFFC(&qword_100221E48, &qword_100221DA8);
          sub_10001FAEC(&qword_1002216F8, type metadata accessor for ErrorView);
          v169 = v179;
          _ConditionalContent<>.init(storage:)();
          sub_10000BEB8(v169, v218, &qword_100221DA0);
          swift_storeEnumTagMultiPayload();
          sub_10001F7B4();
          sub_10001FA04();
          v170 = v219;
          _ConditionalContent<>.init(storage:)();
          sub_1000050C4(v169, &qword_100221DA0);
          sub_1000050C4(v164, &qword_100221DA8);
          (*(v182 + 8))(v175, v183);
          sub_1000050C4(v59 + v227, &qword_100221E38);
          sub_1000050C4(v59 + v56, &qword_100221710);
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
          sub_1000024C4(&qword_100221EA0);
          swift_allocObject();
          v147 = sub_10001F0EC(v146);
          v148 = swift_getKeyPath();
          *&v237 = v147;
          State.init(wrappedValue:)();
          v149 = *(&v238 + 1);
          v150 = v181;
          *v181 = v238;
          v150[1] = v149;
          type metadata accessor for RemoteViewConfiguration();
          sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
          v150[2] = EnvironmentObject.init()();
          v150[3] = v151;
          v152 = v194;
          v153 = *(v194 + 40);
          *(v150 + v153) = swift_getKeyPath();
          sub_1000024C4(&qword_1002216C0);
          swift_storeEnumTagMultiPayload();
          v154 = v150 + *(v152 + 44);
          *v154 = v148;
          v154[8] = 0;
          sub_10000BEB8(v150, v192, &qword_100221DB0);
          swift_storeEnumTagMultiPayload();
          sub_10000BFFC(&qword_100221E78, &qword_100221DC8);
          sub_10000BFFC(&qword_100221E80, &qword_100221DB0);
          v155 = v193;
          _ConditionalContent<>.init(storage:)();
          sub_10000BEB8(v155, v212, &qword_100221DC0);
          swift_storeEnumTagMultiPayload();
          sub_10001F840();
          sub_10001F920();
          v156 = v213;
          _ConditionalContent<>.init(storage:)();
          sub_1000050C4(v155, &qword_100221DC0);
          sub_10000BEB8(v156, v218, &qword_100221DF8);
          swift_storeEnumTagMultiPayload();
          sub_10001F7B4();
          sub_10001FA04();
          v157 = v219;
          _ConditionalContent<>.init(storage:)();
          sub_1000050C4(v156, &qword_100221DF8);
          sub_1000050C4(v150, &qword_100221DB0);
          (*(v188 + 8))(v187, v189);
          sub_1000050C4(v228 + v59, &qword_100221E40);
          sub_1000050C4(v59 + v56, &qword_100221710);
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
        sub_1000024C4(&qword_100221EA8);
        swift_allocObject();
        v131 = sub_10001FEEC(v129, v130);
        v132 = swift_getKeyPath();
        *&v237 = v131;
        State.init(wrappedValue:)();
        v133 = *(&v238 + 1);
        v134 = v186;
        *v186 = v238;
        v134[1] = v133;
        type metadata accessor for RemoteViewConfiguration();
        sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
        v134[2] = EnvironmentObject.init()();
        v134[3] = v135;
        v136 = v191;
        v137 = *(v191 + 72);
        *(v134 + v137) = swift_getKeyPath();
        sub_1000024C4(&qword_1002216C0);
        swift_storeEnumTagMultiPayload();
        v138 = *(v136 + 76);
        *(v134 + v138) = swift_getKeyPath();
        sub_1000024C4(&qword_1002216C8);
        swift_storeEnumTagMultiPayload();
        v139 = v134 + *(v136 + 80);
        *v139 = v132;
        v139[8] = 0;
        sub_10000BEB8(v134, v192, &qword_100221DC8);
        swift_storeEnumTagMultiPayload();
        sub_10000BFFC(&qword_100221E78, &qword_100221DC8);
        sub_10000BFFC(&qword_100221E80, &qword_100221DB0);
        v140 = v193;
        _ConditionalContent<>.init(storage:)();
        sub_10000BEB8(v140, v212, &qword_100221DC0);
        swift_storeEnumTagMultiPayload();
        sub_10001F840();
        sub_10001F920();
        v141 = v213;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v140, &qword_100221DC0);
        sub_10000BEB8(v141, v218, &qword_100221DF8);
        swift_storeEnumTagMultiPayload();
        sub_10001F7B4();
        sub_10001FA04();
        v142 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_1000050C4(v141, &qword_100221DF8);
        sub_1000050C4(v134, &qword_100221DC8);
        (*(v198 + 8))(v195, v199);
        sub_1000050C4(v228 + v59, &qword_100221E40);
        sub_1000050C4(v59 + v227, &qword_100221E38);
        v143 = v59 + v55;
        v80 = v142;
      }

      sub_1000050C4(v143, &qword_100221E30);
      v81 = &qword_100221E28;
      goto LABEL_17;
    }

    *v47 = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v93 = (v47 + *(type metadata accessor for LoadingView() + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
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
    sub_100020764(&v238, v235);

    sub_10000BEB8(&v237, v235, &qword_100221708);
    static TaskPriority.userInitiated.getter();
    *v99 = &unk_1001B54A8;
    v99[1] = v97;
    sub_10000BEB8(v47, v43, &qword_100221688);
    swift_storeEnumTagMultiPayload();
    sub_10000BA2C();
    sub_10000BB18();
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v45, v234, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_10001FB34();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v45, &qword_100221680);
    v91 = v47;
    v92 = &qword_100221688;
  }

  else
  {
    sub_1000206F8(v50, type metadata accessor for EventController.State);
    *v40 = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v82 = v222;
    v83 = *(v222 + 20);
    *(v40 + v83) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v84 = (v40 + *(v82 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
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
    *v90 = sub_10002075C;
    v90[1] = v88;
    v90[2] = 0;
    v90[3] = 0;
    sub_10000BEB8(v40, v43, &qword_100221668);
    swift_storeEnumTagMultiPayload();

    sub_100020764(&v238, v235);
    sub_10000BEB8(&v237, v235, &qword_100221708);
    sub_10000BA2C();
    sub_10000BB18();
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v45, v234, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_10001FB34();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v45, &qword_100221680);
    v91 = v40;
    v92 = &qword_100221668;
  }

  return sub_1000050C4(v91, v92);
}

uint64_t sub_10001EF6C(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_1000096E8;

  return sub_1000ABD58(v3, v4);
}

uint64_t sub_10001F02C(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_10015B530(v2, v3, 6, v1);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F0EC(uint64_t a1)
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
  sub_10002089C(&v31, v30);
  sub_100006C2C(v35);
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
  v15._object = 0x80000001001C4970;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

  *v12 = v17;
  v18 = (v1 + *(*v1 + 176));
  v19 = [v13 mainBundle];
  v37._object = 0xE000000000000000;
  v20._object = 0x80000001001C49C0;
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
  v25._object = 0x80000001001C49F0;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v38);

  *v23 = v27;
  ObservationRegistrar.init()();
  (*(v4 + 32))(v1 + *(*v1 + 144), a1, v3);
  return v1;
}