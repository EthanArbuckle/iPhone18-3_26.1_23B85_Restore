uint64_t sub_18BB30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

BookAnalytics::TargetType_optional __swiftcall TargetType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261878;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t TargetType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_18BD1C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x8000000000213110;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000000213110;
  }

  else
  {
    v6 = 0x8000000000213130;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x8000000000213130;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_18BE00()
{
  result = qword_28C720;
  if (!qword_28C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C720);
  }

  return result;
}

Swift::Int sub_18BE54()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_18BEFC()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_18BF90()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_18C040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000000213110;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x8000000000213130;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_18C164()
{
  result = qword_28C728;
  if (!qword_28C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C728);
  }

  return result;
}

BookAnalytics::SearchEndMethod_optional __swiftcall SearchEndMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2618E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t SearchEndMethod.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x656E6F646E616261;
  }

  if (*v0)
  {
    v1 = 0x75426C65636E6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18C2A8()
{
  result = qword_28C730;
  if (!qword_28C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C730);
  }

  return result;
}

Swift::Int sub_18C2FC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_18C3D4()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_18C498()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_18C578(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x8000000000213160;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x656E6F646E616261;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x75426C65636E6163;
    v2 = 0xEF7061546E6F7474;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_18C6CC()
{
  result = qword_28C738;
  if (!qword_28C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C738);
  }

  return result;
}

BookAnalytics::FilterType_optional __swiftcall FilterType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261960;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t FilterType.rawValue.getter()
{
  v1 = 0x7265536E496C6C61;
  v2 = 0x646165726E75;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18C810()
{
  result = qword_28C740;
  if (!qword_28C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C740);
  }

  return result;
}

Swift::Int sub_18C864()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_18C930()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_18C9E8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_18CABC(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736569;
  v3 = 0x7265536E496C6C61;
  v4 = 0xE600000000000000;
  v5 = 0x646165726E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_18CC04()
{
  result = qword_28C748;
  if (!qword_28C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C748);
  }

  return result;
}

uint64_t sub_18CC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x536C61766F6D6572 && a2 == 0xEE007972616D6D75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18CD18(uint64_t a1)
{
  v2 = sub_18CF34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18CD54(uint64_t a1)
{
  v2 = sub_18CF34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListRemovalData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28C750, &qword_208170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18CF34();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_28C760, &qword_208178);
  sub_18D138(&qword_28C768, sub_C584);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_18CF34()
{
  result = qword_28C758;
  if (!qword_28C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C758);
  }

  return result;
}

uint64_t WantListRemovalData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28C770, &qword_208180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18CF34();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28C760, &qword_208178);
    sub_18D138(&qword_28C778, sub_C52C);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_18D138(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28C760, &qword_208178);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18D1B4()
{
  result = qword_28C780;
  if (!qword_28C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C780);
  }

  return result;
}

unint64_t sub_18D20C()
{
  result = qword_28C788;
  if (!qword_28C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C788);
  }

  return result;
}

unint64_t sub_18D2B4()
{
  result = qword_28C790;
  if (!qword_28C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C790);
  }

  return result;
}

unint64_t sub_18D30C()
{
  result = qword_28C798;
  if (!qword_28C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C798);
  }

  return result;
}

unint64_t sub_18D364()
{
  result = qword_28C7A0;
  if (!qword_28C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C7A0);
  }

  return result;
}

uint64_t sub_18D3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x537972617262696CLL && a2 == 0xEE007972616D6D75)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_18D478(uint64_t a1)
{
  v2 = sub_18D694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18D4B4(uint64_t a1)
{
  v2 = sub_18D694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28C7A8, &qword_2083A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18D694();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_28C7B8, &qword_2083B0);
  sub_18D898(&qword_28C7C0, sub_15986C);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_18D694()
{
  result = qword_28C7B0;
  if (!qword_28C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C7B0);
  }

  return result;
}

uint64_t LibraryData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28C7C8, &qword_2083B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18D694();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28C7B8, &qword_2083B0);
    sub_18D898(&qword_28C7D0, sub_159814);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_18D898(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28C7B8, &qword_2083B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18D96C()
{
  result = qword_28C7D8;
  if (!qword_28C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C7D8);
  }

  return result;
}

unint64_t sub_18D9C4()
{
  result = qword_28C7E0;
  if (!qword_28C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C7E0);
  }

  return result;
}

unint64_t sub_18DA1C()
{
  result = qword_28C7E8;
  if (!qword_28C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C7E8);
  }

  return result;
}

uint64_t ReadingBackgroundColorChangeEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.backgroundColorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C820, &unk_2085E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.backgroundColorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_28C820, &unk_2085E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReadingBackgroundColorChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_28C820, &unk_2085E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.init(readingSessionData:contentData:backgroundColorData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *a3;
  *a5 = *a1;
  *(a5 + 4) = v7;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 13) = v10;
  *(a5 + 14) = v11;
  v13 = a2[1];
  *(a5 + 16) = *a2;
  *(a5 + 32) = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[5];
  *(a5 + 80) = a2[4];
  *(a5 + 96) = v16;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *(a5 + 112) = v12;
  v17 = *(type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0) + 28);
  v18 = sub_1E1150();
  v19 = *(*(v18 - 8) + 32);

  return v19(a5 + v17, a4, v18);
}

unint64_t sub_18E23C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_18E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F6DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E2F8(uint64_t a1)
{
  v2 = sub_18E670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18E334(uint64_t a1)
{
  v2 = sub_18E670();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingBackgroundColorChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28C828, &qword_2085F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18E670();
  sub_1E1E00();
  v10 = *(v2 + 4);
  v11 = v2[2];
  v12 = *(v2 + 12);
  v13 = *(v2 + 13);
  v14 = *(v2 + 14);
  v41 = *v2;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v46 = v14;
  v40 = 0;
  sub_67BE8();
  v15 = v47;
  sub_1E1CF0();
  if (!v15)
  {
    v16 = *(v2 + 3);
    v17 = *(v2 + 5);
    v37 = *(v2 + 4);
    v38 = v17;
    v18 = *(v2 + 5);
    v39 = *(v2 + 6);
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    v35 = *(v2 + 2);
    v36 = v20;
    v21 = *(v2 + 1);
    v31 = v37;
    v32 = v18;
    v33 = *(v2 + 6);
    v34 = v21;
    v28 = v19;
    v29 = v35;
    v30 = v16;
    v27 = 1;
    sub_13A5C(&v34, v26);
    sub_143D0();
    sub_1E1CF0();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_14424(v26);
    v25 = *(v2 + 112);
    v24[14] = 2;
    sub_18E6C4();
    sub_1E1CF0();
    v22 = *(type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0) + 28);
    v25 = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_18E670()
{
  result = qword_28C830;
  if (!qword_28C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C830);
  }

  return result;
}

unint64_t sub_18E6C4()
{
  result = qword_28C838;
  if (!qword_28C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C838);
  }

  return result;
}

uint64_t ReadingBackgroundColorChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28C840, &qword_2085F8);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v34 = a1;
  sub_48B8(a1, v16);
  sub_18E670();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v34);
  }

  v29 = v12;
  v18 = v32;
  v43 = 0;
  sub_686E8();
  sub_1E1C20();
  v19 = BYTE4(v35);
  v20 = DWORD2(v35);
  v21 = BYTE12(v35);
  v22 = BYTE13(v35);
  v23 = BYTE14(v35);
  *v15 = v35;
  v15[4] = v19;
  *(v15 + 2) = v20;
  v15[12] = v21;
  v15[13] = v22;
  v15[14] = v23;
  v43 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v38;
  *(v15 + 3) = v37;
  *(v15 + 4) = v24;
  v25 = v40;
  *(v15 + 5) = v39;
  *(v15 + 6) = v25;
  v26 = v36;
  *(v15 + 1) = v35;
  *(v15 + 2) = v26;
  v41 = 2;
  sub_18EB18();
  sub_1E1C20();
  v15[112] = v42;
  v42 = 3;
  sub_14E5C(&qword_27D830);
  v27 = v33;
  sub_1E1C20();
  (*(v18 + 8))(v11, v27);
  (*(v30 + 32))(&v15[*(v29 + 28)], v7, v4);
  sub_18EB6C(v15, v31);
  sub_4E48(v34);
  return sub_18EBD0(v15);
}

unint64_t sub_18EB18()
{
  result = qword_28C848;
  if (!qword_28C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C848);
  }

  return result;
}

uint64_t sub_18EB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18EBD0(uint64_t a1)
{
  v2 = type metadata accessor for ReadingBackgroundColorChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18ECCC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_28C820, &unk_2085E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_18EE50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_28C820, &unk_2085E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18F01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_28C820, &unk_2085E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_18F1E0()
{
  sub_18F33C(319, &qword_280E40, sub_686E8, sub_67BE8);
  if (v0 <= 0x3F)
  {
    sub_18F33C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_18F33C(319, &unk_28C8B8, sub_18EB18, sub_18E6C4);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18F33C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_18F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18F48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F530()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18F5D8()
{
  result = qword_28C988;
  if (!qword_28C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C988);
  }

  return result;
}

unint64_t sub_18F630()
{
  result = qword_28C990;
  if (!qword_28C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C990);
  }

  return result;
}

unint64_t sub_18F688()
{
  result = qword_28C998;
  if (!qword_28C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C998);
  }

  return result;
}

uint64_t sub_18F6DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000000214400 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000217330 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL static WelcomeScreenData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = *a1;
  v5 = *a2;
  if (v4 <= 1)
  {
    if (*a1)
    {
      v8 = 0x656D6F636C6577;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v9 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
    v7 = 0x657061637365;
    if (v4 != 3)
    {
      v7 = 2003792487;
      v6 = 0xE400000000000000;
    }

    if (v4 == 2)
    {
      v8 = 0x7265766F63736964;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = v6;
    }
  }

  v10 = *(a1 + 1);
  v11 = *(a2 + 1);
  v12 = 0xE800000000000000;
  v13 = 0x7265766F63736964;
  v14 = 0xE600000000000000;
  v15 = 0x657061637365;
  if (v5 != 3)
  {
    v15 = 2003792487;
    v14 = 0xE400000000000000;
  }

  if (v5 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  if (*a2)
  {
    v3 = 0x656D6F636C6577;
  }

  if (*a2 <= 1u)
  {
    v16 = v3;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = v12;
  }

  if (v8 == v16 && v9 == v17)
  {
  }

  else
  {
    v18 = sub_1E1D30();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  return v10 == v11;
}

unint64_t sub_18FA04()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_18FA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000217350 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000217370 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_18FB24(uint64_t a1)
{
  v2 = sub_18FD3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_18FB60(uint64_t a1)
{
  v2 = sub_18FD3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeScreenData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28C9A0, &qword_208820);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 1);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18FD3C();
  sub_1E1E00();
  v16 = v9;
  v15 = 0;
  sub_18FD90();
  sub_1E1CF0();
  if (!v2)
  {
    v14 = 1;
    sub_1E1D00();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_18FD3C()
{
  result = qword_28C9A8;
  if (!qword_28C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9A8);
  }

  return result;
}

unint64_t sub_18FD90()
{
  result = qword_28C9B0;
  if (!qword_28C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9B0);
  }

  return result;
}

uint64_t WelcomeScreenData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28C9B8, &qword_208828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_18FD3C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    sub_18FFA0();
    sub_1E1C20();
    v11 = v17;
    v15 = 1;
    v12 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 4) = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_18FFA0()
{
  result = qword_28C9C0;
  if (!qword_28C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9C0);
  }

  return result;
}

uint64_t sub_18FFFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  return sub_23114(*a1, *a2) & (v2 == v3);
}

uint64_t getEnumTagSinglePayload for WelcomeScreenData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[8])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WelcomeScreenData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_19011C()
{
  result = qword_28C9C8;
  if (!qword_28C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9C8);
  }

  return result;
}

unint64_t sub_190174()
{
  result = qword_28C9D0;
  if (!qword_28C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9D0);
  }

  return result;
}

unint64_t sub_1901CC()
{
  result = qword_28C9D8;
  if (!qword_28C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9D8);
  }

  return result;
}

BookAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2619E0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x65726353656D6F68;
    if (v1 != 2)
    {
      v7 = 0x756F546563726F66;
    }

    if (*v0)
    {
      v6 = 0x6C616E7265747865;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6163696669746F6ELL;
    v3 = 0x746567646977;
    if (v1 != 7)
    {
      v3 = 0x6E65746E49707061;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (v1 != 4)
    {
      v4 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1903D4()
{
  result = qword_28C9E0;
  if (!qword_28C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9E0);
  }

  return result;
}

Swift::Int sub_190428()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E00C4();
  return sub_1E1DE0();
}

Swift::Int sub_190478()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E00C4();
  return sub_1E1DE0();
}

unint64_t sub_1904C8@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1905B0()
{
  result = qword_28C9E8;
  if (!qword_28C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9E8);
  }

  return result;
}

uint64_t sub_190628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65506E6F69746361 && a2 == 0xEF64656D726F6672)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1906B8(uint64_t a1)
{
  v2 = sub_19086C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1906F4(uint64_t a1)
{
  v2 = sub_19086C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28C9F0, &qword_208B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19086C();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19086C()
{
  result = qword_28C9F8;
  if (!qword_28C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28C9F8);
  }

  return result;
}

uint64_t ActionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28CA00, &qword_208B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19086C();
  sub_1E1DF0();
  if (!v2)
  {
    v11 = sub_1E1BE0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_190A78()
{
  result = qword_28CA08;
  if (!qword_28CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA08);
  }

  return result;
}

unint64_t sub_190AD0()
{
  result = qword_28CA10;
  if (!qword_28CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA10);
  }

  return result;
}

unint64_t sub_190B28()
{
  result = qword_28CA18;
  if (!qword_28CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA18);
  }

  return result;
}

unint64_t sub_190B80()
{
  v1 = 0x44496D6F6F72;
  v2 = 0x657079546D6F6F72;
  if (*v0 != 2)
  {
    v2 = 0x656D614E6D6F6F72;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_190BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1914F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_190C24(uint64_t a1)
{
  v2 = sub_1912C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_190C60(uint64_t a1)
{
  v2 = sub_1912C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RoomData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28CA20, &qword_208DA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v17 = *(v1 + 32);
  v11 = v1[5];
  v16[0] = v1[6];
  v16[1] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1912C4();
  sub_1E1E00();
  v25 = 0;
  v13 = v20;
  sub_1E1CB0();
  if (!v13)
  {
    v15 = v17;
    v24 = 1;
    sub_1E1CB0();
    v23 = v15;
    v22 = 2;
    sub_191318();
    sub_1E1CF0();
    v21 = 3;
    sub_1E1C50();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RoomData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CA38, &qword_208DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1912C4();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v31 = 0;
  v11 = sub_1E1BE0();
  v26 = v12;
  v30 = 1;
  v24 = sub_1E1BE0();
  v25 = v13;
  v28 = 2;
  sub_19136C();
  sub_1E1C20();
  v23 = v29;
  v27 = 3;
  v14 = sub_1E1B80();
  v17 = v16;
  v18 = *(v6 + 8);
  v22 = v14;
  v18(v9, v5);
  v20 = v25;
  v19 = v26;
  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 16) = v24;
  *(a2 + 24) = v20;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  *(a2 + 48) = v17;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics8RoomDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1E1D30()) && (v2 == v7 && v3 == v8 || (sub_1E1D30()) && (sub_20CFC(v4, v9))
  {
    if (v6)
    {
      if (v10 && (v5 == v11 && v6 == v10 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1912C4()
{
  result = qword_28CA28;
  if (!qword_28CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA28);
  }

  return result;
}

unint64_t sub_191318()
{
  result = qword_28CA30;
  if (!qword_28CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA30);
  }

  return result;
}

unint64_t sub_19136C()
{
  result = qword_28CA40;
  if (!qword_28CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA40);
  }

  return result;
}

unint64_t sub_1913EC()
{
  result = qword_28CA48;
  if (!qword_28CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA48);
  }

  return result;
}

unint64_t sub_191444()
{
  result = qword_28CA50;
  if (!qword_28CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA50);
  }

  return result;
}

unint64_t sub_19149C()
{
  result = qword_28CA58;
  if (!qword_28CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA58);
  }

  return result;
}

uint64_t sub_1914F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D6F6F72 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000217390 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546D6F6F72 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t DialogExposureEvent.dialogData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DialogExposureEvent.dialogData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DialogExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DialogExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DialogExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DialogExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t DialogExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v12[7] = v2;
  v12[8] = *(v1 + 136);
  v13 = *(v1 + 152);
  v3 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v3;
  v4 = *(v1 + 88);
  v12[4] = *(v1 + 72);
  v12[5] = v4;
  v5 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v5;
  v6 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = *(v1 + 152);
  v7 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v7;
  v8 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v8;
  v9 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v9;
  return sub_275C4(v12, v11);
}

uint64_t DialogExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DialogExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DialogExposureEvent.Model.init(dialogData:linkData:eventData:timedData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 112);
  *(a5 + 104) = *(a2 + 96);
  *(a5 + 120) = v8;
  *(a5 + 136) = *(a2 + 128);
  v9 = *(a2 + 48);
  *(a5 + 40) = *(a2 + 32);
  *(a5 + 56) = v9;
  v10 = *(a2 + 80);
  *(a5 + 72) = *(a2 + 64);
  *(a5 + 88) = v10;
  v11 = *(a2 + 16);
  *(a5 + 8) = *a2;
  *a5 = *a1;
  *(a5 + 152) = *(a2 + 144);
  *(a5 + 24) = v11;
  v12 = type metadata accessor for DialogExposureEvent.Model(0);
  v13 = *(v12 + 24);
  v14 = sub_1E1150();
  (*(*(v14 - 8) + 32))(a5 + v13, a3, v14);
  v15 = *(v12 + 28);
  v16 = sub_1E11A0();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

uint64_t sub_192084()
{
  v1 = 0x6144676F6C616964;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x617461446B6E696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_193808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192134(uint64_t a1)
{
  v2 = sub_19253C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_192170(uint64_t a1)
{
  v2 = sub_19253C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CA90, &qword_208FF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19253C();
  sub_1E1E00();
  v41 = *v3;
  v40 = 0;
  sub_411FC();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(v3 + 120);
    v38[6] = *(v3 + 104);
    v38[7] = v11;
    v38[8] = *(v3 + 136);
    v39 = *(v3 + 19);
    v12 = *(v3 + 56);
    v38[2] = *(v3 + 40);
    v38[3] = v12;
    v13 = *(v3 + 88);
    v38[4] = *(v3 + 72);
    v38[5] = v13;
    v14 = *(v3 + 24);
    v38[0] = *(v3 + 8);
    v38[1] = v14;
    v15 = *(v3 + 120);
    v34 = *(v3 + 104);
    v35 = v15;
    v36 = *(v3 + 136);
    v37 = *(v3 + 19);
    v16 = *(v3 + 56);
    v30 = *(v3 + 40);
    v31 = v16;
    v17 = *(v3 + 88);
    v32 = *(v3 + 72);
    v33 = v17;
    v18 = *(v3 + 24);
    v28 = *(v3 + 8);
    v29 = v18;
    v27 = 1;
    sub_275C4(v38, v25);
    sub_18630();
    sub_1E1CF0();
    v25[6] = v34;
    v25[7] = v35;
    v25[8] = v36;
    v26 = v37;
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v25[5] = v33;
    v25[0] = v28;
    v25[1] = v29;
    sub_283A8(v25);
    v19 = type metadata accessor for DialogExposureEvent.Model(0);
    v20 = *(v19 + 24);
    v24 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v21 = *(v19 + 28);
    v24 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_19253C()
{
  result = qword_28CA98;
  if (!qword_28CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CA98);
  }

  return result;
}

uint64_t DialogExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = sub_1E11A0();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_28CAA0, &qword_208FF8);
  v37 = *(v38 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v38);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DialogExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v53 = a1;
  sub_48B8(a1, v18);
  sub_19253C();
  v39 = v12;
  v19 = v40;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v53);
  }

  v40 = v9;
  v20 = v37;
  v32 = v5;
  v42 = 0;
  sub_411A4();
  v21 = v38;
  sub_1E1C20();
  v22 = v16;
  *v16 = v43;
  v42 = 1;
  sub_18FA4();
  sub_1E1C20();
  v23 = v20;
  v24 = v50;
  *(v22 + 104) = v49;
  *(v22 + 120) = v24;
  *(v22 + 136) = v51;
  v25 = v46;
  *(v22 + 40) = v45;
  *(v22 + 56) = v25;
  v26 = v48;
  *(v22 + 72) = v47;
  *(v22 + 88) = v26;
  v27 = v44;
  *(v22 + 8) = v43;
  *(v22 + 152) = v52;
  *(v22 + 24) = v27;
  v41 = 2;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v28 = v40;
  sub_1E1C20();
  (*(v36 + 32))(v22 + *(v13 + 24), v28, v6);
  v41 = 3;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v29 = v32;
  v30 = v35;
  sub_1E1C20();
  (*(v23 + 8))(v39, v21);
  (*(v33 + 32))(v22 + *(v13 + 28), v29, v30);
  sub_192BD0(v22, v34);
  sub_4E48(v53);
  return sub_192C34(v22);
}

uint64_t sub_192BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C34(uint64_t a1)
{
  v2 = type metadata accessor for DialogExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192D30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284058, &qword_1F3A10);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_192EB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_284058, &qword_1F3A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_193080(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_284058, &qword_1F3A10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_193244()
{
  sub_193368(319, &qword_2840F8, sub_411A4, sub_411FC);
  if (v0 <= 0x3F)
  {
    sub_193368(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        sub_5750();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_193368(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1933F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_193530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_193654()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_193704()
{
  result = qword_28CBD8;
  if (!qword_28CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CBD8);
  }

  return result;
}

unint64_t sub_19375C()
{
  result = qword_28CBE0;
  if (!qword_28CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CBE0);
  }

  return result;
}

unint64_t sub_1937B4()
{
  result = qword_28CBE8;
  if (!qword_28CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CBE8);
  }

  return result;
}

uint64_t sub_193808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144676F6C616964 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t sub_1939B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_193A44(uint64_t a1)
{
  v2 = sub_193C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_193A80(uint64_t a1)
{
  v2 = sub_193C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BackgroundColorData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28CBF0, &qword_209220);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_193C08();
  sub_1E1E00();
  v12 = v8;
  sub_129EE0();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_193C08()
{
  result = qword_28CBF8;
  if (!qword_28CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CBF8);
  }

  return result;
}

uint64_t BackgroundColorData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28CC00, &qword_209228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_193C08();
  sub_1E1DF0();
  if (!v2)
  {
    sub_129F34();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_193E24()
{
  result = qword_28CC08;
  if (!qword_28CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC08);
  }

  return result;
}

unint64_t sub_193E7C()
{
  result = qword_28CC10;
  if (!qword_28CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC10);
  }

  return result;
}

unint64_t sub_193ED4()
{
  result = qword_28CC18;
  if (!qword_28CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC18);
  }

  return result;
}

void __swiftcall WantListRemovalItemData.init(from:)(BookAnalytics::WantListRemovalItemData *__return_ptr retstr, BookAnalytics::ContentData *from)
{
  countAndFlagsBits = from->contentPrivateID._countAndFlagsBits;
  v6 = from->contentUserID._countAndFlagsBits;
  object = from->contentUserID._object;
  contentType = from->contentType;
  v9 = from->contentID._countAndFlagsBits;
  v8 = from->contentID._object;
  v10 = *&from->contentUserID._object;
  v14 = *&from->contentPrivateID._object;
  v3 = v14;
  v15 = v10;
  contentKind = from->contentKind;
  v16 = *(&from->supplementalContentCount.value + 1);
  v17 = contentKind;
  v12 = *&from->contentType;
  v13[0] = from->contentID;
  v13[1] = v12;

  sub_14424(v13);
  retstr->contentPrivateID._countAndFlagsBits = countAndFlagsBits;
  retstr->contentPrivateID._object = v3;
  retstr->contentUserID._countAndFlagsBits = v6;
  retstr->contentUserID._object = object;
  retstr->contentType = contentType;
  retstr->contentID._countAndFlagsBits = v9;
  retstr->contentID._object = v8;
}

BookAnalytics::RemovalType_optional __swiftcall RemovalType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261AD8;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t RemovalType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6F4465766F6D6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_19408C()
{
  result = qword_28CC20;
  if (!qword_28CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC20);
  }

  return result;
}

Swift::Int sub_1940E0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_194194()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_194234()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1942F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000000213220;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6F4465766F6D6572;
    v4 = 0xEE0064616F6C6E77;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_194420()
{
  result = qword_28CC28;
  if (!qword_28CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC28);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppReviewPromptRequestEvent.locationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppReviewPromptRequestEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.Model.init(locationData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_194994()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x6E6F697461636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1949DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_194AC4(uint64_t a1)
{
  v2 = sub_194CF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_194B00(uint64_t a1)
{
  v2 = sub_194CF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CC60, &qword_209570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_194CF8();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_B5304();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_194CF8()
{
  result = qword_28CC68;
  if (!qword_28CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CC68);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_28CC70, &qword_209578);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_194CF8();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_B5C60();
    v18 = v28;
    sub_1E1C20();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_195048(v19, v25);
  }

  return sub_4E48(a1);
}

uint64_t sub_195048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19514C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_283E38, &unk_209560);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_195238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_283E38, &unk_209560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_195354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_283E38, &unk_209560);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_195468()
{
  sub_1954EC();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1954EC()
{
  if (!qword_283F00)
  {
    sub_B5C60();
    sub_B5304();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_283F00);
    }
  }
}

uint64_t sub_195568(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 224)
  {
    v4 = *a1;
    if (v4 >= 0x20)
    {
      return v4 - 31;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_195620(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 224)
  {
    *result = a2 + 31;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1956C0()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_195750()
{
  result = qword_28CD98;
  if (!qword_28CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CD98);
  }

  return result;
}

unint64_t sub_1957A8()
{
  result = qword_28CDA0;
  if (!qword_28CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDA0);
  }

  return result;
}

unint64_t sub_195800()
{
  result = qword_28CDA8;
  if (!qword_28CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDA8);
  }

  return result;
}

unint64_t sub_195878()
{
  v1 = 0x646F43726F727265;
  v2 = 0x6D6F44726F727265;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_195908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19634C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195930(uint64_t a1)
{
  v2 = sub_196064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19596C(uint64_t a1)
{
  v2 = sub_196064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseFailData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28CDB0, &qword_209790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = *v1;
  v16 = *(v1 + 1);
  v15 = v1[8];
  v10 = *(v1 + 2);
  v14[2] = *(v1 + 3);
  v14[3] = v10;
  v11 = *(v1 + 4);
  v14[0] = *(v1 + 5);
  v14[1] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_196064();
  sub_1E1E00();
  v22 = v9;
  v21 = 0;
  sub_1960B8();
  sub_1E1CF0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v20 = 1;
  v19 = v15;
  sub_1E1C90();
  v18 = 2;
  sub_1E1C50();
  v17 = 3;
  sub_1E1C50();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PurchaseFailData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CDC8, &qword_209798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_196064();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v29 = 0;
    sub_19610C();
    sub_1E1C20();
    v11 = v30;
    v28 = 1;
    v25 = sub_1E1BC0();
    v27 = 2;
    v12 = sub_1E1B80();
    v15 = v14;
    v24 = v12;
    v26 = 3;
    v16 = sub_1E1B80();
    v18 = v17;
    v19 = *(v6 + 8);
    v23 = v16;
    v19(v9, v5);
    *a2 = v11;
    v20 = BYTE4(v25);
    *(a2 + 4) = v25;
    *(a2 + 8) = v20 & 1;
    v21 = v23;
    *(a2 + 16) = v24;
    *(a2 + 24) = v15;
    *(a2 + 32) = v21;
    *(a2 + 40) = v18;

    sub_4E48(a1);
  }
}

BOOL _s13BookAnalytics16PurchaseFailDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[8];
  v5 = *(a1 + 3);
  v22 = *(a1 + 4);
  v23 = *(a1 + 2);
  v25 = *(a1 + 5);
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v21 = *(a2 + 32);
  v24 = *(a2 + 40);
  v10 = 0xE500000000000000;
  v11 = 0x726F727265;
  if (v2 != 1)
  {
    v11 = 0x64656C65636E6163;
    v10 = 0xE800000000000000;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0xE500000000000000;
  v15 = 0x726F727265;
  if (*a2 != 1)
  {
    v15 = 0x64656C65636E6163;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_1E1D30();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v6)
    {
      v19 = v7;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v8 || (v23 != v9 || v5 != v8) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v25)
  {
    return v24 && (v22 == v21 && v25 == v24 || (sub_1E1D30() & 1) != 0);
  }

  return !v24;
}

unint64_t sub_196064()
{
  result = qword_28CDB8;
  if (!qword_28CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDB8);
  }

  return result;
}

unint64_t sub_1960B8()
{
  result = qword_28CDC0;
  if (!qword_28CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDC0);
  }

  return result;
}

unint64_t sub_19610C()
{
  result = qword_28CDD0;
  if (!qword_28CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDD0);
  }

  return result;
}

uint64_t sub_196168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1961C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_196248()
{
  result = qword_28CDD8;
  if (!qword_28CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDD8);
  }

  return result;
}

unint64_t sub_1962A0()
{
  result = qword_28CDE0;
  if (!qword_28CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDE0);
  }

  return result;
}

unint64_t sub_1962F8()
{
  result = qword_28CDE8;
  if (!qword_28CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CDE8);
  }

  return result;
}

uint64_t sub_19634C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000000215530 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215550 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t PlayAttemptEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.doNotDisturbData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.doNotDisturbData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 40);
  v4 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.userEmbeddingData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.userEmbeddingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayAttemptEvent(0) + 52);
  v4 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PlayAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PlayAttemptEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = enum case for EventProperty.optional<A>(_:);
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v14, v23);
}

uint64_t PlayAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayAttemptEvent.Model(0) + 48);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlayAttemptEvent.Model.userEmbeddingData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for PlayAttemptEvent.Model(0) + 52));
}

uint64_t PlayAttemptEvent.Model.init(contentData:listeningSessionData:listeningActionSourceData:bitRateData:errorData:upSellData:doNotDisturbData:seriesData:eventData:userEmbeddingData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int16 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 4);
  v15 = a4[2];
  v16 = *a5;
  v17 = *(a5 + 2);
  v18 = *(a5 + 3);
  v19 = *(a6 + 16);
  v20 = *a7;
  v21 = *a11;
  v22 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v22;
  v23 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v23;
  v24 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v24;
  v25 = a2[1];
  *(a9 + 96) = *a2;
  *(a9 + 112) = v25;
  *(a9 + 128) = a2[2];
  *(a9 + 138) = *(a2 + 42);
  *(a9 + 154) = v12;
  *(a9 + 156) = v13;
  *(a9 + 160) = v14;
  *(a9 + 164) = v15;
  *(a9 + 168) = v16;
  *(a9 + 184) = v17;
  *(a9 + 192) = v18;
  *(a9 + 200) = *a6;
  *(a9 + 216) = v19;
  *(a9 + 224) = v20;
  v26 = a8[1];
  *(a9 + 232) = *a8;
  *(a9 + 248) = v26;
  *(a9 + 264) = a8[2];
  v27 = type metadata accessor for PlayAttemptEvent.Model(0);
  v28 = *(v27 + 48);
  v29 = sub_1E1150();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a10, v29);
  *(a9 + *(v27 + 52)) = v21;
  return result;
}

uint64_t sub_19771C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6144736569726573;
    v6 = 0x746144746E657665;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61446C6C65537075;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x44746E65746E6F63;
    v2 = 0xD000000000000019;
    v3 = 0x4465746152746962;
    if (a1 != 3)
    {
      v3 = 0x746144726F727265;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_199AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1978B4(uint64_t a1)
{
  v2 = sub_197EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1978F0(uint64_t a1)
{
  v2 = sub_197EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlayAttemptEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28CE20, &qword_209A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_197EB8();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v57 = *(v3 + 32);
  v58 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v59 = *(v3 + 64);
  v60 = v14;
  v15 = *(v3 + 16);
  v56[0] = *v3;
  v56[1] = v15;
  v52 = v57;
  v53 = v13;
  v16 = *(v3 + 80);
  v54 = v59;
  v55 = v16;
  v50 = v56[0];
  v51 = v12;
  v49 = 0;
  sub_13A5C(v56, v48);
  sub_143D0();
  sub_1E1CF0();
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v48[0] = v50;
  v48[1] = v51;
  sub_14424(v48);
  if (!v2)
  {
    v17 = *(v3 + 112);
    v46[0] = *(v3 + 96);
    v46[1] = v17;
    v19 = *(v3 + 96);
    v18 = *(v3 + 112);
    v47[0] = *(v3 + 128);
    *(v47 + 10) = *(v3 + 138);
    v43 = v19;
    v44 = v18;
    v45[0] = *(v3 + 128);
    *(v45 + 10) = *(v3 + 138);
    v42 = 1;
    sub_3D9DC(v46, v40);
    sub_3E638();
    sub_1E1CF0();
    v40[0] = v43;
    v40[1] = v44;
    *v41 = v45[0];
    *&v41[10] = *(v45 + 10);
    sub_3E68C(v40);
    LOWORD(v34) = *(v3 + 154);
    v39 = 2;
    sub_14520();
    sub_1E1CF0();
    v20 = *(v3 + 160);
    v21 = *(v3 + 164);
    LODWORD(v34) = *(v3 + 156);
    BYTE4(v34) = v20;
    DWORD2(v34) = v21;
    v39 = 3;
    sub_14574();
    sub_1E1CF0();
    v22 = *(v3 + 176);
    v23 = *(v3 + 184);
    v24 = *(v3 + 192);
    *&v34 = *(v3 + 168);
    *(&v34 + 1) = v22;
    v35 = v23;
    v36 = v24;
    v39 = 4;
    sub_145C8();

    sub_1E1CF0();

    v25 = *(v3 + 216);
    v34 = *(v3 + 200);
    v35 = v25;
    v39 = 5;
    sub_28450();

    sub_1E1C80();

    LOWORD(v34) = *(v3 + 224);
    v39 = 6;
    sub_3E6E0();
    sub_1E1CF0();
    v27 = *(v3 + 240);
    v28 = *(v3 + 248);
    v29 = *(v3 + 256);
    v30 = *(v3 + 264);
    v31 = *(v3 + 272);
    *&v34 = *(v3 + 232);
    *(&v34 + 1) = v27;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = 7;
    sub_13BDC(v34, v27, v28, v29, v30, v31);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v34, *(&v34 + 1), v35, v36, v37, v38);
    v32 = type metadata accessor for PlayAttemptEvent.Model(0);
    v33 = *(v32 + 48);
    LOBYTE(v34) = 8;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    *&v34 = *(v3 + *(v32 + 52));
    v39 = 9;
    sub_3E734();

    sub_1E1C80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_197EB8()
{
  result = qword_28CE28;
  if (!qword_28CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CE28);
  }

  return result;
}

uint64_t PlayAttemptEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E1150();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3D68(&qword_28CE30, &qword_209A08);
  v33 = *(v34 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v34);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PlayAttemptEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v51 = a1;
  sub_48B8(a1, v15);
  sub_197EB8();
  v35 = v10;
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v51);
  }

  v29 = v7;
  v17 = v33;
  v30 = v4;
  v44 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v48;
  *(v14 + 2) = v47;
  *(v14 + 3) = v18;
  v19 = v50;
  *(v14 + 4) = v49;
  *(v14 + 5) = v19;
  v20 = v46;
  *v14 = v45;
  *(v14 + 1) = v20;
  v40 = 1;
  sub_3F258();
  sub_1E1C20();
  v21 = v42;
  *(v14 + 6) = v41;
  *(v14 + 7) = v21;
  *(v14 + 8) = *v43;
  *(v14 + 138) = *&v43[10];
  v39 = 2;
  sub_14D60();
  sub_1E1C20();
  *(v14 + 77) = v36;
  v39 = 3;
  sub_14DB4();
  sub_1E1C20();
  v22 = BYTE4(v36);
  v23 = DWORD2(v36);
  *(v14 + 39) = v36;
  v14[160] = v22;
  *(v14 + 41) = v23;
  v39 = 4;
  sub_14E08();
  sub_1E1C20();
  v24 = v37;
  *(v14 + 168) = v36;
  *(v14 + 184) = v24;
  v39 = 5;
  sub_28EF4();
  sub_1E1BB0();
  v25 = v37;
  *(v14 + 200) = v36;
  *(v14 + 27) = v25;
  v39 = 6;
  sub_3F2AC();
  sub_1E1C20();
  *(v14 + 112) = v36;
  v39 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v26 = v37;
  *(v14 + 232) = v36;
  *(v14 + 248) = v26;
  *(v14 + 264) = v38;
  LOBYTE(v36) = 8;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v32 + 32))(&v14[*(v11 + 48)], v29, v30);
  v39 = 9;
  sub_3F300();
  sub_1E1BB0();
  (*(v17 + 8))(v35, v34);
  *&v14[*(v11 + 52)] = v36;
  sub_19879C(v14, v31);
  sub_4E48(v51);
  return sub_198800(v14);
}

uint64_t sub_19879C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_198800(uint64_t a1)
{
  v2 = type metadata accessor for PlayAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1988FC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = enum case for EventProperty.optional<A>(_:);
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v15, v24);
}

uint64_t sub_198C5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  v14 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  v15 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + a3[13];

  return v23(v24, a2, v22);
}

uint64_t sub_199020(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_20:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_19:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_20;
  }

  v16 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_19;
  }

  v17 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_19;
  }

  v18 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_19;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_19;
  }

  v20 = sub_3D68(&qword_27F8D8, &unk_2099F0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_19;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_19;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_19;
  }

  v24 = sub_3D68(&qword_27F8E0, &qword_1E8E08);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + a4[13];

  return v25(v26, a2, a2, v24);
}

void sub_1993DC()
{
  sub_403DC(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_403DC(319, &qword_27F998, sub_3F258, sub_3E638);
    if (v1 <= 0x3F)
    {
      sub_403DC(319, &qword_27E2D8, sub_14D60, sub_14520);
      if (v2 <= 0x3F)
      {
        sub_403DC(319, &qword_27E2E0, sub_14DB4, sub_14574);
        if (v3 <= 0x3F)
        {
          sub_403DC(319, &unk_27E2E8, sub_14E08, sub_145C8);
          if (v4 <= 0x3F)
          {
            sub_403DC(319, &qword_27EAE8, sub_28EF4, sub_28450);
            if (v5 <= 0x3F)
            {
              sub_403DC(319, &qword_27F9A0, sub_3F2AC, sub_3E6E0);
              if (v6 <= 0x3F)
              {
                sub_403DC(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_5684();
                  if (v8 <= 0x3F)
                  {
                    sub_403DC(319, &unk_27F9A8, sub_3F300, sub_3E734);
                    if (v9 <= 0x3F)
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
}

uint64_t sub_19972C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1997EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_199890()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &unk_27FA68);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1999CC()
{
  result = qword_28CF98;
  if (!qword_28CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CF98);
  }

  return result;
}

unint64_t sub_199A24()
{
  result = qword_28CFA0;
  if (!qword_28CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFA0);
  }

  return result;
}

unint64_t sub_199A7C()
{
  result = qword_28CFA8;
  if (!qword_28CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFA8);
  }

  return result;
}

uint64_t sub_199AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213DA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000213DC0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_199E20()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_199E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000213A10 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000213A50 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E1D30();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_199F40(uint64_t a1)
{
  v2 = sub_19A348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_199F7C(uint64_t a1)
{
  v2 = sub_19A348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DailyGoalsReachedData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28CFB0, &qword_209C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = *(v1 + 1);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19A348();
  sub_1E1E00();
  v15 = v9;
  v14 = 0;
  sub_1E23C();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DailyGoalsReachedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28CFC0, &qword_209C78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19A348();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    sub_1E2E4();
    sub_1E1C20();
    v11 = v17;
    v15 = 1;
    v12 = sub_1E1C40();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_19A348()
{
  result = qword_28CFB8;
  if (!qword_28CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFB8);
  }

  return result;
}

unint64_t sub_19A3C8()
{
  result = qword_28CFC8;
  if (!qword_28CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFC8);
  }

  return result;
}

unint64_t sub_19A420()
{
  result = qword_28CFD0;
  if (!qword_28CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFD0);
  }

  return result;
}

unint64_t sub_19A478()
{
  result = qword_28CFD8;
  if (!qword_28CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28CFD8);
  }

  return result;
}

uint64_t WidgetEngagementEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetEngagementEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetEngagementEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t WidgetEngagementEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetEngagementEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetEngagementEvent.Model.init(widgetData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  v6 = a2[3];
  *(a4 + 72) = a2[2];
  *(a4 + 88) = v6;
  v7 = a2[5];
  *(a4 + 104) = a2[4];
  *(a4 + 120) = v7;
  v8 = a2[1];
  *(a4 + 40) = *a2;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 33) = v11;
  *(a4 + 56) = v8;
  v12 = *(type metadata accessor for WidgetEngagementEvent.Model(0) + 24);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t sub_19AAFC()
{
  v1 = 0x44746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x746144746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144746567646977;
  }
}

uint64_t sub_19AB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19BDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19AB90(uint64_t a1)
{
  v2 = sub_19AF38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19ABCC(uint64_t a1)
{
  v2 = sub_19AF38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetEngagementEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D010, &qword_209EA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19AF38();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = *(v2 + 32);
  v14 = *(v2 + 33);
  v34 = *v2;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v33 = 0;
  sub_13D870();

  v15 = v40;
  sub_1E1CF0();

  if (!v15)
  {
    v17 = *(v2 + 9);
    v18 = *(v2 + 13);
    v32[3] = *(v2 + 11);
    v32[4] = v18;
    v32[5] = *(v2 + 15);
    v19 = *(v2 + 5);
    v32[1] = *(v2 + 7);
    v32[2] = v17;
    v20 = *(v2 + 9);
    v21 = *(v2 + 13);
    v29 = *(v2 + 11);
    v30 = v21;
    v31 = *(v2 + 15);
    v32[0] = v19;
    v26 = *(v2 + 5);
    v27 = *(v2 + 7);
    v28 = v20;
    v25 = 1;
    sub_437B4(v32, v24);
    sub_143D0();
    sub_1E1C80();
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    sub_440C0(v24);
    v22 = *(type metadata accessor for WidgetEngagementEvent.Model(0) + 24);
    v23[15] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_19AF38()
{
  result = qword_28D018;
  if (!qword_28D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D018);
  }

  return result;
}

uint64_t WidgetEngagementEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E1150();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28D020, &qword_209EA8);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for WidgetEngagementEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v32 = a1;
  sub_48B8(a1, v16);
  sub_19AF38();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v32);
  }

  v18 = v30;
  v27 = v7;
  v40 = 0;
  sub_13D818();
  v19 = v31;
  sub_1E1C20();
  v20 = v34;
  v21 = v35;
  v22 = BYTE1(v35);
  *v15 = v33;
  *(v15 + 1) = v20;
  v15[32] = v21;
  v15[33] = v22;
  v40 = 1;
  sub_14CB8();
  sub_1E1BB0();
  v23 = v36;
  *(v15 + 72) = v35;
  *(v15 + 88) = v23;
  v24 = v38;
  *(v15 + 104) = v37;
  *(v15 + 120) = v24;
  v25 = v34;
  *(v15 + 40) = v33;
  *(v15 + 56) = v25;
  v39 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v19);
  (*(v28 + 32))(&v15[*(v12 + 24)], v27, v4);
  sub_19B380(v15, v29);
  sub_4E48(v32);
  return sub_19B3E4(v15);
}

uint64_t sub_19B380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19B3E4(uint64_t a1)
{
  v2 = type metadata accessor for WidgetEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_289618, &unk_200CF0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_19B62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_289618, &unk_200CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_19B7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_289618, &unk_200CF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_19B914()
{
  sub_19BA20(319, &qword_2896A0, sub_13D818, sub_13D870);
  if (v0 <= 0x3F)
  {
    sub_19BA20(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_5684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19BA20(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_19BAB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19BB70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_19BC14()
{
  sub_45610();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19BCBC()
{
  result = qword_28D158;
  if (!qword_28D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D158);
  }

  return result;
}

unint64_t sub_19BD14()
{
  result = qword_28D160;
  if (!qword_28D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D160);
  }

  return result;
}

unint64_t sub_19BD6C()
{
  result = qword_28D168;
  if (!qword_28D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D168);
  }

  return result;
}

uint64_t sub_19BDC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144746567646977 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1D30();

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

uint64_t BrickExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.brickData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_283E30, &qword_20A0C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrickExposureEvent(0) + 48);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrickExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BrickExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = enum case for EventProperty.optional<A>(_:);
  v13 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t BrickExposureEvent.Model.brickData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  v5 = *(v1 + 296);
  *a1 = *(v1 + 264);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t BrickExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  *a1 = *(v1 + 304);
  *(a1 + 8) = *(v1 + 312);
  *(a1 + 24) = v2;
}

uint64_t BrickExposureEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  v6 = *(v1 + 368);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_2EB50(v2, v3);
}

uint64_t BrickExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 392);
  *a1 = *(v1 + 376);
  *(a1 + 16) = v2;
}

uint64_t BrickExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrickExposureEvent.Model(0) + 48);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrickExposureEvent.Model.init(sectionData:linkData:brickData:pageData:mediaData:upSellData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v12;
  v13 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v13;
  v14 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v14;
  v15 = a2[6];
  v16 = a2[8];
  *(a9 + 224) = a2[7];
  *(a9 + 240) = v16;
  v17 = a2[2];
  v18 = a2[4];
  v19 = a2[5];
  *(a9 + 160) = a2[3];
  *(a9 + 176) = v18;
  v20 = a1[6];
  *(a9 + 192) = v19;
  *(a9 + 208) = v15;
  v21 = *a2;
  v22 = a2[1];
  *(a9 + 96) = v20;
  *(a9 + 112) = v21;
  v23 = *a3;
  v24 = a3[1];
  v25 = *(a3 + 4);
  v26 = a3[3];
  v27 = a3[4];
  v28 = *(a4 + 16);
  v29 = *(a4 + 24);
  v30 = *(a5 + 32);
  v31 = *(a6 + 16);
  v32 = *a7;
  v33 = *(a2 + 18);
  *(a9 + 128) = v22;
  *(a9 + 144) = v17;
  *(a9 + 256) = v33;
  *(a9 + 264) = v23;
  *(a9 + 272) = v24;
  *(a9 + 280) = v25;
  *(a9 + 288) = v26;
  *(a9 + 296) = v27;
  *(a9 + 304) = *a4;
  *(a9 + 320) = v28;
  *(a9 + 328) = v29;
  v34 = *(a5 + 16);
  *(a9 + 336) = *a5;
  *(a9 + 352) = v34;
  *(a9 + 368) = v30;
  *(a9 + 376) = *a6;
  *(a9 + 392) = v31;
  *(a9 + 400) = v32;
  v35 = type metadata accessor for BrickExposureEvent.Model(0);
  v36 = *(v35 + 44);
  v37 = sub_1E1150();
  (*(*(v37 - 8) + 32))(a9 + v36, a8, v37);
  v38 = *(v35 + 48);
  v39 = sub_1E11A0();
  v40 = *(*(v39 - 8) + 32);

  return v40(a9 + v38, a10, v39);
}

uint64_t sub_19D0FC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x446E6F6974636573;
    v6 = 0x7461446B63697262;
    if (a1 != 2)
    {
      v6 = 0x6174614465676170;
    }

    if (a1)
    {
      v5 = 0x617461446B6E696CLL;
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

  else
  {
    v1 = 0x6974736567677573;
    v2 = 0x746144746E657665;
    if (a1 != 7)
    {
      v2 = 0x74614464656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746144616964656DLL;
    if (a1 != 4)
    {
      v3 = 0x61446C6C65537075;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_19D244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19F5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19D26C(uint64_t a1)
{
  v2 = sub_19D974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19D2A8(uint64_t a1)
{
  v2 = sub_19D974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrickExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D1A0, &qword_20A0C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19D974();
  sub_1E1E00();
  v10 = v2[4];
  v11 = v2[2];
  v80 = v2[3];
  v81 = v10;
  v12 = v2[4];
  v13 = v2[6];
  v82 = v2[5];
  v83 = v13;
  v14 = *v2;
  v15 = v2[2];
  v78 = v2[1];
  v79 = v15;
  v16 = *v2;
  v74 = v12;
  v75 = v82;
  v76 = v2[6];
  v77 = v16;
  v70 = v14;
  v71 = v78;
  v72 = v11;
  v73 = v80;
  v69 = 0;
  sub_274D4(&v77, &v59);
  sub_18544();
  v17 = v84;
  sub_1E1CF0();
  if (v17)
  {
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v62 = v73;
    sub_28354(&v59);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v58[4] = v74;
    v58[5] = v75;
    v58[6] = v76;
    v58[0] = v70;
    v58[1] = v71;
    v58[2] = v72;
    v58[3] = v73;
    sub_28354(v58);
    v19 = v2[14];
    v20 = v2[12];
    v65 = v2[13];
    v66 = v19;
    v21 = v2[14];
    v67 = v2[15];
    v22 = v2[10];
    v23 = v2[8];
    v61 = v2[9];
    v62 = v22;
    v24 = v2[10];
    v25 = v2[12];
    v63 = v2[11];
    v64 = v25;
    v26 = v2[8];
    v59 = v2[7];
    v60 = v26;
    v54 = v65;
    v55 = v21;
    v56 = v2[15];
    v50 = v61;
    v51 = v24;
    v52 = v63;
    v53 = v20;
    v68 = *(v2 + 32);
    v57 = *(v2 + 32);
    v48 = v59;
    v49 = v23;
    v47 = 1;
    sub_275C4(&v59, v45);
    sub_18630();
    sub_1E1CF0();
    v45[7] = v55;
    v45[8] = v56;
    v45[2] = v50;
    v45[3] = v51;
    v45[4] = v52;
    v46 = v57;
    v45[5] = v53;
    v45[6] = v54;
    v45[0] = v48;
    v45[1] = v49;
    sub_283A8(v45);
    v27 = *(v2 + 34);
    v28 = *(v2 + 70);
    v29 = *(v2 + 36);
    v30 = *(v2 + 37);
    *v42 = *(v2 + 33);
    *&v42[8] = v27;
    *&v42[16] = v28;
    v43 = v29;
    v44 = v30;
    v41 = 2;
    sub_B526C();

    sub_1E1CF0();

    v31 = *(v2 + 41);
    *v42 = *(v2 + 38);
    *&v42[8] = *(v2 + 312);
    v43 = v31;
    v41 = 3;
    sub_18598();

    sub_1E1CF0();

    v32 = *(v2 + 43);
    v33 = *(v2 + 44);
    v34 = *(v2 + 45);
    v35 = *(v2 + 92);
    *v42 = *(v2 + 42);
    *&v42[8] = v32;
    *&v42[16] = v33;
    v43 = v34;
    LODWORD(v44) = v35;
    v41 = 4;
    sub_2EB50(*v42, v32);
    sub_16778();
    sub_1E1C80();
    sub_2F7F0(*v42, *&v42[8]);
    v36 = *(v2 + 49);
    *v42 = *(v2 + 376);
    *&v42[16] = v36;
    v41 = 5;
    sub_28450();

    sub_1E1C80();

    v42[0] = *(v2 + 400);
    v41 = 6;
    sub_284F8();
    sub_1E1C80();
    v37 = v8;
    v84 = type metadata accessor for BrickExposureEvent.Model(0);
    v38 = *(v84 + 44);
    v42[0] = 7;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v39 = *(v84 + 48);
    v42[0] = 8;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v5 + 8))(v37, v4);
  }
}

unint64_t sub_19D974()
{
  result = qword_28D1A8;
  if (!qword_28D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D1A8);
  }

  return result;
}

uint64_t BrickExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_1E11A0();
  v42 = *(v45 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v45);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_3D68(&qword_28D1B0, &qword_20A0D0);
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v49);
  v11 = &v40 - v10;
  v12 = type metadata accessor for BrickExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v50 = a1;
  sub_48B8(a1, v16);
  sub_19D974();
  v48 = v11;
  v18 = v74;
  sub_1E1DF0();
  if (v18)
  {
    return sub_4E48(v50);
  }

  v19 = v8;
  v20 = v47;
  v41 = v12;
  v74 = v5;
  v56 = 0;
  sub_18EFC();
  sub_1E1C20();
  v21 = v62;
  v22 = v63;
  *(v15 + 4) = v61;
  *(v15 + 5) = v21;
  *(v15 + 6) = v22;
  v23 = v58;
  *v15 = v57;
  *(v15 + 1) = v23;
  v24 = v60;
  *(v15 + 2) = v59;
  *(v15 + 3) = v24;
  v55 = 1;
  sub_18FA4();
  sub_1E1C20();
  v25 = v71;
  *(v15 + 13) = v70;
  *(v15 + 14) = v25;
  *(v15 + 15) = v72;
  *(v15 + 32) = v73;
  v26 = v67;
  *(v15 + 9) = v66;
  *(v15 + 10) = v26;
  v27 = v69;
  *(v15 + 11) = v68;
  *(v15 + 12) = v27;
  v28 = v65;
  *(v15 + 7) = v64;
  *(v15 + 8) = v28;
  v51 = 2;
  sub_B5C0C();
  sub_1E1C20();
  v29 = *(&v52 + 1);
  v30 = v53;
  v31 = *(&v53 + 1);
  v32 = v54;
  *(v15 + 33) = v52;
  *(v15 + 34) = v29;
  *(v15 + 70) = v30;
  *(v15 + 36) = v31;
  *(v15 + 37) = v32;
  v51 = 3;
  sub_18F50();
  sub_1E1C20();
  v33 = v53;
  *(v15 + 19) = v52;
  *(v15 + 20) = v33;
  v51 = 4;
  sub_16720();
  sub_1E1BB0();
  v34 = v54;
  v35 = v53;
  *(v15 + 21) = v52;
  *(v15 + 22) = v35;
  *(v15 + 92) = v34;
  v51 = 5;
  sub_28EF4();
  sub_1E1BB0();
  v36 = v53;
  *(v15 + 376) = v52;
  *(v15 + 49) = v36;
  v51 = 6;
  sub_28F9C();
  sub_1E1BB0();
  v15[400] = v52;
  LOBYTE(v52) = 7;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v46 + 32))(&v15[*(v41 + 44)], v19, v74);
  LOBYTE(v52) = 8;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v38 = v44;
  v37 = v45;
  sub_1E1C20();
  (*(v20 + 8))(v48, v49);
  (*(v42 + 32))(&v15[*(v41 + 48)], v38, v37);
  sub_19E278(v15, v43);
  sub_4E48(v50);
  return sub_19E2DC(v15);
}

uint64_t sub_19E278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19E2DC(uint64_t a1)
{
  v2 = type metadata accessor for BrickExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19E3D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_283E30, &qword_20A0C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = enum case for EventProperty.optional<A>(_:);
  v14 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

uint64_t sub_19E6EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  v14 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_17;
  }

  v15 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  v16 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[12];

  return v22(v23, a2, v21);
}

uint64_t sub_19EA5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  v16 = sub_3D68(&qword_283E30, &qword_20A0C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_17;
  }

  v17 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  v18 = sub_3D68(&qword_27E468, &qword_1E5F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  v23 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[12];

  return v24(v25, a2, a2, v23);
}

void sub_19EDC4()
{
  sub_19F078(319, &qword_27E578, sub_18EFC, sub_18544);
  if (v0 <= 0x3F)
  {
    sub_19F078(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_19F078(319, &qword_283EF8, sub_B5C0C, sub_B526C);
      if (v2 <= 0x3F)
      {
        sub_19F078(319, &qword_27E580, sub_18F50, sub_18598);
        if (v3 <= 0x3F)
        {
          sub_19F078(319, &qword_27E568, sub_16720, sub_16778);
          if (v4 <= 0x3F)
          {
            sub_19F078(319, &qword_27EAE8, sub_28EF4, sub_28450);
            if (v5 <= 0x3F)
            {
              sub_19F078(319, &unk_27EAF8, sub_28F9C, sub_284F8);
              if (v6 <= 0x3F)
              {
                sub_5684();
                if (v7 <= 0x3F)
                {
                  sub_5750();
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

void sub_19F078(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_19F108(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19F240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_19F364()
{
  sub_19FE0(319, &qword_27F028);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8);
      if (v2 <= 0x3F)
      {
        sub_1E1150();
        if (v3 <= 0x3F)
        {
          sub_1E11A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_19F4A0()
{
  result = qword_28D318;
  if (!qword_28D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D318);
  }

  return result;
}

unint64_t sub_19F4F8()
{
  result = qword_28D320;
  if (!qword_28D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D320);
  }

  return result;
}

unint64_t sub_19F550()
{
  result = qword_28D328;
  if (!qword_28D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D328);
  }

  return result;
}

uint64_t sub_19F5A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446B63697262 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_19F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65707954626174 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19F948(uint64_t a1)
{
  v2 = sub_19FB0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_19F984(uint64_t a1)
{
  v2 = sub_19FB0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TabData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D330, &qword_20A330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19FB0C();
  sub_1E1E00();
  v12 = v8;
  sub_19FB60();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19FB0C()
{
  result = qword_28D338;
  if (!qword_28D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D338);
  }

  return result;
}

unint64_t sub_19FB60()
{
  result = qword_28D340;
  if (!qword_28D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D340);
  }

  return result;
}

uint64_t TabData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28D348, &qword_20A338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_19FB0C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_19FD20();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_19FD20()
{
  result = qword_28D350;
  if (!qword_28D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D350);
  }

  return result;
}

unint64_t sub_19FD78()
{
  result = qword_28D358;
  if (!qword_28D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D358);
  }

  return result;
}

unint64_t sub_19FDD0()
{
  result = qword_28D360;
  if (!qword_28D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D360);
  }

  return result;
}

unint64_t sub_19FE78()
{
  result = qword_28D368;
  if (!qword_28D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D368);
  }

  return result;
}

unint64_t sub_19FED0()
{
  result = qword_28D370;
  if (!qword_28D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D370);
  }

  return result;
}

unint64_t sub_19FF28()
{
  result = qword_28D378;
  if (!qword_28D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D378);
  }

  return result;
}

BookAnalytics::SortType_optional __swiftcall SortType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261B40;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t SortType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x656C746974;
  v4 = 0x726F68747561;
  if (v1 != 3)
  {
    v4 = 0x6C61756E616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E65636572;
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

unint64_t sub_1A0068()
{
  result = qword_28D380;
  if (!qword_28D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D380);
  }

  return result;
}

Swift::Int sub_1A00BC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1A0190()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1A0250()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1A032C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0x726F68747561;
  if (v2 != 3)
  {
    v7 = 0x6C61756E616DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E65636572;
    v3 = 0xE600000000000000;
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

unint64_t sub_1A047C()
{
  result = qword_28D388;
  if (!qword_28D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D388);
  }

  return result;
}

uint64_t LibraryViewEvent.libraryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LibraryViewEvent.libraryData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LibraryViewEvent.libraryDisplayData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 20);
  v4 = sub_3D68(&qword_28D3C0, &qword_20A668);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.libraryDisplayData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 20);
  v4 = sub_3D68(&qword_28D3C0, &qword_20A668);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.librarySortData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28D3C8, &qword_20A670);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.librarySortData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 24);
  v4 = sub_3D68(&qword_28D3C8, &qword_20A670);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LibraryViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LibraryViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28D3C0, &qword_20A668);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_28D3C8, &qword_20A670);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t LibraryViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryViewEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryViewEvent.Model.init(libraryData:libraryDisplayData:librarySortData:eventData:timedData:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 8) = v9;
  *(a6 + 9) = v10;
  v11 = type metadata accessor for LibraryViewEvent.Model(0);
  v12 = *(v11 + 28);
  v13 = sub_1E1150();
  (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v14 = *(v11 + 32);
  v15 = sub_1E11A0();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

unint64_t sub_1A0FD0()
{
  v1 = *v0;
  v2 = 0x447972617262696CLL;
  v3 = 0x537972617262696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1A108C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A27B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A10B4(uint64_t a1)
{
  v2 = sub_1A1414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A10F0(uint64_t a1)
{
  v2 = sub_1A1414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28D3D0, &qword_20A678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A1414();
  sub_1E1E00();
  v16 = *v3;
  v15[7] = 0;
  sub_598A4();

  sub_1E1CF0();
  if (v2)
  {
  }

  else
  {

    v15[6] = *(v3 + 8);
    v15[5] = 1;
    sub_64280();
    sub_1E1CF0();
    v15[4] = *(v3 + 9);
    v15[3] = 2;
    sub_E1308();
    sub_1E1C80();
    v11 = type metadata accessor for LibraryViewEvent.Model(0);
    v12 = *(v11 + 28);
    v15[2] = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v13 = *(v11 + 32);
    v15[1] = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A1414()
{
  result = qword_28D3D8;
  if (!qword_28D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D3D8);
  }

  return result;
}

uint64_t LibraryViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_1E11A0();
  v29 = *(v33 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_3D68(&qword_28D3E0, &qword_20A680);
  v31 = *(v34 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v34);
  v12 = &v27 - v11;
  v13 = type metadata accessor for LibraryViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v37 = a1;
  sub_48B8(a1, v18);
  sub_1A1414();
  v35 = v12;
  v19 = v36;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v37);
  }

  v36 = v9;
  v28 = v5;
  v20 = v33;
  v21 = v16;
  v22 = v31;
  v23 = v32;
  v44 = 0;
  sub_59EE8();
  v24 = v34;
  sub_1E1C20();
  *v21 = v45;
  v42 = 1;
  sub_64228();
  sub_1E1C20();
  *(v21 + 8) = v43;
  v40 = 2;
  sub_E12B0();
  sub_1E1BB0();
  *(v21 + 9) = v41;
  v39 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v27 = v6;
  sub_1E1C20();
  (*(v23 + 32))(v21 + *(v13 + 28), v36, v27);
  v38 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v25 = v28;
  sub_1E1C20();
  (*(v22 + 8))(v35, v24);
  (*(v29 + 32))(v21 + *(v13 + 32), v25, v20);
  sub_1A19BC(v21, v30);
  sub_4E48(v37);
  return sub_1A1A20(v21);
}

uint64_t sub_1A19BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A1A20(uint64_t a1)
{
  v2 = type metadata accessor for LibraryViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A1B1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28D3C0, &qword_20A668);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_28D3C8, &qword_20A670);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1A1D00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28D3C0, &qword_20A668);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_28D3C8, &qword_20A670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1A1F20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28D3C0, &qword_20A668);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_28D3C8, &qword_20A670);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_1A2138()
{
  sub_1A22AC(319, &qword_2807A0, sub_59EE8, sub_598A4);
  if (v0 <= 0x3F)
  {
    sub_1A22AC(319, &qword_28D450, sub_64228, sub_64280);
    if (v1 <= 0x3F)
    {
      sub_1A22AC(319, &unk_28D458, sub_E12B0, sub_E1308);
      if (v2 <= 0x3F)
      {
        sub_5684();
        if (v3 <= 0x3F)
        {
          sub_5750();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A22AC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1E0C90();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A233C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1A2474(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1A2598()
{
  sub_1A264C();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      sub_1E11A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A264C()
{
  if (!qword_28D500)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28D500);
    }
  }
}

unint64_t sub_1A26B0()
{
  result = qword_28D540;
  if (!qword_28D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D540);
  }

  return result;
}

unint64_t sub_1A2708()
{
  result = qword_28D548;
  if (!qword_28D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D548);
  }

  return result;
}

unint64_t sub_1A2760()
{
  result = qword_28D550;
  if (!qword_28D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D550);
  }

  return result;
}

uint64_t sub_1A27B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x447972617262696CLL && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002173B0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x537972617262696CLL && a2 == 0xEF6174614474726FLL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E1D30();

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

unint64_t sub_1A29BC()
{
  v1 = *v0;
  v2 = 0x6F697463656C6573;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1A2A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A34EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2A9C(uint64_t a1)
{
  v2 = sub_1A3218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A2AD8(uint64_t a1)
{
  v2 = sub_1A3218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D558, &qword_20A8B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v18 = *(v1 + 17);
  v19 = v10;
  v17 = *(v1 + 5);
  v11 = v1[3];
  v16[1] = v1[4];
  v16[2] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A3218();
  sub_1E1E00();
  v27 = 0;
  v13 = v20;
  sub_1E1CB0();
  if (!v13)
  {
    v14 = v18;
    v26 = v19;
    v25 = 1;
    sub_1A326C();
    sub_1E1CF0();
    v24 = v14;
    v23 = 2;
    sub_1A32C0();
    sub_1E1CF0();
    v22 = 3;
    sub_1E1D00();
    v21 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SearchSelectionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28D578, &qword_20A8B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A3218();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v32 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  sub_1A3314();
  sub_1E1C20();
  v14 = v31;
  v28 = 2;
  sub_1A3368();
  sub_1E1C20();
  v24 = v14;
  LOBYTE(v14) = v29;
  v27 = 3;
  v23 = sub_1E1C30();
  v26 = 4;
  v15 = sub_1E1BE0();
  v18 = v17;
  v19 = *(v6 + 8);
  v22 = v15;
  v19(v9, v5);
  *a2 = v25;
  *(a2 + 8) = v13;
  v20 = v23;
  *(a2 + 16) = v24;
  *(a2 + 17) = v14;
  *(a2 + 20) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v18;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics19SearchSelectionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 20);
  v5 = *(a1 + 32);
  v22 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(a2 + 20);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v11 = 0xE400000000000000;
  v12 = 1802465122;
  if (v2 != 1)
  {
    v12 = 0x6F6F626F69647561;
    v11 = 0xE90000000000006BLL;
  }

  if (v2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v15 = 0xE400000000000000;
  v16 = 1802465122;
  if (v6 != 1)
  {
    v16 = 0x6F6F626F69647561;
    v15 = 0xE90000000000006BLL;
  }

  if (v6)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (v6)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v13 != v17 || v14 != v18)
  {
    v19 = sub_1E1D30();

    if (v19)
    {
      goto LABEL_24;
    }

    return 0;
  }

LABEL_24:
  v20 = sub_22A04(v3, v7);
  result = 0;
  if ((v20 & 1) != 0 && v4 == v8)
  {
    if (v22 == v10 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1E1D30();
    }
  }

  return result;
}

unint64_t sub_1A3218()
{
  result = qword_28D560;
  if (!qword_28D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D560);
  }

  return result;
}

unint64_t sub_1A326C()
{
  result = qword_28D568;
  if (!qword_28D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D568);
  }

  return result;
}

unint64_t sub_1A32C0()
{
  result = qword_28D570;
  if (!qword_28D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D570);
  }

  return result;
}

unint64_t sub_1A3314()
{
  result = qword_28D580;
  if (!qword_28D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D580);
  }

  return result;
}

unint64_t sub_1A3368()
{
  result = qword_28D588;
  if (!qword_28D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D588);
  }

  return result;
}

unint64_t sub_1A33E8()
{
  result = qword_28D590;
  if (!qword_28D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D590);
  }

  return result;
}

unint64_t sub_1A3440()
{
  result = qword_28D598;
  if (!qword_28D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D598);
  }

  return result;
}

unint64_t sub_1A3498()
{
  result = qword_28D5A0;
  if (!qword_28D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D5A0);
  }

  return result;
}

uint64_t sub_1A34EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000000002173D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xED0000657079546ELL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000002173F0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000217410 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000217430 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ClearSearchHistoryEvent.clearedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClearSearchHistoryEvent.clearedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClearSearchHistoryEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClearSearchHistoryEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClearSearchHistoryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ClearSearchHistoryEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t ClearSearchHistoryEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClearSearchHistoryEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClearSearchHistoryEvent.Model.init(clearedData:eventData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for ClearSearchHistoryEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_1A3BDC()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x4464657261656C63;
  }

  *v0;
  return result;
}

uint64_t sub_1A3C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4464657261656C63 && a2 == 0xEB00000000617461;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1D30();

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

uint64_t sub_1A3D0C(uint64_t a1)
{
  v2 = sub_1A3F40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A3D48(uint64_t a1)
{
  v2 = sub_1A3F40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ClearSearchHistoryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28D5E0, &qword_20AB10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A3F40();
  sub_1E1E00();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1A3F94();
  sub_1E1C80();
  if (!v2)
  {
    v11 = *(type metadata accessor for ClearSearchHistoryEvent.Model(0) + 20);
    v13[13] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A3F40()
{
  result = qword_28D5E8;
  if (!qword_28D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D5E8);
  }

  return result;
}

unint64_t sub_1A3F94()
{
  result = qword_28D5F0;
  if (!qword_28D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D5F0);
  }

  return result;
}

uint64_t ClearSearchHistoryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_28D5F8, &qword_20AB18);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ClearSearchHistoryEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A3F40();
  sub_1E1DF0();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_1A42E4();
    v18 = v28;
    sub_1E1BB0();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_14E5C(&qword_27D830);
    v21 = v6;
    sub_1E1C20();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v21, v17);
    sub_1A4338(v19, v25);
  }

  return sub_4E48(a1);
}

unint64_t sub_1A42E4()
{
  result = qword_28D600;
  if (!qword_28D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D600);
  }

  return result;
}

uint64_t sub_1A4338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearSearchHistoryEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A443C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_1A4534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A4650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28D5D8, &unk_20AB00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1A4790()
{
  if (!qword_28D670)
  {
    sub_1A42E4();
    sub_1A3F94();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28D670);
    }
  }
}

uint64_t sub_1A480C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1E1150();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A48D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A4A2C()
{
  if (!qword_28D708)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_28D708);
    }
  }
}

unint64_t sub_1A4A90()
{
  result = qword_28D738;
  if (!qword_28D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D738);
  }

  return result;
}

unint64_t sub_1A4AE8()
{
  result = qword_28D740;
  if (!qword_28D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D740);
  }

  return result;
}

unint64_t sub_1A4B40()
{
  result = qword_28D748;
  if (!qword_28D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D748);
  }

  return result;
}

uint64_t sub_1A4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E72755465676170 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1D30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A4C44(uint64_t a1)
{
  v2 = sub_1A4FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A4C80(uint64_t a1)
{
  v2 = sub_1A4FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PageTurnFeatureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28D750, &qword_20AD30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A4FA4();
  sub_1E1E00();
  v12 = v8;
  sub_1A4FF8();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PageTurnFeatureData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28D768, &qword_20AD38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A4FA4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1A504C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1A4FA4()
{
  result = qword_28D758;
  if (!qword_28D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D758);
  }

  return result;
}

unint64_t sub_1A4FF8()
{
  result = qword_28D760;
  if (!qword_28D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D760);
  }

  return result;
}

unint64_t sub_1A504C()
{
  result = qword_28D770;
  if (!qword_28D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D770);
  }

  return result;
}

unint64_t sub_1A50CC()
{
  result = qword_28D778;
  if (!qword_28D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D778);
  }

  return result;
}

unint64_t sub_1A5124()
{
  result = qword_28D780;
  if (!qword_28D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D780);
  }

  return result;
}

unint64_t sub_1A517C()
{
  result = qword_28D788;
  if (!qword_28D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D788);
  }

  return result;
}

uint64_t RedownloadAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RedownloadAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RedownloadAttemptEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RedownloadAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RedownloadAttemptEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RedownloadAttemptEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v7;
  v8 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = *(a2 + 48);
  *(a5 + 128) = *(a2 + 32);
  *(a5 + 144) = v10;
  v11 = *(a2 + 16);
  *(a5 + 96) = *a2;
  *(a5 + 112) = v11;
  v12 = a3[3];
  *(a5 + 200) = a3[2];
  v13 = *a3;
  *(a5 + 184) = a3[1];
  *(a5 + 168) = v13;
  v14 = a3[5];
  *(a5 + 264) = a3[6];
  v15 = a3[4];
  *(a5 + 248) = v14;
  *(a5 + 232) = v15;
  *(a5 + 157) = *(a2 + 61);
  *(a5 + 216) = v12;
  v16 = *(type metadata accessor for RedownloadAttemptEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1A59C0(uint64_t a1)
{
  v2 = sub_1A5EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A59FC(uint64_t a1)
{
  v2 = sub_1A5EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RedownloadAttemptEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D7C0, &qword_20AF60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A5EB8();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v64 = *(v2 + 32);
  v65 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v66 = *(v2 + 64);
  v67 = v13;
  v14 = *(v2 + 16);
  v63[0] = *v2;
  v63[1] = v14;
  v59 = v64;
  v60 = v12;
  v15 = *(v2 + 80);
  v61 = v66;
  v62 = v15;
  v57 = v63[0];
  v58 = v11;
  v56 = 0;
  sub_13A5C(v63, &v40);
  sub_143D0();
  v16 = v68;
  sub_1E1CF0();
  if (v16)
  {
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    v40 = v57;
    v41 = v58;
    sub_14424(&v40);
  }

  else
  {
    v52[2] = v59;
    v52[3] = v60;
    v52[4] = v61;
    v52[5] = v62;
    v52[0] = v57;
    v52[1] = v58;
    sub_14424(v52);
    v18 = *(v2 + 112);
    v19 = *(v2 + 144);
    v54 = *(v2 + 128);
    *v55 = v19;
    v20 = *(v2 + 112);
    v53[0] = *(v2 + 96);
    v53[1] = v20;
    v49 = v18;
    v50 = v54;
    v51[0] = *(v2 + 144);
    *&v55[13] = *(v2 + 157);
    *(v51 + 13) = *(v2 + 157);
    v48 = v53[0];
    v47 = 1;
    sub_17AA4(v53, &v40, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v38[2] = v50;
    v39[0] = v51[0];
    *(v39 + 13) = *(v51 + 13);
    v38[0] = v48;
    v38[1] = v49;
    sub_18E48(v38, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    v44 = *(v2 + 232);
    v45 = v22;
    v46 = *(v2 + 264);
    v23 = *(v2 + 184);
    v40 = *(v2 + 168);
    v41 = v23;
    v42 = *(v2 + 200);
    v43 = v21;
    v24 = *(v2 + 216);
    v25 = *(v2 + 248);
    v35 = *(v2 + 232);
    v36 = v25;
    v37 = *(v2 + 264);
    v26 = *(v2 + 184);
    v31 = *(v2 + 168);
    v32 = v26;
    v33 = *(v2 + 200);
    v34 = v24;
    v30 = 2;
    sub_17AA4(&v40, v29, &qword_27E490, &qword_205F90);
    sub_18544();
    sub_1E1C80();
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_18E48(v29, &qword_27E490, &qword_205F90);
    v27 = *(type metadata accessor for RedownloadAttemptEvent.Model(0) + 28);
    v28[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A5EB8()
{
  result = qword_28D7C8;
  if (!qword_28D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D7C8);
  }

  return result;
}

uint64_t RedownloadAttemptEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_1E1150();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v32);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_28D7D0, &qword_20AF68);
  v31 = *(v33 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v33);
  v7 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v56 = a1;
  sub_48B8(a1, v12);
  sub_1A5EB8();
  v13 = v34;
  sub_1E1DF0();
  if (v13)
  {
    return sub_4E48(v56);
  }

  v28 = v7;
  v14 = v10;
  v34 = v5;
  v15 = v31;
  v16 = v32;
  v49 = 0;
  sub_14CB8();
  sub_1E1C20();
  v17 = v53;
  v18 = v14;
  *(v14 + 2) = v52;
  *(v14 + 3) = v17;
  v19 = v55;
  *(v14 + 4) = v54;
  *(v14 + 5) = v19;
  v20 = v51;
  *v14 = v50;
  *(v14 + 1) = v20;
  v48 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v21 = v45;
  v22 = v47[0];
  *(v14 + 8) = v46;
  *(v14 + 9) = v22;
  *(v14 + 157) = *(v47 + 13);
  *(v14 + 6) = v44;
  *(v14 + 7) = v21;
  v36 = 2;
  sub_18EFC();
  sub_1E1BB0();
  v23 = v39;
  *(v14 + 216) = v40;
  v24 = v42;
  *(v14 + 232) = v41;
  *(v14 + 248) = v24;
  v25 = v38;
  *(v14 + 168) = v37;
  *(v14 + 184) = v25;
  *(v14 + 200) = v23;
  *(v14 + 264) = v43;
  v35 = 3;
  sub_14E5C(&qword_27D830);
  v26 = v34;
  sub_1E1C20();
  (*(v15 + 8))(0, v33);
  (*(v29 + 32))(v18 + *(v28 + 28), v26, v16);
  sub_1A63F8(v18, v30);
  sub_4E48(v56);
  return sub_1A645C(v18);
}

uint64_t sub_1A63F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A645C(uint64_t a1)
{
  v2 = type metadata accessor for RedownloadAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A656C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1A6738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27E478, &unk_1E5F80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1A6910(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A69D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1A6A88()
{
  result = qword_28D908;
  if (!qword_28D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D908);
  }

  return result;
}

unint64_t sub_1A6AE0()
{
  result = qword_28D910;
  if (!qword_28D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D910);
  }

  return result;
}

unint64_t sub_1A6B38()
{
  result = qword_28D918;
  if (!qword_28D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D918);
  }

  return result;
}

uint64_t AuthorExposureEvent.authorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AuthorExposureEvent.authorData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AuthorExposureEvent.exposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.exposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27F4F8, &unk_210310);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AuthorExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28D950, &qword_20B180);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AuthorExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t AuthorExposureEvent.Model.authorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AuthorExposureEvent.Model.exposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_17AA4(v7, &v6, &qword_27F500, &unk_210330);
}

uint64_t AuthorExposureEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 160);
  v20 = *(v1 + 176);
  v21 = v2;
  v4 = *(v1 + 192);
  v22 = *(v1 + 208);
  v5 = *(v1 + 128);
  v7 = *(v1 + 96);
  v16 = *(v1 + 112);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 128);
  v9 = *(v1 + 160);
  v18 = *(v1 + 144);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 96);
  v15[0] = *(v1 + 80);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 208);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 224);
  *(a1 + 144) = *(v1 + 224);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_17AA4(v15, v14, &qword_27E4A0, &qword_1E8860);
}

uint64_t AuthorExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthorExposureEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AuthorExposureEvent.Model.init(authorData:exposureData:linkData:eventData:timedData:)@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 8) = v9;
  v10 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v10;
  v11 = a2[3];
  *(a6 + 48) = a2[2];
  *(a6 + 64) = v11;
  v12 = *(a3 + 80);
  *(a6 + 144) = *(a3 + 64);
  *(a6 + 160) = v12;
  v13 = *(a3 + 48);
  *(a6 + 112) = *(a3 + 32);
  *(a6 + 128) = v13;
  *(a6 + 224) = *(a3 + 144);
  v14 = *(a3 + 128);
  *(a6 + 192) = *(a3 + 112);
  *(a6 + 208) = v14;
  *(a6 + 176) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(a6 + 80) = *a3;
  *(a6 + 96) = v15;
  v16 = type metadata accessor for AuthorExposureEvent.Model(0);
  v17 = *(v16 + 28);
  v18 = sub_1E1150();
  (*(*(v18 - 8) + 32))(a6 + v17, a4, v18);
  v19 = *(v16 + 32);
  v20 = sub_1E11A0();
  v21 = *(*(v20 - 8) + 32);

  return v21(a6 + v19, a5, v20);
}

uint64_t sub_1A77BC()
{
  v1 = *v0;
  v2 = 0x6144726F68747561;
  v3 = 0x617461446B6E696CLL;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657275736F707865;
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

uint64_t sub_1A786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7894(uint64_t a1)
{
  v2 = sub_1A7DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A78D0(uint64_t a1)
{
  v2 = sub_1A7DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AuthorExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28D958, &qword_20B188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A7DDC();
  sub_1E1E00();
  v10 = v2[1];
  v62 = *v2;
  v63 = v10;
  v61 = 0;
  sub_4CBE4();

  v11 = v64;
  sub_1E1CF0();
  if (v11)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = v5;

    v14 = *(v2 + 2);
    v60[0] = *(v2 + 1);
    v60[1] = v14;
    v15 = *(v2 + 4);
    v17 = *(v2 + 1);
    v16 = *(v2 + 2);
    v60[2] = *(v2 + 3);
    v60[3] = v15;
    v56 = v17;
    v57 = v16;
    v18 = *(v2 + 4);
    v58 = *(v2 + 3);
    v59 = v18;
    v55 = 1;
    sub_17AA4(v60, v46, &qword_27F500, &unk_210330);
    sub_38C28();
    sub_1E1C80();
    v45[0] = v56;
    v45[1] = v57;
    v45[2] = v58;
    v45[3] = v59;
    sub_18E48(v45, &qword_27F500, &unk_210330);
    v19 = *(v2 + 12);
    v20 = *(v2 + 10);
    v51 = *(v2 + 11);
    v52 = v19;
    v21 = *(v2 + 12);
    v53 = *(v2 + 13);
    v22 = *(v2 + 8);
    v23 = *(v2 + 6);
    v47 = *(v2 + 7);
    v48 = v22;
    v24 = *(v2 + 8);
    v25 = *(v2 + 10);
    v49 = *(v2 + 9);
    v50 = v25;
    v26 = *(v2 + 6);
    v46[0] = *(v2 + 5);
    v46[1] = v26;
    v41 = v51;
    v42 = v21;
    v43 = *(v2 + 13);
    v37 = v47;
    v38 = v24;
    v39 = v49;
    v40 = v20;
    v54 = v2[28];
    v44 = v2[28];
    v35 = v46[0];
    v36 = v23;
    v34 = 2;
    sub_17AA4(v46, v32, &qword_27E4A0, &qword_1E8860);
    sub_18630();
    sub_1E1C80();
    v32[6] = v41;
    v32[7] = v42;
    v32[8] = v43;
    v33 = v44;
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v39;
    v32[5] = v40;
    v32[0] = v35;
    v32[1] = v36;
    sub_18E48(v32, &qword_27E4A0, &qword_1E8860);
    v27 = type metadata accessor for AuthorExposureEvent.Model(0);
    v28 = *(v27 + 28);
    v31 = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v29 = *(v27 + 32);
    v31 = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v13 + 8))(v8, v4);
  }
}