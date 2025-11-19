uint64_t sub_10A748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E11A0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10A84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t sub_10A95C()
{
  result = qword_2871C0;
  if (!qword_2871C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2871C0);
  }

  return result;
}

unint64_t sub_10A9B4()
{
  result = qword_2871C8;
  if (!qword_2871C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2871C8);
  }

  return result;
}

unint64_t sub_10AA0C()
{
  result = qword_2871D0;
  if (!qword_2871D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2871D0);
  }

  return result;
}

uint64_t YearInReviewViewEvent.yIRDetailedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t YearInReviewViewEvent.yIRDetailedData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t YearInReviewViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t YearInReviewViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_287208, &qword_1FBB80);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for YearInReviewViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

void YearInReviewViewEvent.Model.yIRDetailedData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t YearInReviewViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for YearInReviewViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t YearInReviewViewEvent.Model.init(yIRDetailedData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  v10 = type metadata accessor for YearInReviewViewEvent.Model(0);
  v11 = *(v10 + 20);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  v13 = *(v10 + 24);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(a4 + v13, a3, v14);
}

uint64_t sub_10B230()
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
    return 0x6961746544524979;
  }
}

uint64_t sub_10B2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10C4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10B2C8(uint64_t a1)
{
  v2 = sub_10B5A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10B304(uint64_t a1)
{
  v2 = sub_10B5A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YearInReviewViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_287210, &qword_1FBB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10B5A0();
  sub_1E1E00();
  v11 = *(v3 + 8);
  v12 = v3[2];
  v13 = *(v3 + 24);
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v18[15] = 0;
  sub_6F5B8();
  sub_1E1CF0();
  if (!v2)
  {
    v14 = type metadata accessor for YearInReviewViewEvent.Model(0);
    v15 = *(v14 + 20);
    LOBYTE(v19) = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v16 = *(v14 + 24);
    LOBYTE(v19) = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10B5A0()
{
  result = qword_287218;
  if (!qword_287218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287218);
  }

  return result;
}

uint64_t YearInReviewViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1E11A0();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v31);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_3D68(&qword_287220, &qword_1FBB90);
  v33 = *(v36 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v36);
  v11 = &v28 - v10;
  v12 = type metadata accessor for YearInReviewViewEvent.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10B5A0();
  v35 = v11;
  v17 = v37;
  sub_1E1DF0();
  if (v17)
  {
    return sub_4E48(a1);
  }

  v18 = v15;
  v37 = a1;
  v20 = v33;
  v19 = v34;
  v42 = 0;
  sub_6F560();
  sub_1E1C20();
  v21 = v39;
  v22 = v40;
  v23 = v41;
  *v18 = v38;
  *(v18 + 8) = v21;
  *(v18 + 16) = v22;
  *(v18 + 24) = v23;
  LOBYTE(v38) = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v24 = *(v32 + 32);
  v28 = *(v12 + 20);
  v24(v18 + v28, v8, v5);
  LOBYTE(v38) = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v25 = v19;
  v26 = v31;
  sub_1E1C20();
  (*(v20 + 8))(v35, v36);
  (*(v29 + 32))(v18 + *(v12 + 24), v25, v26);
  sub_10BA6C(v18, v30);
  sub_4E48(v37);
  return sub_10BAD0(v18);
}

uint64_t sub_10BA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YearInReviewViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BAD0(uint64_t a1)
{
  v2 = type metadata accessor for YearInReviewViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_287208, &qword_1FBB80);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_10BD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_287208, &qword_1FBB80);
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

uint64_t sub_10BE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_287208, &qword_1FBB80);
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

void sub_10BFEC()
{
  sub_10C088();
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

void sub_10C088()
{
  if (!qword_287290)
  {
    sub_6F560();
    sub_6F5B8();
    v0 = sub_1E0C90();
    if (!v1)
    {
      atomic_store(v0, &qword_287290);
    }
  }
}

uint64_t sub_10C104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1150();
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
    v12 = sub_1E11A0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10C20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E1150();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1E11A0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_10C30C()
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

unint64_t sub_10C3B4()
{
  result = qword_287360;
  if (!qword_287360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287360);
  }

  return result;
}

unint64_t sub_10C40C()
{
  result = qword_287368;
  if (!qword_287368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287368);
  }

  return result;
}

unint64_t sub_10C464()
{
  result = qword_287370;
  if (!qword_287370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287370);
  }

  return result;
}

uint64_t sub_10C4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6961746544524979 && a2 == 0xEF6174614464656CLL;
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

uint64_t ShareSeriesEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSeriesEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareSeriesEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareSeriesEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareSeriesEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ShareSeriesEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareSeriesEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareSeriesEvent.Model.init(seriesData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v7;
  *(a4 + 2) = a1[2];
  v8 = type metadata accessor for ShareSeriesEvent.Model(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1150();
  (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v11 = *(v8 + 24);
  v12 = sub_1E11A0();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a4[v11], a3, v12);
}

uint64_t sub_10CC9C(uint64_t a1)
{
  v2 = sub_10CFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10CCD8(uint64_t a1)
{
  v2 = sub_10CFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShareSeriesEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_2873A8, &qword_1FBDA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10CFC8();
  sub_1E1E00();
  v11 = v3[1];
  v28[0] = *v3;
  v12 = *v3;
  v13 = v3[1];
  v14 = v3[2];
  v28[1] = v11;
  v28[2] = v14;
  v25 = v12;
  v26 = v13;
  v27 = v3[2];
  v24 = 0;
  sub_CF18(v28, &v21);
  sub_D57C();
  sub_1E1CF0();
  if (v2)
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_D5D0(&v21);
  }

  else
  {
    v21 = v25;
    v22 = v26;
    v23 = v27;
    sub_D5D0(&v21);
    v15 = type metadata accessor for ShareSeriesEvent.Model(0);
    v16 = *(v15 + 20);
    v20 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData);
    sub_1E1CF0();
    v17 = *(v15 + 24);
    v20 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10CFC8()
{
  result = qword_2873B0;
  if (!qword_2873B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2873B0);
  }

  return result;
}

uint64_t ShareSeriesEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1E11A0();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1150();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3D68(&qword_2873B8, &qword_1FBDB0);
  v32 = *(v35 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v35);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ShareSeriesEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v37 = a1;
  sub_48B8(a1, v17);
  sub_10CFC8();
  v34 = v12;
  v19 = v36;
  sub_1E1DF0();
  if (v19)
  {
    return sub_4E48(v37);
  }

  v20 = v16;
  v36 = v5;
  v22 = v32;
  v21 = v33;
  v42 = 0;
  sub_DAD8();
  sub_1E1C20();
  v23 = v40;
  v24 = v20;
  *v20 = v39;
  *(v20 + 1) = v23;
  *(v20 + 2) = v41;
  LOBYTE(v38) = 1;
  sub_4EE8(&qword_27D830, &type metadata accessor for EventData);
  sub_1E1C20();
  v28 = v13;
  (*(v21 + 32))(&v20[*(v13 + 20)], v9, v6);
  LOBYTE(v38) = 2;
  sub_4EE8(&qword_27D838, &type metadata accessor for TimedData);
  v25 = v36;
  v26 = v31;
  sub_1E1C20();
  (*(v22 + 8))(v34, v35);
  (*(v29 + 32))(v24 + *(v28 + 24), v25, v26);
  sub_10D4D0(v24, v30);
  sub_4E48(v37);
  return sub_10D534(v24);
}

uint64_t sub_10D4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareSeriesEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10D534(uint64_t a1)
{
  v2 = type metadata accessor for ShareSeriesEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_10D7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
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

uint64_t sub_10D940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10DA84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
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

unint64_t sub_10DBBC()
{
  result = qword_2874F0;
  if (!qword_2874F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2874F0);
  }

  return result;
}

unint64_t sub_10DC14()
{
  result = qword_2874F8;
  if (!qword_2874F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2874F8);
  }

  return result;
}

unint64_t sub_10DC6C()
{
  result = qword_287500;
  if (!qword_287500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287500);
  }

  return result;
}

uint64_t GiftEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 20);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 28);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GiftEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GiftEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GiftEvent(0);
  v5 = v4[5];
  v6 = enum case for EventProperty.optional<A>(_:);
  v7 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  v9 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t GiftEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GiftEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GiftEvent.Model.init(contentData:contentStoreData:contentExposureData:suggestionData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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
  v18 = *(type metadata accessor for GiftEvent.Model(0) + 32);
  v19 = sub_1E1150();
  v20 = *(*(v19 - 8) + 32);

  return v20(a6 + v18, a5, v19);
}

unint64_t sub_10E664()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0xD000000000000013;
  v4 = 0x6974736567677573;
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

uint64_t sub_10E724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10FF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10E74C(uint64_t a1)
{
  v2 = sub_10ECAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10E788(uint64_t a1)
{
  v2 = sub_10ECAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GiftEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287538, &qword_1FBFC0);
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_10ECAC();
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
    sub_284F8();
    sub_1E1C80();
    v30 = *(type metadata accessor for GiftEvent.Model(0) + 32);
    v33 = 4;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v19 + 8))(v16, v9);
  }
}

unint64_t sub_10ECAC()
{
  result = qword_287540;
  if (!qword_287540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287540);
  }

  return result;
}

uint64_t GiftEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1E1150();
  v29 = *(v31 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3D68(&qword_287548, &qword_1FBFC8);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for GiftEvent.Model(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  v54 = a1;
  sub_48B8(a1, v13);
  sub_10ECAC();
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
  sub_28F9C();
  sub_1E1BB0();
  v11[286] = v36;
  v36 = 4;
  sub_14E5C(&qword_27D830);
  v26 = v31;
  sub_1E1C20();
  (*(v22 + 8))(0, v16);
  (*(v29 + 32))(&v11[*(v28 + 32)], v34, v26);
  sub_10F230(v11, v30);
  sub_4E48(v54);
  return sub_10F294(v11);
}

uint64_t sub_10F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GiftEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F294(uint64_t a1)
{
  v2 = type metadata accessor for GiftEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10F390@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v12 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_10F574(uint64_t a1, uint64_t a2, int *a3)
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

  v15 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

uint64_t sub_10F794(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  v17 = sub_3D68(&qword_27EA10, &qword_1E71E0);
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

void sub_10F9AC()
{
  sub_10FB58(319, &qword_27E2C8, sub_14CB8, sub_143D0);
  if (v0 <= 0x3F)
  {
    sub_10FB58(319, &qword_2800D8, sub_4FB64, sub_4F01C);
    if (v1 <= 0x3F)
    {
      sub_10FB58(319, &qword_2800E0, sub_4FBB8, sub_4F070);
      if (v2 <= 0x3F)
      {
        sub_10FB58(319, &unk_27EAF8, sub_28F9C, sub_284F8);
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

void sub_10FB58(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_10FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10FCA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

void sub_10FD4C()
{
  sub_19FE0(319, &qword_2801C0);
  if (v0 <= 0x3F)
  {
    sub_19FE0(319, &qword_2801C8);
    if (v1 <= 0x3F)
    {
      sub_19FE0(319, &qword_27EBD8);
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

unint64_t sub_10FE54()
{
  result = qword_287690;
  if (!qword_287690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287690);
  }

  return result;
}

unint64_t sub_10FEAC()
{
  result = qword_287698;
  if (!qword_287698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287698);
  }

  return result;
}

unint64_t sub_10FF04()
{
  result = qword_2876A0;
  if (!qword_2876A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2876A0);
  }

  return result;
}

uint64_t sub_10FF58(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
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

BookAnalytics::UpSellLocation_optional __swiftcall UpSellLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260F50;
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

uint64_t UpSellLocation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6964616552626F65;
  if (*v0 != 2)
  {
    v2 = 0x4E676E6964616572;
  }

  if (*v0)
  {
    v1 = 16718;
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

unint64_t sub_11020C()
{
  result = qword_2876A8;
  if (!qword_2876A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2876A8);
  }

  return result;
}

Swift::Int sub_110260()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_110320()
{
  *v0;
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_1103CC()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_110494(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6964616552626F65;
  if (*v1 != 2)
  {
    v5 = 0x4E676E6964616572;
    v4 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v3 = 16718;
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

unint64_t sub_1105D0()
{
  result = qword_2876B0;
  if (!qword_2876B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2876B0);
  }

  return result;
}

id sub_110624()
{
  result = [objc_allocWithZone(type metadata accessor for AppManager()) init];
  qword_2876B8 = result;
  return result;
}

id static AppManager.shared.getter()
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2876B8;

  return v1;
}

uint64_t sub_110730(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

void sub_11079C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1107FC()
{
  v1 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_110848()
{
  v1 = v0;
  v2 = sub_1E0F70();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v0[OBJC_IVAR___BAAppManager_applicationGroupIdentifier];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR___BAAppManager_uploadBatchEventConfig] = 0;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [v5 BOOLForKey:@"BAAppAnalyticsUseDebugProcessor"];

  v7 = 0;
  if (v6)
  {
    type metadata accessor for DebugEventProcessor();
    swift_allocObject();
    v7 = sub_171350();
  }

  *&v1[OBJC_IVAR___BAAppManager_debugProcessor] = v7;
  v1[OBJC_IVAR___BAAppManager_enableUploads] = 0;
  *&v1[OBJC_IVAR___BAAppManager_flushManager] = 0;
  v8 = OBJC_IVAR___BAAppManager_targetURL;
  v9 = sub_1E0930();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  sub_1E0B30();
  sub_1E0DC0();
  sub_1E0DB0();
  v16 = sub_1E0C30();
  v17 = &protocol witness table for CrashDetector;
  v15 = sub_1E0C20();
  sub_1E0F60();
  *&v1[OBJC_IVAR___BAAppManager_appSessionManager] = sub_1E0B20();
  sub_1E1050();
  v10 = [objc_opt_self() mainBundle];
  *&v1[OBJC_IVAR___BAAppManager_client] = sub_1E1040();
  v14.receiver = v1;
  v14.super_class = type metadata accessor for AppManager();
  v11 = objc_msgSendSuper2(&v14, "init");
  sub_113D90();
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v11 selector:"privacyAcknowledgementNotification:" name:@"BAPrivacyAcknowledgementChanged" object:0];

  return v11;
}

void sub_110B00(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR___BAAppManager_enableUploads) = a3;
  sub_110B44(a1, a2);
  sub_110D58();
  sub_110E60();
  v4 = *(v3 + OBJC_IVAR___BAAppManager_appSessionManager);
  sub_1E0B00();
}

uint64_t sub_110B44(uint64_t a1, uint64_t a2)
{
  v5 = sub_3D68(&qword_287EC0, &qword_205170);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21[-v7];
  v9 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21[-v11];
  v13 = &v2[OBJC_IVAR___BAAppManager_applicationGroupIdentifier];
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = a1;
  *(v13 + 1) = a2;

  v15 = sub_1E0930();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_114310(v12, &v2[v16]);
  swift_endAccess();
  v17 = sub_1E1900();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v19 = v2;
  sub_170D1C(0, 0, v8, &unk_1FC3B8, v18);
}

void sub_110D58()
{
  if (*(v0 + OBJC_IVAR___BAAppManager_enableUploads) == 1)
  {
    v1 = v0;
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_1E1770();
    [v2 BOOLForKey:v3];

    sub_1E0F10();
    v4 = sub_1E0F00();
    v5 = sub_1E0EF0();

    v6 = sub_1E0EE0();
    v7 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v8 = *(v1 + v7);
    *(v1 + v7) = v6;
  }
}

void sub_110E60()
{
  if (*(v0 + OBJC_IVAR___BAAppManager_enableUploads) == 1)
  {
    v1 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if (v2)
    {
      sub_1E0BB0();
      v3 = *(v0 + OBJC_IVAR___BAAppManager_appSessionManager);
      v4 = *(v0 + OBJC_IVAR___BAAppManager_client);
      v5 = sub_1E1000();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      v8 = v2;

      v9 = v4;
      sub_1E0FF0();
      swift_unknownObjectRetain();
      v10 = sub_1E0B90();
      v11 = *(v0 + OBJC_IVAR___BAAppManager_flushManager);
      *(v0 + OBJC_IVAR___BAAppManager_flushManager) = v10;
    }
  }
}

uint64_t sub_1110B8()
{
  *(v1 + 40) = v0;
  v2 = *(*(sub_3D68(&qword_2876E8, &qword_1FC308) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_111154, 0, 0);
}

uint64_t sub_111154()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v1 + v3, v2);
  v4 = sub_1E0930();
  LODWORD(v1) = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_113828(v2);
  if (v1 == 1)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_111374;
    v6 = v0[5];

    return sub_111834();
  }

  else
  {
    v8 = *(v0[5] + OBJC_IVAR___BAAppManager_flushManager);
    v0[10] = v8;
    if (v8)
    {
      v9 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];

      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_1116D0;

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    else
    {
      v11 = v0[6];

      v12 = v0[1];

      return v12();
    }
  }
}

uint64_t sub_111374()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_111470, 0, 0);
}

uint64_t sub_111470()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_111558;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_111558()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_111670, 0, 0);
}

uint64_t sub_111670()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1116D0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1117CC, 0, 0);
}

uint64_t sub_1117CC()
{
  v1 = v0[10];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_111834()
{
  v1[6] = v0;
  v2 = sub_1E0930();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[9] = v5;
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_11192C;

  return sub_1122A0(v5);
}

uint64_t sub_11192C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_111D50;
  }

  else
  {
    v3 = sub_111A40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_111A40()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1E0900(v5);
  v7 = v6;
  v8 = sub_1E1770();
  [v4 setURL:v7 forKey:v8];

  (*(v2 + 8))(v1, v3);
  v9 = v0[6];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v9;
  v11 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_111BD8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_111BD8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_111CF0, 0, 0);
}

uint64_t sub_111CF0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_111D50()
{
  v21 = v0;
  if (qword_27D040 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1E1360();
  sub_3B2C(v2, qword_2802A8);
  swift_errorRetain();
  v3 = sub_1E1340();
  v4 = sub_1E1980();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_1E1D70();
    v14 = sub_DD91C(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "No URL found for Upload Session Processor: %s", v7, 0xCu);
    sub_4E48(v8);
  }

  else
  {
  }

  v15 = v0[6];
  v16 = swift_task_alloc();
  v0[12] = v16;
  *(v16 + 16) = v15;
  v17 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_111BD8;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_111FA4(uint64_t a1)
{
  v2 = sub_3D68(&qword_282650, &qword_1EFF18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1E0BA0();
}

id AppManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppManager()
{
  result = qword_287730;
  if (!qword_287730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_112210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7E674;

  return sub_111834();
}

uint64_t sub_1122A0(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v3 = *(*(sub_3D68(&qword_2876E8, &qword_1FC308) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_112384, 0, 0);
}

uint64_t sub_112384()
{
  v1 = v0[49];
  v2 = v0[42];
  v3 = OBJC_IVAR___BAAppManager_targetURL;
  v0[50] = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v2 + v3, v1);
  v4 = sub_1E0930();
  v0[51] = v4;
  v5 = *(v4 - 8);
  v0[52] = v5;
  v6 = *(v5 + 48);
  if (v6(v1, 1, v4) == 1)
  {
    v7 = v0[42];
    sub_113828(v0[49]);
    v8 = sub_112F3C();
    if (v8 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          v25 = v0[43];
          sub_1E1780();
          sub_1E0920();

          v10 = v6(v25, 1, v4);
          if (v10 != 1)
          {
            v26 = v0[47];
            v27 = v0[41];
            (*(v5 + 32))(v27, v0[43], v4);
            (*(v5 + 16))(v26, v27, v4);
            (*(v5 + 56))(v26, 0, 1, v4);
            swift_beginAccess();
            sub_114310(v26, v2 + v3);
            goto LABEL_21;
          }

          goto LABEL_29;
        }

        v13 = v0[44];
        sub_1E1780();
        sub_1E0920();

        v10 = v6(v13, 1, v4);
        if (v10 != 1)
        {
          v14 = v0[47];
          v15 = v0[41];
          (*(v5 + 32))(v15, v0[44], v4);
          (*(v5 + 16))(v14, v15, v4);
          (*(v5 + 56))(v14, 0, 1, v4);
          swift_beginAccess();
          sub_114310(v14, v2 + v3);
          goto LABEL_21;
        }

        goto LABEL_27;
      }

      v19 = v0[45];
      sub_1E1780();
      sub_1E0920();

      v10 = v6(v19, 1, v4);
      if (v10 != 1)
      {
        v20 = v0[47];
        v21 = v0[41];
        (*(v5 + 32))(v21, v0[45], v4);
        (*(v5 + 16))(v20, v21, v4);
        (*(v5 + 56))(v20, 0, 1, v4);
        swift_beginAccess();
        sub_114310(v20, v2 + v3);
        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v8)
      {
        v16 = [objc_opt_self() defaultBag];
        v17 = [v16 appAnalyticsURL];
        v0[53] = v17;

        v0[2] = v0;
        v0[7] = v0 + 39;
        v0[3] = sub_112AA4;
        v18 = swift_continuation_init();
        v0[17] = sub_3D68(&qword_287750, &qword_1FC3A8);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_1131E4;
        v0[13] = &unk_26DAC0;
        v0[14] = v18;
        [v17 valueWithCompletion:v0 + 10];
        v10 = (v0 + 2);

        return _swift_continuation_await(v10);
      }

      if (v8 != 1)
      {
        v22 = v0[46];
        sub_1E1780();
        sub_1E0920();

        v10 = v6(v22, 1, v4);
        if (v10 != 1)
        {
          v23 = v0[47];
          v24 = v0[41];
          (*(v5 + 32))(v24, v0[46], v4);
          (*(v5 + 16))(v23, v24, v4);
          (*(v5 + 56))(v23, 0, 1, v4);
          swift_beginAccess();
          sub_114310(v23, v2 + v3);
          goto LABEL_21;
        }

        goto LABEL_28;
      }

      v9 = v0[48];
      sub_1E1780();
      sub_1E0920();

      v10 = v6(v9, 1, v4);
      if (v10 != 1)
      {
        v11 = v0[47];
        v12 = v0[41];
        (*(v5 + 32))(v12, v0[48], v4);
        (*(v5 + 16))(v11, v12, v4);
        (*(v5 + 56))(v11, 0, 1, v4);
        swift_beginAccess();
        sub_114310(v11, v2 + v3);
LABEL_21:
        swift_endAccess();
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return _swift_continuation_await(v10);
  }

  (*(v5 + 32))(v0[41], v0[49], v4);
LABEL_22:
  v29 = v0[48];
  v28 = v0[49];
  v31 = v0[46];
  v30 = v0[47];
  v33 = v0[44];
  v32 = v0[45];
  v34 = v0[43];

  v35 = v0[1];

  return v35();
}

uint64_t sub_112AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  if (v2)
  {
    v3 = sub_112CFC;
  }

  else
  {
    v3 = sub_112BB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_112BB4()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 376);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 312);

  sub_1E0910();
  (*(v1 + 16))(v4, v5, v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_114310(v4, v6 + v3);
  swift_endAccess();
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  v14 = *(v0 + 344);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_112CFC()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[43];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[54];

  return v10();
}

uint64_t sub_112DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_282650, &qword_1EFF18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if (!*(a2 + OBJC_IVAR___BAAppManager_flushManager))
  {
    return sub_1E18E0();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);

  sub_1E0BA0();
}

uint64_t sub_112F3C()
{
  v1 = (v0 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  if (!v1[1] || (v2 = *v1, v3 = objc_allocWithZone(NSUserDefaults), , v4 = sub_1E1770(), , v5 = [v3 initWithSuiteName:v4], v4, !v5))
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  v6 = [v5 stringForKey:@"BAEnvironment"];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1E1780();
  v10 = v9;

  v11 = v8 == 7759204 && v10 == 0xE300000000000000;
  if (v11 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  v13 = v8 == 24945 && v10 == 0xE200000000000000;
  if (!v13 && (sub_1E1D30() & 1) == 0)
  {
    v14 = v8 == 1953719668 && v10 == 0xE400000000000000;
    if (v14 || (sub_1E1D30() & 1) != 0)
    {

      return 3;
    }

    if (v8 == 0x676E6967617473 && v10 == 0xE700000000000000 || (sub_1E1D30() & 1) != 0)
    {

      return 4;
    }

    if (v8 == 1685025392 && v10 == 0xE400000000000000)
    {

      return 5;
    }

    v15 = sub_1E1D30();

    if (v15)
    {
      return 5;
    }

    return 0;
  }

  return 2;
}

uint64_t sub_1131E4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_48B8((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_3D68(&qword_287758, &qword_210300);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

void sub_1132C4()
{
  v0 = BUOnboardingBooksBundleID();
  if (!v0)
  {
    sub_1E1780();
    v0 = sub_1E1770();
  }

  v1 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v0];

  if ((v1 & 1) == 0)
  {
    sub_1E0DC0();
    v2 = sub_1E0DB0();
    sub_1E0DA0();
  }
}

uint64_t AppManager.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0930();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR___BAAppManager_targetURL;
  swift_beginAccess();
  sub_1137B8(v1 + v15, v14);
  v16 = *(v4 + 48);
  if (v16(v14, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v14, v3);
  }

  sub_113828(v14);
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = sub_1E1770();
  v19 = [v17 URLForKey:v18];

  if (v19)
  {
    sub_1E0910();

    v14 = v7;
    return (*(v4 + 32))(a1, v14, v3);
  }

  sub_1E1780();
  sub_1E0920();

  result = (v16)(v12, 1, v3);
  v14 = v12;
  if (result != 1)
  {
    return (*(v4 + 32))(a1, v14, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1137B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_113828(uint64_t a1)
{
  v2 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppManager.name.getter()
{
  v0 = sub_112F3C();
  v1 = 0x61622D736B6F6F62;
  if (v0 == 2)
  {
    v1 = 0x61712D736B6F6F62;
  }

  if (v0 == 1)
  {
    return 0x65642D736B6F6F62;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_113A58()
{
  v1 = (v0 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_113AB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_113B0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_113B80()
{
  sub_113D38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_113D38()
{
  if (!qword_287D80)
  {
    sub_1E0930();
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_287D80);
    }
  }
}

uint64_t sub_113D90()
{
  v0 = sub_1E15E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_1E1610();
  v5 = *(v17[0] - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17[0]);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E15F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4C270();
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v14 = sub_1E1A10();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_1132C4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26DA20;
  v15 = _Block_copy(aBlock);
  sub_1E1600();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1140BC();
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_114114();
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v15);

  (*(v1 + 8))(v4, v0);
  return (*(v5 + 8))(v8, v17[0]);
}

uint64_t sub_1140A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1140BC()
{
  result = qword_287740;
  if (!qword_287740)
  {
    sub_1E15E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287740);
  }

  return result;
}

unint64_t sub_114114()
{
  result = qword_287748;
  if (!qword_287748)
  {
    sub_5DE50(&unk_287C10, &qword_1FC390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287748);
  }

  return result;
}

uint64_t sub_1141F4()
{
  v1 = sub_3D68(&qword_282650, &qword_1EFF18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_11428C()
{
  v1 = *(sub_3D68(&qword_282650, &qword_1EFF18) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E18E0();
}

uint64_t sub_114310(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_2876E8, &qword_1FC308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_114380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1143C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_7E674;

  return sub_112210();
}

uint64_t PurchaseFailEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.contentStoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentStoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 24);
  v4 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.contentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.contentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 28);
  v4 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.prevAltContentExposureData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.prevAltContentExposureData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 32);
  v4 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 36);
  v4 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.purchaseFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 40);
  v4 = sub_3D68(&qword_287790, &unk_1FC3C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.purchaseFailData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 40);
  v4 = sub_3D68(&qword_287790, &unk_1FC3C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.upSellData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 44);
  v4 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 48);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 48);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.suggestionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.suggestionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 52);
  v4 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 56);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.uppParentContentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 56);
  v4 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 60);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseFailEvent(0) + 60);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PurchaseFailEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.optional<A>(_:);
  v3 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PurchaseFailEvent(0);
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
  v17 = sub_3D68(&qword_287790, &unk_1FC3C0);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  v21 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  v25 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  v27 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v6, v27);
}

uint64_t PurchaseFailEvent.Model.purchaseFailData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 396);
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 432);
  *a1 = *(v1 + 392);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 416);
  *(a1 + 40) = v5;
}

uint64_t PurchaseFailEvent.Model.upSellData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 456);
  *a1 = *(v1 + 440);
  *(a1 + 16) = v2;
}

uint64_t PurchaseFailEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[58];
  v3 = v1[59];
  v4 = v1[60];
  v5 = v1[61];
  v6 = v1[62];
  v7 = v1[63];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t PurchaseFailEvent.Model.uppParentContentData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  v4 = *(v1 + 536);
  v5 = *(v1 + 544);
  v6 = *(v1 + 552);
  v7 = *(v1 + 560);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 568);
  return sub_4E2A0(v2, v3);
}

uint64_t PurchaseFailEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseFailEvent.Model(0) + 60);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseFailEvent.Model.init(altContentTypeExposureData:contentData:contentStoreData:contentExposureData:prevAltContentExposureData:purchaseData:purchaseFailData:upSellData:seriesData:suggestionData:uppParentContentData:eventData:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, char *a11, uint64_t a12, uint64_t a13)
{
  v14 = *a5;
  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 16);
  v18 = *(a6 + 17);
  v20 = a6[3];
  v19 = a6[4];
  v21 = *a7;
  v22 = *(a7 + 1);
  v23 = a7[8];
  v24 = *(a8 + 16);
  v25 = *a11;
  v26 = *(a12 + 48);
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[2];
  *(a9 + 41) = *(a1 + 41);
  *(a9 + 16) = v28;
  *(a9 + 32) = v29;
  *a9 = v27;
  v30 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v30;
  v31 = a2[5];
  *(a9 + 128) = a2[4];
  *(a9 + 144) = v31;
  v32 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v32;
  v33 = *a3;
  v34 = a3[1];
  v35 = a3[2];
  v36 = a3[3];
  *(a9 + 221) = *(a3 + 61);
  *(a9 + 192) = v35;
  *(a9 + 208) = v36;
  *(a9 + 160) = v33;
  *(a9 + 176) = v34;
  v37 = *a4;
  v38 = a4[1];
  v39 = a4[3];
  *(a9 + 264) = a4[2];
  *(a9 + 280) = v39;
  *(a9 + 248) = v38;
  *(a9 + 232) = v37;
  v40 = a4[4];
  v41 = a4[5];
  v42 = a4[6];
  *(a9 + 342) = *(a4 + 110);
  *(a9 + 312) = v41;
  *(a9 + 328) = v42;
  *(a9 + 296) = v40;
  *(a9 + 350) = v14;
  *(a9 + 352) = v15;
  *(a9 + 360) = v16;
  *(a9 + 368) = v17;
  *(a9 + 369) = v18;
  *(a9 + 376) = v20;
  *(a9 + 384) = v19;
  *(a9 + 392) = v21;
  *(a9 + 396) = v22;
  *(a9 + 400) = v23;
  v43 = *(a7 + 2);
  *(a9 + 408) = *(a7 + 1);
  *(a9 + 424) = v43;
  *(a9 + 440) = *a8;
  *(a9 + 456) = v24;
  v44 = a10[1];
  *(a9 + 464) = *a10;
  *(a9 + 480) = v44;
  *(a9 + 496) = a10[2];
  *(a9 + 512) = v25;
  v45 = *(a12 + 16);
  *(a9 + 520) = *a12;
  *(a9 + 536) = v45;
  *(a9 + 552) = *(a12 + 32);
  *(a9 + 568) = v26;
  v46 = *(type metadata accessor for PurchaseFailEvent.Model(0) + 60);
  v47 = sub_1E1150();
  v48 = *(*(v47 - 8) + 32);

  return v48(a9 + v46, a13, v47);
}

uint64_t sub_115B24(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6974736567677573;
    v6 = 0xD000000000000014;
    if (a1 != 10)
    {
      v6 = 0x746144746E657665;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x61446C6C65537075;
    if (a1 != 7)
    {
      v8 = 0x6144736569726573;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v2 = 0xD000000000000013;
    v3 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v3 = 0x6573616863727570;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000010;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_115CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11889C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_115D24(uint64_t a1)
{
  v2 = sub_116690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_115D60(uint64_t a1)
{
  v2 = sub_116690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PurchaseFailEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_287798, &qword_1FC3D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_116690();
  sub_1E1E00();
  v11 = v3[1];
  v106[0] = *v3;
  v106[1] = v11;
  v13 = *v3;
  v12 = v3[1];
  v107[0] = v3[2];
  *(v107 + 9) = *(v3 + 41);
  v103 = v13;
  v104 = v12;
  v105[0] = v3[2];
  *(v105 + 9) = *(v3 + 41);
  v102 = 0;
  sub_17AA4(v106, &v73, &qword_27FFE8, &qword_1FC3D0);
  sub_4EFC8();
  sub_1E1C80();
  if (v2)
  {
    v73 = v103;
    v74 = v104;
    v75[0] = v105[0];
    *(v75 + 9) = *(v105 + 9);
    sub_18E48(&v73, &qword_27FFE8, &qword_1FC3D0);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v95[0] = v103;
    v95[1] = v104;
    v96[0] = v105[0];
    *(v96 + 9) = *(v105 + 9);
    sub_18E48(v95, &qword_27FFE8, &qword_1FC3D0);
    v15 = v3[7];
    v16 = v3[5];
    v98 = v3[6];
    v99 = v15;
    v17 = v3[7];
    v18 = v3[9];
    v100 = v3[8];
    v101 = v18;
    v19 = v3[5];
    v97[0] = v3[4];
    v97[1] = v19;
    v91 = v98;
    v92 = v17;
    v20 = v3[9];
    v93 = v100;
    v94 = v20;
    v89 = v97[0];
    v90 = v16;
    v88 = 1;
    sub_13A5C(v97, &v73);
    sub_143D0();
    sub_1E1CF0();
    v84[2] = v91;
    v84[3] = v92;
    v84[4] = v93;
    v84[5] = v94;
    v84[0] = v89;
    v84[1] = v90;
    sub_14424(v84);
    v21 = v3[11];
    v22 = v3[13];
    v86 = v3[12];
    *v87 = v22;
    v23 = v3[11];
    v85[0] = v3[10];
    v85[1] = v23;
    v24 = v3[13];
    v82 = v86;
    v83[0] = v24;
    *&v87[13] = *(v3 + 221);
    *(v83 + 13) = *(v3 + 221);
    v80 = v85[0];
    v81 = v21;
    v79 = 2;
    sub_17AA4(v85, &v73, &qword_27FFF0, &unk_1E9C00);
    sub_4F01C();
    v108 = v5;
    sub_1E1C80();
    v71[2] = v82;
    v72[0] = v83[0];
    *(v72 + 13) = *(v83 + 13);
    v71[0] = v80;
    v71[1] = v81;
    sub_18E48(v71, &qword_27FFF0, &unk_1E9C00);
    v25 = *(v3 + 312);
    v26 = *(v3 + 280);
    v76 = *(v3 + 296);
    v77 = v25;
    v27 = *(v3 + 312);
    *v78 = *(v3 + 328);
    v28 = *(v3 + 248);
    v73 = *(v3 + 232);
    v74 = v28;
    v29 = *(v3 + 280);
    v75[0] = *(v3 + 264);
    v75[1] = v29;
    v68 = v76;
    v69 = v27;
    v70[0] = *(v3 + 328);
    v30 = *(v3 + 248);
    v64 = *(v3 + 232);
    v65 = v30;
    *&v78[14] = *(v3 + 342);
    *(v70 + 14) = *(v3 + 342);
    v66 = v75[0];
    v67 = v26;
    v63 = 3;
    sub_17AA4(&v73, v61, &qword_27FFF8, &qword_1F06D0);
    sub_4F070();
    sub_1E1C80();
    v61[4] = v68;
    v61[5] = v69;
    *v62 = v70[0];
    *&v62[14] = *(v70 + 14);
    v61[0] = v64;
    v61[1] = v65;
    v61[2] = v66;
    v61[3] = v67;
    sub_18E48(v61, &qword_27FFF8, &qword_1F06D0);
    LOWORD(v55) = *(v3 + 175);
    v60 = 4;
    sub_4F0C4();
    sub_1E1C80();
    v31 = *(v3 + 45);
    v32 = *(v3 + 368);
    v33 = *(v3 + 369);
    v34 = *(v3 + 47);
    v35 = *(v3 + 48);
    *&v55 = *(v3 + 44);
    *(&v55 + 1) = v31;
    LOBYTE(v56) = v32;
    BYTE1(v56) = v33;
    *&v57 = v34;
    *(&v57 + 1) = v35;
    v60 = 5;
    sub_2C904();

    v54 = v9;
    sub_1E1CF0();

    v36 = *(v3 + 99);
    v37 = *(v3 + 400);
    v38 = *(v3 + 51);
    v39 = *(v3 + 54);
    LOBYTE(v55) = *(v3 + 392);
    DWORD1(v55) = v36;
    BYTE8(v55) = v37;
    v56 = v38;
    v57 = v3[26];
    v58 = v39;
    v60 = 6;
    sub_1166E4();

    sub_1E1CF0();

    v40 = *(v3 + 57);
    v55 = *(v3 + 440);
    v56 = v40;
    v60 = 7;
    sub_28450();

    sub_1E1C80();

    v41 = *(v3 + 59);
    v42 = *(v3 + 60);
    v43 = *(v3 + 61);
    v44 = *(v3 + 62);
    v45 = *(v3 + 63);
    *&v55 = *(v3 + 58);
    *(&v55 + 1) = v41;
    v56 = v42;
    *&v57 = v43;
    *(&v57 + 1) = v44;
    v58 = v45;
    v60 = 8;
    sub_13BDC(v55, v41, v42, v43, v44, v45);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v55, *(&v55 + 1), v56, v57, *(&v57 + 1), v58);
    LOBYTE(v55) = *(v3 + 512);
    v60 = 9;
    sub_284F8();
    sub_1E1C80();
    v46 = *(v3 + 66);
    v47 = *(v3 + 67);
    v48 = *(v3 + 68);
    v49 = *(v3 + 69);
    v50 = *(v3 + 70);
    v51 = *(v3 + 568);
    *&v55 = *(v3 + 65);
    *(&v55 + 1) = v46;
    v56 = v47;
    *&v57 = v48;
    *(&v57 + 1) = v49;
    v58 = v50;
    v59 = v51;
    v60 = 10;
    sub_4E2A0(v55, v46);
    sub_4F118();
    sub_1E1C80();
    sub_4F16C(v55, *(&v55 + 1));
    v52 = *(type metadata accessor for PurchaseFailEvent.Model(0) + 60);
    LOBYTE(v55) = 11;
    sub_1E1150();
    sub_14E5C(&qword_27D810);
    sub_1E1CF0();
    return (*(v6 + 8))(v54, v108);
  }
}

unint64_t sub_116690()
{
  result = qword_2877A0;
  if (!qword_2877A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2877A0);
  }

  return result;
}

unint64_t sub_1166E4()
{
  result = qword_2877A8;
  if (!qword_2877A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2877A8);
  }

  return result;
}

uint64_t PurchaseFailEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1E1150();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_3D68(&qword_2877B0, &qword_1FC3E0);
  v47 = *(v49 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v49);
  v9 = v42 - v8;
  v10 = type metadata accessor for PurchaseFailEvent.Model(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v74 = a1;
  sub_48B8(a1, v14);
  sub_116690();
  v48 = v9;
  v16 = v50;
  sub_1E1DF0();
  if (v16)
  {
    return sub_4E48(v74);
  }

  v43 = v6;
  v44 = v3;
  v50 = v13;
  v17 = v47;
  v69 = 0;
  sub_4FB10();
  sub_1E1BB0();
  v18 = v71;
  v19 = v50;
  *v50 = v70;
  *(v19 + 1) = v18;
  *(v19 + 2) = v72[0];
  *(v19 + 41) = *(v72 + 9);
  v62 = 1;
  sub_14CB8();
  sub_1E1C20();
  v20 = v66;
  *(v19 + 6) = v65;
  *(v19 + 7) = v20;
  v21 = v68;
  *(v19 + 8) = v67;
  *(v19 + 9) = v21;
  v22 = v64;
  *(v19 + 4) = v63;
  *(v19 + 5) = v22;
  v57 = 2;
  sub_4FB64();
  v42[1] = 0;
  sub_1E1BB0();
  v23 = *v61;
  *(v19 + 12) = v60;
  *(v19 + 13) = v23;
  *(v19 + 221) = *&v61[13];
  v24 = v59;
  *(v19 + 10) = v58;
  *(v19 + 11) = v24;
  v56 = 3;
  sub_4FBB8();
  sub_1E1BB0();
  v25 = v72[3];
  *(v19 + 232) = v72[2];
  *(v19 + 248) = v25;
  v26 = v72[7];
  *(v19 + 296) = v72[6];
  *(v19 + 312) = v26;
  *(v19 + 328) = v73[0];
  *(v19 + 342) = *(v73 + 14);
  v27 = v72[5];
  *(v19 + 264) = v72[4];
  *(v19 + 280) = v27;
  v55 = 4;
  sub_4FC0C();
  sub_1E1BB0();
  *(v19 + 175) = v51;
  v55 = 5;
  sub_2C8AC();
  sub_1E1C20();
  v28 = *(&v51 + 1);
  v29 = v52;
  v30 = BYTE1(v52);
  v31 = *(&v52 + 1);
  v32 = v53;
  *(v19 + 44) = v51;
  *(v19 + 45) = v28;
  v19[368] = v29;
  v19[369] = v30;
  *(v19 + 47) = v31;
  *(v19 + 48) = v32;
  v55 = 6;
  sub_11716C();
  sub_1E1C20();
  v33 = DWORD1(v51);
  v34 = BYTE8(v51);
  v19[392] = v51;
  *(v19 + 99) = v33;
  v19[400] = v34;
  v35 = v53;
  *(v19 + 408) = v52;
  *(v19 + 424) = v35;
  v55 = 7;
  sub_28EF4();
  sub_1E1BB0();
  v36 = v52;
  *(v19 + 440) = v51;
  *(v19 + 57) = v36;
  v55 = 8;
  sub_DAD8();
  sub_1E1BB0();
  v37 = v52;
  *(v19 + 29) = v51;
  *(v19 + 30) = v37;
  *(v19 + 31) = v53;
  v55 = 9;
  sub_28F9C();
  sub_1E1BB0();
  v50[512] = v51;
  v55 = 10;
  sub_4FC60();
  sub_1E1BB0();
  v38 = v54;
  v39 = v52;
  *(v19 + 520) = v51;
  *(v19 + 536) = v39;
  *(v19 + 552) = v53;
  v50[568] = v38;
  LOBYTE(v51) = 11;
  sub_14E5C(&qword_27D830);
  sub_1E1C20();
  (*(v17 + 8))(v48, v49);
  v40 = v50;
  (*(v45 + 32))(&v50[*(v10 + 60)], v43, v44);
  sub_1171C0(v40, v46);
  sub_4E48(v74);
  return sub_117224(v40);
}

unint64_t sub_11716C()
{
  result = qword_2877B8;
  if (!qword_2877B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2877B8);
  }

  return result;
}

uint64_t sub_1171C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseFailEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_117224(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseFailEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_117320@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v18 = sub_3D68(&qword_287790, &unk_1FC3C0);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  v20 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  v22 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  v24 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  v26 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  v28 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v7, v28);
}

uint64_t sub_117718(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  v14 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  v15 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  v16 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  v17 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  v18 = sub_3D68(&qword_287790, &unk_1FC3C0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  v19 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  v20 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  v21 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  v22 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  v24 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[15];

  return v25(v26, a2, v24);
}

uint64_t sub_117B84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27FFB8, &unk_1E9BC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = sub_3D68(&qword_27FFC0, &unk_1E9BD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  v17 = sub_3D68(&qword_27FFC8, &unk_1F06B0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  v18 = sub_3D68(&qword_27FFD0, &qword_1E9BE0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  v19 = sub_3D68(&qword_27FFD8, &qword_1E9BE8);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v20 = sub_3D68(&qword_287790, &unk_1FC3C0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  v21 = sub_3D68(&qword_27EA00, &unk_1E9BF0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v22 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  v23 = sub_3D68(&qword_27EA10, &qword_1E71E0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v24 = sub_3D68(&qword_27FFE0, &unk_1F62A0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v26 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[15];

  return v27(v28, a2, a2, v26);
}

void sub_117FE8()
{
  sub_1183C4(319, &qword_2800D0, sub_4FB10, sub_4EFC8);
  if (v0 <= 0x3F)
  {
    sub_1183C4(319, &qword_27E2C8, sub_14CB8, sub_143D0);
    if (v1 <= 0x3F)
    {
      sub_1183C4(319, &qword_2800D8, sub_4FB64, sub_4F01C);
      if (v2 <= 0x3F)
      {
        sub_1183C4(319, &qword_2800E0, sub_4FBB8, sub_4F070);
        if (v3 <= 0x3F)
        {
          sub_1183C4(319, &qword_2800E8, sub_4FC0C, sub_4F0C4);
          if (v4 <= 0x3F)
          {
            sub_1183C4(319, &qword_2800F0, sub_2C8AC, sub_2C904);
            if (v5 <= 0x3F)
            {
              sub_1183C4(319, &unk_287828, sub_11716C, sub_1166E4);
              if (v6 <= 0x3F)
              {
                sub_1183C4(319, &qword_27EAE8, sub_28EF4, sub_28450);
                if (v7 <= 0x3F)
                {
                  sub_1183C4(319, &qword_27DE18, sub_DAD8, sub_D57C);
                  if (v8 <= 0x3F)
                  {
                    sub_1183C4(319, &unk_27EAF8, sub_28F9C, sub_284F8);
                    if (v9 <= 0x3F)
                    {
                      sub_1183C4(319, &unk_2800F8, sub_4FC60, sub_4F118);
                      if (v10 <= 0x3F)
                      {
                        sub_5684();
                        if (v11 <= 0x3F)
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

void sub_1183C4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_118454(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_118514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1185B8()
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

unint64_t sub_118798()
{
  result = qword_287938;
  if (!qword_287938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287938);
  }

  return result;
}

unint64_t sub_1187F0()
{
  result = qword_287940;
  if (!qword_287940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287940);
  }

  return result;
}

unint64_t sub_118848()
{
  result = qword_287948;
  if (!qword_287948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287948);
  }

  return result;
}

uint64_t sub_11889C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x80000000002164A0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61446C6C65537075 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEE00617461446E6FLL || (sub_1E1D30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000000213F90 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
  {

    return 11;
  }

  else
  {
    v5 = sub_1E1D30();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_118CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000000214F30 == a2)
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

uint64_t sub_118D48(uint64_t a1)
{
  v2 = sub_118F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_118D84(uint64_t a1)
{
  v2 = sub_118F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BooksTreatmentData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287950, &qword_1FC660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_118F64();

  sub_1E1E00();
  v11[1] = v8;
  sub_3D68(&qword_287960, &qword_1FC668);
  sub_119168(&qword_287968, sub_EF154);
  sub_1E1CF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_118F64()
{
  result = qword_287958;
  if (!qword_287958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287958);
  }

  return result;
}

uint64_t BooksTreatmentData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3D68(&qword_287970, &qword_1FC670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_118F64();
  sub_1E1DF0();
  if (!v2)
  {
    sub_3D68(&qword_287960, &qword_1FC668);
    sub_119168(&qword_287978, sub_EF0FC);
    sub_1E1C20();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_4E48(a1);
}

uint64_t sub_119168(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5DE50(&qword_287960, &qword_1FC668);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1191E4()
{
  result = qword_287980;
  if (!qword_287980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287980);
  }

  return result;
}

unint64_t sub_11923C()
{
  result = qword_287988;
  if (!qword_287988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287988);
  }

  return result;
}

unint64_t sub_1192E4()
{
  result = qword_287990;
  if (!qword_287990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287990);
  }

  return result;
}

unint64_t sub_11933C()
{
  result = qword_287998;
  if (!qword_287998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287998);
  }

  return result;
}

unint64_t sub_119394()
{
  result = qword_2879A0;
  if (!qword_2879A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879A0);
  }

  return result;
}

BookAnalytics::GiftFailureReason_optional __swiftcall GiftFailureReason.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_260FD0;
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

unint64_t sub_119448()
{
  result = qword_2879A8;
  if (!qword_2879A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879A8);
  }

  return result;
}

unint64_t sub_119568()
{
  result = qword_2879B0;
  if (!qword_2879B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879B0);
  }

  return result;
}

void __swiftcall GenreData.init(genreId:subGenreId:contentType:)(BookAnalytics::GenreData *__return_ptr retstr, Swift::String genreId, Swift::String_optional subGenreId, Swift::String_optional contentType)
{
  retstr->genreId = genreId;
  retstr->subGenreId = subGenreId;
  retstr->contentType = contentType;
}

uint64_t static LibraryEditActionData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E1D30() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E1D30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_1196C4()
{
  v1 = 0x55746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x49746E65746E6F63;
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

uint64_t sub_119734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_119E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11975C(uint64_t a1)
{
  v2 = sub_119998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_119798(uint64_t a1)
{
  v2 = sub_119998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryEditActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_2879B8, &qword_1FC9C0);
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
  sub_119998();
  sub_1E1E00();
  v18 = 0;
  v13 = v15[5];
  sub_1E1CB0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E1CB0();
  v16 = 2;
  sub_1E1CB0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_119998()
{
  result = qword_2879C0;
  if (!qword_2879C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879C0);
  }

  return result;
}

uint64_t LibraryEditActionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_2879C8, &qword_1FC9C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_119998();
  sub_1E1DF0();
  if (v2)
  {
    return sub_4E48(a1);
  }

  v27 = 0;
  v11 = sub_1E1BE0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1E1BE0();
  v23 = v14;
  v25 = 2;
  v15 = sub_1E1BE0();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  sub_4E48(a1);
}

__n128 sub_119C9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_119CB0(uint64_t a1, int a2)
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

uint64_t sub_119CF8(uint64_t result, int a2, int a3)
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

unint64_t sub_119D68()
{
  result = qword_2879D0;
  if (!qword_2879D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879D0);
  }

  return result;
}

unint64_t sub_119DC0()
{
  result = qword_2879D8;
  if (!qword_2879D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879D8);
  }

  return result;
}

unint64_t sub_119E18()
{
  result = qword_2879E0;
  if (!qword_2879E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879E0);
  }

  return result;
}

uint64_t sub_119E6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
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

uint64_t NetworkReachability.__allocating_init()()
{
  v0 = swift_allocObject();
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  *(v0 + 16) = SCNetworkReachabilityCreateWithAddress(0, &address);
  return v0;
}

BookAnalytics::NetworkReachabilityStatus_optional __swiftcall NetworkReachabilityStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_261038;
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

uint64_t NetworkReachabilityStatus.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6863616552746F6ELL;
  }
}

uint64_t sub_11A0EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x8000000000212EA0;
  if (v2 == 1)
  {
    v4 = 0x8000000000212EA0;
  }

  else
  {
    v4 = 0x8000000000212EC0;
  }

  if (*a1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6863616552746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000656C6261;
  }

  if (*a2 != 1)
  {
    v3 = 0x8000000000212EC0;
  }

  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x6863616552746F6ELL;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEC000000656C6261;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1D30();
  }

  return v9 & 1;
}

Swift::Int sub_11A1C4()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

uint64_t sub_11A278()
{
  *v0;
  *v0;
  sub_1E17D0();
}

Swift::Int sub_11A318()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E17D0();

  return sub_1E1DE0();
}

void sub_11A3D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6261;
  v4 = 0x8000000000212EA0;
  if (v2 != 1)
  {
    v4 = 0x8000000000212EC0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x6863616552746F6ELL;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

const __SCNetworkReachability *sub_11A444@<X0>(char *a1@<X8>)
{
  result = *(v1 + 16);
  if (result)
  {
    flags = 0;
    result = SCNetworkReachabilityGetFlags(result, &flags);
    v4 = 0;
    if ((flags & 2) != 0)
    {
      v4 = (flags & 4) == 0;
      v5 = (flags & 0x10) == 0 || (flags & 4) == 0;
      if ((flags & 0x28) != 0)
      {
        v4 = v5;
      }

      if ((flags & 0x40000) != 0)
      {
        v4 = 2;
      }
    }

    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t NetworkReachability.init()()
{
  *(v0 + 16) = 0;
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v1 = SCNetworkReachabilityCreateWithAddress(0, &address);
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

uint64_t NetworkReachability.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_11A5BC()
{
  result = qword_2879E8;
  if (!qword_2879E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2879E8);
  }

  return result;
}

uint64_t sub_11A694()
{
  if (*v0)
  {
    result = 0x7263736544706974;
  }

  else
  {
    result = 0x7574616546706974;
  }

  *v0;
  return result;
}

uint64_t sub_11A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7574616546706974 && a2 == 0xEA00000000006572;
  if (v6 || (sub_1E1D30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7263736544706974 && a2 == 0xEE006E6F69747069)
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

uint64_t sub_11A7CC(uint64_t a1)
{
  v2 = sub_11A9D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11A808(uint64_t a1)
{
  v2 = sub_11A9D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolTipData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_287AB0, &qword_1FCD18);
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
  sub_11A9D8();
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

unint64_t sub_11A9D8()
{
  result = qword_287AB8;
  if (!qword_287AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287AB8);
  }

  return result;
}

uint64_t ToolTipData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_3D68(&qword_287AC0, &qword_1FCD20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_48B8(a1, a1[3]);
  sub_11A9D8();
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

unint64_t sub_11AC88()
{
  result = qword_287AC8;
  if (!qword_287AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287AC8);
  }

  return result;
}

unint64_t sub_11ACE0()
{
  result = qword_287AD0;
  if (!qword_287AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287AD0);
  }

  return result;
}

unint64_t sub_11AD38()
{
  result = qword_287AD8;
  if (!qword_287AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_287AD8);
  }

  return result;
}

uint64_t sub_11AD8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_11AE1C()
{
  v1 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_11AEC8(uint64_t a1)
{
  v3 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_11AF20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_11AFE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_11B048()
{
  v1 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t (*sub_11B0C0(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_userConfiguration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_11B158;
}

uint64_t (*sub_11B18C(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_127BB0;
}

id sub_11B230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_11B294(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_11B2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_11B348(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_11B3A4(uint64_t *a1))()
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
  v5 = OBJC_IVAR___BAAnalyticsController_configurationProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_127BB0;
}

void sub_11B43C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void sub_11B664(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_17AA4(v3 + v4, a1, &qword_287B10, &qword_1FCF80);

  os_unfair_lock_unlock((v3 + v5));
}

char *AnalyticsController.init()()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsController.LockProtectedData();
  v3 = *(v2 - 8);
  v51 = (v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E19D0();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E19B0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = sub_1E1610();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *&v0[OBJC_IVAR___BAAnalyticsController_applicationTracker] = 0;
  *&v0[OBJC_IVAR___BAAnalyticsController_sessionManager] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___BAAnalyticsController_assertionProvider] = 0;
  v49 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v14 = sub_127784(0, &qword_282880, OS_dispatch_queue_ptr);
  v47 = "hability";
  v48 = v14;
  sub_1E1600();
  v54 = _swiftEmptyArrayStorage;
  v46 = sub_127AFC(&qword_287B30, &type metadata accessor for OS_dispatch_queue.Attributes);
  v45 = sub_3D68(&qword_287B38, &qword_1FCF88);
  sub_125E1C(&qword_287B40, &qword_287B38, &qword_1FCF88);
  sub_1E1A70();
  v15 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v16 = v6 + 104;
  v17 = *(v6 + 104);
  v43 = v9;
  v44 = v16;
  v17(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v52);
  *&v0[v49] = sub_1E1A00();
  v49 = OBJC_IVAR___BAAnalyticsController_privateDataQueue;
  sub_1E1600();
  v54 = _swiftEmptyArrayStorage;
  sub_1E1A70();
  v17(v43, v15, v52);
  v18 = sub_1E1A00();
  dispatch_suspend(v18);
  *&v1[v49] = v18;
  v1[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] = 0;
  v19 = OBJC_IVAR___BAAnalyticsController_privateDataSource;
  *&v1[v19] = [objc_allocWithZone(BAPrivateDataSource) init];
  v20 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
  *&v1[v20] = [objc_allocWithZone(NSCondition) init];
  v1[OBJC_IVAR___BAAnalyticsController_sessionState] = 0;
  v21 = OBJC_IVAR___BAAnalyticsController_lockProtectedData;
  v22 = sub_1E09E0();
  v23 = v50;
  (*(*(v22 - 8) + 56))(v50, 1, 1, v22);
  v24 = v51;
  *&v23[v51[7]] = &_swiftEmptyDictionarySingleton;
  v25 = v23;
  v26 = v24[8];
  v27 = sub_1E0930();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = (v25 + v24[9]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + v24[10]);
  *v29 = 0u;
  v29[1] = 0u;
  v30 = (v25 + v24[11]);
  *v30 = xmmword_1FCF50;
  v30[1] = 0u;
  v30[2] = 0u;
  v30[3] = 0u;
  v30[4] = 0u;
  *(v25 + v24[12]) = 0;
  *(v25 + v24[13]) = 0;
  v31 = sub_3D68(&qword_287B70, &qword_1FCF90);
  v32 = *(v31 + 52);
  v33 = (*(v31 + 48) + 3) & 0x1FFFFFFFCLL;
  v34 = swift_allocObject();
  *(v34 + ((*(*v34 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_11BDD8(v25, v34 + *(*v34 + class metadata base offset for ManagedBuffer + 16));
  *&v1[v21] = v34;
  v1[OBJC_IVAR___BAAnalyticsController_userIDResetEventPending] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_launchedFromShortcutItem] = 0;
  v1[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = 0;
  v35 = type metadata accessor for AnalyticsController();
  v53.receiver = v1;
  v53.super_class = v35;
  v36 = objc_msgSendSuper2(&v53, "init");
  v37 = *&v36[OBJC_IVAR___BAAnalyticsController_privateDataSource];
  v38 = v36;
  [v37 setDelegate:v38];
  v39 = [objc_allocWithZone(BUCountingAssertionProvider) initWithDelegate:v38];
  v40 = *&v38[OBJC_IVAR___BAAnalyticsController_assertionProvider];
  *&v38[OBJC_IVAR___BAAnalyticsController_assertionProvider] = v39;

  return v38;
}

uint64_t type metadata accessor for AnalyticsController.LockProtectedData()
{
  result = qword_287D60;
  if (!qword_287D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11BDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsController.LockProtectedData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id AnalyticsController.__deallocating_deinit()
{
  if ((v0[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] & 1) == 0)
  {
    dispatch_resume(*&v0[OBJC_IVAR___BAAnalyticsController_privateDataQueue]);
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11C028()
{
  v1 = v0;
  v44 = sub_1E0B70();
  v42 = *(v44 - 8);
  v2 = v42;
  v3 = *(v42 + 64);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E0D90();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1E0D40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1E0FE0();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3D68(&qword_287B98, &qword_1FCF98);
  v15 = *(v9 + 72);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E9970;
  sub_1E0D30();
  v48 = v17;
  sub_127AFC(&qword_287BA0, &type metadata accessor for SessionManager.Options);
  sub_3D68(&qword_287BA8, &qword_1FCFA0);
  sub_125E1C(&qword_287BB0, &qword_287BA8, &qword_1FCFA0);
  sub_1E1A70();
  sub_11C610(v41);
  sub_3D68(&qword_287BB8, &qword_1FCFA8);
  v18 = *(v2 + 72);
  v19 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1FCF60;
  sub_1E0B60();
  sub_1E0B40();
  sub_1E0B50();
  v48 = v20;
  sub_127AFC(&qword_287BC0, &type metadata accessor for FlushEvents);
  sub_3D68(&qword_287BC8, &unk_1FCFB0);
  sub_125E1C(&unk_287BD0, &qword_287BC8, &unk_1FCFB0);
  sub_1E1A70();
  v21 = sub_1E0CD0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1E0CC0();
  v24 = sub_1E1020();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_1E1010();
  sub_1E0FD0();
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v27 = *(qword_2876B8 + OBJC_IVAR___BAAppManager_appSessionManager);
  v28 = sub_1E0B10();
  v29 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v30 = *(v1 + v29);
  *(v1 + v29) = v28;

  v31 = sub_1E0D50();

  v32 = type metadata accessor for BATracker();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
  sub_3D68(&qword_281B00, &unk_1EDCF8);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  *(v35 + 16) = _swiftEmptyArrayStorage;
  *&v33[v34] = v35;
  swift_unknownObjectWeakInit();
  *&v33[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker] = v31;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v47.receiver = v33;
  v47.super_class = v32;
  v36 = objc_msgSendSuper2(&v47, "init");
  v37 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  sub_11CC04();
  return (*(v45 + 8))(v14, v46);
}

uint64_t sub_11C610@<X0>(double *a1@<X8>)
{
  v51 = a1;
  v1 = sub_3D68(&qword_286B40, &unk_1FD180);
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  __chkstk_darwin(v1);
  v48 = &v46[-v3];
  v4 = sub_3D68(&unk_287EF0, &qword_1FA978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46[-v7];
  sub_1E1920();
  v10 = v9;
  sub_1E1920();
  v12 = v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v14 = Strong;
  v15 = @"kBAJitterTimestampEnabled";
  v16 = [v14 analyticsControllerConfigurationForKey:v15];

  swift_unknownObjectRelease();
  sub_1E1A60();
  swift_unknownObjectRelease();
  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v17 = v52;
    v47 = [v52 BOOLValue];
  }

  else
  {
LABEL_4:
    v47 = 0;
  }

  v18 = -v10;
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = @"kBAJitterTimestampLowerBound";
    v22 = [v20 analyticsControllerConfigurationForKey:v21];

    swift_unknownObjectRelease();
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_127784(0, &qword_287EB8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v23 = v52;
      [v52 doubleValue];
      v18 = v24;
    }
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = @"kBAJitterTimestampUpperBound";
    v28 = [v26 analyticsControllerConfigurationForKey:v27];

    swift_unknownObjectRelease();
    sub_1E1A60();
    swift_unknownObjectRelease();
    sub_127784(0, &qword_287EB8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v29 = v52;
      [v52 doubleValue];
      v12 = v30;
    }
  }

  v31 = v50;
  if (qword_27D360 != -1)
  {
    swift_once();
  }

  v32 = sub_3B2C(v4, qword_286AE0);
  (*(v5 + 16))(v8, v32, v4);
  sub_1E1240();
  (*(v5 + 8))(v8, v4);
  if (v53 == 1)
  {
    if (qword_27D368 != -1)
    {
      swift_once();
    }

    v33 = sub_3B2C(v31, qword_286AF8);
    v34 = v48;
    v35 = v49;
    v36 = *(v49 + 16);
    v36(v48, v33, v31);
    sub_1E1240();
    v37 = *(v35 + 8);
    v37(v34, v31);
    v38 = v53;
    if (qword_27D370 != -1)
    {
      swift_once();
    }

    v18 = v38;
    v39 = sub_3B2C(v31, qword_286B10);
    v36(v34, v39, v31);
    sub_1E1240();
    v37(v34, v31);
    v12 = v53;
    goto LABEL_20;
  }

  if (v47)
  {
LABEL_20:
    v40 = v51;
    *v51 = v18;
    v40[1] = v12;
    v41 = enum case for TimestampJitter.enabled(_:);
    v42 = sub_1E0D90();
    return (*(*(v42 - 8) + 104))(v40, v41, v42);
  }

  v44 = enum case for TimestampJitter.disabled(_:);
  v45 = sub_1E0D90();
  return (*(*(v45 - 8) + 104))(v51, v44, v45);
}

uint64_t sub_11CC04()
{
  v1 = v0;
  v2 = sub_1E0FC0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = 1;
  (*(v6 + 104))(v5, enum case for LoggingEventProcessorFormat.json(_:));
  v7 = sub_1E0EA0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1E0E90();
  v11 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  if (*(v1 + v11))
  {
    v12 = *(v1 + v11);

    sub_1E0CE0();

    sub_1E0DD0();
  }

  if (qword_27D3E0 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = qword_2876B8;
    v14 = OBJC_IVAR___BAAppManager_uploadBatchEventConfig;
    swift_beginAccess();
    v15 = *&v13[v14];
    if (v15)
    {
      sub_1E0F90();
      v16 = *&v13[OBJC_IVAR___BAAppManager_client];
      v17 = v15;
      v18 = v16;
      v19 = v13;
      sub_1E0F80();
      if (*(v1 + v11))
      {
        v20 = *(v1 + v11);

        sub_1E0CE0();

        sub_1E0DD0();
      }
    }

    if (*&v13[OBJC_IVAR___BAAppManager_debugProcessor] && *(v1 + v11))
    {
      v21 = *&v13[OBJC_IVAR___BAAppManager_debugProcessor];

      sub_1E0CE0();

      sub_127AFC(&unk_287EE0, type metadata accessor for DebugEventProcessor);

      sub_1E0DD0();
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v38[1] = v10;
    v23 = [Strong additionalEventProcessors];
    swift_unknownObjectRelease();
    v24 = sub_1E18C0();

    v25 = *(v24 + 16);
    if (v25)
    {
      v38[0] = v24;
      v26 = v24 + 32;
      v27 = _swiftEmptyArrayStorage;
      v10 = &qword_1FAAC0;
      do
      {
        sub_326BC(v26, v42);
        sub_326AC(v42, &v40);
        sub_3D68(&qword_286BC0, &qword_1FAAC0);
        if (swift_dynamicCast() && v41)
        {
          v39 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_103264(0, v27[2] + 1, 1, v27);
          }

          v29 = v27[2];
          v28 = v27[3];
          v30 = v39;
          if (v29 >= v28 >> 1)
          {
            v31 = sub_103264((v28 > 1), v29 + 1, 1, v27);
            v30 = v39;
            v27 = v31;
          }

          v27[2] = v29 + 1;
          *&v27[2 * v29 + 4] = v30;
        }

        v26 += 32;
        --v25;
      }

      while (v25);

      v32 = v27[2];
      if (!v32)
      {
LABEL_30:
      }
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
      v32 = _swiftEmptyArrayStorage[2];
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    v33 = 0;
    v34 = v27 + 5;
    while (v33 < v27[2])
    {
      if (*(v1 + v11))
      {
        v36 = *(v34 - 1);
        v35 = *v34;
        swift_unknownObjectRetain();

        v10 = sub_1E0CE0();

        sub_1E0DD0();

        swift_unknownObjectRelease();
      }

      ++v33;
      v34 += 2;
      if (v32 == v33)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }
}

uint64_t sub_11D1A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v104 = sub_1E08B0();
  v109 = *(v104 - 8);
  v5 = *(v109 + 64);
  __chkstk_darwin(v104);
  v100 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D68(&unk_287BE0, &unk_1FCFC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v93 - v12;
  v14 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v93 - v20;
  __chkstk_darwin(v19);
  v105 = &v93 - v22;
  v116._countAndFlagsBits = 0x6C7070612E6D6F63;
  v116._object = 0xEA00000000002E65;
  if (sub_1E1850(v116))
  {
    v107 = a3;
  }

  else
  {
    v107 = 0xE500000000000000;
    a2 = 0x726568746FLL;
  }

  v106 = a2;
  if (sub_1E08D0())
  {
    v24 = objc_allocWithZone(NSString);
    v25 = 0xE800000000000000;
    v26 = sub_1E1770();
    v27 = [v24 initWithString:v26];

    sub_1E08E0();
    v28 = sub_1E1770();

    v29 = [v27 stringByAppendingPathExtension:v28];

    if (v29)
    {
      v30 = sub_1E1780();
      v25 = v31;
    }

    else
    {
      v30 = 0x6465746361646572;
    }

    sub_1E0870();
    v40 = *(v109 + 48);
    v41 = v104;
    if (v40(v11, 1, v104))
    {
    }

    else
    {
      v44 = objc_opt_self();
      sub_3D68(&qword_287BF0, &unk_1FCFD0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1FCF60;
      *(v45 + 32) = 47;
      *(v45 + 40) = 0xE100000000000000;
      *(v45 + 48) = 0x6465746361646572;
      *(v45 + 56) = 0xE800000000000000;
      *(v45 + 64) = v30;
      *(v45 + 72) = v25;
      isa = sub_1E18B0().super.isa;

      v47 = [v44 pathWithComponents:isa];

      sub_1E1780();
      sub_1E0890();
    }

    if (v40(v11, 1, v41))
    {
      v48 = sub_1E0930();
      (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
    }

    else
    {
      v49 = v109;
      v50 = v100;
      (*(v109 + 16))(v100, v11, v41);
      sub_1E0880();
      (*(v49 + 8))(v50, v41);
    }

    v103 = 0;
    v102 = 0;
    v101 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = v11;
    goto LABEL_39;
  }

  sub_1E0900(v23);
  v33 = v32;
  v34 = [v32 bu_dictionaryForQueryItems];

  v35 = sub_1E1730();
  if (!*(v35 + 16))
  {
    v42 = 0;
    v43 = 0;
    v102 = 0;
    v103 = 0;
LABEL_27:
    v63 = 0;
    v64 = 0;
    goto LABEL_28;
  }

  v36 = sub_A2F4(0x6E676961706D6163, 0xEB0000000064695FLL);
  if (v37)
  {
    v38 = (*(v35 + 56) + 16 * v36);
    v39 = v38[1];
    v103 = *v38;
  }

  else
  {
    v103 = 0;
    v39 = 0;
  }

  v59 = *(v35 + 16);
  v102 = v39;
  if (!v59)
  {
    v42 = 0;
    v43 = 0;
    goto LABEL_27;
  }

  v60 = sub_A2F4(29795, 0xE200000000000000);
  if (v61)
  {
    v62 = (*(v35 + 56) + 16 * v60);
    v63 = *v62;
    v64 = v62[1];

    if (*(v35 + 16))
    {
      goto LABEL_23;
    }

LABEL_41:
    v42 = 0;
    v43 = 0;
    goto LABEL_28;
  }

  v63 = 0;
  v64 = 0;
  if (!*(v35 + 16))
  {
    goto LABEL_41;
  }

LABEL_23:
  v65 = sub_A2F4(29793, 0xE200000000000000);
  if ((v66 & 1) == 0)
  {
    v43 = 0;
    v42 = 0;
    if (*(v35 + 16))
    {
      goto LABEL_43;
    }

LABEL_28:
    v68 = 0;
    v69 = 0;
    goto LABEL_29;
  }

  v67 = (*(v35 + 56) + 16 * v65);
  v43 = *v67;
  v42 = v67[1];

  if (!*(v35 + 16))
  {
    goto LABEL_28;
  }

LABEL_43:
  v90 = sub_A2F4(0x7463737469, 0xE500000000000000);
  if ((v91 & 1) == 0)
  {
    goto LABEL_28;
  }

  v92 = (*(v35 + 56) + 16 * v90);
  v68 = *v92;
  v69 = v92[1];

LABEL_29:
  v70 = *(v35 + 16);
  v101 = v63;
  v99 = v64;
  v98 = v42;
  v96 = v69;
  if (v70 && (v71 = sub_A2F4(0x6763737469, 0xE500000000000000), (v72 & 1) != 0))
  {
    v73 = (*(v35 + 56) + 16 * v71);
    v75 = *v73;
    v74 = v73[1];
  }

  else
  {
    v75 = 0;
    v76 = 0;
  }

  v94 = v76;

  sub_1E0870();
  v77 = *(v109 + 48);
  v78 = v104;
  if (!v77(v13, 1, v104))
  {
    sub_1E08A0();
  }

  v95 = v75;
  v97 = v68;
  v52 = v43;
  if (v77(v13, 1, v78))
  {
    v79 = sub_1E0930();
    v18 = v21;
    (*(*(v79 - 8) + 56))(v21, 1, 1, v79);
  }

  else
  {
    v80 = v109;
    v81 = v100;
    (*(v109 + 16))(v100, v13, v78);
    sub_1E0880();
    v82 = v78;
    v18 = v21;
    (*(v80 + 8))(v81, v82);
  }

  v51 = v99;
  v58 = v13;
  v53 = v98;
  v54 = v97;
  v55 = v96;
  v56 = v95;
  v57 = v94;
LABEL_39:
  v83 = v105;
  sub_125A54(v18, v105);
  v84 = sub_18E48(v58, &unk_287BE0, &unk_1FCFC0);
  *&v110 = v103;
  *(&v110 + 1) = v102;
  *&v111 = v101;
  *(&v111 + 1) = v51;
  *&v112 = v52;
  *(&v112 + 1) = v53;
  *&v113 = v54;
  *(&v113 + 1) = v55;
  *&v114 = v56;
  *(&v114 + 1) = v57;
  v115[3] = v113;
  v115[4] = v114;
  v115[1] = v111;
  v115[2] = v112;
  v115[0] = v110;
  v85 = *(v108 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  __chkstk_darwin(v84);
  *(&v93 - 2) = v83;
  *(&v93 - 1) = v115;
  v86 = v107;
  *(&v93 - 4) = v106;
  *(&v93 - 3) = v86;
  v87 = *(*v85 + class metadata base offset for ManagedBuffer + 16);
  v88 = (*(*v85 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v85 + v88));
  sub_125AC4(v85 + v87);
  os_unfair_lock_unlock((v85 + v88));

  sub_D1EE8(&v110);
  sub_11F754();
  return sub_18E48(v83, &qword_2876E8, &qword_1FC308);
}

__n128 sub_11DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v10 = a5[3];
  v39 = a5[2];
  v40 = v10;
  v41 = a5[4];
  v11 = a5[1];
  v37 = *a5;
  v38 = v11;
  v12 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for AnalyticsController.LockProtectedData();
  v17 = (a1 + v16[7]);
  v18 = v17[1];

  v34 = a2;
  *v17 = a2;
  v17[1] = a3;
  sub_127A8C(a4, a1 + v16[6]);
  sub_17AA4(a4, v15, &qword_2876E8, &qword_1FC308);
  v19 = sub_1E0930();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_18E48(v15, &qword_2876E8, &qword_1FC308);
  }

  else
  {
    v21 = sub_1E08F0();
    v23 = v22;
    (*(v20 + 8))(v15, v19);
    *&v36[0] = v21;
    *(&v36[0] + 1) = v23;
    sub_12758C();
    if (sub_1E1930())
    {
      v24 = (a1 + v16[8]);
      v25 = *v24;
      v33 = v24[1];
      v26 = v24[2];
      v27 = v24[3];

      sub_185EC(v25, v33, v26, v27);
      *v24 = v34;
      v24[1] = a3;
      v24[2] = v21;
      v24[3] = v23;
    }

    else
    {
    }
  }

  v28 = (a1 + v16[9]);
  v29 = v28[3];
  v36[2] = v28[2];
  v36[3] = v29;
  v36[4] = v28[4];
  v30 = v28[1];
  v36[0] = *v28;
  v36[1] = v30;
  sub_D1F18(a5, v35);
  sub_18E48(v36, &qword_287E48, &qword_1FD118);
  v31 = v40;
  v28[2] = v39;
  v28[3] = v31;
  v28[4] = v41;
  result = v38;
  *v28 = v37;
  v28[1] = result;
  return result;
}

void sub_11DF00(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    sub_A3270(v28);
    v3 = *&v28[0];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  __chkstk_darwin(a1);
  v5 = *(*v4 + class metadata base offset for ManagedBuffer + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_125AE4(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  v7 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory;
    v10 = *&v8[OBJC_IVAR____TtC13BookAnalytics9BATracker_operationHistory];
    v27 = v8;

    os_unfair_lock_lock((v10 + 24));
    v11 = sub_125B3C();
    v12 = sub_125B90();
    v13 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = *(v13 + 2);

      v25 = sub_103008(0, v24 + 1, 1, v13);
      v26 = *(v10 + 16);
      *(v10 + 16) = v25;

      v13 = *(v10 + 16);
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_103008((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v17 = &v13[64 * v16];
    *(v17 + 4) = &type metadata for BooksTreatmentData;
    *(v17 + 5) = v11;
    *(v17 + 6) = v12;
    v18 = v28[0];
    *(v17 + 72) = v28[1];
    *(v17 + 56) = v18;
    v17[88] = 1;
    *(v10 + 16) = v13;
    os_unfair_lock_unlock((v10 + 24));

    v19 = OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker;
    v20 = *&v27[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
    v21 = sub_1E10F0();
    if (v3)
    {
      *&v28[0] = v3;
      v22 = *&v8[v9];
      __chkstk_darwin(v21);

      os_unfair_lock_lock((v22 + 24));
      sub_125CF0((v22 + 16));
      os_unfair_lock_unlock((v22 + 24));

      v23 = *&v27[v19];
      sub_1E1110();
    }
  }

  else
  {
  }

  sub_11F754();
}

uint64_t sub_11E27C()
{
  v1 = *(v0 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_125D0C((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
  return sub_11F754();
}

uint64_t sub_11E330(void *a1, void *a2, uint64_t a3)
{
  v6 = *(type metadata accessor for AnalyticsController.LockProtectedData() + 44);
  if (*(a1 + v6))
  {
    v7 = *(a1 + v6);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_127A38();

  v8 = sub_1E1A40();
  if (v8[2])
  {
    v22 = a2;
    v23 = v6;
    v25 = a3;
    v24 = a1;
    v9 = v8[4];
    a2 = v8[5];

    v10 = *(v7 + 2);
    if (v10)
    {
      v6 = 0;
      a1 = v7 + 40;
      while (1)
      {
        if (v6 >= *(v7 + 2))
        {
          __break(1u);
          goto LABEL_31;
        }

        a3 = *(a1 - 1);
        v11 = *a1;

        v26._countAndFlagsBits = v9;
        v26._object = a2;
        if (sub_1E1850(v26))
        {
          break;
        }

        ++v6;
        a1 += 2;
        if (v10 == v6)
        {
          goto LABEL_20;
        }
      }

      v12 = *(v7 + 2);
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = *&v7[v13 + 32] == a3 && *&v7[v13 + 40] == v11;
        if (v15 || (sub_1E1D30() & 1) != 0)
        {
          break;
        }

        ++v14;
        v13 += 16;
        if (v12 == v14)
        {
          goto LABEL_20;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C231C(v7);
        v7 = result;
      }

      if (v14 < *(v7 + 2))
      {
        v20 = &v7[v13];
        v21 = *&v7[v13 + 40];
        *(v20 + 4) = v22;
        *(v20 + 5) = v25;

        a1 = v24;
        v6 = v23;
        goto LABEL_25;
      }

      __break(1u);
      return result;
    }

LABEL_20:

    a1 = v24;
    a2 = v22;
    v6 = v23;
    a3 = v25;
  }

  else
  {
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    v7 = sub_103398(0, *(v7 + 2) + 1, 1, v7);
  }

  v17 = *(v7 + 2);
  v16 = *(v7 + 3);
  if (v17 >= v16 >> 1)
  {
    v7 = sub_103398((v16 > 1), v17 + 1, 1, v7);
  }

  *(v7 + 2) = v17 + 1;
  v18 = &v7[16 * v17];
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
LABEL_25:

  *(a1 + v6) = v7;
  return result;
}

uint64_t sub_11E6E4(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v3 = sub_1E15E0();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E1610();
  v69 = *(v71 - 8);
  v6 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1360();
  sub_3B2C(v8, qword_280278);
  v9 = v2;
  v10 = sub_1E1340();
  v11 = sub_1E1960();

  if (os_log_type_enabled(v10, v11))
  {
    v65 = v11;
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v12 = 136315394;
    v13 = *&v9[OBJC_IVAR___BAAnalyticsController_lockProtectedData];
    v14 = v13 + *(*v13 + class metadata base offset for ManagedBuffer + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v15));
    v16 = sub_1E1780();
    v18 = v17;
    v62 = *(type metadata accessor for AnalyticsController.LockProtectedData() + 20);
    v19 = *(v14 + v62);
    v20 = *(v19 + 16);
    v63 = v10;
    if (v20)
    {
      v61 = v14;
      v21 = sub_A2F4(v16, v18);
      v23 = v22;

      if (v23)
      {
        v24 = (*(v19 + 56) + 16 * v21);
        v26 = *v24;
        v25 = v24[1];
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }

      v14 = v61;
    }

    else
    {

      v26 = 0;
      v25 = 0;
    }

    os_unfair_lock_unlock((v13 + v15));
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0x6E776F6E6B6E753CLL;
    }

    if (!v25)
    {
      v25 = 0xE90000000000003ELL;
    }

    v28 = sub_DD91C(v27, v25, &aBlock);

    *(v12 + 4) = v28;
    *(v12 + 12) = 2080;
    os_unfair_lock_lock((v13 + v15));
    v29 = sub_1E1780();
    v31 = *(v14 + v62);
    if (*(v31 + 16))
    {
      v32 = sub_A2F4(v29, v30);
      v34 = v33;

      v35 = v63;
      if (v34)
      {
        v36 = (*(v31 + 56) + 16 * v32);
        v38 = *v36;
        v37 = v36[1];
      }

      else
      {
        v38 = 0;
        v37 = 0;
      }
    }

    else
    {

      v38 = 0;
      v37 = 0;
      v35 = v63;
    }

    os_unfair_lock_unlock((v13 + v15));
    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x6E776F6E6B6E753CLL;
    }

    if (!v37)
    {
      v37 = 0xE90000000000003ELL;
    }

    v40 = sub_DD91C(v39, v37, &aBlock);

    *(v12 + 14) = v40;
    _os_log_impl(&dword_0, v35, v65, "ResetIDBegin: currentAnalyticsID = %s, currentUserPrivateSeed = %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = *&v9[OBJC_IVAR___BAAnalyticsController_privateDataSource];
  v42 = [v41 generatePrivateData];
  v43 = sub_1E1730();

  v44 = *&v9[OBJC_IVAR___BAAnalyticsController_lockProtectedData];
  __chkstk_darwin(v45);
  *(&v61 - 2) = v43;
  v46 = *(*v44 + class metadata base offset for ManagedBuffer + 16);
  v47 = (*(*v44 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v44 + v47));
  sub_125D28(v44 + v46, &aBlock);
  os_unfair_lock_unlock((v44 + v47));
  sub_124C5C(v9);
  isa = sub_1E1720().super.isa;

  v49 = swift_allocObject();
  v51 = v66;
  v50 = v67;
  *(v49 + 16) = v66;
  *(v49 + 24) = v50;
  v79 = sub_125D84;
  v80 = v49;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_11AD8C;
  v78 = &unk_26E020;
  v52 = _Block_copy(&aBlock);
  sub_125DCC(v51);

  [v41 syncPrivateData:isa toCloudWithCompletion:v52];
  _Block_release(v52);

  v53 = *&v9[OBJC_IVAR___BAAnalyticsController_workQueue];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = sub_125E14;
  v80 = v54;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_11AD8C;
  v78 = &unk_26E070;
  v55 = _Block_copy(&aBlock);
  v56 = v53;

  v57 = v68;
  sub_1E1600();
  v74 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  v58 = v70;
  v59 = v73;
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v55);

  (*(v72 + 8))(v58, v59);
  (*(v69 + 8))(v57, v71);
}

void sub_11EEF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) = 1;
    *(Strong + OBJC_IVAR___BAAnalyticsController_userIDResetEventPending) = 1;
    sub_11EF60();
  }
}

void sub_11EF60()
{
  v1 = sub_1E1640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = sub_1E1660();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (*(v0 + OBJC_IVAR___BAAnalyticsController_sessionState) == 1)
    {
      v8 = OBJC_IVAR___BAAnalyticsController_userIDResetEventPending;
      if (*(v0 + OBJC_IVAR___BAAnalyticsController_userIDResetEventPending) == 1)
      {
        v9 = OBJC_IVAR___BAAnalyticsController_applicationTracker;
        swift_beginAccess();
        v10 = *(v0 + v9);
        if (v10)
        {
          type metadata accessor for ResetPrivateIDsEvent(0);
          v11 = *&v10[OBJC_IVAR____TtC13BookAnalytics9BATracker_aaTracker];
          sub_127AFC(&qword_287E00, type metadata accessor for ResetPrivateIDsEvent);
          v12 = v10;
          sub_1E1140();
        }

        *(v0 + v8) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_11F200(double a1)
{
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v54 = sub_1E09E0();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v54);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v52 = &v46 - v14;
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  if (qword_27D030 != -1)
  {
    swift_once();
  }

  v17 = sub_1E1360();
  v46 = sub_3B2C(v17, qword_280278);
  v18 = sub_1E1340();
  v19 = sub_1E1960();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a1;
    _os_log_impl(&dword_0, v18, v19, "waitForSessionEnd timeout is: %f", v20, 0xCu);
  }

  sub_1E09D0();
  if (a1 <= 0.0)
  {
    v21 = 1;
  }

  else
  {
    sub_1E0990();
    v21 = 0;
  }

  v23 = v53;
  v22 = v54;
  v48 = v16;
  v49 = v9;
  (*(v9 + 56))(v8, v21, 1, v54);
  v55 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
  [*(v23 + OBJC_IVAR___BAAnalyticsController_sessionStateCondition) lock];
  v24 = OBJC_IVAR___BAAnalyticsController_sessionState;
  v25 = *(v23 + OBJC_IVAR___BAAnalyticsController_sessionState) == 0;
  if (*(v23 + OBJC_IVAR___BAAnalyticsController_sessionState) && a1 != 0.0)
  {
    v26 = (v49 + 48);
    v50 = (v49 + 8);
    v51 = (v49 + 32);
    v27 = &qword_287B10;
    do
    {
      sub_17AA4(v8, v6, v27, &qword_1FCF80);
      if ((*v26)(v6, 1, v22) == 1)
      {
        sub_18E48(v6, v27, &qword_1FCF80);
        [*(v23 + v55) wait];
        v28 = 0;
      }

      else
      {
        v29 = v24;
        v30 = v27;
        v31 = v52;
        (*v51)(v52, v6, v22);
        v32 = *(v23 + v55);
        isa = sub_1E0970().super.isa;
        v34 = v8;
        v35 = [v32 waitUntilDate:isa];

        v22 = v54;
        v36 = v31;
        v27 = v30;
        v24 = v29;
        (*v50)(v36, v54);
        v28 = v35 ^ 1;
        v8 = v34;
        v23 = v53;
      }

      v25 = *(v23 + v24) == 0;
    }

    while (*(v23 + v24) && !v28);
  }

  [*(v23 + v55) unlock];
  v37 = v47;
  sub_1E09D0();
  v38 = v48;
  sub_1E0960();
  v40 = v39;
  v41 = *(v49 + 8);
  v41(v37, v22);
  v42 = sub_1E1340();
  v43 = sub_1E1960();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v40;
    _os_log_impl(&dword_0, v42, v43, "waitForSessionEnd took: %f", v44, 0xCu);
  }

  sub_18E48(v8, &qword_287B10, &qword_1FCF80);
  v41(v38, v54);
  return v25;
}

uint64_t sub_11F754()
{
  v1 = sub_1E15E0();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1610();
  v14 = *(v5 - 8);
  v15 = v5;
  v6 = *(v14 + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_125E70;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E098;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  sub_1E1600();
  v17 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v14 + 8))(v8, v15);
}

void sub_11FA34()
{
  v0 = sub_1E1640();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7 && (v8 = v7, swift_beginAccess(), v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
    {
      v10 = [v9 analyticsSessionDataIsPriceDropNotificationEnabled];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0;
    }

    v6[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = v10;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR___BAAnalyticsController_workQueue);
    *v4 = v13;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v14 = v13;
    LOBYTE(v13) = sub_1E1660();
    (*(v1 + 8))(v4, v0);
    if (v13)
    {
      if (v12[OBJC_IVAR___BAAnalyticsController_sessionState] == 1)
      {
        sub_120490();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_11FC8C(unsigned __int8 a1)
{
  v3 = sub_1E1640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = sub_1E1660();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = OBJC_IVAR___BAAnalyticsController_sessionStateCondition;
    [*(v1 + OBJC_IVAR___BAAnalyticsController_sessionStateCondition) lock];
    if (*(v1 + OBJC_IVAR___BAAnalyticsController_sessionState) != a1)
    {
      *(v1 + OBJC_IVAR___BAAnalyticsController_sessionState) = a1;
      [*(v1 + v11) broadcast];
    }

    return [*(v1 + v11) unlock];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11FDF0()
{
  v1 = v0;
  v2 = sub_3D68(&qword_287B10, &qword_1FCF80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_1E09E0();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  __chkstk_darwin(v6);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E1080();
  v57 = *(v59 - 8);
  v9 = *(v57 + 64);
  __chkstk_darwin(v59);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E0A10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1640();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v21 = *(v1 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v20 = v21;
  v22 = v17[13];
  v52 = enum case for DispatchPredicate.onQueue(_:);
  v54 = v17 + 13;
  v51 = v22;
  v22(v20);
  v23 = v21;
  v24 = sub_1E1660();
  v25 = v17[1];
  v55 = v16;
  v50 = v17 + 1;
  v25(v20, v16);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v49 = v25;
  v60 = v5;
  v26 = OBJC_IVAR___BAAnalyticsController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong analyticsControllerWillStartSession:v1];
    swift_unknownObjectRelease();
  }

  sub_1E0A00();
  sub_1E09F0();
  (*(v12 + 8))(v15, v11);
  v28 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v29 = v61;
  if (*(v1 + v28))
  {
    v48 = v26;
    v31 = v56;
    v30 = v57;
    v32 = v59;
    (*(v57 + 104))(v56, enum case for Session.Kind.userEvents(_:), v59);

    v33 = v58;
    sub_1E09D0();
    sub_1E0D20();

    v34 = v33;
    v35 = v62;
    (*(v29 + 8))(v34, v62);
    (*(v30 + 8))(v31, v32);
  }

  else
  {

    v35 = v62;
  }

  v36 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v37 = *(*v36 + class metadata base offset for ManagedBuffer + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v36 + v38));
  v39 = v60;
  sub_1E09D0();
  (*(v29 + 56))(v39, 0, 1, v35);
  sub_1273C4(v39, v36 + v37);
  os_unfair_lock_unlock((v36 + v38));
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    [v40 analyticsControllerDidStartSession:v1];
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent) != 1)
  {
    v45 = *(v1 + OBJC_IVAR___BAAnalyticsController_privateDataSource);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_127434;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_121A38;
    aBlock[3] = &unk_26E308;
    v47 = _Block_copy(aBlock);

    [v45 fetchPrivateData:v47];
    _Block_release(v47);
    return;
  }

  sub_120490();
  v41 = *(v1 + v53);
  *v20 = v41;
  v42 = v55;
  v51(v20, v52, v55);
  v43 = v41;
  LOBYTE(v41) = sub_1E1660();
  v49(v20, v42);
  if ((v41 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v44 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
  if ((*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataQueueActive) & 1) == 0)
  {
    dispatch_resume(*(v1 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v1 + v44) = 1;
  }
}

uint64_t sub_120490()
{
  v1 = sub_3D68(&qword_287E08, &qword_1FD0D8);
  v104 = *(v1 - 8);
  v105 = v1;
  v2 = *(v104 + 64);
  __chkstk_darwin(v1);
  v103 = &v80 - v3;
  v4 = sub_3D68(&qword_287E10, &qword_1FD0E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v80 - v7;
  v9 = sub_3D68(&qword_287E18, &qword_1FD0E8);
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  __chkstk_darwin(v9);
  v80 = &v80 - v11;
  v12 = sub_3D68(&qword_287E20, &qword_1FD0F0);
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  __chkstk_darwin(v12);
  v100 = &v80 - v14;
  v15 = sub_3D68(&qword_287E28, &qword_1FD0F8);
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  __chkstk_darwin(v15);
  v97 = &v80 - v17;
  v18 = sub_3D68(&qword_287E30, &qword_1FD100);
  v95 = *(v18 - 8);
  v96 = v18;
  v19 = *(v95 + 64);
  __chkstk_darwin(v18);
  v94 = &v80 - v20;
  v21 = sub_3D68(&qword_287E38, &qword_1FD108);
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  __chkstk_darwin(v21);
  v84 = &v80 - v23;
  v24 = sub_3D68(&qword_287E40, &qword_1FD110);
  v91 = *(v24 - 8);
  v92 = v24;
  v25 = *(v91 + 64);
  __chkstk_darwin(v24);
  v90 = &v80 - v26;
  v27 = sub_1E1640();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v0 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v31 = v32;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  v34 = sub_1E1660();
  result = (*(v28 + 8))(v31, v27);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v87 = v8;
  v88 = v5;
  v89 = v4;
  v107 = v0;
  v36 = *(v0 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v37 = v36 + *(*v36 + class metadata base offset for ManagedBuffer + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v36 + v38));
  v39 = type metadata accessor for AnalyticsController.LockProtectedData();
  v40 = (v37 + v39[8]);
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  sub_178BC(v41, v42, v43, v44);
  *&v93 = v41;
  *(&v93 + 1) = v42;
  sub_185EC(v41, v42, v43, v44);
  v45 = (v37 + v39[9]);
  v46 = v45[1];
  v47 = v45[2];
  v48 = v45[4];
  v130[3] = v45[3];
  v130[4] = v48;
  v130[1] = v46;
  v130[2] = v47;
  v130[0] = *v45;
  v128 = v45[2];
  v129[0] = v45[3];
  v129[1] = v45[4];
  v127 = v45[1];
  v126 = *v45;
  v49 = *(v37 + v39[10]);
  sub_17AA4(v130, &v131, &qword_287E48, &qword_1FD118);
  v106 = v49;

  os_unfair_lock_unlock((v36 + v38));
  v133 = v128;
  v134 = v129[0];
  v135 = v129[1];
  v131 = v126;
  v132 = v127;
  if (v44)
  {
    v83 = v43;
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v50 = sub_1E0CB0();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1E7EA0;
    v55 = v54 + v53;
    v56 = *(v51 + 104);
    v56(v54 + v53, enum case for DataEventTrait.onlyOnce(_:), v50);
    v56(v55 + v52, enum case for DataEventTrait.unique(_:), v50);
    v57 = OBJC_IVAR___BAAnalyticsController_sessionManager;
    v58 = v107;
    swift_beginAccess();
    if (*(v58 + v57))
    {
      v126 = v93;
      *&v127 = v83;
      *(&v127 + 1) = v44;
      sub_127730();

      v59 = v90;
      sub_1E0B80();
      sub_1E0D10();

      (*(v91 + 8))(v59, v92);
    }

    else
    {

      sub_185EC(v93, *(&v93 + 1), v83, v44);
    }
  }

  v60 = v131;
  v122 = v132;
  v123 = v133;
  v124 = v134;
  v125 = v135;
  v61 = v107;
  if (*(&v131 + 1) != 1)
  {
    sub_3D68(&qword_2828D0, &unk_1FD120);
    v62 = sub_1E0CB0();
    v63 = *(v62 - 8);
    v64 = *(v63 + 72);
    v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1E9970;
    (*(v63 + 104))(v66 + v65, enum case for DataEventTrait.onlyOnce(_:), v62);
    v67 = OBJC_IVAR___BAAnalyticsController_sessionManager;
    swift_beginAccess();
    if (*(v61 + v67))
    {
      v126 = v60;
      v127 = v122;
      v128 = v123;
      v129[0] = v124;
      v129[1] = v125;
      sub_1276DC();

      v68 = v84;
      sub_1E0B80();
      sub_1E0D10();

      (*(v85 + 8))(v68, v86);
    }

    else
    {

      sub_18E48(&v131, &qword_287E48, &qword_1FD118);
    }
  }

  sub_121F58(&v126);
  v69 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  if (*(v61 + v69))
  {
    v120 = v128;
    v121[0] = v129[0];
    *(v121 + 10) = *(v129 + 10);
    v118 = v126;
    v119 = v127;
    sub_12743C();

    v70 = v94;
    sub_1E0B80();
    sub_1E0D10();

    (*(v95 + 8))(v70, v96);
  }

  else
  {
    sub_127688(&v126);
  }

  sub_1230B0(v116);
  if (*(v61 + v69))
  {
    v118 = v116[0];
    v119 = v116[1];
    v120 = v116[2];
    *&v121[0] = v117;
    sub_127490();

    v71 = v97;
    sub_1E0B80();
    sub_1E0D10();

    (*(v98 + 8))(v71, v99);
  }

  else
  {
  }

  sub_1236C0(&v118);
  if (*(v61 + v69))
  {
    v114 = v121[0];
    v115 = *&v121[1];
    v112 = v119;
    v113 = v120;
    v111 = v118;
    sub_1274E4();

    v72 = v100;
    sub_1E0B80();
    sub_1E0D10();

    (*(v101 + 8))(v72, v102);
    v73 = sub_125EE4();
    if (!v74)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_127634(&v118);
    v73 = sub_125EE4();
    if (!v74)
    {
      goto LABEL_24;
    }
  }

  v75 = v74;
  v76 = v73;
  *&v111 = v73;
  *(&v111 + 1) = v74;
  sub_12758C();
  if ((sub_1E1930() & 1) != 0 && (*&v111 = 0x6C6975625F707061, *(&v111 + 1) = 0xEA00000000003D64, v136._countAndFlagsBits = v76, v136._object = v75, sub_1E17E0(v136), , *(v61 + v69)))
  {
    sub_1275E0();

    v77 = v80;
    sub_1E0B80();
    sub_1E0D10();

    (*(v81 + 8))(v77, v82);
  }

  else
  {
  }

LABEL_24:
  if (v106)
  {
    if (*(v61 + v69))
    {
      *&v111 = v106;
      sub_125B3C();

      v78 = v87;
      sub_1E0B80();
      sub_1E0D10();

      (*(v88 + 8))(v78, v89);
    }

    else
    {
    }
  }

  sub_123854(&v111);
  if (*(v61 + v69))
  {
    v108 = v111;
    v109 = v112;
    v110 = v113;
    sub_127538();

    v79 = v103;
    sub_1E0B80();
    sub_1E0D10();

    return (*(v104 + 8))(v79, v105);
  }

  else
  {
  }
}

uint64_t sub_121448(uint64_t a1)
{
  v2 = sub_1E15E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1610();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR___BAAnalyticsController_workQueue);
    v21 = v3;
    v22 = v7;
    v14 = result;
    v20 = v13;

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = a1;
    aBlock[4] = sub_12780C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11AD8C;
    aBlock[3] = &unk_26E358;
    v18 = _Block_copy(aBlock);

    sub_1E1600();
    v23 = _swiftEmptyArrayStorage;
    sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
    sub_3D68(&unk_287C10, &qword_1FC390);
    sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
    sub_1E1A70();
    v19 = v20;
    sub_1E19F0();
    _Block_release(v18);

    (*(v21 + 8))(v6, v2);
    (*(v8 + 8))(v11, v22);
  }

  return result;
}

void sub_1217A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    __chkstk_darwin(Strong);
    *(&v18 - 2) = a2;
    v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
    v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v10 + v12));
    sub_127B70(v10 + v11, v19);
    os_unfair_lock_unlock((v10 + v12));
    sub_124C5C(v9);
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = [v13 analyticsSessionDataIsPriceDropNotificationEnabled];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    v9[OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled] = v14;
    sub_120490();
    v9[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 1;
    v15 = *&v9[OBJC_IVAR___BAAnalyticsController_workQueue];
    *v7 = v15;
    (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
    v16 = v15;
    LOBYTE(v15) = sub_1E1660();
    (*(v4 + 8))(v7, v3);
    if (v15)
    {
      v17 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
      if ((v9[OBJC_IVAR___BAAnalyticsController_privateDataQueueActive] & 1) == 0)
      {
        dispatch_resume(*&v9[OBJC_IVAR___BAAnalyticsController_privateDataQueue]);
        v9[v17] = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_121A38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1E1730();

  v2(v3);
}

void sub_121AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v42 = a1;
  v4 = sub_1E09E0();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1640();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR___BAAnalyticsController_workQueue;
  v13 = *(v3 + OBJC_IVAR___BAAnalyticsController_workQueue);
  *v11 = v13;
  v14 = enum case for DispatchPredicate.onQueue(_:);
  v15 = v8[13];
  v15(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v16 = v13;
  LOBYTE(v13) = sub_1E1660();
  v17 = v8[1];
  v17(v11, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v49 = v12;
  v18 = *(v3 + v12);
  *v11 = v18;
  v15(v11, v14, v7);
  v19 = v18;
  LOBYTE(v18) = sub_1E1660();
  v17(v11, v7);
  if ((v18 & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v45 = v8 + 13;
  v20 = OBJC_IVAR___BAAnalyticsController_privateDataQueueActive;
  if (*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueueActive) == 1)
  {
    dispatch_suspend(*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v3 + v20) = 0;
  }

  v44 = v20;
  v46 = v17;
  v47 = v15;
  v48 = v14;
  v21 = OBJC_IVAR___BAAnalyticsController_sessionManager;
  swift_beginAccess();
  v22 = v50;
  v23 = v51;
  if (*(v3 + v21))
  {

    v24 = v41;
    sub_1E09D0();
    sub_1E0D00();

    (*(v22 + 8))(v24, v23);
  }

  v25 = *(v3 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v26 = v25 + *(*v25 + class metadata base offset for ManagedBuffer + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + v27));
  sub_18E48(v26, &qword_287B10, &qword_1FCF80);
  (*(v22 + 56))(v26, 1, 1, v23);
  v28 = type metadata accessor for AnalyticsController.LockProtectedData();
  v29 = (v26 + v28[9]);
  v31 = v29[3];
  v30 = v29[4];
  v32 = v29[1];
  v52[2] = v29[2];
  v52[3] = v31;
  v52[4] = v30;
  v52[0] = *v29;
  v52[1] = v32;
  v29[3] = 0u;
  v29[4] = 0u;
  v29[1] = 0u;
  v29[2] = 0u;
  *v29 = xmmword_1FCF50;
  sub_18E48(v52, &qword_287E48, &qword_1FD118);
  v33 = (v26 + v28[7]);
  v34 = v33[1];
  *v33 = 0;
  v33[1] = 0;

  v35 = v28[6];
  sub_18E48(v26 + v35, &qword_2876E8, &qword_1FC308);
  v36 = sub_1E0930();
  (*(*(v36 - 8) + 56))(v26 + v35, 1, 1, v36);
  os_unfair_lock_unlock((v25 + v27));
  v37 = *(v3 + v49);
  *v11 = v37;
  v47(v11, v48, v7);
  v38 = v37;
  LOBYTE(v37) = sub_1E1660();
  v46(v11, v7);
  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

  v39 = v44;
  if ((*(v3 + v44) & 1) == 0)
  {
    dispatch_resume(*(v3 + OBJC_IVAR___BAAnalyticsController_privateDataQueue));
    *(v3 + v39) = 1;
  }
}

uint64_t sub_121F58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3D68(&qword_287EA0, &qword_1FD130);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v110 = &v99[-v6];
  v118 = sub_1E0A90();
  v109 = *(v118 - 8);
  v7 = *(v109 + 64);
  v8 = __chkstk_darwin(v118);
  v108 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v107 = &v99[-v10];
  v11 = sub_3D68(&qword_287EA8, &qword_1FD138);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v116 = &v99[-v13];
  v114 = sub_3D68(&qword_287EB0, &unk_1FD140);
  v14 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v115 = &v99[-v15];
  v16 = sub_3D68(&qword_2876E8, &qword_1FC308);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v124 = &v99[-v18];
  v112 = sub_1E0AB0();
  v111 = *(v112 - 8);
  v19 = *(v111 + 64);
  __chkstk_darwin(v112);
  v123 = &v99[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = sub_1E09E0();
  v21 = *(v113 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v113);
  v24 = &v99[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1E0AE0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v99[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v127 = 0u;
    v128 = 0u;
LABEL_10:
    sub_18E48(&v127, &unk_281B50, &unk_1EDD70);
    v122 = 0;
    goto LABEL_11;
  }

  v31 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyiCloudLoggedIn"];
  swift_unknownObjectRelease();
  if (v31)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127 = v125;
  v128 = v126;
  if (!*(&v126 + 1))
  {
    goto LABEL_10;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v32 = swift_dynamicCast();
  v33 = v125;
  if (!v32)
  {
    v33 = 0;
  }

  v122 = v33;
LABEL_11:
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    v127 = 0u;
    v128 = 0u;
LABEL_20:
    sub_18E48(&v127, &unk_281B50, &unk_1EDD70);
    v121 = 0;
    goto LABEL_21;
  }

  v35 = [v34 analyticsSessionDataForKey:@"BASessionDataKeyiTunesLoggedIn"];
  swift_unknownObjectRelease();
  if (v35)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127 = v125;
  v128 = v126;
  if (!*(&v126 + 1))
  {
    goto LABEL_20;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v36 = swift_dynamicCast();
  v37 = v125;
  if (!v36)
  {
    v37 = 0;
  }

  v121 = v37;
LABEL_21:
  v38 = swift_unknownObjectWeakLoadStrong();
  if (!v38)
  {
    v127 = 0u;
    v128 = 0u;
LABEL_30:
    sub_18E48(&v127, &unk_281B50, &unk_1EDD70);
    v40 = 0;
    goto LABEL_31;
  }

  v39 = [v38 analyticsSessionDataForKey:@"BASessionDataKeyiCloudDriveOptIn"];
  swift_unknownObjectRelease();
  if (v39)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127 = v125;
  v128 = v126;
  if (!*(&v126 + 1))
  {
    goto LABEL_30;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v40 = v125;
  }

  else
  {
    v40 = 0;
  }

LABEL_31:
  v41 = swift_unknownObjectWeakLoadStrong();
  v117 = v40;
  if (!v41)
  {
    v127 = 0u;
    v128 = 0u;
LABEL_40:
    sub_18E48(&v127, &unk_281B50, &unk_1EDD70);
    v120 = 0;
    goto LABEL_41;
  }

  v42 = [v41 analyticsSessionDataForKey:@"BASessionDataKeyHasWidgets"];
  swift_unknownObjectRelease();
  if (v42)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127 = v125;
  v128 = v126;
  v40 = v117;
  if (!*(&v126 + 1))
  {
    goto LABEL_40;
  }

  sub_127784(0, &qword_287EB8, NSNumber_ptr);
  v43 = swift_dynamicCast();
  v44 = v125;
  if (!v43)
  {
    v44 = 0;
  }

  v120 = v44;
LABEL_41:
  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v106 = [v45 analyticsSessionDataIsMainWindow];
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = 0;
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v105 = [v46 analyticsSessionDataIsParallel];
    swift_unknownObjectRelease();
  }

  else
  {
    v105 = 0;
  }

  if (v122)
  {
    v104 = [v122 BOOLValue];
    v47 = v121;
    if (v121)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v104 = 0;
    v47 = v121;
    if (v121)
    {
LABEL_49:
      v103 = [v47 BOOLValue];
      v48 = v120;
      if (v120)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }
  }

  v103 = 0;
  v48 = v120;
  if (v120)
  {
LABEL_50:
    v102 = [v48 BOOLValue];
    if (!v40)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

LABEL_54:
  v102 = 0;
  if (!v40)
  {
LABEL_57:
    v49 = 2;
    goto LABEL_58;
  }

LABEL_55:
  if (([v40 BOOLValue] & 1) == 0)
  {
    goto LABEL_57;
  }

  v49 = 1;
LABEL_58:
  v101 = v49;
  sub_1E0AD0();
  sub_1E09D0();
  v119 = sub_1E0AC0();
  (*(v21 + 8))(v24, v113);
  (*(v26 + 8))(v29, v25);
  sub_1E0A60();
  v50 = [objc_opt_self() currentNotificationCenter];
  v51 = [v50 notificationSettings];

  v113 = [v51 authorizationStatus];
  v52 = [objc_opt_self() books];
  v53 = [v52 userDefaults];

  v100 = [v53 BOOLForKey:@"BKReadingGoalsUserDefaultsKey"];
  v54 = *(v2 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v55 = v54 + *(*v54 + class metadata base offset for ManagedBuffer + 16);
  v56 = (*(*v54 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v54 + v56));
  v57 = *(v114 + 48);
  v58 = type metadata accessor for AnalyticsController.LockProtectedData();
  v59 = (v55 + *(v58 + 28));
  v61 = *v59;
  v60 = v59[1];
  v62 = v55 + *(v58 + 24);
  v63 = v115;
  sub_17AA4(v62, &v115[v57], &qword_2876E8, &qword_1FC308);

  os_unfair_lock_unlock((v54 + v56));
  sub_125A54(&v63[v57], v124);
  if (*(v2 + OBJC_IVAR___BAAnalyticsController_launchedFromShortcutItem) == 1)
  {

    v64 = 3;
    v65 = v116;
    goto LABEL_82;
  }

  v65 = v116;
  if (!v60)
  {
    goto LABEL_77;
  }

  if (v61 == 0xD000000000000032 && v60 == 0x80000000002169C0 || (sub_1E1D30() & 1) != 0 || (v61 == 0xD000000000000014 && v60 == 0x80000000002169A0 || (sub_1E1D30() & 1) != 0) && (v66 = sub_1E0930(), (*(*(v66 - 8) + 48))(v124, 1, v66) != 1))
  {

    v64 = 6;
    goto LABEL_82;
  }

  if (v61 == 0xD00000000000002BLL && v60 == 0x8000000000216970 || (sub_1E1D30() & 1) != 0)
  {

    v64 = 5;
    goto LABEL_82;
  }

  if (v61 == 0xD00000000000001CLL && v60 == 0x8000000000216950 || (sub_1E1D30() & 1) != 0)
  {

    v64 = 7;
  }

  else
  {
LABEL_77:
    v67 = sub_1E0930();
    if ((*(*(v67 - 8) + 48))(v124, 1, v67) == 1)
    {
      if (v60)
      {

        v64 = 0;
      }

      else
      {
        v64 = 2;
      }
    }

    else
    {

      v64 = 1;
    }
  }

LABEL_82:
  type metadata accessor for Utilities();
  sub_DC688(&v127);
  v68 = v127;
  v69 = swift_unknownObjectWeakLoadStrong();
  if (!v69)
  {
    v127 = 0u;
    v128 = 0u;
LABEL_91:
    result = sub_18E48(&v127, &unk_281B50, &unk_1EDD70);
    goto LABEL_92;
  }

  v70 = [v69 analyticsSessionDataForKey:@"BASessionDataKeyLaunchType"];
  swift_unknownObjectRelease();
  if (v70)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v126 = 0u;
  }

  v127 = v125;
  v128 = v126;
  if (!*(&v126 + 1))
  {
    goto LABEL_91;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v72 = v125;
    if (v125 < 3)
    {
      goto LABEL_93;
    }

    *&v127 = v125;
    sub_1E1D50();
    __break(1u);
    goto LABEL_91;
  }

LABEL_92:
  v72 = 0;
LABEL_93:
  if (v119 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_112;
  }

  if (v119 > 0x7FFFFFFF)
  {
LABEL_112:
    __break(1u);
    return result;
  }

  v114 = v72;
  LODWORD(v115) = v68;
  LODWORD(v116) = v64;
  v73 = v107;
  sub_1E0AA0();
  sub_1E0A80();
  v74 = *(v109 + 8);
  v74(v73, v118);
  v75 = sub_1E0A50();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v65, 1, v75) == 1)
  {
    sub_18E48(v65, &qword_287EA8, &qword_1FD138);
    v109 = 0;
    v107 = 0xE000000000000000;
  }

  else
  {
    v109 = sub_1E0A40();
    v107 = v77;
    (*(v76 + 8))(v65, v75);
  }

  v78 = v108;
  sub_1E0AA0();
  v79 = v110;
  sub_1E0A70();
  v74(v78, v118);
  v80 = sub_1E0A30();
  v81 = *(v80 - 8);
  if ((*(v81 + 48))(v79, 1, v80) == 1)
  {
    sub_18E48(v79, &qword_287EA0, &qword_1FD130);
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  else
  {
    v82 = sub_1E0A20();
    v83 = v84;
    (*(v81 + 8))(v79, v80);
  }

  v85 = v2;
  v86 = [objc_opt_self() mainBundle];
  v87 = [v86 bundleIdentifier];

  if (v87)
  {
    v88 = sub_1E1780();
    v90 = v89;

    v92 = v121;
    v91 = v122;
    v93 = v120;
    v94 = v117;
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
    v91 = v117;
    v92 = v120;
    v93 = v121;
    v94 = v122;
  }

  if (v113 >= 4)
  {
    v95 = 0;
  }

  else
  {
    v95 = 0x1010200u >> (8 * v113);
  }

  if (v100)
  {
    v96 = 1;
  }

  else
  {
    v96 = 2;
  }

  (*(v111 + 8))(v123, v112);
  v97 = *(v85 + OBJC_IVAR___BAAnalyticsController_priceDropNotificationsEnabled);
  *a1 = v119;
  v98 = v107;
  *(a1 + 8) = v109;
  *(a1 + 16) = v98;
  *(a1 + 24) = v82;
  *(a1 + 32) = v83;
  *(a1 + 40) = v104;
  *(a1 + 41) = v103;
  *(a1 + 42) = v116;
  *(a1 + 48) = v88;
  *(a1 + 56) = v90;
  *(a1 + 64) = v115;
  *(a1 + 65) = v101;
  *(a1 + 66) = v95;
  *(a1 + 67) = v96;
  *(a1 + 68) = 0;
  *(a1 + 69) = v114;
  *(a1 + 70) = v105;
  *(a1 + 71) = v106;
  *(a1 + 72) = v102;
  *(a1 + 73) = v97;
  return sub_18E48(v124, &qword_2876E8, &qword_1FC308);
}

uint64_t sub_1230B0@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_1E1730();

    if (*(v5 + 16))
    {
      v6 = sub_A2F4(0xD00000000000001ALL, 0x8000000000216930);
      if (v7)
      {
        sub_326BC(*(v5 + 56) + 32 * v6, &v62);

        v8 = swift_dynamicCast();
        if (v8)
        {
          v9 = v60;
        }

        else
        {
          v9 = 0;
        }

        if (v8)
        {
          v10 = *(&v60 + 1);
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_12:
  v11 = [v2 mainBundle];
  v12 = [v11 infoDictionary];

  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = sub_1E1730();

  if (!*(v13 + 16) || (v14 = sub_A2F4(0x656C646E75424643, 0xEF6E6F6973726556), (v15 & 1) == 0))
  {

    goto LABEL_36;
  }

  sub_326BC(*(v13 + 56) + 32 * v14, &v62);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_36:
    v29 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_37;
  }

  v18 = *(&v60 + 1);
  v17 = v60;
  v19 = HIBYTE(*(&v60 + 1)) & 0xFLL;
  v20 = v60 & 0xFFFFFFFFFFFFLL;
  if ((*(&v60 + 1) & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(*(&v60 + 1)) & 0xFLL;
  }

  else
  {
    v21 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    v29 = 0;
    goto LABEL_37;
  }

  if ((*(&v60 + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v60 + 1) & 0x2000000000000000) != 0)
    {
      *&v62 = v60;
      *(&v62 + 1) = *(&v60 + 1) & 0xFFFFFFFFFFFFFFLL;
      if (v60 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v46 = &v62 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = (v23 * 10) >> 64;
              v49 = 10 * v23;
              if (v48 != v49 >> 63)
              {
                break;
              }

              v28 = __OFADD__(v49, v47);
              v23 = v49 + v47;
              if (v28)
              {
                break;
              }

              ++v46;
              if (!--v19)
              {
                goto LABEL_103;
              }
            }
          }

          goto LABEL_102;
        }

LABEL_113:
        __break(1u);
        return result;
      }

      if (v60 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v53 = &v62;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = (v23 * 10) >> 64;
            v56 = 10 * v23;
            if (v55 != v56 >> 63)
            {
              break;
            }

            v28 = __OFADD__(v56, v54);
            v23 = v56 + v54;
            if (v28)
            {
              break;
            }

            ++v53;
            if (!--v19)
            {
              goto LABEL_103;
            }
          }
        }

        goto LABEL_102;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v38 = &v62 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = (v23 * 10) >> 64;
            v41 = 10 * v23;
            if (v40 != v41 >> 63)
            {
              break;
            }

            v28 = __OFSUB__(v41, v39);
            v23 = v41 - v39;
            if (v28)
            {
              break;
            }

            ++v38;
            if (!--v19)
            {
              goto LABEL_103;
            }
          }
        }

        goto LABEL_102;
      }
    }

    else
    {
      if ((v60 & 0x1000000000000000) != 0)
      {
        result = (*(&v60 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1E1AF0();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              v42 = (result + 1);
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  goto LABEL_102;
                }

                v44 = (v23 * 10) >> 64;
                v45 = 10 * v23;
                if (v44 != v45 >> 63)
                {
                  goto LABEL_102;
                }

                v28 = __OFADD__(v45, v43);
                v23 = v45 + v43;
                if (v28)
                {
                  goto LABEL_102;
                }

                ++v42;
                if (!--v19)
                {
                  goto LABEL_103;
                }
              }
            }

            goto LABEL_94;
          }

          goto LABEL_102;
        }

        goto LABEL_112;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v50 = *result - 48;
              if (v50 > 9)
              {
                goto LABEL_102;
              }

              v51 = (v23 * 10) >> 64;
              v52 = 10 * v23;
              if (v51 != v52 >> 63)
              {
                goto LABEL_102;
              }

              v28 = __OFADD__(v52, v50);
              v23 = v52 + v50;
              if (v28)
              {
                goto LABEL_102;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_94;
        }

LABEL_102:
        v23 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_103;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            v24 = (result + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_102;
              }

              v26 = (v23 * 10) >> 64;
              v27 = 10 * v23;
              if (v26 != v27 >> 63)
              {
                goto LABEL_102;
              }

              v28 = __OFSUB__(v27, v25);
              v23 = v27 - v25;
              if (v28)
              {
                goto LABEL_102;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_103;
              }
            }
          }

LABEL_94:
          LOBYTE(v19) = 0;
LABEL_103:
          LOBYTE(v60) = v19;
          v57 = v19;
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      __break(1u);
    }

    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v58 = sub_E8DBC(v60, *(&v60 + 1), 10);
  v57 = v59;

  v23 = v58;
LABEL_104:
  if (v57)
  {
    v29 = 0;
  }

  else
  {
    v29 = v23;
  }

LABEL_37:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyJSVersion"];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_1E1A60();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    if (*(&v61 + 1))
    {
      result = swift_dynamicCast();
      v33 = *(&v60 + 1);
      v32 = v60;
      if (!result)
      {
        v32 = 0;
        v33 = 0;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  result = sub_18E48(&v62, &unk_281B50, &unk_1EDD70);
  v32 = 0;
  v33 = 0;
LABEL_46:
  if (v10)
  {
    v34 = v9;
  }

  else
  {
    v34 = 0;
  }

  if (v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  if (!v33)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  *a1 = v34;
  a1[1] = v35;
  if (v18)
  {
    v36 = v17;
  }

  else
  {
    v36 = 0;
  }

  a1[2] = v29;
  a1[3] = v32;
  if (v18)
  {
    v37 = v18;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  a1[4] = v33;
  a1[5] = v36;
  a1[6] = v37;
  return result;
}

uint64_t sub_1236C0@<X0>(uint64_t a1@<X8>)
{
  bzero(&v22, 0x500uLL);
  uname(&v22);
  v2 = sub_1E17F0();
  v4 = v3;
  v5 = [objc_opt_self() bu_osBundleVersionString];
  v6 = sub_1E1780();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 systemName];

  v12 = sub_1E1780();
  v14 = v13;

  v15 = [v9 currentDevice];
  v16 = [v15 systemVersion];

  v17 = sub_1E1780();
  v19 = v18;

  result = sub_1E1270();
  if (result)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v21;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  return result;
}

void sub_123854(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v27 = 0u;
    v28 = 0u;
LABEL_9:
    sub_18E48(&v27, &unk_281B50, &unk_1EDD70);
    goto LABEL_10;
  }

  v4 = [Strong analyticsSessionDataForKey:@"BASessionDataKeyStoreFrontID"];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1E1A60();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v6 = *(&v25 + 1);
    v5 = v25;
    goto LABEL_11;
  }

LABEL_10:
  v5 = 0;
  v6 = 0xE000000000000000;
LABEL_11:
  v7 = *(v1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = sub_1E1780();
  v12 = v11;
  v13 = type metadata accessor for AnalyticsController.LockProtectedData();
  v14 = *(v8 + *(v13 + 20));
  if (*(v14 + 16))
  {
    v24 = v6;
    v15 = v5;
    v16 = sub_A2F4(v10, v12);
    v18 = v17;

    if (v18)
    {
      v19 = (*(v14 + 56) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v5 = v15;
    v6 = v24;
  }

  else
  {

    v21 = 0;
    v20 = 0;
  }

  os_unfair_lock_unlock((v7 + v9));
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  os_unfair_lock_lock((v7 + v9));
  v23 = *(v8 + *(v13 + 44));

  os_unfair_lock_unlock((v7 + v9));
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = v23;
}

Swift::String_optional __swiftcall AnalyticsController.contentPrivateID(for:)(Swift::String a1)
{
  v1 = sub_123AEC(a1._countAndFlagsBits, a1._object, &kBAPrivateContentSeed);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall AnalyticsController.contentUserID(for:)(Swift::String a1)
{
  v1 = sub_123AEC(a1._countAndFlagsBits, a1._object, &kBAPrivateUserSeed);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_123AEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
  v6 = v5 + *(*v5 + class metadata base offset for ManagedBuffer + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = *a3;
  v9 = sub_1E1780();
  v11 = v10;
  v12 = *(v6 + *(type metadata accessor for AnalyticsController.LockProtectedData() + 20));
  if (!*(v12 + 16))
  {

    goto LABEL_7;
  }

  v13 = sub_A2F4(v9, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_7:
    os_unfair_lock_unlock((v5 + v7));
    return 0;
  }

  v16 = (*(v12 + 56) + 16 * v13);
  v17 = *v16;
  v18 = v16[1];

  os_unfair_lock_unlock((v5 + v7));
  if (v18)
  {
    v19 = sub_1E1770();
    v20 = sub_1E1770();

    v21 = BAObfuscateID(v19, v20);

    if (v21)
    {
      v17 = sub_1E1780();

      return v17;
    }

    return 0;
  }

  return v17;
}

id sub_123C94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1E1780();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1E1770();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t AnalyticsController.performAfterPrivateDataFetched(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E15E0();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1610();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR___BAAnalyticsController_privateDataQueue);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_125EB0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E0E8;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  sub_1E1600();
  v21 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

id sub_1240C4(SEL *a1)
{
  if (*(v1 + OBJC_IVAR___BAAnalyticsController_assertionProvider))
  {
    return [*(v1 + OBJC_IVAR___BAAnalyticsController_assertionProvider) *a1];
  }

  else
  {
    return 0;
  }
}

id sub_12410C(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = *(a1 + OBJC_IVAR___BAAnalyticsController_assertionProvider);
  if (result)
  {
    return [result *a3];
  }

  return result;
}

Swift::Void __swiftcall AnalyticsController.privateDataChanged(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1E15E0();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1610();
  v17 = *(v8 - 8);
  v18 = v8;
  v9 = *(v17 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR___BAAnalyticsController_workQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2]._rawValue = v13;
  v14[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_125EDC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11AD8C;
  aBlock[3] = &unk_26E138;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_1E1600();
  v20 = _swiftEmptyArrayStorage;
  sub_127AFC(&qword_287740, &type metadata accessor for DispatchWorkItemFlags);
  sub_3D68(&unk_287C10, &qword_1FC390);
  sub_125E1C(&qword_287748, &unk_287C10, &qword_1FC390);
  sub_1E1A70();
  sub_1E19F0();
  _Block_release(v15);

  (*(v19 + 8))(v7, v4);
  (*(v17 + 8))(v11, v18);
}

void sub_124430(uint64_t a1, uint64_t a2)
{
  v3 = sub_3D68(&qword_287EC0, &qword_205170);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___BAAnalyticsController_lockProtectedData;
    v10 = *(Strong + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    __chkstk_darwin(Strong);
    *&v20[-16] = a2;
    v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
    v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v10 + v12));
    sub_127910(v10 + v11, &v21);
    os_unfair_lock_unlock((v10 + v12));
    if (v21 == 1)
    {
      if (v8[OBJC_IVAR___BAAnalyticsController_sessionState] == 1)
      {
        v8[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 0;
        v14 = sub_1E1900();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v8;
        v16 = v8;
        sub_170FDC(0, 0, v6, &unk_1FD168, v15);

        return;
      }

      v17 = *&v8[v9];
      __chkstk_darwin(v13);
      *&v20[-16] = a2;
      v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
      v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v17 + v19));
      sub_127B70(v17 + v18, &v21);
      os_unfair_lock_unlock((v17 + v19));
      sub_124C5C(v8);
      v8[OBJC_IVAR___BAAnalyticsController_privateDataCacheIsCurrent] = 1;
    }
  }
}

uint64_t sub_1246FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a4;
  return _swift_task_switch(sub_12471C, 0, 0);
}

uint64_t sub_12471C()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1248B0;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_3D68(&qword_287EC8, &unk_1FD170);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_124A04;
    *(v0 + 104) = &unk_26E420;
    *(v0 + 112) = v5;
    [v3 analyticsController:v4 resetSessionWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    **(v0 + 168) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1248B0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_124990, 0, 0);
}

uint64_t sub_124990()
{
  v1 = *(v0 + 184);
  swift_unknownObjectRelease();
  **(v0 + 168) = *(v0 + 184) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_124A04(uint64_t a1)
{
  v1 = *sub_48B8((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_124AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v27 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v28 = v3;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v3 + 56) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(a1 + *(type metadata accessor for AnalyticsController.LockProtectedData() + 20));
    if (!*(v15 + 16))
    {
      goto LABEL_20;
    }

    v16 = (*(v3 + 48) + 16 * v11);
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_A2F4(v17, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

LABEL_20:

      v25 = 1;
LABEL_21:
      *a3 = v25;
      return result;
    }

    v6 &= v6 - 1;
    v22 = (*(v15 + 56) + 16 * v19);
    if (*v22 == v14 && v22[1] == v13)
    {

      v3 = v28;
    }

    else
    {
      v24 = sub_1E1D30();

      v3 = v28;
      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v25 = 0;
      goto LABEL_21;
    }

    v6 = *(v27 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_124C5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + OBJC_IVAR___BAAnalyticsController_lockProtectedData);
    v5 = v4 + *(*v4 + class metadata base offset for ManagedBuffer + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    v7 = sub_1E1780();
    v9 = v8;
    v10 = *(v5 + *(type metadata accessor for AnalyticsController.LockProtectedData() + 20));
    if (*(v10 + 16))
    {
      v11 = sub_A2F4(v7, v9);
      v13 = v12;

      if (v13)
      {
        v14 = (*(v10 + 56) + 16 * v11);
        v15 = *v14;
        v16 = v14[1];

        os_unfair_lock_unlock((v4 + v6));
        if (v16)
        {
          v17 = sub_1E1770();

LABEL_9:
          [v3 setUserID:v17];
          swift_unknownObjectRelease();

          return;
        }

LABEL_8:
        v17 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    os_unfair_lock_unlock((v4 + v6));
    goto LABEL_8;
  }
}

uint64_t sub_124DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v50 = 0;
  v8 = 0;
  v52 = v7;
  v53 = v3;
  while (v6)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (v8 << 10) | (16 * v10);
      v12 = (*(a2 + 48) + v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*(a2 + 56) + v11);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(type metadata accessor for AnalyticsController.LockProtectedData() + 20);
      v19 = *(a1 + v18);
      v20 = *(v19 + 16);

      if (v20)
      {
        break;
      }

      v21 = v13;
      v51 = (a1 + v18);
      v23 = v16;
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v51;
      v56 = *v51;
      v30 = v21;
      v32 = sub_A2F4(v21, v14);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_34;
      }

      if (v29[3] < v35)
      {
        v36 = isUniquelyReferenced_nonNull_native;
        v37 = v31;
        sub_172F90(v35, v36);
        v38 = sub_A2F4(v30, v14);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_36;
        }

        v32 = v38;
        goto LABEL_23;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v31;
        sub_173FF4();
LABEL_23:
        v31 = v37;
      }

      if (v31)
      {

        v40 = v56;
        v41 = (v56[7] + 16 * v32);
        v42 = v41[1];
        *v41 = v23;
        v41[1] = v17;
      }

      else
      {
        v40 = v56;
        v56[(v32 >> 6) + 8] |= 1 << v32;
        v43 = (v56[6] + 16 * v32);
        *v43 = v30;
        v43[1] = v14;
        v44 = (v56[7] + 16 * v32);
        *v44 = v23;
        v44[1] = v17;
        v45 = v56[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_35;
        }

        v56[2] = v47;
      }

      v7 = v52;
      v3 = v53;
      *v51 = v40;
      v50 = 1;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v21 = v13;
    v22 = sub_A2F4(v13, v14);
    v23 = v16;
    if ((v24 & 1) == 0 || ((v25 = (*(v19 + 56) + 16 * v22), *v25 == v16) ? (v26 = v25[1] == v17) : (v26 = 0), !v26 && (sub_1E1D30() & 1) == 0))
    {
      v51 = (a1 + v18);
      v27 = *(a1 + v18);
      goto LABEL_19;
    }

    v7 = v52;
    v3 = v53;
  }

LABEL_6:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      *a3 = v50 & 1;
      return result;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1E1D60();
  __break(1u);
  return result;
}