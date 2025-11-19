unint64_t sub_2FCB0()
{
  result = qword_317468;
  if (!qword_317468)
  {
    sub_2F9C(&qword_317460, &qword_269928);
    sub_2FD68();
    sub_8E38(&qword_317498, &qword_3174A0, &qword_269940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317468);
  }

  return result;
}

unint64_t sub_2FD68()
{
  result = qword_317470;
  if (!qword_317470)
  {
    sub_2F9C(&qword_317478, &qword_269930);
    sub_8E38(&qword_317480, &qword_317488, &qword_269938);
    sub_2FE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317470);
  }

  return result;
}

unint64_t sub_2FE20()
{
  result = qword_317490;
  if (!qword_317490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317490);
  }

  return result;
}

uint64_t sub_2FE74()
{
  v1 = sub_261460();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PagedScrollView(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = (v0 + v7);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261180();
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = v5[5];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    (*(*(v13 - 8) + 8))(&v9[v12], v13);
  }

  else
  {
    v14 = *&v9[v12];
  }

  sub_3074(*&v9[v5[6]], v9[v5[6] + 8]);
  v15 = &v9[v5[7]];
  if (v15[5])
  {
    sub_3080(v15);
  }

  else
  {
    v16 = *v15;
  }

  v17 = &v9[v5[8]];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v19 = sub_261690();
    (*(*(v19 - 8) + 8))(&v17[v18], v19);
  }

  else
  {
    v20 = *v17;
  }

  sub_3074(*&v9[v5[9]], v9[v5[9] + 8]);
  sub_3074(*&v9[v5[10]], v9[v5[10] + 8]);
  v21 = &v9[v5[11]];
  v22 = *(v21 + 1);

  v23 = *(v21 + 2);

  v24 = *&v9[v5[12]];

  v25 = *&v9[v5[13]];

  v26 = v5[14];
  v27 = sub_2601E0();
  (*(*(v27 - 8) + 8))(&v9[v26], v27);

  return swift_deallocObject();
}

uint64_t sub_301CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_261460() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PagedScrollView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_27C0C(a1, v2 + v6, v9, a2);
}

unint64_t sub_302B0()
{
  result = qword_3174C8;
  if (!qword_3174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3174C8);
  }

  return result;
}

uint64_t sub_30304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_30374()
{
  result = qword_317540;
  if (!qword_317540)
  {
    sub_2F9C(&qword_317510, &qword_269998);
    sub_3042C();
    sub_8E38(&qword_3175B8, &qword_3175C0, &qword_269A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317540);
  }

  return result;
}

unint64_t sub_3042C()
{
  result = qword_317548;
  if (!qword_317548)
  {
    sub_2F9C(&qword_317508, &qword_269990);
    sub_304E4();
    sub_8E38(&qword_3175A8, &qword_3175B0, &qword_269A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317548);
  }

  return result;
}

unint64_t sub_304E4()
{
  result = qword_317550;
  if (!qword_317550)
  {
    sub_2F9C(&qword_317500, &qword_269988);
    sub_30570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317550);
  }

  return result;
}

unint64_t sub_30570()
{
  result = qword_317558;
  if (!qword_317558)
  {
    sub_2F9C(&qword_3174F8, &qword_269980);
    sub_305FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317558);
  }

  return result;
}

unint64_t sub_305FC()
{
  result = qword_317560;
  if (!qword_317560)
  {
    sub_2F9C(&qword_3174F0, &qword_269978);
    sub_306B4();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317560);
  }

  return result;
}

unint64_t sub_306B4()
{
  result = qword_317568;
  if (!qword_317568)
  {
    sub_2F9C(&qword_317528, &unk_2699E0);
    sub_3076C();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317568);
  }

  return result;
}

unint64_t sub_3076C()
{
  result = qword_317570;
  if (!qword_317570)
  {
    sub_2F9C(&qword_317578, &unk_269A20);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317570);
  }

  return result;
}

unint64_t sub_30824()
{
  result = qword_3175D8;
  if (!qword_3175D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3175D8);
  }

  return result;
}

unint64_t sub_3088C()
{
  result = qword_3175E0;
  if (!qword_3175E0)
  {
    sub_2F9C(&qword_3171B8, &qword_269668);
    sub_8E38(&qword_3175E8, &qword_3171B0, &qword_269660);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3175E0);
  }

  return result;
}

unint64_t sub_30974()
{
  result = qword_317600;
  if (!qword_317600)
  {
    sub_2F9C(&qword_3171D0, &unk_269720);
    sub_8E38(&qword_317608, &qword_3171C8, &qword_269718);
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317600);
  }

  return result;
}

uint64_t sub_30A58(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_261730();
  sub_261730();
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  sub_263300();

  return swift_getWitnessTable();
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  *(a2 + *(v6 + 24)) = 0;
  v7 = sub_2601B0();
  result = (*(*(v7 - 8) + 32))(a2, a1, v7);
  *(a2 + *(v6 + 20)) = a3;
  return result;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2601B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.description.getter()
{
  v0 = sub_2600F0();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_260140();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_260110();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260150();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v31 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v31 - v21;
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_264BC0(18);

  v40 = 0x203A65746164;
  v41 = 0xE600000000000000;
  sub_25FE30();
  sub_260100();
  sub_2600C0();
  (*(v7 + 8))(v10, v32);
  v25 = *(v12 + 8);
  v25(v16, v11);
  sub_260120();
  sub_2600D0();
  (*(v33 + 8))(v6, v34);
  v25(v19, v11);
  v26 = v35;
  sub_2600E0();
  sub_2600A0();
  (*(v36 + 8))(v26, v37);
  v25(v22, v11);
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle);
  v27 = v38;
  sub_260190();
  v25(v24, v11);
  sub_264530(v39);

  v42._countAndFlagsBits = 0x203A65756C617620;
  v42._object = 0xE800000000000000;
  sub_264530(v42);
  sub_2EF0(&qword_316420, &qword_2681A0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_267D30;
  v29 = *(v27 + *(type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0) + 20));
  *(v28 + 56) = &type metadata for Double;
  *(v28 + 64) = &protocol witness table for Double;
  *(v28 + 32) = v29;
  v43._countAndFlagsBits = sub_264470();
  sub_264530(v43);

  return v40;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.axLabel.getter()
{
  v0 = sub_260140();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_260010();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_260300();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_2602E0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_260290();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_2EF0(&qword_317650, &qword_269AB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = sub_2EF0(&qword_317658, &qword_269AC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  v19 = sub_260150();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v32 - v25;
  v27 = sub_260090();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  v28 = sub_260080();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  sub_260250();
  sub_2602C0();
  sub_2602F0();
  sub_260000();
  sub_2600B0();
  v29 = v32;
  sub_260130();
  sub_2600D0();
  (*(v33 + 8))(v29, v34);
  v30 = *(v20 + 8);
  v30(v24, v19);
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle);
  sub_260190();
  v30(v26, v19);
  return v35;
}

uint64_t TotalMonthlyReadingFrameViewModel.MonthTotal.axValue.getter()
{
  v1 = sub_265190();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265170();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2651F0();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_265200();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + *(type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0) + 20));
  v18 = sub_265220();
  v26[0] = v19;
  v26[1] = v18;
  sub_2EF0(&qword_317660, &unk_269AC8);
  v20 = *(sub_2651C0() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269100;
  sub_2651B0();
  sub_2651A0();
  sub_37D68(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2651D0();
  sub_265160();
  sub_265180();
  sub_25FE40();

  (*(v31 + 8))(v4, v32);
  (*(v29 + 8))(v8, v30);
  (*(v9 + 8))(v12, v28);
  sub_38088(&qword_317668, &type metadata accessor for Duration.UnitsFormatStyle);
  v24 = v27;
  sub_265210();
  (*(v13 + 8))(v16, v24);
  return v33;
}

uint64_t static TotalMonthlyReadingFrameViewModel.MonthTotal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_260180() & 1) != 0 && (v4 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_31A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_260180() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TotalMonthlyReadingFrameViewModel.init(monthlyTotals:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v6 = sub_260550();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_31B88()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_264490();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_31E08()
{
  v1 = v0;
  v2 = sub_260140();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260150();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = __chkstk_darwin(v5);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v34 - v9;
  v10 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v34 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v34 - v20;
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  v24 = *v1;
  v25 = *(*v1 + 16);
  if (!v25)
  {
    return 0;
  }

  v35 = v5;
  v26 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  result = sub_38110(v26, v18, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  if (v25 == 1)
  {
LABEL_3:
    sub_390C0(v18, v21, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    sub_390C0(v21, v23, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    v28 = v36;
    sub_25FE30();
    v29 = v37;
    sub_260130();
    v30 = v38;
    sub_2600D0();
    (*(v39 + 8))(v29, v40);
    v31 = *(v41 + 8);
    v32 = v35;
    v31(v28, v35);
    sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle);
    sub_260190();
    v31(v30, v32);
    sub_39D0C(v23, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    return v42;
  }

  else
  {
    v33 = 1;
    while (v33 < *(v24 + 16))
    {
      sub_38110(v26 + *(v11 + 72) * v33, v15, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      if (*&v18[*(v10 + 20)] >= *&v15[*(v10 + 20)])
      {
        result = sub_39D0C(v15, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      else
      {
        sub_39D0C(v18, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        result = sub_390C0(v15, v18, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      if (v25 == ++v33)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_32260()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  __chkstk_darwin(v3);
  v5 = &v19[-v4];
  v6 = sub_264410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v19[-v12];
  result = sub_31E08();
  if (v15)
  {

    sub_2643A0();
    sub_260260();
    (*(v7 + 16))(v11, v13, v6);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_260260();
    v18 = sub_264480();
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v13, v6);
    return v18;
  }

  return result;
}

uint64_t sub_324FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a6;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2EF0(&qword_317B48, &qword_26A0A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v28[-v17];
  if (UIAccessibilityPrefersCrossFadeTransitions())
  {
    v19 = sub_2613D0();
  }

  else
  {
    v19 = sub_2613F0();
  }

  v20 = v19;
  v21 = sub_2EF0(&qword_317B50, &qword_26A0A8);
  (*(*(v21 - 8) + 16))(v18, a1, v21);
  *&v18[*(v15 + 36)] = v20;
  if (a5)
  {
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_264900();
    v23 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(a4, 0);
    (*(v11 + 8))(v14, v10);
    if (v32)
    {
LABEL_6:
      v22 = 0;
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  v22 = sub_2635D0();
  if ((v29 & 1) == 0)
  {
LABEL_10:

    sub_264900();
    v24 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(a2, 0);
    (*(v11 + 8))(v14, v10);
    LOBYTE(a2) = v31;
  }

LABEL_11:
  v25 = v30;
  sub_3A36C(v18, v30);
  result = sub_2EF0(&qword_317B58, &qword_26A0B0);
  v27 = v25 + *(result + 36);
  *v27 = v22;
  *(v27 + 8) = a2 & 1;
  return result;
}

uint64_t sub_32830()
{
  v1 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = (v0 + *(type metadata accessor for TotalMonthlyReadingChart(0) + 44));
  v14 = *v12;
  v13 = v12[1];
  v23 = v14;
  v24 = v13;
  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  v15 = v22;
  v16 = *(v22 + 16);
  if (!v16)
  {
  }

  v17 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  result = sub_38110(v17, v9, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  if (v16 == 1)
  {
LABEL_3:

    sub_390C0(v9, v11, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
    v19 = *&v11[*(v1 + 20)];
    return sub_39D0C(v11, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  }

  else
  {
    v20 = 1;
    while (v20 < *(v15 + 16))
    {
      sub_38110(v17 + *(v2 + 72) * v20, v6, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      if (*&v9[*(v1 + 20)] >= *&v6[*(v1 + 20)])
      {
        result = sub_39D0C(v6, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      else
      {
        sub_39D0C(v9, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
        result = sub_390C0(v6, v9, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
      }

      if (v16 == ++v20)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_32AC8()
{
  v0 = sub_261DD0();
  sub_B600(v0, qword_317610);
  v1 = sub_B080(v0, qword_317610);
  v2 = enum case for RoundedCornerStyle.continuous(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_32B50()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_264490();
  v20 = v19;
  (*(v1 + 8))(v7, v0);
  result = (*(v9 + 8))(v15, v8);
  qword_317628 = v18;
  unk_317630 = v20;
  return result;
}

uint64_t sub_32DD0()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_264490();
  v20 = v19;
  (*(v1 + 8))(v7, v0);
  result = (*(v9 + 8))(v15, v8);
  qword_317638 = v18;
  unk_317640 = v20;
  return result;
}

uint64_t sub_33048@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v143 = sub_2EF0(&qword_317960, &qword_269CF0);
  v2 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v175 = &v138 - v3;
  v174 = sub_261C90();
  v173 = *(v174 - 8);
  v4 = *(v173 + 64);
  __chkstk_darwin(v174);
  v172 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_317968, &qword_269CF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v162 = &v138 - v8;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v157 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_262180();
  v148 = *(v149 - 8);
  v12 = *(v148 + 64);
  __chkstk_darwin(v149);
  v139 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2EF0(&qword_317970, &qword_269D00);
  v14 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v147 = &v138 - v15;
  v16 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v140 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v179 = &v138 - v21;
  __chkstk_darwin(v20);
  v145 = &v138 - v22;
  v158 = sub_260EE0();
  v156 = *(v158 - 8);
  v23 = *(v156 + 64);
  __chkstk_darwin(v158);
  v154 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TotalMonthlyReadingChart(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v153 = sub_2EF0(&qword_317978, &qword_269D08);
  v151 = *(v153 - 8);
  v28 = *(v151 + 64);
  __chkstk_darwin(v153);
  v184 = &v138 - v29;
  v155 = sub_2EF0(&qword_317980, &qword_269D10);
  v152 = *(v155 - 8);
  v30 = *(v152 + 64);
  __chkstk_darwin(v155);
  v150 = &v138 - v31;
  v161 = sub_2EF0(&qword_317988, &qword_269D18);
  v160 = *(v161 - 8);
  v32 = *(v160 + 64);
  __chkstk_darwin(v161);
  v159 = &v138 - v33;
  v168 = sub_2EF0(&qword_317990, &qword_269D20);
  v166 = *(v168 - 8);
  v34 = *(v166 + 64);
  __chkstk_darwin(v168);
  v181 = &v138 - v35;
  v163 = sub_2EF0(&qword_317998, &qword_269D28);
  v36 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v164 = &v138 - v37;
  v183 = sub_2EF0(&qword_3179A0, &qword_269D30);
  v38 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v182 = &v138 - v39;
  v142 = sub_2EF0(&qword_3179A8, &qword_269D38);
  v141 = *(v142 - 8);
  v40 = *(v141 + 64);
  __chkstk_darwin(v142);
  v169 = &v138 - v41;
  v180 = v25;
  v42 = (v1 + *(v25 + 44));
  v44 = *v42;
  v43 = v42[1];
  v186 = v44;
  v187 = *&v43;
  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  sub_38110(v1, &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingChart);
  v45 = *(v26 + 80);
  v46 = (v45 + 16) & ~v45;
  v170 = v27;
  v165 = v45;
  v185 = swift_allocObject();
  v167 = v46;
  v171 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_390C0(v171, v185 + v46, type metadata accessor for TotalMonthlyReadingChart);
  v178 = sub_2EF0(&qword_317908, qword_269C98);
  v177 = sub_2EF0(&qword_3179C8, &qword_269D68);
  v176 = sub_8E38(&qword_3179D0, &qword_317908, qword_269C98);
  v47 = sub_2F9C(&qword_3179D8, &qword_269D70);
  v48 = sub_2F9C(&qword_3179E0, &qword_269D78);
  v49 = sub_2F9C(&qword_3179E8, &qword_269D80);
  v50 = sub_2F9C(&qword_3179F0, &qword_269D88);
  v51 = sub_2F9C(&qword_3179F8, &qword_269D90);
  v52 = sub_2F9C(&qword_317A00, &qword_269D98);
  v53 = sub_2F9C(&qword_317A08, &unk_269DA0);
  v54 = sub_262170();
  v186 = sub_260F50();
  v187 = COERCE_DOUBLE(&type metadata for Color);
  v188 = &protocol witness table for BarMark;
  v189 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = sub_38088(&qword_317A10, &type metadata accessor for UnevenRoundedRectangle);
  v186 = v53;
  v187 = *&v54;
  v188 = OpaqueTypeConformance2;
  v189 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_39140();
  v186 = v51;
  v187 = *&v52;
  v188 = v57;
  v189 = v58;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = sub_391F8();
  v186 = v49;
  v187 = *&v50;
  v188 = v59;
  v189 = v60;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = sub_10A84();
  v186 = v48;
  v187 = COERCE_DOUBLE(&type metadata for String);
  v188 = v61;
  v189 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v186 = v47;
  v187 = COERCE_DOUBLE(&type metadata for String);
  v188 = v63;
  v189 = v62;
  swift_getOpaqueTypeConformance2();
  sub_38088(&qword_317A38, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal);
  sub_260F30();
  v185 = v1;
  result = sub_32830();
  if (v65 < 0.0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v186 = 0;
  v187 = v65;
  v66 = v180;
  v67 = v185;
  v68 = (v185 + *(v180 + 48));
  v69 = *v68;
  v70 = v68[1];
  v192 = v69;
  v193 = v70;
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  v71 = v67 + *(v66 + 20);
  v72 = v145;
  sub_408A8(v145);
  v73 = v148;
  v74 = v179;
  v75 = v149;
  (*(v148 + 104))(v179, enum case for UserInterfaceSizeClass.compact(_:), v149);
  (*(v73 + 56))(v74, 0, 1, v75);
  v76 = *(v146 + 48);
  v77 = v147;
  sub_8198(v72, v147, &qword_3178F0, &qword_269C90);
  v178 = v76;
  sub_8198(v74, v77 + v76, &qword_3178F0, &qword_269C90);
  v78 = *(v73 + 48);
  if (v78(v77, 1, v75) == 1)
  {
    sub_8E80(v74, &qword_3178F0, &qword_269C90);
    sub_8E80(v72, &qword_3178F0, &qword_269C90);
    if (v78(v77 + v178, 1, v75) == 1)
    {
      sub_8E80(v77, &qword_3178F0, &qword_269C90);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v79 = v140;
  sub_8198(v77, v140, &qword_3178F0, &qword_269C90);
  v80 = v178;
  if (v78(v77 + v178, 1, v75) == 1)
  {
    sub_8E80(v179, &qword_3178F0, &qword_269C90);
    sub_8E80(v72, &qword_3178F0, &qword_269C90);
    (*(v73 + 8))(v79, v75);
LABEL_7:
    sub_8E80(v77, &qword_317970, &qword_269D00);
    goto LABEL_8;
  }

  v135 = v66;
  v136 = v139;
  (*(v73 + 32))(v139, v77 + v80, v75);
  sub_38088(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
  sub_264390();
  v137 = *(v73 + 8);
  v137(v136, v75);
  sub_8E80(v179, &qword_3178F0, &qword_269C90);
  sub_8E80(v72, &qword_3178F0, &qword_269C90);
  v137(v79, v75);
  v66 = v135;
  sub_8E80(v77, &qword_3178F0, &qword_269C90);
LABEL_8:
  v81 = v185 + *(v66 + 24);
  v82 = v157;
  sub_40880(v157);
  sub_39D0C(v82, type metadata accessor for SizeConstants.Spacing);
  v83 = v154;
  sub_260ED0();
  v84 = sub_260F90();
  v85 = v162;
  (*(*(v84 - 8) + 56))(v162, 1, 1, v84);
  v86 = sub_2EF0(&qword_317A48, &qword_269DC0);
  v87 = sub_8E38(&qword_317A50, &qword_317978, &qword_269D08);
  v88 = sub_392B0();
  v89 = v150;
  v90 = v153;
  v91 = v158;
  v92 = v184;
  sub_2629B0();
  sub_8E80(v85, &qword_317968, &qword_269CF8);
  (*(v156 + 8))(v83, v91);
  (*(v151 + 8))(v92, v90);
  v186 = v90;
  v187 = *&v86;
  v188 = v91;
  v189 = v87;
  v190 = v88;
  v191 = &protocol witness table for PlotDimensionScaleRange;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v159;
  v95 = v155;
  sub_262990();
  v96 = (*(v152 + 8))(v89, v95);
  v184 = &v138;
  __chkstk_darwin(v96);
  v97 = v185;
  sub_2EF0(&qword_317A60, &qword_269DC8);
  v186 = v95;
  v187 = *&v93;
  swift_getOpaqueTypeConformance2();
  v98 = sub_2F9C(&qword_317A68, &qword_269DD0);
  v99 = v180;
  v100 = v98;
  v101 = sub_2F9C(&qword_317A70, &qword_269DD8);
  v102 = sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0);
  v103 = sub_39334();
  v186 = v100;
  v187 = *&v101;
  v188 = v102;
  v189 = v103;
  swift_getOpaqueTypeConformance2();
  v104 = v161;
  sub_2629A0();
  (*(v160 + 8))(v94, v104);
  v105 = v97 + *(v99 + 36);
  v106 = *v105;
  v107 = *(v105 + 8);
  if (v107 == 1)
  {
    v108 = 1.0;
    v109 = v175;
    v110 = v174;
    v111 = v173;
    v112 = v172;
    if (v106)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v113 = *v105;

    sub_264900();
    v114 = sub_2624B0();
    sub_260D10();

    v112 = v172;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v106, 0);
    v111 = v173;
    v110 = v174;
    (*(v173 + 8))(v112, v174);
    v108 = 1.0;
    v109 = v175;
    if (v186)
    {
      goto LABEL_17;
    }
  }

  v115 = v185 + *(v99 + 40);
  v116 = *v115;
  if (*(v115 + 8) != 1)
  {

    sub_264900();
    v117 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v116, 0);
    (*(v111 + 8))(v112, v110);
    LOBYTE(v116) = v186;
  }

  if (v116)
  {
    v108 = 1.0;
  }

  else
  {
    v108 = 0.0;
  }

LABEL_17:
  v118 = v164;
  (*(v166 + 32))(v164, v181, v168);
  *&v118[*(v163 + 36)] = v108;
  KeyPath = swift_getKeyPath();
  v120 = swift_getKeyPath();
  v121 = v118;
  v122 = v182;
  sub_393FC(v121, v182);
  v123 = v122 + *(v183 + 36);
  *v123 = KeyPath;
  *(v123 + 8) = 0;
  *(v123 + 16) = v120;
  *(v123 + 24) = 0;
  if (!v107)
  {

    sub_264900();
    v124 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v106, 0);
    (*(v111 + 8))(v112, v110);
    LOBYTE(v106) = v186;
  }

  LOBYTE(v186) = v106 & 1;
  v125 = v171;
  sub_38110(v185, v171, type metadata accessor for TotalMonthlyReadingChart);
  v126 = v167;
  v127 = swift_allocObject();
  sub_390C0(v125, v127 + v126, type metadata accessor for TotalMonthlyReadingChart);
  v128 = sub_39824();
  v129 = v169;
  v130 = v182;
  v131 = v183;
  sub_262E50();

  sub_39B7C(v130);
  v132 = enum case for DynamicTypeSize.xxxLarge(_:);
  v133 = sub_261690();
  (*(*(v133 - 8) + 104))(v109, v132, v133);
  sub_38088(&qword_317AB0, &type metadata accessor for DynamicTypeSize);
  result = sub_264390();
  if (result)
  {
    v186 = v131;
    v187 = COERCE_DOUBLE(&type metadata for Bool);
    v188 = v128;
    v189 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0);
    v134 = v142;
    sub_262B70();
    sub_8E80(v109, &qword_317960, &qword_269CF0);
    return (*(v141 + 8))(v129, v134);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_347C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a3;
  v5 = sub_260EC0();
  v139 = *(v5 - 8);
  v140 = v5;
  v6 = *(v139 + 64);
  __chkstk_darwin(v5);
  v138 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_262170();
  v8 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v110 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v122 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2EF0(&qword_317AC8, &qword_269E38);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v118 = &v107 - v15;
  v119 = sub_2602D0();
  v117 = *(v119 - 8);
  v16 = *(v117 + 64);
  __chkstk_darwin(v119);
  v114 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_317AF0, &qword_269E58);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v115 = &v107 - v20;
  v21 = sub_261C90();
  v108 = *(v21 - 8);
  v22 = *(v108 + 64);
  __chkstk_darwin(v21);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_317AF8, &qword_269E60);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v112 = &v107 - v27;
  v120 = sub_260F50();
  v116 = *(v120 - 8);
  v28 = *(v116 + 64);
  __chkstk_darwin(v120);
  v113 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2EF0(&qword_317A08, &unk_269DA0);
  v121 = *(v123 - 8);
  v30 = *(v121 + 64);
  __chkstk_darwin(v123);
  v32 = &v107 - v31;
  v128 = sub_2EF0(&qword_3179F8, &qword_269D90);
  v125 = *(v128 - 8);
  v33 = *(v125 + 64);
  __chkstk_darwin(v128);
  v124 = &v107 - v34;
  v131 = sub_2EF0(&qword_3179E8, &qword_269D80);
  v129 = *(v131 - 8);
  v35 = *(v129 + 64);
  __chkstk_darwin(v131);
  v127 = &v107 - v36;
  v134 = sub_2EF0(&qword_3179E0, &qword_269D78);
  v132 = *(v134 - 8);
  v37 = *(v132 + 64);
  __chkstk_darwin(v134);
  v130 = &v107 - v38;
  v39 = sub_2EF0(&qword_3179D8, &qword_269D70);
  v135 = *(v39 - 8);
  v136 = v39;
  v40 = *(v135 + 64);
  __chkstk_darwin(v39);
  v133 = &v107 - v41;
  if (qword_3158B8 != -1)
  {
    swift_once();
  }

  v42 = unk_317630;
  v126 = qword_317628;
  v146 = qword_317628;
  v147 = unk_317630;
  v43 = type metadata accessor for TotalMonthlyReadingChart(0);
  v44 = a2 + *(v43 + 32);
  v45 = *v44;
  v46 = *(v44 + 8);
  v142 = v42;
  swift_bridgeObjectRetain_n();
  v143 = a2;
  if (v46 == 1)
  {
    v47 = v32;
    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_39D6C(v45, 0);
    sub_264900();
    v48 = a2;
    v49 = v21;
    v50 = sub_2624B0();
    sub_260D10();

    v21 = v49;
    a2 = v48;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v45, 0);
    (*(v108 + 8))(v24, v21);
    v47 = v32;
    if (v144 != 1)
    {
      goto LABEL_12;
    }
  }

  v51 = a2 + *(v43 + 40);
  v52 = *v51;
  if (*(v51 + 8) == 1)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v53 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
    goto LABEL_13;
  }

  sub_264900();
  v55 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_4054(v52, 0);
  (*(v108 + 8))(v24, v21);
  if (v144 == 1)
  {
    goto LABEL_12;
  }

LABEL_9:
  v53 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
  v54 = 0;
  if (*(a1 + *(v53 + 24)) == 1)
  {
LABEL_13:
    v54 = *(a1 + *(v53 + 20));
  }

  v111 = v47;
  v56 = a1;
  v144 = v54;
  v57 = sub_10A84();
  sub_260E80();

  if (qword_3158C0 != -1)
  {
    swift_once();
  }

  v146 = qword_317638;
  v147 = unk_317640;
  v58 = v117;
  v59 = v114;
  v60 = v119;
  (*(v117 + 104))(v114, enum case for Calendar.Component.month(_:), v119);
  v61 = sub_2602E0();
  v62 = v118;
  (*(*(v61 - 8) + 56))(v118, 1, 1, v61);

  sub_260E70();
  sub_8E80(v62, &qword_317AC8, &qword_269E38);
  (*(v58 + 8))(v59, v60);

  sub_2601B0();
  v63 = v113;
  sub_260F40();
  v64 = v122;
  v119 = v57;
  sub_404B8(v122);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v65 = sub_263000();

  sub_39D0C(v64, type metadata accessor for ColorConstants);
  v146 = v65;
  v66 = v56;
  v67 = v111;
  v68 = v120;
  sub_260DD0();

  (*(v116 + 8))(v63, v68);
  if (qword_3158B0 != -1)
  {
    swift_once();
  }

  v69 = sub_261DD0();
  v70 = sub_B080(v69, qword_317610);
  v71 = v137;
  v72 = v110;
  (*(*(v69 - 8) + 16))(&v110[*(v137 + 20)], v70, v69);
  sub_261FD0();
  *v72 = v73;
  v72[1] = v74;
  v72[2] = v75;
  v72[3] = v76;
  v146 = v68;
  v147 = &type metadata for Color;
  v148 = &protocol witness table for BarMark;
  v149 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = sub_38088(&qword_317A10, &type metadata accessor for UnevenRoundedRectangle);
  v79 = v124;
  v80 = v123;
  sub_260E10();
  sub_39D0C(v72, &type metadata accessor for UnevenRoundedRectangle);
  (*(v121 + 8))(v67, v80);
  v81 = v138;
  v82 = sub_260EB0();
  v122 = &v107;
  __chkstk_darwin(v82);
  v109 = v66;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v83 = sub_2EF0(&qword_317A00, &qword_269D98);
  v146 = v80;
  v147 = v71;
  v148 = OpaqueTypeConformance2;
  v149 = v78;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_39140();
  v86 = v127;
  v87 = v128;
  sub_260DC0();
  (*(v139 + 8))(v81, v140);
  v88 = (*(v125 + 8))(v79, v87);
  __chkstk_darwin(v88);
  v89 = sub_2EF0(&qword_3179F0, &qword_269D88);
  v146 = v87;
  v147 = v83;
  v148 = v84;
  v149 = v85;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_391F8();
  v93 = v130;
  v92 = v131;
  sub_260DE0();
  (*(v129 + 8))(v86, v92);
  v144 = TotalMonthlyReadingFrameViewModel.MonthTotal.axLabel.getter();
  v145 = v94;
  v146 = v92;
  v147 = v89;
  v148 = v90;
  v149 = v91;
  v95 = swift_getOpaqueTypeConformance2();
  v97 = v133;
  v96 = v134;
  v98 = v119;
  sub_260DF0();

  (*(v132 + 8))(v93, v96);
  sub_2EF0(&qword_317240, &qword_269790);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_269100;
  v100 = v142;
  *(v99 + 32) = v126;
  *(v99 + 40) = v100;
  *(v99 + 48) = TotalMonthlyReadingFrameViewModel.MonthTotal.axValue.getter();
  *(v99 + 56) = v101;
  v146 = v99;
  sub_2EF0(&qword_3160B0, &qword_267D40);
  sub_8E38(&qword_3160B8, &qword_3160B0, &qword_267D40);
  v102 = sub_264340();
  v104 = v103;

  v144 = v102;
  v145 = v104;
  v146 = v96;
  v147 = &type metadata for String;
  v148 = v95;
  v149 = v98;
  swift_getOpaqueTypeConformance2();
  v105 = v136;
  sub_260E00();

  return (*(v135 + 8))(v97, v105);
}

uint64_t sub_35898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a2;
  v69 = a3;
  v4 = type metadata accessor for TotalMonthlyReadingChart(0);
  v68 = *(v4 - 8);
  v67 = *(v68 + 64);
  __chkstk_darwin(v4 - 8);
  v66 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v64 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_265190();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v63);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265170();
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  __chkstk_darwin(v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2651F0();
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v60);
  v20 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_265200();
  v22 = *(v21 - 8);
  v58 = v21;
  v59 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + *(type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0) + 20));
  v27 = sub_265220();
  v57[0] = v28;
  v57[1] = v27;
  sub_2EF0(&qword_317660, &unk_269AC8);
  v29 = *(sub_2651C0() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_269100;
  sub_2651B0();
  sub_2651A0();
  sub_37D68(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2651E0();
  sub_265160();
  sub_265180();
  sub_25FE40();

  (*(v9 + 8))(v12, v63);
  (*(v61 + 8))(v16, v62);
  (*(v17 + 8))(v20, v60);
  sub_38088(&qword_317668, &type metadata accessor for Duration.UnitsFormatStyle);
  v33 = v58;
  sub_265210();
  (*(v59 + 8))(v25, v33);
  sub_10A84();
  v34 = sub_2628F0();
  v36 = v35;
  LOBYTE(v31) = v37;
  _s7BooksUI13FontConstantsV6ButtonV8subtitle05SwiftB00C0Vvg_0();
  v38 = sub_262840();
  v40 = v39;
  LOBYTE(v32) = v41;

  sub_39DBC(v34, v36, v31 & 1);

  v43 = v64;
  v42 = v65;
  sub_404B8(v64);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v44 = sub_263000();

  sub_39D0C(v43, type metadata accessor for ColorConstants);
  v70 = v44;
  v45 = sub_2627F0();
  v47 = v46;
  LOBYTE(v17) = v48;
  v50 = v49;
  sub_39DBC(v38, v40, v32 & 1);

  v51 = v42;
  v52 = v66;
  sub_38110(v51, v66, type metadata accessor for TotalMonthlyReadingChart);
  v53 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v54 = swift_allocObject();
  result = sub_390C0(v52, v54 + v53, type metadata accessor for TotalMonthlyReadingChart);
  v56 = v69;
  *v69 = v45;
  v56[1] = v47;
  *(v56 + 16) = v17 & 1;
  *(v56 + 17) = v70;
  *(v56 + 5) = *(&v70 + 3);
  v56[3] = v50;
  v56[4] = sub_35F54;
  v56[5] = 0;
  v56[6] = sub_39DCC;
  v56[7] = v54;
  return result;
}

uint64_t sub_35F54@<X0>(void *a1@<X8>)
{
  result = sub_261420();
  *a1 = v3;
  return result;
}

uint64_t sub_35F80(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for TotalMonthlyReadingChart(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  return sub_2631F0();
}

uint64_t sub_36024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v2 = type metadata accessor for TotalMonthlyReadingChart(0);
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_2EF0(&qword_317AC8, &qword_269E38);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_2602D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_260E50();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v35 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_260EA0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_260E30();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_2EF0(&qword_317A68, &qword_269DD0);
  v21 = *(v20 - 8);
  v38 = v20;
  v39 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v35 - v23;
  sub_260E20();
  sub_260E90();
  (*(v9 + 104))(v12, enum case for Calendar.Component.month(_:), v8);
  v25 = sub_2602E0();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  sub_260E40();
  sub_8E80(v7, &qword_317AC8, &qword_269E38);
  (*(v9 + 8))(v12, v8);
  v26 = v37;
  sub_38110(v37, &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingChart);
  v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v28 = swift_allocObject();
  sub_390C0(&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for TotalMonthlyReadingChart);
  sub_2EF0(&qword_317AD0, &qword_269E40);
  v29 = sub_2F9C(&qword_317AD8, &qword_269E48);
  v30 = sub_2F9C(&qword_317AE0, &qword_269E50);
  v31 = sub_8E38(&qword_317AE8, &qword_317AE0, &qword_269E50);
  v42 = v30;
  v43 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v29;
  v43 = &type metadata for Color;
  v44 = OpaqueTypeConformance2;
  v45 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  sub_260F80();
  v41 = v26;
  sub_2EF0(&qword_317A70, &qword_269DD8);
  sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0);
  sub_39334();
  v33 = v38;
  sub_260DB0();
  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_365D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for ColorConstants(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260F00();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260F20();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_260140();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260150();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = sub_2EF0(&qword_317AE0, &qword_269E50);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v36 - v24;
  v26 = sub_2EF0(&qword_317AD8, &qword_269E48);
  v27 = *(v26 - 8);
  v40 = v26;
  v41 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v36 - v29;
  sub_25FE30();
  sub_260120();
  sub_2600D0();
  (*(v11 + 8))(v14, v37);
  (*(v16 + 8))(v20, v15);
  sub_263740();
  sub_260F10();
  sub_260EF0();
  sub_38088(&qword_317648, &type metadata accessor for Date.FormatStyle);
  sub_260E60();
  sub_262700();
  sub_2625A0();

  v31 = sub_8E38(&qword_317AE8, &qword_317AE0, &qword_269E50);
  sub_260F70();

  (*(v22 + 8))(v25, v21);
  v32 = v42;
  sub_404B8(v42);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v33 = sub_263000();

  sub_39D0C(v32, type metadata accessor for ColorConstants);
  v46 = v31;
  v47 = v33;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_260F60();

  return (*(v41 + 8))(v30, v34);
}

uint64_t sub_36B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v35 = a7;
  v36 = a1;
  v30 = sub_261C90();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v29 - v14);
  v16 = sub_263640();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TotalMonthlyReadingChart(0);
  sub_8198(a2 + *(v21 + 28), v15, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v17 + 32);
    v22(v20, v15, v16);
  }

  else
  {
    v23 = *v15;
    sub_264900();
    v24 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v8 + 8))(v11, v30);
    v22 = *(v17 + 32);
  }

  v25 = sub_2EF0(v31, v32);
  v26 = v35;
  v22((v35 + *(v25 + 36)), v20, v16);
  v27 = sub_2EF0(v33, v34);
  return (*(*(v27 - 8) + 16))(v26, v36, v27);
}

uint64_t sub_36E24(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for TotalMonthlyReadingChart(0) + 44));
  v6 = *v4;
  v5 = v4[1];
  if (v3 == 1)
  {
    sub_2EF0(&qword_3179B0, &unk_269D40);
    sub_2631E0();
    v7 = *(v14 + 16);

    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        sub_263610();
        sub_2635B0();

        __chkstk_darwin(v10);
        sub_2614E0();
      }
    }
  }

  else
  {
    sub_2EF0(&qword_3179B0, &unk_269D40);
    sub_2631E0();
    v11 = *(v14 + 16);

    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 1;
        __chkstk_darwin(result);
        sub_263620();
        sub_2614E0();

        v12 = v13;
      }

      while (v11 != v13);
    }
  }

  return result;
}

uint64_t sub_37048(uint64_t a1, unint64_t a2, char a3)
{
  v5 = (a1 + *(type metadata accessor for TotalMonthlyReadingChart(0) + 44));
  v6 = *v5;
  v7 = v5[1];

  sub_2EF0(&qword_3179B0, &unk_269D40);
  sub_2631E0();
  v8 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_228E24(v11);
  v8 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8[2] > a2)
  {
    v10 = type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal(0);
    *(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * a2 + *(v10 + 24)) = a3;
    sub_2631F0();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_371A8@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for TotalMonthlyReadingChart(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_2EF0(&qword_3179B8, &unk_269D50);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = a1 + v2[10];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = (a1 + v2[11]);
  sub_2EF0(&qword_317908, qword_269C98);
  sub_2631D0();
  *v9 = v12;
  *(v9 + 1) = v13;
  v10 = (a1 + v2[12]);
  sub_2631D0();
  result = v12;
  *v10 = v12;
  *(v10 + 1) = v13;
  return result;
}

uint64_t TotalMonthlyReadingFrame.alignment.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t TotalMonthlyReadingFrame.sharableView.getter()
{
  v1 = type metadata accessor for TotalMonthlyReadingFrame(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_38110(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingFrame);
  sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame);
  return sub_263310();
}

uint64_t TotalMonthlyReadingFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TotalMonthlyReadingFrame(0) + 24);
  v4 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_38088(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_38088(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t TotalMonthlyReadingFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_263550();
  a2[1] = v4;
  v5 = type metadata accessor for TotalMonthlyReadingFrame(0);
  v6 = (a2 + *(v5 + 20));
  v7 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  *v6 = sub_262F40();
  v8 = enum case for ColorScheme.light(_:);
  v9 = sub_261180();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6 + v7, v8, v9);
  (*(v10 + 56))(v6 + v7, 0, 1, v9);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  return sub_390C0(a1, a2 + *(v5 + 24), type metadata accessor for TotalMonthlyReadingFrameViewModel);
}

void TotalMonthlyReadingFrame.body.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(type metadata accessor for TotalMonthlyReadingFrame(0) + 24);
  v5 = sub_31B88();
  v7 = v6;
  v8 = sub_32260();
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  v10 = sub_2EF0(&qword_317688, &qword_269AD8);
  v11 = v10[10];
  v12 = *(v2 + v4);

  sub_371A8((a1 + v11));
  *(a1 + v10[11]) = 0x3FC999999999999ALL;
  *(a1 + v10[12]) = 0x4040000000000000;
  *(a1 + v10[13]) = 0x4040000000000000;
}

uint64_t sub_377A0(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  sub_38110(v3, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TotalMonthlyReadingFrame);
  sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame);
  return sub_263310();
}

uint64_t sub_378A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 24);
  v5 = *(type metadata accessor for TotalMonthlyReadingFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_38088(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_38088(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

void sub_3799C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 24);
  v6 = sub_31B88();
  v8 = v7;
  v9 = sub_32260();
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  v11 = sub_2EF0(&qword_317688, &qword_269AD8);
  v12 = v11[10];
  v13 = *(v3 + v5);

  sub_371A8((a2 + v12));
  *(a2 + v11[11]) = 0x3FC999999999999ALL;
  *(a2 + v11[12]) = 0x4040000000000000;
  *(a2 + v11[13]) = 0x4040000000000000;
}

void *sub_37A48(uint64_t a1)
{
  v2 = sub_264140();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2EF0(&qword_317B30, &qword_269F58);
    v10 = sub_264BA0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_38088(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest);
      v18 = sub_264320();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_38088(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest);
          v25 = sub_264390();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_37D68(uint64_t a1)
{
  v2 = sub_2651C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2EF0(&qword_317B18, &qword_269F50);
    v10 = sub_264BA0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_38088(&qword_317B20, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
      v18 = sub_264320();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_38088(&qword_317B28, &type metadata accessor for Duration.UnitsFormatStyle.Unit);
          v25 = sub_264390();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_38088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_38110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_381C0(uint64_t a1)
{
  result = sub_38088(&qword_317698, type metadata accessor for TotalMonthlyReadingFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_38218(uint64_t a1)
{
  result = sub_38088(&qword_317670, type metadata accessor for TotalMonthlyReadingFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_382A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_260550();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_38360(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260550();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38404()
{
  sub_38FEC(319, &unk_317708, type metadata accessor for TotalMonthlyReadingFrameViewModel.MonthTotal, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_260550();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_384CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2601B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_385AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2601B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_38664()
{
  result = sub_2601B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_386FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageBackground(0);
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
    v12 = type metadata accessor for TotalMonthlyReadingFrameViewModel(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_38804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PageBackground(0);
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
    v14 = type metadata accessor for TotalMonthlyReadingFrameViewModel(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_38904()
{
  result = type metadata accessor for PageBackground(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TotalMonthlyReadingFrameViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_389F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317870, &unk_26BFB0);
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

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_38BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2EF0(&qword_317870, &unk_26BFB0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_2EF0(&qword_316F78, &unk_269C60);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_2EF0(&qword_317878, &unk_27E490);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_38DB8()
{
  sub_38FEC(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2CC54(319, &qword_3178E8, &qword_3178F0, &qword_269C90, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_38FEC(319, &qword_317008, type metadata accessor for SizeConstants.Spacing, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_38FEC(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_39050(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_2CC54(319, &qword_317900, &qword_317908, qword_269C98, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_39050(319, &qword_317910, &type metadata for CGFloat, &type metadata accessor for State);
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

void sub_38FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_39050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_390C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_39140()
{
  result = qword_317A18;
  if (!qword_317A18)
  {
    sub_2F9C(&qword_317A00, &qword_269D98);
    sub_8E38(&qword_3175F0, &qword_3175F8, &qword_288A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A18);
  }

  return result;
}

unint64_t sub_391F8()
{
  result = qword_317A20;
  if (!qword_317A20)
  {
    sub_2F9C(&qword_3179F0, &qword_269D88);
    sub_8E38(&qword_317A28, &qword_317A30, &unk_269DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A20);
  }

  return result;
}

unint64_t sub_392B0()
{
  result = qword_317A58;
  if (!qword_317A58)
  {
    sub_2F9C(&qword_317A48, &qword_269DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A58);
  }

  return result;
}

unint64_t sub_39334()
{
  result = qword_317A80;
  if (!qword_317A80)
  {
    sub_2F9C(&qword_317A70, &qword_269DD8);
    sub_8E38(&qword_317A88, &qword_317A90, &qword_269DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A80);
  }

  return result;
}

uint64_t sub_393FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317998, &qword_269D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3946C()
{
  v1 = type metadata accessor for TotalMonthlyReadingChart(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_262180();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(&v4[v7], 1, v8))
    {
      (*(v9 + 8))(&v4[v7], v8);
    }
  }

  else
  {
    v10 = *&v4[v7];
  }

  v11 = &v4[v1[6]];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    v14 = *v11;
  }

  v15 = v1[7];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_263640();
    (*(*(v16 - 8) + 8))(&v4[v15], v16);
  }

  else
  {
    v17 = *&v4[v15];
  }

  sub_4054(*&v4[v1[8]], v4[v1[8] + 8]);
  sub_4054(*&v4[v1[9]], v4[v1[9] + 8]);
  sub_4054(*&v4[v1[10]], v4[v1[10] + 8]);
  v18 = &v4[v1[11]];
  v19 = *v18;

  v20 = *(v18 + 1);

  v21 = *&v4[v1[12] + 8];

  return swift_deallocObject();
}

uint64_t sub_397A4(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_36E24(a1, a2, v6);
}

unint64_t sub_39824()
{
  result = qword_317A98;
  if (!qword_317A98)
  {
    sub_2F9C(&qword_3179A0, &qword_269D30);
    sub_398B0();
    sub_39B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317A98);
  }

  return result;
}

unint64_t sub_398B0()
{
  result = qword_317AA0;
  if (!qword_317AA0)
  {
    sub_2F9C(&qword_317998, &qword_269D28);
    sub_2F9C(&qword_317988, &qword_269D18);
    sub_2F9C(&qword_317A60, &qword_269DC8);
    sub_2F9C(&qword_317980, &qword_269D10);
    sub_2F9C(&qword_317978, &qword_269D08);
    sub_2F9C(&qword_317A48, &qword_269DC0);
    sub_260EE0();
    sub_8E38(&qword_317A50, &qword_317978, &qword_269D08);
    sub_392B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_317A68, &qword_269DD0);
    sub_2F9C(&qword_317A70, &qword_269DD8);
    sub_8E38(&qword_317A78, &qword_317A68, &qword_269DD0);
    sub_39334();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AA0);
  }

  return result;
}

unint64_t sub_39B28()
{
  result = qword_317AA8;
  if (!qword_317AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317AA8);
  }

  return result;
}

uint64_t sub_39B7C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3179A0, &qword_269D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39C3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_39D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_39D6C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_39DBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_39DCC(uint64_t *a1)
{
  v3 = *(type metadata accessor for TotalMonthlyReadingChart(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_35F80(a1, v4);
}

void *sub_39E3C(uint64_t a1)
{
  v2 = sub_263A90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2EF0(&qword_317B00, &qword_269E68);
    v10 = sub_264BA0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_38088(&qword_317B08, &type metadata accessor for PageMetrics.InvocationPoint);
      v18 = sub_264320();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_38088(&qword_317B10, &type metadata accessor for PageMetrics.InvocationPoint);
          v25 = sub_264390();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

__n128 sub_3A188(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_3A19C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_3A1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_3A23C()
{
  sub_2F9C(&qword_3179A8, &qword_269D38);
  sub_2F9C(&qword_317960, &qword_269CF0);
  sub_2F9C(&qword_3179A0, &qword_269D30);
  sub_39824();
  swift_getOpaqueTypeConformance2();
  sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3A36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_317B48, &qword_26A0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3A3E0()
{
  result = qword_317B60;
  if (!qword_317B60)
  {
    sub_2F9C(&qword_317B58, &qword_26A0B0);
    sub_3A498();
    sub_8E38(&qword_317B88, &qword_317B90, &unk_26A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317B60);
  }

  return result;
}

unint64_t sub_3A498()
{
  result = qword_317B68;
  if (!qword_317B68)
  {
    sub_2F9C(&qword_317B48, &qword_26A0A0);
    sub_8E38(&qword_317B70, &qword_317B50, &qword_26A0A8);
    sub_8E38(&qword_317B78, &qword_317B80, &qword_26A0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317B68);
  }

  return result;
}

uint64_t sub_3A5C0()
{
  sub_2EF0(&qword_317BB8, &qword_26A1B8);
  v0 = *(sub_264140() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269100;
  sub_2640F0();
  sub_264120();
  v4 = sub_37A48(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_317B98 = v4;
  return result;
}

uint64_t sub_3A6C8()
{
  sub_2EF0(&qword_317BB0, &qword_26A1B0);
  v0 = sub_2EF0(&qword_3161E8, &qword_267FB8);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v28 = *(*(v0 - 8) + 72);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A0D0;
  v29 = v2;
  v30 = v0;
  v3 = v2 + v1;
  v26 = *(v0 + 48);
  sub_263D60();
  if (qword_3158C8 != -1)
  {
    swift_once();
  }

  v4 = qword_317B98;
  sub_2EF0(&qword_317BB8, &qword_26A1B8);
  v5 = sub_264140();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_267D20;
  v10 = v9 + v8;
  v11 = qword_315910;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_B080(v5, qword_31B640);
  v13 = *(v6 + 16);
  v13(v10, v12, v5);
  if (qword_315AE8 != -1)
  {
    swift_once();
  }

  v14 = sub_B080(v5, qword_326E80);
  v13(v10 + v7, v14, v5);
  sub_264110();
  v15 = sub_3B5B0(v9, v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v3 + v26) = v15;
  v16 = *(v30 + 48);
  sub_263D80();
  *(v3 + v28 + v16) = qword_317B98;
  v27 = *(v30 + 48);

  sub_263D40();
  v17 = qword_317B98;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_267D30;

  sub_264100();
  v19 = sub_3B5B0(v18, v17);
  swift_setDeallocating();
  (*(v6 + 8))(v18 + v8, v5);
  swift_deallocClassInstance();
  *(v3 + 2 * v28 + v27) = v19;
  v20 = *(v30 + 48);
  sub_263D70();
  *(v3 + 3 * v28 + v20) = qword_317B98;
  v21 = *(v30 + 48);

  sub_263D50();
  *(v3 + 4 * v28 + v21) = qword_317B98;
  v22 = *(v30 + 48);

  sub_263D30();
  *(v3 + 5 * v28 + v22) = qword_317B98;
  v23 = *(v30 + 48);

  sub_263D90();
  *(v3 + 6 * v28 + v23) = qword_317B98;

  v24 = sub_E878(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_353F00 = v24;
  return result;
}

uint64_t sub_3AB34()
{
  sub_2EF0(&qword_317BA8, &qword_26A1A8);
  v0 = sub_2EF0(&qword_3161C8, &qword_267FA8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A0D0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  sub_263D60();
  *(v4 + v5) = &_swiftEmptySetSingleton;
  v6 = *(v0 + 48);
  sub_263D80();
  *(v4 + v1 + v6) = &_swiftEmptySetSingleton;
  v7 = *(v0 + 48);
  sub_263D40();
  *(v4 + 2 * v1 + v7) = &_swiftEmptySetSingleton;
  v8 = *(v0 + 48);
  sub_263D70();
  *(v4 + 3 * v1 + v8) = &_swiftEmptySetSingleton;
  v9 = *(v0 + 48);
  sub_263D50();
  *(v4 + 4 * v1 + v9) = &_swiftEmptySetSingleton;
  v10 = *(v0 + 48);
  sub_263D30();
  *(v4 + 5 * v1 + v10) = &_swiftEmptySetSingleton;
  v11 = v4 + 6 * v1;
  v12 = *(v0 + 48);
  sub_263D90();
  *(v11 + v12) = &_swiftEmptySetSingleton;
  v13 = sub_E89C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_353F08 = v13;
  return result;
}

uint64_t sub_3ACF0()
{
  v0 = sub_2639E0();
  sub_B600(v0, qword_353F10);
  sub_B080(v0, qword_353F10);
  if (qword_3158D0 != -1)
  {
    swift_once();
  }

  v1 = qword_3158D8;

  if (v1 != -1)
  {
    swift_once();
  }

  return sub_2639D0();
}

BooksUI::Metrics::IdType_optional __swiftcall Metrics.IdType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_2FF930;
  v8._object = object;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t Metrics.IdType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x69746E6575716573;
  }

  else
  {
    result = 0x64695F737469;
  }

  *v0;
  return result;
}

uint64_t sub_3AE90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69746E6575716573;
  }

  else
  {
    v4 = 0x64695F737469;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x69746E6575716573;
  }

  else
  {
    v6 = 0x64695F737469;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264F10();
  }

  return v9 & 1;
}

Swift::Int sub_3AF38()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_3AFBC()
{
  *v0;
  sub_264500();
}

Swift::Int sub_3B02C()
{
  v1 = *v0;
  sub_265050();
  sub_264500();

  return sub_265080();
}

uint64_t sub_3B0AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2FF930;
  v8._object = v3;
  v5 = sub_264D40(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_3B10C(uint64_t *a1@<X8>)
{
  v2 = 0x64695F737469;
  if (*v1)
  {
    v2 = 0x69746E6575716573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static Metrics.contentKind(for:)()
{
  v0 = 0x6F6F626F69647561;
  v1 = sub_2609D0();
  v3 = v2;
  if (v1 == sub_2609D0() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_264F10();

    if ((v5 & 1) == 0)
    {
      return 0x6B6F6F6265;
    }
  }

  return v0;
}

unint64_t sub_3B51C()
{
  result = qword_317BA0;
  if (!qword_317BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BA0);
  }

  return result;
}

uint64_t sub_3B5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264140();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_12688C(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t static GridItemMetadata.author(title:titleLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10[3] = &type metadata for GridItemMetadataTitleWithSubtitle;
  v10[4] = sub_2004C();
  v8 = swift_allocObject();
  v10[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = a3;
  v8[7] = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;

  result = sub_200E0(v10, a4);
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_3B7A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t ListItemAccessoryBuyButton.init(assetInfo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;

  return sub_F7CC(a1, a2 + 16);
}

uint64_t ListItemAccessoryBuyButton.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  sub_30CC(v1 + 16, a1 + 88);
  *a1 = swift_getKeyPath();
  *(a1 + 66) = 0;
  result = swift_getKeyPath();
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_3B8B4@<X0>(_BYTE *a1@<X8>)
{
  sub_3BB24();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_3B904@<X0>(_BYTE *a1@<X8>)
{
  sub_3BB24();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_3B954(char *a1)
{
  v2 = *a1;
  sub_3BB24();
  return sub_261CC0();
}

uint64_t sub_3B9A0(char *a1)
{
  v2 = *a1;
  sub_3BB24();
  return sub_261CC0();
}

__n128 sub_3BA0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_3BA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3BA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3BAD0()
{
  result = qword_317BE0;
  if (!qword_317BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BE0);
  }

  return result;
}

unint64_t sub_3BB24()
{
  result = qword_317BE8;
  if (!qword_317BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317BE8);
  }

  return result;
}

uint64_t sub_3BB78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ListItemThumbnailView();
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_3F2D8(v11, a1);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_3BD50()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ListItemThumbnailView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

__n128 ListItemThumbnailView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ListItemThumbnailView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  *(a2 + 64) = *(a1 + 64);
  v7 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  return result;
}

uint64_t type metadata accessor for ListItemThumbnailView()
{
  result = qword_317C58;
  if (!qword_317C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemThumbnailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_261D30();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_2EF0(&qword_317BF0, &qword_26A358);
  return sub_3BFEC(v1, a1 + *(v3 + 44));
}

uint64_t sub_3BFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v334 = a2;
  v335 = sub_2EF0(&qword_317CB0, &qword_26A3E0);
  v3 = *(*(v335 - 8) + 64);
  __chkstk_darwin(v335);
  v5 = &v283 - v4;
  v322 = sub_2EF0(&qword_317CB8, &qword_26A3E8);
  v6 = *(*(v322 - 8) + 64);
  __chkstk_darwin(v322);
  v323 = &v283 - v7;
  v331 = sub_2EF0(&qword_317CC0, &qword_26A3F0);
  v8 = *(*(v331 - 8) + 64);
  __chkstk_darwin(v331);
  v324 = &v283 - v9;
  v321 = sub_2EF0(&qword_317CC8, &qword_26A3F8);
  v10 = *(*(v321 - 8) + 64);
  v11 = __chkstk_darwin(v321);
  v307 = &v283 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v308 = &v283 - v13;
  v314 = sub_2EF0(&qword_317CD0, &qword_26A400);
  v14 = *(*(v314 - 8) + 64);
  __chkstk_darwin(v314);
  v298 = &v283 - v15;
  v296 = sub_2617E0();
  v16 = *(*(v296 - 8) + 64);
  __chkstk_darwin(v296);
  v297 = (&v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v309 = sub_2EF0(&qword_317CD8, &qword_26A408);
  v18 = *(*(v309 - 8) + 64);
  __chkstk_darwin(v309);
  v299 = &v283 - v19;
  v310 = sub_2EF0(&qword_317CE0, &qword_26A410);
  v20 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v312 = &v283 - v21;
  v300 = sub_2EF0(&qword_317CE8, &qword_26A418);
  v22 = *(*(v300 - 8) + 64);
  __chkstk_darwin(v300);
  v301 = &v283 - v23;
  v311 = sub_2EF0(&qword_317CF0, &qword_26A420);
  v24 = *(*(v311 - 8) + 64);
  __chkstk_darwin(v311);
  v302 = &v283 - v25;
  v333 = sub_2EF0(&qword_317CF8, &qword_26A428);
  v26 = *(*(v333 - 8) + 64);
  v27 = __chkstk_darwin(v333);
  v292 = &v283 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v305 = &v283 - v30;
  __chkstk_darwin(v29);
  v293 = &v283 - v31;
  v325 = sub_2EF0(&qword_317D00, &qword_26A430);
  v32 = *(*(v325 - 8) + 64);
  v33 = __chkstk_darwin(v325);
  v306 = &v283 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v294 = &v283 - v36;
  __chkstk_darwin(v35);
  v295 = &v283 - v37;
  v320 = sub_2EF0(&qword_317D08, &qword_26A438);
  v38 = *(*(v320 - 8) + 64);
  __chkstk_darwin(v320);
  v313 = &v283 - v39;
  v328 = sub_2EF0(&qword_317D10, &qword_26A440);
  v40 = *(*(v328 - 8) + 64);
  __chkstk_darwin(v328);
  v330 = &v283 - v41;
  v316 = sub_2EF0(&qword_317D18, &qword_26A448);
  v42 = *(*(v316 - 8) + 64);
  __chkstk_darwin(v316);
  v319 = &v283 - v43;
  v329 = sub_2EF0(&qword_317D20, &qword_26A450);
  v44 = *(*(v329 - 8) + 64);
  __chkstk_darwin(v329);
  v317 = &v283 - v45;
  v318 = sub_2EF0(&qword_317D28, &qword_26A458);
  v46 = *(*(v318 - 8) + 64);
  v47 = __chkstk_darwin(v318);
  v290 = &v283 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v291 = &v283 - v49;
  v50 = sub_2EF0(&qword_317D30, &qword_26A460);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v332 = &v283 - v52;
  v327 = sub_262730();
  v337 = *(v327 - 8);
  v53 = *(v337 + 64);
  __chkstk_darwin(v327);
  v55 = &v283 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SizeConstants(0);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v59 = &v283 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CoverView();
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v63 = &v283 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2EF0(&qword_317D38, &qword_26A468);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v336 = &v283 - v66;
  sub_3E840(a1, v362);
  v361 = v363;
  v359 = v362[2];
  v360 = v362[3];
  v358[0] = v362[0];
  v358[1] = v362[1];
  if ((v363 & 0x100) != 0)
  {
    *v5 = 0;
    v5[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_3E89C();
    sub_261F80();
    v67 = v358;
  }

  else
  {
    v288 = v50;
    v289 = v5;
    v68 = *(&v359 + 1);
    v69 = v360;
    v70 = *(&v360 + 1);
    v71 = v361;
    sub_F7CC(v358, v357);
    v283 = v60;
    v72 = sub_3BD50() | (v71 == 0xFF);
    v73 = (v72 & 1) == 0;
    if (v72)
    {
      v74 = v68;
    }

    else
    {
      v74 = v70;
    }

    v285 = v74;
    if (v73)
    {
      v75 = v71;
    }

    else
    {
      v75 = v69;
    }

    v284 = v75;
    sub_3BB78(v59);
    v76 = sub_3BD50();
    ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v76 & 1);
    v78 = v77;
    v80 = v79;
    v81 = v337;
    v82 = *(v337 + 104);
    v303 = enum case for Font.TextStyle.body(_:);
    v83 = v327;
    v304 = v337 + 104;
    v315 = v82;
    (v82)(v55);
    v84 = SizeConstants.scaledValue(_:relativeTo:)(v55, v78, v80);
    v86 = v85;
    v88 = *(v81 + 8);
    v87 = v81 + 8;
    v287 = v55;
    v326 = v88;
    v88(v55, v83, v84);
    v286 = v59;
    sub_3F21C(v59, type metadata accessor for SizeConstants);
    sub_30CC(v357, &v349);
    CoverViewModel.CoverImageInfo.init(assetInfo:)(&v349, v347);
    *(&v348 + 1) = v86;
    sub_230A8(v347);
    v353 = v347[4];
    v354 = v347[5];
    v355 = v347[6];
    v356 = v348;
    v349 = v347[0];
    v350 = v347[1];
    v351 = v347[2];
    v352 = v347[3];
    *v63 = swift_getKeyPath();
    v63[40] = 0;
    *(v63 + 6) = swift_getKeyPath();
    v63[56] = 0;
    v89 = v283;
    v90 = v283[6];
    *&v63[v90] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v91 = v89[7];
    *&v63[v91] = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v92 = &v63[v89[8]];
    type metadata accessor for ProfileRestrictions();
    sub_3F170(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v92 = sub_261900();
    v92[1] = v93;
    v94 = &v63[v89[9]];
    LOBYTE(v341) = 1;
    sub_2631D0();
    v95 = *(&v373 + 1);
    *v94 = v373;
    *(v94 + 1) = v95;
    v96 = &v63[v89[10]];
    v97 = v354;
    *(v96 + 4) = v353;
    *(v96 + 5) = v97;
    v98 = v356;
    *(v96 + 6) = v355;
    *(v96 + 7) = v98;
    v99 = v350;
    *v96 = v349;
    *(v96 + 1) = v99;
    v100 = v352;
    *(v96 + 2) = v351;
    *(v96 + 3) = v100;
    v63[v89[11]] = 1;
    sub_3F170(&qword_317D60, type metadata accessor for CoverView);
    v101 = v336;
    sub_262C60();
    sub_3F21C(v63, type metadata accessor for CoverView);
    v102 = v83;
    if (v284 < 2u)
    {
      v337 = v87;
      if (v285)
      {
        v133 = v83;
        v134 = v315;
        v135 = v303;
        if (v285 == 1)
        {
          v136 = v286;
          sub_3BB78(v286);
          v137 = sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v137 & 1);
          v139 = v138;
          v141 = v140;
          v142 = v287;
          v134(v287, v135, v83);
          v143 = SizeConstants.scaledValue(_:relativeTo:)(v142, v139, v141);
          v144 = v83;
          v145 = v326;
          (v326)(v142, v144);
          sub_3F21C(v136, type metadata accessor for SizeConstants);
          v324 = *&v143;
          sub_3BB78(v136);
          v146 = sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v146 & 1);
          v148 = v147;
          v150 = v149;
          v315(v142, v135, v133);
          v151 = SizeConstants.scaledValue(_:relativeTo:)(v142, v148, v150);
          v145(v142, v133, v151);
          sub_3F21C(v136, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v152 = v299;
          sub_8198(v336, v299, &qword_317D38, &qword_26A468);
          v153 = (v152 + *(v333 + 36));
          v154 = v374;
          *v153 = v373;
          v153[1] = v154;
          v153[2] = v375;
          v155 = sub_3E2E0();
          v156 = (v152 + *(sub_2EF0(&qword_317D98, &unk_26A470) + 36));
          v157 = v296;
          v158 = *(v296 + 20);
          v159 = enum case for RoundedCornerStyle.continuous(_:);
          v160 = sub_261DD0();
          v161 = *(*(v160 - 8) + 104);
          v161(v156 + v158, v159, v160);
          *v156 = v155;
          v156[1] = v155;
          *(v156 + *(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)) = 256;
          v337 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v333 = v162;
          v163 = v152 + *(v309 + 36);
          v164 = sub_3E2E0();
          v165 = v297;
          v161(v297 + *(v157 + 20), v159, v160);
          *v165 = v164;
          v165[1] = v164;
          _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
          v166 = sub_263000();

          sub_261240();
          sub_3F1B8(v165, v163);
          v167 = *&v341 * 0.5;
          v168 = v163 + *(sub_2EF0(&qword_317E10, &qword_26A558) + 68);
          sub_3F1B8(v165, v168);
          *(v168 + *(sub_2617D0() + 20)) = v167;
          v169 = v168 + *(sub_2EF0(&qword_317E18, &qword_26A560) + 36);
          v170 = v342;
          *v169 = v341;
          *(v169 + 16) = v170;
          *(v169 + 32) = v343;
          v171 = sub_2EF0(&qword_317E20, &qword_26A568);
          *(v168 + *(v171 + 52)) = v166;
          *(v168 + *(v171 + 56)) = 256;
          v172 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v174 = v173;
          sub_3F21C(v165, &type metadata accessor for RoundedRectangle);
          v175 = (v168 + *(sub_2EF0(&qword_317E28, &unk_26A570) + 36));
          *v175 = v172;
          v175[1] = v174;
          v176 = (v163 + *(sub_2EF0(&qword_317DB8, &qword_26A480) + 36));
          v177 = v333;
          *v176 = v337;
          v176[1] = v177;
          v178 = &qword_317CD8;
          v179 = &qword_26A408;
          v180 = v152;
          sub_8198(v152, v301, &qword_317CD8, &qword_26A408);
          swift_storeEnumTagMultiPayload();
          sub_3EBD8();
          sub_3ECFC();
          v181 = v302;
          sub_261F80();
          sub_8198(v181, v312, &qword_317CF0, &qword_26A420);
          swift_storeEnumTagMultiPayload();
          sub_3EB4C();
          sub_3EE8C();
          v182 = v313;
          sub_261F80();
          sub_8E80(v181, &qword_317CF0, &qword_26A420);
          v183 = v180;
        }

        else
        {
          v233 = v286;
          sub_3BB78(v286);
          v234 = sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v234 & 1);
          v236 = v235;
          v238 = v237;
          v239 = v287;
          v134(v287, v135, v83);
          v240 = SizeConstants.scaledValue(_:relativeTo:)(v239, v236, v238);
          v241 = v83;
          v242 = v326;
          (v326)(v239, v241);
          sub_3F21C(v233, type metadata accessor for SizeConstants);
          v325 = *&v240;
          sub_3BB78(v233);
          v243 = sub_3BD50();
          ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v243 & 1);
          v245 = v244;
          v247 = v246;
          v315(v239, v135, v133);
          v248 = SizeConstants.scaledValue(_:relativeTo:)(v239, v245, v247);
          v242(v239, v133, v248);
          sub_3F21C(v233, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v249 = v298;
          sub_8198(v336, v298, &qword_317D38, &qword_26A468);
          v250 = (v249 + *(v333 + 36));
          v251 = v365;
          *v250 = v364;
          v250[1] = v251;
          v250[2] = v366;
          *(v249 + *(sub_2EF0(&qword_317DD0, &qword_26A488) + 36)) = 256;
          v252 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          v254 = v253;
          _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
          v255 = sub_263000();

          sub_261240();
          v256 = v367;
          v257 = v368;
          LODWORD(v233) = v369;
          v258 = v370;
          v259 = v371;
          v260 = v372;
          v261 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          *&v341 = v256 * 0.5;
          *(&v341 + 1) = v256;
          *&v342 = __PAIR64__(v233, v257);
          *(&v342 + 1) = v258;
          *&v343 = v259;
          *(&v343 + 1) = v260;
          *&v344 = v255;
          WORD4(v344) = 256;
          HIWORD(v344) = v340;
          v262 = v339;
          *(&v344 + 10) = v339;
          *&v345 = v261;
          *(&v345 + 1) = v263;
          *&v346 = v252;
          *(&v346 + 1) = v254;
          v264 = (v249 + *(v314 + 36));
          v265 = v344;
          v264[2] = v343;
          v264[3] = v265;
          v266 = v346;
          v264[4] = v345;
          v264[5] = v266;
          v267 = v342;
          *v264 = v341;
          v264[1] = v267;
          *&v373 = v256 * 0.5;
          *(&v373 + 1) = v256;
          *&v374 = __PAIR64__(v233, v257);
          *(&v374 + 1) = v258;
          *&v375 = v259;
          *(&v375 + 1) = v260;
          *&v376 = v255;
          WORD4(v376) = 256;
          HIWORD(v376) = v340;
          *(&v376 + 10) = v262;
          *&v377 = v261;
          *(&v377 + 1) = v263;
          *&v378 = v252;
          *(&v378 + 1) = v254;
          sub_8198(&v341, &v338, &qword_317DF0, &qword_26A498);
          sub_8E80(&v373, &qword_317DF0, &qword_26A498);
          v178 = &qword_317CD0;
          v179 = &qword_26A400;
          sub_8198(v249, v312, &qword_317CD0, &qword_26A400);
          swift_storeEnumTagMultiPayload();
          sub_3EB4C();
          sub_3EE8C();
          v182 = v313;
          sub_261F80();
          v183 = v249;
        }

        sub_8E80(v183, v178, v179);
      }

      else
      {
        v206 = v286;
        sub_3BB78(v286);
        v207 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v207 & 1);
        v209 = v208;
        v211 = v210;
        v212 = v287;
        v213 = v303;
        v214 = v83;
        v215 = v315;
        v315(v287, v303, v214);
        SizeConstants.scaledValue(_:relativeTo:)(v212, v209, v211);
        (v326)(v212, v102);
        sub_3F21C(v206, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v216 = v101;
        v217 = v293;
        sub_8198(v216, v293, &qword_317D38, &qword_26A468);
        v218 = (v217 + *(v333 + 36));
        v219 = v342;
        *v218 = v341;
        v218[1] = v219;
        v218[2] = v343;
        sub_3BB78(v206);
        v220 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v220 & 1);
        v222 = v221;
        v224 = v223;
        v215(v212, v213, v102);
        v225 = SizeConstants.scaledValue(_:relativeTo:)(v212, v222, v224);
        v326(v212, v102, v225);
        sub_3F21C(v206, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_261830();
        v226 = v294;
        sub_22148(v217, v294, &qword_317CF8, &qword_26A428);
        v227 = (v226 + *(v325 + 36));
        v228 = v378;
        v227[4] = v377;
        v227[5] = v228;
        v227[6] = v379;
        v229 = v374;
        *v227 = v373;
        v227[1] = v229;
        v230 = v376;
        v227[2] = v375;
        v227[3] = v230;
        v231 = v295;
        sub_22148(v226, v295, &qword_317D00, &qword_26A430);
        sub_8198(v231, v301, &qword_317D00, &qword_26A430);
        swift_storeEnumTagMultiPayload();
        sub_3EBD8();
        sub_3ECFC();
        v232 = v302;
        sub_261F80();
        sub_8198(v232, v312, &qword_317CF0, &qword_26A420);
        swift_storeEnumTagMultiPayload();
        sub_3EB4C();
        sub_3EE8C();
        v182 = v313;
        sub_261F80();
        sub_8E80(v232, &qword_317CF0, &qword_26A420);
        sub_8E80(v231, &qword_317D00, &qword_26A430);
      }

      v268 = v289;
      v131 = v332;
      sub_8198(v182, v319, &qword_317D08, &qword_26A438);
      swift_storeEnumTagMultiPayload();
      sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
      sub_3EAC0();
      v269 = v182;
      v270 = v317;
      sub_261F80();
      sub_8198(v270, v330, &qword_317D20, &qword_26A450);
      swift_storeEnumTagMultiPayload();
      sub_3E928();
      sub_3F01C();
      sub_261F80();
      sub_8E80(v270, &qword_317D20, &qword_26A450);
      sub_8E80(v269, &qword_317D08, &qword_26A438);
      v132 = v336;
      v271 = v268;
    }

    else
    {
      v103 = v285;
      if (v284 - 2 >= 2)
      {
        v184 = v303;
        v185 = v286;
        sub_3BB78(v286);
        v186 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v186 & 1);
        v188 = v187;
        v190 = v189;
        v191 = v287;
        v315(v287, v184, v83);
        SizeConstants.scaledValue(_:relativeTo:)(v191, v188, v190);
        (v326)(v191, v83);
        sub_3F21C(v185, type metadata accessor for SizeConstants);
        sub_3BB78(v185);
        v192 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v192 & 1);
        if (v103)
        {
          v195 = v193;
          v196 = v194;
          v315(v191, v184, v83);
          v197 = SizeConstants.scaledValue(_:relativeTo:)(v191, v195, v196);
          v326(v191, v83, v197);
          sub_3F21C(v185, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_2613A0();
          v198 = v336;
          v199 = v292;
          sub_8198(v336, v292, &qword_317D38, &qword_26A468);
          v200 = (v199 + *(v333 + 36));
          v201 = v374;
          *v200 = v373;
          v200[1] = v201;
          v200[2] = v375;
          v202 = &qword_26A428;
          sub_8198(v199, v323, &qword_317CF8, &qword_26A428);
          swift_storeEnumTagMultiPayload();
          sub_3F0C8();
          sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
          v203 = v324;
          sub_261F80();
          sub_8198(v203, v330, &qword_317CC0, &qword_26A3F0);
          swift_storeEnumTagMultiPayload();
          sub_3E928();
          sub_3F01C();
          v131 = v332;
          v132 = v198;
          sub_261F80();
          sub_8E80(v203, &qword_317CC0, &qword_26A3F0);
          v204 = v199;
          v205 = &qword_317CF8;
        }

        else
        {
          v272 = v193;
          v273 = v194;
          v315(v191, v184, v83);
          v274 = SizeConstants.scaledValue(_:relativeTo:)(v191, v272, v273);
          v326(v191, v83, v274);
          sub_3F21C(v185, type metadata accessor for SizeConstants);
          _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
          sub_261830();
          v132 = v336;
          v275 = v290;
          sub_8198(v336, v290, &qword_317D38, &qword_26A468);
          v276 = (v275 + *(v318 + 36));
          v277 = v378;
          v276[4] = v377;
          v276[5] = v277;
          v276[6] = v379;
          v278 = v374;
          *v276 = v373;
          v276[1] = v278;
          v279 = v376;
          v276[2] = v375;
          v276[3] = v279;
          v202 = &qword_26A458;
          v280 = v291;
          sub_22148(v275, v291, &qword_317D28, &qword_26A458);
          sub_8198(v280, v319, &qword_317D28, &qword_26A458);
          swift_storeEnumTagMultiPayload();
          sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
          sub_3EAC0();
          v281 = v317;
          sub_261F80();
          sub_8198(v281, v330, &qword_317D20, &qword_26A450);
          swift_storeEnumTagMultiPayload();
          sub_3E928();
          sub_3F01C();
          v131 = v332;
          sub_261F80();
          sub_8E80(v281, &qword_317D20, &qword_26A450);
          v204 = v280;
          v205 = &qword_317D28;
        }

        sub_8E80(v204, v205, v202);
      }

      else
      {
        v337 = v87;
        v104 = v286;
        sub_3BB78(v286);
        v105 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v105 & 1);
        v107 = v106;
        v109 = v108;
        v110 = v287;
        v111 = v315;
        v315(v287, v303, v83);
        SizeConstants.scaledValue(_:relativeTo:)(v110, v107, v109);
        (v326)(v110, v83);
        sub_3F21C(v104, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v112 = v305;
        sub_8198(v101, v305, &qword_317D38, &qword_26A468);
        v113 = (v112 + *(v333 + 36));
        v114 = v342;
        *v113 = v341;
        v113[1] = v114;
        v113[2] = v343;
        sub_3BB78(v104);
        v115 = sub_3BD50();
        ListItemThumbnailViewModel.unscaledThumbnailSize(isCompact:)(v115 & 1);
        v117 = v116;
        v119 = v118;
        v111(v110, v303, v102);
        v120 = SizeConstants.scaledValue(_:relativeTo:)(v110, v117, v119);
        v326(v110, v102, v120);
        sub_3F21C(v104, type metadata accessor for SizeConstants);
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_261830();
        v121 = v306;
        sub_22148(v112, v306, &qword_317CF8, &qword_26A428);
        v122 = (v121 + *(v325 + 36));
        v123 = v378;
        v122[4] = v377;
        v122[5] = v123;
        v122[6] = v379;
        v124 = v374;
        *v122 = v373;
        v122[1] = v124;
        v125 = v376;
        v122[2] = v375;
        v122[3] = v125;
        v126 = v121;
        v127 = v307;
        sub_22148(v126, v307, &qword_317D00, &qword_26A430);
        *(v127 + *(v321 + 36)) = 257;
        v128 = v127;
        v129 = v308;
        sub_22148(v128, v308, &qword_317CC8, &qword_26A3F8);
        sub_8198(v129, v323, &qword_317CC8, &qword_26A3F8);
        swift_storeEnumTagMultiPayload();
        sub_3F0C8();
        sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
        v130 = v324;
        sub_261F80();
        sub_8198(v130, v330, &qword_317CC0, &qword_26A3F0);
        swift_storeEnumTagMultiPayload();
        sub_3E928();
        sub_3F01C();
        v131 = v332;
        sub_261F80();
        sub_8E80(v130, &qword_317CC0, &qword_26A3F0);
        sub_8E80(v129, &qword_317CC8, &qword_26A3F8);
        v132 = v336;
      }

      v271 = v289;
    }

    sub_8198(v131, v271, &qword_317D30, &qword_26A460);
    swift_storeEnumTagMultiPayload();
    sub_3E89C();
    sub_261F80();
    sub_8E80(v131, &qword_317D30, &qword_26A460);
    sub_8E80(v132, &qword_317D38, &qword_26A468);
    v67 = v357;
  }

  return sub_3080(v67);
}

double sub_3E2E0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for ListItemThumbnailView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v14[0];
  }

  sub_3F27C(v0, v14);
  if (v17)
  {
    goto LABEL_7;
  }

  v9 = v15;
  if (!(v7 & 1 | (v16 == -1)))
  {
    v9 = v16;
  }

  if (v9)
  {
LABEL_7:
    sub_3080(v14);
    return 6.0;
  }

  else
  {
    v11 = 7;
    if (v7 & 1 | (v16 == -1))
    {
      v11 = 5;
    }

    v12 = LOBYTE(v14[v11]);
    sub_3080(v14);
    result = 6.0;
    if (v12 == 1)
    {
      return 4.0;
    }
  }

  return result;
}

uint64_t sub_3E4BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isCompact.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E4EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isCompact.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_3E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 65);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_3E614(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 65) = -a2;
  }

  else
  {
    v7 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3E6C0()
{
  sub_3E754();
  if (v0 <= 0x3F)
  {
    sub_3E7AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3E754()
{
  if (!qword_317C68)
  {
    type metadata accessor for SizeConstants(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_317C68);
    }
  }
}

void sub_3E7AC()
{
  if (!qword_3167D0)
  {
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3167D0);
    }
  }
}

unint64_t sub_3E89C()
{
  result = qword_317D40;
  if (!qword_317D40)
  {
    sub_2F9C(&qword_317D30, &qword_26A460);
    sub_3E928();
    sub_3F01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D40);
  }

  return result;
}

unint64_t sub_3E928()
{
  result = qword_317D48;
  if (!qword_317D48)
  {
    sub_2F9C(&qword_317D20, &qword_26A450);
    sub_3EC84(&qword_317D50, &qword_317D28, &qword_26A458);
    sub_3EAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D48);
  }

  return result;
}

unint64_t sub_3E9D4()
{
  result = qword_317D58;
  if (!qword_317D58)
  {
    sub_2F9C(&qword_317D38, &qword_26A468);
    sub_3F170(&qword_317D60, type metadata accessor for CoverView);
    sub_3F170(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D58);
  }

  return result;
}

unint64_t sub_3EAC0()
{
  result = qword_317D68;
  if (!qword_317D68)
  {
    sub_2F9C(&qword_317D08, &qword_26A438);
    sub_3EB4C();
    sub_3EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D68);
  }

  return result;
}

unint64_t sub_3EB4C()
{
  result = qword_317D70;
  if (!qword_317D70)
  {
    sub_2F9C(&qword_317CF0, &qword_26A420);
    sub_3EBD8();
    sub_3ECFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D70);
  }

  return result;
}

unint64_t sub_3EBD8()
{
  result = qword_317D78;
  if (!qword_317D78)
  {
    sub_2F9C(&qword_317D00, &qword_26A430);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D78);
  }

  return result;
}

uint64_t sub_3EC84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    sub_3E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_3ECFC()
{
  result = qword_317D88;
  if (!qword_317D88)
  {
    sub_2F9C(&qword_317CD8, &qword_26A408);
    sub_3EDB4();
    sub_8E38(&qword_317DB0, &qword_317DB8, &qword_26A480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D88);
  }

  return result;
}

unint64_t sub_3EDB4()
{
  result = qword_317D90;
  if (!qword_317D90)
  {
    sub_2F9C(&qword_317D98, &unk_26A470);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317D90);
  }

  return result;
}

unint64_t sub_3EE8C()
{
  result = qword_317DC0;
  if (!qword_317DC0)
  {
    sub_2F9C(&qword_317CD0, &qword_26A400);
    sub_3EF44();
    sub_8E38(&qword_317DE8, &qword_317DF0, &qword_26A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DC0);
  }

  return result;
}

unint64_t sub_3EF44()
{
  result = qword_317DC8;
  if (!qword_317DC8)
  {
    sub_2F9C(&qword_317DD0, &qword_26A488);
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    sub_8E38(&qword_317DD8, &qword_317DE0, &qword_26A490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DC8);
  }

  return result;
}

unint64_t sub_3F01C()
{
  result = qword_317DF8;
  if (!qword_317DF8)
  {
    sub_2F9C(&qword_317CC0, &qword_26A3F0);
    sub_3F0C8();
    sub_3EC84(&qword_317D80, &qword_317CF8, &qword_26A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317DF8);
  }

  return result;
}

unint64_t sub_3F0C8()
{
  result = qword_317E00;
  if (!qword_317E00)
  {
    sub_2F9C(&qword_317CC8, &qword_26A3F8);
    sub_3EBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317E00);
  }

  return result;
}

uint64_t sub_3F170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3F1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2617E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F21C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3F2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static IntentKinds.table.getter()
{
  if (qword_3158E8 != -1)
  {
    swift_once();
  }

  sub_2EF0(&qword_317E40, &qword_26A580);
  sub_260D20();
  return v1;
}

uint64_t sub_3F3C0()
{
  if (qword_3158F0 != -1)
  {
    swift_once();
  }

  v0 = qword_317E38;
  sub_2EF0(&qword_317ED8, &qword_26A6D8);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  qword_317E30 = v1;
}

uint64_t sub_3F458()
{
  sub_2EF0(&qword_317EE0, &qword_26A6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000000002907C0;
  v1 = sub_2EF0(&qword_317EE8, &qword_26A6E8);
  v2 = sub_3F8B0();
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_EED4(inited);
  swift_setDeallocating();
  result = sub_3F914(inited + 32);
  qword_317E38 = v3;
  return result;
}

unint64_t sub_3F518()
{
  sub_3F85C();
  v0 = sub_263CB0();
  v1 = sub_234008(v0);

  return v1;
}

uint64_t sub_3F5D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static _IntentKindTable_BooksReturningUnknown._decode(_:from:)();
}

void static IntentKinds.register<A>(_:name:)(uint64_t a1)
{
  if (qword_3158E8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_317E30;
  __chkstk_darwin(a1);
  os_unfair_lock_lock((v1 + 24));
  sub_3F6D4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_3F6D4(uint64_t *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  result = sub_E0F4(v6, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return result;
}

uint64_t static IntentKinds.register<A>(_:)(uint64_t a1)
{
  sub_2638B0();
  static IntentKinds.register<A>(_:name:)(a1);
}

unint64_t sub_3F7E0()
{
  result = qword_317E48[0];
  if (!qword_317E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_317E48);
  }

  return result;
}

unint64_t sub_3F85C()
{
  result = qword_317ED0;
  if (!qword_317ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317ED0);
  }

  return result;
}

unint64_t sub_3F8B0()
{
  result = qword_317EF0;
  if (!qword_317EF0)
  {
    sub_2F9C(&qword_317EE8, &qword_26A6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317EF0);
  }

  return result;
}

uint64_t sub_3F914(uint64_t a1)
{
  v2 = sub_2EF0(&qword_317EF8, &unk_26A6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _CodeAnyActionModel_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_3F990(a1, a2);
}

uint64_t sub_3F990(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_315D38, &unk_266E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _CodeAnyActionModel_OrNil.description.getter()
{
  sub_3FA0C(v0, &v3);
  if (v4)
  {
    sub_F7CC(&v3, v5);
    *&v3 = 0;
    *(&v3 + 1) = 0xE000000000000000;
    sub_2EF0(&qword_316A30, &qword_2697B0);
    sub_264CC0();
    v1 = v3;
    sub_3080(v5);
  }

  else
  {
    sub_8E80(&v3, &qword_315D38, &unk_266E30);
    return 7104878;
  }

  return v1;
}

uint64_t _CodeAnyActionModel_OrNil.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v6);
  sub_3FC1C();
  sub_264A70();
  sub_3080(a1);
  if (v2)
  {
    return sub_3FC70(a2);
  }

  if (v8)
  {
    sub_30CC(v7, v9);
    sub_3FCA0(v7);
  }

  else
  {
    sub_8E80(v7, &qword_317F08, &qword_26A700);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  return sub_3F990(v9, a2);
}

unint64_t sub_3FC1C()
{
  result = qword_317F00;
  if (!qword_317F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F00);
  }

  return result;
}

uint64_t _CodeAnyActionModel_OrNil.init(_partiallyFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, v7);
  sub_3FC1C();
  sub_264A50();
  sub_3080(a1);
  if (v6)
  {
    sub_30CC(v5, v7);
    sub_3FCA0(v5);
  }

  else
  {
    sub_8E80(v5, &qword_317F08, &qword_26A700);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
  }

  return sub_3F990(v7, a2);
}

uint64_t sub_3FDC8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_3FDE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_3FE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t ListItemAccessoryMoreButton.content(contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ListItemAccessoryMoreButtonView();
  sub_30CC(v4, a3 + v11[10]);
  v27 = 0x4034000000000000;
  v12 = enum case for Font.TextStyle.subheadline(_:);
  v13 = *(v7 + 104);
  v13(v10, enum case for Font.TextStyle.subheadline(_:), v6);
  sub_40130();
  sub_2612E0();
  v14 = v11[5];
  v27 = 0x4000000000000000;
  v13(v10, v12, v6);
  sub_2612E0();
  v15 = v11[6];
  *(a3 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v16 = v11[7];
  *(a3 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v11[8];
  KeyPath = swift_getKeyPath();
  LOBYTE(v27) = 0;
  *v17 = KeyPath;
  *(v17 + 66) = 0;
  v19 = (a3 + v11[9]);
  type metadata accessor for ProfileRestrictions();
  sub_40208(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v19 = sub_261900();
  v19[1] = v20;
  v21 = (a3 + v11[11]);
  v22 = v26;
  *v21 = v25;
  v21[1] = v22;
  *(a3 + v11[12]) = 1;
}

unint64_t sub_40130()
{
  result = qword_317F10;
  if (!qword_317F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F10);
  }

  return result;
}

uint64_t sub_40208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ListItemMetadataFormatAndDescriptorBase.init<>(showFormat:assetInfo:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  *a3 = KeyPath;
  *(a3 + 66) = 0;
  *(a3 + 72) = v7;
  *(a3 + 80) = 0;
  *(a3 + 88) = v8;
  *(a3 + 96) = 0;
  *(a3 + 97) = a1;

  return sub_F7CC(a2, a3 + 104);
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.assetState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v21[15] = *(v1 + 63);
  v8 = v1[3];
  v20[2] = v1[2];
  *v21 = v8;
  v9 = v1[1];
  v20[0] = *v1;
  v20[1] = v9;
  if (v21[18])
  {
    v10 = v1[2];
    v11 = v1[3];
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 64) = *(v1 + 32);
    v13 = *v1;
    v12 = v1[1];
    *a1 = *v1;
    *(a1 + 16) = v12;
    v18[2] = v10;
    v19[0] = v11;
    *(v19 + 15) = *(v1 + 63);
    v18[0] = v13;
    v18[1] = v12;
    return sub_8198(v18, v17, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v20, &qword_317F40, &qword_26E9D0);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_40508@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v22 - v17);
  sub_8198(v8, &v22 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_44974(v18, a4, a3);
  }

  v20 = *v18;
  sub_264900();
  v21 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_406D8(uint64_t a1, char a2)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v11[15];
  }

  return a1 & 1;
}

uint64_t sub_408A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_3179B8, &unk_269D50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_44904(v12, a1);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_40AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_8198(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_264900();
    v22 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_40D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_261C90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v6, v16, a1, a2);
  if (v18 == 1)
  {
    v14 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v17;
  }

  else
  {
    sub_264900();
    v15 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_40F18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v8, v17, a1, a2);
  if (v18 == 1)
  {
    return a3(v17, a4);
  }

  sub_264900();
  v16 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.isReachable.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {
    v7 = *(v0 + 72);

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.dispatchState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 88);
  if (*(v1 + 96) == 1)
  {
    *a1 = v9;
  }

  else
  {
    v10 = *(v1 + 88);

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v9, 0);
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 66) = 0;
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  result = swift_getKeyPath();
  *(a1 + 88) = result;
  *(a1 + 96) = 0;
  return result;
}

uint64_t ListItemMetadataFormatAndDescriptorExternals.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3080(a1);
  *a2 = swift_getKeyPath();
  *(a2 + 66) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  result = swift_getKeyPath();
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  return result;
}

uint64_t (*ListItemMetadataRecommendationCreatorDescriptorBase.description.modify(uint64_t a1, uint64_t a2))()
{
  result = KeyedEncodingContainer.encode<A>(_:forKey:);
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ListItemMetadataFormatAndDescriptorBase.content(localizer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v94 = a3;
  v93 = sub_2EF0(&qword_317F50, &qword_26A9A8);
  v5 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v92 = &v77 - v6;
  v7 = sub_2EF0(&qword_317F58, &qword_26A9B0);
  v86 = *(v7 - 8);
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v10 = &v77 - v9;
  v78 = sub_2EF0(&qword_317F60, &qword_26A9B8);
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v77 - v12;
  v90 = sub_2EF0(&qword_317F68, &unk_26A9C0);
  v13 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v80 = &v77 - v14;
  v15 = sub_2EF0(&qword_316208, &qword_268BD0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v77 - v17;
  v85 = sub_260BD0();
  v84 = *(v85 - 8);
  v19 = *(v84 + 64);
  v20 = __chkstk_darwin(v85);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v83 = &v77 - v23;
  v88 = sub_2EF0(&qword_317F70, &qword_26A9D0);
  v24 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v89 = (&v77 - v25);
  v26 = sub_2EF0(&qword_317F78, &qword_26A9D8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v91 = &v77 - v28;
  v29 = *(a2 + 24);
  v95 = *(a2 + 16);
  v96 = v29;
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  v106[0] = v102;
  v106[1] = v103;
  v106[2] = v104[0];
  v107 = v104[1];
  v108 = v105;
  if (!*(&v102 + 1))
  {
    sub_4291C();
    v42 = v86;
    (*(v86 + 16))(v92, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_43800();
    *&v102 = &type metadata for Text;
    *(&v102 + 1) = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_261F80();
    return (*(v42 + 8))(v10, v7);
  }

  v77 = v10;
  v82 = v26;
  v81 = v7;
  v31 = BYTE3(v107);
  sub_8E80(v106, &qword_317F48, &qword_26A9A0);
  if ((v31 & 1) == 0)
  {
    sub_4239C(a2, v18);
    v44 = v84;
    v45 = v85;
    if ((*(v84 + 48))(v18, 1, v85) != 1)
    {
      v51 = v83;
      (*(v44 + 32))(v83, v18, v45);
      (*(v44 + 16))(v22, v51, v45);
      sub_30CC(v87, &v102);
      v52 = sub_2627B0();
      v54 = v53;
      v56 = v55;
      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v57 = sub_2627E0();
      v59 = v58;
      v60 = v44;
      v62 = v61;
      v64 = v63;

      sub_39DBC(v52, v54, v56 & 1);

      v97 = v57;
      v98 = v59;
      v99 = v62 & 1;
      v100 = v64;
      v101 = 1;
      sub_43B58(v57, v59, v62 & 1);

      sub_261F80();
      v65 = v104[0];
      v66 = v103;
      v67 = v89;
      *v89 = v102;
      v67[1] = v66;
      *(v67 + 32) = v65;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_317FA0, &qword_26AA18);
      sub_4393C();
      sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
      v41 = v91;
      sub_261F80();
      sub_39DBC(v57, v59, v62 & 1);

      (*(v60 + 8))(v83, v85);
      goto LABEL_11;
    }

    sub_8E80(v18, &qword_316208, &qword_268BD0);
    sub_30CC(v3 + *(a2 + 40), &v102);
    AssetMetadataRatingInfo.init(assetInfo:)(&v102, &v97);
    v46 = v92;
    if (v99)
    {
      v47 = v86;
      v48 = v77;
    }

    else
    {
      v69 = v98;
      v70 = v97;
      if (qword_315930 != -1)
      {
        swift_once();
      }

      if (byte_31C408 != 1 || (v71 = [objc_opt_self() standardUserDefaults], v72 = sub_264420(), v73 = objc_msgSend(v71, "integerForKey:", v72), v71, v48 = v77, v72, v47 = v86, (v73 & 0x10) == 0))
      {
        sub_30CC(v87, v104);
        *&v102 = swift_getKeyPath();
        BYTE8(v102) = 0;
        *&v103 = v70;
        *(&v103 + 1) = v69;
        sub_43AA8(&v102, v79);
        swift_storeEnumTagMultiPayload();
        sub_439B8();
        v97 = &type metadata for Text;
        v98 = &protocol witness table for Text;
        swift_getOpaqueTypeConformance2();
        v74 = v80;
        sub_261F80();
        sub_8198(v74, v89, &qword_317F68, &unk_26A9C0);
        swift_storeEnumTagMultiPayload();
        sub_2EF0(&qword_317FA0, &qword_26AA18);
        sub_4393C();
        sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
        v41 = v91;
        sub_261F80();
        sub_8E80(v74, &qword_317F68, &unk_26A9C0);
        sub_43B04(&v102);
LABEL_17:
        v75 = sub_2EF0(&qword_317F90, &qword_26AA10);
        (*(*(v75 - 8) + 56))(v41, 0, 1, v75);
        goto LABEL_19;
      }
    }

    if (!sub_42810(a2))
    {
      v76 = sub_2EF0(&qword_317F90, &qword_26AA10);
      v41 = v91;
      (*(*(v76 - 8) + 56))(v91, 1, 1, v76);
      goto LABEL_19;
    }

    sub_4291C();
    v49 = v81;
    (*(v47 + 16))(v79, v48, v81);
    swift_storeEnumTagMultiPayload();
    sub_439B8();
    *&v102 = &type metadata for Text;
    *(&v102 + 1) = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v50 = v80;
    sub_261F80();
    sub_8198(v50, v89, &qword_317F68, &unk_26A9C0);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_317FA0, &qword_26AA18);
    sub_4393C();
    sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
    v41 = v91;
    sub_261F80();
    sub_8E80(v50, &qword_317F68, &unk_26A9C0);
    (*(v47 + 8))(v77, v49);
    goto LABEL_17;
  }

  v32 = sub_43B68(v87);
  v34 = v33;
  v97 = v32;
  v98 = v33;
  v36 = v35 & 1;
  v99 = v35 & 1;
  v100 = v37;
  v101 = 0;
  sub_43B58(v32, v33, v35 & 1);

  sub_261F80();
  v38 = v104[0];
  v39 = v103;
  v40 = v89;
  *v89 = v102;
  v40[1] = v39;
  *(v40 + 32) = v38;
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_317FA0, &qword_26AA18);
  sub_4393C();
  sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
  v41 = v91;
  sub_261F80();
  sub_39DBC(v32, v34, v36);

LABEL_11:
  v68 = sub_2EF0(&qword_317F90, &qword_26AA10);
  (*(*(v68 - 8) + 56))(v41, 0, 1, v68);
  v46 = v92;
LABEL_19:
  sub_8198(v41, v46, &qword_317F78, &qword_26A9D8);
  swift_storeEnumTagMultiPayload();
  sub_43800();
  *&v102 = &type metadata for Text;
  *(&v102 + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_261F80();
  return sub_8E80(v41, &qword_317F78, &qword_26A9D8);
}

uint64_t sub_4239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_263D20();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264010();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_263FA0();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  v38 = v33;
  v39 = v34;
  v36 = v31;
  v37 = v32;
  v40 = v35;
  if (!*(&v31 + 1))
  {
    goto LABEL_4;
  }

  v17 = *(&v38 + 1);
  v18 = v39;
  v19 = v37;
  sub_8E80(&v36, &qword_317F48, &qword_26A9A0);
  if (!v19)
  {
    if (v17 >= 0.01)
    {
      isa = sub_264780().super.super.isa;
      v23 = v27;
      (*(v27 + 104))(v6, enum case for LocalizerContext.standalone(_:), v3);
      v21 = v29;
      sub_260B50();

      (*(v23 + 8))(v6, v3);
      goto LABEL_8;
    }

LABEL_6:
    sub_263F90();
    (*(v8 + 104))(v11, enum case for LocalizerLookupStrategy.default(_:), v7);
    v21 = v29;
    sub_260B80();
    (*(v8 + 8))(v11, v7);
    (*(v28 + 8))(v15, v12);
LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  if (v18)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = 1;
  v21 = v29;
LABEL_9:
  v24 = sub_260BD0();
  return (*(*(v24 - 8) + 56))(v21, v20, 1, v24);
}

BOOL sub_42810(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  swift_getWitnessTable();
  ViewModelWithExternals.subscript.getter(KeyPath);

  if (v8 != 1)
  {
    return 0;
  }

  __chkstk_darwin(v4);
  v5 = swift_getKeyPath();
  ViewModelWithExternals.subscript.getter(v5);

  return v7 == 0;
}

uint64_t sub_4291C()
{
  v0 = sub_2617C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  v7[0] = sub_2645A0(v10, 12);
  v7[1] = v5;
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  sub_2617A0();
  sub_262E70();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_42A3C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_300170;
  v7._object = a2;
  v4 = sub_264D40(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_42A90(char a1)
{
  if (a1)
  {
    return 0x666E497465737361;
  }

  else
  {
    return 0x6D726F46776F6873;
  }
}

uint64_t sub_42AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42B4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_42C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_42A3C(*a1, *(a1 + 8));
  *a3 = result;
  return result;
}

uint64_t sub_42CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_42A90(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_42D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_42A90(*v1);
}

uint64_t sub_42D14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_42A3C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_42D44@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_448FC();
  *a2 = result;
  return result;
}

uint64_t sub_42D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_42DC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t ListItemMetadataFormatAndDescriptorBase.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v51 = a3;
  type metadata accessor for ListItemMetadataFormatAndDescriptorBase.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_264E20();
  v52 = *(v53 - 8);
  v4 = *(v52 + 64);
  __chkstk_darwin(v53);
  v58 = &v49 - v5;
  v55 = sub_264A60();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v55);
  v10 = &v49 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ListItemMetadataFormatAndDescriptorBase();
  v50 = *(v54 - 8);
  v15 = *(v50 + 64);
  __chkstk_darwin(v54);
  v17 = &v49 - v16;
  KeyPath = swift_getKeyPath();
  v69 = 0;
  v19 = swift_getKeyPath();
  LOBYTE(v60) = 0;
  v20 = swift_getKeyPath();
  v68 = 0;
  v62[0] = KeyPath;
  v63 = 0;
  v64 = v19;
  v65 = v60;
  v66 = v20;
  v67 = 0;
  v21 = swift_dynamicCast();
  v22 = *(v11 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v10, 1, 1, a2);
    (*(v6 + 8))(v10, v55);
    v31 = sub_264C10();
    swift_allocError();
    v33 = v32;
    v58 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
    *v33 = a2;
    v34 = v59;
    v35 = v59[4];
    sub_2E18(v59, v59[3]);
    sub_2650E0();
    v62[0] = 0;
    v62[1] = 0xE000000000000000;
    sub_264BC0(97);
    v70._countAndFlagsBits = 0xD00000000000005FLL;
    v70._object = 0x8000000000290800;
    sub_264530(v70);
    v71._countAndFlagsBits = sub_265260();
    sub_264530(v71);

    sub_264BF0();
    (*(*(v31 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v31);
    swift_willThrow();
    return sub_3080(v34);
  }

  v22(v10, 0, 1, a2);
  (*(v11 + 32))(v14, v10, a2);
  (*(v11 + 16))(v17, v14, a2);
  v23 = a2;
  v24 = v11;
  v25 = v59;
  v26 = v59[4];
  sub_2E18(v59, v59[3]);
  v27 = v57;
  sub_265120();
  v28 = v25;
  v29 = v17;
  if (v27)
  {
    v30 = *(v24 + 8);
    v30(v14, v23);
LABEL_6:
    sub_3080(v28);
    return (v30)(v29, v23);
  }

  WitnessTable = v23;
  v57 = v14;
  v36 = v24;
  sub_2EF0(&qword_317FB8, &unk_26AA50);
  LOBYTE(v60) = 1;
  sub_43FB8();
  v37 = v53;
  v38 = v58;
  sub_264DF0();
  v40 = v62[0];
  sub_260810();
  if (!v61)
  {
    sub_8E80(&v60, &qword_316D40, &unk_268FC0);
    v42 = sub_264C10();
    swift_allocError();
    v55 = v29;
    v44 = v43;
    sub_264D60();
    sub_4401C();
    swift_allocError();
    *v45 = 0;
    sub_264BF0();
    v46 = v44;
    v29 = v55;
    (*(*(v42 - 8) + 104))(v46, enum case for DecodingError.dataCorrupted(_:), v42);
    swift_willThrow();

    (*(v52 + 8))(v38, v53);
    v30 = *(v36 + 8);
    v23 = WitnessTable;
    v30(v57, WitnessTable);
    goto LABEL_6;
  }

  sub_F7CC(&v60, v62);
  v41 = v54;
  sub_30CC(v62, &v29[*(v54 + 40)]);
  LOBYTE(v60) = 0;
  v47 = sub_264DD0();

  sub_3080(v62);
  (*(v52 + 8))(v38, v37);
  (*(v36 + 8))(v57, WitnessTable);
  v29[*(v41 + 36)] = v47 & 1;
  v48 = v50;
  (*(v50 + 16))(v51, v29, v41);
  sub_3080(v28);
  return (*(v48 + 8))(v29, v41);
}

uint64_t sub_436CC@<X0>(_BYTE *a1@<X8>)
{
  sub_449DC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_4371C(char *a1)
{
  v2 = *a1;
  sub_449DC();
  return sub_261CC0();
}

__n128 sub_43778@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 24))(v6, *(a1 + a2 - 16));
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_437F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_43800()
{
  result = qword_317F80;
  if (!qword_317F80)
  {
    sub_2F9C(&qword_317F78, &qword_26A9D8);
    sub_43884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F80);
  }

  return result;
}

unint64_t sub_43884()
{
  result = qword_317F88;
  if (!qword_317F88)
  {
    sub_2F9C(&qword_317F90, &qword_26AA10);
    sub_4393C();
    sub_447EC(&qword_317FA8, &qword_317F68, &unk_26A9C0, sub_439B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F88);
  }

  return result;
}

unint64_t sub_4393C()
{
  result = qword_317F98;
  if (!qword_317F98)
  {
    sub_2F9C(&qword_317FA0, &qword_26AA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317F98);
  }

  return result;
}

unint64_t sub_439B8()
{
  result = qword_317FB0;
  if (!qword_317FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FB0);
  }

  return result;
}

uint64_t sub_43A0C@<X0>(_BYTE *a1@<X8>)
{
  sub_449DC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_43A5C(char *a1)
{
  v2 = *a1;
  sub_449DC();
  return sub_261CC0();
}

uint64_t sub_43B58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_43B68(uint64_t a1)
{
  v48 = a1;
  v46 = sub_264010();
  v44 = *(v46 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = sub_263FA0();
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  __chkstk_darwin(v47);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_260BD0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v39 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2630B0();
  v9 = sub_262900();
  v11 = v10;
  v13 = v12;
  v49[0] = sub_262F40();
  v14 = sub_2627F0();
  v16 = v15;
  v18 = v17;
  sub_39DBC(v9, v11, v13 & 1);

  v19 = sub_262820();
  v41 = v20;
  v42 = v19;
  v38 = v21;
  v40 = v22;
  sub_39DBC(v14, v16, v18 & 1);

  sub_263F90();
  v24 = v43;
  v23 = v44;
  v25 = v46;
  (*(v44 + 104))(v43, enum case for LocalizerLookupStrategy.default(_:), v46);
  sub_260B80();
  (*(v23 + 8))(v24, v25);
  (*(v45 + 8))(v5, v47);
  sub_30CC(v48, v49);
  v26 = sub_2627B0();
  v28 = v27;
  LOBYTE(v23) = v29;
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v30 = sub_2627E0();
  v32 = v31;
  LOBYTE(v11) = v33;

  sub_39DBC(v26, v28, v23 & 1);

  v34 = v41;
  v35 = v42;
  v48 = sub_262820();
  sub_39DBC(v30, v32, v11 & 1);

  sub_39DBC(v35, v34, v38 & 1);

  return v48;
}

unint64_t sub_43FB8()
{
  result = qword_317FC0;
  if (!qword_317FC0)
  {
    sub_2F9C(&qword_317FB8, &unk_26AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FC0);
  }

  return result;
}

unint64_t sub_4401C()
{
  result = qword_317FC8;
  if (!qword_317FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FC8);
  }

  return result;
}

unint64_t sub_44070(uint64_t a1)
{
  *(a1 + 8) = sub_440A0();
  result = sub_440F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_440A0()
{
  result = qword_317FD0;
  if (!qword_317FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FD0);
  }

  return result;
}

unint64_t sub_440F4()
{
  result = qword_317FD8;
  if (!qword_317FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317FD8);
  }

  return result;
}

uint64_t sub_4418C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_441D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_44210(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4424C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_442DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_44308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_44350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 66) = -a2;
    }
  }

  return result;
}

unint64_t sub_443C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_44744();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_44458(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_4458C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 48;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, (v8 & 0xFFFFFFFFFFFFFFF8) + 48);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *(v19 + 8) = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 32) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_44744()
{
  result = qword_3180B0;
  if (!qword_3180B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_3180B0);
  }

  return result;
}

uint64_t sub_447EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_44904(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3178F0, &qword_269C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_44974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_449DC()
{
  result = qword_318178;
  if (!qword_318178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318178);
  }

  return result;
}

uint64_t sub_44A30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

void *sub_44A88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(&v5, *(a1 + a2 - 16));
  *a3 = v5;
  return result;
}

uint64_t sub_44B00()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t SegmentedControl.init(model:containingShelfID:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  v10 = type metadata accessor for SegmentedControl();
  *(a5 + v10[12]) = 0;
  v11 = v10[9];
  v12 = type metadata accessor for SegmentedControlViewModel();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  v14 = (a5 + v10[10]);
  *v14 = a2;
  v14[1] = a3;
  *(a5 + v10[11]) = v9;
  return result;
}

uint64_t SegmentedControl.items.getter(uint64_t a1)
{
  sub_4AC84(a1);
}

uint64_t SegmentedControl.selection.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for SegmentedControlViewModel();
  v8 = *(*(v6 - 8) + 16);
  v9 = v4 + *(v7 + 36);

  return v8(a2, v9, v6);
}

uint64_t SegmentedControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v104 = sub_261FF0();
  v103 = *(v104 - 8);
  v3 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_2646F0();
  swift_getWitnessTable();
  v101 = v6;
  v7 = sub_260CB0();
  v105 = *(a1 + 24);
  v8 = *(v105 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_2F9C(&qword_318180, &qword_26AFE8);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v122 = v7;
  v123 = AssociatedTypeWitness;
  v124 = v10;
  v125 = WitnessTable;
  v126 = AssociatedConformanceWitness;
  sub_2633D0();
  v13 = sub_2F9C(&qword_318188, &qword_26AFF0);
  v14 = sub_2F9C(&qword_318190, &qword_26AFF8);
  v15 = sub_4AC90();
  v122 = v14;
  v123 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v122 = v13;
  v123 = OpaqueTypeConformance2;
  v121 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v17 = sub_263260();
  v18 = swift_getWitnessTable();
  v99 = v17;
  v96 = v18;
  v19 = sub_261120();
  v100 = *(v19 - 8);
  v20 = *(v100 + 64);
  __chkstk_darwin(v19);
  v98 = &v84 - v21;
  v22 = swift_getWitnessTable();
  v122 = v19;
  v123 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v95 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v92 = &v84 - v25;
  v122 = v19;
  v123 = v22;
  v93 = v22;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = OpaqueTypeMetadata2;
  v122 = OpaqueTypeMetadata2;
  v123 = v116;
  v26 = swift_getOpaqueTypeMetadata2();
  v97 = *(v26 - 8);
  v27 = *(v97 + 64);
  v28 = __chkstk_darwin(v26);
  v91 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v94 = &v84 - v30;
  v88 = sub_2EF0(&qword_3181B8, &qword_26B008);
  v31 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v86 = &v84 - v32;
  v87 = sub_2EF0(&qword_3181C0, &qword_26B010);
  v33 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v85 = (&v84 - v34);
  v84 = sub_264A60();
  v89 = *(v84 - 8);
  v35 = *(v89 + 64);
  v36 = __chkstk_darwin(v84);
  v38 = &v84 - v37;
  v90 = *(v5 - 8);
  v39 = *(v90 + 64);
  __chkstk_darwin(v36);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2EF0(&qword_3181C8, &qword_26B018);
  v42 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v44 = &v84 - v43;
  v106 = sub_2EF0(&qword_3181D0, &qword_26B020);
  v45 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v84 - v46;
  v47 = sub_2EF0(&qword_3181D8, &qword_26B028);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v108 = &v84 - v49;
  v110 = v50;
  v115 = v26;
  v51 = sub_261F90();
  v113 = *(v51 - 8);
  v114 = v51;
  v52 = *(v113 + 64);
  __chkstk_darwin(v51);
  v112 = &v84 - v53;
  v54 = v111;
  v55 = *(v111 + *(a1 + 36));

  v56 = v5;
  v57 = sub_2646D0();

  if (v57 == 1)
  {
    v62 = v89;
    v122 = *(v54 + *(a1 + 36));

    swift_getWitnessTable();
    sub_264880();
    v63 = v90;
    if ((*(v90 + 48))(v38, 1, v56) == 1)
    {
      (*(v62 + 8))(v38, v84);

      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010);
      sub_261F80();
    }

    else
    {
      (*(v63 + 32))(v41, v38, v56);

      v76 = sub_261D30();
      v77 = v85;
      *v85 = v76;
      *(v77 + 8) = 0;
      *(v77 + 16) = 0;
      v78 = sub_2EF0(&qword_3181F8, &qword_26B030);
      sub_45C7C(v41, v56, v105, v77 + *(v78 + 44));
      sub_8198(v77, v86, &qword_3181C0, &qword_26B010);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010);
      sub_261F80();
      sub_8E80(v77, &qword_3181C0, &qword_26B010);
      (*(v63 + 8))(v41, v56);
    }

    v59 = v117;
    v75 = v113;
    v74 = v114;
    sub_8198(v44, v107, &qword_3181C8, &qword_26B018);
    swift_storeEnumTagMultiPayload();
    sub_4AE34();
    v79 = v108;
    sub_261F80();
    sub_4ADA8();
    v60 = v116;
    v122 = v59;
    v123 = v116;
    swift_getOpaqueTypeConformance2();
    v61 = v112;
    sub_1D738(v79, v110);
    sub_8E80(v79, &qword_3181D8, &qword_26B028);
    sub_8E80(v44, &qword_3181C8, &qword_26B018);
  }

  else
  {
    if (v57)
    {
      v64 = sub_2624C0();
      __chkstk_darwin(v64);
      v65 = v105;
      *(&v84 - 4) = v5;
      *(&v84 - 3) = v65;
      *(&v84 - 2) = v54;
      v66 = v98;
      sub_261130();
      v67 = v102;
      sub_261FE0();
      sub_2624C0();
      v68 = v92;
      sub_262C80();
      (*(v103 + 8))(v67, v104);
      (*(v100 + 8))(v66, v19);
      v69 = v91;
      v60 = v116;
      v59 = v117;
      sub_262C40();
      (*(v95 + 8))(v68, v59);
      v122 = v59;
      v123 = v60;
      v70 = swift_getOpaqueTypeConformance2();
      v71 = v94;
      v72 = v115;
      sub_1609C(v69, v115, v70);
      v73 = *(v97 + 8);
      v73(v69, v72);
      sub_1609C(v71, v72, v70);
      sub_4ADA8();
      v61 = v112;
      sub_1D830(v69, v110, v72);
      v73(v69, v72);
      v73(v71, v72);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_4AE34();
      v58 = v108;
      sub_261F80();
      sub_4ADA8();
      v60 = v116;
      v59 = v117;
      v122 = v117;
      v123 = v116;
      swift_getOpaqueTypeConformance2();
      v61 = v112;
      sub_1D738(v58, v110);
      sub_8E80(v58, &qword_3181D8, &qword_26B028);
    }

    v75 = v113;
    v74 = v114;
  }

  v80 = sub_4ADA8();
  v122 = v59;
  v123 = v60;
  v81 = swift_getOpaqueTypeConformance2();
  v119 = v80;
  v120 = v81;
  v82 = swift_getWitnessTable();
  sub_1609C(v61, v74, v82);
  return (*(v75 + 8))(v61, v74);
}

uint64_t sub_45C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v48 = a2;
  v46 = a4;
  v5 = sub_2EF0(&qword_318458, &unk_26B270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43 - v7;
  v44 = sub_262730();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v44);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_260BD0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_2EF0(&qword_318460, &qword_26FBA0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v20 = sub_2EF0(&qword_318468, &qword_26B280);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20);
  v45 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v43 - v26;
  __chkstk_darwin(v25);
  v29 = &v43 - v28;
  v43 = a3;
  (*(a3 + 24))(v48, a3);
  sub_260B10();
  v30 = v44;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.title3(_:), v44);
  v31 = sub_2625C0();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_262650();
  v32 = sub_262680();
  sub_8E80(v8, &qword_318458, &unk_26B270);
  (*(v9 + 8))(v12, v30);
  KeyPath = swift_getKeyPath();
  v34 = &v19[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  v36 = swift_getKeyPath();
  v37 = &v19[*(v16 + 44)];
  *v37 = v36;
  v37[1] = v35;
  if ((*(v43 + 56))(v48))
  {
    v38 = 0.3;
  }

  else
  {
    v38 = 1.0;
  }

  sub_22148(v19, v27, &qword_318460, &qword_26FBA0);
  *&v27[*(v21 + 44)] = v38;
  sub_22148(v27, v29, &qword_318468, &qword_26B280);
  v39 = v45;
  sub_8198(v29, v45, &qword_318468, &qword_26B280);
  v40 = v46;
  sub_8198(v39, v46, &qword_318468, &qword_26B280);
  v41 = v40 + *(sub_2EF0(&qword_318478, &qword_26B2C0) + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_8E80(v29, &qword_318468, &qword_26B280);
  return sub_8E80(v39, &qword_318468, &qword_26B280);
}

uint64_t sub_460F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  sub_2646F0();
  swift_getWitnessTable();
  sub_260CB0();
  v7 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  v22[5] = sub_2F9C(&qword_318180, &qword_26AFE8);
  v22[6] = swift_getWitnessTable();
  v22[7] = swift_getAssociatedConformanceWitness();
  sub_2633D0();
  v8 = sub_2F9C(&qword_318188, &qword_26AFF0);
  sub_2F9C(&qword_318190, &qword_26AFF8);
  sub_4AC90();
  v22[3] = v8;
  v22[4] = swift_getOpaqueTypeConformance2();
  v22[2] = swift_getOpaqueTypeConformance2();
  v22[0] = swift_getWitnessTable();
  v9 = sub_263260();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  v17 = type metadata accessor for SegmentedControl();
  v18 = *(v17 + 44);
  if (!*(a1 + v18) || *(a1 + v18) != 1)
  {
    v17 = sub_44B00();
  }

  __chkstk_darwin(v17);
  v22[-4] = a2;
  v22[-3] = a3;
  v22[-2] = a1;
  sub_261D30();
  sub_263250();
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v14, v9, WitnessTable);
  v20 = *(v10 + 8);
  v20(v14, v9);
  sub_1609C(v16, v9, WitnessTable);
  return (v20)(v16, v9);
}

uint64_t sub_46480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v50 = a4;
  v37 = a3;
  v40 = type metadata accessor for SegmentedControl();
  v6 = *(v40 - 8);
  v44 = *(v6 + 64);
  __chkstk_darwin(v40);
  v42 = &v37 - v7;
  sub_2646F0();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_260CB0();
  v48 = v8;
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v39 = &v37 - v10;
  v11 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_2F9C(&qword_318180, &qword_26AFE8);
  v47 = v13;
  v14 = swift_getWitnessTable();
  v46 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v8;
  v56 = AssociatedTypeWitness;
  v57 = v13;
  v58 = v14;
  v59 = AssociatedConformanceWitness;
  v15 = sub_2633D0();
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v43 = &v37 - v20;
  v22 = v40;
  v21 = v41;
  v54 = *(v41 + *(v40 + 36));
  sub_264810();
  v23 = v37;
  v51 = a2;
  v52 = v37;
  WitnessTable = swift_getKeyPath();
  v24 = v42;
  (*(v6 + 16))(v42, v21, v22);
  v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = v23;
  (*(v6 + 32))(v26 + v25, v24, v22);
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = v23;
  v27[4] = sub_4C500;
  v27[5] = v26;
  v28 = sub_2F9C(&qword_318188, &qword_26AFF0);
  v29 = sub_2F9C(&qword_318190, &qword_26AFF8);
  v30 = sub_4AC90();
  v55 = v29;
  v56 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v28;
  v56 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  sub_2633B0();
  v53 = v36;
  v32 = swift_getWitnessTable();
  v33 = v43;
  sub_1609C(v19, v15, v32);
  v34 = *(v49 + 8);
  v34(v19, v15);
  sub_1609C(v33, v15, v32);
  return (v34)(v33, v15);
}

uint64_t sub_46944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a3;
  v29 = a1;
  v32 = a5;
  v33 = sub_263F70();
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v33);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_315D48, &qword_266E40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_2EF0(&qword_318190, &qword_26AFF8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v28 = sub_2EF0(&qword_318188, &qword_26AFF0);
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = &v26 - v19;
  v21 = type metadata accessor for SegmentedControl();
  sub_46CA8(a2, v21, v16);
  *(swift_allocObject() + 16) = v29;
  v22 = sub_4AC90();
  sub_262940();

  sub_8E80(v16, &qword_318190, &qword_26AFF8);
  (*(a4 + 48))(v27, a4);
  v23 = v30;
  sub_263F60();
  v34 = v13;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_262910();
  (*(v31 + 8))(v23, v33);
  sub_8E80(v12, &qword_315D48, &qword_266E40);
  return (*(v17 + 8))(v20, v24);
}

uint64_t sub_46CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v188 = a3;
  v186 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v5 = *(*(v186 - 8) + 64);
  v6 = __chkstk_darwin(v186);
  v185 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v183 = &v170 - v8;
  v204 = sub_261690();
  v203 = *(v204 - 8);
  v9 = *(v203 + 64);
  v10 = __chkstk_darwin(v204);
  v202 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v201 = &v170 - v12;
  v187 = sub_2EF0(&qword_3174E8, &qword_269970);
  v13 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v184 = &v170 - v14;
  v200 = sub_262730();
  v199 = *(v200 - 8);
  v15 = *(v199 + 64);
  __chkstk_darwin(v200);
  v198 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for CustomPickerButtonStyle();
  v17 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v213);
  v197 = (&v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2604E0();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v205 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = a2;
  v23 = *(a2 - 8);
  a2 -= 8;
  v189 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  v195 = v25;
  v190 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_263AF0();
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v170 = &v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 24);
  v31 = *(v30 - 8);
  v32 = v31[8];
  __chkstk_darwin(v28);
  v191 = v33;
  v34 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 32);
  v36 = *(v35 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v226 = *(AssociatedTypeWitness - 8);
  v37 = *(v226 + 64);
  v38 = __chkstk_darwin(AssociatedTypeWitness);
  v222 = &v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v170 - v40;
  v42 = sub_2EF0(&qword_316960, &unk_2689F0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v170 - v44;
  v194 = sub_2EF0(&qword_318480, &qword_26B318);
  v46 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v196 = &v170 - v47;
  v221 = sub_2EF0(&qword_318488, &qword_26B320);
  v48 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v216 = &v170 - v49;
  v172 = sub_2EF0(&qword_318490, &qword_26B328);
  v171 = *(v172 - 8);
  v50 = *(v171 + 64);
  __chkstk_darwin(v172);
  v212 = &v170 - v51;
  v175 = sub_2EF0(&qword_318498, &qword_26B330);
  v174 = *(v175 - 8);
  v52 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v170 - v53;
  v182 = sub_2EF0(&qword_3184A0, &qword_26B338);
  v181 = *(v182 - 8);
  v54 = *(v181 + 64);
  v55 = __chkstk_darwin(v182);
  v177 = &v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v56;
  __chkstk_darwin(v55);
  v206 = &v170 - v57;
  v180 = sub_2EF0(&qword_3181A8, &qword_26B000);
  v179 = *(v180 - 8);
  v58 = *(v179 + 64);
  __chkstk_darwin(v180);
  v178 = &v170 - v59;
  v60 = sub_2610B0();
  v61 = *(*(v60 - 8) + 56);
  v193 = v45;
  v61(v45, 1, 1, v60);
  v227 = a1;
  sub_264BD0();
  v62 = *(a2 + 44);
  v63 = v218;
  v64 = v218 + v62;
  v65 = v35;
  v211 = type metadata accessor for SegmentedControlViewModel();
  v66 = v31[2];
  v67 = v64 + *(v211 + 36);
  v219 = v31 + 2;
  v220 = v66;
  v66(v34, v67, v30);
  v68 = v222;
  sub_264BD0();
  v192 = v31;
  v69 = v31[1];
  v210 = v31 + 1;
  v209 = v69;
  v69(v34, v30);
  v215 = v36;
  v217 = v30;
  v70 = v226;
  v71 = AssociatedTypeWitness;
  v208 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v64) = sub_264390();
  v72 = *(v70 + 8);
  v72(v68, v71);
  v214 = v41;
  v207 = v72;
  v72(v41, v71);
  v225 = v65;
  v226 = v70 + 8;
  if (v64)
  {
    *(&v229 + 1) = sub_263890();
    v230 = &protocol witness table for EmptyAction;
    sub_10934(&v228);
    sub_263AC0();
    sub_263880();
    v73 = v227;
  }

  else
  {
    v74 = v227;
    (*(v65 + 64))(&v228, v63 + *(v224 + 36), *(v63 + *(v224 + 40)), *(v63 + *(v224 + 40) + 8), v217, v65);
    v73 = v74;
  }

  v75 = v34;
  v76 = v217;
  v220(v34, v73, v217);
  v77 = v189;
  v78 = v190;
  v79 = v224;
  (*(v189 + 16))(v190, v63, v224);
  v80 = v192;
  v81 = (v192[80] + 32) & ~v192[80];
  v82 = (v191 + *(v77 + 80) + v81) & ~*(v77 + 80);
  v83 = swift_allocObject();
  v84 = v225;
  *(v83 + 16) = v76;
  *(v83 + 24) = v84;
  (*(v80 + 4))(v83 + v81, v34, v76);
  (*(v77 + 32))(v83 + v82, v78, v79);
  sub_2604C0();
  v85 = v196;
  sub_260420();
  v86 = v194;
  v87 = v85 + *(v194 + 36);
  *v87 = swift_getKeyPath();
  *(v87 + 8) = 0;
  v88 = v86[10];
  *(v85 + v88) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v89 = v85 + v86[11];
  *v89 = swift_getKeyPath();
  *(v89 + 40) = 0;
  v90 = (v85 + v86[12]);
  v91 = sub_2EF0(&qword_3184A8, &qword_26B3D8);
  v90[3] = v91;
  v90[4] = sub_8E38(&qword_3184B0, &qword_3184A8, &qword_26B3D8);
  v92 = sub_10934(v90);
  sub_22148(v193, v92, &qword_316960, &unk_2689F0);
  v93 = (v92 + *(v91 + 36));
  *v93 = sub_4C7FC;
  v93[1] = v83;
  v94 = v85 + v86[13];
  v95 = v229;
  *v94 = v228;
  *(v94 + 16) = v95;
  *(v94 + 32) = v230;
  v96 = *(v225 + 56);
  v205 = (v225 + 56);
  v193 = v96;
  LOBYTE(v92) = v96(v76);
  KeyPath = swift_getKeyPath();
  v98 = swift_allocObject();
  *(v98 + 16) = v92 & 1;
  v99 = v216;
  sub_8198(v85, v216, &qword_318480, &qword_26B318);
  v100 = (v99 + *(v221 + 36));
  *v100 = KeyPath;
  v100[1] = sub_4C914;
  v100[2] = v98;
  sub_8E80(v85, &qword_318480, &qword_26B318);
  v101 = v224;
  v102 = v218;
  v220(v75, v218 + *(v224 + 36) + *(v211 + 36), v76);
  v103 = v214;
  sub_264BD0();
  v192 = v75;
  v209(v75, v76);
  v104 = v222;
  sub_264BD0();
  v105 = AssociatedTypeWitness;
  LODWORD(v196) = sub_264390();
  v106 = v104;
  v107 = v207;
  v207(v106, v105);
  v107(v103, v105);
  v108 = *(v102 + *(v101 + 48));
  v195 = sub_263670();
  LODWORD(v194) = *(v102 + *(v101 + 44));
  v109 = swift_getKeyPath();
  v110 = v197;
  *v197 = v109;
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v111 = v213;
  v112 = *(v213 + 20);
  *(v110 + v112) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v113 = v110 + v111[6];
  *v113 = swift_getKeyPath();
  *(v113 + 8) = 0;
  v114 = v110 + v111[7];
  *v114 = swift_getKeyPath();
  *(v114 + 8) = 0;
  v115 = v110 + v111[8];
  *v115 = swift_getKeyPath();
  *(v115 + 8) = 0;
  *(v110 + v111[12]) = 0x3FF0000000000000;
  v116 = v111[13];
  *&v228 = 0x4040000000000000;
  v117 = enum case for Font.TextStyle.body(_:);
  v118 = *(v199 + 104);
  v119 = v198;
  v120 = v200;
  v118(v198, enum case for Font.TextStyle.body(_:), v200);
  sub_40130();
  sub_2612E0();
  v121 = v111[14];
  *&v228 = 0x4042000000000000;
  v118(v119, v117, v120);
  sub_2612E0();
  *(v110 + v111[9]) = v196 & 1;
  *(v110 + v111[10]) = v195;
  *(v110 + v111[11]) = v194;
  v122 = sub_4C960();
  v200 = sub_4CF70(&qword_3184D8, type metadata accessor for CustomPickerButtonStyle);
  v123 = v216;
  sub_262A60();
  sub_4CA44(v110, type metadata accessor for CustomPickerButtonStyle);
  sub_8E80(v123, &qword_318488, &qword_26B320);
  v124 = v203;
  v125 = *(v203 + 104);
  v126 = v201;
  v127 = v204;
  v125(v201, enum case for DynamicTypeSize.xSmall(_:), v204);
  v128 = v202;
  v125(v202, enum case for DynamicTypeSize.xxxLarge(_:), v127);
  sub_4CF70(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v130 = *(v124 + 32);
    v131 = v183;
    v130(v183, v126, v127);
    v132 = v186;
    v130((v131 + *(v186 + 48)), v128, v127);
    v133 = v127;
    v134 = v185;
    sub_8198(v131, v185, &qword_3174E0, &qword_26B310);
    v135 = *(v132 + 48);
    v136 = v184;
    v130(v184, v134, v133);
    v216 = v122;
    v137 = *(v124 + 8);
    v137(v134 + v135, v133);
    sub_22148(v131, v134, &qword_3174E0, &qword_26B310);
    v138 = *(v132 + 48);
    v139 = v187;
    v130((v136 + *(v187 + 36)), (v134 + v138), v133);
    v137(v134, v133);
    *&v228 = v221;
    *(&v228 + 1) = v213;
    *&v229 = v216;
    *(&v229 + 1) = v200;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v141 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v142 = v173;
    v143 = v172;
    v144 = v212;
    sub_262B70();
    sub_8E80(v136, &qword_3174E8, &qword_269970);
    v145 = (*(v171 + 8))(v144, v143);
    __chkstk_darwin(v145);
    v146 = v217;
    v147 = v225;
    sub_260B00();
    *&v228 = v143;
    *(&v228 + 1) = v139;
    *&v229 = OpaqueTypeConformance2;
    *(&v229 + 1) = v141;
    swift_getOpaqueTypeConformance2();
    sub_4CF70(&qword_3184E0, &type metadata accessor for LocalizedText);
    v148 = v206;
    v149 = v175;
    sub_262D60();
    (*(v174 + 8))(v142, v149);
    v150 = v192;
    v220(v192, v218 + *(v224 + 36) + *(v211 + 36), v146);
    v151 = v214;
    sub_264BD0();
    v209(v150, v146);
    v152 = v222;
    sub_264BD0();
    v153 = AssociatedTypeWitness;
    LOBYTE(v134) = sub_264390();
    v154 = v152;
    v155 = v207;
    v207(v154, v153);
    v155(v151, v153);
    v156 = v147;
    v157 = v193;
    LOBYTE(v150) = v193(v146, v156);
    v158 = v181;
    v159 = v177;
    v160 = v148;
    v161 = v182;
    (*(v181 + 16))(v177, v160, v182);
    v162 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v163 = v162 + v176;
    v164 = swift_allocObject();
    (*(v158 + 32))(v164 + v162, v159, v161);
    v165 = (v164 + v163);
    *v165 = v134 & 1;
    v165[1] = (v150 & 1) == 0;
    sub_2EF0(&qword_3184E8, &qword_26B4E0);
    sub_260A70();
    sub_260A50();
    sub_4CBFC();
    sub_4CF70(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_4CF70(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    v166 = v178;
    sub_260A80();
    (*(v158 + 8))(v206, v161);
    LOBYTE(v164) = v157(v146, v225);
    v167 = UIAccessibilityTraitNotEnabled;
    v168 = v188;
    (*(v179 + 32))(v188, v166, v180);
    result = sub_2EF0(&qword_318190, &qword_26AFF8);
    v169 = v168 + *(result + 36);
    *v169 = v164 & 1;
    *(v169 + 8) = v167;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_484CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (**a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_261E60();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = sub_2EF0(&qword_318528, &qword_26B4F0);
  return sub_48548(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_48548@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (**a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  v55 = a1;
  v61 = a4;
  v6 = sub_2EF0(&qword_318530, &unk_26B4F8);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v53 = (&v52 - v8);
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_2EF0(&qword_318538, &qword_26B508);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v60 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v57 = &v52 - v17;
  v18 = sub_260BD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v54 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = sub_2EF0(&qword_318470, &qword_26FBB0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23);
  v56 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v52 - v28;
  a3[3](a2, a3);
  sub_260B10();
  v30 = type metadata accessor for SegmentedControl();
  v31 = sub_48B14(v30);
  KeyPath = swift_getKeyPath();
  v33 = *(v24 + 44);
  v34 = v18;
  v35 = &v29[v33];
  *v35 = KeyPath;
  v35[1] = v31;
  a3[4](a2, a3);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_8E80(v12, &qword_316208, &qword_268BD0);
LABEL_6:
    v46 = v57;
    (*(v58 + 56))(v57, 1, 1, v59);
    goto LABEL_7;
  }

  v36 = v54;
  (*(v19 + 32))(v54, v12, v18);
  a3[5](a2, a3);
  if (!v37)
  {
    (*(v19 + 8))(v36, v18);
    goto LABEL_6;
  }

  v38 = sub_261D30();
  v39 = v53;
  *v53 = v38;
  *(v39 + 8) = 0x4008000000000000;
  *(v39 + 16) = 0;
  v40 = sub_2EF0(&qword_318548, &qword_26B518);
  sub_48D38(v36, v39 + *(v40 + 44));

  v41 = sub_2626F0();
  v42 = swift_getKeyPath();
  v43 = (v39 + *(sub_2EF0(&qword_318550, &qword_26B520) + 36));
  *v43 = v42;
  v43[1] = v41;
  v44 = sub_262140();
  v45 = v59;
  *(v39 + *(v59 + 36)) = v44;
  v46 = v57;
  sub_22148(v39, v57, &qword_318530, &unk_26B4F8);
  (*(v58 + 56))(v46, 0, 1, v45);
  (*(v19 + 8))(v36, v34);
LABEL_7:
  v47 = v56;
  sub_8198(v29, v56, &qword_318470, &qword_26FBB0);
  v48 = v60;
  sub_8198(v46, v60, &qword_318538, &qword_26B508);
  v49 = v61;
  sub_8198(v47, v61, &qword_318470, &qword_26FBB0);
  v50 = sub_2EF0(&qword_318540, &qword_26B510);
  sub_8198(v48, v49 + *(v50 + 48), &qword_318538, &qword_26B508);
  sub_8E80(v46, &qword_318538, &qword_26B508);
  sub_8E80(v29, &qword_318470, &qword_26FBB0);
  sub_8E80(v48, &qword_318538, &qword_26B508);
  return sub_8E80(v47, &qword_318470, &qword_26FBB0);
}

uint64_t sub_48B14(uint64_t a1)
{
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_262730();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 104);
  if (*(v1 + *(a1 + 44)))
  {
    v12(v11, enum case for Font.TextStyle.footnote(_:), v7);
    v13 = sub_2625C0();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_262630();
  }

  else
  {
    v12(v11, enum case for Font.TextStyle.body(_:), v7);
    v14 = sub_2625C0();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_262650();
  }

  v15 = sub_262680();
  sub_8E80(v6, &qword_318458, &unk_26B270);
  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t sub_48D38@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = sub_260BD0();
  v2 = *(v33 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_318558, &qword_26B528);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = sub_2EF0(&qword_318560, &unk_26B530);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (&v32 - v19);

  v21 = sub_2630B0();
  v22 = (v20 + *(v14 + 44));
  v23 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v24 = enum case for Image.Scale.small(_:);
  v25 = sub_2630F0();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v20 = v21;
  (*(v2 + 16))(v5, v34, v33);
  sub_260B10();
  KeyPath = swift_getKeyPath();
  v27 = &v12[*(v7 + 44)];
  *v27 = KeyPath;
  *(v27 + 1) = 1;
  v27[16] = 0;
  sub_8198(v20, v18, &qword_318560, &unk_26B530);
  v28 = v32;
  sub_8198(v12, v32, &qword_318558, &qword_26B528);
  v29 = v35;
  sub_8198(v18, v35, &qword_318560, &unk_26B530);
  v30 = sub_2EF0(&qword_318568, &qword_26B5A0);
  sub_8198(v28, v29 + *(v30 + 48), &qword_318558, &qword_26B528);
  sub_8E80(v12, &qword_318558, &qword_26B528);
  sub_8E80(v20, &qword_318560, &unk_26B530);
  sub_8E80(v28, &qword_318558, &qword_26B528);
  return sub_8E80(v18, &qword_318560, &unk_26B530);
}

uint64_t sub_49094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_260BD0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  (*(a3 + 24))(a2, a3);
  return sub_260B10();
}

uint64_t sub_49148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v175 = a2;
  v5 = sub_261FA0();
  v173 = *(v5 - 8);
  v174 = v5;
  v6 = *(v173 + 64);
  __chkstk_darwin(v5);
  v172 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2628A0();
  v163 = *(v8 - 8);
  v164 = v8;
  v9 = *(v163 + 64);
  __chkstk_darwin(v8);
  v162 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorConstants.Environment(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v158 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ColorConstants(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v159 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261180();
  v180 = *(v17 - 8);
  v18 = *(v180 + 64);
  v19 = __chkstk_darwin(v17);
  v148 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v179 = &v146 - v21;
  v22 = sub_261C90();
  v177 = *(v22 - 8);
  v178 = v22;
  v23 = *(v177 + 64);
  __chkstk_darwin(v22);
  v176 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_262290();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_318350, &qword_26B1C0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v146 - v32;
  v149 = sub_2EF0(&qword_318358, &qword_26B1C8);
  v34 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v181 = &v146 - v35;
  v182 = sub_2EF0(&qword_318360, &qword_26B1D0);
  v36 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v183 = &v146 - v37;
  v38 = sub_2EF0(&qword_318368, &qword_26B1D8);
  v154 = *(v38 - 8);
  v155 = v38;
  v39 = *(v154 + 64);
  __chkstk_darwin(v38);
  v151 = &v146 - v40;
  v150 = sub_2EF0(&qword_318370, &qword_26B1E0);
  v41 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v153 = &v146 - v42;
  v152 = sub_2EF0(&qword_318378, &qword_26B1E8);
  v43 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v157 = &v146 - v44;
  v156 = sub_2EF0(&qword_318380, &qword_26B1F0);
  v45 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v161 = &v146 - v46;
  v160 = sub_2EF0(&qword_318388, &qword_26B1F8);
  v47 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v165 = &v146 - v48;
  v166 = sub_2EF0(&qword_318390, &qword_26B200);
  v49 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v167 = &v146 - v50;
  v51 = sub_2EF0(&qword_318398, &qword_26B208);
  v169 = *(v51 - 8);
  v170 = v51;
  v52 = *(v169 + 64);
  __chkstk_darwin(v51);
  v168 = &v146 - v53;
  v171 = a1;
  sub_2622A0();
  v54 = type metadata accessor for CustomPickerButtonStyle();
  v55 = v54;
  v147 = v54[11];
  if (*(v3 + v147) >= 2u)
  {
    v57 = v54[14];
  }

  else
  {
    v56 = v54[13];
  }

  sub_2EF0(&qword_318288, &unk_27F080);
  sub_261300();
  v184 = v55;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  (*(v26 + 32))(v33, v29, v25);
  v58 = &v33[*(v30 + 36)];
  v59 = v211;
  *v58 = v210;
  *(v58 + 1) = v59;
  *(v58 + 2) = v212;
  v60 = v3 + v55[8];
  v61 = *v60;
  if (*(v60 + 8) != 1)
  {

    sub_264900();
    v62 = sub_2624B0();
    sub_260D10();

    v63 = v176;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v61, 0);
    (*(v177 + 8))(v63, v178);
  }

  v64 = v159;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v65 = v181;
  sub_22148(v33, v181, &qword_318350, &qword_26B1C0);
  v66 = (v65 + *(v149 + 36));
  v67 = v214;
  *v66 = v213;
  v66[1] = v67;
  v68 = v219;
  v66[5] = v218;
  v66[6] = v68;
  v69 = v217;
  v66[3] = v216;
  v66[4] = v69;
  v66[2] = v215;
  v70 = *(v3 + v184[9]);
  if (v70)
  {
    v71 = v3 + v184[5];
    v72 = v179;
    sub_40830(v179);
    v73 = v180;
    v74 = v148;
    (*(v180 + 104))(v148, enum case for ColorScheme.light(_:), v17);
    LOBYTE(v71) = sub_261170();
    v75 = *(v73 + 8);
    v75(v74, v17);
    v75(v72, v17);
    if (v71)
    {
      v76 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v76 = sub_262F80();
    }
  }

  else
  {
    v76 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v77 = v76;
  KeyPath = swift_getKeyPath();
  v79 = v183;
  sub_22148(v181, v183, &qword_318358, &qword_26B1C8);
  v80 = (v79 + *(v182 + 36));
  *v80 = KeyPath;
  v80[1] = v77;
  if ((v70 & 1) == 0 && !*(v3 + v147))
  {
    v142 = v3 + v184[6];
    v143 = *v142;
    if (*(v142 + 8) != 1)
    {

      sub_264900();
      v144 = sub_2624B0();
      sub_260D10();

      v145 = v176;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v143, 0);
      (*(v177 + 8))(v145, v178);
    }
  }

  v181 = v3;
  sub_404B8(v64);
  v81 = v158;
  sub_4BD3C(v64, v158);
  v82 = v179;
  v83 = v180;
  (*(v180 + 104))(v179, enum case for ColorScheme.dark(_:), v17);
  sub_4CF70(&qword_3183A0, &type metadata accessor for ColorScheme);
  v84 = sub_264390();
  v85 = *(v83 + 8);
  v85(v82, v17);
  v85(v81, v17);
  if (v84)
  {
    _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    sub_262F80();
  }

  sub_4CA44(v64, type metadata accessor for ColorConstants);
  v86 = v162;
  sub_262890();
  sub_4BDA0();
  v87 = v151;
  v88 = v183;
  sub_262ED0();

  (*(v163 + 8))(v86, v164);
  sub_8E80(v88, &qword_318360, &qword_26B1D0);
  LOBYTE(v88) = sub_262560();
  sub_2610C0();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v153;
  (*(v154 + 32))(v153, v87, v155);
  v98 = v97 + *(v150 + 36);
  *v98 = v88;
  *(v98 + 8) = v90;
  *(v98 + 16) = v92;
  *(v98 + 24) = v94;
  *(v98 + 32) = v96;
  *(v98 + 40) = 0;
  LOBYTE(v88) = sub_2624F0();
  sub_2610C0();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v157;
  sub_22148(v97, v157, &qword_318370, &qword_26B1E0);
  v108 = v107 + *(v152 + 36);
  *v108 = v88;
  *(v108 + 8) = v100;
  *(v108 + 16) = v102;
  *(v108 + 24) = v104;
  *(v108 + 32) = v106;
  *(v108 + 40) = 0;
  v109 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v111 = v110;
  v112 = v181;
  sub_4A328(v181, &v202);
  v190 = v203[1];
  v191 = v203[2];
  v192 = v203[3];
  v188 = v202;
  v189 = v203[0];
  *&v193 = v109;
  *(&v193 + 1) = v111;
  v113 = v161;
  sub_22148(v107, v161, &qword_318378, &qword_26B1E8);
  v114 = (v113 + *(v156 + 36));
  v115 = v191;
  v114[2] = v190;
  v114[3] = v115;
  v116 = v193;
  v114[4] = v192;
  v114[5] = v116;
  v117 = v189;
  *v114 = v188;
  v114[1] = v117;
  v194[2] = v203[1];
  v194[3] = v203[2];
  v194[4] = v203[3];
  v194[0] = v202;
  v194[1] = v203[0];
  v195 = v109;
  v196 = v111;
  sub_8198(&v188, &v205, &qword_3183D8, &qword_26B248);
  sub_8E80(v194, &qword_3183D8, &qword_26B248);
  v118 = sub_261D30();
  v187 = 1;
  sub_4A894(v112, &v205);
  v197 = v205;
  v198 = *v206;
  v199 = *&v206[16];
  v200 = *&v206[32];
  v201[0] = v205;
  v201[1] = *v206;
  v201[2] = *&v206[16];
  v201[3] = *&v206[32];
  sub_8198(&v197, &v202, &qword_3183E0, &qword_26B250);
  sub_8E80(v201, &qword_3183E0, &qword_26B250);
  *&v186[7] = v197;
  *&v186[23] = v198;
  *&v186[39] = v199;
  *&v186[55] = v200;
  LOBYTE(v86) = v187;
  v119 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v121 = v120;
  *(&v203[1] + 1) = *&v186[16];
  *(&v203[2] + 1) = *&v186[32];
  *(&v203[3] + 1) = *&v186[48];
  v202 = v118;
  LOBYTE(v203[0]) = v86;
  *(v203 + 1) = *v186;
  *&v203[4] = *&v186[63];
  *(&v203[4] + 1) = v119;
  v204 = v120;
  v122 = v113;
  v123 = v165;
  sub_22148(v122, v165, &qword_318380, &qword_26B1F0);
  v124 = v123 + *(v160 + 36);
  v125 = v203[4];
  *(v124 + 64) = v203[3];
  *(v124 + 80) = v125;
  v126 = v203[0];
  *v124 = v202;
  *(v124 + 16) = v126;
  v127 = v203[2];
  *(v124 + 32) = v203[1];
  *(v124 + 48) = v127;
  v128 = *&v186[16];
  *&v206[1] = *v186;
  *&v207[15] = *&v186[63];
  *v207 = *&v186[48];
  *&v206[33] = *&v186[32];
  *(v124 + 96) = v204;
  v205 = v118;
  v206[0] = v86;
  *&v206[17] = v128;
  v208 = v119;
  v209 = v121;
  sub_8198(&v202, v185, &qword_3183E8, &qword_26B258);
  sub_8E80(&v205, &qword_3183E8, &qword_26B258);
  v129 = v167;
  v130 = &v167[*(v166 + 36)];
  v131 = &v130[*(sub_2EF0(&qword_3183F0, &qword_26B260) + 40)];
  sub_261870();
  *v130 = sub_4A5EC();
  v130[8] = 0;
  sub_22148(v123, v129, &qword_318388, &qword_26B1F8);
  v132 = v172;
  sub_2618C0();
  sub_4BFA0();
  sub_4CF70(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v133 = v168;
  v134 = v174;
  sub_262AA0();
  (*(v173 + 8))(v132, v134);
  sub_8E80(v129, &qword_318390, &qword_26B200);
  v135 = v112 + v184[7];
  v136 = *v135;
  if (*(v135 + 8) != 1)
  {

    sub_264900();
    v137 = sub_2624B0();
    sub_260D10();

    v138 = v176;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v136, 0);
    (*(v177 + 8))(v138, v178);
    LOBYTE(v136) = v185[0];
  }

  if (v136)
  {
    v139 = 1.0;
  }

  else
  {
    v139 = 0.3;
  }

  v140 = v175;
  (*(v169 + 32))(v175, v133, v170);
  result = sub_2EF0(&qword_318440, &qword_26B268);
  *(v140 + *(result + 36)) = v139;
  return result;
}

uint64_t sub_4A328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants.Environment(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ColorConstants(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CustomPickerButtonStyle();
  if (*(a1 + *(result + 36)) == 1)
  {
    v18 = result;
    v32 = sub_4A5EC();
    sub_404B8(v16);
    sub_4BD3C(v16, v12);
    (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
    sub_4CF70(&qword_3183A0, &type metadata accessor for ColorScheme);
    v19 = sub_264390();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v12, v4);
    if (v19)
    {
      v21 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      v21 = sub_262F80();
    }

    v23 = v21;
    sub_4CA44(v16, type metadata accessor for ColorConstants);
    v24 = *(a1 + *(v18 + 40));
    v29 = sub_2622F0();
    result = sub_263720();
    *(&v28 + 1) = v30;
    v27 = xmmword_26AFB0;
    v25 = v29;
    v26 = 1;
    v22 = v32;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  *a2 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = v26 << 8;
  *(a2 + 24) = v27;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  *(a2 + 56) = v28;
  *(a2 + 72) = v26;
  return result;
}

uint64_t sub_4A5EC()
{
  v1 = sub_2617D0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261DD0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263390();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustomPickerButtonStyle();
  v15 = *(v0 + *(v14 + 48)) * 0.5;
  if (*(v0 + *(v14 + 44)) > 1u)
  {
    v18 = sub_2617E0();
    (*(v6 + 104))(&v4[*(v18 + 20)], enum case for RoundedCornerStyle.continuous(_:), v5);
    __asm { FMOV            V0.2D, #10.0 }

    *v4 = _Q0;
    *&v4[*(v1 + 20)] = v15;
    sub_4CF70(&qword_318448, &type metadata accessor for RoundedRectangle._Inset);
  }

  else
  {
    v16 = *(v6 + 104);
    v16(v13, enum case for RoundedCornerStyle.continuous(_:), v5);
    v16(v9, enum case for RoundedCornerStyle.circular(_:), v5);
    v17 = sub_261DC0();
    (*(v6 + 8))(v9, v5);
    sub_4CA44(v13, &type metadata accessor for Capsule);
    v25[1] = *&v15 & 0xFFFFFFFFFFFFFFFELL | ((v17 & 1) == 0);
    sub_4C31C();
  }

  return sub_263440();
}

uint64_t sub_4A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorConstants(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CustomPickerButtonStyle();
  v9 = 0uLL;
  if ((*(a1 + *(result + 36)) & 1) != 0 || !*(a1 + *(result + 44)))
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v10 = result;
    v11 = sub_4A5EC();
    v12 = *(a1 + *(v10 + 48));
    sub_261240();
    v19[0] = v19[1];
    v13 = v20;
    v14 = v21;
    v15 = v22;
    sub_404B8(v7);
    v16 = [objc_opt_self() quaternaryLabelColor];
    v17 = sub_263070();
    sub_4CA44(v7, type metadata accessor for ColorConstants);
    result = sub_2622B0();
    v9 = v19[0];
    v18 = 0x3FF0000000000000;
    if (result)
    {
      v18 = 0x3FE3333333333333;
    }
  }

  *a2 = v11;
  *(a2 + 8) = v9;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  return result;
}

uint64_t sub_4AA30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_263FA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_318500, &qword_26B4E8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = sub_2EF0(&qword_3184A0, &qword_26B338);
  (*(*(v19 - 8) + 16))(v18, a2, v19);
  v18[*(v15 + 44)] = a3 & a4 & 1;
  v20 = a4 & (a3 ^ 1);
  v21 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_263F90();
  v22 = sub_264240();
  v24 = v23;
  (*(v10 + 8))(v13, v9);
  v25 = v29;
  sub_22148(v18, v29, &qword_318500, &qword_26B4E8);
  result = sub_2EF0(&qword_3184E8, &qword_26B4E0);
  v27 = v25 + *(result + 36);
  *v27 = v20;
  *(v27 + 8) = v22;
  *(v27 + 16) = v24;
  return result;
}

unint64_t sub_4AC90()
{
  result = qword_318198;
  if (!qword_318198)
  {
    sub_2F9C(&qword_318190, &qword_26AFF8);
    sub_8E38(&qword_3181A0, &qword_3181A8, &qword_26B000);
    sub_4AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318198);
  }

  return result;
}

unint64_t sub_4AD48()
{
  result = qword_3181B0;
  if (!qword_3181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181B0);
  }

  return result;
}

unint64_t sub_4ADA8()
{
  result = qword_3181E0;
  if (!qword_3181E0)
  {
    sub_2F9C(&qword_3181D8, &qword_26B028);
    sub_4AE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181E0);
  }

  return result;
}

unint64_t sub_4AE34()
{
  result = qword_3181E8;
  if (!qword_3181E8)
  {
    sub_2F9C(&qword_3181C8, &qword_26B018);
    sub_8E38(&qword_3181F0, &qword_3181C0, &qword_26B010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3181E8);
  }

  return result;
}

unint64_t sub_4AF34()
{
  result = qword_318200[0];
  if (!qword_318200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_318200);
  }

  return result;
}

void sub_4B014(uint64_t a1)
{
  sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    type metadata accessor for SegmentedControlViewModel();
    if (v5 <= 0x3F)
    {
      sub_1BB48(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_4B114(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(*(a3 + 16) - 8) + 64) - ((-9 - v6) | v6) - ((-10 - v8) | v8) + 29) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 + v8 + 9) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_4B284(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = (&result[(v8 | 7) + 9] & ~(v8 | 7));
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) - ((-9 - v8) | v8) - ((-10 - (v8 | 7)) | v8 | 7) + 29) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_4B488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_3181D8, &qword_26B028);
  sub_2646F0();
  swift_getWitnessTable();
  sub_260CB0();
  v3 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  sub_2F9C(&qword_318180, &qword_26AFE8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2633D0();
  sub_2F9C(&qword_318188, &qword_26AFF0);
  sub_2F9C(&qword_318190, &qword_26AFF8);
  sub_4AC90();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_263260();
  swift_getWitnessTable();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_261F90();
  sub_4ADA8();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_4B79C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_2EF0(&qword_318288, &unk_27F080);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_4B944(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_2EF0(&qword_318288, &unk_27F080);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[13];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for CustomPickerButtonStyle()
{
  result = qword_3182E8;
  if (!qword_3182E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4BB28()
{
  sub_4BC68(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_4BC68(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_4BCBC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4BC68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_4BCBC()
{
  if (!qword_3182F8)
  {
    sub_40130();
    v0 = sub_261310();
    if (!v1)
    {
      atomic_store(v0, &qword_3182F8);
    }
  }
}

uint64_t sub_4BD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_4BDA0()
{
  result = qword_3183A8;
  if (!qword_3183A8)
  {
    sub_2F9C(&qword_318360, &qword_26B1D0);
    sub_4BE58();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183A8);
  }

  return result;
}

unint64_t sub_4BE58()
{
  result = qword_3183B0;
  if (!qword_3183B0)
  {
    sub_2F9C(&qword_318358, &qword_26B1C8);
    sub_4BEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183B0);
  }

  return result;
}

unint64_t sub_4BEE4()
{
  result = qword_3183B8;
  if (!qword_3183B8)
  {
    sub_2F9C(&qword_318350, &qword_26B1C0);
    sub_4CF70(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183B8);
  }

  return result;
}

unint64_t sub_4BFA0()
{
  result = qword_3183F8;
  if (!qword_3183F8)
  {
    sub_2F9C(&qword_318390, &qword_26B200);
    sub_4C058();
    sub_8E38(&qword_318430, &qword_3183F0, &qword_26B260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183F8);
  }

  return result;
}

unint64_t sub_4C058()
{
  result = qword_318400;
  if (!qword_318400)
  {
    sub_2F9C(&qword_318388, &qword_26B1F8);
    sub_4C110();
    sub_8E38(&qword_318428, &qword_3183E8, &qword_26B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318400);
  }

  return result;
}

unint64_t sub_4C110()
{
  result = qword_318408;
  if (!qword_318408)
  {
    sub_2F9C(&qword_318380, &qword_26B1F0);
    sub_4C1C8();
    sub_8E38(&qword_318420, &qword_3183D8, &qword_26B248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318408);
  }

  return result;
}

unint64_t sub_4C1C8()
{
  result = qword_318410;
  if (!qword_318410)
  {
    sub_2F9C(&qword_318378, &qword_26B1E8);
    sub_4C254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318410);
  }

  return result;
}

unint64_t sub_4C254()
{
  result = qword_318418;
  if (!qword_318418)
  {
    sub_2F9C(&qword_318370, &qword_26B1E0);
    sub_2F9C(&qword_318360, &qword_26B1D0);
    sub_4BDA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318418);
  }

  return result;
}

unint64_t sub_4C31C()
{
  result = qword_318450;
  if (!qword_318450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318450);
  }

  return result;
}

uint64_t sub_4C384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  return sub_264BD0();
}

__n128 sub_4C3C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_4C3D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for SegmentedControl() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  sub_4054(*v5, *(v5 + 8));
  v6 = (v5 + v3[11]);
  v7 = *v6;

  v8 = type metadata accessor for SegmentedControlViewModel();
  (*(*(v1 - 8) + 8))(&v6[*(v8 + 36)], v1);
  v9 = *(v5 + v3[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_4C500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(*(type metadata accessor for SegmentedControl() - 8) + 80);

  return sub_46944(a1, a2, v7, v8, a3);
}

uint64_t sub_4C5A4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_4C5DC(char *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_4C668()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for SegmentedControl() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_4054(*(v0 + v6), *(v0 + v6 + 8));
  v9 = (v0 + v6 + v5[11]);
  v10 = *v9;

  v11 = type metadata accessor for SegmentedControlViewModel();
  v8(v9 + *(v11 + 36), v1);
  v12 = *(v0 + v6 + v5[12] + 8);

  return swift_deallocObject();
}

uint64_t sub_4C7FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(type metadata accessor for SegmentedControl() - 8);
  v8 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_484CC(v8, v3, v4, a1);
}

uint64_t sub_4C928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BD0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_4C960()
{
  result = qword_3184B8;
  if (!qword_3184B8)
  {
    sub_2F9C(&qword_318488, &qword_26B320);
    sub_8E38(&qword_3184C0, &qword_318480, &qword_26B318);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184B8);
  }

  return result;
}

uint64_t sub_4CA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4CAB0()
{
  v1 = sub_2EF0(&qword_3184A0, &qword_26B338);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_4CB48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2EF0(&qword_3184A0, &qword_26B338) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = (v6 + *(v5 + 64));
  v8 = *v7;
  v9 = v7[1];

  return sub_4AA30(a1, v6, v8, v9, a2);
}

unint64_t sub_4CBFC()
{
  result = qword_3184F0;
  if (!qword_3184F0)
  {
    sub_2F9C(&qword_3184E8, &qword_26B4E0);
    sub_4CC88();
    sub_4CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184F0);
  }

  return result;
}

unint64_t sub_4CC88()
{
  result = qword_3184F8;
  if (!qword_3184F8)
  {
    sub_2F9C(&qword_318500, &qword_26B4E8);
    sub_2F9C(&qword_318498, &qword_26B330);
    sub_260B00();
    sub_2F9C(&qword_318490, &qword_26B328);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_2F9C(&qword_318488, &qword_26B320);
    type metadata accessor for CustomPickerButtonStyle();
    sub_4C960();
    sub_4CF70(&qword_3184D8, type metadata accessor for CustomPickerButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    swift_getOpaqueTypeConformance2();
    sub_4CF70(&qword_3184E0, &type metadata accessor for LocalizedText);
    swift_getOpaqueTypeConformance2();
    sub_4CEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3184F8);
  }

  return result;
}

unint64_t sub_4CEC8()
{
  result = qword_318508;
  if (!qword_318508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318508);
  }

  return result;
}

unint64_t sub_4CF1C()
{
  result = qword_318510;
  if (!qword_318510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318510);
  }

  return result;
}

uint64_t sub_4CF70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4CFCC()
{
  result = qword_318570;
  if (!qword_318570)
  {
    sub_2F9C(&qword_318440, &qword_26B268);
    sub_2F9C(&qword_318390, &qword_26B200);
    sub_261FA0();
    sub_4BFA0();
    sub_4CF70(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318570);
  }

  return result;
}

uint64_t sub_4D114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_8198(v2, &v17 - v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_4D314()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for YearInReviewSharableImage() + 20));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_4D470@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for YearInReviewSharableImage();
  sub_8198(v1 + *(v8 + 24), v11, &qword_3173E0, &qword_26B890);
  if (v12 == 1)
  {
    return sub_F7CC(v11, a1);
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t YearInReviewSharableImage.init(content:background:localizedYear:shouldIncludeBranding:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for YearInReviewSharableImage();
  v13 = a6 + v12[5];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a6 + v12[6];
  *v14 = swift_getKeyPath();
  v14[40] = 0;
  sub_F7CC(a1, a6 + v12[7]);
  result = sub_4FDE0(a2, a6 + v12[8]);
  v16 = (a6 + v12[9]);
  *v16 = a3;
  v16[1] = a4;
  *(a6 + v12[10]) = a5;
  return result;
}

uint64_t type metadata accessor for YearInReviewSharableImage()
{
  result = qword_3185F0;
  if (!qword_3185F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t YearInReviewSharableImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318578, &qword_26B640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  *v11 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v11[1] = v12;
  v13 = sub_2EF0(&qword_318580, &qword_26B648);
  sub_4D93C(v1, v11 + *(v13 + 44));
  (*(v4 + 104))(v7, enum case for DynamicTypeSize.large(_:), v3);
  sub_8E38(&qword_318588, &qword_318578, &qword_26B640);
  sub_262B60();
  (*(v4 + 8))(v7, v3);
  sub_8E80(v11, &qword_318578, &qword_26B640);
  v14 = sub_261740();
  LOBYTE(v3) = sub_262500();
  result = sub_2EF0(&qword_318590, &qword_26B650);
  v16 = a1 + *(result + 36);
  *v16 = v14;
  *(v16 + 8) = v3;
  return result;
}

uint64_t sub_4D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_318650, &qword_26B6D8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_2EF0(&qword_318658, &qword_26B6E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  sub_4DB84(&v24 - v17);
  *v11 = sub_261E50();
  *(v11 + 1) = 0x4030000000000000;
  v11[16] = 0;
  v19 = sub_2EF0(&qword_318660, &qword_26B6E8);
  sub_4E81C(a1, &v11[*(v19 + 44)]);
  v20 = sub_262500();
  v21 = &v11[*(v5 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_8198(v18, v16, &qword_318658, &qword_26B6E0);
  sub_8198(v11, v9, &qword_318650, &qword_26B6D8);
  sub_8198(v16, a2, &qword_318658, &qword_26B6E0);
  v22 = sub_2EF0(&qword_318668, &qword_26B6F0);
  sub_8198(v9, a2 + *(v22 + 48), &qword_318650, &qword_26B6D8);
  sub_8E80(v11, &qword_318650, &qword_26B6D8);
  sub_8E80(v18, &qword_318658, &qword_26B6E0);
  sub_8E80(v9, &qword_318650, &qword_26B6D8);
  return sub_8E80(v16, &qword_318658, &qword_26B6E0);
}

uint64_t sub_4DB84@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v99 = sub_2EF0(&qword_3186D0, &qword_26B840);
  v2 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v101 = (&KeyPath - v3);
  v97 = sub_2EF0(&qword_3186D8, &qword_26B848);
  v4 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v6 = &KeyPath - v5;
  v100 = sub_2EF0(&qword_3186E0, &unk_26B850);
  v7 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v98 = &KeyPath - v8;
  v9 = sub_261180();
  v94 = *(v9 - 8);
  *&v95 = v9;
  v10 = *(v94 + 64);
  __chkstk_darwin(v9);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2EF0(&qword_317378, &unk_2698B0);
  v13 = *(*(v96 - 8) + 64);
  v14 = __chkstk_darwin(v96);
  v16 = (&KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &KeyPath - v17;
  v19 = sub_2EF0(&qword_316D98, &unk_269120);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &KeyPath - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &KeyPath - v24;
  v26 = type metadata accessor for PageBackground(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &KeyPath - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(type metadata accessor for YearInReviewSharableImage() + 32);
  *&v93 = v1;
  sub_50604(v1 + v30, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v49 = *v29;
      v48 = *(v29 + 1);
      v50 = sub_2EF0(&qword_316DA0, &unk_277640);
      v51 = *(v50 + 48);
      v52 = *&v29[*(v50 + 64)];

      v53 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v55 = v54;
      sub_4F420(v49, &v110);
      v122 = v114;
      v123 = v115;
      v124 = v116;
      LOWORD(v125) = v117;
      v118 = v110;
      v119 = v111;
      v120 = v112;
      v121 = v113;
      v126 = v110;
      v127 = v111;
      v128 = v112;
      v129 = v113;
      v130 = v114;
      v131 = v115;
      v132 = v116;
      LOWORD(v133) = v117;
      sub_8198(&v118, &v134, &qword_3186E8, &qword_26B860);
      sub_8E80(&v126, &qword_3186E8, &qword_26B860);

      v56 = v101;
      *v101 = v53;
      v56[1] = v55;
      v57 = v123;
      *(v56 + 5) = v122;
      *(v56 + 6) = v57;
      *(v56 + 7) = v124;
      *(v56 + 64) = v125;
      v58 = v119;
      *(v56 + 1) = v118;
      *(v56 + 2) = v58;
      v59 = v121;
      *(v56 + 3) = v120;
      *(v56 + 4) = v59;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_3186F0, &qword_26B868);
      sub_50668();
      sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868);
      sub_261F80();
      return (*(v94 + 8))(&v29[v51], v95);
    }

    v32 = *(v29 + 5);
    v122 = *(v29 + 4);
    v123 = v32;
    v33 = *(v29 + 7);
    v124 = *(v29 + 6);
    v125 = v33;
    v34 = *(v29 + 1);
    v118 = *v29;
    v119 = v34;
    v35 = *(v29 + 3);
    v120 = *(v29 + 2);
    v121 = v35;
    v132 = v124;
    v133 = v33;
    v130 = v122;
    v131 = v32;
    v128 = v120;
    v129 = v35;
    v126 = v118;
    v127 = v34;
    v36 = v6;
    if (sub_2F8B8(&v126))
    {
      sub_2F8C4(&v118);
      v37 = swift_allocObject();
      *(v37 + 16) = 0xD00000000000002CLL;
      *(v37 + 24) = 0x80000000002909C0;
      *&v134 = sub_1F458;
      *(&v134 + 1) = v37;
      v136 = 0;
      v135 = 0uLL;
      v137 = 1;
      sub_2EF0(&qword_318718, &unk_26B878);
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_318710, &qword_318718, &unk_26B878);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      sub_261F80();
      v38 = v110;
      v39 = v111;
      v40 = v112;
      v41 = BYTE8(v112);
    }

    else
    {
      v68 = sub_2F950(&v126);
      v69 = v68[5];
      if (v69)
      {
        v70 = v68[4];
        v71 = v68[5];
      }

      else
      {
        v70 = *v68;
        v71 = v68[1];
      }

      v72 = v69 != 0;

      sub_4D470(&v134);
      v73 = *(&v135 + 1);
      v74 = v136;
      sub_2E18(&v134, *(&v135 + 1));
      sub_2F8C4(&v118);
      v103 = v70;
      v104 = v71;
      LOBYTE(v105) = v72;
      v115 = v123;
      v116 = v124;
      v117 = v125;
      v110 = v118;
      v111 = v119;
      v112 = v120;
      v113 = v121;
      v114 = v122;
      v75 = sub_2F950(&v110);
      v76 = *(v75 + 120);
      v77 = v76 * *(v75 + 16);
      v78 = sub_4D314();
      v79 = (*(v74 + 8))(&v103, v73, v74, v77, v76, v78);
      sub_6204();
      v80 = type metadata accessor for ImageResourceLoader();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      sub_2EF0(&qword_318728, &qword_26DBF0);
      v84 = swift_allocObject();
      *(v84 + 28) = 0;
      *(v84 + 16) = 0;
      *(v84 + 24) = 0;
      *(v83 + 24) = v84;
      sub_2603B0();
      v109 = v83;
      sub_2631D0();
      v85 = v103;
      v86 = v104;
      sub_3080(&v134);
      v103 = sub_4F0CC;
      v104 = 0;
      v105 = v79;
      v106 = v85;
      v107 = v86;
      v108 = 0;
      sub_2EF0(&qword_318718, &unk_26B878);
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_8E38(&qword_318710, &qword_318718, &unk_26B878);
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      sub_261F80();
      v38 = v134;
      v39 = v135;
      v40 = v136;
      v41 = v137;
    }

    v95 = v38;
    v93 = v39;
    *v36 = v38;
    *(v36 + 1) = v39;
    *(v36 + 4) = v40;
    v36[40] = v41;
    swift_storeEnumTagMultiPayload();
    v97 = v95;
    v94 = v93;
    *&v95 = *(&v95 + 1);
    v87 = *(&v93 + 1);
    sub_50810(v97, *(&v95 + 1), v93, *(&v93 + 1), v40, v41);
    sub_2EF0(&qword_318708, &qword_26B870);
    sub_2F5A8();
    sub_506F4();
    v88 = v98;
    sub_261F80();
    sub_8198(v88, v101, &qword_3186E0, &unk_26B850);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3186F0, &qword_26B868);
    sub_50668();
    sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868);
    sub_261F80();
    sub_50874(v97, v95, v94, v87, v40, v41);
    v67 = v88;
    v65 = &qword_3186E0;
    v66 = &unk_26B850;
  }

  else
  {
    v91 = v6;
    v92 = v18;
    v42 = v25;
    v43 = *v29;
    v44 = sub_2EF0(&qword_316DA8, &qword_269130);
    sub_22148(&v29[*(v44 + 48)], v42, &qword_316D98, &unk_269120);
    KeyPath = swift_getKeyPath();
    v90 = v42;
    sub_8198(v42, v23, &qword_316D98, &unk_269120);
    v45 = v94;
    v46 = v95;
    v47 = *(v94 + 48);
    if (v47(v23, 1, v95) == 1)
    {
      sub_4D114(v12);
      if (v47(v23, 1, v46) != 1)
      {
        sub_8E80(v23, &qword_316D98, &unk_269120);
      }
    }

    else
    {
      (*(v45 + 32))(v12, v23, v46);
    }

    v61 = (v16 + *(v96 + 36));
    v62 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
    (*(v45 + 32))(v61 + *(v62 + 28), v12, v46);
    *v61 = KeyPath;
    *v16 = v43;
    v63 = v92;
    sub_22148(v16, v92, &qword_317378, &unk_2698B0);
    sub_8198(v63, v91, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();

    sub_2EF0(&qword_318708, &qword_26B870);
    sub_2F5A8();
    sub_506F4();
    v64 = v98;
    sub_261F80();
    sub_8198(v64, v101, &qword_3186E0, &unk_26B850);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3186F0, &qword_26B868);
    sub_50668();
    sub_8E38(&qword_318720, &qword_3186F0, &qword_26B868);
    sub_261F80();

    sub_8E80(v64, &qword_3186E0, &unk_26B850);
    sub_8E80(v92, &qword_317378, &unk_2698B0);
    v65 = &qword_316D98;
    v66 = &unk_269120;
    v67 = v90;
  }

  return sub_8E80(v67, v65, v66);
}