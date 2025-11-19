uint64_t sub_100038A08()
{
  v0 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10004BAC0();
  sub_100004D10(v4, qword_1000660C8);
  v5 = sub_100004D74(v4, qword_1000660C8);
  sub_10004BAB0();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100038B38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for WidgetTodayCard();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayCardListViewItem.Content(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v2, v16, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    if (qword_100064748 != -1)
    {
      swift_once();
    }

    v17 = sub_10004BAC0();
    v18 = sub_100004D74(v17, qword_1000660C8);
    return (*(*(v17 - 8) + 16))(a1, v18, v17);
  }

  else
  {
    sub_10003ACD4(v16, v12, type metadata accessor for WidgetTodayCard);
    sub_100003E3C(&v12[*(v8 + 44)], v7, &qword_1000663A0, &unk_10004FF80);
    v20 = sub_10004BAC0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v7, 1, v20) == 1)
    {
      if (qword_100064748 != -1)
      {
        swift_once();
      }

      v23 = sub_100004D74(v20, qword_1000660C8);
      (*(v21 + 16))(a1, v23, v20);
      sub_100039E8C(v12, type metadata accessor for WidgetTodayCard);
      result = v22(v7, 1, v20);
      if (result != 1)
      {
        return sub_100003EA4(v7, &qword_1000663A0, &unk_10004FF80);
      }
    }

    else
    {
      sub_100039E8C(v12, type metadata accessor for WidgetTodayCard);
      return (*(v21 + 32))(a1, v7, v20);
    }
  }

  return result;
}

uint64_t sub_100038ECC@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v28 - v4;
  v6 = sub_10004BB40();
  v28[0] = *(v6 - 8);
  v7 = *(v28[0] + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardDetailView.Heading(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WidgetTodayCard();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayCardListViewItem.Content(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v28[1], v22, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    *a1 = xmmword_10004FC60;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10003ACD4(v22, v18, type metadata accessor for WidgetTodayCard);
    sub_100003E3C(&v18[*(v14 + 48)], v5, &qword_1000655E8, &qword_10004F6C0);
    v24 = v28[0];
    if ((*(v28[0] + 48))(v5, 1, v6) == 1)
    {
      sub_100003EA4(v5, &qword_1000655E8, &qword_10004F6C0);
      v25 = *(v18 + 2);
      v26 = *(v18 + 3);

      sub_100039E8C(v18, type metadata accessor for WidgetTodayCard);
      *v13 = v25;
      *(v13 + 1) = v26;
    }

    else
    {
      sub_100039E8C(v18, type metadata accessor for WidgetTodayCard);
      v27 = *(v24 + 32);
      v27(v9, v5, v6);
      v27(v13, v9, v6);
    }

    swift_storeEnumTagMultiPayload();
    return sub_10003ACD4(v13, a1, type metadata accessor for CardDetailView.Heading);
  }
}

uint64_t sub_100039280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10004C1B0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100003650(&qword_100066390, &qword_10004FEC0);
  return sub_1000392D4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000392D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for WidgetTodayCard();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayCardListViewItem.Content(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardDetailView.Heading(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for CardDetailView(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v48 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (&v44 - v20);
  __chkstk_darwin(v22);
  v47 = &v44 - v23;
  v24 = type metadata accessor for ThumbnailArtworkView(0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v45 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v44 - v28;
  sub_100039E24(a1, &v44 - v28, type metadata accessor for TodayCardListViewItem.Content);
  v46 = v15;
  sub_100038ECC(v15);
  sub_100039E24(a1, v11, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    v30 = 0x800000010005AD50;
    v31 = 0xD00000000000002ALL;
  }

  else
  {
    sub_10003ACD4(v11, v7, type metadata accessor for WidgetTodayCard);
    v31 = *(v7 + 4);
    v30 = *(v7 + 5);

    sub_100039E8C(v7, type metadata accessor for WidgetTodayCard);
  }

  *v21 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(v21 + v16[5]) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v21 + v16[6]) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v32 = v16[7];
  *(v21 + v32) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  sub_10003ACD4(v46, v21 + v16[8], type metadata accessor for CardDetailView.Heading);
  v33 = v21 + v16[9];
  *v33 = sub_100021D20;
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = (v21 + v16[10]);
  *v34 = v31;
  v34[1] = v30;
  v35 = v21 + v16[11];
  *v35 = sub_100021D20;
  *(v35 + 1) = 0;
  v35[16] = 0;
  *(v21 + v16[12]) = 0x8000000000000000;
  *(v21 + v16[13]) = 0x7FF0000000000000;
  v36 = (v21 + v16[14]);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = v47;
  sub_10003ACD4(v21, v47, type metadata accessor for CardDetailView);
  v38 = v45;
  sub_100039E24(v29, v45, type metadata accessor for ThumbnailArtworkView);
  v39 = v48;
  sub_100039E24(v37, v48, type metadata accessor for CardDetailView);
  v40 = v49;
  sub_100039E24(v38, v49, type metadata accessor for ThumbnailArtworkView);
  v41 = sub_100003650(&qword_100066398, &unk_10004FF70);
  v42 = v40 + *(v41 + 48);
  *v42 = 0x4028000000000000;
  *(v42 + 8) = 0;
  sub_100039E24(v39, v40 + *(v41 + 64), type metadata accessor for CardDetailView);
  sub_100039E8C(v37, type metadata accessor for CardDetailView);
  sub_100039E8C(v29, type metadata accessor for ThumbnailArtworkView);
  sub_100039E8C(v39, type metadata accessor for CardDetailView);
  return sub_100039E8C(v38, type metadata accessor for ThumbnailArtworkView);
}

uint64_t sub_100039874()
{
  v1 = sub_10004BAC0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_100038B38(&v5[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = v0;
  sub_100003650(&qword_100066380, &qword_10004FEB8);
  sub_100003D30(&qword_100066388, &qword_100066380, &qword_10004FEB8);
  return sub_10004C4B0();
}

uint64_t sub_100039970@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_10004C020();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100066210, &qword_10004FD88);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_100003650(&qword_100066218, &qword_10004FD90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ThumbnailContentView(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayCardListViewItem.Content(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v2, v22, type metadata accessor for TodayCardListViewItem.Content);
  v23 = type metadata accessor for WidgetTodayCard();
  v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
  sub_100039E24(v2, v18, type metadata accessor for TodayCardListViewItem.Content);
  if (v24 == 1)
  {
    sub_10004C010();
    v25 = sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView);
    sub_10004C5A0();
    (*(v31 + 8))(v6, v32);
    sub_100039E8C(v18, type metadata accessor for ThumbnailContentView);
    v27 = v33;
    v26 = v34;
    (*(v33 + 16))(v14, v10, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v15;
    v37 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10004C320();
    return (*(v27 + 8))(v10, v26);
  }

  else
  {
    sub_100039E24(v18, v14, type metadata accessor for ThumbnailContentView);
    swift_storeEnumTagMultiPayload();
    v29 = sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView);
    v36 = v15;
    v37 = v29;
    swift_getOpaqueTypeConformance2();
    sub_10004C320();
    sub_100039E8C(v18, type metadata accessor for ThumbnailContentView);
    return sub_100039E8C(v22, type metadata accessor for TodayCardListViewItem.Content);
  }
}

uint64_t sub_100039E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100039EF4()
{
  result = qword_100066280;
  if (!qword_100066280)
  {
    sub_100003698(&qword_100066268, &qword_10004FE10);
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066280);
  }

  return result;
}

unint64_t sub_100039FAC()
{
  result = qword_100066288;
  if (!qword_100066288)
  {
    sub_100003698(&qword_100066270, &qword_10004FE18);
    sub_10003A068(&qword_100066290, type metadata accessor for TodayCardListViewItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066288);
  }

  return result;
}

uint64_t sub_10003A068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayCardListViewItem.Content(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayCardListViewItem.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003A1B8()
{
  result = type metadata accessor for TodayCardListViewItem.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003A228()
{
  result = qword_100066340;
  if (!qword_100066340)
  {
    sub_100003698(&qword_100066348, &qword_10004FE58);
    sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView);
    type metadata accessor for ThumbnailContentView(255);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066340);
  }

  return result;
}

unint64_t sub_10003A310()
{
  result = qword_100066350;
  if (!qword_100066350)
  {
    sub_100003698(&qword_100066240, &qword_10004FDB0);
    sub_10003AA08(&qword_100066358, &qword_100066238, &qword_10004FDA8, sub_10003A3F4);
    sub_100003D30(&qword_100066378, &qword_100066248, &qword_10004FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066350);
  }

  return result;
}

unint64_t sub_10003A3F4()
{
  result = qword_100066360;
  if (!qword_100066360)
  {
    sub_100003698(&qword_100066230, &qword_10004FDA0);
    sub_100003D30(&qword_100066368, &qword_100066370, &qword_10004FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066360);
  }

  return result;
}

unint64_t sub_10003A58C()
{
  result = qword_100066490;
  if (!qword_100066490)
  {
    sub_100003698(&qword_100066478, &qword_100050038);
    sub_10003A618();
    sub_10003A7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066490);
  }

  return result;
}

unint64_t sub_10003A618()
{
  result = qword_100066498;
  if (!qword_100066498)
  {
    sub_100003698(&qword_100066470, &qword_100050030);
    sub_10003A6D0();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066498);
  }

  return result;
}

unint64_t sub_10003A6D0()
{
  result = qword_1000664A0;
  if (!qword_1000664A0)
  {
    sub_100003698(&qword_1000664A8, &unk_100050050);
    sub_10003AA08(&qword_1000664B0, &qword_1000664B8, &qword_100050A40, sub_10000AD24);
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664A0);
  }

  return result;
}

unint64_t sub_10003A7B4()
{
  result = qword_1000664D8;
  if (!qword_1000664D8)
  {
    sub_100003698(&qword_100066460, &qword_100050018);
    sub_10003A86C();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664D8);
  }

  return result;
}

unint64_t sub_10003A86C()
{
  result = qword_1000664E0;
  if (!qword_1000664E0)
  {
    sub_100003698(&qword_100066458, &qword_100050010);
    sub_10003A924();
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664E0);
  }

  return result;
}

unint64_t sub_10003A924()
{
  result = qword_1000664E8;
  if (!qword_1000664E8)
  {
    sub_100003698(&qword_100066450, &qword_100050008);
    sub_10003AA08(&qword_1000664F0, &qword_1000664F8, &qword_100050070, sub_10003AA8C);
    sub_100003D30(&qword_100066508, &qword_100066510, &qword_100050078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664E8);
  }

  return result;
}

uint64_t sub_10003AA08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003AA8C()
{
  result = qword_100066500;
  if (!qword_100066500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066500);
  }

  return result;
}

unint64_t sub_10003AAE0()
{
  result = qword_100066518;
  if (!qword_100066518)
  {
    sub_100003698(&qword_100066488, &qword_100050048);
    sub_10003AB98();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066518);
  }

  return result;
}

unint64_t sub_10003AB98()
{
  result = qword_100066520;
  if (!qword_100066520)
  {
    sub_100003698(&qword_100066528, &qword_100050080);
    sub_10003AC50();
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066520);
  }

  return result;
}

unint64_t sub_10003AC50()
{
  result = qword_100066530;
  if (!qword_100066530)
  {
    sub_100003698(&qword_100066538, &qword_100050088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066530);
  }

  return result;
}

uint64_t sub_10003ACD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayCardListViewItem.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003650(&qword_100066540, &unk_100050090);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003AE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TodayCardListViewItem.Content(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003650(&qword_100066540, &unk_100050090);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10003AF88()
{
  type metadata accessor for TodayCardListViewItem.Content(319);
  if (v0 <= 0x3F)
  {
    sub_10003B00C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B00C()
{
  if (!qword_1000665B0)
  {
    sub_10004CB10();
    v0 = sub_10004BF10();
    if (!v1)
    {
      atomic_store(v0, &qword_1000665B0);
    }
  }
}

unint64_t sub_10003B068()
{
  result = qword_1000665E0;
  if (!qword_1000665E0)
  {
    sub_100003698(&qword_1000665E8, qword_1000500C0);
    sub_10003A58C();
    sub_10003AAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000665E0);
  }

  return result;
}

unint64_t sub_10003B110()
{
  result = qword_1000665F8;
  if (!qword_1000665F8)
  {
    sub_100003698(&qword_1000665F0, &qword_100050118);
    sub_10003B19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000665F8);
  }

  return result;
}

unint64_t sub_10003B19C()
{
  result = qword_100066600;
  if (!qword_100066600)
  {
    sub_100003698(&qword_100066608, &unk_100050120);
    sub_1000267DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066600);
  }

  return result;
}

unint64_t sub_10003B22C()
{
  result = qword_100066610;
  if (!qword_100066610)
  {
    sub_100003698(&qword_100066618, &qword_100050138);
    sub_10003B110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066610);
  }

  return result;
}

void sub_10003B33C()
{
  sub_10003B3E8(319, &qword_1000666C0, sub_10001FE50);
  if (v0 <= 0x3F)
  {
    sub_10003B3E8(319, &unk_1000666C8, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003B3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003B440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10003B640@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100064958, &qword_10004FA30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CardDetailView(0);
  sub_100003E3C(v1 + *(v12 + 24), v11, &qword_100064958, &qword_10004FA30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004BF00();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10003B848@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10003B8F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003B978(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_10004C270();
  sub_100004D10(v5, a2);
  v6 = sub_100004D74(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_10003BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, uint64_t a9, uint64_t a10)
{
  v94 = a4;
  v79 = a3;
  v80 = a2;
  v87 = a1;
  v91 = a5;
  v93 = a10;
  v92 = a9;
  v90 = sub_10004BFC0();
  v89 = *(v90 - 8);
  v13 = *(v89 + 64);
  __chkstk_darwin(v90);
  v86 = v14;
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicTypeFont();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = (&v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100003650(&qword_100065250, &unk_10004E730);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v75 - v24;
  v81 = sub_100003650(&qword_100066878, &qword_1000503A8);
  v26 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v28 = &v75 - v27;
  v82 = sub_100003650(&qword_100066880, &qword_1000503B0);
  v29 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v85 = &v75 - v30;
  v84 = sub_100003650(&qword_100066888, &qword_1000503B8);
  v31 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v83 = &v75 - v32;

  v33 = sub_10004C500();
  v35 = v34;
  v37 = v36;
  if (qword_100064778 != -1)
  {
    swift_once();
  }

  v77 = sub_10004C4C0();
  v76 = v38;
  v40 = v39;
  v78 = v41;
  sub_10001AC44(v33, v35, v37 & 1);

  v42 = sub_10004C270();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v25, v79, v42);
  v44 = *(v43 + 56);
  v44(v25, 0, 1, v42);
  sub_100007C30(v25, v22, &qword_100065250, &unk_10004E730);
  *v18 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v45 = v15[5];
  *(v18 + v45) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v46 = v15[7];
  v44(v18 + v46, 1, 1, v42);
  *(v18 + v15[6]) = v80;

  sub_100015C48(v22, v18 + v46);
  v47 = sub_100003650(&qword_100065258, &qword_100050430);
  sub_1000410A4(v18, &v28[*(v47 + 36)], type metadata accessor for DynamicTypeFont);
  v48 = v76;
  *v28 = v77;
  *(v28 + 1) = v48;
  v28[16] = v40 & 1;
  *(v28 + 3) = v78;
  sub_100015D1C(v18);
  KeyPath = swift_getKeyPath();
  v50 = &v28[*(sub_100003650(&qword_100066890, &qword_100050468) + 36)];
  *v50 = KeyPath;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = swift_getKeyPath();
  v52 = &v28[*(sub_100003650(&qword_100066898, &qword_1000504A0) + 36)];
  *v52 = v51;
  v52[8] = 0;
  *&v28[*(sub_100003650(&qword_1000668A0, &qword_1000504A8) + 36)] = 256;
  v53 = swift_getKeyPath();
  v54 = &v28[*(sub_100003650(&qword_1000668A8, &qword_1000504E0) + 36)];
  *v54 = v53;
  v54[1] = 0xC000000000000000;
  v55 = sub_10004C5D0();
  v56 = swift_getKeyPath();
  v57 = &v28[*(v81 + 36)];
  *v57 = v56;
  v57[1] = v55;
  sub_10004C720();
  sub_10004C040();
  v58 = v85;
  sub_100007C30(v28, v85, &qword_100066878, &qword_1000503A8);
  v59 = (v58 + *(v82 + 36));
  v60 = v100;
  v59[4] = v99;
  v59[5] = v60;
  v59[6] = v101;
  v61 = v96;
  *v59 = v95;
  v59[1] = v61;
  v62 = v98;
  v59[2] = v97;
  v59[3] = v62;
  v82 = sub_10004C720();
  v81 = v63;
  v64 = v89;
  v65 = v88;
  v66 = v90;
  (*(v89 + 16))(v88, v87, v90);
  v67 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v68 = (v86 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v92;
  *(v69 + 16) = v94;
  *(v69 + 24) = v70;
  *(v69 + 32) = a6;
  *(v69 + 40) = a7;
  (*(v64 + 32))(v69 + v67, v65, v66);
  *(v69 + v68) = v93;
  *(v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) = a8;
  v71 = v83;
  sub_100007C30(v58, v83, &qword_100066880, &qword_1000503B0);
  v72 = (v71 + *(v84 + 36));
  *v72 = sub_100040BB0;
  v72[1] = v69;
  v73 = v81;
  v72[2] = v82;
  v72[3] = v73;
  sub_100007C30(v71, v91, &qword_100066888, &qword_1000503B8);
}

double sub_10003C27C@<D0>(uint64_t a1@<X4>, uint64_t a2@<X8>, double a3@<D1>)
{
  v35 = a1;
  v29 = sub_10004C000();
  v36 = *(v29 - 8);
  v5 = v36;
  v6 = *(v36 + 64);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43 = 0x746E656964617267;
  *(&v43 + 1) = 0xE800000000000000;
  sub_10004CEF0();
  v32 = enum case for CoordinateSpace.named(_:);
  v31 = *(v5 + 104);
  v31(v8);
  sub_100003650(&qword_1000668B0, &qword_100050518);
  v9 = swift_allocObject();
  v30 = xmmword_100050140;
  *(v9 + 16) = xmmword_100050140;
  sub_10004C5F0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v9 + 32) = sub_10004C6B0();
  *(v9 + 40) = v10;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v9 + 48) = sub_10004C6B0();
  *(v9 + 56) = v11;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v9 + 64) = sub_10004C6B0();
  *(v9 + 72) = v12;
  sub_10004C5F0();
  *(v9 + 80) = sub_10004C6B0();
  *(v9 + 88) = v13;
  sub_10004C790();
  sub_10004C6C0();
  sub_10004BFD0();
  v14 = *(v36 + 8);
  v36 += 8;
  v15 = v29;
  v14(v8, v29);
  v34 = sub_10004C720();
  v33 = v16;
  *&v43 = 0x746E656964617267;
  *(&v43 + 1) = 0xE800000000000000;
  sub_10004CEF0();
  (v31)(v8, v32, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v30;
  sub_10004C5F0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v17 + 32) = sub_10004C6B0();
  *(v17 + 40) = v18;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v17 + 48) = sub_10004C6B0();
  *(v17 + 56) = v19;
  sub_10004C5F0();
  sub_10004BFB0();
  sub_10004BFA0();
  sub_10004BFA0();
  *(v17 + 64) = sub_10004C6B0();
  *(v17 + 72) = v20;
  sub_10004C5F0();
  *(v17 + 80) = sub_10004C6B0();
  *(v17 + 88) = v21;
  sub_10004C790();
  sub_10004C6C0();
  sub_10004BFD0();
  v14(v8, v15);
  v22 = v40;
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  result = -a3;
  v24 = v38;
  *a2 = v37;
  *(a2 + 16) = v24;
  *(a2 + 32) = v39;
  *(a2 + 40) = v22;
  v25 = v42;
  *(a2 + 48) = v41;
  *(a2 + 64) = v25;
  v26 = v33;
  *(a2 + 80) = v34;
  *(a2 + 88) = v26;
  v27 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v27;
  *(a2 + 128) = v45;
  *(a2 + 144) = a3 * -0.5;
  *(a2 + 152) = -a3;
  return result;
}

unint64_t sub_10003C7C4(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10003C7EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10003C848(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10003C8A8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10003C8F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
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

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for CardDetailView.Heading(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[10] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_10003CB30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100003650(&qword_100064F90, qword_10004E280);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100003650(&qword_1000648A8, qword_10004DB30);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_100003650(&qword_100066540, &unk_100050090);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = type metadata accessor for CardDetailView.Heading(0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[10] + 8) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_10003CD64()
{
  sub_10003CEF8(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10003CEF8(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      sub_10003CEF8(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_10003CEF8(319, &qword_1000665B0, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CardDetailView.Heading(319);
          if (v4 <= 0x3F)
          {
            sub_10001FEA0();
            if (v5 <= 0x3F)
            {
              sub_10001FE50();
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

void sub_10003CEF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003CF68()
{
  result = sub_10004C480();
  qword_100066620 = result;
  return result;
}

uint64_t sub_10003CF88()
{
  result = sub_10004C490();
  qword_100066628 = result;
  return result;
}

uint64_t sub_10003CFA8()
{
  result = sub_10004C460();
  qword_100066630 = result;
  return result;
}

uint64_t sub_10003CFC8()
{
  result = sub_10004C420();
  qword_100066638 = v1;
  return result;
}

uint64_t sub_10003CFE8()
{
  v1 = sub_10004C4E0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10004C200();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10004BB40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v26[-v11];
  v13 = type metadata accessor for CardDetailView.Heading(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for CardDetailView(0);
  sub_1000410A4(v0 + *(v17 + 32), v16, type metadata accessor for CardDetailView.Heading);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v12, v16, v5);
    sub_10004C1F0();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_10004C1E0(v27);
    (*(v6 + 16))(v9, v12, v5);
    sub_10004C4D0();
    v18 = sub_10004C4F0();
    v20 = v19;
    v22 = v21;
    sub_10004C1D0();
    sub_10001AC44(v18, v20, v22 & 1);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_10004C1E0(v28);
    v23 = sub_10004C220();
    (*(v6 + 8))(v12, v5);
    return v23;
  }

  else if (v16[1])
  {
    v25 = *v16;
    return sub_10004C240();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003D2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v3 = sub_100003650(&qword_1000667D0, &qword_100050330);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v168 = &v144 - v5;
  v167 = sub_100003650(&qword_1000667D8, &qword_100050338);
  v6 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v171 = &v144 - v7;
  v170 = sub_100003650(&qword_1000667E0, &qword_100050340);
  v8 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v173 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v169 = &v144 - v11;
  __chkstk_darwin(v12);
  v172 = &v144 - v13;
  v179 = sub_10004C270();
  v162 = *(v179 - 8);
  v14 = *(v162 + 64);
  __chkstk_darwin(v179);
  v160 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v15;
  __chkstk_darwin(v16);
  v161 = &v144 - v17;
  v18 = sub_10004CB10();
  v163 = *(v18 - 8);
  v164 = v18;
  v19 = *(v163 + 64);
  __chkstk_darwin(v18);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v144 - v23;
  v25 = sub_10004BF00();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v144 - v31;
  v33 = sub_10004CB70();
  v181 = *(v33 - 8);
  v182 = v33;
  v34 = *(v181 + 64);
  __chkstk_darwin(v33);
  v159 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v188 = &v144 - v37;
  v38 = type metadata accessor for CardDetailView(0);
  v180 = *(a1 + v38[12]);
  v184 = sub_10003CFE8();
  v185 = v39;
  v186 = v40;
  v187 = a1;
  v183 = v41;
  v42 = (a1 + v38[10]);
  if (v42[1])
  {
    v43 = *v42;
    v44 = v42[1];

    v176 = sub_10004C240();
    v177 = v45;
    v178 = v46;
    v175 = v47 & 1;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
  }

  v48 = v187;
  sub_10003B440(v188);
  v49 = (v48 + v38[14]);
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[3];
  v165 = v51;
  v166 = v52;
  sub_10003B640(v32);
  (*(v26 + 104))(v29, enum case for ColorScheme.dark(_:), v25);
  LODWORD(v158) = sub_10004BEF0();
  v53 = *(v26 + 8);
  v53(v29, v25);
  v53(v32, v25);
  v54 = v48 + v38[7];
  sub_1000048A4(v24);
  sub_10004CB00();
  v55 = sub_10004CAE0();
  v56 = v164;
  v57 = *(v163 + 8);
  v57(v21, v164);
  v57(v24, v56);
  if (v180 >> 62)
  {
    v59 = v184;
    v58 = v185;
    if (v180 >> 62 == 1)
    {
      v155 = v180 & 0x3FFFFFFFFFFFFFFFLL;
      v61 = v181;
      v60 = v182;
      v62 = *(v181 + 104);
      v63 = v159;
      v150 = enum case for WidgetFamily.systemSmall(_:);
      v149 = v62;
      v146 = v181 + 104;
      v62(v159);
      v64 = sub_10003B8F8(&qword_100065328, &type metadata accessor for WidgetFamily);
      sub_10004CD40();
      v147 = v64;
      sub_10004CD40();
      v66 = *(v61 + 8);
      v65 = v61 + 8;
      v148 = v66;
      v66(v63, v60);
      v67 = 0x3FC999999999999ALL;
      if (v158)
      {
        v68 = 0.2;
      }

      else
      {
        v68 = 0.1;
      }

      v153 = v233;
      v154 = v241;
      if (v158)
      {
        v69 = sub_10004C5C0();
      }

      else
      {
        v69 = sub_10004C5E0();
      }

      v164 = v69;
      v74 = v186;
      if (v55)
      {
        v75 = sub_10004C5E0();
      }

      else
      {

        v67 = 0x3FEE666666666666;
      }

      v76 = v183;
      v163 = v75;
      if (v58)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100040864(v59, v58);
        v77 = sub_10004C230();

        if (v77)
        {
          v145 = v65;
          if (qword_100064750 != -1)
          {
            swift_once();
          }

          v78 = v179;
          v79 = sub_100004D74(v179, qword_100068ED8);
          v80 = *(v162 + 16);
          v80(v161, v79, v78);
          v81 = v184;
          v82 = v184;
          v83 = v58;
          v152 = v74;
          v84 = v76;
          goto LABEL_30;
        }

        v91 = v58;
        v89 = v74 & 1;
        v88 = v76;
        v92 = v74;
        v90 = v91;
        v152 = v92;
      }

      else
      {
        v85 = v178;
        if (!v178)
        {
          *&v241 = sub_10004C5D0();
          sub_100040620(&v241);
          v239 = v247;
          v240[0] = v248[0];
          LOBYTE(v240[1]) = v248[1];
          v235 = v243;
          v236 = v244;
          v237 = v245;
          v238 = v246;
          v233 = v241;
          v234 = v242;
          sub_100003650(&qword_100066810, &qword_100050358);
          sub_1000403CC();
          sub_10004C320();
LABEL_47:
          v213 = v204;
          v214 = v205;
          LOBYTE(v215) = v206;
          v209 = v200;
          v210 = v201;
          v211 = v202;
          v212 = v203;
          v207 = v198;
          v208 = v199;
          sub_10004062C(&v207);
          v247 = v213;
          v248[0] = v214;
          LOWORD(v248[1]) = v215;
          v243 = v209;
          v244 = v210;
          v245 = v211;
          v246 = v212;
          v241 = v207;
          v242 = v208;
          sub_100003E3C(&v198, &v233, &qword_100066800, &qword_100050350);
          sub_100003650(&qword_100066800, &qword_100050350);
          sub_100040340();
          sub_10004C320();
          v222 = v195;
          v223 = v196;
          v218 = v191;
          v219 = v192;
          v220 = v193;
          v221 = v194;
          v216 = v189;
          v217 = v190;
          v247 = v195;
          v248[0] = v196;
          v243 = v191;
          v244 = v192;
          v245 = v193;
          v246 = v194;
          v224 = v197;
          LOWORD(v248[1]) = v197;
          v241 = v189;
          v242 = v190;
          sub_100040618(&v241);
          v231 = v247;
          v232[0] = v248[0];
          *(v232 + 15) = *(v248 + 15);
          v227 = v243;
          v228 = v244;
          v229 = v245;
          v230 = v246;
          v225 = v241;
          v226 = v242;
          sub_100003E3C(&v216, &v233, &qword_1000667E8, &qword_100050348);
          sub_100003650(&qword_1000667E8, &qword_100050348);
          sub_1000402B4();
          sub_10004C320();

          sub_100003EA4(&v216, &qword_1000667E8, &qword_100050348);
          sub_100003EA4(&v198, &qword_100066800, &qword_100050350);
          sub_1000405C8(v176, v178);
          sub_1000405C8(v184, v185);
          v255 = v239;
          v256[0] = v240[0];
          *(v256 + 15) = *(v240 + 15);
          v251 = v235;
          v252 = v236;
          v253 = v237;
          v254 = v238;
          v249 = v233;
          v250 = v234;
          v70 = v174;
          v71 = v171;
          v72 = v168;
          v73 = v169;
          goto LABEL_48;
        }

        v86 = v177;

        v241 = v59;
        *&v242 = v74;
        *(&v242 + 1) = v76;
        v87 = v175;
        v59 = v176;
        *&v243 = v176;
        *(&v243 + 1) = v85;
        *&v244 = v175;
        *(&v244 + 1) = v86;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100003EA4(&v241, &qword_100066870, &unk_100050398);
        v88 = v86;
        v89 = v87;
        v90 = v85;
        v152 = v87;
        v76 = v86;
        v91 = v85;
      }

      v156 = v91;
      v158 = v76;
      if (qword_100064758 != -1)
      {
        swift_once();
      }

      v93 = v179;
      v94 = sub_100004D74(v179, qword_100068EF0);
      v95 = *(v162 + 16);
      v95(v161, v94, v93);
      if (!v185)
      {
        v241 = v184;
        *&v242 = v186;
        *(&v242 + 1) = v183;
        v151 = v59;
        *&v243 = v59;
        *(&v243 + 1) = v90;
        v74 = v186;
        *&v244 = v89;
        *(&v244 + 1) = v88;
        sub_100003EA4(&v241, &qword_100066870, &unk_100050398);
        goto LABEL_36;
      }

      v145 = v65;
      v80 = v95;
      v58 = v185;
      v74 = v186;
      v82 = v59;
      v81 = v184;
      v84 = v158;
      v83 = v156;
LABEL_30:

      v151 = v82;
      v96 = sub_10004C230();
      v158 = v84;

      v156 = v83;

      sub_1000405C8(v81, v58);
      if (v96)
      {
        v95 = v80;
        v186 = v74;
        if (qword_100064760 != -1)
        {
          swift_once();
        }

        v97 = &qword_100066620;
        v98 = v157;
LABEL_43:
        v101 = *v97;

        v159 = sub_10004C280();
        v102 = v162;
        v95(v160, v161, v179);
        v103 = (*(v102 + 80) + 56) & ~*(v102 + 80);
        v157 = (v98 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        v104 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
        v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
        v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
        v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
        v108 = swift_allocObject();
        v109 = v156;
        *(v108 + 16) = v151;
        *(v108 + 24) = v109;
        *(v108 + 32) = v152 & 1;
        *(v108 + 40) = v158;
        *(v108 + 48) = v101;
        (*(v102 + 32))(v108 + v103, v160, v179);
        *(v108 + v157) = v180;
        v110 = v164;
        *(v108 + v104) = v163;
        *(v108 + v105) = v67;
        *(v108 + v106) = 0x4045000000000000;
        *(v108 + v107) = v110;
        *(v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;

        v111 = sub_10004C3B0();
        sub_10004BEE0();
        v113 = v112;
        v115 = v114;
        v117 = v116;
        v119 = v118;
        LOBYTE(v241) = 0;
        LOBYTE(v233) = 0;
        if (v154 == v153)
        {
          v120 = 0.0;
        }

        else
        {
          v120 = 0.13962634;
        }

        sub_10004C760();
        v216 = v159;
        LOBYTE(v217) = 0;
        *(&v217 + 1) = sub_100040768;
        *&v218 = v108;
        *(&v218 + 1) = 0x746E656964617267;
        *&v219 = 0xE800000000000000;
        BYTE8(v219) = v111;
        *&v220 = v113;
        *(&v220 + 1) = v115;
        *&v221 = v117;
        *(&v221 + 1) = v119;
        LOBYTE(v222) = 0;
        DWORD1(v222) = *(&v241 + 3);
        *(&v222 + 1) = v241;
        *(&v222 + 1) = v120;
        *&v223 = v121;
        *(&v223 + 1) = v122;
        v239 = v222;
        v240[0] = v223;
        v237 = v220;
        v238 = v221;
        v235 = v218;
        v236 = v219;
        v233 = v159;
        v234 = v217;
        sub_10004085C(&v233);
        v247 = v239;
        v248[0] = v240[0];
        LOBYTE(v248[1]) = v240[1];
        v243 = v235;
        v244 = v236;
        v245 = v237;
        v246 = v238;
        v241 = v233;
        v242 = v234;
        sub_100003E3C(&v216, &v225, &qword_100066810, &qword_100050358);
        sub_100003650(&qword_100066810, &qword_100050358);
        sub_1000403CC();
        sub_10004C320();

        sub_100003EA4(&v216, &qword_100066810, &qword_100050358);
        v247 = v231;
        v248[0] = v232[0];
        LOBYTE(v248[1]) = v232[1];
        v243 = v227;
        v244 = v228;
        v245 = v229;
        v246 = v230;
        v241 = v225;
        v242 = v226;
        (*(v162 + 8))(v161, v179);
        v204 = v247;
        v205 = v248[0];
        v206 = v248[1];
        v200 = v243;
        v201 = v244;
        v202 = v245;
        v203 = v246;
        v198 = v241;
        v199 = v242;
        goto LABEL_47;
      }

      v95 = v80;
LABEL_36:
      v99 = v159;
      v100 = v182;
      v149(v159, v150, v182);
      sub_10004CD40();
      sub_10004CD40();
      v148(v99, v100);
      v186 = v74;
      if (v241 == v233)
      {
        v98 = v157;
        if (qword_100064768 != -1)
        {
          swift_once();
        }

        v97 = &qword_100066628;
      }

      else
      {
        v98 = v157;
        if (qword_100064770 != -1)
        {
          swift_once();
        }

        v97 = &qword_100066630;
      }

      goto LABEL_43;
    }

    *&v241 = sub_10004C5D0();
    sub_1000402A8(&v241);
    v231 = v247;
    v232[0] = v248[0];
    *(v232 + 15) = *(v248 + 15);
    v227 = v243;
    v228 = v244;
    v229 = v245;
    v230 = v246;
    v225 = v241;
    v226 = v242;
    sub_100003650(&qword_1000667E8, &qword_100050348);
    sub_1000402B4();
    sub_10004C320();
    sub_1000405C8(v176, v178);
    sub_1000405C8(v59, v58);
    v255 = v239;
    v256[0] = v240[0];
    *(v256 + 15) = *(v240 + 15);
    v251 = v235;
    v252 = v236;
    v253 = v237;
    v254 = v238;
  }

  else
  {
    *&v216 = v180;
    sub_10004060C(&v216);
    v247 = v222;
    v248[0] = v223;
    LOWORD(v248[1]) = v224;
    v243 = v218;
    v244 = v219;
    v245 = v220;
    v246 = v221;
    v241 = v216;
    v242 = v217;

    sub_100003650(&qword_100066800, &qword_100050350);
    sub_100040340();
    sub_10004C320();
    v247 = v213;
    v248[0] = v214;
    LOWORD(v248[1]) = v215;
    v243 = v209;
    v244 = v210;
    v245 = v211;
    v246 = v212;
    v241 = v207;
    v242 = v208;
    sub_100040618(&v241);
    v230 = v246;
    v231 = v247;
    v232[0] = v248[0];
    *(v232 + 15) = *(v248 + 15);
    v227 = v243;
    v228 = v244;
    v229 = v245;
    v225 = v241;
    v226 = v242;
    sub_100003650(&qword_1000667E8, &qword_100050348);
    sub_1000402B4();
    sub_10004C320();
    sub_1000405C8(v176, v178);
    sub_1000405C8(v184, v185);
    v254 = v238;
    v255 = v239;
    v256[0] = v240[0];
    *(v256 + 15) = *(v240 + 15);
    v251 = v235;
    v252 = v236;
    v253 = v237;
  }

  v249 = v233;
  v250 = v234;
  v70 = v174;
  v71 = v171;
  v72 = v168;
  v73 = v169;
LABEL_48:
  v123 = v167;
  (*(v181 + 8))(v188, v182);
  *v72 = sub_10004C290();
  *(v72 + 8) = 0x4000000000000000;
  *(v72 + 16) = 0;
  v124 = sub_100003650(&qword_100066858, &qword_100050380);
  sub_10003E8B4(v187, (v72 + *(v124 + 44)));
  sub_10004C720();
  sub_10004C040();
  sub_100007C30(v72, v71, &qword_1000667D0, &qword_100050330);
  v125 = (v71 + *(v123 + 36));
  v126 = v230;
  v125[4] = v229;
  v125[5] = v126;
  v125[6] = v231;
  v127 = v226;
  *v125 = v225;
  v125[1] = v127;
  v128 = v228;
  v125[2] = v227;
  v125[3] = v128;
  v129 = sub_10004C3A0();
  sub_100007C30(v71, v73, &qword_1000667D8, &qword_100050338);
  v130 = v73 + *(v170 + 36);
  *v130 = v129;
  *(v130 + 8) = v50;
  v131 = v166;
  *(v130 + 16) = v165;
  *(v130 + 24) = 0;
  *(v130 + 32) = v131;
  *(v130 + 40) = 0;
  v132 = v73;
  v133 = v172;
  sub_100007C30(v132, v172, &qword_1000667E0, &qword_100050340);
  v134 = v173;
  sub_100003E3C(v133, v173, &qword_1000667E0, &qword_100050340);
  v135 = v254;
  v239 = v255;
  v240[0] = v256[0];
  v136 = v250;
  v137 = v251;
  v235 = v251;
  v236 = v252;
  v138 = v252;
  v139 = v253;
  v237 = v253;
  v238 = v254;
  v140 = v249;
  v233 = v249;
  v234 = v250;
  v141 = v256[0];
  *(v70 + 96) = v255;
  *(v70 + 112) = v141;
  *(v70 + 32) = v137;
  *(v70 + 48) = v138;
  *(v70 + 64) = v139;
  *(v70 + 80) = v135;
  *(v240 + 15) = *(v256 + 15);
  *(v70 + 127) = *(v256 + 15);
  *v70 = v140;
  *(v70 + 16) = v136;
  v142 = sub_100003650(&qword_100066860, &qword_100050388);
  sub_100003E3C(v134, v70 + *(v142 + 48), &qword_1000667E0, &qword_100050340);
  sub_100003E3C(&v233, &v241, &qword_100066868, &qword_100050390);
  sub_100003EA4(v133, &qword_1000667E0, &qword_100050340);
  sub_100003EA4(v134, &qword_1000667E0, &qword_100050340);
  v247 = v255;
  v248[0] = v256[0];
  *(v248 + 15) = *(v256 + 15);
  v243 = v251;
  v244 = v252;
  v245 = v253;
  v246 = v254;
  v241 = v249;
  v242 = v250;
  return sub_100003EA4(&v241, &qword_100066868, &qword_100050390);
}

uint64_t sub_10003E8B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v228 = a2;
  v219 = sub_10004CB70();
  v218 = *(v219 - 8);
  v3 = *(v218 + 64);
  __chkstk_darwin(v219);
  v217 = &v199[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v216 = &v199[-v6];
  v7 = sub_100003650(&qword_1000668B8, &qword_100050520);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v227 = &v199[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v199[-v11];
  v215 = sub_10004CB10();
  v214 = *(v215 - 8);
  v13 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v199[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v212 = &v199[-v16];
  v233 = type metadata accessor for DynamicTypeFont();
  v17 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v19 = &v199[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100003650(&qword_100065250, &unk_10004E730);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v232 = &v199[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v230 = &v199[-v24];
  v231 = sub_100003650(&qword_100065258, &qword_100050430);
  v25 = *(*(v231 - 8) + 64);
  __chkstk_darwin(v231);
  v237 = &v199[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v199[-v28];
  v234 = sub_100003650(&qword_1000668C0, &qword_100050528);
  v30 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v224 = &v199[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v205 = &v199[-v33];
  v236 = sub_100003650(&qword_1000668C8, &qword_100050530);
  v34 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v222 = &v199[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v229 = &v199[-v37];
  v235 = sub_100003650(&qword_1000668D0, &qword_100050538);
  v38 = *(*(v235 - 8) + 64);
  __chkstk_darwin(v235);
  v223 = &v199[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v211 = &v199[-v41];
  v42 = sub_100003650(&qword_1000668D8, &qword_100050540);
  v226 = *(v42 - 8);
  v43 = *(v226 + 64);
  __chkstk_darwin(v42);
  v221 = &v199[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v45);
  v220 = &v199[-v46];
  __chkstk_darwin(v47);
  v207 = &v199[-v48];
  v49 = sub_100003650(&qword_1000668E0, &qword_100050548);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v209 = &v199[-v51];
  v210 = sub_100003650(&qword_1000668E8, &qword_100050550);
  v52 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v208 = &v199[-v53];
  v54 = sub_100003650(&qword_1000668F0, &qword_100050558);
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  v206 = &v199[-v57];
  v58 = sub_100003650(&qword_1000668F8, &qword_100050560);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v225 = &v199[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v61);
  v63 = &v199[-v62];
  sub_10003CFE8();
  v241 = a1;
  v240 = v63;
  v239 = v12;
  v238 = v42;
  if (v64)
  {
    v203 = v55;
    v204 = v54;
    v65 = sub_10004C500();
    v67 = v66;
    v69 = v68;
    if (qword_100064778 != -1)
    {
      swift_once();
    }

    v202 = sub_10004C4C0();
    v201 = v70;
    v200 = v71;
    v73 = v72;
    sub_10001AC44(v65, v67, v69 & 1);

    if (qword_100064760 != -1)
    {
      swift_once();
    }

    v74 = qword_100066620;
    if (qword_100064750 != -1)
    {
      swift_once();
    }

    v75 = sub_10004C270();
    v76 = sub_100004D74(v75, qword_100068ED8);
    v77 = *(v75 - 8);
    v78 = v230;
    (*(v77 + 16))(v230, v76, v75);
    v79 = *(v77 + 56);
    v79(v78, 0, 1, v75);
    v80 = v232;
    sub_100007C30(v78, v232, &qword_100065250, &unk_10004E730);
    *v19 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v81 = v233;
    v82 = *(v233 + 20);
    *(v19 + v82) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v83 = *(v81 + 28);
    v79(v19 + v83, 1, 1, v75);
    *(v19 + *(v81 + 24)) = v74;

    sub_100015C48(v80, v19 + v83);
    sub_1000410A4(v19, &v29[*(v231 + 36)], type metadata accessor for DynamicTypeFont);
    v84 = v201;
    *v29 = v202;
    *(v29 + 1) = v84;
    v29[16] = v200 & 1;
    *(v29 + 3) = v73;
    sub_100015D1C(v19);
    v85 = type metadata accessor for CardDetailView(0);
    v86 = v241;
    v87 = v241 + v85[11];
    v88 = *v87;
    v89 = *(v87 + 8);
    LODWORD(v83) = *(v87 + 16);
    type metadata accessor for SingleLineTextObserver.State();
    sub_10003B8F8(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State);
    v202 = v88;
    v201 = v89;
    v200 = v83;
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    if (v250 != 1)
    {
      v90 = *(v86 + v85[13]);
    }

    v91 = v86;
    sub_10004C730();
    sub_10004C040();
    v92 = v205;
    sub_100007C30(v29, v205, &qword_100065258, &qword_100050430);
    v93 = &v92[*(v234 + 36)];
    v94 = v248;
    v93[4] = v247;
    v93[5] = v94;
    v93[6] = v249;
    v95 = v244;
    *v93 = v243;
    v93[1] = v95;
    v96 = v246;
    v93[2] = v245;
    v93[3] = v96;
    KeyPath = swift_getKeyPath();
    v98 = v92;
    v99 = v229;
    sub_100007C30(v98, v229, &qword_1000668C0, &qword_100050528);
    v100 = &v99[*(v236 + 36)];
    *v100 = KeyPath;
    v100[1] = 0xC000000000000000;
    v101 = v86 + v85[7];
    v102 = v212;
    sub_1000048A4(v212);
    v103 = v213;
    sub_10004CB00();
    LOBYTE(v101) = sub_10004CAE0();
    v104 = *(v214 + 8);
    v105 = v103;
    v106 = v215;
    v104(v105, v215);
    v104(v102, v106);
    if (v101)
    {
      v107 = sub_10004C600();
    }

    else
    {
      v107 = sub_10004C610();
    }

    v108 = v107;
    v109 = v204;
    v110 = v203;
    v111 = swift_getKeyPath();
    v112 = v211;
    sub_100007C30(v229, v211, &qword_1000668C8, &qword_100050530);
    v113 = &v112[*(v235 + 36)];
    *v113 = v111;
    v113[1] = v108;
    v114 = (v91 + v85[9]);
    v115 = *v114;
    v116 = v114[1];
    v117 = *(v114 + 16);
    sub_10004BF20();
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    if (v250)
    {
      v118 = 2;
    }

    else
    {
      v118 = 1;
    }

    v119 = sub_10004BFE0();
    v121 = v120;
    v122 = v112;
    v123 = v207;
    sub_100007C30(v122, v207, &qword_1000668D0, &qword_100050538);
    v42 = v238;
    v124 = &v123[*(v238 + 36)];
    *v124 = v119;
    v124[1] = v121;
    v124[2] = v118;
    a1 = v241;
    v125 = v209;
    sub_100007C30(v123, v209, &qword_1000668D8, &qword_100050540);
    v126 = *(v210 + 36);
    v127 = swift_getKeyPath();
    v128 = v208;
    *&v208[v126] = v127;
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    sub_100007C30(v125, v128, &qword_1000668E0, &qword_100050548);
    sub_100040C80();
    v129 = v206;
    sub_10004C510();
    sub_100003EA4(v128, &qword_1000668E8, &qword_100050550);
    v130 = v240;
    (*(v110 + 32))(v240, v129, v109);
    (*(v110 + 56))(v130, 0, 1, v109);
    v12 = v239;
  }

  else
  {
    (*(v55 + 56))(v63, 1, 1, v54);
  }

  v131 = type metadata accessor for CardDetailView(0);
  v132 = v131;
  v133 = (a1 + *(v131 + 10));
  if (v133[1])
  {
    v229 = v131;
    v134 = *v133;

    sub_10004C240();
    v135 = sub_10004C500();
    v137 = v136;
    v139 = v138;
    if (qword_100064778 != -1)
    {
      swift_once();
    }

    v214 = sub_10004C4C0();
    v213 = v140;
    v142 = v141;
    v215 = v143;
    sub_10001AC44(v135, v137, v139 & 1);

    v144 = v216;
    sub_10003B440(v216);
    v145 = v218;
    v146 = v217;
    v147 = v219;
    (*(v218 + 104))(v217, enum case for WidgetFamily.systemSmall(_:), v219);
    sub_10003B8F8(&qword_100065328, &type metadata accessor for WidgetFamily);
    sub_10004CD40();
    sub_10004CD40();
    v148 = *(v145 + 8);
    v148(v146, v147);
    v148(v144, v147);
    if (v250 == v242)
    {
      if (qword_100064768 != -1)
      {
        swift_once();
      }

      v149 = &qword_100066628;
    }

    else
    {
      if (qword_100064770 != -1)
      {
        swift_once();
      }

      v149 = &qword_100066630;
    }

    v151 = *v149;

    if (qword_100064758 != -1)
    {
      swift_once();
    }

    v152 = sub_10004C270();
    v153 = sub_100004D74(v152, qword_100068EF0);
    v154 = *(v152 - 8);
    v155 = v230;
    (*(v154 + 16))(v230, v153, v152);
    v156 = *(v154 + 56);
    v156(v155, 0, 1, v152);
    v157 = v232;
    sub_100007C30(v155, v232, &qword_100065250, &unk_10004E730);
    *v19 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v158 = v233;
    v159 = *(v233 + 20);
    *(v19 + v159) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v160 = *(v158 + 28);
    v156(v19 + v160, 1, 1, v152);
    *(v19 + *(v158 + 24)) = v151;
    sub_100015C48(v157, v19 + v160);
    v161 = v237;
    sub_1000410A4(v19, &v237[*(v231 + 36)], type metadata accessor for DynamicTypeFont);
    v162 = v213;
    *v161 = v214;
    *(v161 + 1) = v162;
    v161[16] = v142 & 1;
    *(v161 + 3) = v215;
    sub_100015D1C(v19);
    v163 = v229;
    v164 = v241;
    v165 = (v241 + *(v229 + 11));
    v166 = *v165;
    v167 = v165[1];
    v168 = *(v165 + 16);
    type metadata accessor for SingleLineTextObserver.State();
    sub_10003B8F8(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State);
    sub_10004BF20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10004BEB0();

    if (v250 != 1)
    {
      v169 = *(v164 + *(v163 + 13));
    }

    v132 = v163;
    sub_10004C730();
    sub_10004C040();
    v170 = v224;
    sub_100007C30(v237, v224, &qword_100065258, &qword_100050430);
    v171 = &v170[*(v234 + 36)];
    v172 = v255;
    v171[4] = v254;
    v171[5] = v172;
    v171[6] = v256;
    v173 = v251;
    *v171 = v250;
    v171[1] = v173;
    v174 = v253;
    v171[2] = v252;
    v171[3] = v174;
    v175 = swift_getKeyPath();
    v176 = v170;
    v177 = v222;
    sub_100007C30(v176, v222, &qword_1000668C0, &qword_100050528);
    v178 = &v177[*(v236 + 36)];
    *v178 = v175;
    v178[1] = 0xC000000000000000;
    v179 = sub_10004C600();
    v180 = swift_getKeyPath();
    v181 = v177;
    v182 = v223;
    sub_100007C30(v181, v223, &qword_1000668C8, &qword_100050530);
    v183 = &v182[*(v235 + 36)];
    *v183 = v180;
    v183[1] = v179;
    sub_10004BF20();
    v184 = sub_10004BFE0();
    v186 = v185;
    v187 = v182;
    v188 = v221;
    sub_100007C30(v187, v221, &qword_1000668D0, &qword_100050538);
    v42 = v238;
    v189 = &v188[*(v238 + 36)];
    *v189 = v184;
    v189[1] = v186;
    v189[2] = 2;
    v190 = v188;
    v191 = v220;
    sub_100007C30(v190, v220, &qword_1000668D8, &qword_100050540);
    v12 = v239;
    sub_100007C30(v191, v239, &qword_1000668D8, &qword_100050540);
    v150 = 0;
    a1 = v241;
  }

  else
  {
    v150 = 1;
  }

  (*(v226 + 56))(v12, v150, 1, v42);
  v241 = *(a1 + *(v132 + 14) + 16);
  v192 = v240;
  v193 = v225;
  sub_100003E3C(v240, v225, &qword_1000668F8, &qword_100050560);
  v194 = v227;
  sub_100003E3C(v12, v227, &qword_1000668B8, &qword_100050520);
  v195 = v228;
  *v228 = 0;
  *(v195 + 8) = 0;
  v196 = sub_100003650(&qword_100066900, &qword_100050568);
  sub_100003E3C(v193, v195 + v196[12], &qword_1000668F8, &qword_100050560);
  sub_100003E3C(v194, v195 + v196[16], &qword_1000668B8, &qword_100050520);
  v197 = v195 + v196[20];
  *v197 = v241;
  v197[8] = 0;
  sub_100003EA4(v12, &qword_1000668B8, &qword_100050520);
  sub_100003EA4(v192, &qword_1000668F8, &qword_100050560);
  sub_100003EA4(v194, &qword_1000668B8, &qword_100050520);
  return sub_100003EA4(v193, &qword_1000668F8, &qword_100050560);
}

uint64_t sub_10004023C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10004C710();
  a1[1] = v3;
  v4 = sub_100003650(&qword_1000667C0, &qword_100050320);
  sub_10003D2F0(v1, a1 + *(v4 + 44));
  result = sub_100003650(&qword_1000667C8, &qword_100050328);
  *(a1 + *(result + 36)) = 256;
  return result;
}

unint64_t sub_1000402B4()
{
  result = qword_1000667F0;
  if (!qword_1000667F0)
  {
    sub_100003698(&qword_1000667E8, &qword_100050348);
    sub_100040340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000667F0);
  }

  return result;
}

unint64_t sub_100040340()
{
  result = qword_1000667F8;
  if (!qword_1000667F8)
  {
    sub_100003698(&qword_100066800, &qword_100050350);
    sub_1000403CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000667F8);
  }

  return result;
}

unint64_t sub_1000403CC()
{
  result = qword_100066808;
  if (!qword_100066808)
  {
    sub_100003698(&qword_100066810, &qword_100050358);
    sub_100040458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066808);
  }

  return result;
}

unint64_t sub_100040458()
{
  result = qword_100066818;
  if (!qword_100066818)
  {
    sub_100003698(&qword_100066820, &qword_100050360);
    sub_1000404E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066818);
  }

  return result;
}

unint64_t sub_1000404E4()
{
  result = qword_100066828;
  if (!qword_100066828)
  {
    sub_100003698(&qword_100066830, &qword_100050368);
    sub_100003D30(&qword_100066838, &qword_100066840, &qword_100050370);
    sub_100003D30(&qword_100066848, &qword_100066850, &qword_100050378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066828);
  }

  return result;
}

uint64_t sub_1000405C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100040634()
{
  v1 = sub_10004C270();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 3);

  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  v12 = *&v0[v6];

  v13 = *&v0[v7];

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_10004C270() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  return sub_10003BA00(a1, *(v2 + 48), v2 + v6, *(v2 + v7), a2, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + v8), *(v2 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100040864(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000408B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C0B0();
  *a1 = result;
  return result;
}

uint64_t sub_1000408E0(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004C0C0();
}

uint64_t sub_100040914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C0F0();
  *a1 = result;
  return result;
}

uint64_t sub_100040940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004C0F0();
  *a1 = result;
  return result;
}

uint64_t sub_1000409BC@<X0>(void *a1@<X8>)
{
  result = sub_10004C070();
  *a1 = v3;
  return result;
}

uint64_t sub_1000409E8@<X0>(void *a1@<X8>)
{
  result = sub_10004C070();
  *a1 = v3;
  return result;
}

uint64_t sub_100040A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C0B0();
  *a1 = result;
  return result;
}

uint64_t sub_100040A90(uint64_t *a1)
{
  v1 = *a1;

  return sub_10004C0C0();
}

uint64_t sub_100040ABC()
{
  v1 = sub_10004BFC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double sub_100040BB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10004BFC0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = *(v1 + v4);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003C27C(v7, a1, v9);
}

unint64_t sub_100040C80()
{
  result = qword_100066908;
  if (!qword_100066908)
  {
    sub_100003698(&qword_1000668E8, &qword_100050550);
    sub_100040D3C();
    sub_10003B8F8(&qword_100066940, type metadata accessor for ColorSchemeAwarePlusBlend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066908);
  }

  return result;
}

unint64_t sub_100040D3C()
{
  result = qword_100066910;
  if (!qword_100066910)
  {
    sub_100003698(&qword_1000668E0, &qword_100050548);
    sub_100040DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066910);
  }

  return result;
}

unint64_t sub_100040DC8()
{
  result = qword_100066918;
  if (!qword_100066918)
  {
    sub_100003698(&qword_1000668D8, &qword_100050540);
    sub_100040E54();
    sub_100041050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066918);
  }

  return result;
}

unint64_t sub_100040E54()
{
  result = qword_100066920;
  if (!qword_100066920)
  {
    sub_100003698(&qword_1000668D0, &qword_100050538);
    sub_100040F0C();
    sub_100003D30(&qword_100065200, &qword_100065208, &qword_10004E6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066920);
  }

  return result;
}

unint64_t sub_100040F0C()
{
  result = qword_100066928;
  if (!qword_100066928)
  {
    sub_100003698(&qword_1000668C8, &qword_100050530);
    sub_100040FC4();
    sub_100003D30(&qword_100065318, &qword_100065320, &qword_10004E780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066928);
  }

  return result;
}

unint64_t sub_100040FC4()
{
  result = qword_100066930;
  if (!qword_100066930)
  {
    sub_100003698(&qword_1000668C0, &qword_100050528);
    sub_1000154DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066930);
  }

  return result;
}

unint64_t sub_100041050()
{
  result = qword_100066938;
  if (!qword_100066938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066938);
  }

  return result;
}

uint64_t sub_1000410A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100041110()
{
  result = qword_100066948;
  if (!qword_100066948)
  {
    sub_100003698(&qword_1000667C8, &qword_100050328);
    sub_100003D30(&qword_100066950, &qword_100066958, qword_1000505F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066948);
  }

  return result;
}

uint64_t sub_1000411D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100043438(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_10004BAC0();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000427D4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_100043AB0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_10004BAC0();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100042F68(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_10004BAC0();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100041390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100043604(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10004286C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100043D30();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100043288(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

id sub_100041488()
{
  v1 = OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    [v4 setTimeoutIntervalForResource:5.0];
    v5 = [objc_opt_self() sessionWithConfiguration:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10004154C(uint64_t a1)
{
  v3 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_10004BAC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)(v7);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_10004BE30();
  sub_10004BCB0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100003EA4(v6, &qword_1000663A0, &unk_10004FF80);
    sub_100003650(&qword_100066A80, &qword_100050698);
    v15 = sub_10004CA90();
    sub_1000424A8();
    swift_allocError();
    sub_10004CA60();
  }

  else
  {
    v36 = a1;
    v37 = v14;
    v34 = *(v8 + 32);
    v16 = v34(v13, v6, v7);
    v35 = v1;
    v17 = *(v1 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader_cache);
    v18 = *(v17 + 16);
    __chkstk_darwin(v16);
    *(&v31 - 2) = v17;
    *(&v31 - 1) = v13;
    sub_100003650(&unk_100066A90, &unk_1000506A0);
    sub_10004CE30();
    v15 = aBlock[0];
    if (!aBlock[0])
    {
      sub_100003650(&qword_100066A80, &qword_100050698);
      v15 = sub_10004CA90();

      sub_100042028(v20, v13);

      v33 = sub_100041488();
      sub_10004BAA0(v21);
      v32 = v22;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(v11, v13, v7);
      v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = v31;
      *(v25 + 16) = v37;
      *(v25 + 24) = v26;
      v34((v25 + v23), v11, v7);
      *(v25 + v24) = v15;
      *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
      aBlock[4] = sub_100044134;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041D40;
      aBlock[3] = &unk_100062D38;
      v27 = _Block_copy(aBlock);

      v29 = v32;
      v28 = v33;
      v30 = [v33 dataTaskWithURL:v32 completionHandler:v27];
      _Block_release(v27);

      [v30 resume];

      (*(v8 + 8))(v13, v7);
      return v15;
    }

    (*(v8 + 8))(v13, v7);
  }

  return v15;
}

void sub_100041A14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v11 = sub_100003650(&qword_100064A30, &qword_10004DCA8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = sub_10004BE10();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 != 15)
  {
    v34 = v18;
    sub_100044288(a1, a2);
    sub_100044288(a1, a2);
    sub_10004BCC0();
    v22 = v21;
    v23 = objc_allocWithZone(UIImage);
    isa = sub_10004BAD0().super.isa;
    v25 = [v23 initWithData:isa scale:v22];

    sub_100044220(a1, a2);
    if (v25)
    {
      if (!a4)
      {
        sub_10004BE20();
        v29 = *(v11 + 48);
        (*(v16 + 32))(v14, v20, v34);
        *&v14[v29] = v25;
        v30 = v25;
        sub_10004CA80();
        sub_100003EA4(v14, &qword_100064A30, &qword_10004DCA8);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = *(Strong + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader_cache);
          v33 = Strong;

          sub_100042028(0, v35);
          sub_100044220(a1, a2);
        }

        else
        {
          sub_100044220(a1, a2);
        }

        return;
      }
    }

    sub_100044220(a1, a2);
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtC24AppStoreWidgetsExtension19WidgetArtworkLoader_cache);
    v28 = v26;

    sub_100042028(0, v35);
  }

  if (!a4)
  {
    sub_1000424A8();
    swift_allocError();
  }

  swift_errorRetain();
  sub_10004CA60();
}

uint64_t sub_100041D40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_10004BAE0();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_100044220(v6, v11);
}

id sub_100041E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetArtworkLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100041F8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_1000427D4(a2);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100042028(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v28 = a1;
  v3 = sub_10004C820();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v29 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004BAC0();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = sub_10004C7F0();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 64);
  __chkstk_darwin(v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 16);
  sub_100003650(&unk_100066AA0, &unk_1000506B0);
  v14 = *(v9 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10004DC70;
  sub_10004C7E0();
  aBlock[0] = v16;
  sub_10004447C(&qword_100064A20, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003650(&unk_100066AB0, &qword_10004DCA0);
  sub_1000444C4(&qword_100064A28, &unk_100066AB0, &qword_10004DCA0);
  sub_10004CED0();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v25;
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v25);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v6 + 32))(v20 + v19, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  *(v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_1000443EC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007830;
  aBlock[3] = &unk_100062DB0;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  sub_10004C800();
  sub_10004CE40();
  _Block_release(v21);
  (*(v30 + 8))(v22, v31);
  (*(v10 + 8))(v13, v8);
}

uint64_t sub_100042450()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_1000424A8()
{
  result = qword_100066A88;
  if (!qword_100066A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066A88);
  }

  return result;
}

uint64_t sub_1000424FC()
{
  v16 = sub_10004CE10();
  v1 = *(v16 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v16);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004CE00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004C820();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100007874();
  v15[0] = "@NSURLResponse16@NSError24";
  v15[1] = v10;
  sub_10004C810();
  sub_100003650(&qword_100066AE8, &qword_1000506D0);
  v11 = *(v6 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10004DC70;
  sub_10004CDF0();
  v17 = v13;
  sub_10004447C(&qword_100066AF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003650(&qword_100066AF8, &qword_1000506D8);
  sub_1000444C4(&qword_100066B00, &qword_100066AF8, &qword_1000506D8);
  sub_10004CED0();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + 16) = sub_10004CE50();
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  return v0;
}

unint64_t sub_1000427D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004BAC0();
  sub_10004447C(&qword_100066AC8, &type metadata accessor for URL);
  v5 = sub_10004CCC0();

  return sub_100043838(a1, v5);
}

unint64_t sub_10004286C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004D060();
  sub_10004CD20();
  v6 = sub_10004D0A0();

  return sub_1000439F8(a1, a2, v6);
}

uint64_t sub_1000428E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004BAC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100003650(&qword_100066AC0, &qword_1000506C0);
  v43 = a2;
  result = sub_10004CFC0();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10004447C(&qword_100066AC8, &type metadata accessor for URL);
      result = sub_10004CCC0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100042CC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003650(&unk_100066B10, &unk_1000507A0);
  v38 = a2;
  result = sub_10004CFC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10004D060();
      sub_10004CD20();
      result = sub_10004D0A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_100042F68(int64_t a1, uint64_t a2)
{
  v43 = sub_10004BAC0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_10004CEE0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10004447C(&qword_100066AC8, &type metadata accessor for URL);
      v26 = sub_10004CCC0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100043288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004CEE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10004D060();

      sub_10004CD20();
      v13 = sub_10004D0A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100043438(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004BAC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000427D4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100043AB0();
      goto LABEL_7;
    }

    sub_1000428E4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1000427D4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100043780(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_10004D000();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100043604(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10004286C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100042CC0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10004286C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10004D000();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100043D30();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_100043780(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004BAC0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100043838(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10004BAC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10004447C(&qword_100066AD0, &type metadata accessor for URL);
      v16 = sub_10004CD00();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000439F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004CFF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100043AB0()
{
  v1 = v0;
  v34 = sub_10004BAC0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003650(&qword_100066AC0, &qword_1000506C0);
  v4 = *v0;
  v5 = sub_10004CFB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100043D30()
{
  v1 = v0;
  sub_100003650(&unk_100066B10, &unk_1000507A0);
  v2 = *v0;
  v3 = sub_10004CFB0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100043EA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10004BAC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v9, a2, v5);
    swift_beginAccess();

    sub_1000411D0(v12, v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100043FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041F8C(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100044004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004403C()
{
  v1 = sub_10004BAC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_100044134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10004BAC0() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_100041A14(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11));
}

uint64_t sub_100044208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100044220(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100044234(a1, a2);
  }

  return a1;
}

uint64_t sub_100044234(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100044288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000442DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044314()
{
  v1 = sub_10004BAC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000443EC()
{
  v1 = *(sub_10004BAC0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100043EA0(v3, v0 + v2, v4);
}

uint64_t sub_10004447C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000444C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004455C()
{
  result = qword_100066B08;
  if (!qword_100066B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B08);
  }

  return result;
}

uint64_t sub_1000445B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100046E18(*a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1000445EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v52 = type metadata accessor for TodayWidgetCardCollection();
  v47 = *(v52 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v15;
  v44 = type metadata accessor for TodayWidgetContainer();
  v16 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v45 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (v18)
  {
    v41 = v10;
    v42 = a1;
    v43 = a3;
    v19 = (a2 + 32);
    v49 = "WidgetArtworkCache.accessQueue";
    v48 = xmmword_10004E4F0;
    do
    {
      v20 = *v19;
      swift_errorRetain();
      if (qword_1000646A8 != -1)
      {
        swift_once();
      }

      v21 = sub_10004CAD0();
      sub_100004D74(v21, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      v22 = *(sub_10004C8D0() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = v48;
      sub_10004C850();
      swift_getErrorValue();
      v25 = sub_10004D010();
      v53[3] = &type metadata for String;
      v53[0] = v25;
      v53[1] = v26;
      sub_10004C8C0();
      sub_100003EA4(v53, &qword_100064A10, &qword_10004FB00);
      sub_10004C9E0();

      ++v19;
      --v18;
    }

    while (v18);
    a1 = v42;
    v27 = *(v42 + 16);
    v10 = v41;
    if (!v27)
    {
      v28 = sub_10004BC70();
      sub_100044CD0();
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, enum case for ResolveAllError.noValuesAndErrors(_:), v28);
      sub_10004CA60();
    }

    goto LABEL_9;
  }

  v27 = *(a1 + 16);
  if (v27)
  {
LABEL_9:
    v31 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v32 = *(v10 + 72);
    v33 = (v47 + 48);
    v34 = _swiftEmptyArrayStorage;
    do
    {
      v35 = v50;
      sub_100030E60(v31, v50);
      sub_100044BA0(v35, v13);
      if ((*v33)(v13, 1, v52) == 1)
      {
        sub_100003EA4(v13, &qword_100065EB8, qword_1000507B0);
      }

      else
      {
        sub_100044C6C(v13, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1000353C8(0, v34[2] + 1, 1, v34);
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v34 = sub_1000353C8(v36 > 1, v37 + 1, 1, v34);
        }

        v34[2] = v37 + 1;
        sub_100044C6C(v51, v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37);
      }

      v31 += v32;
      --v27;
    }

    while (v27);
    goto LABEL_19;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_19:
  v38 = v45;
  v39 = &v45[*(v44 + 20)];
  sub_10004BDC0();
  *v38 = v34;
  sub_10004CA80();
  return sub_100044C10(v38);
}

uint64_t type metadata accessor for TodayWidgetContainer()
{
  result = qword_100066BE0;
  if (!qword_100066BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044C10(uint64_t a1)
{
  v2 = type metadata accessor for TodayWidgetContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayWidgetCardCollection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100044CD0()
{
  result = qword_100066B80;
  if (!qword_100066B80)
  {
    sub_10004BC70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066B80);
  }

  return result;
}

uint64_t sub_100044D3C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BB40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100044DFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10004BB40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100044EA0()
{
  sub_100044F24();
  if (v0 <= 0x3F)
  {
    sub_10004BB40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100044F24()
{
  if (!qword_100066BF0)
  {
    type metadata accessor for TodayWidgetCardCollection();
    v0 = sub_10004CDB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100066BF0);
    }
  }
}

uint64_t sub_100044F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100045070(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 2 * -a2;
    v11[3] = 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayWidgetEntryView()
{
  result = qword_100066C78;
  if (!qword_100066C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004518C()
{
  sub_100045200();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100045200()
{
  if (!qword_100065010)
  {
    sub_10004CB70();
    v0 = sub_10004BF10();
    if (!v1)
    {
      atomic_store(v0, &qword_100065010);
    }
  }
}

uint64_t sub_100045298(uint64_t a1)
{
  v2 = sub_10004C270();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_10004C0A0();
}

uint64_t sub_100045360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100045560@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v83 = type metadata accessor for TodayWidgetFallbackEntryView();
  v2 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v77 = (&v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_100003650(&qword_100066CB0, &qword_100050888);
  v4 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v68 - v5;
  v82 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  v6 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v74 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v76 = &v68 - v9;
  v79 = sub_100003650(&qword_100066CB8, &unk_100050890);
  v10 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v81 = &v68 - v11;
  v12 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v71 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = &v68 - v16;
  v80 = type metadata accessor for TodayWidgetLargeEntryView();
  v17 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v72 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v75 = &v68 - v20;
  v21 = sub_10004CB70();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v29 = sub_100003650(&qword_100066CC0, &qword_1000508A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v78 = &v68 - v31;
  v32 = (v1 + *(type metadata accessor for TodayWidgetEntryView() + 20));
  v34 = *v32;
  v33 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  if (v35 < 0)
  {
    KeyPath = swift_getKeyPath();
    v49 = v77;
    *v77 = KeyPath;
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v50 = swift_getKeyPath();
    v51 = v83;
    *(v49 + *(v83 + 20)) = v50;
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v52 = v49 + *(v51 + 24);
    *v52 = v34;
    *(v52 + 8) = v33;
    *(v52 + 16) = v35 & 1;
    *(v52 + 24) = v36;
    sub_1000463E8(v49, v85, type metadata accessor for TodayWidgetFallbackEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100046124();
    sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView);

    sub_10004C320();
    return sub_100046450(v49, type metadata accessor for TodayWidgetFallbackEntryView);
  }

  v69 = v32[2];
  v70 = v33;
  v77 = v29;

  sub_100045360(v28);
  (*(v22 + 104))(v25, enum case for WidgetFamily.systemLarge(_:), v21);
  sub_100046210(&qword_100065328, &type metadata accessor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v37 = *(v22 + 8);
  v37(v25, v21);
  v37(v28, v21);
  v38 = *(v34 + 16);
  if (v88 != v87)
  {
    v39 = v78;
    if (v38)
    {
      v54 = type metadata accessor for WidgetTodayCard();
      v55 = *(v54 - 8);
      v56 = v71;
      sub_1000463E8(v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v71, type metadata accessor for WidgetTodayCard);
      sub_100046258(v34, v70, v69);
      (*(v55 + 56))(v56, 0, 1, v54);
    }

    else
    {
      sub_100046258(v34, v70, v69);
      v64 = type metadata accessor for WidgetTodayCard();
      v56 = v71;
      (*(*(v64 - 8) + 56))(v71, 1, 1, v64);
    }

    v58 = v85;
    v65 = swift_getKeyPath();
    v66 = v74;
    *v74 = v65;
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    sub_1000462A8(v56, v66 + *(v82 + 20));
    v67 = v76;
    sub_100046380(v66, v76, type metadata accessor for TodayWidgetSmallMediumEntryView);
    sub_1000463E8(v67, v81, type metadata accessor for TodayWidgetSmallMediumEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView);
    sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView);
    sub_10004C320();
    sub_100046450(v67, type metadata accessor for TodayWidgetSmallMediumEntryView);
    goto LABEL_14;
  }

  v39 = v78;
  if (!v38)
  {
    v45 = _swiftEmptyArrayStorage;
    v46 = v73;
    v47 = v70;
    goto LABEL_10;
  }

  v40 = (2 * v38) | 1;
  v41 = type metadata accessor for WidgetTodayCard();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  sub_100046650(v34, v34 + v43, 1, v40);
  v45 = v44;
  v46 = v73;
  v47 = v70;
  if (!*(v34 + 16))
  {
LABEL_10:
    sub_100046258(v34, v47, v69);
    v57 = type metadata accessor for WidgetTodayCard();
    (*(*(v57 - 8) + 56))(v46, 1, 1, v57);
    goto LABEL_11;
  }

  sub_1000463E8(v34 + v43, v73, type metadata accessor for WidgetTodayCard);
  sub_100046258(v34, v47, v69);
  (*(v42 + 56))(v46, 0, 1, v41);
LABEL_11:
  v58 = v85;
  v59 = swift_getKeyPath();
  v60 = v72;
  *v72 = v59;
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v61 = v80;
  sub_1000462A8(v46, v60 + *(v80 + 20));
  *(v60 + *(v61 + 24)) = v45;
  v62 = v60;
  v63 = v75;
  sub_100046380(v62, v75, type metadata accessor for TodayWidgetLargeEntryView);
  sub_1000463E8(v63, v81, type metadata accessor for TodayWidgetLargeEntryView);
  swift_storeEnumTagMultiPayload();
  sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView);
  sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView);
  sub_10004C320();
  sub_100046450(v63, type metadata accessor for TodayWidgetLargeEntryView);
LABEL_14:
  sub_100003E3C(v39, v58, &qword_100066CC0, &qword_1000508A0);
  swift_storeEnumTagMultiPayload();
  sub_100046124();
  sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView);
  sub_10004C320();
  return sub_100046318(v39);
}

unint64_t sub_100046124()
{
  result = qword_100066CC8;
  if (!qword_100066CC8)
  {
    sub_100003698(&qword_100066CC0, &qword_1000508A0);
    sub_100046210(&qword_100066CD0, type metadata accessor for TodayWidgetLargeEntryView);
    sub_100046210(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066CC8);
  }

  return result;
}

uint64_t sub_100046210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100046258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_1000462A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046318(uint64_t a1)
{
  v2 = sub_100003650(&qword_100066CC0, &qword_1000508A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000463E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000464B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003650(&qword_100065DA0, &qword_10004F820);
      v7 = *(type metadata accessor for AppIconConfiguration(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for AppIconConfiguration(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100046650(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003650(&qword_100065D70, &qword_10004F800);
      v7 = *(type metadata accessor for WidgetTodayCard() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for WidgetTodayCard() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_1000467F4()
{
  result = qword_100066CE0;
  if (!qword_100066CE0)
  {
    sub_100003698(&qword_100066CE8, &unk_100050910);
    sub_100046124();
    sub_100046210(&qword_100066CD8, type metadata accessor for TodayWidgetFallbackEntryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066CE0);
  }

  return result;
}

uint64_t sub_1000468B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v52 = type metadata accessor for WidgetTodayCard();
  v47 = *(v52 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v15;
  v44 = type metadata accessor for TodayWidgetCardCollection();
  v16 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v45 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (v18)
  {
    v41 = v10;
    v42 = a1;
    v43 = a3;
    v19 = (a2 + 32);
    v49 = "ayWidgetContainer: ";
    v48 = xmmword_10004E4F0;
    do
    {
      v20 = *v19;
      swift_errorRetain();
      if (qword_1000646A8 != -1)
      {
        swift_once();
      }

      v21 = sub_10004CAD0();
      sub_100004D74(v21, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      v22 = *(sub_10004C8D0() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = v48;
      sub_10004C850();
      swift_getErrorValue();
      v25 = sub_10004D010();
      v53[3] = &type metadata for String;
      v53[0] = v25;
      v53[1] = v26;
      sub_10004C8C0();
      sub_100003EA4(v53, &qword_100064A10, &qword_10004FB00);
      sub_10004C9E0();

      ++v19;
      --v18;
    }

    while (v18);
    a1 = v42;
    v27 = *(v42 + 16);
    v10 = v41;
    if (!v27)
    {
      v28 = sub_10004BC70();
      sub_100044CD0();
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, enum case for ResolveAllError.noValuesAndErrors(_:), v28);
      sub_10004CA60();
    }

    goto LABEL_9;
  }

  v27 = *(a1 + 16);
  if (v27)
  {
LABEL_9:
    v31 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v32 = *(v10 + 72);
    v33 = (v47 + 48);
    v34 = _swiftEmptyArrayStorage;
    do
    {
      v35 = v50;
      sub_100047114(v31, v50);
      sub_1000462A8(v35, v13);
      if ((*v33)(v13, 1, v52) == 1)
      {
        sub_100003EA4(v13, &qword_100065BA8, qword_10004F5A8);
      }

      else
      {
        sub_100018C0C(v13, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1000353F0(0, v34[2] + 1, 1, v34);
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v34 = sub_1000353F0(v36 > 1, v37 + 1, 1, v34);
        }

        v34[2] = v37 + 1;
        sub_100018C0C(v51, v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37);
      }

      v31 += v32;
      --v27;
    }

    while (v27);
    goto LABEL_19;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_19:
  v38 = v45;
  v39 = &v45[*(v44 + 20)];
  sub_10004BDF0();
  *v38 = v34;
  sub_10004CA80();
  return sub_100047184(v38);
}

uint64_t sub_100046E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003650(&qword_100066CF0, qword_100050920);
  v7 = sub_10004CA90();
  v20 = a1;
  v8 = sub_10004BE00();
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      result = sub_10004CF50();
      if (v11 < 0)
      {
        break;
      }

      v19 = v7;
      if (v10)
      {
        v13 = sub_10004CF90();
      }

      else
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = 0;
      v7 = v9 & 0xC000000000000001;
      v10 = v13 & ~(v13 >> 63);
      while (v10 != v14)
      {
        if (v7)
        {
          v15 = sub_10004CF20();
        }

        else
        {
          if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v9 + 8 * v14 + 32);
        }

        sub_100004F70(v15, v14 == 0, a2, a3, a4);

        sub_10004CF30();
        v16 = _swiftEmptyArrayStorage[2];
        sub_10004CF60();
        sub_10004CF70();
        sub_10004CF40();
        if (v11 == ++v14)
        {

          v7 = v19;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v11 = sub_10004CF90();
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

LABEL_19:
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v20;
    sub_100007874();

    v18 = sub_10004CE20();
    type metadata accessor for WidgetTodayCard();
    sub_10004BBB0();

    return v7;
  }

  return result;
}

uint64_t sub_100047080()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for TodayWidgetCardCollection()
{
  result = qword_100066D50;
  if (!qword_100066D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100047114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047184(uint64_t a1)
{
  v2 = type metadata accessor for TodayWidgetCardCollection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000471F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004BB40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000472B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10004BB40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100047358()
{
  sub_1000473DC();
  if (v0 <= 0x3F)
  {
    sub_10004BB40();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000473DC()
{
  if (!qword_100065F28)
  {
    type metadata accessor for WidgetTodayCard();
    v0 = sub_10004CDB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065F28);
    }
  }
}

uint64_t sub_100047434@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BrandedTodayCardView();
  sub_100003E3C(v1 + *(v12 + 20), v11, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004C270();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10004763C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100064960, &qword_10004DC30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BrandedTodayCardView();
  sub_100003E3C(v1 + *(v12 + 28), v11, &qword_100064960, &qword_10004DC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB10();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100047858(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
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

  v14 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[8]);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = type metadata accessor for CardDetailView.Heading(0);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_100047AA0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100003650(&qword_100064F90, qword_10004E280);
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

  v16 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_100003650(&qword_100066540, &unk_100050090);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v18 = type metadata accessor for CardDetailView.Heading(0);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[10];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t type metadata accessor for BrandedTodayCardView()
{
  result = qword_100066DE0;
  if (!qword_100066DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100047D20()
{
  sub_100047ECC(319, &qword_100065010, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100047ECC(319, &qword_100065008, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      sub_100047ECC(319, &qword_100064918, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_100047ECC(319, &qword_1000665B0, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          sub_10000AE54(319, &qword_100064AB8, UIImage_ptr);
          if (v4 <= 0x3F)
          {
            sub_100047F20();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CardDetailView.Heading(319);
              if (v6 <= 0x3F)
              {
                sub_10001FE50();
                if (v7 <= 0x3F)
                {
                  sub_10001FEA0();
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

void sub_100047ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004BF10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100047F20()
{
  if (!qword_100065990)
  {
    sub_10000AE54(255, &qword_100064DC8, UIColor_ptr);
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065990);
    }
  }
}

unint64_t sub_100047F88()
{
  result = qword_1000659A8;
  if (!qword_1000659A8)
  {
    type metadata accessor for SingleLineTextObserver.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000659A8);
  }

  return result;
}

uint64_t sub_100047FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10004C290();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_100003650(&qword_100066E38, &qword_1000509F8);
  sub_100048164(a2, a3 + *(v6 + 44));
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v7 = (a3 + *(sub_100003650(&qword_100066E40, &qword_100050A00) + 36));
  *v7 = v16;
  v7[1] = v17;
  v7[2] = v18;
  *(a3 + *(sub_100003650(&qword_100066E48, &qword_100050A08) + 36)) = 0;
  v8 = sub_10004C720();
  v10 = v9;
  v11 = (a3 + *(sub_100003650(&qword_100066E50, &qword_100050A10) + 36));
  *v11 = sub_10004C720();
  v11[1] = v12;
  v13 = sub_100003650(&qword_100066E58, &qword_100050A18);
  sub_100048854(a2, a1, (v11 + *(v13 + 44)));
  result = sub_100003650(&qword_100066E60, &unk_100050A20);
  v15 = (v11 + *(result + 36));
  *v15 = v8;
  v15[1] = v10;
  return result;
}

uint64_t sub_100048164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for CardDetailView.Heading(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CardDetailView(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v63 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (v59 - v11);
  __chkstk_darwin(v13);
  v62 = v59 - v14;
  v15 = type metadata accessor for TitleView();
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = (v59 - v20);
  *v21 = swift_getKeyPath();
  v59[3] = sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v22 = v16[7];
  *(v21 + v22) = swift_getKeyPath();
  v59[2] = sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v23 = v16[8];
  *(v21 + v23) = swift_getKeyPath();
  v59[1] = sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v24 = (v21 + v16[9]);
  *v24 = 0u;
  v24[1] = 0u;
  *(v21 + v16[10]) = 0;
  sub_10004C720();
  sub_10004C040();
  *&v65[55] = v70;
  *&v65[71] = v71;
  *&v65[87] = v72;
  *&v65[103] = v73;
  *&v65[7] = v67;
  *&v65[23] = v68;
  v66 = 1;
  *&v65[39] = v69;
  v25 = type metadata accessor for BrandedTodayCardView();
  v26 = a1 + v25[10];
  v60 = v6;
  sub_1000497B8(v26, v6, type metadata accessor for CardDetailView.Heading);
  v27 = (a1 + v25[12]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v27 + 16);
  type metadata accessor for SingleLineTextObserver.State();
  sub_100047F88();
  v31 = sub_10004BF20();
  v32 = (a1 + v25[11]);
  v33 = v32[1];
  v59[0] = *v32;
  v34 = (a1 + v25[13]);
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = sub_10004BF20();
  v39 = *(a1 + v25[9]);
  if (v39)
  {
    v40 = *(a1 + v25[9]);
  }

  else
  {
    v41 = [objc_opt_self() clearColor];
    v39 = 0;
  }

  v42 = v39;
  v43 = sub_10004C5B0() | 0x4000000000000000;
  sub_100049750(v60, v12 + v7[8], type metadata accessor for CardDetailView.Heading);
  *v12 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[5]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[6]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = v7[7];
  *(v12 + v44) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  v45 = v12 + v7[9];
  *v45 = sub_100021A7C;
  *(v45 + 1) = v31;
  v45[16] = 0;
  v46 = (v12 + v7[10]);
  *v46 = v59[0];
  v46[1] = v33;
  v47 = v12 + v7[11];
  *v47 = sub_100021A7C;
  *(v47 + 1) = v38;
  v47[16] = 0;
  *(v12 + v7[12]) = v43;
  *(v12 + v7[13]) = 0x7FF0000000000000;
  v48 = (v12 + v7[14]);
  *v48 = xmmword_10004E260;
  v48[1] = xmmword_10004E270;
  v49 = v62;
  sub_100049750(v12, v62, type metadata accessor for CardDetailView);
  v50 = v61;
  sub_1000497B8(v21, v61, type metadata accessor for TitleView);
  v51 = v63;
  sub_1000497B8(v49, v63, type metadata accessor for CardDetailView);
  v52 = v64;
  sub_1000497B8(v50, v64, type metadata accessor for TitleView);
  v53 = sub_100003650(&qword_100066E80, &qword_100050B18);
  v54 = v52 + *(v53 + 48);
  v55 = *&v65[80];
  *(v54 + 73) = *&v65[64];
  *(v54 + 89) = v55;
  *(v54 + 105) = *&v65[96];
  v56 = *&v65[16];
  *(v54 + 9) = *v65;
  *(v54 + 25) = v56;
  v57 = *&v65[48];
  *(v54 + 41) = *&v65[32];
  *v54 = 0;
  *(v54 + 8) = 1;
  *(v54 + 120) = *&v65[111];
  *(v54 + 57) = v57;
  sub_1000497B8(v51, v52 + *(v53 + 64), type metadata accessor for CardDetailView);

  sub_100049820(v49, type metadata accessor for CardDetailView);
  sub_100049820(v21, type metadata accessor for TitleView);
  sub_100049820(v51, type metadata accessor for CardDetailView);
  return sub_100049820(v50, type metadata accessor for TitleView);
}

uint64_t sub_100048854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a2;
  v89 = sub_10004CB10();
  v87 = *(v89 - 8);
  v5 = *(v87 + 64);
  __chkstk_darwin(v89);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v69 - v9;
  v10 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v73 = &v69 - v12;
  v74 = sub_10004C630();
  v13 = *(v74 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v74);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100003650(&qword_100066E68, &unk_100050A30);
  v80 = *(v82 - 8);
  v17 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v69 - v18;
  v78 = sub_100003650(&qword_100064D98, &qword_100050060);
  v19 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v84 = &v69 - v20;
  v81 = sub_100003650(&qword_1000664B8, &qword_100050A40);
  v21 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v86 = &v69 - v22;
  v85 = sub_100003650(&qword_100066E70, &qword_100050A48);
  v23 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v90 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v83 = &v69 - v26;
  __chkstk_darwin(v27);
  v88 = &v69 - v28;
  v29 = sub_10004C270();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100047434(v33);
  v34 = sub_10004C260();
  v35 = *(v30 + 8);
  v77 = v29;
  v76 = v30 + 8;
  v72 = v35;
  v35(v33, v29);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  if (v34)
  {
    v39 = *(type metadata accessor for BrandedTodayCardView() + 36);
    v71 = a1;
    v40 = *(a1 + v39);
    if (!v40)
    {
      v41 = [objc_opt_self() clearColor];
      v40 = 0;
    }

    v42 = v40;
    v36 = sub_10004C5B0();
    sub_10004BFA0();
    sub_10004BFA0();
    sub_10004C720();
    sub_10004BF90();
    v37 = v96;
    v38 = v97;
    v93 = v99;
    v94 = v98;
    v91 = v101;
    v92 = v100;

    a1 = v71;
  }

  v70 = v38;
  v71 = v37;
  v43 = v36;
  v44 = *(a1 + *(type metadata accessor for BrandedTodayCardView() + 32));
  sub_10004C620();
  v45 = v74;
  (*(v13 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v74);
  sub_10004C680();

  (*(v13 + 8))(v16, v45);
  v46 = v75;
  sub_10004763C(v75);
  sub_10004CAF0();
  v47 = sub_10004CAE0();
  v48 = *(v87 + 8);
  v49 = v89;
  v48(v7, v89);
  v48(v46, v49);
  v50 = v73;
  if (v47)
  {
    sub_10004CB20();
  }

  else
  {
    sub_10004CB40();
  }

  v51 = sub_10004CB50();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = v79;
  sub_10004C670();

  sub_1000495F4(v50);
  v53 = v84;
  (*(v80 + 32))(v84, v52, v82);
  v54 = v53 + *(v78 + 36);
  *v54 = 0;
  *(v54 + 8) = 257;
  sub_10004BFA0();
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v55 = v86;
  sub_100007C30(v53, v86, &qword_100064D98, &qword_100050060);
  v56 = (v55 + *(v81 + 36));
  v57 = v103;
  *v56 = v102;
  v56[1] = v57;
  v56[2] = v104;
  sub_100047434(v33);
  LOBYTE(v52) = sub_10004C260();
  v72(v33, v77);
  if (v52)
  {
    v58 = 0.6;
  }

  else
  {
    v58 = 1.0;
  }

  v59 = v83;
  sub_100007C30(v55, v83, &qword_1000664B8, &qword_100050A40);
  *(v59 + *(v85 + 36)) = v58;
  v60 = v88;
  sub_100007C30(v59, v88, &qword_100066E70, &qword_100050A48);
  v61 = v90;
  sub_10004965C(v60, v90);
  v62 = v71;
  *a3 = v43;
  a3[1] = v62;
  v64 = v93;
  v63 = v94;
  a3[2] = v70;
  a3[3] = v63;
  v65 = v91;
  v66 = v92;
  a3[4] = v64;
  a3[5] = v66;
  a3[6] = v65;
  v67 = sub_100003650(&qword_100066E78, &qword_100050A50);
  sub_10004965C(v61, a3 + *(v67 + 48));
  sub_1000496CC(v60);
  sub_1000496CC(v61);
}

uint64_t sub_10004913C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000497B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrandedTodayCardView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100049750(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for BrandedTodayCardView);
  *a2 = sub_100049574;
  a2[1] = v7;
  return result;
}

uint64_t sub_100049250()
{
  v1 = type metadata accessor for BrandedTodayCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10004CB70();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10004C270();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  sub_100003650(&qword_100064958, &qword_10004FA30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_10004BF00();
    (*(*(v12 - 8) + 8))(&v5[v11], v12);
  }

  else
  {
    v13 = *&v5[v11];
  }

  v14 = v1[7];
  sub_100003650(&qword_100064960, &qword_10004DC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10004CB10();
    (*(*(v15 - 8) + 8))(&v5[v14], v15);
  }

  else
  {
    v16 = *&v5[v14];
  }

  v17 = &v5[v1[10]];
  type metadata accessor for CardDetailView.Heading(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_10004BB40();
    (*(*(v18 - 8) + 8))(v17, v18);
  }

  else
  {
    v19 = *(v17 + 1);
  }

  v20 = *&v5[v1[11] + 8];

  v21 = &v5[v1[12]];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = v21[16];
  sub_100021670();
  v25 = &v5[v1[13]];
  v26 = *v25;
  v27 = *(v25 + 1);
  v28 = v25[16];
  sub_100021670();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for BrandedTodayCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100047FFC(a1, v6, a2);
}

uint64_t sub_1000495F4(uint64_t a1)
{
  v2 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004965C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100066E70, &qword_100050A48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000496CC(uint64_t a1)
{
  v2 = sub_100003650(&qword_100066E70, &qword_100050A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000497B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100049820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100049884()
{
  result = qword_100066E88;
  if (!qword_100066E88)
  {
    sub_100003698(&qword_100066E90, qword_100050B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066E88);
  }

  return result;
}

uint64_t sub_1000498FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100049988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000648A8, qword_10004DB30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ColorSchemeAwarePlusBlend()
{
  result = qword_100066EF0;
  if (!qword_100066EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100049A50()
{
  sub_10000420C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100049AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100064958, &qword_10004FA30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100049F3C(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004BF00();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100049CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_10004BF00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_10004C740();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049AD8(v10);
  (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v3);
  v16 = sub_10004BEF0();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v10, v3);
  v18 = &enum case for BlendMode.plusLighter(_:);
  if ((v16 & 1) == 0)
  {
    v18 = &enum case for BlendMode.plusDarker(_:);
  }

  (*(v12 + 104))(v15, *v18, v11);
  v19 = sub_100003650(&qword_100066F28, &qword_100050BC0);
  (*(v12 + 32))(a2 + *(v19 + 36), v15, v11);
  v20 = sub_100003650(&qword_100066F30, qword_100050BC8);
  return (*(*(v20 - 8) + 16))(a2, v23, v20);
}

uint64_t sub_100049F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100064958, &qword_10004FA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100049FB0()
{
  result = qword_100066F38;
  if (!qword_100066F38)
  {
    sub_100003698(&qword_100066F28, &qword_100050BC0);
    sub_10004A03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F38);
  }

  return result;
}

unint64_t sub_10004A03C()
{
  result = qword_100066F40;
  if (!qword_100066F40)
  {
    sub_100003698(&qword_100066F30, qword_100050BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066F40);
  }

  return result;
}

uint64_t sub_10004A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
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
      v13 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004A204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
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
      v13 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for WidgetTodayCard()
{
  result = qword_100066FA0;
  if (!qword_100066FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A38C()
{
  sub_10001FE50();
  if (v0 <= 0x3F)
  {
    sub_10004A5B4(319, &qword_100064AB0, &qword_100064AB8, UIImage_ptr);
    if (v1 <= 0x3F)
    {
      sub_10004A550(319, &qword_100066FB0, type metadata accessor for AppIconConfiguration, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10004A5B4(319, &qword_100065990, &qword_100064DC8, UIColor_ptr);
        if (v3 <= 0x3F)
        {
          sub_10004A550(319, &qword_100066FB8, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10004A550(319, &unk_100066FC0, &type metadata accessor for Date, &type metadata accessor for Optional);
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

void sub_10004A550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10004A5B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000AE54(255, a3, a4);
    v5 = sub_10004CEB0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10004A60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_27:
    v29 = 0;
    return v29 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_10004B3D4(v14, v11);
      sub_10004B3D4(v15, v7);
      if ((sub_10004BB50() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      v18 = *&v11[v17];
      v19 = *&v7[v17];
      if (v18)
      {
        if (!v19)
        {
          break;
        }

        sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
        v20 = v19;
        v21 = v18;
        v22 = sub_10004CE90();

        if ((v22 & 1) == 0)
        {
          break;
        }
      }

      else if (v19)
      {
        break;
      }

      v23 = v4[6];
      v24 = &v11[v23];
      v25 = v11[v23 + 16];
      v26 = &v7[v23];
      if (v25)
      {
        if ((v26[16] & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v26[16])
        {
          break;
        }

        if (*v24 != *v26 || v24[1] != *(v26 + 1))
        {
          break;
        }
      }

      if (v11[v4[7]] != v7[v4[7]] || v11[v4[8]] != v7[v4[8]])
      {
        break;
      }

      v28 = v4[9];
      v29 = sub_10004CB30();
      sub_10004B438(v7);
      sub_10004B438(v11);
      if (v29)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v29 & 1;
    }

    sub_10004B438(v7);
    sub_10004B438(v11);
    goto LABEL_27;
  }

  v29 = 1;
  return v29 & 1;
}

uint64_t sub_10004A874()
{
  v1 = v0;
  v2 = 6369134;
  v3 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_10004CF00(94);
  v26._countAndFlagsBits = 540689481;
  v26._object = 0xE400000000000000;
  sub_10004CD30(v26);
  v7 = *v0;
  v8 = *(v0 + 8);
  v27._countAndFlagsBits = *v0;
  v27._object = v8;
  sub_10004CD30(v27);
  v28._countAndFlagsBits = 0x644979726F74730ALL;
  v28._object = 0xEA0000000000203ALL;
  sub_10004CD30(v28);
  v29._countAndFlagsBits = v7;
  v29._object = v8;
  sub_10004CD30(v29);
  v30._countAndFlagsBits = 0x676E69646165680ALL;
  v30._object = 0xEA0000000000203ALL;
  sub_10004CD30(v30);
  if (*(v0 + 24))
  {
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 6369134;
  }

  v31._countAndFlagsBits = v9;
  v31._object = v10;
  sub_10004CD30(v31);

  v32._countAndFlagsBits = 0x203A656C7469740ALL;
  v32._object = 0xE800000000000000;
  sub_10004CD30(v32);
  if (*(v0 + 40))
  {
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 6369134;
  }

  v33._countAndFlagsBits = v11;
  v33._object = v12;
  sub_10004CD30(v33);

  v34._countAndFlagsBits = 0x3A6B72614473690ALL;
  v34._object = 0xE900000000000020;
  sub_10004CD30(v34);
  if (*(v0 + 48))
  {
    v13._countAndFlagsBits = 1702195828;
  }

  else
  {
    v13._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v13._object = v14;
  sub_10004CD30(v13);

  v35._object = 0x800000010005AF00;
  v35._countAndFlagsBits = 0xD000000000000017;
  sub_10004CD30(v35);
  v15 = *(v0 + 56);
  if (v15)
  {
    v16._countAndFlagsBits = 1702195828;
  }

  else
  {
    v16._countAndFlagsBits = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v16._object = v17;
  sub_10004CD30(v16);

  v36._countAndFlagsBits = 0x203A736E6F63690ALL;
  v36._object = 0xE800000000000000;
  sub_10004CD30(v36);
  v18 = *(v0 + 64);
  type metadata accessor for AppIconConfiguration(0);
  v37._countAndFlagsBits = sub_10004CD70();
  sub_10004CD30(v37);

  v38._countAndFlagsBits = 0x203A6C72750ALL;
  v38._object = 0xE600000000000000;
  sub_10004CD30(v38);
  v19 = type metadata accessor for WidgetTodayCard();
  sub_10004AE7C(v1 + *(v19 + 44), v6);
  v20 = sub_10004BAC0();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    sub_100003EA4(v6, &qword_1000663A0, &unk_10004FF80);
    v22 = 0xE300000000000000;
  }

  else
  {
    v2 = sub_10004BA90();
    v22 = v23;
    (*(v21 + 8))(v6, v20);
  }

  v39._countAndFlagsBits = v2;
  v39._object = v22;
  sub_10004CD30(v39);

  return v25[0];
}

Swift::Int sub_10004ABDC()
{
  sub_10004D060();
  v1 = *v0;
  v2 = v0[1];
  sub_10004CD20();
  if (!v0[3])
  {
    sub_10004D080(0);
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10004D080(0);
    return sub_10004D0A0();
  }

  v3 = v0[2];
  sub_10004D080(1u);
  sub_10004CD20();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v0[4];
  sub_10004D080(1u);
  sub_10004CD20();
  return sub_10004D0A0();
}

uint64_t sub_10004ACA0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_10004ACB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10004CD20();
  if (!v0[3])
  {
    sub_10004D080(0);
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10004D080(0);
    return;
  }

  v3 = v0[2];
  sub_10004D080(1u);
  sub_10004CD20();
  if (!v0[5])
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = v0[4];
  sub_10004D080(1u);

  sub_10004CD20();
}

Swift::Int sub_10004AD60()
{
  sub_10004D060();
  v1 = *v0;
  v2 = v0[1];
  sub_10004CD20();
  if (!v0[3])
  {
    sub_10004D080(0);
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_10004D080(0);
    return sub_10004D0A0();
  }

  v3 = v0[2];
  sub_10004D080(1u);
  sub_10004CD20();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = v0[4];
  sub_10004D080(1u);
  sub_10004CD20();
  return sub_10004D0A0();
}

uint64_t sub_10004AE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BAC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_100003650(&qword_100067018, qword_100050CC8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_10004CFF0() & 1) == 0)
  {
    goto LABEL_19;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (v17)
  {
    if (!v18 || (*(a1 + 16) != *(a2 + 16) || v17 != v18) && (sub_10004CFF0() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  v19 = *(a1 + 40);
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (*(a1 + 32) != *(a2 + 32) || v19 != v20) && (sub_10004CFF0() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v20)
  {
    goto LABEL_19;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_19;
  }

  v23 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (v23)
  {
    if (!v21)
    {
      return v21 & 1;
    }

    v33 = sub_10000AE54(0, &qword_100064AB8, UIImage_ptr);
    v32 = v21;
    v24 = v23;
    v25 = sub_10004CE90();

    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v21)
  {
    goto LABEL_19;
  }

  if (sub_10004A60C(*(a1 + 64), *(a2 + 64)))
  {
    v26 = *(a1 + 72);
    v21 = *(a2 + 72);
    if (v26)
    {
      if (!v21)
      {
        return v21 & 1;
      }

      v33 = sub_10000AE54(0, &qword_100064DC8, UIColor_ptr);
      v32 = v21;
      v27 = v26;
      v28 = sub_10004CE90();

      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v21)
    {
      goto LABEL_19;
    }

    v29 = *(type metadata accessor for WidgetTodayCard() + 44);
    v21 = *(v13 + 48);
    sub_10004AE7C(a1 + v29, v16);
    sub_10004AE7C(a2 + v29, v21 + v16);
    v30 = *(v5 + 48);
    if (v30(v16, 1, v4) == 1)
    {
      if (v30(v21 + v16, 1, v4) == 1)
      {
        sub_100003EA4(v16, &qword_1000663A0, &unk_10004FF80);
        LOBYTE(v21) = 1;
        return v21 & 1;
      }
    }

    else
    {
      sub_10004AE7C(v16, v12);
      if (v30(v21 + v16, 1, v4) != 1)
      {
        (*(v5 + 32))(v8, v21 + v16, v4);
        sub_10004B38C(&qword_100066AD0, &type metadata accessor for URL);
        LOBYTE(v21) = sub_10004CD00();
        v31 = *(v5 + 8);
        v31(v8, v4);
        v31(v12, v4);
        sub_100003EA4(v16, &qword_1000663A0, &unk_10004FF80);
        return v21 & 1;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_100003EA4(v16, &qword_100067018, qword_100050CC8);
  }

LABEL_19:
  LOBYTE(v21) = 0;
  return v21 & 1;
}

uint64_t sub_10004B38C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B438(uint64_t a1)
{
  v2 = type metadata accessor for AppIconConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10004B4C8(int a1, int a2, int a3)
{
  if (qword_100068D80 == -1)
  {
    v3 = dword_100068D70 < a1;
    if (dword_100068D70 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_10004BA50();
    a2 = v6;
    a3 = v5;
    v3 = dword_100068D70 < a1;
    if (dword_100068D70 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100068D74 > a2)
  {
    return 1;
  }

  if (dword_100068D74 < a2)
  {
    return 0;
  }

  return dword_100068D78 >= a3;
}

uint64_t sub_10004B588(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100068D88 == -1)
  {
    if (qword_100068D90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10004BA68();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100068D90)
    {
      return _availability_version_check();
    }
  }

  if (qword_100068D80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10004BA50();
    a3 = v10;
    a4 = v9;
    v8 = dword_100068D70 < v11;
    if (dword_100068D70 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100068D74 > a3)
      {
        return 1;
      }

      if (dword_100068D74 >= a3)
      {
        return dword_100068D78 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100068D70 < a2;
  if (dword_100068D70 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10004B71C(uint64_t result)
{
  v1 = qword_100068D90;
  if (qword_100068D90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100068D90 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100068D70, &dword_100068D74, &dword_100068D78);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}