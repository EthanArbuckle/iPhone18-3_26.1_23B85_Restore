uint64_t sub_709D4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_70A64()
{
  result = qword_2813B8;
  if (!qword_2813B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B8);
  }

  return result;
}

unint64_t sub_70ABC()
{
  result = qword_2813C0;
  if (!qword_2813C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C0);
  }

  return result;
}

unint64_t sub_70B14()
{
  result = qword_2813C8;
  if (!qword_2813C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8);
  }

  return result;
}

uint64_t AppSessionStartEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppSessionStartEvent.orientationData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

__n128 AppSessionStartEvent.Model.orientationData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t AppSessionStartEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.Model.init(orientationData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_710B0()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x7461746E6569726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_710FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
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

uint64_t sub_711E8(uint64_t a1)
{
  v2 = sub_71424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_71224(uint64_t a1)
{
  v2 = sub_71424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_281400, &qword_1ED090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_71424();
  sub_1E1E00();
  v11 = *(v3 + 4);
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_67CE4();
  sub_1E1C80();
  if (!v2)
  {
    v12 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 20);
    LOBYTE(v15) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_71424()
{
  result = qword_281408;
  if (!qword_281408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408);
  }

  return result;
}

uint64_t AppSessionStartEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_1E1150();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_281410, &qword_1ED098);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v12 = *(*(started - 8) + 64);
  __chkstk_darwin(started);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_71424();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = v14;
    v23 = started;
    v17 = v27;
    v31 = 0;
    sub_687E4();
    v18 = v28;
    sub_1E1BB0();
    v19 = v30;
    v20 = v16;
    *v16 = v29;
    *(v16 + 4) = v19;
    LOBYTE(v29) = 1;
    sub_14E5C(&qword_27D830);
    v21 = v26;
    sub_1E1C20();
    (*(v17 + 8))(v10, v18);
    (*(v24 + 32))(v20 + *(v23 + 20), v6, v21);
    sub_71770(v20, v25);
  }

  return sub_4E48(a1);
}

uint64_t sub_71770(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_71874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_280D78, &unk_1ED080);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_7196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_280D78, &unk_1ED080);
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

uint64_t sub_71A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_280D78, &unk_1ED080);
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

void sub_71BC8()
{
  if (!qword_280E58)
  {
    sub_687E4();
    sub_67CE4();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_280E58);
    }
  }
}

uint64_t sub_71C44(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
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

_BYTE *sub_71D08(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
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

uint64_t sub_71DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_71E64()
{
  if (!qword_280F20)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_280F20);
    }
  }
}

unint64_t sub_71EC8()
{
  result = qword_281538;
  if (!qword_281538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281538);
  }

  return result;
}

unint64_t sub_71F20()
{
  result = qword_281540;
  if (!qword_281540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281540);
  }

  return result;
}

unint64_t sub_71F78()
{
  result = qword_281548;
  if (!qword_281548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281548);
  }

  return result;
}

uint64_t NotificationEngagementData.targetID.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

_BYTE *NotificationEngagementData.init(actionType:actionUrl:targetID:targetType:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

uint64_t sub_72020()
{
  v1 = 0x79546E6F69746361;
  v2 = 0x4449746567726174;
  if (*v0 != 2)
  {
    v2 = 0x7954746567726174;
  }

  if (*v0)
  {
    v1 = 0x72556E6F69746361;
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

uint64_t sub_720A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_72C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_720C8(uint64_t a1)
{
  v2 = sub_72858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_72104(uint64_t a1)
{
  v2 = sub_72858();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationEngagementData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281550, &unk_1ED2A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v10;
  v17 = *(v1 + 3);
  v16 = v1[32];
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_72858();
  sub_1E1E00();
  v26 = v9;
  v25 = 0;
  sub_728AC();
  sub_1E1CF0();
  if (!v2)
  {
    v13 = v17;
    v14 = v16;
    v24 = 1;
    sub_1E1CB0();
    v20 = v13;
    v23 = 2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_281190);
    sub_1E1C80();
    v22 = v14;
    v21 = 3;
    sub_72900();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t NotificationEngagementData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281570, &qword_1ED2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_72858();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = 0;
  sub_72954();
  sub_1E1C20();
  v11 = v26;
  v24 = 1;
  v18 = sub_1E1BE0();
  v19 = v12;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  v23 = 2;
  sub_6E7F0(&qword_2811B8);
  sub_1E1BB0();
  v13 = v20;
  v21 = 3;
  sub_729A8();
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  *a2 = v11;
  v16 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v16;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics26NotificationEngagementDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((sub_21FB4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_34;
  }

  v10 = v2 == v6 && v3 == v7;
  if (!v10 && (sub_1E1D30() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v4)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  if (!v8 || (sub_5C5F8(v4, v8) & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  v11 = 0xD000000000000012;
  v12 = 0x8000000000213110;
  if (v5 == 1)
  {
    v13 = 0xD000000000000012;
  }

  else
  {
    v13 = 0xD00000000000001ALL;
  }

  if (v5 == 1)
  {
    v14 = 0x8000000000213110;
  }

  else
  {
    v14 = 0x8000000000213130;
  }

  if (v5)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (v5)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v9 != 1)
  {
    v11 = 0xD00000000000001ALL;
    v12 = 0x8000000000213130;
  }

  if (v9)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (v9)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15 == v17 && v16 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1E1D30();
  }

  return v19 & 1;
}

unint64_t sub_72858()
{
  result = qword_281558;
  if (!qword_281558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281558);
  }

  return result;
}

unint64_t sub_728AC()
{
  result = qword_281560;
  if (!qword_281560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281560);
  }

  return result;
}

unint64_t sub_72900()
{
  result = qword_281568;
  if (!qword_281568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281568);
  }

  return result;
}

unint64_t sub_72954()
{
  result = qword_281578;
  if (!qword_281578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281578);
  }

  return result;
}

unint64_t sub_729A8()
{
  result = qword_281580;
  if (!qword_281580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281580);
  }

  return result;
}

unint64_t sub_72A00()
{
  result = qword_281588;
  if (!qword_281588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281588);
  }

  return result;
}

unint64_t sub_72A58()
{
  result = qword_281590;
  if (!qword_281590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281590);
  }

  return result;
}

__n128 sub_72AAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_72AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_72B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_72B70()
{
  result = qword_281598;
  if (!qword_281598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281598);
  }

  return result;
}

unint64_t sub_72BC8()
{
  result = qword_2815A0;
  if (!qword_2815A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A0);
  }

  return result;
}

unint64_t sub_72C20()
{
  result = qword_2815A8;
  if (!qword_2815A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A8);
  }

  return result;
}

uint64_t sub_72C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746567726174 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570)
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

uint64_t StreamingBitrateChangeEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StreamingBitrateChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for StreamingBitrateChangeEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

void StreamingBitrateChangeEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 100);
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t StreamingBitrateChangeEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  *a1 = v1[14];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t StreamingBitrateChangeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamingBitrateChangeEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StreamingBitrateChangeEvent.Model.init(contentData:bitRateData:errorData:eventData:)@<X0>(_OWORD *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = a2[2];
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  v13 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v13;
  v14 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v14;
  v15 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v15;
  *(a5 + 96) = v7;
  *(a5 + 100) = v8;
  *(a5 + 104) = v9;
  *(a5 + 112) = v10;
  *(a5 + 128) = v11;
  *(a5 + 136) = v12;
  v16 = *(type metadata accessor for StreamingBitrateChangeEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_7360C()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x746144726F727265;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x4465746152746962;
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

uint64_t sub_73694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_74AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_736BC(uint64_t a1)
{
  v2 = sub_73A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_736F8(uint64_t a1)
{
  v2 = sub_73A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StreamingBitrateChangeEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2815E0, &qword_1ED500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_73A40();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v44 = *(v2 + 32);
  v45 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v46 = *(v2 + 64);
  v47 = v13;
  v14 = *(v2 + 16);
  v43[0] = *v2;
  v43[1] = v14;
  v39 = v44;
  v40 = v12;
  v15 = *(v2 + 80);
  v41 = v46;
  v42 = v15;
  v37 = v43[0];
  v38 = v11;
  v36 = 0;
  sub_13A5C(v43, &v30);
  sub_143D0();
  v16 = v48;
  sub_1E1CF0();
  if (v16)
  {
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v30 = v37;
    v31 = v38;
    sub_14424(&v30);
  }

  else
  {
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v30 = v37;
    v31 = v38;
    sub_14424(&v30);
    v17 = *(v2 + 100);
    v18 = *(v2 + 104);
    LODWORD(v25) = *(v2 + 96);
    BYTE4(v25) = v17;
    LODWORD(v26) = v18;
    v29 = 1;
    sub_14574();
    sub_1E1CF0();
    v19 = *(v2 + 120);
    v20 = *(v2 + 128);
    v21 = *(v2 + 136);
    v25 = *(v2 + 112);
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = 2;
    sub_145C8();

    sub_1E1CF0();

    v22 = *(type metadata accessor for StreamingBitrateChangeEvent.Model(0) + 28);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_73A40()
{
  result = qword_2815E8;
  if (!qword_2815E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815E8);
  }

  return result;
}

uint64_t StreamingBitrateChangeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1E1150();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_2815F0, &qword_1ED508);
  v29 = *(v30 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v30);
  v9 = &v27 - v8;
  v10 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v32 = a1;
  sub_48B8(a1, v14);
  sub_73A40();
  v16 = v31;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v32);
  }

  v31 = v6;
  v17 = v29;
  v43 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v39;
  *(v13 + 2) = v38;
  *(v13 + 3) = v18;
  v19 = v41;
  *(v13 + 4) = v40;
  *(v13 + 5) = v19;
  v20 = v37;
  *v13 = v36;
  *(v13 + 1) = v20;
  v42 = 1;
  sub_14DB4();
  sub_1E1C20();
  v21 = BYTE4(v33);
  v22 = DWORD2(v33);
  *(v13 + 24) = v33;
  v13[100] = v21;
  *(v13 + 26) = v22;
  v42 = 2;
  sub_14E08();
  sub_1E1C20();
  v23 = v34;
  v24 = v35;
  *(v13 + 7) = v33;
  *(v13 + 16) = v23;
  *(v13 + 17) = v24;
  LOBYTE(v33) = 3;
  sub_14E5C(&qword_27D830);
  v25 = v31;
  sub_1E1C20();
  (*(v17 + 8))(v9, v30);
  (*(v27 + 32))(&v13[*(v10 + 28)], v25, v3);
  sub_73F44(v13, v28);
  sub_4E48(v32);
  return sub_73FA8(v13);
}

uint64_t sub_73F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_73FA8(uint64_t a1)
{
  v2 = type metadata accessor for StreamingBitrateChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_740A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_74228(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
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

  v14 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
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

uint64_t sub_743F4(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27E1E8, &unk_1F3530);
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

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
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

void sub_745B8()
{
  sub_74714(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_74714(319, &qword_27E2E0, sub_14DB4, sub_14574);
    if (v1 <= 0x3F)
    {
      sub_74714(319, &unk_27E2E8, sub_14E08, sub_145C8);
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

void sub_74714(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_747A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_74864(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_74908()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_749B0()
{
  result = qword_281728;
  if (!qword_281728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281728);
  }

  return result;
}

unint64_t sub_74A08()
{
  result = qword_281730;
  if (!qword_281730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281730);
  }

  return result;
}

unint64_t sub_74A60()
{
  result = qword_281738;
  if (!qword_281738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281738);
  }

  return result;
}

uint64_t sub_74AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
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

BookAnalytics::ContentEnvironment_optional __swiftcall ContentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FE78;
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

uint64_t ContentEnvironment.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x676E6967617473;
  if (*v0 != 2)
  {
    v2 = 1685025392;
  }

  if (*v0)
  {
    v1 = 24945;
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

unint64_t sub_74D00()
{
  result = qword_281740;
  if (!qword_281740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281740);
  }

  return result;
}

Swift::Int sub_74D54()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_74E04()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_74EA0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_74F58(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 1685025392;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
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

unint64_t sub_75084()
{
  result = qword_281748;
  if (!qword_281748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281748);
  }

  return result;
}

uint64_t RoomViewEvent.roomData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RoomViewEvent.roomData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RoomViewEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RoomViewEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RoomViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281780, &qword_1ED858);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RoomViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t RoomViewEvent.Model.roomData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = v6;
}

uint64_t RoomViewEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v12[7] = v2;
  v12[8] = *(v1 + 184);
  v13 = *(v1 + 200);
  v3 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v3;
  v4 = *(v1 + 136);
  v12[4] = *(v1 + 120);
  v12[5] = v4;
  v5 = *(v1 + 72);
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  v6 = *(v1 + 168);
  *(a1 + 96) = *(v1 + 152);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v1 + 184);
  *(a1 + 144) = *(v1 + 200);
  v7 = *(v1 + 104);
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = v7;
  v8 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v8;
  v9 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v9;
  return sub_275C4(v12, v11);
}

uint64_t RoomViewEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v2;
}

uint64_t RoomViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RoomViewEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RoomViewEvent.Model.init(roomData:linkData:upSellData:suggestionData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 40) = *(a1 + 40);
  v10 = *(a2 + 112);
  *(a7 + 152) = *(a2 + 96);
  *(a7 + 168) = v10;
  *(a7 + 184) = *(a2 + 128);
  v11 = *(a2 + 48);
  *(a7 + 88) = *(a2 + 32);
  *(a7 + 104) = v11;
  v12 = *(a2 + 80);
  *(a7 + 120) = *(a2 + 64);
  *(a7 + 136) = v12;
  v13 = *(a2 + 16);
  *(a7 + 56) = *a2;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a3 + 16);
  v17 = *a4;
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 200) = *(a2 + 144);
  *(a7 + 72) = v13;
  *(a7 + 208) = *a3;
  *(a7 + 224) = v16;
  *(a7 + 232) = v17;
  v18 = type metadata accessor for RoomViewEvent.Model(0);
  v19 = *(v18 + 32);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  v21 = *(v18 + 36);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a7 + v21, a6, v22);
}

uint64_t sub_75F14()
{
  v1 = *v0;
  v2 = 0x617461446D6F6F72;
  v3 = 0x6974736567677573;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x61446C6C65537075;
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

uint64_t sub_75FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_77D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_76010(uint64_t a1)
{
  v2 = sub_7659C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7604C(uint64_t a1)
{
  v2 = sub_7659C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RoomViewEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281788, &qword_1ED860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_7659C();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v13 = *(v2 + 32);
  v14 = v2[5];
  v15 = v2[6];
  v52 = *v2;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = v14;
  v58 = v15;
  v51 = 0;
  sub_765F0();

  v16 = v59;
  sub_1E1CF0();
  if (v16)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v59 = v4;

    v18 = *(v2 + 21);
    v49[6] = *(v2 + 19);
    v49[7] = v18;
    v49[8] = *(v2 + 23);
    v50 = v2[25];
    v19 = *(v2 + 13);
    v49[2] = *(v2 + 11);
    v49[3] = v19;
    v20 = *(v2 + 17);
    v49[4] = *(v2 + 15);
    v49[5] = v20;
    v21 = *(v2 + 9);
    v49[0] = *(v2 + 7);
    v49[1] = v21;
    v22 = *(v2 + 21);
    v45 = *(v2 + 19);
    v46 = v22;
    v47 = *(v2 + 23);
    v48 = v2[25];
    v23 = *(v2 + 13);
    v41 = *(v2 + 11);
    v42 = v23;
    v24 = *(v2 + 17);
    v43 = *(v2 + 15);
    v44 = v24;
    v25 = *(v2 + 9);
    v39 = *(v2 + 7);
    v40 = v25;
    v38 = 1;
    sub_275C4(v49, v36);
    sub_18630();
    sub_1E1CF0();
    v36[6] = v45;
    v36[7] = v46;
    v36[8] = v47;
    v37 = v48;
    v36[2] = v41;
    v36[3] = v42;
    v36[4] = v43;
    v36[5] = v44;
    v36[0] = v39;
    v36[1] = v40;
    sub_283A8(v36);
    v26 = v2[28];
    v34 = *(v2 + 13);
    v35 = v26;
    v33 = 2;
    sub_28450();

    sub_1E1C80();

    LOBYTE(v34) = *(v2 + 232);
    v33 = 3;
    sub_284F8();
    sub_1E1C80();
    v27 = v5;
    v28 = type metadata accessor for RoomViewEvent.Model(0);
    v29 = *(v28 + 32);
    LOBYTE(v34) = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v30 = *(v28 + 36);
    LOBYTE(v34) = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    v31 = v59;
    sub_1E1CF0();
    return (*(v27 + 8))(v8, v31);
  }
}

unint64_t sub_7659C()
{
  result = qword_281790;
  if (!qword_281790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281790);
  }

  return result;
}

unint64_t sub_765F0()
{
  result = qword_281798;
  if (!qword_281798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281798);
  }

  return result;
}

uint64_t RoomViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E11A0();
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v40);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_2817A0, &qword_1ED868);
  v42 = *(v43 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v43);
  v12 = &v35 - v11;
  v13 = type metadata accessor for RoomViewEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v59 = a1;
  sub_48B8(a1, v17);
  sub_7659C();
  v44 = v12;
  v19 = v45;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v59);
  }

  v37 = v9;
  v20 = v42;
  v36 = v5;
  v45 = v6;
  LOBYTE(v47) = 0;
  sub_76DD0();
  sub_1E1C20();
  v21 = v51;
  v22 = v52[0];
  v23 = v16;
  *v16 = v50;
  *(v16 + 1) = v21;
  v16[32] = v22;
  *(v16 + 40) = *&v52[8];
  v49 = 1;
  sub_18FA4();
  sub_1E1C20();
  v24 = v20;
  v25 = v56;
  *(v23 + 152) = v55;
  *(v23 + 168) = v25;
  *(v23 + 184) = v57;
  v26 = *&v52[16];
  *(v23 + 88) = *v52;
  *(v23 + 104) = v26;
  v27 = v54;
  *(v23 + 120) = v53;
  *(v23 + 136) = v27;
  v28 = v51;
  *(v23 + 56) = v50;
  *(v23 + 200) = v58;
  *(v23 + 72) = v28;
  v46 = 2;
  sub_28EF4();
  sub_1E1BB0();
  v29 = v48;
  *(v23 + 208) = v47;
  *(v23 + 224) = v29;
  v46 = 3;
  sub_28F9C();
  sub_1E1BB0();
  *(v23 + 232) = v47;
  LOBYTE(v47) = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v30 = v37;
  v31 = v45;
  sub_1E1C20();
  (*(v41 + 32))(v23 + *(v13 + 32), v30, v31);
  LOBYTE(v47) = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v32 = v36;
  v33 = v40;
  sub_1E1C20();
  (*(v24 + 8))(v44, v43);
  (*(v38 + 32))(v23 + *(v13 + 36), v32, v33);
  sub_76E24(v23, v39);
  sub_4E48(v59);
  return sub_76E88(v23);
}

unint64_t sub_76DD0()
{
  result = qword_2817A8;
  if (!qword_2817A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2817A8);
  }

  return result;
}

uint64_t sub_76E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_76E88(uint64_t a1)
{
  v2 = type metadata accessor for RoomViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_76F84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281780, &qword_1ED858);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_771B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281780, &qword_1ED858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_77428(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281780, &qword_1ED858);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

void sub_77694()
{
  sub_77858(319, &unk_281818, sub_76DD0, sub_765F0);
  if (v0 <= 0x3F)
  {
    sub_77858(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_77858(319, &qword_27EAE8, sub_28EF4, sub_28450);
      if (v2 <= 0x3F)
      {
        sub_77858(319, &unk_27EAF8, sub_28F9C, sub_284F8);
        if (v3 <= 0x3F)
        {
          sub_5684();
          if (v4 <= 0x3F)
          {
            sub_5750();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_77858(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_778E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_77A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_77B44()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8);
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

unint64_t sub_77C44()
{
  result = qword_2818F8;
  if (!qword_2818F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2818F8);
  }

  return result;
}

unint64_t sub_77C9C()
{
  result = qword_281900;
  if (!qword_281900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281900);
  }

  return result;
}

unint64_t sub_77CF4()
{
  result = qword_281908;
  if (!qword_281908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281908);
  }

  return result;
}

uint64_t sub_77D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446D6F6F72 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B6E696CLL && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SwooshExposureEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 32);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SwooshExposureEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SwooshExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SwooshExposureEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t SwooshExposureEvent.Model.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = *(v1 + 264);
  *(a1 + 8) = *(v1 + 272);
  *(a1 + 24) = v2;
}

uint64_t SwooshExposureEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  *a1 = *(v1 + 296);
  *(a1 + 16) = v2;
}

uint64_t SwooshExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent.Model(0) + 36);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SwooshExposureEvent.Model(0) + 40);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SwooshExposureEvent.Model.init(sectionData:linkData:pageData:upSellData:suggestionData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v11;
  v12 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v12;
  v13 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v13;
  v14 = a2[6];
  v15 = a2[8];
  *(a8 + 224) = a2[7];
  *(a8 + 240) = v15;
  v16 = a2[2];
  v17 = a2[4];
  v18 = a2[5];
  *(a8 + 160) = a2[3];
  *(a8 + 176) = v17;
  v19 = a1[6];
  *(a8 + 192) = v18;
  *(a8 + 208) = v14;
  v20 = *a2;
  v21 = a2[1];
  *(a8 + 96) = v19;
  *(a8 + 112) = v20;
  v22 = (a8 + 264);
  v23 = *(a3 + 16);
  v24 = *(a3 + 24);
  v25 = *(a4 + 16);
  v26 = *a5;
  *(a8 + 256) = *(a2 + 18);
  *(a8 + 128) = v21;
  *(a8 + 144) = v16;
  *v22 = *a3;
  *(a8 + 280) = v23;
  *(a8 + 288) = v24;
  v22[2] = *a4;
  *(a8 + 312) = v25;
  *(a8 + 320) = v26;
  v27 = type metadata accessor for SwooshExposureEvent.Model(0);
  v28 = *(v27 + 36);
  v29 = sub_1E1150();
  (*(*(v29 - 8) + 32))(a8 + v28, a6, v29);
  v30 = *(v27 + 40);
  v31 = sub_1E11A0();
  v32 = *(*(v31 - 8) + 32);

  return v32(a8 + v30, a7, v31);
}

uint64_t sub_78D98()
{
  v1 = *v0;
  v2 = 0x446E6F6974636573;
  v3 = 0x746144746E657665;
  if (v1 != 5)
  {
    v3 = 0x74614464656D6974;
  }

  v4 = 0x61446C6C65537075;
  if (v1 != 3)
  {
    v4 = 0x6974736567677573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461446B6E696CLL;
  if (v1 != 1)
  {
    v5 = 0x6174614465676170;
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

uint64_t sub_78E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7ACF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_78EBC(uint64_t a1)
{
  v2 = sub_794D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_78EF8(uint64_t a1)
{
  v2 = sub_794D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SwooshExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281940, &qword_1EDAA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_794D0();
  sub_1E1E00();
  v10 = v2[4];
  v11 = v2[2];
  v70 = v2[3];
  v71 = v10;
  v12 = v2[4];
  v13 = v2[6];
  v72 = v2[5];
  v73 = v13;
  v14 = *v2;
  v15 = v2[2];
  v68 = v2[1];
  v69 = v15;
  v16 = *v2;
  v64 = v12;
  v65 = v72;
  v66 = v2[6];
  v67 = v16;
  v60 = v14;
  v61 = v68;
  v62 = v11;
  v63 = v70;
  v59 = 0;
  sub_274D4(&v67, &v49);
  sub_18544();
  v17 = v74;
  sub_1E1CF0();
  if (v17)
  {
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    sub_28354(&v49);
  }

  else
  {
    v48[4] = v64;
    v48[5] = v65;
    v48[6] = v66;
    v48[0] = v60;
    v48[1] = v61;
    v48[2] = v62;
    v48[3] = v63;
    sub_28354(v48);
    v19 = v2[14];
    v20 = v2[12];
    v55 = v2[13];
    v56 = v19;
    v21 = v2[14];
    v57 = v2[15];
    v22 = v2[10];
    v23 = v2[8];
    v51 = v2[9];
    v52 = v22;
    v24 = v2[10];
    v25 = v2[12];
    v53 = v2[11];
    v54 = v25;
    v26 = v2[8];
    v49 = v2[7];
    v50 = v26;
    v44 = v55;
    v45 = v21;
    v46 = v2[15];
    v40 = v51;
    v41 = v24;
    v42 = v53;
    v43 = v20;
    v58 = *(v2 + 32);
    v47 = *(v2 + 32);
    v38 = v49;
    v39 = v23;
    v37 = 1;
    sub_275C4(&v49, v35);
    sub_18630();
    sub_1E1CF0();
    v35[6] = v44;
    v35[7] = v45;
    v35[8] = v46;
    v36 = v47;
    v35[2] = v40;
    v35[3] = v41;
    v35[4] = v42;
    v35[5] = v43;
    v35[0] = v38;
    v35[1] = v39;
    sub_283A8(v35);
    v27 = *(v2 + 36);
    *v33 = *(v2 + 33);
    *&v33[8] = v2[17];
    v34 = v27;
    v32 = 2;
    sub_18598();

    sub_1E1CF0();

    v28 = *(v2 + 39);
    *v33 = *(v2 + 296);
    *&v33[16] = v28;
    v32 = 3;
    sub_28450();

    sub_1E1C80();

    v33[0] = *(v2 + 320);
    v32 = 4;
    sub_284F8();
    sub_1E1C80();
    v74 = type metadata accessor for SwooshExposureEvent.Model(0);
    v29 = *(v74 + 36);
    v33[0] = 5;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v30 = *(v74 + 40);
    v33[0] = 6;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_794D0()
{
  result = qword_281948;
  if (!qword_281948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281948);
  }

  return result;
}

uint64_t SwooshExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = sub_1E11A0();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v41);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3D68(&qword_281950, &qword_1EDAB0);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for SwooshExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v71 = a1;
  sub_48B8(a1, v17);
  sub_794D0();
  v46 = v12;
  v19 = v47;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v71);
  }

  v47 = v8;
  v20 = v16;
  v53 = 0;
  sub_18EFC();
  sub_1E1C20();
  v21 = v59;
  v22 = v60;
  *(v16 + 4) = v58;
  *(v16 + 5) = v21;
  *(v16 + 6) = v22;
  v23 = v55;
  *v16 = v54;
  *(v16 + 1) = v23;
  v24 = v57;
  *(v16 + 2) = v56;
  *(v16 + 3) = v24;
  v52 = 1;
  sub_18FA4();
  sub_1E1C20();
  v25 = v68;
  *(v16 + 13) = v67;
  *(v16 + 14) = v25;
  *(v16 + 15) = v69;
  *(v16 + 32) = v70;
  v26 = v64;
  *(v16 + 9) = v63;
  *(v16 + 10) = v26;
  v27 = v66;
  *(v16 + 11) = v65;
  *(v16 + 12) = v27;
  v28 = v62;
  *(v16 + 7) = v61;
  *(v16 + 8) = v28;
  v48 = 2;
  sub_18F50();
  sub_1E1C20();
  v29 = v50;
  v30 = v51;
  *(v16 + 264) = v49;
  *(v16 + 35) = v29;
  *(v16 + 36) = v30;
  v48 = 3;
  sub_28EF4();
  sub_1E1BB0();
  v38 = v5;
  v31 = v50;
  *(v16 + 296) = v49;
  *(v16 + 39) = v31;
  v48 = 4;
  sub_28F9C();
  v37 = 0;
  sub_1E1BB0();
  v16[320] = v49;
  LOBYTE(v49) = 5;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v32 = v47;
  sub_1E1C20();
  v36 = v13;
  (*(v43 + 32))(&v16[*(v13 + 36)], v32, v5);
  LOBYTE(v49) = 6;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v33 = v41;
  sub_1E1C20();
  (*(v44 + 8))(v46, v45);
  (*(v39 + 32))(v20 + *(v36 + 40), v42, v33);
  sub_79C7C(v20, v40);
  sub_4E48(v71);
  return sub_79CE0(v20);
}

uint64_t sub_79C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwooshExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_79CE0(uint64_t a1)
{
  v2 = type metadata accessor for SwooshExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_79DDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

uint64_t sub_7A058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_7A320(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E488, &unk_1E5F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_27E480, &unk_1E71C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_7A5E0()
{
  sub_7A7F4(319, &qword_27E578, sub_18EFC, sub_18544);
  if (v0 <= 0x3F)
  {
    sub_7A7F4(319, &unk_27E588, sub_18FA4, sub_18630);
    if (v1 <= 0x3F)
    {
      sub_7A7F4(319, &qword_27E580, sub_18F50, sub_18598);
      if (v2 <= 0x3F)
      {
        sub_7A7F4(319, &qword_27EAE8, sub_28EF4, sub_28450);
        if (v3 <= 0x3F)
        {
          sub_7A7F4(319, &unk_27EAF8, sub_28F9C, sub_284F8);
          if (v4 <= 0x3F)
          {
            sub_5684();
            if (v5 <= 0x3F)
            {
              sub_5750();
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

void sub_7A7F4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_7A884(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_7A9BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_7AAE0()
{
  sub_19FE0(319, &qword_27EBC8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8);
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

unint64_t sub_7ABF0()
{
  result = qword_281AA8;
  if (!qword_281AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281AA8);
  }

  return result;
}

unint64_t sub_7AC48()
{
  result = qword_281AB0;
  if (!qword_281AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281AB0);
  }

  return result;
}

unint64_t sub_7ACA0()
{
  result = qword_281AB8;
  if (!qword_281AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281AB8);
  }

  return result;
}

uint64_t sub_7ACF4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614465676170 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_7AF60()
{
  result = [objc_allocWithZone(type metadata accessor for EventReporter()) init];
  qword_281AC0 = result;
  return result;
}

id static EventReporter.shared.getter()
{
  if (qword_27D138 != -1)
  {
    swift_once();
  }

  v1 = qword_281AC0;

  return v1;
}

double sub_7B048()
{
  qword_281AE8 = 0;
  result = 0.0;
  xmmword_281AC8 = 0u;
  *algn_281AD8 = 0u;
  return result;
}

uint64_t static EventReporter.libraryAnalyticsDataProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_7B0E0(&xmmword_281AC8, a1);
}

uint64_t sub_7B0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_281AF0, &qword_1EDCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static EventReporter.libraryAnalyticsDataProvider.setter(uint64_t a1)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_7B1F0(a1, &xmmword_281AC8);
  swift_endAccess();
  return sub_18E48(a1, &qword_281AF0, &qword_1EDCF0);
}

uint64_t sub_7B1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_281AF0, &qword_1EDCF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static EventReporter.libraryAnalyticsDataProvider.modify())()
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7B2EC(uint64_t a1)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_7B1F0(a1, &xmmword_281AC8);
  return swift_endAccess();
}

void sub_7B374()
{
  v1 = *(v0 + OBJC_IVAR___BAEventReporter_dataProviders);
  os_unfair_lock_lock((v1 + 24));
  sub_7B49C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_7B3D0(void **a1, uint64_t a2)
{
  sub_4C2BC(a2, v7);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_102D78(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_102D78((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  result = sub_7EE7C(v7, &v3[5 * v5 + 4]);
  *a1 = v3;
  return result;
}

uint64_t sub_7B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (qword_281AE0)
  {
    sub_4C2BC(&xmmword_281AC8, v11 + 1);
    v7 = v12;
    v8 = v13;
    sub_48B8((v11 + 1), v12);
    (*(v8 + 8))(v11, a1, a2, v7, v8);
    v9 = v11[0];
    result = sub_4E48((v11 + 1));
    v10 = 0x404020100uLL >> (8 * v9);
  }

  else
  {
    LOBYTE(v10) = 4;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_7B6A0(uint64_t a1, char a2, char a3)
{
  LOBYTE(v9[0]) = a2;
  BYTE1(v9[0]) = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v3 = sub_1E0CB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  (*(v4 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v3);
  sub_7EDE0();
  sub_1E0C00();

  type metadata accessor for AccountEvent(0);
  sub_7EE34(&qword_281BE8, type metadata accessor for AccountEvent);
  memset(v9, 0, sizeof(v9));
  sub_1E0C10();
  return sub_18E48(v9, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7B85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    *&v33[0] = &_swiftEmptyArrayStorage;
    sub_A7EE8(0, v2, 0);
    v3 = &_swiftEmptyArrayStorage;
    swift_beginAccess();
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v9 = v6;
        v10 = sub_1E1770();
        v11 = [Strong contentPrivateIDForContentID:v10];

        swift_unknownObjectRelease();
        if (v11)
        {
          Strong = sub_1E1780();
          v13 = v12;
        }

        else
        {
          Strong = 0;
          v13 = 0xE000000000000000;
        }

        v6 = v9;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      v32 = v13;
      v14 = Strong;
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = v6;
        v18 = sub_1E1770();
        v19 = [v16 contentUserIDForContentID:v18];

        swift_unknownObjectRelease();
        if (v19)
        {
          v20 = sub_1E1780();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0xE000000000000000;
        }

        v6 = v17;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      *&v33[0] = v3;
      v24 = v3[2];
      v23 = v3[3];
      if (v24 >= v23 >> 1)
      {
        sub_A7EE8((v23 > 1), v24 + 1, 1);
        v3 = *&v33[0];
      }

      v3[2] = v24 + 1;
      v25 = &v3[6 * v24];
      v25[4] = v14;
      v25[5] = v32;
      v25[6] = v20;
      v25[7] = v22;
      v25[8] = v6;
      v25[9] = v7;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  *&v33[0] = v3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v26 = sub_1E0CB0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E9970;
  (*(v27 + 104))(v30 + v29, enum case for DataEventTrait.onlyOnce(_:), v26);
  sub_7ED38();
  sub_1E0C00();

  type metadata accessor for DragDropEvent(0);
  sub_7EE34(&qword_281BD8, type metadata accessor for DragDropEvent);
  memset(v33, 0, sizeof(v33));
  sub_1E0C10();
  return sub_18E48(v33, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7BCA8()
{
  sub_A3F08(&v6);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v0 = sub_1E0CB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E9970;
  (*(v1 + 104))(v4 + v3, enum case for DataEventTrait.onlyOnce(_:), v0);
  sub_4C164();
  sub_1E0C00();

  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = v11;
  v12[0] = v6;
  v12[1] = v7;
  sub_14424(v12);
  type metadata accessor for HideBookEvent(0);
  sub_7EE34(&qword_281BB8, type metadata accessor for HideBookEvent);
  v6 = 0u;
  v7 = 0u;
  sub_1E0C10();
  return sub_18E48(&v6, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7BED0(uint64_t a1)
{
  sub_A6684(&v16);
  v2 = v16;
  v3 = v17;
  v4 = v18;
  v5 = v19;
  v6 = v20;
  v7 = v21;
  sub_A3F08(v22);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 20) = v3;
  *(v8 + 24) = v4;
  *(v8 + 28) = v5;
  *(v8 + 29) = v6;
  *(v8 + 30) = v7;
  v9 = v22[3];
  *(v8 + 64) = v22[2];
  *(v8 + 80) = v9;
  v10 = v22[5];
  *(v8 + 96) = v22[4];
  *(v8 + 112) = v10;
  v11 = v22[1];
  *(v8 + 32) = v22[0];
  *(v8 + 48) = v11;
  v12 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_7E294;
  *(v13 + 24) = v8;
  sub_13A5C(v22, &v15);

  sub_1E10C0();

  return sub_14424(v22);
}

uint64_t sub_7C190(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  v10 = *(a2 + 14);
  v11 = a3[3];
  v22[2] = a3[2];
  v22[3] = v11;
  v12 = a3[5];
  v22[4] = a3[4];
  v22[5] = v12;
  v13 = a3[1];
  v22[0] = *a3;
  v22[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  *(v14 + 20) = v6;
  *(v14 + 24) = v7;
  *(v14 + 28) = v8;
  *(v14 + 29) = v9;
  *(v14 + 30) = v10;
  v15 = a3[3];
  *(v14 + 64) = a3[2];
  *(v14 + 80) = v15;
  v16 = a3[5];
  *(v14 + 96) = a3[4];
  *(v14 + 112) = v16;
  v17 = a3[1];
  *(v14 + 32) = *a3;
  *(v14 + 48) = v17;
  v18 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_7EEEC;
  *(v19 + 24) = v14;
  sub_13A5C(v22, &v21);

  sub_1E10C0();
}

uint64_t sub_7C2CC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *&v17[0] = a2;
  DWORD2(v17[0]) = a3;
  BYTE14(v17[0]) = BYTE6(a3);
  WORD6(v17[0]) = WORD2(a3);
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v16 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  v9 = enum case for DataEventTrait.onlyOnce(_:);
  v10 = *(v6 + 104);
  v10(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_7EC38();
  sub_1E0C00();

  v11 = a4[3];
  v17[2] = a4[2];
  v17[3] = v11;
  v12 = a4[5];
  v17[4] = a4[4];
  v17[5] = v12;
  v13 = a4[1];
  v17[0] = *a4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v10(v14 + v7, v9, v5);
  sub_4C164();
  sub_1E0C00();

  type metadata accessor for InBookSearchEvent(0);
  sub_7EE34(&qword_281BB0, type metadata accessor for InBookSearchEvent);
  memset(v17, 0, 32);
  sub_1E0C10();
  return sub_18E48(v17, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7C538(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v24 = a1;
  v9 = sub_1E09E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v14 = *a4;
  v23 = *a5;
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v15, v12, v9);
  *(v18 + v16) = v13;
  *(v18 + v17) = v14;
  v19 = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v20 = *(v19 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_7E360;
  *(v21 + 24) = v18;

  sub_1E10C0();
}

uint64_t sub_7C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for InitialAppStateQueryEvent(0);
  sub_7EE34(&qword_281B88, type metadata accessor for InitialAppStateQueryEvent);
  sub_1E0BF0();
  *&v15[0] = a3;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v14 = sub_1E0CB0();
  v4 = *(v14 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  v8 = enum case for DataEventTrait.onlyOnce(_:);
  v9 = *(v4 + 104);
  v13 = enum case for DataEventTrait.onlyOnce(_:);
  v9(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v14);
  sub_7EB3C();
  sub_1E0C00();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E9970;
  v9(v10 + v6, v8, v14);
  sub_7EB90();
  sub_1E0C00();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E9970;
  v9(v11 + v6, v13, v14);
  sub_7EBE4();
  sub_1E0C00();

  memset(v15, 0, sizeof(v15));
  sub_1E0C10();
  return sub_18E48(v15, &unk_281B50, &unk_1EDD70);
}

char *sub_7CA0C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v17 = a1;
  if (a1 || (result = sub_BFB78(), (v17 = result) != 0))
  {
    v19 = swift_allocObject();
    v20 = a8;
    v21 = a4;
    v22 = v19;
    v19[2] = v8;
    v19[3] = a3;
    v19[4] = v21;
    v19[5] = a6;
    v19[6] = a5;
    v19[7] = v17;
    v19[8] = a7;
    v19[9] = v20;
    v19[10] = a2;
    v23 = v8;
    v24 = *&v17[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_7E46C;
    *(v25 + 24) = v22;
    v26 = a7;
    v27 = a2;

    v28 = a1;
    v29 = v23;

    v30 = v17;
    sub_1E10C0();
  }

  return result;
}

uint64_t sub_7CB6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10)
{
  *&v67 = a8;
  v68 = a4;
  v16 = sub_1E1640();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5 >= 7)
  {
    goto LABEL_40;
  }

  if (a6 >= 3)
  {
    *&v75 = a6;
    goto LABEL_43;
  }

  if (v67)
  {
    v65 = [v67 intValue];
  }

  else
  {
    v65 = 0;
  }

  sub_7B51C(a3, v68, &v81);
  v66 = a9;
  if (a9 >= 3)
  {
    *&v75 = v66;
    goto LABEL_43;
  }

  v64 = v81;
  sub_4C270();
  *v20 = sub_1E19E0();
  (*(v17 + 104))(v20, enum case for DispatchPredicate.notOnQueue(_:), v16);
  v21 = sub_1E1660();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    *&v75 = a5;
LABEL_43:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v60 = a7;
  v61 = a5;
  v62 = a6;
  v63 = a1;
  v59 = a10;
  v22 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
  sub_3D68(&qword_281B70, &qword_1E9980);
  sub_1E1330();
  v23 = v75;
  v24 = v75 + 32;
  v25 = -*(v75 + 16);
  v26 = -1;
  while (1)
  {
    a5 = v25 + v26;
    if (v25 + v26 == -1)
    {
      break;
    }

    if (++v26 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v27 = v24 + 40;
    sub_4C2BC(v24, &v75);
    v29 = *(&v76 + 1);
    v28 = v77;
    sub_48B8(&v75, *(&v76 + 1));
    v30 = (*(v28 + 8))(a2, a3, v68, v29, v28);
    sub_4E48(&v75);
    v24 = v27;
    if (v30)
    {

      v31 = [v30 intValue];

      goto LABEL_14;
    }
  }

  v31 = 0;
LABEL_14:
  v32 = v67 == 0;
  v33._countAndFlagsBits = a3;
  v34 = v68;
  v33._object = v68;
  v35 = BATracker.contentPrivateID(for:)(v33);
  if (v35.value._object)
  {
    countAndFlagsBits = v35.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v35.value._object)
  {
    object = v35.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v38._countAndFlagsBits = a3;
  v38._object = v34;
  v39 = BATracker.contentUserID(for:)(v38);
  v85 = a5 == -1;
  v82 = v32;
  if (v39.value._object)
  {
    v40 = v39.value._countAndFlagsBits;
  }

  else
  {
    v40 = 0;
  }

  if (v39.value._object)
  {
    v41 = v39.value._object;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  *&v75 = a3;
  *(&v75 + 1) = v34;
  LOBYTE(v76) = v61;
  *(&v76 + 1) = *v86;
  DWORD1(v76) = *&v86[3];
  *(&v76 + 1) = countAndFlagsBits;
  *&v77 = object;
  *(&v77 + 1) = v40;
  *&v78 = v41;
  BYTE8(v78) = v62;
  BYTE9(v78) = 4;
  HIDWORD(v78) = v31;
  LOBYTE(v79) = a5 == -1;
  *(&v79 + 1) = v83;
  BYTE3(v79) = v84;
  DWORD1(v79) = v65;
  BYTE8(v79) = v82;
  BYTE9(v79) = v64;
  BYTE10(v79) = v66;
  *(&v79 + 11) = 515;
  BYTE13(v79) = 2;
  v80 = 0uLL;

  v42 = v59;
  [v59 floatValue];
  if (v43 == 0.2)
  {
    v44 = 1;
  }

  else
  {
    [v42 floatValue];
    if (v45 == 0.4)
    {
      v44 = 2;
    }

    else
    {
      [v42 floatValue];
      if (v46 == 0.6)
      {
        v44 = 3;
      }

      else
      {
        [v42 floatValue];
        if (v47 == 0.8)
        {
          v44 = 4;
        }

        else
        {
          [v42 floatValue];
          if (v48 == 1.0)
          {
            v44 = 5;
          }

          else
          {
            v44 = 0;
          }
        }
      }
    }
  }

  LODWORD(v66) = v44;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v74 = v80;
  v69 = v75;
  v70 = v76;
  v68 = sub_3D68(&qword_2828D0, &unk_1FD120);
  v49 = sub_1E0CB0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v67 = xmmword_1E9970;
  *(v53 + 16) = xmmword_1E9970;
  v54 = enum case for DataEventTrait.onlyOnce(_:);
  v55 = *(v50 + 104);
  v55(v53 + v52, enum case for DataEventTrait.onlyOnce(_:), v49);
  sub_4C164();
  sub_1E0C00();

  sub_14424(&v75);
  LOBYTE(v69) = v66;
  v56 = swift_allocObject();
  *(v56 + 16) = v67;
  v55(v56 + v52, v54, v49);
  sub_7EAE8();
  sub_1E0C00();

  type metadata accessor for RatingEvent(0);
  sub_7EE34(&qword_281B80, type metadata accessor for RatingEvent);
  v69 = 0u;
  v70 = 0u;
  sub_1E0C10();
  return sub_18E48(&v69, &unk_281B50, &unk_1EDD70);
}

char *sub_7D39C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1;
  if (a1 || (result = sub_BFB78(), (v6 = result) != 0))
  {
    v8 = *&v6[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v9 = a1;
    v10 = v6;
    v11 = sub_1E1130();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v12 = type metadata accessor for BATracker();
    v13 = objc_allocWithZone(v12);
    v14 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    sub_3D68(&qword_281B00, &unk_1EDCF8);
    v15 = swift_allocObject();
    *(v15 + 24) = 0;
    *(v15 + 16) = &_swiftEmptyArrayStorage;
    *&v13[v14] = v15;
    swift_unknownObjectWeakInit();
    *&v13[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v11;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v22.receiver = v13;
    v22.super_class = v12;

    v16 = objc_msgSendSuper2(&v22, "init");

    swift_unknownObjectRelease();
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = a2;
    v17[4] = v16;
    v18 = *&v16[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v19 = swift_allocObject();
    *(v19 + 16) = sub_7E4EC;
    *(v19 + 24) = v17;
    v20 = v16;
    v21 = v3;
    swift_unknownObjectRetain();

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_7D5DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_BF2E4(a3, a4, v16);
  v12 = v16[2];
  v13 = v16[3];
  v14 = v16[4];
  v15 = v16[5];
  v10 = v16[0];
  v11 = v16[1];
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v4 = sub_1E0CB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E9970;
  (*(v5 + 104))(v8 + v7, enum case for DataEventTrait.onlyOnce(_:), v4);
  sub_4C164();
  sub_1E0C00();

  sub_14424(v16);
  type metadata accessor for ShareEvent(0);
  sub_7EE34(&unk_281B60, type metadata accessor for ShareEvent);
  v10 = 0u;
  v11 = 0u;
  sub_1E0C10();
  return sub_18E48(&v10, &unk_281B50, &unk_1EDD70);
}

uint64_t sub_7D890(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = v8;
  v11 = a2;

  sub_1E10C0();
}

uint64_t sub_7D948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___BAWidgetData_widgetFamily + 8);
  v3 = *(a2 + OBJC_IVAR___BAWidgetData_isContentExposed);
  v4 = *(a2 + OBJC_IVAR___BAWidgetData_displayMode);
  v5 = *(a2 + OBJC_IVAR___BAWidgetData_displayMode + 8);
  v6 = *(a2 + OBJC_IVAR___BAWidgetData_isStreakExposed);
  *&v13 = *(a2 + OBJC_IVAR___BAWidgetData_widgetFamily);
  *(&v13 + 1) = v2;
  *&v14 = v4;
  *(&v14 + 1) = v5;
  v15 = v3;
  v16 = v6;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v7 = sub_1E0CB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E9970;
  (*(v8 + 104))(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v7);
  sub_7EA94();

  sub_1E0C00();

  type metadata accessor for WidgetEngagementEvent(0);
  sub_7EE34(&qword_281B48, type metadata accessor for WidgetEngagementEvent);
  v13 = 0u;
  v14 = 0u;
  sub_1E0C10();
  return sub_18E48(&v13, &unk_281B50, &unk_1EDD70);
}

void sub_7DBBC(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v11 = *&a3[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v12 = swift_allocObject();
  *(v12 + 16) = a7;
  *(v12 + 24) = v10;
  v14 = a4;
  v13 = a3;

  sub_1E10C0();
}

id EventReporter.init()()
{
  v1 = OBJC_IVAR___BAEventReporter_dataProviders;
  sub_3D68(&qword_281B08, &qword_1EDD08);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = &_swiftEmptyArrayStorage;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EventReporter();
  return objc_msgSendSuper2(&v4, "init");
}

id EventReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7DDD0(uint64_t a1, uint64_t a2)
{
  if (qword_27D140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_281AE0)
  {
    return 0;
  }

  sub_4C2BC(&xmmword_281AC8, v8 + 1);
  v4 = v9;
  v5 = v10;
  sub_48B8((v8 + 1), v9);
  (*(v5 + 8))(v8, a1, a2, v4, v5);
  v6 = SLOBYTE(v8[0]);
  sub_4E48((v8 + 1));
  return qword_1EDD90[v6];
}

uint64_t sub_7DEC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2 == 2;
  }

  switch(a3)
  {
    case 'f':
      v11 = swift_allocObject();
      *(v11 + 16) = 2;
      *(v11 + 17) = v4;
      v12 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v13 = swift_allocObject();
      *(v13 + 16) = sub_7ED8C;
      *(v13 + 24) = v11;

      sub_1E10C0();

      v14 = swift_allocObject();
      *(v14 + 16) = 1;
      *(v14 + 17) = v4;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_7EEF0;
      *(v15 + 24) = v14;

      break;
    case 'e':
      v8 = swift_allocObject();
      *(v8 + 16) = 2;
      *(v8 + 17) = v4;
      v9 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v10 = swift_allocObject();
      *(v10 + 16) = sub_7EEF0;
      *(v10 + 24) = v8;

      break;
    case 'd':
      v5 = swift_allocObject();
      *(v5 + 16) = 1;
      *(v5 + 17) = v4;
      v6 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
      v7 = swift_allocObject();
      *(v7 + 16) = sub_7EEF0;
      *(v7 + 24) = v5;

      break;
    default:
      return result;
  }

  sub_1E10C0();
}

void sub_7E138(uint64_t a1)
{
  v2 = sub_BFB78();
  if (v2)
  {
    v3 = v2;
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_7EC8C();
    if (sub_1E1930())
    {
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = v3;
      v5 = *&v3[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
      v6 = swift_allocObject();
      *(v6 + 16) = sub_7ED30;
      *(v6 + 24) = v4;

      v7 = v3;

      sub_1E10C0();
    }

    else
    {
    }
  }
}

uint64_t sub_7E254()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7E29C()
{
  v1 = sub_1E09E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_7E360(uint64_t a1)
{
  v3 = *(sub_1E09E0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_7C728(a1, v1 + v4, v7);
}

uint64_t sub_7E414()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7E4A4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t dispatch thunk of EventReporterDataProviding.eventReporterUserEmbeddingData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_7E674;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_7E674()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of EventReporter.seriesType(for:)()
{
  return (*(&stru_20.nsects + (swift_isaMask & *v0)))();
}

{
  return (*&stru_68.sectname[swift_isaMask & *v0])();
}

uint64_t dispatch thunk of EventReporter.emitInBookSearchEvent(using:readingSessionData:contentData:)()
{
  return (*(&stru_68.size + (swift_isaMask & *v0)))();
}

{
  return (*(&stru_68.offset + (swift_isaMask & *v0)))();
}

uint64_t sub_7E9F0()
{
  v1 = v0[5];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_7EA40(uint64_t a1)
{
  v4 = *(v1 + 28);
  v2 = 0x10000000000;
  if (!*(v1 + 29))
  {
    v2 = 0;
  }

  return sub_7C2CC(a1, *(v1 + 16) | (*(v1 + 20) << 32), v2 | (*(v1 + 30) << 48) | (*(v1 + 28) << 32) | *(v1 + 24), (v1 + 32));
}

unint64_t sub_7EA94()
{
  result = qword_281B40;
  if (!qword_281B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281B40);
  }

  return result;
}

unint64_t sub_7EAE8()
{
  result = qword_281B78;
  if (!qword_281B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281B78);
  }

  return result;
}

unint64_t sub_7EB3C()
{
  result = qword_281B90;
  if (!qword_281B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281B90);
  }

  return result;
}

unint64_t sub_7EB90()
{
  result = qword_281B98;
  if (!qword_281B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281B98);
  }

  return result;
}

unint64_t sub_7EBE4()
{
  result = qword_281BA0;
  if (!qword_281BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281BA0);
  }

  return result;
}

unint64_t sub_7EC38()
{
  result = qword_281BA8;
  if (!qword_281BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281BA8);
  }

  return result;
}

unint64_t sub_7EC8C()
{
  result = qword_281BC8;
  if (!qword_281BC8)
  {
    sub_5DE50(&qword_281BC0, &unk_1EDD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281BC8);
  }

  return result;
}

uint64_t sub_7ECF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_7ED38()
{
  result = qword_281BD0;
  if (!qword_281BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281BD0);
  }

  return result;
}

uint64_t sub_7ED98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_7EDE0()
{
  result = qword_281BE0;
  if (!qword_281BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281BE0);
  }

  return result;
}

uint64_t sub_7EE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7EE7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_7EF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000214620 == a2)
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

uint64_t sub_7EFD8(uint64_t a1)
{
  v2 = sub_7F188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7F014(uint64_t a1)
{
  v2 = sub_7F188();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MaxScrollDepthData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_281C50, &qword_1EDDC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_7F188();
  sub_1E1E00();
  sub_1E1CE0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_7F188()
{
  result = qword_281C58;
  if (!qword_281C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C58);
  }

  return result;
}

uint64_t MaxScrollDepthData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_281C60, &qword_1EDDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_7F188();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1E1C10();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_7F33C()
{
  result = qword_281C68;
  if (!qword_281C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C68);
  }

  return result;
}

unint64_t sub_7F394()
{
  result = qword_281C70;
  if (!qword_281C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C70);
  }

  return result;
}

unint64_t sub_7F424()
{
  result = qword_281C78;
  if (!qword_281C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C78);
  }

  return result;
}

unint64_t sub_7F47C()
{
  result = qword_281C80;
  if (!qword_281C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C80);
  }

  return result;
}

unint64_t sub_7F4D4()
{
  result = qword_281C88;
  if (!qword_281C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C88);
  }

  return result;
}

BookAnalytics::AccountType_optional __swiftcall AccountType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FEF8;
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

uint64_t AccountType.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  if (*v0 != 1)
  {
    v1 = 0x73656E755469;
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

uint64_t sub_7F5D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64756F6C4369;
  if (v2 != 1)
  {
    v3 = 0x73656E755469;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x64756F6C4369;
  if (*a2 != 1)
  {
    v6 = 0x73656E755469;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
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

unint64_t sub_7F6D0()
{
  result = qword_281C90;
  if (!qword_281C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C90);
  }

  return result;
}

Swift::Int sub_7F724()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_7F7C0()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_7F848()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_7F8EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64756F6C4369;
  if (v2 != 1)
  {
    v4 = 0x73656E755469;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_7FA04()
{
  result = qword_281C98;
  if (!qword_281C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281C98);
  }

  return result;
}

uint64_t sub_7FAB8()
{
  v1 = 0x6974634174696465;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6D755374696465;
  }
}

uint64_t sub_7FB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_80720(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_7FB54(uint64_t a1)
{
  v2 = sub_801E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7FB90(uint64_t a1)
{
  v2 = sub_801E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryEditData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281CA0, &qword_1EE0F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v14 = *(v1 + 9);
  v15 = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_801E8();

  sub_1E1E00();
  v21 = v9;
  v20 = 0;
  sub_3D68(&qword_281CB0, &qword_1EE100);
  sub_80338(&qword_281CB8, sub_8023C);
  sub_1E1CF0();

  if (!v2)
  {
    v12 = v14;
    v19 = v15;
    v18 = 1;
    sub_80290();
    sub_1E1CF0();
    v17 = v12;
    v16 = 2;
    sub_802E4();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t LibraryEditData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281CD8, &qword_1EE108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_801E8();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  sub_3D68(&qword_281CB0, &qword_1EE100);
  v15[15] = 0;
  sub_80338(&qword_281CE0, sub_803B0);
  sub_1E1C20();
  v11 = v16;
  v15[13] = 1;
  sub_80404();
  sub_1E1C20();
  v12 = v15[14];
  v15[11] = 2;
  sub_80458();
  sub_1E1C20();
  (*(v6 + 8))(v9, v5);
  v13 = v15[12];
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 9) = v13;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics15LibraryEditDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (sub_5E4C0(*a1, *a2) & 1) != 0 && (sub_2397C(v2, v4))
  {
    v6 = 0xE700000000000000;
    v7 = 0x73736563637573;
    if (v3 != 1)
    {
      v7 = 0x6C65636E6163;
      v6 = 0xE600000000000000;
    }

    if (v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = 0xE700000000000000;
    v11 = 0x73736563637573;
    if (v5 != 1)
    {
      v11 = 0x6C65636E6163;
      v10 = 0xE600000000000000;
    }

    if (v5)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (v5)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    if (v8 == v12 && v9 == v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1E1D30();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_801E8()
{
  result = qword_281CA8;
  if (!qword_281CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CA8);
  }

  return result;
}

unint64_t sub_8023C()
{
  result = qword_281CC0;
  if (!qword_281CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CC0);
  }

  return result;
}

unint64_t sub_80290()
{
  result = qword_281CC8;
  if (!qword_281CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CC8);
  }

  return result;
}

unint64_t sub_802E4()
{
  result = qword_281CD0;
  if (!qword_281CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CD0);
  }

  return result;
}

uint64_t sub_80338(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_281CB0, &qword_1EE100);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_803B0()
{
  result = qword_281CE8;
  if (!qword_281CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CE8);
  }

  return result;
}

unint64_t sub_80404()
{
  result = qword_281CF0;
  if (!qword_281CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CF0);
  }

  return result;
}

unint64_t sub_80458()
{
  result = qword_281CF8;
  if (!qword_281CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281CF8);
  }

  return result;
}

unint64_t sub_804B0()
{
  result = qword_281D00;
  if (!qword_281D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D00);
  }

  return result;
}

unint64_t sub_80508()
{
  result = qword_281D08;
  if (!qword_281D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D08);
  }

  return result;
}

uint64_t sub_8055C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_80570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_805B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_8061C()
{
  result = qword_281D10;
  if (!qword_281D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D10);
  }

  return result;
}

unint64_t sub_80674()
{
  result = qword_281D18;
  if (!qword_281D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D18);
  }

  return result;
}

unint64_t sub_806CC()
{
  result = qword_281D20;
  if (!qword_281D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D20);
  }

  return result;
}

uint64_t sub_80720(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6D755374696465 && a2 == 0xEB00000000797261;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974634174696465 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000214640 == a2)
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

uint64_t SearchSuggestionsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchSuggestionsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultSelectEvent.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  v4 = sub_3D68(&qword_281D60, &qword_1EE348);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 20);
  v4 = sub_3D68(&qword_281D60, &qword_1EE348);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 24);
  v4 = sub_3D68(&qword_281D68, &unk_1EE350);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 32);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.genreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.genreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 36);
  v4 = sub_3D68(&qword_281D70, &unk_1F06C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultSelectEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultSelectEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_281D60, &qword_1EE348);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t SearchSuggestionsReturnedEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SearchResultSelectEvent.Model.searchSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t SearchResultSelectEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v10 = v1[7];
  v11 = v2;
  v4 = v1[10];
  v12 = v1[9];
  v3 = v12;
  v13 = v4;
  v6 = v1[6];
  v9[0] = v1[5];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_437B4(v9, &v8);
}

uint64_t SearchResultSelectEvent.Model.genreData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_815A0(v2, v3);
}

uint64_t sub_815A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SearchResultSelectEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultSelectEvent.Model(0) + 40);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultSelectEvent.Model.init(searchData:searchSelectionData:searchResultsData:contentData:seriesData:genreData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *(a2 + 5);
  v16 = a2[3];
  v17 = a2[4];
  v18 = *a3;
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 24) = v11;
  *(a8 + 32) = v12;
  *(a8 + 40) = v13;
  *(a8 + 48) = v14;
  *(a8 + 52) = v15;
  *(a8 + 56) = v16;
  *(a8 + 64) = v17;
  *(a8 + 72) = v18;
  v19 = a4[3];
  *(a8 + 112) = a4[2];
  *(a8 + 128) = v19;
  v20 = a4[5];
  *(a8 + 144) = a4[4];
  *(a8 + 160) = v20;
  v21 = a4[1];
  *(a8 + 80) = *a4;
  *(a8 + 96) = v21;
  v22 = a5[1];
  *(a8 + 176) = *a5;
  *(a8 + 192) = v22;
  v23 = *a6;
  v24 = a6[1];
  *(a8 + 208) = a5[2];
  *(a8 + 224) = v23;
  v25 = a6[2];
  *(a8 + 240) = v24;
  *(a8 + 256) = v25;
  v26 = *(type metadata accessor for SearchResultSelectEvent.Model(0) + 40);
  v27 = sub_1E1150();
  v28 = *(*(v27 - 8) + 32);

  return v28(a8 + v26, a7, v27);
}

uint64_t sub_81778()
{
  v1 = *v0;
  v2 = 0x6144686372616573;
  v3 = 0x74614465726E6567;
  if (v1 != 5)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x44746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x6144736569726573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_81870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_837F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_81898(uint64_t a1)
{
  v2 = sub_81DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_818D4(uint64_t a1)
{
  v2 = sub_81DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultSelectEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_281D78, &qword_1EE360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_81DF0();
  sub_1E1E00();
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  *&v53 = *v2;
  *(&v53 + 1) = v10;
  *&v54 = v11;
  *(&v54 + 1) = v12;
  LOBYTE(v47) = 0;
  sub_81E44();

  v13 = v61;
  sub_1E1CF0();
  if (v13)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v5;

    v16 = *(v2 + 40);
    v17 = *(v2 + 48);
    v18 = *(v2 + 52);
    v19 = *(v2 + 56);
    v20 = *(v2 + 64);
    *&v53 = *(v2 + 32);
    *(&v53 + 1) = v16;
    LOWORD(v54) = v17;
    DWORD1(v54) = v18;
    *(&v54 + 1) = v19;
    *&v55 = v20;
    LOBYTE(v47) = 1;
    sub_81E98();

    sub_1E1CF0();

    v60 = *(v2 + 72);
    v59 = 2;
    sub_81EEC();

    sub_1E1CF0();

    v21 = *(v2 + 128);
    v22 = *(v2 + 96);
    v55 = *(v2 + 112);
    v56 = v21;
    v23 = *(v2 + 128);
    v24 = *(v2 + 160);
    v57 = *(v2 + 144);
    v58 = v24;
    v25 = *(v2 + 96);
    v53 = *(v2 + 80);
    v54 = v25;
    v49 = v55;
    v50 = v23;
    v26 = *(v2 + 160);
    v51 = v57;
    v52 = v26;
    v47 = v53;
    v48 = v22;
    v46 = 3;
    sub_437B4(&v53, v45);
    sub_143D0();
    sub_1E1C80();
    v45[2] = v49;
    v45[3] = v50;
    v45[4] = v51;
    v45[5] = v52;
    v45[0] = v47;
    v45[1] = v48;
    sub_440C0(v45);
    v27 = *(v2 + 184);
    v28 = *(v2 + 192);
    v29 = *(v2 + 200);
    v30 = *(v2 + 208);
    v31 = *(v2 + 216);
    v39 = *(v2 + 176);
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v38 = 4;
    sub_13BDC(v39, v27, v28, v29, v30, v31);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v39, v40, v41, v42, v43, v44);
    v32 = *(v2 + 232);
    v33 = *(v2 + 240);
    v34 = *(v2 + 248);
    v35 = *(v2 + 256);
    v36 = *(v2 + 264);
    v39 = *(v2 + 224);
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v44 = v36;
    v38 = 5;
    sub_815A0(v39, v32);
    sub_81F40();
    sub_1E1C80();
    sub_4F16C(v39, v40);
    LODWORD(v20) = *(type metadata accessor for SearchResultSelectEvent.Model(0) + 40);
    LOBYTE(v39) = 6;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v15 + 8))(v8, v4);
  }
}

unint64_t sub_81DF0()
{
  result = qword_281D80;
  if (!qword_281D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D80);
  }

  return result;
}

unint64_t sub_81E44()
{
  result = qword_281D88;
  if (!qword_281D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D88);
  }

  return result;
}

unint64_t sub_81E98()
{
  result = qword_281D90;
  if (!qword_281D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D90);
  }

  return result;
}

unint64_t sub_81EEC()
{
  result = qword_281D98;
  if (!qword_281D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281D98);
  }

  return result;
}

unint64_t sub_81F40()
{
  result = qword_281DA0;
  if (!qword_281DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281DA0);
  }

  return result;
}

uint64_t SearchResultSelectEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1E1150();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3D68(&qword_281DA8, &qword_1EE368);
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v37);
  v10 = v33 - v9;
  v11 = type metadata accessor for SearchResultSelectEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v50 = a1;
  sub_48B8(a1, v15);
  sub_81DF0();
  v38 = v10;
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v50);
  }

  v17 = v14;
  v18 = v35;
  v19 = v36;
  LOBYTE(v40) = 0;
  sub_826DC();
  sub_1E1C20();
  v20 = *(&v44 + 1);
  v21 = v45;
  *v17 = v44;
  *(v17 + 8) = v20;
  v33[3] = v20;
  *(v17 + 16) = v21;
  v33[2] = *(&v21 + 1);
  LOBYTE(v40) = 1;
  sub_82730();
  sub_1E1C20();
  v22 = *(&v44 + 1);
  v23 = v45;
  v24 = DWORD1(v45);
  v25 = *(&v45 + 1);
  v26 = v46;
  *(v17 + 32) = v44;
  *(v17 + 40) = v22;
  *(v17 + 48) = v23;
  *(v17 + 52) = v24;
  *(v17 + 56) = v25;
  *(v17 + 64) = v26;
  LOBYTE(v40) = 2;
  sub_82784();
  v33[1] = 0;
  sub_1E1C20();
  *(v17 + 72) = v44;
  v43 = 3;
  sub_14CB8();
  sub_1E1BB0();
  v27 = v47;
  *(v17 + 112) = v46;
  *(v17 + 128) = v27;
  v28 = v49;
  *(v17 + 144) = v48;
  *(v17 + 160) = v28;
  v29 = v45;
  *(v17 + 80) = v44;
  *(v17 + 96) = v29;
  v39 = 4;
  sub_DAD8();
  sub_1E1BB0();
  v30 = v41;
  *(v17 + 176) = v40;
  *(v17 + 192) = v30;
  *(v17 + 208) = v42;
  v39 = 5;
  sub_827D8();
  sub_1E1BB0();
  v31 = v41;
  *(v17 + 224) = v40;
  *(v17 + 240) = v31;
  *(v17 + 256) = v42;
  LOBYTE(v40) = 6;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v38, v37);
  (*(v34 + 32))(v17 + *(v11 + 40), v7, v4);
  sub_8282C(v17, v19);
  sub_4E48(v50);
  return sub_82890(v17);
}

unint64_t sub_826DC()
{
  result = qword_281DB0;
  if (!qword_281DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281DB0);
  }

  return result;
}

unint64_t sub_82730()
{
  result = qword_281DB8;
  if (!qword_281DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281DB8);
  }

  return result;
}

unint64_t sub_82784()
{
  result = qword_281DC0;
  if (!qword_281DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281DC0);
  }

  return result;
}

unint64_t sub_827D8()
{
  result = qword_281DC8;
  if (!qword_281DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281DC8);
  }

  return result;
}

uint64_t sub_8282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_82890(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultSelectEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8298C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_281D60, &qword_1EE348);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_281D68, &unk_1EE350);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_281D70, &unk_1F06C0);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

uint64_t sub_82C08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_281D60, &qword_1EE348);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_281D68, &unk_1EE350);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_82ED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_281D60, &qword_1EE348);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_281D68, &unk_1EE350);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_281D70, &unk_1F06C0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_83190()
{
  sub_833DC(319, &qword_281E38, sub_826DC, sub_81E44);
  if (v0 <= 0x3F)
  {
    sub_833DC(319, &qword_281E40, sub_82730, sub_81E98);
    if (v1 <= 0x3F)
    {
      sub_833DC(319, &qword_281E48, sub_82784, sub_81EEC);
      if (v2 <= 0x3F)
      {
        sub_833DC(319, &qword_27E2C8, sub_14CB8, sub_143D0);
        if (v3 <= 0x3F)
        {
          sub_833DC(319, &qword_27DE18, sub_DAD8, sub_D57C);
          if (v4 <= 0x3F)
          {
            sub_833DC(319, &unk_281E50, sub_827D8, sub_81F40);
            if (v5 <= 0x3F)
            {
              sub_5684();
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

void sub_833DC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_8346C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8352C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_835D0()
{
  sub_19FE0(319, &qword_27FE30);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E398);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_281F00);
      if (v2 <= 0x3F)
      {
        sub_1E1150();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_836F0()
{
  result = qword_281F48;
  if (!qword_281F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F48);
  }

  return result;
}

unint64_t sub_83748()
{
  result = qword_281F50;
  if (!qword_281F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F50);
  }

  return result;
}

unint64_t sub_837A0()
{
  result = qword_281F58;
  if (!qword_281F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F58);
  }

  return result;
}

uint64_t sub_837F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214660 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000214680 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614465726E6567 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

BookAnalytics::SkipActionType_optional __swiftcall SkipActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FF60;
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

uint64_t SkipActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6E69626275726373;
  if (*v0 != 2)
  {
    v2 = 0x6172447265766F63;
  }

  if (*v0)
  {
    v1 = 0x61546E6F74747562;
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

unint64_t sub_83B50()
{
  result = qword_281F60;
  if (!qword_281F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F60);
  }

  return result;
}

Swift::Int sub_83BA4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_83C70()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_83D28()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_83DFC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x6E69626275726373;
  if (*v1 != 2)
  {
    v4 = 0x6172447265766F63;
  }

  if (*v1)
  {
    v3 = 0x61546E6F74747562;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE900000000000067;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_83F44()
{
  result = qword_281F68;
  if (!qword_281F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F68);
  }

  return result;
}

BookAnalytics::SessionReadingData __swiftcall SessionReadingData.init(timeSpentReading:uniqueBooksRead:)(Swift::Int64 timeSpentReading, Swift::Int32 uniqueBooksRead)
{
  *v2 = timeSpentReading;
  *(v2 + 8) = uniqueBooksRead;
  result.timeSpentReading = timeSpentReading;
  result.uniqueBooksRead = uniqueBooksRead;
  return result;
}

unint64_t sub_83FFC()
{
  if (*v0)
  {
    result = 0x6F42657571696E75;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_84048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000000002146A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F42657571696E75 && a2 == 0xEF64616552736B6FLL)
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

uint64_t sub_84138(uint64_t a1)
{
  v2 = sub_8433C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_84174(uint64_t a1)
{
  v2 = sub_8433C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionReadingData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281F70, &qword_1EE6D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 2);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8433C();
  sub_1E1E00();
  v15 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v14 = 1;
    sub_1E1D00();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_8433C()
{
  result = qword_281F78;
  if (!qword_281F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F78);
  }

  return result;
}

uint64_t SessionReadingData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_281F80, &qword_1EE6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8433C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1C40();
    v15 = 1;
    v12 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_84538()
{
  result = qword_281F88;
  if (!qword_281F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F88);
  }

  return result;
}

unint64_t sub_84590()
{
  result = qword_281F90;
  if (!qword_281F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F90);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SessionReadingData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_8464C()
{
  result = qword_281F98;
  if (!qword_281F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281F98);
  }

  return result;
}

unint64_t sub_846A4()
{
  result = qword_281FA0;
  if (!qword_281FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FA0);
  }

  return result;
}

unint64_t sub_846FC()
{
  result = qword_281FA8;
  if (!qword_281FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FA8);
  }

  return result;
}

uint64_t static ErrorData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E1D30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

uint64_t sub_847F4()
{
  if (*v0)
  {
    result = 0x6553686372616573;
  }

  else
  {
    result = 0x7453686372616573;
  }

  *v0;
  return result;
}

uint64_t sub_84844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6553686372616573 && a2 == 0xEF44496E6F697373)
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

uint64_t sub_8492C(uint64_t a1)
{
  v2 = sub_84B38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_84968(uint64_t a1)
{
  v2 = sub_84B38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_281FB0, &qword_1EE8F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_84B38();
  sub_1E1E00();
  v16 = 0;
  v12 = v14[3];
  sub_1E1CB0();
  if (!v12)
  {
    v15 = 1;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_84B38()
{
  result = qword_281FB8;
  if (!qword_281FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FB8);
  }

  return result;
}

uint64_t SearchData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_281FC0, &qword_1EE900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_84B38();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E1BE0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_4E48(a1);
}

uint64_t sub_84DC4(uint64_t a1, int a2)
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

uint64_t sub_84E0C(uint64_t result, int a2, int a3)
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

unint64_t sub_84E70()
{
  result = qword_281FC8;
  if (!qword_281FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FC8);
  }

  return result;
}

unint64_t sub_84EC8()
{
  result = qword_281FD0;
  if (!qword_281FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FD0);
  }

  return result;
}

unint64_t sub_84F20()
{
  result = qword_281FD8;
  if (!qword_281FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FD8);
  }

  return result;
}

BookAnalytics::SelectionType_optional __swiftcall SelectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25FFE0;
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

uint64_t SelectionType.rawValue.getter()
{
  v1 = 1802465122;
  if (*v0 != 1)
  {
    v1 = 0x6F6F626F69647561;
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

uint64_t sub_85028(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802465122;
  if (v2 != 1)
  {
    v4 = 0x6F6F626F69647561;
    v3 = 0xE90000000000006BLL;
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

  v7 = 0xE400000000000000;
  v8 = 1802465122;
  if (*a2 != 1)
  {
    v8 = 0x6F6F626F69647561;
    v7 = 0xE90000000000006BLL;
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

unint64_t sub_85128()
{
  result = qword_281FE0;
  if (!qword_281FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FE0);
  }

  return result;
}

Swift::Int sub_8517C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_8521C()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_852A8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_85350(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 0x6F6F626F69647561;
    v4 = 0xE90000000000006BLL;
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

unint64_t sub_8546C()
{
  result = qword_281FE8;
  if (!qword_281FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FE8);
  }

  return result;
}

uint64_t sub_854DC()
{
  v1 = 0x61566C6C65537075;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F4C6C6C65537075;
  }
}

uint64_t sub_85554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_85F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8557C(uint64_t a1)
{
  v2 = sub_85B98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_855B8(uint64_t a1)
{
  v2 = sub_85B98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpSellData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_281FF0, &qword_1EEC40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v10 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_85B98();
  sub_1E1E00();
  v19 = v9;
  v18 = 0;
  sub_85BEC();
  sub_1E1CF0();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_85C40();
    sub_1E1CF0();
    v15 = 2;
    sub_1E1CB0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t UpSellData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_282010, &qword_1EEC48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_85B98();
  sub_1E1DF0();
  if (!v2)
  {
    v21 = 0;
    sub_85C94();
    sub_1E1C20();
    v11 = v22;
    v19 = 1;
    sub_85CE8();
    sub_1E1C20();
    v17 = v20;
    v18 = 2;
    v13 = sub_1E1BE0();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v17;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics10UpSellDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((sub_23AC4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = 0x6E6F43664F646E65;
  v9 = 0xEC000000746E6574;
  if (v2 != 1)
  {
    v8 = 0x6F6F42664F646E65;
    v9 = 0xE90000000000006BLL;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = 0x6E6F43664F646E65;
  v13 = 0xEC000000746E6574;
  if (v5 != 1)
  {
    v12 = 0x6F6F42664F646E65;
    v13 = 0xE90000000000006BLL;
  }

  if (v5)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0x6E776F6E6B6E75;
  }

  if (v5)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (v10 != v14 || v11 != v15)
  {
    v16 = sub_1E1D30();

    if (v16)
    {
      goto LABEL_22;
    }

    return 0;
  }

LABEL_22:
  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_85B98()
{
  result = qword_281FF8;
  if (!qword_281FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281FF8);
  }

  return result;
}

unint64_t sub_85BEC()
{
  result = qword_282000;
  if (!qword_282000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282000);
  }

  return result;
}

unint64_t sub_85C40()
{
  result = qword_282008;
  if (!qword_282008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282008);
  }

  return result;
}

unint64_t sub_85C94()
{
  result = qword_282018;
  if (!qword_282018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282018);
  }

  return result;
}

unint64_t sub_85CE8()
{
  result = qword_282020;
  if (!qword_282020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282020);
  }

  return result;
}

__n128 sub_85D44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_85D58(uint64_t a1, int a2)
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

uint64_t sub_85DA0(uint64_t result, int a2, int a3)
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

unint64_t sub_85E04()
{
  result = qword_282028;
  if (!qword_282028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282028);
  }

  return result;
}

unint64_t sub_85E5C()
{
  result = qword_282030;
  if (!qword_282030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282030);
  }

  return result;
}

unint64_t sub_85EB4()
{
  result = qword_282038;
  if (!qword_282038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282038);
  }

  return result;
}

uint64_t sub_85F08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C6C6C65537075 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61566C6C65537075 && a2 == 0xED0000746E616972 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002146C0 == a2)
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

BookAnalytics::PurchaseMethod_optional __swiftcall PurchaseMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260048;
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

uint64_t PurchaseMethod.rawValue.getter()
{
  v1 = 0x6143746964657263;
  if (*v0 != 1)
  {
    v1 = 0x6974706D65646572;
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

uint64_t sub_86100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6143746964657263;
  v4 = 0xEA00000000006472;
  if (v2 != 1)
  {
    v3 = 0x6974706D65646572;
    v4 = 0xEE0065646F436E6FLL;
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

  v7 = 0x6143746964657263;
  v8 = 0xEA00000000006472;
  if (*a2 != 1)
  {
    v7 = 0x6974706D65646572;
    v8 = 0xEE0065646F436E6FLL;
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

unint64_t sub_86228()
{
  result = qword_282040;
  if (!qword_282040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282040);
  }

  return result;
}

Swift::Int sub_8627C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_86330()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_863D0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_8648C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006472;
  v5 = 0x6143746964657263;
  if (v2 != 1)
  {
    v5 = 0x6974706D65646572;
    v4 = 0xEE0065646F436E6FLL;
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

unint64_t sub_865BC()
{
  result = qword_282048;
  if (!qword_282048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282048);
  }

  return result;
}

uint64_t SearchEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t SearchResultsReturnedEvent.Model.searchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2EB50(v2, v3);
}

uint64_t SearchEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEvent.Model.init(searchData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for SearchEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t sub_86A68()
{
  if (*v0)
  {
    result = 0x746144746E657665;
  }

  else
  {
    result = 0x6144686372616573;
  }

  *v0;
  return result;
}

uint64_t sub_86AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
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

uint64_t sub_86B98(uint64_t a1)
{
  v2 = sub_86DE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_86BD4(uint64_t a1)
{
  v2 = sub_86DE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282080, &qword_1EEF88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_86DE4();
  sub_1E1E00();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v17 = *v3;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v16[15] = 0;
  sub_2EB50(v17, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v17, v18);
  if (!v2)
  {
    v14 = *(type metadata accessor for SearchEvent.Model(0) + 20);
    LOBYTE(v17) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_86DE4()
{
  result = qword_282088;
  if (!qword_282088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282088);
  }

  return result;
}

uint64_t SearchEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E1150();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_282090, &qword_1EEF90);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SearchEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_86DE4();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v21 = v10;
  v15 = v13;
  v17 = v24;
  v16 = v25;
  v29 = 0;
  sub_826DC();
  v18 = v26;
  sub_1E1BB0();
  v19 = v28;
  *v15 = v27;
  *(v15 + 1) = v19;
  LOBYTE(v27) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(&v15[*(v21 + 20)], v6, v16);
  sub_8714C(v15, v23);
  sub_4E48(a1);
  return sub_871B0(v15);
}

uint64_t sub_8714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_871B0(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_872AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_873A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
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

uint64_t sub_874C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
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

void sub_87600()
{
  if (!qword_281E38)
  {
    sub_826DC();
    sub_81E44();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_281E38);
    }
  }
}

uint64_t sub_8767C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1E1150();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_87748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
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

uint64_t sub_87818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_878A8()
{
  if (!qword_282190)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_282190);
    }
  }
}

unint64_t sub_8790C()
{
  result = qword_2821C0;
  if (!qword_2821C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821C0);
  }

  return result;
}

unint64_t sub_87964()
{
  result = qword_2821C8;
  if (!qword_2821C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821C8);
  }

  return result;
}

unint64_t sub_879BC()
{
  result = qword_2821D0;
  if (!qword_2821D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821D0);
  }

  return result;
}

uint64_t static ListeningActionSourceData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2222C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2249C(v2, v3);
}

unint64_t sub_87A80()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_87ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000019 && 0x80000000002146E0 == a2;
  if (v5 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000214700 == a2)
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

uint64_t sub_87BA0(uint64_t a1)
{
  v2 = sub_87DB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_87BDC(uint64_t a1)
{
  v2 = sub_87DB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListeningActionSourceData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2821D8, &qword_1EF190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_87DB4();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_87E08();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_87E5C();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_87DB4()
{
  result = qword_2821E0;
  if (!qword_2821E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821E0);
  }

  return result;
}

unint64_t sub_87E08()
{
  result = qword_2821E8;
  if (!qword_2821E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821E8);
  }

  return result;
}

unint64_t sub_87E5C()
{
  result = qword_2821F0;
  if (!qword_2821F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2821F0);
  }

  return result;
}

uint64_t ListeningActionSourceData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_2821F8, &qword_1EF198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_87DB4();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_88084();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_880D8();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

unint64_t sub_88084()
{
  result = qword_282200;
  if (!qword_282200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282200);
  }

  return result;
}

unint64_t sub_880D8()
{
  result = qword_282208;
  if (!qword_282208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListeningActionSourceData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
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

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ListeningActionSourceData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_882D8()
{
  result = qword_282210;
  if (!qword_282210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282210);
  }

  return result;
}

unint64_t sub_88330()
{
  result = qword_282218;
  if (!qword_282218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282218);
  }

  return result;
}

unint64_t sub_88388()
{
  result = qword_282220;
  if (!qword_282220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282220);
  }

  return result;
}

uint64_t ResetThemeEvent.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ResetThemeEvent.textData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ResetThemeEvent.layoutOptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.layoutOptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResetThemeEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResetThemeEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResetThemeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ResetThemeEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = enum case for EventProperty.required<A>(_:);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

uint64_t ResetThemeEvent.Model.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 ResetThemeEvent.Model.layoutOptionData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 36);
  v3 = *(v1 + 44);
  result = *(v1 + 20);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  return result;
}

uint64_t ResetThemeEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetThemeEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResetThemeEvent.Model.init(textData:layoutOptionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 20) = *a2;
  *(a4 + 36) = v7;
  *(a4 + 44) = v8;
  v9 = *(type metadata accessor for ResetThemeEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t sub_88B00()
{
  v1 = 0xD000000000000010;
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
    return 0x6174614474786574;
  }
}

uint64_t sub_88B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_89C78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_88B8C(uint64_t a1)
{
  v2 = sub_88E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_88BC8(uint64_t a1)
{
  v2 = sub_88E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ResetThemeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_282258, &qword_1EF3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_88E2C();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  *&v17 = *v3;
  *(&v17 + 1) = v11;
  LOBYTE(v18) = v12;
  v20 = 0;
  sub_7BCC();

  sub_1E1C80();

  if (!v2)
  {
    v13 = *(v3 + 36);
    v14 = *(v3 + 44);
    v17 = *(v3 + 20);
    v18 = v13;
    v19 = v14;
    v20 = 1;
    sub_7C20();
    sub_1E1C80();
    v15 = *(type metadata accessor for ResetThemeEvent.Model(0) + 24);
    LOBYTE(v17) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_88E2C()
{
  result = qword_282260;
  if (!qword_282260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282260);
  }

  return result;
}

uint64_t ResetThemeEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E1150();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_282268, &qword_1EF3C8);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v30);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ResetThemeEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_88E2C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v24 = v10;
  v25 = v6;
  v16 = v28;
  v15 = v29;
  v17 = v13;
  v34 = 0;
  sub_829C();
  v18 = v30;
  sub_1E1BB0();
  v19 = v32;
  *v17 = v31;
  *(v17 + 16) = v19;
  v34 = 1;
  sub_82F0();
  sub_1E1BB0();
  v20 = v32;
  v21 = v33;
  *(v17 + 20) = v31;
  *(v17 + 36) = v20;
  *(v17 + 44) = v21;
  LOBYTE(v31) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v16 + 8))(v9, v18);
  (*(v26 + 32))(v17 + *(v24 + 24), v25, v15);
  sub_8920C(v17, v27);
  sub_4E48(a1);
  return sub_89270(v17);
}

uint64_t sub_8920C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetThemeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_89270(uint64_t a1)
{
  v2 = type metadata accessor for ResetThemeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = enum case for EventProperty.required<A>(_:);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

uint64_t sub_894B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DA90, &qword_1E41F0);
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

uint64_t sub_89628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DA90, &qword_1E41F0);
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

void sub_89798()
{
  sub_898A4(319, &qword_27DB50, sub_829C, sub_7BCC);
  if (v0 <= 0x3F)
  {
    sub_898A4(319, &unk_27DB58, sub_82F0, sub_7C20);
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

void sub_898A4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_89934(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1E1150();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_89A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
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

void sub_89AA4()
{
  sub_19FE0(319, &unk_282370);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27DC00);
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

unint64_t sub_89B74()
{
  result = qword_2823A8;
  if (!qword_2823A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2823A8);
  }

  return result;
}

unint64_t sub_89BCC()
{
  result = qword_2823B0;
  if (!qword_2823B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2823B0);
  }

  return result;
}

unint64_t sub_89C24()
{
  result = qword_2823B8;
  if (!qword_2823B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2823B8);
  }

  return result;
}

uint64_t sub_89C78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614474786574 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213820 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t InBookSearchEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 24);
  v4 = sub_3D68(&qword_281D58, &qword_1EE340);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 24);
  v4 = sub_3D68(&qword_281D58, &qword_1EE340);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 28);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InBookSearchEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InBookSearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_280D60, &qword_1EF5E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InBookSearchEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t InBookSearchEvent.Model.searchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2EB50(v2, v3);
}

uint64_t InBookSearchEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t InBookSearchEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InBookSearchEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InBookSearchEvent.Model.init(readingSessionData:contentData:searchData:seriesData:eventData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = *(a1 + 13);
  v12 = *(a1 + 14);
  *a6 = *a1;
  *(a6 + 4) = v8;
  *(a6 + 8) = v9;
  *(a6 + 12) = v10;
  *(a6 + 13) = v11;
  *(a6 + 14) = v12;
  v13 = a2[3];
  *(a6 + 48) = a2[2];
  *(a6 + 64) = v13;
  v14 = a2[5];
  *(a6 + 80) = a2[4];
  *(a6 + 96) = v14;
  v15 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v15;
  v16 = a3[1];
  *(a6 + 112) = *a3;
  *(a6 + 128) = v16;
  v17 = a4[1];
  *(a6 + 144) = *a4;
  *(a6 + 160) = v17;
  *(a6 + 176) = a4[2];
  v18 = *(type metadata accessor for InBookSearchEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_8A764()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6144686372616573;
  v4 = 0x6144736569726573;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_8A818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_8BEE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8A840(uint64_t a1)
{
  v2 = sub_8AC50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8A87C(uint64_t a1)
{
  v2 = sub_8AC50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InBookSearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2823F0, &qword_1EF5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_8AC50();
  sub_1E1E00();
  v11 = *(v3 + 4);
  v12 = v3[2];
  v13 = *(v3 + 12);
  v14 = *(v3 + 13);
  v15 = *(v3 + 14);
  v54 = *v3;
  v55 = v11;
  v56 = v12;
  v57 = v13;
  v58 = v14;
  v59 = v15;
  v53 = 0;
  sub_67BE8();
  sub_1E1CF0();
  if (!v2)
  {
    v16 = *(v3 + 4);
    v17 = *(v3 + 2);
    v49 = *(v3 + 3);
    v50 = v16;
    v18 = *(v3 + 4);
    v19 = *(v3 + 6);
    v51 = *(v3 + 5);
    v52 = v19;
    v20 = *(v3 + 2);
    v48[0] = *(v3 + 1);
    v48[1] = v20;
    v44 = v49;
    v45 = v18;
    v21 = *(v3 + 6);
    v46 = v51;
    v47 = v21;
    v42 = v48[0];
    v43 = v17;
    v41 = 1;
    sub_13A5C(v48, v40);
    sub_143D0();
    sub_1E1CF0();
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v40[5] = v47;
    v40[0] = v42;
    v40[1] = v43;
    sub_14424(v40);
    v22 = *(v3 + 15);
    v23 = *(v3 + 16);
    v24 = *(v3 + 17);
    v33 = *(v3 + 14);
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v39 = 2;
    sub_2EB50(v33, v22);
    sub_81E44();
    sub_1E1C80();
    sub_2F7F0(v33, v34);
    v25 = *(v3 + 19);
    v26 = *(v3 + 20);
    v27 = *(v3 + 21);
    v28 = *(v3 + 22);
    v29 = *(v3 + 23);
    v33 = *(v3 + 18);
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = 3;
    sub_13BDC(v33, v25, v26, v27, v28, v29);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v33, v34, v35, v36, v37, v38);
    v30 = *(type metadata accessor for InBookSearchEvent.Model(0) + 32);
    LOBYTE(v33) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_8AC50()
{
  result = qword_2823F8;
  if (!qword_2823F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2823F8);
  }

  return result;
}