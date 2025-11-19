void sub_403DC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_4046C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_405A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_406C8()
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
        sub_1E11A0();
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &unk_27FA68);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_4081C()
{
  result = qword_27FAC0;
  if (!qword_27FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAC0);
  }

  return result;
}

unint64_t sub_40874()
{
  result = qword_27FAC8;
  if (!qword_27FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAC8);
  }

  return result;
}

unint64_t sub_408CC()
{
  result = qword_27FAD0;
  if (!qword_27FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAD0);
  }

  return result;
}

uint64_t sub_40920(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000213DC0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1E1D30();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_40CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954676F6C616964 && a2 == 0xEA00000000006570)
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

uint64_t sub_40D74(uint64_t a1)
{
  v2 = sub_40F38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_40DB0(uint64_t a1)
{
  v2 = sub_40F38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DialogData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27FAD8, &qword_1E9088);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_40F38();
  sub_1E1E00();
  v12 = v8;
  sub_40F8C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_40F38()
{
  result = qword_27FAE0;
  if (!qword_27FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAE0);
  }

  return result;
}

unint64_t sub_40F8C()
{
  result = qword_27FAE8;
  if (!qword_27FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAE8);
  }

  return result;
}

uint64_t DialogData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27FAF0, &qword_1E9090);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_40F38();
  sub_1E1DF0();
  if (!v2)
  {
    sub_4114C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_4114C()
{
  result = qword_27FAF8;
  if (!qword_27FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FAF8);
  }

  return result;
}

unint64_t sub_411A4()
{
  result = qword_27FB00;
  if (!qword_27FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB00);
  }

  return result;
}

unint64_t sub_411FC()
{
  result = qword_27FB08;
  if (!qword_27FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB08);
  }

  return result;
}

unint64_t sub_412A4()
{
  result = qword_27FB10;
  if (!qword_27FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB10);
  }

  return result;
}

unint64_t sub_412FC()
{
  result = qword_27FB18;
  if (!qword_27FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB18);
  }

  return result;
}

unint64_t sub_41354()
{
  result = qword_27FB20;
  if (!qword_27FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB20);
  }

  return result;
}

uint64_t ContentDetailsViewScrollEvent.scrollData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 20);
  v4 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.scrollData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 20);
  v4 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewScrollEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContentDetailsViewScrollEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ContentDetailsViewScrollEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

double ContentDetailsViewScrollEvent.Model.scrollData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 96);
  *a1 = result;
  return result;
}

uint64_t ContentDetailsViewScrollEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentDetailsViewScrollEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentDetailsViewScrollEvent.Model.init(contentData:scrollData:eventData:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v6;
  v7 = a1[5];
  *(a4 + 64) = a1[4];
  *(a4 + 80) = v7;
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 96) = *a2;
  v9 = *(type metadata accessor for ContentDetailsViewScrollEvent.Model(0) + 24);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t sub_419AC()
{
  v1 = 0x61446C6C6F726373;
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

uint64_t sub_41A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_42C60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_41A40(uint64_t a1)
{
  v2 = sub_41D50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_41A7C(uint64_t a1)
{
  v2 = sub_41D50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentDetailsViewScrollEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_27FB60, &qword_1E92C8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v19[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_41D50();
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
  sub_13A5C(&v34, &v21);
  sub_143D0();
  v16 = v40;
  sub_1E1CF0();
  if (v16)
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_14424(&v21);
  }

  else
  {
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v21 = v28;
    v22 = v29;
    sub_14424(&v21);
    v20 = *(v2 + 12);
    v19[7] = 1;
    sub_41DA4();
    sub_1E1CF0();
    v17 = *(type metadata accessor for ContentDetailsViewScrollEvent.Model(0) + 24);
    LOBYTE(v20) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_41D50()
{
  result = qword_27FB68;
  if (!qword_27FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB68);
  }

  return result;
}

unint64_t sub_41DA4()
{
  result = qword_27FB70;
  if (!qword_27FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB70);
  }

  return result;
}

uint64_t ContentDetailsViewScrollEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_27FB78, &qword_1E92D0);
  v27 = *(v28 - 8);
  v8 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_48B8(a1, v15);
  sub_41D50();
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
  sub_1E1C20();
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
  sub_421F0();
  sub_1E1C20();
  *(v14 + 12) = v30;
  LOBYTE(v30) = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v25 + 32))(&v14[*(v24 + 24)], v18, v4);
  sub_42244(v14, v26);
  sub_4E48(v29);
  return sub_422A8(v14);
}

unint64_t sub_421F0()
{
  result = qword_27FB80;
  if (!qword_27FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FB80);
  }

  return result;
}

uint64_t sub_42244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_422A8(uint64_t a1)
{
  v2 = type metadata accessor for ContentDetailsViewScrollEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_423A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27FB58, &unk_1E92B8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_424DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_27FB58, &unk_1E92B8);
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

uint64_t sub_42654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_27FB58, &unk_1E92B8);
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

void sub_427C4()
{
  sub_428D0(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_428D0(319, &unk_27FBF0, sub_421F0, sub_41DA4);
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

void sub_428D0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_42960(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_42A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_42AC4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_42B5C()
{
  result = qword_27FCC0;
  if (!qword_27FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC0);
  }

  return result;
}

unint64_t sub_42BB4()
{
  result = qword_27FCC8;
  if (!qword_27FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC8);
  }

  return result;
}

unint64_t sub_42C0C()
{
  result = qword_27FCD0;
  if (!qword_27FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCD0);
  }

  return result;
}

uint64_t sub_42C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446C6C6F726373 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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

uint64_t ThemeCustomizedEvent.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.textData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.layoutOptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.layoutOptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ThemeCustomizedEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = enum case for EventProperty.optional<A>(_:);
  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

__n128 ThemeCustomizedEvent.Model.layoutOptionData.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 60);
  result = *(v1 + 70);
  *(a1 + 10) = result;
  return result;
}

uint64_t ThemeCustomizedEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v10 = *(v1 + 120);
  v11 = v2;
  v4 = *(v1 + 168);
  v12 = *(v1 + 152);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
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

uint64_t sub_437B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27FD08, &qword_1E94F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThemeCustomizedEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizedEvent.Model(0) + 36);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizedEvent.Model.init(themesData:textData:layoutOptionData:contentData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 60) = *a3;
  *(a7 + 70) = *(a3 + 10);
  v10 = a4[3];
  *(a7 + 120) = a4[2];
  *(a7 + 136) = v10;
  v11 = a4[5];
  *(a7 + 152) = a4[4];
  *(a7 + 168) = v11;
  v12 = a4[1];
  *(a7 + 88) = *a4;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 24) = v13;
  *(a7 + 32) = v14;
  *(a7 + 40) = v15;
  *(a7 + 48) = v16;
  *(a7 + 56) = v17;
  *(a7 + 104) = v12;
  v18 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  v19 = *(v18 + 32);
  v20 = sub_1E1150();
  (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  v21 = *(v18 + 36);
  v22 = sub_1E11A0();
  v23 = *(*(v22 - 8) + 32);

  return v23(a7 + v21, a6, v22);
}

uint64_t sub_43A68()
{
  v1 = *v0;
  v2 = 0x614473656D656874;
  v3 = 0x44746E65746E6F63;
  v4 = 0x746144746E657665;
  if (v1 != 4)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614474786574;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_43B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_45778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_43B70(uint64_t a1)
{
  v2 = sub_4406C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_43BAC(uint64_t a1)
{
  v2 = sub_4406C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemeCustomizedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27FD10, &qword_1E94F8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_4406C();
  sub_1E1E00();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  *&v37[0] = *v3;
  *(v37 + 8) = *(v3 + 8);
  *(&v37[1] + 1) = v11;
  LOBYTE(v38) = v12;
  LOBYTE(v31) = 0;
  sub_7B78();

  sub_1E1CF0();
  if (v2)
  {

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14 = v6;

    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v45 = *(v3 + 40);
    v46 = v15;
    v47 = v16;
    v44 = 1;
    sub_7BCC();

    sub_1E1CF0();

    v43[0] = *(v3 + 60);
    *(v43 + 10) = *(v3 + 70);
    v42 = 2;
    sub_7C20();
    v17 = v5;
    sub_1E1CF0();
    v18 = *(v3 + 120);
    v19 = *(v3 + 152);
    v39 = *(v3 + 136);
    v40 = v19;
    v41 = *(v3 + 168);
    v20 = *(v3 + 88);
    v37[1] = *(v3 + 104);
    v38 = v18;
    v21 = *(v3 + 120);
    v22 = *(v3 + 152);
    v34 = *(v3 + 136);
    v35 = v22;
    v36 = *(v3 + 168);
    v37[0] = v20;
    v31 = *(v3 + 88);
    v32 = *(v3 + 104);
    v33 = v21;
    v30 = 3;
    sub_437B4(v37, v29);
    sub_143D0();
    sub_1E1C80();
    v29[2] = v33;
    v29[3] = v34;
    v29[4] = v35;
    v29[5] = v36;
    v29[0] = v31;
    v29[1] = v32;
    sub_440C0(v29);
    v23 = type metadata accessor for ThemeCustomizedEvent.Model(0);
    v24 = *(v23 + 32);
    v28 = 4;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    v25 = v17;
    sub_1E1CF0();
    v26 = *(v23 + 36);
    v28 = 5;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v14 + 8))(v9, v25);
  }
}

unint64_t sub_4406C()
{
  result = qword_27FD18;
  if (!qword_27FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD18);
  }

  return result;
}

uint64_t sub_440C0(uint64_t a1)
{
  v2 = sub_3D68(&qword_27FD08, &qword_1E94F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ThemeCustomizedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = sub_1E11A0();
  v39 = *(v42 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin();
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_27FD20, &qword_1E9500);
  v44 = *(v43 - 8);
  v10 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin();
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v47 = a1;
  sub_48B8(a1, v17);
  sub_4406C();
  v45 = v12;
  v19 = v46;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v47);
  }

  v46 = v9;
  v38 = v5;
  v20 = v42;
  v21 = v13;
  v22 = v16;
  v23 = v41;
  v48[0] = 0;
  sub_8248();
  sub_1E1C20();
  v24 = v50;
  v25 = v51;
  *v22 = v49;
  *(v22 + 16) = v24;
  *(v22 + 32) = v25;
  v48[0] = 1;
  sub_829C();
  sub_1E1C20();
  v37 = v6;
  v26 = *(&v49 + 1);
  v27 = v50;
  *(v22 + 40) = v49;
  *(v22 + 48) = v26;
  *(v22 + 56) = v27;
  v57 = 2;
  sub_82F0();
  v36 = 0;
  sub_1E1C20();
  *(v22 + 60) = *v48;
  *(v22 + 70) = *&v48[10];
  v56 = 3;
  sub_14CB8();
  sub_1E1BB0();
  v28 = v23;
  v29 = v52;
  *(v22 + 120) = v51;
  *(v22 + 136) = v29;
  v30 = v54;
  *(v22 + 152) = v53;
  *(v22 + 168) = v30;
  v31 = v50;
  *(v22 + 88) = v49;
  *(v22 + 104) = v31;
  v55 = 4;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v32 = v46;
  v33 = v37;
  sub_1E1C20();
  (*(v28 + 32))(v22 + *(v13 + 32), v32, v33);
  v55 = 5;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v34 = v38;
  sub_1E1C20();
  (*(v44 + 8))(v45, v43);
  (*(v39 + 32))(v22 + *(v21 + 36), v34, v20);
  sub_4482C(v22, v40);
  sub_4E48(v47);
  return sub_44890(v22);
}

uint64_t sub_4482C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_44890(uint64_t a1)
{
  v2 = type metadata accessor for ThemeCustomizedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4498C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.optional<A>(_:);
  v12 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

uint64_t sub_44BBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DA88, &qword_1E41E8);
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

  v14 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

uint64_t sub_44E30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DA88, &qword_1E41E8);
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

  v16 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_3D68(&qword_27E1D0, &qword_1E8400);
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

void sub_4509C()
{
  sub_45260(319, &qword_27DB48, sub_8248, sub_7B78);
  if (v0 <= 0x3F)
  {
    sub_45260(319, &qword_27DB50, sub_829C, sub_7BCC);
    if (v1 <= 0x3F)
    {
      sub_45260(319, &unk_27DB58, sub_82F0, sub_7C20);
      if (v2 <= 0x3F)
      {
        sub_45260(319, &qword_27E2C8, sub_14CB8, sub_143D0);
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

void sub_45260(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_452F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_45428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
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

void sub_4554C()
{
  sub_45610();
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

void sub_45610()
{
  if (!qword_27FE30)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE30);
    }
  }
}

unint64_t sub_45674()
{
  result = qword_27FE70;
  if (!qword_27FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE70);
  }

  return result;
}

unint64_t sub_456CC()
{
  result = qword_27FE78;
  if (!qword_27FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE78);
  }

  return result;
}

unint64_t sub_45724()
{
  result = qword_27FE80;
  if (!qword_27FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80);
  }

  return result;
}

uint64_t sub_45778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614473656D656874 && a2 == 0xEA00000000006174;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614474786574 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213820 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
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

unint64_t sub_459BC()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_459F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x8000000000213AF0 == a2;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000000213B40 == a2)
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

uint64_t sub_45AD8(uint64_t a1)
{
  v2 = sub_45FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_45B14(uint64_t a1)
{
  v2 = sub_45FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearlyGoalsReachedData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_27FE88, &qword_1E9740);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = *(v1 + 1);
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_45FD4();
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

uint64_t YearlyGoalsReachedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27FE98, &qword_1E9748);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_45FD4();
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

BOOL _s13BookAnalytics22YearlyGoalsReachedDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 + 8);
  v5 = 89;
  if (v2 != 1)
  {
    v5 = 78;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 16718;
  }

  if (v2)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 89;
  if (*a2 != 1)
  {
    v8 = 78;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 16718;
  }

  if (*a2)
  {
    v10 = 0xE100000000000000;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
  }

  else
  {
    v11 = sub_1E1D30();

    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  return v3 == v4;
}

unint64_t sub_45FD4()
{
  result = qword_27FE90;
  if (!qword_27FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE90);
  }

  return result;
}

unint64_t sub_4602C()
{
  result = qword_27FEA0;
  if (!qword_27FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0);
  }

  return result;
}

unint64_t sub_46084()
{
  result = qword_27FEA8;
  if (!qword_27FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YearlyGoalsReachedData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
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

uint64_t storeEnumTagSinglePayload for YearlyGoalsReachedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_46180()
{
  result = qword_27FEB0;
  if (!qword_27FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB0);
  }

  return result;
}

unint64_t sub_461D8()
{
  result = qword_27FEB8;
  if (!qword_27FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB8);
  }

  return result;
}

unint64_t sub_46230()
{
  result = qword_27FEC0;
  if (!qword_27FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEC0);
  }

  return result;
}

uint64_t sub_46388(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, __int128 a11, __int128 a12)
{
  v60 = a7;
  v61 = a4;
  v18 = sub_1E1640();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v22 = sub_1E19E0();
  (*(v19 + 104))(v22, enum case for DispatchPredicate.notOnQueue(_:), v18);
  v23 = sub_1E1660();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v54 = a5;
    LODWORD(v55) = a6;
    *&v56 = a8;
    v59 = a1;
    v58 = a12;
    v57 = a11;
    v53 = a10;
    v52 = a9;
    v25 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v26 = v68;
    result = v68 + 32;
    v27 = -*(v68 + 16);
    v28 = -1;
    while (1)
    {
      v29 = v27 + v28;
      if (v27 + v28 == -1)
      {
        break;
      }

      if (++v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v30 = result + 40;
      sub_4C2BC(result, &v68);
      v31 = *(&v69 + 1);
      v32 = v70;
      sub_48B8(&v68, *(&v69 + 1));
      v33 = (*(v32 + 8))(a2, a3, v61, v31, v32);
      sub_4E48(&v68);
      result = v30;
      if (v33)
      {

        v34 = [v33 intValue];

        goto LABEL_8;
      }
    }

    v34 = 0;
LABEL_8:
    v35._countAndFlagsBits = a3;
    v36 = v61;
    v35._object = v61;
    v37 = BATracker.contentPrivateID(for:)(v35);
    if (v37.value._object)
    {
      countAndFlagsBits = v37.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v37.value._object)
    {
      object = v37.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v40._countAndFlagsBits = a3;
    v40._object = v36;
    v41 = BATracker.contentUserID(for:)(v40);
    v74 = BYTE4(v56) & 1;
    v77 = v29 == -1;
    if (v41.value._object)
    {
      v42 = v41.value._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    if (v41.value._object)
    {
      v43 = v41.value._object;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    *&v68 = a3;
    *(&v68 + 1) = v36;
    LOBYTE(v69) = v54;
    *(&v69 + 1) = *v78;
    DWORD1(v69) = *&v78[3];
    *(&v69 + 1) = countAndFlagsBits;
    *&v70 = object;
    *(&v70 + 1) = v42;
    *&v71 = v43;
    BYTE8(v71) = v55;
    BYTE9(v71) = 4;
    HIDWORD(v71) = v34;
    LOBYTE(v72) = v29 == -1;
    BYTE3(v72) = v76;
    *(&v72 + 1) = v75;
    DWORD1(v72) = v56;
    BYTE8(v72) = v74;
    BYTE9(v72) = v52;
    BYTE10(v72) = v53;
    *(&v72 + 11) = 515;
    BYTE13(v72) = 2;
    v73 = 0uLL;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v67 = 0uLL;
    v62 = v68;
    v63 = v69;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v44 = sub_1E0CB0();
    v45 = *(v44 - 8);
    v60 = *(v45 + 72);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    v56 = xmmword_1E9970;
    *(v47 + 16) = xmmword_1E9970;
    v48 = enum case for DataEventTrait.onlyOnce(_:);
    v49 = *(v45 + 104);
    v49(v47 + v46, enum case for DataEventTrait.onlyOnce(_:), v44);
    v55 = "v72@0:8@16@24q32q40@48q56q64";
    sub_4C164();

    sub_1E0C00();

    sub_14424(&v68);
    v62 = v57;
    v63 = v58;
    v50 = swift_allocObject();
    *(v50 + 16) = v56;
    v49(v50 + v46, v48, v44);
    sub_4C424();
    sub_1E0C00();

    type metadata accessor for AddToCollectionEvent(0);
    sub_4C5C8(&qword_27FF40, type metadata accessor for AddToCollectionEvent);
    v62 = 0u;
    v63 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v62);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_46AA8(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v16 = a2[2];
  v17 = v2;
  v3 = a2[5];
  v18 = a2[4];
  v19 = v3;
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v6 + 104);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v11(v12 + v8, v10, v5);
  sub_4C424();
  sub_1E0C00();

  type metadata accessor for AddToCollectionEvent(0);
  sub_4C5C8(&qword_27FF40, type metadata accessor for AddToCollectionEvent);
  v14 = 0u;
  v15 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v14);
}

uint64_t sub_46D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v12 = a3;
    *(&v12 + 1) = a4;
    LODWORD(v13) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();

    type metadata accessor for CollectionAddEvent(0);
    sub_4C5C8(&qword_27FF38, type metadata accessor for CollectionAddEvent);
    v12 = 0u;
    v13 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v12);
  }

  __break(1u);
  return result;
}

uint64_t EventReporter.emitCollectionDescriptionEvent(using:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_4BA74;
  *(v8 + 24) = v6;

  sub_1E10C0();
}

uint64_t sub_4704C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v9 = a2;
  *(&v9 + 1) = a3;
  v10 = 0uLL;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v3 = sub_1E0CB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  (*(v4 + 104))(v7 + v6, enum case for DataEventTrait.onlyOnce(_:), v3);
  sub_4C424();

  sub_1E0C00();

  type metadata accessor for CollectionDescriptionEvent(0);
  sub_4C5C8(&qword_27FF30, type metadata accessor for CollectionDescriptionEvent);
  v9 = 0u;
  v10 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v9);
}

char *sub_47328(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  if (a1 || (result = sub_BFB78(), (v12 = result) != 0))
  {
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *&v12[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v16 = swift_allocObject();
    *(v16 + 16) = a7;
    *(v16 + 24) = v14;
    v17 = a1;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_47434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BARoundIntegerToSignificantFigures(a2, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *&v12 = a3;
    *(&v12 + 1) = a4;
    LODWORD(v13) = result;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v7 = sub_1E0CB0();
    v8 = *(v7 - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E9970;
    (*(v8 + 104))(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v7);
    sub_4C574();

    sub_1E0C00();

    type metadata accessor for CollectionRemoveEvent(0);
    sub_4C5C8(&qword_27FF28, type metadata accessor for CollectionRemoveEvent);
    v12 = 0u;
    v13 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v12);
  }

  __break(1u);
  return result;
}

void sub_4767C(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1E1780();
  v14 = v13;
  v21 = a1;
  v15 = a3;
  if (a3)
  {
    goto LABEL_4;
  }

  v16 = sub_BFB78();
  if (v16)
  {
    v15 = v16;
LABEL_4:
    v17 = swift_allocObject();
    v17[2] = a5;
    v17[3] = v12;
    v17[4] = v14;
    v18 = *&v15[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v19 = swift_allocObject();
    *(v19 + 16) = a8;
    *(v19 + 24) = v17;
    v20 = a3;

    sub_1E10C0();

    goto LABEL_5;
  }

LABEL_5:
}

char *EventReporter.emitLibraryDataEditEvent(using:with:for:result:)(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  if (a1 || (result = sub_BFB78(), (v8 = result) != 0))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v8;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4 & 1;
    v11 = *&v8[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v12 = swift_allocObject();
    *(v12 + 16) = sub_4BA88;
    *(v12 + 24) = v10;
    v13 = a1;

    v14 = v8;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_478C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = *(a2 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v34 = a5;
    v35 = a4;
    *&v37[0] = &_swiftEmptyArrayStorage;
    sub_A7EB0(0, v5, 0);
    v6 = &_swiftEmptyArrayStorage;
    swift_beginAccess();
    v8 = (a2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v12 = v9;
        v13 = sub_1E1770();
        v14 = [Strong contentPrivateIDForContentID:v13];

        swift_unknownObjectRelease();
        if (v14)
        {
          Strong = sub_1E1780();
          v16 = v15;
        }

        else
        {
          Strong = 0;
          v16 = 0xE000000000000000;
        }

        v9 = v12;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v36 = v16;
      v17 = Strong;
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v9;
        v20 = sub_1E1770();
        v21 = [v18 contentUserIDForContentID:v20];

        swift_unknownObjectRelease();
        if (v21)
        {
          v18 = sub_1E1780();
          v23 = v22;
        }

        else
        {
          v18 = 0;
          v23 = 0xE000000000000000;
        }

        v9 = v19;
      }

      else
      {
        v23 = 0xE000000000000000;
      }

      *&v37[0] = v6;
      v25 = v6[2];
      v24 = v6[3];
      if (v25 >= v24 >> 1)
      {
        sub_A7EB0((v24 > 1), v25 + 1, 1);
        v6 = *&v37[0];
      }

      v6[2] = v25 + 1;
      v26 = &v6[6 * v25];
      v26[4] = v17;
      v26[5] = v36;
      v26[6] = v18;
      v26[7] = v23;
      v26[8] = v9;
      v26[9] = v10;
      v8 += 2;
      --v5;
    }

    while (v5);
    a4 = v35;
    a5 = v34;
  }

  if (a4 >= 4)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    *&v37[0] = v6;
    if (a5)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    BYTE8(v37[0]) = a4;
    BYTE9(v37[0]) = v27;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v28 = sub_1E0CB0();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1E9970;
    (*(v29 + 104))(v32 + v31, enum case for DataEventTrait.onlyOnce(_:), v28);
    sub_4C520();
    sub_1E0C00();

    type metadata accessor for LibraryDataEditEvent(0);
    sub_4C5C8(&qword_27FF18, type metadata accessor for LibraryDataEditEvent);
    memset(v37, 0, sizeof(v37));
    sub_1E0C10();
    return sub_4C1B8(v37);
  }

  return result;
}

char *EventReporter.emitMarkAsFinishedEvent(using:for:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, id a6, unint64_t a7, unint64_t a8)
{
  v9 = a4;
  if (a4 >= 3)
  {
    goto LABEL_14;
  }

  v10 = a5;
  if (a5 >= 7)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    v17 = [a6 intValue];
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  v29 = v17;
  if (a8 >= 3)
  {
LABEL_14:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v18 = a1;
  if (a1 || (result = sub_BFB78(), (v18 = result) != 0))
  {
    v28 = a1;
    v20 = a3;
    v21 = a6 == 0;
    v22 = swift_allocObject();
    *(v22 + 16) = v8;
    *(v22 + 24) = a2;
    *(v22 + 32) = v20;
    *(v22 + 40) = v10;
    *(v22 + 41) = v9;
    *(v22 + 48) = v18;
    *(v22 + 56) = v29;
    *(v22 + 60) = v21;
    *(v22 + 61) = 0x2010004u >> (8 * a7);
    *(v22 + 62) = a8;
    *(v22 + 63) = 2;
    v23 = *&v18[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_4BAA0;
    *(v24 + 24) = v22;
    v25 = v28;
    v26 = v8;

    v27 = v18;

    sub_1E10C0();
  }

  return result;
}

char *EventReporter.emitMarkAsFinishedEvent(using:for:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:isFinishedDateSet:)(char *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, char *a7, char *a8, char a9)
{
  v14 = *a4;
  v15 = *a5;
  v26 = *a7;
  v16 = *a8;
  v17 = a1;
  if (a1 || (result = sub_BFB78(), (v17 = result) != 0))
  {
    v19 = a3;
    v20 = swift_allocObject();
    *(v20 + 16) = v9;
    *(v20 + 24) = a2;
    *(v20 + 32) = v19;
    *(v20 + 40) = v15;
    *(v20 + 41) = v14;
    *(v20 + 48) = v17;
    *(v20 + 56) = a6;
    *(v20 + 60) = BYTE4(a6) & 1;
    *(v20 + 61) = v26;
    *(v20 + 62) = v16;
    *(v20 + 63) = a9;
    v21 = *&v17[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v22 = swift_allocObject();
    *(v22 + 16) = sub_4C750;
    *(v22 + 24) = v20;
    v23 = a1;
    v24 = v9;

    v25 = v17;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_481EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v63 = a7;
  v64 = a3;
  v17 = sub_1E1640();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v21 = sub_1E19E0();
  (*(v18 + 104))(v21, enum case for DispatchPredicate.notOnQueue(_:), v17);
  v22 = sub_1E1660();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v59 = a5;
    v60 = a6;
    v61 = a8;
    v62 = a1;
    v58 = a11;
    v57 = a10;
    v56 = a9;
    v24 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v25 = v71;
    result = v71 + 32;
    v26 = -*(v71 + 16);
    v27 = -1;
    while (1)
    {
      v28 = v26 + v27;
      if (v26 + v27 == -1)
      {
        break;
      }

      if (++v27 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v29 = result + 40;
      sub_4C2BC(result, &v71);
      v30 = *(&v72 + 1);
      v31 = v73;
      sub_48B8(&v71, *(&v72 + 1));
      v32 = (*(v31 + 8))(a2, v64, a4, v30, v31);
      sub_4E48(&v71);
      result = v29;
      if (v32)
      {

        v33 = [v32 intValue];

        goto LABEL_8;
      }
    }

    v33 = 0;
LABEL_8:
    v34 = v28 == -1;
    v35 = v64;
    v36._countAndFlagsBits = v64;
    v36._object = a4;
    v37 = BATracker.contentPrivateID(for:)(v36);
    if (v37.value._object)
    {
      countAndFlagsBits = v37.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v37.value._object)
    {
      object = v37.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v40._countAndFlagsBits = v35;
    v40._object = a4;
    v41 = BATracker.contentUserID(for:)(v40);
    v77 = BYTE4(v61) & 1;
    v80 = v34;
    if (v41.value._object)
    {
      v42 = v41.value._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    if (v41.value._object)
    {
      v43 = v41.value._object;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    *&v71 = v35;
    *(&v71 + 1) = a4;
    LOBYTE(v72) = v59;
    *(&v72 + 1) = *v81;
    DWORD1(v72) = *&v81[3];
    *(&v72 + 1) = countAndFlagsBits;
    *&v73 = object;
    *(&v73 + 1) = v42;
    *&v74 = v43;
    BYTE8(v74) = v60;
    BYTE9(v74) = 4;
    HIDWORD(v74) = v33;
    LOBYTE(v75) = v34;
    *(&v75 + 1) = v78;
    BYTE3(v75) = v79;
    DWORD1(v75) = v61;
    BYTE8(v75) = v77;
    BYTE9(v75) = v56;
    BYTE10(v75) = v57;
    *(&v75 + 11) = 515;
    BYTE13(v75) = 2;
    v76 = 0uLL;
    if (v58 == 2)
    {
      v49 = enum case for DataEventTrait.onlyOnce(_:);
    }

    else
    {
      LOBYTE(v65) = v58;
      sub_3D68(&qword_2828D0, &unk_1FD120);
      v44 = sub_1E0CB0();
      v45 = *(v44 - 8);
      v46 = *(v45 + 72);
      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1E9970;
      v49 = enum case for DataEventTrait.onlyOnce(_:);
      (*(v45 + 104))(v48 + v47, enum case for DataEventTrait.onlyOnce(_:), v44);
      sub_4C478();

      sub_1E0C00();
    }

    v67 = v73;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v65 = v71;
    v66 = v72;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v50 = sub_1E0CB0();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1E9970;
    (*(v51 + 104))(v54 + v53, v49, v50);
    sub_4C164();
    sub_1E0C00();

    sub_14424(&v71);
    type metadata accessor for MarkAsFinishedEvent(0);
    sub_4C5C8(&qword_27FF00, type metadata accessor for MarkAsFinishedEvent);
    v65 = 0u;
    v66 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v65);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *EventReporter.emitMarkAsFinishedEvent(using:with:markedData:)(char *a1, _OWORD *a2, char *a3)
{
  v5 = a2[3];
  v19[2] = a2[2];
  v19[3] = v5;
  v6 = a2[5];
  v19[4] = a2[4];
  v19[5] = v6;
  v7 = a2[1];
  v19[0] = *a2;
  v19[1] = v7;
  v8 = a1;
  v9 = *a3;
  if (a1 || (result = sub_BFB78(), (v8 = result) != 0))
  {
    v11 = swift_allocObject();
    v12 = a2[3];
    *(v11 + 56) = a2[2];
    *(v11 + 72) = v12;
    v13 = a2[5];
    *(v11 + 88) = a2[4];
    *(v11 + 104) = v13;
    v14 = a2[1];
    *(v11 + 24) = *a2;
    *(v11 + 16) = v9;
    *(v11 + 40) = v14;
    v15 = *&v8[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v16 = swift_allocObject();
    *(v16 + 16) = sub_4BC50;
    *(v16 + 24) = v11;
    v17 = a1;
    sub_13A5C(v19, &v18);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_48A14(uint64_t a1, char a2, __int128 *a3)
{
  if (a2 == 3)
  {
    v4 = enum case for DataEventTrait.onlyOnce(_:);
  }

  else
  {
    LOBYTE(v19) = a2;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v5 = sub_1E0CB0();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E9970;
    v4 = enum case for DataEventTrait.onlyOnce(_:);
    (*(v6 + 104))(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
    sub_4C478();
    sub_1E0C00();
  }

  v10 = a3[3];
  v21 = a3[2];
  v22 = v10;
  v11 = a3[5];
  v23 = a3[4];
  v24 = v11;
  v12 = a3[1];
  v19 = *a3;
  v20 = v12;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v13 = sub_1E0CB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E9970;
  (*(v14 + 104))(v17 + v16, v4, v13);
  sub_4C164();
  sub_1E0C00();

  type metadata accessor for MarkAsFinishedEvent(0);
  sub_4C5C8(&qword_27FF00, type metadata accessor for MarkAsFinishedEvent);
  v19 = 0u;
  v20 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v19);
}

char *sub_48D5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, id a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a6 >= 3)
  {
    goto LABEL_14;
  }

  v15 = a7;
  if (a7 >= 7)
  {
    goto LABEL_14;
  }

  v30 = a6;
  if (a8)
  {
    v20 = [a8 intValue];
    if (a9 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0;
    if (a9 >= 4)
    {
      goto LABEL_14;
    }
  }

  v33 = a3;
  if (a10 >= 3)
  {
LABEL_14:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v21 = a1;
  if (a1 || (result = sub_BFB78(), (v21 = result) != 0))
  {
    v23 = a8 == 0;
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    *(v24 + 24) = a4;
    *(v24 + 32) = a5;
    *(v24 + 40) = v15;
    *(v24 + 41) = v30;
    *(v24 + 48) = v21;
    *(v24 + 56) = v20;
    *(v24 + 60) = v23;
    *(v24 + 61) = 0x2010004u >> (8 * a9);
    *(v24 + 62) = a10;
    *(v24 + 64) = a2;
    *(v24 + 72) = v33;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
    v25 = *&v21[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v26 = swift_allocObject();
    *(v26 + 16) = a13;
    *(v26 + 24) = v24;
    v27 = a1;

    v28 = v14;

    v29 = v21;

    sub_1E10C0();
  }

  return result;
}

char *sub_49000(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, char *a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *a6;
  v18 = *a7;
  v27 = *a10;
  v28 = *a9;
  v19 = a1;
  if (a1 || (result = sub_BFB78(), (v19 = result) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v31;
    *(v21 + 24) = a4;
    *(v21 + 32) = a5;
    *(v21 + 40) = v18;
    *(v21 + 41) = v17;
    *(v21 + 48) = v19;
    *(v21 + 56) = a8;
    *(v21 + 60) = BYTE4(a8) & 1;
    *(v21 + 61) = v28;
    *(v21 + 62) = v27;
    *(v21 + 64) = a2;
    *(v21 + 72) = a3;
    *(v21 + 80) = 0;
    *(v21 + 88) = 0;
    v22 = *&v19[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v23 = swift_allocObject();
    *(v23 + 16) = a13;
    *(v23 + 24) = v21;
    v24 = a1;

    v25 = v31;

    v26 = v19;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_491C8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void (*a11)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = sub_1E1780();
  v19 = v18;
  v20 = a3;
  v21 = a8;
  v22 = a1;
  a11(a3, v14, v16, v17, v19, a6, a7, a8, a9, a10);
}

uint64_t sub_492C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, __int128 a11, __int128 a12)
{
  v60 = a7;
  v61 = a4;
  v18 = sub_1E1640();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v22 = sub_1E19E0();
  (*(v19 + 104))(v22, enum case for DispatchPredicate.notOnQueue(_:), v18);
  v23 = sub_1E1660();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v54 = a5;
    LODWORD(v55) = a6;
    *&v56 = a8;
    v59 = a1;
    v58 = a12;
    v57 = a11;
    v53 = a10;
    v52 = a9;
    v25 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v26 = v68;
    result = v68 + 32;
    v27 = -*(v68 + 16);
    v28 = -1;
    while (1)
    {
      v29 = v27 + v28;
      if (v27 + v28 == -1)
      {
        break;
      }

      if (++v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v30 = result + 40;
      sub_4C2BC(result, &v68);
      v31 = *(&v69 + 1);
      v32 = v70;
      sub_48B8(&v68, *(&v69 + 1));
      v33 = (*(v32 + 8))(a2, a3, v61, v31, v32);
      sub_4E48(&v68);
      result = v30;
      if (v33)
      {

        v34 = [v33 intValue];

        goto LABEL_8;
      }
    }

    v34 = 0;
LABEL_8:
    v35._countAndFlagsBits = a3;
    v36 = v61;
    v35._object = v61;
    v37 = BATracker.contentPrivateID(for:)(v35);
    if (v37.value._object)
    {
      countAndFlagsBits = v37.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v37.value._object)
    {
      object = v37.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v40._countAndFlagsBits = a3;
    v40._object = v36;
    v41 = BATracker.contentUserID(for:)(v40);
    v74 = BYTE4(v56) & 1;
    v77 = v29 == -1;
    if (v41.value._object)
    {
      v42 = v41.value._countAndFlagsBits;
    }

    else
    {
      v42 = 0;
    }

    if (v41.value._object)
    {
      v43 = v41.value._object;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    *&v68 = a3;
    *(&v68 + 1) = v36;
    LOBYTE(v69) = v54;
    *(&v69 + 1) = *v78;
    DWORD1(v69) = *&v78[3];
    *(&v69 + 1) = countAndFlagsBits;
    *&v70 = object;
    *(&v70 + 1) = v42;
    *&v71 = v43;
    BYTE8(v71) = v55;
    BYTE9(v71) = 4;
    HIDWORD(v71) = v34;
    LOBYTE(v72) = v29 == -1;
    BYTE3(v72) = v76;
    *(&v72 + 1) = v75;
    DWORD1(v72) = v56;
    BYTE8(v72) = v74;
    BYTE9(v72) = v52;
    BYTE10(v72) = v53;
    *(&v72 + 11) = 515;
    BYTE13(v72) = 2;
    v73 = 0uLL;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v67 = 0uLL;
    v62 = v68;
    v63 = v69;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v44 = sub_1E0CB0();
    v45 = *(v44 - 8);
    v60 = *(v45 + 72);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    v56 = xmmword_1E9970;
    *(v47 + 16) = xmmword_1E9970;
    v48 = enum case for DataEventTrait.onlyOnce(_:);
    v49 = *(v45 + 104);
    v49(v47 + v46, enum case for DataEventTrait.onlyOnce(_:), v44);
    v55 = "v72@0:8@16@24q32q40@48q56q64";
    sub_4C164();

    sub_1E0C00();

    sub_14424(&v68);
    v62 = v57;
    v63 = v58;
    v50 = swift_allocObject();
    *(v50 + 16) = v56;
    v49(v50 + v46, v48, v44);
    sub_4C424();
    sub_1E0C00();

    type metadata accessor for RemoveFromCollectionEvent(0);
    sub_4C5C8(&qword_27FEF8, type metadata accessor for RemoveFromCollectionEvent);
    v62 = 0u;
    v63 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v62);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_4993C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_A3F08(v21);
  v11 = a1;
  if (a1 || (v11 = sub_BFB78()) != 0)
  {
    v12 = swift_allocObject();
    v13 = v21[3];
    *(v12 + 48) = v21[2];
    *(v12 + 64) = v13;
    v14 = v21[5];
    *(v12 + 80) = v21[4];
    *(v12 + 96) = v14;
    v15 = v21[1];
    *(v12 + 16) = v21[0];
    *(v12 + 32) = v15;
    *(v12 + 112) = a2;
    *(v12 + 120) = a3;
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    v16 = *&v11[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = v12;
    v18 = a1;

    sub_13A5C(v21, &v20);

    sub_1E10C0();
  }

  return sub_14424(v21);
}

uint64_t sub_49B04(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = a3;
  v18 = a5;
  v19 = a1;
  sub_A3F08(v21);
  sub_4BCCC(a3, v14, v16, v21, a6, a7, a8);

  v22[2] = v21[2];
  v22[3] = v21[3];
  v22[4] = v21[4];
  v22[5] = v21[5];
  v22[0] = v21[0];
  v22[1] = v21[1];
  return sub_14424(v22);
}

uint64_t sub_49BEC(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v16 = a2[2];
  v17 = v2;
  v3 = a2[5];
  v18 = a2[4];
  v19 = v3;
  v4 = a2[1];
  v14 = *a2;
  v15 = v4;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  v10 = enum case for DataEventTrait.onlyOnce(_:);
  v11 = *(v6 + 104);
  v11(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  v11(v12 + v8, v10, v5);
  sub_4C424();
  sub_1E0C00();

  type metadata accessor for RemoveFromCollectionEvent(0);
  sub_4C5C8(&qword_27FEF8, type metadata accessor for RemoveFromCollectionEvent);
  v14 = 0u;
  v15 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v14);
}

uint64_t EventReporter.emitRemoveFromWantListEvent(using:for:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = *&a1[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v10 = swift_allocObject();
  *(v10 + 16) = sub_4BE24;
  *(v10 + 24) = v8;
  v11 = a1;

  sub_1E10C0();
}

uint64_t sub_49F20(int a1, int a2, Swift::String a3, unint64_t a4)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v7 = BATracker.contentPrivateID(for:)(a3);
  v8 = v7.value._object;
  v9._countAndFlagsBits = countAndFlagsBits;
  v9._object = object;
  v10 = BATracker.contentUserID(for:)(v9);
  if (a4 >= 7)
  {
    result = sub_1E1D50();
    __break(1u);
  }

  else
  {
    if (v10.value._object)
    {
      v11 = v10.value._object;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    if (v10.value._object)
    {
      v12 = v10.value._countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (v7.value._object)
    {
      v13 = v7.value._countAndFlagsBits;
    }

    else
    {
      v8 = 0xE000000000000000;
      v13 = 0;
    }

    sub_3D68(&qword_27FED0, &qword_1E9988);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E9970;
    *(v14 + 32) = v13;
    *(v14 + 40) = v8;
    *(v14 + 48) = v12;
    *(v14 + 56) = v11;
    *(v14 + 64) = a4;
    *(v14 + 72) = countAndFlagsBits;
    *(v14 + 80) = object;
    *&v24[0] = v14;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v15 = sub_1E0CB0();
    v16 = *(v15 - 8);
    v23 = *(v16 + 72);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E9970;
    v19 = enum case for DataEventTrait.onlyOnce(_:);
    v20 = *(v16 + 104);
    v20(v18 + v17, enum case for DataEventTrait.onlyOnce(_:), v15);
    sub_4C320();

    sub_1E0C00();

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E9970;
    v20(v21 + v17, v19, v15);
    sub_4C374();
    sub_1E0C00();

    type metadata accessor for RemoveFromWantListEvent(0);
    sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent);
    memset(v24, 0, sizeof(v24));
    sub_1E0C10();
    return sub_4C1B8(v24);
  }

  return result;
}

uint64_t EventReporter.emitRemoveFromWantListEvent(using:with:)(uint64_t a1)
{
  sub_A3F08(v10);
  v2 = swift_allocObject();
  v3 = v10[3];
  v2[3] = v10[2];
  v2[4] = v3;
  v4 = v10[5];
  v2[5] = v10[4];
  v2[6] = v4;
  v5 = v10[1];
  v2[1] = v10[0];
  v2[2] = v5;
  v6 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_4BE30;
  *(v7 + 24) = v2;
  sub_13A5C(v10, &v9);

  sub_1E10C0();

  return sub_14424(v10);
}

uint64_t EventReporter.emitRemoveFromWantListEvent(using:with:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v15[2] = a2[2];
  v15[3] = v4;
  v5 = a2[5];
  v15[4] = a2[4];
  v15[5] = v5;
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = swift_allocObject();
  v8 = a2[3];
  v7[3] = a2[2];
  v7[4] = v8;
  v9 = a2[5];
  v7[5] = a2[4];
  v7[6] = v9;
  v10 = a2[1];
  v7[1] = *a2;
  v7[2] = v10;
  v11 = *(a1 + OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_4C6FC;
  *(v12 + 24) = v7;
  sub_13A5C(v15, &v14);

  sub_1E10C0();
}

uint64_t sub_4A60C(uint64_t a1, __int128 *a2)
{
  v21 = *(a2 + 24);
  v2 = *(a2 + 40);
  v3 = *(a2 + 16);
  v19 = *a2;
  v20 = v2;
  v4 = v21;
  v5 = v2;
  v6 = v19;
  sub_3D68(&qword_27FED0, &qword_1E9988);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E9970;
  *(v7 + 32) = v4;
  *(v7 + 48) = v5;
  *(v7 + 64) = v3;
  *(v7 + 72) = v6;
  v18 = v7;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v8 = sub_1E0CB0();
  v9 = *(v8 - 8);
  v16 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E9970;
  v12 = enum case for DataEventTrait.onlyOnce(_:);
  v13 = *(v9 + 104);
  v13(v11 + v10, enum case for DataEventTrait.onlyOnce(_:), v8);
  sub_4C3C8(&v21, v17);
  sub_4C3C8(&v20, v17);
  sub_4C3C8(&v19, v17);
  sub_4C320();
  sub_1E0C00();

  LOBYTE(v17[0]) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E9970;
  v13(v14 + v10, v12, v8);
  sub_4C374();
  sub_1E0C00();

  type metadata accessor for RemoveFromWantListEvent(0);
  sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent);
  memset(v17, 0, sizeof(v17));
  sub_1E0C10();
  return sub_4C1B8(v17);
}

char *EventReporter.emitRemoveFromWantToReadEvent(using:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (a1 || (result = sub_BFB78(), (v6 = result) != 0))
  {
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a2;
    v8[4] = a3;
    v9 = *&v6[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v10 = swift_allocObject();
    *(v10 + 16) = sub_4BE7C;
    *(v10 + 24) = v8;
    v11 = a1;
    v12 = v6;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_4A9DC(int a1, int a2, Swift::String a3)
{
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  v5 = BATracker.contentPrivateID(for:)(a3);
  if (v5.value._object)
  {
    v6 = v5.value._countAndFlagsBits;
  }

  else
  {
    v6 = 0;
  }

  if (v5.value._object)
  {
    v7 = v5.value._object;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  v9 = BATracker.contentUserID(for:)(v8);
  if (v9.value._object)
  {
    v10 = v9.value._countAndFlagsBits;
  }

  else
  {
    v10 = 0;
  }

  if (v9.value._object)
  {
    v11 = v9.value._object;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  sub_3D68(&qword_27FED0, &qword_1E9988);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E9970;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  *(v12 + 48) = v10;
  *(v12 + 56) = v11;
  *(v12 + 64) = 0;
  *(v12 + 72) = countAndFlagsBits;
  *(v12 + 80) = object;
  *&v22[0] = v12;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v13 = sub_1E0CB0();
  v14 = *(v13 - 8);
  v21 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E9970;
  v17 = enum case for DataEventTrait.onlyOnce(_:);
  v18 = *(v14 + 104);
  v18(v16 + v15, enum case for DataEventTrait.onlyOnce(_:), v13);
  sub_4C320();

  sub_1E0C00();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E9970;
  v18(v19 + v15, v17, v13);
  sub_4C374();
  sub_1E0C00();

  type metadata accessor for RemoveFromWantListEvent(0);
  sub_4C5C8(&qword_27FEE8, type metadata accessor for RemoveFromWantListEvent);
  memset(v22, 0, sizeof(v22));
  sub_1E0C10();
  return sub_4C1B8(v22);
}

char *EventReporter.emitWantListAddEvent(using:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, id a6, unint64_t a7, unint64_t a8)
{
  v9 = a4;
  if (a4 >= 3)
  {
    goto LABEL_14;
  }

  v10 = a5;
  if (a5 >= 7)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    v17 = [a6 intValue];
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    if (a7 >= 4)
    {
      goto LABEL_14;
    }
  }

  v29 = v17;
  if (a8 >= 3)
  {
LABEL_14:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  v18 = a1;
  if (a1 || (result = sub_BFB78(), (v18 = result) != 0))
  {
    v28 = a1;
    v20 = a3;
    v21 = a6 == 0;
    v22 = swift_allocObject();
    *(v22 + 16) = v8;
    *(v22 + 24) = a2;
    *(v22 + 32) = v20;
    *(v22 + 40) = v10;
    *(v22 + 41) = v9;
    *(v22 + 48) = v18;
    *(v22 + 56) = v29;
    *(v22 + 60) = v21;
    *(v22 + 61) = 0x2010004u >> (8 * a7);
    *(v22 + 62) = a8;
    v23 = *&v18[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_4BE90;
    *(v24 + 24) = v22;
    v25 = v28;
    v26 = v8;

    v27 = v18;

    sub_1E10C0();
  }

  return result;
}

char *EventReporter.emitWantListAddEvent(using:contentID:contentAcquisitionType:contentType:supplementalContentCount:seriesType:productionType:)(char *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6, char *a7, char *a8)
{
  v13 = *a4;
  v14 = *a5;
  v15 = *a7;
  v16 = *a8;
  v17 = a1;
  if (a1 || (result = sub_BFB78(), (v17 = result) != 0))
  {
    v19 = swift_allocObject();
    v20 = v15;
    v21 = a3;
    v22 = v19;
    *(v19 + 16) = v8;
    *(v19 + 24) = a2;
    *(v19 + 32) = v21;
    *(v19 + 40) = v14;
    *(v19 + 41) = v13;
    *(v19 + 48) = v17;
    *(v19 + 56) = a6;
    *(v19 + 60) = BYTE4(a6) & 1;
    *(v19 + 61) = v20;
    *(v19 + 62) = v16;
    v23 = *&v17[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_4C758;
    *(v24 + 24) = v22;
    v25 = a1;
    v26 = v8;

    v27 = v17;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_4B07C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(void *, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v14 = sub_1E1780();
  v16 = v15;
  v17 = a3;
  v18 = a7;
  v19 = a1;
  a10(a3, v14, v16, a5, a6, a7, a8, a9);
}

uint64_t sub_4B148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v54 = a7;
  v55 = a4;
  v16 = sub_1E1640();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4C270();
  *v20 = sub_1E19E0();
  (*(v17 + 104))(v20, enum case for DispatchPredicate.notOnQueue(_:), v16);
  v21 = sub_1E1660();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v50 = a5;
    v51 = a6;
    v52 = a8;
    v53 = a1;
    v49 = a10;
    v48 = a9;
    v23 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v24 = v62;
    result = v62 + 32;
    v25 = -*(v62 + 16);
    v26 = -1;
    while (1)
    {
      v27 = v25 + v26;
      if (v25 + v26 == -1)
      {
        break;
      }

      if (++v26 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v28 = result + 40;
      sub_4C2BC(result, &v62);
      v29 = *(&v63 + 1);
      v30 = v64;
      sub_48B8(&v62, *(&v63 + 1));
      v31 = (*(v30 + 8))(a2, a3, v55, v29, v30);
      sub_4E48(&v62);
      result = v28;
      if (v31)
      {

        v32 = [v31 intValue];

        goto LABEL_8;
      }
    }

    v32 = 0;
LABEL_8:
    v33 = a3;
    v34._countAndFlagsBits = a3;
    v35 = v55;
    v34._object = v55;
    v36 = BATracker.contentPrivateID(for:)(v34);
    if (v36.value._object)
    {
      countAndFlagsBits = v36.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v36.value._object)
    {
      object = v36.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v39._countAndFlagsBits = v33;
    v39._object = v35;
    v40 = BATracker.contentUserID(for:)(v39);
    v68 = BYTE4(v52) & 1;
    v71 = v27 == -1;
    if (v40.value._object)
    {
      v41 = v40.value._countAndFlagsBits;
    }

    else
    {
      v41 = 0;
    }

    if (v40.value._object)
    {
      v42 = v40.value._object;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    *&v62 = v33;
    *(&v62 + 1) = v35;
    LOBYTE(v63) = v50;
    *(&v63 + 1) = *v72;
    DWORD1(v63) = *&v72[3];
    *(&v63 + 1) = countAndFlagsBits;
    *&v64 = object;
    *(&v64 + 1) = v41;
    *&v65 = v42;
    BYTE8(v65) = v51;
    BYTE9(v65) = 4;
    HIDWORD(v65) = v32;
    LOBYTE(v66) = v27 == -1;
    BYTE3(v66) = v70;
    *(&v66 + 1) = v69;
    DWORD1(v66) = v52;
    BYTE8(v66) = v68;
    BYTE9(v66) = v48;
    BYTE10(v66) = v49;
    *(&v66 + 11) = 515;
    BYTE13(v66) = 2;
    v67 = 0uLL;
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v61 = 0uLL;
    v56 = v62;
    v57 = v63;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v43 = sub_1E0CB0();
    v44 = *(v43 - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1E9970;
    (*(v44 + 104))(v47 + v46, enum case for DataEventTrait.onlyOnce(_:), v43);
    sub_4C164();

    sub_1E0C00();

    sub_14424(&v62);
    type metadata accessor for WantListAddEvent(0);
    sub_4C5C8(&qword_27FEC8, type metadata accessor for WantListAddEvent);
    v56 = 0u;
    v57 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v56);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

char *EventReporter.emitWantListAddEvent(using:with:)(char *a1, _OWORD *a2)
{
  v4 = a2[3];
  v17[2] = a2[2];
  v17[3] = v4;
  v5 = a2[5];
  v17[4] = a2[4];
  v17[5] = v5;
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  v7 = a1;
  if (a1 || (result = sub_BFB78(), (v7 = result) != 0))
  {
    v9 = swift_allocObject();
    v10 = a2[3];
    v9[3] = a2[2];
    v9[4] = v10;
    v11 = a2[5];
    v9[5] = a2[4];
    v9[6] = v11;
    v12 = a2[1];
    v9[1] = *a2;
    v9[2] = v12;
    v13 = *&v7[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v14 = swift_allocObject();
    *(v14 + 16) = sub_4C054;
    *(v14 + 24) = v9;
    v15 = a1;
    sub_13A5C(v17, &v16);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_4B808(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v13 = a2[2];
  v14 = v2;
  v3 = a2[5];
  v15 = a2[4];
  v16 = v3;
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  sub_3D68(&qword_2828D0, &unk_1FD120);
  v5 = sub_1E0CB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E9970;
  (*(v6 + 104))(v9 + v8, enum case for DataEventTrait.onlyOnce(_:), v5);
  sub_4C164();
  sub_1E0C00();

  type metadata accessor for WantListAddEvent(0);
  sub_4C5C8(&qword_27FEC8, type metadata accessor for WantListAddEvent);
  v11 = 0u;
  v12 = 0u;
  sub_1E0C10();
  return sub_4C1B8(&v11);
}

uint64_t _s13BookAnalytics13EventReporterC018emitMarkAsFinishedC05using4with10markedDatayAA9BATrackerCSg_AA014BridgedContentL0CAA0n6MarkedL0CSgtF_0(char *a1, uint64_t a2, uint64_t a3)
{
  sub_A3F08(v16);
  if (!a3)
  {
    v5 = 3;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = swift_allocObject();
    v8 = v16[3];
    *(v7 + 56) = v16[2];
    *(v7 + 72) = v8;
    v9 = v16[5];
    *(v7 + 88) = v16[4];
    *(v7 + 104) = v9;
    v10 = v16[1];
    *(v7 + 24) = v16[0];
    *(v7 + 16) = v5;
    *(v7 + 40) = v10;
    v11 = *&v6[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v12 = swift_allocObject();
    *(v12 + 16) = sub_4C748;
    *(v12 + 24) = v7;
    v13 = a1;
    sub_13A5C(v16, &v15);

    sub_1E10C0();
    sub_14424(v16);
  }

  v5 = *(a3 + OBJC_IVAR___BAMarkedData_isFinishedDateSet);
  v6 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_5:
  v6 = sub_BFB78();
  if (v6)
  {
    goto LABEL_6;
  }

  return sub_14424(v16);
}

uint64_t sub_4BC74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

char *sub_4BCCC(char *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a4[3];
  v25[2] = a4[2];
  v25[3] = v12;
  v13 = a4[5];
  v25[4] = a4[4];
  v25[5] = v13;
  v14 = a4[1];
  v25[0] = *a4;
  v25[1] = v14;
  v15 = a1;
  if (a1 || (result = sub_BFB78(), (v15 = result) != 0))
  {
    v17 = swift_allocObject();
    v18 = a4[3];
    *(v17 + 48) = a4[2];
    *(v17 + 64) = v18;
    v19 = a4[5];
    *(v17 + 80) = a4[4];
    *(v17 + 96) = v19;
    v20 = a4[1];
    *(v17 + 16) = *a4;
    *(v17 + 32) = v20;
    *(v17 + 112) = a2;
    *(v17 + 120) = a3;
    *(v17 + 128) = 0;
    *(v17 + 136) = 0;
    v21 = *&v15[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v22 = swift_allocObject();
    *(v22 + 16) = a7;
    *(v22 + 24) = v17;
    v23 = a1;

    sub_13A5C(v25, &v24);

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_4BE38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4BE94(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t _s13BookAnalytics13EventReporterC015emitWantListAddC05using4withyAA9BATrackerCSg_AA18BridgedContentDataCtF_0(char *a1)
{
  sub_A3F08(v12);
  v2 = a1;
  if (!a1)
  {
    v2 = sub_BFB78();
    if (!v2)
    {
      return sub_14424(v12);
    }
  }

  v3 = swift_allocObject();
  v4 = v12[3];
  v3[3] = v12[2];
  v3[4] = v4;
  v5 = v12[5];
  v3[5] = v12[4];
  v3[6] = v5;
  v6 = v12[1];
  v3[1] = v12[0];
  v3[2] = v6;
  v7 = *&v2[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_4C700;
  *(v8 + 24) = v3;
  v9 = a1;
  sub_13A5C(v12, &v11);

  sub_1E10C0();
  sub_14424(v12);
}

uint64_t sub_4C064(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_4C0B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_4C0F4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4C12C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4C164()
{
  result = qword_282890;
  if (!qword_282890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_282890);
  }

  return result;
}

uint64_t sub_4C1B8(uint64_t a1)
{
  v2 = sub_3D68(&unk_281B50, &unk_1EDD70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4C220()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_4C270()
{
  result = qword_282880;
  if (!qword_282880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_282880);
  }

  return result;
}

uint64_t sub_4C2BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_4C320()
{
  result = qword_27FED8;
  if (!qword_27FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED8);
  }

  return result;
}

unint64_t sub_4C374()
{
  result = qword_27FEE0;
  if (!qword_27FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEE0);
  }

  return result;
}

unint64_t sub_4C424()
{
  result = qword_27FEF0;
  if (!qword_27FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF0);
  }

  return result;
}

unint64_t sub_4C478()
{
  result = qword_27FF08;
  if (!qword_27FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF08);
  }

  return result;
}

uint64_t sub_4C4D0()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_4C520()
{
  result = qword_27FF10;
  if (!qword_27FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF10);
  }

  return result;
}

unint64_t sub_4C574()
{
  result = qword_27FF20;
  if (!qword_27FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF20);
  }

  return result;
}

uint64_t sub_4C5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4C610()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_4C784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449726F68747561 && a2 == 0xE800000000000000)
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

uint64_t sub_4C80C(uint64_t a1)
{
  v2 = sub_4C9C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4C848(uint64_t a1)
{
  v2 = sub_4C9C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AuthorData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27FF48, &qword_1E9990);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_4C9C0();
  sub_1E1E00();
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_4C9C0()
{
  result = qword_27FF50;
  if (!qword_27FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF50);
  }

  return result;
}

uint64_t AuthorData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_27FF58, &qword_1E9998);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_4C9C0();
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

unint64_t sub_4CB8C()
{
  result = qword_27FF60;
  if (!qword_27FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF60);
  }

  return result;
}

unint64_t sub_4CBE4()
{
  result = qword_27FF68;
  if (!qword_27FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF68);
  }

  return result;
}

unint64_t sub_4CC74()
{
  result = qword_27FF70;
  if (!qword_27FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF70);
  }

  return result;
}

unint64_t sub_4CCCC()
{
  result = qword_27FF78;
  if (!qword_27FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78);
  }

  return result;
}

unint64_t sub_4CD24()
{
  result = qword_27FF80;
  if (!qword_27FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF80);
  }

  return result;
}

uint64_t PurchaseSuccessEvent.altContentTypeExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PurchaseSuccessEvent.altContentTypeExposureData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PurchaseSuccessEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 40);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 44);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 48);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 52);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent(0) + 56);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseSuccessEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseSuccessEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.required<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v6, v25);
}

uint64_t PurchaseSuccessEvent.Model.altContentTypeExposureData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_17AA4(v7, &v6, &qword_27FFE8, &qword_1FC3D0);
}

uint64_t PurchaseSuccessEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v10 = v1[6];
  v11 = v2;
  v4 = v1[9];
  v12 = v1[8];
  v3 = v12;
  v13 = v4;
  v6 = v1[5];
  v9[0] = v1[4];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t PurchaseSuccessEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v9 = *(v1 + 192);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 221);
  v3 = *(v10 + 13);
  v4 = *(v1 + 176);
  v8[0] = *(v1 + 160);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

uint64_t PurchaseSuccessEvent.Model.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v11[0] = *(v1 + 232);
  v2 = *(v1 + 248);
  v3 = *(v1 + 296);
  v5 = *(v1 + 328);
  v12 = *(v1 + 312);
  v4 = v12;
  v13[0] = v5;
  *(v13 + 14) = *(v1 + 342);
  v6 = *(v13 + 14);
  v7 = *(v1 + 264);
  v8 = *(v1 + 280);
  v11[1] = v2;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v3;
  *a1 = v11[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 110) = v6;
  return sub_17AA4(v11, v10, &qword_27FFF8, &qword_1F06D0);
}

uint64_t PurchaseSuccessEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 360);
  v3 = *(v1 + 368);
  v4 = *(v1 + 369);
  v5 = *(v1 + 376);
  v6 = *(v1 + 384);
  *a1 = *(v1 + 352);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t PurchaseSuccessEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  *a1 = *(v1 + 392);
  *(a1 + 16) = v2;
}

uint64_t PurchaseSuccessEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[52];
  v3 = v1[53];
  v4 = v1[54];
  v5 = v1[55];
  v6 = v1[56];
  v7 = v1[57];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PurchaseSuccessEvent.Model.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 472);
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = *(v1 + 496);
  v6 = *(v1 + 504);
  v7 = *(v1 + 512);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 520);
  return sub_4E2A0(v2, v3);
}

uint64_t sub_4E2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PurchaseSuccessEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseSuccessEvent.Model(0) + 56);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseSuccessEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v13 = *a5;
  v14 = *a6;
  v15 = a6[1];
  v16 = *(a6 + 16);
  v17 = *(a6 + 17);
  v18 = a6[3];
  v19 = a6[4];
  v20 = *(a7 + 16);
  v21 = *a10;
  v22 = *(a11 + 48);
  v23 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v23;
  *(a9 + 32) = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v24 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v24;
  v25 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v25;
  v26 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v26;
  *(a9 + 221) = *(a3 + 61);
  v27 = *(a3 + 48);
  *(a9 + 192) = *(a3 + 32);
  *(a9 + 208) = v27;
  v28 = *(a3 + 16);
  *(a9 + 160) = *a3;
  *(a9 + 176) = v28;
  v29 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v29;
  v30 = *a4;
  *(a9 + 248) = a4[1];
  *(a9 + 232) = v30;
  *(a9 + 342) = *(a4 + 110);
  v31 = a4[6];
  *(a9 + 312) = a4[5];
  *(a9 + 328) = v31;
  *(a9 + 296) = a4[4];
  *(a9 + 350) = v13;
  *(a9 + 352) = v14;
  *(a9 + 360) = v15;
  *(a9 + 368) = v16;
  *(a9 + 369) = v17;
  *(a9 + 376) = v18;
  *(a9 + 384) = v19;
  *(a9 + 392) = *a7;
  *(a9 + 408) = v20;
  v32 = a8[1];
  *(a9 + 416) = *a8;
  *(a9 + 432) = v32;
  *(a9 + 448) = a8[2];
  *(a9 + 464) = v21;
  v33 = *(a11 + 16);
  *(a9 + 472) = *a11;
  *(a9 + 488) = v33;
  *(a9 + 504) = *(a11 + 32);
  *(a9 + 520) = v22;
  v34 = *(type metadata accessor for PurchaseSuccessEvent.Model(0) + 56);
  v35 = sub_1E1150();
  v36 = *(*(v35 - 8) + 32);

  return v36(a9 + v34, a12, v35);
}

unint64_t sub_4E4F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E65746E6F63;
    v7 = 0xD000000000000013;
    if (a1 != 3)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000010;
    }

    if (!a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
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
    v1 = 0x6974736567677573;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x746144746E657665;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6573616863727570;
    v4 = 0x61446C6C65537075;
    if (a1 != 6)
    {
      v4 = 0x6144736569726573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_4E698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5123C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_4E6C0(uint64_t a1)
{
  v2 = sub_4EF74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4E6FC(uint64_t a1)
{
  v2 = sub_4EF74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseSuccessEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_280000, &qword_1E9C10);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v49 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_4EF74();
  sub_1E1E00();
  v11 = v3[1];
  v103[0] = *v3;
  v103[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v104[0] = v3[2];
  *(v104 + 9) = *(v3 + 41);
  v100 = v13;
  v101 = v12;
  v102[0] = v3[2];
  *(v102 + 9) = *(v3 + 41);
  v99 = 0;
  sub_17AA4(v103, &v70, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v70 = v100;
    v71 = v101;
    v72[0] = v102[0];
    *(v72 + 9) = *(v102 + 9);
    sub_18E48(&v70, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v92[0] = v100;
    v92[1] = v101;
    v93[0] = v102[0];
    *(v93 + 9) = *(v102 + 9);
    sub_18E48(v92, &qword_27FFE8, &qword_1FC3D0);
    v15 = v3[7];
    v16 = v3[5];
    v95 = v3[6];
    v96 = v15;
    v17 = v3[7];
    v18 = v3[9];
    v97 = v3[8];
    v98 = v18;
    v19 = v3[5];
    v94[0] = v3[4];
    v94[1] = v19;
    v88 = v95;
    v89 = v17;
    v20 = v3[9];
    v90 = v97;
    v91 = v20;
    v86 = v94[0];
    v87 = v16;
    v85 = 1;
    sub_13A5C(v94, &v70);
    sub_143D0();
    sub_1E1CF0();
    v81[2] = v88;
    v81[3] = v89;
    v81[4] = v90;
    v81[5] = v91;
    v81[0] = v86;
    v81[1] = v87;
    sub_14424(v81);
    v21 = v3[11];
    v22 = v3[13];
    v83 = v3[12];
    *v84 = v22;
    v23 = v3[11];
    v82[0] = v3[10];
    v82[1] = v23;
    v24 = v3[13];
    v79 = v83;
    v80[0] = v24;
    *&v84[13] = *(v3 + 221);
    *(v80 + 13) = *(v3 + 221);
    v77 = v82[0];
    v78 = v21;
    v76 = 2;
    sub_17AA4(v82, &v70, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v105 = v5;
    sub_1E1C80();
    v68[2] = v79;
    v69[0] = v80[0];
    *(v69 + 13) = *(v80 + 13);
    v68[0] = v77;
    v68[1] = v78;
    sub_18E48(v68, &qword_27FFF0, &unk_1E9C00);
    v25 = *(v3 + 312);
    v26 = *(v3 + 280);
    v73 = *(v3 + 296);
    v74 = v25;
    v27 = *(v3 + 312);
    *v75 = *(v3 + 328);
    v28 = *(v3 + 248);
    v70 = *(v3 + 232);
    v71 = v28;
    v29 = *(v3 + 280);
    v72[0] = *(v3 + 264);
    v72[1] = v29;
    v65 = v73;
    v66 = v27;
    v67[0] = *(v3 + 328);
    v30 = *(v3 + 248);
    v61 = *(v3 + 232);
    v62 = v30;
    *&v75[14] = *(v3 + 342);
    *(v67 + 14) = *(v3 + 342);
    v63 = v72[0];
    v64 = v26;
    v60 = 3;
    sub_17AA4(&v70, v58, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v58[4] = v65;
    v58[5] = v66;
    *v59 = v67[0];
    *&v59[14] = *(v67 + 14);
    v58[0] = v61;
    v58[1] = v62;
    v58[2] = v63;
    v58[3] = v64;
    sub_18E48(v58, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v51) = *(v3 + 175);
    v57 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v31 = *(v3 + 45);
    v32 = *(v3 + 368);
    v33 = *(v3 + 369);
    v34 = *(v3 + 47);
    v35 = *(v3 + 48);
    *&v51 = *(v3 + 44);
    *(&v51 + 1) = v31;
    LOBYTE(v52) = v32;
    BYTE1(v52) = v33;
    v53 = v34;
    v54 = v35;
    v57 = 5;
    sub_2C904();

    v50 = v9;
    sub_1E1CF0();

    v36 = *(v3 + 51);
    v51 = *(v3 + 392);
    v52 = v36;
    v57 = 6;
    sub_28450();

    sub_1E1C80();

    v37 = *(v3 + 53);
    v38 = *(v3 + 54);
    v39 = *(v3 + 55);
    v40 = *(v3 + 56);
    v41 = *(v3 + 57);
    *&v51 = *(v3 + 52);
    *(&v51 + 1) = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v55 = v41;
    v57 = 7;
    sub_13BDC(v51, v37, v38, v39, v40, v41);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v51, *(&v51 + 1), v52, v53, v54, v55);
    LOBYTE(v51) = *(v3 + 464);
    v57 = 8;
    sub_284F8();
    sub_1E1C80();
    v42 = *(v3 + 60);
    v43 = *(v3 + 61);
    v44 = *(v3 + 62);
    v45 = *(v3 + 63);
    v46 = *(v3 + 64);
    v47 = *(v3 + 520);
    *&v51 = *(v3 + 59);
    *(&v51 + 1) = v42;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = 9;
    sub_4E2A0(v51, v42);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v51, *(&v51 + 1));
    v48 = *(type metadata accessor for PurchaseSuccessEvent.Model(0) + 56);
    LOBYTE(v51) = 10;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v6 + 8))(v50, v105);
  }
}

unint64_t sub_4EF74()
{
  result = qword_280008;
  if (!qword_280008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280008);
  }

  return result;
}

unint64_t sub_4EFC8()
{
  result = qword_280010;
  if (!qword_280010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280010);
  }

  return result;
}

unint64_t sub_4F01C()
{
  result = qword_280018;
  if (!qword_280018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280018);
  }

  return result;
}

unint64_t sub_4F070()
{
  result = qword_280020;
  if (!qword_280020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280020);
  }

  return result;
}

unint64_t sub_4F0C4()
{
  result = qword_280028;
  if (!qword_280028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280028);
  }

  return result;
}

unint64_t sub_4F118()
{
  result = qword_280030;
  if (!qword_280030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030);
  }

  return result;
}

uint64_t sub_4F16C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PurchaseSuccessEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1E1150();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin();
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_280038, &qword_1E9C18);
  v44 = *(v46 - 8);
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v39 - v8;
  v10 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v71 = a1;
  sub_48B8(a1, v14);
  sub_4EF74();
  v45 = v9;
  v16 = v47;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v71);
  }

  v40 = v6;
  v41 = v3;
  v47 = v13;
  v17 = v44;
  v66 = 0;
  sub_4FB10();
  sub_1E1BB0();
  v18 = v68;
  v19 = v47;
  *v47 = v67;
  *(v19 + 1) = v18;
  *(v19 + 2) = v69[0];
  *(v19 + 41) = *(v69 + 9);
  v59 = 1;
  sub_14CB8();
  sub_1E1C20();
  v20 = v63;
  *(v19 + 6) = v62;
  *(v19 + 7) = v20;
  v21 = v65;
  *(v19 + 8) = v64;
  *(v19 + 9) = v21;
  v22 = v61;
  *(v19 + 4) = v60;
  *(v19 + 5) = v22;
  v54 = 2;
  sub_4FB64();
  v39[1] = 0;
  sub_1E1BB0();
  v23 = *v58;
  *(v19 + 12) = v57;
  *(v19 + 13) = v23;
  *(v19 + 221) = *&v58[13];
  v24 = v56;
  *(v19 + 10) = v55;
  *(v19 + 11) = v24;
  v53 = 3;
  sub_4FBB8();
  sub_1E1BB0();
  v25 = v69[3];
  *(v19 + 232) = v69[2];
  *(v19 + 248) = v25;
  v26 = v69[7];
  *(v19 + 296) = v69[6];
  *(v19 + 312) = v26;
  *(v19 + 328) = v70[0];
  *(v19 + 342) = *(v70 + 14);
  v27 = v69[5];
  *(v19 + 264) = v69[4];
  *(v19 + 280) = v27;
  v52 = 4;
  sub_4FC0C();
  sub_1E1BB0();
  *(v19 + 175) = v48;
  v52 = 5;
  sub_2C8AC();
  sub_1E1C20();
  v28 = *(&v48 + 1);
  v29 = v49;
  v30 = BYTE1(v49);
  v31 = *(&v49 + 1);
  v32 = v50;
  *(v19 + 44) = v48;
  *(v19 + 45) = v28;
  v19[368] = v29;
  v19[369] = v30;
  *(v19 + 47) = v31;
  *(v19 + 48) = v32;
  v52 = 6;
  sub_28EF4();
  sub_1E1BB0();
  v33 = v49;
  *(v19 + 392) = v48;
  *(v19 + 51) = v33;
  v52 = 7;
  sub_DAD8();
  sub_1E1BB0();
  v34 = v49;
  *(v19 + 26) = v48;
  *(v19 + 27) = v34;
  *(v19 + 28) = v50;
  v52 = 8;
  sub_28F9C();
  sub_1E1BB0();
  v19[464] = v48;
  v52 = 9;
  sub_4FC60();
  sub_1E1BB0();
  v35 = v51;
  v36 = v49;
  *(v19 + 472) = v48;
  *(v19 + 488) = v36;
  *(v19 + 504) = v50;
  v47[520] = v35;
  LOBYTE(v48) = 10;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v45, v46);
  v37 = v47;
  (*(v42 + 32))(&v47[*(v10 + 56)], v40, v41);
  sub_4FCB4(v37, v43);
  sub_4E48(v71);
  return sub_4FD18(v37);
}

unint64_t sub_4FB10()
{
  result = qword_280040;
  if (!qword_280040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280040);
  }

  return result;
}

unint64_t sub_4FB64()
{
  result = qword_280048;
  if (!qword_280048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280048);
  }

  return result;
}

unint64_t sub_4FBB8()
{
  result = qword_280050;
  if (!qword_280050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280050);
  }

  return result;
}

unint64_t sub_4FC0C()
{
  result = qword_280058;
  if (!qword_280058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058);
  }

  return result;
}

unint64_t sub_4FC60()
{
  result = qword_280060;
  if (!qword_280060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280060);
  }

  return result;
}

uint64_t sub_4FCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FD18(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseSuccessEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4FE14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.required<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  v16 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v7, v26);
}

uint64_t sub_501C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[14];

  return v24(v25, a2, v23);
}

uint64_t sub_505D8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v22 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v23 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v25 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[14];

  return v26(v27, a2, a2, v25);
}

void sub_509E8()
{
  sub_50D74(319, &qword_2800D0, sub_4FB10, sub_4EFC8);
  if (v0 <= 0x3F)
  {
    sub_50D74(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_50D74(319, &qword_2800D8, sub_4FB64, sub_4F01C);
      if (v2 <= 0x3F)
      {
        sub_50D74(319, &qword_2800E0, sub_4FBB8, sub_4F070);
        if (v3 <= 0x3F)
        {
          sub_50D74(319, &qword_2800E8, sub_4FC0C, sub_4F0C4);
          if (v4 <= 0x3F)
          {
            sub_50D74(319, &qword_2800F0, sub_2C8AC, sub_2C904);
            if (v5 <= 0x3F)
            {
              sub_50D74(319, &qword_27EAE8, sub_28EF4, sub_28450);
              if (v6 <= 0x3F)
              {
                sub_50D74(319, &qword_27DE18, sub_DAD8, sub_D57C);
                if (v7 <= 0x3F)
                {
                  sub_50D74(319, &unk_27EAF8, sub_28F9C, sub_284F8);
                  if (v8 <= 0x3F)
                  {
                    sub_50D74(319, &unk_2800F8, sub_4FC60, sub_4F118);
                    if (v9 <= 0x3F)
                    {
                      sub_5684();
                      if (v10 <= 0x3F)
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

void sub_50D74(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_50E04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_50EC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_50F68()
{
  sub_19FE0(319, &qword_2801B8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C0);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_2801C8);
      if (v2 <= 0x3F)
      {
        sub_19FE0(319, &qword_2801D0);
        if (v3 <= 0x3F)
        {
          sub_19FE0(319, &qword_27EBC8);
          if (v4 <= 0x3F)
          {
            sub_19FE0(319, &qword_27E398);
            if (v5 <= 0x3F)
            {
              sub_19FE0(319, &qword_27EBD8);
              if (v6 <= 0x3F)
              {
                sub_19FE0(319, &unk_2801D8);
                if (v7 <= 0x3F)
                {
                  sub_1E1150();
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

unint64_t sub_51138()
{
  result = qword_280230;
  if (!qword_280230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280230);
  }

  return result;
}

unint64_t sub_51190()
{
  result = qword_280238;
  if (!qword_280238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280238);
  }

  return result;
}

unint64_t sub_511E8()
{
  result = qword_280240;
  if (!qword_280240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280240);
  }

  return result;
}

uint64_t sub_5123C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000000213F10 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000213F30 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213F50 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000213F70 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 10;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t GenreData.contentType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GenreData.contentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClickData.outBoundURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ClickData.outBoundURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ContentExposureData.cellSize.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ContentExposureData.cellSize.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ContentExposureData.positionInSubSection.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentExposureData.subSectionID.setter(uint64_t result)
{
  *(v1 + 88) = result;
  *(v1 + 92) = BYTE4(result) & 1;
  return result;
}

uint64_t ContentExposureData.subSectionName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t ContentExposureData.subSectionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ContentExposureData.subSectionPosition.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ContentExposureData.init(sectionType:sectionID:sectionName:positionInSection:cellSize:positionInSubSection:subSectionID:subSectionName:subSectionPosition:hasLanguageTag:)(BookAnalytics::ContentExposureData *__return_ptr retstr, Swift::String sectionType, Swift::String sectionID, Swift::String sectionName, Swift::String positionInSection, Swift::String cellSize, Swift::Int32_optional positionInSubSection, Swift::Int32_optional subSectionID, Swift::String_optional subSectionName, Swift::Int32_optional subSectionPosition, Swift::Bool_optional hasLanguageTag)
{
  retstr->sectionType = sectionType;
  retstr->sectionID = sectionID;
  retstr->sectionName = sectionName;
  retstr->positionInSection = positionInSection;
  retstr->cellSize = cellSize;
  retstr->positionInSubSection.value = positionInSubSection.value;
  retstr->positionInSubSection.is_nil = positionInSubSection.is_nil;
  *(&retstr->subSectionID.value + 3) = subSectionID.value;
  *(&retstr->subSectionID + 7) = subSectionID.is_nil;
  retstr->subSectionName = subSectionName;
  retstr->subSectionPosition.value = subSectionPosition.value;
  retstr->subSectionPosition.is_nil = subSectionPosition.is_nil;
  retstr->hasLanguageTag = hasLanguageTag;
}

unint64_t sub_51900(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6974636553627573;
    v6 = 0x75676E614C736168;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x6974636553627573;
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
    v1 = 0x546E6F6974636573;
    v2 = 0x4E6E6F6974636573;
    v3 = 0xD000000000000011;
    if (a1 != 3)
    {
      v3 = 0x657A69536C6C6563;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x496E6F6974636573;
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

uint64_t sub_51A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_529B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_51AA0(uint64_t a1)
{
  v2 = sub_526F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_51ADC(uint64_t a1)
{
  v2 = sub_526F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ContentExposureData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280248, &qword_1E9E90);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v33 = v1[3];
  v34 = v10;
  v11 = v1[4];
  v31 = v1[5];
  v32 = v11;
  v12 = v1[6];
  v29 = v1[7];
  v30 = v12;
  v13 = v1[8];
  v27 = v1[9];
  v28 = v13;
  v26 = *(v1 + 20);
  v25 = *(v1 + 84);
  v24 = *(v1 + 22);
  v23 = *(v1 + 92);
  v14 = v1[13];
  v21 = v1[12];
  v22 = v14;
  v20 = *(v1 + 28);
  LODWORD(v13) = *(v1 + 116);
  v18[2] = *(v1 + 117);
  v19 = v13;
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_526F4();
  sub_1E1E00();
  v48 = 0;
  v16 = v35;
  sub_1E1CB0();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v47 = 1;
  sub_1E1CB0();
  v46 = 2;
  sub_1E1CB0();
  v45 = 3;
  sub_1E1CB0();
  v44 = 4;
  sub_1E1CB0();
  v43 = 5;
  v41 = v25;
  sub_1E1C90();
  v42 = 6;
  v40 = v23;
  sub_1E1C90();
  v39 = 7;
  sub_1E1C50();
  v38 = 8;
  v37 = v19;
  sub_1E1C90();
  v36 = 9;
  sub_1E1C60();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ContentExposureData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = sub_3D68(&qword_280258, &qword_1E9E98);
  v5 = *(v47 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_526F4();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
  }

  else
  {
    v10 = v5;
    LOBYTE(v55[0]) = 0;
    v44 = sub_1E1BE0();
    v46 = v11;
    LOBYTE(v55[0]) = 1;
    v12 = sub_1E1BE0();
    v45 = v13;
    v40 = v12;
    LOBYTE(v55[0]) = 2;
    v39 = sub_1E1BE0();
    v43 = v14;
    LOBYTE(v55[0]) = 3;
    v38 = sub_1E1BE0();
    v42 = v15;
    LOBYTE(v55[0]) = 4;
    v37 = sub_1E1BE0();
    v41 = v16;
    LOBYTE(v55[0]) = 5;
    v17 = sub_1E1BC0();
    v67 = BYTE4(v17) & 1;
    LOBYTE(v55[0]) = 6;
    v18 = v17;
    v19 = sub_1E1BC0();
    v35 = v18;
    v36 = v19;
    v66 = BYTE4(v19) & 1;
    LOBYTE(v55[0]) = 7;
    v34 = sub_1E1B80();
    v21 = v20;
    LOBYTE(v55[0]) = 8;
    v33 = sub_1E1BC0();
    v65 = BYTE4(v33) & 1;
    v68 = 9;
    v22 = sub_1E1B90();
    (*(v10 + 8))(v8, v47);
    *&v48 = v44;
    *(&v48 + 1) = v46;
    *&v49 = v40;
    *(&v49 + 1) = v45;
    *&v50 = v39;
    *(&v50 + 1) = v43;
    *&v51 = v38;
    *(&v51 + 1) = v42;
    *&v52 = v37;
    *(&v52 + 1) = v41;
    v23 = v34;
    LODWORD(v53) = v35;
    LODWORD(v47) = v67;
    BYTE4(v53) = v67;
    DWORD2(v53) = v36;
    HIDWORD(v32) = v66;
    BYTE12(v53) = v66;
    *v54 = v34;
    *&v54[8] = v21;
    v24 = v33;
    *&v54[16] = v33;
    LOBYTE(v10) = v65;
    v54[20] = v65;
    v54[21] = v22;
    v25 = v48;
    v26 = v49;
    v27 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v27;
    *a2 = v25;
    *(a2 + 16) = v26;
    v28 = v52;
    v29 = v53;
    v30 = *v54;
    *(a2 + 110) = *&v54[14];
    *(a2 + 80) = v29;
    *(a2 + 96) = v30;
    *(a2 + 64) = v28;
    sub_52748(&v48, v55);
    sub_4E48(a1);
    v55[0] = v44;
    v55[1] = v46;
    v55[2] = v40;
    v55[3] = v45;
    v55[4] = v39;
    v55[5] = v43;
    v55[6] = v38;
    v55[7] = v42;
    v55[8] = v37;
    v55[9] = v41;
    v56 = v35;
    v57 = v47;
    v58 = v36;
    v59 = BYTE4(v32);
    v60 = v23;
    v61 = v21;
    v62 = v24;
    v63 = v10;
    v64 = v22;
    return sub_52780(v55);
  }
}

uint64_t _s13BookAnalytics19ContentExposureDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v39 = *(a1 + 56);
  v40 = *(a1 + 48);
  v38 = *(a1 + 64);
  v37 = *(a1 + 72);
  v34 = *(a1 + 84);
  v26 = *(a1 + 88);
  v31 = *(a1 + 80);
  v32 = *(a1 + 92);
  v21 = *(a1 + 96);
  v28 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 117);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v35 = *(a2 + 72);
  v36 = *(a2 + 64);
  v33 = *(a2 + 84);
  v24 = *(a1 + 116);
  v25 = *(a2 + 88);
  v29 = *(a2 + 80);
  v30 = *(a2 + 92);
  v20 = *(a2 + 96);
  v27 = *(a2 + 104);
  v17 = *(a2 + 112);
  v22 = *(a2 + 116);
  v23 = *(a2 + 117);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_1E1D30() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_1E1D30() & 1) == 0 || (v40 != v10 || v39 != v11) && (sub_1E1D30() & 1) == 0 || (v38 != v36 || v37 != v35) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v34)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    v12 = v33;
    if (v31 != v29)
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v32)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    v13 = v30;
    if (v26 != v25)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v28)
  {
    if (!v27 || (v21 != v20 || v28 != v27) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    if (v24)
    {
      v14 = v23;
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      v15 = v22;
      v14 = v23;
      if (v18 != v17)
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    if (v19 == 2)
    {
      if (v14 != 2)
      {
        return 0;
      }
    }

    else if (v14 == 2 || ((v14 ^ v19) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v27)
  {
    goto LABEL_35;
  }

  return 0;
}

unint64_t sub_526F4()
{
  result = qword_280250;
  if (!qword_280250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280250);
  }

  return result;
}

__n128 sub_527B8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_527E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 118))
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

uint64_t sub_5282C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 118) = 1;
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

    *(result + 118) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_528B4()
{
  result = qword_280260;
  if (!qword_280260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280260);
  }

  return result;
}

unint64_t sub_5290C()
{
  result = qword_280268;
  if (!qword_280268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280268);
  }

  return result;
}

unint64_t sub_52964()
{
  result = qword_280270;
  if (!qword_280270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280270);
  }

  return result;
}

uint64_t sub_529B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E6E6F6974636573 && a2 == 0xEB00000000656D61 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002139D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657A69536C6C6563 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213FB0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEC00000044496E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974636553627573 && a2 == 0xEE00656D614E6E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000213FD0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x75676E614C736168 && a2 == 0xEE00676154656761)
  {

    return 9;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_52D10()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280278);
  sub_3B2C(v0, qword_280278);
  return sub_1E1350();
}

uint64_t sub_52DB4()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280290);
  sub_3B2C(v0, qword_280290);
  return sub_1E1350();
}

uint64_t sub_52E58()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802A8);
  sub_3B2C(v0, qword_2802A8);
  return sub_1E1350();
}

uint64_t sub_52EFC()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802C0);
  sub_3B2C(v0, qword_2802C0);
  return sub_1E1350();
}

uint64_t sub_52FA0()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802D8);
  sub_3B2C(v0, qword_2802D8);
  return sub_1E1350();
}

uint64_t sub_53048()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_2802F0);
  sub_3B2C(v0, qword_2802F0);
  return sub_1E1350();
}

uint64_t sub_530EC()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280308);
  sub_3B2C(v0, qword_280308);
  return sub_1E1350();
}

uint64_t sub_53194()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280320);
  sub_3B2C(v0, qword_280320);
  return sub_1E1350();
}

uint64_t sub_53238()
{
  v0 = sub_1E1360();
  sub_5F94(v0, qword_280338);
  sub_3B2C(v0, qword_280338);
  return sub_1E1350();
}

uint64_t sub_532E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1360();
  v6 = sub_3B2C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ListeningSessionData.startTime.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

BookAnalytics::BitRateData __swiftcall BitRateData.init(prevBitRate:bitRate:)(Swift::Int32_optional prevBitRate, Swift::Int32 bitRate)
{
  *v2 = prevBitRate.value;
  *(v2 + 4) = prevBitRate.is_nil;
  *(v2 + 8) = bitRate;
  result.prevBitRate = prevBitRate;
  result.bitRate = bitRate;
  return result;
}

BOOL static BitRateData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
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
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 8) == *(a2 + 8);
}

uint64_t sub_53414()
{
  if (*v0)
  {
    result = 0x65746152746962;
  }

  else
  {
    result = 0x5274694276657270;
  }

  *v0;
  return result;
}

uint64_t sub_53458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5274694276657270 && a2 == 0xEB00000000657461;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746152746962 && a2 == 0xE700000000000000)
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

uint64_t sub_53538(uint64_t a1)
{
  v2 = sub_5374C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_53574(uint64_t a1)
{
  v2 = sub_5374C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BitRateData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_280350, &qword_1EA108);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v14 = v1[2];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5374C();
  sub_1E1E00();
  v17 = 0;
  v15 = v9;
  v11 = v13[1];
  sub_1E1C90();
  if (!v11)
  {
    v16 = 1;
    sub_1E1D00();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_5374C()
{
  result = qword_280358;
  if (!qword_280358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280358);
  }

  return result;
}

uint64_t BitRateData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_280360, &qword_1EA110);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_5374C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1BC0();
    v15 = 1;
    v12 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 4) = BYTE4(v11) & 1;
    *(a2 + 8) = v12;
  }

  return sub_4E48(a1);
}

uint64_t initializeBufferWithCopyOfBuffer for BitRateData(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BitRateData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BitRateData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_53A08()
{
  result = qword_280368;
  if (!qword_280368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280368);
  }

  return result;
}

unint64_t sub_53A60()
{
  result = qword_280370;
  if (!qword_280370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370);
  }

  return result;
}

unint64_t sub_53AB8()
{
  result = qword_280378;
  if (!qword_280378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280378);
  }

  return result;
}

BookAnalytics::RecoType_optional __swiftcall RecoType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F888;
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

uint64_t RecoType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6F724665726F6DLL;
  v4 = 0x48676E6964616572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65536E497478656ELL;
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

unint64_t sub_53C38()
{
  result = qword_280380;
  if (!qword_280380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280380);
  }

  return result;
}

Swift::Int sub_53C8C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_53D94()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_53E88()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_53F98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE00726F68747541;
  v6 = 0x6D6F724665726F6DLL;
  v7 = 0xEE0079726F747369;
  v8 = 0x48676E6964616572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000000212870;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65536E497478656ELL;
    v3 = 0xEC00000073656972;
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

unint64_t sub_5411C()
{
  result = qword_280388;
  if (!qword_280388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280388);
  }

  return result;
}

uint64_t PreorderAttemptEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PreorderAttemptEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PreorderAttemptEvent(0);
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

uint64_t GiftEvent.Model.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v9 = *(v1 + 128);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 157);
  v3 = *(v10 + 13);
  v4 = *(v1 + 112);
  v8[0] = *(v1 + 96);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_17AA4(v8, v7, &qword_27FFF0, &unk_1E9C00);
}

uint64_t RedownloadCompleteEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 216);
  v4 = *(v1 + 248);
  v13 = *(v1 + 232);
  v3 = v13;
  v14 = v4;
  v5 = *(v1 + 184);
  v10[0] = *(v1 + 168);
  v10[1] = v5;
  v11 = *(v1 + 200);
  v6 = v11;
  v12 = v2;
  v15 = *(v1 + 264);
  v7 = v15;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v7;
  return sub_17AA4(v10, &v9, &qword_27E490, &qword_205F90);
}

uint64_t PreorderAttemptEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreorderAttemptEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreorderAttemptEvent.Model.init(contentData:contentStoreData:sectionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  v16 = *(type metadata accessor for PreorderAttemptEvent.Model(0) + 28);
  v17 = sub_1E1150();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

unint64_t sub_54A34()
{
  v1 = 0x44746E65746E6F63;
  v2 = 0x446E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_54ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_560D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_54AE4(uint64_t a1)
{
  v2 = sub_54FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_54B20(uint64_t a1)
{
  v2 = sub_54FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PreorderAttemptEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_2803C0, &qword_1EA450);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v28[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_54FDC();
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
    v27 = *(type metadata accessor for PreorderAttemptEvent.Model(0) + 28);
    v28[15] = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_54FDC()
{
  result = qword_2803C8;
  if (!qword_2803C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803C8);
  }

  return result;
}

uint64_t PreorderAttemptEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = sub_1E1150();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_2803D0, &qword_1EA458);
  v31 = *(v33 - 8);
  v6 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = type metadata accessor for PreorderAttemptEvent.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v56 = a1;
  sub_48B8(a1, v12);
  sub_54FDC();
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
  sub_5551C(v18, v30);
  sub_4E48(v56);
  return sub_55580(v18);
}

uint64_t sub_5551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreorderAttemptEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55580(uint64_t a1)
{
  v2 = type metadata accessor for PreorderAttemptEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5567C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_55814(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_559E0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

void sub_55BA4()
{
  sub_55D00(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_55D00(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_55D00(319, &qword_27E578, sub_18EFC, sub_18544);
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

void sub_55D00(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_55D90(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_55E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_55EF4()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27E638);
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

unint64_t sub_55FD4()
{
  result = qword_280508;
  if (!qword_280508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280508);
  }

  return result;
}

unint64_t sub_5602C()
{
  result = qword_280510;
  if (!qword_280510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280510);
  }

  return result;
}

unint64_t sub_56084()
{
  result = qword_280518;
  if (!qword_280518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280518);
  }

  return result;
}

uint64_t sub_560D8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x446E6F6974636573 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
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

uint64_t static SingleCollectionData.data(with:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = BARoundIntegerToSignificantFigures(a1, 2);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = result;
}

BookAnalytics::LaunchType_optional __swiftcall LaunchType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F920;
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

uint64_t LaunchType.rawValue.getter()
{
  v1 = 1684828003;
  if (*v0 != 1)
  {
    v1 = 1836212599;
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

uint64_t sub_56374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828003;
  if (v2 != 1)
  {
    v3 = 1836212599;
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
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828003;
  if (*a2 != 1)
  {
    v6 = 1836212599;
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
    v8 = 0xE400000000000000;
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

unint64_t sub_5645C()
{
  result = qword_280520;
  if (!qword_280520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280520);
  }

  return result;
}

Swift::Int sub_564B0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_56544()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_565C4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_56660(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1684828003;
  if (v2 != 1)
  {
    v4 = 1836212599;
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
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_56770()
{
  result = qword_280528;
  if (!qword_280528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280528);
  }

  return result;
}

uint64_t sub_567C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v49 = a6;
  v51 = a1;
  v11 = sub_1E1A20();
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v50 = &v42 - v13;
  v48 = sub_1E1A20();
  v14 = *(v48 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (__chkstk_darwin)();
  v18 = &v42 - v17;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v16);
  v43 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v42 - v24;
  v26 = *(a3 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v23);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v42 - v31;
  v33 = *(v19 + 16);
  v46 = a2;
  v33(v25, a2, a4);
  v34 = swift_dynamicCast();
  v35 = *(v26 + 56);
  if (v34)
  {
    v35(v18, 0, 1, a3);
    (*(v26 + 32))(v32, v18, a3);
    v36 = sub_1E1760();
    (*(v26 + 8))(v32, a3);
  }

  else
  {
    v35(v18, 1, 1, a3);
    (*(v14 + 8))(v18, v48);
    (*(v26 + 16))(v30, v51, a3);
    v37 = v50;
    v38 = swift_dynamicCast();
    v39 = *(v19 + 56);
    if (v38)
    {
      v39(v37, 0, 1, a4);
      v40 = v43;
      (*(v19 + 32))(v43, v37, a4);
      v36 = sub_1E1760();
      (*(v19 + 8))(v40, a4);
    }

    else
    {
      v39(v37, 1, 1, a4);
      (*(v44 + 8))(v37, v45);
      v36 = 0;
    }
  }

  return v36 & 1;
}

uint64_t ==~ infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_48B8(a1, v3);
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = sub_48B8(a2, v7);

  return sub_567C4(v6, v10, v3, v7, v4, v5, v8, v9);
}

uint64_t ShareSheetExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSheetExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSheetExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareSheetExposureEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ShareSheetExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSheetExposureEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSheetExposureEvent.Model.init(contentData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 2) = a1[2];
  *(a4 + 3) = v7;
  v8 = a1[5];
  *(a4 + 4) = a1[4];
  *(a4 + 5) = v8;
  v9 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v9;
  v10 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(&a4[v11], a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a4[v13], a3, v14);
}

uint64_t sub_57358()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_573C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_587AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_573EC(uint64_t a1)
{
  v2 = sub_57750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_57428(uint64_t a1)
{
  v2 = sub_57750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareSheetExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_280560, &qword_1EA788);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_57750();
  v10 = v4;
  sub_1E1E00();
  v11 = v2[2];
  v12 = v2[4];
  v40 = v2[3];
  v41 = v12;
  v13 = v2[4];
  v42 = v2[5];
  v14 = *v2;
  v15 = v2[2];
  v38 = v2[1];
  v39 = v15;
  v16 = *v2;
  v34 = v40;
  v35 = v13;
  v36 = v2[5];
  v37 = v16;
  v31 = v14;
  v32 = v38;
  v33 = v11;
  v30 = 0;
  sub_13A5C(&v37, &v24);
  sub_143D0();
  v17 = v43;
  sub_1E1CF0();
  if (v17)
  {
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v24 = v31;
    v25 = v32;
    sub_14424(&v24);
  }

  else
  {
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v24 = v31;
    v25 = v32;
    sub_14424(&v24);
    v18 = type metadata accessor for ShareSheetExposureEvent.Model(0);
    v19 = *(v18 + 20);
    v23 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    v10 = v4;
    sub_1E1CF0();
    v20 = *(v18 + 24);
    v23 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v10);
}

unint64_t sub_57750()
{
  result = qword_280568;
  if (!qword_280568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280568);
  }

  return result;
}

uint64_t ShareSheetExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_1E11A0();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_280570, &qword_1EA790);
  v33 = *(v36 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v36);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  sub_48B8(a1, v17);
  sub_57750();
  v35 = v12;
  v19 = v37;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v38);
  }

  v20 = v33;
  v21 = v16;
  v37 = v5;
  v22 = v34;
  v46 = 0;
  sub_14CB8();
  sub_1E1C20();
  v23 = v43;
  v24 = v21;
  *(v21 + 2) = v42;
  *(v21 + 3) = v23;
  v25 = v45;
  *(v21 + 4) = v44;
  *(v21 + 5) = v25;
  v26 = v41;
  *v21 = v40;
  *(v21 + 1) = v26;
  v39 = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  (*(v22 + 32))(&v21[*(v13 + 20)], v9, v6);
  v39 = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v27 = v32;
  sub_1E1C20();
  (*(v20 + 8))(v35, v36);
  (*(v30 + 32))(v24 + *(v13 + 24), v37, v27);
  sub_57D0C(v24, v31);
  sub_4E48(v38);
  return sub_57D70(v24);
}

uint64_t sub_57D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_57D70(uint64_t a1)
{
  v2 = type metadata accessor for ShareSheetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_57E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_57FA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_5811C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_5828C()
{
  sub_58328();
  if (v0 <= 0x3F)
  {
    sub_5684();
    if (v1 <= 0x3F)
    {
      sub_5750();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_58328()
{
  if (!qword_27E2C8)
  {
    sub_14CB8();
    sub_143D0();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2C8);
    }
  }
}

uint64_t sub_583A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_584DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_58600()
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

unint64_t sub_586A8()
{
  result = qword_2806A8;
  if (!qword_2806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806A8);
  }

  return result;
}

unint64_t sub_58700()
{
  result = qword_2806B0;
  if (!qword_2806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806B0);
  }

  return result;
}

unint64_t sub_58758()
{
  result = qword_2806B8;
  if (!qword_2806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806B8);
  }

  return result;
}

uint64_t sub_587AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

uint64_t InitialAppStateQueryEvent.libraryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InitialAppStateQueryEvent.libraryData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InitialAppStateQueryEvent.readingNowData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 20);
  v4 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.readingNowData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 20);
  v4 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InitialAppStateQueryEvent.collectionSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.collectionSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InitialAppStateQueryEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InitialAppStateQueryEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InitialAppStateQueryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for InitialAppStateQueryEvent(0);
  v5 = Event[5];
  v6 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  v8 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  v10 = enum case for EventProperty.required<A>(_:);
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = Event[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v10, v13);
}

uint64_t InitialAppStateQueryEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InitialAppStateQueryEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InitialAppStateQueryEvent.Model.init(libraryData:readingNowData:collectionSummaryData:eventData:timedData:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  *a6 = *a1;
  *(a6 + 1) = v9;
  *(a6 + 2) = v10;
  v11 = type metadata accessor for InitialAppStateQueryEvent.Model(0);
  v12 = *(v11 + 28);
  v13 = sub_1E1150();
  (*(*(v13 - 8) + 32))(&a6[v12], a4, v13);
  v14 = *(v11 + 32);
  v15 = sub_1E11A0();
  v16 = *(*(v15 - 8) + 32);

  return v16(&a6[v14], a5, v15);
}

unint64_t sub_593E4()
{
  v1 = *v0;
  v2 = 0x447972617262696CLL;
  v3 = 0xD000000000000015;
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
    v2 = 0x4E676E6964616572;
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

uint64_t sub_594A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5AD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_594C8(uint64_t a1)
{
  v2 = sub_59850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_59504(uint64_t a1)
{
  v2 = sub_59850();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InitialAppStateQueryEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_280700, &qword_1EA9C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_59850();
  sub_1E1E00();
  v16 = *v3;
  HIBYTE(v15) = 0;
  sub_598A4();

  sub_1E1C80();
  if (v2)
  {
  }

  else
  {

    v16 = v3[1];
    HIBYTE(v15) = 1;
    sub_598F8();

    sub_1E1C80();

    v16 = v3[2];
    HIBYTE(v15) = 2;
    sub_4950();

    sub_1E1C80();

    v11 = type metadata accessor for InitialAppStateQueryEvent.Model(0);
    v12 = *(v11 + 28);
    LOBYTE(v16) = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v13 = *(v11 + 32);
    LOBYTE(v16) = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_59850()
{
  result = qword_280708;
  if (!qword_280708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280708);
  }

  return result;
}

unint64_t sub_598A4()
{
  result = qword_280710;
  if (!qword_280710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280710);
  }

  return result;
}

unint64_t sub_598F8()
{
  result = qword_280718;
  if (!qword_280718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280718);
  }

  return result;
}

uint64_t InitialAppStateQueryEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_1E11A0();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v29);
  v30 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3D68(&qword_280720, &qword_1EA9D0);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v11 = v26 - v10;
  v12 = type metadata accessor for InitialAppStateQueryEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_59850();
  v34 = v11;
  v17 = v35;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v18 = v8;
  v35 = v12;
  v20 = v31;
  v19 = v32;
  v36 = 0;
  sub_59EE8();
  sub_1E1BB0();
  *v15 = v37;
  v36 = 1;
  sub_59F3C();
  sub_1E1BB0();
  *(v15 + 1) = v37;
  v36 = 2;
  sub_4E94();
  v26[1] = 0;
  sub_1E1BB0();
  v21 = v5;
  *(v15 + 2) = v37;
  LOBYTE(v37) = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v22 = v35;
  v26[0] = a1;
  (*(v19 + 32))(&v15[*(v35 + 28)], v18, v21);
  LOBYTE(v37) = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v23 = v29;
  v24 = v30;
  sub_1E1C20();
  (*(v20 + 8))(v34, v33);
  (*(v27 + 32))(&v15[*(v22 + 32)], v24, v23);
  sub_59F90(v15, v28);
  sub_4E48(v26[0]);
  return sub_59FF4(v15);
}

unint64_t sub_59EE8()
{
  result = qword_280728;
  if (!qword_280728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280728);
  }

  return result;
}

unint64_t sub_59F3C()
{
  result = qword_280730;
  if (!qword_280730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280730);
  }

  return result;
}

uint64_t sub_59F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InitialAppStateQueryEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_59FF4(uint64_t a1)
{
  v2 = type metadata accessor for InitialAppStateQueryEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A0F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_2806F0, &qword_1EA9B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = enum case for EventProperty.required<A>(_:);
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v11, v14);
}

uint64_t sub_5A2CC(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
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

  v14 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
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

uint64_t sub_5A4EC(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v13 = sub_3D68(&qword_2806F8, &unk_1EA9B8);
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

  v16 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
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

void sub_5A704()
{
  sub_5A878(319, &qword_2807A0, sub_59EE8, sub_598A4);
  if (v0 <= 0x3F)
  {
    sub_5A878(319, &unk_2807A8, sub_59F3C, sub_598F8);
    if (v1 <= 0x3F)
    {
      sub_5A878(319, &qword_27D8A8, sub_4E94, sub_4950);
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

void sub_5A878(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_5A908(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1E1150();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_5AA4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
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

void sub_5AB70()
{
  sub_19FE0(319, &qword_280850);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_280858);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &unk_280860);
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

unint64_t sub_5AC80()
{
  result = qword_2808A0;
  if (!qword_2808A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A0);
  }

  return result;
}

unint64_t sub_5ACD8()
{
  result = qword_2808A8;
  if (!qword_2808A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A8);
  }

  return result;
}

unint64_t sub_5AD30()
{
  result = qword_2808B0;
  if (!qword_2808B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808B0);
  }

  return result;
}

uint64_t sub_5AD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x447972617262696CLL && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E676E6964616572 && a2 == 0xEE0061746144776FLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000002135D0 == a2 || (sub_1E1D30() & 1) != 0)
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

uint64_t PredictiveSearchSuggestionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PredictiveSearchSuggestionEvent.eventData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GetStartedViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GetStartedViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GetStartedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for GetStartedViewEvent(0) + 20);
  v5 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t PredictiveSearchSuggestionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GetStartedViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GetStartedViewEvent.Model(0) + 20);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GetStartedViewEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1150();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for GetStartedViewEvent.Model(0) + 20);
  v8 = sub_1E11A0();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}