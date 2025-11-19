void sub_C27A0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_C2830(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_C2968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

void sub_C2A8C()
{
  sub_19FE0(319, &unk_27F640);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_27E650);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_C2B84()
{
  result = qword_284848;
  if (!qword_284848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284848);
  }

  return result;
}

unint64_t sub_C2BDC()
{
  result = qword_284850;
  if (!qword_284850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284850);
  }

  return result;
}

unint64_t sub_C2C34()
{
  result = qword_284858;
  if (!qword_284858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284858);
  }

  return result;
}

uint64_t sub_C2C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74614465726E6567 && a2 == 0xE900000000000061;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
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

unint64_t sub_C2EE0()
{
  v1 = 0x6153656572467369;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000011;
  }

  v2 = 0xD000000000000014;
  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_C2F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C392C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C2F90(uint64_t a1)
{
  v2 = sub_C364C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C2FCC(uint64_t a1)
{
  v2 = sub_C364C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingSessionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284860, &qword_1F4D50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v18 = v1[2];
  v10 = *(v1 + 12);
  v16 = *(v1 + 13);
  v17 = v10;
  HIDWORD(v15) = *(v1 + 14);
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C364C();
  sub_1E1E00();
  v26 = 0;
  v23 = v9;
  v12 = v19;
  sub_1E1C70();
  if (!v12)
  {
    v13 = BYTE4(v15);
    v25 = 1;
    v20 = v17;
    sub_1E1C70();
    v24 = 2;
    sub_1E1CC0();
    v22 = v13;
    v21 = 3;
    sub_C36A0();
    sub_1E1C80();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReadingSessionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_284878, &qword_1F4D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C364C();
  sub_1E1DF0();
  if (!v2)
  {
    v22 = 0;
    v11 = sub_1E1BA0();
    v21 = 1;
    v12 = sub_1E1BA0();
    v20 = 2;
    v17 = sub_1E1BF0();
    v18 = 3;
    sub_C36F4();
    sub_1E1BB0();
    v14 = v17 & 1;
    (*(v6 + 8))(v9, v5);
    v15 = v19;
    *a2 = v11;
    *(a2 + 4) = BYTE4(v11) & 1;
    *(a2 + 8) = v12;
    *(a2 + 12) = BYTE4(v12) & 1;
    *(a2 + 13) = v14;
    *(a2 + 14) = v15;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics18ReadingSessionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 13);
  v4 = *(a1 + 14);
  v5 = *(a2 + 4);
  v6 = *(a2 + 14);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    result = 0;
    if (!*(a2 + 12))
    {
      return result;
    }
  }

  else
  {
    if (*(a2 + 12))
    {
      return 0;
    }

    result = 0;
    if (v2 != *(a2 + 8))
    {
      return result;
    }
  }

  if ((v3 ^ *(a2 + 13)))
  {
    return result;
  }

  if (v4 == 3)
  {
    if (v6 == 3)
    {
      return 1;
    }
  }

  else if (v6 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
    if (v4)
    {
      if (v4 == 1)
      {
        v9 = 0xE800000000000000;
        v10 = 0x7469617274726F70;
      }

      else
      {
        v10 = 0x70616373646E616CLL;
        v9 = 0xE900000000000065;
      }
    }

    else
    {
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
    }

    if (*(a2 + 14))
    {
      if (v6 == 1)
      {
        v11 = 0xE800000000000000;
        v8 = 0x7469617274726F70;
      }

      else
      {
        v8 = 0x70616373646E616CLL;
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    if (v10 == v8 && v9 == v11)
    {
    }

    else
    {
      v12 = sub_1E1D30();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_C364C()
{
  result = qword_284868;
  if (!qword_284868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284868);
  }

  return result;
}

unint64_t sub_C36A0()
{
  result = qword_284870;
  if (!qword_284870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284870);
  }

  return result;
}

unint64_t sub_C36F4()
{
  result = qword_284880;
  if (!qword_284880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284880);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ReadingSessionData(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingSessionData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 15))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 13);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingSessionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 15) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 15) = 0;
    }

    if (a2)
    {
      *(result + 13) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_C3828()
{
  result = qword_284888;
  if (!qword_284888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284888);
  }

  return result;
}

unint64_t sub_C3880()
{
  result = qword_284890;
  if (!qword_284890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284890);
  }

  return result;
}

unint64_t sub_C38D8()
{
  result = qword_284898;
  if (!qword_284898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284898);
  }

  return result;
}

uint64_t sub_C392C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000000002155B0 == a2;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002155E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6153656572467369 && a2 == 0xEC000000656C706DLL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000215610 == a2)
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

uint64_t CollectionAddEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionAddEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionAddEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for CollectionAddEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t CollectionAddEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionAddEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CollectionAddEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  v7 = *(type metadata accessor for CollectionAddEvent.Model(0) + 20);
  v8 = sub_1E1150();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_C3EDC(uint64_t a1)
{
  v2 = sub_C412C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C3F18(uint64_t a1)
{
  v2 = sub_C412C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionAddEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2848D0, &qword_1F4F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C412C();
  sub_1E1E00();
  v11 = v3[1];
  v12 = *(v3 + 4);
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v15[7] = 0;
  sub_12578();

  sub_1E1CF0();

  if (!v2)
  {
    v13 = *(type metadata accessor for CollectionAddEvent.Model(0) + 20);
    LOBYTE(v16) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_C412C()
{
  result = qword_2848D8;
  if (!qword_2848D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2848D8);
  }

  return result;
}

uint64_t CollectionAddEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1E1150();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_2848E0, &qword_1F4F98);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CollectionAddEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C412C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v23 = v10;
  v15 = v13;
  v17 = v26;
  v16 = v27;
  v32 = 0;
  sub_12520();
  v18 = v28;
  sub_1E1C20();
  v19 = v30;
  v20 = v31;
  *v15 = v29;
  *(v15 + 8) = v19;
  *(v15 + 16) = v20;
  LOBYTE(v29) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v24 + 32))(v15 + *(v23 + 20), v6, v16);
  sub_C4498(v15, v25);
  sub_4E48(a1);
  return sub_C44FC(v15);
}

uint64_t sub_C4498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionAddEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C44FC(uint64_t a1)
{
  v2 = type metadata accessor for CollectionAddEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C460C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281010, &qword_1EC770);
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

uint64_t sub_C4728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281010, &qword_1EC770);
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

uint64_t sub_C4850(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C4910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_C49C8()
{
  result = qword_284A08;
  if (!qword_284A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A08);
  }

  return result;
}

unint64_t sub_C4A20()
{
  result = qword_284A10;
  if (!qword_284A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A10);
  }

  return result;
}

unint64_t sub_C4A78()
{
  result = qword_284A18;
  if (!qword_284A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A18);
  }

  return result;
}

BookAnalytics::PageTurnType_optional __swiftcall PageTurnType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2606F0;
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

uint64_t PageTurnType.rawValue.getter()
{
  v1 = 1819440483;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564696C73;
  }
}

uint64_t _s13BookAnalytics19PageTurnFeatureDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1819440483;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6564696C73;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1819440483;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6564696C73;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

unint64_t sub_C4C54()
{
  result = qword_284A20;
  if (!qword_284A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A20);
  }

  return result;
}

Swift::Int sub_C4CA8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_C4D38()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_C4DB4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_C4E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1819440483;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6564696C73;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_C4F58()
{
  result = qword_284A28;
  if (!qword_284A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A28);
  }

  return result;
}

uint64_t WantListAddEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 28);
  v4 = sub_3D68(&qword_284A60, &qword_2061E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 28);
  v4 = sub_3D68(&qword_284A60, &qword_2061E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WantListAddEvent(0) + 44);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WantListAddEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WantListAddEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t GiftEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v11 = *(v1 + 168);
  v5 = *(v1 + 200);
  v12 = *(v1 + 184);
  v4 = v12;
  v13 = v5;
  v14 = *(v1 + 216);
  v6 = v14;
  v15 = v2;
  v7 = *(v1 + 264);
  v16 = v3;
  v17[0] = v7;
  *(v17 + 14) = *(v1 + 278);
  v8 = *(v17 + 14);
  *a1 = v11;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  *(a1 + 110) = v8;
  return sub_17AA4(&v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t WantListAddEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[21];
  v10 = v1[20];
  v11 = v2;
  v4 = v1[23];
  v12 = v1[22];
  v3 = v12;
  v13 = v4;
  v6 = v1[19];
  v9[0] = v1[18];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_284A68, &qword_1F52B0);
}

uint64_t WantListAddEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 384);
  *(a1 + 16) = v2;
}

uint64_t WantListAddEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[51];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[54];
  v6 = v1[55];
  v7 = v1[56];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t WantListAddEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WantListAddEvent.Model(0) + 44);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WantListAddEvent.Model.init(contentData:contentStoreData:contentExposureData:notificationData:upSellData:seriesData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a5 + 16);
  v12 = *a7;
  v13 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v13;
  v14 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v14;
  v15 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v15;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  *(a9 + 157) = *(a2 + 61);
  *(a9 + 128) = v18;
  *(a9 + 144) = v19;
  *(a9 + 96) = v16;
  *(a9 + 112) = v17;
  v20 = *(a3 + 16);
  *(a9 + 168) = *a3;
  *(a9 + 184) = v20;
  v21 = *(a3 + 48);
  *(a9 + 200) = *(a3 + 32);
  *(a9 + 278) = *(a3 + 110);
  v22 = *(a3 + 80);
  *(a9 + 264) = *(a3 + 96);
  v23 = *(a3 + 64);
  *(a9 + 248) = v22;
  *(a9 + 232) = v23;
  *(a9 + 216) = v21;
  v24 = a4[5];
  *(a9 + 352) = a4[4];
  *(a9 + 368) = v24;
  v25 = a4[3];
  *(a9 + 320) = a4[2];
  *(a9 + 336) = v25;
  v26 = a4[1];
  *(a9 + 288) = *a4;
  *(a9 + 304) = v26;
  *(a9 + 384) = *a5;
  *(a9 + 400) = v11;
  v27 = a6[1];
  *(a9 + 408) = *a6;
  *(a9 + 424) = v27;
  *(a9 + 440) = a6[2];
  *(a9 + 456) = v12;
  v28 = *(type metadata accessor for WantListAddEvent.Model(0) + 44);
  v29 = sub_1E1150();
  v30 = *(*(v29 - 8) + 32);

  return v30(a9 + v28, a8, v29);
}

unint64_t sub_C5FA0()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6974736567677573;
  if (v1 != 6)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x61446C6C65537075;
  if (v1 != 4)
  {
    v4 = 0x6144736569726573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_C60CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_C8184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C60F4(uint64_t a1)
{
  v2 = sub_C6820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C6130(uint64_t a1)
{
  v2 = sub_C6820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListAddEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284A70, &qword_1F52B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_C6820();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v96 = *(v3 + 32);
  v97 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v98 = *(v3 + 64);
  v99 = v14;
  v15 = *(v3 + 16);
  v95[0] = *v3;
  v95[1] = v15;
  v91 = v96;
  v92 = v13;
  v16 = *(v3 + 80);
  v93 = v98;
  v94 = v16;
  v89 = v95[0];
  v90 = v12;
  v88 = 0;
  sub_13A5C(v95, &v72);
  sub_143D0();
  sub_1E1CF0();
  if (v2)
  {
    v74 = v91;
    v75 = v92;
    v76 = v93;
    v77 = v94;
    v72 = v89;
    v73 = v90;
    sub_14424(&v72);
  }

  else
  {
    v84[2] = v91;
    v84[3] = v92;
    v84[4] = v93;
    v84[5] = v94;
    v84[0] = v89;
    v84[1] = v90;
    sub_14424(v84);
    v17 = *(v3 + 112);
    v18 = *(v3 + 144);
    v86 = *(v3 + 128);
    *v87 = v18;
    v19 = *(v3 + 112);
    v85[0] = *(v3 + 96);
    v85[1] = v19;
    v20 = *(v3 + 144);
    v82 = v86;
    v83[0] = v20;
    *&v87[13] = *(v3 + 157);
    *(v83 + 13) = *(v3 + 157);
    v80 = v85[0];
    v81 = v17;
    v79 = 1;
    sub_17AA4(v85, &v72, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v70[2] = v82;
    v71[0] = v83[0];
    *(v71 + 13) = *(v83 + 13);
    v70[0] = v80;
    v70[1] = v81;
    sub_18E48(v70, &qword_27FFF0, &unk_1E9C00);
    v21 = *(v3 + 248);
    v76 = *(v3 + 232);
    v77 = v21;
    *v78 = *(v3 + 264);
    *&v78[14] = *(v3 + 278);
    v22 = *(v3 + 184);
    v72 = *(v3 + 168);
    v73 = v22;
    v23 = *(v3 + 216);
    v74 = *(v3 + 200);
    v75 = v23;
    v24 = *(v3 + 248);
    v67 = *(v3 + 232);
    v68 = v24;
    v69[0] = *(v3 + 264);
    *(v69 + 14) = *(v3 + 278);
    v25 = *(v3 + 184);
    v63 = *(v3 + 168);
    v64 = v25;
    v26 = *(v3 + 216);
    v65 = *(v3 + 200);
    v66 = v26;
    v62 = 2;
    sub_17AA4(&v72, v60, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v60[4] = v67;
    v60[5] = v68;
    *v61 = v69[0];
    *&v61[14] = *(v69 + 14);
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v60[3] = v66;
    sub_18E48(v60, &qword_27FFF8, &qword_1F06D0);
    v27 = *(v3 + 336);
    v28 = *(v3 + 304);
    v56 = *(v3 + 320);
    v57 = v27;
    v29 = *(v3 + 336);
    v30 = *(v3 + 368);
    v58 = *(v3 + 352);
    v59 = v30;
    v31 = *(v3 + 304);
    v55[0] = *(v3 + 288);
    v55[1] = v31;
    v51 = v56;
    v52 = v29;
    v32 = *(v3 + 368);
    v53 = v58;
    v54 = v32;
    v49 = v55[0];
    v50 = v28;
    v48 = 3;
    sub_17AA4(v55, v47, &qword_284A68, &qword_1F52B0);
    sub_6EA1C();
    sub_1E1C80();
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_18E48(v47, &qword_284A68, &qword_1F52B0);
    v33 = *(v3 + 400);
    v41 = *(v3 + 384);
    v42 = v33;
    v46 = 4;
    sub_28450();

    sub_1E1C80();

    v34 = *(v3 + 416);
    v35 = *(v3 + 424);
    v36 = *(v3 + 432);
    v37 = *(v3 + 440);
    v38 = *(v3 + 448);
    *&v41 = *(v3 + 408);
    *(&v41 + 1) = v34;
    v42 = v35;
    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = 5;
    sub_13BDC(v41, v34, v35, v36, v37, v38);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v41, *(&v41 + 1), v42, v43, v44, v45);
    LOBYTE(v41) = *(v3 + 456);
    v46 = 6;
    sub_284F8();
    sub_1E1C80();
    v39 = *(type metadata accessor for WantListAddEvent.Model(0) + 44);
    LOBYTE(v41) = 7;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_C6820()
{
  result = qword_284A78;
  if (!qword_284A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284A78);
  }

  return result;
}

uint64_t WantListAddEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1E1150();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_284A80, &qword_1F52C0);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v39);
  v9 = &v33 - v8;
  v10 = type metadata accessor for WantListAddEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v72 = a1;
  sub_48B8(a1, v14);
  sub_C6820();
  v38 = v9;
  v16 = v40;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v72);
  }

  v34 = v10;
  v40 = v6;
  v17 = v37;
  v58 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v62;
  *(v13 + 2) = v61;
  *(v13 + 3) = v18;
  v19 = v64;
  *(v13 + 4) = v63;
  *(v13 + 5) = v19;
  v20 = v60;
  *v13 = v59;
  *(v13 + 1) = v20;
  v53 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v21 = *v57;
  *(v13 + 8) = v56;
  *(v13 + 9) = v21;
  *(v13 + 157) = *&v57[13];
  v22 = v55;
  *(v13 + 6) = v54;
  *(v13 + 7) = v22;
  v52 = 2;
  sub_4FBB8();
  sub_1E1BB0();
  v23 = v70;
  *(v13 + 232) = v69;
  *(v13 + 248) = v23;
  v24 = v66;
  *(v13 + 168) = v65;
  *(v13 + 184) = v24;
  v25 = v68;
  *(v13 + 200) = v67;
  *(v13 + 216) = v25;
  *(v13 + 264) = v71[0];
  *(v13 + 278) = *(v71 + 14);
  v45 = 3;
  sub_6E9C4();
  v26 = v39;
  sub_1E1BB0();
  v27 = v49;
  *(v13 + 20) = v48;
  *(v13 + 21) = v27;
  v28 = v51;
  *(v13 + 22) = v50;
  *(v13 + 23) = v28;
  v29 = v47;
  *(v13 + 18) = v46;
  *(v13 + 19) = v29;
  v44 = 4;
  sub_28EF4();
  sub_1E1BB0();
  v30 = v42;
  *(v13 + 24) = v41;
  *(v13 + 50) = v30;
  v44 = 5;
  sub_DAD8();
  sub_1E1BB0();
  v31 = v42;
  *(v13 + 408) = v41;
  *(v13 + 424) = v31;
  *(v13 + 440) = v43;
  v44 = 6;
  sub_28F9C();
  sub_1E1BB0();
  v13[456] = v41;
  LOBYTE(v41) = 7;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v38, v26);
  (*(v35 + 32))(&v13[*(v34 + 44)], v40, v3);
  sub_C7018(v13, v36);
  sub_4E48(v72);
  return sub_C707C(v13);
}

uint64_t sub_C7018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WantListAddEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C707C(uint64_t a1)
{
  v2 = type metadata accessor for WantListAddEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_C7178@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_284A60, &qword_2061E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

uint64_t sub_C7440(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_15;
  }

  v15 = sub_3D68(&qword_284A60, &qword_2061E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[11];

  return v21(v22, a2, v20);
}

uint64_t sub_C775C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_15;
  }

  v17 = sub_3D68(&qword_284A60, &qword_2061E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v22 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[11];

  return v23(v24, a2, a2, v22);
}

void sub_C7A70()
{
  sub_C7D0C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_C7D0C(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_C7D0C(319, &qword_2800E0, sub_4FBB8, sub_4F070);
      if (v2 <= 0x3F)
      {
        sub_C7D0C(319, &unk_284AF0, sub_6E9C4, sub_6EA1C);
        if (v3 <= 0x3F)
        {
          sub_C7D0C(319, &qword_27EAE8, sub_28EF4, sub_28450);
          if (v4 <= 0x3F)
          {
            sub_C7D0C(319, &qword_27DE18, sub_DAD8, sub_D57C);
            if (v5 <= 0x3F)
            {
              sub_C7D0C(319, &unk_27EAF8, sub_28F9C, sub_284F8);
              if (v6 <= 0x3F)
              {
                sub_5684();
                if (v7 <= 0x3F)
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

void sub_C7D0C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_C7D9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_C7E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C7F00()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_284BA0);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_27EBC8);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_27E398);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_27EBD8);
            if (v5 <= 0x3F)
            {
              sub_1E1150();
              if (v6 <= 0x3F)
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

unint64_t sub_C8080()
{
  result = qword_284BE8;
  if (!qword_284BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284BE8);
  }

  return result;
}

unint64_t sub_C80D8()
{
  result = qword_284BF0;
  if (!qword_284BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284BF0);
  }

  return result;
}

unint64_t sub_C8130()
{
  result = qword_284BF8;
  if (!qword_284BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284BF8);
  }

  return result;
}

uint64_t sub_C8184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215B60 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

BookAnalytics::MessageType_optional __swiftcall MessageType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260758;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t MessageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7542656E694C6E69;
  v3 = 0x4279616C7265766FLL;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0x72656E6E6162;
  if (v1 != 3)
  {
    v4 = 0x7473616F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C62627562;
  if (v1 != 1)
  {
    v5 = 0x6142656E694C6E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_C8598()
{
  result = qword_284C00;
  if (!qword_284C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C00);
  }

  return result;
}

uint64_t sub_C85F8()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_C872C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6262;
  v4 = 0x7542656E694C6E69;
  v5 = 0xED0000656C626275;
  v6 = 0x4279616C7265766FLL;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6162;
  if (v2 != 3)
  {
    v8 = 0x7473616F74;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656C62627562;
  if (v2 != 1)
  {
    v10 = 0x6142656E694C6E69;
    v9 = 0xEC00000072656E6ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_C88DC()
{
  result = qword_284C08;
  if (!qword_284C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C08);
  }

  return result;
}

uint64_t EventReporter.emitGoalStateEvent(using:readingGoalsData:booksGoalsData:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[3];
  *(v6 + 48) = a2[2];
  *(v6 + 64) = v7;
  *(v6 + 73) = *(a2 + 57);
  v8 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v8;
  v9 = *(a3 + 16);
  *(v6 + 96) = *a3;
  *(v6 + 112) = v9;
  *(v6 + 128) = *(a3 + 32);
  v10 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_C8D0C;
  *(v11 + 24) = v6;

  sub_1E10C0();
}

uint64_t sub_C8A18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 != 3)
  {
    *&v17[24] = *(a2 + 3);
    v18 = *(a2 + 5);
    v19 = *(a2 + 7);
    v20 = *(a2 + 72);
    *&v17[8] = *(a2 + 1);
    *v17 = v4;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v5 = sub_1E0CB0();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E9970;
    (*(v6 + 104))(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_C9598();
    sub_1E0C00();
  }

  if ((*(a3 + 32) & 1) == 0)
  {
    v10 = *(a3 + 16);
    *v17 = *a3;
    *&v17[16] = v10;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v11 = sub_1E0CB0();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E9970;
    (*(v12 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v11);
    sub_C9544();
    sub_1E0C00();
  }

  type metadata accessor for GoalStateEvent(0);
  sub_C94FC(&qword_284C40, type metadata accessor for GoalStateEvent);
  memset(v17, 0, 32);
  sub_1E0C10();
  return sub_4C1B8(v17);
}

uint64_t EventReporter.emitReadingGoalReachedEvent(using:dailyGoalsReachedData:yearlyGoalsReachedData:)(uint64_t a1, char *a2, char *a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_C9344;
  *(v10 + 24) = v8;

  sub_1E10C0();
}

uint64_t sub_C8DF8(uint64_t a1, char a2, uint64_t a3)
{
  LOBYTE(v12[0]) = a2;
  *(&v12[0] + 1) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v3 = sub_1E0CB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  v8 = enum case for DataEventTrait.onlyOnce(_:);
  v9 = *(v4 + 104);
  v9(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v3);
  sub_C9454();
  sub_1E0C00();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v9(v10 + v6, v8, v3);
  sub_C94A8();
  sub_1E0C00();

  type metadata accessor for ReadingGoalReachedEvent(0);
  sub_C94FC(&qword_284C38, type metadata accessor for ReadingGoalReachedEvent);
  memset(v12, 0, sizeof(v12));
  sub_1E0C10();
  return sub_4C1B8(v12);
}

uint64_t EventReporter.emitReadingGoalChangedEvent(using:durationData:yearlyData:)(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *a2;
  v4 = swift_allocObject();
  *(v4 + 16) = v9;
  *(v4 + 32) = v8;
  v5 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_C9368;
  *(v6 + 24) = v4;

  sub_1E10C0();
}

uint64_t sub_C9110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v12[0] = a2;
  *(&v12[0] + 1) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v3 = sub_1E0CB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  v8 = enum case for DataEventTrait.onlyOnce(_:);
  v9 = *(v4 + 104);
  v9(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v3);
  sub_C93AC();
  sub_1E0C00();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v9(v10 + v6, v8, v3);
  sub_C9400();
  sub_1E0C00();

  type metadata accessor for ReadingGoalChangedEvent(0);
  sub_C94FC(&qword_284C20, type metadata accessor for ReadingGoalChangedEvent);
  memset(v12, 0, sizeof(v12));
  sub_1E0C10();
  return sub_4C1B8(v12);
}

uint64_t sub_C9344(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  return sub_C8DF8(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_C9368(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_C9110(a1, v1[2], v1[3]);
}

uint64_t sub_C9374()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_C93AC()
{
  result = qword_284C10;
  if (!qword_284C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C10);
  }

  return result;
}

unint64_t sub_C9400()
{
  result = qword_284C18;
  if (!qword_284C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C18);
  }

  return result;
}

unint64_t sub_C9454()
{
  result = qword_284C28;
  if (!qword_284C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C28);
  }

  return result;
}

unint64_t sub_C94A8()
{
  result = qword_284C30;
  if (!qword_284C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C30);
  }

  return result;
}

uint64_t sub_C94FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C9544()
{
  result = qword_284C48;
  if (!qword_284C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C48);
  }

  return result;
}

unint64_t sub_C9598()
{
  result = qword_284C50;
  if (!qword_284C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C50);
  }

  return result;
}

uint64_t static ContentSettingsData.data(bookmarkCount:noteCount:highlightCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = BARoundIntegerToSignificantFigures(a1, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = BARoundIntegerToSignificantFigures(a3, 2);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result <= 0x7FFFFFFF)
  {
    *a4 = v8;
    a4[1] = v9;
    a4[2] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t GiftFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.giftFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 28);
  v4 = sub_3D68(&qword_284C88, &qword_1F5630);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.giftFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 28);
  v4 = sub_3D68(&qword_284C88, &qword_1F5630);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GiftFailEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_284C88, &qword_1F5630);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GiftFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftFailEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftFailEvent.Model.init(contentData:contentStoreData:contentExposureData:giftFailData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  v9 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  v11 = *(a2 + 48);
  *(a6 + 128) = *(a2 + 32);
  *(a6 + 144) = v11;
  v12 = *(a2 + 16);
  *(a6 + 96) = *a2;
  *(a6 + 112) = v12;
  v13 = a6 + 168;
  v14 = *(a3 + 80);
  *(a6 + 232) = *(a3 + 64);
  *(a6 + 248) = v14;
  *(v13 + 96) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(a6 + 168) = *a3;
  *(a6 + 184) = v15;
  v16 = *(a3 + 48);
  *(a6 + 200) = *(a3 + 32);
  v17 = *a4;
  *(a6 + 157) = *(a2 + 61);
  *(v13 + 110) = *(a3 + 110);
  *(a6 + 216) = v16;
  *(a6 + 286) = v17;
  v18 = *(type metadata accessor for GiftFailEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_CA068()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000013;
  v4 = 0x6C69614674666967;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_CA124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CB9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CA14C(uint64_t a1)
{
  v2 = sub_CA6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CA188(uint64_t a1)
{
  v2 = sub_CA6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftFailEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_284C90, &qword_1F5638);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_CA6AC();
  v9 = v4;
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v71 = *(v2 + 32);
  v72 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v73 = *(v2 + 64);
  v74 = v13;
  v14 = *(v2 + 16);
  v70[0] = *v2;
  v70[1] = v14;
  v66 = v71;
  v67 = v12;
  v15 = *(v2 + 80);
  v68 = v73;
  v69 = v15;
  v64 = v70[0];
  v65 = v11;
  v63 = 0;
  sub_13A5C(v70, &v46);
  sub_143D0();
  v16 = v7;
  v17 = v31;
  sub_1E1CF0();
  if (v17)
  {
    v48 = v66;
    v49 = v67;
    v50 = v68;
    v51 = v69;
    v46 = v64;
    v47 = v65;
    sub_14424(&v46);
    return (*(v75 + 8))(v7, v9);
  }

  else
  {
    v19 = v75;
    v58[2] = v66;
    v58[3] = v67;
    v58[4] = v68;
    v58[5] = v69;
    v58[0] = v64;
    v58[1] = v65;
    sub_14424(v58);
    v20 = *(v2 + 128);
    v21 = *(v2 + 96);
    v60 = *(v2 + 112);
    v61 = v20;
    v22 = *(v2 + 128);
    *v62 = *(v2 + 144);
    v59 = *(v2 + 96);
    v23 = *(v2 + 144);
    v56 = v22;
    v57[0] = v23;
    *&v62[13] = *(v2 + 157);
    *(v57 + 13) = *(v2 + 157);
    v54 = v21;
    v55 = v60;
    v53 = 1;
    sub_17AA4(&v59, &v46, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v44[2] = v56;
    v45[0] = v57[0];
    *(v45 + 13) = *(v57 + 13);
    v44[0] = v54;
    v44[1] = v55;
    sub_18E48(v44, &qword_27FFF0, &unk_1E9C00);
    v24 = *(v2 + 248);
    v50 = *(v2 + 232);
    v51 = v24;
    *v52 = *(v2 + 264);
    *&v52[14] = *(v2 + 278);
    v25 = *(v2 + 184);
    v46 = *(v2 + 168);
    v47 = v25;
    v26 = *(v2 + 216);
    v48 = *(v2 + 200);
    v49 = v26;
    v27 = *(v2 + 248);
    v41 = *(v2 + 232);
    v42 = v27;
    v43[0] = *(v2 + 264);
    *(v43 + 14) = *(v2 + 278);
    v28 = *(v2 + 184);
    v37 = *(v2 + 168);
    v38 = v28;
    v29 = *(v2 + 216);
    v39 = *(v2 + 200);
    v40 = v29;
    v36 = 2;
    sub_17AA4(&v46, v34, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v34[4] = v41;
    v34[5] = v42;
    *v35 = v43[0];
    *&v35[14] = *(v43 + 14);
    v34[0] = v37;
    v34[1] = v38;
    v34[2] = v39;
    v34[3] = v40;
    sub_18E48(v34, &qword_27FFF8, &qword_1F06D0);
    v33 = *(v2 + 286);
    v32 = 3;
    sub_CA700();
    sub_1E1CF0();
    v30 = *(type metadata accessor for GiftFailEvent.Model(0) + 32);
    v33 = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v19 + 8))(v16, v9);
  }
}

unint64_t sub_CA6AC()
{
  result = qword_284C98;
  if (!qword_284C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284C98);
  }

  return result;
}

unint64_t sub_CA700()
{
  result = qword_284CA0;
  if (!qword_284CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284CA0);
  }

  return result;
}

uint64_t GiftFailEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1E1150();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_284CA8, &qword_1F5640);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for GiftFailEvent.Model(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  v54 = a1;
  sub_48B8(a1, v13);
  sub_CA6AC();
  v14 = v34;
  sub_1E1DF0();
  if (v14)
  {
    return sub_4E48(v54);
  }

  v28 = v8;
  v34 = v5;
  v15 = v32;
  v47 = 0;
  sub_14CB8();
  v16 = v33;
  sub_1E1C20();
  v17 = v51;
  *(v11 + 2) = v50;
  *(v11 + 3) = v17;
  v18 = v53;
  *(v11 + 4) = v52;
  *(v11 + 5) = v18;
  v19 = v49;
  *v11 = v48;
  *(v11 + 1) = v19;
  v46 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v20 = v45[0];
  *(v11 + 8) = v44[4];
  *(v11 + 9) = v20;
  *(v11 + 157) = *(v45 + 13);
  v21 = v44[3];
  *(v11 + 6) = v44[2];
  *(v11 + 7) = v21;
  v37 = 2;
  sub_4FBB8();
  sub_1E1BB0();
  v22 = v15;
  v23 = v43;
  *(v11 + 232) = v42;
  *(v11 + 248) = v23;
  v24 = v39;
  *(v11 + 168) = v38;
  *(v11 + 184) = v24;
  v25 = v41;
  *(v11 + 200) = v40;
  *(v11 + 216) = v25;
  *(v11 + 264) = v44[0];
  *(v11 + 278) = *(v44 + 14);
  v35 = 3;
  sub_CAC84();
  sub_1E1C20();
  v11[286] = v36;
  v36 = 4;
  sub_14E5C(&qword_27D830);
  v26 = v31;
  sub_1E1C20();
  (*(v22 + 8))(0, v16);
  (*(v29 + 32))(&v11[*(v28 + 32)], v34, v26);
  sub_CACD8(v11, v30);
  sub_4E48(v54);
  return sub_CAD3C(v11);
}

unint64_t sub_CAC84()
{
  result = qword_284CB0;
  if (!qword_284CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284CB0);
  }

  return result;
}

uint64_t sub_CACD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CAD3C(uint64_t a1)
{
  v2 = type metadata accessor for GiftFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CAE38@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_284C88, &qword_1F5630);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_CB01C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_284C88, &qword_1F5630);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_CB23C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
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

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_284C88, &qword_1F5630);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_CB454()
{
  sub_CB600(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_CB600(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_CB600(319, &qword_2800E0, sub_4FBB8, sub_4F070);
      if (v2 <= 0x3F)
      {
        sub_CB600(319, &unk_284D20, sub_CAC84, sub_CA700);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_CB600(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_CB690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CB750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CB7F4()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8);
    if (v1 <= 0x3F)
    {
      sub_1E1150();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_CB8DC()
{
  result = qword_284E00;
  if (!qword_284E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E00);
  }

  return result;
}

unint64_t sub_CB934()
{
  result = qword_284E08;
  if (!qword_284E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E08);
  }

  return result;
}

unint64_t sub_CB98C()
{
  result = qword_284E10;
  if (!qword_284E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E10);
  }

  return result;
}

uint64_t sub_CB9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69614674666967 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

BookAnalytics::AltType_optional __swiftcall AltType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260820;
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

uint64_t AltType.rawValue.getter()
{
  v1 = 0x65536E4965726F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65536E497478656ELL;
  }
}

uint64_t sub_CBC68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65536E4965726F6DLL;
  v4 = 0xE700000000000000;
  if (v2 == 1)
  {
    v4 = 0xEC00000073656972;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65536E497478656ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000073656972;
  }

  v7 = 0x65536E4965726F6DLL;
  v8 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v8 = 0xEC00000073656972;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65536E497478656ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000073656972;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_CBD6C()
{
  result = qword_284E18;
  if (!qword_284E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E18);
  }

  return result;
}

Swift::Int sub_CBDC0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_CBE68()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_CBEFC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_CBFAC(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073656972;
  v3 = *v1;
  v4 = 0x65536E4965726F6DLL;
  v5 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xEC00000073656972;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65536E497478656ELL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_CC0D0()
{
  result = qword_284E20;
  if (!qword_284E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E20);
  }

  return result;
}

uint64_t ToolTipEvent.toolTipData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ToolTipEvent.toolTipData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ToolTipEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolTipEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolTipEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolTipEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_284E58, &qword_1F5970);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ToolTipEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t ToolTipEvent.Model.pageData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_178BC(v2, v3, v4, v5);
}

uint64_t ToolTipEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolTipEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolTipEvent.Model.init(toolTipData:pageData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  v8 = a2[1];
  *(a4 + 32) = *a2;
  *(a4 + 48) = v8;
  v9 = *(type metadata accessor for ToolTipEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t sub_CC824()
{
  v1 = 0x6174614465676170;
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
    return 0x447069546C6F6F74;
  }
}

uint64_t sub_CC88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CDA94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CC8B4(uint64_t a1)
{
  v2 = sub_CCB70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CC8F0(uint64_t a1)
{
  v2 = sub_CCB70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolTipEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_284E60, &qword_1F5978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_CCB70();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v21 = *v3;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v20 = 0;
  sub_CCBC4();

  sub_1E1CF0();

  if (!v2)
  {
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[7];
    v21 = v3[4];
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v20 = 1;
    sub_178BC(v21, v14, v15, v16);
    sub_18598();
    sub_1E1C80();
    sub_185EC(v21, v22, v23, v24);
    v17 = *(type metadata accessor for ToolTipEvent.Model(0) + 24);
    LOBYTE(v21) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_CCB70()
{
  result = qword_284E68;
  if (!qword_284E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E68);
  }

  return result;
}

unint64_t sub_CCBC4()
{
  result = qword_284E70;
  if (!qword_284E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E70);
  }

  return result;
}

uint64_t ToolTipEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_284E78, &qword_1F5980);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ToolTipEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  sub_48B8(a1, v16);
  sub_CCB70();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v29);
  }

  v18 = v27;
  v19 = v15;
  v24 = v7;
  v32 = 0;
  sub_CCFB0();
  v20 = v28;
  sub_1E1C20();
  v21 = v31;
  *v19 = v30;
  *(v19 + 1) = v21;
  v32 = 1;
  sub_18F50();
  sub_1E1BB0();
  v22 = v31;
  *(v19 + 2) = v30;
  *(v19 + 3) = v22;
  LOBYTE(v30) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v20);
  (*(v25 + 32))(&v19[*(v12 + 24)], v24, v4);
  sub_CD004(v19, v26);
  sub_4E48(v29);
  return sub_CD068(v19);
}

unint64_t sub_CCFB0()
{
  result = qword_284E80;
  if (!qword_284E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284E80);
  }

  return result;
}

uint64_t sub_CD004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolTipEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CD068(uint64_t a1)
{
  v2 = type metadata accessor for ToolTipEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CD164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_284E58, &qword_1F5970);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_CD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_284E58, &qword_1F5970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
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

uint64_t sub_CD428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_284E58, &qword_1F5970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E480, &unk_1E71C0);
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

void sub_CD598()
{
  sub_CD6A4(319, &unk_284EF0, sub_CCFB0, sub_CCBC4);
  if (v0 <= 0x3F)
  {
    sub_CD6A4(319, &qword_27E580, sub_18F50, sub_18598);
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

void sub_CD6A4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_CD734(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_CD7F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_CD898()
{
  sub_CD92C();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_CD92C()
{
  if (!qword_27E640)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E640);
    }
  }
}

unint64_t sub_CD990()
{
  result = qword_284FC0;
  if (!qword_284FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FC0);
  }

  return result;
}

unint64_t sub_CD9E8()
{
  result = qword_284FC8;
  if (!qword_284FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FC8);
  }

  return result;
}

unint64_t sub_CDA40()
{
  result = qword_284FD0;
  if (!qword_284FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FD0);
  }

  return result;
}

uint64_t sub_CDA94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x447069546C6F6F74 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
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

uint64_t static SuggestionData.== infix(_:_:)(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = OdpSuggestionType.rawValue.getter();
  v4 = v3;
  if (v2 == OdpSuggestionType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1D30();
  }

  return v7 & 1;
}

uint64_t sub_CDC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000215BF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E1D30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_CDD04(uint64_t a1)
{
  v2 = sub_CE064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CDD40(uint64_t a1)
{
  v2 = sub_CE064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SuggestionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_284FD8, &qword_1F5B88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_CE064();
  sub_1E1E00();
  v12 = v8;
  sub_CE0B8();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SuggestionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_284FF0, &qword_1F5B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_CE064();
  sub_1E1DF0();
  if (!v2)
  {
    sub_CE10C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_CE064()
{
  result = qword_284FE0;
  if (!qword_284FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FE0);
  }

  return result;
}

unint64_t sub_CE0B8()
{
  result = qword_284FE8;
  if (!qword_284FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FE8);
  }

  return result;
}

unint64_t sub_CE10C()
{
  result = qword_284FF8;
  if (!qword_284FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_284FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OdpSuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OdpSuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_CE2CC()
{
  result = qword_285000;
  if (!qword_285000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285000);
  }

  return result;
}

unint64_t sub_CE324()
{
  result = qword_285008;
  if (!qword_285008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285008);
  }

  return result;
}

unint64_t sub_CE37C()
{
  result = qword_285010;
  if (!qword_285010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285010);
  }

  return result;
}

uint64_t EventReporter.emitPurchaseAttemptEvent(using:contentData:purchaseData:upSellData:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_CE8AC;
  *(v10 + 24) = v8;
  v11 = a4;

  v12 = a2;
  v13 = a3;
  sub_1E10C0();
}

uint64_t sub_CE4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_A3F08(&v23);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = *(v6 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v21 = *(v6 + 104);
  v21(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v28;
  v29[0] = v23;
  v29[1] = v24;
  v29[2] = v25;
  sub_14424(v29);
  v10 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v11 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v11 >= 3)
  {
    *&v23 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v12 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v13 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v14 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v15 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v23 = v12;
    *(&v23 + 1) = v10;
    LOBYTE(v24) = v11;
    BYTE1(v24) = v13;
    *(&v24 + 1) = v14;
    *&v25 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E9970;
    v21(v16 + v7, v9, v5);
    sub_D1234();

    sub_1E0C00();

    if (a4)
    {
      v17 = a4;
      sub_A7638(&v23);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E9970;
      v21(v18 + v7, v9, v5);
      sub_92BEC();
      sub_1E0C00();
    }

    type metadata accessor for PurchaseAttemptEvent(0);
    sub_D1440(&qword_285038, type metadata accessor for PurchaseAttemptEvent);
    v23 = 0u;
    v24 = 0u;
    sub_1E0C10();
    return sub_18E48(&v23, &unk_281B50, &unk_1EDD70);
  }

  return result;
}

uint64_t EventReporter.emitPurchaseSuccessEvent(using:contentData:purchaseData:upSellData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_CEA0C, 0, 0);
}

uint64_t sub_CEA0C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_CEB08;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CEB08()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_D14B4, 0, 0);
}

uint64_t sub_CEC20(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_3D68(&qword_282650, &qword_1EFF18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  (*(v11 + 16))(&v23 - v13, a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  v17 = *(a2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_D13BC;
  *(v18 + 24) = v16;
  v19 = a5;

  v20 = a3;
  v21 = a4;
  sub_1E10C0();
}

uint64_t sub_CEDD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_A3F08(&v23);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = *(v6 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v21 = *(v6 + 104);
  v21(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v28;
  v29[0] = v23;
  v29[1] = v24;
  v29[2] = v25;
  sub_14424(v29);
  v10 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v11 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v11 >= 3)
  {
    *&v23 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v12 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v13 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v14 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v15 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v23 = v12;
    *(&v23 + 1) = v10;
    LOBYTE(v24) = v11;
    BYTE1(v24) = v13;
    *(&v24 + 1) = v14;
    *&v25 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E9970;
    v21(v16 + v7, v9, v5);
    sub_D1234();

    sub_1E0C00();

    if (a4)
    {
      v17 = a4;
      sub_A7638(&v23);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E9970;
      v21(v18 + v7, v9, v5);
      sub_92BEC();
      sub_1E0C00();
    }

    type metadata accessor for PurchaseSuccessEvent(0);
    sub_D1440(&qword_285030, type metadata accessor for PurchaseSuccessEvent);
    v23 = 0u;
    v24 = 0u;
    sub_1E0C10();
    sub_18E48(&v23, &unk_281B50, &unk_1EDD70);
    sub_3D68(&qword_282650, &qword_1EFF18);
    return sub_1E18E0();
  }

  return result;
}

uint64_t sub_CF3A0(void *a1, void *a2, void *a3, void *a4, void *aBlock)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a4;
  v11 = a1;
  v12 = a2;
  v13 = a3;

  return _swift_task_switch(sub_CF448, 0, 0);
}

uint64_t sub_CF448()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_CF544;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CF544()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_CF65C, 0, 0);
}

uint64_t sub_CF65C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t EventReporter.emitPurchaseFailEvent(using:contentData:purchaseData:upSellData:failData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_CF718, 0, 0);
}

uint64_t sub_CF718()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_CF824;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_CF824()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_8E280, 0, 0);
}

uint64_t sub_CF93C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v26 = a2;
  v11 = sub_3D68(&qword_282650, &qword_1EFF18);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  (*(v12 + 16))(&v25 - v14, a1, v11);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a6;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = *(v26 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_D11B0;
  *(v19 + 24) = v17;
  v20 = a6;

  v21 = a3;
  v22 = a4;
  v23 = a5;
  sub_1E10C0();
}

uint64_t sub_CFB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_A3F08(&v25);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v6 = sub_1E0CB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v24 = enum case for DataEventTrait.onlyOnce(_:);
  v23 = *(v7 + 104);
  v23(v10 + v9);
  sub_4C164();
  sub_1E0C00();

  v31[2] = v27;
  v31[3] = v28;
  v31[4] = v29;
  v31[5] = v30;
  v31[0] = v25;
  v31[1] = v26;
  sub_14424(v31);
  v11 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID + 8);
  v12 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);
  if (v12 >= 3)
  {
    *&v25 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseMethod);

    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v13 = *(a3 + OBJC_IVAR___BAPurchaseData_purchaseAttemptID);
    v14 = *(a3 + OBJC_IVAR___BAPurchaseData_isPreorder);
    v15 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters);
    v16 = *(a3 + OBJC_IVAR___BAPurchaseData_pricingParameters + 8);
    *&v25 = v13;
    *(&v25 + 1) = v11;
    LOBYTE(v26) = v12;
    BYTE1(v26) = v14;
    *(&v26 + 1) = v15;
    *&v27 = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E9970;
    (v23)(v17 + v9, v24, v6);
    sub_D1234();

    sub_1E0C00();

    sub_A62C0(&v25);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E9970;
    (v23)(v18 + v9, v24, v6);
    sub_D1288();
    sub_1E0C00();

    if (a5)
    {
      v19 = a5;
      sub_A7638(&v25);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1E9970;
      (v23)(v20 + v9, v24, v6);
      sub_92BEC();
      sub_1E0C00();
    }

    type metadata accessor for PurchaseFailEvent(0);
    sub_D1440(&qword_285028, type metadata accessor for PurchaseFailEvent);
    v25 = 0u;
    v26 = 0u;
    sub_1E0C10();
    sub_18E48(&v25, &unk_281B50, &unk_1EDD70);
    sub_3D68(&qword_282650, &qword_1EFF18);
    return sub_1E18E0();
  }

  return result;
}

uint64_t sub_D01A8(void *a1, void *a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v6[5] = a4;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a4;
  v13 = a5;
  v14 = a1;
  v15 = a2;
  v16 = a3;

  return _swift_task_switch(sub_D025C, 0, 0);
}

uint64_t sub_D025C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_D0368;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_D0368()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_D0480, 0, 0);
}

uint64_t sub_D0480()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_D0530()
{
  _Block_release(*(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_D0598()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_7E674;

  return sub_D01A8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_D0674(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_92C90;

  return v7();
}

uint64_t sub_D0760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_7E674;

  return v8();
}

uint64_t sub_D0848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3D68(&qword_287EC0, &qword_205170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_D0B34(a3, v25 - v11);
  v13 = sub_1E1900();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_18E48(v12, &qword_287EC0, &qword_205170);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E18F0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1E18D0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1E17A0() + 32;
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

    sub_18E48(a3, &qword_287EC0, &qword_205170);

    return v23;
  }

LABEL_8:
  sub_18E48(a3, &qword_287EC0, &qword_205170);
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

uint64_t sub_D0B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287EC0, &qword_205170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D0BA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_D0C9C;

  return v7(a1);
}

uint64_t sub_D0C9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_D0D94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D0DCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_92C90;

  return sub_D0BA4(a1, v5);
}

uint64_t sub_D0E84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7E674;

  return sub_D0BA4(a1, v5);
}

uint64_t sub_D0F4C()
{
  _Block_release(*(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_D0FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_92C90;

  return sub_CF3A0(v2, v3, v4, v5, v7);
}

uint64_t sub_D1080()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D10C8()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D11B0(uint64_t a1)
{
  v3 = *(*(sub_3D68(&qword_282650, &qword_1EFF18) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_CFB04(a1, v4, v5, v6, v7);
}

unint64_t sub_D1234()
{
  result = qword_285018;
  if (!qword_285018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285018);
  }

  return result;
}

unint64_t sub_D1288()
{
  result = qword_285020;
  if (!qword_285020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285020);
  }

  return result;
}

uint64_t sub_D12DC()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_D13BC(uint64_t a1)
{
  v3 = *(*(sub_3D68(&qword_282650, &qword_1EFF18) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_CEDD8(a1, v4, v5, v6);
}

uint64_t sub_D1440(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall CampaignData.init(campaignId:fCampaignToken:fAffiliateId:fItsCampaignToken:fItsCampaignGroup:)(BookAnalytics::CampaignData *__return_ptr retstr, Swift::String_optional campaignId, Swift::String_optional fCampaignToken, Swift::String_optional fAffiliateId, Swift::String_optional fItsCampaignToken, Swift::String_optional fItsCampaignGroup)
{
  retstr->campaignId = campaignId;
  retstr->fCampaignToken = fCampaignToken;
  retstr->fAffiliateId = fAffiliateId;
  retstr->fItsCampaignToken = fItsCampaignToken;
  retstr->fItsCampaignGroup = fItsCampaignGroup;
}

unint64_t sub_D14DC()
{
  v1 = 0x6E676961706D6163;
  v2 = 0x61696C6966664166;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x676961706D614366;
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

uint64_t sub_D1598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D2208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D15C0(uint64_t a1)
{
  v2 = sub_D1E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D15FC(uint64_t a1)
{
  v2 = sub_D1E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285040, &qword_1F5E18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D1E94();
  sub_1E1E00();
  v22 = 0;
  v15 = v17[9];
  sub_1E1C50();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1E1C50();
  v20 = 2;
  sub_1E1C50();
  v19 = 3;
  sub_1E1C50();
  v18 = 4;
  sub_1E1C50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CampaignData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_285050, &qword_1F5E20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D1E94();
  sub_1E1DF0();
  if (v2)
  {
    v36 = v2;
    sub_4E48(a1);
    v42 = 0uLL;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    LOBYTE(v42) = 0;
    *&v35 = sub_1E1B80();
    *(&v35 + 1) = v12;
    LOBYTE(v42) = 1;
    v13 = sub_1E1B80();
    v32 = a2;
    v34 = v13;
    v33 = v14;
    LOBYTE(v42) = 2;
    v15 = sub_1E1B80();
    v17 = v16;
    LOBYTE(v42) = 3;
    v18 = sub_1E1B80();
    v20 = v19;
    v51 = 4;
    v21 = sub_1E1B80();
    v36 = 0;
    v22 = v21;
    v23 = v9;
    v25 = v24;
    (*(v6 + 8))(v23, v5);
    v26 = v35;
    v37 = v35;
    v27 = v33;
    *&v38 = v34;
    *(&v38 + 1) = v33;
    *&v39 = v15;
    *(&v39 + 1) = v17;
    *&v40 = v18;
    *(&v40 + 1) = v20;
    *&v41 = v22;
    *(&v41 + 1) = v25;
    v28 = v40;
    v29 = v32;
    v32[2] = v39;
    v29[3] = v28;
    v29[4] = v41;
    v30 = v38;
    *v29 = v37;
    v29[1] = v30;
    sub_D1F18(&v37, &v42);
    sub_4E48(a1);
    v42 = __PAIR128__(*(&v35 + 1), v26);
    v43 = v34;
    v44 = v27;
    v45 = v15;
    v46 = v17;
    v47 = v18;
    v48 = v20;
    v49 = v22;
    v50 = v25;
  }

  return sub_D1EE8(&v42);
}

uint64_t _s13BookAnalytics12CampaignDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_1E1D30();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_1E1D30();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_1E1D30();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_1E1D30();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_1E1D30() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_D1E94()
{
  result = qword_285048;
  if (!qword_285048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285048);
  }

  return result;
}

unint64_t sub_D1F54()
{
  result = qword_285058;
  if (!qword_285058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285058);
  }

  return result;
}

unint64_t sub_D1FAC()
{
  result = qword_285060;
  if (!qword_285060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285060);
  }

  return result;
}

__n128 sub_D2000(uint64_t a1, uint64_t a2)
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

uint64_t sub_D201C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_D2078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_D2104()
{
  result = qword_285068;
  if (!qword_285068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285068);
  }

  return result;
}

unint64_t sub_D215C()
{
  result = qword_285070;
  if (!qword_285070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285070);
  }

  return result;
}

unint64_t sub_D21B4()
{
  result = qword_285078;
  if (!qword_285078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285078);
  }

  return result;
}

uint64_t sub_D2208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676961706D614366 && a2 == 0xEE006E656B6F546ELL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61696C6966664166 && a2 == 0xEC00000064496574 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000215E20 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000215E40 == a2)
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

uint64_t PredictiveSearchSuggestionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PredictiveSearchSuggestionEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_D25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

uint64_t sub_D2634(uint64_t a1)
{
  v2 = sub_D2810();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D2670(uint64_t a1)
{
  v2 = sub_D2810();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PredictiveSearchSuggestionEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_2850B0, &qword_1F6078);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D2810();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_D2810()
{
  result = qword_2850B8;
  if (!qword_2850B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2850B8);
  }

  return result;
}

uint64_t PredictiveSearchSuggestionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_2850C0, &qword_1F6080);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PredictiveSearchSuggestionEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D2810();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_D2AF0(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_D2AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictiveSearchSuggestionEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D2BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D2C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_D2D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_D2DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_D2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_D2ED0()
{
  result = qword_2851E8;
  if (!qword_2851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2851E8);
  }

  return result;
}

unint64_t sub_D2F28()
{
  result = qword_2851F0;
  if (!qword_2851F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2851F0);
  }

  return result;
}

unint64_t sub_D2F80()
{
  result = qword_2851F8;
  if (!qword_2851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2851F8);
  }

  return result;
}

uint64_t ContentDetailsViewEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.maxScrollDepthData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_285230, &qword_1F6298);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.maxScrollDepthData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 28);
  v4 = sub_3D68(&qword_285230, &qword_1F6298);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.altContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.altContentTypeExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 44);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.flowcaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 44);
  v4 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 48);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 48);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.onDevicePersonalizationPropertyData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.onDevicePersonalizationPropertyData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 56);
  v4 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 60);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 60);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 64);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 64);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.dealsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.dealsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 68);
  v4 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 72);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent(0) + 76);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentDetailsViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_285230, &qword_1F6298);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = enum case for EventProperty.required<A>(_:);
  v17 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v17 - 8) + 104))(a1 + v15, v16, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  v29 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  v31 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v31 - 8) + 104))(a1 + v30, v2, v31);
  v32 = v4[18];
  v33 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v33 - 8) + 104))(a1 + v32, v16, v33);
  v34 = v4[19];
  v35 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v36 = *(*(v35 - 8) + 104);

  return v36(a1 + v34, v16, v35);
}

uint64_t ContentDetailsViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_17AA4(v9, &v8, &qword_27FD08, &qword_1E94F0);
}

void ContentDetailsViewEvent.Model.maxScrollDepthData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 292);
  *a1 = *(v1 + 288);
  *(a1 + 4) = v2;
}

uint64_t ContentDetailsViewEvent.Model.altContentTypeExposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 312);
  v7[0] = *(v1 + 296);
  v7[1] = v2;
  v8[0] = *(v1 + 328);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 337);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_17AA4(v7, &v6, &qword_27FFE8, &qword_1FC3D0);
}

uint64_t ContentDetailsViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v3 = *(v1 + 440);
  v20 = *(v1 + 456);
  v21 = v2;
  v4 = *(v1 + 472);
  v22 = *(v1 + 488);
  v5 = *(v1 + 408);
  v7 = *(v1 + 376);
  v16 = *(v1 + 392);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 408);
  v9 = *(v1 + 440);
  v18 = *(v1 + 424);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 376);
  v15[0] = *(v1 + 360);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 488);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 504);
  *(a1 + 144) = *(v1 + 504);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_275C4(v15, v14);
}

uint64_t ContentDetailsViewEvent.Model.flowcaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 560);
  v9 = *(v1 + 544);
  v10 = v2;
  v11 = *(v1 + 576);
  v3 = v11;
  v4 = *(v1 + 528);
  v8[0] = *(v1 + 512);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_282CC0, &qword_1F62B0);
}

uint64_t ContentDetailsViewEvent.Model.pageData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[73];
  v3 = v1[74];
  v4 = v1[75];
  v5 = v1[76];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_178BC(v2, v3, v4, v5);
}

uint64_t ContentDetailsViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 632);
  *a1 = *(v1 + 616);
  *(a1 + 16) = v2;
}

__n128 ContentDetailsViewEvent.Model.onDevicePersonalizationPropertyData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[41].n128_u64[0];
  v3 = v1[41].n128_u8[8];
  result = v1[40];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t ContentDetailsViewEvent.Model.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 672);
  v3 = *(v1 + 680);
  v4 = *(v1 + 688);
  v5 = *(v1 + 696);
  v6 = *(v1 + 704);
  v7 = *(v1 + 712);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 720);
  return sub_4E2A0(v2, v3);
}

uint64_t ContentDetailsViewEvent.Model.dealsData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[91];
  v3 = v1[92];
  v4 = v1[93];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2EBCC(v2, v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent.Model(0) + 72);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewEvent.Model(0) + 76);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewEvent.Model.init(contentData:contentStoreData:contentExposureData:maxScrollDepthData:altContentTypeExposureData:prevAltContentExposureData:linkData:flowcaseData:pageData:upSellData:onDevicePersonalizationPropertyData:suggestionData:uppParentContentData:dealsData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, _OWORD *a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a4;
  v19 = *(a4 + 4);
  v20 = *a6;
  v21 = *(a11 + 16);
  v22 = *(a12 + 16);
  v23 = *(a12 + 24);
  v24 = *a13;
  v25 = *(a14 + 48);
  v26 = *(a15 + 16);
  v27 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v27;
  v28 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v28;
  v29 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v29;
  v30 = *(a2 + 48);
  *(a9 + 128) = *(a2 + 32);
  *(a9 + 144) = v30;
  *(a9 + 157) = *(a2 + 61);
  v31 = *(a2 + 16);
  *(a9 + 96) = *a2;
  *(a9 + 112) = v31;
  v32 = *(a3 + 80);
  *(a9 + 232) = *(a3 + 64);
  *(a9 + 248) = v32;
  *(a9 + 264) = *(a3 + 96);
  *(a9 + 278) = *(a3 + 110);
  v33 = *(a3 + 16);
  *(a9 + 168) = *a3;
  *(a9 + 184) = v33;
  v34 = *(a3 + 48);
  *(a9 + 200) = *(a3 + 32);
  *(a9 + 216) = v34;
  *(a9 + 288) = v18;
  *(a9 + 292) = v19;
  *(a9 + 337) = *(a5 + 41);
  v35 = a5[2];
  *(a9 + 312) = a5[1];
  *(a9 + 328) = v35;
  *(a9 + 296) = *a5;
  *(a9 + 353) = v20;
  v36 = *(a7 + 16);
  *(a9 + 360) = *a7;
  *(a9 + 376) = v36;
  v37 = *(a7 + 80);
  *(a9 + 424) = *(a7 + 64);
  *(a9 + 440) = v37;
  v38 = *(a7 + 48);
  *(a9 + 392) = *(a7 + 32);
  *(a9 + 408) = v38;
  *(a9 + 504) = *(a7 + 144);
  v39 = *(a7 + 128);
  *(a9 + 472) = *(a7 + 112);
  *(a9 + 488) = v39;
  *(a9 + 456) = *(a7 + 96);
  v40 = *(a8 + 48);
  *(a9 + 544) = *(a8 + 32);
  *(a9 + 560) = v40;
  *(a9 + 576) = *(a8 + 64);
  v41 = *(a8 + 16);
  *(a9 + 512) = *a8;
  *(a9 + 528) = v41;
  v42 = a10[1];
  *(a9 + 584) = *a10;
  *(a9 + 600) = v42;
  *(a9 + 616) = *a11;
  *(a9 + 632) = v21;
  *(a9 + 640) = *a12;
  *(a9 + 656) = v22;
  *(a9 + 664) = v23;
  *(a9 + 665) = v24;
  v43 = *(a14 + 16);
  *(a9 + 672) = *a14;
  *(a9 + 688) = v43;
  *(a9 + 704) = *(a14 + 32);
  *(a9 + 720) = v25;
  *(a9 + 728) = *a15;
  *(a9 + 744) = v26;
  v44 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  v45 = *(v44 + 72);
  v46 = sub_1E1150();
  (*(*(v46 - 8) + 32))(a9 + v45, a16, v46);
  v47 = *(v44 + 76);
  v48 = sub_1E11A0();
  v49 = *(*(v48 - 8) + 32);

  return v49(a9 + v47, a17, v48);
}

uint64_t sub_D4FC8(char a1)
{
  result = 0x44746E65746E6F63;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0xD000000000000013;
    case 3:
      return 0xD000000000000012;
    case 4:
      return 0xD00000000000001ALL;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
      v4 = 1802398060;
      return v4 | 0x6174614400000000;
    case 7:
      return 0x65736163776F6C66;
    case 8:
      v4 = 1701273968;
      return v4 | 0x6174614400000000;
    case 9:
      return 0x61446C6C65537075;
    case 10:
      return 0xD000000000000023;
    case 11:
      return 0x6974736567677573;
    case 12:
      return 0xD000000000000014;
    case 13:
      v3 = 0x44736C616564;
      goto LABEL_15;
    case 14:
      v3 = 0x44746E657665;
      goto LABEL_15;
    case 15:
      v3 = 0x4464656D6974;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_D51E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D8A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D5210(uint64_t a1)
{
  v2 = sub_D5E3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D524C(uint64_t a1)
{
  v2 = sub_D5E3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentDetailsViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_285238, &qword_1F62B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D5E3C();
  sub_1E1E00();
  v11 = *(v3 + 48);
  v12 = *(v3 + 16);
  v148 = *(v3 + 32);
  v149 = v11;
  v13 = *(v3 + 48);
  v14 = *(v3 + 80);
  v150 = *(v3 + 64);
  v151 = v14;
  v15 = *(v3 + 16);
  v147[0] = *v3;
  v147[1] = v15;
  v143 = v148;
  v144 = v13;
  v16 = *(v3 + 80);
  v145 = v150;
  v146 = v16;
  v141 = v147[0];
  v142 = v12;
  v140 = 0;
  sub_17AA4(v147, &v94, &qword_27FD08, &qword_1E94F0);
  sub_143D0();
  sub_1E1C80();
  if (v2)
  {
    v96 = v143;
    v97 = v144;
    v98 = v145;
    v99 = v146;
    v94 = v141;
    v95 = v142;
    sub_18E48(&v94, &qword_27FD08, &qword_1E94F0);
  }

  else
  {
    v136[2] = v143;
    v136[3] = v144;
    v136[4] = v145;
    v136[5] = v146;
    v136[0] = v141;
    v136[1] = v142;
    sub_18E48(v136, &qword_27FD08, &qword_1E94F0);
    v17 = *(v3 + 112);
    v18 = *(v3 + 144);
    v138 = *(v3 + 128);
    *v139 = v18;
    v19 = *(v3 + 96);
    v20 = v19;
    v137[1] = *(v3 + 112);
    v137[0] = v19;
    v21 = *(v3 + 144);
    v134 = v138;
    v135[0] = v21;
    *&v139[13] = *(v3 + 157);
    *(v135 + 13) = *(v3 + 157);
    v133 = v17;
    v132 = v20;
    v131 = 1;
    sub_17AA4(v137, &v94, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    sub_1E1C80();
    v127[2] = v134;
    v128[0] = v135[0];
    *(v128 + 13) = *(v135 + 13);
    v127[1] = v133;
    v127[0] = v132;
    sub_18E48(v127, &qword_27FFF0, &unk_1E9C00);
    v22 = *(v3 + 248);
    v129[4] = *(v3 + 232);
    v129[5] = v22;
    *v130 = *(v3 + 264);
    *&v130[14] = *(v3 + 278);
    v23 = *(v3 + 184);
    v129[0] = *(v3 + 168);
    v129[1] = v23;
    v24 = *(v3 + 216);
    v129[2] = *(v3 + 200);
    v129[3] = v24;
    v25 = *(v3 + 248);
    v124 = *(v3 + 232);
    v125 = v25;
    v126[0] = *(v3 + 264);
    *(v126 + 14) = *(v3 + 278);
    v26 = *(v3 + 184);
    v120 = *(v3 + 168);
    v121 = v26;
    v27 = *(v3 + 216);
    v122 = *(v3 + 200);
    v123 = v27;
    v119 = 2;
    sub_17AA4(v129, &v94, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v117[4] = v124;
    v117[5] = v125;
    *v118 = v126[0];
    *&v118[14] = *(v126 + 14);
    v117[0] = v120;
    v117[1] = v121;
    v117[2] = v122;
    v117[3] = v123;
    sub_18E48(v117, &qword_27FFF8, &qword_1F06D0);
    v29 = *(v3 + 292);
    v115 = *(v3 + 288);
    v116 = v29;
    v114 = 3;
    sub_7F394();
    sub_1E1C80();
    v30 = *(v3 + 312);
    v112[0] = *(v3 + 296);
    v112[1] = v30;
    v32 = *(v3 + 296);
    v31 = *(v3 + 312);
    v113[0] = *(v3 + 328);
    *(v113 + 9) = *(v3 + 337);
    v109 = v32;
    v110 = v31;
    v111[0] = *(v3 + 328);
    *(v111 + 9) = *(v3 + 337);
    v108 = 4;
    sub_17AA4(v112, &v94, &qword_27FFE8, &qword_1FC3D0);
    sub_4EFC8();
    sub_1E1C80();
    v106[0] = v109;
    v106[1] = v110;
    *v107 = v111[0];
    *&v107[9] = *(v111 + 9);
    sub_18E48(v106, &qword_27FFE8, &qword_1FC3D0);
    v105 = *(v3 + 353);
    v104 = 5;
    sub_4F0C4();
    sub_1E1C80();
    v33 = *(v3 + 472);
    v34 = *(v3 + 440);
    v100 = *(v3 + 456);
    v101 = v33;
    v35 = *(v3 + 472);
    v102 = *(v3 + 488);
    v36 = *(v3 + 408);
    v37 = *(v3 + 376);
    v96 = *(v3 + 392);
    v97 = v36;
    v38 = *(v3 + 408);
    v39 = *(v3 + 440);
    v98 = *(v3 + 424);
    v99 = v39;
    v40 = *(v3 + 376);
    v94 = *(v3 + 360);
    v95 = v40;
    v90 = v100;
    v91 = v35;
    v92 = *(v3 + 488);
    v86 = v96;
    v87 = v38;
    v88 = v98;
    v89 = v34;
    v103 = *(v3 + 504);
    v93 = *(v3 + 504);
    v84 = v94;
    v85 = v37;
    v83 = 6;
    sub_275C4(&v94, v81);
    sub_18630();
    sub_1E1CF0();
    v81[6] = v90;
    v81[7] = v91;
    v81[8] = v92;
    v82 = v93;
    v81[2] = v86;
    v81[3] = v87;
    v81[4] = v88;
    v81[5] = v89;
    v81[0] = v84;
    v81[1] = v85;
    sub_283A8(v81);
    v41 = *(v3 + 528);
    v42 = *(v3 + 560);
    v78 = *(v3 + 544);
    v79 = v42;
    v43 = *(v3 + 528);
    v77[0] = *(v3 + 512);
    v77[1] = v43;
    v44 = *(v3 + 560);
    v74 = v78;
    v75 = v44;
    v80 = *(v3 + 576);
    v76 = *(v3 + 576);
    v72 = v77[0];
    v73 = v41;
    v71 = 7;
    sub_17AA4(v77, v69, &qword_282CC0, &qword_1F62B0);
    sub_1C860();
    sub_1E1C80();
    v69[2] = v74;
    v69[3] = v75;
    v70 = v76;
    v69[0] = v72;
    v69[1] = v73;
    sub_18E48(v69, &qword_282CC0, &qword_1F62B0);
    v45 = *(v3 + 592);
    v46 = *(v3 + 600);
    v47 = *(v3 + 608);
    *&v62 = *(v3 + 584);
    *(&v62 + 1) = v45;
    v63 = v46;
    v64 = v47;
    v68 = 8;
    sub_178BC(v62, v45, v46, v47);
    sub_18598();
    sub_1E1C80();
    sub_185EC(v62, *(&v62 + 1), v63, v64);
    v48 = *(v3 + 632);
    v62 = *(v3 + 616);
    v63 = v48;
    v68 = 9;
    sub_28450();

    sub_1E1C80();

    v49 = *(v3 + 656);
    v50 = *(v3 + 664);
    v62 = *(v3 + 640);
    v63 = v49;
    LOBYTE(v64) = v50;
    v68 = 10;
    sub_284A4();
    sub_1E1C80();
    LOBYTE(v62) = *(v3 + 665);
    v68 = 11;
    sub_284F8();
    sub_1E1C80();
    v51 = *(v3 + 680);
    v52 = *(v3 + 688);
    v53 = *(v3 + 696);
    v54 = *(v3 + 704);
    v55 = *(v3 + 712);
    v56 = *(v3 + 720);
    *&v62 = *(v3 + 672);
    *(&v62 + 1) = v51;
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    v67 = v56;
    v68 = 12;
    sub_4E2A0(v62, v51);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v62, *(&v62 + 1));
    v57 = *(v3 + 736);
    v58 = *(v3 + 744);
    *&v62 = *(v3 + 728);
    *(&v62 + 1) = v57;
    v63 = v58;
    v68 = 13;
    sub_2EBCC(v62, v57, v58);
    sub_2F834();
    sub_1E1C80();
    sub_2F888(v62, *(&v62 + 1), v63);
    v59 = type metadata accessor for ContentDetailsViewEvent.Model(0);
    v60 = *(v59 + 72);
    LOBYTE(v62) = 14;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v61 = *(v59 + 76);
    LOBYTE(v62) = 15;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_D5E3C()
{
  result = qword_285240;
  if (!qword_285240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285240);
  }

  return result;
}

uint64_t ContentDetailsViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v60 = sub_1E11A0();
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  __chkstk_darwin(v60);
  v59 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_285248, &qword_1F62C0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v12 = v50 - v11;
  v13 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v112 = a1;
  sub_48B8(a1, v18);
  sub_D5E3C();
  v64 = v12;
  v19 = v65;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v112);
  }

  v54 = v8;
  v55 = v13;
  v20 = v62;
  v65 = v16;
  v56 = v5;
  v95 = 0;
  sub_14CB8();
  sub_1E1BB0();
  v21 = v99;
  v22 = v65;
  *(v65 + 2) = v98;
  *(v22 + 3) = v21;
  v23 = v101;
  *(v22 + 4) = v100;
  *(v22 + 5) = v23;
  v24 = v97;
  *v22 = v96;
  *(v22 + 1) = v24;
  v90 = 1;
  sub_4FB64();
  sub_1E1BB0();
  v25 = v92;
  v26 = *v94;
  *(v22 + 8) = v93;
  *(v22 + 9) = v26;
  *(v22 + 157) = *&v94[13];
  *(v22 + 6) = v91;
  *(v22 + 7) = v25;
  v82 = 2;
  sub_4FBB8();
  v53 = 0;
  sub_1E1BB0();
  v27 = v88;
  *(v22 + 232) = v87;
  *(v22 + 248) = v27;
  v28 = v84;
  *(v22 + 168) = v83;
  *(v22 + 184) = v28;
  v29 = v86;
  *(v22 + 200) = v85;
  *(v22 + 216) = v29;
  *(v22 + 264) = *v89;
  *(v22 + 278) = *&v89[14];
  LOBYTE(v72) = 3;
  sub_7F33C();
  sub_1E1BB0();
  v52 = v22 + 168;
  v30 = BYTE4(v102);
  *(v22 + 72) = v102;
  v22[292] = v30;
  v78 = 4;
  sub_4FB10();
  sub_1E1BB0();
  v51 = v22 + 292;
  v31 = v80;
  *(v22 + 296) = v79;
  *(v22 + 312) = v31;
  *(v22 + 328) = *v81;
  *(v22 + 337) = *&v81[9];
  LOBYTE(v72) = 5;
  sub_4FC0C();
  sub_1E1BB0();
  *(v51 + 61) = v102;
  v77 = 6;
  sub_18FA4();
  sub_1E1C20();
  *(v22 + 63) = v111;
  v32 = v109;
  *(v22 + 456) = v108;
  *(v22 + 472) = v32;
  *(v22 + 488) = v110;
  v33 = v105;
  *(v22 + 392) = v104;
  *(v22 + 408) = v33;
  v34 = v107;
  *(v22 + 424) = v106;
  *(v22 + 440) = v34;
  v35 = v103;
  *(v22 + 360) = v102;
  *(v22 + 376) = v35;
  v50[2] = v22 + 360;
  v71 = 7;
  sub_1C808();
  sub_1E1BB0();
  v36 = v75;
  *(v22 + 34) = v74;
  *(v22 + 35) = v36;
  *(v22 + 72) = v76;
  v37 = v73;
  *(v22 + 32) = v72;
  *(v22 + 33) = v37;
  v70 = 8;
  sub_18F50();
  sub_1E1BB0();
  v50[1] = v22 + 296;
  v38 = v51;
  v39 = v67;
  *(v51 + 292) = v66;
  *(v38 + 308) = v39;
  v70 = 9;
  sub_28EF4();
  sub_1E1BB0();
  v40 = v67;
  *(v51 + 324) = v66;
  *(v65 + 79) = v40;
  v70 = 10;
  sub_28F48();
  sub_1E1BB0();
  v41 = v67;
  v42 = BYTE8(v67);
  v43 = v65;
  *(v65 + 40) = v66;
  *(v43 + 82) = v41;
  v43[664] = v42;
  v70 = 11;
  sub_28F9C();
  sub_1E1BB0();
  v65[665] = v66;
  v70 = 12;
  sub_4FC60();
  sub_1E1BB0();
  v44 = v69;
  v45 = v67;
  v46 = v65;
  *(v65 + 42) = v66;
  *(v46 + 43) = v45;
  *(v46 + 44) = v68;
  v46[720] = v44;
  v70 = 13;
  sub_30258();
  sub_1E1BB0();
  v47 = v67;
  *(v51 + 436) = v66;
  *(v65 + 93) = v47;
  LOBYTE(v66) = 14;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v61 + 32))(&v65[*(v55 + 72)], v54, v56);
  LOBYTE(v66) = 15;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v20 + 8))(v64, v63);
  v48 = v65;
  (*(v57 + 32))(&v65[*(v55 + 76)], v59, v60);
  sub_D6CF8(v48, v58);
  sub_4E48(v112);
  return sub_D6D5C(v48);
}

uint64_t sub_D6CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D6D5C(uint64_t a1)
{
  v2 = type metadata accessor for ContentDetailsViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D6E58@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_285230, &qword_1F6298);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = enum case for EventProperty.required<A>(_:);
  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v18 - 8) + 104))(a2 + v16, v17, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  v30 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  v32 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  (*(*(v32 - 8) + 104))(a2 + v31, v4, v32);
  v33 = a1[18];
  v34 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v34 - 8) + 104))(a2 + v33, v17, v34);
  v35 = a1[19];
  v36 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v37 = *(*(v36 - 8) + 104);

  return v37(a2 + v35, v17, v36);
}

uint64_t sub_D7380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_32:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_31:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_32;
  }

  v14 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_31;
  }

  v15 = sub_3D68(&qword_285230, &qword_1F6298);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_31;
  }

  v16 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[15];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v12 = *(v24 - 8);
    v13 = a3[16];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v12 = *(v25 - 8);
    v13 = a3[17];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v12 = *(v26 - 8);
    v13 = a3[18];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[19];

  return v29(v30, a2, v28);
}

uint64_t sub_D793C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_31;
  }

  v17 = sub_3D68(&qword_285230, &qword_1F6298);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_31;
  }

  v18 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v19 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v20 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v21 = sub_3D68(&qword_27EEC8, &unk_1E7C18);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v22 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_31;
  }

  v23 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_31;
  }

  v24 = sub_3D68(&qword_27EA08, &unk_1E71D0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v25 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v26 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v27 = sub_3D68(&qword_27EED0, &qword_1E7C28);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v30 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v31 = *(*(v30 - 8) + 56);
  v32 = a1 + a4[19];

  return v31(v32, a2, a2, v30);
}

void sub_D7EF0()
{
  sub_D83D4(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_D83D4(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_D83D4(319, &qword_2800E0, sub_4FBB8, sub_4F070);
      if (v2 <= 0x3F)
      {
        sub_D83D4(319, &unk_2852B8, sub_7F33C, sub_7F394);
        if (v3 <= 0x3F)
        {
          sub_D83D4(319, &qword_2800D0, sub_4FB10, sub_4EFC8);
          if (v4 <= 0x3F)
          {
            sub_D83D4(319, &qword_2800E8, sub_4FC0C, sub_4F0C4);
            if (v5 <= 0x3F)
            {
              sub_D83D4(319, &unk_27E588, sub_18FA4, sub_18630);
              if (v6 <= 0x3F)
              {
                sub_D83D4(319, &qword_27EF68, sub_1C808, sub_1C860);
                if (v7 <= 0x3F)
                {
                  sub_D83D4(319, &qword_27E580, sub_18F50, sub_18598);
                  if (v8 <= 0x3F)
                  {
                    sub_D83D4(319, &qword_27EAE8, sub_28EF4, sub_28450);
                    if (v9 <= 0x3F)
                    {
                      sub_D83D4(319, &qword_27EAF0, sub_28F48, sub_284A4);
                      if (v10 <= 0x3F)
                      {
                        sub_D83D4(319, &unk_27EAF8, sub_28F9C, sub_284F8);
                        if (v11 <= 0x3F)
                        {
                          sub_D83D4(319, &unk_2800F8, sub_4FC60, sub_4F118);
                          if (v12 <= 0x3F)
                          {
                            sub_D83D4(319, &unk_27EF70, sub_30258, sub_2F834);
                            if (v13 <= 0x3F)
                            {
                              sub_5684();
                              if (v14 <= 0x3F)
                              {
                                sub_5750();
                                if (v15 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_D83D4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_D8464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 368);
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
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_D859C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 368) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_D86C0()
{
  sub_19FE0(319, &qword_27FE30);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C0);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_2801C8);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &unk_285388);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_2801B8);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_2801D0);
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &unk_282E10);
              if (v6 <= 0x3F)
              {
                sub_19FE0(319, &qword_27E640);
                if (v7 <= 0x3F)
                {
                  sub_19FE0(319, &qword_27EBC8);
                  if (v8 <= 0x3F)
                  {
                    sub_19FE0(319, &qword_27EBD0);
                    if (v9 <= 0x3F)
                    {
                      sub_19FE0(319, &qword_27EBD8);
                      if (v10 <= 0x3F)
                      {
                        sub_19FE0(319, &unk_2801D8);
                        if (v11 <= 0x3F)
                        {
                          sub_19FE0(319, &unk_27F030);
                          if (v12 <= 0x3F)
                          {
                            sub_1E1150();
                            if (v13 <= 0x3F)
                            {
                              sub_1E11A0();
                              if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_D8968()
{
  result = qword_2853F0;
  if (!qword_2853F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2853F0);
  }

  return result;
}

unint64_t sub_D89C0()
{
  result = qword_2853F8;
  if (!qword_2853F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2853F8);
  }

  return result;
}

unint64_t sub_D8A18()
{
  result = qword_285400;
  if (!qword_285400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285400);
  }

  return result;
}

uint64_t sub_D8A6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000215E60 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000213F10 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000213F70 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65736163776F6C66 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000000213BA0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746144736C616564 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

void __swiftcall AppData.init(appVersion:appBundleVersion:jsAppVersion:appBuildNumber:)(BookAnalytics::AppData *__return_ptr retstr, Swift::String appVersion, Swift::Int64 appBundleVersion, Swift::String jsAppVersion, Swift::String appBuildNumber)
{
  retstr->appVersion = appVersion;
  retstr->appBundleVersion = appBundleVersion;
  retstr->jsAppVersion = jsAppVersion;
  retstr->appBuildNumber = appBuildNumber;
}

unint64_t sub_D8F94()
{
  v1 = 0x6973726556707061;
  v2 = 0x726556707041736ALL;
  if (*v0 != 2)
  {
    v2 = 0x646C697542707061;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_D902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_D98E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D9054(uint64_t a1)
{
  v2 = sub_D96BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9090(uint64_t a1)
{
  v2 = sub_D96BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285408, &qword_1F6578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v15[0] = v1[6];
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D96BC();
  sub_1E1E00();
  v19 = 0;
  v13 = v15[5];
  sub_1E1CB0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1E1D10();
  v17 = 2;
  sub_1E1CB0();
  v16 = 3;
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AppData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_285418, &qword_1F6580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D96BC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v31 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v14 = v11;
  v30 = 1;
  v26 = sub_1E1C40();
  v29 = 2;
  v15 = sub_1E1BE0();
  v27 = v17;
  v25 = v15;
  v28 = 3;
  v18 = sub_1E1BE0();
  v20 = v19;
  v21 = *(v6 + 8);
  v24 = v18;
  v21(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v22 = v25;
  a2[2] = v26;
  a2[3] = v22;
  v23 = v24;
  a2[4] = v27;
  a2[5] = v23;
  a2[6] = v20;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics7AppDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  if ((v3 != v7 || v4 != v10) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_D96BC()
{
  result = qword_285410;
  if (!qword_285410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285410);
  }

  return result;
}

unint64_t sub_D9714()
{
  result = qword_285420;
  if (!qword_285420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285420);
  }

  return result;
}

unint64_t sub_D976C()
{
  result = qword_285428;
  if (!qword_285428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285428);
  }

  return result;
}

unint64_t sub_D97E4()
{
  result = qword_285430;
  if (!qword_285430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285430);
  }

  return result;
}

unint64_t sub_D983C()
{
  result = qword_285438;
  if (!qword_285438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285438);
  }

  return result;
}

unint64_t sub_D9894()
{
  result = qword_285440;
  if (!qword_285440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285440);
  }

  return result;
}

uint64_t sub_D98E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215E80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726556707041736ALL && a2 == 0xEC0000006E6F6973 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C697542707061 && a2 == 0xEE007265626D754ELL)
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

uint64_t sub_D9A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974634172657375 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_D9B18(uint64_t a1)
{
  v2 = sub_D9F6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D9B54(uint64_t a1)
{
  v2 = sub_D9F6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285448, &qword_1F67C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D9F6C();
  sub_1E1E00();
  v12 = v8;
  sub_D9FC0();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NotificationOptInActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285460, &qword_1F67C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_D9F6C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_DA014();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics27NotificationOptInActionDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E4974706FLL;
  if (v2 != 1)
  {
    v4 = 0x74754F74706FLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E4974706FLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F74706FLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_D9F6C()
{
  result = qword_285450;
  if (!qword_285450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285450);
  }

  return result;
}

unint64_t sub_D9FC0()
{
  result = qword_285458;
  if (!qword_285458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285458);
  }

  return result;
}

unint64_t sub_DA014()
{
  result = qword_285468;
  if (!qword_285468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285468);
  }

  return result;
}

unint64_t sub_DA094()
{
  result = qword_285470;
  if (!qword_285470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285470);
  }

  return result;
}

unint64_t sub_DA0EC()
{
  result = qword_285478;
  if (!qword_285478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285478);
  }

  return result;
}

unint64_t sub_DA144()
{
  result = qword_285480;
  if (!qword_285480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285480);
  }

  return result;
}

BookAnalytics::RedownloadFailureReason_optional __swiftcall RedownloadFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260888;
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

uint64_t RedownloadFailureReason.rawValue.getter()
{
  v1 = 0x436572756C696166;
  if (*v0 != 1)
  {
    v1 = 0x6F436572756C6166;
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

uint64_t _s13BookAnalytics18RedownloadFailDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x436572756C696166;
  v4 = 0xEC0000003165646FLL;
  if (v2 != 1)
  {
    v3 = 0x6F436572756C6166;
    v4 = 0xEB00000000326564;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x436572756C696166;
  v8 = 0xEC0000003165646FLL;
  if (*a2 != 1)
  {
    v7 = 0x6F436572756C6166;
    v8 = 0xEB00000000326564;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1D30();
  }

  return v11 & 1;
}

unint64_t sub_DA388()
{
  result = qword_285488;
  if (!qword_285488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285488);
  }

  return result;
}

Swift::Int sub_DA3DC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_DA490()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_DA530()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_DA5EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000003165646FLL;
  v5 = 0x436572756C696166;
  if (v2 != 1)
  {
    v5 = 0x6F436572756C6166;
    v4 = 0xEB00000000326564;
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

unint64_t sub_DA71C()
{
  result = qword_285490;
  if (!qword_285490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285490);
  }

  return result;
}

uint64_t DragDropEvent.dragDropData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DragDropEvent.dragDropData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DragDropEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DragDropEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DragDropEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DragDropEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DragDropEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for DragDropEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t DragDropEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DragDropEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DragDropEvent.Model.init(dragDropData:eventData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for DragDropEvent.Model(0) + 20);
  v6 = sub_1E1150();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_DAC90()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x706F724467617264;
  }

  *v0;
  return result;
}

uint64_t sub_DACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x706F724467617264 && a2 == 0xEC00000061746144;
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

uint64_t sub_DADC0(uint64_t a1)
{
  v2 = sub_DB008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DADFC(uint64_t a1)
{
  v2 = sub_DB008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DragDropEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2854D0, &qword_1F6B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_DB008();
  sub_1E1E00();
  v14 = *v3;
  v13[7] = 0;
  sub_DB05C();

  sub_1E1CF0();

  if (!v2)
  {
    v11 = *(type metadata accessor for DragDropEvent.Model(0) + 20);
    v13[6] = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_DB008()
{
  result = qword_2854D8;
  if (!qword_2854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2854D8);
  }

  return result;
}

unint64_t sub_DB05C()
{
  result = qword_2854E0;
  if (!qword_2854E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2854E0);
  }

  return result;
}

uint64_t DragDropEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_1E1150();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3D68(&qword_2854E8, &qword_1F6B28);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v27);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DragDropEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_DB008();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v22 = v10;
  v15 = v13;
  v17 = v25;
  v16 = v26;
  v29 = 0;
  sub_DB3CC();
  v18 = v27;
  sub_1E1C20();
  v21 = v15;
  *v15 = v30;
  v28 = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  v19 = v21;
  (*(v23 + 32))(&v21[*(v22 + 20)], v6, v16);
  sub_DB420(v19, v24);
  sub_4E48(a1);
  return sub_DB484(v19);
}

unint64_t sub_DB3CC()
{
  result = qword_2854F0;
  if (!qword_2854F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2854F0);
  }

  return result;
}

uint64_t sub_DB420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragDropEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB484(uint64_t a1)
{
  v2 = type metadata accessor for DragDropEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DB580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_2854C8, &qword_1F6B18);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t sub_DB66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_2854C8, &qword_1F6B18);
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

uint64_t sub_DB788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_2854C8, &qword_1F6B18);
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

void sub_DB89C()
{
  sub_DB920();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DB920()
{
  if (!qword_285560)
  {
    sub_DB3CC();
    sub_DB05C();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_285560);
    }
  }
}

uint64_t sub_DB99C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_DBA5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_DBB00()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_DBB90()
{
  result = qword_285620;
  if (!qword_285620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285620);
  }

  return result;
}

unint64_t sub_DBBE8()
{
  result = qword_285628;
  if (!qword_285628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285628);
  }

  return result;
}

unint64_t sub_DBC40()
{
  result = qword_285630;
  if (!qword_285630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285630);
  }

  return result;
}

BookAnalytics::ContentSubType_optional __swiftcall ContentSubType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2608F0;
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

uint64_t ContentSubType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x79616C6465786966;
  if (*v0 != 2)
  {
    v2 = 0x6F69746964617274;
  }

  if (*v0)
  {
    v1 = 7630194;
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

unint64_t sub_DBD84()
{
  result = qword_285638;
  if (!qword_285638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285638);
  }

  return result;
}

Swift::Int sub_DBDD8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_DBEA4()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_DBF5C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_DC030(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB0000000074756FLL;
  v5 = 0x79616C6465786966;
  if (*v1 != 2)
  {
    v5 = 0x6F69746964617274;
    v4 = 0xEB000000006C616ELL;
  }

  if (*v1)
  {
    v3 = 7630194;
    v2 = 0xE300000000000000;
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

unint64_t sub_DC178()
{
  result = qword_285640;
  if (!qword_285640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285640);
  }

  return result;
}

BookAnalytics::DefaultReadingGoal_optional __swiftcall DefaultReadingGoal.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260970;
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

uint64_t DefaultReadingGoal.rawValue.getter()
{
  v1 = 89;
  if (*v0 != 1)
  {
    v1 = 78;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 16718;
  }
}

uint64_t sub_DC260(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 89;
  if (v2 != 1)
  {
    v3 = 78;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 16718;
  }

  if (v2)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 89;
  if (*a2 != 1)
  {
    v6 = 78;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 16718;
  }

  if (*a2)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

unint64_t sub_DC330()
{
  result = qword_285648;
  if (!qword_285648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285648);
  }

  return result;
}

Swift::Int sub_DC384()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_DC404()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_DC470()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_DC4F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 89;
  if (v2 != 1)
  {
    v4 = 78;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 16718;
  }

  if (!v5)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_DC5F4()
{
  result = qword_285650;
  if (!qword_285650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285650);
  }

  return result;
}

void sub_DC688(char *a1@<X8>)
{
  type metadata accessor for NetworkReachability();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  *(inited + 16) = SCNetworkReachabilityCreateWithAddress(0, &address);
  sub_11A444(&v53);
  if (!v53)
  {

    v3 = 13;
    goto LABEL_21;
  }

  if (v53 != 1)
  {
    sub_4C270();
    v4 = sub_1E19E0();
    v5 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v4];

    *&address.sa_len = 0;
    v6 = [v5 getCurrentDataServiceDescriptorSync:&address];
    v7 = *&address.sa_len;
    if (v6)
    {
      v8 = v6;
      *&address.sa_len = 0;
      v9 = v7;
      v10 = [v5 getCurrentRat:v8 error:&address];
      v11 = *&address.sa_len;
      if (v10)
      {
        v12 = v10;
        v13 = sub_1E1780();
        v15 = v14;
        v16 = v11;

        if (sub_1E1780() == v13 && v17 == v15)
        {

LABEL_20:

          v3 = 1;
          goto LABEL_21;
        }

        v28 = sub_1E1D30();

        if (v28)
        {

          goto LABEL_20;
        }

        if (sub_1E1780() == v13 && v29 == v15)
        {

LABEL_27:

          v3 = 2;
          goto LABEL_21;
        }

        v30 = sub_1E1D30();

        if (v30)
        {

          goto LABEL_27;
        }

        if (sub_1E1780() == v13 && v31 == v15)
        {

LABEL_33:

          v3 = 3;
          goto LABEL_21;
        }

        v32 = sub_1E1D30();

        if (v32)
        {

          goto LABEL_33;
        }

        if (sub_1E1780() == v13 && v33 == v15)
        {

LABEL_39:

          v3 = 4;
          goto LABEL_21;
        }

        v34 = sub_1E1D30();

        if (v34)
        {

          goto LABEL_39;
        }

        if (sub_1E1780() == v13 && v35 == v15)
        {

LABEL_45:

          v3 = 5;
          goto LABEL_21;
        }

        v36 = sub_1E1D30();

        if (v36)
        {

          goto LABEL_45;
        }

        if (sub_1E1780() == v13 && v37 == v15)
        {

LABEL_51:

          v3 = 6;
          goto LABEL_21;
        }

        v38 = sub_1E1D30();

        if (v38)
        {

          goto LABEL_51;
        }

        if (sub_1E1780() == v13 && v39 == v15)
        {

LABEL_57:

          v3 = 7;
          goto LABEL_21;
        }

        v40 = sub_1E1D30();

        if (v40)
        {

          goto LABEL_57;
        }

        if (sub_1E1780() == v13 && v41 == v15)
        {

LABEL_63:

          v3 = 8;
          goto LABEL_21;
        }

        v42 = sub_1E1D30();

        if (v42)
        {

          goto LABEL_63;
        }

        if (sub_1E1780() == v13 && v43 == v15)
        {

LABEL_69:

          v3 = 9;
          goto LABEL_21;
        }

        v44 = sub_1E1D30();

        if (v44)
        {

          goto LABEL_69;
        }

        if (sub_1E1780() == v13 && v45 == v15)
        {

LABEL_75:

          v3 = 10;
          goto LABEL_21;
        }

        v46 = sub_1E1D30();

        if (v46)
        {

          goto LABEL_75;
        }

        if (sub_1E1780() == v13 && v47 == v15)
        {

LABEL_81:

          v3 = 11;
          goto LABEL_21;
        }

        v48 = sub_1E1D30();

        if (v48)
        {

          goto LABEL_81;
        }

        if (sub_1E1780() == v13 && v49 == v15)
        {

LABEL_87:

          v3 = 14;
          goto LABEL_21;
        }

        v50 = sub_1E1D30();

        if (v50)
        {

          goto LABEL_87;
        }

        if (sub_1E1780() == v13 && v51 == v15)
        {

          v3 = 15;
          goto LABEL_21;
        }

        v52 = sub_1E1D30();

        if (v52)
        {
          v3 = 15;
          goto LABEL_21;
        }

LABEL_17:
        v3 = 0;
        goto LABEL_21;
      }

      v19 = *&address.sa_len;
      sub_1E08C0();

      swift_willThrow();
    }

    else
    {
      v18 = *&address.sa_len;
      sub_1E08C0();

      swift_willThrow();
    }

    if (qword_27D068 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1360();
    sub_3B2C(v20, qword_280320);
    swift_errorRetain();
    v21 = sub_1E1340();
    v22 = sub_1E1980();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&address.sa_len = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_1E1D70();
      v27 = sub_DD91C(v25, v26, &address);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "Could not get current data service descriptor: %s", v23, 0xCu);
      sub_4E48(v24);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v3 = 12;
LABEL_21:
  *a1 = v3;
}

unint64_t sub_DD094@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2000503040100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_DD0BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = sub_1E1290();
  v34 = *(v38 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v38);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E11B0();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_285658, &qword_1F6F68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_1E11D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E12C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C2BC(a1, v40);
  sub_3D68(&qword_285660, &qword_1F6F70);
  if (swift_dynamicCast())
  {
    result = (*(v19 + 8))(v22, v18);
    v24 = 2;
  }

  else
  {
    sub_4C2BC(a1, v40);
    v25 = swift_dynamicCast();
    v26 = *(v14 + 56);
    if (v25)
    {
      v26(v12, 0, 1, v13);
      (*(v14 + 32))(v17, v12, v13);
      sub_1E11C0();
      (*(v14 + 8))(v17, v13);
      v28 = v35;
      v27 = v36;
      v29 = (*(v35 + 88))(v8, v36);
      v30 = enum case for LibraryBookInfo.BookType.epub(_:);
      result = (*(v28 + 8))(v8, v27);
      if (v29 == v30)
      {
        v24 = 1;
      }

      else
      {
        v24 = 5;
      }
    }

    else
    {
      v26(v12, 1, 1, v13);
      sub_DE010(v12);
      sub_4C2BC(a1, v40);
      v32 = v37;
      v31 = v38;
      result = swift_dynamicCast();
      if (result)
      {
        result = (*(v34 + 8))(v32, v31);
        v24 = 3;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  *v39 = v24;
  return result;
}