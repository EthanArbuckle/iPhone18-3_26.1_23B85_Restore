unint64_t sub_1A7DDC()
{
  result = qword_28D960;
  if (!qword_28D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28D960);
  }

  return result;
}

uint64_t AuthorExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1E11A0();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v37);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_3D68(&qword_28D968, &qword_20B190);
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v42);
  v11 = &v34 - v10;
  v12 = type metadata accessor for AuthorExposureEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A7DDC();
  v41 = v11;
  v17 = v60;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v18 = v8;
  v19 = a1;
  v20 = v15;
  v21 = v39;
  LOBYTE(v56) = 0;
  sub_4CB8C();
  sub_1E1C20();
  v22 = *(&v45 + 1);
  *v20 = v45;
  *(v20 + 8) = v22;
  v55 = 1;
  sub_393C4();
  sub_1E1BB0();
  v34 = v5;
  v23 = v57;
  *(v20 + 16) = v56;
  *(v20 + 32) = v23;
  v24 = v59;
  *(v20 + 48) = v58;
  *(v20 + 64) = v24;
  v44 = 2;
  sub_18FA4();
  sub_1E1BB0();
  v25 = v52;
  *(v20 + 176) = v51;
  *(v20 + 192) = v25;
  *(v20 + 208) = v53;
  *(v20 + 224) = v54;
  v26 = v48;
  *(v20 + 112) = v47;
  *(v20 + 128) = v26;
  v27 = v50;
  *(v20 + 144) = v49;
  *(v20 + 160) = v27;
  v28 = v46;
  *(v20 + 80) = v45;
  *(v20 + 96) = v28;
  v43 = 3;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v29 = v5;
  v30 = v19;
  (*(v21 + 32))(v20 + *(v12 + 28), v18, v29);
  v43 = 4;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v31 = v38;
  v32 = v37;
  sub_1E1C20();
  (*(v40 + 8))(v41, v42);
  (*(v35 + 32))(v20 + *(v12 + 32), v31, v32);
  sub_1A8598(v20, v36);
  sub_4E48(v30);
  return sub_1A85FC(v20);
}

uint64_t sub_1A8598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthorExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A85FC(uint64_t a1)
{
  v2 = type metadata accessor for AuthorExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A86F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28D950, &qword_20B180);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27F4F8, &unk_210310);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27E488, &unk_1E5F90);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_1A88DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28D950, &qword_20B180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27F4F8, &unk_210310);
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

  v14 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

uint64_t sub_1A8AFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28D950, &qword_20B180);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27F4F8, &unk_210310);
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

  v16 = sub_3D68(&qword_27E488, &unk_1E5F90);
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

void sub_1A8D14()
{
  sub_1A8E88(319, &unk_28D9D8, sub_4CB8C, sub_4CBE4);
  if (v0 <= 0x3F)
  {
    sub_1A8E88(319, &unk_27F598, sub_393C4, sub_38C28);
    if (v1 <= 0x3F)
    {
      sub_1A8E88(319, &unk_27E588, sub_18FA4, sub_18630);
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

void sub_1A8E88(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1A8F18(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1A9050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_1A9174()
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

unint64_t sub_1A926C()
{
  result = qword_28DAB8;
  if (!qword_28DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DAB8);
  }

  return result;
}

unint64_t sub_1A92C4()
{
  result = qword_28DAC0;
  if (!qword_28DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DAC0);
  }

  return result;
}

unint64_t sub_1A931C()
{
  result = qword_28DAC8;
  if (!qword_28DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DAC8);
  }

  return result;
}

uint64_t sub_1A9370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726F68747561 && a2 == 0xEA00000000006174;
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

uint64_t GoalStateEvent.readingGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GoalStateEvent.readingGoalsData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GoalStateEvent.booksGoalsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 20);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.booksGoalsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 20);
  v4 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalStateEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GoalStateEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GoalStateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GoalStateEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = enum case for EventProperty.required<A>(_:);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v7, v8, v9);
}

__n128 GoalStateEvent.Model.readingGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 57) = *(v1 + 57);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GoalStateEvent.Model.booksGoalsData.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t GoalStateEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GoalStateEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GoalStateEvent.Model.init(readingGoalsData:booksGoalsData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  *(a4 + 57) = *(a1 + 57);
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  v9 = *(a2 + 16);
  *(a4 + 80) = *a2;
  *(a4 + 96) = v9;
  *(a4 + 112) = v6;
  v10 = *(type metadata accessor for GoalStateEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

unint64_t sub_1A9C60()
{
  v1 = 0x616F47736B6F6F62;
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
    return 0xD000000000000010;
  }
}

uint64_t sub_1A9CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AAD2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9CF8(uint64_t a1)
{
  v2 = sub_1A9F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1A9D34(uint64_t a1)
{
  v2 = sub_1A9F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalStateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28DB00, &qword_20B3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1A9F84();
  sub_1E1E00();
  v11 = v3[3];
  v21 = v3[2];
  v22[0] = v11;
  *(v22 + 9) = *(v3 + 57);
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v18 = 0;
  sub_1E3E8();
  sub_1E1C80();
  if (!v2)
  {
    v13 = *(v3 + 112);
    v14 = v3[6];
    v19 = v3[5];
    v20 = v14;
    LOBYTE(v21) = v13;
    v18 = 1;
    sub_283FC();
    sub_1E1C80();
    v15 = *(type metadata accessor for GoalStateEvent.Model(0) + 24);
    LOBYTE(v19) = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A9F84()
{
  result = qword_28DB08;
  if (!qword_28DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DB08);
  }

  return result;
}

uint64_t GoalStateEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1E1150();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28DB10, &qword_20B3C8);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for GoalStateEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v31 = a1;
  sub_48B8(a1, v16);
  sub_1A9F84();
  sub_1E1DF0();
  if (!v2)
  {
    v26 = v12;
    v18 = v29;
    v19 = v7;
    v40 = 0;
    sub_1E390();
    v20 = v30;
    sub_1E1BB0();
    v21 = v38[0];
    *(v15 + 2) = v37;
    *(v15 + 3) = v21;
    *(v15 + 57) = *(v38 + 9);
    v22 = v36;
    *v15 = v35;
    *(v15 + 1) = v22;
    v39 = 1;
    sub_28EA0();
    sub_1E1BB0();
    v24 = v34;
    v25 = v33;
    *(v15 + 5) = v32;
    *(v15 + 6) = v25;
    v15[112] = v24;
    LOBYTE(v32) = 2;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v18 + 8))(v11, v20);
    (*(v27 + 32))(&v15[*(v26 + 24)], v19, v4);
    sub_1AA328(v15, v28);
  }

  return sub_4E48(v31);
}

uint64_t sub_1AA328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoalStateEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AA42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.optional<A>(_:);
  v5 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = enum case for EventProperty.required<A>(_:);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v8, v9, v10);
}

uint64_t sub_1AA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
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

uint64_t sub_1AA6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27E9F0, &qword_1E71B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E9F8, &qword_1E71B8);
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

void sub_1AA858()
{
  sub_1AA964(319, &qword_27EAD8, sub_1E390, sub_1E3E8);
  if (v0 <= 0x3F)
  {
    sub_1AA964(319, &qword_27EAE0, sub_28EA0, sub_283FC);
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

void sub_1AA964(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1AA9F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1AAAB8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1AAB58()
{
  sub_19FE0(319, &qword_27EBB8);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_27EBC0);
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

unint64_t sub_1AAC28()
{
  result = qword_28DC48;
  if (!qword_28DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC48);
  }

  return result;
}

unint64_t sub_1AAC80()
{
  result = qword_28DC50;
  if (!qword_28DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC50);
  }

  return result;
}

unint64_t sub_1AACD8()
{
  result = qword_28DC58;
  if (!qword_28DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC58);
  }

  return result;
}

uint64_t sub_1AAD2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000000213B80 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F47736B6F6F62 && a2 == 0xEE0061746144736CLL || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1AAEB0()
{
  v1 = *v0;
  v2 = 0x55746E65746E6F63;
  v3 = 0x54746E65746E6F63;
  v4 = 0x6974656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x49746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_1AAF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB93C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AAF9C(uint64_t a1)
{
  v2 = sub_1AB710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AAFD8(uint64_t a1)
{
  v2 = sub_1AB710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingNowItemTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28DC60, &qword_20B5E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v18 = *(v1 + 32);
  v11 = *(v1 + 9);
  v12 = v1[5];
  v17[1] = v1[6];
  v17[2] = v12;
  v13 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AB710();
  sub_1E1E00();
  v27 = 0;
  v14 = v21;
  sub_1E1CB0();
  if (!v14)
  {
    v16 = v18;
    v26 = 1;
    sub_1E1CB0();
    v25 = v16;
    v24 = 2;
    sub_C480();
    sub_1E1CF0();
    v23 = 3;
    sub_1E1CE0();
    v22 = 4;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReadingNowItemTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_28DC70, &qword_20B5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AB710();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v29 = v11;
  LOBYTE(v34[0]) = 1;
  *&v28 = sub_1E1BE0();
  *(&v28 + 1) = v14;
  LOBYTE(v30) = 2;
  sub_C4D4();
  sub_1E1C20();
  v27 = LOBYTE(v34[0]);
  LOBYTE(v34[0]) = 3;
  sub_1E1C10();
  v16 = v15;
  v39 = 4;
  v17 = sub_1E1BE0();
  v19 = v18;
  v20 = v17;
  (*(v6 + 8))(v9, v5);
  v22 = *(&v28 + 1);
  v21 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v13;
  v31 = v28;
  v23 = v27;
  LOBYTE(v32) = v27;
  DWORD1(v32) = v16;
  *(&v32 + 1) = v20;
  v33 = v19;
  *(a2 + 48) = v19;
  v24 = v31;
  *a2 = v30;
  *(a2 + 16) = v24;
  *(a2 + 32) = v32;
  sub_5E2B0(&v30, v34);
  sub_4E48(a1);
  v34[0] = v21;
  v34[1] = v13;
  v34[2] = v28;
  v34[3] = v22;
  v35 = v23;
  v36 = v16;
  v37 = v20;
  v38 = v19;
  return sub_5E30C(v34);
}

uint64_t _s13BookAnalytics22ReadingNowItemTypeDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 36);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0 || (v2 != v8 || v3 != v9) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  v14 = sub_218F4(v4, v10);
  result = 0;
  if ((v14 & 1) != 0 && v5 == v11)
  {
    if (v6 == v12 && v7 == v13)
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

unint64_t sub_1AB710()
{
  result = qword_28DC68;
  if (!qword_28DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC68);
  }

  return result;
}

unint64_t sub_1AB768()
{
  result = qword_28DC78;
  if (!qword_28DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC78);
  }

  return result;
}

unint64_t sub_1AB7C0()
{
  result = qword_28DC80;
  if (!qword_28DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC80);
  }

  return result;
}

unint64_t sub_1AB838()
{
  result = qword_28DC88;
  if (!qword_28DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC88);
  }

  return result;
}

unint64_t sub_1AB890()
{
  result = qword_28DC90;
  if (!qword_28DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC90);
  }

  return result;
}

unint64_t sub_1AB8E8()
{
  result = qword_28DC98;
  if (!qword_28DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DC98);
  }

  return result;
}

uint64_t sub_1AB93C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461526E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
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

BookAnalytics::EditActionType_optional __swiftcall EditActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261BD8;
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

uint64_t EditActionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C6F436F54646461;
  if (*v0 != 2)
  {
    v2 = 0x65766F6D6572;
  }

  if (*v0)
  {
    v1 = 0x6572616873;
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

unint64_t sub_1ABC00()
{
  result = qword_28DCA0;
  if (!qword_28DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCA0);
  }

  return result;
}

Swift::Int sub_1ABC54()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1ABD1C()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1ABDD0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1ABEA0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6C6F436F54646461;
  if (*v1 != 2)
  {
    v5 = 0x65766F6D6572;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6572616873;
    v2 = 0xE500000000000000;
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

unint64_t sub_1ABFE4()
{
  result = qword_28DCA8;
  if (!qword_28DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCA8);
  }

  return result;
}

BookAnalytics::WelcomeActionType_optional __swiftcall WelcomeActionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261C58;
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

uint64_t WelcomeActionType.rawValue.getter()
{
  v1 = 1885956979;
  if (*v0 != 1)
  {
    v1 = 0x65756E69746E6F63;
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

unint64_t sub_1AC0EC()
{
  result = qword_28DCB0;
  if (!qword_28DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCB0);
  }

  return result;
}

Swift::Int sub_1AC140()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1AC1DC()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1AC264()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1AC308(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  if (v2 != 1)
  {
    v5 = 0x65756E69746E6F63;
    v4 = 0xE800000000000000;
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

unint64_t sub_1AC420()
{
  result = qword_28DCB8;
  if (!qword_28DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCB8);
  }

  return result;
}

uint64_t sub_1AC494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756F5377656976 && a2 == 0xEA00000000006563)
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

uint64_t sub_1AC524(uint64_t a1)
{
  v2 = sub_1AC884();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AC560(uint64_t a1)
{
  v2 = sub_1AC884();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewSourceData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28DCC0, &qword_20BA80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AC884();
  sub_1E1E00();
  v12 = v8;
  sub_1AC8D8();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ViewSourceData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28DCD8, &qword_20BA88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AC884();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1AC92C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1AC884()
{
  result = qword_28DCC8;
  if (!qword_28DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCC8);
  }

  return result;
}

unint64_t sub_1AC8D8()
{
  result = qword_28DCD0;
  if (!qword_28DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCD0);
  }

  return result;
}

unint64_t sub_1AC92C()
{
  result = qword_28DCE0;
  if (!qword_28DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCE0);
  }

  return result;
}

unint64_t sub_1AC9AC()
{
  result = qword_28DCE8;
  if (!qword_28DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCE8);
  }

  return result;
}

unint64_t sub_1ACA04()
{
  result = qword_28DCF0;
  if (!qword_28DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCF0);
  }

  return result;
}

unint64_t sub_1ACA5C()
{
  result = qword_28DCF8;
  if (!qword_28DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DCF8);
  }

  return result;
}

unint64_t sub_1ACADC()
{
  if (*v0)
  {
    result = 0x7261655976657270;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1ACB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000217450 == a2 || (sub_1E1D30() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7261655976657270 && a2 == 0xEE006C616F47796CLL)
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

uint64_t sub_1ACC18(uint64_t a1)
{
  v2 = sub_1ACE1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1ACC54(uint64_t a1)
{
  v2 = sub_1ACE1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingGoalYearlyData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28DD00, &qword_20BCB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1ACE1C();
  sub_1E1E00();
  v14 = 0;
  sub_1E1D10();
  if (!v2)
  {
    v13 = 1;
    sub_1E1D10();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1ACE1C()
{
  result = qword_28DD08;
  if (!qword_28DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DD08);
  }

  return result;
}

uint64_t ReadingGoalYearlyData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28DD10, &qword_20BCB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1ACE1C();
  sub_1E1DF0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1E1C40();
    v15 = 1;
    v12 = sub_1E1C40();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_4E48(a1);
}

uint64_t getEnumTagSinglePayload for ReadingGoalsDurationData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ReadingGoalsDurationData(uint64_t result, int a2, int a3)
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

unint64_t sub_1AD0B4()
{
  result = qword_28DD18;
  if (!qword_28DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DD18);
  }

  return result;
}

unint64_t sub_1AD10C()
{
  result = qword_28DD20;
  if (!qword_28DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DD20);
  }

  return result;
}

unint64_t sub_1AD164()
{
  result = qword_28DD28;
  if (!qword_28DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DD28);
  }

  return result;
}

uint64_t sub_1AD278(uint64_t a1)
{
  v2 = sub_1AD454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AD2B4(uint64_t a1)
{
  v2 = sub_1AD454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ResetPrivateIDsEvent.Model.encode(to:)(void *a1)
{
  v2 = sub_3D68(&qword_28DD60, &qword_20BEE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AD454();
  sub_1E1E00();
  sub_1E1150();
  sub_14E5C(&qword_27D810);
  sub_1E1CF0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1AD454()
{
  result = qword_28DD68;
  if (!qword_28DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DD68);
  }

  return result;
}

uint64_t ResetPrivateIDsEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E1150();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_28DD70, &qword_20BEF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ResetPrivateIDsEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AD454();
  v16 = v23;
  sub_1E1DF0();
  if (!v16)
  {
    v17 = v21;
    sub_14E5C(&qword_27D830);
    sub_1E1C20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1AD734(v14, v20);
  }

  return sub_4E48(a1);
}

uint64_t sub_1AD734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPrivateIDsEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD834(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AD8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AD970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AD9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1ADA74()
{
  result = qword_28DE98;
  if (!qword_28DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DE98);
  }

  return result;
}

unint64_t sub_1ADACC()
{
  result = qword_28DEA0;
  if (!qword_28DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DEA0);
  }

  return result;
}

unint64_t sub_1ADB24()
{
  result = qword_28DEA8;
  if (!qword_28DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DEA8);
  }

  return result;
}

uint64_t RemoveFromWantListEvent.wantListRemovalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveFromWantListEvent.wantListRemovalData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoveFromWantListEvent.wantListRemovalTypeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 20);
  v4 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.wantListRemovalTypeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 20);
  v4 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 24);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromWantListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveFromWantListEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t RemoveFromWantListEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t RemoveFromWantListEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromWantListEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromWantListEvent.Model.init(wantListRemovalData:wantListRemovalTypeData:seriesData:eventData:)@<X0>(void *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v7;
  v8 = a3[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v8;
  *(a5 + 48) = a3[2];
  v9 = *(type metadata accessor for RemoveFromWantListEvent.Model(0) + 28);
  v10 = sub_1E1150();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

unint64_t sub_1AE42C()
{
  v1 = 0x6144736569726573;
  if (*v0 != 2)
  {
    v1 = 0x746144746E657665;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1AE4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AE4DC(uint64_t a1)
{
  v2 = sub_1AE7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AE518(uint64_t a1)
{
  v2 = sub_1AE7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveFromWantListEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28DEF0, &qword_20C100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1AE7C8();
  sub_1E1E00();
  v19 = *v3;
  v25 = 0;
  sub_18D20C();

  sub_1E1CF0();

  if (!v2)
  {
    LOBYTE(v19) = *(v3 + 8);
    v25 = 1;
    sub_2D820();
    sub_1E1CF0();
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    v14 = *(v3 + 48);
    v15 = *(v3 + 56);
    v19 = *(v3 + 16);
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_13BDC(v19, v11, v12, v13, v14, v15);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v19, v20, v21, v22, v23, v24);
    v16 = *(type metadata accessor for RemoveFromWantListEvent.Model(0) + 28);
    LOBYTE(v19) = 3;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1AE7C8()
{
  result = qword_28DEF8;
  if (!qword_28DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28DEF8);
  }

  return result;
}

uint64_t RemoveFromWantListEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3D68(&qword_28DF00, &qword_20C108);
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v27);
  v10 = &v23 - v9;
  v11 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v28 = a1;
  sub_48B8(a1, v15);
  sub_1AE7C8();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v28);
  }

  v23 = v7;
  v17 = v14;
  v19 = v25;
  v18 = v26;
  v32 = 0;
  sub_18D1B4();
  v20 = v27;
  sub_1E1C20();
  *v17 = v29;
  v32 = 1;
  sub_2D7C8();
  sub_1E1C20();
  *(v17 + 8) = v29;
  v32 = 2;
  sub_DAD8();
  sub_1E1BB0();
  v21 = v30;
  *(v17 + 16) = v29;
  *(v17 + 32) = v21;
  *(v17 + 48) = v31;
  LOBYTE(v29) = 3;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v19 + 8))(v10, v20);
  (*(v24 + 32))(v17 + *(v11 + 28), v23, v4);
  sub_1AEBF4(v17, v18);
  sub_4E48(v28);
  return sub_1AEC58(v17);
}

uint64_t sub_1AEBF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AEC58(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFromWantListEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AED54@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_1AEEEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
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

  v14 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_1AF0B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_28DEE0, &qword_20C0F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_28DEE8, &qword_20C0F8);
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

  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

void sub_1AF27C()
{
  sub_1AF3D8(319, &qword_28DF70, sub_18D1B4, sub_18D20C);
  if (v0 <= 0x3F)
  {
    sub_1AF3D8(319, &unk_28DF78, sub_2D7C8, sub_2D820);
    if (v1 <= 0x3F)
    {
      sub_1AF3D8(319, &qword_27DE18, sub_DAD8, sub_D57C);
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

void sub_1AF3D8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1AF468(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AF528(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1AF5CC()
{
  sub_15D04();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AF67C()
{
  result = qword_28E048;
  if (!qword_28E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E048);
  }

  return result;
}

unint64_t sub_1AF6D4()
{
  result = qword_28E050;
  if (!qword_28E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E050);
  }

  return result;
}

unint64_t sub_1AF72C()
{
  result = qword_28E058;
  if (!qword_28E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E058);
  }

  return result;
}

uint64_t sub_1AF780(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000000217470 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000000217490 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
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

uint64_t RemoveFromCollectionEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromCollectionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoveFromCollectionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RemoveFromCollectionEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t RemoveFromCollectionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFromCollectionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemoveFromCollectionEvent.Model.init(collectionData:contentData:eventData:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = a2[2];
  v8 = a2[4];
  v9 = a2[5];
  *(a4 + 80) = a2[3];
  *(a4 + 96) = v8;
  *(a4 + 112) = v9;
  v10 = *a2;
  v11 = a2[1];
  *(a4 + 16) = v6;
  *(a4 + 32) = v10;
  v12 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v12;
  *(a4 + 48) = v11;
  *(a4 + 64) = v7;
  v13 = *(type metadata accessor for RemoveFromCollectionEvent.Model(0) + 24);
  v14 = sub_1E1150();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

uint64_t sub_1AFF04()
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
    return 0x697463656C6C6F63;
  }
}

uint64_t sub_1AFF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFFA0(uint64_t a1)
{
  v2 = sub_1B0324();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1AFFDC(uint64_t a1)
{
  v2 = sub_1B0324();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RemoveFromCollectionEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E090, &qword_20C328);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B0324();
  sub_1E1E00();
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  v38 = *v2;
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v37 = 0;
  sub_2B314();

  v13 = v42;
  sub_1E1CF0();

  if (!v13)
  {
    v15 = *(v2 + 4);
    v16 = *(v2 + 6);
    v34 = *(v2 + 5);
    v35 = v16;
    v17 = *(v2 + 6);
    v36 = *(v2 + 7);
    v18 = *(v2 + 2);
    v19 = *(v2 + 4);
    v32 = *(v2 + 3);
    v33 = v19;
    v20 = *(v2 + 2);
    v28 = v34;
    v29 = v17;
    v30 = *(v2 + 7);
    v31 = v20;
    v25 = v18;
    v26 = v32;
    v27 = v15;
    v24 = 1;
    sub_13A5C(&v31, v23);
    sub_143D0();
    sub_1E1CF0();
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_14424(v23);
    v21 = *(type metadata accessor for RemoveFromCollectionEvent.Model(0) + 24);
    v22[15] = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B0324()
{
  result = qword_28E098;
  if (!qword_28E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E098);
  }

  return result;
}

uint64_t RemoveFromCollectionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E1150();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_28E0A0, &qword_20C330);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  sub_48B8(a1, v16);
  sub_1B0324();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(v30);
  }

  v18 = v28;
  v25 = v7;
  v38 = 0;
  sub_2B68C();
  v19 = v29;
  sub_1E1C20();
  v20 = *(&v31 + 1);
  *v15 = v31;
  *(v15 + 1) = v20;
  *(v15 + 1) = v32;
  v38 = 1;
  sub_14CB8();
  sub_1E1C20();
  v21 = v34;
  *(v15 + 4) = v33;
  *(v15 + 5) = v21;
  v22 = v36;
  *(v15 + 6) = v35;
  *(v15 + 7) = v22;
  v23 = v32;
  *(v15 + 2) = v31;
  *(v15 + 3) = v23;
  v37 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v18 + 8))(v11, v19);
  (*(v26 + 32))(&v15[*(v12 + 24)], v25, v4);
  sub_1B0744(v15, v27);
  sub_4E48(v30);
  return sub_1B07A8(v15);
}

uint64_t sub_1B0744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B07A8(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFromCollectionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B08A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27EC78, &unk_1E7460);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_1B09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27EC78, &unk_1E7460);
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

uint64_t sub_1B0B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27EC78, &unk_1E7460);
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

void sub_1B0CC4()
{
  sub_1B0DD0(319, &qword_27ED10, sub_2B68C, sub_2B314);
  if (v0 <= 0x3F)
  {
    sub_1B0DD0(319, &qword_27E2C8, sub_14CB8, sub_143D0);
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

void sub_1B0DD0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1B0E60(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B0F20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1B0FC4()
{
  result = sub_1E1150();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B105C()
{
  result = qword_28E1D8;
  if (!qword_28E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E1D8);
  }

  return result;
}

unint64_t sub_1B10B4()
{
  result = qword_28E1E0;
  if (!qword_28E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E1E0);
  }

  return result;
}

unint64_t sub_1B110C()
{
  result = qword_28E1E8;
  if (!qword_28E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E1E8);
  }

  return result;
}

uint64_t sub_1B1160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656C6C6F63 && a2 == 0xEE00617461446E6FLL;
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

BookAnalytics::ListeningRoutedTo_optional __swiftcall ListeningRoutedTo.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261CC0;
  v8._object = object;
  v5 = sub_1E1B70(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ListeningRoutedTo.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646F50656D6F68;
  if (v1 != 6)
  {
    v3 = 0x5654656C707061;
  }

  v4 = 0x6E6F687064616568;
  if (v1 != 4)
  {
    v4 = 0x73646F50726961;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79616C50726163;
  if (v1 != 2)
  {
    v5 = 0x6F69647541726163;
  }

  if (*v0)
  {
    v2 = 0x656369766564;
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

unint64_t sub_1B13F4()
{
  result = qword_28E1F0;
  if (!qword_28E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E1F0);
  }

  return result;
}

void sub_1B1470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x646F50656D6F68;
  if (v2 != 6)
  {
    v6 = 0x5654656C707061;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEA00000000007365;
  v8 = 0x6E6F687064616568;
  if (v2 != 4)
  {
    v8 = 0x73646F50726961;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616C50726163;
  if (v2 != 2)
  {
    v10 = 0x6F69647541726163;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_1B1630()
{
  result = qword_28E1F8;
  if (!qword_28E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E1F8);
  }

  return result;
}

uint64_t sub_1B1688()
{
  v1 = 0x65726E6547627573;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644965726E6567;
  }
}

uint64_t sub_1B16F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1718(uint64_t a1)
{
  v2 = sub_1B1CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B1754(uint64_t a1)
{
  v2 = sub_1B1CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E200, &qword_20C688);
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
  v12 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B1CDC();
  sub_1E1E00();
  v18 = 0;
  v13 = v15[5];
  sub_1E1CB0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E1C50();
  v16 = 2;
  sub_1E1C50();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GenreData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E210, &qword_20C690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B1CDC();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v29 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v26 = v11;
  v28 = 1;
  v14 = sub_1E1B80();
  v16 = v15;
  v25 = v14;
  v27 = 2;
  v17 = sub_1E1B80();
  v20 = v19;
  v21 = *(v6 + 8);
  v24 = v17;
  v21(v9, v5);
  v22 = v25;
  *a2 = v26;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v24;
  a2[5] = v20;

  sub_4E48(a1);
}

uint64_t _s13BookAnalytics9GenreDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_1E1D30() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B1CDC()
{
  result = qword_28E208;
  if (!qword_28E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E208);
  }

  return result;
}

unint64_t sub_1B1D5C()
{
  result = qword_28E218;
  if (!qword_28E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E218);
  }

  return result;
}

unint64_t sub_1B1DB4()
{
  result = qword_28E220;
  if (!qword_28E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E220);
  }

  return result;
}

unint64_t sub_1B1E0C()
{
  result = qword_28E228;
  if (!qword_28E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E228);
  }

  return result;
}

uint64_t sub_1B1E60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965726E6567 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726E6547627573 && a2 == 0xEA00000000006449 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
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

uint64_t sub_1B1FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974)
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

uint64_t sub_1B203C(uint64_t a1)
{
  v2 = sub_1B224C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B2078(uint64_t a1)
{
  v2 = sub_1B224C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AmpTreatmentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E230, &unk_20C8D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B224C();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_281BC0, &unk_1EDD80);
  sub_6E7F0(&qword_281190);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B224C()
{
  result = qword_28E238;
  if (!qword_28E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E238);
  }

  return result;
}

uint64_t AmpTreatmentData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E240, &qword_20C8E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B224C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_281BC0, &unk_1EDD80);
    sub_6E7F0(&qword_2811B8);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

unint64_t sub_1B24A0()
{
  result = qword_28E248;
  if (!qword_28E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E248);
  }

  return result;
}

unint64_t sub_1B24F8()
{
  result = qword_28E250;
  if (!qword_28E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E250);
  }

  return result;
}

unint64_t sub_1B2550()
{
  result = qword_28E258;
  if (!qword_28E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E258);
  }

  return result;
}

char *EventReporter.emitViewSupplementalContent(using:for:sourceIsAction:with:)(char *a1, uint64_t a2, uint64_t a3, char a4, id a5)
{
  if (a4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (a5)
  {
    v11 = [a5 intValue];
    v12 = a1;
    if (!a1)
    {
LABEL_8:
      result = sub_BFB78();
      v12 = result;
      if (!result)
      {
        return result;
      }
    }
  }

  else
  {
    v11 = 0;
    v12 = a1;
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  v14 = a5 == 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v12;
  *(v15 + 48) = v11;
  *(v15 + 52) = v14;
  *(v15 + 53) = v10;
  v16 = *&v12[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B3EB8;
  *(v17 + 24) = v15;
  v18 = a1;
  v19 = v5;

  v20 = v12;

  sub_1E10C0();
}

char *EventReporter.emitViewSupplementalContent(using:for:from:with:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = a1;
  if (a1 || (result = sub_BFB78(), (v11 = result) != 0))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v5;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = v11;
    *(v13 + 48) = a5;
    *(v13 + 52) = BYTE4(a5) & 1;
    *(v13 + 53) = v10;
    v14 = *&v11[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B415C;
    *(v15 + 24) = v13;
    v16 = a1;
    v17 = v5;

    v18 = v11;

    sub_1E10C0();
  }

  return result;
}

uint64_t sub_1B2904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void), int a7)
{
  v52 = a5;
  v13 = sub_1E1640();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a3;
  v18 = a3;
  v19 = a4;
  sub_7B51C(v18, a4, &v66);
  v20 = v66;
  sub_4C270();
  *v17 = sub_1E19E0();
  (*(v14 + 104))(v17, enum case for DispatchPredicate.notOnQueue(_:), v13);
  LOBYTE(a4) = sub_1E1660();
  result = (*(v14 + 8))(v17, v13);
  if (a4)
  {
    HIDWORD(v48) = v20;
    v49 = a6;
    LODWORD(v50) = a7;
    v51 = a1;
    v22 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v23 = v60;
    result = v60 + 32;
    v24 = -*(v60 + 16);
    v25 = -1;
    while (1)
    {
      v26 = v24 + v25;
      if (v24 + v25 == -1)
      {
        break;
      }

      if (++v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v27 = result + 40;
      sub_4C2BC(result, &v60);
      v29 = *(&v61 + 1);
      v28 = v62;
      sub_48B8(&v60, *(&v61 + 1));
      v30 = (*(v28 + 8))(a2, v53, v19, v29, v28);
      sub_4E48(&v60);
      result = v27;
      if (v30)
      {

        v31 = [v30 intValue];

        goto LABEL_8;
      }
    }

    v31 = 0;
LABEL_8:
    v32 = v26 == -1;
    v33 = v53;
    v34._countAndFlagsBits = v53;
    v34._object = v19;
    v35 = BATracker.contentPrivateID(for:)(v34);
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

    v38._countAndFlagsBits = v33;
    v38._object = v19;
    v39 = BATracker.contentUserID(for:)(v38);
    v67 = BYTE4(v49) & 1;
    v70 = v32;
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

    *&v60 = v33;
    *(&v60 + 1) = v19;
    LOBYTE(v61) = 2;
    *(&v61 + 1) = v71[0];
    DWORD1(v61) = *(v71 + 3);
    *(&v61 + 1) = countAndFlagsBits;
    *&v62 = object;
    *(&v62 + 1) = v40;
    *&v63 = v41;
    WORD4(v63) = 1025;
    HIDWORD(v63) = v31;
    LOBYTE(v64) = v32;
    BYTE3(v64) = v69;
    *(&v64 + 1) = v68;
    DWORD1(v64) = v49;
    BYTE8(v64) = v67;
    BYTE9(v64) = BYTE4(v48);
    *(&v64 + 10) = 33686272;
    v65 = 0uLL;
    LOBYTE(v54) = v50;
    v52 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v42 = sub_1E0CB0();
    v43 = *(v42 - 8);
    v53 = *(v43 + 72);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    v50 = xmmword_1E9970;
    *(v45 + 16) = xmmword_1E9970;
    v46 = enum case for DataEventTrait.onlyOnce(_:);
    v49 = *(v43 + 104);
    v49(v45 + v44, enum case for DataEventTrait.onlyOnce(_:), v42);
    sub_1B40AC();

    sub_1E0C00();

    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    v47 = swift_allocObject();
    *(v47 + 16) = v50;
    v49(v47 + v44, v46, v42);
    sub_4C164();
    sub_1E0C00();

    sub_14424(&v60);
    type metadata accessor for ViewSupplementalContentEvent(0);
    sub_1B4100(&qword_28E288, type metadata accessor for ViewSupplementalContentEvent);
    v54 = 0u;
    v55 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v54);
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2F0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(unint64_t), void *a6)
{
  v60 = a4;
  *&v59 = a3;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = 0uLL;
  LOBYTE(v86) = 2;
  *(&v86 + 1) = 0x73694C65736F6C63;
  v87 = 0xEE00666450664F74;
  v88 = 0uLL;
  if (a6)
  {
    v15 = [a6 intValue];
  }

  else
  {
    v15 = 0;
  }

  sub_4C270();
  *v14 = sub_1E19E0();
  (*(v11 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v16 = sub_1E1660();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    LODWORD(v55) = v15;
    v57 = a6;
    v58 = a5;
    v56 = a1;
    v18 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v19 = v74[0];
    result = v74[0] + 32;
    v20 = -*(v74[0] + 16);
    v21 = -1;
    while (1)
    {
      v22 = v20 + v21;
      if (v20 + v21 == -1)
      {
        break;
      }

      if (++v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v23 = result + 40;
      sub_4C2BC(result, v74);
      v25 = v75;
      v24 = v76;
      sub_48B8(v74, v75);
      v26 = (*(v24 + 8))(a2, v59, v60, v25, v24);
      sub_4E48(v74);
      result = v23;
      if (v26)
      {

        v27 = [v26 intValue];

        goto LABEL_11;
      }
    }

    v27 = 0;
LABEL_11:
    v28 = v22 == -1;
    v29 = v57 == 0;
    v30 = v59;
    v31._countAndFlagsBits = v59;
    v32 = v60;
    v31._object = v60;
    v33 = BATracker.contentPrivateID(for:)(v31);
    if (v33.value._object)
    {
      countAndFlagsBits = v33.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v33.value._object)
    {
      object = v33.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v37 = BATracker.contentUserID(for:)(v36);
    v83 = v28;
    v80 = v29;
    if (v37.value._object)
    {
      v38 = v37.value._countAndFlagsBits;
    }

    else
    {
      v38 = 0;
    }

    if (v37.value._object)
    {
      v39 = v37.value._object;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    *&v68 = v30;
    *(&v68 + 1) = v32;
    LOBYTE(v69) = 3;
    *(&v69 + 1) = *v84;
    DWORD1(v69) = *&v84[3];
    *(&v69 + 1) = countAndFlagsBits;
    *&v70 = object;
    *(&v70 + 1) = v38;
    *&v71 = v39;
    WORD4(v71) = 1025;
    HIDWORD(v71) = v27;
    LOBYTE(v72) = v28;
    BYTE3(v72) = v82;
    *(&v72 + 1) = v81;
    DWORD1(v72) = v55;
    BYTE8(v72) = v80;
    *(&v72 + 9) = 33751044;
    BYTE13(v72) = 2;
    v73 = 0uLL;
    LOBYTE(v74[0]) = 0;
    HIDWORD(v74[0]) = 0;
    v74[1] = 0;
    v74[2] = 0xE000000000000000;
    v75 = 0;
    v76 = 0xE000000000000000;
    v77 = 0;
    *&v78[0] = 0xE000000000000000;
    DWORD2(v78[2]) = 0;
    *(&v78[1] + 8) = 0u;
    *(v78 + 8) = 0u;
    BYTE12(v78[2]) = 1;
    *&v79 = 0;
    *(&v79 + 1) = 0xE000000000000000;
    v61 = LODWORD(v74[0]);
    v62 = 0xE000000000000000;
    v63 = 0xE000000000000000;
    v64 = v78[0];
    v66 = v78[2];
    v67 = v79;
    v65 = v78[1];
    v55 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v40 = sub_1E0CB0();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = *(v41 + 72);
    v44 = swift_allocObject();
    v59 = xmmword_1E9970;
    *(v44 + 16) = xmmword_1E9970;
    LODWORD(v57) = enum case for DataEventTrait.onlyOnce(_:);
    v58 = *(v41 + 104);
    v53 = v40;
    v58(v44 + v42);
    v52[1] = "v44@0:8@16@24B32@36";
    sub_14D258();

    sub_1E0C00();

    sub_28354(v74);
    v61 = xmmword_20CB10;
    *&v62 = 0x6450664F7473696CLL;
    *(&v62 + 1) = 0xE900000000000066;
    v54 = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = v59;
    v46 = v57;
    (v58)(v45 + v42, v57, v40);
    sub_1B4004();
    sub_1E0C00();
    swift_bridgeObjectRelease_n();

    v61 = v85;
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v47 = swift_allocObject();
    *(v47 + 16) = v59;
    v48 = v46;
    v49 = v53;
    v50 = v58;
    (v58)(v47 + v42, v48, v53);
    sub_1B4058();
    sub_1E0C00();

    sub_B5218(&v85);
    v63 = v70;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v61 = v68;
    v62 = v69;
    v51 = swift_allocObject();
    *(v51 + 16) = v59;
    (v50)(v51 + v42, v57, v49);
    sub_4C164();
    sub_1E0C00();

    sub_14424(&v68);
    type metadata accessor for ClickEvent(0);
    sub_1B4100(&qword_28E278, type metadata accessor for ClickEvent);
    v61 = 0u;
    v62 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v61);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_1B3680(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  if (a1 || (result = sub_BFB78(), (v13 = result) != 0))
  {
    v15 = swift_allocObject();
    v15[2] = v7;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = v13;
    v15[6] = a4;
    v16 = *&v13[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v17 = swift_allocObject();
    *(v17 + 16) = a7;
    *(v17 + 24) = v15;
    v18 = a4;

    v19 = a1;
    v20 = v7;

    v21 = v13;
    sub_1E10C0();
  }

  return result;
}

uint64_t sub_1B37A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v56 = a4;
  *&v55 = a3;
  v10 = sub_1E1640();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  v79 = 0u;
  v80 = 0u;
  LOBYTE(v81[0]) = 2;
  memset(v81 + 8, 0, 96);
  if (a6)
  {
    v15 = [a6 intValue];
  }

  else
  {
    v15 = 0;
  }

  sub_4C270();
  *v14 = sub_1E19E0();
  (*(v11 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v10);
  v16 = sub_1E1660();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v51 = v15;
    v53 = a6;
    v54 = a5;
    v52 = a1;
    v18 = *(a2 + OBJC_IVAR___BAEventReporter_dataProviders);
    sub_3D68(&qword_281B70, &qword_1E9980);
    sub_1E1330();
    v19 = v57;
    result = v57 + 32;
    v20 = -*(v57 + 16);
    v21 = -1;
    while (1)
    {
      v22 = v20 + v21;
      if (v20 + v21 == -1)
      {
        break;
      }

      if (++v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v23 = result + 40;
      sub_4C2BC(result, &v57);
      v25 = *(&v58 + 1);
      v24 = v59;
      sub_48B8(&v57, *(&v58 + 1));
      v26 = (*(v24 + 8))(a2, v55, v56, v25, v24);
      sub_4E48(&v57);
      result = v23;
      if (v26)
      {

        v27 = [v26 intValue];

        goto LABEL_11;
      }
    }

    v27 = 0;
LABEL_11:
    v28 = v22 == -1;
    v29 = v53 == 0;
    v30 = v55;
    v31._countAndFlagsBits = v55;
    v32 = v56;
    v31._object = v56;
    v33 = BATracker.contentPrivateID(for:)(v31);
    if (v33.value._object)
    {
      countAndFlagsBits = v33.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v33.value._object)
    {
      object = v33.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v37 = BATracker.contentUserID(for:)(v36);
    v76 = v28;
    v73 = v29;
    if (v37.value._object)
    {
      v38 = v37.value._countAndFlagsBits;
    }

    else
    {
      v38 = 0;
    }

    if (v37.value._object)
    {
      v39 = v37.value._object;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    *&v67 = v30;
    *(&v67 + 1) = v32;
    LOBYTE(v68) = 3;
    *(&v68 + 1) = *v77;
    DWORD1(v68) = *&v77[3];
    *(&v68 + 1) = countAndFlagsBits;
    *&v69 = object;
    *(&v69 + 1) = v38;
    *&v70 = v39;
    WORD4(v70) = 1025;
    HIDWORD(v70) = v27;
    LOBYTE(v71) = v28;
    BYTE3(v71) = v75;
    *(&v71 + 1) = v74;
    DWORD1(v71) = v51;
    BYTE8(v71) = v73;
    *(&v71 + 9) = 33751044;
    BYTE13(v71) = 2;
    v72 = 0uLL;
    v63 = v81[3];
    v64 = v81[4];
    v65 = v81[5];
    v66 = *&v81[6];
    v59 = v80;
    v60 = v81[0];
    v61 = v81[1];
    v62 = v81[2];
    v57 = v78;
    v58 = v79;
    v54 = sub_3D68(&qword_2828D0, &unk_1FD120);
    v40 = sub_1E0CB0();
    v41 = *(v40 - 8);
    v53 = *(v41 + 72);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    v55 = xmmword_1E9970;
    *(v43 + 16) = xmmword_1E9970;
    v44 = enum case for DataEventTrait.onlyOnce(_:);
    v50 = *(v41 + 104);
    v51 = enum case for DataEventTrait.onlyOnce(_:);
    v50(v43 + v42, enum case for DataEventTrait.onlyOnce(_:), v40);
    sub_98A8C();

    sub_1E0C00();

    sub_283A8(&v78);
    v57 = xmmword_20CB10;
    *&v58 = 0x6450664F7473696CLL;
    *(&v58 + 1) = 0xE900000000000066;
    v45 = swift_allocObject();
    *(v45 + 16) = v55;
    v46 = v44;
    v47 = v50;
    v50(v45 + v42, v46, v40);
    sub_1B4004();
    sub_1E0C00();
    swift_bridgeObjectRelease_n();

    v59 = v69;
    v60 = v70;
    v61 = v71;
    v62 = v72;
    v57 = v67;
    v58 = v68;
    v48 = swift_allocObject();
    *(v48 + 16) = v55;
    v47(v48 + v42, v51, v40);
    sub_4C164();
    sub_1E0C00();

    sub_14424(&v67);
    type metadata accessor for PageViewEvent(0);
    sub_1B4100(&qword_28E268, type metadata accessor for PageViewEvent);
    v57 = 0u;
    v58 = 0u;
    sub_1E0C10();
    return sub_4C1B8(&v57);
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3E0C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, uint64_t, uint64_t, void *))
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = a1;
  a6(a3, v10, v12, a5);
}

uint64_t sub_1B3EBC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 54, 7);
}

uint64_t sub_1B3F4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1B3F84()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1B4004()
{
  result = qword_28E260;
  if (!qword_28E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E260);
  }

  return result;
}

unint64_t sub_1B4058()
{
  result = qword_28E270;
  if (!qword_28E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E270);
  }

  return result;
}

unint64_t sub_1B40AC()
{
  result = qword_28E280;
  if (!qword_28E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E280);
  }

  return result;
}

uint64_t sub_1B4100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LoveEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 20);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LoveEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LoveEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LoveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LoveEvent(0);
  v5 = *(v4 + 20);
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = *(v4 + 24);
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v10 = *(*(v9 - 8) + 104);

  return v10(a1 + v8, v2, v9);
}

uint64_t LoveEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoveEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoveEvent.Model.init(contentData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v10 = *(type metadata accessor for LoveEvent.Model(0) + 24);
  v11 = sub_1E1150();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t sub_1B476C()
{
  v1 = 0x6974736567677573;
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

uint64_t sub_1B47E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B59F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4808(uint64_t a1)
{
  v2 = sub_1B4B18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B4844(uint64_t a1)
{
  v2 = sub_1B4B18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LoveEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E2C0, &qword_20CB20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-v7];
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B4B18();
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
    v20 = *(v2 + 96);
    v19[14] = 1;
    sub_284F8();
    sub_1E1C80();
    v17 = *(type metadata accessor for LoveEvent.Model(0) + 24);
    v20 = 2;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B4B18()
{
  result = qword_28E2C8;
  if (!qword_28E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E2C8);
  }

  return result;
}

uint64_t LoveEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1E1150();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_3D68(&qword_28E2D0, &qword_20CB28);
  v27 = *(v28 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v28);
  v10 = &v24 - v9;
  v11 = type metadata accessor for LoveEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  sub_48B8(a1, v15);
  sub_1B4B18();
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
  sub_28F9C();
  sub_1E1BB0();
  v14[96] = v30;
  v30 = 2;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v10, v19);
  (*(v25 + 32))(&v14[*(v24 + 24)], v18, v4);
  sub_1B4F64(v14, v26);
  sub_4E48(v29);
  return sub_1B4FC8(v14);
}

uint64_t sub_1B4F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4FC8(uint64_t a1)
{
  v2 = type metadata accessor for LoveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B50C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = *(a1 + 24);
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v11 = *(*(v10 - 8) + 104);

  return v11(a2 + v9, v4, v10);
}

uint64_t sub_1B5210(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

uint64_t sub_1B5388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

void sub_1B54F8()
{
  sub_1B5604(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_1B5604(319, &unk_27EAF8, sub_28F9C, sub_284F8);
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

void sub_1B5604(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1B5694(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B5754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_1B57F8()
{
  sub_1B588C();
  if (v0 <= 0x3F)
  {
    sub_1E1150();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B588C()
{
  if (!qword_27EBD8)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EBD8);
    }
  }
}

unint64_t sub_1B58F0()
{
  result = qword_28E408;
  if (!qword_28E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E408);
  }

  return result;
}

unint64_t sub_1B5948()
{
  result = qword_28E410;
  if (!qword_28E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E410);
  }

  return result;
}

unint64_t sub_1B59A0()
{
  result = qword_28E418;
  if (!qword_28E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E418);
  }

  return result;
}

uint64_t sub_1B59F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
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

uint64_t TabViewEvent.tabData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TabViewEvent.tabData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TabViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TabViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TabViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TabViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_28E450, &qword_20CD30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TabViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t TabViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TabViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TabViewEvent.Model.init(tabData:eventData:timedData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for TabViewEvent.Model(0);
  v8 = *(v7 + 20);
  v9 = sub_1E1150();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = sub_1E11A0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1B62B4()
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
    return 0x61746144626174;
  }
}

uint64_t sub_1B6318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6340(uint64_t a1)
{
  v2 = sub_1B6600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B637C(uint64_t a1)
{
  v2 = sub_1B6600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TabViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_28E458, &qword_20CD38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B6600();
  sub_1E1E00();
  v15[15] = *v3;
  v15[14] = 0;
  sub_19FDD0();
  sub_1E1CF0();
  if (!v2)
  {
    v11 = type metadata accessor for TabViewEvent.Model(0);
    v12 = *(v11 + 20);
    v15[13] = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v13 = *(v11 + 24);
    v15[12] = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B6600()
{
  result = qword_28E460;
  if (!qword_28E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E460);
  }

  return result;
}

uint64_t TabViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_1E11A0();
  v29 = *(v34 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v34);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_28E468, &qword_20CD40);
  v32 = *(v36 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v36);
  v11 = &v26 - v10;
  v12 = type metadata accessor for TabViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B6600();
  v35 = v11;
  v17 = v37;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v18 = v15;
  v37 = a1;
  v20 = v32;
  v19 = v33;
  v21 = v34;
  v40 = 0;
  sub_19FD78();
  sub_1E1C20();
  v28 = v18;
  *v18 = v41;
  v39 = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v22 = *(v19 + 32);
  v23 = v28;
  v27 = *(v12 + 20);
  v22(&v28[v27], v8, v5);
  v38 = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v24 = v31;
  sub_1E1C20();
  (*(v20 + 8))(v35, v36);
  (*(v29 + 32))(v23 + *(v12 + 24), v24, v21);
  sub_1B6ABC(v23, v30);
  sub_4E48(v37);
  return sub_1B6B20(v23);
}

uint64_t sub_1B6ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6B20(uint64_t a1)
{
  v2 = type metadata accessor for TabViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_28E450, &qword_20CD30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_1B6D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_28E450, &qword_20CD30);
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

uint64_t sub_1B6ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_28E450, &qword_20CD30);
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

void sub_1B703C()
{
  sub_1B70D8();
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

void sub_1B70D8()
{
  if (!qword_28E4D8)
  {
    sub_19FD78();
    sub_19FDD0();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_28E4D8);
    }
  }
}

uint64_t sub_1B7154(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1B7284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B73A4()
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

unint64_t sub_1B744C()
{
  result = qword_28E5A8;
  if (!qword_28E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5A8);
  }

  return result;
}

unint64_t sub_1B74A4()
{
  result = qword_28E5B0;
  if (!qword_28E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5B0);
  }

  return result;
}

unint64_t sub_1B74FC()
{
  result = qword_28E5B8;
  if (!qword_28E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5B8);
  }

  return result;
}

uint64_t sub_1B7550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144626174 && a2 == 0xE700000000000000;
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

uint64_t static RatingData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = *a2;
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

  if (*a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x6565726874)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v4 == 4)
      {
        if (v9 != 1920298854)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 1702259046)
      {
LABEL_34:
        v12 = sub_1E1D30();
        goto LABEL_35;
      }
    }
  }

  else if (*a2)
  {
    v11 = 0xE300000000000000;
    if (v4 == 1)
    {
      if (v9 != 6647407)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 7305076)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1B7824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
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

uint64_t sub_1B78A8(uint64_t a1)
{
  v2 = sub_1B7A6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B78E4(uint64_t a1)
{
  v2 = sub_1B7A6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RatingData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E5C0, &qword_20CF50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B7A6C();
  sub_1E1E00();
  v12 = v8;
  sub_1B7AC0();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B7A6C()
{
  result = qword_28E5C8;
  if (!qword_28E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5C8);
  }

  return result;
}

unint64_t sub_1B7AC0()
{
  result = qword_28E5D0;
  if (!qword_28E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5D0);
  }

  return result;
}

uint64_t RatingData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E5D8, &qword_20CF58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B7A6C();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1B7C80();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1B7C80()
{
  result = qword_28E5E0;
  if (!qword_28E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5E0);
  }

  return result;
}

unint64_t sub_1B7D30()
{
  result = qword_28E5E8;
  if (!qword_28E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5E8);
  }

  return result;
}

unint64_t sub_1B7D88()
{
  result = qword_28E5F0;
  if (!qword_28E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5F0);
  }

  return result;
}

unint64_t sub_1B7DE0()
{
  result = qword_28E5F8;
  if (!qword_28E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E5F8);
  }

  return result;
}

BookAnalytics::SelectedResultSection_optional __swiftcall SelectedResultSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261DA0;
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

uint64_t SelectedResultSection.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F74536B6F6F62;
  v4 = 0x6F6F626F69647561;
  if (v1 != 3)
  {
    v4 = 7105633;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972617262696CLL;
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

unint64_t sub_1B7F44()
{
  result = qword_28E600;
  if (!qword_28E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E600);
  }

  return result;
}

Swift::Int sub_1B7F98()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1B8084()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1B815C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1B8250(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000065;
  v6 = 0x726F74536B6F6F62;
  v7 = 0xEE0065726F74536BLL;
  v8 = 0x6F6F626F69647561;
  if (v2 != 3)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7972617262696CLL;
    v3 = 0xE700000000000000;
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

unint64_t sub_1B83B8()
{
  result = qword_28E608;
  if (!qword_28E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E608);
  }

  return result;
}

uint64_t UnifiedMessageExposureEvent.messageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnifiedMessageExposureEvent.messageData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UnifiedMessageExposureEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UnifiedMessageExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for UnifiedMessageExposureEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a1 + v10, v2, v11);
}

uint64_t UnifiedMessageExposureEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v10 = *(v1 + 88);
  v11 = v2;
  v4 = *(v1 + 136);
  v12 = *(v1 + 120);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
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

uint64_t UnifiedMessageExposureEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnifiedMessageExposureEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UnifiedMessageExposureEvent.Model.init(messageData:contentData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 32) = *(a1 + 32);
  v8 = a2[3];
  *(a5 + 88) = a2[2];
  *(a5 + 104) = v8;
  v9 = a2[5];
  *(a5 + 120) = a2[4];
  *(a5 + 136) = v9;
  v10 = a2[1];
  *(a5 + 56) = *a2;
  v11 = *(a1 + 24);
  v12 = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 24) = v11;
  *(a5 + 48) = v12;
  *(a5 + 72) = v10;
  v13 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  v14 = *(v13 + 24);
  v15 = sub_1E1150();
  (*(*(v15 - 8) + 32))(a5 + v14, a3, v15);
  v16 = *(v13 + 28);
  v17 = sub_1E11A0();
  v18 = *(*(v17 - 8) + 32);

  return v18(a5 + v16, a4, v17);
}

uint64_t sub_1B8DF4()
{
  v1 = 0x446567617373656DLL;
  v2 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0)
  {
    v1 = 0x44746E65746E6F63;
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

uint64_t sub_1B8E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA59C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8EA4(uint64_t a1)
{
  v2 = sub_1B930C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1B8EE0(uint64_t a1)
{
  v2 = sub_1B930C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnifiedMessageExposureEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_28E640, &qword_20D2B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1B930C();
  sub_1E1E00();
  v10 = *(v2 + 1);
  v11 = *(v2 + 2);
  v12 = v2[24];
  v13 = *(v2 + 6);
  v36 = *v2;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = *(v2 + 2);
  v41 = v13;
  v35 = 0;
  sub_12D1C4();

  v14 = v42;
  sub_1E1CF0();
  if (v14)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v42 = v5;

    v16 = *(v2 + 88);
    v17 = *(v2 + 120);
    v34[3] = *(v2 + 104);
    v34[4] = v17;
    v34[5] = *(v2 + 136);
    v18 = *(v2 + 56);
    v34[1] = *(v2 + 72);
    v34[2] = v16;
    v19 = *(v2 + 88);
    v20 = *(v2 + 120);
    v31 = *(v2 + 104);
    v32 = v20;
    v33 = *(v2 + 136);
    v34[0] = v18;
    v28 = *(v2 + 56);
    v29 = *(v2 + 72);
    v30 = v19;
    v27 = 1;
    sub_437B4(v34, v26);
    sub_143D0();
    sub_1E1C80();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v26[5] = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_440C0(v26);
    v21 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
    v22 = *(v21 + 24);
    v25 = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v23 = *(v21 + 28);
    v25 = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
    return (*(v42 + 8))(v8, v4);
  }
}

unint64_t sub_1B930C()
{
  result = qword_28E648;
  if (!qword_28E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E648);
  }

  return result;
}

uint64_t UnifiedMessageExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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
  v10 = sub_3D68(&qword_28E650, &qword_20D2C0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v46 = a1;
  sub_48B8(a1, v19);
  sub_1B930C();
  v44 = v14;
  v21 = v45;
  sub_1E1DF0();
  if (v21)
  {
    return sub_4E48(v46);
  }

  v45 = v9;
  v37 = v5;
  v22 = v18;
  v23 = v41;
  v53 = 0;
  sub_12D6FC();
  v24 = v42;
  sub_1E1C20();
  v25 = v47[24];
  v26 = v49;
  *v22 = v47[0];
  *(v22 + 8) = *&v47[8];
  *(v22 + 24) = v25;
  *(v22 + 32) = v48;
  *(v22 + 48) = v26;
  v53 = 1;
  sub_14CB8();
  sub_1E1BB0();
  v27 = v49;
  *(v22 + 88) = v48;
  *(v22 + 104) = v27;
  v28 = v51;
  *(v22 + 120) = v50;
  *(v22 + 136) = v28;
  v29 = *&v47[16];
  *(v22 + 56) = *v47;
  *(v22 + 72) = v29;
  v52 = 2;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  v30 = v45;
  v36 = v6;
  v35 = 0;
  sub_1E1C20();
  (*(v23 + 32))(v22 + *(v15 + 24), v30, v36);
  v52 = 3;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v31 = v37;
  v32 = v40;
  v33 = v44;
  sub_1E1C20();
  (*(v43 + 8))(v33, v24);
  (*(v38 + 32))(v22 + *(v15 + 28), v31, v32);
  sub_1B9940(v22, v39);
  sub_4E48(v46);
  return sub_1B99A4(v22);
}

uint64_t sub_1B9940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99A4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedMessageExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9AA0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_288330, &qword_1FDA50);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = enum case for EventProperty.optional<A>(_:);
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  v10 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v13 = *(*(v12 - 8) + 104);

  return v13(a2 + v11, v4, v12);
}

uint64_t sub_1B9C38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_288330, &qword_1FDA50);
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

uint64_t sub_1B9E04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_288330, &qword_1FDA50);
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

void sub_1B9FC8()
{
  sub_1BA0EC(319, &qword_2883E0, sub_12D6FC, sub_12D1C4);
  if (v0 <= 0x3F)
  {
    sub_1BA0EC(319, &qword_27E2C8, sub_14CB8, sub_143D0);
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

void sub_1BA0EC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1BA17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
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

uint64_t sub_1BA2B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
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

void sub_1BA3D8()
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

unint64_t sub_1BA498()
{
  result = qword_28E788;
  if (!qword_28E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E788);
  }

  return result;
}

unint64_t sub_1BA4F0()
{
  result = qword_28E790;
  if (!qword_28E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E790);
  }

  return result;
}

unint64_t sub_1BA548()
{
  result = qword_28E798;
  if (!qword_28E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E798);
  }

  return result;
}

uint64_t sub_1BA59C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446567617373656DLL && a2 == 0xEB00000000617461;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
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

uint64_t sub_1BA714()
{
  v1 = 0x7469736F50646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E654C6C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736F507472617473;
  }
}

uint64_t sub_1BA78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAD60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA7B4(uint64_t a1)
{
  v2 = sub_1BA9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BA7F0(uint64_t a1)
{
  v2 = sub_1BA9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScrubData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_28E7A0, &qword_20D4E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BA9E4();
  sub_1E1E00();
  v15 = 0;
  sub_1E1D00();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_1E1D00();
  v13 = 2;
  sub_1E1D00();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA9E4()
{
  result = qword_28E7A8;
  if (!qword_28E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7A8);
  }

  return result;
}

uint64_t ScrubData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E7B0, &qword_20D4F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BA9E4();
  sub_1E1DF0();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1E1C30();
    v18 = 1;
    v16 = sub_1E1C30();
    v17 = 2;
    v13 = sub_1E1C30();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1BAC5C()
{
  result = qword_28E7B8;
  if (!qword_28E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7B8);
  }

  return result;
}

unint64_t sub_1BACB4()
{
  result = qword_28E7C0;
  if (!qword_28E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7C0);
  }

  return result;
}

unint64_t sub_1BAD0C()
{
  result = qword_28E7C8;
  if (!qword_28E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7C8);
  }

  return result;
}

uint64_t sub_1BAD60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736F507472617473 && a2 == 0xED00006E6F697469;
  if (v4 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736F50646E65 && a2 == 0xEB000000006E6F69 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E654C6C61746F74 && a2 == 0xEB00000000687467)
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

uint64_t sub_1BAEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954)
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

uint64_t sub_1BAF34(uint64_t a1)
{
  v2 = sub_1BB0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BAF70(uint64_t a1)
{
  v2 = sub_1BB0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LocationData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E7D0, &qword_20D718);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BB0F8();
  sub_1E1E00();
  v12 = v8;
  sub_1BB14C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BB0F8()
{
  result = qword_28E7D8;
  if (!qword_28E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7D8);
  }

  return result;
}

unint64_t sub_1BB14C()
{
  result = qword_28E7E0;
  if (!qword_28E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7E0);
  }

  return result;
}

uint64_t LocationData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E7E8, &qword_20D720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BB0F8();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1BB30C();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1BB30C()
{
  result = qword_28E7F0;
  if (!qword_28E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7F0);
  }

  return result;
}

unint64_t sub_1BB3BC()
{
  result = qword_28E7F8;
  if (!qword_28E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E7F8);
  }

  return result;
}

unint64_t sub_1BB414()
{
  result = qword_28E800;
  if (!qword_28E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E800);
  }

  return result;
}

unint64_t sub_1BB46C()
{
  result = qword_28E808;
  if (!qword_28E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E808);
  }

  return result;
}

uint64_t sub_1BB4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657079546C616F67 && a2 == 0xE800000000000000)
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

uint64_t sub_1BB564(uint64_t a1)
{
  v2 = sub_1BB8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BB5A0(uint64_t a1)
{
  v2 = sub_1BB8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GoalAdjustTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E810, &qword_20D940);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BB8C4();
  sub_1E1E00();
  v12 = v8;
  sub_6E79C();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t GoalAdjustTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E820, &qword_20D948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BB8C4();
  sub_1E1DF0();
  if (!v2)
  {
    sub_6E904();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1BB8C4()
{
  result = qword_28E818;
  if (!qword_28E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E818);
  }

  return result;
}

unint64_t sub_1BB944()
{
  result = qword_28E828;
  if (!qword_28E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E828);
  }

  return result;
}

unint64_t sub_1BB99C()
{
  result = qword_28E830;
  if (!qword_28E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E830);
  }

  return result;
}

unint64_t sub_1BB9F4()
{
  result = qword_28E838;
  if (!qword_28E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E838);
  }

  return result;
}

uint64_t LinkData.previousAuthorID.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t LinkData.previousAuthorID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t LinkData.previousFlowcaseID.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t LinkData.previousFlowcaseID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t LinkData.previousBrickID.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t LinkData.previousBrickID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

unint64_t sub_1BBBC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000012;
    if (a1 != 8)
    {
      v4 = 0x73756F6976657270;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000010;
    }

    v5 = 0xD000000000000014;
    if (a1 == 5)
    {
      v5 = 0x73756F6976657270;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x697463416B6E696CLL;
    if (a1 != 3)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000011;
    if (a1)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBD60(uint64_t a1)
{
  v2 = sub_1BCA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BBD9C(uint64_t a1)
{
  v2 = sub_1BCA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E840, &qword_20DB68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v27 = v1[3];
  v28 = v10;
  v11 = v1[4];
  v25 = v1[5];
  v26 = v11;
  v24 = *(v1 + 48);
  v12 = v1[7];
  v23[11] = v1[8];
  v23[12] = v12;
  v13 = v1[10];
  v23[9] = v1[9];
  v23[10] = v13;
  v14 = v1[12];
  v23[7] = v1[11];
  v23[8] = v14;
  v15 = v1[14];
  v23[5] = v1[13];
  v23[6] = v15;
  v16 = v1[16];
  v23[3] = v1[15];
  v23[4] = v16;
  v17 = v1[18];
  v23[1] = v1[17];
  v23[2] = v17;
  v18 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BCA20();
  sub_1E1E00();
  v40 = 0;
  v19 = v7;
  v20 = v29;
  sub_1E1CB0();
  if (v20)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = v24;
  v39 = 1;
  sub_1E1C50();
  v38 = 2;
  sub_1E1C50();
  v37 = v21;
  v36 = 3;
  sub_1463DC();
  sub_1E1CF0();
  v35 = 4;
  sub_1E1C50();
  v34 = 5;
  sub_1E1C50();
  v33 = 6;
  sub_1E1C50();
  v32 = 7;
  sub_1E1C50();
  v31 = 8;
  sub_1E1C50();
  v30 = 9;
  sub_1E1C50();
  return (*(v4 + 8))(v19, v3);
}

uint64_t LinkData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_3D68(&qword_28E850, &qword_20DB70);
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v54);
  v8 = &v39 - v7;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BCA20();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v53 = a2;
    LOBYTE(v65[0]) = 0;
    v10 = sub_1E1BE0();
    v52 = v11;
    LOBYTE(v65[0]) = 1;
    v12 = v5;
    v13 = sub_1E1B80();
    v51 = v14;
    LOBYTE(v65[0]) = 2;
    *&v50 = sub_1E1B80();
    *(&v50 + 1) = v15;
    LOBYTE(v55) = 3;
    sub_146430();
    sub_1E1C20();
    v16 = LOBYTE(v65[0]);
    LOBYTE(v65[0]) = 4;
    v48 = sub_1E1B80();
    v49 = v17;
    LOBYTE(v65[0]) = 5;
    v45 = sub_1E1B80();
    v46 = v10;
    v47 = v18;
    LOBYTE(v65[0]) = 6;
    v19 = sub_1E1B80();
    v21 = v20;
    v44 = v19;
    LOBYTE(v65[0]) = 7;
    v22 = sub_1E1B80();
    v24 = v23;
    v42 = v22;
    v80 = v16;
    v43 = v12;
    LOBYTE(v65[0]) = 8;
    v41 = sub_1E1B80();
    v26 = v25;
    v81 = 9;
    v27 = sub_1E1B80();
    v40 = v28;
    v29 = v27;
    (*(v43 + 8))(v8, v54);
    *&v55 = v46;
    *(&v55 + 1) = v52;
    v39 = v13;
    *&v56 = v13;
    v30 = v51;
    *(&v56 + 1) = v51;
    v57 = v50;
    LOBYTE(v58) = v80;
    *(&v58 + 1) = v48;
    *&v59 = v49;
    *(&v59 + 1) = v45;
    *&v60 = v47;
    *(&v60 + 1) = v44;
    *&v61 = v21;
    *(&v61 + 1) = v42;
    *&v62 = v24;
    *(&v62 + 1) = v41;
    *&v63 = v26;
    v31 = v40;
    *(&v63 + 1) = v29;
    v64 = v40;
    v32 = v53;
    *(v53 + 144) = v40;
    v33 = v60;
    v32[4] = v59;
    v32[5] = v33;
    v34 = v58;
    v32[2] = v57;
    v32[3] = v34;
    v35 = v63;
    v36 = v61;
    v32[7] = v62;
    v32[8] = v35;
    v32[6] = v36;
    v37 = v56;
    *v32 = v55;
    v32[1] = v37;
    sub_275C4(&v55, v65);
    sub_4E48(a1);
    v65[0] = v46;
    v65[1] = v52;
    v65[2] = v39;
    v65[3] = v30;
    v66 = v50;
    v67 = v80;
    v68 = v48;
    v69 = v49;
    v70 = v45;
    v71 = v47;
    v72 = v44;
    v73 = v21;
    v74 = v42;
    v75 = v24;
    v76 = v41;
    v77 = v26;
    v78 = v29;
    v79 = v31;
    return sub_283A8(v65);
  }
}

uint64_t _s13BookAnalytics8LinkDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v32 = *(a1 + 56);
  v36 = *(a1 + 64);
  v27 = *(a1 + 72);
  v34 = *(a1 + 80);
  v30 = *(a1 + 96);
  v19 = *(a1 + 104);
  v26 = *(a1 + 112);
  v15 = *(a1 + 120);
  v22 = *(a1 + 128);
  v23 = *(a1 + 88);
  v13 = *(a1 + 136);
  v18 = *(a1 + 144);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v31 = *(a2 + 56);
  v35 = *(a2 + 64);
  v28 = *(a2 + 72);
  v33 = *(a2 + 80);
  v29 = *(a2 + 96);
  v24 = *(a2 + 88);
  v25 = *(a2 + 112);
  v20 = *(a2 + 104);
  v21 = *(a2 + 128);
  v14 = *(a2 + 136);
  v16 = *(a2 + 120);
  v17 = *(a2 + 144);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v4 != v9 || v5 != v10) && (sub_1E1D30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (sub_201BC(v6, v11))
  {
    if (v36)
    {
      if (!v35 || (v32 != v31 || v36 != v35) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v35)
    {
      return 0;
    }

    if (v34)
    {
      if (!v33 || (v27 != v28 || v34 != v33) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v33)
    {
      return 0;
    }

    if (v30)
    {
      if (!v29 || (v23 != v24 || v30 != v29) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (v26)
    {
      if (!v25 || (v19 != v20 || v26 != v25) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    if (v22)
    {
      if (!v21 || (v15 != v16 || v22 != v21) && (sub_1E1D30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    if (v18)
    {
      if (v17 && (v13 == v14 && v18 == v17 || (sub_1E1D30() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v17)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1BCA20()
{
  result = qword_28E848;
  if (!qword_28E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E848);
  }

  return result;
}

__n128 sub_1BCA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1BCAB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1BCAF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCB80()
{
  result = qword_28E858;
  if (!qword_28E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E858);
  }

  return result;
}

unint64_t sub_1BCBD8()
{
  result = qword_28E860;
  if (!qword_28E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E860);
  }

  return result;
}

unint64_t sub_1BCC30()
{
  result = qword_28E868;
  if (!qword_28E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E868);
  }

  return result;
}

uint64_t sub_1BCC84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000000215260 == a2;
  if (v3 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000215280 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000002152A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463416B6E696CLL && a2 == 0xEE00657079546E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000002152D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xEF444965726E6547 || (sub_1E1D30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000215300 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000215320 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000215340 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xEF44496B63697242)
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

uint64_t sub_1BCFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000000217550 == a2)
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

uint64_t sub_1BD07C(uint64_t a1)
{
  v2 = sub_1BD298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BD0B8(uint64_t a1)
{
  v2 = sub_1BD298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingNowData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E870, &qword_20DDF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BD298();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_28E880, &qword_20DE00);
  sub_1BD49C(&qword_28E888, sub_1AB7C0);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BD298()
{
  result = qword_28E878;
  if (!qword_28E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E878);
  }

  return result;
}

uint64_t ReadingNowData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E890, &qword_20DE08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BD298();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_28E880, &qword_20DE00);
    sub_1BD49C(&qword_28E898, sub_1AB768);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_1BD49C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_28E880, &qword_20DE00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD570()
{
  result = qword_28E8A0;
  if (!qword_28E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8A0);
  }

  return result;
}

unint64_t sub_1BD5C8()
{
  result = qword_28E8A8;
  if (!qword_28E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8A8);
  }

  return result;
}

unint64_t sub_1BD620()
{
  result = qword_28E8B0;
  if (!qword_28E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8B0);
  }

  return result;
}

uint64_t sub_1BD68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000)
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

uint64_t sub_1BD714(uint64_t a1)
{
  v2 = sub_1BD8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BD750(uint64_t a1)
{
  v2 = sub_1BD8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FontSizeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28E8B8, &qword_20E030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BD8C4();
  sub_1E1E00();
  sub_1E1CE0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BD8C4()
{
  result = qword_28E8C0;
  if (!qword_28E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8C0);
  }

  return result;
}

uint64_t FontSizeData.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_3D68(&qword_28E8C8, &qword_20E038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BD8C4();
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

unint64_t sub_1BDAB8()
{
  result = qword_28E8D0;
  if (!qword_28E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8D0);
  }

  return result;
}

unint64_t sub_1BDB10()
{
  result = qword_28E8D8;
  if (!qword_28E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8D8);
  }

  return result;
}

unint64_t sub_1BDB68()
{
  result = qword_28E8E0;
  if (!qword_28E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8E0);
  }

  return result;
}

uint64_t ClickData.TargetType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_261E38;
  v9._object = a2;
  v6 = sub_1E1B70(v5, v9);

  v8 = 11;
  if (v6 < 0xB)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t ClickData.TargetType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6E61576F54646461;
    v8 = 0x6E6F74747562;
    v9 = 7959906;
    if (v1 != 3)
    {
      v9 = 0x6574656C6564;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6D61536F69647561;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x706D615364616572;
    v3 = 0x64616F6C6572;
    if (v1 != 9)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x7373696D736964;
    v5 = 0x64616F6C6E776F64;
    if (v1 != 6)
    {
      v5 = 0x657461676976616ELL;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_1BDD88()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DF780();
  return sub_1E1DE0();
}

Swift::Int sub_1BDDD8()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1DF780();
  return sub_1E1DE0();
}

uint64_t sub_1BDE28@<X0>(uint64_t *a1@<X8>)
{
  result = ClickData.TargetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ClickData.init(with:linkActionType:index:url:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E09E0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  sub_1E09D0();
  sub_1E09A0();
  (*(v13 + 8))(v16, v12);
  result = sub_1E1910();
  if (v17 <= 4)
  {
    v29 = 0x6E61576F54646461;
    v22 = 0xE600000000000000;
    v30 = 0x6E6F74747562;
    v31 = 0xE300000000000000;
    v32 = 7959906;
    if (v17 != 3)
    {
      v32 = 0x6574656C6564;
      v31 = 0xE600000000000000;
    }

    if (v17 != 2)
    {
      v30 = v32;
      v22 = v31;
    }

    v25 = 0xEB00000000656C70;
    if (v17)
    {
      v29 = 0x6D61536F69647561;
    }

    else
    {
      v25 = 0xEF646165526F5474;
    }

    v27 = v17 <= 1;
    if (v17 <= 1)
    {
      v28 = v29;
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    v21 = 0x706D615364616572;
    v22 = 0xE600000000000000;
    v23 = 0x64616F6C6572;
    if (v17 != 9)
    {
      v23 = 0xD000000000000014;
      v22 = 0x8000000000213310;
    }

    if (v17 == 8)
    {
      v22 = 0xEA0000000000656CLL;
    }

    else
    {
      v21 = v23;
    }

    v24 = 0x7373696D736964;
    v25 = 0xE800000000000000;
    v26 = 0x64616F6C6E776F64;
    if (v17 != 6)
    {
      v26 = 0x657461676976616ELL;
      v25 = 0xE800000000000000;
    }

    if (v17 == 5)
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v24 = v26;
    }

    v27 = v17 <= 7;
    if (v17 <= 7)
    {
      v28 = v24;
    }

    else
    {
      v28 = v21;
    }
  }

  if (v27)
  {
    v33 = v25;
  }

  else
  {
    v33 = v22;
  }

  *a6 = result;
  *(a6 + 8) = v20;
  *(a6 + 16) = v18;
  *(a6 + 24) = v28;
  *(a6 + 32) = v33;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t SectionData.ComponentContained.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_261F60;
  v9._object = a2;
  v6 = sub_1E1B70(v5, v9);

  v8 = 5;
  if (v6 < 5)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t SectionData.ComponentContained.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x756B636F4C706F74;
  v4 = 0x6143736569726573;
  if (v1 != 3)
  {
    v4 = 0x7465656873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x68736F6F7773;
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

Swift::Int sub_1BE1E0()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_1BE2C4()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1BE394()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_1BE480(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000070;
  v6 = 0x756B636F4C706F74;
  v7 = 0xEA00000000006472;
  v8 = 0x6143736569726573;
  if (v2 != 3)
  {
    v8 = 0x7465656873;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x68736F6F7773;
    v3 = 0xE600000000000000;
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

double SectionData.init(sectionID:name:sectionType:componentContained:exposureIndex:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a6;
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
  v11 = 0xE900000000000070;
  v12 = 0x756B636F4C706F74;
  v13 = 0xEA00000000006472;
  v14 = 0x6143736569726573;
  if (v8 != 3)
  {
    v14 = 0x7465656873;
    v13 = 0xE500000000000000;
  }

  if (v8 != 2)
  {
    v12 = v14;
    v11 = v13;
  }

  if (*a6)
  {
    v10 = 0x68736F6F7773;
    v9 = 0xE600000000000000;
  }

  if (*a6 <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (*a6 > 1u)
  {
    v9 = v11;
  }

  *a8 = *a5;
  *(a8 + 4) = a7;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0xE000000000000000;
  *(a8 + 40) = v15;
  *(a8 + 48) = v9;
  result = 0.0;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 88) = 0;
  *(a8 + 92) = 1;
  *(a8 + 96) = a1;
  *(a8 + 104) = a2;
  return result;
}

unint64_t sub_1BE6B4()
{
  result = qword_28E8E8;
  if (!qword_28E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8E8);
  }

  return result;
}

unint64_t sub_1BE70C()
{
  result = qword_28E8F0;
  if (!qword_28E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8F0);
  }

  return result;
}

unint64_t sub_1BE780()
{
  result = qword_28E8F8;
  if (!qword_28E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28E8F8);
  }

  return result;
}

uint64_t AppAnalyticsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E16A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppAnalyticsAction.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppAnalyticsAction(0) + 20);

  return sub_1BE8A4(v3, a1);
}

uint64_t sub_1BE8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAnalyticsAction.Type(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppAnalyticsAction.init(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1690();
  v4 = a2 + *(type metadata accessor for AppAnalyticsAction(0) + 20);

  return sub_1BE974(a1, v4);
}

uint64_t sub_1BE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAnalyticsAction.Type(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E16A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AppAnalyticsAction.Type(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BEAF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E16A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AppAnalyticsAction.Type(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BEBEC()
{
  result = sub_1E16A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppAnalyticsAction.Type(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BECC0()
{
  sub_1BEDB4();
  if (v0 <= 0x3F)
  {
    sub_1BEE68();
    if (v1 <= 0x3F)
    {
      sub_1BEEE4();
      if (v2 <= 0x3F)
      {
        sub_1BEF50();
        if (v3 <= 0x3F)
        {
          sub_1BEFC4();
          if (v4 <= 0x3F)
          {
            sub_1BF034();
            if (v5 <= 0x3F)
            {
              sub_1BF094();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BEDB4()
{
  if (!qword_28EA10)
  {
    sub_5DE50(&qword_27FD08, &qword_1E94F0);
    sub_5DE50(&qword_28EA18, &unk_20E4C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28EA10);
    }
  }
}

void sub_1BEE68()
{
  if (!qword_28EA20)
  {
    sub_5DE50(&qword_285BB0, &qword_20EAA0);
    sub_1E13A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA20);
    }
  }
}

unint64_t sub_1BEEE4()
{
  result = qword_28EA28;
  if (!qword_28EA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28EA28);
  }

  return result;
}

void sub_1BEF50()
{
  if (!qword_28EA30)
  {
    sub_5DE50(&qword_28C0B8, &qword_20E4D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA30);
    }
  }
}

void sub_1BEFC4()
{
  if (!qword_28EA38)
  {
    sub_1E09E0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28EA38);
    }
  }
}

void sub_1BF034()
{
  if (!qword_28EA40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28EA40);
    }
  }
}

void sub_1BF094()
{
  if (!qword_28EA48)
  {
    sub_5DE50(&qword_28EA50, &qword_20E4D8);
    sub_5DE50(&unk_28EA58, &qword_20E4E0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28EA48);
    }
  }
}

uint64_t static ReviewTypeData.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x776569766572;
  if (v3 != 2)
  {
    v6 = 0x6E41776569766572;
    v5 = 0xEF676E6974615264;
  }

  v7 = 0x676E69746172;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE600000000000000;
  v12 = 0x776569766572;
  if (*a2 != 2)
  {
    v12 = 0x6E41776569766572;
    v11 = 0xEF676E6974615264;
  }

  if (*a2)
  {
    v2 = 0x676E69746172;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
  }

  return v15 & 1;
}

uint64_t sub_1BF28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954776569766572 && a2 == 0xEA00000000006570)
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

uint64_t sub_1BF31C(uint64_t a1)
{
  v2 = sub_1BF4E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1BF358(uint64_t a1)
{
  v2 = sub_1BF4E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReviewTypeData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_28EA88, &qword_20E510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BF4E0();
  sub_1E1E00();
  v12 = v8;
  sub_1BF534();
  sub_1E1CF0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BF4E0()
{
  result = qword_28EA90;
  if (!qword_28EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EA90);
  }

  return result;
}

unint64_t sub_1BF534()
{
  result = qword_28EA98;
  if (!qword_28EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EA98);
  }

  return result;
}

uint64_t ReviewTypeData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_28EAA0, &qword_20E518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_1BF4E0();
  sub_1E1DF0();
  if (!v2)
  {
    sub_1BF6F4();
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return sub_4E48(a1);
}

unint64_t sub_1BF6F4()
{
  result = qword_28EAA8;
  if (!qword_28EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EAA8);
  }

  return result;
}

unint64_t sub_1BF7A4()
{
  result = qword_28EAB0;
  if (!qword_28EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EAB0);
  }

  return result;
}

unint64_t sub_1BF7FC()
{
  result = qword_28EAB8;
  if (!qword_28EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EAB8);
  }

  return result;
}

unint64_t sub_1BF854()
{
  result = qword_28EAC0;
  if (!qword_28EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28EAC0);
  }

  return result;
}

uint64_t DataStack.subscript.getter(uint64_t *a1)
{
  v2 = *v1;
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_A2F4(*a1, a1[1]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

uint64_t DataStack.first<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  sub_3D68(&qword_28EAE8, &qword_20E740);
  sub_EC07C(&qword_28EAF0, &qword_28EAE8, &qword_20E740);
  sub_1E1B60();

  sub_5DE50(&qword_28EAF8, &qword_20E748);
  sub_1E1A20();
  sub_EC07C(&qword_28EB00, &qword_28EAF8, &qword_20E748);
  sub_1E1B00();
  swift_getWitnessTable();
  sub_1E1B10();
  swift_getWitnessTable();
  sub_1E1B00();
  sub_EC07C(&qword_28EB08, &qword_28EAF8, &qword_20E748);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E1940();
}

uint64_t sub_1BFBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_173E78(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_A2F4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1746BC();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1D612C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t DataStackID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1E17D0();
}

Swift::Int DataStackID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1DC0();
  sub_1E17D0();
  return sub_1E1DE0();
}

Swift::Int sub_1BFCFC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E1DC0();
  sub_1E17D0();
  return sub_1E1DE0();
}

void *sub_1BFD44@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1BFD50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v8[1] = a2[1];
  v8[2] = v4;
  v8[0] = v5;

  v6 = DataStack.subscript.getter(v8);

  *a3 = v6;
  return result;
}

uint64_t sub_1BFDB4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return sub_1BFBB0(v5, v3, v4);
}

uint64_t (*DataStack.subscript.modify(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v5 = *a2;
  v4 = a2[1];
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;
  v6 = *v2;
  v7 = *(v6 + 16);

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = sub_A2F4(v5, v4);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + 8 * v8);

LABEL_6:
  *a1 = v10;
  return sub_1BFEC0;
}

uint64_t sub_1BFEC0(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1BFBB0(*a1, v3, v2);
  }

  v6 = *a1;

  sub_1BFBB0(v7, v3, v2);
}

uint64_t sub_1BFF3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_E9C4C(v8, v11);
      if (sub_1C008C(v11, a2))
      {
        sub_E9CB0(v11, v12);
        goto LABEL_8;
      }

      ++v7;
      sub_4E48(v11);
      v8 += 48;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);

    result = sub_4E48(v11);
    __break(1u);
  }

  else
  {
LABEL_6:
    memset(v12, 0, sizeof(v12));
LABEL_8:
    sub_3D68(&qword_285BB8, &unk_210050);
    v9 = swift_dynamicCast();
    return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
  }

  return result;
}

uint64_t sub_1C008C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_E9C4C(v5, v10);
  sub_3D68(&qword_285BB0, &qword_20EAA0);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = result;
    (*(v3 + 8))(v7, a2);
    return v9;
  }

  return result;
}

uint64_t DataStack.first<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_1C2654;
  v8[5] = v7;
  swift_bridgeObjectRetain_n();
  sub_3D68(&qword_28EB10, &qword_20E750);
  sub_EC07C(&qword_28EB18, &qword_28EB10, &qword_20E750);
  sub_1E1B60();

  sub_5DE50(&qword_28EB20, &qword_20E758);
  sub_1E1A20();
  sub_EC07C(&qword_28EB28, &qword_28EB20, &qword_20E758);
  sub_1E1B00();
  swift_getWitnessTable();
  sub_1E1B10();
  swift_getWitnessTable();
  sub_1E1B00();
  sub_EC07C(&qword_28EB30, &qword_28EB20, &qword_20E758);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E1940();
}

uint64_t sub_1C0480@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a6;
  v10 = sub_1E1A20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  *&v29 = *a1;
  *(&v29 + 1) = v20;
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = a2 + 32;
    while (1)
    {
      sub_E9C4C(v22, v32);
      if (sub_1C008C(v32, a4))
      {
        break;
      }

      sub_4E48(v32);
      v22 += 48;
      if (!--v21)
      {
        goto LABEL_5;
      }
    }

    sub_E9CB0(v32, v33);
  }

  else
  {
LABEL_5:
    memset(v33, 0, sizeof(v33));
  }

  sub_3D68(&qword_285BB8, &unk_210050);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if (v23)
  {
    v24(v15, 0, 1, a4);
    (*(v16 + 32))(v19, v15, a4);
    v32[0] = v29;

    sub_1E1AC0();
    v25 = v31;
    *&v32[0] = v30;
    (*(a5 + 24))(v33, v32, a4, a5);
    sub_A7F4(v33);
    (*(v16 + 8))(v19, a4);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v24(v15, 1, 1, a4);
    (*(v11 + 8))(v15, v10);
    v25 = v31;
  }

  return (v24)(v25, v26, 1, a4);
}

uint64_t sub_1C078C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  v6 = *v5;
  v7 = *v5 + 64;
  v8 = 1 << *(*v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*v5 + 64);
  v11 = (v8 + 63) >> 6;
  v56 = enum case for DataEventTrait.onlyOnce(_:);
  v55 = v6;

  v13 = 0;
  v49 = v11;
  v50 = v7;
  while (v10)
  {
LABEL_10:
    v51 = v10;
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(v55 + 48) + 16 * v15);
    v58 = *v16;
    v17 = *(*(v55 + 56) + 8 * v15);
    v18 = *(v17 + 16);
    v60 = v16[1];

    v59 = v17;

    v57 = v18;
    if (v18)
    {
      v19 = 0;
      v20 = v17 + 32;
      while (v19 < *(v59 + 16))
      {
        sub_E9C4C(v20, v76);
        sub_E9C4C(v76, &v74);
        sub_E9C4C(&v74, &v67);
        sub_3D68(&qword_285BB0, &qword_20EAA0);
        sub_3D68(&qword_28EB90, &qword_20EAA8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v64, v71);
          v26 = v72;
          v27 = v73;
          sub_48B8(v71, v72);
          *&v64 = v58;
          *(&v64 + 1) = v60;

          sub_1E1AC0();
          v61[0] = v55;
          v28 = *(v27 + 24);
          *(&v65 + 1) = v26;
          v66 = v27;
          sub_16305C(&v64);
          v28(&v67, v61, v26, v27);
          sub_A7F4(&v67);
          v29 = *(&v65 + 1);
          v30 = v66;
          v31 = sub_48B8(&v64, *(&v65 + 1));
          v68 = v29;
          v69 = *(v30 + 8);
          v70 = *(v30 + 16);
          v32 = sub_16305C(&v67);
          (*(*(v29 - 8) + 16))(v32, v31, v29);
          sub_4E48(&v74);
          sub_E9CB0(&v67, &v74);
          sub_4E48(&v64);
          sub_4E48(v71);
        }

        else
        {
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          sub_18E48(&v64, &qword_28EB98, &qword_20EAB0);
        }

        sub_E9C4C(&v74, &v67);
        sub_3D68(&qword_28EBA0, &qword_20EAB8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v64, v71);
          sub_17AA4(a2, &v67, &qword_283810, &unk_20EAE0);
          if (v68)
          {
            sub_7EE7C(&v67, &v64);
            v33 = v72;
            v34 = v73;
            sub_48B8(v71, v72);
            v61[0] = v58;
            v61[1] = v60;

            sub_1E1AC0();
            v35 = *(v34 + 24);
            v62 = v33;
            v63 = v34;
            sub_16305C(v61);
            v35(&v67, &v64, v33, v34);
            sub_A7F4(&v67);
            v36 = v62;
            v37 = v63;
            v38 = sub_48B8(v61, v62);
            v68 = v36;
            v69 = *(v37 + 8);
            v70 = *(v37 + 16);
            v39 = sub_16305C(&v67);
            (*(*(v36 - 8) + 16))(v39, v38, v36);
            sub_4E48(&v64);
            sub_4E48(&v74);
            sub_E9CB0(&v67, &v74);
            sub_4E48(v61);
          }

          else
          {
            sub_18E48(&v67, &qword_283810, &unk_20EAE0);
          }

          sub_4E48(v71);
        }

        else
        {
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          sub_18E48(&v64, &qword_28EBA8, &qword_20EAC0);
        }

        sub_E9C4C(&v74, &v67);
        sub_3D68(&qword_28EBB0, &qword_20EAC8);
        if (swift_dynamicCast())
        {
          sub_7EE7C(&v64, v71);
          if ((a4 & 1) == 0)
          {
            v40 = v72;
            v41 = v73;
            sub_48B8(v71, v72);
            *&v64 = v58;
            *(&v64 + 1) = v60;

            sub_1E1AC0();
            v42 = *(v41 + 24);
            *(&v65 + 1) = v40;
            v66 = v41;
            sub_16305C(&v64);
            v42(&v67, a3, 0, v40, v41);
            sub_A7F4(&v67);
            v43 = *(&v65 + 1);
            v44 = v66;
            v45 = sub_48B8(&v64, *(&v65 + 1));
            v68 = v43;
            v69 = *(v44 + 8);
            v70 = *(v44 + 16);
            v46 = sub_16305C(&v67);
            (*(*(v43 - 8) + 16))(v46, v45, v43);
            sub_4E48(&v74);
            sub_E9CB0(&v67, &v74);
            sub_4E48(&v64);
          }

          sub_4E48(v71);
        }

        else
        {
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          sub_18E48(&v64, &qword_28EBB8, &unk_20EAD0);
        }

        ++v19;
        sub_48B8(&v74, v75);
        sub_3D68(&qword_2828D0, &unk_1FD120);
        v21 = sub_1E0CB0();
        v22 = *(v21 - 8);
        v23 = *(v22 + 72);
        v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1E9970;
        (*(v22 + 104))(v25 + v24, v56, v21);
        sub_1E0C00();

        sub_4E48(&v74);
        result = sub_4E48(v76);
        v20 += 48;
        if (v57 == v19)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_4:
    v10 = (v51 - 1) & v51;

    v11 = v49;
    v7 = v50;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return a5(v47);
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1C0F20()
{
  result = sub_325A8(_swiftEmptyArrayStorage);
  qword_28EAC8 = result;
  return result;
}

uint64_t sub_1C0F48@<X0>(void *a1@<X8>)
{
  if (qword_27D768 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_28EAC8;
}

uint64_t sub_1C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C2C08();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues._dataStack.getter()
{
  sub_A848();

  return sub_1E1490();
}

uint64_t EnvironmentValues._dataStack.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_A848();
  return sub_1E14A0();
}

uint64_t (*EnvironmentValues._dataStack.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_A848();
  sub_1E1490();
  return sub_1C1104;
}

uint64_t sub_1C1104(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_1E14A0();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_1E14A0();
  }
}

uint64_t View.appAnalyticsData<A>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a6;
  v24 = a5;
  v12 = sub_1E1A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  sub_3D68(&qword_28EB38, &qword_20E760);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E9970;
  (*(v13 + 16))(v16, a1, v12);
  v18 = *(a3 - 8);
  if ((*(v18 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 32) = 0u;
  }

  else
  {
    v20 = v24;
    v19 = v25;
    *(v17 + 56) = a3;
    *(v17 + 64) = v20;
    *(v17 + 72) = v19;
    v21 = sub_16305C((v17 + 32));
    (*(v18 + 32))(v21, v16, a3);
  }

  View.appAnalyticsData(_:for:)(v17, a2, a4, a7);
}

uint64_t View.appAnalyticsData(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16[0] = a1;
  v16[1] = a4;
  v6 = sub_1E1440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  v11 = *a2;
  v12 = a2[1];
  KeyPath = swift_getKeyPath();
  v18 = 0;
  sub_1E1530();
  sub_A2E8(KeyPath, v18);
  swift_getKeyPath();
  v13 = swift_allocObject();
  v13[2] = v16[0];
  v13[3] = v11;
  v13[4] = v12;
  v14 = sub_1C2718();
  v16[2] = a3;
  v16[3] = v14;

  swift_getWitnessTable();
  sub_1E1510();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C1584(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = a2 + 32;
    do
    {
      sub_17AA4(v8, &v24, &qword_285BB8, &unk_210050);
      v22[0] = v24;
      v22[1] = v25;
      v22[2] = v26;
      if (*(&v25 + 1))
      {
        sub_E9CB0(v22, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_102EC0(0, v7[2] + 1, 1, v7);
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v7 = sub_102EC0((v9 > 1), v10 + 1, 1, v7);
        }

        v7[2] = v10 + 1;
        sub_E9CB0(v23, &v7[6 * v10 + 4]);
      }

      else
      {
        sub_18E48(v22, &qword_285BB8, &unk_210050);
      }

      v8 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *&v24 = v7;
  sub_3D68(&qword_28EBC0, &qword_20EAF0);
  sub_EC07C(&qword_28EBC8, &qword_28EBC0, &qword_20EAF0);
  if ((sub_1E1930() & 1) == 0)
  {
  }

  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_A2F4(a3, a4), (v13 & 1) != 0))
  {
    *&v24 = *(*(v11 + 56) + 8 * v12);

    sub_1C1810(v7);
    v14 = v24;

    v15 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[0] = *a1;
    *a1 = 0x8000000000000000;
    sub_173E78(v14, a3, a4, isUniquelyReferenced_nonNull_native);

    v18 = *&v23[0];
  }

  else
  {

    v19 = *a1;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v24 = *a1;
    *a1 = 0x8000000000000000;
    sub_173E78(v7, a3, a4, v20);

    v18 = v24;
  }

  *a1 = v18;
  return result;
}