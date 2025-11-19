uint64_t sub_1000B8860(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD6FB8);
  type metadata accessor for Date();
  sub_100040930(&qword_100AD2698, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000F24EC(&qword_100AD2688);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + *(v3 + 32));
  v5 = sub_1000B89AC(a1);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = sub_1000B8DAC(v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 32 * v6);

  return v8;
}

uint64_t sub_1000B89AC(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD6F90);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CalendarBinningUnit(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(v2, v9, &qword_100AD6F90);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &qword_100AD6F90);
    return 0;
  }

  v23 = v2;
  sub_1000B8D44(v9, v13, type metadata accessor for CalendarBinningUnit);
  v24 = *(v10 + 24);
  sub_1000F24EC(&qword_100AD3BF0);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100940080;
  (*(v16 + 16))(v18 + v17, v13, v15);
  sub_10005FF80(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v19 = DateComponents.value(for:)();
  LOBYTE(v16) = v20;
  result = (*(v4 + 8))(v6, v3);
  if (v16)
  {
    goto LABEL_7;
  }

  sub_1000ABD88(v13, type metadata accessor for CalendarBinningUnit);
  v21 = *(v23 + *(type metadata accessor for UniformDateBins(0) + 20));
  result = v19 - v21;
  if (__OFSUB__(v19, v21))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B8DAC(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000B8DF0(a1, v2);
}

unint64_t sub_1000B8DF0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1000B8E5C(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF6D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000CA14(a1, a1[3]);
  sub_100040F50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  type metadata accessor for StreakSummary();
  sub_100040930(&qword_100AF6DA0, type metadata accessor for StreakSummary);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s8SnapshotVMa();
    v12 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000B90C4(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF60C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000CA14(a1, a1[3]);
  sub_10004193C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for Date();
  sub_100041A68(&qword_100AE49A8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for StreakSummary();
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000B92F4()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  withObservationTracking<A>(_:onChange:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B93D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B92F4, v7, v6);
}

uint64_t sub_1000B946C()
{

  return _swift_task_switch(sub_1000B9670, 0, 0);
}

uint64_t sub_1000B956C(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100AEDD88) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1000B93D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000B9670()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_10024904C;

  return sub_10003FA1C(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000B973C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B979C()
{
  if (sub_1008C158C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_1000B9900()
{
  if (sub_1008C158C(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1000B9B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1000B9B54(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000B9BB4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B9C24@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

_DWORD *sub_1000B9D1C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

double sub_1000B9D2C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_1000B9D40()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_1000B9DA8()
{
  if (sub_1008C158C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_1000B9E10()
{
  if (sub_1008C158C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_1000F2534();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_1000F27D8(&qword_100AD0E50, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1000B9F04(uint64_t a1, int a2)
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

uint64_t sub_1000B9F24(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DirectionalAttachmentPosition(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DirectionalAttachmentPosition(uint64_t result, int a2, int a3)
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

uint64_t sub_1000B9F98()
{

  return swift_deallocObject();
}

uint64_t sub_1000B9FD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BA010()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA048()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA098()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA0E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA120()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA158()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BA1F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BA2C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA3C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BA408()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000BA558()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000BA6B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BA75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD2258);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UnevenRoundedRectangle();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000BA91C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD2258);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UnevenRoundedRectangle();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000BAA4C()
{
  sub_1000F2A18(&qword_100AD2060);
  sub_1000FEB50();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BAAF0@<X0>(_BYTE *a1@<X8>)
{
  sub_1001065A4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BAB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000BAC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000BAC74()
{

  sub_1000467F0(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1000BACCC()
{
  v1 = *(type metadata accessor for MacSettingsFormStyle.Section() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for SectionConfiguration();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000BADEC()
{
  v1 = type metadata accessor for ToggleStyleConfiguration();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BAE7C()
{
  sub_1000F2A18(&qword_100AD28B8);
  type metadata accessor for PlainButtonStyle();
  sub_10000B58C(&qword_100AD2910, &qword_100AD28B8);
  sub_1001082A0(&qword_100AD2918, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BAF60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BAFD8()
{

  return swift_deallocObject();
}

id sub_1000BB0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 standardAppearance];
  *a2 = result;
  return result;
}

id sub_1000BB128@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000BB170()
{

  return swift_deallocObject();
}

uint64_t sub_1000BB1C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BB200()
{
  v1 = *(sub_1000F24EC(&qword_100AD2A70) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for PodcastAssetMetadata();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000BB328()
{

  return swift_deallocObject();
}

uint64_t sub_1000BB370()
{

  return swift_deallocObject();
}

uint64_t sub_1000BB3C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BB3F8()
{

  return swift_deallocObject();
}

void sub_1000BB440()
{

  sub_100117C18();
}

uint64_t sub_1000BB498()
{

  return swift_deallocObject();
}

uint64_t sub_1000BB4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InsightsHighlightsView.Phase(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000F24EC(&unk_100AD9850);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000BB5E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for InsightsHighlightsView.Phase(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000F24EC(&unk_100AD9850);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000BB6E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F24EC(&unk_100AD9850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1000F24EC(&qword_100AD3A48);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_1000F24EC(&qword_100AD3A50);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = sub_1000F24EC(&qword_100AD3A58);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = sub_1000F24EC(&qword_100AD3A60);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_1000BB928(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000F24EC(&unk_100AD9850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_1000F24EC(&qword_100AD3A48);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000F24EC(&qword_100AD3A50);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = sub_1000F24EC(&qword_100AD3A58);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = sub_1000F24EC(&qword_100AD3A60);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1000BBB6C()
{
  v1 = type metadata accessor for InsightsHighlightsView(0);
  v19 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v21 = v0;
  v18 = (v19 + 16) & ~v19;
  v5 = v0 + v18;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v18, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v22 = *(v3 + 8);
  v22(v5 + v1[6], v2);
  sub_1000F24EC(&qword_100AD3A48);

  v9 = (v5 + v1[7]);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {

    v11 = sub_1000F24EC(&qword_100AD3B60);
    v22(v9 + *(v11 + 48), v2);
  }

  v20 = v2;
  v12 = *(type metadata accessor for InsightsHighlightsView.LoadingState(0) + 20);
  if (!v8(v9 + v12, 1, v6))
  {
    (*(v7 + 8))(v9 + v12, v6);
  }

  sub_1000F24EC(&qword_100AD3A50);

  v13 = v5 + v1[8];
  if (!v8(v13, 1, v6))
  {
    (*(v7 + 8))(v13, v6);
  }

  sub_1000F24EC(&qword_100AD3A58);

  v14 = v1[9];
  sub_1000F24EC(&qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for Calendar();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  sub_100123028(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  sub_1000467F0(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  v22(v21 + ((v18 + v17 + v4) & ~v4), v20);

  return swift_deallocObject();
}

id sub_1000BBF6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  *a2 = v2;
  return v2;
}

id sub_1000BBF8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  *a2 = v2;
  return v2;
}

id sub_1000BBFDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  *a2 = v2;
  return v2;
}

uint64_t sub_1000BC038(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD3E70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000BC0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD3E70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000BC154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD3F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BC1C4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD3F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BC22C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_1000BC2AC@<X0>(void *a1@<X8>)
{
  result = sub_1003F0A00();
  *a1 = result;
  return result;
}

uint64_t sub_1000BC2EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BC344()
{

  return swift_deallocObject();
}

uint64_t sub_1000BC394()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BC3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1000BC40C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BC444()
{
  v1 = sub_1000F24EC(&unk_100AD43E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BC4D8()
{
  v1 = sub_1000F24EC(&qword_100ADE610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BC5A0()
{
  v1 = type metadata accessor for JournalSidebarViewModel(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  v4 = sub_1000F24EC(&qword_100AD47A0);
  if (!(*(*(v4 - 8) + 48))(v2 + v3, 2, v4))
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v2 + v3, v5);
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for MergeableJournalAttributes.Icon();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1000BC728()
{

  return swift_deallocObject();
}

uint64_t sub_1000BC768()
{

  return swift_deallocObject();
}

uint64_t sub_1000BC7A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BC7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCAF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BCB2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AppNavigationSidebarController.Item(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BCBD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppNavigationSidebarController.Item(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000BCC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD4C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCCEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BCD34()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCD84()
{
  v1 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1000F24EC(&qword_100AD47A0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 2, v3))
  {
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000BCEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCEE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000BCF2C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 40) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BD004()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  if (*(v0 + 16))
  {
  }

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v10 = type metadata accessor for SidebarPreferences.Brick();
      (*(*(v10 - 8) + 8))(v0 + v6, v10);
      break;
    case 0:
      v9 = sub_1000F24EC(&qword_100AD47A0);
      if (!(*(*(v9 - 8) + 48))(v0 + v6, 2, v9))
      {
        v7(v0 + v6, v1);
      }

      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1000BD218()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for AppNavigationSidebarController.Item(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v11 = type metadata accessor for SidebarPreferences.Brick();
      (*(*(v11 - 8) + 8))(v0 + v6, v11);
      break;
    case 0:
      v10 = sub_1000F24EC(&qword_100AD47A0);
      if (!(*(*(v10 - 8) + 48))(v0 + v6, 2, v10))
      {
        v8(v0 + v6, v1);
      }

      break;
  }

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BD480()
{

  return swift_deallocObject();
}

uint64_t sub_1000BD4B8()
{
  v1 = type metadata accessor for JournalSidebarViewModel(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);

  v6 = v0 + v2;

  v7 = *(v1 + 24);
  v8 = sub_1000F24EC(&qword_100AD47A0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v6 + v7, 2, v8))
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 8))(v6 + v7, v10);
  }

  v11 = *(v1 + 28);
  v12 = type metadata accessor for MergeableJournalAttributes.Icon();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  if (!v9(v0 + v5, 2, v8))
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v0 + v5, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1000BD750()
{
  v1 = sub_1000F24EC(&qword_100AD4E78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BD7E4()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000BD828()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000BD860()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000BD8D4()
{
  v1 = sub_1000F24EC(&qword_100AD4E78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000BD968()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BD9A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BD9E0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDA20()
{
  v1 = sub_1000F24EC(&qword_100AF1550);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1000F24EC(&qword_100ADE620);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

id sub_1000BDB90()
{
  v0 = sub_100166A30();

  return v0;
}

uint64_t sub_1000BDBB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BDC00()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDC40()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDC78()
{
  v1 = sub_1000F24EC(&qword_100AD4E78);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000BDDE0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BDE28()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDE64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BDE9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDED4()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDF34()
{

  return swift_deallocObject();
}

uint64_t sub_1000BDFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000F24EC(&unk_100AD4790);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000BE0D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000F24EC(&unk_100AD4790);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000BE218()
{

  return swift_deallocObject();
}

uint64_t sub_1000BE250()
{

  return swift_deallocObject();
}

uint64_t sub_1000BE360()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE4F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BE528()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE578(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BE600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE638()
{

  return swift_deallocObject();
}

uint64_t sub_1000BE670()
{

  return swift_deallocObject();
}

id sub_1000BE6B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTracking];
  *a2 = result;
  return result;
}

uint64_t sub_1000BE718()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BE750()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE790()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE7D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BE808()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BE850()
{

  return swift_deallocObject();
}

uint64_t sub_1000BE8B0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BE998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BEACC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BEB24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BEB5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000BEB9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000BEBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BEC18()
{

  return swift_deallocObject();
}

uint64_t sub_1000BEC7C()
{
  v1 = type metadata accessor for PaperMarkup();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BED64()
{

  return swift_deallocObject();
}

uint64_t sub_1000BED9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BEE78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BEF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD6FF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD7000);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 108);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000BF050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD6FF8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD7000);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 108);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000BF1A8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000BF26C()
{
  v1 = type metadata accessor for AdminMenu();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  sub_1000F24EC(&qword_100AD6FE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 108);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_1000F24EC(&qword_100AD7000);

  return swift_deallocObject();
}

uint64_t sub_1000BF574()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for AdminMenu.TipStatus() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v4 = v0 + v3 + v2[11];
  v5 = type metadata accessor for Tips.Status();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  sub_1000F24EC(&qword_100AD76A8);

  return swift_deallocObject();
}

uint64_t sub_1000BF704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000BF7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000BF880()
{

  return swift_deallocObject();
}

uint64_t sub_1000BF8C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BF8F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000BF940()
{

  return swift_deallocObject();
}

uint64_t sub_1000BF97C()
{
  v1 = *(sub_1000F24EC(&unk_100AD6DD0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  if (!v7(v0 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1000BFAE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000BFB20()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BFB60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BFBB0()
{

  return swift_deallocObject();
}

uint64_t sub_1000BFBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD7DC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000F24EC(&qword_100AD7DD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000BFCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AD7DC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000F24EC(&qword_100AD7DD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000BFE08()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BFE40@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000BFE94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BFECC()
{

  return swift_deallocObject();
}

uint64_t sub_1000BFF04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000BFF4C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BFF84()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000BFFBC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C010C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C027C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C02BC()
{

  return swift_deallocObject();
}

uint64_t sub_1000C0300()
{
  v1 = type metadata accessor for AssetPlacement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C03CC()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C0494()
{

  return swift_deallocObject();
}

uint64_t sub_1000C04CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C0504()
{

  return swift_deallocObject();
}

uint64_t sub_1000C053C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C0574()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C05B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C0700()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C0858()
{

  return swift_deallocObject();
}

uint64_t sub_1000C08A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C08E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C09C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UniformDateBins(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&qword_100AD2688);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000C0ADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UniformDateBins(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&qword_100AD2688);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000C0BF0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_1000C0C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AD97D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&qword_100AD3A58);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000C0D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&unk_100AD97D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&qword_100AD3A58);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C0E44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F24EC(&unk_100AD97D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1000F24EC(&unk_100AD98A0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[6];
    }

    else
    {
      v14 = sub_1000F24EC(&qword_100AD3A60);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[7];
      }

      else
      {
        v15 = sub_1000F24EC(&qword_100AD98B0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[9] + 8);
          if (v17 > 1)
          {
            return (v17 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[8];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000C1010(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000F24EC(&unk_100AD97D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000F24EC(&unk_100AD98A0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_1000F24EC(&qword_100AD3A60);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_1000F24EC(&qword_100AD98B0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 8) = -a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C12B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD9980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C1320()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C1378()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1408()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C1444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000C1634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C16EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1724()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1764()
{

  return swift_deallocObject();
}

uint64_t sub_1000C179C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C18DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C1918()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1988()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1A74()
{

  return swift_deallocObject();
}

uint64_t sub_1000C1AAC()
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C1C54()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C1DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000C1EA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C1F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for IndexSet();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000C1FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for IndexSet();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000C205C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C21BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADAC10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C2234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADAC10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000C2360()
{

  return swift_deallocObject();
}

uint64_t sub_1000C23A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&qword_100AD2688);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000C245C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD2688);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C252C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100673E7C();
  *a1 = result;
  return result;
}

uint64_t sub_1000C25A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F24EC(&qword_100AD3A60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000F24EC(&qword_100AD7000);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[11] + 24);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1000F24EC(&qword_100AD7DC8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[13];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1000C273C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000F24EC(&qword_100AD3A60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_1000F24EC(&qword_100AD7000);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 24) = (a2 - 1);
  }

  else
  {
    v14 = sub_1000F24EC(&qword_100AD7DC8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[13];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_1000C28FC()
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C2ACC()
{
  sub_1000F2A18(&qword_100ADB0B0);
  sub_10028096C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C2B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for AnyLayout.Cache();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000C2BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for AnyLayout.Cache();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000C2D7C()
{
  v1 = sub_1000F24EC(&qword_100AE9470);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C2E10()
{

  return swift_deallocObject();
}

uint64_t sub_1000C2E48()
{

  return swift_deallocObject();
}

uint64_t sub_1000C2E94()
{

  return swift_deallocObject();
}

uint64_t sub_1000C2ECC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C2F04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C2F44()
{

  return swift_deallocObject();
}

uint64_t sub_1000C2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000C3094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000C31B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C31F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3244()
{

  return swift_deallocObject();
}

uint64_t sub_1000C32BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C32F4()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3338()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C33C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3410()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3450()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3490()
{

  return swift_deallocObject();
}

uint64_t sub_1000C34E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000C351C()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C35F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C3630()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C3680()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C36E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C38A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100ADC9B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1000C397C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100ADC9B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000C3A44(uint64_t a1)
{
  result = sub_1002E0A28(&qword_100ADCA68, type metadata accessor for $s7Journal0024RecordingViewswift_ynAHffMX352_0_33_104DA14A1B51E0439F4AC926246DCE3ALl7PreviewfMf_15PreviewRegistryfMu_.MockPlaybackController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C3AA0@<X0>(_BYTE *a1@<X8>)
{
  sub_1002E0D48();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000C3B3C@<X0>(_BYTE *a1@<X8>)
{
  sub_1002E0CF4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000C3C44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C3CB0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000C3E34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000C3F08@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C3F64@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

double sub_1000C4028@<D0>(double *a1@<X8>)
{
  sub_1002E24F8();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000C40EC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ButtonToggleStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000C4190(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for ButtonToggleStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C4234()
{
  v1 = type metadata accessor for ToggleStyleConfiguration();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C42C0()
{
  type metadata accessor for ConditionalPrimitiveButtonStyleModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000C444C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Duration.TimeFormatStyle();
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
      v13 = type metadata accessor for Duration.UnitsFormatStyle();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000C4570(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Duration.TimeFormatStyle();
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
      v13 = type metadata accessor for Duration.UnitsFormatStyle();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000C469C()
{
  v1 = (type metadata accessor for TimecodeView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = type metadata accessor for Duration.TimeFormatStyle();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = type metadata accessor for Duration.UnitsFormatStyle();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1000C47C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4BA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C488C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F24EC(&unk_100AD4BA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000C4920()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4958()
{

  return swift_deallocObject();
}

uint64_t sub_1000C49A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000C49E4()
{
  v1 = *(type metadata accessor for SceneSplitViewController.ContentType(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1000F24EC(&unk_100AD4BA0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 2, v3))
  {
    v4 = sub_1000F24EC(&qword_100AD47A0);
    if (!(*(*(v4 - 8) + 48))(v0 + v2, 2, v4))
    {
      v5 = type metadata accessor for UUID();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1000C4B74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1000C4C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SceneSplitViewController.ContentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C4DDC()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4E18@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C4E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100ADD768);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000C4F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100ADD768);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C5014()
{
  v1 = type metadata accessor for RecordingButton();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1000467F0(*(v2 + 8), *(v2 + 16));
  sub_1000467F0(*(v2 + 24), *(v2 + 32));
  sub_1000467F0(*(v2 + 40), *(v2 + 48));
  v3 = v2 + *(v1 + 32);
  v4 = type metadata accessor for AccessibilityTechnologies();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1000F24EC(&qword_100ADD768);

  return swift_deallocObject();
}

uint64_t sub_1000C5214()
{

  return swift_deallocObject();
}

uint64_t sub_1000C525C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C52D0()
{
  v1 = *(v0 + 16);
  if (v1 >= 7)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C5344(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Duration.UnitsFormatStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C53F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Duration.UnitsFormatStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C549C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000C54F4()
{
  v1 = (type metadata accessor for ScrollableWaveformView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_10000BA7C(v2);

  sub_1000467F0(*(v2 + 72), *(v2 + 80));
  sub_1000467F0(*(v2 + 88), *(v2 + 96));
  v3 = v1[11];
  v4 = type metadata accessor for Duration.UnitsFormatStyle();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000C5624()
{

  return swift_deallocObject();
}

uint64_t sub_1000C565C()
{
  v1 = (type metadata accessor for ScrollableWaveformView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_10000BA7C(v2);

  sub_1000467F0(*(v2 + 72), *(v2 + 80));
  sub_1000467F0(*(v2 + 88), *(v2 + 96));
  v3 = v1[11];
  v4 = type metadata accessor for Duration.UnitsFormatStyle();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000C5778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADE098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1000C57E8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1000C57F4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = -*(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1000C5804@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_1000C582C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5884()
{

  return swift_deallocObject();
}

uint64_t sub_1000C58DC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C59B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C59F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C5A40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C5A78()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5AB8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5AF0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5B30()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5B68()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C5BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5C10()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5C48()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5C98()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C5D5C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1000C5E44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_1000C5E78()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5EB0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5EF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C5F3C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C5F84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&qword_100AD3A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000F24EC(&qword_100ADECC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000C60C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F24EC(&qword_100AD3A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F24EC(&qword_100ADECC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000C61FC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADED88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C627C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C62B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6344@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000C63A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C63DC()
{

  return swift_deallocObject();
}

uint64_t sub_1000C642C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C6484()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C64CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C6578()
{

  return swift_deallocObject();
}

uint64_t sub_1000C65B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000C65F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6638()
{

  return swift_deallocObject();
}

uint64_t sub_1000C667C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C66B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C66FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C684C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C69A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6A0C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C6A44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C6A84()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6ABC()
{
  v1 = sub_1000F24EC(&qword_100ADF420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000F24EC(&qword_100ADF418);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  (*(v7 + 8))(v0 + v8, v6);
  v10(v0 + v9, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C6C50()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C6C88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C6DD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000C6F30()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6F7C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C6FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C7044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000C70C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000C7178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C721C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C7330()
{

  return swift_deallocObject();
}

uint64_t sub_1000C7378@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = RecordUploading.cloudKitRecordID.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C73B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C7434()
{

  return swift_deallocObject();
}

uint64_t sub_1000C74D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C7528()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C7580()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C764C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C7684()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C7758()
{

  return swift_deallocObject();
}

uint64_t sub_1000C7790()
{
  v1 = sub_1000F24EC(&unk_100ADFBB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1000C7888()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C7914()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C794C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C799C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C79E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v10 = sub_1000F24EC(&qword_100AD1420);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000C7AF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD1420);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C7BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_1000F24EC(&qword_100AD3750);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000C7C6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD3750);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C7D1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&unk_100AD6DD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000F24EC(&unk_100AD4790);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[9] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000C7E98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000F24EC(&unk_100AD6DD0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000F24EC(&unk_100AD4790);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C800C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AD6DD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&qword_100AD3750);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 <= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28));
  }

  v16 = v15 - 3;
  if (v14 >= 3)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C8138(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&qword_100AD3750);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C8258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE0260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&unk_100AD6DD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000C8388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AE0260);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&unk_100AD6DD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C84A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_1000F24EC(&unk_100AD4790);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000C8570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD4790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C8620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&unk_100AD6DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C86DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD6DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C87D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_1000F24EC(&unk_100AD6DD0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000F24EC(&unk_100AD4790);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000C891C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_1000F24EC(&unk_100AD6DD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000F24EC(&unk_100AD4790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000C8AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&unk_100AD4790);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000C8BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&unk_100AD4790);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000C8CEC(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_1000F24EC(&qword_100AD3750);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1000F24EC(&qword_100AD1420);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[11]];

  return v15(v16, a2, v14);
}

char *sub_1000C8E70(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000F24EC(&qword_100AD3750);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1000F24EC(&qword_100AD1420);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000C8FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000C90B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C91BC()
{
  v1 = type metadata accessor for SuggestionImportSession(0);
  v28 = *(*(v1 - 8) + 80);
  v2 = (v28 + 32) & ~v28;
  v3 = *(*(v1 - 8) + 64);
  v26 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v27 = *(*(v26 - 8) + 80);
  v24 = (v2 + v3 + v27) & ~v27;
  v4 = *(*(v26 - 8) + 64) + v24;
  swift_unknownObjectRelease();
  v5 = v0 + v2;

  v25 = v1;
  v6 = v0 + v2 + *(v1 + 20);

  v7 = type metadata accessor for Suggestion(0);
  v8 = v7[6];
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = v4 + 7;
  v12 = v7[7];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v16 = v11 & 0xFFFFFFFFFFFFFFF8;
  v17 = v7[8];
  if (!v15(v6 + v17, 1, v13))
  {
    (*(v14 + 8))(v6 + v17, v13);
  }

  v18 = *(v14 + 8);
  v18(v6 + v7[11], v13);
  v19 = *(v25 + 32);
  v20 = type metadata accessor for Logger();
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  sub_10000BA7C(v0 + v24);
  v18(v0 + v24 + *(v26 + 20), v13);

  v21 = v0 + v16;
  v22 = *(v0 + v16 + 16);
  if (v22 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C9550()
{
  v1 = (type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = sub_1000F24EC(&qword_100AE0D78);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v0 + v2;
  sub_10000BA7C(v0 + v2);
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1000C96E8()
{
  v1 = type metadata accessor for SuggestionImportSession(0);
  v17 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);

  v16 = (v17 + 24) & ~v17;

  v2 = v0 + v16 + *(v1 + 20);

  v3 = type metadata accessor for Suggestion(0);
  v4 = v3[6];
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = v3[7];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v11 = v3[8];
  if (!v10(v2 + v11, 1, v8))
  {
    (*(v9 + 8))(v2 + v11, v8);
  }

  (*(v9 + 8))(v2 + v3[11], v8);
  v12 = *(v1 + 32);
  v13 = type metadata accessor for Logger();
  (*(*(v13 - 8) + 8))(v0 + v16 + v12, v13);

  return swift_deallocObject();
}

uint64_t sub_1000C99A8()
{
  v1 = type metadata accessor for SuggestionImportSession(0);
  v19 = *(*(v1 - 8) + 80);
  v2 = (v19 + 16) & ~v19;
  v18 = *(*(v1 - 8) + 64);
  v20 = v0;
  v3 = v0 + v2;

  v4 = v0 + v2 + *(v1 + 20);

  v5 = type metadata accessor for Suggestion(0);
  v6 = v5[6];
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = v5[7];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v13 = v5[8];
  if (!v12(v4 + v13, 1, v10))
  {
    (*(v11 + 8))(v4 + v13, v10);
  }

  (*(v11 + 8))(v4 + v5[11], v10);
  v14 = *(v1 + 32);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v20 + ((v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return swift_deallocObject();
}

uint64_t sub_1000C9C70()
{
  v1 = type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v7 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  v8 = *(v7 + 20);
  if (!v6(v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v3 + v8, v4);
  }

  v9 = v2 + v1[6];
  if (!v6(v9, 1, v4))
  {
    (*(v5 + 8))(v9, v4);
  }

  v10 = *(v7 + 20);
  if (!v6(v9 + v10, 1, v4))
  {
    (*(v5 + 8))(v9 + v10, v4);
  }

  v11 = v2 + v1[7];
  if (!v6(v11, 1, v4))
  {
    (*(v5 + 8))(v11, v4);
  }

  v12 = *(v7 + 20);
  if (!v6(v11 + v12, 1, v4))
  {
    (*(v5 + 8))(v11 + v12, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000C9EFC()
{
  v1 = *(v0 + 32);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000C9F6C()
{
  v1 = type metadata accessor for Suggestion.Location(0);
  v25 = *(*(v1 - 8) + 80);
  v2 = (v25 + 32) & ~v25;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for SuggestionImportSession(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = *(v1 + 28);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v0 + v6;

  v12 = v11 + *(v4 + 20);

  v13 = type metadata accessor for Suggestion(0);
  v14 = v13[6];
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v17 = v13[7];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v12 + v17, 1, v18))
  {
    (*(v19 + 8))(v12 + v17, v18);
  }

  v21 = v13[8];
  if (!v20(v12 + v21, 1, v18))
  {
    (*(v19 + 8))(v12 + v21, v18);
  }

  (*(v19 + 8))(v12 + v13[11], v18);
  v22 = *(v4 + 32);
  v23 = type metadata accessor for Logger();
  (*(*(v23 - 8) + 8))(v11 + v22, v23);

  return swift_deallocObject();
}

uint64_t sub_1000CA33C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CA374()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CA3AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1000F24EC(&unk_100AD4790) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;

  (*(v2 + 8))(v0 + v3, v1);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v0 + v7, 1, v9))
  {
    (*(v10 + 8))(v0 + v7, v9);
  }

  if (!v11(v0 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CA5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisitAssetMetadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000F24EC(&unk_100AD4790);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000CA6F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for VisitAssetMetadata();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000F24EC(&unk_100AD4790);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000CA850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CA8FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CA9A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Suggestion(0);
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
      v13 = type metadata accessor for Logger();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000CAAC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Suggestion(0);
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
      v13 = type metadata accessor for Logger();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000CAC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE1400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000CAD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE1400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000CAE1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000F24EC(&qword_100AD7DC8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1000CAEE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD7DC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CAFA0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CAFE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CB068()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000CB130()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AssetPlacement();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000CB294()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CB2CC()
{

  if (*(v0 + 48))
  {
    sub_10000BA7C(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CB334()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB36C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CB3B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB410()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CB460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CanvasContentInputType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000CB518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CanvasContentInputType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1000CB5D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CB614()
{
  v1 = *(type metadata accessor for CanvasContentInputType() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for UUID();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1000CB758()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CB7CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CBA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE26D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000F24EC(&qword_100AE26D8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000CBBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AE26D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000F24EC(&qword_100AE26D8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000CBCF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CBE04()
{
  v1 = type metadata accessor for MergeableColor();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MergeableJournalAttributes.Icon();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_1000CBF74(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1003DA15C(v1);
}

uint64_t sub_1000CBFFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC044()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC080()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC0C8()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC124()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC15C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC19C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC1D4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CC21C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC25C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC29C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC370()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CC464()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CC49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE3528);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000F24EC(&qword_100AD3A60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000CC5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AE3528);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000F24EC(&qword_100AD3A60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000CC6B8()
{
  v1 = (type metadata accessor for CanvasDatePicker() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_1000F24EC(&qword_100AE3528);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  sub_1000F24EC(&qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Calendar();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CC81C@<X0>(_BYTE *a1@<X8>)
{
  sub_1001020DC();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000CC8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE3690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CC9EC(uint64_t a1)
{
  v2 = type metadata accessor for EntryDateSource();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1000CCA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000CCAC0()
{
  type metadata accessor for EntryDateSource();
  sub_1003FDF58(&qword_100AE3728, &type metadata accessor for EntryDateSource);
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t sub_1000CCB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1000CCBA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CCBFC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CCC34()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCC78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CCCE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCD1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCD5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CCD9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CCE7C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000CCF48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CD028()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CD0B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CD0FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CD140()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CD1A0()
{
  v1 = sub_1000F24EC(&qword_100AE4338);
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v66 = v2;
  v3 = *(v70 + 64);
  v4 = sub_1000F24EC(&qword_100AE4330);
  v68 = *(v4 - 8);
  v69 = v4;
  v63 = (v2 + v3 + *(v68 + 80)) & ~*(v68 + 80);
  v5 = *(v68 + 64);
  v67 = sub_1000F24EC(&qword_100AE4328);
  v65 = *(v67 - 8);
  v60 = (v63 + v5 + *(v65 + 80)) & ~*(v65 + 80);
  v6 = *(v65 + 64);
  v64 = sub_1000F24EC(&qword_100AE4320);
  v62 = *(v64 - 8);
  v57 = (v60 + v6 + *(v62 + 80)) & ~*(v62 + 80);
  v7 = *(v62 + 64);
  v61 = sub_1000F24EC(&qword_100AE4318);
  v59 = *(v61 - 8);
  v54 = (v57 + v7 + *(v59 + 80)) & ~*(v59 + 80);
  v8 = *(v59 + 64);
  v58 = sub_1000F24EC(&qword_100AE4310);
  v56 = *(v58 - 8);
  v51 = (v54 + v8 + *(v56 + 80)) & ~*(v56 + 80);
  v9 = *(v56 + 64);
  v55 = sub_1000F24EC(&qword_100AE4308);
  v53 = *(v55 - 8);
  v48 = (v51 + v9 + *(v53 + 80)) & ~*(v53 + 80);
  v10 = *(v53 + 64);
  v52 = sub_1000F24EC(&qword_100AE4300);
  v50 = *(v52 - 8);
  v45 = (v48 + v10 + *(v50 + 80)) & ~*(v50 + 80);
  v11 = *(v50 + 64);
  v49 = sub_1000F24EC(&qword_100AE42F8);
  v47 = *(v49 - 8);
  v42 = (v45 + v11 + *(v47 + 80)) & ~*(v47 + 80);
  v12 = *(v47 + 64);
  v46 = sub_1000F24EC(&qword_100AE42F0);
  v44 = *(v46 - 8);
  v39 = (v42 + v12 + *(v44 + 80)) & ~*(v44 + 80);
  v13 = *(v44 + 64);
  v43 = sub_1000F24EC(&qword_100AE42E8);
  v41 = *(v43 - 8);
  v36 = (v39 + v13 + *(v41 + 80)) & ~*(v41 + 80);
  v14 = *(v41 + 64);
  v40 = sub_1000F24EC(&qword_100AE42E0);
  v38 = *(v40 - 8);
  v33 = (v36 + v14 + *(v38 + 80)) & ~*(v38 + 80);
  v15 = *(v38 + 64);
  v37 = sub_1000F24EC(&qword_100AE42D8);
  v35 = *(v37 - 8);
  v30 = (v33 + v15 + *(v35 + 80)) & ~*(v35 + 80);
  v16 = *(v35 + 64);
  v34 = sub_1000F24EC(&qword_100AE42D0);
  v32 = *(v34 - 8);
  v28 = (v30 + v16 + *(v32 + 80)) & ~*(v32 + 80);
  v17 = *(v32 + 64);
  v31 = sub_1000F24EC(&qword_100AE42C8);
  v27 = *(v31 - 8);
  v25 = (v28 + v17 + *(v27 + 80)) & ~*(v27 + 80);
  v18 = *(v27 + 64);
  v29 = sub_1000F24EC(&qword_100AE42C0);
  v19 = *(v29 - 8);
  v20 = (v25 + v18 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v26 = sub_1000F24EC(&qword_100AE42B8);
  v22 = *(v26 - 8);
  v23 = (v20 + v21 + *(v22 + 80)) & ~*(v22 + 80);

  (*(v70 + 8))(v0 + v66, v71);
  (*(v68 + 8))(v0 + v63, v69);
  (*(v65 + 8))(v0 + v60, v67);
  (*(v62 + 8))(v0 + v57, v64);
  (*(v59 + 8))(v0 + v54, v61);
  (*(v56 + 8))(v0 + v51, v58);
  (*(v53 + 8))(v0 + v48, v55);
  (*(v50 + 8))(v0 + v45, v52);
  (*(v47 + 8))(v0 + v42, v49);
  (*(v44 + 8))(v0 + v39, v46);
  (*(v41 + 8))(v0 + v36, v43);
  (*(v38 + 8))(v0 + v33, v40);
  (*(v35 + 8))(v0 + v30, v37);
  (*(v32 + 8))(v0 + v28, v34);
  (*(v27 + 8))(v0 + v25, v31);
  (*(v19 + 8))(v0 + v20, v29);
  (*(v22 + 8))(v0 + v23, v26);

  return swift_deallocObject();
}

uint64_t sub_1000CDC4C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDC98()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDCE0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDD20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CDD5C()
{
  v1 = type metadata accessor for OSSignposter();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000CDE38()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDE70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CDEB8()
{
  v1 = type metadata accessor for OSSignposter();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000CDFA0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CDFD8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE010()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE064()
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000CE0EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE134()
{

  return swift_deallocObject();
}

BOOL sub_1000CE16C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1006A52A4();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE1B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE1EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE22C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE27C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CE2C4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE2FC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE348()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE380()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE3C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE458()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE490(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&unk_100AD4790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CE54C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(&unk_100AD4790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CE614()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE64C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CE69C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CE6EC()
{
  swift_unknownObjectRelease();

  sub_10000BA7C(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1000CE73C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CE77C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CE7B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CE7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD7DC8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 68);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000CE91C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000F24EC(&qword_100AD7DC8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 68);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000CEA6C()
{
  sub_100221DFC();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000CEB1C()
{
  sub_1000F2A18(&qword_100AE4FB0);
  sub_1000F2A18(&unk_100AE16A0);
  type metadata accessor for ModifiedContent();
  sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD21E8);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5A0);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100ADB5B0);
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AD21B0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_1000F2A18(&qword_100AE4FB8);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_1000F2A18(&qword_100ADB250);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000B58C(&qword_100ADB248, &qword_100ADB250);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100482EE4(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1000CEEF4()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000CEFC0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CEFF8()
{
  v1 = sub_1000F24EC(&qword_100AD4E78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000CF08C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF0D0()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF110()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1000340DC(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1000CF16C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF1AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF1E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF21C()
{

  return swift_deallocObject();
}

uint64_t sub_1000CF29C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF2F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CF328()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF364()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF3B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF3E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CF658()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CF698()
{
  v1 = type metadata accessor for JournalSidebarViewModel(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 24);
  v5 = sub_1000F24EC(&qword_100AD47A0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 2, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v3 + v4, v6);
  }

  v7 = *(v1 + 28);
  v8 = type metadata accessor for MergeableJournalAttributes.Icon();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1000CF824(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(qword_100AE5668);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000CF8E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F24EC(qword_100AE5668);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CF998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000CFA54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000CFB0C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CFB54()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CFB90()
{

  return swift_deallocObject();
}

uint64_t sub_1000CFBEC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000CFC2C()
{
  v1 = type metadata accessor for IndexPath();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000CFCC8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000CFD00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000CFD38()
{

  return swift_deallocObject();
}

uint64_t sub_1000CFD70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000CFE50()
{

  sub_1000340DC(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1000CFEE0(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE5E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CFFFC()
{
  sub_1000F2A18(&qword_100AE5E60);
  sub_1004C65CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D0078()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D00B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D00F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D0194()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D01DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D0228()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D0260()
{
  v1 = type metadata accessor for Notification();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D02FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0344()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D037C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D03C4()
{
  v1 = sub_1000F24EC(&qword_100AF1550);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1000F24EC(&qword_100ADE620);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D054C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D0584()
{
  v1 = sub_1000F24EC(&qword_100AE64A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D065C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D06A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D06DC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0724()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D0778()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D07F8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D0840(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10024057C(v1, v2);
}

uint64_t sub_1000D0898()
{

  return swift_deallocObject();
}

uint64_t sub_1000D08E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D091C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D096C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000F24EC(&qword_100AE26D8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for InsightsTipViewModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000D0A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000F24EC(&qword_100AE26D8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for InsightsTipViewModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000D0BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE6A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D0C4C()
{
  v1 = type metadata accessor for InsightsView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1004F085C(*(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152), *(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192));
  v3 = *(v1 + 44);
  sub_1000F24EC(&qword_100AE27B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 52);
  sub_1000F24EC(&qword_100AE27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
  }

  v7 = type metadata accessor for InsightsTipViewModel();

  v8 = v7[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v7[9];
  if (*(v10 + 24))
  {
    sub_10000BA7C(v10);
  }

  v11 = v5 + v7[10];
  if (*(v11 + 24))
  {
    sub_10000BA7C(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D0EF4()
{
  v1 = type metadata accessor for InsightsTipViewModel();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1000F24EC(&qword_100AE27A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_1000F24EC(&qword_100AE27B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for WithCurrentHostingControllerAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v3 + v1[9];
  if (*(v7 + 24))
  {
    sub_10000BA7C(v7);
  }

  v8 = v3 + v1[10];
  if (*(v8 + 24))
  {
    sub_10000BA7C(v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D1124()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1174()
{

  return swift_deallocObject();
}

uint64_t sub_1000D11AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D11E4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1220()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D1258()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1298()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D12DC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D131C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD3A58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000D1428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD3A58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D150C@<X0>(void *a1@<X8>)
{
  sub_100504804();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000D1560@<X0>(uint64_t a1@<X8>)
{
  sub_100217998();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1000D1628@<X0>(_BYTE *a1@<X8>)
{
  result = DynamicTypeSize.isAccessibilitySize.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D1658@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D1710@<X0>(_BYTE *a1@<X8>)
{
  sub_100504E54();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000D1820()
{
  sub_1000F2A18(&qword_100AE6D88);
  sub_1000F2A18(&qword_100AE6D80);
  sub_1000F2A18(&qword_100AE6D78);
  sub_100504708();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D1908()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1958()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1998()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D19D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1A30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1A78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1AC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1B00()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1B38()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1B70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D1BA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D1BF0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D1C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE74C0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1000D1D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AE74C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D1DCC()
{
  v1 = *(type metadata accessor for MacSettingsGeneralTab() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1000F24EC(&qword_100AE74C0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1000D1EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100811FCC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D1F68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100812544();
  *a1 = result;
  return result;
}

uint64_t sub_1000D1F9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D2008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000D20C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TokenTypeIdentifier();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000D226C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TokenTypeIdentifier();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000D2374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000D2434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D24F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D255C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1000D25D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userDeleted];
  *a2 = result;
  return result;
}

uint64_t sub_1000D261C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D2654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD47A0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D26CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F24EC(&qword_100AD47A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000D275C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MergeableJournalAttributes.Icon();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000D2880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MergeableJournalAttributes.Icon();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000D29EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D2A98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1000D2B68@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000D2C08@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000D2CCC@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000D2D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
    v8 = type metadata accessor for State();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D2E08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
    v7 = type metadata accessor for State();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncImagePhase();
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

uint64_t sub_1000D2F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AsyncImagePhase();
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

uint64_t sub_1000D3040()
{
  v1 = (type metadata accessor for AsyncPointOfInterestIcon() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80)));

  v3 = v2 + v1[13];
  v4 = type metadata accessor for AsyncImagePhase();
  (*(*(v4 - 8) + 8))(v3, v4);

  type metadata accessor for State();

  sub_1000467F0(*(v2 + v1[14]), *(v2 + v1[14] + 8));

  return swift_deallocObject();
}

uint64_t sub_1000D319C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncImagePhase();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000D3258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AsyncImagePhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D3310()
{
  type metadata accessor for AsyncPointOfInterestIcon.Inner();
  sub_1000F2A18(&qword_100AE84A8);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10052F9CC();
  return swift_getWitnessTable();
}

uint64_t sub_1000D33B4()
{
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_1000D3448()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3490()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D34E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D3518()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3560()
{

  return swift_deallocObject();
}

uint64_t sub_1000D35A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D35F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D3628()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3660()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3698()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D36EC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3724()
{

  return swift_deallocObject();
}

uint64_t sub_1000D3764()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D38C8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D38F4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D3920@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D394C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D3978@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D39A4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D39D0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000D39FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SidebarBrickLayoutMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000D3AA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SidebarBrickLayoutMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D3B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SidebarBrickLayoutMetrics();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000D3C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SidebarBrickLayoutMetrics();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000D3D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SidebarBrickLayoutMetrics();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000D3DF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SidebarBrickLayoutMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D3EF0()
{
  sub_1000F2A18(&qword_100AE8AA8);
  sub_10000B58C(&qword_100AE8AD8, &qword_100AE8AA8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D4028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE8C78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D40C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D4100()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D41C4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4290()
{

  return swift_deallocObject();
}

uint64_t sub_1000D42D8()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000D4330()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4378()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D43CC()
{
  if (*(v0 + 24) >= 6uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D440C()
{
  sub_10000BA7C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000D4454()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4494()
{

  return swift_deallocObject();
}

uint64_t sub_1000D44E4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1000D4530()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4568()
{
  v1 = sub_1000F24EC(&qword_100AE9470);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D45FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4704()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D473C()
{
  v1 = type metadata accessor for AssetPlacement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4808()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4848()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4880()
{
  v1 = type metadata accessor for AssetPlacement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D494C()
{
  v1 = type metadata accessor for MapSize();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4A10()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D4B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D4BF0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D4C58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D4CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4CD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4D28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D4D7C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4DD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4E20()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4E60()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D4F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4F64()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4FBC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D4FFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D5044()
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D519C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D5288()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D52D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5308()
{
  v1 = type metadata accessor for TranscriptViewModelSegment();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D53AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D53EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D5434()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D5518()
{
  v1 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D560C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D564C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D577C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D57B8()
{
  v18 = sub_1000F24EC(&unk_100AE9F40);
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v17 = sub_1000F24EC(&qword_100AE9F38);
  v4 = *(v17 - 8);
  v12 = (((v2 + 16) & ~v2) + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  v16 = sub_1000F24EC(&qword_100AE9F30);
  v6 = *(v16 - 8);
  v13 = (v12 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v14 = (*(v6 + 64) + v2 + v13) & ~v2;
  v7 = (v3 + v2 + v14) & ~v2;
  v15 = sub_1000F24EC(&qword_100AE9F28);
  v8 = *(v15 - 8);
  v9 = (v3 + *(v8 + 80) + v7) & ~*(v8 + 80);
  v10 = *(v1 + 8);
  v10(v0 + ((v2 + 16) & ~v2), v18);
  (*(v4 + 8))(v0 + v12, v17);
  (*(v6 + 8))(v0 + v13, v16);
  v10(v0 + v14, v18);
  v10(v0 + v7, v18);
  (*(v8 + 8))(v0 + v9, v15);

  return swift_deallocObject();
}

uint64_t sub_1000D5A9C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5AEC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5B2C()
{

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D5B8C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5BC4()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D5C30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003D9780(v1, v2);
}

uint64_t sub_1000D5C70()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D5CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5DC0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D5E08()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5E40()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5E94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D5ED8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D5F1C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5F54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D5F94()
{

  return swift_deallocObject();
}

uint64_t sub_1000D5FDC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6014()
{

  return swift_deallocObject();
}

uint64_t sub_1000D605C()
{
  v1 = sub_1000F24EC(qword_100AEA2B0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AD2258);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000D61D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&qword_100AD2258);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D6298()
{
  v1 = type metadata accessor for GeometryProxy();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D634C()
{
  v1 = type metadata accessor for StaticWaveformView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000F24EC(&qword_100AD2128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for LayoutDirection();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  sub_10000BA7C(v0 + v2 + *(v1 + 28));

  return swift_deallocObject();
}

uint64_t sub_1000D6494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEA518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D6524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D655C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D664C()
{
  v1 = type metadata accessor for EntrySource();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D66E8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6880()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D68FC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6934()
{

  return swift_deallocObject();
}

uint64_t sub_1000D698C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D69CC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D6A58()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6A90()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6AC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6BD0()
{

  return swift_deallocObject();
}

uint64_t sub_1000D6C08()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6C58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D6C90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1000F24EC(&unk_100AD4790) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;

  (*(v2 + 8))(v0 + v3, v1);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v0 + v7, 1, v9))
  {
    (*(v10 + 8))(v0 + v7, v9);
  }

  if (!v11(v0 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D6E90()
{
  v1 = (type metadata accessor for PendingPhotoAsset(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = (v0 + v2);

  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[8];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 16);
  if (v10 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D702C()
{
  v1 = (type metadata accessor for PendingPhotoAsset(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1000F24EC(&qword_100AE0D78);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80);
  v7 = (v0 + v2);

  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1000D7234()
{

  return swift_deallocObject();
}

uint64_t sub_1000D727C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D72B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D72FC()
{
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000D7384()
{
  v1 = (sub_1000F24EC(&qword_100AE0D70) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v4(v2 + v1[11], v3);

  return swift_deallocObject();
}

uint64_t sub_1000D7498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisitAssetMetadata();
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

    return (v10 + 1);
  }
}

uint64_t sub_1000D7554(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisitAssetMetadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000D760C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000D7730(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
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
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000D7884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&unk_100AD4790);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1000D795C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F24EC(&unk_100AD4790);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000D7A24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D7A5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7AA0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D7AD8()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7B14()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7B5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7BAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D7BFC()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7C4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000D7C94()
{

  return swift_deallocObject();
}

uint64_t sub_1000D7CCC()
{
  v1 = *(type metadata accessor for CanvasContentInputType() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1000F24EC(&qword_100AD4E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v2, 1, v7))
    {
      (*(v8 + 8))(v0 + v2, v7);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000D7EB4()
{
  v1 = *(type metadata accessor for CanvasContentInputType() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1000F24EC(&qword_100AD4E78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v2, 1, v7))
    {
      (*(v8 + 8))(v0 + v2, v7);
    }
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000D8094()
{

  return swift_deallocObject();
}

uint64_t sub_1000D80D4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D81B0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D8288()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000D83E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D845C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D8514(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CanvasContentInputType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D85C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CanvasContentInputType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D8698()
{

  return swift_deallocObject();
}

uint64_t sub_1000D86D0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D871C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D875C()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D8834()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000D8878()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D88C8()
{
  sub_10000BA7C(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000D8914()
{
  v1 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D8A44()
{
  v1 = *(sub_1000F24EC(&qword_100AD1420) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1000D8B6C()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8BB4()
{

  return swift_deallocObject();
}

uint64_t sub_1000D8BEC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1000D8C2C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

uint64_t sub_1000D8C74()
{
  v1 = sub_1000F24EC(&qword_100AEBF10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000D8D4C()
{

  return swift_deallocObject();
}