uint64_t sub_119D08@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v5 = sub_2607D0();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_264010();
  v69 = *(v72 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v72);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_263FA0();
  v68 = *(v73 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v73);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = sub_2EF0(&qword_31C238, &qword_274960);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v63 - v22;
  v24 = sub_260680();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v74);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v29 = swift_dynamicCast();
  v30 = *(v25 + 56);
  if (v29)
  {
    v63 = a3;
    v30(v23, 0, 1, v24);
    (*(v25 + 32))(v28, v23, v24);
    sub_260660();
    (*(v13 + 104))(v17, enum case for ContentKind.manga(_:), v12);
    v31 = sub_260710();
    v32 = *(v13 + 8);
    v32(v17, v12);
    v32(v19, v12);
    if (v31)
    {
      v33 = v71;
      sub_263F90();
      v35 = v69;
      v34 = v70;
      v36 = v72;
      (*(v69 + 104))(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
      sub_260B80();
      (*(v35 + 8))(v34, v36);
      (*(v68 + 8))(v33, v73);
      return (*(v25 + 8))(v28, v24);
    }

    (*(v25 + 8))(v28, v24);
  }

  else
  {
    v30(v23, 1, 1, v24);
    sub_8E80(v23, &qword_31C238, &qword_274960);
  }

  v38 = a2[4];
  sub_2E18(a2, a2[3]);
  v39 = v64;
  sub_260940();
  v40 = (*(v65 + 88))(v39, v66);
  if (v40 != enum case for SeriesOrdering.notAvailable(_:) && v40 != enum case for SeriesOrdering.nonSeries(_:))
  {
    if (v40 == enum case for SeriesOrdering.orderedSeries(_:))
    {
      v41 = a2[4];
      sub_2E18(a2, a2[3]);
      v42 = sub_260930();
      if ((v44 & 0x100000000) == 0)
      {
        v45 = HIDWORD(v42);
        v46 = HIWORD(v42);
        v47 = v43 >> 16;
        v48 = HIDWORD(v43);
        v49 = HIWORD(v43);
        v73 = v44 >> 16;
        v50 = v42;
        v51 = v43;
        v52 = v44;
        v53 = swift_allocObject();
        *(v53 + 16) = v50;
        *(v53 + 20) = v45;
        *(v53 + 22) = v46;
        *(v53 + 24) = v51;
        *(v53 + 26) = v47;
        *(v53 + 28) = v48;
        *(v53 + 30) = v49;
        *(v53 + 32) = v52;
        *(v53 + 34) = v73;
        *(v53 + 36) = v67 & 1;
        sub_260B70();
      }
    }

    else if (v40 != enum case for SeriesOrdering.unorderedSeries(_:))
    {
      result = sub_264CD0();
      __break(1u);
      return result;
    }
  }

  v54 = (v69 + 104);
  v55 = (v69 + 8);
  v56 = (v68 + 8);
  if (v67)
  {
    v57 = v71;
    sub_263F90();
    v58 = v70;
    v59 = v72;
    (*v54)(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
    sub_260B80();
    (*v55)(v58, v59);
    return (*v56)(v57, v73);
  }

  else
  {
    v60 = v71;
    sub_263F90();
    v61 = v70;
    v62 = v72;
    (*v54)(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
    sub_260B80();
    (*v55)(v61, v62);
    return (*v56)(v60, v73);
  }
}

uint64_t sub_11A54C@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v5 = sub_2607D0();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_264010();
  v69 = *(v72 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v72);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_263FA0();
  v68 = *(v73 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v73);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260720();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = sub_2EF0(&qword_31C238, &qword_274960);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v63 - v22;
  v24 = sub_260680();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a2, v74);
  sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v29 = swift_dynamicCast();
  v30 = *(v25 + 56);
  if (v29)
  {
    v63 = a3;
    v30(v23, 0, 1, v24);
    (*(v25 + 32))(v28, v23, v24);
    sub_260660();
    (*(v13 + 104))(v17, enum case for ContentKind.manga(_:), v12);
    v31 = sub_260710();
    v32 = *(v13 + 8);
    v32(v17, v12);
    v32(v19, v12);
    if (v31)
    {
      v33 = v71;
      sub_263F90();
      v35 = v69;
      v34 = v70;
      v36 = v72;
      (*(v69 + 104))(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
      sub_260B80();
      (*(v35 + 8))(v34, v36);
      (*(v68 + 8))(v33, v73);
      return (*(v25 + 8))(v28, v24);
    }

    (*(v25 + 8))(v28, v24);
  }

  else
  {
    v30(v23, 1, 1, v24);
    sub_8E80(v23, &qword_31C238, &qword_274960);
  }

  v38 = a2[4];
  sub_2E18(a2, a2[3]);
  v39 = v64;
  sub_260940();
  v40 = (*(v65 + 88))(v39, v66);
  if (v40 != enum case for SeriesOrdering.notAvailable(_:) && v40 != enum case for SeriesOrdering.nonSeries(_:))
  {
    if (v40 == enum case for SeriesOrdering.orderedSeries(_:))
    {
      v41 = a2[4];
      sub_2E18(a2, a2[3]);
      v42 = sub_260930();
      if ((v44 & 0x100000000) == 0)
      {
        v45 = HIDWORD(v42);
        v46 = HIWORD(v42);
        v47 = v43 >> 16;
        v48 = HIDWORD(v43);
        v49 = HIWORD(v43);
        v73 = v44 >> 16;
        v50 = v42;
        v51 = v43;
        v52 = v44;
        v53 = swift_allocObject();
        *(v53 + 16) = v50;
        *(v53 + 20) = v45;
        *(v53 + 22) = v46;
        *(v53 + 24) = v51;
        *(v53 + 26) = v47;
        *(v53 + 28) = v48;
        *(v53 + 30) = v49;
        *(v53 + 32) = v52;
        *(v53 + 34) = v73;
        *(v53 + 36) = v67 & 1;
        sub_260B70();
      }
    }

    else if (v40 != enum case for SeriesOrdering.unorderedSeries(_:))
    {
      result = sub_264CD0();
      __break(1u);
      return result;
    }
  }

  v54 = (v69 + 104);
  v55 = (v69 + 8);
  v56 = (v68 + 8);
  if (v67)
  {
    v57 = v71;
    sub_263F90();
    v58 = v70;
    v59 = v72;
    (*v54)(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
    sub_260B80();
    (*v55)(v58, v59);
    return (*v56)(v57, v73);
  }

  else
  {
    v60 = v71;
    sub_263F90();
    v61 = v70;
    v62 = v72;
    (*v54)(v70, enum case for LocalizerLookupStrategy.default(_:), v72);
    sub_260B80();
    (*v55)(v61, v62);
    return (*v56)(v60, v73);
  }
}

uint64_t sub_11AD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27[3] = a5;
  v6 = sub_263FA0();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v28 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_263D20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_264A30(v15);
  v17 = v16;
  (*(v10 + 104))(v13, enum case for LocalizerContext.standalone(_:), v9);
  v18 = Localizer.decimal(forNumber:in:)();
  v20 = v19;

  (*(v10 + 8))(v13, v9);
  v21 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  *(inited + 32) = 0xD000000000000014;
  v23 = inited + 32;
  *(inited + 40) = 0x8000000000292A30;
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(v23, &qword_31ACF8, &qword_273580);
  v24 = v28;
  sub_263F90();
  v25 = sub_264250();

  (*(v29 + 8))(v24, v30);
  return v25;
}

uint64_t sub_11B108(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v38 = a5;
  LODWORD(v37) = a4;
  v36 = sub_264010();
  v35 = *(v36 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v36);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263FA0();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_263D20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_264A30(v18);
  v20 = v19;
  (*(v13 + 104))(v16, enum case for LocalizerContext.standalone(_:), v12);
  v21 = Localizer.decimal(forNumber:in:)();
  v23 = v22;

  (*(v13 + 8))(v16, v12);
  v24 = a1[3];
  v37 = a1[4];
  sub_2E18(a1, v24);
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  if (v38)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267D30;
    *(inited + 32) = 0xD000000000000014;
    v26 = inited + 32;
    *(inited + 40) = 0x8000000000292A30;
    *(inited + 48) = v21;
    *(inited + 56) = v23;
    sub_F13C(inited);
    swift_setDeallocating();
    sub_8E80(v26, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v27 = sub_264250();
  }

  else
  {
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_267D30;
    *(v28 + 32) = 0xD000000000000014;
    v29 = v28 + 32;
    *(v28 + 40) = 0x8000000000292A30;
    *(v28 + 48) = v21;
    *(v28 + 56) = v23;
    sub_F13C(v28);
    swift_setDeallocating();
    sub_8E80(v29, &qword_31ACF8, &qword_273580);
    sub_263F90();
    v30 = v35;
    v31 = v34;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for LocalizerLookupStrategy.default(_:), v36);
    v27 = sub_264200();

    (*(v30 + 8))(v31, v32);
  }

  (*(v39 + 8))(v11, v40);
  return v27;
}

uint64_t sub_11B56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  *a2 = v5;
  return result;
}

uint64_t sub_11B5EC(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_261000();
}

unint64_t sub_11B668()
{
  result = qword_31E980;
  if (!qword_31E980)
  {
    sub_2F9C(&qword_31E978, &qword_279088);
    sub_11B8B0(&qword_31A2D0, type metadata accessor for ButtonView);
    sub_11B724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31E980);
  }

  return result;
}

unint64_t sub_11B724()
{
  result = qword_318DA0;
  if (!qword_318DA0)
  {
    sub_2F9C(&qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DA0);
  }

  return result;
}

uint64_t sub_11B788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_11B7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonViewModel.Content(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonViewModel.ActionKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B8B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11B930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_11B9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_11BA40()
{
  result = type metadata accessor for QuickActionBuyButtonViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_11BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_11BC08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_2EF0(&qword_31A040, &unk_279210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_11BD3C()
{
  type metadata accessor for ButtonViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_44744();
    if (v1 <= 0x3F)
    {
      sub_11BEBC(319, &qword_31EA88, &unk_31EA90, &unk_279240, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_22944();
        if (v3 <= 0x3F)
        {
          sub_11BEBC(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_11BEBC(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_95884();
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

void sub_11BEBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_11BF20()
{
  sub_2F9C(&qword_31E978, &qword_279088);
  sub_11B668();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_11BFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AudiobookCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for AudiobookCoverEffect() + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for AudiobookCoverEffect()
{
  result = qword_31EB80;
  if (!qword_31EB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11C110@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AudiobookCoverEffect();
  sub_8198(v1 + *(v12 + 24), v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t AudiobookCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for AudiobookCoverEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_11C578(v3, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_11C5E0(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  result = (*(v7 + 32))(v16 + v15, v10, v6);
  *a2 = sub_11C644;
  a2[1] = v16;
  return result;
}

uint64_t sub_11C4F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_261420();
  v7 = v6;
  v9 = v8;
  *a3 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a3[1] = v10;
  v11 = sub_2EF0(&qword_31EBD0, &qword_279310);
  return sub_11C648(a1, a2, a3 + *(v11 + 44), v7, v9);
}

uint64_t sub_11C578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiobookCoverEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudiobookCoverEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_31EBD8, &qword_279318);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_2EF0(&qword_31EBE0, &qword_279320);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = (&v34 - v23);
  *v24 = sub_263560();
  v24[1] = v25;
  v26 = sub_2EF0(&qword_31EBE8, &unk_279328);
  sub_11C91C(a1, a2, v24 + *(v26 + 44), a4, a5);
  sub_11D40C(a2, a1, v17, a5);
  v27 = *(a1 + 8);
  v28 = &v17[*(v11 + 44)];
  v29 = *(sub_2617E0() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_261DD0();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v27;
  *(v28 + 1) = v27;
  *&v28[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v24, v22, &qword_31EBE0, &qword_279320);
  sub_8198(v17, v15, &qword_31EBD8, &qword_279318);
  sub_8198(v22, a3, &qword_31EBE0, &qword_279320);
  v32 = sub_2EF0(&qword_31EBF0, &qword_279338);
  sub_8198(v15, a3 + *(v32 + 48), &qword_31EBD8, &qword_279318);
  sub_8E80(v17, &qword_31EBD8, &qword_279318);
  sub_8E80(v24, &qword_31EBE0, &qword_279320);
  sub_8E80(v15, &qword_31EBD8, &qword_279318);
  return sub_8E80(v22, &qword_31EBE0, &qword_279320);
}

uint64_t sub_11C91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v112 = a2;
  v124 = a3;
  v8 = sub_2EF0(&qword_31EC08, &qword_279390);
  v9 = *(v8 - 8);
  v115 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v111 = v97 - v11;
  v12 = sub_2EF0(&qword_31EC10, &qword_279398);
  v13 = *(v12 - 8);
  v123 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v120 = v97 - v15;
  v16 = sub_2EF0(&qword_31EC18, &qword_2793A0);
  v17 = *(v16 - 8);
  v121 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v118 = v97 - v19;
  v20 = sub_2EF0(&qword_31EC20, &qword_2793A8);
  v21 = *(v20 - 8);
  v119 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v116 = v97 - v23;
  v24 = sub_2EF0(&qword_31EC28, &unk_2793B0);
  v25 = *(v24 - 8);
  v114 = v24 - 8;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24 - 8);
  v122 = v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v113 = v97 - v30;
  __chkstk_darwin(v29);
  v117 = v97 - v31;
  v108 = sub_261180();
  v32 = *(v108 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v108);
  v36 = v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = v97 - v37;
  v39 = sub_2EF0(&qword_3192B0, &unk_28E820);
  v40 = v39 - 8;
  v41 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v43 = v97 - v42;
  v44 = sub_2EF0(&qword_3192B8, &unk_2793C0);
  v45 = *(v44 - 8);
  v103 = v44 - 8;
  v46 = *(v45 + 64);
  __chkstk_darwin(v44 - 8);
  v102 = v97 - v47;
  v48 = sub_2EF0(&qword_3192C0, &unk_28E830);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  v51 = __chkstk_darwin(v48);
  v110 = v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = v97 - v54;
  __chkstk_darwin(v53);
  v101 = v97 - v56;
  v57 = a1;
  v58 = *(a1 + 8);
  v109 = sub_2617E0();
  v59 = *(v109 + 20);
  v60 = enum case for RoundedCornerStyle.continuous(_:);
  v106 = enum case for RoundedCornerStyle.continuous(_:);
  v105 = sub_261DD0();
  v61 = *(v105 - 8);
  v104 = *(v61 + 104);
  v107 = v61 + 104;
  v104(&v43[v59], v60, v105);
  *v43 = v58;
  *(v43 + 1) = v58;
  v62 = sub_262F80();
  v63 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  *&v43[*(v63 + 52)] = v62;
  *&v43[*(v63 + 56)] = 256;
  v64 = *v57;
  v100 = v57;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v65 = &v43[*(sub_2EF0(&qword_3192D0, &qword_28E840) + 36)];
  v66 = v126;
  *v65 = v125;
  *(v65 + 1) = v66;
  *(v65 + 2) = v127;
  v67 = &v43[*(v40 + 44)];
  *v67 = 0.0;
  v67[1] = (1.0 - v64) * a5 * -0.25;
  v68 = v38;
  sub_11C110(v38);
  v99 = enum case for ColorScheme.dark(_:);
  v98 = v32[13];
  v69 = v108;
  v98(v36);
  v70 = v68;
  LOBYTE(v68) = sub_261170();
  v71 = v32[1];
  v97[1] = v32 + 1;
  v71(v36, v69);
  v71(v70, v69);
  if (v68)
  {
    v72 = 0.9;
  }

  else
  {
    v72 = 0.75;
  }

  v73 = v102;
  sub_22148(v43, v102, &qword_3192B0, &unk_28E820);
  *(v73 + *(v103 + 44)) = v72;
  sub_22148(v73, v55, &qword_3192B8, &unk_2793C0);
  v74 = &v55[*(v49 + 44)];
  *v74 = a4 * 0.1;
  v74[8] = 0;
  v75 = v101;
  sub_22148(v55, v101, &qword_3192C0, &unk_28E830);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v76 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v77 = v111;
  (*(*(v76 - 8) + 16))(v111, v112, v76);
  v78 = (v77 + *(sub_2EF0(&qword_31EBF8, &qword_279378) + 36));
  v79 = v129;
  *v78 = v128;
  v78[1] = v79;
  v78[2] = v130;
  v80 = (v77 + *(v115 + 44));
  v104(&v80[*(v109 + 20)], v106, v105);
  *v80 = v58;
  *(v80 + 1) = v58;
  *&v80[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_11C110(v70);
  (v98)(v36, v99, v69);
  LOBYTE(v80) = sub_261170();
  v71(v36, v69);
  v71(v70, v69);
  if (v80)
  {
    v81 = 0.15;
  }

  else
  {
    v81 = 0.5;
  }

  v82 = v120;
  sub_22148(v77, v120, &qword_31EC08, &qword_279390);
  *(v82 + *(v123 + 44)) = v81;
  v83 = v82;
  v84 = v118;
  sub_22148(v83, v118, &qword_31EC10, &qword_279398);
  v85 = v84 + *(v121 + 44);
  *v85 = a4 * 0.1;
  *(v85 + 8) = 0;
  v86 = v116;
  sub_22148(v84, v116, &qword_31EC18, &qword_2793A0);
  *(v86 + *(v119 + 44)) = 0x3FF199999999999ALL;
  v87 = *(v114 + 44);
  v88 = enum case for BlendMode.color(_:);
  v89 = sub_263640();
  v90 = v113;
  (*(*(v89 - 8) + 104))(&v113[v87], v88, v89);
  sub_22148(v86, v90, &qword_31EC20, &qword_2793A8);
  v91 = v117;
  sub_22148(v90, v117, &qword_31EC28, &unk_2793B0);
  v92 = v110;
  sub_8198(v75, v110, &qword_3192C0, &unk_28E830);
  v93 = v122;
  sub_8198(v91, v122, &qword_31EC28, &unk_2793B0);
  v94 = v124;
  sub_8198(v92, v124, &qword_3192C0, &unk_28E830);
  v95 = sub_2EF0(&qword_31EC30, &unk_2793E0);
  sub_8198(v93, v94 + *(v95 + 48), &qword_31EC28, &unk_2793B0);
  sub_8E80(v91, &qword_31EC28, &unk_2793B0);
  sub_8E80(v75, &qword_3192C0, &unk_28E830);
  sub_8E80(v93, &qword_31EC28, &unk_2793B0);
  return sub_8E80(v92, &qword_3192C0, &unk_28E830);
}

uint64_t sub_11D40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v123 = a2;
  v140 = a3;
  v136 = sub_261180();
  v137 = *(v136 - 8);
  v6 = *(v137 + 64);
  v7 = __chkstk_darwin(v136);
  v134 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v130 = v115 - v9;
  v10 = sub_2EF0(&qword_319220, &unk_279340);
  v11 = *(v10 - 8);
  v147 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v121 = (v115 - v13);
  v14 = sub_2EF0(&qword_319228, &unk_28E790);
  v15 = *(v14 - 8);
  v133 = v14 - 8;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v132 = v115 - v17;
  v18 = sub_2EF0(&qword_319230, &unk_279350);
  v19 = *(v18 - 8);
  v131 = v18 - 8;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v129 = v115 - v21;
  v22 = sub_2EF0(&qword_319238, &unk_28E7A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = v22 - 8;
  v119 = v22 - 8;
  __chkstk_darwin(v22 - 8);
  v26 = v115 - v25;
  v27 = sub_2EF0(&qword_319240, &unk_279360);
  v28 = *(v27 - 8);
  v127 = v27 - 8;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v126 = v115 - v30;
  v31 = sub_2EF0(&qword_319248, &unk_28E7B0);
  v32 = *(v31 - 8);
  v128 = v31 - 8;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31 - 8);
  v139 = v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v138 = v115 - v37;
  v38 = __chkstk_darwin(v36);
  v125 = v115 - v39;
  v40 = __chkstk_darwin(v38);
  v124 = v115 - v41;
  __chkstk_darwin(v40);
  v144 = v115 - v42;
  v43 = sub_2EF0(&qword_319250, &qword_279370);
  v44 = v43 - 8;
  v45 = *(*(v43 - 8) + 64);
  v46 = __chkstk_darwin(v43);
  v135 = v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v49 = v115 - v48;
  v50 = sub_2EF0(&qword_31EBF8, &qword_279378);
  v51 = v50 - 8;
  v52 = *(*(v50 - 8) + 64);
  v53 = __chkstk_darwin(v50);
  v145 = v115 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = v115 - v55;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v57 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v58 = *(*(v57 - 8) + 16);
  v146 = v56;
  v58(v56, a1, v57);
  v59 = &v56[*(v51 + 44)];
  v60 = v155;
  *v59 = v154;
  *(v59 + 1) = v60;
  *(v59 + 2) = v156;
  sub_2EF0(&qword_319268, &qword_279380);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_269100;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v61 + 32) = sub_263450();
  *(v61 + 40) = v62;
  sub_262F80();
  sub_263000();

  *(v61 + 48) = sub_263450();
  *(v61 + 56) = v63;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v118 = a4;
  sub_2613A0();
  v64 = *(v44 + 44);
  v65 = enum case for BlendMode.softLight(_:);
  v142 = sub_263640();
  v66 = *(v142 - 8);
  v141 = *(v66 + 104);
  v67 = v66 + 104;
  v141(&v49[v64], v65, v142);
  v115[1] = v67;
  v68 = v151;
  v143 = v49;
  *(v49 + 2) = v150;
  *(v49 + 3) = v68;
  *(v49 + 4) = v152;
  v69 = v153;
  v70 = v149;
  *v49 = v148;
  *(v49 + 1) = v70;
  *(v49 + 10) = v69;
  *(v49 + 11) = 0x3FD999999999999ALL;
  v71 = *(v123 + 8);
  v122 = sub_2617E0();
  v72 = *(v122 + 20);
  v73 = enum case for RoundedCornerStyle.continuous(_:);
  v117 = enum case for RoundedCornerStyle.continuous(_:);
  v74 = sub_261DD0();
  v75 = *(v74 - 8);
  v116 = *(v75 + 104);
  v120 = v75 + 104;
  v116(&v26[v72], v73, v74);
  *v26 = v71;
  *(v26 + 1) = v71;
  v76 = v26;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v77 = &v26[*(v24 + 44)];
  v78 = v158;
  *v77 = v157;
  *(v77 + 1) = v78;
  *(v77 + 2) = v159;
  v79 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v80 = v121;
  v81 = v121 + *(v147 + 44);
  sub_261230();

  *v80 = v79;
  v82 = v130;
  sub_11C110(v130);
  v83 = v137;
  v84 = v134;
  v85 = v136;
  (*(v137 + 104))(v134, enum case for ColorScheme.dark(_:), v136);
  v86 = v84;
  LOBYTE(v84) = sub_261170();
  v87 = *(v83 + 8);
  v87(v86, v85);
  v87(v82, v85);
  if (v84)
  {
    v88 = 0.15;
  }

  else
  {
    v88 = 0.5;
  }

  v89 = v80;
  v90 = v132;
  sub_22148(v89, v132, &qword_319220, &unk_279340);
  v91 = v133;
  *(v90 + *(v133 + 44)) = v88;
  v92 = v131;
  v93 = v129;
  v141(&v129[*(v131 + 44)], enum case for BlendMode.screen(_:), v142);
  sub_22148(v90, v93, &qword_319228, &unk_28E790);
  v94 = v127;
  v95 = v126;
  sub_22148(v93, &v126[*(v127 + 44)], &qword_319230, &unk_279350);
  sub_22148(v76, v95, &qword_319238, &unk_28E7A0);
  v96 = v95;
  v97 = v124;
  sub_22148(v96, v124, &qword_319240, &unk_279360);
  v98 = v128;
  *(v97 + *(v128 + 44)) = 1;
  v99 = v144;
  sub_22148(v97, v144, &qword_319248, &unk_28E7B0);
  v100 = v125;
  v116(&v125[*(v122 + 20)], v117, v74);
  *v100 = v71;
  v100[1] = v71;
  v101 = v100;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v102 = (v100 + *(v119 + 44));
  v103 = v161;
  *v102 = v160;
  v102[1] = v103;
  v102[2] = v162;
  v104 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v105 = (v100 + *(v94 + 44));
  v106 = v105 + *(v147 + 44);
  sub_261230();

  *v105 = v104;
  *(v105 + *(v91 + 44)) = 1048576000;
  v141(v105 + *(v92 + 44), enum case for BlendMode.darken(_:), v142);
  *(v100 + *(v98 + 44)) = 1;
  v107 = v145;
  sub_8198(v146, v145, &qword_31EBF8, &qword_279378);
  v108 = v135;
  sub_8198(v143, v135, &qword_319250, &qword_279370);
  v109 = v138;
  sub_8198(v99, v138, &qword_319248, &unk_28E7B0);
  v110 = v139;
  sub_8198(v101, v139, &qword_319248, &unk_28E7B0);
  v111 = v107;
  v112 = v140;
  sub_8198(v111, v140, &qword_31EBF8, &qword_279378);
  v113 = sub_2EF0(&qword_31EC00, &qword_279388);
  sub_8198(v108, v112 + v113[12], &qword_319250, &qword_279370);
  sub_8198(v109, v112 + v113[16], &qword_319248, &unk_28E7B0);
  sub_8198(v110, v112 + v113[20], &qword_319248, &unk_28E7B0);
  sub_8E80(v101, &qword_319248, &unk_28E7B0);
  sub_8E80(v144, &qword_319248, &unk_28E7B0);
  sub_8E80(v143, &qword_319250, &qword_279370);
  sub_8E80(v146, &qword_31EBF8, &qword_279378);
  sub_8E80(v110, &qword_319248, &unk_28E7B0);
  sub_8E80(v109, &qword_319248, &unk_28E7B0);
  sub_8E80(v108, &qword_319250, &qword_279370);
  return sub_8E80(v145, &qword_31EBF8, &qword_279378);
}

uint64_t sub_11E194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11C578(v5, v16);
  (*(v9 + 16))(v13, a1, v8);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + *(v9 + 80)) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_11C5E0(v16, v19 + v17);
  result = (*(v9 + 32))(v19 + v18, v13, v8);
  *a3 = sub_11E84C;
  a3[1] = v19;
  return result;
}

uint64_t sub_11E370(uint64_t a1)
{
  result = sub_11E564(&qword_31EB20, type metadata accessor for AudiobookCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_11E3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_11E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_11E500()
{
  result = qword_31EBC0;
  if (!qword_31EBC0)
  {
    sub_2F9C(&qword_31EBC8, &qword_279308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EBC0);
  }

  return result;
}

uint64_t sub_11E564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11E5AC()
{
  v1 = (type metadata accessor for AudiobookCoverEffect() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_31EAD8, &qword_279288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v1[8];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v8 + v2, v9);
  }

  else
  {
    v10 = *(v8 + v2);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_11E758@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AudiobookCoverEffect() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_2EF0(&qword_31EAD8, &qword_279288) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_11C4F8(v1 + v4, v7, a1);
}

uint64_t RefreshSeriesUberHeaderAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RefreshSeriesUberHeaderAction() + 20);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RefreshSeriesUberHeaderAction()
{
  result = qword_31EC90;
  if (!qword_31EC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11E924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_263AF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_11E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_263AF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_11EA6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_263AF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_11EB10()
{
  result = sub_11EB94();
  if (v1 <= 0x3F)
  {
    result = sub_263AF0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_11EB94()
{
  result = qword_31C7E8;
  if (!qword_31C7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_31C7E8);
  }

  return result;
}

uint64_t FanView.init(model:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  type metadata accessor for ProfileRestrictions();
  sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  result = sub_261900();
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v3;
  return result;
}

BOOL FanView.isCompact.getter()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    v7 = *v0;
  }

  else
  {
    v8 = *v0;

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v6, 0);
    (*(v2 + 8))(v5, v1);
    v7 = v11[15];
  }

  return v7 == 0;
}

uint64_t FanView.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = *(v1 + 4);
  v8 = v1[1];
  v37 = *v1;
  v38 = v8;
  v43 = v39;
  v33 = v39;
  v45 = *(v1 + 8);
  v9 = *v1;
  v44 = *v1;
  if (v45 == 1)
  {
    v10 = v9;
    v32 = v9;
    sub_11F1A4(&v43, &v40);
  }

  else
  {
    sub_11F1A4(&v43, &v40);
    sub_11F200(&v44, &v40);
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v44, &qword_31ECC8, &qword_279478);
    (*(v4 + 8))(v7, v3);
    v10 = v32;
  }

  sub_196094(v10 == 0, &v34);

  v41 = v35;
  v42 = v36;
  v12 = v35;
  v40 = v34;
  v13 = v36;
  v14 = *(v43 + 16);
  *a1 = v34;
  a1[1] = v12;
  a1[2] = v13;
  v15 = *(sub_2EF0(&qword_31ECD0, &unk_279480) + 44);
  v30 = 0;
  v31 = v14;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = v38;
  *(v16 + 16) = v37;
  *(v16 + 32) = v17;
  *(v16 + 48) = v39;
  v18 = v41;
  *(v16 + 56) = v40;
  *(v16 + 72) = v18;
  *(v16 + 88) = v42;
  sub_11F910(&v40, v29);
  sub_11F96C(&v37, v29);
  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_2EF0(&qword_31ECD8, &qword_2794A8);
  sub_C092C();
  sub_11F9A4();
  sub_2633B0();
  KeyPath = swift_getKeyPath();
  v29[0] = 0;
  v20 = swift_getKeyPath();
  LOBYTE(v30) = 0;
  v21 = swift_getKeyPath();
  v28 = 0;
  v22 = swift_getKeyPath();
  v27[0] = 0;
  v23 = v29[0];
  LOBYTE(v15) = v30;
  v24 = v28;
  v25 = a1 + *(sub_2EF0(&qword_31ED08, &qword_279560) + 36);
  *v25 = KeyPath;
  v25[8] = v23;
  *(v25 + 2) = v20;
  v25[24] = v15;
  *(v25 + 4) = v21;
  v25[40] = v24;
  *(v25 + 6) = v22;
  v25[56] = 0;
  *(v25 + 57) = 1;
  result = sub_2EF0(&qword_31ED10, &qword_279568);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_11F200(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31ECC8, &qword_279478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11F270@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v7 = sub_261FA0();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2EF0(&qword_31BF28, &qword_272030);
  v11 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v13 = &v46 - v12;
  v14 = sub_2EF0(&qword_31ECF0, &qword_2794B0);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = sub_2EF0(&qword_31ECD8, &qword_2794A8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46 - v20;
  v22 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = a2[4];
  if (v22 >= *(v23 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v7;
  v50 = a4;
  sub_1205D8(v23 + 40 * v22 + 32, &v58);
  sub_F7CC(&v58, v66);
  sub_2E18(v66, v67);
  if ((sub_260870() & 1) == 0)
  {
    goto LABEL_6;
  }

  v24 = a2[2];
  if (v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;
    sub_260FF0();

    if ((v58 & 1) == 0)
    {
      (*(v51 + 56))(v21, 1, 1, v52);
      goto LABEL_8;
    }

LABEL_6:
    sub_2E18(v66, v67);
    sub_260950();
    v27 = v26;
    v28 = *(v47 + 8) / v26;
    sub_30CC(v66, &v58);
    CoverViewModel.CoverImageInfo.init(assetInfo:)(&v58, v56);
    *(&v57 + 1) = v28;
    sub_230A8(v56);
    v62 = v56[4];
    v63 = v56[5];
    v64 = v56[6];
    v65 = v57;
    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v61 = v56[3];
    *v13 = swift_getKeyPath();
    v13[40] = 0;
    *(v13 + 6) = swift_getKeyPath();
    v13[56] = 0;
    v29 = type metadata accessor for CoverView();
    v30 = v29[6];
    *&v13[v30] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v31 = v29[7];
    *&v13[v31] = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v32 = &v13[v29[8]];
    type metadata accessor for ProfileRestrictions();
    sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v32 = sub_261900();
    v32[1] = v33;
    v34 = &v13[v29[9]];
    v53 = 1;
    sub_2631D0();
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    v36 = &v13[v29[10]];
    v37 = v63;
    *(v36 + 4) = v62;
    *(v36 + 5) = v37;
    v38 = v65;
    *(v36 + 6) = v64;
    *(v36 + 7) = v38;
    v39 = v59;
    *v36 = v58;
    *(v36 + 1) = v39;
    v40 = v61;
    *(v36 + 2) = v60;
    *(v36 + 3) = v40;
    v13[v29[11]] = 0;
    v41 = &v13[*(v48 + 36)];
    *v41 = v27;
    *(v41 + 4) = 0;
    sub_2618C0();
    sub_C0C10();
    sub_120590(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    v42 = v46;
    sub_262AA0();
    (*(v49 + 8))(v10, v42);
    sub_8E80(v13, &qword_31BF28, &qword_272030);
    v43 = v52;
    *&v17[*(v52 + 36)] = -v22;
    sub_22148(v17, v21, &qword_31ECF0, &qword_2794B0);
    (*(v51 + 56))(v21, 0, 1, v43);
LABEL_8:
    sub_22148(v21, v50, &qword_31ECD8, &qword_2794A8);
    return sub_3080(v66);
  }

LABEL_11:
  v45 = a2[3];
  type metadata accessor for ProfileRestrictions();
  sub_120590(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_11F8B0()
{
  sub_4054(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);

  v2 = *(v0 + 88);

  return swift_deallocObject();
}

unint64_t sub_11F9A4()
{
  result = qword_31ECE0;
  if (!qword_31ECE0)
  {
    sub_2F9C(&qword_31ECD8, &qword_2794A8);
    sub_11FA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECE0);
  }

  return result;
}

unint64_t sub_11FA28()
{
  result = qword_31ECE8;
  if (!qword_31ECE8)
  {
    sub_2F9C(&qword_31ECF0, &qword_2794B0);
    sub_2F9C(&qword_31BF28, &qword_272030);
    sub_261FA0();
    sub_C0C10();
    sub_120590(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31ECF8, &qword_31ED00, &qword_2794B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ECE8);
  }

  return result;
}

double sub_11FB88(uint64_t a1, char a2)
{
  v3 = *v2;
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_11FBAC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261040();
  return sub_F4138;
}

unint64_t sub_11FC7C()
{
  result = qword_31ED18;
  if (!qword_31ED18)
  {
    sub_2F9C(&qword_31ED10, &qword_279568);
    sub_11FD34();
    sub_8E38(&qword_317418, &qword_317420, &qword_269900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED18);
  }

  return result;
}

unint64_t sub_11FD34()
{
  result = qword_31ED20;
  if (!qword_31ED20)
  {
    sub_2F9C(&qword_31ED08, &qword_279560);
    sub_11FDC0();
    sub_EFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED20);
  }

  return result;
}

unint64_t sub_11FDC0()
{
  result = qword_31ED28;
  if (!qword_31ED28)
  {
    sub_2F9C(&qword_31ECD0, &unk_279480);
    sub_8E38(&qword_31ED30, &qword_31ED38, &qword_279648);
    sub_11FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED28);
  }

  return result;
}

unint64_t sub_11FE78()
{
  result = qword_31ED40;
  if (!qword_31ED40)
  {
    sub_2F9C(&qword_31ED48, &qword_279650);
    sub_11F9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED40);
  }

  return result;
}

uint64_t sub_11FEFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11FF44(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_11FFA4()
{
  result = qword_31ED50;
  if (!qword_31ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ED50);
  }

  return result;
}

void sub_11FFF8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_261490();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v18 = *(v5 + 32);
  v49 = *(v5 + 40);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  if (v15 <= CGRectGetWidth(v54))
  {
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    v21 = floor((CGRectGetWidth(v55) - v15) / v16);
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v21 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_261570();
    sub_120590(&qword_31D960, &type metadata accessor for LayoutSubviews);
    sub_264820();
    sub_264860();
    v23 = sub_264850();
    if (v23 >= v22)
    {
      v19 = v22;
    }

    else
    {
      v19 = v23;
    }

    if (v19 < 2)
    {
      v48 = 0.0;
      if (v19 == 1)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0.0;
      }
    }

    else
    {
      v56.origin.x = a2;
      v56.origin.y = a3;
      v56.size.width = a4;
      v56.size.height = a5;
      Width = CGRectGetWidth(v56);
      v25 = (v19 - 1);
      v26 = (Width - v15) / v25;
      if (v17 < v26)
      {
        v26 = v17;
      }

      v48 = v26;
      v20 = v15 + v26 * v25;
    }
  }

  else
  {
    v19 = 0;
    v48 = 0.0;
    v20 = 0.0;
  }

  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  v27 = CGRectGetWidth(v57);
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = a5;
  MinX = CGRectGetMinX(v58);
  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = v11;
  v51 = a1;
  if (v19)
  {
    v47 = *(v18 + 16);
    if (!v47)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v29 = 0;
    v30 = MinX + (v27 - v20) * 0.5;
    v46 = v15;
    v44 = v42 + 8;
    v45 = v18 + 32;
    v43 = v19;
    v31 = (v42 + 8);
    while (v29 % v47 < *(v18 + 16))
    {
      v32 = *(v45 + 8 * (v29 % v47));
      sub_261580();
      v53 = 0;
      v52 = 1;
      sub_261470();
      v33 = *v31;
      v34 = v18;
      v35 = v50;
      (*v31)(v14, v50);
      v59.origin.x = a2;
      v59.origin.y = a3;
      v59.size.width = a4;
      v59.size.height = a5;
      CGRectGetMinY(v59);
      v60.origin.x = a2;
      v60.origin.y = a3;
      v60.size.width = a4;
      v60.size.height = a5;
      CGRectGetHeight(v60);
      sub_261580();
      sub_2636D0();
      v53 = 0;
      v52 = 1;
      v19 = v43;
      sub_261480();
      v36 = v35;
      v18 = v34;
      v33(v14, v36);
      v30 = v48 + v30;
      if (v19 == ++v29)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  sub_261570();
  sub_120590(&qword_31D960, &type metadata accessor for LayoutSubviews);
  sub_264820();
  sub_264860();
  v37 = sub_264850();
  if (v37 < v19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v38 = v37;
  v39 = v50;
  if (v19 != v37)
  {
    if (v19 >= v37)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v40 = (v42 + 8);
    do
    {
      sub_261580();
      v61.origin.x = a2;
      v61.origin.y = a3;
      v61.size.width = a4;
      v61.size.height = a5;
      CGRectGetMaxX(v61);
      v62.origin.x = a2;
      v62.origin.y = a3;
      v62.size.width = a4;
      v62.size.height = a5;
      CGRectGetMaxY(v62);
      sub_2636F0();
      v53 = 0;
      v52 = 0;
      sub_261480();
      (*v40)(v14, v39);
      ++v19;
    }

    while (v38 != v19);
  }
}

uint64_t sub_120590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.figaroLocationPositionOverride(_:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_262940();
}

uint64_t sub_1206EC()
{
  v0 = sub_2EF0(&qword_31ED88, &qword_279840);
  sub_B600(v0, qword_31ED58);
  sub_B080(v0, qword_31ED58);
  sub_2EF0(&qword_31EDA0, &unk_28BAC0);
  return sub_263F20();
}

uint64_t static MetricsFieldsContext.Property<A>.locationStack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A30 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31ED88, &qword_279840);
  v3 = sub_B080(v2, qword_31ED58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_12082C()
{
  v0 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  sub_B600(v0, qword_31ED70);
  sub_B080(v0, qword_31ED70);
  return sub_263F20();
}

uint64_t static MetricsFieldsContext.Property<A>.locationPositionOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315A38 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  v3 = sub_B080(v2, qword_31ED70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t View.figaroLocation(_:)(_OWORD *a1)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v15[10] = a1[10];
  v3 = a1[5];
  v15[4] = a1[4];
  v15[5] = v3;
  v4 = a1[7];
  v15[6] = a1[6];
  v15[7] = v4;
  v5 = a1[1];
  v15[0] = *a1;
  v15[1] = v5;
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  v7 = swift_allocObject();
  v8 = a1[9];
  v7[9] = a1[8];
  v7[10] = v8;
  v7[11] = a1[10];
  v9 = a1[5];
  v7[5] = a1[4];
  v7[6] = v9;
  v10 = a1[7];
  v7[7] = a1[6];
  v7[8] = v10;
  v11 = a1[1];
  v7[1] = *a1;
  v7[2] = v11;
  v12 = a1[3];
  v7[3] = a1[2];
  v7[4] = v12;
  sub_120DB4(v15, &v14);
  sub_262940();
}

uint64_t sub_120A50(uint64_t a1, __int128 *a2)
{
  v3 = a2[9];
  v37 = a2[8];
  v38 = v3;
  v39 = a2[10];
  v4 = a2[5];
  v33 = a2[4];
  v34 = v4;
  v5 = a2[7];
  v35 = a2[6];
  v36 = v5;
  v6 = a2[1];
  v29 = *a2;
  v30 = v6;
  v7 = a2[3];
  v31 = a2[2];
  v32 = v7;
  result = sub_120E68(&v29);
  if (result != 1)
  {
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v9 = a2[9];
    v28[8] = a2[8];
    v28[9] = v9;
    v28[10] = a2[10];
    v10 = a2[5];
    v28[4] = a2[4];
    v28[5] = v10;
    v11 = a2[7];
    v28[6] = a2[6];
    v28[7] = v11;
    v12 = a2[1];
    v28[0] = *a2;
    v28[1] = v12;
    v13 = a2[3];
    v28[2] = a2[2];
    v28[3] = v13;
    sub_97590(v28, &v27);
    if (qword_315A30 != -1)
    {
      swift_once();
    }

    v14 = sub_2EF0(&qword_31ED88, &qword_279840);
    sub_B080(v14, qword_31ED58);
    sub_2EF0(&qword_31EDA0, &unk_28BAC0);
    sub_263F50();
    if (v27)
    {
      v15 = v27;
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_E92D0(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_E92D0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[176 * v17];
    v19 = v40;
    v20 = v42;
    *(v18 + 3) = v41;
    *(v18 + 4) = v20;
    *(v18 + 2) = v19;
    v21 = v43;
    v22 = v44;
    v23 = v46;
    *(v18 + 7) = v45;
    *(v18 + 8) = v23;
    *(v18 + 5) = v21;
    *(v18 + 6) = v22;
    v24 = v47;
    v25 = v48;
    v26 = v50;
    *(v18 + 11) = v49;
    *(v18 + 12) = v26;
    *(v18 + 9) = v24;
    *(v18 + 10) = v25;
    v27 = v15;
    sub_263F30();
  }

  return result;
}

uint64_t sub_120C84()
{
  if (qword_315A38 != -1)
  {
    swift_once();
  }

  v0 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
  sub_B080(v0, qword_31ED70);
  return sub_263F30();
}

uint64_t sub_120D24()
{
  if (v0[17])
  {
    v1 = v0[3];

    v2 = v0[5];

    v3 = v0[7];

    v4 = v0[9];

    v5 = v0[11];

    v6 = v0[13];

    v7 = v0[17];

    v8 = v0[19];

    v9 = v0[21];

    v10 = v0[23];
  }

  return swift_deallocObject();
}

uint64_t sub_120DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31ED98, &qword_279848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_120E68(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_120E80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2, v12, &qword_31F098, &qword_279D20);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_120FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v1 + 48, v11, &qword_31F090, &qword_279D18);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t SeriesQuickActionButtonView.init(model:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 88) = 256;
  type metadata accessor for ProfileRestrictions();
  sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *(a4 + 96) = sub_261900();
  *(a4 + 104) = v8;
  v9 = type metadata accessor for SeriesQuickActionButtonView(0);
  result = sub_125C90(a1, a4 + *(v9 + 32), type metadata accessor for SeriesQuickActionButtonViewModel);
  v11 = (a4 + *(v9 + 36));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t SeriesQuickActionButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v527 = a1;
  v1 = sub_2617C0();
  v465 = *(v1 - 8);
  v466 = v1;
  v2 = *(v465 + 64);
  __chkstk_darwin(v1);
  v464 = &v415 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = sub_2EF0(&qword_31EDA8, &qword_2798A0);
  v468 = *(v498 - 8);
  v4 = *(v468 + 64);
  __chkstk_darwin(v498);
  v467 = &v415 - v5;
  v432 = sub_2EF0(&qword_31EDB0, &qword_2798A8);
  v6 = *(*(v432 - 8) + 64);
  __chkstk_darwin(v432);
  v424 = &v415 - v7;
  v494 = sub_2EF0(&qword_31EDB8, &qword_2798B0);
  v8 = *(*(v494 - 8) + 64);
  __chkstk_darwin(v494);
  v495 = &v415 - v9;
  v526 = sub_2EF0(&qword_31EDC0, &qword_2798B8);
  v10 = *(*(v526 - 8) + 64);
  __chkstk_darwin(v526);
  v497 = &v415 - v11;
  v427 = sub_2EF0(&qword_31EDC8, &qword_2798C0);
  v12 = *(*(v427 - 8) + 64);
  __chkstk_darwin(v427);
  v428 = &v415 - v13;
  v504 = type metadata accessor for QuickActionBuyButtonViewModel(0);
  v14 = *(*(v504 - 8) + 64);
  __chkstk_darwin(v504);
  v505 = &v415 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = type metadata accessor for QuickActionBuyButtonView(0);
  v16 = *(*(v470 - 8) + 64);
  __chkstk_darwin(v470);
  v506 = &v415 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2EF0(&qword_31EDD0, &qword_2798C8);
  v471 = *(v18 - 8);
  v472 = v18;
  v19 = *(v471 + 64);
  __chkstk_darwin(v18);
  v469 = &v415 - v20;
  v21 = sub_2EF0(&qword_31EDD8, &qword_2798D0);
  v474 = *(v21 - 8);
  v475 = v21;
  v22 = *(v474 + 64);
  __chkstk_darwin(v21);
  v473 = &v415 - v23;
  v484 = sub_2EF0(&qword_31EDE0, &qword_2798D8);
  v24 = *(*(v484 - 8) + 64);
  __chkstk_darwin(v484);
  v486 = &v415 - v25;
  v492 = sub_2EF0(&qword_31EDE8, &qword_2798E0);
  v26 = *(*(v492 - 8) + 64);
  __chkstk_darwin(v492);
  v426 = &v415 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v429 = &v415 - v29;
  v444 = sub_2EF0(&qword_31EDF0, &unk_2798E8);
  v30 = *(*(v444 - 8) + 64);
  __chkstk_darwin(v444);
  v425 = &v415 - v31;
  v32 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v446 = &v415 - v34;
  v438 = sub_2EF0(&qword_31EDF8, &qword_2798F8);
  v35 = *(*(v438 - 8) + 64);
  __chkstk_darwin(v438);
  v439 = &v415 - v36;
  v485 = sub_261FA0();
  v483 = *(v485 - 8);
  v37 = *(v483 + 64);
  __chkstk_darwin(v485);
  v482 = &v415 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_261760();
  v480 = *(v481 - 8);
  v39 = *(v480 + 64);
  __chkstk_darwin(v481);
  v479 = &v415 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_263AF0();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v419 = &v415 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_2601E0();
  v488 = *(v489 - 8);
  v44 = *(v488 + 64);
  __chkstk_darwin(v489);
  v423 = &v415 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_260560();
  v421 = *(v46 - 8);
  v422 = v46;
  v47 = *(v421 + 64);
  __chkstk_darwin(v46);
  v420 = &v415 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = sub_260600();
  v416 = *(v418 - 8);
  v49 = *(v416 + 64);
  __chkstk_darwin(v418);
  v417 = &v415 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = type metadata accessor for CardInfo();
  v512 = *(v493 - 8);
  v51 = *(v512 + 64);
  __chkstk_darwin(v493);
  v463 = &v415 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v508 = sub_2EF0(&qword_31EE00, &qword_279900);
  v53 = *(*(v508 - 8) + 64);
  __chkstk_darwin(v508);
  v507 = &v415 - v54;
  v55 = sub_2EF0(&qword_31EE08, &qword_279908);
  v477 = *(v55 - 8);
  v478 = v55;
  v56 = *(v477 + 64);
  __chkstk_darwin(v55);
  v476 = &v415 - v57;
  v490 = sub_2EF0(&qword_31EE10, &qword_279910);
  v58 = *(*(v490 - 8) + 64);
  __chkstk_darwin(v490);
  v487 = &v415 - v59;
  v436 = sub_2EF0(&qword_31EE18, &qword_279918);
  v60 = *(*(v436 - 8) + 64);
  __chkstk_darwin(v436);
  v430 = &v415 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v433 = &v415 - v63;
  v437 = sub_2EF0(&qword_31EE20, &qword_279920);
  v435 = *(v437 - 8);
  v64 = *(v435 + 64);
  __chkstk_darwin(v437);
  v434 = &v415 - v65;
  v66 = sub_2EF0(&qword_31EE28, &qword_279928);
  v442 = *(v66 - 8);
  v443 = v66;
  v67 = *(v442 + 64);
  __chkstk_darwin(v66);
  v441 = &v415 - v68;
  v502 = sub_2EF0(&qword_31EE30, &unk_279930);
  v69 = *(*(v502 - 8) + 64);
  __chkstk_darwin(v502);
  v440 = &v415 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v445 = &v415 - v72;
  v458 = type metadata accessor for ListItemViewModel();
  v460 = *(v458 - 8);
  v73 = *(v460 + 64);
  __chkstk_darwin(v458);
  v461 = v74;
  v462 = &v415 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v75);
  v513 = &v415 - v76;
  v77 = sub_2607D0();
  v454 = *(v77 - 8);
  v455 = v77;
  v78 = *(v454 + 64);
  __chkstk_darwin(v77);
  v453 = &v415 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ShrinkableText();
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v491 = &v415 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = sub_2605E0();
  v510 = *(v511 - 8);
  v83 = *(v510 + 64);
  __chkstk_darwin(v511);
  v509 = &v415 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2EF0(&qword_31A480, &qword_273520);
  v86 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85 - 8);
  v431 = &v415 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v459 = &v415 - v89;
  __chkstk_darwin(v90);
  v522 = &v415 - v91;
  v523 = sub_2EF0(&qword_31EE38, &qword_279940);
  v92 = *(*(v523 - 8) + 64);
  __chkstk_darwin(v523);
  v525 = &v415 - v93;
  v499 = sub_2EF0(&qword_31EE40, &qword_279948);
  v94 = *(*(v499 - 8) + 64);
  __chkstk_darwin(v499);
  v500 = &v415 - v95;
  v524 = sub_2EF0(&qword_31EE48, &qword_279950);
  v96 = *(*(v524 - 8) + 64);
  __chkstk_darwin(v524);
  v501 = &v415 - v97;
  v98 = type metadata accessor for SeriesQuickActionButtonView(0);
  v99 = v98 - 8;
  v521 = *(v98 - 8);
  v100 = *(v521 + 64);
  __chkstk_darwin(v98);
  v528 = v101;
  v529 = &v415 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v515 = sub_2604E0();
  v514 = *(v515 - 8);
  v102 = *(v514 + 64);
  __chkstk_darwin(v515);
  v530 = &v415 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_262730();
  v518 = *(v519 - 8);
  v104 = *(v518 + 64);
  __chkstk_darwin(v519);
  v520 = (&v415 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_264010();
  v450 = *(v106 - 8);
  v451 = v106;
  v107 = *(v450 + 64);
  __chkstk_darwin(v106);
  v109 = &v415 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_263FA0();
  v448 = *(v110 - 8);
  v449 = v110;
  v111 = *(v448 + 64);
  __chkstk_darwin(v110);
  v113 = &v415 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = type metadata accessor for ButtonViewModel.Content(0);
  v114 = *(*(v516 - 8) + 64);
  __chkstk_darwin(v516);
  v503 = (&v415 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  v517 = type metadata accessor for ButtonViewModel(0);
  v116 = *(*(v517 - 8) + 64);
  __chkstk_darwin(v517);
  v118 = &v415 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v119);
  v121 = &v415 - v120;
  __chkstk_darwin(v122);
  v124 = &v415 - v123;
  v531 = type metadata accessor for ButtonView();
  v125 = *(*(v531 - 8) + 64);
  __chkstk_darwin(v531);
  v447 = &v415 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v127);
  v452 = &v415 - v128;
  v496 = sub_2EF0(&qword_31EE50, &qword_279958);
  v457 = *(v496 - 8);
  v129 = *(v457 + 64);
  __chkstk_darwin(v496);
  v456 = &v415 - v130;
  v131 = type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  v132 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v134 = (&v415 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = v532 + *(v99 + 40);
  sub_126808(v135, v134, type metadata accessor for SeriesQuickActionButtonViewModel.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      LODWORD(v532) = *(v532 + 89);
      LODWORD(v530) = _UISolariumEnabled() ^ 1;
      v163 = v517;
      v164 = *(v517 + 44);
      v560._countAndFlagsBits = 32;
      v560._object = 0xE100000000000000;
      sub_2645A0(v560, 20);
      sub_260BC0();

      swift_storeEnumTagMultiPayload();
      v165 = &v118[v163[13]];
      type metadata accessor for ButtonViewModel.ActionKind(0);
      *v165 = 0u;
      *(v165 + 1) = 0u;
      *(v165 + 4) = 0;
      swift_storeEnumTagMultiPayload();
      *&v533 = 0x403C000000000000;
      v166 = enum case for Font.TextStyle.subheadline(_:);
      v167 = *(v518 + 104);
      v168 = v520;
      LODWORD(v529) = enum case for Font.TextStyle.subheadline(_:);
      v169 = v519;
      v167(v520, enum case for Font.TextStyle.subheadline(_:), v519);
      sub_40130();
      sub_2612E0();
      v170 = v163[5];
      *&v533 = 0x4008000000000000;
      v171 = v166;
      v172 = v169;
      v167(v168, v171, v169);
      v528 = v167;
      sub_2612E0();
      v173 = v163[6];
      *&v118[v173] = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v174 = v163[14];
      v175 = sub_260BD0();
      (*(*(v175 - 8) + 56))(&v118[v174], 1, 1, v175);
      v118[v163[7]] = v532;
      v118[v163[8]] = v530;
      v118[v163[9]] = 0;
      v176 = &v118[v163[10]];
      *v176 = 2;
      *(v176 + 1) = 0;
      *(v176 + 2) = 0;
      *(v176 + 3) = 0;
      v118[v163[12]] = 0;
      *&v533 = 0x4020000000000000;
      v177 = v529;
      v178 = v447;
      v167(v168, v529, v169);
      sub_2612E0();
      v179 = v531;
      v180 = *(v531 + 20);
      *&v533 = 0x3FF8000000000000;
      v528(v168, v177, v172);
      sub_2612E0();
      v181 = *(v179 + 24);
      *(v178 + v181) = swift_getKeyPath();
      sub_2EF0(&qword_319B00, &unk_26EA40);
      swift_storeEnumTagMultiPayload();
      v182 = v179;
      sub_125C90(v118, v178 + *(v179 + 28), type metadata accessor for ButtonViewModel);
      v183 = v464;
      sub_2617A0();
      v184 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
      v185 = v467;
      sub_262E70();
      (*(v465 + 8))(v183, v466);
      sub_1288E0(v178, type metadata accessor for ButtonView);
      v186 = v468;
      v187 = v498;
      (*(v468 + 16))(v495, v185, v498);
      swift_storeEnumTagMultiPayload();
      sub_125D40();
      *&v533 = v182;
      *(&v533 + 1) = v184;
      swift_getOpaqueTypeConformance2();
      v188 = v497;
      sub_261F80();
      sub_8198(v188, v525, &qword_31EDC0, &qword_2798B8);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v188, &qword_31EDC0, &qword_2798B8);
      return (*(v186 + 8))(v185, v187);
    }

    sub_F7CC(v134, &v533);
    sub_30CC(&v533, v557);
    v145 = v532;
    v146 = *(v532 + 89);
    sub_2E18(&v533, *(&v534 + 1));
    v147 = sub_260870();
    v415 = v135;
    LODWORD(v522) = v146;
    if (v147)
    {
      v148 = *(v145 + 96);
      if (!v148)
      {
LABEL_44:
        v141 = v532;
        goto LABEL_45;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v149 = v148;
      sub_260FF0();

      v150 = LOBYTE(v553[0]);
    }

    else
    {
      v150 = 1;
    }

    LODWORD(v513) = v150;
    sub_120E80(v553);
    sub_30CC(v557, v552);
    sub_8198(v553, v550, &qword_31D240, &qword_279000);
    v240 = v504;
    v241 = v505;
    v242 = (v505 + *(v504 + 28));
    *v242 = 0;
    v242[1] = 0;
    v243 = v240;
    v244 = v241 + v240[8];
    v245 = v241;
    KeyPath = swift_getKeyPath();
    v556 = 0;
    *v244 = KeyPath;
    *(v244 + 66) = 0;
    v247 = v243[9];
    *(v245 + v247) = swift_getKeyPath();
    sub_2EF0(&qword_317E08, &qword_26A550);
    swift_storeEnumTagMultiPayload();
    v248 = (v245 + v243[10]);
    type metadata accessor for ProfileRestrictions();
    sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    *v248 = sub_261900();
    v248[1] = v249;
    sub_30CC(v552, v245 + v243[5]);
    LODWORD(v512) = _UISolariumEnabled() ^ 1;
    v250 = v517;
    v251 = *(v517 + 44);
    sub_260BC0();
    swift_storeEnumTagMultiPayload();
    v252 = &v121[v250[13]];
    type metadata accessor for ButtonViewModel.ActionKind(0);
    *v252 = 0u;
    *(v252 + 1) = 0u;
    *(v252 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    v544 = 0x403C000000000000;
    v253 = enum case for Font.TextStyle.subheadline(_:);
    v254 = *(v518 + 104);
    v255 = v520;
    v256 = v519;
    v254(v520, enum case for Font.TextStyle.subheadline(_:), v519);
    sub_40130();
    sub_2612E0();
    v257 = v250[5];
    v544 = 0x4008000000000000;
    v254(v255, v253, v256);
    sub_2612E0();
    sub_3080(v552);
    sub_8E80(v553, &qword_31D240, &qword_279000);
    sub_3080(v557);
    v258 = v250[6];
    *&v121[v258] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v259 = v250[14];
    v260 = sub_260BD0();
    (*(*(v260 - 8) + 56))(&v121[v259], 1, 1, v260);
    v121[v250[7]] = v522;
    v121[v250[8]] = v512;
    v121[v250[9]] = 0;
    v261 = &v121[v250[10]];
    *v261 = 2;
    *(v261 + 1) = 0;
    *(v261 + 2) = 0;
    *(v261 + 3) = 0;
    v121[v250[12]] = v513;
    v262 = v505;
    sub_125C90(v121, v505, type metadata accessor for ButtonViewModel);
    v263 = v262 + *(v504 + 24);
    v264 = v550[1];
    *v263 = v550[0];
    *(v263 + 16) = v264;
    *(v263 + 32) = v551;
    sub_125C90(v262, v506, type metadata accessor for QuickActionBuyButtonViewModel);
    v265 = sub_2604A0();
    v266 = v530;
    sub_2604C0();
    v267 = v529;
    sub_126808(v532, v529, type metadata accessor for SeriesQuickActionButtonView);
    v268 = (*(v521 + 80) + 16) & ~*(v521 + 80);
    v269 = swift_allocObject();
    sub_125C90(v267, v269 + v268, type metadata accessor for SeriesQuickActionButtonView);
    v270 = sub_125CF8(&qword_31EE70, type metadata accessor for QuickActionBuyButtonView);
    v271 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
    v414 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
    v273 = v469;
    v272 = v470;
    v274 = v506;
    sub_262960();

    (*(v514 + 8))(v266, v515);
    sub_1288E0(v274, type metadata accessor for QuickActionBuyButtonView);
    *(swift_allocObject() + 16) = 1;
    v544 = v272;
    v545 = v265;
    v546 = v270;
    v547 = v271;
    v548 = v414;
    swift_getOpaqueTypeConformance2();
    v275 = v472;
    v276 = v473;
    sub_262940();

    (*(v471 + 8))(v273, v275);
    v277 = *(type metadata accessor for SeriesQuickActionButtonViewModel(0) + 24);
    v278 = v486;
    v279 = &v486[*(v484 + 36)];
    v280 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_30CC(v415 + v277, &v279[v280[7]]);
    v281 = swift_getKeyPath();
    v549 = 0;
    *v279 = v281;
    v279[66] = 0;
    v282 = v280[5];
    *&v279[v282] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    v283 = &v279[v280[6]];
    *v283 = swift_getKeyPath();
    v283[40] = 0;
    (*(v474 + 32))(v278, v276, v475);
    v284 = v535;
    sub_2E18(&v533, *(&v534 + 1));
    v285 = *(v284 + 8);
    v286 = sub_2606E0();
    v288 = v287;
    sub_120FF4(&v544);
    if (v547)
    {
      sub_2EF0(&qword_317240, &qword_269790);
      v289 = swift_allocObject();
      *(v289 + 16) = xmmword_267D30;
      *(v289 + 32) = v286;
      v290 = v289 + 32;
      *(v289 + 40) = v288;
      v291 = sub_127F84(v289);
      swift_setDeallocating();
      sub_12801C(v290);
      swift_deallocClassInstance();
      v292 = v426;
      if (qword_315930 != -1)
      {
        swift_once();
      }

      if (byte_31C408 == 1 && (v293 = [objc_opt_self() standardUserDefaults], v294 = sub_264420(), v295 = objc_msgSend(v293, "integerForKey:", v294), v293, v294, (v295 & 0x20) != 0))
      {

        sub_8198(v278, v428, &qword_31EDE0, &qword_2798D8);
        swift_storeEnumTagMultiPayload();
        sub_125DCC();
        sub_125E58();
        sub_261F80();
      }

      else
      {
        sub_30CC(&v544, v543);
        v296 = v424;
        sub_1A7A30(v291, v543, &v424[*(v432 + 36)]);
        sub_8198(v278, v296, &qword_31EDE0, &qword_2798D8);
        sub_8198(v296, v428, &qword_31EDB0, &qword_2798A8);
        swift_storeEnumTagMultiPayload();
        sub_125DCC();
        sub_125E58();
        sub_261F80();
        sub_8E80(v296, &qword_31EDB0, &qword_2798A8);
      }

      sub_8E80(v278, &qword_31EDE0, &qword_2798D8);
      v409 = v429;
      sub_22148(v292, v429, &qword_31EDE8, &qword_2798E0);
      sub_3080(&v544);
      sub_8198(v409, v495, &qword_31EDE8, &qword_2798E0);
      swift_storeEnumTagMultiPayload();
      sub_125D40();
      v410 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
      v544 = v531;
      v545 = v410;
      swift_getOpaqueTypeConformance2();
      v411 = v497;
      sub_261F80();
      sub_8198(v411, v525, &qword_31EDC0, &qword_2798B8);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v411, &qword_31EDC0, &qword_2798B8);
      sub_8E80(v409, &qword_31EDE8, &qword_2798E0);
      goto LABEL_40;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    v151 = sub_2EF0(&qword_31EED0, &qword_279A38);
    v152 = *(v151 + 48);
    v153 = *(v151 + 64);
    sub_F7CC(v134, v557);
    sub_22148(v134 + v152, v522, &qword_31A480, &qword_273520);
    (*(v510 + 32))(v509, v134 + v153, v511);
    sub_2E18(v557, v558);
    v154 = sub_2608F0();
    v156 = v155;
    sub_2E18(v557, v558);
    v157 = v453;
    sub_260940();
    sub_2E18(v557, v558);
    sub_260860();
    v158 = sub_2609D0();
    v160 = v159;
    if (v158 == sub_2609D0() && v160 == v161)
    {
      v162 = v135;
    }

    else
    {
      v162 = v135;
      sub_264F10();
    }

    v190 = v491;
    static SeriesQuickActionButtonViewModel.preheader(for:seriesOrdering:isAudiobook:)(v154, v156, v157, v491);

    (*(v454 + 8))(v157, v455);
    sub_30CC(v557, &v533);
    *(&v535 + 1) = 1;
    LOBYTE(v536) = 4;
    *(&v536 + 1) = 0;
    LOWORD(v537) = 255;
    v191 = v559;
    sub_2E18(v557, v558);
    v192 = *(v191 + 8);
    v193 = sub_2606E0();
    v195 = v194;
    v196 = v513;
    sub_3E840(&v533, v513 + 8);
    static ListItemMetadata.seriesHeaderQuickActionButton(assetInfo:eyebrowText:)(v557, v190, v196 + 80);
    v554 = &type metadata for ListItemAccessoryBuyButton;
    v555 = sub_825A0();
    v197 = swift_allocObject();
    v553[0] = v197;
    sub_30CC(v557, v197 + 32);
    *(v197 + 16) = swift_getKeyPath();
    *(v197 + 24) = 0;
    sub_82640(&v533);
    sub_30CC(v557, v196 + 408);
    v198 = v458;
    v199 = *(v458 + 40);
    sub_8198(v522, v196 + v199, &qword_31A480, &qword_273520);
    *(v196 + 360) = 0u;
    *(v196 + 376) = 0u;
    *(v196 + 392) = 0;
    *v196 = 1;
    sub_82704(v553, v196 + 360);
    *(v196 + 400) = 0;
    v200 = v196 + *(v198 + 44);
    *(v200 + 96) = 0u;
    *(v200 + 112) = 0u;
    *(v200 + 64) = 0u;
    *(v200 + 80) = 0u;
    *(v200 + 32) = 0u;
    *(v200 + 48) = 0u;
    *v200 = xmmword_26F1B0;
    *(v200 + 16) = 0u;
    *(v200 + 128) = v193;
    *(v200 + 136) = v195;
    *(v200 + 144) = 2;
    v201 = &v507[*(v508 + 48)];
    v519 = sub_2EF0(&qword_31EED8, &qword_279B28);
    v201[3] = v519;
    v201[4] = sub_8E38(&qword_31EEE0, &qword_31EED8, &qword_279B28);
    v202 = sub_10934(v201);
    v203 = sub_2610B0();
    v204 = *(*(v203 - 8) + 56);
    v518 = v202;
    v204(v202, 1, 1, v203);
    v205 = (v162 + *(type metadata accessor for SeriesQuickActionButtonViewModel(0) + 24));
    v206 = v205[3];
    v207 = v205[4];
    v520 = v205;
    sub_2E18(v205, v206);
    v208 = *(v207 + 8);
    v209 = sub_2606F0();
    v211 = v210;
    v212 = v459;
    sub_8198(v196 + v199, v459, &qword_31A480, &qword_273520);
    v213 = *(v512 + 48);
    v512 += 48;
    v517 = v213;
    if (v213(v212, 1, v493) == 1)
    {
      sub_8E80(v212, &qword_31A480, &qword_273520);
      sub_263AC0();
      v554 = sub_263890();
      v555 = &protocol witness table for EmptyAction;
      sub_10934(v553);
      sub_263880();
    }

    else
    {
      v297 = v463;
      sub_125C90(v212, v463, type metadata accessor for CardInfo);
      v298 = v559;
      sub_2E18(v557, v558);
      v299 = *(v298 + 8);
      v300 = sub_2606E0();
      v516 = v301;
      v302 = type metadata accessor for FlowAction();
      v554 = v302;
      v555 = sub_125CF8(&qword_31C450, type metadata accessor for FlowAction);
      v303 = sub_10934(v553);
      v304 = v303 + v302[5];
      sub_263AC0();
      v305 = v302[6];
      (*(v416 + 104))(v417, enum case for ClickData.TargetType.navigate(_:), v418);
      (*(v421 + 104))(v420, enum case for LinkActionType.click(_:), v422);
      sub_260610();
      v306 = sub_260620();
      (*(*(v306 - 8) + 56))(v303 + v305, 0, 1, v306);
      v307 = (v303 + v302[7]);
      v307[3] = type metadata accessor for FlowAction.NewSingleCardDestination();
      v307[4] = &protocol witness table for FlowAction.NewSingleCardDestination;
      v308 = sub_10934(v307);
      sub_126808(v297, v308, type metadata accessor for CardInfo);
      v533 = xmmword_273500;
      *&v534 = v209;
      *(&v534 + 1) = v211;
      v535 = 0u;
      v536 = 0u;
      v537 = 0u;
      v538 = 0u;
      v539 = 0u;
      v540 = 0u;
      *&v541 = v300;
      *(&v541 + 1) = v516;
      v542 = 3;
      KeyedEncodingContainer.encode<A>(_:forKey:)(&v533);

      v309 = v423;
      sub_2601D0();
      v310 = sub_2601C0();
      v312 = v311;
      v516 = v211;
      v313 = *(v488 + 8);
      v314 = v489;
      v313(v309, v489);
      *v303 = v310;
      v303[1] = v312;
      v315 = v302[11];
      *(v303 + v315) = 0;
      sub_2601D0();
      v316 = sub_2601C0();
      v318 = v317;
      v313(v309, v314);
      v319 = v303[1];

      *v303 = v316;
      v303[1] = v318;
      v320 = v303 + v302[8];
      v321 = v534;
      *v320 = v533;
      *(v320 + 1) = v321;
      v322 = v535;
      v323 = v536;
      v324 = v538;
      *(v320 + 4) = v537;
      *(v320 + 5) = v324;
      *(v320 + 2) = v322;
      *(v320 + 3) = v323;
      v325 = v539;
      v326 = v540;
      v327 = v541;
      v320[144] = v542;
      *(v320 + 7) = v326;
      *(v320 + 8) = v327;
      *(v320 + 6) = v325;
      v328 = (v303 + v302[9]);
      *v328 = 0;
      v328[1] = 0;
      v329 = v303 + v302[10];
      strcpy(v329, "cardsPresent");
      v329[13] = 0;
      *(v329 + 7) = -5120;
      *(v303 + v315) = 0;
      sub_1288E0(v463, type metadata accessor for CardInfo);
    }

    v330 = v532;
    v331 = v508;
    v332 = v507;
    v333 = &v507[*(v508 + 52)];
    v334 = v554;
    v335 = v555;
    v336 = sub_2E18(v553, v554);
    v333[3] = v334;
    v333[4] = v335[1];
    v337 = sub_10934(v333);
    (*(v334[-1].Description + 2))(v337, v336, v334);
    v338 = v462;
    sub_126808(v513, v462, type metadata accessor for ListItemViewModel);
    v339 = v529;
    sub_126808(v330, v529, type metadata accessor for SeriesQuickActionButtonView);
    v340 = (*(v460 + 80) + 16) & ~*(v460 + 80);
    v341 = (v461 + *(v521 + 80) + v340) & ~*(v521 + 80);
    v521 = *(v521 + 80);
    v342 = swift_allocObject();
    sub_125C90(v338, v342 + v340, type metadata accessor for ListItemViewModel);
    sub_125C90(v339, v342 + v341, type metadata accessor for SeriesQuickActionButtonView);
    sub_2604C0();
    sub_260420();
    v343 = v331;
    v344 = v332 + v331[9];
    *v344 = swift_getKeyPath();
    *(v344 + 8) = 0;
    v345 = v331[10];
    *(v332 + v345) = swift_getKeyPath();
    sub_2EF0(&qword_316930, &qword_2689A0);
    swift_storeEnumTagMultiPayload();
    v346 = v332 + v331[11];
    *v346 = swift_getKeyPath();
    *(v346 + 40) = 0;
    v347 = (v518 + *(v519 + 36));
    *v347 = sub_128558;
    v347[1] = v342;
    sub_3080(v553);
    v348 = v479;
    sub_261750();
    v349 = sub_8E38(&qword_31EEC0, &qword_31EE00, &qword_279900);
    v350 = sub_125CF8(&qword_319400, &type metadata accessor for PlainButtonStyle);
    v351 = v476;
    v352 = v481;
    sub_262A50();
    (*(v480 + 8))(v348, v352);
    sub_8E80(v332, &qword_31EE00, &qword_279900);
    v353 = v482;
    sub_2618C0();
    *&v533 = v343;
    *(&v533 + 1) = v352;
    *&v534 = v349;
    *(&v534 + 1) = v350;
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    v354 = v487;
    v355 = v478;
    v356 = v485;
    sub_262AA0();
    (*(v483 + 8))(v353, v356);
    (*(v477 + 8))(v351, v355);
    v357 = &v354[*(v490 + 36)];
    v358 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_30CC(v520, &v357[v358[7]]);
    v359 = swift_getKeyPath();
    LOBYTE(v550[0]) = 0;
    *v357 = v359;
    v357[66] = 0;
    v360 = v358[5];
    *&v357[v360] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    v361 = &v357[v358[6]];
    *v361 = swift_getKeyPath();
    v361[40] = 0;
    v362 = v559;
    sub_2E18(v557, v558);
    v363 = *(v362 + 8);
    v364 = sub_2606E0();
    v366 = v365;
    v367 = v532;
    sub_120FF4(&v533);
    if (*(&v534 + 1))
    {
      v368 = v354;
      sub_2EF0(&qword_317240, &qword_269790);
      v369 = swift_allocObject();
      *(v369 + 16) = xmmword_267D30;
      *(v369 + 32) = v364;
      v370 = v369 + 32;
      *(v369 + 40) = v366;
      v371 = sub_127F84(v369);
      swift_setDeallocating();
      sub_12801C(v370);
      swift_deallocClassInstance();
      if (qword_315930 != -1)
      {
        swift_once();
      }

      v372 = ~v521;
      if (byte_31C408 == 1 && (v373 = [objc_opt_self() standardUserDefaults], v374 = sub_264420(), v375 = objc_msgSend(v373, "integerForKey:", v374), v373, v374, (v375 & 0x20) != 0))
      {

        sub_8198(v368, v439, &qword_31EE10, &qword_279910);
        swift_storeEnumTagMultiPayload();
        sub_126474();
        sub_126500();
        v377 = v430;
        sub_261F80();
      }

      else
      {
        sub_30CC(&v533, v552);
        v376 = v425;
        sub_1A7A30(v371, v552, &v425[*(v444 + 36)]);
        sub_8198(v368, v376, &qword_31EE10, &qword_279910);
        sub_8198(v376, v439, &qword_31EDF0, &unk_2798E8);
        swift_storeEnumTagMultiPayload();
        sub_126474();
        sub_126500();
        v377 = v430;
        sub_261F80();
        sub_8E80(v376, &qword_31EDF0, &unk_2798E8);
      }

      sub_8E80(v368, &qword_31EE10, &qword_279910);
      v378 = v433;
      sub_22148(v377, v433, &qword_31EE18, &qword_279918);
      sub_3080(&v533);
      v379 = sub_2604A0();
      v380 = v530;
      sub_2604C0();
      v381 = v529;
      sub_126808(v367, v529, type metadata accessor for SeriesQuickActionButtonView);
      v382 = (v521 + 16) & v372;
      v383 = swift_allocObject();
      sub_125C90(v381, v383 + v382, type metadata accessor for SeriesQuickActionButtonView);
      v384 = sub_1263E8();
      v385 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
      v529 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
      v386 = v434;
      v387 = v436;
      sub_262960();

      (*(v514 + 8))(v380, v515);
      sub_8E80(v378, &qword_31EE18, &qword_279918);
      v388 = v511;
      *(&v534 + 1) = v511;
      *&v535 = sub_125CF8(&qword_31EEE8, &type metadata accessor for AltSeriesContentTypeExposureData);
      *(&v535 + 1) = sub_125CF8(&qword_31EEF0, &type metadata accessor for AltSeriesContentTypeExposureData);
      v389 = sub_10934(&v533);
      (*(v510 + 16))(v389, v509, v388);
      v552[0] = v387;
      v552[1] = v379;
      v530 = v379;
      v552[2] = v384;
      v552[3] = v385;
      v532 = v385;
      v390 = v529;
      v552[4] = v529;
      swift_getOpaqueTypeConformance2();
      v391 = v441;
      v392 = v437;
      sub_262950();
      (*(v435 + 8))(v386, v392);
      sub_8E80(&v533, &qword_31EEF8, &unk_279BC8);
      v393 = v431;
      sub_8198(v522, v431, &qword_31A480, &qword_273520);
      v394 = v493;
      if ((v517)(v393, 1, v493) == 1)
      {
        sub_8E80(v393, &qword_31A480, &qword_273520);
        v395 = 1;
        v396 = v446;
        v397 = v489;
        v398 = v488;
      }

      else
      {
        v398 = v488;
        v399 = v393 + *(v394 + 20);
        v396 = v446;
        v397 = v489;
        (*(v488 + 16))(v446, v399, v489);
        sub_1288E0(v393, type metadata accessor for CardInfo);
        v395 = 0;
      }

      (*(v398 + 56))(v396, v395, 1, v397);
      v400 = swift_getKeyPath();
      v401 = v440;
      v402 = &v440[*(v502 + 36)];
      v403 = sub_2EF0(&qword_31AD20, &unk_2799D0);
      sub_22148(v396, v402 + *(v403 + 28), &qword_31A0C8, &qword_26E2C0);
      *v402 = v400;
      (*(v442 + 32))(v401, v391, v443);
      v404 = v401;
      v405 = v445;
      sub_22148(v404, v445, &qword_31EE30, &unk_279930);
      sub_8198(v405, v500, &qword_31EE30, &unk_279930);
      swift_storeEnumTagMultiPayload();
      v406 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
      *&v533 = v531;
      *(&v533 + 1) = v530;
      *&v534 = v406;
      *(&v534 + 1) = v532;
      *&v535 = v390;
      swift_getOpaqueTypeConformance2();
      sub_126228();
      v407 = v501;
      sub_261F80();
      sub_8198(v407, v525, &qword_31EE48, &qword_279950);
      swift_storeEnumTagMultiPayload();
      sub_1260B4();
      sub_126708();
      sub_261F80();
      sub_8E80(v407, &qword_31EE48, &qword_279950);
      sub_8E80(v405, &qword_31EE30, &unk_279930);
      sub_1288E0(v491, type metadata accessor for ShrinkableText);
      (*(v510 + 8))(v509, v511);
      sub_8E80(v522, &qword_31A480, &qword_273520);
      sub_1288E0(v513, type metadata accessor for ListItemViewModel);
      v408 = v557;
      return sub_3080(v408);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_F7CC(v134, &v533);
  LODWORD(v522) = *(v532 + 89);
  LODWORD(v513) = _UISolariumEnabled();
  v137 = *(sub_2EF0(&qword_319AF8, &qword_279110) + 48);
  v138 = v503;
  *v503 = 0xD000000000000013;
  v138[1] = 0x800000000028FD20;
  sub_263F90();
  v140 = v450;
  v139 = v451;
  (*(v450 + 104))(v109, enum case for LocalizerLookupStrategy.default(_:), v451);
  sub_260B80();
  (*(v140 + 8))(v109, v139);
  (*(v448 + 8))(v113, v449);
  swift_storeEnumTagMultiPayload();
  sub_2E18(&v533, *(&v534 + 1));
  if ((sub_2606B0() & 1) == 0)
  {
    v144 = 1;
    goto LABEL_18;
  }

  v141 = v532;
  v142 = *(v532 + 96);
  if (v142)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v143 = v142;
    sub_260FF0();

    v144 = LOBYTE(v557[0]);
LABEL_18:
    LODWORD(v516) = v144;
    LODWORD(v513) = v513 ^ 1;
    v214 = v517;
    v215 = *(v517 + 52);
    sub_2E18(&v533, *(&v534 + 1));
    sub_2606C0();
    type metadata accessor for ButtonViewModel.ActionKind(0);
    swift_storeEnumTagMultiPayload();
    v557[0] = 0x403C000000000000;
    v216 = enum case for Font.TextStyle.subheadline(_:);
    v217 = *(v518 + 104);
    v218 = v520;
    LODWORD(v512) = enum case for Font.TextStyle.subheadline(_:);
    v219 = v519;
    v217(v520, enum case for Font.TextStyle.subheadline(_:), v519);
    v518 = sub_40130();
    sub_2612E0();
    v220 = v214[5];
    v557[0] = 0x4008000000000000;
    v217(v218, v216, v219);
    sub_2612E0();
    v221 = v214[6];
    *&v124[v221] = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v222 = v214[14];
    v223 = sub_260BD0();
    (*(*(v223 - 8) + 56))(&v124[v222], 1, 1, v223);
    v124[v214[7]] = v522;
    v124[v214[8]] = v513;
    v124[v214[9]] = 0;
    v224 = &v124[v214[10]];
    *v224 = 2;
    *(v224 + 1) = 0;
    *(v224 + 2) = 0;
    *(v224 + 3) = 0;
    sub_125C90(v503, &v124[v214[11]], type metadata accessor for ButtonViewModel.Content);
    v124[v214[12]] = v516;
    v557[0] = 0x4020000000000000;
    v225 = v512;
    v217(v218, v512, v219);
    v522 = v124;
    v226 = v452;
    sub_2612E0();
    v227 = v531;
    v228 = *(v531 + 20);
    v557[0] = 0x3FF8000000000000;
    v217(v218, v225, v219);
    sub_2612E0();
    v229 = *(v227 + 24);
    *(v226 + v229) = swift_getKeyPath();
    sub_2EF0(&qword_319B00, &unk_26EA40);
    swift_storeEnumTagMultiPayload();
    sub_125C90(v522, v226 + *(v227 + 28), type metadata accessor for ButtonViewModel);
    v522 = sub_2604A0();
    v230 = v530;
    sub_2604C0();
    v231 = v529;
    sub_126808(v532, v529, type metadata accessor for SeriesQuickActionButtonView);
    v232 = (*(v521 + 80) + 16) & ~*(v521 + 80);
    v233 = swift_allocObject();
    sub_125C90(v231, v233 + v232, type metadata accessor for SeriesQuickActionButtonView);
    v532 = sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
    v234 = sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
    v413 = sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
    v235 = v456;
    v236 = v522;
    sub_262960();

    (*(v514 + 8))(v230, v515);
    sub_1288E0(v226, type metadata accessor for ButtonView);
    v237 = v457;
    v238 = v496;
    (*(v457 + 16))(v500, v235, v496);
    swift_storeEnumTagMultiPayload();
    v557[0] = v531;
    v557[1] = v236;
    v557[2] = v532;
    v558 = v234;
    v559 = v413;
    swift_getOpaqueTypeConformance2();
    sub_126228();
    v239 = v501;
    sub_261F80();
    sub_8198(v239, v525, &qword_31EE48, &qword_279950);
    swift_storeEnumTagMultiPayload();
    sub_1260B4();
    sub_126708();
    sub_261F80();
    sub_8E80(v239, &qword_31EE48, &qword_279950);
    (*(v237 + 8))(v235, v238);
LABEL_40:
    v408 = &v533;
    return sub_3080(v408);
  }

LABEL_45:
  v412 = *(v141 + 104);
  type metadata accessor for ProfileRestrictions();
  sub_125CF8(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_1252A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ListItemViewModel();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_126808(a1, v9, type metadata accessor for ListItemViewModel);
  v10 = type metadata accessor for SeriesQuickActionButtonView(0);
  ListItemView.init(_:contextActionMenuView:)(v9, *(a2 + *(v10 + 36)), *(a2 + *(v10 + 36) + 8), a3);
}

uint64_t sub_125368(uint64_t a1, uint64_t a2)
{
  v4 = sub_2604A0();
  v10 = *(v4 - 8);
  (*(v10 + 8))(a1, v4);
  v5 = a2 + *(type metadata accessor for SeriesQuickActionButtonView(0) + 32);
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v7 = *(v10 + 16);
  v8 = v5 + *(v6 + 20);

  return v7(a1, v8, v4);
}

uint64_t sub_125450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43[15] = *(v2 + 63);
  v15 = *(v2 + 48);
  v42[2] = *(v2 + 32);
  *v43 = v15;
  v16 = *(v2 + 16);
  v42[0] = *v2;
  v42[1] = v16;
  if (v43[18])
  {
    v17 = *(v2 + 48);
    v39 = *(v2 + 32);
    v40 = v17;
    v41 = *(v2 + 64);
    v18 = *(v2 + 16);
    v37 = *v2;
    v38 = v18;
    v35 = v39;
    v36[0] = v17;
    *(v36 + 15) = *(v2 + 63);
    v33 = v37;
    v34 = v18;
    sub_8198(&v33, v32, &qword_317F48, &qword_26A9A0);
  }

  else
  {
    v30 = a1;
    v28 = v12;

    sub_264900();
    v19 = sub_2624B0();
    v29 = v6;
    v20 = v19;
    sub_260D10();

    v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = v29;
    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v42, &qword_317F40, &qword_26E9D0);
    (*(v10 + 8))(v14, v28);
  }

  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36[0] = v40;
  LOWORD(v36[1]) = v41;
  if (*(&v37 + 1))
  {
    v21 = BYTE3(v36[0]);
    v22 = *(&v35 + 1);
    sub_8E80(&v33, &qword_317F48, &qword_26A9A0);
    v23 = (v22 >= 0.85) | v21 & 1;
  }

  else
  {
    v23 = 2;
  }

  v32[0] = v23;
  sub_126808(v3, v8, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_125C90(v8, v25 + v24, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
  sub_2EF0(&qword_31F068, &qword_279CF8);
  sub_2EF0(&qword_31A0B8, &unk_279D00);
  sub_8E38(&qword_31F070, &qword_31F068, &qword_279CF8);
  sub_129214();
  sub_262E50();
}

void sub_12582C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_260CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261C90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 2 && *a2 != 2)
  {
    v17 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
    sub_8198(a3 + v17[6], &v27, &qword_31A240, &qword_26E588);
    v26 = v7;
    if (v30 == 1)
    {
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v18 = *(&v28 + 1);
      if (*(&v28 + 1))
      {
LABEL_7:
        sub_2E18(&v31, v18);
        v19 = v17[7];
        refreshed = type metadata accessor for RefreshSeriesUberHeaderAction();
        *(&v28 + 1) = refreshed;
        v29 = sub_125CF8(&qword_31F080, type metadata accessor for RefreshSeriesUberHeaderAction);
        v21 = sub_10934(&v27);
        sub_30CC(a3 + v19, v21);
        v22 = v21 + *(refreshed + 20);
        sub_263AC0();
        v23 = a3 + v17[5];
        sub_40D18(v10);
        sub_260B20();
        (*(v26 + 8))(v10, v6);
        sub_3080(&v27);
        sub_3080(&v31);
        return;
      }
    }

    else
    {
      sub_264900();
      v24 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();

      (*(v12 + 8))(v15, v11);
      v18 = *(&v32 + 1);
      if (*(&v32 + 1))
      {
        goto LABEL_7;
      }
    }

    sub_8E80(&v31, &qword_31A208, &unk_27A5E0);
  }
}

uint64_t sub_125BD0(uint64_t a1)
{
  sub_8198(a1, v3, &unk_31EF78, &qword_279C50);
  sub_8198(v3, &v2, &unk_31EF78, &qword_279C50);
  sub_129290();
  sub_261CC0();
  return sub_8E80(v3, &unk_31EF78, &qword_279C50);
}

uint64_t sub_125C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_125CF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_125D40()
{
  result = qword_31EE58;
  if (!qword_31EE58)
  {
    sub_2F9C(&qword_31EDE8, &qword_2798E0);
    sub_125DCC();
    sub_125E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE58);
  }

  return result;
}

unint64_t sub_125DCC()
{
  result = qword_31EE60;
  if (!qword_31EE60)
  {
    sub_2F9C(&qword_31EDB0, &qword_2798A8);
    sub_125E58();
    sub_126060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE60);
  }

  return result;
}

unint64_t sub_125E58()
{
  result = qword_31EE68;
  if (!qword_31EE68)
  {
    sub_2F9C(&qword_31EDE0, &qword_2798D8);
    sub_2F9C(&qword_31EDD0, &qword_2798C8);
    type metadata accessor for QuickActionBuyButtonView(255);
    sub_2604A0();
    sub_125CF8(&qword_31EE70, type metadata accessor for QuickActionBuyButtonView);
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_31EE88, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE68);
  }

  return result;
}

unint64_t sub_126060()
{
  result = qword_31EE90;
  if (!qword_31EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE90);
  }

  return result;
}

unint64_t sub_1260B4()
{
  result = qword_31EE98;
  if (!qword_31EE98)
  {
    sub_2F9C(&qword_31EE48, &qword_279950);
    type metadata accessor for ButtonView();
    sub_2604A0();
    sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
    swift_getOpaqueTypeConformance2();
    sub_126228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EE98);
  }

  return result;
}

unint64_t sub_126228()
{
  result = qword_31EEA0;
  if (!qword_31EEA0)
  {
    sub_2F9C(&qword_31EE30, &unk_279930);
    sub_2F9C(&qword_31EE20, &qword_279920);
    sub_2F9C(&qword_31EE18, &qword_279918);
    sub_2604A0();
    sub_1263E8();
    sub_125CF8(&qword_31EE78, &type metadata accessor for SeriesData);
    sub_125CF8(&qword_31EE80, &type metadata accessor for SeriesData);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEA0);
  }

  return result;
}

unint64_t sub_1263E8()
{
  result = qword_31EEA8;
  if (!qword_31EEA8)
  {
    sub_2F9C(&qword_31EE18, &qword_279918);
    sub_126474();
    sub_126500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEA8);
  }

  return result;
}

unint64_t sub_126474()
{
  result = qword_31EEB0;
  if (!qword_31EEB0)
  {
    sub_2F9C(&qword_31EDF0, &unk_2798E8);
    sub_126500();
    sub_126060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEB0);
  }

  return result;
}

unint64_t sub_126500()
{
  result = qword_31EEB8;
  if (!qword_31EEB8)
  {
    sub_2F9C(&qword_31EE10, &qword_279910);
    sub_2F9C(&qword_31EE08, &qword_279908);
    sub_261FA0();
    sub_2F9C(&qword_31EE00, &qword_279900);
    sub_261760();
    sub_8E38(&qword_31EEC0, &qword_31EE00, &qword_279900);
    sub_125CF8(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_125CF8(&qword_31EE88, type metadata accessor for RefreshOnAssetCompletionChangeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEB8);
  }

  return result;
}

unint64_t sub_126708()
{
  result = qword_31EEC8;
  if (!qword_31EEC8)
  {
    sub_2F9C(&qword_31EDC0, &qword_2798B8);
    sub_125D40();
    type metadata accessor for ButtonView();
    sub_125CF8(&qword_31A2D0, type metadata accessor for ButtonView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EEC8);
  }

  return result;
}

uint64_t sub_126808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12688C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_264140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest);
  v36 = a2;
  v13 = sub_264320();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_125CF8(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest);
      v23 = sub_264390();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_127278(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_126B6C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_265050();
  sub_264500();
  v9 = sub_265080();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_264F10() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_12751C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_126CBC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_264140();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_2EF0(&qword_317B30, &qword_269F58);
  result = sub_264B90();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest);
      result = sub_264320();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_127018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2EF0(&qword_31F088, &qword_279D10);
  result = sub_264B90();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_265050();
      sub_264500();
      result = sub_265080();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_127278(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_264140();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_126CBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_12769C();
      goto LABEL_12;
    }

    sub_127A30(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest);
  v15 = sub_264320();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_125CF8(&qword_317B40, &type metadata accessor for MetricsFieldInclusionRequest);
      v23 = sub_264390();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264FA0();
  __break(1u);
  return result;
}

Swift::Int sub_12751C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_127018(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1278D4();
      goto LABEL_16;
    }

    sub_127D4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_265050();
  sub_264500();
  result = sub_265080();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_264F10();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_264FA0();
  __break(1u);
  return result;
}

void *sub_12769C()
{
  v1 = v0;
  v2 = sub_264140();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2EF0(&qword_317B30, &qword_269F58);
  v7 = *v0;
  v8 = sub_264B80();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1278D4()
{
  v1 = v0;
  sub_2EF0(&qword_31F088, &qword_279D10);
  v2 = *v0;
  v3 = sub_264B80();
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
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_127A30(uint64_t a1)
{
  v2 = v1;
  v37 = sub_264140();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_2EF0(&qword_317B30, &qword_269F58);
  v10 = sub_264B90();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_125CF8(&qword_317B38, &type metadata accessor for MetricsFieldInclusionRequest);
      result = sub_264320();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_127D4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2EF0(&qword_31F088, &qword_279D10);
  result = sub_264B90();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_265050();

      sub_264500();
      result = sub_265080();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_127F84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2647D0();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_126B6C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_128078()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1280C4()
{
  v1 = v0;
  v2 = type metadata accessor for ListItemViewModel();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for SeriesQuickActionButtonView(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v1 + v4);
  sub_3080((v1 + v4 + 8));
  if (*(v1 + v4 + 104))
  {
    sub_3080(v9 + 10);
  }

  if (v9[18])
  {
    sub_3080(v9 + 15);
  }

  if (v9[23])
  {
    sub_3080(v9 + 20);
  }

  if (v9[28])
  {
    sub_3080(v9 + 25);
  }

  if (v9[33])
  {
    sub_3080(v9 + 30);
  }

  if (v9[38])
  {
    sub_3080(v9 + 35);
  }

  v10 = v5 + v7;
  if (v9[43])
  {
    sub_3080(v9 + 40);
  }

  v11 = v4 + v10;
  if (v9[48])
  {
    sub_3080(v9 + 45);
  }

  v12 = v11 & ~v7;
  sub_3080(v9 + 51);
  v13 = (v9 + *(v2 + 40));
  v14 = type metadata accessor for CardInfo();
  v15 = (*(v14 - 8) + 48);
  v49 = *v15;
  if (!(*v15)(v13, 1, v14))
  {
    v16 = *v13;

    v17 = v6;
    v18 = v1;
    v19 = *(v14 + 20);
    v20 = sub_2601E0();
    v21 = v13 + v19;
    v1 = v18;
    v6 = v17;
    (*(*(v20 - 8) + 8))(v21, v20);
  }

  v22 = (v9 + *(v2 + 44));
  v23 = v22[1];

  v24 = v22[3];

  v25 = v22[5];

  v26 = v22[7];

  v27 = v22[9];

  v28 = v22[11];

  v29 = v22[13];

  v30 = v22[15];

  v31 = v22[17];

  v32 = (v1 + v12);
  if (*(v1 + v12 + 40))
  {
    if (v32[3])
    {
      sub_3080((v1 + v12));
    }

    if (v32[11])
    {
      goto LABEL_23;
    }

LABEL_26:
    v34 = v32[6];

    goto LABEL_27;
  }

  v33 = *v32;

  if ((v32[11] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (v32[9])
  {
    sub_3080(v32 + 6);
  }

LABEL_27:

  v35 = (v32 + *(v6 + 32));
  type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_30:
    sub_3080(v35);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  sub_3080(v35);
  v37 = sub_2EF0(&qword_31EED0, &qword_279A38);
  v38 = v35 + *(v37 + 48);
  if (!v49(v38, 1, v14))
  {
    v39 = *v38;

    v40 = *(v14 + 20);
    v41 = sub_2601E0();
    (*(*(v41 - 8) + 8))(&v38[v40], v41);
  }

  v42 = *(v37 + 64);
  v43 = sub_2605E0();
  (*(*(v43 - 8) + 8))(v35 + v42, v43);
LABEL_34:
  v44 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v45 = *(v44 + 20);
  v46 = sub_2604A0();
  (*(*(v46 - 8) + 8))(v35 + v45, v46);
  sub_3080((v35 + *(v44 + 24)));
  v47 = *(v32 + *(v6 + 36) + 8);

  return swift_deallocObject();
}

uint64_t sub_128558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListItemViewModel() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SeriesQuickActionButtonView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1252A4(v1 + v4, v7, a1);
}

uint64_t sub_128644()
{
  v1 = type metadata accessor for SeriesQuickActionButtonView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  if (*(v0 + v2 + 40))
  {
    if (v4[3])
    {
      sub_3080((v0 + v2));
    }

    if (v4[11])
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = v4[6];

    goto LABEL_9;
  }

  v5 = *v4;

  if ((v4[11] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4[9])
  {
    sub_3080(v4 + 6);
  }

LABEL_9:

  v7 = (v4 + *(v1 + 32));
  type metadata accessor for SeriesQuickActionButtonViewModel.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_12:
    sub_3080(v7);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  sub_3080(v7);
  v9 = sub_2EF0(&qword_31EED0, &qword_279A38);
  v10 = v7 + *(v9 + 48);
  v11 = type metadata accessor for CardInfo();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = *v10;

    v13 = *(v11 + 20);
    v14 = sub_2601E0();
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
  }

  v15 = *(v9 + 64);
  v16 = sub_2605E0();
  (*(*(v16 - 8) + 8))(v7 + v15, v16);
LABEL_16:
  v17 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v18 = *(v17 + 20);
  v19 = sub_2604A0();
  (*(*(v19 - 8) + 8))(v7 + v18, v19);
  sub_3080((v7 + *(v17 + 24)));
  v20 = *(v4 + *(v1 + 36) + 8);

  return swift_deallocObject();
}

uint64_t sub_1288E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1289D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_128AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SeriesQuickActionButtonViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_128B64()
{
  sub_78DC8(319, &qword_31EF68, &qword_31D240, &qword_279000);
  if (v0 <= 0x3F)
  {
    sub_78DC8(319, &qword_31EF70, &unk_31EF78, &qword_279C50);
    if (v1 <= 0x3F)
    {
      sub_95884();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SeriesQuickActionButtonViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_16D28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_128C6C()
{
  result = qword_31EFB8;
  if (!qword_31EFB8)
  {
    sub_2F9C(&qword_31EFC0, &qword_279C58);
    sub_1260B4();
    sub_126708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31EFB8);
  }

  return result;
}

uint64_t sub_128D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
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
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_128DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_31EFC8, &unk_279C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_128EBC()
{
  sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
  if (v0 <= 0x3F)
  {
    sub_128FA0();
    if (v1 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A200, &qword_31A208, &unk_27A5E0);
      if (v2 <= 0x3F)
      {
        sub_11EB94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_128FA0()
{
  if (!qword_31A1F8)
  {
    sub_260CA0();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31A1F8);
    }
  }
}

uint64_t sub_129014()
{
  v1 = type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_3060(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 66));
  v4 = v1[5];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_260CA0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
    v6 = *(v3 + v4);
  }

  v7 = v3 + v1[6];
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      sub_3080(v7);
    }
  }

  else
  {
    v8 = *v7;
  }

  sub_3080((v3 + v1[7]));

  return swift_deallocObject();
}

void sub_129194(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for RefreshOnAssetCompletionChangeViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_12582C(a1, a2, v6);
}

unint64_t sub_129214()
{
  result = qword_31F078;
  if (!qword_31F078)
  {
    sub_2F9C(&qword_31A0B8, &unk_279D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F078);
  }

  return result;
}

unint64_t sub_129290()
{
  result = qword_31F0A0;
  if (!qword_31F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0A0);
  }

  return result;
}

uint64_t sub_1292E4()
{
  sub_2F9C(&qword_31F068, &qword_279CF8);
  sub_2F9C(&qword_31A0B8, &unk_279D00);
  sub_8E38(&qword_31F070, &qword_31F068, &qword_279CF8);
  sub_129214();
  return swift_getOpaqueTypeConformance2();
}

uint64_t AssetAction.init(id:assetID:instanceID:isExplicit:actionMetrics:kind:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  LODWORD(v54) = a7;
  v53 = a6;
  v50 = a10;
  v18 = sub_260560();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  __chkstk_darwin(v18);
  v47 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_260600();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_316B98, &unk_275840);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v55 = &v46 - v30;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v31 = v53;
  *(a9 + 32) = a5;
  *(a9 + 40) = v31;
  *(a9 + 48) = v54;
  v32 = type metadata accessor for AssetAction(0);
  v33 = *(v32 + 32);
  v34 = sub_263AF0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v37 = a9 + v33;
  v38 = v50;
  v54 = a8;
  v36(v37, a8, v34);
  v52 = v32;
  sub_12B7FC(v38, a9 + *(v32 + 40), type metadata accessor for AssetAction.Kind);
  v53 = a11;
  sub_ECAC8(a11, v28);
  v39 = sub_260620();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  v51 = v28;
  if (v41(v28, 1, v39) == 1)
  {
    AssetAction.Kind.appAnalyticsClickTargetType.getter(v24);
    (*(v48 + 104))(v47, enum case for LinkActionType.click(_:), v49);
    sub_260610();
    sub_8E80(v53, &qword_316B98, &unk_275840);
    sub_12B864(v38, type metadata accessor for AssetAction.Kind);
    (*(v35 + 8))(v54, v34);
    v42 = v51;
    v43 = v41(v51, 1, v39);
    v44 = v55;
    if (v43 != 1)
    {
      sub_8E80(v42, &qword_316B98, &unk_275840);
    }
  }

  else
  {
    sub_8E80(v53, &qword_316B98, &unk_275840);
    sub_12B864(v38, type metadata accessor for AssetAction.Kind);
    (*(v35 + 8))(v54, v34);
    v44 = v55;
    (*(v40 + 32))(v55, v51, v39);
  }

  (*(v40 + 56))(v44, 0, 1, v39);
  return sub_129C04(v44, a9 + *(v52 + 36));
}

uint64_t sub_12983C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0xD00000000000001ALL;
  *(a3 + 8) = 0x8000000000291540;
  *(a3 + 16) = a1;
  *(a3 + 17) = a2;
  type metadata accessor for AssetAction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AssetAction.Kind.appAnalyticsClickTargetType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AssetAction.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12B7FC(v2, v7, type metadata accessor for AssetAction.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v8 = &enum case for ClickData.TargetType.buy(_:);
      goto LABEL_4;
    case 2u:
    case 3u:
    case 7u:
      sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      goto LABEL_3;
    case 4u:
      sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v8 = &enum case for ClickData.TargetType.audioSample(_:);
      goto LABEL_4;
    case 5u:
      v15 = *v7;
      v16 = v7[1];
      if (v15 == 0xD00000000000001ALL && 0x8000000000291540 == v16)
      {
      }

      else
      {
        v18 = sub_264F10();

        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v8 = &enum case for ClickData.TargetType.removeFromWantToRead(_:);
      goto LABEL_4;
    case 6u:
      v23 = enum case for ClickData.TargetType.readSample(_:);
      v24 = sub_260600();
      (*(*(v24 - 8) + 104))(a1, v23, v24);
      v14 = sub_260060();
      return (*(*(v14 - 8) + 8))(v7, v14);
    case 8u:
    case 0xBu:
    case 0xCu:
LABEL_3:
      v8 = &enum case for ClickData.TargetType.navigate(_:);
      goto LABEL_4;
    case 9u:
    case 0xAu:
      v12 = enum case for ClickData.TargetType.navigate(_:);
      v13 = sub_260600();
      (*(*(v13 - 8) + 104))(a1, v12, v13);
      v14 = sub_2601B0();
      return (*(*(v14 - 8) + 8))(v7, v14);
    default:
      v19 = *v7;
      v20 = v7[1];
      if (v19 == 0xD00000000000001ALL && 0x8000000000291540 == v20)
      {
      }

      else
      {
        v22 = sub_264F10();

        if ((v22 & 1) == 0)
        {
LABEL_17:
          v8 = &enum case for ClickData.TargetType.button(_:);
          goto LABEL_4;
        }
      }

      v8 = &enum case for ClickData.TargetType.addToWantToRead(_:);
LABEL_4:
      v9 = *v8;
      v10 = sub_260600();
      return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }
}

uint64_t sub_129C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316B98, &unk_275840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AssetAction.Kind.figaroActionType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AssetAction.Kind(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12B7FC(v2, v7, type metadata accessor for AssetAction.Kind);
  result = swift_getEnumCaseMultiPayload();
  v9 = 20;
  switch(result)
  {
    case 1:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 4;
      break;
    case 2:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 6;
      break;
    case 3:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 11;
      break;
    case 4:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 2;
      break;
    case 6:
      v11 = sub_260060();
      result = (*(*(v11 - 8) + 8))(v7, v11);
      v9 = 24;
      break;
    case 7:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 33;
      break;
    case 8:
      if (*v7)
      {
        v9 = 15;
      }

      else
      {
        v9 = 14;
      }

      break;
    case 9:
    case 10:
      v10 = sub_2601B0();
      result = (*(*(v10 - 8) + 8))(v7, v10);
      goto LABEL_4;
    case 11:
      break;
    case 12:
LABEL_4:
      v9 = 18;
      break;
    default:
      result = sub_12B864(v7, type metadata accessor for AssetAction.Kind);
      v9 = 0;
      break;
  }

  *a1 = v9;
  return result;
}

uint64_t AssetAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetAction(0) + 32);
  v4 = sub_263AF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AssetAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetAction(0) + 36);

  return sub_ECAC8(v3, a1);
}

uint64_t sub_129FF4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7461446B63696C63;
  if (v1 != 5)
  {
    v3 = 1684957547;
  }

  v4 = 0x63696C7078457369;
  if (v1 != 3)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x44497465737361;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736E69;
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

uint64_t sub_12A0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12C3E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12A0FC(uint64_t a1)
{
  v2 = sub_12B6FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A138(uint64_t a1)
{
  v2 = sub_12B6FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AssetAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for AssetAction.Kind(0);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_316B98, &unk_275840);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v9 = sub_263AF0();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2EF0(&qword_31F0A8, &qword_279D28);
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v47);
  v15 = &v41 - v14;
  v16 = type metadata accessor for AssetAction(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v50 = a1;
  sub_2E18(a1, v21);
  sub_12B6FC();
  v48 = v15;
  v22 = v49;
  sub_265120();
  if (v22)
  {
    return sub_3080(v50);
  }

  v23 = v12;
  v24 = v8;
  v26 = v45;
  v25 = v46;
  v57 = 0;
  *v19 = sub_264DC0();
  *(v19 + 1) = v28;
  v49 = v28;
  v56 = 1;
  *(v19 + 2) = sub_264DC0();
  *(v19 + 3) = v29;
  v55 = 2;
  *(v19 + 4) = sub_264D70();
  *(v19 + 5) = v30;
  v54 = 3;
  v31 = v47;
  v32 = sub_264DD0();
  v49 = 0;
  v19[48] = v32 & 1;
  v53 = 4;
  sub_12B750(&qword_31C5A0, &type metadata accessor for ActionMetrics);
  v33 = v49;
  sub_264DF0();
  v49 = v33;
  if (v33)
  {
    (*(v26 + 8))(v48, v31);
    v34 = 0;
    v35 = 0;
  }

  else
  {
    (*(v44 + 32))(&v19[v16[8]], v23, v9);
    sub_260620();
    v52 = 5;
    sub_12B750(&qword_31F0B8, &type metadata accessor for ClickData);
    v39 = v49;
    sub_264DB0();
    v49 = v39;
    if (v39)
    {
      (*(v26 + 8))(v48, v31);
      v35 = 0;
      v34 = 1;
    }

    else
    {
      sub_129C04(v24, &v19[v16[9]]);
      v51 = 6;
      sub_12B750(&qword_31F0C0, type metadata accessor for AssetAction.Kind);
      v40 = v49;
      sub_264DF0();
      v49 = v40;
      if (!v40)
      {
        (*(v26 + 8))(v48, v47);
        sub_12B798(v25, &v19[v16[10]]);
        sub_12B7FC(v19, v42, type metadata accessor for AssetAction);
        sub_3080(v50);
        return sub_12B864(v19, type metadata accessor for AssetAction);
      }

      (*(v26 + 8))(v48, v47);
      v34 = 1;
      v35 = 1;
    }
  }

  sub_3080(v50);
  v36 = *(v19 + 1);

  v37 = *(v19 + 3);

  v38 = *(v19 + 5);

  if (v34)
  {
    result = (*(v44 + 8))(&v19[v16[8]], v9);
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v35)
  {
    return result;
  }

  return sub_8E80(&v19[v16[9]], &qword_316B98, &unk_275840);
}

uint64_t sub_12A7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_263AF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_12A848()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_12A8A4()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_12A8EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_300C88;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_12A964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_300CC0;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_12A9BC(uint64_t a1)
{
  v2 = sub_12B8C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12A9F8(uint64_t a1)
{
  v2 = sub_12B8C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AssetAction.Kind.init(from:)(uint64_t *a1)
{
  v3 = sub_2EF0(&qword_31F0C8, &qword_279D30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_12B8C4();
  sub_265120();
  if (!v1)
  {
    sub_264DC0();

    v9 = sub_264C10();
    swift_allocError();
    v11 = v10;
    sub_264D60();
    sub_264BF0();
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
  }

  return sub_3080(a1);
}

uint64_t static AssetAction.Kind.markAsFinished.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x8000000000292DE0;
  *(a1 + 16) = 0;
  type metadata accessor for AssetAction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s7BooksUI11AssetActionV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260060();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v107 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v105 - v8;
  v9 = type metadata accessor for AssetAction.Kind(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v105 - v13;
  __chkstk_darwin(v15);
  v111 = (&v105 - v16);
  __chkstk_darwin(v17);
  v19 = (&v105 - v18);
  __chkstk_darwin(v20);
  v22 = &v105 - v21;
  __chkstk_darwin(v23);
  v25 = (&v105 - v24);
  __chkstk_darwin(v26);
  v110 = &v105 - v27;
  __chkstk_darwin(v28);
  v30 = (&v105 - v29);
  v31 = sub_2EF0(&qword_31F2A8, &unk_27A100);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v35 = (&v105 + *(v34 + 56) - v33);
  v36 = a1;
  v37 = &v105 - v33;
  sub_12B7FC(v36, &v105 - v33, type metadata accessor for AssetAction.Kind);
  v38 = a2;
  v39 = v35;
  sub_12B7FC(v38, v35, type metadata accessor for AssetAction.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_12B7FC(v37, v14, type metadata accessor for AssetAction.Kind);
        v65 = *v14;
        v64 = *(v14 + 1);
        v66 = v14[16];
        v67 = v14[17];
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_31;
        }

        goto LABEL_53;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_57;
      }

      sub_12B7FC(v37, v30, type metadata accessor for AssetAction.Kind);
      v42 = *v30;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_45:

        goto LABEL_57;
      }

LABEL_12:
      v43 = *v35;
      v44 = v42;
      v45 = sub_2609E0();
      v47 = v46;

      v48 = v43;
      v49 = sub_2609E0();
      v51 = v50;

      if (v45 == v49 && v47 == v51)
      {
        LOBYTE(v41) = 1;
      }

      else
      {
        LOBYTE(v41) = sub_264F10();
      }

      goto LABEL_96;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_12B7FC(v37, v19, type metadata accessor for AssetAction.Kind);
      v75 = *v19;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v76 = *v35;
        if (v75)
        {
          v41 = v75;
          v77 = sub_2609E0();
          v79 = v78;

          if (!v76)
          {
LABEL_49:
            if (v79)
            {
              v89 = 0;
LABEL_76:

              LOBYTE(v41) = 0;
              goto LABEL_96;
            }

LABEL_80:

            LOBYTE(v41) = 1;
            goto LABEL_96;
          }
        }

        else
        {
          v79 = 0;
          v77 = 0;
          if (!v76)
          {
            goto LABEL_79;
          }
        }

        v89 = v76;
        v91 = sub_2609E0();
        v93 = v92;

        if (v79)
        {
          if (!v93)
          {
LABEL_75:
            v41 = v75;
            goto LABEL_76;
          }

LABEL_67:
          if (v77 == v91 && v79 == v93)
          {
            LOBYTE(v41) = 1;
          }

          else
          {
            LOBYTE(v41) = sub_264F10();
          }

          goto LABEL_96;
        }

LABEL_77:

        if (v93)
        {

          LOBYTE(v41) = 0;
        }

        else
        {
          LOBYTE(v41) = 1;
        }

        goto LABEL_96;
      }

      goto LABEL_51;
    }

    sub_12B7FC(v37, v22, type metadata accessor for AssetAction.Kind);
    v54 = *v22;
    v53 = *(v22 + 1);
    v55 = v22[16];
    v56 = *(v22 + 3);
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_53;
    }

    v57 = v37;
    v41 = v35[1];
    v58 = *(v39 + 16);
    v59 = v39[3];
    if (v53)
    {
      if (!v41)
      {

        v90 = v57;
        goto LABEL_97;
      }

      if (v54 == *v39 && v53 == v41)
      {
      }

      else
      {
        v61 = v39[1];
        v62 = sub_264F10();

        if ((v62 & 1) == 0)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v41)
    {

LABEL_87:
      LOBYTE(v41) = 0;
      v90 = v57;
      goto LABEL_97;
    }

    if (v55 != v58)
    {
LABEL_86:

      goto LABEL_87;
    }

    if (v56)
    {
      v96 = sub_2609E0();
      v98 = v97;
      if (v59)
      {
        v99 = v96;
        v100 = sub_2609E0();
        v102 = v101;
        if (v98)
        {
          if (v101)
          {
            if (v99 == v100 && v98 == v101)
            {
              LOBYTE(v41) = 1;
            }

            else
            {
              LOBYTE(v41) = sub_264F10();
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

LABEL_101:

        if (!v102)
        {
          LOBYTE(v41) = 1;
          goto LABEL_112;
        }

LABEL_106:
        LOBYTE(v41) = 0;
LABEL_112:
        v90 = v57;
        goto LABEL_97;
      }

      if (v97)
      {
        v59 = 0;
LABEL_105:

        goto LABEL_106;
      }
    }

    else
    {
      if (v59)
      {
        sub_2609E0();
        v102 = v104;
        v56 = 0;
        goto LABEL_101;
      }

      v56 = 0;
    }

    LOBYTE(v41) = 1;
    goto LABEL_112;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v63 = v112;
      sub_12B7FC(v37, v112, type metadata accessor for AssetAction.Kind);
      v65 = *v63;
      v64 = *(v63 + 8);
      v66 = *(v63 + 16);
      v67 = *(v63 + 17);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_31:
        v68 = v37;
        v69 = v35[1];
        v70 = *(v39 + 16);
        v71 = *(v39 + 17);
        if (v65 == *v39 && v64 == v69)
        {

          if (v66 != v70)
          {
            LOBYTE(v41) = 0;
LABEL_61:
            v90 = v68;
LABEL_97:
            sub_12B864(v90, type metadata accessor for AssetAction.Kind);
            return v41 & 1;
          }
        }

        else
        {
          v73 = v39[1];
          v74 = sub_264F10();

          LOBYTE(v41) = 0;
          if (v74 & 1) == 0 || ((v66 ^ v70))
          {
            goto LABEL_61;
          }
        }

        LOBYTE(v41) = v67 ^ v71 ^ 1;
        goto LABEL_61;
      }

LABEL_53:

      goto LABEL_57;
    }

    sub_12B7FC(v37, v25, type metadata accessor for AssetAction.Kind);
    v42 = *v25;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_45;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v80 = v110;
    sub_12B7FC(v37, v110, type metadata accessor for AssetAction.Kind);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v81 = v108;
      v41 = *(v108 + 32);
      v82 = v106;
      v83 = v80;
      v84 = v109;
      (v41)(v106, v83, v109);
      v85 = v107;
      (v41)(v107, v39, v84);
      LOBYTE(v41) = sub_260030();
      v86 = *(v81 + 8);
      v86(v85, v84);
      v86(v82, v84);
LABEL_96:
      v90 = v37;
      goto LABEL_97;
    }

    (*(v108 + 8))(v80, v109);
LABEL_57:
    sub_8E80(v37, &qword_31F2A8, &unk_27A100);
    LOBYTE(v41) = 0;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v87 = v111;
    sub_12B7FC(v37, v111, type metadata accessor for AssetAction.Kind);
    v75 = *v87;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v76 = *v35;
      if (v75)
      {
        v41 = v75;
        v77 = sub_2609E0();
        v79 = v88;

        if (!v76)
        {
          goto LABEL_49;
        }

LABEL_73:
        v89 = v76;
        v91 = sub_2609E0();
        v93 = v95;

        if (v79)
        {
          if (!v93)
          {
            goto LABEL_75;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      v79 = 0;
      v77 = 0;
      if (v76)
      {
        goto LABEL_73;
      }

LABEL_79:
      v41 = 0;
      goto LABEL_80;
    }

LABEL_51:

    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 11 || swift_getEnumCaseMultiPayload() != 11)
  {
    goto LABEL_57;
  }

  sub_12B864(v37, type metadata accessor for AssetAction.Kind);
  LOBYTE(v41) = 1;
  return v41 & 1;
}

unint64_t sub_12B6FC()
{
  result = qword_31F0B0;
  if (!qword_31F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0B0);
  }

  return result;
}

uint64_t sub_12B750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12B798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAction.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12B7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12B864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_12B8C4()
{
  result = qword_31F0D0;
  if (!qword_31F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F0D0);
  }

  return result;
}

uint64_t sub_12B918(uint64_t a1)
{
  result = sub_12B750(&qword_319AE8, type metadata accessor for AssetAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_12B984(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_263AF0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_316B98, &unk_275840);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AssetAction.Kind(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_12BB10(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_263AF0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316B98, &unk_275840);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AssetAction.Kind(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_12BC88()
{
  sub_22944();
  if (v0 <= 0x3F)
  {
    sub_263AF0();
    if (v1 <= 0x3F)
    {
      sub_12BF78(319, &qword_31F140, &type metadata accessor for ClickData);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AssetAction.Kind(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_12BD70()
{
  sub_12BEAC();
  if (v0 <= 0x3F)
  {
    sub_12C060(319, &qword_31F210, &type metadata accessor for MAsset);
    if (v1 <= 0x3F)
    {
      sub_12BF14();
      if (v2 <= 0x3F)
      {
        sub_12BFCC();
        if (v3 <= 0x3F)
        {
          sub_12C060(319, &qword_31B9C0, &type metadata accessor for URL);
          if (v4 <= 0x3F)
          {
            sub_12C0AC();
            if (v5 <= 0x3F)
            {
              sub_12C0DC();
              if (v6 <= 0x3F)
              {
                sub_12C144();
                if (v7 <= 0x3F)
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
}

void sub_12BEAC()
{
  if (!qword_31F208)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31F208);
    }
  }
}

void sub_12BF14()
{
  if (!qword_31F218)
  {
    sub_12BF78(0, &qword_31F220, &type metadata accessor for MAsset);
    if (!v1)
    {
      atomic_store(v0, &qword_31F218);
    }
  }
}

void sub_12BF78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264A60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_12BFCC()
{
  if (!qword_31F228)
  {
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_31F230, &qword_279E70);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31F228);
    }
  }
}

void sub_12C060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void *sub_12C0AC()
{
  result = qword_31F238;
  if (!qword_31F238)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_31F238);
  }

  return result;
}

void sub_12C0DC()
{
  if (!qword_31F240)
  {
    sub_2601B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31F240);
    }
  }
}

void sub_12C144()
{
  if (!qword_31F248)
  {
    sub_2601B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31F248);
    }
  }
}

unint64_t sub_12C1D4()
{
  result = qword_31F278;
  if (!qword_31F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F278);
  }

  return result;
}

unint64_t sub_12C22C()
{
  result = qword_31F280;
  if (!qword_31F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F280);
  }

  return result;
}

unint64_t sub_12C284()
{
  result = qword_31F288;
  if (!qword_31F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F288);
  }

  return result;
}

unint64_t sub_12C2DC()
{
  result = qword_31F290;
  if (!qword_31F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F290);
  }

  return result;
}

unint64_t sub_12C334()
{
  result = qword_31F298;
  if (!qword_31F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F298);
  }

  return result;
}

unint64_t sub_12C38C()
{
  result = qword_31F2A0;
  if (!qword_31F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2A0);
  }

  return result;
}

uint64_t sub_12C3E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497465737361 && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63696C63 && a2 == 0xE900000000000061 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_12C640@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for GridItemView();
  sub_8198(v1 + *(v12 + 32), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_12F3E8(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_12C82C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for GridItemView() + 40);
  result = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 9) != 1)
  {
    v9 = *v6;

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_F5DAC(v9, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v11;
  }

  return result;
}

uint64_t GridItemView.init(_:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GridItemView();
  v9 = a4 + v8[6];
  *v9 = swift_getKeyPath();
  *(v9 + 66) = 0;
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v11 = v8[8];
  *(a4 + v11) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v8[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v8[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  result = sub_12F3E8(a1, a4, type metadata accessor for GridItemViewModel);
  v15 = (a4 + v8[5]);
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t type metadata accessor for GridItemView()
{
  result = qword_31F3A8;
  if (!qword_31F3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GridItemView.body.getter()
{
  v1 = sub_262370();
  v73 = *(v1 - 8);
  v2 = *(v73 + 64);
  __chkstk_darwin(v1);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EF0(&qword_31A480, &qword_273520);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63 - v6;
  v8 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v63 - v10;
  v12 = sub_2EF0(&qword_31F2B0, &qword_27A1F0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = sub_2EF0(&qword_31F2B8, &qword_27A1F8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v64 = sub_2EF0(&qword_31F2C0, &qword_27A200);
  v22 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v68 = &v63 - v23;
  v66 = sub_2EF0(&qword_31F2C8, &qword_27A208);
  v24 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v67 = &v63 - v25;
  v65 = sub_2EF0(&qword_31F2D0, &qword_27A210);
  v26 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v70 = &v63 - v27;
  v71 = sub_2EF0(&qword_31F2D8, &qword_27A218);
  v28 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v30 = &v63 - v29;
  *v16 = sub_12C82C();
  v16[8] = v31 & 1;
  v32 = &v16[*(v13 + 52)];
  *v32 = sub_261E60();
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = sub_2EF0(&qword_31F2E0, &qword_27A220);
  sub_12D2DC(v0, &v32[*(v33 + 44)]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v16, v21, &qword_31F2B0, &qword_27A1F0);
  v34 = &v21[*(v18 + 44)];
  v35 = v79;
  *(v34 + 4) = v78;
  *(v34 + 5) = v35;
  *(v34 + 6) = v80;
  v36 = v75;
  *v34 = v74;
  *(v34 + 1) = v36;
  v37 = v77;
  *(v34 + 2) = v76;
  *(v34 + 3) = v37;
  v38 = type metadata accessor for GridItemViewModel();
  v39 = v38[8];
  v69 = v0;
  sub_8198(v0 + v39, v7, &qword_31A480, &qword_273520);
  v40 = type metadata accessor for CardInfo();
  if ((*(*(v40 - 8) + 48))(v7, 1, v40) == 1)
  {
    sub_8E80(v7, &qword_31A480, &qword_273520);
    v41 = sub_2601E0();
    (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  }

  else
  {
    v42 = *(v40 + 20);
    v43 = sub_2601E0();
    v44 = v1;
    v45 = *(v43 - 8);
    (*(v45 + 16))(v11, &v7[v42], v43);
    sub_12F388(v7, type metadata accessor for CardInfo);
    (*(v45 + 56))(v11, 0, 1, v43);
    v1 = v44;
  }

  KeyPath = swift_getKeyPath();
  v47 = v68;
  v48 = &v68[*(v64 + 36)];
  v49 = sub_2EF0(&qword_31AD20, &unk_2799D0);
  sub_12E624(v11, v48 + *(v49 + 28));
  *v48 = KeyPath;
  sub_22148(v21, v47, &qword_31F2B8, &qword_27A1F8);
  v50 = swift_getKeyPath();
  v51 = v69;
  LOBYTE(v48) = *(v69 + v38[9]);
  v52 = v67;
  sub_22148(v47, v67, &qword_31F2C0, &qword_27A200);
  v53 = v52 + *(v66 + 36);
  *v53 = v50;
  *(v53 + 8) = v48;
  v54 = swift_getKeyPath();
  LOBYTE(v50) = *(v51 + v38[10]);
  v55 = v70;
  sub_22148(v52, v70, &qword_31F2C8, &qword_27A208);
  v56 = v55 + *(v65 + 36);
  *v56 = v54;
  *(v56 + 8) = v50;
  v57 = swift_getKeyPath();
  v58 = v38[11];
  v59 = &v30[*(v71 + 36)];
  v60 = sub_2EF0(&qword_31F2E8, &qword_27A2D0);
  sub_12F320(v51 + v58, v59 + *(v60 + 28), &type metadata accessor for ContextAssetInfoAnalytics);
  *v59 = v57;
  sub_22148(v55, v30, &qword_31F2D0, &qword_27A210);
  v61 = v72;
  sub_262350();
  sub_12E758();
  sub_262C70();
  (*(v73 + 8))(v61, v1);
  return sub_12EBA8(v30);
}

uint64_t sub_12D2DC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v99 = type metadata accessor for SizeConstants.Environment(0);
  v3 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v101 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_262730();
  v97 = *(v102 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v102);
  v96 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v92 - v8;
  v98 = sub_2EF0(&qword_31B578, &qword_270C30);
  v9 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v11 = &v92 - v10;
  v12 = type metadata accessor for SizeConstants.Spacing(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v95 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v110 = &v92 - v16;
  v17 = type metadata accessor for SizeConstants(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v94 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GridItemMetadataView();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v108 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v92 - v25;
  v27 = type metadata accessor for CoverView();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2EF0(&qword_318770, &qword_27A3C0);
  v106 = *(v31 - 8);
  v107 = v31;
  v32 = *(v106 + 64);
  __chkstk_darwin(v31);
  v105 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v92 - v35;
  v37 = a1[16];
  sub_2E18(a1 + 12, a1[15]);
  sub_260950();
  sub_30CC((a1 + 12), &v118);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v118, v116);
  *(&v117 + 1) = 0x4066800000000000;
  sub_230A8(v116);
  v122 = v116[4];
  v123 = v116[5];
  v124 = v116[6];
  v125 = v117;
  v118 = v116[0];
  v119 = v116[1];
  v120 = v116[2];
  v121 = v116[3];
  *v30 = swift_getKeyPath();
  v30[40] = 0;
  *(v30 + 6) = swift_getKeyPath();
  v30[56] = 0;
  v38 = v27[6];
  *&v30[v38] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v39 = v27[7];
  *&v30[v39] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v40 = &v30[v27[8]];
  type metadata accessor for ProfileRestrictions();
  sub_51B98(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v40 = sub_261900();
  v40[1] = v41;
  v42 = &v30[v27[9]];
  v113 = 1;
  sub_2631D0();
  v43 = v115;
  *v42 = v114;
  *(v42 + 1) = v43;
  v44 = &v30[v27[10]];
  v45 = v123;
  *(v44 + 4) = v122;
  *(v44 + 5) = v45;
  v46 = v125;
  *(v44 + 6) = v124;
  *(v44 + 7) = v46;
  v47 = v119;
  *v44 = v118;
  *(v44 + 1) = v47;
  v48 = v121;
  *(v44 + 2) = v120;
  *(v44 + 3) = v48;
  v30[v27[11]] = 1;
  v112 = a1;
  sub_51B98(&qword_317D60, type metadata accessor for CoverView);
  v111 = v36;
  sub_262A80();
  sub_12F388(v30, type metadata accessor for CoverView);
  sub_232D0(a1, &v26[v21[8]]);
  v49 = (a1 + *(type metadata accessor for GridItemView() + 20));
  v51 = *v49;
  v50 = v49[1];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v52 = v21[7];
  *&v26[v52] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v53 = v21[9];
  v104 = v26;
  v54 = &v26[v53];
  *v54 = v51;
  *(v54 + 1) = v50;

  v103 = sub_12DDDC();
  if (v103)
  {
    v55 = sub_262510();
    v56 = v11;
    v92 = v11;
    v93 = v55;
    v57 = v94;
    sub_12C640(v94);
    v58 = v57;
    v59 = v110;
    sub_12F3E8(v58, v110, type metadata accessor for SizeConstants.Environment);
    v60 = v97;
    v61 = v100;
    v62 = v102;
    (*(v97 + 104))(v100, enum case for Font.TextStyle.body(_:), v102);
    v63 = v95;
    sub_12F320(v59, v95, type metadata accessor for SizeConstants.Spacing);
    v64 = v96;
    (*(v60 + 16))(v96, v61, v62);
    sub_12F320(v63, v56, type metadata accessor for SizeConstants.Spacing);
    v65 = v101;
    sub_12F320(v63, v101, type metadata accessor for SizeConstants.Environment);
    v66 = *(v99 + 24);
    v67 = sub_1CF30(v64, v65 + v66);
    v68 = *(v60 + 8);
    v68(v64, v62);
    sub_12F388(v63, type metadata accessor for SizeConstants.Spacing);
    v69 = sub_261690();
    (*(*(v69 - 8) + 8))(v65 + v66, v69);
    v70 = 1.0;
    if ((*&v67 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v70 = v67;
    }

    if ((~*&v67 & 0x7FF0000000000000) != 0)
    {
      v70 = v67;
    }

    v71 = v92;
    *&v92[*(v98 + 36)] = v70;
    v68(v61, v62);
    sub_12F388(v110, type metadata accessor for SizeConstants.Spacing);
    sub_21FA68(4.0);
    sub_8E80(v71, &qword_31B578, &qword_270C30);
    sub_2610C0();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v110 = v93;
  }

  else
  {
    v110 = 0;
    v73 = 0;
    v75 = 0;
    v77 = 0;
    v79 = 0;
  }

  v81 = v105;
  v80 = v106;
  v82 = *(v106 + 16);
  v83 = v107;
  v82(v105, v111, v107);
  v84 = v104;
  v85 = v108;
  sub_12F320(v104, v108, type metadata accessor for GridItemMetadataView);
  v86 = v109;
  v82(v109, v81, v83);
  v87 = sub_2EF0(&qword_31F410, &unk_27A470);
  sub_12F320(v85, &v86[*(v87 + 48)], type metadata accessor for GridItemMetadataView);
  v88 = &v86[*(v87 + 64)];
  v89 = v110;
  *v88 = v103;
  *(v88 + 1) = v89;
  *(v88 + 2) = v73;
  *(v88 + 3) = v75;
  *(v88 + 4) = v77;
  *(v88 + 5) = v79;
  v88[48] = 0;

  sub_12F388(v84, type metadata accessor for GridItemMetadataView);
  v90 = *(v80 + 8);
  v90(v111, v83);

  sub_12F388(v85, type metadata accessor for GridItemMetadataView);
  return (v90)(v81, v83);
}

uint64_t sub_12DCCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for GridItemView() + 20);
  v5 = *(v4 + 8);
  (*v4)(v15, a1 + 96);
  v6 = v16;
  v7 = sub_2E18(v15, v16);
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  (*(v11 + 16))(&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = sub_263310();
  result = sub_3080(v15);
  *a2 = v12;
  return result;
}

uint64_t sub_12DDDC()
{
  sub_8198(v0 + 48, &v11, &qword_316D48, &unk_28CD20);
  if (v12)
  {
    sub_F7CC(&v11, v13);
    v1 = v14;
    sub_2E18(v13, v14);
    v2 = type metadata accessor for GridItemInfobarView();
    v3 = *(v2 - 8);
    v4 = *(v3 + 64);
    __chkstk_darwin(v2);
    v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = type metadata accessor for GridItemView();
    v7 = sub_12E244(*(v0 + *(v6 + 20)), *(v0 + *(v6 + 20) + 8), v1, &v11 - v5);
    v8 = __chkstk_darwin(v7);
    (*(v3 + 16))(&v11 - v5, &v11 - v5, v2, v8);
    swift_getWitnessTable();
    v9 = sub_263310();
    (*(v3 + 8))(&v11 - v5, v2);
    sub_3080(v13);
  }

  else
  {
    sub_8E80(&v11, &qword_316D48, &unk_28CD20);
    return 0;
  }

  return v9;
}

uint64_t sub_12E030@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_261CB0();
  *a2 = v4;
  return result;
}

uint64_t sub_12E0AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_261CC0();
}

uint64_t sub_12E13C(uint64_t a1)
{
  v2 = sub_2603F0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_12F320(a1, &v10 - v7, &type metadata accessor for ContextAssetInfoAnalytics);
  sub_12F320(v8, v5, &type metadata accessor for ContextAssetInfoAnalytics);
  sub_12F204();
  sub_261CC0();
  return sub_12F388(v8, &type metadata accessor for ContextAssetInfoAnalytics);
}

uint64_t sub_12E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v4, v10);
  sub_176C38(v12, a1, a2, a3, a4);
}

uint64_t EnvironmentValues.coverContainerAspectRatio.getter()
{
  sub_12EC10();
  sub_261CB0();
  return v1;
}

uint64_t sub_12E37C@<X0>(uint64_t a1@<X8>)
{
  sub_12EC10();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_12E3D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_12EC10();
  return sub_261CC0();
}

void (*EnvironmentValues.coverContainerAspectRatio.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_12EC10();
  sub_261CB0();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_12E50C;
}

void sub_12E50C(void **a1)
{
  v2 = *(*a1 + 8);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_261CC0();

  free(v1);
}

uint64_t sub_12E570@<X0>(uint64_t a1@<X8>)
{
  sub_12EC10();
  result = sub_261CB0();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_12E5C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_12EC10();
  return sub_261CC0();
}

uint64_t sub_12E624(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_12E758()
{
  result = qword_31F2F0;
  if (!qword_31F2F0)
  {
    sub_2F9C(&qword_31F2D8, &qword_27A218);
    sub_12E810();
    sub_8E38(&qword_31F340, &qword_31F2E8, &qword_27A2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2F0);
  }

  return result;
}

unint64_t sub_12E810()
{
  result = qword_31F2F8;
  if (!qword_31F2F8)
  {
    sub_2F9C(&qword_31F2D0, &qword_27A210);
    sub_12E8C8();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F2F8);
  }

  return result;
}

unint64_t sub_12E8C8()
{
  result = qword_31F300;
  if (!qword_31F300)
  {
    sub_2F9C(&qword_31F2C8, &qword_27A208);
    sub_12E980();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F300);
  }

  return result;
}

unint64_t sub_12E980()
{
  result = qword_31F308;
  if (!qword_31F308)
  {
    sub_2F9C(&qword_31F2C0, &qword_27A200);
    sub_12EA38();
    sub_8E38(&qword_31AD28, &qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F308);
  }

  return result;
}

unint64_t sub_12EA38()
{
  result = qword_31F310;
  if (!qword_31F310)
  {
    sub_2F9C(&qword_31F2B8, &qword_27A1F8);
    sub_12EAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F310);
  }

  return result;
}

unint64_t sub_12EAC4()
{
  result = qword_31F318;
  if (!qword_31F318)
  {
    sub_2F9C(&qword_31F2B0, &qword_27A1F0);
    sub_8E38(&qword_31F320, &qword_31F328, &qword_27A2D8);
    sub_8E38(&qword_31F330, &qword_31F338, &unk_27A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F318);
  }

  return result;
}

uint64_t sub_12EBA8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F2D8, &qword_27A218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_12EC10()
{
  result = qword_31F348;
  if (!qword_31F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F348);
  }

  return result;
}

uint64_t sub_12EC94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GridItemViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2EF0(&qword_31A748, &unk_26F940);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_12EE34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GridItemViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_12EFC0()
{
  type metadata accessor for GridItemViewModel();
  if (v0 <= 0x3F)
  {
    sub_16D28();
    if (v1 <= 0x3F)
    {
      sub_78DC8(319, &qword_31A6A0, &qword_317F48, &qword_26A9A0);
      if (v2 <= 0x3F)
      {
        sub_12F13C(319, &qword_31A7B8, type metadata accessor for FontConstants);
        if (v3 <= 0x3F)
        {
          sub_12F13C(319, &qword_317C68, type metadata accessor for SizeConstants);
          if (v4 <= 0x3F)
          {
            sub_78DC8(319, &qword_316A00, &qword_316A08, &unk_277860);
            if (v5 <= 0x3F)
            {
              sub_78DC8(319, &qword_31D878, &qword_319918, &qword_273BF0);
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

void sub_12F13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_12F190()
{
  sub_2F9C(&qword_31F2D8, &qword_27A218);
  sub_12E758();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_12F204()
{
  result = qword_31F3F8;
  if (!qword_31F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F3F8);
  }

  return result;
}

unint64_t sub_12F258()
{
  result = qword_31F400;
  if (!qword_31F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F400);
  }

  return result;
}

unint64_t sub_12F2AC()
{
  result = qword_31F408;
  if (!qword_31F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F408);
  }

  return result;
}

uint64_t sub_12F320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12F388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_12F3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *ComponentModel.additionalAppAnalyticsData.getter(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  v2 = __chkstk_darwin(a1);
  (*(v4 + 16))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2EF0(&qword_31F418, &qword_27A480);
  if (swift_dynamicCast())
  {
    sub_F7CC(v9, v11);
    v5 = v12;
    v6 = v13;
    sub_2E18(v11, v12);
    v7 = (*(v6 + 8))(v5, v6);
    sub_3080(v11);
    return v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_12F5A4(v9);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_12F5A4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F420, &qword_27A488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ComponentModel.dataStackID.getter()
{
  sub_263B90();
  sub_264B60();
  sub_F778(v1);
  swift_dynamicCast();
  return sub_2604D0();
}

uint64_t ToolbarActionToggleMenuItem.init(item:isSelected:preSelectionActionProvider:postSelectionActionProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 40) = 0;
  v14 = type metadata accessor for ToolbarActionToggleMenuItem();
  v15 = v14[5];
  *(a7 + v15) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  result = sub_12FF08(a1, a7 + v14[6], type metadata accessor for ToolbarActionMenuItem);
  *(a7 + v14[7]) = a2;
  v17 = (a7 + v14[8]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v14[9]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t type metadata accessor for ToolbarActionToggleMenuItem()
{
  result = qword_31F488;
  if (!qword_31F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12F7EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318150, &qword_279A70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ToolbarActionToggleMenuItem();
  sub_8198(v1 + *(v12 + 20), v11, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_260CA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t ToolbarActionToggleMenuItem.preSelectionActionProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionToggleMenuItem() + 32));
  v2 = *v1;
  v3 = v1[1];
  sub_AF884(*v1);
  return v2;
}

uint64_t ToolbarActionToggleMenuItem.postSelectionActionProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionToggleMenuItem() + 36));
  v2 = *v1;
  v3 = v1[1];
  sub_AF884(*v1);
  return v2;
}

uint64_t ToolbarActionToggleMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for ToolbarActionToggleMenuItem();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_12FE9C(v1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionToggleMenuItem);
  sub_264750();
  v7 = sub_264740();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_12FF08(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ToolbarActionToggleMenuItem);
  sub_12FE9C(v1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionToggleMenuItem);
  v10 = sub_264740();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_12FF08(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for ToolbarActionToggleMenuItem);
  sub_263360();
  v20 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel();
  sub_1307C4();
  v12 = v19;
  sub_2632C0();
  v13 = *(v4 + 32);
  LOBYTE(v13) = *(v2 + *(type metadata accessor for ToolbarActionMenuItem(0) + 36) + v13);
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v13 & 1) == 0;
  result = sub_2EF0(&qword_31F428, &qword_27A550);
  v17 = (v12 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_4C914;
  v17[2] = v15;
  return result;
}

uint64_t sub_12FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ToolbarActionToggleMenuItem() + 24);
  v4 = type metadata accessor for ToolbarActionMenuItem(0);
  v5 = v4[5];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, v3 + v5, v6);
  v7 = v4[6];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel();
  sub_8198(v3 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_8198(v3 + v4[7], a2 + v8[6], &qword_31AC00, &qword_270F30);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_12FE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12FF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12FF70@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionToggleMenuItem();
  v5 = *(v3 - 8);
  result = v3 - 8;
  *a1 = *(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(result + 36));
  return result;
}

uint64_t sub_12FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_260CA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_263AF0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261C90();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ToolbarActionToggleMenuItem();
  if (*(a4 + *(result + 28)))
  {
    return result;
  }

  v20 = result;
  sub_8198(a4, &v34, &qword_31A240, &qword_26E588);
  if (v37 != 1)
  {
    v33[1] = v34;
    sub_264900();
    v24 = sub_2624B0();
    v33[2] = v13;
    v25 = v24;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    (*(v15 + 8))(v18, v14);
    if (*(&v39 + 1))
    {
      goto LABEL_4;
    }

    return sub_130D1C(&v38);
  }

  v38 = v34;
  v39 = v35;
  v40 = v36;
  if (!*(&v35 + 1))
  {
    return sub_130D1C(&v38);
  }

LABEL_4:
  sub_F7CC(&v38, v41);
  v21 = a4 + v20[8];
  if (*v21)
  {
    v22 = *(v21 + 8);
    v23 = (*v21)(a4 + v20[6]);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_2EF0(&qword_317258, &unk_27A660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  v27 = a4 + v20[6];
  v28 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(v27 + *(v28 + 32), &v34);
  sub_F7CC(&v34, inited + 32);
  *&v34 = v23;
  sub_1D95F0(inited);
  v29 = v34;
  v30 = a4 + v20[9];
  if (*v30)
  {
    v31 = *(v30 + 8);
    v32 = (*v30)(v27);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  *&v34 = v29;
  sub_1D95F0(v32);
  sub_2E18(v41, v41[3]);
  sub_263AC0();
  *(&v35 + 1) = sub_263BD0();
  v36 = &protocol witness table for CompoundAction;
  sub_10934(&v34);
  sub_263BC0();
  sub_12F7EC(v9);
  sub_260B20();
  (*(v6 + 8))(v9, v5);
  sub_3080(&v34);
  return sub_3080(v41);
}

uint64_t sub_1303F0()
{
  v1 = type metadata accessor for ToolbarActionToggleMenuItem();
  v32 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = v0 + ((v32 + 32) & ~v32);
  if (*(v3 + 40))
  {
    if (*(v3 + 24))
    {
      sub_3080(v3);
    }
  }

  else
  {
    v4 = *v3;
  }

  v5 = v1[5];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_260CA0();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = v3 + v1[6];
  v9 = *(v8 + 8);

  v10 = type metadata accessor for ToolbarActionMenuItem(0);
  v11 = v10[5];
  v12 = sub_260BD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v8 + v11, v12);
  v15 = v10[6];
  v16 = *(v13 + 48);
  if (!v16(v8 + v15, 1, v12))
  {
    v14(v8 + v15, v12);
  }

  v17 = v8 + v10[7];
  v18 = *(v17 + 40);
  if (v18 == 2)
  {
    sub_3080(v17);
  }

  else if (v18 <= 1)
  {
    v19 = *(v17 + 8);
  }

  sub_3080((v8 + v10[8]));
  v20 = v8 + v10[11];
  type metadata accessor for ToolbarActionMenuItemButtonType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    if (!v16(v20, 1, v12))
    {
      v14(v20, v12);
    }

    v23 = sub_2EF0(&qword_31BB98, &qword_271980);
    v24 = *(v20 + *(v23 + 48) + 8);

    v25 = (v20 + *(v23 + 64));
    if (v25[3])
    {
      sub_3080(v25);
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v22 = sub_260060();
    (*(*(v22 - 8) + 8))(v20, v22);
  }

  v26 = (v3 + v1[8]);
  if (*v26)
  {
    v27 = v26[1];
  }

  v28 = (v3 + v1[9]);
  if (*v28)
  {
    v29 = v28[1];
  }

  return swift_deallocObject();
}

uint64_t sub_130748(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolbarActionToggleMenuItem() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_12FFD8(a1, v4, v5, v6);
}

unint64_t sub_1307C4()
{
  result = qword_31AC08;
  if (!qword_31AC08)
  {
    type metadata accessor for ToolbarActionMenuItemLabel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AC08);
  }

  return result;
}

uint64_t sub_130868(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for ToolbarActionMenuItem(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_13099C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for ToolbarActionMenuItem(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_130AAC()
{
  sub_130BC0(319, &qword_31A200, &qword_31A208, &unk_27A5E0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_128FA0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ToolbarActionMenuItem(319);
      if (v2 <= 0x3F)
      {
        sub_130BC0(319, &qword_31A1E8, &qword_31A1F0, qword_26E558, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_130BC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_130C28()
{
  result = qword_31F4D0;
  if (!qword_31F4D0)
  {
    sub_2F9C(&qword_31F428, &qword_27A550);
    sub_8E38(&qword_31F4D8, &qword_31F4E0, &unk_27A5F0);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F4D0);
  }

  return result;
}

uint64_t sub_130D1C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A208, &unk_27A5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_130D88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1323D8(v12, a1);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

void *ListItemMetadataView.init(model:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for ListItemMetadataView() + 20);

  return memcpy(v4, a1, 0x118uLL);
}

uint64_t type metadata accessor for ListItemMetadataView()
{
  result = qword_31F548;
  if (!qword_31F548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ListItemMetadataView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261E60();
  sub_130D88(v5);
  sub_E5250(v5);
  v24 = 0;
  sub_131254(&v15);
  v30 = v20;
  v31 = v21;
  v32[0] = v22[0];
  *(v32 + 9) = *(v22 + 9);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v25 = v15;
  v26 = v16;
  v33[5] = v20;
  v33[6] = v21;
  v34[0] = v22[0];
  *(v34 + 9) = *(v22 + 9);
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[0] = v15;
  v33[1] = v16;
  sub_8198(&v25, &v14, &qword_31F4E8, &qword_27A6B0);
  sub_1313F4(v33);
  *(&v23[6] + 7) = v31;
  *(&v23[5] + 7) = v30;
  *(&v23[2] + 7) = v27;
  *(&v23[1] + 7) = v26;
  *(&v23[7] + 7) = v32[0];
  v23[8] = *(v32 + 9);
  *(&v23[3] + 7) = v28;
  *(&v23[4] + 7) = v29;
  *(v23 + 7) = v25;
  v7 = v23[4];
  *(a1 + 97) = v23[5];
  v8 = v23[7];
  *(a1 + 113) = v23[6];
  *(a1 + 129) = v8;
  *(a1 + 145) = v23[8];
  v9 = v23[0];
  *(a1 + 33) = v23[1];
  result = *&v23[2];
  v11 = v23[3];
  *(a1 + 49) = v23[2];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v24;
  *a1 = v6;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v12;
  *(a1 + 17) = v9;
  return result;
}

uint64_t sub_131254@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SizeConstants.Spacing(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v30 = sub_131478();
  v29 = sub_131660();
  v9 = sub_13184C();
  v10 = sub_131A38();
  v11 = sub_131C24();
  v12 = sub_262510();
  sub_130D88(v8);
  sub_E5250(v8);
  sub_130D88(v5);
  sub_E5250(v5);
  sub_2610C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_131E10();
  v22 = sub_262510();
  sub_130D88(v8);
  sub_E5250(v8);
  sub_130D88(v5);
  sub_E5250(v5);
  result = sub_2610C0();
  v24 = v29;
  *a1 = v30;
  *(a1 + 8) = v24;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16;
  *(a1 + 64) = v18;
  *(a1 + 72) = v20;
  *(a1 + 80) = 0;
  *(a1 + 88) = v21;
  *(a1 + 96) = v22;
  *(a1 + 104) = v25;
  *(a1 + 112) = v26;
  *(a1 + 120) = v27;
  *(a1 + 128) = v28;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1313F4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31F4E8, &qword_27A6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_131478()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20), &v15, &qword_315B58, &unk_266540);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataEyebrowView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_13EAD0);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_131660()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20) + 40, &v15, &qword_315B60, &unk_276FA0);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataTitleLockupView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_767AC);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_13184C()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20) + 80, &v15, &qword_315B68, &unk_266550);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataFormatAndDescriptorView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_1AAA08);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_131A38()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20) + 160, &v15, &qword_315B70, &unk_276FB0);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataFinePrintView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_23E990);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_131C24()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20) + 200, &v15, &qword_315B78, &unk_266560);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataSharedWithYouView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_ED570);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_131E10()
{
  v1 = type metadata accessor for ListItemMetadataView();
  sub_8198(v0 + *(v1 + 20) + 240, &v15, &qword_315B80, &qword_276FC0);
  if (!v16)
  {
    return 0;
  }

  sub_F7CC(&v15, v12);
  v2 = v13;
  v3 = v14;
  sub_2E18(v12, v13);
  v4 = type metadata accessor for ListItemMetadataCreatorDescriptionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_1322F8(v2, v3, sub_64858);
  v9 = __chkstk_darwin(v8);
  (*(v5 + 16))(v12 - v7, v12 - v7, v4, v9);
  swift_getWitnessTable();
  v10 = sub_263310();
  (*(v5 + 8))(v12 - v7, v4);
  sub_3080(v12);
  return v10;
}

uint64_t sub_132010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F78, &unk_269C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1320FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F78, &unk_269C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

void sub_1321C4()
{
  sub_132238();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_132238()
{
  if (!qword_317008)
  {
    type metadata accessor for SizeConstants.Spacing(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_317008);
    }
  }
}

unint64_t sub_132294()
{
  result = qword_31F580;
  if (!qword_31F580)
  {
    sub_2F9C(&qword_31F588, &qword_27A728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F580);
  }

  return result;
}

uint64_t sub_1322F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v7 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  return a3(v9, a1, a2);
}

uint64_t sub_1323D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAssetState.isLocal.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  if (*(v0 + 32) == 1 && v1 == 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void LibraryAssetState.localState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t LibraryAssetState.downloadProgress.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t LibraryAssetState.isDownloadable.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 3)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 32) == 1 && v1 == 2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t LibraryAssetState.init(id:ownership:localState:playState:downloadProgress:readingProgress:isInSamples:isLocalSample:isInWantToRead:isFinished:hasSpecifiedFinishedDate:isPurchased:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11, char a12, char a13, char a14, char a15)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *a5;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  *(a9 + 33) = v18;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 40) = a10;
  *(a9 + 48) = a8;
  *(a9 + 49) = a11;
  *(a9 + 50) = a12;
  *(a9 + 51) = a13;
  *(a9 + 52) = a14;
  *(a9 + 65) = a15;
  return result;
}

uint64_t _s7BooksUI17LibraryAssetStateV05LocalE0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v7 = *a1;
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 == 2)
    {
      if (*&v3 == 2)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        return 1;
      }
    }

    else
    {
      if (*&v2 == 3)
      {
        if (*&v3 == 3)
        {
          v5 = *(a2 + 8);
        }

        else
        {
          v5 = 0;
        }

        return (v5 & 1) != 0;
      }

      if (*&v3 > 3uLL)
      {
        v10 = *(a2 + 8);
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    if (v3 == 0.0)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    return (v8 & 1) != 0;
  }

  if (*&v3 == 1)
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = 0;
  }

  return (v11 & 1) != 0;
}

uint64_t _s7BooksUI17LibraryAssetStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v9 = *(a1 + 50);
  v10 = *(a1 + 51);
  v11 = *(a1 + 52);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 33);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 49);
  v22 = *(a2 + 50);
  v23 = *(a2 + 51);
  v24 = *(a2 + 52);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v27 = *(a2 + 65);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v15)
    {
      return 0;
    }
  }

  else
  {
    v44 = *(a1 + 32);
    v45 = *(a2 + 24);
    v46 = *(a1 + 24);
    v47 = *(a2 + 32);
    v48 = *(a2 + 33);
    v49 = *(a2 + 48);
    v50 = *(a2 + 49);
    v51 = *(a1 + 33);
    v52 = *(a2 + 50);
    v53 = *(a2 + 51);
    v54 = *(a1 + 48);
    v55 = *(a2 + 52);
    v29 = *(a1 + 49);
    v30 = *(a1 + 50);
    v31 = *(a1 + 51);
    v32 = *(a1 + 52);
    v33 = *(a2 + 65);
    v34 = *(a1 + 64);
    v35 = *(a1 + 65);
    v36 = sub_264F10();
    result = 0;
    if ((v36 & 1) == 0)
    {
      return result;
    }

    v14 = v35;
    v13 = v34;
    v27 = v33;
    v11 = v32;
    v10 = v31;
    v9 = v30;
    v8 = v29;
    v7 = v54;
    v24 = v55;
    v22 = v52;
    v23 = v53;
    v21 = v50;
    v5 = v51;
    v18 = v48;
    v20 = v49;
    v17 = v47;
    v16 = v45;
    v3 = v46;
    v4 = v44;
    if (v2 != v15)
    {
      return result;
    }
  }

  if (v4)
  {
    if (*&v3 <= 1)
    {
      if (v3 == 0.0)
      {
        if (v16 == 0.0)
        {
          v39 = v17;
        }

        else
        {
          v39 = 0;
        }

        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*&v16 == 1)
        {
          v42 = v17;
        }

        else
        {
          v42 = 0;
        }

        if ((v42 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (*&v3 == 2)
    {
      if (*&v16 == 2)
      {
        v40 = v17;
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v3 == 3)
    {
      if (*&v16 == 3)
      {
        v37 = v17;
      }

      else
      {
        v37 = 0;
      }

      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v16 > 3uLL)
      {
        v41 = v17;
      }

      else
      {
        v41 = 0;
      }

      if (v41 != 1)
      {
        return 0;
      }
    }

    result = 0;
    if (v5 != v18)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v3 == v16)
    {
      v38 = v17;
    }

    else
    {
      v38 = 1;
    }

    if ((v38 & 1) != 0 || v5 != v18)
    {
      return result;
    }
  }

  if (v6 == v19 && ((v7 ^ v20) & 1) == 0 && ((v8 ^ v21) & 1) == 0 && ((v9 ^ v22) & 1) == 0 && ((v10 ^ v23) & 1) == 0 && ((v11 ^ v24) & 1) == 0)
  {
    if (v13)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (v12 == v25)
      {
        v43 = v26;
      }

      else
      {
        v43 = 1;
      }

      if (v43)
      {
        return 0;
      }
    }

    return v14 ^ v27 ^ 1u;
  }

  return result;
}

unint64_t sub_1328A0()
{
  result = qword_31F590;
  if (!qword_31F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F590);
  }

  return result;
}

unint64_t sub_1328F8()
{
  result = qword_31F598;
  if (!qword_31F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31F598);
  }

  return result;
}

__n128 sub_13294C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_132970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1329B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAssetState.LocalState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAssetState.LocalState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_132A7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_132A98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_132AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2, v12, &qword_31A240, &qword_26E588);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_132C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318150, &qword_279A70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for UIKitActionButton(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_260CA0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void *sub_132E54()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for UIKitActionButton(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_132FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316930, &qword_2689A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for UIKitActionButton(0);
  sub_8198(v1 + *(v12 + 32), v11, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_260640();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1331BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIKitActionButton(0);
  result = sub_8198(v1 + *(v8 + 36), v12, &qword_316BB0, &qword_268BA8);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t UIKitActionButton.init(type:action:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2604E0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *a3 = swift_getKeyPath();
  *(a3 + 40) = 0;
  v8 = type metadata accessor for UIKitActionButton(0);
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  sub_2604C0();
  sub_260420();
  v11 = a3 + v8[7];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = v8[8];
  *(a3 + v12) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v13 = a3 + v8[9];
  *v13 = swift_getKeyPath();
  *(v13 + 40) = 0;
  *(a3 + v8[10]) = a1;
  return sub_F7CC(a2, a3 + v8[11]);
}

id UIKitActionButton.makeUIView(context:)()
{
  v1 = *(v0 + *(type metadata accessor for UIKitActionButton(0) + 40));
  v2 = [objc_opt_self() buttonWithType:v1];
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  [v2 addTarget:v4 action:"perform" forControlEvents:0x2000];

  return v2;
}

uint64_t UIKitActionButton.makeCoordinator()()
{
  v1 = sub_260CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = type metadata accessor for UIKitActionButton(0);
  sub_30CC(v0 + *(v6 + 44), v14);
  sub_132AD8(v13);
  sub_132C4C(v5);
  v7 = type metadata accessor for UIKitActionButton.Coordinator(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0;
  *(v10 + 56) = 0u;
  sub_F7CC(v14, v10 + 16);
  swift_beginAccess();
  sub_134300(v13, v10 + 56);
  swift_endAccess();
  (*(v2 + 32))(v10 + OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext, v5, v1);
  return v10;
}

uint64_t sub_1336F4()
{
  v1 = sub_260CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_8198(v0 + 56, v11, &qword_31A208, &unk_27A5E0);
  if (!v12)
  {
    return sub_8E80(v11, &qword_31A208, &unk_27A5E0);
  }

  sub_30CC(v11, v10);
  sub_8E80(v11, &qword_31A208, &unk_27A5E0);
  sub_2E18(v10, v10[3]);
  swift_beginAccess();
  sub_30CC(v0 + 16, v9);
  v6 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v6, v1);
  sub_260B20();
  (*(v2 + 8))(v5, v1);
  sub_3080(v9);
  return sub_3080(v10);
}

uint64_t UIKitActionButton.Coordinator.deinit()
{
  sub_3080((v0 + 16));
  sub_8E80(v0 + 56, &qword_31A208, &unk_27A5E0);
  v1 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  v2 = sub_260CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UIKitActionButton.Coordinator.__deallocating_deinit()
{
  sub_3080(v0 + 2);
  sub_8E80((v0 + 7), &qword_31A208, &unk_27A5E0);
  v1 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  v2 = sub_260CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_133A50(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() buttonWithType:*(v2 + *(a2 + 40))];
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  [v3 addTarget:v5 action:"perform" forControlEvents:0x2000];

  return v3;
}

uint64_t sub_133B04@<X0>(uint64_t *a1@<X8>)
{
  result = UIKitActionButton.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_133B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1349B0(qword_31F770);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_133BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1349B0(qword_31F770);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_133C34()
{
  sub_1349B0(qword_31F770);
  sub_261F30();
  __break(1u);
}

uint64_t sub_133C90(uint64_t a1)
{
  v3 = sub_260CA0();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v39 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_260640();
  v37 = *(v38 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v38);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316B98, &unk_275840);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v32 - v10;
  v12 = sub_260620();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UIKitActionButton(0);
  v18 = *(v17 + 44);
  sub_30CC(v1 + v18, v46);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if (swift_dynamicCast())
  {
    v34 = a1;
    v35 = v3;
    sub_F7CC(&v43, &v47);
    v19 = v48;
    v20 = v49;
    sub_2E18(&v47, v48);
    (*(v20 + 16))(v19, v20);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v33 = v13;
      (*(v13 + 32))(v16, v11, v12);
      sub_2EF0(&qword_31F5A0, &unk_27AA10);
      sub_2623A0();
      v22 = v42;
      v32[0] = v49;
      v32[1] = sub_2E18(&v47, v48);
      v23 = sub_132E54();
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v24 = v36;
      sub_132FB4(v36);
      sub_1331BC(v41);
      v25 = v1 + *(v17 + 24);
      sub_260400();
      v26 = *(v32[0] + 8);
      sub_263860();

      sub_8E80(v41, &qword_316A20, &qword_268A90);
      (*(v37 + 8))(v24, v38);
      sub_8E80(&v43, &qword_316610, &qword_268BA0);
      (*(v33 + 8))(v16, v12);
      swift_beginAccess();
      sub_3080((v22 + 16));
      sub_F7CC(v46, v22 + 16);
      swift_endAccess();

      sub_3080(&v47);
      v3 = v35;
      goto LABEL_7;
    }

    sub_8E80(v11, &qword_316B98, &unk_275840);
    sub_3080(&v47);
    v3 = v35;
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_8E80(&v43, &qword_316BA0, &unk_268B90);
  }

  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  v21 = v43;
  sub_30CC(v1 + v18, &v47);
  swift_beginAccess();
  sub_3080((v21 + 16));
  sub_F7CC(&v47, v21 + 16);
  swift_endAccess();

LABEL_7:
  sub_2EF0(&qword_31F5A0, &unk_27AA10);
  sub_2623A0();
  v27 = v43;
  sub_132AD8(&v47);
  swift_beginAccess();
  sub_134300(&v47, v27 + 56);
  swift_endAccess();

  sub_2623A0();
  v28 = *&v46[0];
  v29 = v39;
  sub_132C4C(v39);
  v30 = OBJC_IVAR____TtCV7BooksUI17UIKitActionButton11Coordinator_metricsFieldsContext;
  swift_beginAccess();
  (*(v40 + 40))(v28 + v30, v29, v3);
  swift_endAccess();
}