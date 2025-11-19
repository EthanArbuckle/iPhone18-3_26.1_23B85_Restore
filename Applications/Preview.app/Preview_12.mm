uint64_t sub_10015E04C(uint64_t a1)
{
  v2 = sub_10015E9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E088(uint64_t a1)
{
  v2 = sub_10015E974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015E0C4(uint64_t a1)
{
  v2 = sub_10015E974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E100(uint64_t a1)
{
  v2 = sub_10015E920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015E13C(uint64_t a1)
{
  v2 = sub_10015E920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E178(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_1000FF5D8(&qword_10020F0C0);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_1000FF5D8(&qword_10020F0C8);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000FF5D8(&qword_10020F0D0);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_1000FF5D8(&qword_10020F0D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_100140DC8(a1, a1[3]);
  sub_10015E8CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_10015E974();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_10015E920();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_10015E9C8();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_10015E510@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015EB4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10015E594(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10015E5DC(double a1)
{
  if (fabs(a1 + -1.0) >= 0.01)
  {
    if (qword_10020D0A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_10020D0A0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
}

Swift::Int sub_10015E6D0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10015E718()
{
  sub_10015E870(v0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);

  return swift_deallocClassInstance();
}

uint64_t sub_10015E77C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == *(a2 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) && *(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == *(a2 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10015E7B0(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  v3 = (*a2 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  if (*v2 == *v3 && v2[1] == v3[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10015E80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewActionSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015E870(uint64_t a1)
{
  v2 = type metadata accessor for PreviewActionSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015E8CC()
{
  result = qword_10020F0E0;
  if (!qword_10020F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F0E0);
  }

  return result;
}

unint64_t sub_10015E920()
{
  result = qword_10020F0E8;
  if (!qword_10020F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F0E8);
  }

  return result;
}

unint64_t sub_10015E974()
{
  result = qword_10020F0F0;
  if (!qword_10020F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F0F0);
  }

  return result;
}

unint64_t sub_10015E9C8()
{
  result = qword_10020F0F8;
  if (!qword_10020F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F0F8);
  }

  return result;
}

uint64_t sub_10015EA1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D4577656ELL && a2 == 0xED00006567616D49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001001B79F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E61635377656ELL && a2 == 0xEF746E656D75636FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10015EB4C(void *a1)
{
  v31 = sub_1000FF5D8(&qword_10020F808);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v26 - v2;
  v32 = sub_1000FF5D8(&qword_10020F810);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_1000FF5D8(&qword_10020F818);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000FF5D8(&qword_10020F820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_100140DC8(a1, v12);
  sub_10015E8CC();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1001387A0();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_10015E974();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10010FA4C(v35);
          return v9;
        }

        v40 = 2;
        sub_10015E920();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_10015E9C8();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(sub_1000FF5D8(&qword_10020E3C0) + 48);
    *v22 = &type metadata for NewDocumentAction.Subtype;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  sub_10010FA4C(v35);
  return v9;
}

unint64_t sub_10015F0C0()
{
  result = qword_10020F100;
  if (!qword_10020F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F100);
  }

  return result;
}

unint64_t sub_10015F118()
{
  result = qword_10020F108;
  if (!qword_10020F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F108);
  }

  return result;
}

unint64_t sub_10015F170()
{
  result = qword_10020F110;
  if (!qword_10020F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F110);
  }

  return result;
}

unint64_t sub_10015F1C8()
{
  result = qword_10020F118;
  if (!qword_10020F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F118);
  }

  return result;
}

unint64_t sub_10015F220()
{
  result = qword_10020F120;
  if (!qword_10020F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F120);
  }

  return result;
}

uint64_t sub_10015F29C()
{
  result = type metadata accessor for PreviewActionSpec(319);
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

uint64_t sub_10015F3C0()
{
  result = swift_checkMetadataState();
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

uint64_t initializeBufferWithCopyOfBuffer for GoToAction.Subtype(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GoToAction.Subtype(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GoToAction.Subtype(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10015F614(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015F630(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_10015F6AC()
{
  result = qword_10020F7C0;
  if (!qword_10020F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7C0);
  }

  return result;
}

unint64_t sub_10015F704()
{
  result = qword_10020F7C8;
  if (!qword_10020F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7C8);
  }

  return result;
}

unint64_t sub_10015F75C()
{
  result = qword_10020F7D0;
  if (!qword_10020F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7D0);
  }

  return result;
}

unint64_t sub_10015F7B4()
{
  result = qword_10020F7D8;
  if (!qword_10020F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7D8);
  }

  return result;
}

unint64_t sub_10015F80C()
{
  result = qword_10020F7E0;
  if (!qword_10020F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7E0);
  }

  return result;
}

unint64_t sub_10015F864()
{
  result = qword_10020F7E8;
  if (!qword_10020F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7E8);
  }

  return result;
}

unint64_t sub_10015F8BC()
{
  result = qword_10020F7F0;
  if (!qword_10020F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7F0);
  }

  return result;
}

unint64_t sub_10015F914()
{
  result = qword_10020F7F8;
  if (!qword_10020F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F7F8);
  }

  return result;
}

unint64_t sub_10015F96C()
{
  result = qword_10020F800;
  if (!qword_10020F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020F800);
  }

  return result;
}

id sub_10015F9E8()
{
  v0 = objc_opt_self();
  result = [v0 isPrintingAvailable];
  if (result)
  {
    URL._bridgeToObjectiveC()(v2);
    v4 = v3;
    v5 = [v0 canPrintURL:v3];

    return v5;
  }

  return result;
}

void sub_10015FA50()
{
  v0 = [objc_opt_self() sharedPrintController];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 setPrintingItem:v2];

  v5[4] = sub_10015FB44;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10015FCD0;
  v5[3] = &unk_1001F90F8;
  v4 = _Block_copy(v5);
  [v0 presentAnimated:1 completionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_10015FB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_1000FF5D8(&qword_10020F828);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10019A9F0;
    swift_errorRetain();
    _StringGuts.grow(_:)(49);
    v5._object = 0x80000001001B7A80;
    v5._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v5);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    *(v4 + 56) = &type metadata for String;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

  else
  {
  }
}

void sub_10015FCD0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_10015FD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015FD7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10015FDC0()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v8 = sub_1001607C0();
  static DispatchQoS.utility.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10016080C(&qword_10020F9A8, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000FF5D8(&qword_10020F9B0);
  sub_100160854(&qword_10020F9B8, &qword_10020F9B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v10;
  *(v10 + 16) = v5;
  return v6;
}

uint64_t sub_10016001C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UnownedJob.init(_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v0;
  aBlock[4] = sub_100160738;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015FD7C;
  aBlock[3] = &unk_1001F9148;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10016080C(&qword_10020F980, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000FF5D8(&qword_10020F988);
  sub_100160854(&qword_10020F990, &qword_10020F988);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

uint64_t sub_10016033C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_10016080C(&qword_10020F978, a2, type metadata accessor for IOSerialQueueExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1001604D0()
{
  type metadata accessor for IOActor();
  v0 = swift_allocObject();
  type metadata accessor for IOSerialQueueExecutor();
  v1 = swift_allocObject();
  result = sub_10015FDC0();
  *(v0 + 16) = v1;
  qword_1002225D8 = v0;
  return result;
}

uint64_t sub_100160524()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001605C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_10016080C(&qword_10020F998, a2, type metadata accessor for IOSerialQueueExecutor);
  return v3;
}

uint64_t sub_100160624()
{
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100160680(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IOActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_100160700()
{

  return swift_deallocObject();
}

uint64_t sub_100160738(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_10016080C(&qword_10020F998, a2, type metadata accessor for IOSerialQueueExecutor);

  return _swift_job_run(v3, v4, v5);
}

uint64_t sub_1001607A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001607C0()
{
  result = qword_10020F9A0;
  if (!qword_10020F9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020F9A0);
  }

  return result;
}

uint64_t sub_10016080C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100160854(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10010EC80(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001608C0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_10020F9C8 = v0;
}

id sub_100160940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  [v7 setDateStyle:a2];
  result = [v7 setTimeStyle:a3];
  *a4 = v7;
  return result;
}

uint64_t sub_1001609F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100162E80(&qword_10020FAB8);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100162E80(&qword_10020FAC0);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100160FF0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100160CA8()
{
  v1 = v0;
  v35 = type metadata accessor for Calendar.Component();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000FF5D8(&qword_10020FAC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100162E80(&qword_10020FAB8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100160FF0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100160CA8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10016126C();
      goto LABEL_12;
    }

    sub_1001614A4();
  }

  v13 = *v3;
  sub_100162E80(&qword_10020FAB8);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100162E80(&qword_10020FAC0);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10016126C()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF5D8(&qword_10020FAC8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1001614A4()
{
  v1 = v0;
  v32 = type metadata accessor for Calendar.Component();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000FF5D8(&qword_10020FAC8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100162E80(&qword_10020FAB8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1001617AC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100162E80(&qword_10020FAB8);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_1001609F0(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100161934(uint64_t a1, char *a2)
{
  v90 = a2;
  v86 = a1;
  v2 = sub_1000FF5D8(&qword_10020FAA0);
  __chkstk_darwin(v2 - 8);
  v88 = v78 - v3;
  v4 = sub_1000FF5D8(&qword_10020FAA8);
  __chkstk_darwin(v4 - 8);
  v89 = v78 - v5;
  v6 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v6 - 8);
  v84 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = v78 - v9;
  __chkstk_darwin(v10);
  v12 = v78 - v11;
  v13 = type metadata accessor for Date();
  v98 = *(v13 - 8);
  v99 = v13;
  __chkstk_darwin(v13);
  v83 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = v78 - v16;
  __chkstk_darwin(v17);
  v93 = v78 - v18;
  v19 = type metadata accessor for DateComponents();
  v94 = *(v19 - 8);
  v95 = v19;
  __chkstk_darwin(v19);
  v85 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = v78 - v22;
  __chkstk_darwin(v23);
  v25 = v78 - v24;
  v26 = type metadata accessor for Calendar();
  v96 = *(v26 - 8);
  v97 = v26;
  __chkstk_darwin(v26);
  v28 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000FF5D8(&qword_10020FAB0);
  v29 = type metadata accessor for Calendar.Component();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10019D780;
  v34 = v33 + v32;
  v35 = *(v30 + 104);
  v35(v34, enum case for Calendar.Component.era(_:), v29);
  v35(v34 + v31, enum case for Calendar.Component.year(_:), v29);
  v35(v34 + 2 * v31, enum case for Calendar.Component.month(_:), v29);
  v35(v34 + 3 * v31, enum case for Calendar.Component.day(_:), v29);
  sub_1001617AC(v33);

  Calendar.dateComponents(_:from:)();

  Calendar.date(from:)();
  v36 = *(v98 + 48);
  if (v36(v12, 1, v99) == 1)
  {
    (*(v94 + 8))(v25, v95);
    (*(v96 + 8))(v28, v97);
    v37 = v12;
LABEL_8:
    sub_100162E18(v37);
    return 0;
  }

  v90 = v25;
  v82 = *(v98 + 32);
  v82(v93, v12, v99);
  v81 = *(v96 + 56);
  v81(v89, 1, 1, v97);
  v38 = type metadata accessor for TimeZone();
  v39 = *(v38 - 8);
  v40 = v88;
  v79 = *(v39 + 56);
  v80 = v38;
  v78[1] = v39 + 56;
  v79(v88, 1, 1);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v41 = v91;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v42 = v36(v41, 1, v99);
  v43 = v97;
  if (v42 == 1)
  {
    v44 = v95;
    v45 = *(v94 + 8);
    v45(v92, v95);
    (*(v98 + 8))(v93, v99);
    v45(v90, v44);
    (*(v96 + 8))(v28, v43);
    v37 = v91;
    goto LABEL_8;
  }

  v78[0] = v28;
  v46 = v87;
  v47 = v82;
  v82(v87, v91, v99);
  if (Date.compare(_:)() == -1)
  {
    v62 = v99;
    v63 = *(v98 + 8);
    v63(v46, v99);
    v64 = v95;
    v65 = *(v94 + 8);
    v65(v92, v95);
    v63(v93, v62);
    v65(v90, v64);
    (*(v96 + 8))(v78[0], v97);
    return 4;
  }

  v48 = v40;
  v49 = v97;
  v81(v89, 1, 1, v97);
  (v79)(v48, 1, 1, v80);
  v50 = v85;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v51 = v84;
  v52 = v93;
  v53 = v78[0];
  Calendar.date(byAdding:to:wrappingComponents:)();
  if (v36(v51, 1, v99) == 1)
  {
    v54 = v53;
    v55 = *(v94 + 8);
    v56 = v49;
    v57 = v52;
    v58 = v95;
    v55(v50, v95);
    v59 = v99;
    v60 = *(v98 + 8);
    v60(v87, v99);
    v55(v92, v58);
    v60(v57, v59);
    v55(v90, v58);
    (*(v96 + 8))(v54, v56);
    v37 = v51;
    goto LABEL_8;
  }

  v66 = v83;
  v47(v83, v51, v99);
  v67 = Date.compare(_:)();
  v69 = v95;
  v68 = v96;
  v70 = v94;
  if (v67 == -1)
  {
    v75 = v99;
    v76 = *(v98 + 8);
    v76(v66, v99);
    v77 = *(v70 + 8);
    v77(v85, v69);
    v76(v87, v75);
    v77(v92, v69);
    v76(v52, v75);
    v77(v90, v69);
    (*(v68 + 8))(v78[0], v97);
    return 3;
  }

  else
  {
    v71 = Date.compare(_:)();
    v72 = v99;
    v73 = *(v98 + 8);
    v73(v66, v99);
    v74 = *(v70 + 8);
    v74(v85, v69);
    v73(v87, v72);
    v74(v92, v69);
    v73(v52, v72);
    v74(v90, v69);
    (*(v68 + 8))(v78[0], v97);
    if (v71 == -1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_100162484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_PreviewFoundation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000FF5D8(&qword_10020EB88);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10019B3A0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_100151D28();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = qword_10020D1A8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10020F9C0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 72) = v14;
  *(v8 + 80) = v16;
  v17 = static String.localizedStringWithFormat(_:_:)();

  return v17;
}

uint64_t sub_1001626F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_PreviewFoundation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000FF5D8(&qword_10020EB88);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10019B3A0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_100151D28();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = qword_10020D1B0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10020F9C8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 72) = v14;
  *(v8 + 80) = v16;
  v17 = static String.localizedStringWithFormat(_:_:)();

  return v17;
}

uint64_t sub_100162964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_PreviewFoundation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000FF5D8(&qword_10020EB88);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10019B3A0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_100151D28();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = qword_10020D1B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10020F9D0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v11 stringFromDate:isa];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 72) = v14;
  *(v8 + 80) = v16;
  v17 = static String.localizedStringWithFormat(_:_:)();

  return v17;
}

uint64_t sub_100162BD4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  LOBYTE(result) = sub_100161934(a3, a4);
  if (result <= 1u)
  {
    if (result)
    {
      return sub_100162484(a1, a2);
    }

    else
    {
      return result;
    }
  }

  else if (result == 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for BundleLookupReference_PreviewFoundation();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_1000FF5D8(&qword_10020EB88);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10019A9F0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100151D28();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v14 = static String.localizedStringWithFormat(_:_:)();

    return v14;
  }

  else if (result == 3)
  {
    return sub_1001626F4(a1, a2);
  }

  else
  {
    return sub_100162964(a1, a2);
  }
}

uint64_t sub_100162E18(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020E418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100162E80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100162EC4()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100162F4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_100162FE0()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_100163080()
{
  result = qword_10020FAD8;
  if (!qword_10020FAD8)
  {
    type metadata accessor for MenuViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FAD8);
  }

  return result;
}

uint64_t type metadata accessor for MenuViewModel()
{
  result = qword_10020FB08;
  if (!qword_10020FB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100163124()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_1001631C4(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001632D4;
}

uint64_t sub_1001632E0()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100163368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_100163454(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24))
  {
    if (a1)
    {

      v4 = sub_100125E84(v3, a1);

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100163080();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_100163580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void (*sub_100163604(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100163714;
}

uint64_t sub_100163720()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1001637A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100163858(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100163080();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_10016394C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100163A5C;
}

uint64_t sub_100163A68()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 33);
}

uint64_t sub_100163AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_100163BA0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 33) == v2)
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100163080();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_100163C94(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100163DA4;
}

uint64_t sub_100163DB0()
{
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 34);
}

uint64_t sub_100163E34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_100163EE8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 34) == v2)
  {
    *(v1 + 34) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100163080();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_100163FDC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100163080();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001640EC;
}

uint64_t sub_1001640F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 34) = 1;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_10016414C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 34) = 1;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100164184()
{

  v1 = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001641F4()
{

  v1 = OBJC_IVAR____TtC17PreviewFoundation13MenuViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001642CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_10016434C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 33) = v2;
  return result;
}

uint64_t sub_1001643CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 34) = v2;
  return result;
}

uint64_t sub_100164428()
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

uint64_t sub_100164588@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  result = type metadata accessor for PreviewActionSpec.Internals(0);
  *a1 = *(v3 + *(result + 56));
  return result;
}

uint64_t sub_10016460C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.pdf.getter();
  v6 = UTType.conforms(to:)();
  v7 = *(v3 + 8);
  result = v7(v5, v2);
  if (v6)
  {
    v9 = 2;
LABEL_5:
    *a1 = v9;
    *(a1 + 8) = 0;
    return result;
  }

  static UTType.image.getter();
  v10 = UTType.conforms(to:)();
  result = v7(v5, v2);
  if (v10)
  {
    v9 = 1;
    goto LABEL_5;
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

BOOL sub_100164744(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  return (v2 & ~*(v3 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 32))) == 0;
}

uint64_t sub_10016478C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001647BC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1001647EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  v4 = *(type metadata accessor for PreviewActionSpec.Internals(0) + 20);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100164878()
{
  v1 = v0 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  v2 = *(v1 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 36));

  return v2;
}

uint64_t sub_1001648C8()
{
  v1 = v0 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  v2 = type metadata accessor for PreviewActionSpec.Internals(0);
  v3 = (v1 + *(v2 + 40));
  if (v3[1])
  {
    v4 = *v3;
  }

  else
  {
    v4 = *(v1 + *(v2 + 36));

    v5._countAndFlagsBits = 0x656C637269632ELL;
    v5._object = 0xE700000000000000;
    if (String.hasSuffix(_:)(v5))
    {
      v6 = String.count.getter();
      sub_100164994(v6);
    }
  }

  return v4;
}

uint64_t sub_100164994(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = String.index(_:offsetBy:limitedBy:)();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return String.removeSubrange(_:)();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return String.removeSubrange(_:)();
  }

  return result;
}

uint64_t sub_100164A44@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v4 = sub_1000FF5D8(&qword_10020E960);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v26 - v14;
  v16 = v2 + *(type metadata accessor for PreviewActionSpec(0) + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  sub_100164FB8(v16 + v17[6], v9);
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    sub_100165028(v7);
    return (*(v11 + 16))(a2, v16 + v17[5], v10);
  }

  v27 = a2;
  v19 = v9;
  v20 = *(v11 + 32);
  v20(v15, v19, v10);
  sub_100164FB8(v16 + v17[7], v7);
  if (v18(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v15, v10);
    a2 = v27;
    goto LABEL_5;
  }

  v22 = v28;
  v20(v28, v7, v10);
  v23 = *(v11 + 8);
  if (v29)
  {
    v23(v15, v10);
    v24 = v27;
    v25 = v22;
  }

  else
  {
    v23(v22, v10);
    v24 = v27;
    v25 = v15;
  }

  return (v20)(v24, v25, v10);
}

uint64_t sub_100164D10@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a1;
  v6 = sub_1000FF5D8(&qword_10020E960);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (v5 == 2)
  {
    v12 = v2 + *(type metadata accessor for PreviewActionSpec(0) + 20);
    v13 = type metadata accessor for PreviewActionSpec.Internals(0);
    sub_100164FB8(v12 + *(v13 + 44), v8);
    v14 = type metadata accessor for LocalizedStringResource();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v8, 1, v14) == 1)
    {
      LocalizedStringResource.init(stringLiteral:)();
      result = v16(v8, 1, v14);
      if (result == 1)
      {
        return result;
      }

      v18 = v8;
      return sub_100165028(v18);
    }

    return (*(v15 + 32))(a2, v8, v14);
  }

  else
  {
    v19 = v2 + *(type metadata accessor for PreviewActionSpec(0) + 20);
    v20 = type metadata accessor for PreviewActionSpec.Internals(0);
    v21 = 48;
    if (a1)
    {
      v21 = 52;
    }

    sub_100164FB8(v19 + *(v20 + v21), v11);
    v22 = type metadata accessor for LocalizedStringResource();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v11, 1, v22) == 1)
    {
      LocalizedStringResource.init(stringLiteral:)();
      result = v24(v11, 1, v22);
      if (result == 1)
      {
        return result;
      }

      v18 = v11;
      return sub_100165028(v18);
    }

    return (*(v23 + 32))(a2, v11, v22);
  }
}

uint64_t sub_100164FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165028(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100165094()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v45 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v39 - v10;
  v11 = __chkstk_darwin(v9);
  v42 = &v39 - v12;
  v13 = __chkstk_darwin(v11);
  v49 = &v39 - v14;
  __chkstk_darwin(v13);
  v46 = &v39 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v41 = v16;
  sub_100101B54(v16, qword_1002225E0);
  v47 = sub_100101048(v16, qword_1002225E0);
  v43 = 0x80000001001B86F0;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  v20 = v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v40 = 0x80000001001B8710;
  v21 = v44;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v22 = v47 + *(v41 + 20);
  v23 = type metadata accessor for PreviewActionSpec.Internals(0);
  v24 = v45;
  v25 = *(v45 + 16);
  v25(&v22[v23[5]], v46, v6);
  v26 = v23[6];
  v25(&v22[v26], v49, v6);
  v27 = *(v24 + 56);
  v27(&v22[v26], 0, 1, v6);
  v28 = v23[7];
  v25(&v22[v28], v20, v6);
  v27(&v22[v28], 0, 1, v6);
  v27(&v22[v23[11]], 1, 1, v6);
  v29 = v23[12];
  v25(&v22[v29], v21, v6);
  v27(&v22[v29], 0, 1, v6);
  v30 = v23[13];
  v31 = v48;
  v25(&v22[v30], v48, v6);
  v27(&v22[v30], 0, 1, v6);
  v32 = v43;
  *v22 = 0xD000000000000014;
  *(v22 + 1) = v32;
  *&v22[v23[8]] = 3;
  v33 = &v22[v23[9]];
  v34 = v40;
  *v33 = 0xD000000000000016;
  *(v33 + 1) = v34;
  v35 = &v22[v23[10]];
  *v35 = 0xD000000000000016;
  *(v35 + 1) = v34;
  v22[v23[14]] = 10;
  v36 = v47;
  *v47 = 0xD000000000000014;
  v36[1] = v32;
  v37 = *(v45 + 8);
  v37(v31, v6);
  v37(v44, v6);
  v37(v20, v6);
  v37(v49, v6);
  return (v37)(v46, v6);
}

uint64_t sub_1001656C4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v46 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v47 = &v37 - v14;
  __chkstk_darwin(v13);
  v42 = &v37 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v39 = v16;
  sub_100101B54(v16, qword_1002225F8);
  v44 = sub_100101048(v16, qword_1002225F8);
  v40 = 0x80000001001B8650;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = 0x80000001001B7470;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v44 + *(v39 + 20);
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v41;
  v23 = *(v41 + 16);
  v23(&v20[v21[5]], v42, v6);
  v24 = v21[6];
  v23(&v20[v24], v47, v6);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v6);
  v26 = v21[7];
  v23(&v20[v26], v46, v6);
  v25(&v20[v26], 0, 1, v6);
  v25(&v20[v21[11]], 1, 1, v6);
  v27 = v21[12];
  v28 = v43;
  v23(&v20[v27], v43, v6);
  v25(&v20[v27], 0, 1, v6);
  v29 = v21[13];
  v30 = v45;
  v23(&v20[v29], v45, v6);
  v25(&v20[v29], 0, 1, v6);
  v31 = v40;
  *v20 = 0xD00000000000001BLL;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 2;
  v32 = &v20[v21[9]];
  *v32 = 0xD000000000000021;
  *(v32 + 1) = v38;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 15;
  v34 = v44;
  *v44 = 0xD00000000000001BLL;
  v34[1] = v31;
  v35 = *(v41 + 8);
  v35(v30, v6);
  v35(v28, v6);
  v35(v46, v6);
  v35(v47, v6);
  return (v35)(v42, v6);
}

uint64_t sub_100165DBC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v41 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v41 - 8);
  __chkstk_darwin(v41);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for LocalizedStringResource();
  v45 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v43 = &v37 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for PreviewActionSpec(0);
  sub_100101B54(v18, qword_100222610);
  v19 = sub_100101048(v18, qword_100222610);
  v38 = v19;
  v42 = 0x80000001001B8630;
  String.LocalizationValue.init(stringLiteral:)();
  *v3 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v41);
  static Locale.current.getter();
  v40 = v17;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v39 = v15;
  LocalizedStringResource.init(stringLiteral:)();
  v37 = v12;
  LocalizedStringResource.init(stringLiteral:)();
  v41 = 0x80000001001B21A0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = (v19 + *(v18 + 20));
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v45;
  v23 = *(v45 + 16);
  v23(&v20[v21[5]], v17, v5);
  v24 = v21[6];
  v23(&v20[v24], v15, v5);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v5);
  v26 = v21[7];
  v23(&v20[v26], v12, v5);
  v25(&v20[v26], 0, 1, v5);
  v25(&v20[v21[11]], 1, 1, v5);
  v27 = v21[12];
  v28 = v43;
  v23(&v20[v27], v43, v5);
  v25(&v20[v27], 0, 1, v5);
  v29 = v21[13];
  v30 = v44;
  v23(&v20[v29], v44, v5);
  v25(&v20[v29], 0, 1, v5);
  v31 = v42;
  *v20 = 0xD00000000000001FLL;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 3;
  v32 = &v20[v21[9]];
  *v32 = 0xD000000000000010;
  *(v32 + 1) = v41;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 18;
  v34 = v38;
  *v38 = 0xD00000000000001FLL;
  v34[1] = v31;
  v35 = *(v45 + 8);
  v35(v30, v5);
  v35(v28, v5);
  v35(v37, v5);
  v35(v39, v5);
  return (v35)(v40, v5);
}

uint64_t sub_100166334()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v30 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222628);
  v32 = sub_100101048(v11, qword_100222628);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v32 + *(v28 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v30;
  v18 = *(v30 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v31;
  v18(&v15[v21], v31, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x632D657461746F72;
  *(v15 + 1) = 0xEA00000000007763;
  *&v15[v16[8]] = 3;
  v23 = &v15[v16[9]];
  *v23 = 0x6C2E657461746F72;
  *(v23 + 1) = 0xEB00000000746665;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 12;
  v25 = v32;
  *v32 = 0x632D657461746F72;
  v25[1] = 0xEA00000000007763;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v29, v6);
}

uint64_t sub_1001667F0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v30 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222640);
  v32 = sub_100101048(v11, qword_100222640);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v32 + *(v28 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v30;
  v18 = *(v30 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v31;
  v18(&v15[v21], v31, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x632D657461746F72;
  *(v15 + 1) = 0xE900000000000077;
  *&v15[v16[8]] = 3;
  v23 = &v15[v16[9]];
  strcpy(v23, "rotate.right");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 11;
  v25 = v32;
  *v32 = 0x632D657461746F72;
  v25[1] = 0xE900000000000077;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v29, v6);
}

uint64_t sub_100166CAC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v39 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v41 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v44 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v45 = &v37 - v14;
  __chkstk_darwin(v13);
  v40 = &v37 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v37 = v16;
  sub_100101B54(v16, qword_100222658);
  v42 = sub_100101048(v16, qword_100222658);
  v38 = 0x80000001001B8730;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v42 + *(v37 + 20);
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v39;
  v23 = *(v39 + 16);
  v23(&v20[v21[5]], v40, v6);
  v24 = v21[6];
  v23(&v20[v24], v45, v6);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v6);
  v26 = v21[7];
  v23(&v20[v26], v44, v6);
  v25(&v20[v26], 0, 1, v6);
  v25(&v20[v21[11]], 1, 1, v6);
  v27 = v21[12];
  v28 = v41;
  v23(&v20[v27], v41, v6);
  v25(&v20[v27], 0, 1, v6);
  v29 = v21[13];
  v30 = v43;
  v23(&v20[v29], v43, v6);
  v25(&v20[v29], 0, 1, v6);
  v31 = v38;
  *v20 = 0xD000000000000018;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 3;
  v32 = &v20[v21[9]];
  *v32 = 0x7269632E6F666E69;
  *(v32 + 1) = 0xEB00000000656C63;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 30;
  v34 = v42;
  *v42 = 0xD000000000000018;
  v34[1] = v31;
  v35 = *(v39 + 8);
  v35(v30, v6);
  v35(v28, v6);
  v35(v44, v6);
  v35(v45, v6);
  return (v35)(v40, v6);
}

uint64_t sub_100167390()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_100222670);
  v34 = sub_100101048(v11, qword_100222670);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B8800;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v34 + *(v29 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v33;
  v18(&v15[v21], v33, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x6572616873;
  *(v15 + 1) = 0xE500000000000000;
  *&v15[v16[8]] = 3;
  v23 = &v15[v16[9]];
  *v23 = 0xD000000000000013;
  *(v23 + 1) = v31;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 31;
  v25 = v34;
  *v34 = 0x6572616873;
  v25[1] = 0xE500000000000000;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v30, v6);
}

uint64_t sub_100167834()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v30 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222688);
  v32 = sub_100101048(v11, qword_100222688);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v32 + *(v28 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v30;
  v18 = *(v30 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v31;
  v18(&v15[v21], v31, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x686372616573;
  *(v15 + 1) = 0xE600000000000000;
  *&v15[v16[8]] = 2;
  v23 = &v15[v16[9]];
  *v23 = 0x697966696E67616DLL;
  *(v23 + 1) = 0xEF7373616C67676ELL;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 29;
  v25 = v32;
  *v32 = 0x686372616573;
  v25[1] = 0xE600000000000000;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v29, v6);
}

uint64_t sub_100167CD4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_1002226A0);
  v34 = sub_100101048(v11, qword_1002226A0);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8360;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x6E692D6D6F6F7ALL;
  *(v16 + 1) = 0xE700000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD000000000000014;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 24;
  v25 = v34;
  *v34 = 0x6E692D6D6F6F7ALL;
  v25[1] = 0xE700000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_100168188()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_1002226B8);
  v34 = sub_100101048(v11, qword_1002226B8);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8320;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x74756F2D6D6F6F7ALL;
  *(v16 + 1) = 0xE800000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD000000000000015;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 25;
  v25 = v34;
  *v34 = 0x74756F2D6D6F6F7ALL;
  v25[1] = 0xE800000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016863C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v30 = v11;
  sub_100101B54(v11, qword_1002226D0);
  v34 = sub_100101048(v11, qword_1002226D0);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8260;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v30 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x2D6F742D6D6F6F7ALL;
  *(v16 + 1) = 0xEB00000000746966;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD00000000000002CLL;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 26;
  v25 = v34;
  *v34 = 0x2D6F742D6D6F6F7ALL;
  v25[1] = 0xEB00000000746966;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v29, v6);
}

uint64_t sub_100168B04()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v34 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v31 = v11;
  sub_100101B54(v11, qword_1002226E8);
  v12 = sub_100101048(v11, qword_1002226E8);
  v35 = 0x80000001001B82C0;
  v36 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = 0x80000001001B82E0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v13;
  v15(v4, v14, v1);
  static Locale.current.getter();
  v16 = v32;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = v36 + *(v31 + 20);
  v18 = type metadata accessor for PreviewActionSpec.Internals(0);
  v19 = v34;
  v20 = *(v34 + 16);
  v20(&v17[v18[5]], v10, v6);
  v21 = v19;
  v22 = *(v19 + 56);
  v22(&v17[v18[6]], 1, 1, v6);
  v22(&v17[v18[7]], 1, 1, v6);
  v23 = v18[11];
  v20(&v17[v23], v16, v6);
  v22(&v17[v23], 0, 1, v6);
  v22(&v17[v18[12]], 1, 1, v6);
  v22(&v17[v18[13]], 1, 1, v6);
  v24 = v35;
  *v17 = 0xD000000000000013;
  *(v17 + 1) = v24;
  *&v17[v18[8]] = 3;
  v25 = &v17[v18[9]];
  *v25 = 0xD000000000000011;
  *(v25 + 1) = v33;
  v26 = &v17[v18[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v17[v18[14]] = 27;
  v27 = v36;
  *v36 = 0xD000000000000013;
  v27[1] = v24;
  v28 = *(v21 + 8);
  v28(v16, v6);
  return (v28)(v30, v6);
}

uint64_t sub_100168FC4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_100222700);
  v34 = sub_100101048(v11, qword_100222700);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8260;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x676F742D6D6F6F7ALL;
  *(v16 + 1) = 0xEB00000000656C67;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD00000000000002CLL;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 28;
  v25 = v34;
  *v34 = 0x676F742D6D6F6F7ALL;
  v25[1] = 0xEB00000000656C67;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_100169488()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v39 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v41 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v44 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v45 = &v37 - v14;
  __chkstk_darwin(v13);
  v40 = &v37 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v37 = v16;
  sub_100101B54(v16, qword_100222718);
  v42 = sub_100101048(v16, qword_100222718);
  v38 = 0x80000001001B8610;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v42 + *(v37 + 20);
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v39;
  v23 = *(v39 + 16);
  v23(&v20[v21[5]], v40, v6);
  v24 = v21[6];
  v23(&v20[v24], v45, v6);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v6);
  v26 = v21[7];
  v23(&v20[v26], v44, v6);
  v25(&v20[v26], 0, 1, v6);
  v25(&v20[v21[11]], 1, 1, v6);
  v27 = v21[12];
  v28 = v41;
  v23(&v20[v27], v41, v6);
  v25(&v20[v27], 0, 1, v6);
  v29 = v21[13];
  v30 = v43;
  v23(&v20[v29], v43, v6);
  v25(&v20[v29], 0, 1, v6);
  v31 = v38;
  *v20 = 0xD000000000000013;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 3;
  v32 = &v20[v21[9]];
  *v32 = 0x6B72616D6B6F6F62;
  *(v32 + 1) = 0xE800000000000000;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 40;
  v34 = v42;
  *v42 = 0xD000000000000013;
  v34[1] = v31;
  v35 = *(v39 + 8);
  v35(v30, v6);
  v35(v28, v6);
  v35(v44, v6);
  v35(v45, v6);
  return (v35)(v40, v6);
}

uint64_t sub_100169B80()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v46 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v47 = &v37 - v14;
  __chkstk_darwin(v13);
  v42 = &v37 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v39 = v16;
  sub_100101B54(v16, qword_100222730);
  v44 = sub_100101048(v16, qword_100222730);
  v40 = 0x80000001001B8570;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = "Visual Intelligence";
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = 0x80000001001B85F0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v44 + *(v39 + 20);
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v41;
  v23 = *(v41 + 16);
  v23(&v20[v21[5]], v42, v6);
  v24 = v21[6];
  v23(&v20[v24], v47, v6);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v6);
  v26 = v21[7];
  v23(&v20[v26], v46, v6);
  v25(&v20[v26], 0, 1, v6);
  v25(&v20[v21[11]], 1, 1, v6);
  v27 = v21[12];
  v28 = v43;
  v23(&v20[v27], v43, v6);
  v25(&v20[v27], 0, 1, v6);
  v29 = v21[13];
  v30 = v45;
  v23(&v20[v29], v45, v6);
  v25(&v20[v29], 0, 1, v6);
  v31 = v40;
  *v20 = 0xD00000000000001ALL;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 1;
  v32 = &v20[v21[9]];
  *v32 = 0xD000000000000019;
  *(v32 + 1) = v38;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 38;
  v34 = v44;
  *v44 = 0xD00000000000001ALL;
  v34[1] = v31;
  v35 = *(v41 + 8);
  v35(v30, v6);
  v35(v28, v6);
  v35(v46, v6);
  v35(v47, v6);
  return (v35)(v42, v6);
}

uint64_t sub_10016A27C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v37 - v10;
  v11 = __chkstk_darwin(v9);
  v47 = &v37 - v12;
  v13 = __chkstk_darwin(v11);
  v46 = &v37 - v14;
  __chkstk_darwin(v13);
  v42 = &v37 - v15;
  v16 = type metadata accessor for PreviewActionSpec(0);
  v39 = v16;
  sub_100101B54(v16, qword_100222748);
  v44 = sub_100101048(v16, qword_100222748);
  v40 = 0x80000001001B84D0;
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v2 + 104);
  v19(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = "toggle-dark-mode-support";
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v38 = 0x80000001001B8550;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v17;
  v19(v4, v18, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = v44 + *(v39 + 20);
  v21 = type metadata accessor for PreviewActionSpec.Internals(0);
  v22 = v41;
  v23 = *(v41 + 16);
  v23(&v20[v21[5]], v42, v6);
  v24 = v21[6];
  v23(&v20[v24], v46, v6);
  v25 = *(v22 + 56);
  v25(&v20[v24], 0, 1, v6);
  v26 = v21[7];
  v23(&v20[v26], v47, v6);
  v25(&v20[v26], 0, 1, v6);
  v25(&v20[v21[11]], 1, 1, v6);
  v27 = v21[12];
  v28 = v43;
  v23(&v20[v27], v43, v6);
  v25(&v20[v27], 0, 1, v6);
  v29 = v21[13];
  v30 = v45;
  v23(&v20[v29], v45, v6);
  v25(&v20[v29], 0, 1, v6);
  v31 = v40;
  *v20 = 0xD000000000000018;
  *(v20 + 1) = v31;
  *&v20[v21[8]] = 2;
  v32 = &v20[v21[9]];
  *v32 = 0xD000000000000013;
  *(v32 + 1) = v38;
  v33 = &v20[v21[10]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v20[v21[14]] = 39;
  v34 = v44;
  *v44 = 0xD000000000000018;
  v34[1] = v31;
  v35 = *(v41 + 8);
  v35(v30, v6);
  v35(v28, v6);
  v35(v47, v6);
  v35(v46, v6);
  return (v35)(v42, v6);
}

uint64_t sub_10016A970()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222760);
  v32 = sub_100101048(v11, qword_100222760);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v32 + *(v28 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v31;
  v19 = *(v31 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x746E697270;
  *(v16 + 1) = 0xE500000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0x7265746E697270;
  *(v23 + 1) = 0xE700000000000000;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 33;
  v25 = v32;
  *v32 = 0x746E697270;
  v25[1] = 0xE500000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v29, v6);
}

uint64_t sub_10016AE0C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v30 = v11;
  sub_100101B54(v11, qword_100222778);
  v35 = sub_100101048(v11, qword_100222778);
  v33 = 0x80000001001B8770;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B87B0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v35 + *(v30 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v34;
  v18(&v15[v21], v34, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  v23 = v33;
  *v15 = 0xD000000000000011;
  *(v15 + 1) = v23;
  *&v15[v16[8]] = 1;
  v24 = &v15[v16[9]];
  *v24 = 0xD00000000000002CLL;
  *(v24 + 1) = v31;
  v25 = &v15[v16[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v15[v16[14]] = 16;
  v26 = v35;
  *v35 = 0xD000000000000011;
  v26[1] = v23;
  v27 = *(v19 + 8);
  v27(v22, v6);
  return (v27)(v29, v6);
}

uint64_t sub_10016B2D0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v30 = v11;
  sub_100101B54(v11, qword_100222790);
  v35 = sub_100101048(v11, qword_100222790);
  v33 = 0x80000001001B81A0;
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B81E0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v35 + *(v30 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v34;
  v18(&v15[v21], v34, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  v23 = v33;
  *v15 = 0xD000000000000011;
  *(v15 + 1) = v23;
  *&v15[v16[8]] = 1;
  v24 = &v15[v16[9]];
  *v24 = 0xD00000000000003BLL;
  *(v24 + 1) = v31;
  v25 = &v15[v16[10]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v15[v16[14]] = 13;
  v26 = v35;
  *v35 = 0xD000000000000011;
  v26[1] = v23;
  v27 = *(v19 + 8);
  v27(v22, v6);
  return (v27)(v29, v6);
}

uint64_t sub_10016B790()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_1002227A8);
  v34 = sub_100101048(v11, qword_1002227A8);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B8160;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v34 + *(v29 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v33;
  v18(&v15[v21], v33, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x7265762D70696C66;
  *(v15 + 1) = 0xEF796C6C61636974;
  *&v15[v16[8]] = 1;
  v23 = &v15[v16[9]];
  *v23 = 0xD000000000000035;
  *(v23 + 1) = v31;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 14;
  v25 = v34;
  *v34 = 0x7265762D70696C66;
  v25[1] = 0xEF796C6C61636974;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016BC60()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_1002227C0);
  v34 = sub_100101048(v11, qword_1002227C0);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B80E0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 1868852853;
  *(v16 + 1) = 0xE400000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD00000000000001BLL;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 19;
  v25 = v34;
  *v34 = 1868852853;
  v25[1] = 0xE400000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016C0F8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_1002227D8);
  v34 = sub_100101048(v11, qword_1002227D8);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B80C0;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 1868850546;
  *(v16 + 1) = 0xE400000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD00000000000001ALL;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 20;
  v25 = v34;
  *v34 = 1868850546;
  v25[1] = 0xE400000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016C590()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v34 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v31 = v11;
  sub_100101B54(v11, qword_1002227F0);
  v12 = sub_100101048(v11, qword_1002227F0);
  v35 = 0x80000001001B8140;
  v36 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v32 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v13;
  v15(v4, v14, v1);
  static Locale.current.getter();
  v16 = v33;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = v36 + *(v31 + 20);
  v18 = type metadata accessor for PreviewActionSpec.Internals(0);
  v19 = v34;
  v20 = *(v34 + 16);
  v20(&v17[v18[5]], v10, v6);
  v21 = v19;
  v22 = *(v19 + 56);
  v22(&v17[v18[6]], 1, 1, v6);
  v22(&v17[v18[7]], 1, 1, v6);
  v23 = v18[11];
  v20(&v17[v23], v16, v6);
  v22(&v17[v23], 0, 1, v6);
  v22(&v17[v18[12]], 1, 1, v6);
  v22(&v17[v18[13]], 1, 1, v6);
  v24 = v35;
  *v17 = 0xD000000000000013;
  *(v17 + 1) = v24;
  *&v17[v18[8]] = 2;
  v25 = &v17[v18[9]];
  strcpy(v25, "arrow.up.doc");
  v25[13] = 0;
  *(v25 + 7) = -5120;
  v26 = &v17[v18[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v17[v18[14]] = 21;
  v27 = v36;
  *v36 = 0xD000000000000013;
  v27[1] = v24;
  v28 = *(v21 + 8);
  v28(v16, v6);
  return (v28)(v32, v6);
}

uint64_t sub_10016CA58()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222808);
  v32 = sub_100101048(v11, qword_100222808);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v32 + *(v28 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v31;
  v19 = *(v31 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x656E2D6F742D6F67;
  *(v16 + 1) = 0xEF6D6574692D7478;
  *&v16[v17[8]] = 2;
  v23 = &v16[v17[9]];
  strcpy(v23, "arrow.down.doc");
  v23[15] = -18;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 22;
  v25 = v32;
  *v32 = 0x656E2D6F742D6F67;
  v25[1] = 0xEF6D6574692D7478;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016CF14()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_100222820);
  v34 = sub_100101048(v11, qword_100222820);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8100;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v29 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x61702D6F742D6F67;
  *(v16 + 1) = 0xEA00000000006567;
  *&v16[v17[8]] = 2;
  v23 = &v16[v17[9]];
  *v23 = 0xD000000000000015;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 23;
  v25 = v34;
  *v34 = 0x61702D6F742D6F67;
  v25[1] = 0xEA00000000006567;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016D3D4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_100222838);
  v34 = sub_100101048(v11, qword_100222838);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B2280;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v34 + *(v29 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v33;
  v18(&v15[v21], v33, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  strcpy(v15, "save-to-photos");
  v15[15] = -18;
  *&v15[v16[8]] = 1;
  v23 = &v15[v16[9]];
  *v23 = 0xD000000000000015;
  *(v23 + 1) = v31;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 34;
  v25 = v34;
  *v34 = 0x2D6F742D65766173;
  v25[1] = 0xEE00736F746F6870;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016D8A8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v32 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v29 = v11;
  sub_100101B54(v11, qword_100222850);
  v34 = sub_100101048(v11, qword_100222850);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = 0x80000001001B8750;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v34 + *(v29 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v32;
  v18 = *(v32 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v33;
  v18(&v15[v21], v33, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x74726F707865;
  *(v15 + 1) = 0xE600000000000000;
  *&v15[v16[8]] = 3;
  v23 = &v15[v16[9]];
  *v23 = 0xD00000000000001DLL;
  *(v23 + 1) = v31;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 32;
  v25 = v34;
  *v34 = 0x74726F707865;
  v25[1] = 0xE600000000000000;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v30, v6);
}

uint64_t sub_10016DD4C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v30 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_100222868);
  v32 = sub_100101048(v11, qword_100222868);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v15 = v32 + *(v28 + 20);
  v16 = type metadata accessor for PreviewActionSpec.Internals(0);
  v17 = v30;
  v18 = *(v30 + 16);
  v18(&v15[v16[5]], v10, v6);
  v19 = v17;
  v20 = *(v17 + 56);
  v20(&v15[v16[6]], 1, 1, v6);
  v20(&v15[v16[7]], 1, 1, v6);
  v21 = v16[11];
  v22 = v31;
  v18(&v15[v21], v31, v6);
  v20(&v15[v21], 0, 1, v6);
  v20(&v15[v16[12]], 1, 1, v6);
  v20(&v15[v16[13]], 1, 1, v6);
  *v15 = 0x732D7473756A6461;
  *(v15 + 1) = 0xEB00000000657A69;
  *&v15[v16[8]] = 1;
  v23 = &v15[v16[9]];
  strcpy(v23, "square.resize");
  *(v23 + 7) = -4864;
  v24 = &v15[v16[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v15[v16[14]] = 17;
  v25 = v32;
  *v32 = 0x732D7473756A6461;
  v25[1] = 0xEB00000000657A69;
  v26 = *(v19 + 8);
  v26(v22, v6);
  return (v26)(v29, v6);
}

uint64_t sub_10016E20C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v31 = v11;
  sub_100101B54(v11, qword_10020FC50);
  v12 = sub_100101048(v11, qword_10020FC50);
  v35 = 0x80000001001B83A0;
  v36 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = 0x80000001001B0200;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v13;
  v15(v4, v14, v1);
  static Locale.current.getter();
  v16 = v32;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = v36 + *(v31 + 20);
  v18 = type metadata accessor for PreviewActionSpec.Internals(0);
  v19 = v34;
  v20 = *(v34 + 16);
  v20(&v17[v18[5]], v10, v6);
  v21 = v19;
  v22 = *(v19 + 56);
  v22(&v17[v18[6]], 1, 1, v6);
  v22(&v17[v18[7]], 1, 1, v6);
  v23 = v18[11];
  v20(&v17[v23], v16, v6);
  v22(&v17[v23], 0, 1, v6);
  v22(&v17[v18[12]], 1, 1, v6);
  v22(&v17[v18[13]], 1, 1, v6);
  v24 = v35;
  *v17 = 0xD000000000000016;
  *(v17 + 1) = v24;
  *&v17[v18[8]] = 3;
  v25 = &v17[v18[9]];
  *v25 = 0xD000000000000011;
  *(v25 + 1) = v33;
  v26 = &v17[v18[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v17[v18[14]] = 8;
  v27 = v36;
  *v36 = 0xD000000000000016;
  v27[1] = v24;
  v28 = *(v21 + 8);
  v28(v16, v6);
  return (v28)(v30, v6);
}

uint64_t sub_10016E6F4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v34 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v31 = v11;
  sub_100101B54(v11, qword_10020FC68);
  v12 = sub_100101048(v11, qword_10020FC68);
  v35 = 0x80000001001B83F0;
  v36 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v30 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = 0x80000001001B8430;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v13;
  v15(v4, v14, v1);
  static Locale.current.getter();
  v16 = v32;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = v36 + *(v31 + 20);
  v18 = type metadata accessor for PreviewActionSpec.Internals(0);
  v19 = v34;
  v20 = *(v34 + 16);
  v20(&v17[v18[5]], v10, v6);
  v21 = v19;
  v22 = *(v19 + 56);
  v22(&v17[v18[6]], 1, 1, v6);
  v22(&v17[v18[7]], 1, 1, v6);
  v23 = v18[11];
  v20(&v17[v23], v16, v6);
  v22(&v17[v23], 0, 1, v6);
  v22(&v17[v18[12]], 1, 1, v6);
  v22(&v17[v18[13]], 1, 1, v6);
  v24 = v35;
  *v17 = 0xD000000000000016;
  *(v17 + 1) = v24;
  *&v17[v18[8]] = 3;
  v25 = &v17[v18[9]];
  *v25 = 0xD000000000000010;
  *(v25 + 1) = v33;
  v26 = &v17[v18[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v17[v18[14]] = 9;
  v27 = v36;
  *v36 = 0xD000000000000016;
  v27[1] = v24;
  v28 = *(v21 + 8);
  v28(v16, v6);
  return (v28)(v30, v6);
}

uint64_t sub_10016EBD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PreviewActionSpec(0);
  v6 = sub_100101048(v5, a2);

  return sub_10015C124(v6, a3);
}

uint64_t sub_10016EC38()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v31 = v11;
  sub_100101B54(v11, qword_10020FC80);
  v12 = sub_100101048(v11, qword_10020FC80);
  v35 = 0x80000001001B8490;
  v36 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v13 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v13;
  v14 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v15 = *(v2 + 104);
  v15(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v32 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v13;
  v15(v4, v14, v1);
  static Locale.current.getter();
  v16 = v33;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v17 = v36 + *(v31 + 20);
  v18 = type metadata accessor for PreviewActionSpec.Internals(0);
  v19 = v34;
  v20 = *(v34 + 16);
  v20(&v17[v18[5]], v10, v6);
  v21 = v19;
  v22 = *(v19 + 56);
  v22(&v17[v18[6]], 1, 1, v6);
  v22(&v17[v18[7]], 1, 1, v6);
  v23 = v18[11];
  v20(&v17[v23], v16, v6);
  v22(&v17[v23], 0, 1, v6);
  v22(&v17[v18[12]], 1, 1, v6);
  v22(&v17[v18[13]], 1, 1, v6);
  v24 = v35;
  *v17 = 0xD000000000000010;
  *(v17 + 1) = v24;
  *&v17[v18[8]] = 3;
  v25 = &v17[v18[9]];
  strcpy(v25, "doc.viewfinder");
  v25[15] = -18;
  v26 = &v17[v18[10]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v17[v18[14]] = 7;
  v27 = v36;
  *v36 = 0xD000000000000010;
  v27[1] = v24;
  v28 = *(v21 + 8);
  v28(v16, v6);
  return (v28)(v32, v6);
}

uint64_t sub_10016F124()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v33 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v30 = v11;
  sub_100101B54(v11, qword_10020FC98);
  v34 = sub_100101048(v11, qword_10020FC98);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = 0x80000001001B8080;
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v34 + *(v30 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v33;
  v19 = *(v33 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x746163696C707564;
  *(v16 + 1) = 0xE900000000000065;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0xD000000000000015;
  *(v23 + 1) = v32;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 35;
  v25 = v34;
  *v34 = 0x746163696C707564;
  v25[1] = 0xE900000000000065;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v29, v6);
}

uint64_t sub_10016F608()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_10020FCB0);
  v32 = sub_100101048(v11, qword_10020FCB0);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v32 + *(v28 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v31;
  v19 = *(v31 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 0x656D616E6572;
  *(v16 + 1) = 0xE600000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0x6C69636E6570;
  *(v23 + 1) = 0xE600000000000000;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 36;
  v25 = v32;
  *v32 = 0x656D616E6572;
  v25[1] = 0xE600000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v29, v6);
}

uint64_t sub_10016FAC0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PreviewActionSpec(0);
  v28 = v11;
  sub_100101B54(v11, qword_10020FCC8);
  v32 = sub_100101048(v11, qword_10020FCC8);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v4 = v12;
  v13 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v14 = *(v2 + 104);
  v14(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  v29 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = v12;
  v14(v4, v13, v1);
  static Locale.current.getter();
  v15 = v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v16 = v32 + *(v28 + 20);
  v17 = type metadata accessor for PreviewActionSpec.Internals(0);
  v18 = v31;
  v19 = *(v31 + 16);
  v19(&v16[v17[5]], v10, v6);
  v20 = v18;
  v21 = *(v18 + 56);
  v21(&v16[v17[6]], 1, 1, v6);
  v21(&v16[v17[7]], 1, 1, v6);
  v22 = v17[11];
  v19(&v16[v22], v15, v6);
  v21(&v16[v22], 0, 1, v6);
  v21(&v16[v17[12]], 1, 1, v6);
  v21(&v16[v17[13]], 1, 1, v6);
  *v16 = 1702260589;
  *(v16 + 1) = 0xE400000000000000;
  *&v16[v17[8]] = 3;
  v23 = &v16[v17[9]];
  *v23 = 0x7265646C6F66;
  *(v23 + 1) = 0xE600000000000000;
  v24 = &v16[v17[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v16[v17[14]] = 37;
  v25 = v32;
  *v32 = 1702260589;
  v25[1] = 0xE400000000000000;
  v26 = *(v20 + 8);
  v26(v15, v6);
  return (v26)(v29, v6);
}

unint64_t sub_10016FF80()
{
  result = qword_10020FCE0;
  if (!qword_10020FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FCE0);
  }

  return result;
}

unint64_t sub_10016FFD8()
{
  result = qword_10020FCE8;
  if (!qword_10020FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FCE8);
  }

  return result;
}

unint64_t sub_100170030()
{
  result = qword_10020FCF0;
  if (!qword_10020FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FCF0);
  }

  return result;
}

unint64_t sub_100170088()
{
  result = qword_10020FCF8;
  if (!qword_10020FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FCF8);
  }

  return result;
}

uint64_t sub_1001700DC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1001700FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PreviewActionSpec.Internals(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001701BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PreviewActionSpec.Internals(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100170260()
{
  result = type metadata accessor for PreviewActionSpec.Internals(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewActionSpec.ApplicableContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewActionSpec.ApplicableContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100170354(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000FF5D8(&qword_10020E960);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100170498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000FF5D8(&qword_10020E960);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001705C8()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    sub_1001706C4();
    if (v1 <= 0x3F)
    {
      sub_10017071C(319, &qword_10020EB20);
      if (v2 <= 0x3F)
      {
        sub_10017071C(319, &unk_10020FDF8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001706C4()
{
  if (!qword_10020EB18)
  {
    type metadata accessor for LocalizedStringResource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020EB18);
    }
  }
}

void sub_10017071C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100170768(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 1953391971;
    }

    else
    {
      if (a1 != 4)
      {
        v7 = 0;
        goto LABEL_16;
      }

      v6 = 1819044205;
    }

    v5 = v6 | 0x74656D6900000000;
    v2 = 0xEB00000000737265;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0xE700000000000000;
    v4 = 0x746E6563726570;
    if (a1 != 1)
    {
      v4 = 0x736568636E69;
      v3 = 0xE600000000000000;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x736C65786970;
    }

    if (a1)
    {
      v2 = v3;
    }
  }

  v9[0] = v5;
  v9[1] = v2;
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_1001762F8(v9);
LABEL_16:
  v8 = String._bridgeToObjectiveC()();

  [v1 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

uint64_t sub_100170894@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F60F8, v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1001708F0()
{
  v1 = *v0;
  v2 = 0x736C65786970;
  v3 = 0x736568636E69;
  v4 = 0x74656D69746E6563;
  if (v1 != 3)
  {
    v4 = 0x74656D696C6C696DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E6563726570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100170994()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

id sub_100170BD0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setNumberStyle:1];
  [v2 setMinimumFractionDigits:0];
  [v2 setUsesGroupingSeparator:0];
  [v2 setLenient:1];
  if (v1 > 1)
  {
    [v2 setMaximumFractionDigits:2];
    sub_100170D48();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    [v2 setMinimum:isa];

    v5 = 1000000;
  }

  else
  {
    [v2 setRoundingMode:6];
    sub_100170D48();
    v3 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    [v2 setRoundingIncrement:v3];

    v4 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    [v2 setMinimum:v4];

    v5 = 30000;
  }

  v7 = NSNumber.init(integerLiteral:)(v5).super.super.isa;
  [v2 setMaximum:v7];

  return v2;
}

unint64_t sub_100170D48()
{
  result = qword_10020FE50;
  if (!qword_10020FE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020FE50);
  }

  return result;
}

void sub_100170DAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736C65786970;
  v5 = 0xE600000000000000;
  v6 = 0x736568636E69;
  v7 = 0x74656D69746E6563;
  if (v2 != 3)
  {
    v7 = 0x74656D696C6C696DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEB00000000737265;
  }

  if (*v1)
  {
    v4 = 0x746E6563726570;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

Swift::Int sub_100170E70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100170F5C()
{
  String.hash(into:)();
}

Swift::Int sub_100171034()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10017111C()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 40);
}

__n128 sub_1001711D0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ResizeViewModel()
{
  result = qword_10020FEA8;
  if (!qword_10020FEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017132C(double a1, double a2)
{
  result = swift_beginAccess();
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_100171478(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001715B8;
}

uint64_t sub_1001715C4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a1 = *(v1 + 56);
  return result;
}

void (*sub_100171680(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001716D4;
}

void sub_1001716D4(void *a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = a1[3];
    v5 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    *a1 = v4;
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100170768(*(v4 + 56));
  }
}

uint64_t sub_1001717FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

void sub_10017192C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (sub_100104174(*(v1 + 56), v2))
  {
    *(v1 + 56) = v2;
    v3 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_100170768(*(v1 + 56));
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100171B10(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  v4 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100170768(*(a1 + 56));
}

void (*sub_100171C44(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100171680(v4);
  return sub_100171D7C;
}

double sub_100171D88()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 64);
}

double sub_100171E3C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = *(v3 + 64);
  *a2 = result;
  return result;
}

uint64_t sub_100171F4C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100172078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

void (*sub_1001720CC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10017220C;
}

void sub_100172218()
{
  v0 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v2 = String._bridgeToObjectiveC()();
  [v0 setObject:v1 forKey:v2];

  swift_unknownObjectRelease();
}

uint64_t sub_100172390@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a1 = *(v1 + 72);
  return result;
}

uint64_t (*sub_10017244C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001724A0;
}

uint64_t sub_1001724B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

void sub_1001725E8(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 72))
  {
    v3 = 0x6550736C65786970;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (*(v1 + 72))
  {
    v4 = 0xED000068636E4972;
  }

  else
  {
    v4 = 0x80000001001B5EA0;
  }

  if (v2)
  {
    v5 = 0x6550736C65786970;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2)
  {
    v6 = 0xED000068636E4972;
  }

  else
  {
    v6 = 0x80000001001B5EA0;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }
  }

  *(v1 + 72) = v2;
  sub_100172218();
}

void (*sub_10017279C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10017244C(v4);
  return sub_1001728D4;
}

uint64_t sub_1001728E0(void *a1)
{
  v2 = swift_allocObject();
  sub_100172920(a1);
  return v2;
}

uint64_t sub_100172920(void *a1)
{
  *(v1 + 73) = 257;
  ObservationRegistrar.init()();
  sub_1001758D8(a1);
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 32) = v5;
  *(v1 + 64) = v5;
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001150A0(v21, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10010FA4C(v21);
LABEL_6:

    goto LABEL_7;
  }

  sub_100170894(v19, v20);
  sub_10010FA4C(v21);

  v10 = v20[0];
  if (v20[0] == 5)
  {
LABEL_7:
    v10 = 0;
  }

  *(v1 + 56) = v10;
  v11 = [v6 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001150A0(v21, v20);
    if (swift_dynamicCast())
    {
      v14 = _findStringSwitchCase(cases:string:)(&off_1001F6398, v19);

      sub_10010FA4C(v21);

      v15 = v14 != 0;
      goto LABEL_13;
    }

    sub_10010FA4C(v21);
  }

  v15 = 1;
LABEL_13:
  *(v1 + 72) = v15;
  swift_beginAccess();
  if (*(v1 + 73) == 1)
  {
    *(v1 + 73) = 1;
    sub_100174AEC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *v20 = v1;
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_beginAccess();
  if (*(v1 + 74) == 1)
  {
    *(v1 + 74) = 1;
    sub_100174F04();
  }

  else
  {
    v17 = swift_getKeyPath();
    __chkstk_darwin(v17);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10010FA4C(a1);
  return v1;
}

uint64_t sub_100172D7C(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 73) == v2)
  {
    *(v1 + 73) = v2;
    return sub_100174AEC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100172EA4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 74) == v2)
  {
    *(v1 + 74) = v2;
    sub_100174F04();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

_UNKNOWN **sub_100172FCC()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v0 + 74))
  {
    return &off_1001F63E8;
  }

  else
  {
    return &off_1001F6410;
  }
}

uint64_t sub_100173098()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 74);
}

double sub_10017314C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 74);
  swift_getKeyPath();
  if (v2 == 1)
  {
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v3 = *(v1 + 56);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v4 = *(v1 + 40);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (v3 > 1)
    {
      v5 = *(v1 + 64);
      if (v3 == 2)
      {
        return v4 / v5;
      }

      if (v3 == 3)
      {
        v6 = 2.54;
      }

      else
      {
        v6 = 25.4;
      }

      return v4 * v6 / v5;
    }

    if (!v3)
    {
      return v4;
    }

    v11 = v4 / *(v1 + 16);
    return v11 * 100.0;
  }

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v1 + 56);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v8 * (v9 / *(v1 + 64));
  if (v7 <= 1)
  {
    if (!v7)
    {
      return v4;
    }

    v11 = v4 / v8;
    return v11 * 100.0;
  }

  if (v7 == 2)
  {
    return v4 / v9;
  }

  if (v7 == 3)
  {
    v10 = 2.54;
  }

  else
  {
    v10 = 25.4;
  }

  return v4 * v10 / v9;
}

void sub_10017343C(double a1)
{
  v2 = a1;
  if (a1 >= 0.0 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a1 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v5 = v1;
    swift_getKeyPath();
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v6 = *(v1 + 74);
    swift_getKeyPath();
    if (v6 == 1)
    {
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v7 = *(v5 + 56);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v8 = *(v5 + 16);
      if (v7 <= 1)
      {
        if (v7)
        {
          v2 = v2 / 100.0 * v8;
        }
      }

      else
      {
        v9 = *(v5 + 64);
        if (v7 == 2)
        {
          v2 = v9 * v2;
        }

        else
        {
          if (v7 == 3)
          {
            v10 = 2.54;
          }

          else
          {
            v10 = 25.4;
          }

          v2 = v2 / v10 * v9;
        }
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      *(v5 + 40) = v2;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      if (*(v5 + 73) == 1)
      {
        v15 = v2 / (v8 / *(v5 + 24));
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        *(v5 + 48) = v15;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }
    }

    else
    {
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v11 = *(v5 + 56);
      v12 = *(v5 + 32);
      v13 = *(v5 + 16);
      if (v11 <= 1)
      {
        if (*(v5 + 56))
        {
          v2 = v2 / 100.0 * v13;
        }
      }

      else if (v11 == 2)
      {
        v2 = v12 * v2;
      }

      else
      {
        if (v11 == 3)
        {
          v14 = 2.54;
        }

        else
        {
          v14 = 25.4;
        }

        v2 = v2 / v14 * v12;
      }

      v16 = v12 * (v13 / v2);
      swift_beginAccess();
      if (*(v5 + 64) == v16)
      {
        *(v5 + 64) = v16;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }
}

uint64_t sub_100173910()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 73);
}

void (*sub_1001739C4(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_10017314C();
  return sub_100173A0C;
}

double sub_100173A34()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 74);
  swift_getKeyPath();
  if (v2 == 1)
  {
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v3 = *(v1 + 56);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v4 = *(v1 + 48);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (v3 > 1)
    {
      v5 = *(v1 + 64);
      if (v3 == 2)
      {
        return v4 / v5;
      }

      if (v3 == 3)
      {
        v6 = 2.54;
      }

      else
      {
        v6 = 25.4;
      }

      return v4 * v6 / v5;
    }

    if (!v3)
    {
      return v4;
    }

    v11 = v4 / *(v1 + 24);
    return v11 * 100.0;
  }

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v7 = *(v1 + 56);
  v9 = *(v1 + 24);
  v8 = *(v1 + 32);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v9 * (v8 / *(v1 + 64));
  if (v7 <= 1)
  {
    if (!v7)
    {
      return v4;
    }

    v11 = v4 / v9;
    return v11 * 100.0;
  }

  if (v7 == 2)
  {
    return v4 / v8;
  }

  if (v7 == 3)
  {
    v10 = 2.54;
  }

  else
  {
    v10 = 25.4;
  }

  return v4 * v10 / v8;
}

void sub_100173D20(double a1)
{
  v2 = a1;
  if (a1 >= 0.0 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a1 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v5 = v1;
    swift_getKeyPath();
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v6 = *(v1 + 74);
    swift_getKeyPath();
    if (v6 == 1)
    {
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v7 = *(v5 + 56);
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v8 = *(v5 + 24);
      if (v7 <= 1)
      {
        if (v7)
        {
          v2 = v2 / 100.0 * v8;
        }
      }

      else
      {
        v9 = *(v5 + 64);
        if (v7 == 2)
        {
          v2 = v9 * v2;
        }

        else
        {
          if (v7 == 3)
          {
            v10 = 2.54;
          }

          else
          {
            v10 = 25.4;
          }

          v2 = v2 / v10 * v9;
        }
      }

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      *(v5 + 48) = v2;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      if (*(v5 + 73) == 1)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v15 = *(v5 + 48) * (*(v5 + 16) / v8);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        ObservationRegistrar.willSet<A, B>(_:keyPath:)();

        *(v5 + 40) = v15;
        swift_getKeyPath();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      }
    }

    else
    {
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v11 = *(v5 + 56);
      v13 = *(v5 + 24);
      v12 = *(v5 + 32);
      if (v11 <= 1)
      {
        if (*(v5 + 56))
        {
          v2 = v2 / 100.0 * v13;
        }
      }

      else if (v11 == 2)
      {
        v2 = v12 * v2;
      }

      else
      {
        if (v11 == 3)
        {
          v14 = 2.54;
        }

        else
        {
          v14 = 25.4;
        }

        v2 = v2 / v14 * v12;
      }

      v16 = v12 * (v13 / v2);
      swift_beginAccess();
      if (*(v5 + 64) == v16)
      {
        *(v5 + 64) = v16;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }
}

void (*sub_100174220(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_100173A34();
  return sub_100174268;
}

double sub_100174290()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v0 + 64);
  if (v1)
  {
    v3 = 0xED000068636E4972;
  }

  else
  {
    v3 = 0x80000001001B5EA0;
  }

  if (v1 == 1 && v3 == 0xED000068636E4972)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return v2 / 2.54;
    }
  }

  return v2;
}

void sub_10017443C(double a1)
{
  v2 = a1;
  if (a1 >= 0.0 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a1 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v5 = v1;
    v6 = sub_10017314C();
    v7 = sub_100173A34();
    swift_getKeyPath();
    sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v8 = *(v1 + 72);
    if (*(v1 + 72))
    {
      v9 = 0xED000068636E4972;
    }

    else
    {
      v9 = 0x80000001001B5EA0;
    }

    if (v8 == 1 && v9 == 0xED000068636E4972)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v2 = v2 * 2.54;
      }
    }

    swift_beginAccess();
    if (*(v5 + 64) == v2)
    {
      *(v5 + 64) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v5 + 56) <= 1u && !*(v5 + 56))
    {

      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      if (*(v5 + 74) == 1)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v13 = *(v5 + 56);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (v13 <= 1)
        {
          if (!v13)
          {
            goto LABEL_34;
          }

          v14 = *(v5 + 16);
          v16 = 0x4059000000000000;
        }

        else
        {
          v14 = *(v5 + 64);
          if (v13 == 2)
          {
            v6 = v6 * v14;
            goto LABEL_34;
          }

          if (v13 == 3)
          {
            v15 = 2.54;
LABEL_33:
            v6 = v6 / v15 * v14;
LABEL_34:
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            swift_getKeyPath();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();

            swift_beginAccess();
            *(v5 + 40) = v6;
            swift_getKeyPath();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();

            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v17 = *(v5 + 56);
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (v17 <= 1)
            {
              if (v17)
              {
                v18 = *(v5 + 24);
                v20 = 0x4059000000000000;
                goto LABEL_42;
              }
            }

            else
            {
              v18 = *(v5 + 64);
              if (v17 != 2)
              {
                if (v17 == 3)
                {
                  v19 = 2.54;
LABEL_43:
                  v7 = v7 / v19 * v18;
                  goto LABEL_44;
                }

                v20 = 0x4039666666666666;
LABEL_42:
                v19 = *&v20;
                goto LABEL_43;
              }

              v7 = v7 * v18;
            }

LABEL_44:
            swift_getKeyPath();
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            swift_getKeyPath();
            ObservationRegistrar.willSet<A, B>(_:keyPath:)();

            *(v5 + 48) = v7;
            swift_getKeyPath();
            ObservationRegistrar.didSet<A, B>(_:keyPath:)();

            return;
          }

          v16 = 0x4039666666666666;
        }

        v15 = *&v16;
        goto LABEL_33;
      }
    }
  }
}

void (*sub_100174A7C(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_100174290();
  return sub_100174AC4;
}

uint64_t sub_100174AEC()
{
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(v0 + 73) == 1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    result = swift_beginAccess();
    if (*(v0 + 40) == v3 && *(v0 + 48) == v2)
    {
      *(v0 + 40) = v3;
      *(v0 + 48) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t (*sub_100174C70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100174CC4;
}

uint64_t sub_100174CDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 73);
  return result;
}

void (*sub_100174DC0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100174C70(v4);
  return sub_100174EF8;
}

void sub_100174F04()
{
  v1 = type metadata accessor for Locale.MeasurementSystem();
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Locale();
  v15 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v0;
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v0 + 56) > 1u || *(v0 + 56))
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  v18 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if ((*(v0 + 74) & 1) == 0)
  {
    static Locale.autoupdatingCurrent.getter();
    Locale.measurementSystem.getter();
    (*(v15 + 8))(v9, v7);
    static Locale.MeasurementSystem.metric.getter();
    v11 = static Locale.MeasurementSystem.== infix(_:_:)();
    v12 = *(v16 + 8);
    v12(v3, v1);
    v12(v6, v1);
    if (v11)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v17 = v13;
    sub_10017192C(&v17);
  }
}

uint64_t (*sub_10017526C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001752C0;
}

uint64_t sub_1001752D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_10017531C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 74);
  return result;
}

void (*sub_100175400(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10017526C(v4);
  return sub_100175538;
}

double sub_100175544(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_1001762B0(&qword_10020FE60, type metadata accessor for ResizeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = v1[5];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = v3 / v1[2] * 100.0;
    }
  }

  else
  {
    v4 = v1[8];
    if (v2 == 2)
    {
      v3 = v3 / v4;
    }

    else
    {
      if (v2 == 3)
      {
        v5 = 2.54;
      }

      else
      {
        v5 = 25.4;
      }

      v3 = v3 * v5 / v4;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v3;
}

uint64_t sub_100175780()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001757E0()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation15ResizeViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10017587C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 72) = v2;
  sub_100172218();
}

void sub_1001758D8(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v6 = a1[4];
  sub_100140DC8(a1, v7);
  (*(*(v6 + 8) + 8))(v7);
  v9 = v8;
  v11 = a1[3];
  v10 = a1[4];
  sub_100140DC8(a1, v11);
  v12 = (*(*(v10 + 8) + 16))(v11);
  if ((v9 & 1) == 0 && (v13 & 1) == 0)
  {
    return;
  }

  v33 = v13;
  v32[1] = v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_100140DC8(a1, v14);
  (*(v15 + 16))(v14, v15);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = CGImageSourceCreateWithURL(v17, 0);

  if (!v19)
  {
LABEL_23:
    (*(v3 + 8))(v5, v2);
    return;
  }

  v20 = CGImageSourceCopyPropertiesAtIndex(v19, 0, 0);
  if (!v20)
  {
    (*(v3 + 8))(v5, v2);

    return;
  }

  v21 = v20;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_23;
  }

  v35[0] = 0;
  _s3__C8CFStringCMa_0(0);
  sub_1001762B0(&qword_10020D470, _s3__C8CFStringCMa_0);
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v22 = v35[0];
  if (!v35[0])
  {

    goto LABEL_23;
  }

  if (v9 & 1) != 0 && *(v35[0] + 16) && (v23 = sub_10010CB08(kCGImagePropertyPixelWidth), (v24) && (sub_1001150A0(*(v22 + 56) + 32 * v23, v35), (swift_dynamicCast()) && *(v22 + 16) && (v25 = sub_10010CB08(kCGImagePropertyPixelHeight), (v26) && (sub_1001150A0(*(v22 + 56) + 32 * v25, v35), (swift_dynamicCast()))
  {
    if (*(v22 + 16) && (v27 = sub_10010CB08(kCGImagePropertyOrientation), (v28 & 1) != 0) && (sub_1001150A0(*(v22 + 56) + 32 * v27, v35), (swift_dynamicCast() & 1) != 0))
    {
      v29 = v33;
      if (v34 >= 5)
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v29 = v33;
    }

    if ((v29 & 1) == 0)
    {
LABEL_32:
      (*(v3 + 8))(v5, v2);

      return;
    }
  }

  else if ((v33 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (*(v22 + 16) && (v30 = sub_10010CB08(kCGImagePropertyDPIWidth), (v31 & 1) != 0))
  {
    sub_1001150A0(*(v22 + 56) + 32 * v30, v35);

    (*(v3 + 8))(v5, v2);

    swift_dynamicCast();
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100175E64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 73) = v2;
  return sub_100174AEC();
}

void sub_100175EC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 74) = v2;
  sub_100174F04();
}

unint64_t sub_100175F20()
{
  result = qword_10020FE68;
  if (!qword_10020FE68)
  {
    sub_10010EC80(&qword_10020FE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FE68);
  }

  return result;
}

unint64_t sub_100175F88()
{
  result = qword_10020FE78;
  if (!qword_10020FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FE78);
  }

  return result;
}

uint64_t sub_10017615C()
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

uint64_t sub_10017625C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_1001762B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001763B4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_PreviewFoundation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100176580@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F6438, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1001765E4()
{
  if (*v0)
  {
    return 6778480;
  }

  else
  {
    return 6710384;
  }
}

uint64_t sub_100176608(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 6778480;
  }

  else
  {
    v2 = 6710384;
  }

  if (*a2)
  {
    v3 = 6778480;
  }

  else
  {
    v3 = 6710384;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100176680()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001766E8()
{
  String.hash(into:)();
}

Swift::Int sub_100176734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100176798@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F6438, *a1);

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

void sub_1001767F8(uint64_t *a1@<X8>)
{
  v2 = 6710384;
  if (*v1)
  {
    v2 = 6778480;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

double sub_100176820()
{
  v1 = v0 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_100176868(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100176920(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020FF70);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  sub_1001102D0(a1, &v10 - v3, &qword_10020FF70);
  type metadata accessor for URLDocumentCreationContext();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation;
  v7 = sub_1000FF5D8(&qword_10020FF80);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  swift_beginAccess();
  sub_100176C60(v4, v5 + v6);
  swift_endAccess();
  v8 = (v5 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize);
  *v8 = 0;
  v8[1] = 0;
  return v5;
}

uint64_t sub_100176A60(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation;
  v8 = sub_1000FF5D8(&qword_10020FF80);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_100176C60(a1, v6 + v7);
  swift_endAccess();
  v9 = (v6 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize);
  *v9 = a2;
  v9[1] = a3;
  return v6;
}

uint64_t type metadata accessor for URLDocumentCreationContext()
{
  result = qword_10020FFB8;
  if (!qword_10020FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100176B90(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation;
  v8 = sub_1000FF5D8(&qword_10020FF80);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_100176C60(a1, v3 + v7);
  swift_endAccess();
  v9 = (v3 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_100176C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020FF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100176CD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000FF5D8(&qword_10020FF80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v34 - v6;
  v7 = sub_1000FF5D8(&qword_10020FF70);
  __chkstk_darwin(v7 - 8);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v12 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  if (qword_10020D078 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100101048(v20, qword_10020E6C0);
  v40 = a1;
  sub_1001102D0(a1, v19, &qword_10020DAA8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v35 = v5;
    v36 = v4;
    v37 = v1;
    v23 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42[0] = v34;
    *v23 = 136315138;
    sub_1001102D0(v19, v16, &qword_10020DAA8);
    v24 = type metadata accessor for URL();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v16, 1, v24) == 1)
    {
      sub_100110174(v16, &qword_10020DAA8);
      v26 = 0xE300000000000000;
      v27 = 4271950;
    }

    else
    {
      v27 = URL.path.getter();
      v26 = v28;
      (*(v25 + 8))(v16, v24);
    }

    v4 = v36;
    sub_100110174(v19, &qword_10020DAA8);
    v29 = sub_100125658(v27, v26, v42);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_100000000, v21, v22, "New document created at %s", v23, 0xCu);
    sub_10010FA4C(v34);

    v2 = v37;
    v5 = v35;
  }

  else
  {

    sub_100110174(v19, &qword_10020DAA8);
  }

  v30 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation;
  swift_beginAccess();
  sub_1001102D0(v2 + v30, v11, &qword_10020FF70);
  if ((*(v5 + 48))(v11, 1, v4))
  {
    sub_100110174(v11, &qword_10020FF70);
  }

  else
  {
    v31 = v39;
    (*(v5 + 16))(v39, v11, v4);
    sub_100110174(v11, &qword_10020FF70);
    sub_1001102D0(v40, v38, &qword_10020DAA8);
    CheckedContinuation.resume(returning:)();
    (*(v5 + 8))(v31, v4);
  }

  v32 = v41;
  (*(v5 + 56))(v41, 1, 1, v4);
  swift_beginAccess();
  sub_100176C60(v32, v2 + v30);
  return swift_endAccess();
}

uint64_t sub_100177230()
{
  v1 = v0;
  v2 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_1000FF5D8(&qword_10020FF70);
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v22[-v9];
  v11 = sub_1000FF5D8(&qword_10020FF80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-v13];
  v15 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation;
  swift_beginAccess();
  sub_1001102D0(v1 + v15, v10, &qword_10020FF70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100110174(v10, &qword_10020FF70);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (qword_10020D078 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100101048(v17, qword_10020E6C0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_100000000, v18, v19, "New document creation canceled", v20, 2u);
  }

  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  CheckedContinuation.resume(returning:)();
  (*(v12 + 8))(v14, v11);
  (*(v12 + 56))(v7, 1, 1, v11);
  swift_beginAccess();
  sub_100176C60(v7, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_1001775B8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v69 - v9;
  __chkstk_darwin(v10);
  v79 = &v69 - v11;
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  v15 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v21 = *a2;
  v22 = v6;
  sub_1001102D0(a1, v17, &qword_10020DAA8);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    sub_100110174(v17, &qword_10020DAA8);
    v23 = 1;
LABEL_17:
    (*(v22 + 56))(v20, v23, 1, v5);
    sub_100176CD0(v20);
    return sub_100110174(v20, &qword_10020DAA8);
  }

  v75 = v20;
  v76 = v2;
  v70 = *(v6 + 32);
  v71 = v6 + 32;
  v70(v14, v17, v5);
  if (qword_10020D078 != -1)
  {
    swift_once();
  }

  v73 = v21;
  v24 = type metadata accessor for Logger();
  sub_100101048(v24, qword_10020E6C0);
  v25 = *(v6 + 16);
  v74 = v14;
  v72 = v25;
  v25(v79, v14, v5);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v5;
    v30 = v22;
    v31 = swift_slowAlloc();
    v80 = v31;
    *v28 = 136315138;
    v32 = v79;
    v33 = URL.path.getter();
    v35 = v34;
    v79 = *(v30 + 8);
    (v79)(v32, v29);
    v36 = sub_100125658(v33, v35, &v80);

    *(v28 + 4) = v36;
    _os_log_impl(&dword_100000000, v26, v27, "Will create new document from template %s", v28, 0xCu);
    sub_10010FA4C(v31);
    v22 = v30;
    v5 = v29;
  }

  else
  {

    v37 = v79;
    v79 = *(v6 + 8);
    (v79)(v37, v5);
  }

  v39 = v77;
  v38 = v78;
  v40 = objc_opt_self();
  v41 = [v40 defaultManager];
  v42 = [v41 URLsForDirectory:9 inDomains:1];

  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v43 + 16))
  {

    if (!*(v43 + 16))
    {
      __break(1u);
    }

    v44 = v22;
    v72(v39, v43 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v5);

    LOBYTE(v80) = v73;
    sub_1001763B4();
    URL.appendingPathComponent(_:)();

    v45 = [v40 defaultManager];
    URL.path.getter();
    v46 = String._bridgeToObjectiveC()();

    v47 = [v45 fileExistsAtPath:v46];

    v20 = v75;
    if (v47)
    {
      v48 = [v40 defaultManager];
      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v80 = 0;
      v52 = [v48 removeItemAtURL:v50 error:&v80];

      if (v52)
      {
        v53 = v80;
      }

      else
      {
        v54 = v80;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    v55 = [v40 defaultManager];
    v56 = v74;
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    URL._bridgeToObjectiveC()(v60);
    v62 = v61;
    v80 = 0;
    v63 = [v55 copyItemAtURL:v59 toURL:v61 error:&v80];

    if (v63)
    {
      v22 = v44;
      v64 = v80;
      v65 = v79;
      (v79)(v39, v5);
      v65(v56, v5);
      v70(v20, v38, v5);
      v23 = 0;
    }

    else
    {
      v66 = v80;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v22 = v44;
      v67 = v79;
      (v79)(v38, v5);
      v67(v39, v5);
      v67(v56, v5);

      v23 = 1;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100177D2C()
{
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_documentCreationContinuation, &qword_10020FF70);

  return swift_deallocClassInstance();
}

uint64_t sub_100177DA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for URLDocumentCreationContext();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100177DE4()
{
  v0 = type metadata accessor for UTType();
  __chkstk_darwin(v0 - 8);
  URL.pathExtension.getter();
  static UTType.data.getter();
  return UTType.init(filenameExtension:conformingTo:)();
}

unint64_t sub_100177E80()
{
  result = qword_10020FF88;
  if (!qword_10020FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020FF88);
  }

  return result;
}

__n128 sub_100177EE0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_100177F38(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC17PreviewFoundation26URLDocumentCreationContext_windowSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

void sub_100177F98()
{
  sub_100178134();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100178134()
{
  if (!qword_10020FFC8)
  {
    sub_10010EC80(&qword_10020FF80);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020FFC8);
    }
  }
}

uint64_t sub_1001781BC(uint64_t a1, int a2)
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

uint64_t sub_100178204(uint64_t result, int a2, int a3)
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

void sub_100178254(uint64_t a1)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  isa = v3[-1].isa;
  v68 = v3;
  __chkstk_darwin(v3);
  v64 = (v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = v58 - v8;
  v9 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v9 - 8);
  v60 = v58 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v61 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v58 - v15;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100101048(v17, qword_10020E690);
  v69 = *(v12 + 16);
  v70 = v12 + 16;
  v69(v16, v72, v11);
  v58[1] = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v71 = v11;
  if (v21)
  {
    v22 = v12;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v59 = v2;
    v25 = v24;
    v73 = v24;
    *v23 = 136315138;
    v26 = URL.path.getter();
    v28 = v27;
    (*(v22 + 8))(v16, v71);
    v29 = sub_100125658(v26, v28, &v73);
    v11 = v71;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_100000000, v19, v20, "[ImageDocument] read(from:%s)", v23, 0xCu);
    sub_10010FA4C(v25);
    v2 = v59;

    v12 = v22;
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v59 = dispatch_group_create();
  dispatch_group_enter(v59);
  type metadata accessor for SendableErrorResult();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v31 = v2;
  v32 = v60;
  static TaskPriority.userInitiated.getter();
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v61;
  v69(v61, v72, v11);
  v35 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = v31;
  (*(v12 + 32))(&v37[v35], v34, v71);
  *&v37[v36] = v30;
  v38 = v59;
  *&v37[(v36 + 15) & 0xFFFFFFFFFFFFFFF8] = v59;
  v61 = v31;
  v39 = v30;

  v40 = v38;
  sub_100179678(0, 0, v32, &unk_1001A9410, v37);
  sub_100110174(v32, &qword_10020D600);
  v41 = v62;
  static DispatchTime.now()();
  v42 = v64;
  *v64 = 10;
  v44 = isa;
  v43 = v68;
  (*(isa + 13))(v42, enum case for DispatchTimeInterval.seconds(_:), v68);
  v45 = v63;
  + infix(_:_:)();
  (*(v44 + 1))(v42, v43);
  v46 = *(v65 + 8);
  v47 = v41;
  v48 = v66;
  v46(v47, v66);
  v68 = v40;
  OS_dispatch_group.wait(timeout:)();
  v46(v45, v48);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    Task.cancel()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_100000000, v49, v50, "[ImageDocument] Reading timed out", v51, 2u);
    }

    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_14:

    return;
  }

  if (*(v39 + 16))
  {
    swift_errorRetain();
    swift_errorRetain();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&dword_100000000, v52, v53, "[ImageDocument] Error loading content: %@", v54, 0xCu);
      sub_100110174(v55, &qword_10020DAB0);
    }

    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    v69(v57, v72, v71);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_14;
  }
}

uint64_t sub_100178B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1000FF5D8(&qword_10020D600);
  v7[6] = swift_task_alloc();
  v8 = sub_1000FF5D8(&qword_10020E078);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v7[9] = *(v9 + 64);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v10 = type metadata accessor for ImageFileSync();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_100178C78, 0, 0);
}

uint64_t sub_100178C78()
{
  v1 = v0[2];
  ImageFileSync.init(encryptPrivateMetadata:)();
  v2 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v1];
  v0[15] = v2;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100178D50;
  v4 = v0[11];
  v5 = v0[3];

  return ImageFileSync.readAsync(from:coordinator:)(v4, v5, v2);
}

uint64_t sub_100178D50()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100179114;
  }

  else
  {
    v2 = sub_100178E64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100178E64()
{
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_100000000, v2, v3, "[ImageDocument] Content Loaded", v4, 2u);
  }

  v22 = *(v0 + 112);
  v5 = *(v0 + 104);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v19 = v6;
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 16);

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v8 + 16))(v7, v6, v9);
  type metadata accessor for MainActor();
  v13 = v11;
  v14 = static MainActor.shared.getter();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = v13;
  (*(v8 + 32))(&v16[v15], v7, v9);
  sub_100128F38(0, 0, v10, &unk_1001A94C0, v16);

  (*(v8 + 8))(v19, v9);
  (*(v5 + 8))(v22, v21);
  dispatch_group_leave(*(v0 + 40));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100179114()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 32);

  (*(v4 + 8))(v2, v3);
  *(v5 + 16) = v1;

  dispatch_group_leave(*(v0 + 40));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001791E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001792DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100110344;

  return sub_100178B00(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_100179420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1000FF5D8(&qword_10020E068);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001794F0, v7, v6);
}

uint64_t sub_1001794F0()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];

  v4 = sub_1000FF5D8(&qword_10020E078);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  sub_10012EF9C(v1, v3 + v6);
  swift_endAccess();
  v7 = v3 + OBJC_IVAR____TtC17PreviewFoundation8Document_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100179678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1001102D0(a3, v25 - v10, &qword_10020D600);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100110174(v11, &qword_10020D600);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_100179938()
{
  result = qword_100210098;
  if (!qword_100210098)
  {
    type metadata accessor for Document.DocumentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100210098);
  }

  return result;
}

uint64_t sub_100179AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for ImageFileSync();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100179BC8, 0, 0);
}

uint64_t sub_100179BC8()
{
  v1 = v0[2];
  ImageFileSync.init(encryptPrivateMetadata:)();
  v2 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v1];
  v0[11] = v2;
  v3 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_context);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100179CBC;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return ImageFileSync.writeAsync(_:to:context:coordinator:imageType:embeddingSourceImageAndEditModel:)(v7, v5, v3, v2, v6, 1);
}

uint64_t sub_100179CBC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100179F2C;
  }

  else
  {
    v2 = sub_100179DD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100179DD0()
{
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_100000000, v2, v3, "[ImageDocument] Content written successfully", v9, 2u);
  }

  (*(v8 + 8))(v5, v7);
  dispatch_group_leave(*(v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100179F2C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  (*(v4 + 8))(v2, v3);
  *(v5 + 16) = v1;

  dispatch_group_leave(*(v0 + 56));

  v6 = *(v0 + 8);

  return v6();
}

id sub_10017A288(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithFileURL:v5];

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_10017A320(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_context;
  type metadata accessor for CRContext();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v6 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100110174(v16, &qword_1002100A0);
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  v8 = sub_1000FF5D8(&qword_10020E078);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFileURL:", v10);

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_10017A66C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017A714()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017A74C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10017A844;

  return v6(a1);
}

uint64_t sub_10017A844()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10017A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v128 = a3;
  v131 = a2;
  v5 = type metadata accessor for DispatchTimeInterval();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v114 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for DispatchTime();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v102 - v9;
  v10 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v10 - 8);
  v126 = &v102 - v11;
  v12 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v12 - 8);
  v123 = &v102 - v13;
  v14 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v14 - 8);
  v107 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v121 = (&v102 - v17);
  v18 = type metadata accessor for URL();
  v129 = *(v18 - 8);
  __chkstk_darwin(v18);
  v125 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v19;
  __chkstk_darwin(v20);
  v122 = &v102 - v21;
  v22 = type metadata accessor for UTType();
  v133 = *(v22 - 8);
  v134 = v22;
  __chkstk_darwin(v22);
  v132 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v23;
  __chkstk_darwin(v24);
  v130 = &v102 - v25;
  v26 = sub_1000FF5D8(&qword_10020E068);
  __chkstk_darwin(v26 - 8);
  v28 = &v102 - v27;
  v29 = sub_1000FF5D8(&qword_10020E078);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v124 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v31;
  __chkstk_darwin(v32);
  v34 = &v102 - v33;
  v35 = OBJC_IVAR____TtC17PreviewFoundation13ImageDocument_capsule;
  swift_beginAccess();
  v111 = v4;
  sub_1001102D0(v4 + v35, v28, &qword_10020E068);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v36 = &qword_10020E068;
    v37 = v28;
LABEL_9:
    sub_100110174(v37, v36);
    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v120 = v30;
  v38 = *(v30 + 32);
  v127 = v29;
  v106 = v30 + 32;
  v105 = v38;
  v38(v34, v28, v29);
  v39 = v121;
  sub_1001102D0(v128, v121, &qword_10020DAA8);
  v40 = v129;
  v41 = *(v129 + 48);
  v42 = v41(v39, 1, v18);
  v119 = v34;
  if (v42 == 1)
  {
    v43 = v122;
    (*(v40 + 16))(v122, v131, v18);
    v44 = v18;
    if (v41(v39, 1, v18) != 1)
    {
      sub_100110174(v39, &qword_10020DAA8);
    }
  }

  else
  {
    v43 = v122;
    (*(v40 + 32))(v122, v39, v18);
    v44 = v18;
  }

  URL.pathExtension.getter();
  static UTType.data.getter();
  v45 = v123;
  UTType.init(filenameExtension:conformingTo:)();
  v46 = v40;
  v47 = v45;
  v48 = *(v46 + 8);
  v48(v43, v44);
  v50 = v133;
  v49 = v134;
  if ((*(v133 + 48))(v47, 1, v134) == 1)
  {
    (*(v120 + 8))(v119, v127);
    v36 = &qword_10020D2F8;
    v37 = v47;
    goto LABEL_9;
  }

  v121 = *(v50 + 32);
  v122 = (v50 + 32);
  (v121)(v130, v47, v49);
  v123 = URL.path.getter();
  v53 = v52;
  v54 = v107;
  sub_1001102D0(v128, v107, &qword_10020DAA8);
  v55 = v41(v54, 1, v44);
  v128 = v44;
  if (v55 == 1)
  {
    sub_100110174(v54, &qword_10020DAA8);
    v56 = 0xE300000000000000;
    v57 = 7104878;
  }

  else
  {
    v57 = URL.path.getter();
    v56 = v58;
    v48(v54, v44);
  }

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = sub_100101048(v59, qword_10020E690);

  v104 = v60;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v63 = 136315394;
    v64 = sub_100125658(v123, v53, &v135);

    *(v63 + 4) = v64;
    *(v63 + 12) = 2080;
    v65 = sub_100125658(v57, v56, &v135);

    *(v63 + 14) = v65;
    _os_log_impl(&dword_100000000, v61, v62, "[ImageDocument] writeContents(to:%s, originalContentsURL: %s)", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v66 = v129;
  v107 = dispatch_group_create();
  dispatch_group_enter(v107);
  type metadata accessor for SendableErrorResult();
  v123 = swift_allocObject();
  *(v123 + 16) = 0;
  v67 = v111;
  v68 = v126;
  static TaskPriority.userInitiated.getter();
  v69 = type metadata accessor for TaskPriority();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v120 + 16;
  (*(v120 + 16))(v124, v119, v127);
  v71 = *(v66 + 16);
  v111 = (v66 + 16);
  v103 = v71;
  v71(v125, v131, v128);
  v72 = v133 + 16;
  v73 = v134;
  (*(v133 + 16))(v132, v130, v134);
  v74 = (*(v70 + 64) + 40) & ~*(v70 + 64);
  v75 = (v108 + *(v66 + 80) + v74) & ~*(v66 + 80);
  v76 = (v110 + *(v72 + 64) + v75) & ~*(v72 + 64);
  v77 = (v109 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 2) = 0;
  *(v78 + 3) = 0;
  *(v78 + 4) = v67;
  v105(&v78[v74], v124, v127);
  (*(v66 + 32))(&v78[v75], v125, v128);
  v79 = v73;
  v80 = v123;
  (v121)(&v78[v76], v132, v79);
  *&v78[v77] = v80;
  v81 = v107;
  *&v78[(v77 + 15) & 0xFFFFFFFFFFFFFFF8] = v107;
  v132 = v67;

  v82 = v81;
  v83 = v126;
  sub_100179678(0, 0, v126, &unk_1001A9498, v78);
  sub_100110174(v83, &qword_10020D600);
  v84 = v112;
  static DispatchTime.now()();
  v85 = v114;
  *v114 = 30;
  v87 = v117;
  v86 = v118;
  (*(v117 + 104))(v85, enum case for DispatchTimeInterval.seconds(_:), v118);
  v88 = v113;
  + infix(_:_:)();
  (*(v87 + 8))(v85, v86);
  v89 = *(v115 + 8);
  v90 = v116;
  v89(v84, v116);
  OS_dispatch_group.wait(timeout:)();
  v89(v88, v90);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    Task.cancel()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_100000000, v91, v92, "[ImageDocument] Writing timed out", v93, 2u);
    }

    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v133 + 8))(v130, v134);
    return (*(v120 + 8))(v119, v127);
  }

  if (*(v80 + 16))
  {
    swift_errorRetain();
    swift_errorRetain();
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    v96 = os_log_type_enabled(v94, v95);
    v97 = v133;
    if (v96)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      swift_errorRetain();
      v100 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 4) = v100;
      *v99 = v100;
      _os_log_impl(&dword_100000000, v94, v95, "[ImageDocument] File write error: %@", v98, 0xCu);
      sub_100110174(v99, &qword_10020DAB0);
    }

    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    v103(v101, v131, v128);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v97 + 8))(v130, v134);
    return (*(v120 + 8))(v119, v127);
  }

  (*(v133 + 8))(v130, v134);
  return (*(v120 + 8))(v119, v127);
}

uint64_t type metadata accessor for ImageDocument()
{
  result = qword_1002100D0;
  if (!qword_1002100D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017B970()
{
  sub_10017BA10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10017BA10()
{
  if (!qword_1002100E0)
  {
    sub_10010EC80(&qword_10020E078);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002100E0);
    }
  }
}

uint64_t sub_10017BA8C()
{
  v13 = sub_1000FF5D8(&qword_10020E078);
  v1 = *(v13 - 8);
  v12 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = (v12 + v2 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v12, v13);
  (*(v4 + 8))(v0 + v5, v3);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_10017BCA8(uint64_t a1)
{
  v3 = *(sub_1000FF5D8(&qword_10020E078) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UTType() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10010E934;

  return sub_100179AF8(a1, v11, v12, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t sub_10017BEBC()
{

  return swift_deallocObject();
}

uint64_t sub_10017BEF4()
{
  v1 = sub_1000FF5D8(&qword_10020E078);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10017BFCC(uint64_t a1)
{
  v4 = *(sub_1000FF5D8(&qword_10020E078) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100110344;

  return sub_100179420(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10017C0E0@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F60A8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

double sub_10017C144(double a1)
{
  if (*v1)
  {
    v3 = 0xED000068636E4972;
  }

  else
  {
    v3 = 0x80000001001B5EA0;
  }

  if (*v1 == 1 && v3 == 0xED000068636E4972)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return a1 / 2.54;
    }
  }

  return a1;
}

double sub_10017C1FC(double a1)
{
  if (*v1)
  {
    v3 = 0xED000068636E4972;
  }

  else
  {
    v3 = 0x80000001001B5EA0;
  }

  if (*v1 == 1 && v3 == 0xED000068636E4972)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return a1 * 2.54;
    }
  }

  return a1;
}

uint64_t sub_10017C2B8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10017C4A8()
{
  if (*v0)
  {
    return 0x6550736C65786970;
  }

  else
  {
    return 0xD000000000000013;
  }
}

id sub_10017C4F4()
{
  result = sub_10017C514();
  qword_100222898 = result;
  return result;
}

id sub_10017C514()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  [v0 setMinimumFractionDigits:0];
  [v0 setUsesGroupingSeparator:0];
  [v0 setLenient:1];
  [v0 setMaximumFractionDigits:2];
  sub_100170D48();
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  [v0 setMinimum:isa];

  v2 = NSNumber.init(integerLiteral:)(2000).super.super.isa;
  [v0 setMaximum:v2];

  return v0;
}

id sub_10017C60C()
{
  if (qword_10020D2D0 != -1)
  {
    swift_once();
  }

  v1 = qword_100222898;

  return v1;
}

uint64_t sub_10017C668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6550736C65786970;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = 0x80000001001B5EA0;
  }

  else
  {
    v4 = 0xED000068636E4972;
  }

  if (*a2)
  {
    v5 = 0x6550736C65786970;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (*a2)
  {
    v6 = 0xED000068636E4972;
  }

  else
  {
    v6 = 0x80000001001B5EA0;
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

uint64_t sub_10017C720@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F60A8, *a1);

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

void sub_10017C780(unint64_t *a1@<X8>)
{
  v2 = 0x80000001001B5EA0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x6550736C65786970;
    v2 = 0xED000068636E4972;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_10017C7D4()
{
  result = qword_100210188;
  if (!qword_100210188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100210188);
  }

  return result;
}

Swift::Int sub_10017C828()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10017C8BC()
{
  String.hash(into:)();
}

Swift::Int sub_10017C93C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10017C9D0()
{
  result = qword_100210190;
  if (!qword_100210190)
  {
    sub_10010EC80(&qword_100210198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100210190);
  }

  return result;
}

uint64_t sub_10017CA60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  swift_beginAccess();
  return sub_1001102D0(v1 + v3, a1, &qword_10020EC18);
}

uint64_t sub_10017CAC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  swift_beginAccess();
  sub_100182924(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t (*sub_10017CBA0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17PreviewFoundation8Document_stateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10017CC40;
}

uint64_t sub_10017CCA8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_10017CD10(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17PreviewFoundation8Document_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100183DE8;
}

void sub_10017CDB0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10017CE38()
{
  v1[22] = v0;
  v2 = type metadata accessor for URL();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_1000FF5D8(&qword_1002101A0);
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_10017CF60, 0, 0);
}

uint64_t sub_10017CF60()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 29;
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v9 = v1[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10017D0FC;
  swift_continuation_init();
  v1[17] = v8;
  v10 = sub_10010F9E8(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v10, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10017E648;
  v1[13] = &unk_1001F95D8;
  [v9 autosaveWithCompletionHandler:v4];
  (*(v7 + 8))(v10, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_10017D0FC()
{

  return _swift_task_switch(sub_10017D1DC, 0, 0);
}

uint64_t sub_10017D1DC()
{
  v24 = v0;
  if (*(v0 + 232))
  {

    v1 = *(v0 + 8);
  }

  else
  {
    if (qword_10020D068 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 176);
    v3 = type metadata accessor for Logger();
    sub_100101048(v3, qword_10020E690);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v10 = *(v0 + 176);
      v9 = *(v0 + 184);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = type metadata accessor for Document(0);
      *(v0 + 160) = v10;
      *(v0 + 168) = v13;
      v14 = objc_msgSendSuper2((v0 + 160), "fileURL");
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = URL.absoluteString.getter();
      v17 = v16;
      (*(v8 + 8))(v7, v9);
      v18 = sub_100125658(v15, v17, &v23);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_100000000, v5, v6, "Save document failed: %s", v11, 0xCu);
      sub_10010FA4C(v12);
    }

    v19 = *(v0 + 176);
    type metadata accessor for Document.DocumentError(0);
    sub_100179938();
    swift_allocError();
    v20 = type metadata accessor for Document(0);
    *(v0 + 144) = v19;
    *(v0 + 152) = v20;
    v21 = objc_msgSendSuper2((v0 + 144), "fileURL");
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_10017D498(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = type metadata accessor for URL();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10017D55C, 0, 0);
}

uint64_t sub_10017D55C()
{
  v45 = v0;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  *(v0 + 120) = sub_100101048(v2, qword_10020E690);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 88);
    v41 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100125658(v10, v9, &v44);
    *(v11 + 12) = 2080;
    v12 = type metadata accessor for Document(0);
    *(v0 + 56) = v8;
    *(v0 + 64) = v12;
    v13 = objc_msgSendSuper2((v0 + 56), "fileURL");
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = URL.absoluteString.getter();
    v16 = v15;
    (*(v7 + 8))(v6, v41);
    v17 = sub_100125658(v14, v16, &v44);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_100000000, v4, v5, "Will applyPendingChanges [in: %s, url: %s]", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 88) + OBJC_IVAR____TtC17PreviewFoundation8Document_stateDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v42 = (*(v20 + 8) + **(v20 + 8));
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = sub_10017DA48;

    return v42(ObjectType, v20);
  }

  else
  {
    v24 = *(v0 + 88);

    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v29 = *(v0 + 104);
      v28 = *(v0 + 112);
      v30 = *(v0 + 88);
      v43 = *(v0 + 96);
      v32 = *(v0 + 72);
      v31 = *(v0 + 80);
      v33 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_100125658(v32, v31, &v44);
      *(v33 + 12) = 2080;
      v34 = type metadata accessor for Document(0);
      *(v0 + 40) = v30;
      *(v0 + 48) = v34;
      v35 = objc_msgSendSuper2((v0 + 40), "fileURL");
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = URL.absoluteString.getter();
      v38 = v37;
      (*(v29 + 8))(v28, v43);
      v39 = sub_100125658(v36, v38, &v44);

      *(v33 + 14) = v39;
      _os_log_impl(&dword_100000000, v26, v27, "Did applyPendingChanges [in: %s, url: %s]", v33, 0x16u);
      swift_arrayDestroy();
    }

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_10017DA48()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10017DB60, 0, 0);
}

uint64_t sub_10017DB60()
{
  v21 = v0;
  v1 = *(v0 + 88);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v19 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100125658(v9, v8, &v20);
    *(v10 + 12) = 2080;
    v11 = type metadata accessor for Document(0);
    *(v0 + 40) = v7;
    *(v0 + 48) = v11;
    v12 = objc_msgSendSuper2((v0 + 40), "fileURL");
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = URL.absoluteString.getter();
    v15 = v14;
    (*(v6 + 8))(v5, v19);
    v16 = sub_100125658(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_100000000, v3, v4, "Did applyPendingChanges [in: %s, url: %s]", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_10017DD5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Document(0);
  v1 = objc_msgSendSuper2(&v2, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10017DDB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000FF5D8(&qword_10020D2F8);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v14 - v6;
  v8 = [v2 fileType];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  UTType.init(_:)();
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v7, v10);
  }

  static UTType.item.getter();
  result = (v12)(v7, 1, v10);
  if (result != 1)
  {
    return sub_100110174(v7, &qword_10020D2F8);
  }

  return result;
}