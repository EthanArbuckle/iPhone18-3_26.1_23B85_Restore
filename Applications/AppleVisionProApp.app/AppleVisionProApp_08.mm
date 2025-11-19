unint64_t sub_1000CF824()
{
  result = qword_1001703B0;
  if (!qword_1001703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703B0);
  }

  return result;
}

unint64_t sub_1000CF888()
{
  result = qword_1001703C0;
  if (!qword_1001703C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703C0);
  }

  return result;
}

unint64_t sub_1000CF8DC()
{
  result = qword_1001703C8;
  if (!qword_1001703C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703C8);
  }

  return result;
}

unint64_t sub_1000CF984()
{
  result = qword_1001703D0;
  if (!qword_1001703D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703D0);
  }

  return result;
}

unint64_t sub_1000CF9D8()
{
  result = qword_1001703D8;
  if (!qword_1001703D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703D8);
  }

  return result;
}

uint64_t sub_1000CFA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CFA90(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000CFAEC()
{
  result = qword_1001703E8;
  if (!qword_1001703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703E8);
  }

  return result;
}

uint64_t sub_1000CFB40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CFB88()
{
  result = qword_1001703F0;
  if (!qword_1001703F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703F0);
  }

  return result;
}

unint64_t sub_1000CFBDC()
{
  result = qword_1001703F8;
  if (!qword_1001703F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703F8);
  }

  return result;
}

unint64_t sub_1000CFC30()
{
  result = qword_100170400;
  if (!qword_100170400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170400);
  }

  return result;
}

__n128 sub_1000CFC94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000CFCA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CFCC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1000CFD4C()
{
  v1 = v0[4];
  sub_10000524C(v0, v0[3]);
  return dispatch thunk of PresentationSizing.proposedSize(for:context:)();
}

uint64_t sub_1000CFDC4()
{
  v1 = v0[4];
  sub_10000524C(v0, v0[3]);
  return dispatch thunk of PresentationSizing.sizingOptions(context:)();
}

uint64_t sub_1000CFE20(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v20 = a5;
  v17 = a4;
  v9 = sub_100002BE4(&qword_100170438, &qword_100118778);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000D067C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3 & 1;
  v21 = 0;
  sub_1000D0724();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v18 = v17;
    v19 = v20 & 1;
    v21 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000CFFF4()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_1000D0028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D00FC(uint64_t a1)
{
  v2 = sub_1000D067C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0138(uint64_t a1)
{
  v2 = sub_1000D067C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0174()
{
  result = *v0;
  v2 = v0[2];
  v4 = *(v0 + 8);
  v3 = *(v0 + 24);
  return result;
}

uint64_t sub_1000D0198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D0318(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_1000D0214()
{
  result = qword_100170408;
  if (!qword_100170408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170408);
  }

  return result;
}

unint64_t sub_1000D026C()
{
  result = qword_100170410;
  if (!qword_100170410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170410);
  }

  return result;
}

unint64_t sub_1000D02C4()
{
  result = qword_100170418;
  if (!qword_100170418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170418);
  }

  return result;
}

uint64_t sub_1000D0318(uint64_t *a1)
{
  v3 = sub_100002BE4(&qword_100170420, &qword_100118770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_10000524C(a1, v8);
  sub_1000D067C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1000052E4(a1);
  }

  else
  {
    v14 = 0;
    sub_1000D06D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v12;
    v9 = v13;
    v14 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v11 = v13;
    sub_1000052E4(a1);
    LOBYTE(v12) = v9;
    v14 = v11;
  }

  return v8;
}

uint64_t sub_1000D0510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000D067C()
{
  result = qword_100170428;
  if (!qword_100170428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170428);
  }

  return result;
}

unint64_t sub_1000D06D0()
{
  result = qword_100170430;
  if (!qword_100170430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170430);
  }

  return result;
}

unint64_t sub_1000D0724()
{
  result = qword_100170440;
  if (!qword_100170440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170440);
  }

  return result;
}

unint64_t sub_1000D078C()
{
  result = qword_100170448;
  if (!qword_100170448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170448);
  }

  return result;
}

unint64_t sub_1000D07E4()
{
  result = qword_100170450;
  if (!qword_100170450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170450);
  }

  return result;
}

unint64_t sub_1000D083C()
{
  result = qword_100170458;
  if (!qword_100170458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170458);
  }

  return result;
}

uint64_t sub_1000D08A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000D0980(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BlurViewFadeModifier()
{
  result = qword_1001704B8;
  if (!qword_1001704B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0A7C()
{
  sub_1000D0B00();
  if (v0 <= 0x3F)
  {
    sub_1000236DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D0B00()
{
  if (!qword_10016DC70)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016DC70);
    }
  }
}

uint64_t sub_1000D0B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[1] = a2;
  v26[0] = type metadata accessor for ScenePhase();
  v27 = *(v26[0] - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v26[0]);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BlurViewFadeModifier();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = sub_100002BE4(&qword_1001704F0, &qword_1001188F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v26 - v14;
  v16 = v2[1];
  v29 = *v2;
  v30 = v16;
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  State.wrappedValue.getter();
  v17 = v28;
  v18 = sub_100002BE4(&qword_1001704F8, &qword_100118908);
  (*(*(v18 - 8) + 16))(v15, a1, v18);
  *&v15[*(sub_100002BE4(&qword_100170500, &qword_100118910) + 36)] = v17;
  sub_1000D1118(v2, v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1000D1180(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = &v15[*(v12 + 36)];
  *v21 = sub_1000D11E4;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v3 + *(v9 + 28);
  sub_100023828(v7);
  sub_1000D1118(v3, v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_1000D1180(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19);
  sub_1000D13E0();
  sub_1000D155C();
  v24 = v26[0];
  View.onChange<A>(of:initial:_:)();

  (*(v27 + 8))(v7, v24);
  return sub_1000D15B4(v15);
}

uint64_t sub_1000D0EAC()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000D0F24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for ScenePhase.background(_:) || v10 == enum case for ScenePhase.inactive(_:))
  {
    v12 = a3[1];
    v15[2] = *a3;
    v15[3] = v12;
    v15[1] = 0;
    sub_100002BE4(&qword_10016DCF8, &qword_100118900);
    return State.wrappedValue.setter();
  }

  else if (v10 == enum case for ScenePhase.active(_:))
  {
    v14 = static Animation.easeInOut(duration:)();
    __chkstk_darwin(v14);
    v15[-2] = a3;
    withAnimation<A>(_:_:)();
  }

  else
  {
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1000D1118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlurViewFadeModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlurViewFadeModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D11E4()
{
  v0 = *(*(type metadata accessor for BlurViewFadeModifier() - 8) + 80);

  return sub_1000D0EAC();
}

uint64_t sub_1000D1244()
{
  v1 = (type metadata accessor for BlurViewFadeModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ScenePhase();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000D1360(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BlurViewFadeModifier() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1000D0F24(a1, a2, v6);
}

unint64_t sub_1000D13E0()
{
  result = qword_100170508;
  if (!qword_100170508)
  {
    sub_10000459C(&qword_1001704F0, &qword_1001188F8);
    sub_1000D146C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170508);
  }

  return result;
}

unint64_t sub_1000D146C()
{
  result = qword_100170510;
  if (!qword_100170510)
  {
    sub_10000459C(&qword_100170500, &qword_100118910);
    sub_1000D14F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170510);
  }

  return result;
}

unint64_t sub_1000D14F8()
{
  result = qword_100170518;
  if (!qword_100170518)
  {
    sub_10000459C(&qword_1001704F8, &qword_100118908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170518);
  }

  return result;
}

unint64_t sub_1000D155C()
{
  result = qword_10016A560;
  if (!qword_10016A560)
  {
    type metadata accessor for ScenePhase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A560);
  }

  return result;
}

uint64_t sub_1000D15B4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001704F0, &qword_1001188F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D1634()
{
  v1 = *(v0 + 16);
  v3 = *v1;
  v4 = v1[1];
  sub_100002BE4(&qword_10016DCF8, &qword_100118900);
  return State.wrappedValue.setter();
}

uint64_t sub_1000D16A0()
{
  sub_10000459C(&qword_1001704F0, &qword_1001188F8);
  type metadata accessor for ScenePhase();
  sub_1000D13E0();
  sub_1000D155C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for GradientFadeModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GradientFadeModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000D18B0(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v5 = sub_100002BE4(&qword_100170520, &qword_1001189C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v17 = &v36 - v16;
  __chkstk_darwin(v15);
  v20 = &v36 - v19;
  if ((a2 & 0x100) != 0)
  {
    v36 = a1;
    sub_100002BE4(&qword_100170560, &qword_1001189F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100110A60;
    static Color.white.getter();
    *(v22 + 32) = Gradient.Stop.init(color:location:)();
    *(v22 + 40) = v23;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v22 + 48) = Gradient.Stop.init(color:location:)();
    *(v22 + 56) = v24;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v22 + 64) = Gradient.Stop.init(color:location:)();
    *(v22 + 72) = v25;
    static Color.clear.getter();
    *(v22 + 80) = Gradient.Stop.init(color:location:)();
    *(v22 + 88) = v26;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        static UnitPoint.trailing.getter();
        static UnitPoint.leading.getter();
      }

      else
      {
        static UnitPoint.leading.getter();
        static UnitPoint.trailing.getter();
      }
    }

    else if (v4)
    {
      static UnitPoint.top.getter();
      static UnitPoint.bottom.getter();
    }

    else
    {
      static UnitPoint.bottom.getter();
      static UnitPoint.top.getter();
    }

    Gradient.init(stops:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v31 = v37;
    v32 = sub_100002BE4(&qword_100170538, &qword_1001189E0);
    (*(*(v32 - 8) + 16))(v17, v36, v32);
    v33 = &v17[*(v9 + 36)];
    *v33 = v31;
    v34 = v38;
    *(v33 + 24) = v39;
    *(v33 + 8) = v34;
    sub_1000D1D98(v17, v20);
  }

  else
  {
    v20 = v18;
    sub_100002BE4(&qword_100170530, &qword_1001189D8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10010FEE0;
    *(v21 + 32) = static Color.white.getter();
    *(v21 + 40) = static Color.clear.getter();
    Gradient.init(colors:)();
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        static UnitPoint.trailing.getter();
        static UnitPoint.leading.getter();
      }

      else
      {
        static UnitPoint.leading.getter();
        static UnitPoint.trailing.getter();
      }
    }

    else if (v4)
    {
      static UnitPoint.top.getter();
      static UnitPoint.bottom.getter();
    }

    else
    {
      static UnitPoint.bottom.getter();
      static UnitPoint.top.getter();
    }

    LinearGradient.init(gradient:startPoint:endPoint:)();
    v27 = v37;
    v28 = sub_100002BE4(&qword_100170538, &qword_1001189E0);
    (*(*(v28 - 8) + 16))(v13, a1, v28);
    v29 = &v13[*(v9 + 36)];
    *v29 = v27;
    v30 = v38;
    *(v29 + 24) = v39;
    *(v29 + 8) = v30;
    sub_1000D1D98(v13, v20);
  }

  sub_1000D1E08(v20, v8);
  swift_storeEnumTagMultiPayload();
  sub_1000D1E78();
  _ConditionalContent<>.init(storage:)();
  return sub_1000D1F5C(v20);
}

uint64_t sub_1000D1D7C(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000D18B0(a1, v2 | *v1);
}

uint64_t sub_1000D1D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1E78()
{
  result = qword_100170540;
  if (!qword_100170540)
  {
    sub_10000459C(&qword_100170528, &qword_1001189D0);
    sub_100012C48(&qword_100170548, &qword_100170538, &qword_1001189E0);
    sub_100012C48(&qword_100170550, &qword_100170558, &qword_1001189E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170540);
  }

  return result;
}

uint64_t sub_1000D1F5C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100170528, &qword_1001189D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D1FE8()
{
  result = qword_100170568;
  if (!qword_100170568)
  {
    sub_10000459C(&qword_100170570, qword_100118A08);
    sub_1000D1E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170568);
  }

  return result;
}

unint64_t sub_1000D2070()
{
  result = qword_100170578;
  if (!qword_100170578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170578);
  }

  return result;
}

unint64_t sub_1000D20C8()
{
  result = qword_100170580;
  if (!qword_100170580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170580);
  }

  return result;
}

id sub_1000D212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 valueWithNewObjectInContext:a1];
  if (v7)
  {
    v8 = v7;

    v9 = [v6 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:{a1, a2, a3}];
    result = swift_unknownObjectRelease();
    if (v9)
    {
      JSValue.subscript.setter();
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006B0C(v11, qword_100182048);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error making the JSContext", v14, 2u);
    }

    v15 = objc_allocWithZone(JSValue);

    return [v15 init];
  }

  return result;
}

uint64_t sub_1000D2304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000D238C(uint64_t a1)
{
  v2 = sub_1000D280C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D23C8(uint64_t a1)
{
  v2 = sub_1000D280C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000D2404(uint64_t a1@<X8>)
{
  strcpy(a1, "TVPageIntent");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1000D2428@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100170588, &qword_100118BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000D280C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_1000052E4(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1000D25A4(void *a1)
{
  v3 = sub_100002BE4(&qword_100170598, &qword_100118BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000D280C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1000D26E0@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_100002BE4(&qword_1001705A0, &qword_100118BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 0x646E696B24;
  *(inited + 40) = 0xE500000000000000;
  strcpy((inited + 48), "TVPageIntent");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 64) = 7107189;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = v4;
  *(inited + 88) = v3;

  v6 = sub_10000B5DC(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  a1[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_1000D280C()
{
  result = qword_100170590;
  if (!qword_100170590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170590);
  }

  return result;
}

unint64_t sub_1000D2874()
{
  result = qword_1001705A8;
  if (!qword_1001705A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705A8);
  }

  return result;
}

unint64_t sub_1000D28CC()
{
  result = qword_1001705B0;
  if (!qword_1001705B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705B0);
  }

  return result;
}

unint64_t sub_1000D2924()
{
  result = qword_1001705B8;
  if (!qword_1001705B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705B8);
  }

  return result;
}

uint64_t sub_1000D2978()
{
  sub_100002BE4(&qword_1001705C0, &qword_100118D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000010011C8A0;
  v1 = sub_1000D2A6C();
  *(inited + 48) = &type metadata for EpicShowcaseShelfIntent;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x800000010011FA80;
  v2 = sub_1000C88E4();
  *(inited + 80) = &type metadata for TetsuoDiscoverFeedPageIntent;
  *(inited + 88) = v2;
  v3 = sub_10000BF68(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001705D0, &qword_100118D28);
  result = swift_arrayDestroy();
  qword_1001821E0 = v3;
  return result;
}

unint64_t sub_1000D2A6C()
{
  result = qword_1001705C8;
  if (!qword_1001705C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705C8);
  }

  return result;
}

uint64_t sub_1000D2AC0()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000D2B1C()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001821E0;

  return sub_1000C6D64(v1);
}

unint64_t sub_1000D2BA4()
{
  result = qword_1001705D8;
  if (!qword_1001705D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001705D8);
  }

  return result;
}

uint64_t sub_1000D2BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v5 = *v2;
  v6 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - v8;
  started = type metadata accessor for JetStartUpProcedure();
  v45 = *(started - 8);
  v46 = started;
  v10 = *(v45 + 64);
  __chkstk_darwin(started);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for JetStartUpCoordinator();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100009908(v16, &unk_100171510, &unk_100118EC0);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006B0C(v22, qword_100182048);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = sub_100006B44(v27, v28, &v50);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - Creating new startup coordinator", v25, 0xCu);
      sub_1000052E4(v26);
    }

    (*(v45 + 104))(v12, enum case for JetStartUpProcedure.lazy(_:), v46);
    v30 = v48;
    sub_10000C178(v49, v48, &unk_100170700, &unk_1001153F0);
    v31 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v3;
    sub_1000DBF00(v30, v32 + v31);

    static Transaction._loading.getter();
    return JetStartUpCoordinator.init(startUpProcedure:transaction:makeObjects:)();
  }

  else
  {
    v34 = *(v18 + 32);
    v34(v21, v16, v17);
    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006B0C(v35, qword_100182048);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = v34;
      v39 = v38;
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      v41 = _typeName(_:qualified:)();
      v43 = a2;
      v44 = sub_100006B44(v41, v42, &v50);

      *(v39 + 4) = v44;
      a2 = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s - Returning existing startup coordinator", v39, 0xCu);
      sub_1000052E4(v40);

      v34 = v49;
    }

    return (v34)(a2, v21, v17);
  }
}

uint64_t sub_1000D31B4(uint64_t a1, uint64_t a2)
{
  sub_1000D32A8();

  sub_1000D5064();
  sub_1000DBFE0();
  sub_1000DC1EC(a2);

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  v3 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  return v3;
}

uint64_t sub_1000D32A8()
{
  v44 = type metadata accessor for Dependency();
  v37 = *(v44 - 8);
  v0 = v37;
  v1 = *(v37 + 64);
  v2 = __chkstk_darwin(v44);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v39 = &v32 - v5;
  v6 = __chkstk_darwin(v4);
  v38 = &v32 - v7;
  v8 = __chkstk_darwin(v6);
  v45 = &v32 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - v17;
  v19 = __chkstk_darwin(v16);
  v41 = &v32 - v20;
  v21 = __chkstk_darwin(v19);
  v43 = &v32 - v22;
  __chkstk_darwin(v21);
  v42 = &v32 - v23;
  type metadata accessor for Bag();
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706E0, &unk_100118E78);
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706E8, &qword_100118E88);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DeviceProvider();

  v36 = v18;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for PrescriptionProvider();

  v34 = v15;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TipProvider();

  v33 = v12;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for SoftwareUpdateProvider();

  Dependency.init<A>(satisfying:with:)();
  sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for Net();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for IntentDispatchTimeout();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v24 = *(v37 + 72);
  v35 = v0;
  v25 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10010D3B0;
  (*(v0 + 16))(v26 + v25, v42, v44);
  v32 = BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v27 = v39;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v28 = v40;
  v37 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v29 = *(v35 + 8);
  v30 = v44;
  v29(v28, v44);
  v29(v27, v30);
  v29(v38, v30);
  v29(v45, v30);
  v29(v33, v30);
  v29(v34, v30);
  v29(v36, v30);
  v29(v41, v30);
  v29(v43, v30);
  v29(v42, v30);
  return v37;
}

uint64_t sub_1000D3920()
{
  sub_100015B44();
  sub_100015B68();
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  return Bag.init(from:)(v2);
}

uint64_t sub_1000D39E4@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  result = sub_100031904(0, &qword_1001706F8, ACAccountStore_ptr);
  a1[3] = result;
  a1[4] = &protocol witness table for ACAccountStore;
  *a1 = v2;
  return result;
}

uint64_t sub_1000D3A58(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Bag();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3B18, 0, 0);
}

uint64_t sub_1000D3B18()
{
  type metadata accessor for BaseObjectGraph();
  v0[6] = static BaseObjectGraph.current.getter();
  v1 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000D3BD0;
  v3 = v0[5];
  v4 = v0[3];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_1000D3BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1000D3DF0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000D3CEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D3CEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_100015B8C();
  v5 = Bag.amsBag.getter();
  v6 = objc_allocWithZone(AMSMediaTokenService);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithClientIdentifier:v7 bag:v5];
  swift_unknownObjectRelease();

  (*(v2 + 8))(v1, v3);
  *v4 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D3DF0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1000D3E5C(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for AppleServicesURLProtocol();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3F1C, 0, 0);
}

uint64_t sub_1000D3F1C()
{
  v0[7] = [objc_opt_self() currentProcess];
  type metadata accessor for BaseObjectGraph();
  v0[8] = static BaseObjectGraph.current.getter();
  v1 = sub_100002BE4(&qword_1001706F0, &unk_100118EB0);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000D4010;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1000D4010()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {
    v6 = v2[7];

    v7 = sub_1000D43E8;
  }

  else
  {

    v2[11] = sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
    v7 = sub_1000D416C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000D416C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  *v1 = sub_100015B8C();
  v1[1] = v5;
  v1[2] = 0;
  v1[3] = 0;
  (*(v2 + 104))(v1, enum case for AppleServicesURLProtocol.media(_:), v3);
  v6 = *(&async function pointer to AMSURLSession.init(process:bag:urlProtocol:) + 1);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1000D4250;
  v8 = v0[11];
  v9 = v0[6];
  v10 = v0[7];

  return AMSURLSession.init(process:bag:urlProtocol:)(v10, v4, v9);
}

uint64_t sub_1000D4250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1000D444C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_1000D4378;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000D4378()
{
  v1 = *(v0 + 48);
  **(v0 + 24) = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D43E8()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D444C()
{
  v1 = v0[13];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D44B0(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for AppleServicesFetcher();
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = type metadata accessor for AppleServicesEncoder.Configuration();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = type metadata accessor for AppleServicesEncoder();
  v1[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = type metadata accessor for Bag();
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4644, 0, 0);
}

uint64_t sub_1000D4644()
{
  v0[17] = type metadata accessor for BaseObjectGraph();
  v0[18] = static BaseObjectGraph.current.getter();
  v1 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1000D4700;
  v3 = v0[16];
  v4 = v0[13];

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_1000D4700()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1000D4DA8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1000D481C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D481C()
{
  v1 = v0[17];
  v0[21] = static BaseObjectGraph.current.getter();
  v2 = sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_1000D48E8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1000D48E8()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_1000D4E58;
  }

  else
  {
    v4 = sub_1000D4A18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D4A18()
{
  v1 = v0[17];
  v0[24] = v0[2];
  v0[25] = static BaseObjectGraph.current.getter();
  v2 = sub_100002BE4(&qword_1001706E8, &qword_100118E88);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1000D4AE8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v2, v2);
}

uint64_t sub_1000D4AE8()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1000D4F18;
  }

  else
  {
    v4 = sub_1000D4C18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D4C18()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v16 = v0[11];
  v17 = v0[13];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v14 = v0[24];
  v15 = v0[5];
  v8 = v0[3];
  v12 = v0[6];
  v13 = v0[4];
  (*(v2 + 16))(v0[15], v1);
  AppleServicesEncoder.Configuration.init(bag:)();
  AppleServicesEncoder.Configuration.withMediaTokenService(_:)();
  (*(v6 + 8))(v4, v7);
  AppleServicesEncoder.init(_:)();
  v9 = v14;
  AppleServicesFetcher.init(_:)();
  Net.init<A, B>(encoder:fetcher:)();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v1, v17);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D4DA8()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D4E58()
{
  (*(v0[14] + 8))(v0[16], v0[13]);
  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D4F18()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 216);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000D4FE8@<X0>(void *a1@<X8>)
{
  *a1 = 0x403E000000000000;
  v2 = enum case for IntentDispatchTimeout.seconds(_:);
  v3 = type metadata accessor for IntentDispatchTimeout();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000D5064()
{
  v1 = *v0;
  v2 = type metadata accessor for Dependency();
  v31 = v2;
  v36 = *(v2 - 8);
  v3 = v36;
  v4 = *(v36 + 64);
  v5 = __chkstk_darwin(v2);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v34 = &v29 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = __chkstk_darwin(v9);
  v33 = &v29 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = __chkstk_darwin(v14);
  v37 = &v29 - v18;
  __chkstk_darwin(v17);
  v38 = &v29 - v19;
  type metadata accessor for JetPackAssetDiskCache();
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAssetSession();
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for URLJetPackAssetFetcher();
  *(swift_allocObject() + 16) = v1;
  v32 = v16;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TetsuoJetpackInfo();
  *(swift_allocObject() + 16) = v1;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for JetPackAsset();
  *(swift_allocObject() + 16) = v1;
  v30 = v11;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for InMemoryJetPackResourceBundle();
  *(swift_allocObject() + 16) = v1;
  v20 = v34;
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_1001706C0, &qword_100118E58);
  *(swift_allocObject() + 16) = v1;
  v21 = v35;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v22 = *(v36 + 72);
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10010D3B0;
  (*(v3 + 16))(v24 + v23, v38, v2);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v25 = v33;
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v36 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v26 = *(v3 + 8);
  v27 = v31;
  v26(v21, v31);
  v26(v20, v27);
  v26(v30, v27);
  v26(v25, v27);
  v26(v32, v27);
  v26(v37, v27);
  v26(v38, v27);
  return v36;
}

uint64_t sub_1000D5610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000D5630, 0, 0);
}

uint64_t sub_1000D5630()
{
  v13 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Disk Cache", v5, 0xCu);
    sub_1000052E4(v6);
  }

  type metadata accessor for JetPackAssetDiskCache();
  **(v0 + 16) = JetPackAssetDiskCache.__allocating_init()();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000D57E8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(type metadata accessor for JetPackAssetSession.Configuration() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5878, 0, 0);
}

uint64_t sub_1000D5878()
{
  v15 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Constructing Jetpack Asset Session", v5, 0xCu);
    sub_1000052E4(v6);
  }

  type metadata accessor for BaseObjectGraph();
  v0[6] = static BaseObjectGraph.current.getter();
  v10 = type metadata accessor for JetPackAssetDiskCache();
  v0[7] = v10;
  v11 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1000D5A6C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v10, v10);
}

uint64_t sub_1000D5A6C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000D5C5C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000D5B88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D5B88()
{
  v1 = v0[5];
  v2 = v0[3];
  v10 = v0[7];
  v9 = v0[2];

  JetPackAssetSession.Configuration.init(cache:)();
  v3 = type metadata accessor for JetPackAssetSession();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = JetPackAssetSession.init(configuration:)();

  *v2 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D5C5C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1000D5CC8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Bag();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5D88, 0, 0);
}

uint64_t sub_1000D5D88()
{
  v16 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Creating Jetpack Asset Fetcher", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v0[8] = type metadata accessor for BaseObjectGraph();
  v0[9] = static BaseObjectGraph.current.getter();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1000D5F70;
  v12 = v0[7];
  v13 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v12, v13, v13);
}

uint64_t sub_1000D5F70()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000D6354;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1000D608C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D608C()
{
  v1 = v0[8];
  v0[12] = static BaseObjectGraph.current.getter();
  v2 = sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1000D6158;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1000D6158()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1000D63C0;
  }

  else
  {
    v4 = sub_1000D6288;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D6288()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  Bag.amsBag.getter();
  v6 = [v5 configuration];
  URLJetPackAssetFetcher.init(bag:urlSessionConfiguration:)();

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D6354()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D63C0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[14];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D643C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Bag();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D64FC, 0, 0);
}

uint64_t sub_1000D64FC()
{
  v16 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Info", v5, 0xCu);
    sub_1000052E4(v6);
  }

  type metadata accessor for BaseObjectGraph();
  v0[7] = static BaseObjectGraph.current.getter();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1000D66E0;
  v12 = v0[6];
  v13 = v0[4];

  return BaseObjectGraph.inject<A>(_:)(v12, v13, v13);
}

uint64_t sub_1000D66E0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000D6984;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1000D67FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D67FC()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (v2 = [objc_opt_self() standardUserDefaults], static UserDefaultUtilities.SharedConstants.jetpackSource.getter(), v3 = String._bridgeToObjectiveC()(), , v4 = objc_msgSend(v2, "stringForKey:", v3), v3, v2, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    v9 = _findStringSwitchCase(cases:string:)(&off_100159BE0, v8);

    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v0[2];
  (*(v0[5] + 32))(v11, v0[6], v0[4]);
  *(v11 + *(type metadata accessor for TetsuoJetpackInfo() + 20)) = v10;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D6984()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1000D69F0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for URLJetPackAssetFetcher();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for URLJetPackAssetRequest();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v15 = type metadata accessor for TetsuoJetpackInfo();
  v2[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6C00, 0, 0);
}

uint64_t sub_1000D6C00()
{
  v16 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Tetsuo Jetpack Asset", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v0[21] = type metadata accessor for BaseObjectGraph();
  v0[22] = static BaseObjectGraph.current.getter();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_1000D6DE8;
  v13 = v0[18];
  v12 = v0[19];

  return BaseObjectGraph.inject<A>(_:)(v12, v13, v13);
}

uint64_t sub_1000D6DE8()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D79BC, 0, 0);
  }

  else
  {
    v4 = v3[22];
    v6 = v3[18];
    v5 = v3[19];

    v7 = *(v5 + *(v6 + 20));
    v8 = swift_task_alloc();
    v3[25] = v8;
    *v8 = v3;
    v8[1] = sub_1000D6F80;
    v9 = v3[19];
    v10 = v3[17];

    return sub_10007F624(v10, v9, v7);
  }
}

uint64_t sub_1000D6F80()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1000D72F4;
  }

  else
  {
    v3 = sub_1000D7094;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D7094()
{
  v1 = v0[21];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  (*(v4 + 104))(v3, enum case for JetPackAssetRequestSourcePolicy.standard(_:), v5);
  URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
  v0[27] = static BaseObjectGraph.current.getter();
  v6 = type metadata accessor for JetPackAssetSession();
  v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1000D71C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v6, v6);
}

uint64_t sub_1000D71C4()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000D7A70;
  }

  else
  {
    v4 = sub_1000D73BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D72F4()
{
  sub_1000DC828(v0[19], type metadata accessor for TetsuoJetpackInfo);
  v1 = v0[26];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D73BC()
{
  v1 = v0[21];
  v0[30] = v0[2];
  v0[31] = static BaseObjectGraph.current.getter();
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_1000D7474;
  v4 = v0[7];
  v5 = v0[5];

  return BaseObjectGraph.inject<A>(_:)(v4, v5, v5);
}

uint64_t sub_1000D7474()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1000D7B74;
  }

  else
  {
    v4 = sub_1000D75A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D75A4()
{
  v20 = v0;
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Fetching Tetsuo Jetpack Asset From Session", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = async function pointer to JetPackAssetSession.jetPack<A>(for:fetcher:)[1];
  v11 = swift_task_alloc();
  v0[34] = v11;
  v12 = sub_1000DC7E0(&qword_1001706D0, &type metadata accessor for URLJetPackAssetFetcher);
  *v11 = v0;
  v11[1] = sub_1000D776C;
  v13 = v0[30];
  v14 = v0[13];
  v15 = v0[7];
  v16 = v0[5];
  v17 = v0[3];

  return JetPackAssetSession.jetPack<A>(for:fetcher:)(v17, v14, v15, v16, v12);
}

uint64_t sub_1000D776C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1000D7C90;
  }

  else
  {
    v3 = sub_1000D7880;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D7880()
{
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v13 = v0[14];
  v14 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v15 = v0[10];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  (*(v8 + 8))(v9, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v13);
  sub_1000DC828(v2, type metadata accessor for TetsuoJetpackInfo);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D79BC()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000D7A70()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v4 + 8))(v2, v3);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);
  v5 = v0[29];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D7B74()
{
  v1 = v0[30];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  sub_1000DC828(v2, type metadata accessor for TetsuoJetpackInfo);
  v9 = v0[33];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000D7C90()
{
  v1 = v0[30];
  v20 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  (*(v8 + 8))(v9, v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_1000DC828(v20, type metadata accessor for TetsuoJetpackInfo);
  v11 = v0[35];
  v12 = v0[19];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000D7DD8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for JetPackAsset();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(type metadata accessor for JetPackSigningPolicy() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = type metadata accessor for InMemoryJetPackLoader();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = type metadata accessor for TetsuoJetpackInfo();
  v2[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7F50, 0, 0);
}

uint64_t sub_1000D7F50()
{
  v16 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Jetpack Resource Bundle", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v0[23] = type metadata accessor for BaseObjectGraph();
  v0[24] = static BaseObjectGraph.current.getter();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_1000D8134;
  v13 = v0[21];
  v12 = v0[22];

  return BaseObjectGraph.inject<A>(_:)(v12, v13, v13);
}

uint64_t sub_1000D8134()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1000D8730;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1000D8250;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D8250()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  sub_100080C60(v0[17]);
  v0[5] = type metadata accessor for JetPackManagedKeyProvider();
  v0[6] = &protocol witness table for JetPackManagedKeyProvider;
  sub_100020014(v0 + 2);
  JetPackManagedKeyProvider.init()();
  InMemoryJetPackLoader.init(signingPolicy:keyProvider:)();
  v0[27] = static BaseObjectGraph.current.getter();
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1000D8350;
  v6 = v0[16];
  v7 = v0[14];

  return BaseObjectGraph.inject<A>(_:)(v6, v7, v7);
}

uint64_t sub_1000D8350()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1000D87C4;
  }

  else
  {
    v4 = sub_1000D8480;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D8480()
{
  v1 = v0[16];
  JetPackAsset.streamSource.getter();
  v2 = async function pointer to InMemoryJetPackLoader.bundle(from:)[1];
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1000D852C;
  v4 = v0[20];
  v5 = v0[12];

  return InMemoryJetPackLoader.bundle(from:)(v5, v0 + 7);
}

uint64_t sub_1000D852C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v6 = *v1;
  *(v2 + 248) = v0;

  sub_1000052E4((v2 + 56));
  if (v0)
  {
    v4 = sub_1000D8888;
  }

  else
  {
    v4 = sub_1000D8648;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D8648()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v2, v4);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000D8730()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D87C4()
{
  v1 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);
  v2 = v0[29];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D8888()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v2, v4);
  sub_1000DC828(v1, type metadata accessor for TetsuoJetpackInfo);
  v5 = v0[31];
  v6 = v0[22];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000D896C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for JetPackPath();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for InMemoryJetPackResourceBundle();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8A88, 0, 0);
}

uint64_t sub_1000D8A88()
{
  v16 = v0;
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Loading Jetpack Source Provider", v5, 0xCu);
    sub_1000052E4(v6);
  }

  type metadata accessor for BaseObjectGraph();
  v0[10] = static BaseObjectGraph.current.getter();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1000D8C6C;
  v12 = v0[9];
  v13 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v12, v13, v13);
}

uint64_t sub_1000D8C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1000D8E7C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1000D8D88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D8D88()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  static JetPackPath.sourcePath.getter();
  InMemoryJetPackResourceBundle.inMemorySource(fromPath:)();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D8E7C()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000D8EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v80 = a2;
  v73 = type metadata accessor for OpenURLActionImplementation(0);
  v3 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v72 = (v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100002BE4(&qword_100170720, &qword_100118ED8);
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v69 = v61 - v8;
  v9 = sub_100002BE4(&qword_100170728, &qword_100118EE0);
  v10 = *(v9 - 8);
  v67 = v9;
  v68 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v66 = v61 - v12;
  v13 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v61 - v15;
  v63 = sub_100002BE4(&unk_100170730, &qword_100118EE8);
  v64 = *(v63 - 8);
  v17 = *(v64 + 64);
  __chkstk_darwin(v63);
  v19 = v61 - v18;
  v20 = sub_100002BE4(&qword_100170718, &qword_100118ED0);
  v84 = *(v20 - 8);
  v21 = *(v84 + 64);
  v22 = __chkstk_darwin(v20);
  v65 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v77 = v61 - v25;
  v26 = __chkstk_darwin(v24);
  v82 = v61 - v27;
  v28 = __chkstk_darwin(v26);
  v83 = v61 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = v61 - v31;
  __chkstk_darwin(v30);
  v34 = v61 - v33;
  sub_10000C178(a1, v16, &unk_100170700, &unk_1001153F0);
  v35 = type metadata accessor for BaseObjectGraph();
  v36 = type metadata accessor for FlowAction();
  v76 = sub_1000DC7E0(&qword_100170288, type metadata accessor for FlowAction);
  v75 = sub_1000DC7E0(&qword_100170740, type metadata accessor for FlowAction);
  v81 = v35;
  v61[1] = v36;
  AlertActionImplementation.init<A>(following:)();
  ActionDispatcher.init()();
  v37 = v84;
  v38 = *(v84 + 16);
  v79 = v34;
  v38(v34, v32, v20);
  sub_100012C48(&qword_100170748, &unk_100170730, &qword_100118EE8);
  v39 = v63;
  ActionDispatcher.add<A>(_:)();
  v74 = *(v37 + 8);
  v84 = v37 + 8;
  v74(v32, v20);
  (*(v64 + 8))(v19, v39);
  v40 = v62;
  v61[0] = v16;
  sub_10000C178(v62, v16, &unk_100170700, &unk_1001153F0);
  v41 = v66;
  FlowActionImplementation.init(following:)();
  v42 = v83;
  ActionDispatcher.init()();
  v78 = v32;
  v38(v32, v42, v20);
  sub_100012C48(&qword_100170750, &qword_100170728, &qword_100118EE0);
  v43 = v67;
  ActionDispatcher.add<A>(_:)();
  v44 = v74;
  v74(v42, v20);
  (*(v68 + 8))(v41, v43);
  sub_10000C178(v40, v61[0], &unk_100170700, &unk_1001153F0);
  v45 = v69;
  FlowBackActionImplementation.init<A>(following:)();
  v46 = v82;
  ActionDispatcher.init()();
  v38(v42, v46, v20);
  sub_100012C48(&qword_100170758, &qword_100170720, &qword_100118ED8);
  v47 = v70;
  ActionDispatcher.add<A>(_:)();
  v44(v46, v20);
  (*(v71 + 8))(v45, v47);
  KeyPath = swift_getKeyPath();
  v49 = v72;
  *v72 = KeyPath;
  sub_100002BE4(&qword_100170760, &unk_100111070);
  swift_storeEnumTagMultiPayload();
  v50 = v77;
  ActionDispatcher.init()();
  v38(v46, v50, v20);
  sub_1000DC7E0(&qword_100170768, type metadata accessor for OpenURLActionImplementation);
  ActionDispatcher.add<A>(_:)();
  v51 = v50;
  v52 = v50;
  v53 = v44;
  v54 = v84;
  v44(v52, v20);
  sub_1000DC828(v49, type metadata accessor for OpenURLActionImplementation);
  v55 = v65;
  ActionDispatcher.init()();
  v38(v51, v55, v20);
  sub_1000DC888();
  ActionDispatcher.add<A>(_:)();
  v53(v55, v20);
  sub_100002BE4(&qword_100170778, &qword_100118F28);
  v56 = *(v54 + 64);
  v57 = (*(v54 + 72) + 32) & ~*(v54 + 72);
  v75 = 4 * v56;
  v76 = swift_allocObject();
  v58 = v76 + v57;
  v38((v76 + v57), v79, v20);
  v38((v58 + v56), v78, v20);
  v72 = (2 * v56);
  v38((v58 + 2 * v56), v83, v20);
  v73 = 3 * v56;
  v38((v58 + 3 * v56), v82, v20);
  v38((v58 + 4 * v56), v51, v20);
  ActionDispatcher.init()();
  v38(v55, v58, v20);
  ActionDispatcher.add(contentsOf:)();
  v59 = v74;
  v74(v55, v20);
  v38(v55, (v58 + v56), v20);
  ActionDispatcher.add(contentsOf:)();
  v59(v55, v20);
  v38(v55, v72 + v58, v20);
  ActionDispatcher.add(contentsOf:)();
  v59(v55, v20);
  v38(v55, (v58 + v73), v20);
  ActionDispatcher.add(contentsOf:)();
  v59(v55, v20);
  v38(v55, (v58 + v75), v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ActionDispatcher.add(contentsOf:)();
  v59(v55, v20);
  v59(v77, v20);
  v59(v82, v20);
  v59(v83, v20);
  v59(v78, v20);
  return (v59)(v79, v20);
}

uint64_t sub_1000D99F4()
{
  v0 = type metadata accessor for Bag();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for MetricsPipeline.Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12[-1] - v8;
  type metadata accessor for BaseObjectGraph();
  static BaseObjectGraph.current.getter();
  BaseObjectGraph.inject<A>(_:)();
  v12[3] = type metadata accessor for IntentMetricsEventLinter();
  v12[4] = &protocol witness table for IntentMetricsEventLinter;
  sub_100020014(v12);

  IntentMetricsEventLinter.init(objectGraph:)();
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  (*(v3 + 16))(v7, v9, v2);
  MetricsPipeline.init(from:)();

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1000D9BD0(uint64_t a1)
{
  v1[19] = a1;
  v2 = *(*(sub_100002BE4(&qword_1001707A8, &unk_100118F60) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for JSStack.Prerequisite();
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v5 = *(v4 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = *(*(sub_100002BE4(&qword_1001707B0, &qword_100117F20) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v7 = type metadata accessor for JSStack.StandardGlobalConfiguration();
  v1[28] = v7;
  v8 = *(v7 - 8);
  v1[29] = v8;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9D80, 0, 0);
}

uint64_t sub_1000D9D80()
{
  type metadata accessor for BaseObjectGraph();
  *(v0 + 248) = static BaseObjectGraph.current.getter();
  v1 = sub_100002BE4(&qword_1001706C0, &qword_100118E58);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_1000D9E50;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_1000D9E50()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DAB08, 0, 0);
  }

  else
  {
    v3[17] = _swiftEmptyArrayStorage;
    v4 = sub_100002BE4(&qword_1001706E0, &unk_100118E78);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[34] = v6;
    *v6 = v3;
    v6[1] = sub_1000DA000;
    v7 = v3[31];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_1000DA000()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1000DABCC;
  }

  else
  {
    v3 = sub_1000DA114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DA114()
{
  v1 = v0[30];
  static JSStack.StandardGlobalConfiguration.default.getter();
  v2 = type metadata accessor for Bag();
  v0[36] = v2;
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1000DA1D0;
  v5 = v0[31];
  v6 = v0[27];

  return BaseObjectGraph.inject<A>(_:)(v6, v2, v2);
}

uint64_t sub_1000DA1D0()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);
    v4 = sub_1000DAC98;
  }

  else
  {
    v4 = sub_1000DA2FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DA2FC()
{
  (*(*(v0[36] - 8) + 56))(v0[27], 0, 1);
  v1 = sub_100031904(0, &qword_1001706D8, AMSURLSession_ptr);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_1000DA3F4;
  v4 = v0[31];

  return BaseObjectGraph.inject<A>(_:)(v0 + 18, v1, v1);
}

uint64_t sub_1000DA3F4()
{
  v2 = *v1;
  v3 = (*v1)[39];
  v9 = *v1;
  (*v1)[40] = v0;

  if (v0)
  {
    v5 = v2[29];
    v4 = v2[30];
    v6 = v2[28];
    sub_100009908(v2[27], &qword_1001707B0, &qword_100117F20);
    (*(v5 + 8))(v4, v6);
    v7 = sub_1000DAD6C;
  }

  else
  {
    v2[41] = type metadata accessor for JSStack();
    v7 = sub_1000DA550;
  }

  return _swift_task_switch(v7, 0, 0);
}

id sub_1000DA550()
{
  v1 = v0[41];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[26];
  v6 = v0[22];
  v69 = v0[28];
  v71 = v0[21];
  v7 = v0[18];
  v8 = [objc_opt_self() currentProcess];
  sub_10002BFD4((v0 + 7), (v0 + 12));
  v9 = static JSStack.makeStandardPrerequisites(using:bag:urlSession:process:accountProvider:)();

  sub_100009908((v0 + 12), &qword_1001707B8, &unk_100118F70);
  sub_100009908(v4, &qword_1001707B0, &qword_100117F20);
  (*(v3 + 8))(v2, v69);
  sub_1000DB028(v9);
  v10 = [objc_allocWithZone(type metadata accessor for UTSService()) init];
  *v5 = 7566453;
  v5[1] = 0xE300000000000000;
  v5[2] = v10;
  v68 = enum case for JSStack.Prerequisite.dependency(_:);
  v70 = *(v6 + 104);
  v70(v5);
  v11 = v0[17];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1000091A0(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1000091A0(v12 > 1, v13 + 1, 1, v11);
  }

  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[21];
  v17 = v0[22];
  *(v11 + 2) = v13 + 1;
  v19 = *(v17 + 32);
  v17 += 32;
  v18 = v19;
  v20 = (*(v17 + 48) + 32) & ~*(v17 + 48);
  v21 = *(v17 + 40);
  v19(&v11[v20 + v21 * v13], v14, v16);
  v22 = [objc_allocWithZone(type metadata accessor for JSLoggingService()) init];
  *v15 = 0x676F6C736ALL;
  v15[1] = 0xE500000000000000;
  v15[2] = v22;
  (v70)(v15, v68, v16);
  v24 = *(v11 + 2);
  v23 = *(v11 + 3);
  if (v24 >= v23 >> 1)
  {
    v11 = sub_1000091A0(v23 > 1, v24 + 1, 1, v11);
  }

  v26 = v0[24];
  v25 = v0[25];
  v27 = v0[21];
  *(v11 + 2) = v24 + 1;
  v18(&v11[v20 + v24 * v21], v25, v27);
  v28 = [objc_allocWithZone(type metadata accessor for TetsuoConfigService()) init];
  *v26 = 0xD000000000000013;
  v26[1] = 0x800000010011FEB0;
  v26[2] = v28;
  (v70)(v26, v68, v27);
  v30 = *(v11 + 2);
  v29 = *(v11 + 3);
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    v11 = sub_1000091A0(v29 > 1, v30 + 1, 1, v11);
  }

  v33 = v0[23];
  v32 = v0[24];
  v34 = v0[21];
  *(v11 + 2) = v31;
  v18(&v11[v20 + v30 * v21], v32, v34);
  sub_10002BFD4((v0 + 2), v33);
  (v70)(v33, enum case for JSStack.Prerequisite.source(_:), v34);
  v35 = *(v11 + 3);
  if ((v30 + 2) > (v35 >> 1))
  {
    v11 = sub_1000091A0(v35 > 1, v30 + 2, 1, v11);
  }

  v36 = v0[23];
  v38 = v0[20];
  v37 = v0[21];
  *(v11 + 2) = v30 + 2;
  v18(&v11[v20 + v31 * v21], v36, v37);
  v39 = type metadata accessor for SentryConfiguration();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = objc_allocWithZone(JSVirtualMachine);

  result = [v40 init];
  if (result)
  {
    v42 = v0[40];
    v43 = v0[41];
    v44 = v0[20];

    v45 = *(v43 + 48);
    v46 = *(v43 + 52);
    swift_allocObject();
    v47 = JSStack.init(prerequisites:qualityOfService:sentryConfiguration:virtualMachine:)();
    if (v42)
    {
      v48 = v0[31];

      sub_1000052E4(v0 + 7);
      sub_1000052E4(v0 + 2);
      v49 = v0[30];
      v50 = v0[26];
      v51 = v0[27];
      v53 = v0[24];
      v52 = v0[25];
      v54 = v0[23];
      v55 = v0[20];

      v56 = v0[1];
    }

    else
    {
      v57 = v47;
      static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
      String.utf8CString.getter();

      has_internal_ui = os_variant_has_internal_ui();

      if (has_internal_ui)
      {
        JSStack.makeRemoteInspectable()();
      }

      v60 = v0[30];
      v59 = v0[31];
      v62 = v0[26];
      v61 = v0[27];
      v64 = v0[24];
      v63 = v0[25];
      v65 = v0[23];
      v67 = v0[19];
      v66 = v0[20];

      sub_1000052E4(v0 + 7);
      sub_1000052E4(v0 + 2);
      *v67 = v57;

      v56 = v0[1];
    }

    return v56();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DAB08()
{
  v1 = v0[31];

  v2 = v0[33];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DABCC()
{
  v1 = v0[31];

  sub_1000052E4(v0 + 2);
  v2 = v0[35];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DAC98()
{
  v1 = v0[31];

  sub_1000052E4(v0 + 7);
  sub_1000052E4(v0 + 2);
  v2 = v0[38];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DAD6C()
{
  v1 = v0[31];

  sub_1000052E4(v0 + 7);
  sub_1000052E4(v0 + 2);
  v2 = v0[40];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DAE40(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100008F88(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000DAF34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100009094(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000DB028(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1000091A0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for JSStack.Prerequisite();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000DB154(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_100002BE4(&qword_100170788, &qword_100118F48);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for NativeIntentDispatcher();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB294, 0, 0);
}

uint64_t sub_1000DB294()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v17 = v0[16];
  v18 = v0[20];
  v6 = v0[13];
  v5 = v0[14];
  type metadata accessor for Models.DeepLinkIntent();
  DeepLinkIntentImplementation.init(dispatching:routes:)();
  NativeIntentDispatcher.init()();
  sub_100012C48(&qword_100170790, &qword_100170788, &qword_100118F48);
  v16 = v2;
  NativeIntentDispatcher.registering<A>(_:)();
  v7 = *(v3 + 8);
  v0[21] = v7;
  v0[22] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v17);
  (*(v5 + 8))(v4, v6);
  sub_100002BE4(&qword_100170798, &qword_100118F50);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  v0[23] = v11;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v10 + v9, v1, v17);
  NativeIntentDispatcher.init()();
  v11(v16, v10 + v9, v17);
  swift_setDeallocating();
  v7(v10 + v9, v17);
  swift_deallocClassInstance();
  NativeIntentDispatcher.register(contentsOf:)();
  v7(v16, v17);
  v7(v1, v17);
  type metadata accessor for BaseObjectGraph();
  v0[25] = static BaseObjectGraph.current.getter();
  v12 = type metadata accessor for JSStack();
  v0[5] = v12;
  v0[6] = &protocol witness table for JSStack;
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_1000DB550;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v12, v12);
}

uint64_t sub_1000DB550()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = *(v2 + 176);
    (*(v2 + 168))(*(v2 + 160), *(v2 + 128));

    v7 = sub_1000DB7C0;
  }

  else
  {

    v7 = sub_1000DB6A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DB6A0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[16];
  v12 = v0[15];
  v9 = v0[12];
  v9[3] = v8;
  v9[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100020014(v9);
  v2();
  sub_10000C178((v0 + 2), (v0 + 7), &qword_1001707A0, &qword_100118F58);
  NativeIntentDispatcher.next.setter();
  v3(v5, v8);
  sub_100009908((v0 + 2), &qword_1001707A0, &qword_100118F58);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DB7C0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  sub_1000C7CA0(v0 + 2);

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t sub_1000DB898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D5610(a1, v4);
}

uint64_t sub_1000DB938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D57E8(a1, v4);
}

uint64_t sub_1000DB9D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D5CC8(a1, v4);
}

uint64_t sub_1000DBA78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA04;

  return sub_1000D643C(a1, v4);
}

uint64_t sub_1000DBB18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D69F0(a1, v4);
}

uint64_t sub_1000DBBB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D7DD8(a1, v4);
}

uint64_t sub_1000DBC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000D896C(a1, v4);
}

uint64_t sub_1000DBCF8(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_1000DBDF0()
{
  v1 = (sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = v1[10];
  v9 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DBF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DBF70()
{
  v1 = *(sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000D31B4(v2, v3);
}

uint64_t sub_1000DBFE0()
{
  v0 = type metadata accessor for Dependency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  type metadata accessor for JSStack();
  Dependency.init<A>(satisfying:with:)();
  sub_100002BE4(&qword_100170780, &qword_100118F38);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10010D3B0;
  (*(v1 + 16))(v10 + v9, v7, v0);
  BaseObjectGraph.__allocating_init(name:_:)();
  v11 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);
  return v11;
}

uint64_t sub_1000DC1EC(uint64_t a1)
{
  v27 = a1;
  v31 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = &v26 - v4;
  v6 = type metadata accessor for Dependency();
  v30 = *(v6 - 8);
  v7 = v30;
  v8 = *(v30 + 64);
  v9 = __chkstk_darwin(v6);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v28 = &v26 - v12;
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  sub_100002BE4(&qword_100170718, &qword_100118ED0);
  sub_10000C178(a1, v5, &unk_100170700, &unk_1001153F0);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  sub_1000DBF00(v5, v16 + v15);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for MetricsPipeline();
  v17 = v28;
  Dependency.init<A>(satisfying:with:)();
  sub_10000C178(v27, v5, &unk_100170700, &unk_1001153F0);
  v18 = swift_allocObject();
  sub_1000DBF00(v5, v18 + v15);
  v19 = v29;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for BaseObjectGraph();
  sub_100002BE4(&qword_1001706C8, &qword_100118E70);
  v20 = *(v30 + 72);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10010D3B0;
  (*(v7 + 16))(v22 + v21, v14, v6);
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();
  v23 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v24 = *(v7 + 8);
  v24(v19, v6);
  v24(v17, v6);
  v24(v14, v6);
  return v23;
}

uint64_t sub_1000DC5AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000D8EF4(v4, a1);
}

uint64_t sub_1000DC628()
{
  v1 = (sub_100002BE4(&unk_100170700, &unk_1001153F0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = v1[10];
  v8 = sub_100002BE4(&qword_100170710, &qword_10011A170);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000DC7E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000DC888()
{
  result = qword_100170770;
  if (!qword_100170770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170770);
  }

  return result;
}

uint64_t sub_1000DC908()
{
  sub_100002BE4(&qword_1001707C8, &qword_100119008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x69746341776F6C66;
  *(inited + 40) = 0xEA00000000006E6FLL;
  v1 = type metadata accessor for FlowAction();
  v2 = sub_1000DCC7C(&qword_10016A290, type metadata accessor for FlowAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  strcpy((inited + 64), "openURLAction");
  *(inited + 78) = -4864;
  v3 = type metadata accessor for OpenURLAction(0);
  v4 = sub_1000DCC7C(&qword_10016BB88, type metadata accessor for OpenURLAction);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  *(inited + 96) = 0xD000000000000015;
  *(inited + 104) = 0x800000010011FED0;
  v5 = type metadata accessor for OpenProductPageAction();
  v6 = sub_1000DCC7C(&qword_10016B1F8, type metadata accessor for OpenProductPageAction);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  v7 = sub_10000BF54(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001707D0, &qword_100119010);
  result = swift_arrayDestroy();
  qword_1001821E8 = v7;
  return result;
}

uint64_t sub_1000DCAD0()
{
  if (qword_100168FC8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000DCB2C()
{
  if (qword_100168FC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1001821E8;

  v1 = _defaultActionKindLookup.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0;
  sub_1000DDE48(v1, sub_1000DD958, 0, isUniquelyReferenced_nonNull_native, &v5);

  v3 = sub_1000DD730(v5);

  return v3;
}

unint64_t sub_1000DCC28()
{
  result = qword_1001707C0;
  if (!qword_1001707C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001707C0);
  }

  return result;
}

uint64_t sub_1000DCC7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1000DCCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v109 = a2;
  v99 = a3;
  v4 = type metadata accessor for JSONObject();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AnyActionTypes();
  v97 = *(v103 - 8);
  v7 = *(v97 + 64);
  __chkstk_darwin(v103);
  v95 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_1001707D8, &qword_100119018);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v91 - v11;
  v12 = sub_100002BE4(&qword_1001707E0, &qword_100119020);
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v91 - v17;
  v19 = sub_100002BE4(&qword_1001707E8, &qword_100119028);
  v104 = *(v19 - 8);
  v105 = v19;
  v20 = *(v104 + 8);
  v21 = __chkstk_darwin(v19);
  v96 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v91 - v23;
  v115 = type metadata accessor for JSONContext();
  v108 = *(v115 - 8);
  v25 = *(v108 + 64);
  v26 = __chkstk_darwin(v115);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v91 - v30;
  v32 = __chkstk_darwin(v29);
  v107 = &v91 - v33;
  __chkstk_darwin(v32);
  v35 = &v91 - v34;
  v36 = sub_1000C7C18(a1);
  if (v36)
  {
    v101 = v37;
    v102 = v38;
    v103 = v36;
    v39 = v109;
    v40 = *(v109 + 32);
    sub_10000524C(v109, *(v109 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.actionKindTable.getter();
    sub_100002BE4(&qword_1001707F8, &unk_100119038);
    JSONContext.subscript.getter();
    v41 = v105;
    v42 = *(v104 + 1);
    v42(v24, v105);
    v43 = v115;
    if (!v111)
    {
      v44 = sub_1000DDDF4();
      v111 = v100;
      v112 = v44;
      v45 = v96;
      static JSONContext.Property<A>.actionKindTable.getter();
      v46 = v107;
      JSONContext.addingValue<A>(_:forProperty:)();
      v42(v45, v41);
      v47 = v108;
      (*(v108 + 8))(v35, v115);
      v48 = v46;
      v43 = v115;
      (*(v47 + 32))(v35, v48, v115);
    }

    v49 = v39[4];
    sub_10000524C(v39, v39[3]);
    v50 = v108;
    (*(v108 + 16))(v107, v35, v43);
    Dictionary<>.init(jsonContext:)();
    Decoder.withUserInfo(_:)();

    *&v113 = v103;
    *(&v113 + 1) = v101;
    v114 = v102;
    sub_100020014(&v111);
    v51 = v106;
    dispatch thunk of Decodable.init(from:)();
    if (v51)
    {
      (*(v50 + 8))(v35, v43);
      return sub_1000C7CA0(&v111);
    }

    v109 = v113;
    v73 = v113;
    v74 = sub_10000524C(&v111, v113);
    v75 = v99;
    *(v99 + 24) = v109;
    v76 = sub_100020014(v75);
    (*(*(v73 - 8) + 16))(v76, v74, v73);
    (*(v50 + 8))(v35, v43);
    return sub_1000052E4(&v111);
  }

  v53 = v102;
  v104 = v16;
  v96 = v28;
  v54 = v101;
  v105 = v31;
  v55 = v103;
  v56 = sub_1000C7C18(a1);
  if (v56)
  {
    v92 = v57;
    v93 = v58;
    v94 = v56;
    v59 = *(v109 + 32);
    sub_10000524C(v109, *(v109 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    v60 = v18;
    static JSONContext.Property<A>.actionTypes.getter();
    v61 = v55;
    JSONContext.subscript.getter();
    v62 = *(v54 + 8);
    v63 = v60;
    v64 = v12;
    v62(v63, v12);
    v65 = v97;
    v66 = (*(v97 + 48))(v53, 1, v55);
    sub_1000DDD8C(v53);
    if (v66 == 1)
    {
      sub_1000DDDF4();
      v67 = v95;
      AnyActionTypes.init(_:)();
      v68 = v104;
      static JSONContext.Property<A>.actionTypes.getter();
      v69 = v105;
      JSONContext.addingValue<A>(_:forProperty:)();
      v62(v68, v64);
      (*(v65 + 8))(v67, v61);
      v70 = v108;
      v71 = v115;
      (*(v108 + 8))(v69, v115);
      (*(v70 + 32))(v69, v107, v71);
    }

    sub_10002BFD4(v109, v110);
    v72 = v106;
    JSONObject.init(from:)();
    if (v72)
    {
      return (*(v108 + 8))(v105, v115);
    }

    v84 = v108;
    v85 = v105;
    v86 = v115;
    (*(v108 + 16))(v96, v105, v115);
    *&v113 = v94;
    *(&v113 + 1) = v92;
    v114 = v93;
    sub_100020014(&v111);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    v109 = v113;
    v87 = v113;
    v88 = sub_10000524C(&v111, v113);
    v89 = v99;
    *(v99 + 24) = v109;
    v90 = sub_100020014(v89);
    (*(*(v87 - 8) + 16))(v90, v88, v87);
    (*(v84 + 8))(v85, v86);
    return sub_1000052E4(&v111);
  }

  v77 = type metadata accessor for DecodingError();
  swift_allocError();
  v79 = v78;
  v80 = *(sub_100002BE4(&qword_100169D10, &qword_100119030) + 48);
  *v79 = a1;
  v81 = *(v109 + 32);
  sub_10000524C(v109, *(v109 + 24));
  dispatch thunk of Decoder.codingPath.getter();
  v111 = 0;
  v112 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v111 = 60;
  v112 = 0xE100000000000000;
  v82._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v82);

  v83._object = 0x800000010011F9E0;
  v83._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v83);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v77 - 8) + 104))(v79, enum case for DecodingError.typeMismatch(_:), v77);
  return swift_willThrow();
}

unint64_t sub_1000DD730(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_100002BE4(&qword_100170800, &qword_100119048);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        result = sub_10006889C(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000DD958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void *sub_1000DD978()
{
  v1 = v0;
  sub_100002BE4(&qword_1001697A0, &qword_10010D240);
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_1000DDAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_1001697A0, &qword_10010D240);
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000DDD8C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001707D8, &qword_100119018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DDDF4()
{
  result = qword_1001707F0;
  if (!qword_1001707F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001707F0);
  }

  return result;
}

uint64_t sub_1000DDE48(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v46[0] = *v16;
    v46[1] = v17;
    v47 = *(v15 + v14);

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v40 = v45;
    v20 = *v48;
    v22 = sub_10006889C(v43, v44);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v42 & 1) == 0)
      {
        sub_1000DD978();
      }
    }

    else
    {
      v27 = v48;
      sub_1000DDAE0(v25, v42 & 1);
      v28 = *v27;
      v29 = sub_10006889C(v18, v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v48;
    if (v26)
    {
      v41 = *(v31[7] + 16 * v22);

      *(v31[7] + 16 * v22) = v41;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v31[6] + 16 * v22);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 16 * v22) = v40;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1000151D4();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DE0EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DE1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTitleComponentModel()
{
  result = qword_100170860;
  if (!qword_100170860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DE2B8()
{
  sub_10001EA88();
  if (v0 <= 0x3F)
  {
    sub_10001EB04();
    if (v1 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016B298, &unk_10016B2A0, "ʴ");
      if (v2 <= 0x3F)
      {
        sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000DE3A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - v5;
  v37 = sub_100002BE4(&qword_1001708B0, &qword_100119110);
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v37);
  v9 = &v34 - v8;
  v10 = type metadata accessor for AppTitleComponentModel();
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = type metadata accessor for ImpressionMetrics();
  v17 = *(*(v16 - 8) + 56);
  v40 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v10[8];
  v39 = v14;
  v19 = &v14[v18];
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_10001FD78(&v42, v19, &qword_10016A248, &qword_100114390);
  v20 = a1[3];
  v21 = a1[4];
  v41 = a1;
  sub_10000524C(a1, v20);
  sub_1000DEBD4();
  v36 = v9;
  v22 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v24 = v40;
    sub_1000052E4(v41);
    sub_100009908(v39 + v24, &qword_10016A118, &unk_10010EEF0);
    return sub_100009908(v19, &qword_10016A230, &unk_10010F030);
  }

  else
  {
    v38 = v3;
    v23 = v35;
    sub_100002BE4(&qword_10016A238, &qword_100114380);
    v45 = 0;
    sub_100012C48(&qword_10016DA90, &qword_10016A238, &qword_100114380);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v43;
    v26 = v39;
    *v39 = v42;
    *(v26 + 16) = v25;
    *(v26 + 32) = v44;
    LOBYTE(v42) = 1;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0);
    v27 = v6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v23;
    sub_10001FD78(v27, v26 + v40, &qword_10016A118, &unk_10010EEF0);
    LOBYTE(v42) = 2;
    v29 = v36;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v26 + v10[6]);
    *v31 = v30;
    v31[1] = v32;
    sub_100002BE4(&qword_10016B338, &qword_1001105A0);
    v45 = 3;
    sub_100038F3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v26 + v10[7]) = v42;
    sub_100002BE4(&qword_10016A230, &unk_10010F030);
    v45 = 4;
    sub_100075C58();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v29, v37);
    sub_10001FD78(&v42, v19, &qword_10016A230, &unk_10010F030);
    sub_1000DEC28(v26, v34);
    sub_1000052E4(v41);
    return sub_10002BEBC(v26);
  }
}

unint64_t sub_1000DE920()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1000DE9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DEDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DE9DC(uint64_t a1)
{
  v2 = sub_1000DEBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DEA18(uint64_t a1)
{
  v2 = sub_1000DEBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000DEA54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 32), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000DEAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_10000C178(v2 + *(a1 + 20), &v10 - v7, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v8, a2);
}

unint64_t sub_1000DEB7C()
{
  result = qword_1001708A8;
  if (!qword_1001708A8)
  {
    type metadata accessor for AppTitleComponentModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708A8);
  }

  return result;
}

unint64_t sub_1000DEBD4()
{
  result = qword_1001708B8;
  if (!qword_1001708B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708B8);
  }

  return result;
}

uint64_t sub_1000DEC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTitleComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DECA0()
{
  result = qword_1001708C0;
  if (!qword_1001708C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708C0);
  }

  return result;
}

unint64_t sub_1000DECF8()
{
  result = qword_1001708C8;
  if (!qword_1001708C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708C8);
  }

  return result;
}

unint64_t sub_1000DED50()
{
  result = qword_1001708D0;
  if (!qword_1001708D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001708D0);
  }

  return result;
}

uint64_t sub_1000DEDA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010011FEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000DEF64()
{
  sub_100002BE4(&qword_1001708E0, &qword_1001192E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100110A60;
  *(inited + 32) = 1869768008;
  *(inited + 40) = 0xE400000000000000;
  v1 = type metadata accessor for AppHeroModel();
  v2 = sub_1000DF7EC(&qword_1001708E8, type metadata accessor for AppHeroModel);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 0x656C746954;
  *(inited + 72) = 0xE500000000000000;
  v3 = type metadata accessor for AppTitleComponentModel();
  v4 = sub_1000DF7EC(&qword_10016BBF8, type metadata accessor for AppTitleComponentModel);
  *(inited + 80) = v3;
  *(inited + 88) = v4;
  strcpy((inited + 96), "EpicShowcase");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  v5 = type metadata accessor for EpicShowcaseComponentModel();
  v6 = sub_1000DF7EC(&qword_1001708F0, type metadata accessor for EpicShowcaseComponentModel);
  *(inited + 112) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 1954047316;
  *(inited + 136) = 0xE400000000000000;
  v7 = type metadata accessor for AppTextComponentModel();
  v8 = sub_1000DF7EC(&qword_10016A598, type metadata accessor for AppTextComponentModel);
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v9 = sub_10000C05C(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_1001708F8, &qword_1001192E8);
  result = swift_arrayDestroy();
  qword_1001821F0 = v9;
  return result;
}

uint64_t sub_1000DF164()
{
  if (qword_100168FD0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000DF1C0()
{
  if (qword_100168FD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001821F0;

  return sub_1000DF5C4(v1);
}

uint64_t *sub_1000DF234@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for JSONContext();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for JSONObject();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C7C18(a1);
  if (v11)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_10002BFD4(a2, v36);
    *&v38 = v14;
    *(&v38 + 1) = v15;
    v39 = v16;
    sub_100020014(v37);
    dispatch thunk of Decodable.init(from:)();
    if (v3)
    {
      return sub_1000C7CA0(v37);
    }

LABEL_7:
    v35 = v38;
    v24 = v38;
    v25 = sub_10000524C(v37, v38);
    *(a3 + 24) = v35;
    v26 = sub_100020014(a3);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    return sub_1000052E4(v37);
  }

  v18 = sub_1000C7C18(a1);
  if (v18)
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
    sub_10002BFD4(a2, v36);
    result = JSONObject.init(from:)();
    if (v3)
    {
      return result;
    }

    v34 = a2[4];
    sub_10000524C(a2, a2[3]);
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    *&v38 = v21;
    *(&v38 + 1) = v22;
    v39 = v23;
    sub_100020014(v37);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    goto LABEL_7;
  }

  v27 = type metadata accessor for DecodingError();
  swift_allocError();
  v29 = v28;
  v30 = *(sub_100002BE4(&qword_100169D10, &qword_100119030) + 48);
  *v29 = a1;
  v31 = a2[4];
  sub_10000524C(a2, a2[3]);
  dispatch thunk of Decoder.codingPath.getter();
  _StringGuts.grow(_:)(21);

  v37[0] = 60;
  v37[1] = 0xE100000000000000;
  v32._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v32);

  v33._object = 0x800000010011F9E0;
  v33._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v33);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
  return swift_willThrow();
}

unint64_t sub_1000DF5C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_100002BE4(&qword_1001708D8, &unk_1001192D0);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        result = sub_10006889C(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000DF7EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000DF8D8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for VisionCompanionFeatures();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_1001820D8);
  v11 = v2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v5;
    v15 = v14;
    v32 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = &v11[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
    v30 = v11;
    v17 = a1;
    v19 = *v16;
    v18 = v16[1];

    v20 = sub_100006B44(v19, v18, &v32);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    sub_1000DFF60();
    sub_1000AC980();
    v21 = Set.description.getter();
    v23 = sub_100006B44(v21, v22, &v32);
    a1 = v17;
    v11 = v30;

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] openURLContexts %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v31;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    (*(v6 + 104))(v9, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v5);
    v26 = a1;
    v27 = VisionCompanionFeatures.isEnabled.getter();
    (*(v6 + 8))(v9, v5);
    if (v27)
    {
      v28 = *&v11[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager];
      sub_1000A17C4(v25, a2);
    }
  }
}

id sub_1000DFE70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DFF24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SceneDelegate();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000DFF60()
{
  result = qword_10016F2C0;
  if (!qword_10016F2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016F2C0);
  }

  return result;
}

uint64_t sub_1000DFFAC(void *a1, void *a2)
{
  v5 = [a1 _FBSScene];
  v6 = [v5 identifier];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
  v11 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName + 8];
  *v10 = v7;
  v10[1] = v9;

  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_1001820D8);
  v13 = v2;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *v10;
    v19 = v10[1];

    v20 = sub_100006B44(v18, v19, &v30);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = v14;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100006B44(v23, v25, &v30);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] sceneWillConnect with options %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v27 = [v14 URLContexts];
  sub_1000DFF60();
  sub_1000AC980();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000DF8D8(a1, v28);
}

void sub_1000E0260(const char *a1, void (*a2)(void))
{
  v5 = type metadata accessor for VisionCompanionFeatures();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E90 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_1001820D8);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v27 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136446210;
    v18 = &v11[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_sceneIdentifierName];
    v19 = a1;
    v21 = *v18;
    v20 = v18[1];

    v22 = sub_100006B44(v21, v20, &v28);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, v19, v16, 0xCu);
    sub_1000052E4(v17);

    a2 = v26;
  }

  (*(v6 + 104))(v9, enum case for VisionCompanionFeatures.airPlayReceiver(_:), v5);
  v23 = VisionCompanionFeatures.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  if (v23)
  {
    v24 = *&v27[OBJC_IVAR____TtC17AppleVisionProApp13SceneDelegate_airplayReceiverLifecycleManager];
    a2();
  }
}

uint64_t sub_1000E04D4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  return sub_1000E3604(v5 + v3, a1);
}

uint64_t sub_1000E059C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  return sub_1000E3604(v3 + v4, a2);
}

uint64_t sub_1000E0664(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000E3604(a1, &v10 - v6);
  v8 = *a2;
  return sub_1000E06F8(v7);
}

uint64_t sub_1000E06F8(uint64_t a1)
{
  v3 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  sub_1000E3604(v1 + v7, v6);
  v8 = sub_1000E2CE8(v6, a1);
  sub_100009908(v6, &qword_10016D778, &qword_100113C20);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000E3604(a1, v6);
    swift_beginAccess();
    sub_1000E3674(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_100009908(a1, &qword_10016D778, &qword_100113C20);
}

uint64_t sub_1000E08E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  swift_beginAccess();
  sub_1000E3708(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000E0954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  swift_getKeyPath();
  v17 = v2;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v12 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  if (!v12)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!a2 || ((result = *v11, *v11 == a1) ? (v13 = v12 == a2) : (v13 = 0), !v13 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_10:
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v3;

    sub_1000EE5F8(0, 0, v9, &unk_100119450, v15);
  }

  return result;
}

uint64_t sub_1000E0B24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000E21A8();
}

uint64_t sub_1000E0BDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000E0C1C(v2, v3);
}

uint64_t sub_1000E0C1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  if (v6)
  {
    if (a2)
    {
      if (v7 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v9 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
      v10 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
  sub_1000E0954(v7, v6);
}

uint64_t sub_1000E0DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v4 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v5 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  *v3 = a2;
  v3[1] = a3;

  sub_1000E0954(v4, v5);
}

uint64_t sub_1000E0E18(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1000E0ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1000E0F88(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000E1104()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1000E11C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000E128C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1000E7FD4(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000E13DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1000E144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PushNotificationDispatchItem();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E150C, 0, 0);
}

uint64_t sub_1000E150C()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v0[5] + 104))(v0[6], enum case for PushNotificationDispatchItem.softwareUpdateInfo(_:), v0[4]);
  type metadata accessor for PushNotificationDispatch();
  sub_1000E3778(&qword_10016E760, &type metadata accessor for PushNotificationDispatch);

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E15FC, v4, v3);
}

uint64_t sub_1000E15FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  dispatch thunk of PushNotificationDispatch.register(_:handler:)();

  (*(v2 + 8))(v1, v3);
  v6 = async function pointer to static CloudKitUtilities.registerForSoftwareUpdateInfoPushNotifications()[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1000E16E8;

  return static CloudKitUtilities.registerForSoftwareUpdateInfoPushNotifications()();
}

uint64_t sub_1000E16E8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1000E1828;
  v5 = *(v1 + 24);

  return sub_1000E21A8();
}

uint64_t sub_1000E1828()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000E1938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000E21A8();
}

uint64_t sub_1000E19C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultCenter];
  if (qword_100168F70 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  sub_1000E3778(&qword_100170C10, &type metadata accessor for NSNotificationCenter.Publisher);
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v7, v3);
  swift_getKeyPath();
  v13 = v1;
  sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v13 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000E1CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168EA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100182120);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v30 = a2;
    v12 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = Notification.userInfo.getter();
    if (v16)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      v31[0] = v16;
      sub_100002BE4(&qword_100170C18, &qword_100119440);
      _print_unlocked<A, B>(_:_:)();

      v18 = v32;
      v17 = v33;
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    (*(v5 + 8))(v8, v4);
    v19 = sub_100006B44(v18, v17, v34);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s received selectedDeviceDidChange notification with userInfo: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  result = Notification.userInfo.getter();
  if (result)
  {
    v21 = result;
    strcpy(v31, "serialNumber");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    AnyHashable.init<A>(_:)();
    if (*(v21 + 16))
    {
      v22 = sub_100068958(&v32);
      if (v23)
      {
        sub_1000076F0(*(v21 + 56) + 32 * v22, v34);
        sub_100064580(&v32);
        if ((swift_dynamicCast() & 1) == 0)
        {
        }

        v25 = v31[0];
        v24 = v31[1];
        v31[0] = 0xD000000000000013;
        v31[1] = 0x800000010011EC40;
        AnyHashable.init<A>(_:)();
        if (*(v21 + 16))
        {
          v26 = sub_100068958(&v32);
          if (v27)
          {
            sub_1000076F0(*(v21 + 56) + 32 * v26, v34);
            sub_100064580(&v32);

            if (swift_dynamicCast())
            {
              v29 = v31[0];
              v28 = v31[1];
              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_1000E0F88(v29, v28);
              }

              else
              {
              }

              swift_beginAccess();
              if (swift_weakLoadStrong())
              {
                sub_1000E0C1C(v25, v24);
              }
            }
          }
        }
      }
    }

    return sub_100064580(&v32);
  }

  return result;
}

uint64_t sub_1000E21A8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = *(*(sub_100002BE4(&qword_10016D778, &qword_100113C20) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  updated = type metadata accessor for SoftwareUpdateInfo();
  v1[8] = updated;
  v4 = *(updated - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000E22D4, 0, 0);
}

uint64_t sub_1000E22D4()
{
  v1 = v0[4];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider___observationRegistrar;
  v0[2] = v1;
  v0[11] = v2;
  v0[12] = sub_1000E3778(&qword_10016D7D0, type metadata accessor for SoftwareUpdateProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  v4 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);
  v0[13] = v4;
  if (v4)
  {
    v5 = *v3;
    v6 = async function pointer to static CloudKitUtilities.fetchSoftwareUpdateInfo(for:)[1];

    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1000E24A0;
    v8 = v0[7];

    return static CloudKitUtilities.fetchSoftwareUpdateInfo(for:)(v8, v5, v4);
  }

  else
  {
    v9 = v0[6];
    v10 = v0[4];
    (*(v0[9] + 56))(v9, 1, 1, v0[8]);
    sub_1000E06F8(v9);
    v11 = v0[10];
    v12 = v0[6];
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1000E24A0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1000E25B8, 0, 0);
}

uint64_t sub_1000E25B8()
{
  v45 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &qword_10016D778, &qword_100113C20);
LABEL_15:
    v27 = v0[6];
    v28 = v0[4];
    (*(v0[9] + 56))(v27, 1, 1, v0[8]);
    sub_1000E06F8(v27);
    goto LABEL_23;
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[4];
  (*(v2 + 32))(v0[10], v3, v1);
  swift_getKeyPath();
  v0[3] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);
  if (!v7)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    goto LABEL_15;
  }

  v8 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  v9 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);

  if (SoftwareUpdateInfo.targetVersion.getter() == v8 && v7 == v10)
  {

    goto LABEL_17;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_17:
    if (qword_100168EA8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006B0C(v29, qword_100182120);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[5];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      v35 = _typeName(_:qualified:)();
      v37 = sub_100006B44(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s currentBuildVersion matches targetVersion, showing update Info", v33, 0xCu);
      sub_1000052E4(v34);
    }

    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    v25 = v0[6];
    v38 = v0[4];
    (*(v23 + 16))(v25, v22, v24);
    (*(v23 + 56))(v25, 0, 1, v24);
    goto LABEL_22;
  }

  if (qword_100168EA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006B0C(v13, qword_100182120);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[5];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44 = v18;
    *v17 = 136315138;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100006B44(v19, v20, &v44);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s currentBuildVersion does not match targetVersion, hiding update Info", v17, 0xCu);
    sub_1000052E4(v18);
  }

  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[8];
  v25 = v0[6];
  v26 = v0[4];
  (*(v23 + 56))(v25, 1, 1, v24);
LABEL_22:
  sub_1000E06F8(v25);
  (*(v23 + 8))(v22, v24);
LABEL_23:
  v39 = v0[10];
  v40 = v0[6];
  v41 = v0[7];

  v42 = v0[1];

  return v42();
}

uint64_t sub_1000E2A64()
{
  sub_100009908(v0 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo, &qword_10016D778, &qword_100113C20);
  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber + 8);

  v2 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables);

  v4 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoftwareUpdateProvider()
{
  result = qword_100170A60;
  if (!qword_100170A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E2BAC()
{
  sub_1000E2C90();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E2C90()
{
  if (!qword_100170A70)
  {
    type metadata accessor for SoftwareUpdateInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100170A70);
    }
  }
}

uint64_t sub_1000E2CE8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(updated);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002BE4(&qword_100170C20, &unk_100119480);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000E3604(a1, &v24 - v16);
  sub_1000E3604(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, updated) != 1)
  {
    sub_1000E3604(v17, v12);
    if (v19(&v17[v18], 1, updated) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], updated);
      sub_1000E3778(&qword_100170C28, &type metadata accessor for SoftwareUpdateInfo);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, updated);
      v22(v12, updated);
      sub_100009908(v17, &qword_10016D778, &qword_100113C20);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, updated);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, updated) != 1)
  {
LABEL_6:
    sub_100009908(v17, &qword_100170C20, &unk_100119480);
    v20 = 1;
    return v20 & 1;
  }

  sub_100009908(v17, &qword_10016D778, &qword_100113C20);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000E2FD8(uint64_t a1)
{
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__softwareUpdateInfo;
  updated = type metadata accessor for SoftwareUpdateInfo();
  (*(*(updated - 8) + 56))(v1 + v7, 1, 1, updated);
  v9 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__serialNumber);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__cancellables) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  sub_1000E19C8();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v1;

  sub_1000EE5F8(0, 0, v6, &unk_1001193A8, v12);

  return v1;
}

uint64_t sub_1000E3180()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E31C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000E144C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E3288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_1000E1938();
}

uint64_t sub_1000E3398(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000E33E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E3418()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E345C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000E128C(v4);
}

uint64_t sub_1000E34A4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17AppleVisionProApp22SoftwareUpdateProvider__currentBuildVersion);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000E3510()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E3550()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000FA04;

  return sub_1000E0B24();
}

uint64_t sub_1000E3604(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3674(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016D778, &qword_100113C20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E37C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000E3808(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000E3858@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  sub_100002BE4(&qword_1001705A0, &qword_100118BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x646E696B24;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100119490;
  *(inited + 64) = 0x444965676170;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 0x6E6F6973726576;
  *(inited + 104) = 0xE700000000000000;

  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 120) = v7;
  v8 = sub_10000B5DC(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016E7F8, &qword_1001153D0);
  swift_arrayDestroy();
  a3[3] = sub_100002BE4(&qword_100169C98, &qword_100115D60);
  result = sub_10009A918();
  a3[4] = result;
  *a3 = v8;
  return result;
}

id sub_1000E39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 valueWithNewObjectInContext:a1];
  if (v9)
  {
    v10 = v9;

    v11 = [v8 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:{a1, a2, a3}];
    result = swift_unknownObjectRelease();
    if (!v11)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    JSValue.subscript.setter();
    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
      result = [v8 valueWithInt32:a4 inContext:a1];
      if (result)
      {
        JSValue.subscript.setter();
        return v10;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_100168E60 != -1)
  {
LABEL_15:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006B0C(v13, qword_100182048);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error making the JSContext", v16, 2u);
  }

  v17 = objc_allocWithZone(JSValue);

  return [v17 init];
}

uint64_t sub_1000E3C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_100002BE4(&qword_100170C40, &unk_1001195B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000E4190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000E3D94()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 0x444965676170;
  }

  *v0;
  return result;
}

uint64_t sub_1000E3DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000E3EA4(uint64_t a1)
{
  v2 = sub_1000E4190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3EE0(uint64_t a1)
{
  v2 = sub_1000E4190();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E3F3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000E3FB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000E3FB8(uint64_t *a1)
{
  v3 = sub_100002BE4(&qword_100170C30, &qword_1001195A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000E4190();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000052E4(a1);
  return v8;
}

unint64_t sub_1000E4190()
{
  result = qword_100170C38;
  if (!qword_100170C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C38);
  }

  return result;
}

unint64_t sub_1000E41F8()
{
  result = qword_100170C48;
  if (!qword_100170C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C48);
  }

  return result;
}

unint64_t sub_1000E4250()
{
  result = qword_100170C50;
  if (!qword_100170C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C50);
  }

  return result;
}

unint64_t sub_1000E42A8()
{
  result = qword_100170C58;
  if (!qword_100170C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C58);
  }

  return result;
}

char *sub_1000E42FC()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v56 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EA638();
  if (v16 >> 60 == 15)
  {
    sub_1000E4960();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return v5;
  }

  v57 = v2;
  v58 = v1;
  v56[1] = v0;
  v59 = v15;
  v18 = v16;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = v10;
  v21 = [(objc_class *)isa hk_hexString];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v11;
  v23 = v22;
  v25 = v24;

  v26 = v20;
  v62 = 0xD00000000000001FLL;
  v63 = 0x8000000100120030;
  v27._countAndFlagsBits = v23;
  v28 = v60;
  v27._object = v25;
  String.append(_:)(v27);

  URL.init(string:)();

  if ((*(v28 + 48))(v9, 1, v26) == 1)
  {
    sub_100045318(v9);
    sub_1000E4960();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
    sub_10003DCC8(v59, v18);
    return v5;
  }

  v30 = *(v28 + 32);
  v31 = v14;
  v30(v14, v9, v26);
  v32 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_15;
    }

    v34 = v59[2];
    v33 = v59[3];
    v35 = __OFSUB__(v33, v34);
    v36 = v33 - v34;
    if (!v35)
    {
      if (v36 == 16)
      {
        goto LABEL_12;
      }

LABEL_15:
      v37 = v18;
      v38 = &ACCBakerDataVersion3;
      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  if (v32)
  {
    if (!__OFSUB__(HIDWORD(v59), v59))
    {
      if (HIDWORD(v59) - v59 == 16)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if (BYTE6(v18) != 16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v37 = v18;
  v38 = &ACCBakerDataVersion1;
LABEL_16:
  v61 = *v38;
  v62 = 0;
  if (qword_100168F30 != -1)
  {
    swift_once();
  }

  v39 = v58;
  sub_100006B0C(v58, qword_100182180);
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  v43 = v57;
  (*(v57 + 104))(v5, enum case for ColorScheme.dark(_:), v39);
  static ColorScheme.== infix(_:_:)();
  (*(v43 + 8))(v5, v39);
  v44 = ACCBakerCreate();

  v45 = v62;
  if (!v62)
  {
    v47 = v60;
    if (!v44)
    {
      sub_1000E4960();
      swift_allocError();
      *v51 = 2;
      swift_willThrow();
      sub_10003DCC8(v59, v37);
      (*(v47 + 8))(v31, v26);
      return v5;
    }

    v48 = CGSVGDocumentCreateFromData();
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() _imageWithCGSVGDocument:v48 scale:0 orientation:1.0];
      if (v50)
      {
        v5 = v50;
        (*(v47 + 8))(v31, v26);
        sub_10003DCC8(v59, v37);

        return v5;
      }

      sub_1000E4960();
      v52 = v31;
      swift_allocError();
      *v54 = 4;
      swift_willThrow();

      sub_10003DCC8(v59, v37);
    }

    else
    {
      sub_1000E4960();
      v52 = v31;
      swift_allocError();
      *v53 = 3;
      swift_willThrow();

      sub_10003DCC8(v59, v37);
    }

    (*(v47 + 8))(v52, v26);
    return v5;
  }

  sub_1000E4960();
  swift_allocError();
  *v46 = v45;
  swift_willThrow();
  sub_10003DCC8(v59, v37);
  (*(v60 + 8))(v31, v26);
  return v5;
}

unint64_t sub_1000E4960()
{
  result = qword_100170C60;
  if (!qword_100170C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170C60);
  }

  return result;
}

uint64_t sub_1000E49B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E49CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E4A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1000E4C24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016C230, type metadata accessor for PasscodeAndBiometricsProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1000E4CF4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1000E4DB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1000E4E7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000E4EA8(v4);
}

uint64_t sub_1000E4EA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1000E82C8(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000E4FF8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void *sub_1000E5068()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  EnrollmentAssetService.init()();
  v7 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider;
  v8 = type metadata accessor for PasscodeAndBiometricsProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v0 + v7) = sub_1000BF704();
  *(v0 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips) = &_swiftEmptySetSingleton;
  ObservationRegistrar.init()();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v1;
  v13[5] = v2;
  sub_1000EE5F8(0, 0, v6, &unk_1001198C0, v13);

  return v1;
}

uint64_t sub_1000E521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000E52B4, v7, v6);
}

uint64_t sub_1000E52B4()
{
  v15 = v0;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182138);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s activating enrollmentAssetService", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = v0[2];
  v11 = async function pointer to EnrollmentAssetService.activate()[1];
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_100022EE0;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_1000E5480()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    sub_1000E6270(0);
    sub_1000E6270(1u);
    v6 = 2;
LABEL_5:
    sub_1000E6270(v6);

    return sub_1000E6270(3u);
  }

  v7 = [v2 standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.myDeviceForceShowUIVisibleSettingsTips.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 BOOLForKey:v8];

  sub_1000E6270(0);
  if (v9)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v11 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider);
  swift_getKeyPath();
  sub_1000E8F80(&qword_10016C230, type metadata accessor for PasscodeAndBiometricsProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 32) == 1)
  {
    sub_1000E6270(3u);
    v12 = sub_1000C05CC();
    sub_1000BF564(v12, v13);
  }

  else
  {
    sub_1000E65A8(3u);
  }

  return sub_1000E5684();
}

uint64_t sub_1000E5684()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  if (EnrollmentAssetService.cloudDataExists()())
  {
    if (qword_100168EB0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100182138);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100006B44(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s enrollmentAssetService cloudDataExists", v10, 0xCu);
      sub_1000052E4(v11);
    }

    sub_1000E65A8(2u);

    return sub_1000E6270(1u);
  }

  else
  {
    sub_1000E65A8(1u);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v1;
    v18[5] = v2;
    sub_1000EE5F8(0, 0, v6, &unk_100119900, v18);
  }
}

uint64_t sub_1000E5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v6 = async function pointer to EnrollmentAssetService.localDataExists()[1];
  v7 = swift_task_alloc();
  v5[10] = v7;
  *v7 = v5;
  v7[1] = sub_1000E5A0C;

  return EnrollmentAssetService.localDataExists()();
}

uint64_t sub_1000E5A0C(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;
  *(v5 + 88) = v1;

  v8 = *(v5 + 72);
  v9 = *(v5 + 64);
  if (v3)
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v13 = sub_1000E6064;
  }

  else
  {
    *(v5 + 96) = a1 & 1;
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v14;
    v13 = sub_1000E5B90;
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_1000E5B90()
{
  v34 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  if (v1 != 1)
  {
    v23 = *(v0 + 48);
    sub_1000E65A8(2u);
    goto LABEL_20;
  }

  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182138);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v33);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s enrollmentAssetService localDataExists", v7, 0xCu);
    sub_1000052E4(v8);
  }

  v12 = *(v0 + 48);
  swift_getKeyPath();
  *(v0 + 40) = v12;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (!*(v14 + 16))
  {
LABEL_18:
    v22 = *(v0 + 48);
    sub_1000E6270(2u);
    goto LABEL_20;
  }

  v15 = *(v14 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v19 = ~v17;
  while (*(*(v14 + 48) + v18) <= 1u)
  {
    v20 = 0x800000010011C9C0;
    if (*(*(v14 + 48) + v18))
    {
      goto LABEL_14;
    }

LABEL_15:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_24;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*(*(v14 + 48) + v18) != 2)
  {
    goto LABEL_15;
  }

  v20 = 0x800000010011C9E0;
LABEL_14:
  if (0x800000010011C9C0 != v20)
  {
    goto LABEL_15;
  }

LABEL_24:

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 56);
    v29 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v29 = 136315650;
    v30 = _typeName(_:qualified:)();
    v32 = sub_100006B44(v30, v31, v33);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_100006B44(0xD000000000000017, 0x800000010011C9C0, v33);
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_100006B44(0xD000000000000017, 0x800000010011C9E0, v33);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s we are already showing %s, so hiding %s ", v29, 0x20u);
    swift_arrayDestroy();
  }

LABEL_20:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000E6064()
{
  v19 = v0;
  v1 = v0[9];

  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182138);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s portableEnrollmentLocalAvailable fetch failed with error: %@", v9, 0x16u);
    sub_1000077E0(v10);

    sub_1000052E4(v11);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E6270(unsigned int a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182138);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = 0xEC0000006B636F6CLL;
    v13 = 0x6E5565746F6D6572;
    if (a1 == 2)
    {
      v13 = 0xD000000000000017;
      v12 = 0x800000010011C9E0;
    }

    v14 = 0x800000010011C9A0;
    v15 = 0xD000000000000014;
    if (a1)
    {
      v15 = 0xD000000000000017;
      v14 = 0x800000010011C9C0;
    }

    if (a1 <= 1u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (a1 <= 1u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    v18 = sub_100006B44(v16, v17, v20);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s inserting %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v20[0] = v2;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E6F04(&v21, a1);
  swift_endAccess();
  v20[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000E65A8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_100168EB0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182138);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = 0xEC0000006B636F6CLL;
    v13 = 0x6E5565746F6D6572;
    if (a1 == 2)
    {
      v13 = 0xD000000000000017;
      v12 = 0x800000010011C9E0;
    }

    v14 = 0x800000010011C9A0;
    v15 = 0xD000000000000014;
    if (a1)
    {
      v15 = 0xD000000000000017;
      v14 = 0x800000010011C9C0;
    }

    if (a1 <= 1u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (a1 <= 1u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v12;
    }

    v18 = sub_100006B44(v16, v17, v20);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s removing %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v20[0] = v2;
  sub_1000E8F80(&qword_10016D7D8, type metadata accessor for TipProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000E7B18(a1);
  swift_endAccess();
  v20[0] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000E68DC()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_enrollmentAssetService;
  v2 = type metadata accessor for EnrollmentAssetService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider_pabProvider);

  v4 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp11TipProvider__settingsTips);

  v5 = OBJC_IVAR____TtC17AppleVisionProApp11TipProvider___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipProvider()
{
  result = qword_100170CA8;
  if (!qword_100170CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E6A2C()
{
  result = type metadata accessor for EnrollmentAssetService();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000E6B28()
{
  result = qword_100170DE0;
  if (!qword_100170DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170DE0);
  }

  return result;
}

Swift::Int sub_1000E6B88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E6C5C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000E6D1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E6DEC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E8CF8(*a1);
  *a2 = result;
  return result;
}

void sub_1000E6E1C(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006B636F6CLL;
  v3 = 0x6E5565746F6D6572;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000017;
    v2 = 0x800000010011C9E0;
  }

  v4 = 0x800000010011C9A0;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v5 = 0xD000000000000017;
    v4 = 0x800000010011C9C0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000E6EB0()
{
  result = qword_100170DE8;
  if (!qword_100170DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170DE8);
  }

  return result;
}

uint64_t sub_1000E6F04(_BYTE *a1, unsigned int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v28 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      v10 = v9 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v11 = v9 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v12 = *(*(v4 + 48) + v8) ? 0xD000000000000017 : 0xD000000000000014;
      v13 = *(*(v4 + 48) + v8) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v14 = *(*(v4 + 48) + v8) <= 1u ? v12 : v10;
      v15 = *(*(v4 + 48) + v8) <= 1u ? v13 : v11;
      v16 = a2 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v17 = a2 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v18 = a2 ? 0xD000000000000017 : 0xD000000000000014;
      v19 = a2 ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v20 = a2 <= 1u ? v18 : v16;
      v21 = a2 <= 1u ? v19 : v17;
      if (v14 == v20 && v15 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_45;
      }

      v8 = (v8 + 1) & v28;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_43:
    v23 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_1000E7464(a2, v8, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000E7170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000E7464(Swift::Int result, unint64_t a2, char a3)
{
  v32 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1000E7170(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1000E7714();
      goto LABEL_50;
    }

    sub_1000E7854(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  v31 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v30 = v7;
    v10 = ~v9;
    do
    {
      v11 = *(*(v30 + 48) + a2);
      v12 = v11 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v13 = v11 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v14 = *(*(v30 + 48) + a2) ? 0xD000000000000017 : 0xD000000000000014;
      v15 = *(*(v30 + 48) + a2) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v16 = *(*(v30 + 48) + a2) <= 1u ? v14 : v12;
      v17 = *(*(v30 + 48) + a2) <= 1u ? v15 : v13;
      v18 = v32 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
      v19 = v32 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
      v20 = v32 ? 0xD000000000000017 : 0xD000000000000014;
      v21 = v32 ? 0x800000010011C9C0 : 0x800000010011C9A0;
      v22 = v32 <= 1u ? v20 : v18;
      v23 = v32 <= 1u ? v21 : v19;
      if (v16 == v22 && v17 == v23)
      {
        goto LABEL_53;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v31 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v32;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000E7714()
{
  v1 = v0;
  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1000E7854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002BE4(&qword_100170DF0, &qword_1001198F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000E7B18(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 4;
  }

  v28 = v1;
  v29 = ~v6;
  v8 = a1;
  while (1)
  {
    v9 = *(*(v3 + 48) + v7);
    v10 = v9 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
    v11 = v9 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
    v12 = *(*(v3 + 48) + v7) ? 0xD000000000000017 : 0xD000000000000014;
    v13 = *(*(v3 + 48) + v7) ? 0x800000010011C9C0 : 0x800000010011C9A0;
    v14 = *(*(v3 + 48) + v7) <= 1u ? v12 : v10;
    v15 = *(*(v3 + 48) + v7) <= 1u ? v13 : v11;
    v16 = v8 == 2 ? 0xD000000000000017 : 0x6E5565746F6D6572;
    v17 = v8 == 2 ? 0x800000010011C9E0 : 0xEC0000006B636F6CLL;
    v18 = v8 ? 0xD000000000000017 : 0xD000000000000014;
    v19 = v8 ? 0x800000010011C9C0 : 0x800000010011C9A0;
    v20 = v8 <= 1 ? v18 : v16;
    v21 = v8 <= 1 ? v19 : v17;
    if (v14 == v20 && v15 == v21)
    {
      break;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_45;
    }

    v7 = (v7 + 1) & v29;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 4;
    }
  }

LABEL_45:
  v24 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v28;
  v30 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000E7714();
    v26 = v30;
  }

  v23 = *(*(v26 + 48) + v7);
  sub_1000E7D80(v7);
  *v28 = v30;
  return v23;
}

unint64_t sub_1000E7D80(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        String.hash(into:)();

        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000E7FD4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_100170DF8;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_1000E8F80(&qword_100170DF8, &type metadata accessor for AnyCancellable);

          v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_1000E8F80(&qword_100170E00, &type metadata accessor for AnyCancellable);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_100170DF8;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1000E8608(v8, v7);
}

uint64_t sub_1000E82C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v24 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v25 = v8;
  v26 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      if (*(*(a2 + 48) + v17) > 1u)
      {
        v19 = 0x6E5565746F6D6572;
        v20 = 0xEC0000006B636F6CLL;
        if (*(*(a2 + 48) + v17) == 2)
        {
          v19 = 0xD000000000000017;
          v20 = 0x800000010011C9E0;
        }
      }

      else
      {
        v19 = *(*(a2 + 48) + v17) ? 0xD000000000000017 : 0xD000000000000014;
        v20 = *(*(a2 + 48) + v17) ? 0x800000010011C9C0 : 0x800000010011C9A0;
      }

      if (v13 <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v22 = 0xD000000000000017;
      }

      else
      {
        v22 = 0x6E5565746F6D6572;
      }

      if (v13 == 2)
      {
        v21 = 0x800000010011C9E0;
      }

      else
      {
        v21 = 0xEC0000006B636F6CLL;
      }

      if (v19 == v22)
      {
        goto LABEL_37;
      }

LABEL_38:
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_42;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v21 = 0x800000010011C9A0;
      if (v19 == 0xD000000000000014)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v21 = 0x800000010011C9C0;
    if (v19 != 0xD000000000000017)
    {
      goto LABEL_38;
    }

LABEL_37:
    if (v20 != v21)
    {
      goto LABEL_38;
    }

LABEL_42:
    v8 = v25;
    v3 = v26;
    v7 = v27;
  }

  while (v27);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v24 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E8608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E870C()
{
  sub_100002BE4(&qword_100170E08, &qword_100119938);
  v0 = type metadata accessor for Tip(0);
  v1 = *(v0 - 8);
  v47 = *(v1 + 72);
  v45 = v0 - 8;
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100110A60;
  v3 = (v46 + v2);
  v49 = objc_opt_self();
  v4 = [v49 mainBundle];
  v50._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x524154535F544547;
  v5._object = 0xEB00000000444554;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v50);

  v9 = [v49 mainBundle];
  v51._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x5F4E495F57454956;
  v10._object = 0xEC00000053504954;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v51);

  v14 = *(v45 + 40);
  v15 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  v48 = *(*(v15 - 8) + 56);
  v48(v46 + v2 + v14, 5, 7, v15);
  type metadata accessor for TipDestinationAction(0);
  swift_storeEnumTagMultiPayload();
  v3->_countAndFlagsBits = 0;
  v3->_object = 0;
  v3[1] = v8;
  v3[2] = v13;
  v3[3]._countAndFlagsBits = 0xD00000000000001BLL;
  v3[3]._object = 0x80000001001200C0;
  v16 = (v46 + v2 + v47);
  v17 = [v49 mainBundle];
  v52._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x455241435F544946;
  v18._object = 0xE800000000000000;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v52);

  v22 = [v49 mainBundle];
  v53._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0x5F4E495F57454956;
  v23._object = 0xEC00000053504954;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v53);

  v48(v16 + *(v45 + 40), 6, 7, v15);
  swift_storeEnumTagMultiPayload();
  v16->_countAndFlagsBits = 0;
  v16->_object = 0;
  v16[1] = v21;
  v16[2] = v26;
  v16[3]._countAndFlagsBits = 0xD00000000000001BLL;
  v16[3]._object = 0x80000001001200E0;
  v27 = (v46 + v2 + 2 * v47);
  v28 = [v49 mainBundle];
  v54._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0x454E5F5354414857;
  v29._object = 0xE900000000000057;
  v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v30.value._object = 0xEB00000000656C62;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v54);

  v33 = [v49 mainBundle];
  v55._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x5F4E495F57454956;
  v34._object = 0xEC00000053504954;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v55);

  v48(v27 + *(v45 + 40), 7, 7, v15);
  swift_storeEnumTagMultiPayload();
  v27->_countAndFlagsBits = 0;
  v27->_object = 0;
  v27[1] = v32;
  v27[2] = v37;
  v38 = (v46 + v2 + 3 * v47);
  v27[3]._countAndFlagsBits = 0xD000000000000019;
  v27[3]._object = 0x8000000100120100;
  v39 = [v49 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0xE000000000000000;
  v40._object = 0x8000000100120120;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v56);

  *(&v38->_countAndFlagsBits + *(v45 + 40)) = 0;
  swift_storeEnumTagMultiPayload();
  v38->_countAndFlagsBits = 0;
  v38->_object = 0;
  v38[1] = v43;
  v38[2]._countAndFlagsBits = 0;
  v38[2]._object = 0;
  v38[3]._countAndFlagsBits = 0xD00000000000001ALL;
  v38[3]._object = 0x8000000100120140;
  return v46;
}

unint64_t sub_1000E8CF8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A170, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E8D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000E521C(a1, v4, v5, v7, v6);
}