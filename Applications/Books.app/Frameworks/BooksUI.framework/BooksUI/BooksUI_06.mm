uint64_t sub_A332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = sub_2617E0();
  v3 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  v6 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v8 = &v41 - v7;
  v42 = sub_2EF0(&qword_31B548, &qword_270C00);
  v9 = *(*(v42 - 8) + 64);
  v10 = __chkstk_darwin(v42);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = sub_2EF0(&qword_31B550, &qword_270C08);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = sub_2EF0(&qword_31B558, &qword_270C10);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v41 - v27;
  v46 = a1;
  if (sub_9EDC4())
  {
    sub_A7228();
    sub_261390();
    (*(v18 + 32))(v28, v21, v17);
    (*(v18 + 56))(v28, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v28, 1, 1, v17);
  }

  v29 = v46 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v30 = type metadata accessor for ButtonViewModel(0);
  if (*(v29 + v30[7]) == 2)
  {
    v31 = 5.0;
  }

  else
  {
    v31 = 12.0;
  }

  v32 = *(v41 + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = sub_261DD0();
  (*(*(v34 - 8) + 104))(v5 + v32, v33, v34);
  *v5 = v31;
  v5[1] = v31;
  if (*(v29 + v30[9]) == 1)
  {
    v35 = sub_262FA0();
  }

  else
  {
    if (*(v29 + v30[12]) == 1)
    {
      ButtonViewModel.theme.getter(v47);
      v35 = v47[1];
    }

    else
    {
      ButtonViewModel.theme.getter(v47);
      v35 = v47[2];
    }
  }

  sub_A75CC(v5, v8, &type metadata accessor for RoundedRectangle);
  v36 = v43;
  *&v8[*(v43 + 52)] = v35;
  *&v8[*(v36 + 56)] = 256;
  sub_A24D0(&v14[*(v42 + 36)]);
  sub_22148(v8, v14, &qword_3192C8, &unk_2793D0);
  sub_22148(v14, v16, &qword_31B548, &qword_270C00);
  sub_8198(v28, v26, &qword_31B558, &qword_270C10);
  v37 = v44;
  sub_8198(v16, v44, &qword_31B548, &qword_270C00);
  v38 = v45;
  sub_8198(v26, v45, &qword_31B558, &qword_270C10);
  v39 = sub_2EF0(&qword_31B560, &qword_270C18);
  sub_8198(v37, v38 + *(v39 + 48), &qword_31B548, &qword_270C00);
  sub_8E80(v16, &qword_31B548, &qword_270C00);
  sub_8E80(v28, &qword_31B558, &qword_270C10);
  sub_8E80(v37, &qword_31B548, &qword_270C00);
  return sub_8E80(v26, &qword_31B558, &qword_270C10);
}

uint64_t sub_A3874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = sub_2617E0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2EF0(&qword_31B518, &qword_270BC8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - v11;
  v44 = sub_2EF0(&qword_31B520, &qword_270BD0);
  v13 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v15 = &v43 - v14;
  v16 = sub_2EF0(&qword_31B528, &qword_270BD8);
  v47 = *(v16 - 8);
  v17 = *(v47 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v23 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v45 = a1;
  v24 = a1 + v23;
  v25 = type metadata accessor for ButtonViewModel(0);
  if (*(v24 + *(v25 + 36)) == 1)
  {
    v26 = v25;
    v43 = a3;
    if (*(v24 + *(v25 + 28)) == 2)
    {
      v27 = 5.0;
    }

    else
    {
      v27 = 12.0;
    }

    v28 = *(v5 + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = sub_261DD0();
    (*(*(v30 - 8) + 104))(v8 + v28, v29, v30);
    *v8 = v27;
    v8[1] = v27;
    if (*(v24 + *(v26 + 48)) == 1)
    {
      ButtonViewModel.theme.getter(&v48);
      v31 = *(&v48 + 1);
    }

    else
    {
      ButtonViewModel.theme.getter(&v48);
      v31 = v49;
    }

    v34 = v43;
    sub_261240();
    sub_A727C(v8, v12, &type metadata accessor for RoundedRectangle);
    v35 = &v12[*(sub_2EF0(&qword_31B530, &qword_270BE0) + 36)];
    v36 = v49;
    *v35 = v48;
    *(v35 + 1) = v36;
    *(v35 + 4) = v50;
    v37 = sub_2EF0(&qword_31B538, &qword_270BE8);
    *&v12[*(v37 + 52)] = v31;
    *&v12[*(v37 + 56)] = 256;
    v38 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v40 = v39;
    sub_A72E4(v8, &type metadata accessor for RoundedRectangle);
    v41 = &v12[*(sub_2EF0(&qword_31B540, &unk_270BF0) + 36)];
    *v41 = v38;
    v41[1] = v40;
    sub_A24D0(&v15[*(v44 + 36)]);
    sub_22148(v12, v15, &qword_31B518, &qword_270BC8);
    if (sub_2622B0())
    {
      v42 = 0.6;
    }

    else
    {
      v42 = 1.0;
    }

    sub_22148(v15, v20, &qword_31B520, &qword_270BD0);
    *&v20[*(v16 + 36)] = v42;
    sub_22148(v20, v22, &qword_31B528, &qword_270BD8);
    sub_22148(v22, v34, &qword_31B528, &qword_270BD8);
    return (*(v47 + 56))(v34, 0, 1, v16);
  }

  else
  {
    v32 = *(v47 + 56);

    return v32(a3, 1, 1, v16);
  }
}

uint64_t sub_A3D50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_319B00, &unk_26EA40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_319B00, &unk_26EA40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v11, a1, type metadata accessor for FontConstants.Button);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_A3F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_A4128@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_A4314@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v12 + 32), v11, &qword_316DC0, &qword_2691C0);
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

uint64_t sub_A451C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for BooksBorderlessButtonStyle(0) + 36);
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

uint64_t sub_A4674@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BooksBorderlessButtonStyle(0);
  sub_8198(v1 + *(v12 + 40), v11, &qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_263640();
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

uint64_t BooksBorderlessButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v5 = sub_261FA0();
  v106 = *(v5 - 8);
  v107 = v5;
  v6 = *(v106 + 64);
  __chkstk_darwin(v5);
  v104 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_261180();
  v88 = *(v89 - 8);
  v8 = *(v88 + 64);
  v9 = __chkstk_darwin(v89);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v86 = &v85 - v11;
  v12 = type metadata accessor for ColorConstants(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v85 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2626C0();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_318458, &unk_26B270);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v85 - v19;
  v90 = sub_262730();
  v21 = *(v90 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v90);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FontConstants.Button(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2EF0(&qword_31B2E8, &qword_270A30);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v33 = &v85 - v32;
  v95 = sub_2EF0(&qword_31B2F0, &qword_270A38);
  v34 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v36 = &v85 - v35;
  v93 = sub_2EF0(&qword_31B2F8, &qword_270A40);
  v37 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v99 = &v85 - v38;
  v98 = sub_2EF0(&qword_31B300, &qword_270A48);
  v39 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v97 = &v85 - v40;
  v96 = sub_2EF0(&qword_31B308, &qword_270A50);
  v41 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v100 = &v85 - v42;
  v101 = sub_2EF0(&qword_31B310, &qword_270A58);
  v43 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v102 = &v85 - v44;
  v103 = a1;
  sub_2622A0();
  sub_A3D50(v28);
  v45 = v90;
  (*(v21 + 104))(v24, enum case for Font.TextStyle.subheadline(_:), v90);
  v46 = sub_2625C0();
  (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
  sub_262650();
  sub_262680();
  sub_8E80(v20, &qword_318458, &unk_26B270);
  (*(v21 + 8))(v24, v45);
  v47 = v92;
  v48 = v91;
  v49 = v94;
  (*(v92 + 104))(v91, enum case for Font.Leading.tight(_:), v94);
  v50 = sub_2626E0();

  (*(v47 + 8))(v48, v49);
  v51 = v28;
  v52 = v33;
  sub_A72E4(v51, type metadata accessor for FontConstants.Button);
  KeyPath = swift_getKeyPath();
  v54 = &v33[*(v30 + 44)];
  *v54 = KeyPath;
  v54[1] = v50;
  if (sub_A451C())
  {
    v55 = v85;
    sub_A3F3C(v85);
    v56 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_A72E4(v55, type metadata accessor for ColorConstants);
    *&v108 = v56;
  }

  else
  {
    LODWORD(v108) = sub_262130();
  }

  v57 = sub_2613B0();
  sub_22148(v52, v36, &qword_31B2E8, &qword_270A30);
  *&v36[*(v95 + 36)] = v57;
  LOBYTE(v57) = sub_262500();
  v58 = v99;
  sub_22148(v36, v99, &qword_31B2F0, &qword_270A38);
  v59 = v58 + *(v93 + 36);
  *v59 = v57;
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  *(v59 + 40) = 1;
  v60 = 1.0;
  if (sub_2622B0())
  {
    v61 = v86;
    sub_A4314(v86);
    v62 = v88;
    v63 = v87;
    v64 = v89;
    (*(v88 + 104))(v87, enum case for ColorScheme.dark(_:), v89);
    v65 = sub_261170();
    v66 = *(v62 + 8);
    v66(v63, v64);
    v66(v61, v64);
    if (v65)
    {
      v60 = 0.4;
    }

    else
    {
      v60 = 0.2;
    }
  }

  v67 = v97;
  sub_22148(v58, v97, &qword_31B2F8, &qword_270A40);
  *(v67 + *(v98 + 36)) = v60;
  v68 = v100;
  sub_A4674(&v100[*(v96 + 36)]);
  sub_22148(v67, v68, &qword_31B300, &qword_270A48);
  v69 = sub_A5380();
  v71 = v70;
  v72 = *v3;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v73 = *&v69;
  if (v71)
  {
    v73 = -INFINITY;
  }

  if (v72)
  {
    v74 = 0x7FF0000000000000;
  }

  else
  {
    v74 = 0;
  }

  v75 = *&v74;
  if ((v72 & 1) == 0)
  {
    v75 = v73;
  }

  if (v73 > v75)
  {
    sub_264900();
    v76 = sub_2624B0();
    sub_260D10();
  }

  sub_261830();
  v77 = v102;
  sub_22148(v68, v102, &qword_31B308, &qword_270A50);
  v78 = (v77 + *(v101 + 36));
  v79 = v113;
  v78[4] = v112;
  v78[5] = v79;
  v78[6] = v114;
  v80 = v109;
  *v78 = v108;
  v78[1] = v80;
  v81 = v111;
  v78[2] = v110;
  v78[3] = v81;
  v82 = v104;
  sub_2618C0();
  sub_A61D0();
  sub_A65A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v83 = v107;
  sub_262AA0();
  (*(v106 + 8))(v82, v83);
  return sub_8E80(v77, &qword_31B310, &qword_270A58);
}

uint64_t sub_A5380()
{
  v64 = type metadata accessor for SizeConstants.Environment(0);
  v1 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v63 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_262730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v61 = &v57 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - v11;
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v62 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v15 = *(*(v62 - 8) + 64);
  v16 = __chkstk_darwin(v62);
  v60 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v57 - v18;
  v20 = type metadata accessor for SizeConstants(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v57 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v57 - v29;
  __chkstk_darwin(v28);
  v32 = &v57 - v31;
  v33 = *v0;
  if (v33 == 2)
  {
    sub_A4128(&v57 - v31);
    v34 = *(v4 + 104);
    v58 = v14;
    v34(v14, enum case for Font.TextStyle.subheadline(_:), v3);
    sub_A727C(v32, v30, type metadata accessor for SizeConstants);
    (*(v4 + 16))(v12, v14, v3);
    sub_A727C(v30, v19, type metadata accessor for SizeConstants);
    v35 = v63;
    sub_A727C(v30, v63, type metadata accessor for SizeConstants.Environment);
    v36 = *(v64 + 24);
    v37 = sub_1CF30(v12, v35 + v36);
    v38 = *(v4 + 8);
    v38(v12, v3);
    sub_A72E4(v30, type metadata accessor for SizeConstants);
    v39 = sub_261690();
    (*(*(v39 - 8) + 8))(v35 + v36, v39);
    v40 = 1.0;
    if ((*&v37 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v40 = v37;
    }

    if ((~*&v37 & 0x7FF0000000000000) != 0)
    {
      v40 = v37;
    }

    *&v19[*(v62 + 36)] = v40;
    v38(v58, v3);
    sub_A72E4(v32, type metadata accessor for SizeConstants);
    v41 = sub_21FA54(80.0);
  }

  else
  {
    v43 = v63;
    v42 = v64;
    if (v33)
    {
      return 0;
    }

    sub_A4128(v27);
    v45 = v4;
    v46 = v61;
    v47 = v3;
    (*(v4 + 104))(v61, enum case for Font.TextStyle.subheadline(_:), v3);
    sub_A727C(v27, v24, type metadata accessor for SizeConstants);
    v48 = *(v4 + 16);
    v49 = v59;
    v48(v59, v46, v3);
    v50 = v60;
    sub_A727C(v24, v60, type metadata accessor for SizeConstants);
    sub_A727C(v24, v43, type metadata accessor for SizeConstants.Environment);
    v51 = *(v42 + 24);
    v52 = sub_1CF30(v49, v43 + v51);
    v53 = *(v45 + 8);
    v53(v49, v47);
    sub_A72E4(v24, type metadata accessor for SizeConstants);
    v54 = sub_261690();
    (*(*(v54 - 8) + 8))(v43 + v51, v54);
    v55 = 1.0;
    if ((*&v52 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v55 = v52;
    }

    if ((~*&v52 & 0x7FF0000000000000) != 0)
    {
      v55 = v52;
    }

    v56 = v61;
    *(v50 + *(v62 + 36)) = v55;
    v53(v56, v47);
    sub_A72E4(v27, type metadata accessor for SizeConstants);
    v41 = sub_21FA54(200.0);
    v19 = v50;
  }

  sub_8E80(v19, &qword_31B4C0, &qword_27C030);
  return *&v41;
}

uint64_t sub_A59A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

unint64_t sub_A5A24()
{
  result = qword_31B208;
  if (!qword_31B208)
  {
    sub_2F9C(&qword_31B200, &qword_2709A8);
    sub_2F9C(&qword_31B210, &qword_2709B0);
    sub_261220();
    sub_A5B34();
    sub_A65A0(&qword_31B2D0, &type metadata accessor for HoverEffect);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B208);
  }

  return result;
}

unint64_t sub_A5B34()
{
  result = qword_31B218;
  if (!qword_31B218)
  {
    sub_2F9C(&qword_31B210, &qword_2709B0);
    sub_A5BEC();
    sub_8E38(&qword_31B2C0, &qword_31B2C8, &unk_270A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B218);
  }

  return result;
}

unint64_t sub_A5BEC()
{
  result = qword_31B220;
  if (!qword_31B220)
  {
    sub_2F9C(&qword_31B228, &qword_2709B8);
    sub_A5C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B220);
  }

  return result;
}

unint64_t sub_A5C78()
{
  result = qword_31B230;
  if (!qword_31B230)
  {
    sub_2F9C(&qword_31B238, &qword_2709C0);
    sub_A5D30();
    sub_8E38(&qword_31B2B0, &qword_31B2B8, &qword_270A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B230);
  }

  return result;
}

unint64_t sub_A5D30()
{
  result = qword_31B240;
  if (!qword_31B240)
  {
    sub_2F9C(&qword_31B248, &qword_2709C8);
    sub_A5DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B240);
  }

  return result;
}

unint64_t sub_A5DBC()
{
  result = qword_31B250;
  if (!qword_31B250)
  {
    sub_2F9C(&qword_31B258, &qword_2709D0);
    sub_A5E48();
    sub_A5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B250);
  }

  return result;
}

unint64_t sub_A5E48()
{
  result = qword_31B260;
  if (!qword_31B260)
  {
    sub_2F9C(&qword_31B268, &qword_2709D8);
    sub_A5ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B260);
  }

  return result;
}

unint64_t sub_A5ECC()
{
  result = qword_31B270;
  if (!qword_31B270)
  {
    sub_2F9C(&qword_31B278, &qword_2709E0);
    sub_A5F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B270);
  }

  return result;
}

unint64_t sub_A5F58()
{
  result = qword_31B280;
  if (!qword_31B280)
  {
    sub_2F9C(&qword_31B288, &qword_2709E8);
    sub_A5FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B280);
  }

  return result;
}

unint64_t sub_A5FE4()
{
  result = qword_31B290;
  if (!qword_31B290)
  {
    sub_2F9C(&qword_31B298, &qword_2709F0);
    sub_A6070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B290);
  }

  return result;
}

unint64_t sub_A6070()
{
  result = qword_31B2A0;
  if (!qword_31B2A0)
  {
    sub_2F9C(&qword_31B2A8, &unk_2709F8);
    sub_A65A0(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B2A0);
  }

  return result;
}

uint64_t sub_A6158(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B1F0, &qword_270998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A61D0()
{
  result = qword_31B318;
  if (!qword_31B318)
  {
    sub_2F9C(&qword_31B310, &qword_270A58);
    sub_A625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B318);
  }

  return result;
}

unint64_t sub_A625C()
{
  result = qword_31B320;
  if (!qword_31B320)
  {
    sub_2F9C(&qword_31B308, &qword_270A50);
    sub_A62E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B320);
  }

  return result;
}

unint64_t sub_A62E8()
{
  result = qword_31B328;
  if (!qword_31B328)
  {
    sub_2F9C(&qword_31B300, &qword_270A48);
    sub_A6374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B328);
  }

  return result;
}

unint64_t sub_A6374()
{
  result = qword_31B330;
  if (!qword_31B330)
  {
    sub_2F9C(&qword_31B2F8, &qword_270A40);
    sub_A6400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B330);
  }

  return result;
}

unint64_t sub_A6400()
{
  result = qword_31B338;
  if (!qword_31B338)
  {
    sub_2F9C(&qword_31B2F0, &qword_270A38);
    sub_A64B8();
    sub_8E38(&qword_31B348, &qword_31B350, &qword_270A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B338);
  }

  return result;
}

unint64_t sub_A64B8()
{
  result = qword_31B340;
  if (!qword_31B340)
  {
    sub_2F9C(&qword_31B2E8, &qword_270A30);
    sub_A65A0(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B340);
  }

  return result;
}

uint64_t sub_A65A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A6634(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_317878, &unk_27E490);
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
    v14 = *(a1 + a3[7] + 8);
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
    v15 = type metadata accessor for ButtonViewModel(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_A67D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_317878, &unk_27E490);
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
    *(a1 + a4[7] + 8) = -a2;
  }

  else
  {
    v15 = type metadata accessor for ButtonViewModel(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_A695C()
{
  sub_A7064(319, &qword_317C68, type metadata accessor for SizeConstants);
  if (v0 <= 0x3F)
  {
    sub_A7064(319, &qword_3178F8, &type metadata accessor for BlendMode);
    if (v1 <= 0x3F)
    {
      sub_3E7AC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ButtonViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_A6A5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[9] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = sub_2EF0(&qword_317878, &unk_27E490);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_A6CA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31B3F8, &unk_270B30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v15 = *(v10 + 56);

    return v15(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[9] + 8) = -a2;
  }

  else
  {
    v16 = sub_2EF0(&qword_317878, &unk_27E490);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[10];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

void sub_A6EE4()
{
  sub_A7064(319, &qword_31B468, type metadata accessor for FontConstants.Button);
  if (v0 <= 0x3F)
  {
    sub_A7064(319, &qword_316FE8, type metadata accessor for ColorConstants);
    if (v1 <= 0x3F)
    {
      sub_A7064(319, &qword_317C68, type metadata accessor for SizeConstants);
      if (v2 <= 0x3F)
      {
        sub_A7064(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_3E7AC();
          if (v4 <= 0x3F)
          {
            sub_A7064(319, &qword_3178F8, &type metadata accessor for BlendMode);
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

void sub_A7064(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_A70BC()
{
  result = qword_31B4B0;
  if (!qword_31B4B0)
  {
    sub_2F9C(&qword_31B4B8, &unk_270B60);
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B4B0);
  }

  return result;
}

uint64_t sub_A7174()
{
  sub_2F9C(&qword_31B310, &qword_270A58);
  sub_261FA0();
  sub_A61D0();
  sub_A65A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A7228()
{
  result = qword_31A528;
  if (!qword_31A528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31A528);
  }

  return result;
}

uint64_t sub_A727C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A72E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_A7344()
{
  result = qword_31B5D0;
  if (!qword_31B5D0)
  {
    sub_2F9C(&qword_31B528, &qword_270BD8);
    sub_A73D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5D0);
  }

  return result;
}

unint64_t sub_A73D0()
{
  result = qword_31B5D8;
  if (!qword_31B5D8)
  {
    sub_2F9C(&qword_31B520, &qword_270BD0);
    sub_8E38(&qword_31B5E0, &qword_31B518, &qword_270BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5D8);
  }

  return result;
}

unint64_t sub_A7488()
{
  result = qword_31B5E8;
  if (!qword_31B5E8)
  {
    sub_2F9C(&qword_31B5A0, &qword_270C88);
    sub_A7514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5E8);
  }

  return result;
}

unint64_t sub_A7514()
{
  result = qword_31B5F0;
  if (!qword_31B5F0)
  {
    sub_2F9C(&qword_31B598, &qword_270C80);
    sub_8E38(&qword_31B5F8, &qword_31B590, &qword_270C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B5F0);
  }

  return result;
}

uint64_t sub_A75CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_A7634()
{
  result = qword_31B618;
  if (!qword_31B618)
  {
    sub_2F9C(&qword_31B548, &qword_270C00);
    sub_8E38(&qword_31B620, &qword_3192C8, &unk_2793D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B618);
  }

  return result;
}

unint64_t sub_A76EC()
{
  result = qword_31B628;
  if (!qword_31B628)
  {
    sub_2F9C(&qword_31B600, &qword_270CC0);
    sub_8E38(&qword_31B630, &qword_31A6F0, &qword_26F6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B628);
  }

  return result;
}

uint64_t ActionContextFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_2EF0(&qword_31B658, &qword_270CE8);
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_A7870, 0, 0);
}

uint64_t sub_A7870()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_263F10();
  sub_2EF0(&qword_3160D0, &unk_270CF0);
  sub_263F40();
  (*(v2 + 8))(v1, v4);
  v5 = v0[12];
  if (v5)
  {
    if (*(v5 + 16) && (v6 = sub_D410(0x6570795465676170, 0xE800000000000000), (v7 & 1) != 0))
    {
      sub_A7C18(*(v5 + 56) + 32 * v6, (v0 + 2));

      if (swift_dynamicCast())
      {
        v8 = v0[13];
        v9 = v0[10];
        v10 = v0[11];
        v0[9] = &type metadata for String;
        v0[6] = v9;
        v0[7] = v10;
        v11 = *(v8 + 32);
        sub_17450(v8, *(v8 + 24));
        sub_263EF0();
        sub_3080(v0 + 6);
      }
    }

    else
    {
    }
  }

  v12 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_A7A48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_156D0;

  return ActionContextFieldProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

uint64_t sub_A7B00()
{
  v0 = sub_264140();
  sub_B600(v0, qword_31B640);
  sub_B080(v0, qword_31B640);
  return sub_264130();
}

uint64_t static MetricsFieldInclusionRequest.actionContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315910 != -1)
  {
    swift_once();
  }

  v2 = sub_264140();
  v3 = sub_B080(v2, qword_31B640);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A7C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A7C88()
{
  swift_getAssociatedTypeWitness();
  v0 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_2638B0();
  return v2;
}

uint64_t ShelfHeaderComponentModel.model.setter(__int128 *a1)
{
  sub_3080(v1);

  return sub_F7CC(a1, v1);
}

uint64_t CodeAnyComponentModel.description.getter()
{
  sub_2EF0(&qword_317250, &unk_2697A0);
  sub_264CC0();
  return 0;
}

uint64_t CodeAnyComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_2E18(a1, a1[3]);
  v6 = Decoder.componentKindTable.getter();
  Decoder.decodeComponentModel<A>(using:)(v6, v7, v10);
  if (!v2)
  {
    sub_F7CC(v10, v11);
    v8 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v8;
    *(a2 + 32) = v12;
  }

  return sub_3080(a1);
}

uint64_t sub_A7F0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_2E18(a1, a1[3]);
  Decoder.decodeComponentModel()(v8);
  if (!v2)
  {
    sub_F7CC(v8, v9);
    v6 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v10;
  }

  return sub_3080(a1);
}

ValueMetadata *Decoder.componentKindTable.getter()
{
  sub_265100();
  if (qword_315920 != -1)
  {
    swift_once();
  }

  v0 = sub_2EF0(&qword_31B680, &qword_270DA8);
  sub_B080(v0, qword_31B668);
  sub_2EF0(&qword_31B688, &qword_270DB0);
  sub_2642C0();

  v1 = v3;
  if (!v3)
  {
    v1 = &type metadata for EmptyComponentKindTable;
    sub_A87EC();
  }

  return v1;
}

uint64_t Decoder.decodeComponentModel<A>(using:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v18[6] = a1;
  v15 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v12 - v8;
  sub_2650F0();
  if (v3)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v6 + 8))(v9, v15);
    sub_A8840(v18, &v16);
    if (v17)
    {
      sub_2E18(&v16, v17);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v16);
    }

    else
    {
      sub_A88B0(&v16);
    }

    swift_willThrow();
    return sub_A88B0(v18);
  }

  else
  {
    v13 = a3;
    v14 = v18[4];
    sub_2E18(v18, v18[3]);
    v10 = *(a2 + 8);
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v16, v13);
    return sub_3080(v18);
  }
}

unint64_t sub_A82D8()
{
  result = sub_F024(&_swiftEmptyArrayStorage);
  qword_31B660 = result;
  return result;
}

uint64_t sub_A8300()
{
  if (qword_315918 != -1)
  {
    swift_once();
  }
}

unint64_t sub_A835C()
{
  if (qword_315918 != -1)
  {
    swift_once();
  }

  v1 = qword_31B660;

  return sub_A8A44(v1);
}

uint64_t *sub_A83D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_263980();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_263840();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_A8C6C(a1);
  if (v11)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_30CC(a2, v34);
    *&v36 = v14;
    *(&v36 + 1) = v15;
    v37 = v16;
    sub_10934(v35);
    sub_2647C0();
    if (v3)
    {
      return sub_A8CF4(v35);
    }

LABEL_7:
    v33 = v36;
    v24 = v36;
    v25 = sub_2E18(v35, v36);
    *(a3 + 24) = v33;
    v26 = sub_10934(a3);
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    return sub_3080(v35);
  }

  v18 = sub_A8C6C(a1);
  if (v18)
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
    sub_30CC(a2, v34);
    result = sub_263810();
    if (v3)
    {
      return result;
    }

    v32 = a2[4];
    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    *&v36 = v21;
    *(&v36 + 1) = v22;
    v37 = v23;
    sub_10934(v35);
    sub_263DE0();
    goto LABEL_7;
  }

  v27 = sub_264C10();
  swift_allocError();
  v29 = v28;
  v30 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
  *v29 = a1;
  v31 = a2[4];
  sub_2E18(a2, a2[3]);
  sub_2650E0();
  sub_264BC0(21);

  v35[0] = 60;
  v35[1] = 0xE100000000000000;
  v38._countAndFlagsBits = sub_265260();
  sub_264530(v38);

  v39._object = 0x80000000002917A0;
  v39._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v39);
  sub_264BF0();
  (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
  return swift_willThrow();
}

uint64_t sub_A8760()
{
  v0 = sub_2EF0(&qword_31B680, &qword_270DA8);
  sub_B600(v0, qword_31B668);
  sub_B080(v0, qword_31B668);
  sub_2EF0(&qword_31B688, &qword_270DB0);
  return sub_263960();
}

unint64_t sub_A87EC()
{
  result = qword_31B690;
  if (!qword_31B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B690);
  }

  return result;
}

uint64_t sub_A8840(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B6A8, &qword_270DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A88B0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B6A8, &qword_270DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static JSONContext.Property<A>.booksComponentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315920 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_31B680, &qword_270DA8);
  v3 = sub_B080(v2, qword_31B668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_A89F0()
{
  result = qword_31B6B0;
  if (!qword_31B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6B0);
  }

  return result;
}

unint64_t sub_A8A44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_2EF0(&qword_31B6C0, &unk_270F00);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        result = sub_D410(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_A8C6C(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_A8CF4(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t ToolbarActionMenu.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolbarActionMenu(0) + 24));
}

uint64_t (*ToolbarActionMenu.preSelectionActionProvider.getter())()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  if (*v1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_A8F08;
  }

  else
  {
    v5 = 0;
  }

  sub_7BE28(v2);
  return v5;
}

uint64_t sub_A8E6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_7BE28(v2);
  result = sub_7BE38(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_A8ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_A8F08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t ToolbarActionMenu.preSelectionActionProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_A8FC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v8 = v7[1];
  result = sub_7BE38(*v7);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_A8FC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void (*ToolbarActionMenu.preSelectionActionProvider.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ToolbarActionMenu(0) + 28);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_AF848;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *v4 = v10;
  *(v4 + 8) = v9;
  sub_7BE28(v7);
  return sub_A90D4;
}

void sub_A90D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    v4 = v2[1];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_AF888;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = v2[3];
    v12 = v2[4];
    v14 = (v2[2] + *(v2 + 10));
    sub_7BE28(v3);
    sub_7BE38(v13);
    *v14 = v6;
    v14[1] = v5;
    v15 = v2[1];
    sub_7BE38(*v2);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    if (v3)
    {
      v9 = v2[1];
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = v9;
      sub_7BE38(v8);
      v11 = sub_AF888;
    }

    else
    {
      v16 = v2[4];
      sub_7BE38(v2[3]);
      v11 = 0;
      v10 = 0;
    }

    v17 = (v2[2] + *(v2 + 10));
    *v17 = v11;
    v17[1] = v10;
  }

  free(v2);
}

uint64_t (*ToolbarActionMenu.postSelectionActionProvider.getter())()
{
  v1 = (v0 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  if (*v1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_AF848;
  }

  else
  {
    v5 = 0;
  }

  sub_7BE28(v2);
  return v5;
}

uint64_t sub_A929C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  sub_7BE28(v2);
  result = sub_7BE38(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t ToolbarActionMenu.postSelectionActionProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_AF888;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (v2 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v8 = v7[1];
  result = sub_7BE38(*v7);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

void (*ToolbarActionMenu.postSelectionActionProvider.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ToolbarActionMenu(0) + 32);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_AF848;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *v4 = v10;
  *(v4 + 8) = v9;
  sub_7BE28(v7);
  return sub_A9464;
}

void sub_A9464(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    v4 = v2[1];
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = sub_AF888;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = v2[3];
    v12 = v2[4];
    v14 = (v2[2] + *(v2 + 10));
    sub_7BE28(v3);
    sub_7BE38(v13);
    *v14 = v6;
    v14[1] = v5;
    v15 = v2[1];
    sub_7BE38(*v2);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    if (v3)
    {
      v9 = v2[1];
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      *(v10 + 24) = v9;
      sub_7BE38(v8);
      v11 = sub_AF888;
    }

    else
    {
      v16 = v2[4];
      sub_7BE38(v2[3]);
      v11 = 0;
      v10 = 0;
    }

    v17 = (v2[2] + *(v2 + 10));
    *v17 = v11;
    v17[1] = v10;
  }

  free(v2);
}

uint64_t ToolbarActionMenu.init(id:name:items:preSelectionActionProvider:postSelectionActionProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = type metadata accessor for ToolbarActionMenu(0);
  v17 = (a9 + v16[7]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a9 + v16[8]);
  *v18 = 0;
  v18[1] = 0;
  *a9 = a1;
  a9[1] = a2;
  sub_A96C8(a3, a9 + v16[5]);
  *(a9 + v16[6]) = a4;
  if (!a5)
  {
    *v17 = 0;
    v17[1] = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    result = 0;
    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  *v17 = sub_AF888;
  v17[1] = v19;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = swift_allocObject();
  *(result + 16) = a7;
  *(result + 24) = a8;
  v21 = sub_AF888;
LABEL_6:
  *v18 = v21;
  v18[1] = result;
  return result;
}

uint64_t sub_A96C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarActionMenu.contentView.getter()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v7[1] = *(v0 + *(__chkstk_darwin(v1 - 8) + 32));
  sub_ABA1C(v0, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarActionMenu);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_AD450(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for ToolbarActionMenu);

  sub_2EF0(&qword_31B6D0, &qword_27BBA0);
  sub_2EF0(&qword_31B6D8, &unk_270F10);
  sub_8E38(&qword_31B6E0, &qword_31B6D0, &qword_27BBA0);
  sub_AAD6C();
  sub_AAF14(&qword_31B718, type metadata accessor for ToolbarActionMenuItem);
  return sub_2633C0();
}

uint64_t sub_A993C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v143 = a3;
  v144 = type metadata accessor for ToolbarActionButtonMenuItem();
  v4 = *(*(v144 - 8) + 64);
  v5 = __chkstk_darwin(v144);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = (&v121 - v8);
  v9 = sub_2EF0(&qword_316208, &qword_268BD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v124 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v130 = &v121 - v14;
  v15 = __chkstk_darwin(v13);
  v128 = &v121 - v16;
  __chkstk_darwin(v15);
  v125 = &v121 - v17;
  v138 = sub_260BD0();
  v145 = *(v138 - 8);
  v18 = *(v145 + 64);
  v19 = __chkstk_darwin(v138);
  v132 = (&v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v123 = &v121 - v21;
  v139 = type metadata accessor for ToolbarActionShareLinkMenuItem();
  v22 = *(*(v139 - 8) + 64);
  v23 = __chkstk_darwin(v139);
  v25 = (&v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v127 = &v121 - v26;
  v27 = sub_260060();
  v133 = *(v27 - 8);
  v134 = v27;
  v28 = *(v133 + 64);
  v29 = __chkstk_darwin(v27);
  v126 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v131 = &v121 - v31;
  v140 = sub_2EF0(&qword_31BB88, &qword_271970);
  v32 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v142 = &v121 - v33;
  v135 = sub_2EF0(&qword_31BB90, &qword_271978);
  v34 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  *(&v136 + 1) = &v121 - v35;
  v141 = sub_2EF0(&qword_31B6F8, &unk_27BB90);
  v36 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v137 = &v121 - v37;
  v38 = type metadata accessor for ToolbarActionMenuItem(0);
  v39 = *(*(v38 - 1) + 64);
  __chkstk_darwin(v38);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v136 = type metadata accessor for ToolbarActionToggleMenuItem();
  v42 = *(*(v136 - 8) + 64);
  v43 = __chkstk_darwin(v136);
  v45 = &v121 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v121 - v46;
  v48 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v51 = &v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA1C(a1 + v38[11], v51, type metadata accessor for ToolbarActionMenuItemButtonType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v133;
      v54 = *(v133 + 32);
      v55 = v131;
      v132 = v25;
      v56 = v134;
      v129 = v54;
      v130 = v133 + 32;
      v54(v131, v51, v134);
      v57 = v38[5];
      v58 = v145;
      v124 = *(v145 + 16);
      v59 = v123;
      v60 = v138;
      v124(v123, a1 + v57, v138);
      v61 = *(v58 + 56);
      v62 = v125;
      v61(v125, 1, 1, v60);
      sub_8198(a1 + v38[7], v151, &qword_31AC00, &qword_270F30);
      v63 = v38[10];
      v64 = *(a1 + v38[9]);
      LODWORD(v128) = *(a1 + v63);
      v65 = *(v53 + 16);
      v66 = v126;
      v67 = v56;
      v68 = v132;
      v65(v126, v55, v67);
      type metadata accessor for ProfileRestrictions();
      sub_AAF14(&qword_326DC0, type metadata accessor for ProfileRestrictions);
      *v68 = sub_261900();
      v68[1] = v69;
      v70 = v139;
      v124(v68 + *(v139 + 20), v59, v60);
      sub_8198(v62, v68 + *(v70 + 24), &qword_316208, &qword_268BD0);
      sub_8198(v151, &v149, &qword_31AC00, &qword_270F30);
      if (BYTE8(v150[1]) == 255)
      {
        v72 = 0x800000000028FD20;
        sub_8E80(v151, &qword_31AC00, &qword_270F30);
        sub_8E80(v62, &qword_316208, &qword_268BD0);
        (*(v145 + 8))(v59, v60);
        if (BYTE8(v150[1]) != 255)
        {
          sub_8E80(&v149, &qword_31AC00, &qword_270F30);
        }

        v74 = 0;
        v71 = 0xD000000000000013;
        v73 = 1;
      }

      else
      {
        sub_8E80(v151, &qword_31AC00, &qword_270F30);
        sub_8E80(v62, &qword_316208, &qword_268BD0);
        (*(v145 + 8))(v59, v60);
        v72 = *(&v149 + 1);
        v71 = v149;
        v73 = v150[0];
        *v153 = *(v150 + 1);
        *&v153[15] = *&v150[1];
        v74 = BYTE8(v150[1]);
      }

      v96 = v139;
      v97 = v68 + *(v139 + 28);
      *v97 = v71;
      *(v97 + 1) = v72;
      v97[16] = v73;
      *(v97 + 17) = *v153;
      *(v97 + 4) = *&v153[15];
      v97[40] = v74;
      *(v68 + v96[8]) = v64;
      *(v68 + v96[9]) = v128;
      v98 = v134;
      v129(v68 + v96[10], v66, v134);
      v99 = v127;
      sub_AD450(v68, v127, type metadata accessor for ToolbarActionShareLinkMenuItem);
      sub_ABA1C(v99, *(&v136 + 1), type metadata accessor for ToolbarActionShareLinkMenuItem);
      swift_storeEnumTagMultiPayload();
      sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem);
      sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem);
      v100 = v137;
      sub_261F80();
      sub_8198(v100, v142, &qword_31B6F8, &unk_27BB90);
      swift_storeEnumTagMultiPayload();
      sub_AAE28();
      sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_261F80();
      sub_8E80(v100, &qword_31B6F8, &unk_27BB90);
      sub_AD560(v99, type metadata accessor for ToolbarActionShareLinkMenuItem);
      return (*(v133 + 8))(v131, v98);
    }

    else
    {
      v81 = sub_2EF0(&qword_31BB98, &qword_271980);
      v82 = &v51[*(v81 + 48)];
      v84 = *v82;
      v83 = *(v82 + 1);
      *&v136 = v84;
      *(&v136 + 1) = v83;
      v85 = &v51[*(v81 + 64)];
      v86 = v128;
      sub_A96C8(v51, v128);
      v154 = *(v85 + 4);
      v87 = *(v85 + 1);
      *v153 = *v85;
      *&v153[16] = v87;
      v88 = v145;
      v89 = v138;
      (*(v145 + 16))(v132, a1 + v38[5], v138);
      v90 = v38[8];
      LODWORD(v139) = *(a1 + v38[9]);
      LODWORD(v137) = *(a1 + v38[10]);
      sub_AAFC8(a1 + v90, v151);
      sub_F7CC(v151, v152);
      v91 = v124;
      sub_8198(a1 + v38[6], v124, &qword_316208, &qword_268BD0);
      v92 = *(v88 + 48);
      if (v92(v91, 1, v89) == 1)
      {
        sub_8198(v86, v130, &qword_316208, &qword_268BD0);
        v93 = v89;
        if (v92(v91, 1, v89) != 1)
        {
          sub_8E80(v91, &qword_316208, &qword_268BD0);
        }
      }

      else
      {
        v94 = v130;
        (*(v88 + 32))(v130, v91, v89);
        (*(v88 + 56))(v94, 0, 1, v89);
        v93 = v89;
      }

      sub_8198(a1 + v38[7], &v149, &qword_31AC00, &qword_270F30);
      v95 = v145;
      if (BYTE8(v150[1]) == 255)
      {
        if (*(&v136 + 1))
        {
          *v151 = v136;
          v151[16] = 1;
          *&v151[17] = *v148;
          *&v151[32] = *&v148[15];
          v151[40] = 0;
        }

        else
        {
          sub_8198(v153, &v146, &qword_316D40, &unk_268FC0);
          if (v147)
          {
            sub_F7CC(&v146, v151);
            v112 = 2;
          }

          else
          {
            memset(v151, 0, 40);
            v112 = -1;
          }

          v151[40] = v112;
          if (BYTE8(v150[1]) != 255)
          {
            sub_8E80(&v149, &qword_31AC00, &qword_270F30);
          }
        }
      }

      else
      {

        *v151 = v149;
        *&v151[16] = v150[0];
        *&v151[25] = *(v150 + 9);
      }

      type metadata accessor for ProfileRestrictions();
      sub_AAF14(&qword_326DC0, type metadata accessor for ProfileRestrictions);
      *v7 = sub_261900();
      *(v7 + 1) = v113;
      *(v7 + 2) = swift_getKeyPath();
      v7[56] = 0;
      v114 = v144;
      v115 = *(v144 + 24);
      *&v7[v115] = swift_getKeyPath();
      sub_2EF0(&qword_318150, &qword_279A70);
      swift_storeEnumTagMultiPayload();
      v116 = v114[7];
      *&v7[v116] = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      (*(v95 + 32))(&v7[v114[8]], v132, v93);
      v7[v114[9]] = v139;
      v7[v114[10]] = v137;
      sub_F7CC(v152, &v7[v114[11]]);
      sub_A96C8(v130, &v7[v114[12]]);
      v117 = &v7[v114[13]];
      v118 = *&v151[16];
      *v117 = *v151;
      *(v117 + 1) = v118;
      *(v117 + 25) = *&v151[25];
      v119 = v7;
      v120 = v129;
      sub_AD450(v119, v129, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_ABA1C(v120, v142, type metadata accessor for ToolbarActionButtonMenuItem);
      swift_storeEnumTagMultiPayload();
      sub_AAE28();
      sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_261F80();
      sub_AD560(v120, type metadata accessor for ToolbarActionButtonMenuItem);
      sub_8E80(v153, &qword_316D40, &unk_268FC0);
      return sub_8E80(v86, &qword_316208, &qword_268BD0);
    }
  }

  else
  {
    LODWORD(v134) = *v51;
    sub_ABA1C(a1, v41, type metadata accessor for ToolbarActionMenuItem);
    v75 = type metadata accessor for ToolbarActionMenu(0);
    v76 = v122;
    v77 = (v122 + *(v75 + 28));
    v79 = v77[1];
    v145 = *v77;
    v78 = v145;
    if (v145)
    {
      v80 = swift_allocObject();
      *(v80 + 16) = v78;
      *(v80 + 24) = v79;
      v132 = sub_AF848;
    }

    else
    {
      v132 = 0;
      v80 = 0;
    }

    v102 = (v76 + *(v75 + 32));
    v104 = *v102;
    v103 = v102[1];
    v138 = v79;
    v133 = v103;
    if (v104)
    {
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v105 + 24) = v103;
      v106 = sub_AF848;
    }

    else
    {
      v106 = 0;
      v105 = 0;
    }

    *v45 = swift_getKeyPath();
    v45[40] = 0;
    v107 = v136;
    v108 = *(v136 + 20);
    *&v45[v108] = swift_getKeyPath();
    sub_2EF0(&qword_318150, &qword_279A70);
    swift_storeEnumTagMultiPayload();
    sub_AD450(v41, &v45[v107[6]], type metadata accessor for ToolbarActionMenuItem);
    v45[v107[7]] = v134;
    v109 = &v45[v107[8]];
    *v109 = v132;
    v109[1] = v80;
    v110 = &v45[v107[9]];
    *v110 = v106;
    v110[1] = v105;
    sub_AD450(v45, v47, type metadata accessor for ToolbarActionToggleMenuItem);
    sub_ABA1C(v47, *(&v136 + 1), type metadata accessor for ToolbarActionToggleMenuItem);
    swift_storeEnumTagMultiPayload();
    sub_7BE28(v145);
    sub_7BE28(v104);
    sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem);
    sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem);
    v111 = v137;
    sub_261F80();
    sub_8198(v111, v142, &qword_31B6F8, &unk_27BB90);
    swift_storeEnumTagMultiPayload();
    sub_AAE28();
    sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem);
    sub_261F80();
    sub_8E80(v111, &qword_31B6F8, &unk_27BB90);
    return sub_AD560(v47, type metadata accessor for ToolbarActionToggleMenuItem);
  }
}

uint64_t sub_AAB7C()
{
  v1 = type metadata accessor for ToolbarActionMenu(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = v1[5];
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v3 + v1[6]);

  v9 = (v3 + v1[7]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = (v3 + v1[8]);
  if (*v11)
  {
    v12 = v11[1];
  }

  return swift_deallocObject();
}

uint64_t sub_AACEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ToolbarActionMenu(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_A993C(a1, v6, a2);
}

unint64_t sub_AAD6C()
{
  result = qword_31B6E8;
  if (!qword_31B6E8)
  {
    sub_2F9C(&qword_31B6D8, &unk_270F10);
    sub_AAE28();
    sub_AAF14(&qword_31B710, type metadata accessor for ToolbarActionButtonMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6E8);
  }

  return result;
}

unint64_t sub_AAE28()
{
  result = qword_31B6F0;
  if (!qword_31B6F0)
  {
    sub_2F9C(&qword_31B6F8, &unk_27BB90);
    sub_AAF14(&qword_31B700, type metadata accessor for ToolbarActionToggleMenuItem);
    sub_AAF14(&qword_31B708, type metadata accessor for ToolbarActionShareLinkMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B6F0);
  }

  return result;
}

uint64_t sub_AAF14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ToolbarActionMenuItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(v1 + *(v3 + 32), v5);
  return sub_F7CC(v5, a1);
}

uint64_t sub_AB024()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x736D657469;
  v4 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_AB0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AF0AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_AB0D4(uint64_t a1)
{
  v2 = sub_AB634();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AB110(uint64_t a1)
{
  v2 = sub_AB634();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolbarActionMenu.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6;
  v27 = sub_2EF0(&qword_31B720, &qword_270F20);
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  __chkstk_darwin(v27);
  v10 = v23 - v9;
  v11 = type metadata accessor for ToolbarActionMenu(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_AB634();
  v26 = v10;
  sub_265120();
  if (v2)
  {
    return sub_3080(a1);
  }

  v16 = v25;
  LOBYTE(v28) = 0;
  v17 = v14;
  *v14 = sub_264DC0();
  v14[1] = v18;
  v23[1] = v18;
  sub_260BD0();
  LOBYTE(v28) = 1;
  sub_AAF14(&qword_315D90, &type metadata accessor for LocalizerRequest);
  sub_264DB0();
  sub_A96C8(v7, v14 + v11[5]);
  sub_2EF0(&qword_31B6D0, &qword_27BBA0);
  v29 = 2;
  sub_AB688();
  v23[0] = 0;
  sub_264DF0();
  *(v14 + v11[6]) = v28;
  sub_2EF0(&qword_31B740, &qword_270F28);
  v29 = 3;
  sub_8E38(&qword_31B748, &qword_31B740, &qword_270F28);
  sub_264DF0();
  v19 = (v14 + v11[7]);
  v20 = *(&v28 + 1);
  *v19 = v28;
  v19[1] = v20;
  v29 = 4;
  sub_264DF0();
  v21 = v11[8];
  (*(v16 + 8))(v26, v27);
  *(v17 + v21) = v28;
  sub_ABA1C(v17, v24, type metadata accessor for ToolbarActionMenu);
  sub_3080(a1);
  return sub_AD560(v17, type metadata accessor for ToolbarActionMenu);
}

unint64_t sub_AB634()
{
  result = qword_31B728;
  if (!qword_31B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B728);
  }

  return result;
}

unint64_t sub_AB688()
{
  result = qword_31B730;
  if (!qword_31B730)
  {
    sub_2F9C(&qword_31B6D0, &qword_27BBA0);
    sub_AAF14(&qword_31B738, type metadata accessor for ToolbarActionMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B730);
  }

  return result;
}

uint64_t sub_AB73C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static ToolbarActionMenuItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_264F10();
  }
}

uint64_t ToolbarActionMenuItem.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionMenuItem(0) + 20);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_AB89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionMenuItem(0);
  sub_AAFC8(a1 + *(v4 + 32), v6);
  return sub_F7CC(v6, a2);
}

uint64_t ToolbarActionMenuItem.action.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ToolbarActionMenuItem(0) + 32);
  sub_3080((v1 + v3));

  return sub_F7CC(a1, v1 + v3);
}

uint64_t sub_ABA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ToolbarActionMenuItem.init(id:name:subtitle:icon:action:isEnabled:isExplicit:buttonType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = type metadata accessor for ToolbarActionMenuItem(0);
  v16 = v15[5];
  v17 = sub_260BD0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a3, v17);
  sub_8198(a4, &a9[v15[6]], &qword_316208, &qword_268BD0);
  sub_8198(a5, &a9[v15[7]], &qword_31AC00, &qword_270F30);
  v19 = a6[3];
  v20 = a6[4];
  v21 = sub_2E18(a6, v19);
  v22 = &a9[v15[8]];
  v22[3] = v19;
  v22[4] = *(v20 + 8);
  v23 = sub_10934(v22);
  (*(*(v19 - 8) + 16))(v23, v21, v19);
  sub_8E80(a5, &qword_31AC00, &qword_270F30);
  sub_8E80(a4, &qword_316208, &qword_268BD0);
  (*(v18 + 8))(a3, v17);
  a9[v15[9]] = a7;
  a9[v15[10]] = a8;
  sub_AD450(a10, &a9[v15[11]], type metadata accessor for ToolbarActionMenuItemButtonType);

  return sub_3080(a6);
}

uint64_t sub_ABCAC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x63696C7078457369;
  if (v1 != 6)
  {
    v3 = 0x79546E6F74747562;
  }

  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x656C62616E457369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 2)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_ABD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AF25C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_ABDC8(uint64_t a1)
{
  v2 = sub_AD4B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ABE04(uint64_t a1)
{
  v2 = sub_AD4B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolbarActionMenuItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v3 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_316208, &qword_268BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_260BD0();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2EF0(&qword_31B750, &qword_270F38);
  v35 = *(v37 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v37);
  v15 = &v30 - v14;
  v16 = type metadata accessor for ToolbarActionMenuItem(0);
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v20 = a1[4];
  v39 = a1;
  sub_2E18(a1, v21);
  sub_AD4B8();
  v36 = v15;
  v22 = v38;
  sub_265120();
  if (v22)
  {
    return sub_3080(v39);
  }

  LOBYTE(v40) = 0;
  *v19 = sub_264DC0();
  v19[1] = v23;
  LOBYTE(v40) = 1;
  sub_AAF14(&qword_315D90, &type metadata accessor for LocalizerRequest);
  sub_264DF0();
  (*(v34 + 32))(v19 + v16[5], v12, v9);
  LOBYTE(v40) = 2;
  v38 = v9;
  sub_264DB0();
  sub_A96C8(v8, v19 + v16[6]);
  v42 = 3;
  sub_AD50C();
  sub_264DB0();
  v24 = (v19 + v16[7]);
  v25 = *v41;
  *v24 = v40;
  v24[1] = v25;
  *(v24 + 25) = *&v41[9];
  v42 = 4;
  sub_3FC1C();
  sub_264DF0();
  v26 = v19 + v16[8];
  v27 = *v41;
  *v26 = v40;
  *(v26 + 1) = v27;
  *(v26 + 4) = *&v41[16];
  LOBYTE(v40) = 5;
  *(v19 + v16[9]) = sub_264DD0() & 1;
  LOBYTE(v40) = 6;
  *(v19 + v16[10]) = sub_264DD0() & 1;
  LOBYTE(v40) = 7;
  sub_AAF14(&qword_31B768, type metadata accessor for ToolbarActionMenuItemButtonType);
  v28 = v33;
  sub_264DF0();
  (*(v35 + 8))(v36, v37);
  sub_AD450(v28, v19 + v16[11], type metadata accessor for ToolbarActionMenuItemButtonType);
  sub_ABA1C(v19, v31, type metadata accessor for ToolbarActionMenuItem);
  sub_3080(v39);
  return sub_AD560(v19, type metadata accessor for ToolbarActionMenuItem);
}

Swift::Int sub_AC568()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_AC5D4()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

uint64_t sub_AC624@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &_s11descr2FCCF9VMF.Superclass;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_AC6AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3002C0;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_AC704(uint64_t a1)
{
  v2 = sub_AD614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC740(uint64_t a1)
{
  v2 = sub_AD614();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC77C()
{
  v1 = 0x6B726F7774656ELL;
  if (*v0 != 1)
  {
    v1 = 0x65766F4374616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_AC7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AF4F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_AC804(uint64_t a1)
{
  v2 = sub_AD5C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC840(uint64_t a1)
{
  v2 = sub_AD5C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC87C(uint64_t a1)
{
  v2 = sub_AD6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC8B8(uint64_t a1)
{
  v2 = sub_AD6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_AC8F4(uint64_t a1)
{
  v2 = sub_AD710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AC930(uint64_t a1)
{
  v2 = sub_AD710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolbarActionMenuItemIcon.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v52 = sub_2EF0(&qword_31B770, &qword_270F40);
  v55 = *(v52 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v52);
  v57 = &v48[-v4];
  v51 = sub_2EF0(&qword_31B778, &qword_270F48);
  v53 = *(v51 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v51);
  v7 = &v48[-v6];
  v8 = sub_2EF0(&qword_31B780, &qword_270F50);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v11 = &v48[-v10];
  v12 = sub_2EF0(&qword_31B788, &qword_270F58);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v68 = a1;
  sub_2E18(a1, v17);
  sub_AD5C0();
  v19 = v58;
  sub_265120();
  if (!v19)
  {
    v20 = v57;
    v58 = v13;
    v21 = sub_264E00();
    v22 = (2 * *(v21 + 16)) | 1;
    v63 = v21;
    v64 = v21 + 32;
    v65 = 0;
    v66 = v22;
    v23 = sub_AFAC();
    if (v23 == 3 || v65 != v66 >> 1)
    {
      v27 = sub_264C10();
      swift_allocError();
      v28 = v16;
      v30 = v29;
      v31 = *(sub_2EF0(&qword_315CD0, &qword_266E00) + 48);
      *v30 = &type metadata for ToolbarActionMenuItemIcon;
      sub_264D60();
      sub_264BF0();
      (*(*(v27 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v27);
      swift_willThrow();
      (*(v58 + 8))(v28, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = v12;
      v49 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          LOBYTE(v59) = 1;
          sub_AD6BC();
          v24 = v7;
          sub_264D50();
          v25 = v58;
          v26 = v56;
          v35 = v51;
          v36 = sub_264DC0();
          v41 = v40;
          v42 = v36;
          (*(v53 + 8))(v24, v35);
          (*(v25 + 8))(v16, v50);
          swift_unknownObjectRelease();
        }

        else
        {
          LOBYTE(v59) = 2;
          sub_AD614();
          sub_264D50();
          v34 = v58;
          v26 = v56;
          sub_AD668();
          v39 = v52;
          sub_264DF0();
          (*(v55 + 8))(v20, v39);
          (*(v34 + 8))(v16, v50);
          swift_unknownObjectRelease();
          v42 = v59;
          v41 = v60;
          v43 = v61;
          v67[0] = *v62;
          *(v67 + 15) = *&v62[15];
        }
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_AD710();
        v33 = v11;
        sub_264D50();
        LOBYTE(v59) = 0;
        v37 = v8;
        v38 = sub_264DC0();
        v45 = v44;
        v46 = v38;
        LOBYTE(v59) = 1;
        v47 = sub_264DD0();
        (*(v54 + 8))(v33, v37);
        (*(v58 + 8))(v16, v50);
        swift_unknownObjectRelease();
        v43 = v47 & 1;
        v42 = v46;
        v26 = v56;
        v41 = v45;
      }

      *v26 = v42;
      *(v26 + 8) = v41;
      *(v26 + 16) = v43;
      *(v26 + 17) = v67[0];
      *(v26 + 32) = *(v67 + 15);
      *(v26 + 40) = v49;
    }
  }

  return sub_3080(v68);
}

uint64_t ToolbarItemType.id.getter()
{
  v1 = type metadata accessor for ToolbarItemType(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA1C(v0, v4, type metadata accessor for ToolbarItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = 0xD000000000000014;
        sub_AD560(v4, type metadata accessor for ToolbarItemType);
      }

      else
      {
        v6 = 0x69576E6F74747562;
        v10 = *(v4 + 1);

        v11 = sub_2EF0(&qword_31B7C8, &qword_270F70);
        v12 = v11[12];
        v13 = v11[16];
        v14 = *&v4[v11[20]];

        sub_3080(&v4[v13]);
        sub_8E80(&v4[v12], &qword_316960, &unk_2689F0);
      }
    }

    else
    {
      sub_AD560(v4, type metadata accessor for ToolbarItemType);
      return 0x4D747865746E6F63;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_AD560(v4, type metadata accessor for ToolbarItemType);
      return 0x70756B636F6CLL;
    }

    else
    {
      sub_3080(v4 + 1);
      return 0xD000000000000016;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = 0x69576E6F74747562;
    v7 = *(v4 + 1);

    v8 = sub_2EF0(&qword_31B7C0, &unk_270F60);
    v9 = *(v8 + 48);
    sub_3080(&v4[*(v8 + 64)]);
    sub_8E80(&v4[v9], &qword_316960, &unk_2689F0);
  }

  else
  {
    v15 = sub_2EF0(&qword_31B7B8, &unk_277F10);
    sub_3080(&v4[*(v15 + 48)]);
    v16 = sub_2610B0();
    (*(*(v16 - 8) + 8))(v4, v16);
    return 0x75426D6574737973;
  }

  return v6;
}

uint64_t sub_AD428@<X0>(uint64_t *a1@<X8>)
{
  result = ToolbarItemType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_AD450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_AD4B8()
{
  result = qword_31B758;
  if (!qword_31B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B758);
  }

  return result;
}

unint64_t sub_AD50C()
{
  result = qword_31B760;
  if (!qword_31B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B760);
  }

  return result;
}

uint64_t sub_AD560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_AD5C0()
{
  result = qword_31B790;
  if (!qword_31B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B790);
  }

  return result;
}

unint64_t sub_AD614()
{
  result = qword_31B798;
  if (!qword_31B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B798);
  }

  return result;
}

unint64_t sub_AD668()
{
  result = qword_31B7A0;
  if (!qword_31B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7A0);
  }

  return result;
}

unint64_t sub_AD6BC()
{
  result = qword_31B7A8;
  if (!qword_31B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7A8);
  }

  return result;
}

unint64_t sub_AD710()
{
  result = qword_31B7B0;
  if (!qword_31B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B7B0);
  }

  return result;
}

unint64_t sub_AD784(uint64_t a1)
{
  result = sub_AD50C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_AD7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ToolbarActionMenu(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return sub_7BE28(v4);
}

uint64_t sub_AD7FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ToolbarActionMenu(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return sub_7BE28(v4);
}

uint64_t *sub_AD850(uint64_t *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for ToolbarActionMenuItem(0) + 32));

  return sub_AF618(v3, a1);
}

uint64_t sub_AD8AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_316208, &qword_268BD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_AD97C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_316208, &qword_268BD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_ADA2C()
{
  sub_ADB38(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_ADB38(319, &qword_31B838, type metadata accessor for ToolbarActionMenuItem, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_ADB9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_ADB38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_ADB9C()
{
  if (!qword_31B840)
  {
    sub_2F9C(&unk_31B848, &qword_271148);
    v0 = type metadata accessor for NotDecoded();
    if (!v1)
    {
      atomic_store(v0, &qword_31B840);
    }
  }
}

uint64_t sub_ADC14(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_260BD0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_ADDA0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_260BD0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ToolbarActionMenuItemButtonType(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_ADF18()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_ADB38(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_AE020();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ToolbarActionMenuItemButtonType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_AE020()
{
  if (!qword_31B8F0)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31B8F0);
    }
  }
}

void sub_AE070()
{
  sub_AE0F8();
  if (v0 <= 0x3F)
  {
    sub_AE128();
    if (v1 <= 0x3F)
    {
      sub_AE170();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_AE0F8()
{
  result = qword_31B9B8;
  if (!qword_31B9B8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_31B9B8);
  }

  return result;
}

void sub_AE128()
{
  if (!qword_31B9C0)
  {
    v0 = sub_260060();
    if (!v1)
    {
      atomic_store(v0, &qword_31B9C0);
    }
  }
}

void sub_AE170()
{
  if (!qword_31B9C8)
  {
    sub_2F9C(&qword_316208, &qword_268BD0);
    sub_2F9C(&qword_316DD0, &qword_2692C0);
    sub_2F9C(&qword_316D40, &unk_268FC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31B9C8);
    }
  }
}

uint64_t sub_AE22C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AE268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_AE2B4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

void sub_AE2F4()
{
  sub_AE3FC(319, &qword_31BA78);
  if (v0 <= 0x3F)
  {
    sub_AE3FC(319, &qword_31BA88);
    if (v1 <= 0x3F)
    {
      sub_AE474(319);
      if (v2 <= 0x3F)
      {
        sub_AE5C0();
        if (v3 <= 0x3F)
        {
          sub_AE654();
          if (v4 <= 0x3F)
          {
            sub_AE6D4(319);
            if (v5 <= 0x3F)
            {
              sub_AE7DC();
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

void sub_AE3FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2F9C(&qword_31BA80, &unk_277F20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_AE474(uint64_t a1)
{
  if (!qword_31BA90)
  {
    __chkstk_darwin(a1);
    sub_2F9C(&qword_316960, &unk_2689F0);
    sub_2F9C(&qword_316A30, &qword_2697B0);
    sub_2F9C(&qword_31BA98, &qword_271268);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31BA90);
    }
  }
}

void sub_AE5C0()
{
  if (!qword_31BAA0)
  {
    sub_2F9C(&qword_316960, &unk_2689F0);
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_31BAA0);
    }
  }
}

void sub_AE654()
{
  if (!qword_31BAA8)
  {
    sub_2610B0();
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31BAA8);
    }
  }
}

void sub_AE6D4(uint64_t a1)
{
  if (!qword_31BAB0)
  {
    __chkstk_darwin(a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_31BAB0);
    }
  }
}

void sub_AE7DC()
{
  if (!qword_31BAB8)
  {
    sub_2F9C(&qword_316A30, &qword_2697B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31BAB8);
    }
  }
}

unint64_t sub_AE858()
{
  result = qword_31BAE8;
  if (!qword_31BAE8)
  {
    sub_2F9C(&qword_31BAF0, &qword_271290);
    sub_AAD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BAE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImage.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

uint64_t storeEnumTagSinglePayload for SymbolImage.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
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
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_AEA80()
{
  result = qword_31BAF8;
  if (!qword_31BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BAF8);
  }

  return result;
}

unint64_t sub_AEAD8()
{
  result = qword_31BB00;
  if (!qword_31BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB00);
  }

  return result;
}

unint64_t sub_AEB30()
{
  result = qword_31BB08;
  if (!qword_31BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB08);
  }

  return result;
}

unint64_t sub_AEB88()
{
  result = qword_31BB10;
  if (!qword_31BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB10);
  }

  return result;
}

unint64_t sub_AEBE0()
{
  result = qword_31BB18;
  if (!qword_31BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB18);
  }

  return result;
}

unint64_t sub_AEC38()
{
  result = qword_31BB20;
  if (!qword_31BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB20);
  }

  return result;
}

unint64_t sub_AEC90()
{
  result = qword_31BB28;
  if (!qword_31BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB28);
  }

  return result;
}

unint64_t sub_AECE8()
{
  result = qword_31BB30;
  if (!qword_31BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB30);
  }

  return result;
}

unint64_t sub_AED40()
{
  result = qword_31BB38;
  if (!qword_31BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB38);
  }

  return result;
}

unint64_t sub_AED98()
{
  result = qword_31BB40;
  if (!qword_31BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB40);
  }

  return result;
}

unint64_t sub_AEDF0()
{
  result = qword_31BB48;
  if (!qword_31BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB48);
  }

  return result;
}

unint64_t sub_AEE48()
{
  result = qword_31BB50;
  if (!qword_31BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB50);
  }

  return result;
}

unint64_t sub_AEEA0()
{
  result = qword_31BB58;
  if (!qword_31BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB58);
  }

  return result;
}

unint64_t sub_AEEF8()
{
  result = qword_31BB60;
  if (!qword_31BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB60);
  }

  return result;
}

unint64_t sub_AEF50()
{
  result = qword_31BB68;
  if (!qword_31BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB68);
  }

  return result;
}

unint64_t sub_AEFA8()
{
  result = qword_31BB70;
  if (!qword_31BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB70);
  }

  return result;
}

unint64_t sub_AF000()
{
  result = qword_31BB78;
  if (!qword_31BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB78);
  }

  return result;
}

unint64_t sub_AF058()
{
  result = qword_31BB80;
  if (!qword_31BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31BB80);
  }

  return result;
}

uint64_t sub_AF0AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000002918A0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000002918C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_AF25C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79546E6F74747562 && a2 == 0xEA00000000006570)
  {

    return 7;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_AF4F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65766F4374616C66 && a2 == 0xE900000000000072)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t *sub_AF618(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_AF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[1] = a11;
  v22[2] = a10;
  v14 = sub_263FA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v19 = a6;
  }

  else
  {
    v19 = a5;
  }

  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_264210();
  (*(v15 + 8))(v18, v14);
  return v20;
}

unsigned __int8 *Color.init(hexString:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_262F00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_264510();
  if (result != &dword_4 + 2)
  {
    result = sub_264510();
    if (result != &dword_8)
    {
      goto LABEL_89;
    }
  }

  v10 = HIBYTE(a2) & 0xF;
  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_89;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v14 = sub_B00D0(a1, a2, 16);
    v34 = v33;

    if (v34)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_264C20();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          if (result)
          {
            v14 = 0;
            v22 = result + 1;
            while (1)
            {
              v23 = *v22;
              v24 = v23 - 48;
              if ((v23 - 48) >= 0xA)
              {
                if ((v23 - 65) < 6)
                {
                  v24 = v23 - 55;
                }

                else
                {
                  if ((v23 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v24 = v23 - 87;
                }
              }

              if (v14 >> 60)
              {
                goto LABEL_87;
              }

              v14 = 16 * v14 + v24;
              ++v22;
              if (!--v10)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_87;
      }

      goto LABEL_111;
    }

    if (v13 != 45)
    {
      if (v11)
      {
        if (result)
        {
          v14 = 0;
          while (1)
          {
            v28 = *result;
            v29 = v28 - 48;
            if ((v28 - 48) >= 0xA)
            {
              if ((v28 - 65) < 6)
              {
                v29 = v28 - 55;
              }

              else
              {
                if ((v28 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v29 = v28 - 87;
              }
            }

            if (v14 >> 60)
            {
              goto LABEL_87;
            }

            v14 = 16 * v14 + v29;
            ++result;
            if (!--v11)
            {
              LOBYTE(v10) = 0;
              goto LABEL_88;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_87:
      v14 = 0;
      LOBYTE(v10) = 1;
LABEL_88:
      v43 = v10;
      if (v10)
      {
LABEL_89:

        return 0;
      }

LABEL_91:
      v35 = sub_264510();

      v36 = v14 >> 8;
      if (v35 == 8)
      {
        v37 = v14 / 255.0;
      }

      else
      {
        v37 = 1.0;
      }

      if (v35 != 8)
      {
        LODWORD(v36) = v14;
      }

      if (BYTE2(v36) / 255.0 <= 1.0 && BYTE1(v36) / 255.0 <= 1.0 && v36 / 255.0 <= 1.0 && v37 <= 1.0)
      {
        (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
        return sub_263060();
      }

      return 0;
    }

    if (v11 >= 1)
    {
      v10 = v11 - 1;
      if (v11 != 1)
      {
        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            v17 = v16 - 48;
            if ((v16 - 48) >= 0xA)
            {
              if ((v16 - 65) < 6)
              {
                v17 = v16 - 55;
              }

              else
              {
                if ((v16 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v17 = v16 - 87;
              }
            }

            if (v14 >> 60)
            {
              goto LABEL_87;
            }

            v18 = 16 * v14 >= v17;
            v14 = 16 * v14 - v17;
            if (!v18)
            {
              goto LABEL_87;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_76:
        v14 = 0;
        LOBYTE(v10) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v42[0] = a1;
  v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v10)
      {
        v14 = 0;
        v30 = v42;
        while (1)
        {
          v31 = *v30;
          v32 = v31 - 48;
          if ((v31 - 48) >= 0xA)
          {
            if ((v31 - 65) < 6)
            {
              v32 = v31 - 55;
            }

            else
            {
              if ((v31 - 97) > 5)
              {
                goto LABEL_87;
              }

              v32 = v31 - 87;
            }
          }

          if (v14 >> 60)
          {
            break;
          }

          v14 = 16 * v14 + v32;
          ++v30;
          if (!--v10)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v10)
    {
      if (--v10)
      {
        v14 = 0;
        v19 = v42 + 1;
        while (1)
        {
          v20 = *v19;
          v21 = v20 - 48;
          if ((v20 - 48) >= 0xA)
          {
            if ((v20 - 65) < 6)
            {
              v21 = v20 - 55;
            }

            else
            {
              if ((v20 - 97) > 5)
              {
                goto LABEL_87;
              }

              v21 = v20 - 87;
            }
          }

          if (v14 >> 60)
          {
            break;
          }

          v18 = 16 * v14 >= v21;
          v14 = 16 * v14 - v21;
          if (!v18)
          {
            break;
          }

          ++v19;
          if (!--v10)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_110;
  }

  if (v10)
  {
    if (--v10)
    {
      v14 = 0;
      v25 = v42 + 1;
      while (1)
      {
        v26 = *v25;
        v27 = v26 - 48;
        if ((v26 - 48) >= 0xA)
        {
          if ((v26 - 65) < 6)
          {
            v27 = v26 - 55;
          }

          else
          {
            if ((v26 - 97) > 5)
            {
              goto LABEL_87;
            }

            v27 = v26 - 87;
          }
        }

        if (v14 >> 60)
        {
          break;
        }

        v14 = 16 * v14 + v27;
        ++v25;
        if (!--v10)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_112:
  __break(1u);
  return result;
}

BOOL Color.isDarkBackground.getter()
{
  v1.f64[1] = Color.rgbaComponents.getter();
  v2 = vmulq_f64(v1, vdupq_n_s64(0x406FE00000000000uLL));
  v3 = vmulq_f64(v2, vmulq_f64(v2, xmmword_26BA40));
  return sqrt(v3.f64[0] + v3.f64[1] + v0 * 255.0 * (v0 * 255.0 * 0.587)) < 205.0;
}

double Color.rgbaComponents.getter()
{
  v5 = 0;
  v6 = 0.0;
  v3 = 0;
  v4 = 0;
  sub_B0654();

  v0 = sub_2649F0();
  v1 = [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];

  result = 0.0;
  if (v1)
  {
    return v6;
  }

  return result;
}

double Color.luminance.getter()
{
  v1.f64[1] = Color.rgbaComponents.getter();
  v2 = vmulq_f64(v1, vdupq_n_s64(0x406FE00000000000uLL));
  v3 = vmulq_f64(v2, vmulq_f64(v2, xmmword_26BA40));
  return sqrt(v3.f64[0] + v3.f64[1] + v0 * 255.0 * (v0 * 255.0 * 0.587));
}

unsigned __int8 *sub_B00D0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2645C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F304();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_264C20();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_B0654()
{
  result = qword_31BBA0;
  if (!qword_31BBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31BBA0);
  }

  return result;
}

uint64_t VerticalMasonryCoverGridViewModel.init(assets:gridWidth:gridStyle:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_2623D0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_262430();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v52);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(a1 + 16);
  if (v16 >= 0x16E)
  {
    sub_C89EC(a1, a1 + 32, 0, 0x2DBuLL);
    v18 = v17;

    v16 = *(v18 + 16);
    a1 = v18;
  }

  __dst[0] = v15;
  sub_BDC14(v16, __dst);
  v20 = v19;
  v21 = sub_BDCD8(a1, v19, a4);

  v22 = sub_BDE88(v21, v20);

  v24 = sub_BD99C(v23);

  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v53 = v25;
    v48 = v22;
    v49 = v15;
    v50 = a3;
    v67 = _swiftEmptyArrayStorage;
    sub_2DB04(0, v26, 0);
    v27 = v67;
    v51 = v11 + 32;
    v28 = v26 - 1;
    for (i = 32; ; i += 128)
    {
      v30 = *(v53 + i);
      v31 = *(v53 + i + 16);
      v32 = *(v53 + i + 48);
      v60 = *(v53 + i + 32);
      v61 = v32;
      v58 = v30;
      v59 = v31;
      v33 = *(v53 + i + 64);
      v34 = *(v53 + i + 80);
      v35 = *(v53 + i + 112);
      v64 = *(v53 + i + 96);
      v65 = v35;
      v62 = v33;
      v63 = v34;
      memmove(__dst, (v53 + i), 0x80uLL);
      v36 = sub_2F8B8(__dst);
      v37 = sub_2F950(__dst);
      if (!v36)
      {
        if (*(v37 + 64))
        {
          v38 = *(v37 + 56);
          sub_5757C(&v58, v57);
        }

        else
        {
          sub_5757C(&v58, v57);
        }
      }

      sub_261DB0();
      sub_2623E0();
      v57[4] = v62;
      v57[5] = v63;
      v57[6] = v64;
      v57[7] = v65;
      v57[0] = v58;
      v57[1] = v59;
      v57[2] = v60;
      v57[3] = v61;
      v39 = sub_2F8B8(v57);
      v40 = sub_2F950(v57);
      if (v39 || !*(v40 + 64))
      {
        v43 = 0;
        v44 = 0xE000000000000000;
      }

      else
      {
        v41 = v40;
        v42 = *(v40 + 80);
        v43 = *(v41 + 72);
      }

      v55 = v43;
      v56 = v44;
      sub_10A84();
      sub_2628F0();
      sub_262440();
      sub_2F8C4(&v58);
      v67 = v27;
      v46 = v27[2];
      v45 = v27[3];
      if (v46 >= v45 >> 1)
      {
        sub_2DB04(v45 > 1, v46 + 1, 1);
        v27 = v67;
      }

      v27[2] = v46 + 1;
      (*(v11 + 32))(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v46, v14, v52);
      if (!v28)
      {
        break;
      }

      --v28;
    }

    a3 = v50;
    LOBYTE(v15) = v49;
    v22 = v48;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  *a3 = v22;
  *(a3 + 8) = v27;
  *(a3 + 16) = v15;
  return result;
}

uint64_t sub_B0B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v81 = sub_260290();
  v83 = *(v81 - 8);
  v3 = *(v83 + 64);
  v4 = __chkstk_darwin(v81);
  v80 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v59 - v6;
  v73 = sub_264410();
  v82 = *(v73 - 8);
  v7 = *(v82 + 64);
  v8 = __chkstk_darwin(v73);
  v78 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v59 - v10;
  v67 = sub_262370();
  v11 = *(v67 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2EF0(&qword_31BE88, &qword_271F90);
  v15 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v17 = &v59 - v16;
  v18 = sub_2EF0(&qword_31BE90, &qword_271F98);
  v19 = *(v18 - 8);
  v75 = v18;
  v76 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v65 = &v59 - v21;
  v74 = sub_2EF0(&qword_31BE98, &qword_271FA0);
  v22 = *(*(v74 - 8) + 64);
  v23 = __chkstk_darwin(v74);
  v70 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v71 = &v59 - v25;
  v27 = *v2;
  v26 = v2[1];
  v28 = *(v2 + 16);
  *v17 = sub_261D10();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v29 = *(sub_2EF0(&qword_31BEA0, &unk_271FA8) + 44);
  v30 = *(v27 + 16);
  v86 = 0;
  v87 = v30;
  swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v26;
  v68 = v26;
  *(v31 + 32) = v28;

  sub_2EF0(&qword_31BEA8, &qword_271FD0);
  sub_2EF0(&qword_31BEB0, &qword_271FD8);
  sub_C092C();
  sub_C0A0C();
  sub_2633B0();
  sub_262350();
  v59 = sub_8E38(&qword_31BEE0, &qword_31BE88, &qword_271F90);
  sub_262C70();
  (*(v11 + 8))(v14, v67);
  sub_8E80(v17, &qword_31BE88, &qword_271F90);
  v32 = v69;
  sub_2643A0();
  v33 = v72;
  sub_260260();
  v34 = v82;
  v35 = *(v82 + 16);
  v66 = v82 + 16;
  v67 = v35;
  v36 = v73;
  v35(v78, v32, v73);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = ObjCClassFromMetadata;
  v63 = objc_opt_self();
  v38 = [v63 bundleForClass:ObjCClassFromMetadata];
  v39 = v83;
  v62 = *(v83 + 16);
  v40 = v81;
  v62(v80, v33, v81);
  v41 = sub_264490();
  v43 = v42;
  v44 = *(v39 + 8);
  v83 = v39 + 8;
  v61 = v44;
  v44(v33, v40);
  v45 = *(v34 + 8);
  v82 = v34 + 8;
  v60 = v45;
  v46 = v32;
  v45(v32, v36);
  v86 = v41;
  v87 = v43;
  v84 = v79;
  v85 = v59;
  swift_getOpaqueTypeConformance2();
  v79 = sub_10A84();
  v47 = v70;
  v48 = v75;
  v49 = v65;
  sub_262C00();

  (*(v76 + 8))(v49, v48);
  v50 = v71;
  sub_2616E0();
  sub_8E80(v47, &qword_31BE98, &qword_271FA0);
  sub_2643A0();
  v51 = v33;
  sub_260260();
  v52 = v36;
  v67(v78, v46, v36);
  v53 = [v63 bundleForClass:v64];
  v54 = v81;
  v62(v80, v33, v81);
  v55 = sub_264490();
  v57 = v56;
  v61(v51, v54);
  v60(v46, v52);
  v86 = v55;
  v87 = v57;
  sub_2616F0();

  return sub_8E80(v50, &qword_31BE98, &qword_271FA0);
}

uint64_t sub_B138C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_31BED8, &qword_271FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = *a1;
  *v9 = sub_261E50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  result = sub_2EF0(&qword_31BEE8, &qword_271FE8);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(a2 + 16))
  {
    v12 = *(result + 44);
    *&v17[0] = *(a2 + 8 * v10 + 32);
    swift_getKeyPath();

    sub_2EF0(&qword_31BEF0, &unk_289190);
    sub_2EF0(&qword_31BEF8, &qword_272020);
    sub_8E38(&qword_31BF00, &qword_31BEF0, &unk_289190);
    sub_C0AC8();
    sub_2633B0();
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_261830();
    sub_22148(v9, a3, &qword_31BED8, &qword_271FE0);
    result = sub_2EF0(&qword_31BEB0, &qword_271FD8);
    v13 = (a3 + *(result + 36));
    v14 = v17[5];
    v13[4] = v17[4];
    v13[5] = v14;
    v13[6] = v17[6];
    v15 = v17[1];
    *v13 = v17[0];
    v13[1] = v15;
    v16 = v17[3];
    v13[2] = v17[2];
    v13[3] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_B15D4@<X0>(_OWORD *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = sub_2F8B8(v13);
  v8 = sub_2F950(v13);
  if (v7)
  {
    v9 = v7 == 1;
    if (v7 == 1)
    {
      v10 = 0xD00000000000001BLL;
    }

    else
    {
      v10 = 0xD000000000000016;
    }

    if (v9)
    {
      result = 0x8000000000291580;
    }

    else
    {
      result = 0x8000000000291560;
    }
  }

  else
  {
    v10 = *v8;
    v12 = v8[1];
  }

  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_B1684@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = sub_261E20();
  v61 = *(v63 - 8);
  v3 = *(v61 + 64);
  __chkstk_darwin(v63);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoverView();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2EF0(&qword_31BF28, &qword_272030);
  v11 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v13 = &v59 - v12;
  v14 = sub_2EF0(&qword_31BF18, &qword_272028);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = a1[5];
  v69 = a1[4];
  v70 = v18;
  v19 = a1[7];
  v71 = a1[6];
  v72 = v19;
  v20 = a1[1];
  v65 = *a1;
  v66 = v20;
  v21 = a1[3];
  v67 = a1[2];
  v68 = v21;
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  *(v10 + 6) = swift_getKeyPath();
  v10[56] = 0;
  v22 = v7[8];
  *&v10[v22] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v23 = v7[9];
  *&v10[v23] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v24 = &v10[v7[10]];
  sub_5757C(&v65, v73);
  type metadata accessor for ProfileRestrictions();
  sub_C26FC(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v24 = sub_261900();
  v24[1] = v25;
  v26 = &v10[v7[11]];
  v64 = 1;
  sub_2631D0();
  v27 = *(&v73[0] + 1);
  *v26 = v73[0];
  *(v26 + 1) = v27;
  v28 = &v10[v7[12]];
  v29 = v70;
  v30 = v69;
  v31 = v70;
  *(v28 + 4) = v69;
  *(v28 + 5) = v29;
  v32 = v72;
  v33 = v71;
  v34 = v72;
  *(v28 + 6) = v71;
  *(v28 + 7) = v32;
  v35 = v66;
  v36 = v65;
  v37 = v66;
  *v28 = v65;
  *(v28 + 1) = v35;
  v38 = v68;
  v39 = v67;
  v40 = v68;
  *(v28 + 2) = v67;
  *(v28 + 3) = v38;
  v41 = v7[13];
  v73[4] = v30;
  v73[5] = v31;
  v73[6] = v33;
  v73[7] = v34;
  v73[2] = v39;
  v73[3] = v40;
  v10[v41] = 0;
  v73[0] = v36;
  v73[1] = v37;
  v42 = sub_2F8B8(v73);
  v43 = sub_2F950(v73);
  if (v42)
  {
    if (v42 == 1)
    {
      v44 = 0x3FF0000000000000;
    }

    else
    {
      v44 = 0x3FE4834834834834;
    }
  }

  else
  {
    v44 = *(v43 + 16);
  }

  v45 = v63;
  v46 = v61;
  sub_BE320(v10, v13, type metadata accessor for CoverView);
  v47 = &v13[*(v60 + 36)];
  *v47 = v44;
  *(v47 + 4) = 0;
  v48 = sub_262500();
  sub_2610C0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_22148(v13, v17, &qword_31BF28, &qword_272030);
  v57 = &v17[*(v14 + 36)];
  *v57 = v48;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  sub_261E10();
  sub_C0B84();
  sub_262D40();
  (*(v46 + 8))(v5, v45);
  return sub_8E80(v17, &qword_31BF18, &qword_272028);
}

void SharableAssetLayoutStyle.size.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = *v0;
  }
}

uint64_t SharableAssetViewModel.init(assets:localizedYear:layoutStyle:lowAssetCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a3;
  v10 = *a4;
  v11 = *(a4 + 16);
  v52 = v11;
  v31 = v10;
  if (a5)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v51 = _swiftEmptyArrayStorage;
      sub_2DAC4(0, v12, 0);
      v13 = _swiftEmptyArrayStorage;
      v14 = a1 + 32;
      for (i = v12 - 1; ; --i)
      {
        sub_30CC(v14, &v32);
        sub_30CC(&v32, v40);
        CoverViewModel.CoverImageInfo.init(assetInfo:)(v40, v41);
        sub_3080(&v32);
        v47 = v41[4];
        v48 = v41[5];
        v49 = v41[6];
        v43 = v41[0];
        v44 = v41[1];
        v45 = v41[2];
        v46 = v41[3];
        *&v50 = v42;
        *(&v50 + 1) = 0x4072C00000000000;
        sub_230A8(&v43);
        v51 = v13;
        v17 = v13[2];
        v16 = v13[3];
        if (v17 >= v16 >> 1)
        {
          sub_2DAC4((v16 > 1), v17 + 1, 1);
          v13 = v51;
        }

        v36 = v47;
        v37 = v48;
        v38 = v49;
        v39 = v50;
        v34 = v45;
        v35 = v46;
        v32 = v43;
        v18 = v43;
        v33 = v44;
        v13[2] = v17 + 1;
        v19 = &v13[16 * v17];
        v20 = v33;
        v21 = v35;
        v19[4] = v34;
        v19[5] = v21;
        v19[3] = v20;
        v22 = v36;
        v23 = v37;
        v24 = v39;
        v19[8] = v38;
        v19[9] = v24;
        v19[6] = v22;
        v19[7] = v23;
        v19[2] = v18;
        if (!i)
        {
          break;
        }

        v14 += 40;
      }

      v27 = 0;
      v28 = 0;
      v26 = v31;
      v6 = a3;
    }

    else
    {

      v27 = 0;
      v28 = 0;
      v13 = _swiftEmptyArrayStorage;
      v26 = v31;
    }
  }

  else
  {
    LOBYTE(v32) = v11;
    result = VerticalMasonryCoverGridViewModel.init(assets:gridWidth:gridStyle:)(a1, &v32, &v43, *&v10 + -16.0);
    v26 = v31;
    v27 = *(&v43 + 1);
    v13 = v43;
    v28 = v44 | 0x80;
  }

  v29 = v52;
  *a6 = a2;
  *(a6 + 8) = v6;
  *(a6 + 16) = v13;
  *(a6 + 24) = v27;
  *(a6 + 32) = v28;
  *(a6 + 40) = v26;
  *(a6 + 56) = v29;
  return result;
}

uint64_t sub_B1D44()
{
  v27 = sub_260290();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v26 = sub_264410();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = sub_2643F0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = *v0;
  v18 = v0[1];
  sub_2643E0();
  v28._countAndFlagsBits = 0x20794D2A2ALL;
  v28._object = 0xE500000000000000;
  sub_2643D0(v28);
  v29._countAndFlagsBits = v17;
  v29._object = v18;
  sub_2643C0(v29);
  v30._object = 0x8000000000291BA0;
  v30._countAndFlagsBits = 0xD000000000000011;
  sub_2643D0(v30);
  sub_264400();
  sub_260260();
  v19 = v26;
  (*(v8 + 16))(v12, v14, v26);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = v27;
  (*(v1 + 16))(v5, v7, v27);
  v23 = sub_264490();
  (*(v1 + 8))(v7, v22);
  (*(v8 + 8))(v14, v19);
  return v23;
}

__n128 ShareableAsset.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShareableAsset(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

uint64_t sub_B210C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ShareableAsset(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_B22F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ShareableAsset(0);
  sub_8198(v1 + *(v12 + 24), v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v11, a1, type metadata accessor for SizeConstants.Spacing);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ShareableAsset.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ShareableAsset(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_BE2A0(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareableAsset);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_BE320(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ShareableAsset);
  *a1 = sub_BE264;
  a1[1] = v7;
  return result;
}

uint64_t sub_B2600(uint64_t a1, uint64_t a2)
{
  v3 = sub_261690();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_31BF80, &qword_2721D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  sub_B2818(a2, &v18 - v10);
  KeyPath = swift_getKeyPath();
  v13 = &v11[*(v8 + 36)];
  v14 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = sub_261180();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  (*(v4 + 104))(v7, enum case for DynamicTypeSize.large(_:), v3);
  sub_C274C();
  sub_262B60();
  (*(v4 + 8))(v7, v3);
  return sub_8E80(v11, &qword_31BF80, &qword_2721D8);
}

uint64_t sub_B2818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_2EF0(&qword_31BFC8, &qword_272228);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v27 - v5;
  v7 = sub_2EF0(&qword_31BFD0, &qword_272230);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_31BFB8, &qword_272220);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v27 - v17;
  v19 = *(a1 + 56);
  sub_B22F8(v14);
  sub_C2968(v14, type metadata accessor for SizeConstants.Spacing);
  v20 = sub_261E50();
  if (v19)
  {
    *v6 = v20;
    *(v6 + 1) = 0x4028000000000000;
    v6[16] = 0;
    v21 = sub_2EF0(&qword_31BFD8, &qword_272238);
    sub_B36D8(a1, &v6[*(v21 + 44)]);
    sub_8198(v6, v10, &qword_31BFC8, &qword_272228);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228);
    sub_261F80();
    v22 = v6;
    v23 = &qword_31BFC8;
    v24 = &qword_272228;
  }

  else
  {
    *v18 = v20;
    *(v18 + 1) = 0x4030000000000000;
    v18[16] = 0;
    v25 = sub_2EF0(&qword_31BFE0, &qword_272240);
    sub_B2BA0(a1, &v18[*(v25 + 44)]);
    sub_8198(v18, v10, &qword_31BFB8, &qword_272220);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31BFB0, &qword_31BFB8, &qword_272220);
    sub_8E38(&qword_31BFC0, &qword_31BFC8, &qword_272228);
    sub_261F80();
    v22 = v18;
    v23 = &qword_31BFB8;
    v24 = &qword_272220;
  }

  return sub_8E80(v22, v23, v24);
}

uint64_t sub_B2BA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31BFE8, &qword_272248);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v60 - v8;
  v9 = type metadata accessor for ColorConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TextLockup();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v60 - v18);
  v20 = *(a1 + 32);
  v67 = (~v20 >> 7) & 1;
  v68 = v20 < 0;
  sub_B3190(v81);
  v21 = a1[1];
  v85 = *a1;
  v86 = v21;
  v87[0] = a1[2];
  *(v87 + 9) = *(a1 + 41);
  v22 = sub_B1D44();
  v62 = v23;
  v63 = v22;
  sub_B210C(v12);
  v24 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_C2968(v12, type metadata accessor for ColorConstants);
  v61 = v24 | 0x8000000000000000;
  v25 = v14[15];
  v26 = sub_2625C0();
  (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
  v60 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v28 = v27;
  v29 = sub_261E60();
  v30 = v14[19];
  v31 = enum case for DynamicTypeSize.accessibility2(_:);
  v32 = sub_261690();
  (*(*(v32 - 8) + 104))(v19 + v30, v31, v32);
  *v19 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v33 = v14[7];
  *(v19 + v33) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v34 = v19 + v14[8];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v19 + v14[9];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v19 + v14[10];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  *(v19 + v14[11]) = 1;
  v37 = (v19 + v14[12]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v19 + v14[13]);
  v39 = v62;
  *v38 = v63;
  v38[1] = v39;
  v40 = v60;
  v38[2] = v61;
  v41 = (v19 + v14[14]);
  *v41 = 0;
  v41[1] = 0;
  *(v19 + v14[16]) = v29;
  v42 = (v19 + v14[17]);
  *v42 = v40;
  v42[1] = v28;
  *(v19 + v14[18]) = 1;
  v43 = v65;
  sub_B3510(v65);
  v77 = v81[8];
  v78 = v81[9];
  v79 = v81[10];
  v80 = v82;
  v73 = v81[4];
  v74 = v81[5];
  v75 = v81[6];
  v76 = v81[7];
  v69 = v81[0];
  v70 = v81[1];
  v71 = v81[2];
  v72 = v81[3];
  v44 = v64;
  sub_BE2A0(v19, v64, type metadata accessor for TextLockup);
  v45 = v43;
  v46 = v66;
  sub_8198(v43, v66, &qword_31BFE8, &qword_272248);
  v47 = v78;
  v83[8] = v77;
  v83[9] = v78;
  v48 = v79;
  v83[10] = v79;
  v49 = v73;
  v50 = v74;
  v83[4] = v73;
  v83[5] = v74;
  v51 = v75;
  v52 = v76;
  v83[6] = v75;
  v83[7] = v76;
  v53 = v69;
  v54 = v70;
  v83[0] = v69;
  v83[1] = v70;
  v55 = v71;
  v56 = v72;
  v83[2] = v71;
  v83[3] = v72;
  *(a2 + 144) = v77;
  *(a2 + 160) = v47;
  *(a2 + 176) = v48;
  *(a2 + 80) = v49;
  *(a2 + 96) = v50;
  *(a2 + 112) = v51;
  *(a2 + 128) = v52;
  *(a2 + 16) = v53;
  *(a2 + 32) = v54;
  *a2 = 0;
  v57 = v68;
  *(a2 + 8) = v67;
  *(a2 + 9) = v57;
  v84 = v80;
  *(a2 + 192) = v80;
  *(a2 + 48) = v55;
  *(a2 + 64) = v56;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v58 = sub_2EF0(&qword_31BFF0, &qword_272250);
  sub_BE2A0(v44, a2 + *(v58 + 80), type metadata accessor for TextLockup);
  sub_8198(v46, a2 + *(v58 + 96), &qword_31BFE8, &qword_272248);
  sub_8198(v83, &v85, &qword_31BFF8, &qword_272258);
  sub_8E80(v45, &qword_31BFE8, &qword_272248);
  sub_C2968(v19, type metadata accessor for TextLockup);
  sub_8E80(v46, &qword_31BFE8, &qword_272248);
  sub_C2968(v44, type metadata accessor for TextLockup);
  v87[6] = v77;
  v87[7] = v78;
  v87[8] = v79;
  v88 = v80;
  v87[2] = v73;
  v87[3] = v74;
  v87[4] = v75;
  v87[5] = v76;
  v85 = v69;
  v86 = v70;
  v87[0] = v71;
  v87[1] = v72;
  return sub_8E80(&v85, &qword_31BFF8, &qword_272258);
}

double sub_B3190@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v6 < 0)
  {
    v16 = *(v1 + 16);

    sub_263550();
    sub_261830();
    *&v52[55] = v57;
    *&v52[71] = v58;
    *&v52[87] = v59;
    *&v52[103] = v60;
    *&v52[7] = v54;
    *&v52[23] = v55;
    *&v52[39] = v56;
    v17 = sub_262510();
    *(v2 + 56);
    sub_2610C0();
    v43 = *&v52[64];
    v44 = *&v52[80];
    *v45 = *&v52[96];
    *&v42[9] = *v52;
    *&v42[25] = *&v52[16];
    *&v42[41] = *&v52[32];
    v53 = 0;
    v41 = v4;
    *v42 = v5;
    v42[8] = v6 & 1;
    *&v45[15] = *(&v60 + 1);
    *&v42[57] = *&v52[48];
    v46 = v17;
    v47 = v18;
    v48 = v19;
    v49 = v20;
    v50 = v21;
    LOBYTE(v51) = 0;
    sub_C2B14(&v41);
  }

  else
  {

    sub_261420();
    v8 = v7;
    v9 = *(v1 + 56);
    v10 = *(v4 + 16);
    if (v10 >= 6)
    {
      sub_C8914(v4, v4 + 32, 0, 0xBuLL);
      v12 = v11;
      sub_BE218(v4, v5, v6);
      v10 = *(v12 + 16);
      v4 = v12;
    }

    if (v10)
    {
      memmove(__dst, (v4 + 32), 0x80uLL);
      v13 = sub_2F8B8(__dst);
      v14 = sub_2F950(__dst);
      if (v13)
      {
        v15 = 1.0;
        if (v13 != 1)
        {
          v15 = 0.641025641;
        }
      }

      else
      {
        v15 = *(v14 + 16);
      }

      v40 = v15;
      v27 = 0.51;
      if (!v9)
      {
        v27 = 1.0;
      }

      v28 = sub_C8DDC(v4, v8, v8 * v27, v15);
      v39 = v29;
      v22 = v28;

      v30 = sub_262510();
      sub_2610C0();
      *(&v25 + 1) = v31;
      *(&v26 + 1) = v32;
      LOBYTE(v41) = 0;
      *&v24 = v39;
      *(&v24 + 1) = v40;
      v23 = v30;
    }

    else
    {

      v22 = 0;
      v23 = 0;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
    }

    *v42 = v24;
    v41 = v22;
    *&v42[16] = 0;
    *&v42[24] = v23;
    *&v42[32] = v25;
    *&v42[48] = v26;
    v42[64] = 0;
    sub_C2DC8(&v41);
  }

  sub_2EF0(&qword_31C020, &qword_2722D0);
  sub_2EF0(&qword_31C028, &qword_2722D8);
  sub_C2B20();
  sub_C2C5C();
  sub_261F80();
  v33 = v69;
  *(a1 + 128) = v68;
  *(a1 + 144) = v33;
  *(a1 + 160) = v70;
  *(a1 + 176) = v71;
  v34 = v65;
  *(a1 + 64) = v64;
  *(a1 + 80) = v34;
  v35 = v67;
  *(a1 + 96) = v66;
  *(a1 + 112) = v35;
  v36 = __dst[1];
  *a1 = __dst[0];
  *(a1 + 16) = v36;
  result = *&v62;
  v38 = v63;
  *(a1 + 32) = v62;
  *(a1 + 48) = v38;
  return result;
}

uint64_t sub_B3510@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262870();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_263580();
  sub_2613A0();
  v9 = v6 & 1;
  v10 = sub_262580();
  *&v16 = v2;
  *(&v16 + 1) = v4;
  LOBYTE(v17) = v9;
  *(&v17 + 1) = v8;
  *&v21 = swift_getKeyPath();
  *(&v21 + 1) = v10;
  sub_262630();
  sub_2EF0(&qword_31C000, &qword_272290);
  sub_C29D0();
  sub_262A20();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  v22[0] = v16;
  v22[1] = v17;
  sub_8E80(v22, &qword_31C000, &qword_272290);
  KeyPath = swift_getKeyPath();
  v12 = a1 + *(sub_2EF0(&qword_31C018, &qword_272298) + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  result = sub_2EF0(&qword_31BFE8, &qword_272248);
  v15 = (a1 + *(result + 36));
  *v15 = v13;
  v15[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_B36D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_31C078, &qword_2722F8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v26[-v9];
  v11 = *(a1 + 32);
  v27 = v11 < 0;
  v12 = (~v11 >> 7) & 1;
  sub_B3190(v40);
  *v10 = sub_261CE0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13 = sub_2EF0(&qword_31C080, &qword_272300);
  sub_B398C(a1, &v10[*(v13 + 44)]);
  v36 = v40[8];
  v37 = v40[9];
  v38 = v40[10];
  v39 = v41;
  v32 = v40[4];
  v33 = v40[5];
  v34 = v40[6];
  v35 = v40[7];
  v28 = v40[0];
  v29 = v40[1];
  v30 = v40[2];
  v31 = v40[3];
  sub_8198(v10, v8, &qword_31C078, &qword_2722F8);
  v14 = v37;
  v42[8] = v36;
  v42[9] = v37;
  v15 = v38;
  v42[10] = v38;
  v16 = v32;
  v17 = v33;
  v42[4] = v32;
  v42[5] = v33;
  v18 = v34;
  v19 = v35;
  v42[6] = v34;
  v42[7] = v35;
  v20 = v28;
  v21 = v29;
  v42[0] = v28;
  v42[1] = v29;
  v22 = v30;
  v23 = v31;
  v42[2] = v30;
  v42[3] = v31;
  *(a2 + 144) = v36;
  *(a2 + 160) = v14;
  *(a2 + 176) = v15;
  *(a2 + 80) = v16;
  *(a2 + 96) = v17;
  *(a2 + 112) = v18;
  *(a2 + 128) = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *a2 = 0;
  *(a2 + 8) = v12;
  *(a2 + 9) = v27;
  v43 = v39;
  *(a2 + 192) = v39;
  *(a2 + 48) = v22;
  *(a2 + 64) = v23;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  v24 = sub_2EF0(&qword_31C088, &qword_272308);
  sub_8198(v8, a2 + *(v24 + 80), &qword_31C078, &qword_2722F8);
  sub_8198(v42, v44, &qword_31BFF8, &qword_272258);
  sub_8E80(v10, &qword_31C078, &qword_2722F8);
  sub_8E80(v8, &qword_31C078, &qword_2722F8);
  v44[8] = v36;
  v44[9] = v37;
  v44[10] = v38;
  v45 = v39;
  v44[4] = v32;
  v44[5] = v33;
  v44[6] = v34;
  v44[7] = v35;
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = v30;
  v44[3] = v31;
  return sub_8E80(v44, &qword_31BFF8, &qword_272258);
}

uint64_t sub_B398C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_2EF0(&qword_31BFE8, &qword_272248);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v48 - v8;
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextLockup();
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v48 - v20);
  v22 = a1[1];
  v54 = *a1;
  v55 = v22;
  v56[0] = a1[2];
  *(v56 + 9) = *(a1 + 41);
  v23 = sub_B1D44();
  v51 = v24;
  v52 = v23;
  sub_B210C(v13);
  v25 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  sub_C2968(v13, type metadata accessor for ColorConstants);
  v50 = v25 | 0x8000000000000000;
  v26 = v15[15];
  v27 = sub_2625C0();
  (*(*(v27 - 8) + 56))(v21 + v26, 1, 1, v27);
  v28 = sub_263580();
  v49 = v29;
  v30 = sub_261E60();
  v31 = v15[19];
  v32 = enum case for DynamicTypeSize.accessibility2(_:);
  v33 = sub_261690();
  (*(*(v33 - 8) + 104))(v21 + v31, v32, v33);
  *v21 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v34 = v15[7];
  *(v21 + v34) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v35 = v21 + v15[8];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v21 + v15[9];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = v21 + v15[10];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  *(v21 + v15[11]) = 0;
  v38 = (v21 + v15[12]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v21 + v15[13]);
  v40 = v51;
  *v39 = v52;
  v39[1] = v40;
  v41 = v49;
  v39[2] = v50;
  v42 = (v21 + v15[14]);
  *v42 = 0;
  v42[1] = 0;
  *(v21 + v15[16]) = v30;
  v43 = (v21 + v15[17]);
  *v43 = v28;
  v43[1] = v41;
  *(v21 + v15[18]) = 0;
  sub_B3510(v9);
  sub_BE2A0(v21, v19, type metadata accessor for TextLockup);
  sub_8198(v9, v7, &qword_31BFE8, &qword_272248);
  v44 = v53;
  sub_BE2A0(v19, v53, type metadata accessor for TextLockup);
  v45 = sub_2EF0(&qword_31C090, &unk_272310);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_8198(v7, v44 + *(v45 + 64), &qword_31BFE8, &qword_272248);
  sub_8E80(v9, &qword_31BFE8, &qword_272248);
  sub_C2968(v21, type metadata accessor for TextLockup);
  sub_8E80(v7, &qword_31BFE8, &qword_272248);
  return sub_C2968(v19, type metadata accessor for TextLockup);
}

uint64_t sub_B3DFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_BE2A0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareableAsset);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_BE320(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ShareableAsset);
  *a2 = sub_C2F10;
  a2[1] = v7;
  return result;
}

uint64_t SummaryFrameViewModel.init(localizedYear:exposureData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for SummaryFrameViewModel(0);
  v9 = &a4[*(v8 + 24)];
  *v9 = 0xD000000000000013;
  *(v9 + 1) = 0x800000000028FD20;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = *(v8 + 20);
  v11 = sub_260550();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_B3FC0()
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

uint64_t sub_B423C()
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

uint64_t sub_B44B8()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v23[-v15];
  v17 = sub_2643F0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_2643E0();
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_2643D0(v24);
  sub_2643C0(*v0);
  v25._countAndFlagsBits = 0x6E69207261655920;
  v25._object = 0xEF77656976655220;
  sub_2643D0(v25);
  sub_264400();
  sub_260260();
  (*(v10 + 16))(v14, v16, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v6, v8, v1);
  v21 = sub_264490();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  return v21;
}

uint64_t sub_B47B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a3;
  v24[2] = a4;
  v4 = sub_260290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = sub_264410();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v24 - v18;
  sub_2643A0();
  sub_260260();
  (*(v13 + 16))(v17, v19, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v9, v11, v4);
  v22 = sub_264490();
  (*(v5 + 8))(v11, v4);
  (*(v13 + 8))(v19, v12);
  return v22;
}

uint64_t SharableAsset.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_2601E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SharableAsset.init(viewModel:image:item:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = a1[1];
  *a6 = *a1;
  a6[1] = v11;
  a6[2] = a1[2];
  *(a6 + 41) = *(a1 + 41);
  v12 = type metadata accessor for SharableAsset();
  v13 = *(a4 - 8);
  (*(v13 + 16))(a6 + v12[13], a2, a4);
  v14 = *(a5 - 8);
  (*(v14 + 16))(a6 + v12[14], a3, a5);
  v15 = a6 + v12[15];
  sub_2601D0();
  (*(v14 + 8))(a3, a5);
  return (*(v13 + 8))(a2, a4);
}

uint64_t SummaryFrame.exposureData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 56);
  v5 = *(type metadata accessor for SummaryFrameViewModel(0) + 20);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_C26FC(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_C26FC(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_B4D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v17 - v12);
  sub_8198(v2 + *(a1 + 52), &v17 - v12, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_BE320(v13, a2, type metadata accessor for SizeConstants.Spacing);
  }

  v15 = *v13;
  sub_264900();
  v16 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t SummaryFrame.init(model:sharableAssets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a1;
  v32 = a2;
  v12 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  v16 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
  v17 = [objc_opt_self() secondarySystemBackgroundColor];
  *a7 = sub_262EE0();
  v18 = enum case for ColorScheme.light(_:);
  v19 = sub_261180();
  v20 = *(v19 - 8);
  (*(v20 + 104))(a7 + v16, v18, v19);
  (*(v20 + 56))(a7 + v16, 0, 1, v19);
  type metadata accessor for PageBackground(0);
  swift_storeEnumTagMultiPayload();
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v21 = type metadata accessor for SummaryFrame();
  v22 = v21[13];
  *(a7 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  *(a7 + v21[16]) = 0;
  *(a7 + v21[17]) = 0x4020000000000000;
  *(a7 + v21[18]) = 0x4034000000000000;
  *(a7 + v21[19]) = 0x4034000000000000;
  *(a7 + v21[20]) = 0x4024000000000000;
  v23 = v21[21];
  sub_262F80();
  v24 = sub_263000();

  *(a7 + v23) = v24;
  v25 = (a7 + v21[22]);
  v37 = 0;
  sub_2631D0();
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;
  v27 = v21[23];
  v28 = sub_2601E0();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  sub_B51E4(v15);
  result = sub_BE320(v31, a7 + v21[14], type metadata accessor for SummaryFrameViewModel);
  *(a7 + v21[15]) = v32;
  return result;
}

uint64_t sub_B51E4(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_8198(a1, &v6 - v4, &qword_31A0C8, &qword_26E2C0);
  sub_2631D0();
  return sub_8E80(a1, &qword_31A0C8, &qword_26E2C0);
}

double sub_B52AC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v5 = *v2;
  v6 = v2[1];
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_2631E0();
  return v4;
}

uint64_t sub_B530C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v4 = *v2;
  v5 = v2[1];
  sub_2EF0(&qword_317A40, &qword_272180);
  return sub_2631F0();
}

uint64_t sub_B536C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(a2 + 92);
  sub_8198(a1, &v9 - v7, &qword_31A0C8, &qword_26E2C0);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631F0();
  return sub_8E80(a1, &qword_31A0C8, &qword_26E2C0);
}

uint64_t SummaryFrame.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_261180();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  __chkstk_darwin(v3);
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2F9C(&qword_31BBA8, &unk_271AC0);
  v91 = a1;
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v100 = a1[5];
  v101 = v10;
  v113 = v9;
  v114 = v10;
  v89 = v11;
  v90 = v9;
  v115 = v11;
  v116 = v100;
  type metadata accessor for SharableAsset();
  v99 = sub_2646F0();
  v85 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v12 = sub_261730();
  v136 = v11;
  v137 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v134 = WitnessTable;
  v135 = v14;
  v132 = swift_getWitnessTable();
  v133 = &protocol witness table for _ShadowEffect;
  v130 = swift_getWitnessTable();
  v131 = &protocol witness table for _ScaleEffect;
  v128 = swift_getWitnessTable();
  v129 = &protocol witness table for _FrameLayout;
  v15 = swift_getWitnessTable();
  v16 = sub_6EBA4();
  v113 = v12;
  v114 = &type metadata for CGFloat;
  v115 = v15;
  v116 = v16;
  swift_getOpaqueTypeMetadata2();
  v113 = v12;
  v114 = &type metadata for CGFloat;
  v115 = v15;
  v116 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_263300();
  v18 = swift_getWitnessTable();
  v113 = v17;
  v114 = v18;
  v88 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:alignment:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = v99;
  v21 = swift_getWitnessTable();
  v87 = v21;
  v22 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v23 = v85;
  v113 = v20;
  v114 = v85;
  v115 = OpaqueTypeMetadata2;
  v116 = v21;
  v117 = v22;
  v24 = sub_2633D0();
  v113 = v17;
  v114 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v25 = swift_getWitnessTable();
  v113 = v24;
  v114 = v25;
  swift_getOpaqueTypeMetadata2();
  v113 = v24;
  v114 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = sub_2610F0();
  v27 = swift_getWitnessTable();
  v113 = v26;
  v114 = v27;
  swift_getOpaqueTypeMetadata2();
  v113 = v26;
  v114 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = sub_261120();
  v29 = swift_getWitnessTable();
  v113 = v28;
  v114 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v113 = v28;
  v114 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v113 = v30;
  v114 = v23;
  v115 = v31;
  v116 = v22;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = sub_262490();
  v113 = v30;
  v114 = v23;
  v115 = v31;
  v116 = v22;
  v34 = swift_getOpaqueTypeConformance2();
  v113 = v32;
  v114 = v33;
  v115 = v34;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v35 = swift_getOpaqueTypeMetadata2();
  v113 = v32;
  v114 = v33;
  v115 = v34;
  v116 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v36 = swift_getOpaqueTypeConformance2();
  v113 = v35;
  v114 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v113 = v35;
  v114 = v36;
  v38 = swift_getOpaqueTypeConformance2();
  v113 = v37;
  v114 = v38;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  v113 = v37;
  v114 = v38;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = &protocol witness table for _FlexFrameLayout;
  v98 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v123 = swift_getWitnessTable();
  v124 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v139 = sub_261560();
  v39 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v113 = v99;
  v114 = v23;
  v115 = v39;
  v116 = v87;
  v117 = v22;
  sub_2633D0();
  v122 = sub_BE388();
  swift_getWitnessTable();
  v140 = sub_263260();
  v40 = sub_264C30();
  v41 = sub_2F9C(&qword_31BBD8, &qword_271AE8);
  v42 = swift_getWitnessTable();
  v43 = sub_BE520();
  v113 = v40;
  v114 = &type metadata for Never;
  v115 = &type metadata for Never;
  v116 = v41;
  v117 = v42;
  v118 = &protocol witness table for Never;
  v119 = &protocol witness table for Never;
  v120 = v43;
  v121 = v100;
  v44 = sub_2636A0();
  v45 = sub_2623C0();
  v46 = swift_getWitnessTable();
  v47 = sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle);
  v113 = v44;
  v114 = v45;
  v115 = v46;
  v116 = v47;
  swift_getOpaqueTypeMetadata2();
  sub_2F9C(&qword_31BC20, &unk_271B10);
  sub_261730();
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v48 = sub_261730();
  v49 = sub_2F9C(&qword_317960, &qword_269CF0);
  v113 = v44;
  v114 = v45;
  v115 = v46;
  v116 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10);
  v111 = v50;
  v112 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
  v109 = v52;
  v110 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0);
  v113 = v48;
  v114 = v49;
  v115 = v54;
  v116 = v55;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v141 = sub_264A60();
  swift_getTupleTypeMetadata();
  sub_2636B0();
  v85 = swift_getWitnessTable();
  v56 = sub_2632E0();
  v87 = *(v56 - 8);
  v57 = *(v87 + 64);
  __chkstk_darwin(v56);
  v59 = &v84 - v58;
  sub_2F9C(&qword_3173A0, &qword_26D0C0);
  v60 = sub_261730();
  v99 = *(v60 - 8);
  v61 = *(v99 + 64);
  __chkstk_darwin(v60);
  v63 = &v84 - v62;
  v64 = swift_getWitnessTable();
  v84 = v64;
  v65 = sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
  v107 = v64;
  v108 = v65;
  v66 = swift_getWitnessTable();
  v113 = v60;
  v114 = v66;
  v86 = v66;
  v67 = swift_getOpaqueTypeMetadata2();
  v98 = *(v67 - 8);
  v68 = v98[8];
  v69 = __chkstk_darwin(v67);
  v71 = &v84 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v88 = &v84 - v72;
  v73 = v92;
  v74 = v93;
  sub_B4D1C(v91, v92);
  sub_C2968(v73, type metadata accessor for SizeConstants.Spacing);
  v102 = v90;
  v103 = v101;
  v104 = v89;
  v105 = v100;
  v106 = v74;
  sub_261E50();
  sub_2632D0();
  v75 = v94;
  v76 = v95;
  v77 = v96;
  (*(v95 + 104))(v94, enum case for ColorScheme.light(_:), v96);
  v101 = v63;
  sub_262A70();
  (*(v76 + 8))(v75, v77);
  (*(v87 + 8))(v59, v56);
  LOBYTE(v63) = sub_2624C0();
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v63)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v78 = v86;
  v79 = v101;
  sub_262D00();
  (*(v99 + 8))(v79, v60);
  v113 = v60;
  v114 = v78;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v88;
  sub_1609C(v71, v67, v80);
  v82 = v98[1];
  v82(v71, v67);
  sub_1609C(v81, v67, v80);
  return (v82)(v81, v67);
}

uint64_t sub_B62E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v286 = a5;
  v285 = a4;
  v287 = a3;
  v284 = a2;
  v282 = a1;
  v255 = a6;
  v288 = sub_2EF0(&qword_317960, &qword_269CF0);
  v8 = *(*(v288 - 8) + 64);
  __chkstk_darwin(v288);
  v249 = &v210 - v9;
  v10 = sub_261860();
  v247 = *(v10 - 8);
  v248 = v10;
  v11 = *(v247 + 64);
  __chkstk_darwin(v10);
  v246 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2623C0();
  v244 = *(v13 - 8);
  v14 = *(v244 + 64);
  __chkstk_darwin(v13);
  v243 = &v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_31BF30, &qword_2720C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v242 = &v210 - v19;
  v232 = *(a3 - 1);
  v20 = *(v232 + 64);
  __chkstk_darwin(v18);
  v241 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_264C30();
  v23 = sub_2F9C(&qword_31BBD8, &qword_271AE8);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_BE520();
  v304 = v22;
  v305 = &type metadata for Never;
  v306 = &type metadata for Never;
  v307 = v23;
  v238 = v23;
  v308 = WitnessTable;
  v309 = &protocol witness table for Never;
  v310 = &protocol witness table for Never;
  v311 = v25;
  v233 = v25;
  v312 = a5;
  v26 = sub_2636A0();
  v239 = *(v26 - 8);
  v27 = *(v239 + 64);
  __chkstk_darwin(v26);
  v236 = &v210 - v28;
  v29 = swift_getWitnessTable();
  v30 = sub_C26FC(&qword_31BC18, &type metadata accessor for BorderedProminentButtonStyle);
  v304 = v26;
  v305 = v13;
  v306 = v29;
  v307 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v234 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v234 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v226 = &v210 - v33;
  sub_2F9C(&qword_31BC20, &unk_271B10);
  v235 = OpaqueTypeMetadata2;
  v34 = sub_261730();
  v230 = *(v34 - 8);
  v35 = *(v230 + 64);
  __chkstk_darwin(v34);
  v228 = &v210 - v36;
  sub_2F9C(&qword_3183D0, &qword_26B240);
  v37 = sub_261730();
  v217 = *(v37 - 8);
  v38 = *(v217 + 64);
  __chkstk_darwin(v37);
  v237 = &v210 - v39;
  v240 = v26;
  v304 = v26;
  v305 = v13;
  v245 = v13;
  v229 = v29;
  v306 = v29;
  v307 = v30;
  v227 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_8E38(&qword_31BC28, &qword_31BC20, &unk_271B10);
  v225 = OpaqueTypeConformance2;
  v303[24] = OpaqueTypeConformance2;
  v303[25] = v41;
  v267 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v231 = v34;
  v42 = swift_getWitnessTable();
  v43 = sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
  v224 = v42;
  v303[22] = v42;
  v303[23] = v43;
  v44 = swift_getWitnessTable();
  v45 = sub_8E38(&qword_317AB8, &qword_317960, &qword_269CF0);
  v278 = v37;
  v304 = v37;
  v305 = v288;
  v276 = v44;
  v306 = v44;
  v307 = v45;
  v275 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v214 = *(v46 - 8);
  v47 = *(v214 + 64);
  __chkstk_darwin(v46);
  v211 = &v210 - v48;
  v215 = v49;
  v50 = sub_261730();
  v250 = *(v50 - 8);
  v51 = *(v250 + 64);
  v52 = __chkstk_darwin(v50);
  v216 = &v210 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v212 = &v210 - v55;
  __chkstk_darwin(v54);
  v213 = &v210 - v56;
  v57 = v284;
  v58 = v287;
  v304 = v284;
  v305 = v287;
  v59 = v285;
  v60 = v286;
  v306 = v285;
  v307 = v286;
  v61 = type metadata accessor for SharableAsset();
  v62 = sub_264A60();
  v222 = *(v62 - 8);
  v223 = v62;
  v63 = *(v222 + 64);
  v64 = __chkstk_darwin(v62);
  v268 = &v210 - v65;
  v269 = *(v61 - 8);
  v270 = v61;
  v66 = *(v269 + 64);
  __chkstk_darwin(v64);
  v251 = &v210 - v67;
  v273 = v50;
  v254 = sub_264A60();
  v252 = *(v254 - 8);
  v68 = *(v252 + 64);
  v69 = __chkstk_darwin(v254);
  v274 = &v210 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v253 = &v210 - v71;
  v72 = sub_2646F0();
  v73 = sub_2601E0();
  v263 = v73;
  v74 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v75 = v72;
  v264 = v72;
  v76 = swift_getWitnessTable();
  v265 = v76;
  v262 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v304 = v75;
  v305 = v73;
  v306 = v74;
  v307 = v76;
  v308 = v262;
  sub_2633D0();
  v303[21] = sub_BE388();
  v266 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  swift_getWitnessTable();
  v281 = sub_263260();
  v277 = *(v281 - 8);
  v77 = *(v277 + 64);
  v78 = __chkstk_darwin(v281);
  v280 = &v210 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v279 = &v210 - v80;
  v304 = v57;
  v305 = v58;
  v306 = v59;
  v307 = v60;
  v283 = type metadata accessor for SummaryFrame();
  v81 = *(v283 - 8);
  v261 = *(v81 + 64);
  __chkstk_darwin(v283);
  v260 = &v210 - v82;
  v83 = type metadata accessor for SizeConstants.Spacing(0);
  v84 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v210 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2EF0(&qword_31BBA8, &unk_271AC0);
  v88 = *(*(v87 - 8) + 64);
  v89 = __chkstk_darwin(v87);
  v272 = &v210 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v92 = (&v210 - v91);
  v271 = sub_B3FC0();
  v259 = v93;
  v94 = sub_B423C();
  v257 = v95;
  v258 = v94;
  v96 = type metadata accessor for TextLockup();
  v97 = v96[13];
  v98 = sub_2625C0();
  (*(*(v98 - 8) + 56))(v92 + v97, 1, 1, v98);
  v256 = sub_261E50();
  v99 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v101 = v100;
  v102 = v96[17];
  v103 = enum case for DynamicTypeSize.xxxLarge(_:);
  v104 = sub_261690();
  v105 = *(v104 - 8);
  v106 = *(v105 + 104);
  v220 = v103;
  v221 = v104;
  v218 = v105 + 104;
  v219 = v106;
  (v106)(v92 + v102, v103);
  *v92 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v107 = v96[5];
  *(v92 + v107) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v108 = v92 + v96[6];
  *v108 = swift_getKeyPath();
  v108[8] = 0;
  v109 = v92 + v96[7];
  *v109 = swift_getKeyPath();
  v109[8] = 0;
  v110 = v92 + v96[8];
  *v110 = swift_getKeyPath();
  v110[8] = 0;
  *(v92 + v96[9]) = 3;
  v111 = (v92 + v96[10]);
  *v111 = 0;
  v111[1] = 0;
  v112 = (v92 + v96[11]);
  v113 = v258;
  v114 = v259;
  *v112 = v271;
  v112[1] = v114;
  v112[2] = 0;
  v115 = (v92 + v96[12]);
  *v115 = v113;
  v116 = v256;
  v115[1] = v257;
  *(v92 + v96[14]) = v116;
  v117 = (v92 + v96[15]);
  *v117 = v99;
  v117[1] = v101;
  *(v92 + v96[16]) = 1;
  LOBYTE(v96) = sub_2624F0();
  v118 = v92 + *(sub_2EF0(&qword_31BF38, &unk_272170) + 36);
  *v118 = v96;
  *(v118 + 8) = 0u;
  *(v118 + 24) = 0u;
  v118[40] = 1;
  LOBYTE(v103) = sub_262510();
  v119 = v283;
  v120 = v282;
  sub_B4D1C(v283, v86);
  sub_C2968(v86, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v259 = v87;
  v121 = *(v87 + 36);
  v271 = v92;
  v122 = v92 + v121;
  *v122 = v103;
  *(v122 + 1) = v123;
  *(v122 + 2) = v124;
  *(v122 + 3) = v125;
  *(v122 + 4) = v126;
  v122[40] = 0;
  v127 = v260;
  v128 = v119;
  (*(v81 + 16))(v260, v120, v119);
  v129 = (*(v81 + 80) + 48) & ~*(v81 + 80);
  v130 = swift_allocObject();
  v261 = v130;
  v131 = v287;
  v130[2] = v284;
  v130[3] = v131;
  v132 = v285;
  v133 = v286;
  v130[4] = v285;
  v130[5] = v133;
  (*(v81 + 32))(v130 + v129, v127, v128);
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v134 = sub_261730();
  v303[17] = v132;
  v303[18] = &protocol witness table for _FrameLayout;
  v135 = swift_getWitnessTable();
  v136 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v303[15] = v135;
  v303[16] = v136;
  v303[13] = swift_getWitnessTable();
  v303[14] = &protocol witness table for _ShadowEffect;
  v303[11] = swift_getWitnessTable();
  v303[12] = &protocol witness table for _ScaleEffect;
  v303[9] = swift_getWitnessTable();
  v303[10] = &protocol witness table for _FrameLayout;
  v137 = swift_getWitnessTable();
  v138 = sub_6EBA4();
  v304 = v134;
  v305 = &type metadata for CGFloat;
  v306 = v137;
  v307 = v138;
  swift_getOpaqueTypeMetadata2();
  v304 = v134;
  v305 = &type metadata for CGFloat;
  v306 = v137;
  v307 = v138;
  swift_getOpaqueTypeConformance2();
  v139 = sub_263300();
  v140 = swift_getWitnessTable();
  v304 = v139;
  v305 = v140;
  v141 = swift_getOpaqueTypeMetadata2();
  v142 = v263;
  v304 = v264;
  v305 = v263;
  v306 = v141;
  v307 = v265;
  v143 = v262;
  v308 = v262;
  v144 = sub_2633D0();
  v304 = v139;
  v305 = v140;
  v303[8] = swift_getOpaqueTypeConformance2();
  v145 = swift_getWitnessTable();
  v304 = v144;
  v305 = v145;
  swift_getOpaqueTypeMetadata2();
  v304 = v144;
  v305 = v145;
  swift_getOpaqueTypeConformance2();
  v146 = sub_2610F0();
  v147 = swift_getWitnessTable();
  v304 = v146;
  v305 = v147;
  swift_getOpaqueTypeMetadata2();
  v304 = v146;
  v305 = v147;
  swift_getOpaqueTypeConformance2();
  v148 = sub_261120();
  v149 = swift_getWitnessTable();
  v304 = v148;
  v305 = v149;
  v150 = swift_getOpaqueTypeMetadata2();
  v304 = v148;
  v305 = v149;
  v151 = swift_getOpaqueTypeConformance2();
  v304 = v150;
  v305 = v142;
  v306 = v151;
  v307 = v143;
  v152 = swift_getOpaqueTypeMetadata2();
  v153 = sub_262490();
  v304 = v150;
  v305 = v142;
  v306 = v151;
  v307 = v143;
  v154 = swift_getOpaqueTypeConformance2();
  v304 = v152;
  v305 = v153;
  v306 = v154;
  v307 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v155 = swift_getOpaqueTypeMetadata2();
  v304 = v152;
  v305 = v153;
  v306 = v154;
  v307 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v156 = swift_getOpaqueTypeConformance2();
  v304 = v155;
  v305 = v156;
  v157 = swift_getOpaqueTypeMetadata2();
  v304 = v155;
  v305 = v156;
  v158 = swift_getOpaqueTypeConformance2();
  v304 = v157;
  v305 = v158;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  sub_261730();
  v304 = v157;
  v305 = v158;
  v159 = v283;
  v160 = v282;
  v161 = v268;
  v303[6] = swift_getOpaqueTypeConformance2();
  v303[7] = &protocol witness table for _FlexFrameLayout;
  v303[4] = swift_getWitnessTable();
  v303[5] = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v304 = sub_261550();
  v305 = v162;
  v163 = v269;
  v164 = sub_261560();
  v264 = swift_getWitnessTable();
  v265 = v164;
  sub_1609C(&v304, v164, v264);

  v165 = v280;
  sub_B9A38(v159, v280, *(v160 + *(v159 + 80)));
  v166 = v281;
  v263 = swift_getWitnessTable();
  sub_1609C(v165, v166, v263);
  v266 = *(v277 + 8);
  v267 = (v277 + 8);
  v266(v165, v166);
  sub_B9D50(v159);
  v167 = v270;
  if ((*(v163 + 48))(v161, 1, v270) == 1)
  {
    (*(v222 + 8))(v161, v223);
    v168 = v274;
    (*(v250 + 56))(v274, 1, 1, v273);
    v304 = v278;
    v305 = v288;
    v306 = v276;
    v307 = v275;
    v303[2] = swift_getOpaqueTypeConformance2();
    v303[3] = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
LABEL_8:
    v200 = v253;
    sub_84178(v168, v253);
    v201 = v252;
    v287 = *(v252 + 8);
    v202 = v254;
    (v287)(v168, v254);
    v203 = v272;
    sub_8198(v271, v272, &qword_31BBA8, &unk_271AC0);
    v303[0] = v303[19];
    v303[1] = v303[20];
    v304 = v203;
    v305 = v303;
    v204 = v280;
    v205 = v279;
    v206 = v281;
    (*(v277 + 16))(v280, v279, v281);
    v306 = v204;
    (*(v201 + 16))(v168, v200, v202);
    v307 = v168;

    v302[0] = v259;
    v302[1] = v265;
    v302[2] = v206;
    v302[3] = v202;
    v298 = sub_C0FF4();
    v299 = v264;
    v300 = v263;
    v294 = v278;
    v295 = v288;
    v296 = v276;
    v297 = v275;
    v292 = swift_getOpaqueTypeConformance2();
    v293 = &protocol witness table for _FrameLayout;
    v291 = swift_getWitnessTable();
    v301 = swift_getWitnessTable();
    sub_10E998(&v304, 4uLL, v302);
    v207 = v287;
    (v287)(v200, v202);
    v208 = v205;
    v209 = v266;
    v266(v208, v206);

    sub_8E80(v271, &qword_31BBA8, &unk_271AC0);
    v207(v274, v202);
    v209(v204, v206);

    return sub_8E80(v272, &qword_31BBA8, &unk_271AC0);
  }

  v169 = v278;
  v170 = v288;
  v171 = v251;
  (*(v163 + 32))(v251, v161, v167);
  (*(v232 + 16))(v241, v171 + *(v167 + 56), v287);
  v172 = sub_B9E30(v171, v159);
  v307 = sub_C113C();
  v304 = v172;
  v173 = sub_261320();
  __chkstk_darwin(v173);
  v174 = v236;
  sub_263680();
  v175 = v243;
  sub_2623B0();
  v176 = v226;
  v177 = v240;
  v178 = v245;
  sub_262A50();
  (*(v244 + 8))(v175, v178);
  (*(v239 + 8))(v174, v177);
  v179 = v176;
  if (_UISolariumEnabled())
  {
    v180 = v246;
    sub_261850();
  }

  else
  {
    v180 = v246;
    sub_261840();
  }

  v181 = v228;
  v182 = v235;
  sub_262BB0();
  (*(v247 + 8))(v180, v248);
  (*(v234 + 8))(v179, v182);
  sub_262F80();
  v183 = v237;
  v184 = v231;
  sub_262D90();

  (*(v230 + 8))(v181, v184);
  v185 = v249;
  v219(v249, v220, v221);
  sub_C26FC(&qword_317AB0, &type metadata accessor for DynamicTypeSize);
  result = sub_264390();
  if (result)
  {
    v187 = v211;
    v188 = v276;
    v189 = v170;
    v190 = v275;
    sub_262B70();
    sub_8E80(v185, &qword_317960, &qword_269CF0);
    (*(v217 + 8))(v183, v169);
    sub_B52AC(v283);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v304 = v169;
    v305 = v189;
    v306 = v188;
    v307 = v190;
    v191 = swift_getOpaqueTypeConformance2();
    v192 = v212;
    v193 = v215;
    sub_262DA0();
    (*(v214 + 8))(v187, v193);
    (*(v269 + 8))(v251, v270);
    v289 = v191;
    v290 = &protocol witness table for _FrameLayout;
    v194 = v273;
    v195 = swift_getWitnessTable();
    v196 = v213;
    sub_1609C(v192, v194, v195);
    v197 = v250;
    v198 = *(v250 + 8);
    v198(v192, v194);
    v199 = v216;
    sub_1609C(v196, v194, v195);
    v198(v196, v194);
    v168 = v274;
    (*(v197 + 32))(v274, v199, v194);
    (*(v197 + 56))(v168, 0, 1, v194);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_B80B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v26 = a4;
  v29 = a2;
  v28 = a1;
  v30 = a7;
  v25 = a3;
  v24 = a5;
  type metadata accessor for SharableAsset();
  sub_2646F0();
  v23[1] = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  sub_261730();
  v49 = a5;
  v50 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v48 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v45 = swift_getWitnessTable();
  v46 = &protocol witness table for _ShadowEffect;
  v43 = swift_getWitnessTable();
  v44 = &protocol witness table for _ScaleEffect;
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_6EBA4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_263300();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v40 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  sub_2633D0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2610F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_261120();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_262490();
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v38 = v8;
  v39 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  v37 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_261730();
  v11 = sub_261730();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  v36 = v25;
  v37 = v26;
  v38 = v24;
  v39 = v27;
  v19 = type metadata accessor for SummaryFrame();
  sub_B8830(v28, v19, v16);
  v36 = OpaqueTypeMetadata2;
  v37 = v10;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = &protocol witness table for _FlexFrameLayout;
  v31 = swift_getWitnessTable();
  v32 = &protocol witness table for _AppearanceActionModifier;
  v20 = swift_getWitnessTable();
  sub_1609C(v16, v11, v20);
  v21 = *(v12 + 8);
  v21(v16, v11);
  sub_1609C(v18, v11, v20);
  return (v21)(v18, v11);
}

uint64_t sub_B8830@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v178 = a1;
  v171 = a3;
  v170 = *(a2 - 1);
  v4 = *(v170 + 64);
  __chkstk_darwin(a1);
  v168 = v5;
  v169 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2620F0();
  v166 = *(v6 - 8);
  v167 = v6;
  v7 = *(v166 + 64);
  __chkstk_darwin(v6);
  v165 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v164 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262320();
  v162 = *(v12 - 8);
  v163 = v12;
  v13 = *(v162 + 64);
  __chkstk_darwin(v12);
  v161 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262470();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v159 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_262490();
  v160 = *(v173 - 8);
  v18 = *(v160 + 64);
  __chkstk_darwin(v173);
  v158 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2EF0(&qword_31BF70, &qword_2721C8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v156 = a2;
  v157 = &v126 - v22;
  v23 = a2[2];
  v176 = a2[3];
  v177 = v23;
  v24 = a2[4];
  v174 = a2[5];
  v175 = v24;
  v193 = v23;
  v194 = v176;
  v195 = v24;
  v196 = v174;
  v25 = v24;
  type metadata accessor for SharableAsset();
  v155 = sub_2646F0();
  v172 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v26 = sub_261730();
  v206 = v25;
  v207 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v28 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v204 = WitnessTable;
  v205 = v28;
  v202 = swift_getWitnessTable();
  v203 = &protocol witness table for _ShadowEffect;
  v200 = swift_getWitnessTable();
  v201 = &protocol witness table for _ScaleEffect;
  v198 = swift_getWitnessTable();
  v199 = &protocol witness table for _FrameLayout;
  v29 = swift_getWitnessTable();
  v30 = sub_6EBA4();
  v193 = v26;
  v194 = &type metadata for CGFloat;
  v195 = v29;
  v196 = v30;
  swift_getOpaqueTypeMetadata2();
  v193 = v26;
  v194 = &type metadata for CGFloat;
  v195 = v29;
  v196 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = sub_263300();
  v32 = swift_getWitnessTable();
  v193 = v31;
  v194 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = v155;
  v35 = swift_getWitnessTable();
  v36 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v37 = v172;
  v193 = v34;
  v194 = v172;
  v195 = OpaqueTypeMetadata2;
  v196 = v35;
  v197 = v36;
  v38 = v36;
  v39 = sub_2633D0();
  v193 = v31;
  v194 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  v193 = v39;
  v194 = v40;
  swift_getOpaqueTypeMetadata2();
  v193 = v39;
  v194 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = sub_2610F0();
  v42 = swift_getWitnessTable();
  v193 = v41;
  v194 = v42;
  v135 = swift_getOpaqueTypeMetadata2();
  v193 = v41;
  v194 = v42;
  v134 = swift_getOpaqueTypeConformance2();
  v43 = sub_261120();
  v136 = *(v43 - 8);
  v44 = *(v136 + 64);
  __chkstk_darwin(v43);
  v46 = &v126 - v45;
  v47 = swift_getWitnessTable();
  v193 = v43;
  v194 = v47;
  v48 = v47;
  v131 = v47;
  v49 = swift_getOpaqueTypeMetadata2();
  v138 = *(v49 - 8);
  v50 = *(v138 + 64);
  __chkstk_darwin(v49);
  v130 = &v126 - v51;
  v193 = v43;
  v194 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v193 = v49;
  v194 = v37;
  v195 = v52;
  v196 = v38;
  v53 = v52;
  v132 = v52;
  v133 = v38;
  v54 = swift_getOpaqueTypeMetadata2();
  v137 = *(v54 - 8);
  v55 = *(v137 + 64);
  __chkstk_darwin(v54);
  v129 = &v126 - v56;
  v193 = v49;
  v194 = v37;
  v195 = v53;
  v196 = v38;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v173;
  v193 = v54;
  v194 = v173;
  v195 = v57;
  v196 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v59 = v57;
  v128 = v57;
  v60 = swift_getOpaqueTypeMetadata2();
  v141 = *(v60 - 8);
  v61 = *(v141 + 64);
  __chkstk_darwin(v60);
  v127 = &v126 - v62;
  v193 = v54;
  v194 = v58;
  v195 = v59;
  v196 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v63 = swift_getOpaqueTypeConformance2();
  v193 = v60;
  v194 = v63;
  v64 = swift_getOpaqueTypeMetadata2();
  v145 = *(v64 - 8);
  v65 = *(v145 + 64);
  __chkstk_darwin(v64);
  v142 = &v126 - v66;
  v143 = v60;
  v193 = v60;
  v194 = v63;
  v139 = v63;
  v67 = swift_getOpaqueTypeConformance2();
  v148 = v64;
  v193 = v64;
  v194 = v67;
  v140 = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  v146 = *(v68 - 8);
  v69 = *(v146 + 64);
  __chkstk_darwin(v68);
  v144 = &v126 - v70;
  v147 = v71;
  v72 = sub_261730();
  v152 = *(v72 - 8);
  v73 = *(v152 + 64);
  __chkstk_darwin(v72);
  v149 = &v126 - v74;
  v153 = v75;
  v76 = sub_261730();
  v154 = *(v76 - 8);
  v155 = v76;
  v77 = *(v154 + 64);
  v78 = __chkstk_darwin(v76);
  v150 = &v126 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v151 = &v126 - v80;
  sub_261420();
  v82 = v81;
  v84 = v83;
  v85 = v156;
  v86 = v179;
  sub_BA9D0(v156, v81);
  v88 = v87;
  sub_2624C0();
  v180 = v177;
  v181 = v176;
  v182 = v175;
  v183 = v174;
  v184 = v86;
  v185 = v88;
  v186 = v82;
  v187 = v84;
  sub_1D16D8();
  v89 = v130;
  sub_262C40();
  (*(v136 + 8))(v46, v43);
  v90 = *(v85 + 92);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  v91 = v157;
  sub_263200();
  sub_263720();
  swift_checkMetadataState();
  v92 = v129;
  sub_262B40();
  v93 = v91;
  v94 = v127;
  sub_8E80(v93, &qword_31BF70, &qword_2721C8);
  (*(v138 + 8))(v89, v49);
  sub_262460();
  v95 = v158;
  sub_262480();
  v96 = v173;
  sub_262C90();
  (*(v160 + 8))(v95, v96);
  v97 = v92;
  v98 = v161;
  (*(v137 + 8))(v97, v54);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v46) = sub_2624E0();
  *(inited + 32) = v46;
  v100 = sub_2624C0();
  *(inited + 33) = v100;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v46)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v100)
  {
    sub_2624D0();
  }

  v102 = v142;
  v101 = v143;
  sub_262BA0();
  (*(v162 + 8))(v98, v163);
  (*(v141 + 8))(v94, v101);
  sub_2624F0();
  sub_261420();
  v103 = v164;
  v104 = v179;
  sub_B4D1C(v85, v164);
  sub_C2968(v103, type metadata accessor for SizeConstants.Spacing);
  v105 = v165;
  sub_2620C0();
  v106 = v144;
  v107 = v148;
  v108 = v140;
  sub_262B30();
  (*(v166 + 8))(v105, v167);
  (*(v145 + 8))(v102, v107);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v193 = v107;
  v194 = v108;
  v125 = swift_getOpaqueTypeConformance2();
  v109 = v147;
  v110 = v149;
  sub_262DB0();
  (*(v146 + 8))(v106, v109);
  v112 = v169;
  v111 = v170;
  (*(v170 + 16))(v169, v104, v85);
  v113 = (*(v111 + 80) + 48) & ~*(v111 + 80);
  v114 = swift_allocObject();
  v115 = v176;
  *(v114 + 2) = v177;
  *(v114 + 3) = v115;
  v116 = v174;
  *(v114 + 4) = v175;
  *(v114 + 5) = v116;
  (*(v111 + 32))(&v114[v113], v112, v85);
  v190 = v125;
  v191 = &protocol witness table for _FlexFrameLayout;
  v117 = v153;
  v118 = swift_getWitnessTable();
  v119 = v150;
  sub_262E40();

  (*(v152 + 8))(v110, v117);
  v188 = v118;
  v189 = &protocol witness table for _AppearanceActionModifier;
  v120 = v155;
  v121 = swift_getWitnessTable();
  v122 = v151;
  sub_1609C(v119, v120, v121);
  v123 = *(v154 + 8);
  v123(v119, v120);
  sub_1609C(v122, v120, v121);
  return (v123)(v122, v120);
}

uint64_t sub_B9A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v32 = a2;
  v6 = type metadata accessor for SizeConstants.Spacing(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[5];
  v30 = a1[4];
  v31 = v10;
  v29 = v12;
  v40 = v11;
  v41 = v10;
  v42 = v30;
  v43 = v12;
  type metadata accessor for SharableAsset();
  v13 = sub_2646F0();
  v14 = sub_2601E0();
  v15 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = WitnessTable;
  v44 = v17;
  sub_2633D0();
  v39 = sub_BE388();
  swift_getWitnessTable();
  v18 = sub_263260();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v29 - v24;
  sub_B4D1C(a1, v9);
  sub_C2968(v9, type metadata accessor for SizeConstants.Spacing);
  v33 = v11;
  v34 = v31;
  v35 = v30;
  v36 = v29;
  v37 = v3;
  v38 = a3;
  sub_261D30();
  sub_263250();
  v26 = swift_getWitnessTable();
  sub_1609C(v23, v18, v26);
  v27 = *(v19 + 8);
  v27(v23, v18);
  sub_1609C(v25, v18, v26);
  return (v27)(v25, v18);
}

uint64_t sub_B9D50(uint64_t a1)
{
  v7 = *(v1 + *(a1 + 60));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  type metadata accessor for SharableAsset();
  sub_2646F0();
  swift_getWitnessTable();
  sub_264600();
}

id sub_B9E30(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v25 = *(a2 + 24);
  v6 = *(a2 + 40);
  v26 = *(a2 + 32);
  v27 = v5;
  v28 = v5;
  v29 = v25;
  v30 = v26;
  v31 = v6;
  v7 = type metadata accessor for SharableAsset();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = [objc_allocWithZone(LPLinkMetadata) init];
  v13 = v2 + *(a2 + 56);
  sub_B44B8();
  v14 = sub_264420();

  [v12 setTitle:v14];

  sub_B47B0(0x6F4220656C707041, 0xEB00000000736B6FLL, "Apple Books app name - appears in Year in Review share sheet preview summary", 76);
  v15 = sub_264420();

  [v12 setSummary:v15];

  v16 = [objc_allocWithZone(LPImageProperties) init];
  [v16 setType:1];
  v17 = [objc_allocWithZone(NSItemProvider) init];
  (*(v8 + 16))(v11, a1, v7);
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v25;
  *(v19 + 2) = v27;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  *(v19 + 5) = v6;
  (*(v8 + 32))(&v19[v18], v11, v7);
  sub_264920();

  v22 = [objc_allocWithZone(LPImage) initWithItemProvider:v17 properties:v16 placeholderImage:0];
  [v12 setImage:v22];

  return v12;
}

__n128 sub_BA0E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a6;
  v11 = type metadata accessor for SizeConstants.Spacing(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_31BC00, &qword_271AF8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = sub_2EF0(&qword_31BBE8, &qword_271AF0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  v24 = sub_2EF0(&qword_31BF60, &qword_272188);
  v53 = *(v24 - 8);
  v54 = v24;
  v25 = *(v53 + 64);
  __chkstk_darwin(v24);
  v52 = &v51 - v26;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  v27 = type metadata accessor for SummaryFrame();
  v28 = *(v27 + 56);
  *&v56 = sub_B47B0(0x6572616853, 0xE500000000000000, "Share button string in the year summarized frame.", 49);
  *(&v56 + 1) = v29;
  v30 = (a1 + *(type metadata accessor for SummaryFrameViewModel(0) + 24) + v28);
  v31 = *v30;
  v32 = v30[1];
  sub_10A84();

  sub_263140();
  KeyPath = swift_getKeyPath();
  v34 = &v19[*(v16 + 44)];
  *v34 = KeyPath;
  *(v34 + 1) = 1;
  v34[16] = 0;
  LOBYTE(v31) = sub_262560();
  v35 = sub_262540();
  sub_262540();
  if (sub_262540() != v31)
  {
    v35 = sub_262540();
  }

  sub_B4D1C(v27, v14);
  sub_C2968(v14, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_22148(v19, v23, &qword_31BC00, &qword_271AF8);
  v44 = &v23[*(v20 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_262650();
  sub_BE5E8();
  v45 = v52;
  sub_262A20();
  sub_8E80(v23, &qword_31BBE8, &qword_271AF0);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v46 = v55;
  (*(v53 + 32))(v55, v45, v54);
  v47 = v46 + *(sub_2EF0(&qword_31BBD8, &qword_271AE8) + 36);
  v48 = v61;
  *(v47 + 64) = v60;
  *(v47 + 80) = v48;
  *(v47 + 96) = v62;
  v49 = v57;
  *v47 = v56;
  *(v47 + 16) = v49;
  result = v59;
  *(v47 + 32) = v58;
  *(v47 + 48) = result;
  return result;
}

uint64_t sub_BA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  v41 = a6;
  v42 = a1;
  v9 = sub_2601E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_31BF68, &qword_2721C0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v40 = &v39 - v16;
  v17 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v48 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  v44 = a3;
  v45 = a4;
  v26 = a5;
  v46 = a5;
  v27 = v41;
  v47 = v41;
  v28 = type metadata accessor for SharableAsset();
  (*(v10 + 16))(v25, v42 + *(v28 + 60), v9);
  (*(v10 + 56))(v25, 0, 1, v9);
  v44 = a3;
  v45 = a4;
  v29 = v40;
  v46 = v26;
  v47 = v27;
  LODWORD(v27) = *(type metadata accessor for SummaryFrame() + 92);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631E0();
  v30 = *(v14 + 56);
  sub_8198(v25, v29, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v23, v29 + v30, &qword_31A0C8, &qword_26E2C0);
  v31 = v10;
  v32 = *(v10 + 48);
  if (v32(v29, 1, v9) != 1)
  {
    sub_8198(v29, v48, &qword_31A0C8, &qword_26E2C0);
    if (v32(v29 + v30, 1, v9) != 1)
    {
      v34 = v31;
      v35 = v29 + v30;
      v36 = v39;
      (*(v31 + 32))(v39, v35, v9);
      sub_C26FC(&qword_31AD38, &type metadata accessor for UUID);
      v33 = sub_264390();
      v37 = *(v34 + 8);
      v37(v36, v9);
      sub_8E80(v23, &qword_31A0C8, &qword_26E2C0);
      sub_8E80(v25, &qword_31A0C8, &qword_26E2C0);
      v37(v48, v9);
      sub_8E80(v29, &qword_31A0C8, &qword_26E2C0);
      return v33 & 1;
    }

    sub_8E80(v23, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v25, &qword_31A0C8, &qword_26E2C0);
    (*(v31 + 8))(v48, v9);
    goto LABEL_6;
  }

  sub_8E80(v23, &qword_31A0C8, &qword_26E2C0);
  sub_8E80(v25, &qword_31A0C8, &qword_26E2C0);
  if (v32(v29 + v30, 1, v9) != 1)
  {
LABEL_6:
    sub_8E80(v29, &qword_31BF68, &qword_2721C0);
    v33 = 0;
    return v33 & 1;
  }

  sub_8E80(v29, &qword_31A0C8, &qword_26E2C0);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_BA9D0(uint64_t a1, double a2)
{
  v5 = *(a1 + 32);
  v18[0] = *(a1 + 16);
  v18[1] = v5;
  v6 = type metadata accessor for SharableAsset();
  v7 = sub_264A60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  *&v18[0] = *(v2 + *(a1 + 60));
  sub_2646F0();
  swift_getWitnessTable();
  sub_264880();
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v15 = *(v11 + 5);
  v14 = *(v11 + 6);
  if (v11[56])
  {
    v16 = *(v11 + 5);
  }

  else
  {
    v16 = *(v11 + 6);
  }

  (*(v12 + 8))(v11, v6);
  result = sub_2649D0();
  if (v17 > a2)
  {
    sub_2649B0();
    return sub_2649D0();
  }

  return result;
}

uint64_t sub_BABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v56 = a5;
  v55 = a3;
  v58 = a1;
  v59 = a6;
  v16 = sub_262080();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  v70 = a3;
  v54 = a2;
  v71 = a4;
  v72 = a5;
  v53 = a4;
  type metadata accessor for SharableAsset();
  v19 = sub_2646F0();
  v52 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v20 = sub_261730();
  v82 = a4;
  v83 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v80 = WitnessTable;
  v81 = v22;
  v78 = swift_getWitnessTable();
  v79 = &protocol witness table for _ShadowEffect;
  v76 = swift_getWitnessTable();
  v77 = &protocol witness table for _ScaleEffect;
  v74 = swift_getWitnessTable();
  v75 = &protocol witness table for _FrameLayout;
  v23 = swift_getWitnessTable();
  v24 = sub_6EBA4();
  v69 = v20;
  v70 = &type metadata for CGFloat;
  v71 = v23;
  v72 = v24;
  swift_getOpaqueTypeMetadata2();
  v69 = v20;
  v70 = &type metadata for CGFloat;
  v71 = v23;
  v72 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = sub_263300();
  v26 = swift_getWitnessTable();
  v69 = v25;
  v70 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = swift_getWitnessTable();
  v29 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v69 = v19;
  v70 = v52;
  v71 = OpaqueTypeMetadata2;
  v72 = v28;
  v73 = v29;
  v30 = sub_2633D0();
  v69 = v25;
  v70 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = swift_getWitnessTable();
  v69 = v30;
  v70 = v31;
  swift_getOpaqueTypeMetadata2();
  v69 = v30;
  v70 = v31;
  v50 = swift_getOpaqueTypeConformance2();
  v32 = sub_2610F0();
  v52 = *(v32 - 8);
  v33 = *(v52 + 64);
  __chkstk_darwin(v32);
  v35 = &v48 - v34;
  v49 = swift_getWitnessTable();
  v69 = v32;
  v70 = v49;
  v51 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v36 = swift_getOpaqueTypeMetadata2();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v43 = &v48 - v42;
  v60 = v54;
  v61 = v55;
  v62 = v53;
  v63 = v56;
  v64 = v58;
  v65 = a7;
  v66 = a8;
  v67 = a9;
  sub_261D30();
  sub_19E724();
  sub_2610E0();
  v44 = v49;
  sub_262C50();
  (*(v52 + 8))(v35, v32);
  v69 = v32;
  v70 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  sub_1609C(v41, v36, v45);
  v46 = *(v37 + 8);
  v46(v41, v36);
  sub_1609C(v43, v36, v45);
  return (v46)(v43, v36);
}

uint64_t sub_BB2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v70 = a1;
  v72 = a6;
  v75 = a2;
  v76 = a3;
  v68 = a3;
  v77 = a4;
  v78 = a5;
  v69 = a5;
  v66 = type metadata accessor for SummaryFrame();
  v65 = *(v66 - 8);
  v67 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = v55 - v16;
  v75 = a2;
  v76 = a3;
  v63 = a2;
  v77 = a4;
  v78 = a5;
  v62 = a4;
  v71 = type metadata accessor for SharableAsset();
  v17 = sub_2646F0();
  v73 = sub_2601E0();
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v18 = sub_261730();
  v88 = a4;
  v89 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v86 = WitnessTable;
  v87 = v20;
  v84 = swift_getWitnessTable();
  v85 = &protocol witness table for _ShadowEffect;
  v82 = swift_getWitnessTable();
  v83 = &protocol witness table for _ScaleEffect;
  v80 = swift_getWitnessTable();
  v81 = &protocol witness table for _FrameLayout;
  v21 = swift_getWitnessTable();
  v22 = sub_6EBA4();
  v75 = v18;
  v76 = &type metadata for CGFloat;
  v77 = v21;
  v78 = v22;
  swift_getOpaqueTypeMetadata2();
  v75 = v18;
  v76 = &type metadata for CGFloat;
  v77 = v21;
  v78 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_263300();
  v24 = swift_getWitnessTable();
  v75 = v23;
  v76 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55[2] = OpaqueTypeMetadata2;
  v55[3] = v17;
  v26 = swift_getWitnessTable();
  v55[1] = v26;
  v27 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v75 = v17;
  v76 = v73;
  v77 = OpaqueTypeMetadata2;
  v78 = v26;
  v79 = v27;
  v28 = sub_2633D0();
  v61 = *(v28 - 8);
  v29 = *(v61 + 64);
  __chkstk_darwin(v28);
  v31 = v55 - v30;
  v75 = v23;
  v76 = v24;
  v55[0] = swift_getOpaqueTypeConformance2();
  v74 = v55[0];
  v32 = swift_getWitnessTable();
  v75 = v28;
  v76 = v32;
  v57 = v32;
  v60 = swift_getOpaqueTypeMetadata2();
  v59 = *(v60 - 8);
  v33 = *(v59 + 64);
  v34 = __chkstk_darwin(v60);
  v56 = v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v58 = v55 - v36;
  v37 = v66;
  v75 = *(v70 + *(v66 + 60));
  v38 = v65;
  v39 = v64;
  (*(v65 + 16))(v64);
  v40 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v41 = (v67 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 2) = v63;
  *(v42 + 3) = v43;
  v44 = v69;
  *(v42 + 4) = v62;
  *(v42 + 5) = v44;
  (*(v38 + 32))(&v42[v40], v39, v37);
  *&v42[v41] = a7;
  v45 = &v42[(v41 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v45 = a8;
  v45[1] = a9;

  swift_getWitnessTable();
  sub_2633C0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v42) = sub_2624E0();
  *(inited + 32) = v42;
  v47 = sub_2624C0();
  *(inited + 33) = v47;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v42)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v47)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v48 = v56;
  v49 = v57;
  sub_262D00();
  (*(v61 + 8))(v31, v28);
  v75 = v28;
  v76 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v58;
  v52 = v60;
  sub_1609C(v48, v60, OpaqueTypeConformance2);
  v53 = *(v59 + 8);
  v53(v48, v52);
  sub_1609C(v51, v52, OpaqueTypeConformance2);
  return (v53)(v51, v52);
}

uint64_t sub_BBB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v40 = a6;
  v35 = a5;
  v39 = a4;
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v41 = a7;
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  sub_261730();
  sub_261730();
  v14 = sub_261730();
  v63 = a5;
  v64 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v62 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v59 = swift_getWitnessTable();
  v60 = &protocol witness table for _ShadowEffect;
  v57 = swift_getWitnessTable();
  v58 = &protocol witness table for _ScaleEffect;
  v55 = swift_getWitnessTable();
  v56 = &protocol witness table for _FrameLayout;
  v15 = swift_getWitnessTable();
  v16 = sub_6EBA4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = v14;
  v52 = &type metadata for CGFloat;
  v53 = v15;
  v54 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_263300();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &OpaqueTypeMetadata2 - v20;
  v22 = swift_getWitnessTable();
  v51 = v17;
  v52 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &OpaqueTypeMetadata2 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &OpaqueTypeMetadata2 - v29;
  sub_263560();
  v42 = v36;
  v43 = v39;
  v44 = v35;
  v45 = v40;
  v46 = v37;
  v47 = v38;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  sub_2632F0();
  sub_2624E0();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_262D00();
  (*(v18 + 8))(v21, v17);
  v51 = v17;
  v52 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1609C(v28, v23, OpaqueTypeConformance2);
  v32 = *(v24 + 8);
  v32(v28, v23);
  sub_1609C(v30, v23, OpaqueTypeConformance2);
  return (v32)(v30, v23);
}

uint64_t sub_BC040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v77 = a6;
  v78 = a4;
  v70 = a2;
  v72 = a1;
  v76 = a7;
  v89 = a3;
  v90 = a4;
  v91 = a5;
  v92 = a6;
  v69 = type metadata accessor for SummaryFrame();
  v74 = *(v69 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v69);
  v73 = &v56 - v11;
  v12 = a3;
  v57 = a3;
  sub_261730();
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  sub_261730();
  v13 = sub_261730();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v17 = sub_261730();
  v68 = *(v17 - 8);
  v18 = *(v68 + 64);
  __chkstk_darwin(v17);
  v65 = &v56 - v19;
  *&v20 = COERCE_DOUBLE(sub_261730());
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  __chkstk_darwin(v20);
  v66 = &v56 - v22;
  v87 = a5;
  v88 = &protocol witness table for _FrameLayout;
  v56 = a5;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v85 = WitnessTable;
  v86 = v24;
  v83 = swift_getWitnessTable();
  v84 = &protocol witness table for _ShadowEffect;
  v58 = swift_getWitnessTable();
  v81 = v58;
  v82 = &protocol witness table for _ScaleEffect;
  v59 = swift_getWitnessTable();
  v79 = v59;
  v80 = &protocol witness table for _FrameLayout;
  v62 = v20;
  v25 = swift_getWitnessTable();
  v61 = v25;
  v60 = sub_6EBA4();
  v89 = *&v20;
  v90 = &type metadata for CGFloat;
  v91 = v25;
  v92 = v60;
  v63 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v64 + 64);
  v28 = __chkstk_darwin(OpaqueTypeMetadata2);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v56 - v31;
  v89 = v12;
  v90 = v78;
  v91 = a5;
  v92 = v77;
  type metadata accessor for SharableAsset();
  v33 = *(v70 + 40);
  v34 = *(v70 + 48);
  if (*(v70 + 56))
  {
    v35 = *(v70 + 40);
  }

  v36 = v70;
  v37 = v69;
  v38 = v72;
  sub_BC7D4(v70, v69, v16);
  v39 = fmin(a8 / *(v36 + 40), 1.0);
  sub_263710();
  v40 = v65;
  sub_262AC0();
  (*(v67 + 8))(v16, v13);
  sub_263560();
  v41 = v66;
  sub_262DA0();
  (*(v68 + 8))(v40, v17);
  v89 = a8;
  v42 = v74;
  v43 = v73;
  v44 = v37;
  (*(v74 + 16))(v73, v38, v37);
  v45 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v46 = (v75 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v78;
  *(v47 + 2) = v57;
  *(v47 + 3) = v48;
  v49 = v77;
  *(v47 + 4) = v56;
  *(v47 + 5) = v49;
  (*(v42 + 32))(&v47[v45], v43, v44);
  *&v47[v46] = a8;
  v50 = *&v62;
  v51 = v61;
  v52 = v60;
  sub_262E60();

  (*(v71 + 8))(v41, COERCE_DOUBLE(*&v50));
  v89 = v50;
  v90 = &type metadata for CGFloat;
  v91 = v51;
  v92 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1609C(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v54 = *(v64 + 8);
  v54(v30, OpaqueTypeMetadata2);
  sub_1609C(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v54)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_BC7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a1;
  v52 = a3;
  v45 = sub_2617E0();
  v6 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = sub_261730();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v10);
  v42 = &v41 - v12;
  sub_2F9C(&qword_317DA8, &qword_26C1B0);
  v47 = sub_261730();
  v50 = *(v47 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v47);
  v43 = &v41 - v14;
  v15 = sub_261730();
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  v17 = __chkstk_darwin(v15);
  v46 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v48 = &v41 - v19;
  v20 = *(a2 + 24);
  v60 = v9;
  v61 = v20;
  v53 = *(a2 + 32);
  v62 = v53;
  v21 = *(type metadata accessor for SharableAsset() + 52);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_262DA0();
  v22 = *(v4 + *(a2 + 72));
  v23 = *(v45 + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_261DD0();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  *v8 = v22;
  *(v8 + 1) = v22;
  v58 = v53;
  v59 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  sub_C26FC(&qword_31BF78, &type metadata accessor for RoundedRectangle);
  v27 = v43;
  v28 = v42;
  sub_262E90();
  sub_C2968(v8, &type metadata accessor for RoundedRectangle);
  (*(v49 + 8))(v28, v10);
  v29 = *(v4 + *(a2 + 84));
  v30 = *(v4 + *(a2 + 76));
  v31 = *(v4 + *(a2 + 64));
  v32 = *(v4 + *(a2 + 68));
  v33 = sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
  v56 = WitnessTable;
  v57 = v33;
  v34 = v47;
  v35 = swift_getWitnessTable();
  v36 = v46;
  sub_262DD0();
  (*(v50 + 8))(v27, v34);
  v54 = v35;
  v55 = &protocol witness table for _ShadowEffect;
  v37 = swift_getWitnessTable();
  v38 = v48;
  sub_1609C(v36, v15, v37);
  v39 = *(v51 + 8);
  v39(v36, v15);
  sub_1609C(v38, v15, v37);
  return (v39)(v38, v15);
}

uint64_t sub_BCD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v10 = type metadata accessor for SharableAsset();
  v11 = sub_264A60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v20 = type metadata accessor for SummaryFrame();
  v27 = *(a1 + *(v20 + 60));
  sub_2646F0();
  swift_getWitnessTable();
  sub_264880();
  v21 = *(v10 - 8);
  if ((*(v21 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v22 = sub_2601E0();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  }

  else
  {
    v23 = *(v10 + 60);
    v24 = sub_2601E0();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v19, &v15[v23], v24);
    (*(v21 + 8))(v15, v10);
    (*(v25 + 56))(v19, 0, 1, v24);
  }

  return sub_B536C(v19, v20);
}

uint64_t sub_BD048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v46 = a6;
  v48 = a2;
  v49 = a3;
  v41 = a2;
  v42 = a3;
  v50 = a4;
  v51 = a5;
  v43 = a4;
  v44 = a5;
  v13 = type metadata accessor for SummaryFrame();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v45 = type metadata accessor for SharableAsset();
  v18 = sub_2646F0();
  v19 = sub_2601E0();
  v40[3] = v19;
  v20 = sub_2F9C(&qword_31BBB0, &qword_271AD0);
  v40[2] = v20;
  v21 = v18;
  v40[0] = v18;
  WitnessTable = swift_getWitnessTable();
  v40[1] = WitnessTable;
  v23 = sub_C26FC(qword_318EE0, &type metadata accessor for UUID);
  v48 = v21;
  v49 = v19;
  v50 = v20;
  v51 = WitnessTable;
  v52 = v23;
  v24 = sub_2633D0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = v40 - v30;
  v48 = *(a1 + *(v13 + 60));
  (*(v14 + 16))(v17, a1, v13);
  v32 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v33 = swift_allocObject();
  v34 = v42;
  *(v33 + 16) = v41;
  *(v33 + 24) = v34;
  v35 = v44;
  *(v33 + 32) = v43;
  *(v33 + 40) = v35;
  *(v33 + 48) = a7;
  (*(v14 + 32))(v33 + v32, v17, v13);
  v36 = sub_BE388();

  swift_getWitnessTable();
  sub_2633C0();
  v47 = v36;
  v37 = swift_getWitnessTable();
  sub_1609C(v29, v24, v37);
  v38 = *(v25 + 8);
  v38(v29, v24);
  sub_1609C(v31, v24, v37);
  return (v38)(v31, v24);
}

uint64_t sub_BD3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v44 = a6;
  v43 = a5;
  v47 = a2;
  v45 = a1;
  v46 = a7;
  v9 = sub_2601E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_31BF68, &qword_2721C0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  v18 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v48 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v54 = v59;
  v55 = a3;
  v53 = v60;
  v52 = v61;
  v51 = v62;
  v49 = v64;
  v50 = v63;
  v27 = v43;
  v56 = a4;
  v57 = v43;
  v28 = v44;
  v58 = v44;
  v29 = type metadata accessor for SharableAsset();
  (*(v10 + 16))(v26, v45 + *(v29 + 60), v9);
  (*(v10 + 56))(v26, 0, 1, v9);
  v55 = a3;
  v56 = a4;
  v30 = v10;
  v57 = v27;
  v58 = v28;
  LODWORD(v27) = *(type metadata accessor for SummaryFrame() + 92);
  sub_2EF0(qword_31BDE8, &qword_271EC8);
  sub_2631E0();
  v31 = *(v14 + 56);
  sub_8198(v26, v17, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v24, &v17[v31], &qword_31A0C8, &qword_26E2C0);
  v32 = *(v10 + 48);
  if (v32(v17, 1, v9) == 1)
  {
    sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v26, &qword_31A0C8, &qword_26E2C0);
    if (v32(&v17[v31], 1, v9) == 1)
    {
      sub_8E80(v17, &qword_31A0C8, &qword_26E2C0);
LABEL_9:
      result = sub_262F80();
      v33 = result;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_8198(v17, v48, &qword_31A0C8, &qword_26E2C0);
  if (v32(&v17[v31], 1, v9) == 1)
  {
    sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
    sub_8E80(v26, &qword_31A0C8, &qword_26E2C0);
    (*(v10 + 8))(v48, v9);
LABEL_6:
    sub_8E80(v17, &qword_31BF68, &qword_2721C0);
    goto LABEL_7;
  }

  v35 = &v17[v31];
  v36 = v42;
  (*(v10 + 32))(v42, v35, v9);
  sub_C26FC(&qword_31AD38, &type metadata accessor for UUID);
  v37 = v48;
  v38 = sub_264390();
  v39 = *(v30 + 8);
  v39(v36, v9);
  sub_8E80(v24, &qword_31A0C8, &qword_26E2C0);
  sub_8E80(v26, &qword_31A0C8, &qword_26E2C0);
  v39(v37, v9);
  sub_8E80(v17, &qword_31A0C8, &qword_26E2C0);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_262F80();
  v33 = sub_263000();

LABEL_10:
  v40 = v46;
  *v46 = v54;
  *(v40 + 8) = v53;
  v40[2] = v52;
  *(v40 + 24) = v51;
  v41 = v49;
  v40[4] = v50;
  v40[5] = v41;
  v40[6] = v33;
  return result;
}

uint64_t sub_BD99C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = &_swiftEmptyArrayStorage;
  v6 = (&_swiftEmptyArrayStorage + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_32;
        }

        if (v3 >= v10)
        {
          goto LABEL_36;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = (v9 + (v11 << 7));
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[5];
        v41 = v12[4];
        v42 = v15;
        v39 = v13;
        v40 = v14;
        v16 = v12[6];
        v17 = v12[7];
        v18 = v12[9];
        v45 = v12[8];
        v46 = v18;
        v43 = v16;
        v44 = v17;
        if (v2)
        {
          result = sub_5757C(&v39, v38);
          v19 = v5;
          v20 = __OFSUB__(v2--, 1);
          if (v20)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v21 = v5[3];
          if (((v21 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_39;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (v22 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v22;
          }

          sub_2EF0(&qword_317290, &qword_2697F0);
          v19 = swift_allocObject();
          v24 = j__malloc_size(v19);
          v25 = v24 - 32;
          if (v24 < 32)
          {
            v25 = v24 + 95;
          }

          v26 = v25 >> 7;
          v19[2] = v23;
          v19[3] = 2 * v26;
          v27 = v5[3] >> 1;
          v6 = &v19[16 * v27 + 4];
          v28 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v27;
          if (v5[2])
          {
            if (v19 >= v5 && v19 + 4 < &v5[16 * v27 + 4] && v19 == v5)
            {
              sub_5757C(&v39, v38);
            }

            else
            {
              sub_5757C(&v39, v38);
              memmove(v19 + 4, v5 + 4, v27 << 7);
            }

            v5[2] = 0;
          }

          else
          {
            sub_5757C(&v39, v38);
          }

          v20 = __OFSUB__(v28, 1);
          v2 = v28 - 1;
          if (v20)
          {
            goto LABEL_38;
          }
        }

        ++v11;
        v29 = v39;
        v30 = v40;
        v31 = v42;
        v6[2] = v41;
        v6[3] = v31;
        *v6 = v29;
        v6[1] = v30;
        v32 = v43;
        v33 = v44;
        v34 = v46;
        v6[6] = v45;
        v6[7] = v34;
        v6[4] = v32;
        v6[5] = v33;
        v6 += 8;
        v5 = v19;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_32:

  v35 = v5[3];
  if (v35 < 2)
  {
    return v5;
  }

  v36 = v35 >> 1;
  v20 = __OFSUB__(v36, v2);
  v37 = v36 - v2;
  if (!v20)
  {
    v5[2] = v37;
    return v5;
  }

LABEL_40:
  __break(1u);
  return result;
}