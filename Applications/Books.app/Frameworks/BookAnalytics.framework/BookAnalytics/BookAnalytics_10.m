unint64_t sub_F0E6C()
{
  result = qword_285F60;
  if (!qword_285F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F60);
  }

  return result;
}

unint64_t sub_F0EC0()
{
  result = qword_285F68;
  if (!qword_285F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F68);
  }

  return result;
}

unint64_t sub_F0F14()
{
  result = qword_285F70;
  if (!qword_285F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F70);
  }

  return result;
}

unint64_t sub_F0F68()
{
  result = qword_285F78;
  if (!qword_285F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F78);
  }

  return result;
}

unint64_t sub_F0FBC()
{
  result = qword_285F80;
  if (!qword_285F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F80);
  }

  return result;
}

unint64_t sub_F1010()
{
  result = qword_285F90;
  if (!qword_285F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F90);
  }

  return result;
}

unint64_t sub_F1064()
{
  result = qword_285F98;
  if (!qword_285F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285F98);
  }

  return result;
}

unint64_t sub_F10B8()
{
  result = qword_285FA0;
  if (!qword_285FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FA0);
  }

  return result;
}

unint64_t sub_F110C()
{
  result = qword_285FA8;
  if (!qword_285FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FA8);
  }

  return result;
}

unint64_t sub_F1160()
{
  result = qword_285FB0;
  if (!qword_285FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F1320()
{
  result = qword_285FB8;
  if (!qword_285FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FB8);
  }

  return result;
}

unint64_t sub_F1378()
{
  result = qword_285FC0;
  if (!qword_285FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FC0);
  }

  return result;
}

unint64_t sub_F13D0()
{
  result = qword_285FC8;
  if (!qword_285FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FC8);
  }

  return result;
}

uint64_t sub_F1424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000215030 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEE00657079546275 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C746E65746E6F63 && a2 == 0xED00006874676E65 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000215070 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7954736569726573 && a2 == 0xEA00000000006570 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x616C4661676E616DLL && a2 == 0xE900000000000067 || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656966696E557369 && a2 == 0xE900000000000064 || (sub_1E1D30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000002150B0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4B746E65746E6F63 && a2 == 0xEB00000000646E69)
  {

    return 13;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_F18C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_F194C(uint64_t a1)
{
  v2 = sub_F1B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F1988(uint64_t a1)
{
  v2 = sub_F1B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NotificationOptInTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_285FD0, &qword_1F8F60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F1B10();
  sub_1E1E00();
  v12 = v8;
  sub_F1B64();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_F1B10()
{
  result = qword_285FD8;
  if (!qword_285FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FD8);
  }

  return result;
}

unint64_t sub_F1B64()
{
  result = qword_285FE0;
  if (!qword_285FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FE0);
  }

  return result;
}

uint64_t NotificationOptInTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_285FE8, &qword_1F8F68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F1B10();
  sub_1E1DF0();
  if (!v2)
  {
    sub_F1D24();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_F1D24()
{
  result = qword_285FF0;
  if (!qword_285FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FF0);
  }

  return result;
}

unint64_t sub_F1DD4()
{
  result = qword_285FF8;
  if (!qword_285FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_285FF8);
  }

  return result;
}

unint64_t sub_F1E2C()
{
  result = qword_286000;
  if (!qword_286000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286000);
  }

  return result;
}

unint64_t sub_F1E84()
{
  result = qword_286008;
  if (!qword_286008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286008);
  }

  return result;
}

uint64_t ListenEvent.listeningSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ListenEvent.listeningSessionData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ListenEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListenEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListenEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ListenEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t ListenEvent.Model.listeningSessionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 42);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_3D9DC(v7, &v6);
}

uint64_t ListenEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v2;
}

uint64_t ListenEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListenEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListenEvent.Model.init(listeningSessionData:contentData:upSellData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 16);
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = a1[2];
  *(a6 + 42) = *(a1 + 42);
  v11 = a2[3];
  *(a6 + 96) = a2[2];
  *(a6 + 112) = v11;
  v12 = a2[5];
  *(a6 + 128) = a2[4];
  *(a6 + 144) = v12;
  v13 = a2[1];
  *(a6 + 64) = *a2;
  *(a6 + 80) = v13;
  *(a6 + 160) = *a3;
  *(a6 + 176) = v9;
  v14 = type metadata accessor for ListenEvent.Model(0);
  v15 = *(v14 + 28);
  v16 = sub_1E1150();
  (*(*(v16 - 8) + 32))(a6 + v15, a4, v16);
  v17 = *(v14 + 32);
  v18 = sub_1E11A0();
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v17, a5, v18);
}

unint64_t sub_F2A60()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x61446C6C65537075;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
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

uint64_t sub_F2B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F4544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F2B3C(uint64_t a1)
{
  v2 = sub_F2FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F2B78(uint64_t a1)
{
  v2 = sub_F2FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListenEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286040, &qword_1F9190);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = v26 - v6;
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F2FFC();
  sub_1E1E00();
  v9 = v2[1];
  v50[0] = *v2;
  v50[1] = v9;
  v11 = *v2;
  v10 = v2[1];
  v51[0] = v2[2];
  *(v51 + 10) = *(v2 + 42);
  v47 = v11;
  v48 = v10;
  v49[0] = v2[2];
  *(v49 + 10) = *(v2 + 42);
  v46 = 0;
  sub_3D9DC(v50, &v41);
  sub_3E638();
  v52 = v7;
  v12 = v26[1];
  sub_1E1CF0();
  if (v12)
  {
    v41 = v47;
    v42 = v48;
    v43[0] = v49[0];
    *(v43 + 10) = *(v49 + 10);
    sub_3E68C(&v41);
    return (*(v27 + 8))(v52, v4);
  }

  else
  {
    v14 = v27;
    v39[0] = v47;
    v39[1] = v48;
    v40[0] = v49[0];
    *(v40 + 10) = *(v49 + 10);
    sub_3E68C(v39);
    v15 = v2[7];
    v16 = v2[5];
    v43[0] = v2[6];
    v43[1] = v15;
    v17 = v2[7];
    v18 = v2[9];
    v44 = v2[8];
    v45 = v18;
    v19 = v2[5];
    v41 = v2[4];
    v42 = v19;
    v35 = v43[0];
    v36 = v17;
    v20 = v2[9];
    v37 = v44;
    v38 = v20;
    v33 = v41;
    v34 = v16;
    v32 = 1;
    sub_13A5C(&v41, v31);
    sub_143D0();
    sub_1E1CF0();
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v31[0] = v33;
    v31[1] = v34;
    sub_14424(v31);
    v21 = *(v2 + 22);
    v29 = v2[10];
    v30 = v21;
    v28 = 2;
    sub_28450();

    sub_1E1C80();

    v22 = type metadata accessor for ListenEvent.Model(0);
    v23 = *(v22 + 28);
    LOBYTE(v29) = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    v24 = v52;
    sub_1E1CF0();
    v25 = *(v22 + 32);
    LOBYTE(v29) = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v14 + 8))(v24, v4);
  }
}

unint64_t sub_F2FFC()
{
  result = qword_286048;
  if (!qword_286048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286048);
  }

  return result;
}

uint64_t ListenEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = sub_1E11A0();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v36);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3D68(&qword_286050, &qword_1F9198);
  v39 = *(v38 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v38);
  v12 = v32 - v11;
  v13 = type metadata accessor for ListenEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v56 = a1;
  sub_48B8(a1, v17);
  sub_F2FFC();
  v40 = v12;
  v19 = v41;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v56);
  }

  v41 = v9;
  v33 = v5;
  v20 = v16;
  v21 = v37;
  v52 = 0;
  sub_3F258();
  v22 = v38;
  sub_1E1C20();
  v23 = v54;
  *v20 = v53;
  *(v20 + 16) = v23;
  *(v20 + 32) = *v55;
  *(v20 + 42) = *&v55[10];
  v45 = 1;
  sub_14CB8();
  sub_1E1C20();
  v24 = v49;
  *(v20 + 96) = v48;
  *(v20 + 112) = v24;
  v25 = v51;
  *(v20 + 128) = v50;
  *(v20 + 144) = v25;
  v26 = v47;
  *(v20 + 64) = v46;
  *(v20 + 80) = v26;
  v42 = 2;
  sub_28EF4();
  v32[1] = 0;
  sub_1E1BB0();
  v32[0] = v13;
  v27 = v44;
  *(v20 + 160) = v43;
  *(v20 + 176) = v27;
  LOBYTE(v43) = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v28 = v41;
  sub_1E1C20();
  (*(v21 + 32))(v20 + *(v32[0] + 28), v28, v6);
  LOBYTE(v43) = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v29 = v33;
  v30 = v36;
  sub_1E1C20();
  (*(v39 + 8))(v40, v22);
  (*(v34 + 32))(v20 + *(v32[0] + 32), v29, v30);
  sub_F374C(v20, v35);
  sub_4E48(v56);
  return sub_F37B0(v20);
}

uint64_t sub_F374C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListenEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F37B0(uint64_t a1)
{
  v2 = type metadata accessor for ListenEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F38AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_F3A90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v14 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

uint64_t sub_F3CB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27F8D0, &unk_1F3520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

  v16 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
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

void sub_F3EC8()
{
  sub_F403C(319, &qword_27F998, sub_3F258, sub_3E638);
  if (v0 <= 0x3F)
  {
    sub_F403C(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_F403C(319, &qword_27EAE8, sub_28EF4, sub_28450);
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

void sub_F403C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_F40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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

uint64_t sub_F4204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
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

void sub_F4328()
{
  sub_F43DC();
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

void sub_F43DC()
{
  if (!qword_27EBC8)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EBC8);
    }
  }
}

unint64_t sub_F4440()
{
  result = qword_286198;
  if (!qword_286198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286198);
  }

  return result;
}

unint64_t sub_F4498()
{
  result = qword_2861A0;
  if (!qword_2861A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861A0);
  }

  return result;
}

unint64_t sub_F44F0()
{
  result = qword_2861A8;
  if (!qword_2861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861A8);
  }

  return result;
}

uint64_t sub_F4544(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000000213D80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_F4744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000002160C0 == a2)
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

uint64_t sub_F47D8(uint64_t a1)
{
  v2 = sub_F49F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F4814(uint64_t a1)
{
  v2 = sub_F49F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2861B0, &qword_1F93C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F49F4();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_2861C0, &qword_1F93C8);
  sub_F4C4C(&qword_2861C8, sub_F4A48);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_F49F4()
{
  result = qword_2861B8;
  if (!qword_2861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861B8);
  }

  return result;
}

unint64_t sub_F4A48()
{
  result = qword_2861D0;
  if (!qword_2861D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861D0);
  }

  return result;
}

uint64_t SearchResultsData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_2861D8, &qword_1F93D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F49F4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_2861C0, &qword_1F93C8);
    sub_F4C4C(&qword_2861E0, sub_F4CC4);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_F4C4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_2861C0, &qword_1F93C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F4CC4()
{
  result = qword_2861E8;
  if (!qword_2861E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861E8);
  }

  return result;
}

unint64_t sub_F4D74()
{
  result = qword_2861F0;
  if (!qword_2861F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861F0);
  }

  return result;
}

unint64_t sub_F4DCC()
{
  result = qword_2861F8;
  if (!qword_2861F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2861F8);
  }

  return result;
}

unint64_t sub_F4E24()
{
  result = qword_286200;
  if (!qword_286200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286200);
  }

  return result;
}

uint64_t ViewSupplementalContentEvent.viewSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 20);
  v4 = sub_3D68(&qword_286238, &qword_1F95F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.viewSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 20);
  v4 = sub_3D68(&qword_286238, &qword_1F95F8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewSupplementalContentEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ViewSupplementalContentEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ViewSupplementalContentEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_286238, &qword_1F95F8);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v6, v9);
}

uint64_t ReadingSettingsContextualViewEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
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
  return sub_437B4(v9, &v8);
}

uint64_t ViewSupplementalContentEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewSupplementalContentEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ViewSupplementalContentEvent.Model.init(contentData:viewSourceData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  v8 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 96) = v6;
  v10 = *(type metadata accessor for ViewSupplementalContentEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_F54C8()
{
  v1 = 0x72756F5377656976;
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
    return 0x44746E65746E6F63;
  }
}

uint64_t sub_F553C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F67A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F5564(uint64_t a1)
{
  v2 = sub_F5874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F55A0(uint64_t a1)
{
  v2 = sub_F5874();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewSupplementalContentEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286240, &qword_1F9600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F5874();
  sub_1E1E00();
  v10 = v2[2];
  v11 = v2[4];
  v37 = v2[3];
  v38 = v11;
  v12 = v2[4];
  v39 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v35 = v2[1];
  v36 = v14;
  v15 = *v2;
  v31 = v37;
  v32 = v12;
  v33 = v2[5];
  v34 = v15;
  v28 = v13;
  v29 = v35;
  v30 = v10;
  v27 = 0;
  sub_437B4(&v34, &v21);
  sub_143D0();
  v16 = v40;
  sub_1E1C80();
  if (v16)
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_440C0(&v21);
  }

  else
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_440C0(&v21);
    v20 = *(v2 + 96);
    v19[14] = 1;
    sub_F58C8();
    sub_1E1CF0();
    v17 = *(type metadata accessor for ViewSupplementalContentEvent.Model(0) + 24);
    v20 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_F5874()
{
  result = qword_286248;
  if (!qword_286248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286248);
  }

  return result;
}

unint64_t sub_F58C8()
{
  result = qword_286250;
  if (!qword_286250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286250);
  }

  return result;
}

uint64_t ViewSupplementalContentEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_286258, &qword_1F9608);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_48B8(a1, v15);
  sub_F5874();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v29);
  }

  v24 = v11;
  v17 = v27;
  v18 = v7;
  v38 = 0;
  sub_14CB8();
  v19 = v28;
  sub_1E1BB0();
  v20 = v34;
  *(v14 + 2) = v33;
  *(v14 + 3) = v20;
  v21 = v36;
  *(v14 + 4) = v35;
  *(v14 + 5) = v21;
  v22 = v32;
  *v14 = v31;
  *(v14 + 1) = v22;
  v37 = 1;
  sub_F5D14();
  sub_1E1C20();
  v14[96] = v30;
  v30 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v25 + 32))(&v14[*(v24 + 24)], v18, v4);
  sub_F5D68(v14, v26);
  sub_4E48(v29);
  return sub_F5DCC(v14);
}

unint64_t sub_F5D14()
{
  result = qword_286260;
  if (!qword_286260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286260);
  }

  return result;
}

uint64_t sub_F5D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F5DCC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSupplementalContentEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F5EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_286238, &qword_1F95F8);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v7, v10);
}

uint64_t sub_F600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_286238, &qword_1F95F8);
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

uint64_t sub_F6184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_286238, &qword_1F95F8);
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

void sub_F62F4()
{
  sub_F6400(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_F6400(319, &unk_2862D0, sub_F5D14, sub_F58C8);
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

void sub_F6400(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_F6490(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_F655C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_F6600()
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

unint64_t sub_F66A0()
{
  result = qword_2863A0;
  if (!qword_2863A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2863A0);
  }

  return result;
}

unint64_t sub_F66F8()
{
  result = qword_2863A8;
  if (!qword_2863A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2863A8);
  }

  return result;
}

unint64_t sub_F6750()
{
  result = qword_2863B0;
  if (!qword_2863B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2863B0);
  }

  return result;
}

uint64_t sub_F67A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F5377656976 && a2 == 0xEE00617461446563 || (sub_1E1D30() & 1) != 0)
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

uint64_t SearchEndEvent.searchEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 20);
  v4 = sub_3D68(&qword_2863E8, &qword_1F9828);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.searchEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 20);
  v4 = sub_3D68(&qword_2863E8, &qword_1F9828);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEndEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchEndEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_2863E8, &qword_1F9828);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v6, v11);
}

uint64_t SearchCompleteEvent.Model.searchSuggestionData.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t SearchEndEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEndEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchEndEvent.Model.init(searchData:searchEndData:searchSuggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 32) = v7;
  *(a5 + 40) = *a3;
  v9 = *(type metadata accessor for SearchEndEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

unint64_t sub_F7084()
{
  v1 = 0x6144686372616573;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0x6E45686372616573;
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

uint64_t sub_F7118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F84A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F7140(uint64_t a1)
{
  v2 = sub_F7420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F717C(uint64_t a1)
{
  v2 = sub_F7420();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2863F8, &qword_1F9830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F7420();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v18 = 0;
  sub_2EB50(v19, v11);
  sub_81E44();
  sub_1E1C80();
  sub_2F7F0(v19, v20);
  if (!v2)
  {
    LOBYTE(v19) = *(v3 + 32);
    v18 = 1;
    sub_25B44();
    sub_1E1CF0();
    v14 = *(v3 + 48);
    v19 = *(v3 + 40);
    v20 = v14;
    v18 = 2;
    sub_F7474();

    sub_1E1C80();

    v15 = *(type metadata accessor for SearchEndEvent.Model(0) + 28);
    LOBYTE(v19) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_F7420()
{
  result = qword_286400;
  if (!qword_286400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286400);
  }

  return result;
}

unint64_t sub_F7474()
{
  result = qword_286408;
  if (!qword_286408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286408);
  }

  return result;
}

uint64_t SearchEndEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E1150();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_286410, &qword_1F9838);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SearchEndEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  sub_48B8(a1, v16);
  sub_F7420();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v28);
  }

  v18 = v26;
  v23 = v7;
  v31 = 0;
  sub_826DC();
  v19 = v27;
  sub_1E1BB0();
  v20 = v30;
  *v15 = v29;
  *(v15 + 1) = v20;
  v31 = 1;
  sub_25AEC();
  sub_1E1C20();
  v15[32] = v29;
  v31 = 2;
  sub_F7894();
  sub_1E1BB0();
  *(v15 + 40) = v29;
  LOBYTE(v29) = 3;
  sub_14E5C(&qword_27D830);
  v21 = v23;
  sub_1E1C20();
  (*(v18 + 8))(v11, v19);
  (*(v24 + 32))(&v15[*(v12 + 28)], v21, v4);
  sub_F78E8(v15, v25);
  sub_4E48(v28);
  return sub_F794C(v15);
}

unint64_t sub_F7894()
{
  result = qword_286418;
  if (!qword_286418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286418);
  }

  return result;
}

uint64_t sub_F78E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F794C(uint64_t a1)
{
  v2 = type metadata accessor for SearchEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F7A48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_2863E8, &qword_1F9828);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v7, v12);
}

uint64_t sub_F7BE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2863E8, &qword_1F9828);
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

  v14 = sub_3D68(&qword_2863F0, &qword_1FA280);
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

uint64_t sub_F7DAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2863E8, &qword_1F9828);
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

  v16 = sub_3D68(&qword_2863F0, &qword_1FA280);
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

void sub_F7F70()
{
  sub_F80CC(319, &qword_281E38, sub_826DC, sub_81E44);
  if (v0 <= 0x3F)
  {
    sub_F80CC(319, &qword_286488, sub_25AEC, sub_25B44);
    if (v1 <= 0x3F)
    {
      sub_F80CC(319, &unk_286490, sub_F7894, sub_F7474);
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

void sub_F80CC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_F815C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_F8228(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F82CC()
{
  sub_19FE0(319, &qword_282190);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_286530);
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

unint64_t sub_F83A4()
{
  result = qword_286568;
  if (!qword_286568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286568);
  }

  return result;
}

unint64_t sub_F83FC()
{
  result = qword_286570;
  if (!qword_286570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286570);
  }

  return result;
}

unint64_t sub_F8454()
{
  result = qword_286578;
  if (!qword_286578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286578);
  }

  return result;
}

uint64_t sub_F84A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E45686372616573 && a2 == 0xED00006174614464 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_F8644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_F86CC(uint64_t a1)
{
  v2 = sub_F8B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F8708(uint64_t a1)
{
  v2 = sub_F8B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Rating.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_286580, &qword_1F9A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F8B00();
  sub_1E1DF0();
  if (!v2)
  {
    v12 = sub_1E1BE0();
    v13 = v11;
    v14 = v12 == 0x6E776F6E6B6E75 && v11 == 0xE700000000000000;
    if (v14 || (sub_1E1D30() & 1) != 0)
    {
      (*(v6 + 8))(v9, v5);

      *a2 = 0;
    }

    else
    {
      v16 = v12 == 49 && v13 == 0xE100000000000000;
      if (v16 || (sub_1E1D30() & 1) != 0)
      {
        (*(v6 + 8))(v9, v5);

        *a2 = 1;
      }

      else
      {
        v17 = v12 == 50 && v13 == 0xE100000000000000;
        if (v17 || (sub_1E1D30() & 1) != 0)
        {
          (*(v6 + 8))(v9, v5);

          *a2 = 2;
        }

        else
        {
          v18 = v12 == 51 && v13 == 0xE100000000000000;
          if (v18 || (sub_1E1D30() & 1) != 0)
          {
            (*(v6 + 8))(v9, v5);

            *a2 = 3;
          }

          else
          {
            v19 = v12 == 52 && v13 == 0xE100000000000000;
            if (v19 || (sub_1E1D30() & 1) != 0)
            {
              (*(v6 + 8))(v9, v5);

              *a2 = 4;
            }

            else
            {
              if (v12 == 53 && v13 == 0xE100000000000000)
              {
              }

              else
              {
                v20 = sub_1E1D30();

                if ((v20 & 1) == 0)
                {
                  sub_F8B54();
                  swift_allocError();
                  swift_willThrow();
                  (*(v6 + 8))(v9, v5);
                  return sub_4E48(a1);
                }
              }

              (*(v6 + 8))(v9, v5);
              *a2 = 5;
            }
          }
        }
      }
    }
  }

  return sub_4E48(a1);
}

unint64_t sub_F8B00()
{
  result = qword_286588;
  if (!qword_286588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286588);
  }

  return result;
}

unint64_t sub_F8B54()
{
  result = qword_286590;
  if (!qword_286590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286590);
  }

  return result;
}

uint64_t Rating.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_286598, &qword_1F9A58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F8B00();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

BookAnalytics::Rating_optional __swiftcall Rating.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260C88;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Rating.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6565726874;
  v4 = 1920298854;
  if (v1 != 4)
  {
    v4 = 1702259046;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6647407;
  if (v1 != 1)
  {
    v5 = 7305076;
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

unint64_t sub_F8E48()
{
  result = qword_2865A0;
  if (!qword_2865A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865A0);
  }

  return result;
}

uint64_t sub_F8EA4()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_F8F84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x6565726874;
  v7 = 1920298854;
  if (v2 != 4)
  {
    v7 = 1702259046;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 6647407;
  if (v2 != 1)
  {
    v8 = 7305076;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_F908C()
{
  result = qword_2865A8;
  if (!qword_2865A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865A8);
  }

  return result;
}

unint64_t sub_F90E4()
{
  result = qword_2865B0;
  if (!qword_2865B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865B0);
  }

  return result;
}

unint64_t sub_F913C()
{
  result = qword_2865B8;
  if (!qword_2865B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865B8);
  }

  return result;
}

unint64_t sub_F9194()
{
  result = qword_2865C0;
  if (!qword_2865C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865C0);
  }

  return result;
}

unint64_t sub_F9244()
{
  v1 = *v0;
  v2 = 0x65486E6565726373;
  v3 = 0x69576E6565726373;
  v4 = 0x6548776F646E6977;
  if (v1 != 3)
  {
    v4 = 0x6957776F646E6977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_F92F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F9BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_F9320(uint64_t a1)
{
  v2 = sub_F99B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F935C(uint64_t a1)
{
  v2 = sub_F99B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_2865C8, &qword_1F9D40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[2] = *(v1 + 2);
  v14[3] = v10;
  v11 = *(v1 + 3);
  v14[0] = *(v1 + 4);
  v14[1] = v11;
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F99B4();
  sub_1E1E00();
  v20 = v9;
  v19 = 0;
  sub_C36A0();
  sub_1E1CF0();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  sub_1E1D00();
  v17 = 2;
  sub_1E1D00();
  v16 = 3;
  sub_1E1D00();
  v15 = 4;
  sub_1E1D00();
  return (*(v5 + 8))(v8, v4);
}

uint64_t OrientationData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_2865D8, &qword_1F9D48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_F99B4();
  sub_1E1DF0();
  if (!v2)
  {
    v24 = 0;
    sub_C36F4();
    sub_1E1C20();
    v11 = v25;
    v23 = 1;
    v12 = sub_1E1C30();
    v22 = 2;
    v19 = sub_1E1C30();
    v21 = 3;
    v18 = sub_1E1C30();
    v20 = 4;
    v14 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    v15 = v18;
    v16 = v19;
    *(a2 + 4) = v12;
    *(a2 + 8) = v16;
    *(a2 + 12) = v15;
    *(a2 + 16) = v14;
  }

  return sub_4E48(a1);
}

BOOL _s13BookAnalytics15OrientationDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  v10 = *(a2 + 12);
  v9 = *(a2 + 16);
  v11 = 0xE800000000000000;
  v12 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v12 = 0x70616373646E616CLL;
    v11 = 0xE900000000000065;
  }

  if (*a1)
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

  v15 = 0xE800000000000000;
  v16 = 0x7469617274726F70;
  if (*a2 != 1)
  {
    v16 = 0x70616373646E616CLL;
    v15 = 0xE900000000000065;
  }

  if (*a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v13 == v17 && v14 == v18)
  {

    result = 0;
    if (v4 != v7 || v3 != v8 || v6 != v10)
    {
      return result;
    }

    return v5 == v9;
  }

  v22 = *(a2 + 16);
  v20 = v5;
  v21 = sub_1E1D30();

  result = 0;
  if ((v21 & 1) != 0 && v4 == v7 && v3 == v8)
  {
    v5 = v20;
    v9 = v22;
    if (v6 == v10)
    {
      return v5 == v9;
    }
  }

  return result;
}

unint64_t sub_F99B4()
{
  result = qword_2865D0;
  if (!qword_2865D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865D0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OrientationData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_F9AD0()
{
  result = qword_2865E0;
  if (!qword_2865E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865E0);
  }

  return result;
}

unint64_t sub_F9B28()
{
  result = qword_2865E8;
  if (!qword_2865E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865E8);
  }

  return result;
}

unint64_t sub_F9B80()
{
  result = qword_2865F0;
  if (!qword_2865F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2865F0);
  }

  return result;
}

uint64_t sub_F9BD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000000215610 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65486E6565726373 && a2 == 0xEC00000074686769 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69576E6565726373 && a2 == 0xEB00000000687464 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6548776F646E6977 && a2 == 0xEC00000074686769 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6957776F646E6977 && a2 == 0xEB00000000687464)
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

uint64_t MarkAsFinishedEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 24);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.markedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 28);
  v4 = sub_3D68(&qword_286628, &unk_1F9F88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.markedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 28);
  v4 = sub_3D68(&qword_286628, &unk_1F9F88);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MarkAsFinishedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MarkAsFinishedEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_286628, &unk_1F9F88);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t UPPContentBrickExposureEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t MarkAsFinishedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MarkAsFinishedEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MarkAsFinishedEvent.Model.init(contentData:seriesData:suggestionData:markedData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v10;
  v11 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v11;
  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  v13 = a2[1];
  *(a6 + 96) = *a2;
  *(a6 + 112) = v13;
  *(a6 + 128) = a2[2];
  *(a6 + 144) = v8;
  *(a6 + 145) = v9;
  v14 = *(type metadata accessor for MarkAsFinishedEvent.Model(0) + 32);
  v15 = sub_1E1150();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a5, v15);
}

uint64_t sub_FA740()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6974736567677573;
  v4 = 0x614464656B72616DLL;
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
    v2 = 0x6144736569726573;
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

uint64_t sub_FA7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FBEEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_FA824(uint64_t a1)
{
  v2 = sub_FABE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FA860(uint64_t a1)
{
  v2 = sub_FABE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MarkAsFinishedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286630, &qword_1F9F98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FABE8();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v41 = *(v2 + 32);
  v42 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v43 = *(v2 + 64);
  v44 = v13;
  v14 = *(v2 + 16);
  v40[0] = *v2;
  v40[1] = v14;
  v36 = v41;
  v37 = v12;
  v15 = *(v2 + 80);
  v38 = v43;
  v39 = v15;
  v34 = v40[0];
  v35 = v11;
  v33 = 0;
  sub_13A5C(v40, v32);
  sub_143D0();
  v16 = v45;
  sub_1E1CF0();
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;
  sub_14424(v32);
  if (!v16)
  {
    v17 = *(v2 + 104);
    v18 = *(v2 + 112);
    v19 = *(v2 + 120);
    v20 = *(v2 + 128);
    v21 = *(v2 + 136);
    v26 = *(v2 + 96);
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v25 = 1;
    sub_13BDC(v26, v17, v18, v19, v20, v21);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v26, v27, v28, v29, v30, v31);
    LOBYTE(v26) = *(v2 + 144);
    v25 = 2;
    sub_284F8();
    sub_1E1C80();
    LOBYTE(v26) = *(v2 + 145);
    v25 = 3;
    sub_FAC3C();
    sub_1E1C80();
    v22 = *(type metadata accessor for MarkAsFinishedEvent.Model(0) + 32);
    LOBYTE(v26) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_FABE8()
{
  result = qword_286638;
  if (!qword_286638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286638);
  }

  return result;
}

unint64_t sub_FAC3C()
{
  result = qword_286640;
  if (!qword_286640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286640);
  }

  return result;
}

uint64_t MarkAsFinishedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1E1150();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3D68(&qword_286648, &qword_1F9FA0);
  v24 = *(v25 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v25);
  v8 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  v27 = a1;
  sub_48B8(a1, v12);
  sub_FABE8();
  v14 = v26;
  sub_1E1DF0();
  if (v14)
  {
    return sub_4E48(v27);
  }

  v26 = v6;
  v15 = v24;
  v38 = 0;
  sub_14CB8();
  sub_1E1C20();
  v16 = v34;
  *(v11 + 2) = v33;
  *(v11 + 3) = v16;
  v17 = v36;
  *(v11 + 4) = v35;
  *(v11 + 5) = v17;
  v18 = v32;
  *v11 = v31;
  *(v11 + 1) = v18;
  v37 = 1;
  sub_DAD8();
  sub_1E1BB0();
  v19 = v29;
  *(v11 + 6) = v28;
  *(v11 + 7) = v19;
  *(v11 + 8) = v30;
  v37 = 2;
  sub_28F9C();
  sub_1E1BB0();
  v11[144] = v28;
  v37 = 3;
  sub_FB170();
  sub_1E1BB0();
  v11[145] = v28;
  LOBYTE(v28) = 4;
  sub_14E5C(&qword_27D830);
  v20 = v26;
  sub_1E1C20();
  (*(v15 + 8))(0, v25);
  (*(v22 + 32))(&v11[*(v8 + 32)], v20, v3);
  sub_FB1C4(v11, v23);
  sub_4E48(v27);
  return sub_FB228(v11);
}

unint64_t sub_FB170()
{
  result = qword_286650;
  if (!qword_286650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286650);
  }

  return result;
}

uint64_t sub_FB1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FB228(uint64_t a1)
{
  v2 = type metadata accessor for MarkAsFinishedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FB324@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_286628, &unk_1F9F88);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_FB508(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v14 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_286628, &unk_1F9F88);
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

uint64_t sub_FB728(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

  v16 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_286628, &unk_1F9F88);
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

void sub_FB940()
{
  sub_FBAEC(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_FBAEC(319, &qword_27DE18, sub_DAD8, sub_D57C);
    if (v1 <= 0x3F)
    {
      sub_FBAEC(319, &unk_27EAF8, sub_28F9C, sub_284F8);
      if (v2 <= 0x3F)
      {
        sub_FBAEC(319, &unk_2866C0, sub_FB170, sub_FAC3C);
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

void sub_FBAEC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_FBB7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_FBC3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_FBCE0()
{
  sub_19FE0(319, &qword_27E398);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBD8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_286768);
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

unint64_t sub_FBDE8()
{
  result = qword_2867A8;
  if (!qword_2867A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2867A8);
  }

  return result;
}

unint64_t sub_FBE40()
{
  result = qword_2867B0;
  if (!qword_2867B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2867B0);
  }

  return result;
}

unint64_t sub_FBE98()
{
  result = qword_2867B8;
  if (!qword_2867B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2867B8);
  }

  return result;
}

uint64_t sub_FBEEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614464656B72616DLL && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_FC0C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_FC120()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ExposureCollector.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t ExposureCollector.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t ExposureCollector.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExposureCollector.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t EnvironmentValues.exposureCollector.getter()
{
  sub_FC238();
  sub_1E1490();
  return v1;
}

unint64_t sub_FC238()
{
  result = qword_2867C0;
  if (!qword_2867C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2867C0);
  }

  return result;
}

uint64_t sub_FC28C@<X0>(void *a1@<X8>)
{
  sub_FC238();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_FC2DC(uint64_t *a1)
{
  v2 = *a1;
  sub_FC238();

  return sub_1E14A0();
}

uint64_t View.exposureCollecting(from:)()
{
  swift_getKeyPath();
  type metadata accessor for ExposureCollector();
  sub_1E16F0();
  sub_1E1500();
}

uint64_t sub_FC3E0@<X0>(void *a1@<X8>)
{
  sub_FC238();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_FC458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_FC4F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_5DE50(&qword_286888, &qword_1FA228);
  sub_1E1440();
  sub_FC570();
  return swift_getWitnessTable();
}

unint64_t sub_FC570()
{
  result = qword_286890;
  if (!qword_286890)
  {
    sub_5DE50(&qword_286888, &qword_1FA228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286890);
  }

  return result;
}

uint64_t SearchCompleteEvent.searchMethodData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_2868C8, &unk_202330);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchMethodData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 20);
  v4 = sub_3D68(&qword_2868C8, &unk_202330);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 24);
  v4 = sub_3D68(&qword_2863F0, &qword_1FA280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_2868D0, &unk_1FA288);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.searchSuggestionSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 28);
  v4 = sub_3D68(&qword_2868D0, &unk_1FA288);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchCompleteEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchCompleteEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_2868D0, &unk_1FA288);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v6, v13);
}

uint64_t SearchCompleteEvent.Model.searchSuggestionSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 76);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 20) = v4;
  *(a1 + 16) = v3;
}

uint64_t SearchCompleteEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchCompleteEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchCompleteEvent.Model.init(searchData:searchMethodData:searchSuggestionData:searchSuggestionSelectionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a2;
  v9 = *(a4 + 16);
  v10 = *(a4 + 20);
  v11 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v11;
  *(a6 + 32) = v8;
  *(a6 + 40) = *a3;
  *(a6 + 56) = *a4;
  *(a6 + 76) = v10;
  *(a6 + 72) = v9;
  v12 = *(type metadata accessor for SearchCompleteEvent.Model(0) + 32);
  v13 = sub_1E1150();
  v14 = *(*(v13 - 8) + 32);

  return v14(a6 + v12, a5, v13);
}

unint64_t sub_FCF64()
{
  v1 = *v0;
  v2 = 0x6144686372616573;
  v3 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v3 = 0x746144746E657665;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
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

uint64_t sub_FD018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FE638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_FD040(uint64_t a1)
{
  v2 = sub_FD394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FD07C(uint64_t a1)
{
  v2 = sub_FD394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2868D8, &qword_1FA298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FD394();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v22 = *v3;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v21 = 0;
  sub_2EB50(v22, v11);
  sub_81E44();
  sub_1E1C80();
  if (v2)
  {
    sub_2F7F0(v22, v23);
  }

  else
  {
    sub_2F7F0(v22, v23);
    LOBYTE(v22) = *(v3 + 32);
    v21 = 1;
    sub_ABFFC();
    sub_1E1CF0();
    v14 = *(v3 + 48);
    v22 = *(v3 + 40);
    v23 = v14;
    v21 = 2;
    sub_F7474();

    sub_1E1C80();

    v15 = *(v3 + 64);
    v16 = *(v3 + 72);
    v17 = *(v3 + 76);
    v22 = *(v3 + 56);
    v23 = v15;
    BYTE4(v24) = v17;
    LODWORD(v24) = v16;
    v21 = 3;
    sub_FD3E8();

    sub_1E1C80();

    v18 = *(type metadata accessor for SearchCompleteEvent.Model(0) + 32);
    LOBYTE(v22) = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_FD394()
{
  result = qword_2868E0;
  if (!qword_2868E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2868E0);
  }

  return result;
}

unint64_t sub_FD3E8()
{
  result = qword_2868E8;
  if (!qword_2868E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2868E8);
  }

  return result;
}

uint64_t SearchCompleteEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1E1150();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&qword_2868F0, &qword_1FA2A0);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SearchCompleteEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FD394();
  v32 = v10;
  v16 = v33;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(a1);
  }

  v27 = v11;
  v33 = v6;
  v17 = v30;
  v18 = v14;
  v36 = 0;
  sub_826DC();
  v19 = v31;
  sub_1E1BB0();
  v20 = v35;
  *v18 = v34;
  *(v18 + 16) = v20;
  v36 = 1;
  sub_ABFA4();
  sub_1E1C20();
  v21 = v17;
  *(v18 + 32) = v34;
  v36 = 2;
  sub_F7894();
  sub_1E1BB0();
  *(v18 + 40) = v34;
  v36 = 3;
  sub_FD8B8();
  sub_1E1BB0();
  v22 = v35;
  v23 = BYTE4(v35);
  *(v18 + 56) = v34;
  *(v18 + 76) = v23;
  *(v18 + 72) = v22;
  LOBYTE(v34) = 4;
  sub_14E5C(&qword_27D830);
  v24 = v33;
  sub_1E1C20();
  (*(v21 + 8))(v32, v19);
  (*(v28 + 32))(v18 + *(v27 + 32), v24, v3);
  sub_FD90C(v18, v29);
  sub_4E48(a1);
  return sub_FD970(v18);
}

unint64_t sub_FD8B8()
{
  result = qword_2868F8;
  if (!qword_2868F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2868F8);
  }

  return result;
}

uint64_t sub_FD90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FD970(uint64_t a1)
{
  v2 = type metadata accessor for SearchCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FDA6C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281D58, &qword_1EE340);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_2868C8, &unk_202330);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_2863F0, &qword_1FA280);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_2868D0, &unk_1FA288);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v7, v14);
}

uint64_t sub_FDC50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_281D58, &qword_1EE340);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_2868C8, &unk_202330);
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

  v14 = sub_3D68(&qword_2863F0, &qword_1FA280);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_2868D0, &unk_1FA288);
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

uint64_t sub_FDE70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_281D58, &qword_1EE340);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_2868C8, &unk_202330);
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

  v16 = sub_3D68(&qword_2863F0, &qword_1FA280);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_2868D0, &unk_1FA288);
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

void sub_FE088()
{
  sub_FE234(319, &qword_281E38, sub_826DC, sub_81E44);
  if (v0 <= 0x3F)
  {
    sub_FE234(319, &qword_286968, sub_ABFA4, sub_ABFFC);
    if (v1 <= 0x3F)
    {
      sub_FE234(319, &unk_286490, sub_F7894, sub_F7474);
      if (v2 <= 0x3F)
      {
        sub_FE234(319, &unk_286970, sub_FD8B8, sub_FD3E8);
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

void sub_FE234(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_FE2C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_FE390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_FE434()
{
  sub_19FE0(319, &qword_282190);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &unk_286530);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_286A18);
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

unint64_t sub_FE534()
{
  result = qword_286A58;
  if (!qword_286A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A58);
  }

  return result;
}

unint64_t sub_FE58C()
{
  result = qword_286A60;
  if (!qword_286A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A60);
  }

  return result;
}

unint64_t sub_FE5E4()
{
  result = qword_286A68;
  if (!qword_286A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A68);
  }

  return result;
}

uint64_t sub_FE638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144686372616573 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000216130 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000000002160E0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000000216150 == a2 || (sub_1E1D30() & 1) != 0)
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

unint64_t sub_FE840()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x6E6F6974636573;
  }

  v4 = 0x55746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x49746E65746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_FE938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FF4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_FE960(uint64_t a1)
{
  v2 = sub_FF2B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FE99C(uint64_t a1)
{
  v2 = sub_FF2B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchResultsItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_286A70, &qword_1FA4D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v25 = *(v1 + 4);
  v10 = v1[3];
  v23 = v1[4];
  v24 = v10;
  v11 = v1[5];
  v21 = v1[6];
  v22 = v11;
  v12 = v1[7];
  v19 = v1[8];
  v20 = v12;
  v18 = *(v1 + 18);
  v13 = v1[11];
  v17[1] = v1[10];
  v17[2] = v13;
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FF2B4();
  sub_1E1E00();
  v33 = 0;
  v15 = v26;
  sub_1E1CB0();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v32 = 1;
  sub_1E1D00();
  v31 = 2;
  sub_1E1CB0();
  v30 = 3;
  sub_1E1CB0();
  v29 = 4;
  sub_1E1CB0();
  v28 = 5;
  sub_1E1D00();
  v27 = 6;
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SearchResultsItemTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_286A80, &qword_1FA4D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FF2B4();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  LOBYTE(v43[0]) = 1;
  v54 = sub_1E1C30();
  LOBYTE(v43[0]) = 2;
  v34 = sub_1E1BE0();
  v36 = v14;
  LOBYTE(v43[0]) = 3;
  v15 = sub_1E1BE0();
  v35 = v16;
  v31 = v15;
  LOBYTE(v43[0]) = 4;
  v33 = 0;
  v30 = sub_1E1BE0();
  v32 = v17;
  LOBYTE(v43[0]) = 5;
  v29 = sub_1E1C30();
  v55 = 6;
  v18 = sub_1E1BE0();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  *&v37 = v11;
  *(&v37 + 1) = v13;
  LODWORD(v38) = v54;
  v22 = v36;
  *(&v38 + 1) = v34;
  *&v39 = v36;
  *(&v39 + 1) = v31;
  *&v40 = v35;
  v23 = v32;
  *(&v40 + 1) = v30;
  *&v41 = v32;
  DWORD2(v41) = v29;
  *&v42 = v18;
  *(&v42 + 1) = v21;
  v24 = v40;
  a2[2] = v39;
  a2[3] = v24;
  v25 = v42;
  a2[4] = v41;
  a2[5] = v25;
  v26 = v38;
  *a2 = v37;
  a2[1] = v26;
  sub_FF308(&v37, v43);
  sub_4E48(a1);
  v43[0] = v11;
  v43[1] = v13;
  v44 = v54;
  v45 = v34;
  v46 = v22;
  v47 = v31;
  v48 = v35;
  v49 = v30;
  v50 = v23;
  v51 = v29;
  v52 = v18;
  v53 = v21;
  return sub_FF340(v43);
}

uint64_t _s13BookAnalytics25SearchResultsItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v23 = *(a1 + 64);
  v24 = *(a1 + 56);
  v17 = *(a1 + 88);
  v18 = *(a1 + 80);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v21 = *(a2 + 64);
  v22 = *(a2 + 56);
  v19 = *(a2 + 72);
  v20 = *(a1 + 72);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_1E1D30();
    result = 0;
    if ((v12 & 1) == 0 || v2 != v7)
    {
      return result;
    }
  }

  if ((v4 != v9 || v3 != v8) && (sub_1E1D30() & 1) == 0 || (v5 != v11 || v6 != v10) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v24 == v22 && v23 == v21)
  {
    if (v20 != v19)
    {
      return 0;
    }
  }

  else
  {
    v14 = sub_1E1D30();
    result = 0;
    if ((v14 & 1) == 0 || v20 != v19)
    {
      return result;
    }
  }

  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_FF2B4()
{
  result = qword_286A78;
  if (!qword_286A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A78);
  }

  return result;
}

unint64_t sub_FF39C()
{
  result = qword_286A88;
  if (!qword_286A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A88);
  }

  return result;
}

unint64_t sub_FF3F4()
{
  result = qword_286A90;
  if (!qword_286A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A90);
  }

  return result;
}

unint64_t sub_FF44C()
{
  result = qword_286A98;
  if (!qword_286A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286A98);
  }

  return result;
}

uint64_t sub_FF4A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x8000000000216170 == a2;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000)
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

uint64_t sub_FF720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000216190 == a2)
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

uint64_t sub_FF7B4(uint64_t a1)
{
  v2 = sub_FF968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_FF7F0(uint64_t a1)
{
  v2 = sub_FF968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareContextData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_286AA0, &qword_1FA740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FF968();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_FF968()
{
  result = qword_286AA8;
  if (!qword_286AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AA8);
  }

  return result;
}

uint64_t ShareContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_286AB0, &qword_1FA748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_FF968();
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

unint64_t sub_FFB34()
{
  result = qword_286AB8;
  if (!qword_286AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AB8);
  }

  return result;
}

unint64_t sub_FFB8C()
{
  result = qword_286AC0;
  if (!qword_286AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AC0);
  }

  return result;
}

unint64_t sub_FFC1C()
{
  result = qword_286AC8;
  if (!qword_286AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AC8);
  }

  return result;
}

unint64_t sub_FFC74()
{
  result = qword_286AD0;
  if (!qword_286AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AD0);
  }

  return result;
}

unint64_t sub_FFCCC()
{
  result = qword_286AD8;
  if (!qword_286AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286AD8);
  }

  return result;
}

uint64_t (*static Defaults.analyticsJitterSettingsEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D360 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286AE0);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

uint64_t sub_FFEC8()
{
  v0 = sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_5F94(v0, qword_286AE0);
  sub_3B2C(v0, qword_286AE0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t (*static Defaults.analyticsJitterLowBoundValue.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&qword_286B40, &unk_1FD180);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D368 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286AF8);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_100120;
}

uint64_t sub_100124()
{
  v0 = sub_3D68(&qword_286B40, &unk_1FD180);
  sub_5F94(v0, qword_286AF8);
  sub_3B2C(v0, qword_286AF8);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t sub_1001FC(void *a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_286B40, &unk_1FD180);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_1E1240();
  (*(v5 + 8))(v8, v4);
  return v11[1];
}

uint64_t sub_100330@<X0>(void *a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = sub_3D68(&qword_286B40, &unk_1FD180);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  sub_1E1240();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v13[1];
  return result;
}

uint64_t sub_100474(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_3D68(&qword_286B40, &unk_1FD180);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_3B2C(v9, a6);
  (*(v10 + 16))(v13, v15, v9);
  v17[1] = v14;
  sub_1E1250();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1005DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_286B40, &unk_1FD180);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v6, a3);
  (*(v7 + 16))(v10, v11, v6);
  v13[1] = a1;
  sub_1E1250();
  return (*(v7 + 8))(v10, v6);
}

uint64_t (*static Defaults.analyticsJitterUpperBoundValue.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&qword_286B40, &unk_1FD180);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D370 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286B10);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

uint64_t sub_10087C()
{
  v0 = sub_3D68(&qword_286B40, &unk_1FD180);
  sub_5F94(v0, qword_286B10);
  sub_3B2C(v0, qword_286B10);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

uint64_t sub_100954(void *a1, uint64_t a2)
{
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_1E1240();
  (*(v5 + 8))(v8, v4);
  return v11[15];
}

uint64_t sub_100A88@<X0>(void *a1@<X3>, uint64_t a2@<X4>, _BYTE *a3@<X8>)
{
  v6 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a1 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v6, a2);
  (*(v7 + 16))(v10, v11, v6);
  sub_1E1240();
  result = (*(v7 + 8))(v10, v6);
  *a3 = v13[15];
  return result;
}

uint64_t sub_100BCC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  v14 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  v15 = sub_3B2C(v9, a6);
  (*(v10 + 16))(v13, v15, v9);
  v17[15] = v14;
  sub_1E1250();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100D34(char a1, void *a2, uint64_t a3)
{
  v6 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_3B2C(v6, a3);
  (*(v7 + 16))(v10, v11, v6);
  v13[15] = a1 & 1;
  sub_1E1250();
  return (*(v7 + 8))(v10, v6);
}

uint64_t (*static Defaults.analyticsExposureDebugLogEnabled.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  if (qword_27D378 != -1)
  {
    swift_once();
  }

  v9 = sub_3B2C(v4, qword_286B28);
  (*(v6 + 16))(v8, v9, v4);
  v3[7] = sub_1E1230();
  return sub_1012D0;
}

void sub_100FD8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_101050()
{
  v0 = sub_3D68(&unk_287EF0, &qword_1FA978);
  sub_5F94(v0, qword_286B28);
  sub_3B2C(v0, qword_286B28);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_1E1260();
}

BookAnalytics::TabType_optional __swiftcall TabType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260D38;
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

uint64_t TabType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x686372616573;
  if (v1 != 5)
  {
    v3 = 0x61676E616DLL;
  }

  v4 = 0x726F74736B6F6F62;
  if (v1 != 3)
  {
    v4 = 0x6F6F626F69647561;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E676E6964616572;
  if (v1 != 1)
  {
    v5 = 0x7972617262696CLL;
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

unint64_t sub_101420()
{
  result = qword_286B48;
  if (!qword_286B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B48);
  }

  return result;
}

uint64_t sub_101480()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

void sub_1015A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x61676E616DLL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE900000000000065;
  v8 = 0x726F74736B6F6F62;
  if (v2 != 3)
  {
    v8 = 0x6F6F626F69647561;
    v7 = 0xEA0000000000736BLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000776FLL;
  v10 = 0x4E676E6964616572;
  if (v2 != 1)
  {
    v10 = 0x7972617262696CLL;
    v9 = 0xE700000000000000;
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

unint64_t sub_10174C()
{
  result = qword_286B50;
  if (!qword_286B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B50);
  }

  return result;
}

unint64_t sub_1017D4()
{
  result = qword_286B58;
  if (!qword_286B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B58);
  }

  return result;
}

unint64_t sub_101828()
{
  result = qword_286B60;
  if (!qword_286B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B60);
  }

  return result;
}

uint64_t sub_101974(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v7 + 24));
  v8 = a1();
  v9 = a2();
  v10 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v10 + 2);

    v18 = sub_103008(0, v17 + 1, 1, v10);
    v19 = *(v7 + 16);
    *(v7 + 16) = v18;

    v10 = *(v7 + 16);
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_103008((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[64 * v13];
  *(v14 + 4) = a3;
  *(v14 + 5) = v8;
  *(v14 + 6) = v9;
  *(v14 + 72) = v21;
  *(v14 + 56) = v20;
  v14[88] = 1;
  *(v7 + 16) = v10;
  os_unfair_lock_unlock((v7 + 24));

  v15 = *(v3 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  return sub_1E10F0();
}

uint64_t BATracker.pushLinkData(_:file:line:)()
{
  sub_A5108(v4);
  v1 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

  os_unfair_lock_lock((v1 + 24));
  sub_10362C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_98A8C();
  sub_1E1110();
  return sub_283A8(v4);
}

Swift::Void __swiftcall BATracker.pushOrientationData(file:line:)(Swift::String file, Swift::Int line)
{
  countAndFlagsBits = file._countAndFlagsBits;
  v7 = [objc_opt_self() mainScreen];
  v8 = &unk_27A000;
  [v7 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [objc_opt_self() _applicationKeyWindow];
  v14 = v10;
  v15 = v12;
  if (v13)
  {
    v16 = v13;
    [v13 bounds];
    v14 = v17;
    v15 = v18;
  }

  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 orientation];

  if (sub_DE078(v20))
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v12 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 >= 2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 <= -2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= 2147483650.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -2147483650.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 2147483650.0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 < 2147483650.0)
  {
    v32 = v2;
    v3 = v12;
    countAndFlagsBits = v10;
    v5 = v15;
    LODWORD(v8) = v14;
    v31 = v21;
    v20 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock(v20 + 6);
    v19 = sub_1017D4();
    v30 = sub_101828();
    v33 = 0;
    v4 = *(v20 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 2) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v27 = *(v4 + 2);

  v28 = sub_103008(0, v27 + 1, 1, v4);
  v29 = *(v20 + 2);
  *(v20 + 2) = v28;

  v4 = *(v20 + 2);
LABEL_19:
  v24 = *(v4 + 2);
  v23 = *(v4 + 3);
  if (v24 >= v23 >> 1)
  {
    v4 = sub_103008((v23 > 1), v24 + 1, 1, v4);
  }

  *(v4 + 2) = v24 + 1;
  v25 = &v4[64 * v24];
  v25[32] = v31;
  v25[35] = v35;
  *(v25 + 33) = v34;
  *(v25 + 9) = v3;
  *(v25 + 10) = countAndFlagsBits;
  *(v25 + 11) = v5;
  *(v25 + 12) = v8;
  *(v25 + 7) = &type metadata for OrientationData;
  *(v25 + 8) = v19;
  *(v25 + 9) = v30;
  *(v25 + 10) = 0;
  v25[88] = v33;
  *(v20 + 2) = v4;
  os_unfair_lock_unlock(v20 + 6);

  v26 = *(v32 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_1E1110();
}

uint64_t BATracker.pushSessionEndReasonData(with:file:line:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >= 4)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v3 + 24));
    v4 = sub_103648();
    v5 = sub_10369C();
    v6 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v6 + 2);

      v14 = sub_103008(0, v13 + 1, 1, v6);
      v15 = *(v3 + 16);
      *(v3 + 16) = v14;

      v6 = *(v3 + 16);
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_103008((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[64 * v9];
    v10[32] = v2;
    *(v10 + 6) = *&v16[15];
    *(v10 + 7) = &type metadata for SessionEndReasonData;
    *(v10 + 33) = *v16;
    *(v10 + 8) = v4;
    *(v10 + 9) = v5;
    *(v10 + 10) = 0;
    v10[88] = 0;
    *(v3 + 16) = v6;
    os_unfair_lock_unlock((v3 + 24));

    v11 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    return sub_1E1110();
  }

  return result;
}

uint64_t BATracker.pushSessionListeningData(_:file:line:)(uint64_t a1)
{
  v7 = *(a1 + OBJC_IVAR___BASessionListeningData_uniqueAudiobooksListened);
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v7 <= 0x7FFFFFFF)
  {
    v1 = *(a1 + OBJC_IVAR___BASessionListeningData_timeSpentListening);
    v4 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v4 + 24));
    v3 = sub_103114();
    v5 = sub_103168();
    v19 = 0;
    v17 = 0;
    v6 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  v14 = *(v6 + 2);

  v15 = sub_103008(0, v14 + 1, 1, v6);
  v16 = *(v4 + 16);
  *(v4 + 16) = v15;

  v6 = *(v4 + 16);
LABEL_4:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_103008((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 2) = v10 + 1;
  v11 = &v6[64 * v10];
  *(v11 + 4) = v1;
  *(v11 + 10) = v7;
  v11[44] = v19;
  *(v11 + 45) = *v18;
  *(v11 + 13) = *&v18[7];
  *(v11 + 7) = &type metadata for SessionListeningData;
  *(v11 + 8) = v3;
  *(v11 + 9) = v5;
  *(v11 + 10) = 0;
  v11[88] = v17;
  *(v4 + 16) = v6;
  os_unfair_lock_unlock((v4 + 24));

  v12 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  return sub_1E1110();
}

uint64_t BATracker.pushSessionReadingData(_:file:line:)(uint64_t a1)
{
  v7 = *(a1 + OBJC_IVAR___BASessionReadingData_uniqueBooksRead);
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v7 <= 0x7FFFFFFF)
  {
    v1 = *(a1 + OBJC_IVAR___BASessionReadingData_timeSpentReading);
    v4 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v4 + 24));
    v3 = sub_1031BC();
    v5 = sub_103210();
    v17 = 0;
    v6 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  v14 = *(v6 + 2);

  v15 = sub_103008(0, v14 + 1, 1, v6);
  v16 = *(v4 + 16);
  *(v4 + 16) = v15;

  v6 = *(v4 + 16);
LABEL_4:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_103008((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 2) = v10 + 1;
  v11 = &v6[64 * v10];
  *(v11 + 4) = v1;
  *(v11 + 10) = v7;
  *(v11 + 44) = v18;
  *(v11 + 13) = v19;
  *(v11 + 7) = &type metadata for SessionReadingData;
  *(v11 + 8) = v3;
  *(v11 + 9) = v5;
  *(v11 + 10) = 0;
  v11[88] = v17;
  *(v4 + 16) = v6;
  os_unfair_lock_unlock((v4 + 24));

  v12 = *(v2 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  return sub_1E1110();
}

uint64_t sub_1025A0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  a6(v13, v10, v12, a5);
}

uint64_t BATracker.pushTabData(with:file:line:)(unint64_t a1)
{
  v2 = a1;
  if (a1 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory);

    os_unfair_lock_lock((v3 + 24));
    v4 = sub_1036F0();
    v5 = sub_103744();
    v6 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v6 + 2);

      v14 = sub_103008(0, v13 + 1, 1, v6);
      v15 = *(v3 + 16);
      *(v3 + 16) = v14;

      v6 = *(v3 + 16);
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_103008((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[64 * v9];
    v10[32] = v2;
    *(v10 + 6) = *&v16[15];
    *(v10 + 7) = &type metadata for TabData;
    *(v10 + 33) = *v16;
    *(v10 + 8) = v4;
    *(v10 + 9) = v5;
    *(v10 + 10) = 0;
    v10[88] = 0;
    *(v3 + 16) = v6;
    os_unfair_lock_unlock((v3 + 24));

    v11 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    return sub_1E1110();
  }

  return result;
}

uint64_t sub_1027F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a1;
  a6(a3, v10, v12, a5);
}

Swift::Void __swiftcall BATracker.submitAppSessionStartEvent()()
{
  type metadata accessor for AppSessionStartEvent(0);
  v1 = *(v0 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  sub_103870(&qword_286BA8, type metadata accessor for AppSessionStartEvent);
  sub_1E1140();
}

Swift::Void __swiftcall BATracker.timeAppSessionEndEvent()()
{
  v0 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - v2;
  v4 = sub_1E09E0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_102A78(v3);
  sub_103798(v3);
}

uint64_t sub_102A78(uint64_t a1)
{
  v3 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1E09E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSessionEndEvent(0);
  sub_103800(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_103798(v6);
    v12 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    sub_103870(&qword_286BC8, type metadata accessor for AppSessionEndEvent);
    return sub_1E1120();
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
    sub_103870(&qword_286BC8, type metadata accessor for AppSessionEndEvent);
    sub_1E10D0();
    return (*(v8 + 8))(v11, v7);
  }
}

void *sub_102D78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3D68(&qword_286BE0, &qword_1FAAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3D68(&qword_286BE8, &qword_1FAAD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_102EC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3D68(&qword_286BB0, &qword_1FAAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3D68(&qword_285BB0, &qword_20EAA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_103008(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_286BD8, &qword_1FAAC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_103114()
{
  result = qword_286B68;
  if (!qword_286B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B68);
  }

  return result;
}

unint64_t sub_103168()
{
  result = qword_286B70;
  if (!qword_286B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B70);
  }

  return result;
}

unint64_t sub_1031BC()
{
  result = qword_286B78;
  if (!qword_286B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B78);
  }

  return result;
}

unint64_t sub_103210()
{
  result = qword_286B80;
  if (!qword_286B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B80);
  }

  return result;
}

void *sub_103264(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3D68(&qword_286BB8, &qword_1FAAB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3D68(&qword_286BC0, &qword_1FAAC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_103398(char *result, int64_t a2, char a3, char *a4)
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
    sub_3D68(&qword_287BF0, &unk_1FCFD0);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1034A4(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v6;
  v23[8] = *(a2 + 128);
  v24 = *(a2 + 144);
  v7 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v7;
  v8 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v8;
  v9 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v9;
  v10 = sub_98A8C();
  v11 = sub_1038B8();
  v12 = swift_allocObject();
  v13 = *(a2 + 112);
  *(v12 + 112) = *(a2 + 96);
  *(v12 + 128) = v13;
  *(v12 + 144) = *(a2 + 128);
  *(v12 + 160) = *(a2 + 144);
  v14 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v14;
  v15 = *(a2 + 80);
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = v15;
  v16 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v16;
  v25 = 0;
  v17 = *a1;
  sub_275C4(v23, v22);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_103008(0, *(v17 + 2) + 1, 1, v17);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_103008((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[64 * v19];
  *(v20 + 4) = v12;
  result = *v22;
  *(v20 + 40) = v22[0];
  *(v20 + 7) = &type metadata for LinkData;
  *(v20 + 8) = v10;
  *(v20 + 9) = v11;
  *(v20 + 10) = a3;
  v20[88] = v25;
  *a1 = v17;
  return result;
}

unint64_t sub_103648()
{
  result = qword_286B88;
  if (!qword_286B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B88);
  }

  return result;
}

unint64_t sub_10369C()
{
  result = qword_286B90;
  if (!qword_286B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B90);
  }

  return result;
}

unint64_t sub_1036F0()
{
  result = qword_286B98;
  if (!qword_286B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286B98);
  }

  return result;
}

unint64_t sub_103744()
{
  result = qword_286BA0;
  if (!qword_286BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286BA0);
  }

  return result;
}

uint64_t sub_103798(uint64_t a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_103800(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_287B10, &qword_1FCF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_103870(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1038B8()
{
  result = qword_286BD0;
  if (!qword_286BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286BD0);
  }

  return result;
}

uint64_t sub_10390C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  return _swift_deallocObject(v0, 168, 7);
}

BookAnalytics::SeriesType_optional __swiftcall SeriesType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260E00;
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

uint64_t SeriesType.rawValue.getter()
{
  v1 = 0x65697265536E6F6ELL;
  v2 = 0x65726564724F6E75;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6465726564726FLL;
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

unint64_t sub_103A6C()
{
  result = qword_286BF0;
  if (!qword_286BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286BF0);
  }

  return result;
}

Swift::Int sub_103AC0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_103B88()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_103C38()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_103D08(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x65697265536E6F6ELL;
  v4 = 0x65726564724F6E75;
  v5 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (*v1)
  {
    v3 = 0x6465726564726FLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_103E4C()
{
  result = qword_286BF8;
  if (!qword_286BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286BF8);
  }

  return result;
}

BookAnalytics::ProductionType_optional __swiftcall ProductionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260E80;
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

uint64_t ProductionType.rawValue.getter()
{
  v1 = 0x6375646F72506773;
  if (*v0 != 1)
  {
    v1 = 0x6F725047536E6F6ELL;
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

uint64_t sub_103F6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6375646F72506773;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x6F725047536E6F6ELL;
    v4 = 0xEF6E6F6974637564;
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

  v7 = 0x6375646F72506773;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x6F725047536E6F6ELL;
    v8 = 0xEF6E6F6974637564;
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

unint64_t sub_10409C()
{
  result = qword_286C00;
  if (!qword_286C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C00);
  }

  return result;
}

Swift::Int sub_1040F0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1041A8()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_10424C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_10430C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6375646F72506773;
  if (v2 != 1)
  {
    v5 = 0x6F725047536E6F6ELL;
    v4 = 0xEF6E6F6974637564;
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

unint64_t sub_104440()
{
  result = qword_286C08;
  if (!qword_286C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C08);
  }

  return result;
}

uint64_t sub_104494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_104928();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.tracker.getter()
{
  sub_104534();
  sub_1E1490();
  return v1;
}

unint64_t sub_104534()
{
  result = qword_286C10;
  if (!qword_286C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C10);
  }

  return result;
}

uint64_t sub_104588@<X0>(void *a1@<X8>)
{
  sub_104534();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_1045D8(void **a1)
{
  v1 = *a1;
  sub_104534();
  v2 = v1;
  return sub_1E14A0();
}

void (*EnvironmentValues.tracker.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_104534();
  sub_1E1490();
  return sub_1046D0;
}

void sub_1046D0(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (a2)
  {
    v6 = v2;
    sub_1E14A0();
    v7 = *a1;
  }

  else
  {
    sub_1E14A0();
  }
}

uint64_t View.tracker(_:)(void *a1)
{
  swift_getKeyPath();
  v2 = a1;
  sub_1E1500();
}

uint64_t sub_1047E8@<X0>(void *a1@<X8>)
{
  sub_104534();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_10483C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_5DE50(&qword_286C18, &qword_1FAD30);
  sub_1E1440();
  sub_1048B4();
  return swift_getWitnessTable();
}

unint64_t sub_1048B4()
{
  result = qword_286C20;
  if (!qword_286C20)
  {
    sub_5DE50(&qword_286C18, &qword_1FAD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C20);
  }

  return result;
}

unint64_t sub_104928()
{
  result = qword_286C28;
  if (!qword_286C28)
  {
    sub_5DE50(&qword_286C30, &qword_210090);
    sub_1049AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C28);
  }

  return result;
}

unint64_t sub_1049AC()
{
  result = qword_286C38;
  if (!qword_286C38)
  {
    type metadata accessor for BATracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C38);
  }

  return result;
}

BookAnalytics::DoNotDisturbStatus_optional __swiftcall DoNotDisturbStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260EE8;
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

unint64_t sub_104A64()
{
  result = qword_286C40;
  if (!qword_286C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C40);
  }

  return result;
}

unint64_t sub_104B84()
{
  result = qword_286C48;
  if (!qword_286C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C48);
  }

  return result;
}

uint64_t ScrubEvent.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 20);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.readingSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 20);
  v4 = sub_3D68(&qword_280D68, &qword_1EBF28);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.scrubData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 24);
  v4 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.scrubData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 24);
  v4 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScrubEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScrubEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ScrubEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ScrubEvent.Model.readingSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 98);
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 2) = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 120);
}

double ScrubEvent.Model.scrubData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 128);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t ScrubEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScrubEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScrubEvent.Model.init(contentData:readingSettingsData:scrubData:eventData:)@<X0>(_OWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a3 + 8);
  v12 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v12;
  v13 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v13;
  v14 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v14;
  *(a5 + 96) = v7;
  *(a5 + 98) = v8;
  *(a5 + 104) = v9;
  *(a5 + 112) = v10;
  *&v14 = *a3;
  *(a5 + 120) = *(a2 + 3);
  *(a5 + 128) = v14;
  *(a5 + 136) = v11;
  v15 = *(type metadata accessor for ScrubEvent.Model(0) + 28);
  v16 = sub_1E1150();
  v17 = *(*(v16 - 8) + 32);

  return v17(a5 + v15, a4, v16);
}

unint64_t sub_1053D0()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x7461446275726373;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_105460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_106930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_105488(uint64_t a1)
{
  v2 = sub_10580C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1054C4(uint64_t a1)
{
  v2 = sub_10580C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrubEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_286C88, &qword_1FAEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10580C();
  sub_1E1E00();
  v10 = *(v2 + 48);
  v11 = *(v2 + 16);
  v38 = *(v2 + 32);
  v39 = v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 80);
  v40 = *(v2 + 64);
  v41 = v13;
  v14 = *(v2 + 16);
  v37[0] = *v2;
  v37[1] = v14;
  v33 = v38;
  v34 = v12;
  v15 = *(v2 + 80);
  v35 = v40;
  v36 = v15;
  v31 = v37[0];
  v32 = v11;
  v30 = 0;
  sub_13A5C(v37, v29);
  sub_143D0();
  v16 = v42;
  sub_1E1CF0();
  v29[2] = v33;
  v29[3] = v34;
  v29[4] = v35;
  v29[5] = v36;
  v29[0] = v31;
  v29[1] = v32;
  sub_14424(v29);
  if (!v16)
  {
    v17 = *(v2 + 98);
    v18 = *(v2 + 104);
    v19 = *(v2 + 112);
    LOWORD(v25) = *(v2 + 96);
    BYTE2(v25) = v17;
    v26 = v18;
    v27 = v19;
    v28 = *(v2 + 120);
    v24 = 1;
    sub_67C3C();

    sub_1E1CF0();

    v20 = *(v2 + 136);
    v25 = *(v2 + 128);
    LODWORD(v26) = v20;
    v24 = 2;
    sub_105860();
    sub_1E1CF0();
    v21 = *(type metadata accessor for ScrubEvent.Model(0) + 28);
    LOBYTE(v25) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_10580C()
{
  result = qword_286C90;
  if (!qword_286C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C90);
  }

  return result;
}

unint64_t sub_105860()
{
  result = qword_286C98;
  if (!qword_286C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286C98);
  }

  return result;
}

uint64_t ScrubEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1E1150();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_3D68(&qword_286CA0, &qword_1FAEB0);
  v29 = *(v30 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v30);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ScrubEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v32 = a1;
  sub_48B8(a1, v14);
  sub_10580C();
  v16 = v31;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v32);
  }

  v31 = v6;
  v17 = v29;
  v44 = 0;
  sub_14CB8();
  sub_1E1C20();
  v18 = v40;
  *(v13 + 2) = v39;
  *(v13 + 3) = v18;
  v19 = v42;
  *(v13 + 4) = v41;
  *(v13 + 5) = v19;
  v20 = v38;
  *v13 = v37;
  *(v13 + 1) = v20;
  v43 = 1;
  sub_6873C();
  sub_1E1C20();
  v21 = BYTE2(v33);
  v22 = v34;
  v23 = v35;
  *(v13 + 48) = v33;
  v13[98] = v21;
  *(v13 + 13) = v22;
  *(v13 + 14) = v23;
  *(v13 + 15) = v36;
  v43 = 2;
  sub_105D6C();
  sub_1E1C20();
  v24 = v34;
  *(v13 + 16) = v33;
  *(v13 + 34) = v24;
  LOBYTE(v33) = 3;
  sub_14E5C(&qword_27D830);
  v25 = v31;
  sub_1E1C20();
  (*(v17 + 8))(v9, v30);
  (*(v27 + 32))(*(v10 + 28), v25, v3);
  sub_105DC0(0, v28);
  sub_4E48(v32);
  return sub_105E24(0);
}

unint64_t sub_105D6C()
{
  result = qword_286CA8;
  if (!qword_286CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286CA8);
  }

  return result;
}

uint64_t sub_105DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_105E24(uint64_t a1)
{
  v2 = type metadata accessor for ScrubEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_105F20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_280D68, &qword_1EBF28);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_286C80, &qword_1FAEA0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_1060A4(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_280D68, &qword_1EBF28);
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

  v14 = sub_3D68(&qword_286C80, &qword_1FAEA0);
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

uint64_t sub_106270(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_280D68, &qword_1EBF28);
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

  v16 = sub_3D68(&qword_286C80, &qword_1FAEA0);
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

void sub_106434()
{
  sub_106590(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_106590(319, &qword_280E48, sub_6873C, sub_67C3C);
    if (v1 <= 0x3F)
    {
      sub_106590(319, &unk_286D18, sub_105D6C, sub_105860);
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

void sub_106590(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_106620(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1066E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_106784()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10682C()
{
  result = qword_286DE8;
  if (!qword_286DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286DE8);
  }

  return result;
}

unint64_t sub_106884()
{
  result = qword_286DF0;
  if (!qword_286DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286DF0);
  }

  return result;
}

unint64_t sub_1068DC()
{
  result = qword_286DF8;
  if (!qword_286DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286DF8);
  }

  return result;
}

uint64_t sub_106930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000214420 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446275726373 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
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

uint64_t AllInSeriesViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AllInSeriesViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AllInSeriesViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AllInSeriesViewEvent(0) + 20);
  v5 = enum case for EventProperty.required<A>(_:);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(*(v6 - 8) + 104);

  return v7(a1 + v4, v5, v6);
}

uint64_t AllInSeriesViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AllInSeriesViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AllInSeriesViewEvent.Model.init(singleCollectionData:eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = *(type metadata accessor for AllInSeriesViewEvent.Model(0) + 20);
  v7 = sub_1E1150();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_106EFC(uint64_t a1)
{
  v2 = sub_10714C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_106F38(uint64_t a1)
{
  v2 = sub_10714C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AllInSeriesViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_286E30, &qword_1FB0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10714C();
  sub_1E1E00();
  v11 = v3[1];
  v12 = *(v3 + 4);
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v15[7] = 0;
  sub_12578();

  sub_1E1C80();

  if (!v2)
  {
    v13 = *(type metadata accessor for AllInSeriesViewEvent.Model(0) + 20);
    LOBYTE(v16) = 1;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10714C()
{
  result = qword_286E38;
  if (!qword_286E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286E38);
  }

  return result;
}

uint64_t AllInSeriesViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1E1150();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_3D68(&qword_286E40, &qword_1FB0D8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10714C();
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
  sub_12520();
  v18 = v26;
  sub_1E1BB0();
  v19 = v28;
  *v15 = v27;
  *(v15 + 16) = v19;
  LOBYTE(v27) = 1;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v9, v18);
  (*(v22 + 32))(v15 + *(v21 + 20), v6, v16);
  sub_1074B8(v15, v23);
  sub_4E48(a1);
  return sub_10751C(v15);
}

uint64_t sub_1074B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10751C(uint64_t a1)
{
  v2 = type metadata accessor for AllInSeriesViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_107618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_281010, &qword_1EC770);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a2 + v6, v7, v8);
}

uint64_t sub_107710(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10782C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_107980(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_107A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_107B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
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

void sub_107BAC()
{
  if (!qword_286F40)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_286F40);
    }
  }
}

unint64_t sub_107C10()
{
  result = qword_286F70;
  if (!qword_286F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286F70);
  }

  return result;
}

unint64_t sub_107C68()
{
  result = qword_286F78;
  if (!qword_286F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286F78);
  }

  return result;
}

unint64_t sub_107CC0()
{
  result = qword_286F80;
  if (!qword_286F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286F80);
  }

  return result;
}

unint64_t sub_107D28()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x657079546C616564;
  }

  *v0;
  return result;
}

uint64_t sub_107D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546C616564 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000216280 == a2)
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

uint64_t sub_107E4C(uint64_t a1)
{
  v2 = sub_1083EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_107E88(uint64_t a1)
{
  v2 = sub_1083EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DealsData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_286F88, &qword_1FB2E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1083EC();
  sub_1E1E00();
  v16 = v9;
  v15 = 0;
  sub_108440();
  sub_1E1C80();
  if (!v2)
  {
    v14 = 1;
    sub_1E1C50();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DealsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_286FA0, &qword_1FB2E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1083EC();
  sub_1E1DF0();
  if (!v2)
  {
    v18 = 0;
    sub_108494();
    sub_1E1BB0();
    v11 = v19;
    v17 = 1;
    v13 = sub_1E1B80();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  sub_4E48(a1);
}

BOOL _s13BookAnalytics9DealsDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  if (v2 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v5 == 3)
  {
    return 0;
  }

  v8 = 0xE400000000000000;
  v9 = 1701147238;
  if (v2 != 1)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6F72446563697270;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE900000000000070;
  }

  v12 = 0xE400000000000000;
  v13 = 1701147238;
  if (v5 != 1)
  {
    v13 = 0x6E776F6E6B6E75;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x6F72446563697270;
  }

  if (*a2)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE900000000000070;
  }

  if (v10 != v14 || v11 != v15)
  {
    v17 = sub_1E1D30();

    if ((v17 & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (v4)
    {
      return v6 && (v3 == v7 && v4 == v6 || (sub_1E1D30() & 1) != 0);
    }

    return !v6;
  }

  if (v4)
  {
    return v6 && (v3 == v7 && v4 == v6 || (sub_1E1D30() & 1) != 0);
  }

  return !v6;
}

unint64_t sub_1083EC()
{
  result = qword_286F90;
  if (!qword_286F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286F90);
  }

  return result;
}

unint64_t sub_108440()
{
  result = qword_286F98;
  if (!qword_286F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286F98);
  }

  return result;
}

unint64_t sub_108494()
{
  result = qword_286FA8;
  if (!qword_286FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FA8);
  }

  return result;
}

uint64_t sub_1084F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10854C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1085C4()
{
  result = qword_286FB0;
  if (!qword_286FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FB0);
  }

  return result;
}

unint64_t sub_10861C()
{
  result = qword_286FB8;
  if (!qword_286FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FB8);
  }

  return result;
}

unint64_t sub_108674()
{
  result = qword_286FC0;
  if (!qword_286FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FC0);
  }

  return result;
}

uint64_t sub_1086CC()
{
  if (*v0)
  {
    result = 0x7574617453646E65;
  }

  else
  {
    result = 0x6174537472617473;
  }

  *v0;
  return result;
}

uint64_t sub_108714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174537472617473 && a2 == 0xEB00000000737574;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7574617453646E65 && a2 == 0xE900000000000073)
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

uint64_t sub_1087FC(uint64_t a1)
{
  v2 = sub_108DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_108838(uint64_t a1)
{
  v2 = sub_108DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DoNotDisturbData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_286FC8, &qword_1FB510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_108DD4();
  sub_1E1E00();
  v17 = v9;
  v16 = 0;
  sub_108E28();
  sub_1E1CF0();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DoNotDisturbData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_286FE0, &qword_1FB518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_108DD4();
  sub_1E1DF0();
  if (!v2)
  {
    v17 = 0;
    sub_108E7C();
    sub_1E1C20();
    v11 = v18;
    v15 = 1;
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t _s13BookAnalytics16DoNotDisturbDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0xE200000000000000;
  v6 = 28271;
  if (v2 != 1)
  {
    v6 = 6710895;
    v5 = 0xE300000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v9 = 0xE200000000000000;
  v10 = 28271;
  if (*a2 != 1)
  {
    v10 = 6710895;
    v9 = 0xE300000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v7 == v11 && v8 == v12)
  {

    goto LABEL_21;
  }

  v13 = sub_1E1D30();

  v14 = 0;
  if (v13)
  {
LABEL_21:
    v15 = 0xE200000000000000;
    v16 = 28271;
    if (v3 != 1)
    {
      v16 = 6710895;
      v15 = 0xE300000000000000;
    }

    if (v3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        v19 = 0xE200000000000000;
        if (v17 != 28271)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v19 = 0xE300000000000000;
        if (v17 != 6710895)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v17 != 0x6E776F6E6B6E75)
      {
        goto LABEL_38;
      }
    }

    if (v18 == v19)
    {
      v14 = 1;
LABEL_39:

      return v14 & 1;
    }

LABEL_38:
    v14 = sub_1E1D30();
    goto LABEL_39;
  }

  return v14 & 1;
}

unint64_t sub_108DD4()
{
  result = qword_286FD0;
  if (!qword_286FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FD0);
  }

  return result;
}

unint64_t sub_108E28()
{
  result = qword_286FD8;
  if (!qword_286FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FD8);
  }

  return result;
}

unint64_t sub_108E7C()
{
  result = qword_286FE8;
  if (!qword_286FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AccountData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_109040()
{
  result = qword_286FF0;
  if (!qword_286FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FF0);
  }

  return result;
}

unint64_t sub_109098()
{
  result = qword_286FF8;
  if (!qword_286FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_286FF8);
  }

  return result;
}

unint64_t sub_1090F0()
{
  result = qword_287000;
  if (!qword_287000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287000);
  }

  return result;
}

uint64_t sub_10916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000000002156F0 == a2)
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

uint64_t sub_109200(uint64_t a1)
{
  v2 = sub_1093C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10923C(uint64_t a1)
{
  v2 = sub_1093C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AutoNightThemeSettingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287008, &qword_1FB740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1093C4();
  sub_1E1E00();
  v12 = v8;
  sub_109418();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1093C4()
{
  result = qword_287010;
  if (!qword_287010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287010);
  }

  return result;
}

unint64_t sub_109418()
{
  result = qword_287018;
  if (!qword_287018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287018);
  }

  return result;
}

uint64_t AutoNightThemeSettingData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_287020, &qword_1FB748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1093C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1095D8();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1095D8()
{
  result = qword_287028;
  if (!qword_287028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287028);
  }

  return result;
}

unint64_t sub_109630()
{
  result = qword_287030;
  if (!qword_287030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287030);
  }

  return result;
}

unint64_t sub_109688()
{
  result = qword_287038;
  if (!qword_287038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287038);
  }

  return result;
}

unint64_t sub_109730()
{
  result = qword_287040;
  if (!qword_287040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287040);
  }

  return result;
}

unint64_t sub_109788()
{
  result = qword_287048;
  if (!qword_287048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287048);
  }

  return result;
}

unint64_t sub_1097E0()
{
  result = qword_287050;
  if (!qword_287050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287050);
  }

  return result;
}

uint64_t BrowseStoreViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseStoreViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrowseStoreViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for BrowseStoreViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t BrowseStoreViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseStoreViewEvent.Model(0) + 20);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseStoreViewEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for BrowseStoreViewEvent.Model(0) + 20);
  v8 = sub_1E11A0();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_109CA4(uint64_t a1)
{
  v2 = sub_109F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_109CE0(uint64_t a1)
{
  v2 = sub_109F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrowseStoreViewEvent.Model.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287088, &qword_1FB970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_109F1C();
  sub_1E1E00();
  v11[15] = 0;
  sub_1E1150();
  sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
  sub_1E1CF0();
  if (!v1)
  {
    v9 = *(type metadata accessor for BrowseStoreViewEvent.Model(0) + 20);
    v11[14] = 1;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_109F1C()
{
  result = qword_287090;
  if (!qword_287090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287090);
  }

  return result;
}

uint64_t BrowseStoreViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E11A0();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1150();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_287098, &qword_1FB978);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = &v24 - v10;
  v12 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_109F1C();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v25 = v12;
  v17 = v15;
  v19 = v28;
  v18 = v29;
  v35 = 0;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v20 = v30;
  sub_1E1C20();
  v21 = *(v19 + 32);
  v24 = v17;
  v21(v17, v20, v32);
  v34 = 1;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  sub_1E1C20();
  (*(v31 + 8))(v11, v33);
  v22 = v24;
  (*(v26 + 32))(v24 + *(v25 + 20), v6, v18);
  sub_10A390(v22, v27);
  sub_4E48(a1);
  return sub_10A3F4(v22);
}

uint64_t sub_10A390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10A3F4(uint64_t a1)
{
  v2 = type metadata accessor for BrowseStoreViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10A504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10A620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}