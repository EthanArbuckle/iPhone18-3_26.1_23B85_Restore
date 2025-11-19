unint64_t sub_1000C4298(uint64_t a1)
{
  result = sub_1000C1BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C42C8()
{
  result = qword_100225BA0;
  if (!qword_100225BA0)
  {
    sub_10000460C(&qword_100225B98);
    sub_1000C4354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BA0);
  }

  return result;
}

unint64_t sub_1000C4354()
{
  result = qword_100225BA8;
  if (!qword_100225BA8)
  {
    sub_10000460C(&qword_100225BB0);
    sub_10000BFFC(&qword_100225BB8, &qword_100225BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BA8);
  }

  return result;
}

unint64_t sub_1000C440C()
{
  result = qword_100225BD0;
  if (!qword_100225BD0)
  {
    sub_10000460C(&qword_100225B68);
    sub_10000BFFC(&qword_100225BC8, &qword_100225B60);
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225BD0);
  }

  return result;
}

uint64_t sub_1000C44F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C455C()
{
  type metadata accessor for CompactDatePicker(0);

  return sub_1000C0A90();
}

uint64_t sub_1000C45F0()
{
  v1 = (type metadata accessor for CompactDatePicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = sub_1000024C4(&qword_100225A68);
  v4 = v2 + *(v3 + 32);

  v5 = type metadata accessor for CompactDatePickerConfiguration();
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v2 + v1[7];

  v10 = v9 + *(v3 + 32);

  v8(v10 + *(v5 + 20), v7);
  v11 = v2 + v1[8];

  v12 = v11 + *(v3 + 32);

  v8(v12 + *(v5 + 20), v7);

  v13 = v2 + v1[10];
  v8(v13, v7);
  v14 = sub_1000024C4(&qword_100222680);
  v8(v13 + *(v14 + 36), v7);

  return swift_deallocObject();
}

uint64_t sub_1000C4820()
{
  type metadata accessor for CompactDatePicker(0);

  return sub_1000BEBD0();
}

unint64_t sub_1000C4888()
{
  result = qword_100225C20;
  if (!qword_100225C20)
  {
    sub_10000460C(&qword_100224BD0);
    sub_1000C1544(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225C20);
  }

  return result;
}

uint64_t sub_1000C4984(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for CompactDatePickerConfiguration();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000C4A44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for CompactDatePickerConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C4AE4()
{
  result = type metadata accessor for CompactDatePickerConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000C4BAC(uint64_t a1)
{
  result = sub_1000C4BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C4BD4()
{
  result = qword_100225CE8;
  if (!qword_100225CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225CE8);
  }

  return result;
}

unint64_t sub_1000C4C48()
{
  result = qword_100225D28;
  if (!qword_100225D28)
  {
    sub_10000460C(&qword_100225D20);
    sub_1000C4D00();
    sub_10000BFFC(&qword_100225D68, &unk_100225D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D28);
  }

  return result;
}

unint64_t sub_1000C4D00()
{
  result = qword_100225D30;
  if (!qword_100225D30)
  {
    sub_10000460C(&qword_100225D18);
    sub_1000C4DB8();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D30);
  }

  return result;
}

unint64_t sub_1000C4DB8()
{
  result = qword_100225D38;
  if (!qword_100225D38)
  {
    sub_10000460C(&qword_100225D10);
    sub_1000C4E70();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D38);
  }

  return result;
}

unint64_t sub_1000C4E70()
{
  result = qword_100225D40;
  if (!qword_100225D40)
  {
    sub_10000460C(&qword_100225D08);
    sub_1000C4EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D40);
  }

  return result;
}

unint64_t sub_1000C4EFC()
{
  result = qword_100225D48;
  if (!qword_100225D48)
  {
    sub_10000460C(&qword_100225D00);
    sub_1000C4F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D48);
  }

  return result;
}

unint64_t sub_1000C4F88()
{
  result = qword_100225D50;
  if (!qword_100225D50)
  {
    sub_10000460C(&qword_100225CF8);
    sub_1000C5014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D50);
  }

  return result;
}

unint64_t sub_1000C5014()
{
  result = qword_100225D58;
  if (!qword_100225D58)
  {
    sub_10000460C(&qword_100225CF0);
    sub_1000C1544(&qword_100225D60, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D58);
  }

  return result;
}

uint64_t sub_1000C5148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_1000C516C);
}

uint64_t sub_1000C516C()
{
  v1 = (*(v0[7] + 40))(v0[6]);
  v3 = v2;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1000C5228;

  return sub_1000C5EA0(v1, v3);
}

uint64_t sub_1000C5228(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000C5380);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1000C5380()
{
  v1 = v0[7];
  v2 = v0[6];

  v3 = (*(v1 + 56))(v2, v1);
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1000C5448;

  return sub_1000C62A4(v3);
}

uint64_t sub_1000C5448(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1000C55D4;
  }

  else
  {

    v4 = sub_1000C556C;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_1000C556C()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000C55D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000C5640(uint64_t a1, void *a2)
{
  v4 = sub_1000024C4(&qword_100225DC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000C6FA0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C5C4C;
  aBlock[3] = &unk_100215C18;
  v10 = _Block_copy(aBlock);

  [a2 startWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_1000C57F0(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100225DC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_10006054C(0, &qword_100225DD0);
  v22 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v15, a3, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1000C7128;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185774;
  aBlock[3] = &unk_100215C68;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_1000C71C4();
  sub_1000024C4(qword_100225DE0);
  sub_1000604E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v7, v5);
  (*(v24 + 8))(v10, v25);
}

void sub_1000C5B74(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    [v3 image];
    sub_1000024C4(&qword_100225DC8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3)
    {
      sub_1000C6744();
      swift_allocError();
      *v4 = 4;
    }

    swift_errorRetain();
    sub_1000024C4(&qword_100225DC8);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_1000C5C4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000C5CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10001BED0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000024C4(qword_1002220B8);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10006054C(0, &qword_100225D90);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000C5DC8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10001BED0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000024C4(qword_1002220B8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000C5EA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000C5EC0);
}

uint64_t sub_1000C5EC0()
{
  v1 = objc_allocWithZone(MKMapItemIdentifier);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithIdentifierString:v2];
  v0[21] = v3;

  if (v3)
  {
    v4 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v3];
    v0[22] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C60B0;
    v5 = swift_continuation_init();
    v0[17] = sub_1000024C4(&qword_100225DA0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C5DC8;
    v0[13] = &unk_100215B38;
    v0[14] = v5;
    [v4 getMapItemWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1000C6744();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000C60B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1000C622C;
  }

  else
  {
    v2 = sub_1000C61C0;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000C61C0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C622C()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000C62C4()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000C6474;
    v3 = swift_continuation_init();
    v0[17] = sub_1000024C4(&qword_100225D88);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1000C5CD8;
    v0[13] = &unk_100215B10;
    v0[14] = v3;
    [v2 getMapItemsWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1000C6744();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000C6474()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1000C66D4;
  }

  else
  {
    v2 = sub_1000C6584;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000C6584()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[20];

    sub_1000C6744();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[20];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1000C66D4()
{
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000C6744()
{
  result = qword_100225D80;
  if (!qword_100225D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225D80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapKitRequester.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapKitRequester.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C6904()
{
  result = qword_100225DA8;
  if (!qword_100225DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225DA8);
  }

  return result;
}

uint64_t sub_1000C6958(uint64_t a1, double a2, double a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  return _swift_task_switch(sub_1000C697C);
}

uint64_t sub_1000C697C()
{
  v1 = *(v0 + 32);
  if (v1 == 0.0 || (v2 = *(v0 + 40), v2 == 0.0))
  {
    sub_1000C6744();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = [v3 location];
    [v4 coordinate];
    v6 = v5;
    v8 = v7;

    v9 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    *(v0 + 48) = v9;
    [v9 setRegion:{v6, v8, 0.01, 0.01}];
    [v9 setSize:{v1, v2}];
    [v9 setMapType:0];
    v10 = [v3 location];
    [v10 coordinate];
    v12 = v11;
    v14 = v13;

    v15 = [objc_opt_self() cameraLookingAtCenterCoordinate:v12 fromDistance:v14 pitch:750.0 heading:{0.0, 0.0}];
    [v9 setCamera:v15];

    sub_1000024C4(&qword_100225DB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001B9E80;
    *(v16 + 32) = [objc_opt_self() customFeatureAnnotationForMapItem:v3];
    sub_1000024C4(&qword_100225DB8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 _setCustomFeatureAnnotations:isa];

    v18 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v9];
    *(v0 + 56) = v18;
    v19 = swift_task_alloc();
    *(v0 + 64) = v19;
    *(v19 + 16) = v18;
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    v21 = sub_10006054C(0, &qword_100225DC0);
    *v20 = v0;
    v20[1] = sub_1000C6D08;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001001C6D90, sub_1000C6F04, v19, v21);
  }
}

uint64_t sub_1000C6D08()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000C6E90;
  }

  else
  {

    v2 = sub_1000C6E24;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1000C6E24()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C6E90()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C6F0C()
{
  v1 = sub_1000024C4(&qword_100225DC8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C6FA0(void *a1, uint64_t a2)
{
  v5 = *(sub_1000024C4(&qword_100225DC8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C57F0(a1, a2, v6);
}

uint64_t sub_1000C702C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C7044()
{
  v1 = sub_1000024C4(&qword_100225DC8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1000C7128()
{
  v1 = *(sub_1000024C4(&qword_100225DC8) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000C5B74(v3, v0 + v2, v4);
}

unint64_t sub_1000C71C4()
{
  result = qword_1002265B0;
  if (!qword_1002265B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002265B0);
  }

  return result;
}

uint64_t sub_1000C722C()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1000CBBA8(&qword_1002259D0, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1000C72AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UpcomingViewModel();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for UpcomingModule();
  v10 = (a4 + *(v9 + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  v13 = a4 + *(v9 + 40);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  return result;
}

void sub_1000C73CC()
{
  type metadata accessor for UpcomingViewModel();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100029AB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C746C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

void sub_1000C7654(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

double sub_1000C78E8()
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

uint64_t sub_1000C7958(uint64_t a1)
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
  sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C7BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  sub_10000460C(&qword_100225E68);
  v4 = *(a1 + 16);
  type metadata accessor for Array();
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225E70);
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v19 = sub_1000CB278();
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
  sub_1000EE87C(v11, v7, v14);
  v15 = *(v8 + 8);
  v15(v11, v7);
  sub_1000EE87C(v13, v7, v14);
  return (v15)(v13, v7);
}

uint64_t sub_1000C806C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v14 = sub_10000460C(&qword_100225E70);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v132 = v12;
  v133 = AssociatedTypeWitness;
  v134 = v14;
  v135 = WitnessTable;
  v136 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v131[7] = sub_1000CB278();
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
  v37 = sub_1000024C4(&qword_100225EA8);
  __chkstk_darwin(v37 - 8);
  v39 = &v88 - v38;
  v40 = sub_1000024C4(&qword_100225E68);
  v41 = __chkstk_darwin(v40);
  v105 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v88 - v44;
  __chkstk_darwin(v43);
  v47 = &v88 - v46;
  *v39 = static HorizontalAlignment.leading.getter();
  *(v39 + 1) = 0x4024000000000000;
  v39[16] = 0;
  v48 = sub_1000024C4(&qword_100225EB0);
  v49 = v97;
  sub_1000C8ED8(a1, a2, &v39[*(v48 + 44)]);
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v89 = type metadata accessor for UpcomingModule();
  sub_1000C7958(v89);
  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v39;
  v59 = a1;
  v60 = v88;
  sub_10001AE00(v58, v45, &qword_100225EA8);
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
  sub_10001AE00(v45, v47, &qword_100225E68);
  static Axis.Set.horizontal.getter();
  v126 = a2;
  v127 = v49;
  v128 = v59;
  v63 = v93;
  sub_1000E7A24();
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v64 = v115;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v65 = v91;
  View.scrollTargetBehavior<A>(_:)();
  (*(v119 + 8))(v64, v65);
  (*(v96 + 8))(v63, v19);
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
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
  sub_1000C7958(v89);
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
  sub_1000C7958(v70);
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
  sub_1000EE87C(v76, v99, v79);
  v82 = v110;
  v83 = *(v110 + 8);
  v83(v76, v81);
  v84 = v90;
  v85 = v105;
  sub_10000BEB8(v90, v105, &qword_100225E68);
  v132 = v85;
  v86 = v117;
  (*(v82 + 16))(v117, v80, v81);
  v133 = v86;
  v131[0] = v98;
  v131[1] = v81;
  v129 = sub_1000CB4CC();
  v130 = v79;
  sub_1000E76FC(&v132, 2uLL, v131);
  v83(v80, v81);
  sub_1000050C4(v84, &qword_100225E68);
  v83(v86, v81);
  return sub_1000050C4(v85, &qword_100225E68);
}

uint64_t sub_1000C8ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v46 = a3;
  v44 = sub_1000024C4(&qword_100225EE8) - 8;
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
  v11 = sub_1000024C4(&qword_100225EF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = sub_1000024C4(&qword_100225EF8);
  v35 = *(v14 - 8);
  v36 = v14;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = sub_1000024C4(&qword_100225F00);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v23 = sub_1000024C4(&qword_100225F08);
  sub_1000C9400(v39, &v13[*(v23 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v24 = sub_10000BFFC(&qword_100225F10, &qword_100225EF0);
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v37);
  sub_1000050C4(v13, &qword_100225EF0);
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
  sub_10000BEB8(v22, v20, &qword_100225F00);
  v31 = v45;
  sub_10000BEB8(v27, v45, &qword_100225EE8);
  v32 = v46;
  sub_10000BEB8(v20, v46, &qword_100225F00);
  v33 = sub_1000024C4(&qword_100225F18);
  sub_10000BEB8(v31, v32 + *(v33 + 48), &qword_100225EE8);
  sub_1000050C4(v27, &qword_100225EE8);
  sub_1000050C4(v22, &qword_100225F00);
  sub_1000050C4(v31, &qword_100225EE8);
  return sub_1000050C4(v20, &qword_100225F00);
}

uint64_t sub_1000C9400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_1000024C4(&qword_100224BD8);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v51 - v6;
  v7 = sub_1000024C4(&qword_100224BD0);
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
  v13 = sub_10001877C();

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

  sub_100017398(v14, v16, v13 & 1);

  v60 = v18;
  v61 = v20;
  v62 = v22 & 1;
  v63 = v24;
  v55 = v11;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v18, v20, v22 & 1);

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

    sub_100017398(v26, v28, v30 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v60 = qword_1002390B8;

    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_100017398(v31, v33, v35 & 1);

    v60 = v36;
    v61 = v38;
    v62 = v40 & 1;
    v63 = v42;
    v43 = v56;
    View.accessibilityIdentifier(_:)();
    sub_100017398(v36, v38, v40 & 1);

    v44 = v57;
    sub_10001AE00(v43, v57, &qword_100224BD0);
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
  sub_10000BEB8(v55, v43, &qword_100224BD0);
  v47 = v58;
  sub_10000BEB8(v44, v58, &qword_100224BD8);
  v48 = v59;
  sub_10000BEB8(v43, v59, &qword_100224BD0);
  v49 = sub_1000024C4(&qword_100225F20);
  sub_10000BEB8(v47, v48 + *(v49 + 48), &qword_100224BD8);
  sub_1000050C4(v44, &qword_100224BD8);
  sub_1000050C4(v46, &qword_100224BD0);
  sub_1000050C4(v47, &qword_100224BD8);
  return sub_1000050C4(v43, &qword_100224BD0);
}

uint64_t sub_1000C991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7 - 8);
  v33 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000460C(&qword_100225E70);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = v9;
  v40 = AssociatedTypeWitness;
  v41 = v11;
  v42 = WitnessTable;
  v43 = AssociatedConformanceWitness;
  v28[1] = type metadata accessor for ForEach();
  v38 = sub_1000CB278();
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
  sub_1000EFF48();
  static VerticalAlignment.top.getter();
  v35 = a2;
  v36 = a3;
  v37 = a1;
  sub_1000C722C();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v24 = v29;
  View.scrollTargetLayout(isEnabled:)();
  (*(v32 + 8))(v16, v14);
  v39 = v14;
  v40 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v31 + 8);
  v26(v21, OpaqueTypeMetadata2);
  sub_1000EE87C(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v26)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1000C9D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v11 = sub_10000460C(&qword_100225E70);
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
  v26 = sub_1000CB278();

  ForEach<>.init(_:content:)();
  v40 = v26;
  v27 = swift_getWitnessTable();
  sub_1000EE87C(v17, v14, v27);
  v28 = *(v37 + 8);
  v28(v17, v14);
  sub_1000EE87C(v19, v14, v27);
  return (v28)(v19, v14);
}

uint64_t sub_1000CA07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v78 = sub_1000024C4(&qword_100225E98);
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v66 - v12;
  v84 = sub_1000024C4(&qword_100225E90);
  v79 = *(v84 - 8);
  __chkstk_darwin(v84);
  v77 = &v66 - v13;
  v14 = sub_1000024C4(&qword_100225EC8);
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v80 = &v66 - v15;
  v16 = sub_1000024C4(&qword_100225E88);
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
  sub_1000024C4(&qword_100225ED0);
  sub_1000CBAC0();
  v49 = v74;
  Button.init(action:label:)();

  v50 = v81;
  PlainButtonStyle.init()();
  v51 = sub_10000BFFC(&qword_100225EA0, &qword_100225E98);
  v52 = sub_1000CBBA8(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
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
  sub_1000F0384();
  v95 = v59;
  v96 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v60 = v76;
  v61 = v83;
  View.accessibilitySortPriority(_:)();
  (*(v82 + 8))(v58, v61);
  v62 = v93;
  sub_10001AE00(v60, v93, &qword_100225E88);
  v63 = v62;
  v64 = 0;
  return (*(v91 + 56))(v63, v64, 1, v92);
}

uint64_t sub_1000CAB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = *(a3 - 8);
  (*(v10 + 16))(&v14 - v8, a2, a3);
  (*(v10 + 56))(v9, 0, 1, a3);
  v11 = type metadata accessor for UpcomingViewModel();
  sub_1000F069C(v9);
  (*(v7 + 8))(v9, v6);
  if (*(a1 + *(type metadata accessor for UpcomingModule() + 36)))
  {

    sub_1000F00A8(v12, v11);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000CBBA8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CAD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
    v25 = sub_100021B98(v18, AssociatedConformanceWitness);
    v54 = v26;
    v55 = v25;
    v27 = *(v63 + 8);
    v27(v20, v18);
    v28 = v23;
    v29 = v18;
    v30 = v53;
    (v53)(v28, a6);
    v31 = sub_100022020(v29, AssociatedConformanceWitness);
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
  sub_1000224A8(v29, v42, v58);
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
  sub_1000CC6B4(v22, v45);
  result = sub_1000024C4(&qword_100225ED0);
  *(v45 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1000CB278()
{
  result = qword_100225E78;
  if (!qword_100225E78)
  {
    sub_10000460C(&qword_100225E70);
    sub_1000CB2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225E78);
  }

  return result;
}

unint64_t sub_1000CB2FC()
{
  result = qword_100225E80;
  if (!qword_100225E80)
  {
    sub_10000460C(&qword_100225E88);
    sub_10000460C(&qword_100225E90);
    sub_10000460C(&qword_100225E98);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100225EA0, &qword_100225E98);
    sub_1000CBBA8(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000CBBA8(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225E80);
  }

  return result;
}

unint64_t sub_1000CB4CC()
{
  result = qword_100225EB8;
  if (!qword_100225EB8)
  {
    sub_10000460C(&qword_100225E68);
    sub_10000BFFC(&qword_100225EC0, &qword_100225EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225EB8);
  }

  return result;
}

uint64_t sub_1000CB590()
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

  sub_10001BC5C(*(v3 + *(v2 + 40)), *(v3 + *(v2 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000CB734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for UpcomingModule() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000CA07C(a1, v8, v5, v6, a2);
}

uint64_t sub_1000CB7D0()
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

  sub_10001BC5C(*(v0 + v4 + *(v2 + 40)), *(v0 + v4 + *(v2 + 40) + 8));
  (*(v5 + 8))(v0 + ((v4 + v10 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_1000CB9D8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for UpcomingModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1000CAB40(v0 + v3, v4, v1);
}

unint64_t sub_1000CBAC0()
{
  result = qword_100225ED8;
  if (!qword_100225ED8)
  {
    sub_10000460C(&qword_100225ED0);
    sub_1000CBBA8(&qword_100225EE0, type metadata accessor for UpcomingModuleItem);
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225ED8);
  }

  return result;
}

uint64_t sub_1000CBBA8(unint64_t *a1, void (*a2)(uint64_t))
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
  result = qword_100225F80;
  if (!qword_100225F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100225FC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_1000024C4(&qword_100225FD0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1000024C4(&qword_100225FD8);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_1000024C4(&qword_100225FE0);
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
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v30 = sub_1000024C4(&qword_100225FE8);
  sub_1000CC200(a1, &v7[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v7, v10, &qword_100225FC8);
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
  v36 = sub_1000CCC88();
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v35, v47);
  sub_1000050C4(v10, &qword_100225FD0);
  v49 = v8;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v14, v37);
  sub_1000CCD40(v26, v24);
  v38 = v43;
  sub_10000BEB8(v19, v43, &qword_100225FE0);
  v39 = v48;
  sub_1000CCD40(v24, v48);
  v40 = sub_1000024C4(&qword_100226000);
  sub_10000BEB8(v38, v39 + *(v40 + 48), &qword_100225FE0);
  sub_1000050C4(v19, &qword_100225FE0);
  sub_1000CCDA4(v26);
  sub_1000050C4(v38, &qword_100225FE0);
  return sub_1000CCDA4(v24);
}

uint64_t sub_1000CC200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = sub_1000024C4(&qword_100221B10);
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
  v20 = sub_1000024C4(&qword_100221B38);
  v21 = sub_10001B3F8();
  v45 = v10;
  v43[0] = v21;
  v43[1] = v20;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v11, v13, v19);

  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v50 = qword_1002390B8;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100017398(v22, v24, v26 & 1);

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
  sub_100017398(v27, v29, v31);

  v36 = *(a1 + 40);
  v50 = *(a1 + 32);
  v51 = v36;
  sub_10001877C();
  v37 = v46;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000050C4(v35, &qword_100221B10);
  v38 = v45;
  sub_10000BEB8(v45, v35, &qword_100221B10);
  v39 = v48;
  sub_10000BEB8(v37, v48, &qword_100221B10);
  v40 = v49;
  sub_10000BEB8(v35, v49, &qword_100221B10);
  v41 = sub_1000024C4(&qword_100226008);
  sub_10000BEB8(v39, v40 + *(v41 + 48), &qword_100221B10);
  sub_1000050C4(v37, &qword_100221B10);
  sub_1000050C4(v38, &qword_100221B10);
  sub_1000050C4(v39, &qword_100221B10);
  return sub_1000050C4(v35, &qword_100221B10);
}

uint64_t sub_1000CC660@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = sub_1000024C4(&qword_100225FC0);
  return sub_1000CBC80(v1, a1 + *(v3 + 44));
}

uint64_t sub_1000CC6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpcomingModuleItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CC72C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000CC7EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000CC890()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CC914()
{
  sub_10000460C(&qword_100225E68);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100225E70);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1000CB278();
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

unint64_t sub_1000CCC88()
{
  result = qword_100225FF0;
  if (!qword_100225FF0)
  {
    sub_10000460C(&qword_100225FD0);
    sub_10000BFFC(&qword_100225FF8, &qword_100225FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100225FF0);
  }

  return result;
}

uint64_t sub_1000CCD40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarIcon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CCDA4(uint64_t a1)
{
  v2 = type metadata accessor for CalendarIcon();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000CCE54()
{
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_100039C10();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000CCF84(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_1000024C4(qword_100224528);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(&qword_1002228B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[16]];

  return v15(v16, a2, v14);
}

char *sub_1000CD128(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(qword_100224528);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100221B80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(&qword_1002228B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[16]];

  return v15(v16, a2, a2, v14);
}

void sub_1000CD2D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1000CD368@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v9;
  a1[1] = v10;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  a1[2] = EnvironmentObject.init()();
  a1[3] = v2;
  v3 = type metadata accessor for PromotionalAssetsView();
  v4 = v3[14];
  *(a1 + v4) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[15];
  *(a1 + v5) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v6 = v3[16];
  *(a1 + v6) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0);
  swift_storeEnumTagMultiPayload();
  v7 = v3[17];
  *(a1 + v7) = swift_getKeyPath();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000CD514@<X0>(uint64_t a1@<X8>)
{
  result = sub_10000DB90();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000CD620(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_1000CD67C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PromotionalAssetsViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_1000CD6DC(uint64_t a1)
{
  if (static Solarium.isEnabled.getter())
  {
    v2 = 0;
  }

  else
  {
    sub_1000CD620(a1);
    sub_10000CC20();

    v2 = static Visibility.== infix(_:_:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000CD73C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v181 = sub_1000024C4(&qword_100221730);
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
  v12 = sub_1000D7F3C();
  v221 = WitnessTable;
  v222 = v12;
  v220 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v208 = v10;
  v209 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
  v208 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
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
  sub_10000460C(&qword_1002260C8);
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
  v212 = sub_10000460C(&qword_1002245B8);
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
  v25 = sub_10001877C();
  v208 = OpaqueTypeMetadata2;
  v209 = &type metadata for String;
  v210 = v24;
  v211 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = sub_10000460C(&qword_1002257B8);
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
  v34 = sub_100010E88();
  v208 = v32;
  v209 = &type metadata for CGFloat;
  v210 = v33;
  v211 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = sub_10000460C(&qword_1002260D0);
  v208 = v32;
  v209 = &type metadata for CGFloat;
  v210 = v33;
  v211 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_10000BFFC(&qword_1002260D8, &qword_1002260D0);
  v208 = v35;
  v209 = v36;
  v210 = v37;
  v211 = v38;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260E0);
  v39 = type metadata accessor for ModifiedContent();
  v208 = v35;
  v209 = v36;
  v210 = v37;
  v211 = v38;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_10000BFFC(&qword_1002260E8, &qword_1002260E0);
  v206 = v40;
  v207 = v41;
  v158 = v39;
  v157 = swift_getWitnessTable();
  v42 = type metadata accessor for NavigationStack();
  v161 = *(v42 - 8);
  __chkstk_darwin(v42);
  v151 = &v130 - v43;
  sub_10000460C(&qword_1002260F0);
  v44 = type metadata accessor for ModifiedContent();
  v164 = *(v44 - 8);
  __chkstk_darwin(v44);
  v150 = &v130 - v45;
  sub_10000460C(&qword_1002260F8);
  v134 = v44;
  v46 = type metadata accessor for ModifiedContent();
  v162 = *(v46 - 8);
  __chkstk_darwin(v46);
  v160 = &v130 - v47;
  sub_10000460C(&qword_100226100);
  v135 = v46;
  v48 = type metadata accessor for ModifiedContent();
  v165 = *(v48 - 8);
  __chkstk_darwin(v48);
  v159 = &v130 - v49;
  sub_10000460C(&qword_100226108);
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
  v57 = sub_10000BFFC(&qword_100226110, &qword_1002260F0);
  v204 = v56;
  v205 = v57;
  v58 = swift_getWitnessTable();
  v132 = v58;
  v59 = sub_10000BFFC(&qword_100226118, &qword_1002260F8);
  v202 = v58;
  v203 = v59;
  v60 = swift_getWitnessTable();
  v133 = v60;
  v61 = sub_10000BFFC(&qword_100226120, &qword_100226100);
  v200 = v60;
  v201 = v61;
  v62 = swift_getWitnessTable();
  v136 = v62;
  v63 = sub_10000BFFC(&qword_100226128, &qword_100226108);
  v198 = v62;
  v199 = v63;
  v138 = swift_getWitnessTable();
  v196 = v138;
  v197 = &protocol witness table for _AppearanceActionModifier;
  v145 = swift_getWitnessTable();
  v194 = v145;
  v195 = &protocol witness table for _AppearanceActionModifier;
  v64 = swift_getWitnessTable();
  v65 = sub_100010CEC();
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
  v170 = sub_1000D7FA8();
  v79 = v174;
  v78 = v175;
  v80 = v176;
  v175[13](v174, enum case for CoordinateSpace.local(_:), v176);
  v81 = v150;
  sub_1000F5464(&type metadata for PromotionalAssetsViewSizePreferenceKey, v79, sub_1000DA230, 0, v42, v131, v150);
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
  sub_1000D885C(&qword_100226138, type metadata accessor for CGSize);
  v90 = v160;
  v91 = v134;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v164 + 8))(v81, v91);
  v170 = sub_1000D80AC();
  v92 = v159;
  v93 = v135;
  sub_1000F53BC();
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
  sub_100010B88();
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
  sub_100039F08(v171);
  v114 = v142;
  v115 = v181;
  v116 = v139;
  View.onChange<A>(of:initial:_:)();
  sub_1000050C4(v113, &qword_100221730);
  (*(v168 + 8))(v110, v114);
  sub_100039F08(v113);
  v117 = v140;
  v119 = v147;
  v118 = v148;
  v120 = v177;
  View.onChange<A>(of:initial:_:)();
  sub_1000050C4(v113, &qword_100221730);
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
  v124 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v192 = v121;
  v193 = v124;
  v125 = v155;
  v126 = swift_getWitnessTable();
  v127 = v152;
  sub_1000EE87C(v122, v125, v126);
  v128 = *(v169 + 8);
  v128(v122, v125);
  sub_1000EE87C(v127, v125, v126);
  return (v128)(v127, v125);
}

uint64_t sub_1000CF024@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v182 = a3;
  v181 = a1;
  v175 = a6;
  v173 = sub_1000024C4(&qword_100221730);
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
  v176 = sub_1000024C4(&qword_1002257B8);
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
  v21 = sub_1000D7F3C();
  v203 = WitnessTable;
  v204 = v21;
  v202 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v190 = v19;
  v191 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
  v190 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
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
  sub_10000460C(&qword_1002260C8);
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
  v194 = sub_10000460C(&qword_1002245B8);
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
  v40 = sub_10001877C();
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
  v50 = sub_100010E88();
  v190 = v47;
  v191 = &type metadata for CGFloat;
  v192 = v49;
  v193 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v143 = *(v51 - 8);
  __chkstk_darwin(v51);
  v135 = v119 - v52;
  v53 = sub_10000460C(&qword_1002260D0);
  v152 = v47;
  v190 = v47;
  v191 = &type metadata for CGFloat;
  v131 = v49;
  v192 = v49;
  v193 = v50;
  v126 = v50;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_10000BFFC(&qword_1002260D8, &qword_1002260D0);
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
  sub_10000460C(&qword_1002260E0);
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
  sub_1000E7A24();
  v62 = v121;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  v120 = xmmword_1001B3B50;
  *(inited + 16) = xmmword_1001B3B50;
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
  sub_1000024C4(&qword_100222388);
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
  sub_1000CD620(v177);
  v77 = sub_100011140();
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
  sub_100039F08(v174);
  v190 = v105;
  v191 = v106;
  v192 = v103;
  v193 = v107;
  v109 = swift_getOpaqueTypeConformance2();
  sub_100010CEC();
  v110 = v137;
  v111 = v144;
  View.animation<A>(_:value:)();

  sub_1000050C4(v108, &qword_100221730);
  (*(v140 + 8))(v104, v111);
  v112 = sub_10000BFFC(&qword_1002260E8, &qword_1002260E0);
  v188 = v109;
  v189 = v112;
  v113 = v151;
  v114 = swift_getWitnessTable();
  v115 = v142;
  sub_1000EE87C(v110, v113, v114);
  v116 = *(v147 + 8);
  v116(v110, v113);
  sub_1000EE87C(v115, v113, v114);
  return (v116)(v115, v113);
}

uint64_t sub_1000D0674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  v35 = sub_1000D7F3C();
  v33 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
  v36 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
  type metadata accessor for ModifiedContent();
  v37 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8);
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
  v40 = sub_10000460C(&qword_1002245B8);
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
  sub_1000EE87C(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1000EE87C(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_1000D0CD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
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
  v602 = sub_1000D7F3C();
  v600 = swift_getWitnessTable();
  v516 = swift_getWitnessTable();
  *&v582 = v10;
  *(&v582 + 1) = v516;
  v520 = &opaque type descriptor for <<opaque return type of View.onScrollVisibilityChange(threshold:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  v517 = OpaqueTypeMetadata2;
  v12 = type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
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
  v520 = sub_1000D8670();
  v47 = *(v43 + 104);
  LODWORD(v492) = enum case for CoordinateSpace.local(_:);
  v493 = v43 + 104;
  v491 = v47;
  v47(v45);
  v48 = v517;
  v49 = v527;
  sub_1000F5464(&type metadata for TourPhotosViewSizePreferenceKey, v45, sub_1000DA230, 0, v517, OpaqueTypeConformance2, v528);
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
  v56 = sub_10000BFFC(&qword_100226178, &qword_1002260A8);
  v598 = OpaqueTypeConformance2;
  v599 = v56;
  v57 = v522;
  v58 = swift_getWitnessTable();
  v59 = sub_1000D885C(&qword_100226138, type metadata accessor for CGSize);
  v60 = v523;
  v520 = v59;
  v61 = v528;
  View.onPreferenceChange<A>(_:perform:)();
  v62 = v36;

  (*(v525 + 8))(v61, v57);
  v63 = sub_10000BFFC(&qword_100226180, &qword_1002260B0);
  v596 = v58;
  v597 = v63;
  v64 = v530;
  v495 = swift_getWitnessTable();
  sub_1000EE87C(v60, v64, v495);
  v496 = v519[1];
  v497 = v519 + 1;
  v496(v60, v64);
  v65 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  v522 = v66;
  v67 = type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
  v68 = type metadata accessor for ModifiedContent();
  v69 = type metadata accessor for Optional();
  v528 = *(v69 - 8);
  v518 = *(v528 + 64);
  __chkstk_darwin(v69);
  v527 = v70;
  v71 = (v476 - v70);
  v533 = v62;
  sub_1000CD620(v62);
  LOBYTE(v60) = sub_10000E7F4();

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
    sub_1000CD620(v533);
    v81 = sub_10000E294();
    v83 = v82;

    sub_1000CD620(v80);
    v84 = sub_10000E814();

    sub_1000CD620(v80);
    v85 = sub_10000E258();

    v478 = sub_10006A0FC(v81, v83, v84, v85);
    v86 = sub_1000CD67C(v80);
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
    v102 = sub_10012C554(v97, v100, v479);
    __chkstk_darwin(v102);
    v103 = (v476 - v494);
    v104 = v522;
    v105 = swift_getWitnessTable();
    sub_1000D8BD8();
    v106 = v516;
    (v491)(v103, v492, v516);
    sub_1000F5464(&type metadata for FeaturedVideosViewSizePreferenceKey, v103, sub_1000DA230, 0, v104, v105, v525);
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
    v112 = sub_10000BFFC(&qword_100226188, &qword_1002260B8);
    v543 = v105;
    v114 = v504;
    v113 = v505;
    v544 = v112;
    v115 = swift_getWitnessTable();
    v116 = v482;
    v117 = v525;
    View.onPreferenceChange<A>(_:perform:)();

    (*(v483 + 8))(v117, v114);
    v118 = sub_10000BFFC(&qword_100226190, &qword_1002260C0);
    v541 = v115;
    v542 = v118;
    v119 = swift_getWitnessTable();
    v120 = v485;
    sub_1000EE87C(v116, v113, v119);
    v121 = v489;
    v122 = v489[1];
    v123 = v122(v116, v113);
    __chkstk_darwin(v123);
    v124 = v476 - v487;
    sub_1000EE87C(v120, v113, v119);
    v125 = v122(v120, v113);
    __chkstk_darwin(v125);
    v126 = (v476 - v527);
    (v121[4])(v476 - v527, v124, v113);
    (v121[7])(v126, 0, 1, v113);
    sub_1000E7690(v126, v523);
    (*(v528 + 8))(v126, v506);
  }

  else
  {
    __chkstk_darwin(v72);
    v127 = (v476 - v527);
    (*(*(v68 - 8) + 56))(v476 - v527, 1, 1, v68);
    v128 = swift_getWitnessTable();
    v129 = sub_10000BFFC(&qword_100226188, &qword_1002260B8);
    v594 = v128;
    v595 = v129;
    v130 = swift_getWitnessTable();
    v131 = sub_10000BFFC(&qword_100226190, &qword_1002260C0);
    v592 = v130;
    v593 = v131;
    swift_getWitnessTable();
    sub_1000E7690(v127, v71);
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
  v138 = sub_10000460C(&qword_1002260C8);
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
  sub_1000CD620(v132);
  v141 = sub_10000F1DC();

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
    sub_1000CD620(v132);
    v146 = type metadata accessor for Optional();
    v147 = *(v146 - 8);
    __chkstk_darwin(v146);
    v149 = v476 - v148;
    sub_10000F168(v476 - v148);

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
      sub_1000CD620(v533);
      v202 = sub_10000E294();
      v482 = v203;
      v483 = v202;

      sub_1000CD620(v201);
      v204 = sub_10000EBA0();
      v206 = v205;

      __chkstk_darwin(v207);
      v208 = v476 - v487;
      (*(v488 + 16))(v476 - v487, v489, v142);
      sub_1000CD620(v201);
      v209 = sub_10000F4AC();

      sub_1000254D8(v483, v482, v204, v206, v208, v209 & 1);
      sub_1000515BC(v200);
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
      v220 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
      v547 = v217;
      v548 = v220;
      v221 = v520;
      v222 = swift_getWitnessTable();
      v223 = v511;
      sub_1000EE87C(v218, v221, v222);
      v224 = *(v532 + 1);
      v225 = v224(v218, v221);
      v532 = v476;
      __chkstk_darwin(v225);
      v226 = v476 - v524;
      v227 = sub_1000EE87C(v223, v221, v222);
      __chkstk_darwin(v227);
      v229 = v476 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
      v230 = sub_1000D878C();
      *&v582 = &type metadata for SetlistLoadingView;
      *(&v582 + 1) = v230;
      v231 = swift_getOpaqueTypeConformance2();
      sub_10017387C(v226, v221);
      v224(v226, v221);
      v224(v223, v221);
      (*(v488 + 8))(v489, v485);
      (*(*(v517 - 1) + 56))(v229, 0, 1, v517);
      v545 = v222;
      v546 = v231;
      swift_getWitnessTable();
      sub_1000E7690(v229, v525);
      (*(v526 + 8))(v229, v527);
      goto LABEL_15;
    }

    (*(v147 + 8))(v149, v146);
    v132 = v533;
    v133 = v534;
    v134 = v531;
  }

  v150 = v535;
  sub_1000CD620(v132);
  if (!v150[2])
  {
LABEL_36:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v152 = sub_10000FFC8(v151);

  if ((v152 & 1) == 0)
  {
    __chkstk_darwin(v153);
    v185 = v476 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(*(v517 - 1) + 56))(v185, 1, 1, v517);
    *&v582 = v516;
    *(&v582 + 1) = v515;
    v186 = swift_getOpaqueTypeConformance2();
    v187 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    v590 = v186;
    v591 = v187;
    v188 = swift_getWitnessTable();
    v189 = sub_1000D878C();
    *&v582 = &type metadata for SetlistLoadingView;
    *(&v582 + 1) = v189;
    v190 = swift_getOpaqueTypeConformance2();
    v588 = v188;
    v589 = v190;
    swift_getWitnessTable();
    sub_1000E7690(v185, v525);
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
  sub_1000CD620(v132);
  LODWORD(v487) = sub_10000F1A0();

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
  if (sub_1001AD108(2, 26, 4, 0))
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

    *&v582 = 0xD000000000000039;
    *(&v582 + 1) = 0x80000001001C6EF0;
    v577 = 109;
    v179._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v179);

    v521 = v476;
    __chkstk_darwin(v180);
    (*(v173 + 16))(v476 - v175, v476 - v175, v172);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v173 + 8))(v476 - v175, v172);
    v181 = sub_1000024C4(&qword_100220CD0);
    v182 = v488;
    (*(v524 + 32))(v488 + *(v181 + 36), v178, v531);
  }

  else
  {
    v232 = sub_1000024C4(&qword_100220CD8);
    v182 = v488;
    v233 = (v488 + *(v232 + 36));
    v234 = type metadata accessor for _TaskModifier();
    (*(v173 + 32))(&v233[*(v234 + 20)], v176, v172);
    *v233 = &unk_1001BBB18;
    *(v233 + 1) = v169;
  }

  *v182 = v487 & 1;
  v183 = v507;
  *(v182 + 8) = sub_1000D88A4;
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
  v242 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v551 = v241;
  v552 = v242;
  v243 = v520;
  v244 = swift_getWitnessTable();
  v245 = sub_1000D878C();
  *&v582 = &type metadata for SetlistLoadingView;
  *(&v582 + 1) = v245;
  v246 = swift_getOpaqueTypeConformance2();
  sub_100173974(v236, v243, v237);
  (*(v235 + 8))(v236, v237);
  (*(*(v517 - 1) + 56))(v240, 0, 1, v517);
  v549 = v244;
  v550 = v246;
  swift_getWitnessTable();
  sub_1000E7690(v240, v525);
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
  sub_1000CD620(v533);
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
    sub_1000E7690(v476 - v255, v531);
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
    sub_1000CD620(v256);
    v265 = sub_10000F878();

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
      sub_1000CD620(v256);
      v272 = sub_10000E294();
      v485 = v273;
      v486 = v272;

      sub_1000CD620(v256);
      v274 = sub_10000EBA0();
      v483 = v275;
      v484 = v274;

      type metadata accessor for PhoneWallpaperViewModel();
      sub_1000CD620(v256);
      v276 = sub_10000E294();
      v278 = v277;

      sub_1000CD620(v256);
      v279 = sub_10000FAE8();

      sub_1000CD620(v256);
      sub_10000E5B8();
      v281 = v280;

      sub_1000CD620(v256);
      v282 = sub_10000CE08();

      sub_1000CD620(v256);
      v283 = sub_10000F940();

      v503 = sub_1001AAD60(v276, v278, v279, v283, v281, v282);
      type metadata accessor for WatchFacesViewModel();
      sub_1000CD620(v256);
      v284 = sub_10000E294();
      v286 = v285;

      sub_1000CD620(v256);
      v287 = sub_10000F960();

      sub_1000CD620(v256);
      sub_10000E5B8();
      v289 = v288;

      sub_1000CD620(v256);
      v290 = sub_10000CE08();

      sub_1000CD620(v256);
      v291 = sub_10000F940();

      v292 = sub_100060C54(v284, v286, v287, v291, v289, v290);
      v293 = v487;
      sub_10013ABB8(v486, v485, v484, v483, v503, v292, v487);
      v294 = swift_getWitnessTable();
      v295 = v488;
      sub_1000EE87C(v293, v268, v294);
      v296 = v509[1];
      v297 = v296(v293, v268);
      __chkstk_darwin(v297);
      v298 = (v476 - v507);
      sub_1000EE87C(v295, v268, v294);
      swift_getWitnessTable();
      v299 = v492;
      sub_10017387C(v298, v268);
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
      sub_1000CD620(v267);
      v305 = sub_10000F58C();

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
        sub_1000CD620(v312);
        v314 = sub_10000E294();
        v477 = v315;
        v478 = v314;

        sub_1000CD620(v312);
        v316 = sub_10000FAE8();

        sub_1000CD620(v312);
        sub_10000E5B8();
        v318 = v317;

        sub_1000CD620(v312);
        v319 = sub_10000CE08();

        sub_1000CD620(v312);
        v320 = sub_10000F940();
        v502 = v304;
        v321 = v320;

        sub_1001AAD60(v478, v477, v316, v321, v318, v319);
        v322 = type metadata accessor for Optional();
        __chkstk_darwin(v322 - 8);
        v324 = v476 - v323;
        (*(*(v313 - 1) + 56))(v476 - v323, 1, 1, v313);
        v325 = v311;
        sub_10019F288(v324, v311);
        v326 = swift_getWitnessTable();
        v327 = v480;
        v328 = v325;
        sub_1000EE87C(v325, v307, v326);
        v329 = v484;
        v330 = v484[1];
        v331 = v330(v328, v307);
        v503 = v476;
        __chkstk_darwin(v331);
        v332 = v476 - v482;
        sub_1000EE87C(v327, v307, v326);
        v333 = v330(v327, v307);
        __chkstk_darwin(v333);
        v334 = (v476 - v502);
        (*(v329 + 32))(v476 - v502, v332, v307);
        (*(v329 + 56))(v334, 0, 1, v307);
        sub_1000E7690(v334, v488);
        v335 = (*(v487 + 8))(v334, v262);
        v267 = v312;
      }

      else
      {
        __chkstk_darwin(v306);
        (*(*(v501 - 1) + 56))(v476 - v304, 1, 1, v501);
        swift_getWitnessTable();
        sub_1000E7690(v476 - v304, v476 - v304);
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
      sub_1000CD620(v267);
      v341 = sub_10000F5AC();

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
        sub_1000CD620(v346);
        v349 = sub_10000E294();
        v478 = v350;
        v479 = v349;

        sub_1000CD620(v346);
        v351 = sub_10000F960();

        sub_1000CD620(v346);
        sub_10000E5B8();
        v353 = v352;

        sub_1000CD620(v346);
        v354 = sub_10000CE08();

        sub_1000CD620(v346);
        LOBYTE(v346) = sub_10000F940();

        sub_100060C54(v479, v478, v351, v346 & 1, v353, v354);
        v355 = type metadata accessor for Optional();
        __chkstk_darwin(v355 - 8);
        v357 = v476 - v356;
        (*(*(v338 - 1) + 56))(v476 - v356, 1, 1, v338);
        sub_100041B30(v357, v348);
        v358 = swift_getWitnessTable();
        v359 = v345;
        sub_1000EE87C(v348, v509, v358);
        v360 = v485;
        v361 = v485[1];
        v362 = v361(v348, v509);
        __chkstk_darwin(v362);
        v363 = v476 - v482;
        sub_1000EE87C(v359, v509, v358);
        v364 = v361(v359, v509);
        v365 = v509;
        __chkstk_darwin(v364);
        v366 = (v476 - v500);
        (*(v360 + 32))(v476 - v500, v363, v365);
        v367 = v360;
        v262 = v508;
        (*(v367 + 56))(v366, 0, 1, v365);
        sub_1000E7690(v366, v503);
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
        sub_1000E7690(v476 - v340, v503);
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
      sub_1000E76FC(&v582, 2uLL, &v577);
      v381 = v371;
      v382 = v500;
      (v500)(v380, v381);
      v383 = *(v378 + 8);
      v383(v377, v262);
      v384 = v524;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v301 = v492;
      sub_100173974(v375, v384, v372);
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
    sub_1000EE87C(v301, v389, v390);
    v391 = v493;
    v392 = (*(v493 + 8))(v301, v389);
    v393 = v511;
    __chkstk_darwin(v392);
    (*(v391 + 32))(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v386, v389);
    (*(v391 + 56))(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v389);
    sub_1000E7690(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v531);
    (v534[1])(v476 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0), v532);
  }

  v394 = sub_1000024C4(&qword_1002245B8);
  v507 = *(*(v394 - 8) + 64);
  __chkstk_darwin(v394);
  v521 = (v476 - v395);
  v396 = v533;
  v397 = v535;
  sub_1000CD620(v533);
  if (!v397[2])
  {
    goto LABEL_36;
  }

  v508 = v394;
  v509 = v476;

  v399 = sub_100011730(v398);
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
    sub_1000CD620(v396);
    v407 = sub_10000E294();
    v500 = v408;
    v501 = v407;

    sub_1000CD620(v396);
    v409 = sub_1000024C4(&qword_1002214F8);
    v502 = v476;
    __chkstk_darwin(v409 - 8);
    v410 = v396;
    v412 = v476 - v411;
    sub_10000E30C();

    sub_1000CD620(v410);

    v414 = sub_100011730(v413);
    v416 = v415;

    type metadata accessor for AppViewModel();
    v417 = swift_allocObject();
    v418 = v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_subheaderTitle;
    *v418 = LocalizedStringKey.init(stringLiteral:)();
    *(v418 + 8) = v419;
    *(v418 + 16) = v420 & 1;
    *(v418 + 24) = v421;
    v422 = v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_descriptionTitle;
    *v422 = LocalizedStringKey.init(stringLiteral:)();
    *(v422 + 8) = v423;
    *(v422 + 16) = v424 & 1;
    *(v422 + 24) = v425;
    ObservationRegistrar.init()();
    *(v417 + 16) = 0;
    v426 = v500;
    *(v417 + 24) = v501;
    *(v417 + 32) = v426;
    sub_100073EA0(v412, v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL);
    v427 = (v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
    *v427 = v414;
    v427[1] = v416;
    *(v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) = 1;
    *(v417 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType) = 13;
    KeyPath = swift_getKeyPath();
    *v406 = v417;
    v578 = 0;
    v577 = 0;
    sub_1000024C4(&qword_10022AF10);
    State.init(wrappedValue:)();
    v429 = v583;
    *(v406 + 8) = v582;
    *(v406 + 3) = v429;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *(v406 + 4) = EnvironmentObject.init()();
    *(v406 + 5) = v430;
    v431 = *(v403 + 28);
    *&v406[v431] = swift_getKeyPath();
    sub_1000024C4(qword_100221928);
    swift_storeEnumTagMultiPayload();
    v432 = &v406[*(v403 + 32)];
    *v432 = KeyPath;
    v432[8] = 0;
    v433 = v406;
    v434 = v521;
    sub_10002C260(v433, v521);
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
  sub_1000D87EC(v434, v456);
  v585 = v456;
  v577 = v439;
  v578 = v443;
  v457 = v443;
  v579 = v447;
  v580 = v452;
  v581 = v508;
  v572 = v495;
  v458 = swift_getWitnessTable();
  v459 = sub_10000BFFC(&qword_100226188, &qword_1002260B8);
  v570 = v458;
  v571 = v459;
  v460 = swift_getWitnessTable();
  v461 = sub_10000BFFC(&qword_100226190, &qword_1002260C0);
  v568 = v460;
  v569 = v461;
  v567 = swift_getWitnessTable();
  v573 = swift_getWitnessTable();
  v565 = v516;
  v566 = v515;
  v462 = swift_getOpaqueTypeConformance2();
  v463 = sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v563 = v462;
  v564 = v463;
  v464 = swift_getWitnessTable();
  v465 = sub_1000D878C();
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
  v576 = sub_10008B7C8();
  sub_1000E76FC(&v582, 5uLL, &v577);
  sub_1000050C4(v521, &qword_1002245B8);
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
  sub_1000050C4(v507, &qword_1002245B8);
  v469(v501, v532);
  v470(v502, v527);
  v471(v518, v472);
  return v474(v503, v473);
}

uint64_t sub_1000D5374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  sub_1000CD620(v18);
  LOBYTE(a5) = sub_10000F56C();

  if (a5)
  {
    type metadata accessor for TourPhotosViewModel();
    sub_1000CD620(v18);
    v19 = sub_10000E294();
    v75 = v20;

    sub_1000CD620(v18);
    v21 = sub_10000F6F0();

    sub_1000CD620(v18);
    v22 = sub_10000EBA0();
    v24 = v23;

    sub_1000CD620(v18);
    v25 = sub_10000CE08();

    sub_1000CD620(v18);
    sub_10000E380();
    v27 = v26;

    sub_1000CD620(v18);
    v28 = sub_10000FC70();

    v75 = sub_1001572E4(v19, v75, v21, v22, v24, v28 & 1, v25, v27);
    v29 = sub_1000CD67C(v18);
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

    v39 = sub_1000CD67C(v18);
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
    sub_1001192AC(v38, v74, v73, v72, v44, v45, v76, v46);
    v48 = v83;
    WitnessTable = swift_getWitnessTable();
    v50 = v78;
    sub_1000EE87C(v47, v48, WitnessTable);
    v51 = *(v79 + 8);
    v51(v47, v48);
    sub_1000EE87C(v50, v48, WitnessTable);
    sub_1000D7F3C();
    v52 = v84;
    sub_10017387C(v47, v48);
    v51(v47, v48);
    v51(v50, v48);
  }

  else
  {
    sub_1000CD620(v18);
    v53 = sub_10000EBA0();
    v55 = v54;

    sub_1000CD620(v18);
    v56 = sub_10000EDCC();

    sub_1000CD620(v18);
    v57 = sub_10000FC70();

    sub_1000CD620(v18);
    v58 = sub_10000D1E0();
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
    sub_1000D7F3C();
    v52 = v84;
    sub_100173974(&v95, v65, &type metadata for TourPhotosDefaultView);
    v99 = v95;
    v100 = v96;
    v101 = v97;
    v102 = v98;
    sub_1000D93C4(&v99);
  }

  v66 = swift_getWitnessTable();
  v67 = sub_1000D7F3C();
  v93 = v66;
  v94 = v67;
  v68 = v86;
  v69 = swift_getWitnessTable();
  sub_1000EE87C(v52, v68, v69);
  return (*(v85 + 8))(v52, v68);
}

uint64_t sub_1000D5BA4(char a1)
{
  v2 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v2);
  sub_1000100F0((a1 & 1) == 0);
}

uint64_t sub_1000D5C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(double))
{
  v8 = *(a1 + 8);
  v9 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v9);
  a7(v8);
}

uint64_t sub_1000D5C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v13 = sub_1000024C4(&qword_100227360);
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
  sub_1001904E0(0, 0, v15, &unk_1001BBB68, v19);
}

uint64_t sub_1000D5E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  return _swift_task_switch(sub_1000D5F30);
}

uint64_t sub_1000D5F30()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView();
  *(v0 + 112) = sub_1000CD620(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D5FE8;

  return sub_10000FD68();
}

uint64_t sub_1000D5FE8()
{

  return _swift_task_switch(sub_1000DA234);
}

uint64_t sub_1000D612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  return _swift_task_switch(sub_1000D61CC);
}

uint64_t sub_1000D61CC()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView();
  *(v0 + 112) = sub_1000CD620(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D6284;

  return sub_10000FD68();
}

uint64_t sub_1000D6284()
{

  return _swift_task_switch(sub_1000D63C8);
}

uint64_t sub_1000D63C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D6428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
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
  v41 = sub_1000D7F3C();
  v39 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8);
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
  v46 = sub_10000460C(&qword_1002245B8);
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
  v12 = sub_10001877C();
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
  sub_1000CD620(v22);
  sub_10000CC20();

  sub_1000024C4(&qword_1002245D8);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v23 = swift_checkMetadataState();
  View.toolbarBackgroundVisibility(_:for:)();

  v42 = v23;
  v43 = v14;
  v24 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v19, v15, v24);
  v25 = *(v16 + 8);
  v25(v19, v15);
  sub_1000EE87C(v21, v15, v24);
  return (v25)(v21, v15);
}

double sub_1000D6CC0@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  result = v3 + v4;
  *a1 = v3 + v4;
  return result;
}

uint64_t sub_1000D6D00(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v3);
  sub_10000C794(v2);

  sub_1000CD620(v3);
  if (v2 > 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  sub_10000CCA8(v4);
}

uint64_t sub_1000D6D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v60 = a1;
  v64 = a6;
  v68 = sub_1000024C4(&qword_100226148);
  __chkstk_darwin(v68);
  v67 = &v53 - v9;
  v10 = sub_1000024C4(&qword_1002245F0);
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  v61 = sub_1000024C4(&qword_100226150);
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v53 - v13;
  v14 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v14 - 8);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_100226158);
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v57 = &v53 - v17;
  v18 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000024C4(&qword_100226160);
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
  sub_1000CD620(v31);
  sub_10000E30C();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000050C4(v20, &qword_1002214F8);
    (*(v12 + 56))(v28, 1, 1, v61);
    v32 = sub_10000BFFC(&qword_100226168, &qword_100226158);
    v74 = v16;
    v75 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v62;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D830C(v28);
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
    sub_1000D885C(&qword_100224640, type metadata accessor for ShareButton);
    v39 = v57;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000BFFC(&qword_100226168, &qword_100226158);
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
    sub_1000D830C(v28);
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
  sub_10008B1A4();
  v46 = v63;
  ToolbarItem<>.init(placement:content:)();
  v47 = v67;
  v48 = *(v68 + 48);
  sub_1000D8384(v33, v67);
  v49 = v65;
  v50 = v47 + v48;
  v51 = v66;
  (*(v65 + 16))(v50, v46, v66);
  TupleToolbarContent.init(_:)();
  (*(v49 + 8))(v46, v51);
  return sub_1000D830C(v33);
}

uint64_t sub_1000D7598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
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
  *v21 = sub_1000D8404;
  v21[1] = v18;
  return result;
}

uint64_t sub_1000D7744@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
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
  LOBYTE(a1) = sub_1000CD6DC(v16);
  sub_100039CB8(v15);
  v17 = *(v10 + 32);
  v17(v13, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  result = (v17)(v19 + v18, v13, v9);
  *a5 = 0;
  *(a5 + 1) = a1 & 1;
  *(a5 + 8) = sub_1000172FC;
  *(a5 + 16) = v19;
  return result;
}

uint64_t sub_1000D78E8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000024C4(&qword_100221730);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = a1[1];
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v16 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v16);
  sub_10000CE90(v14);

  sub_1000CD620(v16);
  sub_10000D07C(v15);

  sub_1000CD620(v16);
  sub_100039F08(v13);
  sub_10000D540(v13);
}

uint64_t sub_1000D7A1C(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v5);
  sub_10000D270(v1, v2, v3, v4);
}

uint64_t sub_1000D7A94(uint64_t a1)
{
  v2 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v2);
  v3 = sub_10000E294();
  v5 = v4;

  v6 = *(a1 + 16);
  if (v6)
  {

    sub_10015B530(v3, v5, 13, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000D7B8C(uint64_t a1, void **a2, uint64_t a3, Class (*a4)(uint64_t a1), uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  aBlock = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v12 = type metadata accessor for PromotionalAssetsView();
  sub_1000CD620(v12);
  v13 = sub_10000E294();
  v15 = v14;

  v16 = *(a1 + 16);
  if (v16)
  {
    sub_1000024C4(&qword_100221508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v13;
    *(inited + 48) = v15;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 0;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
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

    v20 = sub_1001894F4(1, 5, 1, inited);
    v25 = v20;
    sub_100006C98(&aBlock, v26);
    sub_100118768(4, v26, &v25, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    v22[2] = 0xD00000000000001ELL;
    v22[3] = 0x80000001001C4640;
    v22[4] = v20;
    v31 = a8;
    v32 = v22;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10015B4A4;
    v30 = a9;
    v23 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D885C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000D7EB4()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

unint64_t sub_1000D7F3C()
{
  result = qword_1002260A0;
  if (!qword_1002260A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002260A0);
  }

  return result;
}

unint64_t sub_1000D7FA8()
{
  result = qword_100226130;
  if (!qword_100226130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226130);
  }

  return result;
}

uint64_t sub_1000D8000(double *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1000D78E8(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D80AC()
{
  result = qword_100226140;
  if (!qword_100226140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226140);
  }

  return result;
}

uint64_t sub_1000D8100(double *a1)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D7A1C(a1);
}

uint64_t sub_1000D81F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D8238(uint64_t a1, double *a2)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D6D00(a1, a2);
}

uint64_t sub_1000D830C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100226160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8384(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100226160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D8434(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(type metadata accessor for PromotionalAssetsView() - 8);
  sub_1000D7B8C(v4 + ((*(v12 + 80) + 48) & ~*(v12 + 80)), v8, v9, v10, v11, a4, a1, a2, a3);
}

uint64_t sub_1000D84F4()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D85C4(char a1)
{
  type metadata accessor for PromotionalAssetsView();

  return sub_1000D5BA4(a1);
}

unint64_t sub_1000D8670()
{
  result = qword_100226170;
  if (!qword_100226170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226170);
  }

  return result;
}

uint64_t sub_1000D86DC(uint64_t a1, void (*a2)(double))
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for PromotionalAssetsView() - 8);
  return sub_1000D5C08(a1, v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

unint64_t sub_1000D878C()
{
  result = qword_100226198;
  if (!qword_100226198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226198);
  }

  return result;
}

uint64_t sub_1000D87EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002245B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D885C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D88BC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for PromotionalAssetsView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000D8970()
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
  v10[1] = sub_1000D8A84;

  return sub_1000D612C(v8, v9, v0 + v7, v3, v2, v4, v5);
}

uint64_t sub_1000D8A84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_1000D8BCC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000D8BD8()
{
  result = qword_1002261A0[0];
  if (!qword_1002261A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002261A0);
  }

  return result;
}

uint64_t sub_1000D8C2C()
{
  v1 = type metadata accessor for PromotionalAssetsView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));

  v3 = v1[14];
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[15];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[16];
  sub_1000024C4(&qword_1002216D0);
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

uint64_t sub_1000D8F6C()
{
  v1 = type metadata accessor for PromotionalAssetsView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[14];
  sub_1000024C4(&qword_1002216C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[15];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[16];
  sub_1000024C4(&qword_1002216D0);
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

uint64_t sub_1000D929C(uint64_t a1)
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
  v12[1] = sub_1000DA220;

  return sub_1000D5E90(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1000D9418@<X0>(uint64_t a1@<X8>)
{
  result = sub_10000DB90();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000D952C()
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
  sub_1000D7F3C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260A8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260B0);
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView();
  sub_10000460C(&qword_1002260B8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260C8);
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
  sub_10000460C(&qword_1002245B8);
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
  sub_10001877C();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002257B8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100010E88();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260D0);
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002260D8, &qword_1002260D0);
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_1002260E0);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000BFFC(&qword_1002260E8, &qword_1002260E0);
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  sub_10000460C(&qword_1002260F0);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_1002260F8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226100);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100226108);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221730);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226110, &qword_1002260F0);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226118, &qword_1002260F8);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226120, &qword_100226100);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100226128, &qword_100226108);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100010CEC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000D885C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

unint64_t sub_1000DA14C(uint64_t a1)
{
  result = sub_1000D8670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA174(uint64_t a1)
{
  result = sub_1000D8BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA19C(uint64_t a1)
{
  result = sub_1000D7FA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA1C4(uint64_t a1)
{
  result = sub_1000D80AC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000DA238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v4 = type metadata accessor for VenueEventListHeader();
  v5 = (a3 + v4[9]);
  *v5 = sub_1000DA330();
  v5[1] = v6;
  v7 = v4[10];
  *(a3 + v7) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v4[11];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1000DA330()
{
  sub_1000024C4(&qword_1002248C0);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_1000DA378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v12 = sub_1000024C4(&qword_100226238);
  sub_1000DA510(v3, v10, v11, a2 + *(v12 + 44));
  (*(v6 + 16))(v9, v3, a1);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  (*(v6 + 32))(v14 + v13, v9, a1);
  v15 = (a2 + *(sub_1000024C4(&qword_100226240) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v15 = &unk_1001BBF28;
  v15[1] = v14;
  return result;
}

uint64_t sub_1000DA510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v90 = a2;
  v89 = a1;
  v106 = a4;
  v5 = type metadata accessor for AccessibilityTraits();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v103 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AccessibilityChildBehavior();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1000024C4(&qword_100222158);
  __chkstk_darwin(v97);
  v9 = &v81 - v8;
  v99 = sub_1000024C4(&qword_100222160);
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v81 - v10;
  v11 = sub_1000024C4(&qword_100222168);
  v12 = __chkstk_darwin(v11 - 8);
  v98 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v81 - v14;
  v15 = type metadata accessor for RoundedRectangle();
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1000024C4(&qword_100226250);
  __chkstk_darwin(v88);
  v20 = &v81 - v19;
  v92 = sub_1000024C4(&qword_100226258);
  __chkstk_darwin(v92);
  v22 = &v81 - v21;
  v23 = sub_1000024C4(&qword_100226260);
  v24 = __chkstk_darwin(v23 - 8);
  v93 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v87 = &v81 - v26;
  sub_1000DAF98(a1, &v112);
  v27 = v114;
  v28 = type metadata accessor for RoundedCornerStyle();
  v82 = v112;
  v81 = v113;
  v29 = *(v16 + 28);
  v85 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = *(v28 - 8);
  v84 = *(v30 + 104);
  v86 = v30 + 104;
  v84(&v18[v29]);
  __asm { FMOV            V0.2D, #10.0 }

  v83 = _Q0;
  *v18 = _Q0;
  v36 = static HierarchicalShapeStyle.primary.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v37 = &v20[*(sub_1000024C4(&qword_100226268) + 36)];
  sub_100039704(v18, v37);
  v38 = v37 + *(sub_1000024C4(&qword_100222870) + 36);
  v39 = v110;
  *v38 = v109;
  *(v38 + 16) = v39;
  *(v38 + 32) = v111;
  v40 = sub_1000024C4(&qword_100226270);
  v41 = (v37 + *(v40 + 52));
  *v41 = v36;
  v41[1] = 1036831949;
  *(v37 + *(v40 + 56)) = 256;
  v42 = static Alignment.center.getter();
  v44 = v43;
  sub_100039768(v18);
  v45 = (v37 + *(sub_1000024C4(&qword_100226278) + 36));
  *v45 = v42;
  v45[1] = v44;
  v46 = static Alignment.center.getter();
  v48 = v47;
  v49 = (v37 + *(sub_1000024C4(&qword_100226280) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = v81;
  *v20 = v82;
  *(v20 + 1) = v50;
  v20[32] = v27;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = 1;
  v53 = &v20[*(sub_1000024C4(&qword_100226288) + 36)];
  *v53 = KeyPath;
  v53[1] = sub_1000DD234;
  v53[2] = v52;
  LOBYTE(KeyPath) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = &v20[*(sub_1000024C4(&qword_100226290) + 36)];
  *v62 = KeyPath;
  *(v62 + 1) = v55;
  *(v62 + 2) = v57;
  *(v62 + 3) = v59;
  *(v62 + 4) = v61;
  v62[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = &v20[*(sub_1000024C4(&qword_100226298) + 36)];
  v64 = v113;
  *v63 = v112;
  *(v63 + 1) = v64;
  *(v63 + 2) = v114;
  *&v20[*(sub_1000024C4(&qword_1002262A0) + 36)] = 0;
  v65 = &v20[*(v88 + 36)];
  (v84)(&v65[*(v16 + 28)], v85, v28);
  *v65 = v83;
  *&v65[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  sub_1000DD24C();
  View.accessibility(hidden:)();
  sub_1000050C4(v20, &qword_100226250);
  v22[*(v92 + 36)] = 1;
  sub_1000DD80C();
  v66 = v87;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v22, &qword_100226258);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v67 = sub_1000024C4(&qword_100222200);
  sub_1000DB348(v89, v90, v91, &v9[*(v67 + 44)]);
  v68 = v96;
  static AccessibilityChildBehavior.combine.getter();
  v69 = sub_10000BFFC(&qword_100222208, &qword_100222158);
  v70 = v94;
  v71 = v97;
  View.accessibilityElement(children:)();
  (*(v101 + 8))(v68, v102);
  sub_1000050C4(v9, &qword_100222158);
  v72 = v103;
  static AccessibilityTraits.isHeader.getter();
  v107 = v71;
  v108 = v69;
  swift_getOpaqueTypeConformance2();
  v73 = v95;
  v74 = v99;
  View.accessibility(addTraits:)();
  (*(v104 + 8))(v72, v105);
  (*(v100 + 8))(v70, v74);
  v75 = v93;
  sub_10000BEB8(v66, v93, &qword_100226260);
  v76 = v98;
  sub_1000292C0(v73, v98);
  v77 = v106;
  sub_10000BEB8(v75, v106, &qword_100226260);
  v78 = sub_1000024C4(&qword_100226348);
  sub_1000292C0(v76, v77 + *(v78 + 48));
  v79 = v77 + *(v78 + 64);
  *v79 = 0;
  *(v79 + 8) = 1;
  sub_100029330(v73);
  sub_1000050C4(v66, &qword_100226260);
  sub_100029330(v76);
  return sub_1000050C4(v75, &qword_100226260);
}

double sub_1000DAF98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + *(type metadata accessor for VenueEventListHeader() + 36));
  sub_1000024C4(&qword_100226248);
  State.wrappedValue.getter();
  if (v23)
  {
    v14 = v23;
    Image.init(uiImage:)();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v15 = Image.resizable(capInsets:resizingMode:)();

    (*(v11 + 8))(v13, v10);
    OpacityTransition.init()();
    (*(v4 + 16))(v7, v9, v3);
    sub_1000DDA58(&qword_100226350, &type metadata accessor for OpacityTransition);
    v16 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    v23 = v15;
    v24 = xmmword_1001BBE20;
    v25 = v16;
    v26 = 0;

    sub_1000024C4(&qword_100226300);
    sub_1000DD754();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v17 = [objc_opt_self() systemGray5Color];
    v23 = Color.init(uiColor:)();
    v24 = 0uLL;
    v25 = 0;
    v26 = 1;
    sub_1000024C4(&qword_100226300);
    sub_1000DD754();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v27;
  v19 = v28;
  v20 = v29;
  v21 = v22;
  *v22 = v27;
  v21[1] = v19;
  *(v21 + 32) = v20;
  return result;
}

uint64_t sub_1000DB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v80 = a2;
  v76 = a1;
  v90 = a4;
  v4 = sub_1000024C4(&qword_100222218);
  v5 = __chkstk_darwin(v4 - 8);
  v89 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v88 = &v67[-v7];
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v67[-v13];
  v15 = sub_1000024C4(&qword_100222230);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v67[-v17];
  v84 = sub_1000024C4(&qword_100222238) - 8;
  __chkstk_darwin(v84);
  v82 = &v67[-v19];
  v86 = sub_1000024C4(&qword_100222220);
  __chkstk_darwin(v86);
  v85 = &v67[-v20];
  v21 = sub_1000024C4(&qword_100222228);
  v22 = __chkstk_darwin(v21 - 8);
  v87 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v83 = &v67[-v24];
  LocalizedStringKey.init(stringLiteral:)();
  v70 = Text.init(_:tableName:bundle:comment:)();
  v69 = v25;
  v68 = v26;
  v71 = v27;
  v81 = *(type metadata accessor for VenueEventListHeader() + 40);
  sub_10003A100(v14);
  v79 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v78 = *(v9 + 104);
  v28 = v12;
  v73 = v8;
  v78(v12);
  v72 = v14;
  v74 = v12;
  v29 = sub_100172140(v14, v12);
  v30 = *(v9 + 8);
  v75 = v9 + 8;
  v30(v28, v8);
  v30(v14, v8);
  if (v29)
  {
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  KeyPath = swift_getKeyPath();
  v33 = &v18[*(v16 + 44)];
  v34 = *(sub_1000024C4(&qword_100221B70) + 28);
  v35 = enum case for Text.Case.uppercase(_:);
  v36 = type metadata accessor for Text.Case();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v33 + v34, v35, v36);
  (*(v37 + 56))(v33 + v34, 0, 1, v36);
  *v33 = swift_getKeyPath();
  v38 = v69;
  *v18 = v70;
  *(v18 + 1) = v38;
  v18[16] = v68 & 1;
  *(v18 + 3) = v71;
  *(v18 + 4) = KeyPath;
  *(v18 + 5) = v31;
  v18[48] = 0;
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v39 = Font.weight(_:)();

  v40 = swift_getKeyPath();
  v41 = v82;
  sub_10001AE00(v18, v82, &qword_100222230);
  v42 = &v41[*(v84 + 44)];
  *v42 = v40;
  v42[1] = v39;
  v43 = [objc_opt_self() secondaryLabelColor];
  v44 = Color.init(uiColor:)();
  v45 = v41;
  v46 = v85;
  sub_10001AE00(v45, v85, &qword_100222238);
  *&v46[*(v86 + 36)] = v44;
  sub_1000293B0();
  v47 = v83;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v46, &qword_100222220);
  v48 = (*(v77 + 48))(v80);
  v50 = v49;
  v51 = v72;
  sub_10003A100(v72);
  v52 = v74;
  v53 = v73;
  (v78)(v74, v79, v73);
  v54 = v52;
  LOBYTE(v52) = sub_100172140(v51, v52);
  v30(v54, v53);
  v30(v51, v53);
  if (v52)
  {
    v55 = 3;
  }

  else
  {
    v55 = 2;
  }

  v56 = swift_getKeyPath();
  static Font.title.getter();
  static Font.Weight.bold.getter();
  v57 = Font.weight(_:)();

  v58 = swift_getKeyPath();
  v99 = 0;
  v98 = 0;
  *&v91 = v48;
  *(&v91 + 1) = v50;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = &_swiftEmptyArrayStorage;
  *&v93 = v56;
  *(&v93 + 1) = v55;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v58;
  v95 = v57;
  sub_1000024C4(&qword_100222270);
  sub_1000295D8();
  v59 = v88;
  View.accessibilityIdentifier(_:)();
  v96[2] = v93;
  v96[3] = v94;
  v97 = v95;
  v96[0] = v91;
  v96[1] = v92;
  sub_1000050C4(v96, &qword_100222270);
  v60 = v47;
  v61 = v47;
  v62 = v87;
  sub_10000BEB8(v61, v87, &qword_100222228);
  v63 = v89;
  sub_10000BEB8(v59, v89, &qword_100222218);
  v64 = v90;
  sub_10000BEB8(v62, v90, &qword_100222228);
  v65 = sub_1000024C4(&qword_100222280);
  sub_10000BEB8(v63, v64 + *(v65 + 48), &qword_100222218);
  sub_1000050C4(v59, &qword_100222218);
  sub_1000050C4(v60, &qword_100222228);
  sub_1000050C4(v63, &qword_100222218);
  return sub_1000050C4(v62, &qword_100222228);
}

uint64_t sub_1000DBC44()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for VenueEventListHeader();
  *v1 = v0;
  v1[1] = sub_1000DBD14;

  return sub_1000DBE98(v2);
}

uint64_t sub_1000DBD14()
{

  if (v0)
  {

    dispatch thunk of Actor.unownedExecutor.getter();
    v1 = sub_10000C1D8;
  }

  else
  {
    dispatch thunk of Actor.unownedExecutor.getter();
    v1 = sub_100009824;
  }

  return _swift_task_switch(v1);
}

uint64_t sub_1000DBE98(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v2[6] = v4;
  v2[7] = *(v4 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[11] = v5;
  v6 = *(a1 + 16);
  v2[12] = v6;
  v7 = *(a1 + 24);
  v2[13] = v7;
  *v5 = v2;
  v5[1] = sub_1000DBFC0;

  return sub_1000C5148(v1, v6, v7);
}

uint64_t sub_1000DBFC0(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_1000DC6BC;
  }

  else
  {
    v3[16] = v4;
    v3[17] = v5;
    v6 = sub_1000DC12C;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_1000DC12C()
{
  v1 = *(v0 + 40) + *(*(v0 + 32) + 44);
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = *v1;
  }

  else
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(*&v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = *(v0 + 16);

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(*&v2, 0);
    v9(v5, v7);
    v3 = *(v0 + 24);
  }

  v11 = v3 * 60.0;
  v12 = swift_task_alloc();
  *(v0 + 144) = v12;
  *v12 = v0;
  v12[1] = sub_1000DC350;
  v13 = *(v0 + 112);

  return sub_1000C6958(v13, v4 * 60.0, v11);
}

uint64_t sub_1000DC350(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1000DC5BC;
  }

  else
  {
    v4 = sub_1000DC46C;
  }

  return _swift_task_switch(v4);
}

uint64_t sub_1000DC46C()
{
  *(v0 + 168) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DC4F8);
}

uint64_t sub_1000DC4F8()
{
  v1 = *(v0 + 160);

  sub_1000DC728();
  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000DC630);
  }
}

uint64_t sub_1000DC5BC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DC630()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DC6BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC728()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000DC7AC(uint64_t a1, void *a2)
{
  type metadata accessor for VenueEventListHeader();
  v3 = a2;
  sub_1000024C4(&qword_100226248);
  return State.wrappedValue.setter();
}

void sub_1000DC840()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1000DCDD0();
    if (v1 <= 0x3F)
    {
      sub_1000DCE34();
      if (v2 <= 0x3F)
      {
        sub_10001B850();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000DC8F8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for ContentSizeCategory() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
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
        v17 = *&a1[v13];
        if (!*&a1[v13])
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (!v17)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = a1[v13];
      if (!a1[v13])
      {
        goto LABEL_33;
      }
    }

    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }

    v23 = v8 + (v24 | v20);
    return (v23 + 1);
  }

LABEL_33:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 - 1;
    if (v23 < 0)
    {
      v23 = -1;
    }

    return (v23 + 1);
  }

  v21 = *(v6 + 48);

  return v21(a1, v7, v5);
}

void sub_1000DCB40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for ContentSizeCategory() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
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
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFE)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v22 = (a2 - 0x7FFFFFFF);
          v22[1] = 0;
        }

        else
        {
          *v22 = a2;
        }
      }

      else
      {
        v21 = *(v23 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_1000DCDD0()
{
  if (!qword_100226228)
  {
    sub_10000460C(&qword_1002248C0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100226228);
    }
  }
}

void sub_1000DCE34()
{
  if (!qword_100226230)
  {
    type metadata accessor for ContentSizeCategory();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100226230);
    }
  }
}

uint64_t sub_1000DCED4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for VenueEventListHeader();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v2[10];
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ContentSizeCategory();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + v2[11]), *(v3 + v2[11] + 8));

  return swift_deallocObject();
}

uint64_t sub_1000DD058()
{
  type metadata accessor for VenueEventListHeader();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD00;

  return sub_1000DBC44();
}

uint64_t sub_1000DD140@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000DD1CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000DD24C()
{
  result = qword_1002262A8;
  if (!qword_1002262A8)
  {
    sub_10000460C(&qword_100226250);
    sub_1000DD304();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262A8);
  }

  return result;
}

unint64_t sub_1000DD304()
{
  result = qword_1002262B0;
  if (!qword_1002262B0)
  {
    sub_10000460C(&qword_1002262A0);
    sub_1000DD3BC();
    sub_10000BFFC(&qword_100226320, &qword_100226328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262B0);
  }

  return result;
}

unint64_t sub_1000DD3BC()
{
  result = qword_1002262B8;
  if (!qword_1002262B8)
  {
    sub_10000460C(&qword_100226298);
    sub_1000DD448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262B8);
  }

  return result;
}

unint64_t sub_1000DD448()
{
  result = qword_1002262C0;
  if (!qword_1002262C0)
  {
    sub_10000460C(&qword_100226290);
    sub_1000DD4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262C0);
  }

  return result;
}

unint64_t sub_1000DD4D4()
{
  result = qword_1002262C8;
  if (!qword_1002262C8)
  {
    sub_10000460C(&qword_100226288);
    sub_1000DD58C();
    sub_10000BFFC(&qword_1002258D8, &qword_1002258E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262C8);
  }

  return result;
}

unint64_t sub_1000DD58C()
{
  result = qword_1002262D0;
  if (!qword_1002262D0)
  {
    sub_10000460C(&qword_100226268);
    sub_1000DD644();
    sub_10000BFFC(&qword_100226318, &qword_100226280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262D0);
  }

  return result;
}

unint64_t sub_1000DD644()
{
  result = qword_1002262D8;
  if (!qword_1002262D8)
  {
    sub_10000460C(&qword_1002262E0);
    sub_1000DD6C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262D8);
  }

  return result;
}

unint64_t sub_1000DD6C8()
{
  result = qword_1002262E8;
  if (!qword_1002262E8)
  {
    sub_10000460C(&qword_1002262F0);
    sub_1000DD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262E8);
  }

  return result;
}

unint64_t sub_1000DD754()
{
  result = qword_1002262F8;
  if (!qword_1002262F8)
  {
    sub_10000460C(&qword_100226300);
    sub_100069870();
    sub_10000BFFC(&qword_100226308, &qword_100226310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002262F8);
  }

  return result;
}

unint64_t sub_1000DD80C()
{
  result = qword_100226330;
  if (!qword_100226330)
  {
    sub_10000460C(&qword_100226258);
    sub_1000DD898();
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226330);
  }

  return result;
}

unint64_t sub_1000DD898()
{
  result = qword_100226338;
  if (!qword_100226338)
  {
    sub_10000460C(&qword_100226340);
    sub_1000DD24C();
    sub_1000DDA58(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226338);
  }

  return result;
}

unint64_t sub_1000DD970()
{
  result = qword_100226358;
  if (!qword_100226358)
  {
    sub_10000460C(&qword_100226240);
    sub_10000BFFC(&qword_100226360, &qword_100226368);
    sub_1000DDA58(&qword_100220CB0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226358);
  }

  return result;
}

uint64_t sub_1000DDA58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DDAA0(uint64_t a1)
{
  result = sub_1000DE618(&qword_100226370, &type metadata accessor for Art);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DDAFC()
{
  result = qword_100226378;
  if (!qword_100226378)
  {
    sub_10000460C(&qword_100226380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226378);
  }

  return result;
}

uint64_t sub_1000DDCC8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_1002253A0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_100226480);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDEB4);
}

uint64_t sub_1000DDEB4()
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
  Art.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Art();
  sub_1000DE618(&qword_1002253A8, &type metadata accessor for Art);
  static EventService.RequestType.art.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000DE06C;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000DE06C()
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
    v3 = sub_1000DE1F0;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_1000DE1F0()
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
  v9 = sub_100188234(sub_1000DE660, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000DE330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DE3C4@<X0>(uint64_t *a1@<X8>)
{
  result = Art.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000DE408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000DDCC8();
}

uint64_t sub_1000DE494(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000DE594(uint64_t a1)
{
  *(a1 + 8) = sub_1000DE618(&qword_100226470, &type metadata accessor for Art);
  result = sub_1000DE618(&qword_100226478, &type metadata accessor for Art);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000DE618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DE680(uint64_t a1, int a2)
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

uint64_t sub_1000DE6C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000DE740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  return sub_1000047E4(v3 + v4, a2);
}

uint64_t sub_1000DE808(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000047E4(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000046B8(v6);
}

uint64_t sub_1000DE930(uint64_t a1, uint64_t a2)
{
  v167 = a1;
  v139 = *v2;
  v4 = v139;
  v154 = sub_1000024C4(&qword_1002264D0);
  __chkstk_darwin(v154);
  v153 = &v127 - v5;
  v6 = sub_1000024C4(&qword_100222680);
  __chkstk_darwin(v6 - 8);
  v165 = &v127 - v7;
  v161 = type metadata accessor for DateInterval();
  v164 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Time();
  v163 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Music();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v173 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v127 - v15;
  __chkstk_darwin(v14);
  v170 = &v127 - v17;
  v18 = sub_1000024C4(&qword_100225640);
  v19 = __chkstk_darwin(v18 - 8);
  v156 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v171 = &v127 - v21;
  v22 = type metadata accessor for Date();
  v166 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v151 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v150 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v168 = &v127 - v28;
  __chkstk_darwin(v27);
  v169 = &v127 - v29;
  v30 = type metadata accessor for Locale();
  __chkstk_darwin(v30 - 8);
  v31 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v31 - 8);
  v2[16] = 0;
  v32 = *(v4 + 120);
  v172 = v11;
  v33 = *(v11 + 56);
  v137 = v32;
  v158 = v10;
  v33(&v2[v32], 1, 1, v10);
  v34 = &v2[*(*v2 + 128)];
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v136 = v34;
  v2[*(*v2 + 136)] = 0;
  v35 = &v2[*(*v2 + 152)];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v134 = v35;
  v36 = &v2[*(*v2 + 184)];
  *v36 = LocalizedStringKey.init(stringLiteral:)();
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v138 = v36;
  *(v36 + 3) = v39;
  v40 = &v2[*(*v2 + 192)];
  *v40 = LocalizedStringKey.init(stringLiteral:)();
  *(v40 + 1) = v41;
  v40[16] = v42 & 1;
  v135 = v40;
  *(v40 + 3) = v43;
  v44 = &v2[*(*v2 + 200)];
  *v44 = LocalizedStringKey.init(stringLiteral:)();
  *(v44 + 1) = v45;
  v44[16] = v46 & 1;
  v133 = v44;
  *(v44 + 3) = v47;
  v48 = &v2[*(*v2 + 208)];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v48 = String.init(localized:table:bundle:locale:comment:)();
  v48[1] = v49;
  v132 = v48;
  v130 = *(*v2 + 216);
  LocalizedStringResource.init(stringLiteral:)();
  v131 = *(*v2 + 224);
  ObservationRegistrar.init()();
  v50 = *(*v2 + 168);
  v51 = type metadata accessor for Venue();
  v52 = *(v51 - 8);
  v53 = *(v52 + 16);
  v129 = v50;
  v53(&v2[v50], v167, v51);
  v128 = *(*v2 + 176);
  *&v2[v128] = a2;
  v54 = *(*v2 + 160);
  v155 = v2;
  v127 = v54;
  *&v2[v54] = a2;
  v55 = *(a2 + 16);
  v162 = a2;
  v152 = v22;
  v149 = v51;
  v148 = v52;
  if (v55)
  {
    v146 = v16;
    v56 = v172;
    v57 = a2 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = *(v172 + 16);
    v59 = v170;
    v60 = v158;
    v145 = v172 + 16;
    v147 = v58;
    v58(v170, v57, v158);
    swift_bridgeObjectRetain_n();
    v61 = v22;
    v62 = v157;
    Music.time.getter();
    v63 = v56 + 8;
    v64 = v163;
    v65 = v60;
    v66 = *(v56 + 8);
    v66(v59, v65);
    v67 = v160;
    sub_1001875A0(v160);
    v68 = *(v64 + 8);
    v69 = v62;
    v70 = v61;
    v163 = v64 + 8;
    v144 = v68;
    v68(v69, v159);
    v71 = v171;
    DateInterval.start.getter();
    v72 = *(v164 + 8);
    v164 += 8;
    v142 = v72;
    v72(v67, v161);
    v73 = v166;
    v74 = v166 + 56;
    v143 = *(v166 + 56);
    v143(v71, 0, 1, v70);
    v141 = *(v73 + 32);
    v141(v169, v71, v70);
    if (v55 > *(v162 + 16))
    {
      goto LABEL_31;
    }

    v75 = v70;
    v170 = *(v172 + 72);
    v76 = v146;
    v140 = v74;
    v77 = v158;
    v78 = v145;
    v147(v146, v57 + v170 * (v55 - 1), v158);
    v79 = v157;
    Music.time.getter();
    v171 = v66;
    v172 = v63;
    v66(v76, v77);
    v80 = v160;
    sub_1001875A0(v160);
    v144(v79, v159);
    v81 = v156;
    DateInterval.start.getter();
    v142(v80, v161);
    v143(v81, 0, 1, v75);
    v82 = v168;
    v141(v168, v81, v75);
    sub_1000AFEEC(v169, v82, v165);
    v83 = &_swiftEmptyArrayStorage;
    v84 = v77;
    v85 = v78;
    v86 = v147;
    while (1)
    {
      v87 = v173;
      v88 = v85;
      v89 = v86;
      v86(v173, v57, v84);
      v90 = Music.genres.getter();
      v91 = v84;
      (v171)(v87, v84);
      v92 = *(v90 + 16);
      v93 = v83[2];
      v94 = v93 + v92;
      if (__OFADD__(v93, v92))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);

        v124 = v155;
        sub_1000050C4(&v155[v137], &qword_100221710);

        (*(v148 + 8))(&v124[v129], v149);

        v125 = type metadata accessor for LocalizedStringResource();
        (*(*(v125 - 8) + 8))(&v124[v130], v125);
        v126 = type metadata accessor for ObservationRegistrar();
        (*(*(v126 - 8) + 8))(&v124[v131], v126);
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v94 <= v83[3] >> 1)
      {
        if (*(v90 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v93 <= v94)
        {
          v96 = v93 + v92;
        }

        else
        {
          v96 = v93;
        }

        v83 = sub_100189980(isUniquelyReferenced_nonNull_native, v96, 1, v83);
        if (*(v90 + 16))
        {
LABEL_15:
          v97 = (v83[3] >> 1) - v83[2];
          type metadata accessor for Music.Genre();
          if (v97 < v92)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v84 = v91;
          v85 = v88;
          v86 = v89;
          if (v92)
          {
            v98 = v83[2];
            v99 = __OFADD__(v98, v92);
            v100 = v98 + v92;
            if (v99)
            {
              goto LABEL_30;
            }

            v83[2] = v100;
          }

          goto LABEL_5;
        }
      }

      v84 = v91;
      v85 = v88;
      v86 = v89;
      if (v92)
      {
        goto LABEL_28;
      }

LABEL_5:
      v57 += v170;
      if (!--v55)
      {
        goto LABEL_24;
      }
    }
  }

  v101 = v166;
  v102 = *(v166 + 56);
  v103 = v171;
  v102(v171, 1, 1, v22);
  swift_bridgeObjectRetain_n();
  v104 = v169;
  Date.init()();
  v105 = *(v101 + 48);
  if (v105(v103, 1, v22) != 1)
  {
    sub_1000050C4(v103, &qword_100225640);
  }

  v106 = v156;
  v102(v156, 1, 1, v22);
  Date.init()();
  if (v105(v106, 1, v22) != 1)
  {
    sub_1000050C4(v106, &qword_100225640);
  }

  sub_1000AFEEC(v104, v168, v165);
  v83 = &_swiftEmptyArrayStorage;
LABEL_24:
  v107 = sub_10004924C(v83);

  v108 = *(v107 + 16);
  v109 = &_swiftEmptyArrayStorage;
  if (v108)
  {
    v109 = sub_100189DA0(*(v107 + 16), 0);
    v110 = *(type metadata accessor for Music.Genre() - 8);
    v111 = sub_1000E27B8(&v174, &v109[(*(v110 + 80) + 32) & ~*(v110 + 80)], v108, v107);

    sub_1000605FC();
    if (v111 != v108)
    {
      goto LABEL_32;
    }
  }

  v175 = v109;
  sub_1000E0CA0(&v175);
  v112 = v152;

  v173 = v175;
  v113 = v166;
  v114 = *(v166 + 16);
  v115 = v169;
  v114(v150, v169, v112);
  v116 = v168;
  v114(v151, v168, v112);
  v117 = v154;
  v118 = v153;
  DateInterval.init(start:end:)();
  v119 = v165;
  sub_10000BEB8(v165, v118 + v117[12], &qword_100222680);
  (*(v148 + 8))(v167, v149);
  sub_1000050C4(v119, &qword_100222680);
  v120 = *(v113 + 8);
  v120(v116, v112);
  v120(v115, v112);
  v121 = v162;
  *v118 = 0;
  v118[1] = v121;
  v118[2] = &_swiftEmptyArrayStorage;
  *(v118 + v117[13]) = v173;
  *(v118 + v117[14]) = &_swiftEmptySetSingleton;
  v122 = v155;
  sub_1000E2A84(v118, &v155[*(*v155 + 144)]);
  return v122;
}

uint64_t sub_1000DFAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v74 = sub_1000024C4(&qword_100221688);
  __chkstk_darwin(v74);
  v59 = (&v57 - v3);
  v69 = sub_1000024C4(&qword_100221668);
  __chkstk_darwin(v69);
  v60 = (&v57 - v4);
  v71 = sub_1000024C4(&qword_100226488);
  __chkstk_darwin(v71);
  v72 = &v57 - v5;
  v66 = sub_1000024C4(&qword_100226490);
  __chkstk_darwin(v66);
  v67 = &v57 - v6;
  v70 = sub_1000024C4(&qword_100226498);
  __chkstk_darwin(v70);
  v68 = &v57 - v7;
  v58 = type metadata accessor for Date();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000024C4(&qword_1002264A0);
  __chkstk_darwin(v65);
  v11 = (&v57 - v10);
  v64 = type metadata accessor for Venue();
  v63 = *(v64 - 8);
  v12 = __chkstk_darwin(v64);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v57 - v15;
  v16 = type metadata accessor for VenueController.Result(0);
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 24);
  v61 = *(v1 + 16);
  v76 = v61;
  v77 = v19;
  sub_1000024C4(&qword_1002264A8);
  State.wrappedValue.getter();
  v20 = v79;
  swift_getKeyPath();
  v76 = v20;
  sub_1000E0BF8(&qword_1002211C8, type metadata accessor for VenueController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC16EventViewService15VenueController__result;
  swift_beginAccess();
  sub_1000047E4(v20 + v21, v18);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000046B8(v18);
      KeyPath = swift_getKeyPath();
      v24 = v60;
      *v60 = KeyPath;
      sub_1000024C4(&qword_1002216C0);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for ErrorView();
      v26 = *(v25 + 20);
      *(v24 + v26) = swift_getKeyPath();
      sub_1000024C4(&qword_1002216C8);
      swift_storeEnumTagMultiPayload();
      v27 = (v24 + *(v25 + 24));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      *v27 = EnvironmentObject.init()();
      v27[1] = v28;
      v29 = *v2;
      v80[0] = v19;
      v78 = v2[2];
      v79 = v29;
      v30 = swift_allocObject();
      v31 = v2[1];
      *(v30 + 1) = *v2;
      *(v30 + 2) = v31;
      *(v30 + 3) = v2[2];
      v32 = (v24 + *(v69 + 36));
      *v32 = sub_1000E0C98;
      v32[1] = v30;
      v32[2] = 0;
      v32[3] = 0;
      v33 = &qword_100221668;
      sub_10000BEB8(v24, v67, &qword_100221668);
      swift_storeEnumTagMultiPayload();
      sub_100020764(&v79, v75);

      sub_10000BEB8(v80, v75, &qword_1002264B0);
      sub_10000BEB8(&v78, v75, &qword_100221708);
      sub_1000E0B94();
      sub_10000BB18();
      v34 = v68;
      _ConditionalContent<>.init(storage:)();
      sub_10000BEB8(v34, v72, &qword_100226498);
      swift_storeEnumTagMultiPayload();
      sub_1000E0B08();
      sub_10000BA2C();
      _ConditionalContent<>.init(storage:)();
      sub_1000050C4(v34, &qword_100226498);
      v35 = v24;
    }

    else
    {
      v49 = swift_getKeyPath();
      v50 = v59;
      *v59 = v49;
      sub_1000024C4(&qword_1002216C0);
      swift_storeEnumTagMultiPayload();
      v51 = (v50 + *(type metadata accessor for LoadingView() + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      *v51 = EnvironmentObject.init()();
      v51[1] = v52;
      v53 = *v2;
      v80[0] = v19;
      v78 = v2[2];
      v79 = v53;
      v54 = swift_allocObject();
      v55 = v2[1];
      v54[1] = *v2;
      v54[2] = v55;
      v54[3] = v2[2];
      v56 = (v50 + *(v74 + 36));
      type metadata accessor for _TaskModifier();
      sub_100020764(&v79, v75);

      sub_10000BEB8(v80, v75, &qword_1002264B0);
      sub_10000BEB8(&v78, v75, &qword_100221708);
      static TaskPriority.userInitiated.getter();
      *v56 = &unk_1001BC2B8;
      v56[1] = v54;
      v33 = &qword_100221688;
      sub_10000BEB8(v50, v72, &qword_100221688);
      swift_storeEnumTagMultiPayload();
      sub_1000E0B08();
      sub_10000BA2C();
      _ConditionalContent<>.init(storage:)();
      v35 = v50;
    }

    return sub_1000050C4(v35, v33);
  }

  else
  {
    v36 = *&v18[*(sub_1000024C4(&qword_1002211E0) + 48)];
    v37 = v63;
    v38 = v62;
    v39 = v64;
    (*(v63 + 32))(v62, v18, v64);
    (*(v37 + 16))(v14, v38, v39);
    v40 = static Date.now.getter();
    __chkstk_darwin(v40);
    *(&v57 - 2) = v9;
    v41 = sub_1001881F4(sub_100047854, (&v57 - 4), v36);
    (*(v57 + 8))(v9, v58);
    sub_1000024C4(&qword_1002264C8);
    swift_allocObject();
    *&v78 = sub_1000DE930(v14, v41);
    State.init(wrappedValue:)();
    v42 = *(&v79 + 1);
    *v11 = v79;
    v11[1] = v42;
    v43 = v65;
    v44 = *(v65 + 52);
    *(v11 + v44) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v45 = (v11 + *(v43 + 56));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *v45 = EnvironmentObject.init()();
    v45[1] = v46;
    sub_10000BEB8(v11, v67, &qword_1002264A0);
    swift_storeEnumTagMultiPayload();
    sub_1000E0B94();
    sub_10000BB18();
    v47 = v68;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v47, v72, &qword_100226498);
    swift_storeEnumTagMultiPayload();
    sub_1000E0B08();
    sub_10000BA2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v47, &qword_100226498);
    sub_1000050C4(v11, &qword_1002264A0);
    return (*(v63 + 8))(v62, v64);
  }
}

uint64_t sub_1000E0664(uint64_t *a1)
{
  sub_1000024C4(&qword_1002264A8);
  State.wrappedValue.getter();

  v2 = a1[4];
  if (v2)
  {
    v4 = *a1;
    v3 = a1[1];

    sub_10015B530(v4, v3, 10, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000E0BF8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E0750(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v1[7] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v2;

  return _swift_task_switch(sub_1000E07E8);
}

uint64_t sub_1000E07E8()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v1 + 16);
  sub_1000024C4(&qword_1002264A8);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000E08BC;

  return sub_100003A20(v2, v3);
}

uint64_t sub_1000E08BC()
{

  return _swift_task_switch(sub_1000E0A00);
}

uint64_t sub_1000E0A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E0A74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000BD00;

  return sub_1000E0750(v0 + 16);
}

unint64_t sub_1000E0B08()
{
  result = qword_1002264B8;
  if (!qword_1002264B8)
  {
    sub_10000460C(&qword_100226498);
    sub_1000E0B94();
    sub_10000BB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264B8);
  }

  return result;
}

unint64_t sub_1000E0B94()
{
  result = qword_1002264C0;
  if (!qword_1002264C0)
  {
    sub_10000460C(&qword_1002264A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264C0);
  }

  return result;
}

uint64_t sub_1000E0BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E0C48()
{

  return swift_deallocObject();
}

Swift::Int sub_1000E0CA0(void **a1)
{
  v2 = *(type metadata accessor for Music.Genre() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000E2A70(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000E0D48(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1000E0D48(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Music.Genre();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Music.Genre() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000E1180(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E0E74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Music.Genre();
  v9 = __chkstk_darwin(v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v34 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = Music.Genre.name.getter();
      v27 = v26;
      if (v25 == Music.Genre.name.getter() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E1180(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = type metadata accessor for Music.Genre();
  v10 = __chkstk_darwin(v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v149 = &v128 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v128 - v15;
  v16 = __chkstk_darwin(v14);
  v153 = &v128 - v17;
  v18 = __chkstk_darwin(v16);
  v146 = &v128 - v19;
  v20 = __chkstk_darwin(v18);
  v145 = &v128 - v21;
  v22 = __chkstk_darwin(v20);
  v133 = &v128 - v23;
  result = __chkstk_darwin(v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = &_swiftEmptyArrayStorage;
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_1000E1D3C(&v123[*(v5 + 72) * v125], &v123[*(v5 + 72) * v126], &v123[*(v5 + 72) * v29], v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1000E2464(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_1000E23D8(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 16);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1000E2464(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = &_swiftEmptyArrayStorage;
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, &v32[v33 * v30], v9);
      v31 = Music.Genre.name.getter();
      v37 = v36;
      v38 = Music.Genre.name.getter();
      v131 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = &v32[v42];
      v44 = v144 * v5;
      v45 = &v32[v144 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = Music.Genre.name.getter();
        v52 = v51;
        if (v50 == Music.Genre.name.getter() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10018987C(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_10018987C((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1000E1D3C(&v118[*(v143 + 72) * v119], &v118[*(v143 + 72) * v120], &v118[*(v143 + 72) * v29], v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1000E2464(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_1000E23D8(v31);
        v29 = v155;
        v77 = *(v155 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = Music.Genre.name.getter();
    v69 = v68;
    if (v5 == Music.Genre.name.getter() && v69 == v70)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1000E1D3C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = type metadata accessor for Music.Genre();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = Music.Genre.name.getter();
            v52 = v51;
            if (v50 == Music.Genre.name.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = Music.Genre.name.getter();
        v32 = v31;
        if (v30 == Music.Genre.name.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1000E2478(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1000E23D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000E2464(v3);
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

uint64_t sub_1000E2478(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Music.Genre();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000E255C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000024C4(&qword_1002264D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000E2660(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}