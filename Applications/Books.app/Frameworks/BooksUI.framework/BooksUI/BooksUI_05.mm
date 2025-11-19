BOOL sub_851E4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25[15] = *(v0 + 63);
  v6 = v0[3];
  v24[2] = v0[2];
  *v25 = v6;
  v7 = v0[1];
  v24[0] = *v0;
  v24[1] = v7;
  if (v25[18])
  {
    v8 = v0[3];
    v21 = v0[2];
    v22 = v8;
    v23 = *(v0 + 32);
    v9 = v0[1];
    v19 = *v0;
    v20 = v9;
    v17 = v21;
    v18[0] = v8;
    *(v18 + 15) = *(v0 + 63);
    v15 = v19;
    v16 = v9;
    sub_8198(&v15, &v14, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v24, &qword_317F40, &qword_26E9D0);
    (*(v2 + 8))(v5, v1);
  }

  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18[0] = v22;
  LOWORD(v18[1]) = v23;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  v11 = v16;
  sub_8E80(&v15, &qword_317F48, &qword_26A9A0);
  return v11 < 2;
}

uint64_t PricePillView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_263EB0();
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v98 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_263EE0();
  v99 = *(v101 - 8);
  v7 = *(v99 + 64);
  __chkstk_darwin(v101);
  v97 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_31A5C0, &qword_26F5E0);
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  __chkstk_darwin(v9);
  v88 = &v85 - v11;
  v87 = sub_2EF0(&qword_31A5C8, &qword_26F5E8);
  v12 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v92 = &v85 - v13;
  v91 = sub_2EF0(&qword_31A5D0, &qword_26F5F0);
  v14 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v93 = &v85 - v15;
  v95 = sub_2EF0(&qword_31A5D8, &qword_26F5F8);
  v16 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v85 - v17;
  v18 = sub_2EF0(&qword_31A5E0, &qword_26F600);
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  __chkstk_darwin(v18);
  v94 = &v85 - v20;
  v21 = sub_2EF0(&qword_31A5E8, &qword_26F608);
  v105 = *(v21 - 8);
  v106 = v21;
  v22 = *(v105 + 64);
  __chkstk_darwin(v21);
  v102 = &v85 - v23;
  v24 = sub_261C90();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v127[15] = *(v2 + 63);
  LODWORD(v27) = *&v127[15];
  v29 = *(v2 + 48);
  v126[2] = *(v2 + 32);
  *v127 = v29;
  v30 = *(v2 + 16);
  v126[0] = *v2;
  v126[1] = v30;
  if ((v27 & 0x1000000) != 0)
  {
    v31 = *(v2 + 48);
    v123 = *(v2 + 32);
    v124 = v31;
    v125 = *(v2 + 64);
    v32 = *(v2 + 16);
    v121 = *v2;
    v122 = v32;
    v117 = v123;
    v118[0] = v31;
    *(v118 + 15) = *(v2 + 63);
    v115 = v121;
    v116 = v32;
    sub_8198(&v115, &v109, &qword_317F48, &qword_26A9A0);
  }

  else
  {

    sub_264900();
    v33 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(v126, &qword_317F40, &qword_26E9D0);
    (*(v25 + 8))(v28, v24);
  }

  v119[0] = v121;
  v119[1] = v122;
  v119[2] = v123;
  v119[3] = v124;
  v120 = v125;
  if (*(&v121 + 1))
  {
    sub_8E80(v119, &qword_317F48, &qword_26A9A0);
    v34 = type metadata accessor for PricePillView();
    v35 = (v2 + *(v34 + 24));
    v36 = v35[4];
    sub_2E18(v35, v35[3]);
    v37 = sub_260920();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      if (!sub_851E4())
      {
        v85 = v4;
        v86 = a1;
        *&v115 = v39;
        *(&v115 + 1) = v40;
        sub_10A84();
        v43 = sub_2628F0();
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v50 = sub_2624F0();
        sub_2610C0();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v59 = v47 & 1;
        LOBYTE(v115) = v47 & 1;
        LOBYTE(v109) = 0;
        v60 = sub_2626F0();
        KeyPath = swift_getKeyPath();
        *&v109 = v43;
        *(&v109 + 1) = v45;
        LOBYTE(v110) = v59;
        *(&v110 + 1) = v49;
        LOBYTE(v111) = v50;
        *(&v111 + 1) = v52;
        *&v112 = v54;
        *(&v112 + 1) = v56;
        *&v113 = v58;
        BYTE8(v113) = 0;
        *&v114 = KeyPath;
        *(&v114 + 1) = v60;
        sub_2EF0(&qword_31A5F0, &qword_26F640);
        sub_86364();
        v62 = v88;
        sub_262D70();
        v117 = v111;
        v118[0] = v112;
        v118[1] = v113;
        v118[2] = v114;
        v115 = v109;
        v116 = v110;
        sub_8E80(&v115, &qword_31A5F0, &qword_26F640);
        v63 = v35[4];
        sub_2E18(v35, v35[3]);
        if (sub_260880())
        {
          v64 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
        }

        else
        {
          v64 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
        }

        v65 = v64;
        v66 = v85;
        a1 = v86;
        v67 = v92;
        (*(v89 + 32))(v92, v62, v90);
        *(v67 + *(v87 + 36)) = v65;
        v68 = *(v34 + 20);
        sub_2EF0(&qword_318288, &unk_27F080);
        sub_261300();
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v69 = v93;
        sub_22148(v67, v93, &qword_31A5C8, &qword_26F5E8);
        v70 = (v69 + *(v91 + 36));
        v71 = v110;
        *v70 = v109;
        v70[1] = v71;
        v70[2] = v111;
        v72 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        v74 = v73;
        v75 = v96;
        v76 = &v96[*(v95 + 36)];
        sub_85E00(v2, v76);
        v77 = (v76 + *(sub_2EF0(&qword_31A610, &qword_26F650) + 36));
        *v77 = v72;
        v77[1] = v74;
        sub_22148(v69, v75, &qword_31A5D0, &qword_26F5F0);
        v78 = v100;
        v79 = v98;
        (*(v100 + 104))(v98, enum case for AutomationSemantics.Subcomponent.tagline(_:), v66);
        memset(v108, 0, sizeof(v108));
        memset(v107, 0, sizeof(v107));
        v80 = v97;
        sub_263EC0();
        sub_8E80(v107, &qword_316200, &qword_267FD0);
        sub_8E80(v108, &qword_316200, &qword_267FD0);
        (*(v78 + 8))(v79, v66);
        sub_864A0();
        v81 = v94;
        sub_262930();
        (*(v99 + 8))(v80, v101);
        sub_866D8(v75);
        v41 = v102;
        v82 = v103;
        v83 = v104;
        (*(v103 + 32))(v102, v81, v104);
        (*(v82 + 56))(v41, 0, 1, v83);
        goto LABEL_14;
      }
    }

    v41 = v102;
    (*(v103 + 56))(v102, 1, 1, v104);
LABEL_14:
    sub_22148(v41, a1, &qword_31A5E8, &qword_26F608);
    v42 = 0;
    return (*(v105 + 56))(a1, v42, 1, v106);
  }

  v42 = 1;
  return (*(v105 + 56))(a1, v42, 1, v106);
}

uint64_t type metadata accessor for PricePillView()
{
  result = qword_31A690;
  if (!qword_31A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_85E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_261DD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_263390();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v52 = sub_2EF0(&qword_31A6F8, &qword_26F6D0);
  v18 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v20 = &v49 - v19;
  v21 = *(v4 + 104);
  v54 = v3;
  v51 = v21;
  v21(v11, enum case for RoundedCornerStyle.continuous(_:), v3);
  v22 = (a1 + *(type metadata accessor for PricePillView() + 24));
  v23 = v22[4];
  sub_2E18(v22, v22[3]);
  if (sub_260880())
  {
    v24 = sub_262FD0();
  }

  else
  {
    v24 = sub_262FA0();
  }

  v25 = v24;
  sub_86B68(v11, v17);
  *&v17[*(v12 + 52)] = v25;
  *&v17[*(v12 + 56)] = 256;
  v26 = v22[4];
  sub_2E18(v22, v22[3]);
  if (sub_260880())
  {
    v27 = sub_262FA0();
  }

  else
  {
    v27 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v50 = v27;
  sub_261240();
  v28 = v53;
  sub_8198(v17, v53, &qword_31A6F0, &qword_26F6C8);
  sub_86BCC(v17, v20);
  v29 = v54;
  v51(v7, enum case for RoundedCornerStyle.circular(_:), v54);
  v30 = sub_261DC0();
  (*(v4 + 8))(v7, v29);
  v31 = v56;
  v32 = v58;
  v33 = COERCE_UNSIGNED_INT64(v56 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v30 & 1) == 0);
  v51 = v59;
  v34 = v60;
  v35 = *(v52 + 68);
  v54 = v20;
  v36 = &v20[v35];
  v37 = &v36[*(sub_2EF0(&qword_31A700, &qword_26F6D8) + 36)];
  sub_8198(v28, v37, &qword_31A6F0, &qword_26F6C8);
  v38 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v40 = v39;
  sub_8E80(v28, &qword_31A6F0, &qword_26F6C8);
  sub_8E80(v17, &qword_31A6F0, &qword_26F6C8);
  v41 = (v37 + *(sub_2EF0(&qword_31A708, &qword_26F6E0) + 36));
  *v41 = v38;
  v41[1] = v40;
  *v36 = v33;
  v42 = v57;
  *(v36 + 1) = v31;
  *(v36 + 2) = v42;
  *(v36 + 3) = v32;
  v43 = v50;
  *(v36 + 4) = v51;
  *(v36 + 5) = v34;
  *(v36 + 6) = v43;
  *(v36 + 28) = 256;
  v44 = v22[4];
  sub_2E18(v22, v22[3]);
  if (sub_260880())
  {
    v45 = sub_262FA0();
  }

  else
  {
    v45 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v46 = v45;
  v47 = v55;
  sub_22148(v54, v55, &qword_31A6F8, &qword_26F6D0);
  result = sub_2EF0(&qword_31A710, &qword_26F6E8);
  *(v47 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_862B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C00();
  *a1 = result;
  return result;
}

uint64_t sub_862E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261C00();
  *a1 = result;
  return result;
}

uint64_t sub_8630C(uint64_t *a1)
{
  v1 = *a1;

  return sub_261C10();
}

uint64_t sub_86338(uint64_t *a1)
{
  v1 = *a1;

  return sub_261C10();
}

unint64_t sub_86364()
{
  result = qword_31A5F8;
  if (!qword_31A5F8)
  {
    sub_2F9C(&qword_31A5F0, &qword_26F640);
    sub_8641C();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A5F8);
  }

  return result;
}

unint64_t sub_8641C()
{
  result = qword_31A600;
  if (!qword_31A600)
  {
    sub_2F9C(&qword_31A608, &qword_26F648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A600);
  }

  return result;
}

unint64_t sub_864A0()
{
  result = qword_31A618;
  if (!qword_31A618)
  {
    sub_2F9C(&qword_31A5D8, &qword_26F5F8);
    sub_86558();
    sub_8E38(&qword_31A630, &qword_31A610, &qword_26F650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A618);
  }

  return result;
}

unint64_t sub_86558()
{
  result = qword_31A620;
  if (!qword_31A620)
  {
    sub_2F9C(&qword_31A5D0, &qword_26F5F0);
    sub_865E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A620);
  }

  return result;
}

unint64_t sub_865E4()
{
  result = qword_31A628;
  if (!qword_31A628)
  {
    sub_2F9C(&qword_31A5C8, &qword_26F5E8);
    sub_2F9C(&qword_31A5F0, &qword_26F640);
    sub_86364();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317598, &qword_3175A0, &qword_269A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A628);
  }

  return result;
}

uint64_t sub_866D8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A5D8, &qword_26F5F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_86770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_318288, &unk_27F080);
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
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_86854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_318288, &unk_27F080);
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
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_86920()
{
  sub_869BC();
  if (v0 <= 0x3F)
  {
    sub_4BCBC();
    if (v1 <= 0x3F)
    {
      sub_44744();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_869BC()
{
  if (!qword_31A6A0)
  {
    sub_2F9C(&qword_317F48, &qword_26A9A0);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_31A6A0);
    }
  }
}

unint64_t sub_86A24()
{
  result = qword_31A6D8;
  if (!qword_31A6D8)
  {
    sub_2F9C(&qword_31A6E0, &qword_26F6C0);
    sub_86AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A6D8);
  }

  return result;
}

unint64_t sub_86AA8()
{
  result = qword_31A6E8;
  if (!qword_31A6E8)
  {
    sub_2F9C(&qword_31A5E8, &qword_26F608);
    sub_2F9C(&qword_31A5D8, &qword_26F5F8);
    sub_864A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A6E8);
  }

  return result;
}

uint64_t sub_86B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_263390();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_86BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_263390();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_86C30(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  a2(a1);
  sub_8198(v10, v8, &qword_31AA70, &qword_26FB70);
  sub_932E4();
  v11 = sub_263310();
  sub_8E80(v10, &qword_31AA70, &qword_26FB70);
  return v11;
}

uint64_t sub_86D44(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v11 = sub_2EF0(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  a2(a1);
  v18 = sub_8198(v17, v15, a4, a5);
  a6(v18);
  v19 = sub_263310();
  sub_8E80(v17, a4, a5);
  return v19;
}

uint64_t sub_86E60(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_2EF0(&qword_31AB90, &qword_26FCF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  a2(a1);
  (*(v5 + 16))(v9, v11, v4);
  v12 = sub_2F9C(&qword_31AB98, &qword_26FD00);
  v13 = sub_261FA0();
  v14 = sub_2F9C(&qword_31ABA0, &qword_26FD08);
  v15 = sub_8E38(&qword_31ABA8, &qword_31ABA0, &qword_26FD08);
  v16 = sub_93AC0();
  v21 = v14;
  v22 = &type metadata for PressedButtonStyle;
  v23 = v15;
  v24 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v21 = v12;
  v22 = v13;
  v23 = OpaqueTypeConformance2;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_263310();
  (*(v5 + 8))(v11, v4);
  return v19;
}

uint64_t sub_870B8()
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

uint64_t sub_87200@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v11, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_873EC@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v12 + 24), v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v11, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_875D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C08, &unk_26AEF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v12 + 28), v11, &qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_93094(v11, a1, type metadata accessor for FontConstants);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_877C4@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v12 + 32), v11, &qword_3179C0, &qword_269D60);
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

uint64_t sub_879CC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for TopLockupMetadataView(0) + 36);
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

uint64_t sub_87B24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C18, &unk_26F830);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TopLockupMetadataView(0);
  sub_8198(v1 + *(v12 + 40), v11, &qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2616C0();
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

uint64_t TopLockupMetadataView.init(preheader:title:subtitle:author:authorAction:authorImpressionMetrics:narrator:footer:isVibrant:highlightAttributionViewLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v17 = type metadata accessor for TopLockupMetadataView(0);
  v18 = v17[5];
  *(a9 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v19 = v17[6];
  *(a9 + v19) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v20 = v17[7];
  *(a9 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v21 = v17[8];
  *(a9 + v21) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v17[9];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v17[10];
  *(a9 + v23) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_8198(a1, a9 + v17[12], &qword_319B18, &qword_26DA40);
  sub_8198(a2, a9 + v17[13], &qword_319B18, &qword_26DA40);
  sub_8198(a3, a9 + v17[14], &qword_319B18, &qword_26DA40);
  sub_8198(a4, a9 + v17[15], &qword_319B18, &qword_26DA40);
  sub_8198(a5, a9 + v17[16], &qword_316BA0, &unk_268B90);
  sub_8198(a6, a9 + v17[17], &qword_315D48, &qword_266E40);
  sub_8198(a7, a9 + v17[18], &qword_31A718, &qword_26F840);
  sub_8198(a8, a9 + v17[19], &qword_31A720, &qword_26F848);
  *(a9 + v17[20]) = a10;
  type metadata accessor for HighlightAttributionViewLoader();
  sub_2631D0();
  sub_8E80(a8, &qword_31A720, &qword_26F848);
  sub_8E80(a7, &qword_31A718, &qword_26F840);
  sub_8E80(a6, &qword_315D48, &qword_266E40);
  sub_8E80(a5, &qword_316BA0, &unk_268B90);
  sub_8E80(a4, &qword_319B18, &qword_26DA40);
  sub_8E80(a3, &qword_319B18, &qword_26DA40);
  sub_8E80(a2, &qword_319B18, &qword_26DA40);
  result = sub_8E80(a1, &qword_319B18, &qword_26DA40);
  v25 = (a9 + v17[11]);
  *v25 = v33;
  v25[1] = v34;
  return result;
}

uint64_t TopLockupMetadataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A728, &qword_26F850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_2EF0(&qword_31A730, &qword_26F858);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  if (sub_870B8())
  {
    v11 = sub_261E50();
  }

  else
  {
    v11 = sub_261E60();
  }

  *v6 = v11;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v12 = sub_2EF0(&qword_31A738, &qword_26F860);
  sub_88280(v1, &v6[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_22148(v6, v10, &qword_31A728, &qword_26F850);
  v14 = &v10[*(v7 + 36)];
  *v14 = KeyPath;
  *(v14 + 1) = 6;
  v14[16] = 0;
  v15 = sub_870B8() & 1;
  v16 = swift_getKeyPath();
  sub_22148(v10, a1, &qword_31A730, &qword_26F858);
  result = sub_2EF0(&qword_31A740, &unk_26F8C8);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v15;
  return result;
}

uint64_t sub_88280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v337 = a2;
  v330 = sub_2EF0(&qword_31A918, &qword_26F990);
  v3 = *(*(v330 - 8) + 64);
  __chkstk_darwin(v330);
  v348 = &v303 - v4;
  v331 = sub_2EF0(&qword_31A920, &qword_26F998);
  v5 = *(*(v331 - 8) + 64);
  __chkstk_darwin(v331);
  v333 = &v303 - v6;
  v332 = sub_2EF0(&qword_31A928, &qword_26F9A0);
  v7 = *(*(v332 - 8) + 64);
  __chkstk_darwin(v332);
  v336 = &v303 - v8;
  v335 = sub_2EF0(&qword_31A930, &qword_26F9A8);
  v9 = *(*(v335 - 8) + 64);
  v10 = __chkstk_darwin(v335);
  v338 = &v303 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v334 = &v303 - v13;
  __chkstk_darwin(v12);
  v362 = &v303 - v14;
  v323 = sub_2EF0(&qword_31A938, &qword_26F9B0);
  v15 = *(*(v323 - 8) + 64);
  __chkstk_darwin(v323);
  v344 = &v303 - v16;
  v324 = sub_2EF0(&qword_31A940, &qword_26F9B8);
  v17 = *(*(v324 - 8) + 64);
  __chkstk_darwin(v324);
  v326 = &v303 - v18;
  v325 = sub_2EF0(&qword_31A948, &qword_26F9C0);
  v19 = *(*(v325 - 8) + 64);
  __chkstk_darwin(v325);
  v345 = &v303 - v20;
  v328 = sub_2EF0(&qword_31A950, &unk_26F9C8);
  v21 = *(*(v328 - 8) + 64);
  v22 = __chkstk_darwin(v328);
  v351 = &v303 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v327 = &v303 - v25;
  __chkstk_darwin(v24);
  v361 = &v303 - v26;
  v27 = type metadata accessor for SizeConstants.Spacing(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v340 = &v303 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SizeConstants(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v339 = &v303 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_263640();
  v364 = *(v367 - 8);
  v33 = *(v364 + 64);
  v34 = __chkstk_darwin(v367);
  v329 = &v303 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v322 = &v303 - v37;
  v38 = __chkstk_darwin(v36);
  v321 = &v303 - v39;
  v40 = __chkstk_darwin(v38);
  v318 = &v303 - v41;
  v42 = __chkstk_darwin(v40);
  v316 = &v303 - v43;
  __chkstk_darwin(v42);
  v311 = &v303 - v44;
  v45 = type metadata accessor for ColorConstants(0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v363 = &v303 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2EF0(&qword_318458, &unk_26B270);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v307 = &v303 - v50;
  v306 = sub_262730();
  v51 = *(v306 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v306);
  v304 = &v303 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for FontConstants(0);
  v55 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54 - 8);
  v57 = &v303 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TopLockupMetadataView(0);
  v368 = v58;
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v366 = sub_2EF0(&qword_31A958, &qword_26F9D8);
  v61 = *(*(v366 - 8) + 64);
  v62 = __chkstk_darwin(v366);
  v343 = &v303 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v315 = &v303 - v65;
  v66 = __chkstk_darwin(v64);
  v312 = &v303 - v67;
  __chkstk_darwin(v66);
  v69 = &v303 - v68;
  v342 = sub_2EF0(&qword_31A960, &qword_26F9E0);
  v70 = *(*(v342 - 8) + 64);
  v71 = __chkstk_darwin(v342);
  v319 = &v303 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v314 = &v303 - v74;
  v75 = __chkstk_darwin(v73);
  v310 = &v303 - v76;
  __chkstk_darwin(v75);
  v308 = &v303 - v77;
  v365 = sub_2EF0(&qword_31A968, &qword_26F9E8);
  v78 = *(*(v365 - 8) + 64);
  v79 = __chkstk_darwin(v365);
  v350 = &v303 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v79);
  v349 = &v303 - v82;
  v83 = __chkstk_darwin(v81);
  v320 = &v303 - v84;
  v85 = __chkstk_darwin(v83);
  v313 = &v303 - v86;
  v87 = __chkstk_darwin(v85);
  v360 = &v303 - v88;
  v89 = __chkstk_darwin(v87);
  v309 = &v303 - v90;
  v91 = __chkstk_darwin(v89);
  v359 = &v303 - v92;
  __chkstk_darwin(v91);
  v305 = &v303 - v93;
  v341 = sub_2EF0(&qword_31A970, &unk_26F9F0);
  v94 = *(*(v341 - 8) + 64);
  v95 = __chkstk_darwin(v341);
  v346 = &v303 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __chkstk_darwin(v95);
  v347 = &v303 - v98;
  v99 = __chkstk_darwin(v97);
  v317 = &v303 - v100;
  v101 = __chkstk_darwin(v99);
  v357 = &v303 - v102;
  v103 = __chkstk_darwin(v101);
  v303 = &v303 - v104;
  __chkstk_darwin(v103);
  v358 = &v303 - v105;
  sub_8198(a1 + *(v58 + 48), v69, &qword_319B18, &qword_26DA40);
  sub_927C4(a1, &v303 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = *(v59 + 80);
  v107 = (v106 + 16) & ~v106;
  v355 = v60;
  v353 = v106;
  v108 = swift_allocObject();
  v354 = v107;
  v356 = &v303 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_93094(v356, v108 + v107, type metadata accessor for TopLockupMetadataView);
  v109 = swift_allocObject();
  *(v109 + 16) = sub_9282C;
  *(v109 + 24) = v108;
  v352 = sub_2EF0(&qword_319B20, &unk_26DA48);
  v110 = &v69[*(v352 + 28)];
  *v110 = sub_9287C;
  v110[1] = v109;
  v111 = v57;
  sub_875D8(v57);
  v112 = v304;
  v113 = v306;
  (*(v51 + 104))(v304, enum case for Font.TextStyle.caption(_:), v306);
  v114 = enum case for Font.Design.rounded(_:);
  v115 = sub_2625C0();
  v116 = *(v115 - 8);
  v117 = v307;
  (*(v116 + 104))(v307, v114, v115);
  (*(v116 + 56))(v117, 0, 1, v115);
  sub_262650();
  v118 = sub_262680();
  v119 = v117;
  v120 = a1;
  sub_8E80(v119, &qword_318458, &unk_26B270);
  v121 = v112;
  v122 = v111;
  (*(v51 + 8))(v121, v113);
  sub_9315C(v111, type metadata accessor for FontConstants);
  KeyPath = swift_getKeyPath();
  v124 = &v69[*(v366 + 36)];
  *v124 = KeyPath;
  v124[1] = v118;
  v125 = *(a1 + v368[20]);
  v126 = v363;
  if (v125 == 1)
  {
    sub_873EC(v363);
    v127 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v126, type metadata accessor for ColorConstants);
  }

  else
  {
    v127 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v128 = swift_getKeyPath();
  v129 = v308;
  sub_22148(v69, v308, &qword_31A958, &qword_26F9D8);
  v130 = v342;
  v131 = (v129 + *(v342 + 36));
  *v131 = v128;
  v131[1] = v127;
  v132 = v367;
  if (v125)
  {
    v133 = v311;
    sub_877C4(v311);
    v134 = v133;
    v132 = v367;
    v135 = v364;
  }

  else
  {
    v135 = v364;
    v134 = v311;
    (*(v364 + 104))(v311, enum case for BlendMode.normal(_:), v367);
  }

  v136 = *(v135 + 32);
  v137 = v305;
  v136(&v305[*(v365 + 36)], v134, v132);
  sub_22148(v129, v137, &qword_31A960, &qword_26F9E0);
  v138 = sub_262520();
  sub_2610C0();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = v303;
  sub_22148(v137, v303, &qword_31A968, &qword_26F9E8);
  v148 = v147 + *(v341 + 36);
  *v148 = v138;
  *(v148 + 8) = v140;
  *(v148 + 16) = v142;
  *(v148 + 24) = v144;
  *(v148 + 32) = v146;
  *(v148 + 40) = 0;
  sub_22148(v147, v358, &qword_31A970, &unk_26F9F0);
  v149 = v312;
  sub_8198(v120 + v368[13], v312, &qword_319B18, &qword_26DA40);
  v150 = (v149 + *(v352 + 28));
  *v150 = sub_727E0;
  v150[1] = 0;
  sub_875D8(v122);
  v151 = sub_8B8EC();
  sub_9315C(v122, type metadata accessor for FontConstants);
  v152 = swift_getKeyPath();
  v153 = (v149 + *(v366 + 36));
  *v153 = v152;
  v153[1] = v151;
  if (v125)
  {
    v154 = v363;
    sub_873EC(v363);
    v155 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v154, type metadata accessor for ColorConstants);
  }

  else
  {
    v155 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v156 = v316;
  v157 = swift_getKeyPath();
  v158 = v149;
  v159 = v310;
  sub_22148(v158, v310, &qword_31A958, &qword_26F9D8);
  v160 = (v159 + *(v130 + 36));
  *v160 = v157;
  v160[1] = v155;
  if (v125)
  {
    sub_877C4(v156);
    v161 = v367;
  }

  else
  {
    v161 = v367;
    (*(v364 + 104))(v156, enum case for BlendMode.normal(_:), v367);
  }

  v162 = v309;
  v136(&v309[*(v365 + 36)], v156, v161);
  sub_22148(v159, v162, &qword_31A960, &qword_26F9E0);
  sub_22148(v162, v359, &qword_31A968, &qword_26F9E8);
  v163 = v315;
  sub_8198(v120 + v368[14], v315, &qword_319B18, &qword_26DA40);
  v164 = (v163 + *(v352 + 28));
  *v164 = sub_727E0;
  v164[1] = 0;
  sub_875D8(v122);
  v165 = sub_8BAFC();
  sub_9315C(v122, type metadata accessor for FontConstants);
  v166 = swift_getKeyPath();
  v167 = (v163 + *(v366 + 36));
  *v167 = v166;
  v167[1] = v165;
  if (v125)
  {
    v168 = v363;
    sub_873EC(v363);
    v169 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v168, type metadata accessor for ColorConstants);
  }

  else
  {
    v169 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v170 = swift_getKeyPath();
  v171 = v163;
  v172 = v314;
  sub_22148(v171, v314, &qword_31A958, &qword_26F9D8);
  v173 = (v172 + *(v130 + 36));
  *v173 = v170;
  v173[1] = v169;
  v174 = v318;
  if (v125)
  {
    sub_877C4(v318);
    v175 = v367;
  }

  else
  {
    v175 = v367;
    (*(v364 + 104))(v318, enum case for BlendMode.normal(_:), v367);
  }

  v176 = v313;
  v177 = v136;
  v136(&v313[*(v365 + 36)], v174, v175);
  sub_22148(v172, v176, &qword_31A960, &qword_26F9E0);
  sub_22148(v176, v360, &qword_31A968, &qword_26F9E8);
  v178 = v343;
  sub_8198(v120 + v368[15], v343, &qword_319B18, &qword_26DA40);
  v179 = v356;
  sub_927C4(v120, v356);
  v180 = v354;
  v181 = swift_allocObject();
  sub_93094(v179, v181 + v180, type metadata accessor for TopLockupMetadataView);
  v182 = swift_allocObject();
  *(v182 + 16) = sub_92F88;
  *(v182 + 24) = v181;
  v183 = (v178 + *(v352 + 28));
  *v183 = sub_93034;
  v183[1] = v182;
  sub_875D8(v122);
  v184 = sub_8D448();
  sub_9315C(v122, type metadata accessor for FontConstants);
  v185 = swift_getKeyPath();
  v186 = (v178 + *(v366 + 36));
  *v186 = v185;
  v186[1] = v184;
  if (v125)
  {
    v187 = v363;
    sub_873EC(v363);
    v188 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v187, type metadata accessor for ColorConstants);
  }

  else
  {
    v188 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v189 = v320;
  v190 = swift_getKeyPath();
  v191 = v319;
  sub_22148(v343, v319, &qword_31A958, &qword_26F9D8);
  v192 = (v191 + *(v342 + 36));
  *v192 = v190;
  v192[1] = v188;
  v193 = v177;
  v194 = v321;
  if (v125)
  {
    sub_877C4(v321);
    v195 = v367;
  }

  else
  {
    v195 = v367;
    (*(v364 + 104))(v321, enum case for BlendMode.normal(_:), v367);
  }

  v177(v189 + *(v365 + 36), v194, v195);
  sub_22148(v191, v189, &qword_31A960, &qword_26F9E0);
  v196 = sub_262510();
  if (sub_870B8())
  {
    v197 = v339;
    sub_87200(v339);
    v198 = v340;
    sub_93094(v197, v340, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v198, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v200 = v199;
  v202 = v201;
  v204 = v203;
  v206 = v205;
  v207 = v317;
  sub_22148(v189, v317, &qword_31A968, &qword_26F9E8);
  v208 = v207 + *(v341 + 36);
  *v208 = v196;
  *(v208 + 8) = v200;
  *(v208 + 16) = v202;
  *(v208 + 24) = v204;
  *(v208 + 32) = v206;
  *(v208 + 40) = 0;
  sub_22148(v207, v357, &qword_31A970, &unk_26F9F0);
  v209 = v344;
  sub_8198(v120 + v368[18], v344, &qword_31A718, &qword_26F840);
  v210 = v356;
  sub_927C4(v120, v356);
  v211 = v354;
  v212 = swift_allocObject();
  sub_93094(v210, v212 + v211, type metadata accessor for TopLockupMetadataView);
  v213 = swift_allocObject();
  *(v213 + 16) = sub_93074;
  *(v213 + 24) = v212;
  v214 = (v209 + *(sub_2EF0(&qword_31A978, &qword_26FA60) + 28));
  *v214 = sub_9308C;
  v214[1] = v213;
  sub_875D8(v122);
  v215 = sub_8D448();
  sub_9315C(v122, type metadata accessor for FontConstants);
  v216 = swift_getKeyPath();
  v217 = (v209 + *(v323 + 36));
  *v217 = v216;
  v217[1] = v215;
  if (v125)
  {
    v218 = v363;
    sub_873EC(v363);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v219 = sub_263000();

    sub_9315C(v218, type metadata accessor for ColorConstants);
  }

  else
  {
    v219 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v220 = v326;
  v221 = swift_getKeyPath();
  sub_22148(v344, v220, &qword_31A938, &qword_26F9B0);
  v222 = (v220 + *(v324 + 36));
  *v222 = v221;
  v222[1] = v219;
  if (v125)
  {
    v223 = v322;
    sub_877C4(v322);
    v224 = v223;
    v225 = v367;
  }

  else
  {
    v224 = v322;
    v225 = v367;
    (*(v364 + 104))(v322, enum case for BlendMode.normal(_:), v367);
  }

  v226 = v345;
  v177(v345 + *(v325 + 36), v224, v225);
  sub_22148(v220, v226, &qword_31A940, &qword_26F9B8);
  v227 = sub_262510();
  if ((sub_870B8() & 1) == 0)
  {
    v228 = v339;
    sub_87200(v339);
    v229 = v340;
    sub_93094(v228, v340, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v229, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v231 = v230;
  v233 = v232;
  v235 = v234;
  v237 = v236;
  v238 = v327;
  sub_22148(v345, v327, &qword_31A948, &qword_26F9C0);
  v239 = v238 + *(v328 + 36);
  *v239 = v227;
  *(v239 + 8) = v231;
  *(v239 + 16) = v233;
  *(v239 + 24) = v235;
  *(v239 + 32) = v237;
  *(v239 + 40) = 0;
  sub_22148(v238, v361, &qword_31A950, &unk_26F9C8);
  v240 = v348;
  sub_8198(v120 + v368[19], v348, &qword_31A720, &qword_26F848);
  v241 = v356;
  sub_927C4(v120, v356);
  v242 = v354;
  v243 = swift_allocObject();
  sub_93094(v241, v243 + v242, type metadata accessor for TopLockupMetadataView);
  v244 = swift_allocObject();
  *(v244 + 16) = sub_930FC;
  *(v244 + 24) = v243;
  v245 = (v240 + *(sub_2EF0(&qword_31A980, &qword_26FA68) + 28));
  *v245 = sub_93114;
  v245[1] = v244;
  sub_875D8(v122);
  v246 = sub_8D448();
  sub_9315C(v122, type metadata accessor for FontConstants);
  v247 = swift_getKeyPath();
  v248 = (v240 + *(v330 + 36));
  *v248 = v247;
  v248[1] = v246;
  if (v125)
  {
    v249 = v363;
    sub_873EC(v363);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v250 = sub_263000();

    sub_9315C(v249, type metadata accessor for ColorConstants);
  }

  else
  {
    v250 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v251 = v336;
  v252 = v333;
  v253 = swift_getKeyPath();
  sub_22148(v348, v252, &qword_31A918, &qword_26F990);
  v254 = (v252 + *(v331 + 36));
  *v254 = v253;
  v254[1] = v250;
  v255 = v367;
  if (v125)
  {
    v256 = v329;
    sub_877C4(v329);
  }

  else
  {
    v256 = v329;
    (*(v364 + 104))(v329, enum case for BlendMode.normal(_:), v367);
  }

  v193(v251 + *(v332 + 36), v256, v255);
  sub_22148(v252, v251, &qword_31A920, &qword_26F998);
  v257 = sub_262510();
  if (sub_870B8())
  {
    v258 = v339;
    sub_87200(v339);
    v259 = v340;
    sub_93094(v258, v340, type metadata accessor for SizeConstants.Environment);
    sub_9315C(v259, type metadata accessor for SizeConstants.Spacing);
  }

  sub_2610C0();
  v261 = v260;
  v263 = v262;
  v265 = v264;
  v267 = v266;
  v268 = v334;
  sub_22148(v251, v334, &qword_31A928, &qword_26F9A0);
  v269 = v268 + *(v335 + 36);
  *v269 = v257;
  *(v269 + 8) = v261;
  *(v269 + 16) = v263;
  *(v269 + 24) = v265;
  *(v269 + 32) = v267;
  *(v269 + 40) = 0;
  sub_22148(v268, v362, &qword_31A930, &qword_26F9A8);
  v270 = (v120 + v368[11]);
  v272 = *v270;
  v271 = v270[1];
  v372 = v272;
  v373 = v271;
  sub_2EF0(&qword_31A988, &qword_26FA70);
  sub_2631E0();
  v273 = v369;
  swift_getKeyPath();
  v372 = v273;
  sub_947D8(&qword_31A990, type metadata accessor for HighlightAttributionViewLoader);
  sub_260380();

  v274 = *(v273 + 16);
  v275 = v274;

  v368 = v274;
  if (v274)
  {
    if (sub_870B8())
    {
      v276 = 2;
    }

    else
    {
      v276 = 1;
    }

    v277 = v275;
    v278 = sub_262510();
    if (sub_870B8())
    {
      v279 = v339;
      sub_87200(v339);
      v280 = v340;
      sub_93094(v279, v340, type metadata accessor for SizeConstants.Environment);
      sub_9315C(v280, type metadata accessor for SizeConstants.Spacing);
    }

    sub_2610C0();
    v282 = v281;
    v284 = v283;
    v286 = v285;
    v288 = v287;

    v367 = v278;
    v366 = v276;
  }

  else
  {
    v366 = 0;
    v367 = 0;
    v282 = 0;
    v284 = 0;
    v286 = 0;
    v288 = 0;
  }

  v289 = v347;
  sub_8198(v358, v347, &qword_31A970, &unk_26F9F0);
  v290 = v349;
  sub_8198(v359, v349, &qword_31A968, &qword_26F9E8);
  v291 = v350;
  sub_8198(v360, v350, &qword_31A968, &qword_26F9E8);
  v292 = v346;
  sub_8198(v357, v346, &qword_31A970, &unk_26F9F0);
  v293 = v351;
  sub_8198(v361, v351, &qword_31A950, &unk_26F9C8);
  v294 = v338;
  sub_8198(v362, v338, &qword_31A930, &qword_26F9A8);
  v295 = v337;
  sub_8198(v289, v337, &qword_31A970, &unk_26F9F0);
  v296 = sub_2EF0(&qword_31A998, &qword_26FAA0);
  sub_8198(v290, v295 + v296[12], &qword_31A968, &qword_26F9E8);
  sub_8198(v291, v295 + v296[16], &qword_31A968, &qword_26F9E8);
  sub_8198(v292, v295 + v296[20], &qword_31A970, &unk_26F9F0);
  sub_8198(v293, v295 + v296[24], &qword_31A950, &unk_26F9C8);
  sub_8198(v294, v295 + v296[28], &qword_31A930, &qword_26F9A8);
  v297 = (v295 + v296[32]);
  v298 = v368;
  v299 = v366;
  *&v369 = v368;
  *(&v369 + 1) = v366;
  v300 = v367;
  *&v370 = v367;
  *(&v370 + 1) = v282;
  *v371 = v284;
  *&v371[8] = v286;
  *&v371[16] = v288;
  v371[24] = 0;
  v301 = v370;
  *v297 = v369;
  v297[1] = v301;
  v297[2] = *v371;
  *(v297 + 41) = *&v371[9];
  sub_8198(&v369, &v372, &qword_31A9A0, &qword_26FAA8);
  sub_8E80(v362, &qword_31A930, &qword_26F9A8);
  sub_8E80(v361, &qword_31A950, &unk_26F9C8);
  sub_8E80(v357, &qword_31A970, &unk_26F9F0);
  sub_8E80(v360, &qword_31A968, &qword_26F9E8);
  sub_8E80(v359, &qword_31A968, &qword_26F9E8);
  sub_8E80(v358, &qword_31A970, &unk_26F9F0);
  v372 = v298;
  v373 = v299;
  v374 = v300;
  v375 = v282;
  v376 = v284;
  v377 = v286;
  v378 = v288;
  v379 = 0;
  sub_8E80(&v372, &qword_31A9A0, &qword_26FAA8);
  sub_8E80(v294, &qword_31A930, &qword_26F9A8);
  sub_8E80(v351, &qword_31A950, &unk_26F9C8);
  sub_8E80(v346, &qword_31A970, &unk_26F9F0);
  sub_8E80(v350, &qword_31A968, &qword_26F9E8);
  sub_8E80(v349, &qword_31A968, &qword_26F9E8);
  return sub_8E80(v347, &qword_31A970, &unk_26F9F0);
}

uint64_t sub_8A648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v33 = a3;
  v4 = sub_261FA0();
  v5 = *(v4 - 8);
  v31 = v4;
  v32 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TopLockupMetadataView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_2EF0(&qword_31ABA0, &qword_26FD08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v28 = sub_2EF0(&qword_31AB98, &qword_26FD00);
  v16 = *(v28 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v28);
  v19 = &v28 - v18;
  sub_927C4(a2, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_93094(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for TopLockupMetadataView);
  v34 = a2;
  v35 = v29;
  sub_2EF0(&qword_31ABB0, &qword_26FD10);
  sub_93E8C();
  sub_263230();
  v22 = sub_8E38(&qword_31ABA8, &qword_31ABA0, &qword_26FD08);
  v23 = sub_93AC0();
  sub_262A60();
  (*(v12 + 8))(v15, v11);
  v24 = v30;
  sub_2618C0();
  v36 = v11;
  v37 = &type metadata for PressedButtonStyle;
  v38 = v22;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v25 = v28;
  v26 = v31;
  sub_262AA0();
  (*(v32 + 8))(v24, v26);
  return (*(v16 + 8))(v19, v25);
}

uint64_t sub_8AA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_261E50();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_2EF0(&qword_31ABD0, &qword_26FD20);
  sub_8AAFC(a1, a2, a3 + *(v6 + 44));
  result = sub_2EF0(&qword_31ABB0, &qword_26FD10);
  *(a3 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_8AAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v110 = a3;
  v107 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  v4 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v109 = &v89 - v5;
  v103 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  v6 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v89 - v7;
  v106 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  v8 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v105 = &v89 - v9;
  v10 = type metadata accessor for TopLockupMetadataView(0);
  v11 = *(v10 - 8);
  v115 = v10 - 8;
  v93 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v94 = v13;
  v96 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_260BD0();
  v92 = *(v95 - 8);
  v14 = *(v92 + 64);
  __chkstk_darwin(v95);
  v90 = v15;
  v91 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_31AAC8, &qword_26FBB8);
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = *(v101 + 64);
  __chkstk_darwin(v16);
  v113 = &v89 - v18;
  v19 = type metadata accessor for ColorConstants(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v89 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2EF0(&qword_318458, &unk_26B270);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v89 - v24;
  v26 = sub_262730();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FontConstants(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  v35 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v112 = (&v89 - v36);
  v99 = sub_2EF0(&qword_31ABD8, &qword_26FD28);
  v37 = *(*(v99 - 8) + 64);
  v38 = __chkstk_darwin(v99);
  v108 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v98 = &v89 - v41;
  __chkstk_darwin(v40);
  v114 = &v89 - v42;
  sub_875D8(v34);
  (*(v27 + 104))(v30, enum case for Font.TextStyle.caption(_:), v26);
  v43 = enum case for Font.Design.rounded(_:);
  v44 = sub_2625C0();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v25, v43, v44);
  (*(v45 + 56))(v25, 0, 1, v44);
  sub_262650();
  v111 = sub_262680();
  sub_8E80(v25, &qword_318458, &unk_26B270);
  (*(v27 + 8))(v30, v26);
  sub_9315C(v34, type metadata accessor for FontConstants);
  if (*(a1 + *(v115 + 88)) == 1)
  {
    v46 = v89;
    sub_873EC(v89);
    v115 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v46, type metadata accessor for ColorConstants);
  }

  else
  {
    v115 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v47 = sub_261E50();
  v48 = v112;
  *v112 = v47;
  v48[1] = 0;
  *(v48 + 16) = 1;
  v89 = *(sub_2EF0(&qword_31AAE8, &qword_26FBC0) + 44);
  v50 = v91;
  v49 = v92;
  v51 = v95;
  (*(v92 + 16))(v91, v97, v95);
  v52 = a1;
  v53 = v96;
  sub_927C4(v52, v96);
  v54 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v55 = (v90 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v93 + 80) + v55 + 8) & ~*(v93 + 80);
  v57 = (v94 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v49 + 32))(v58 + v54, v50, v51);
  v59 = v115;
  *(v58 + v55) = v115;
  v115 = v59;
  sub_93094(v53, v58 + v56, type metadata accessor for TopLockupMetadataView);
  *(v58 + v57) = v111;

  sub_2EF0(&qword_31AB70, &unk_26FCB0);
  sub_260A70();
  sub_260A50();
  sub_93780(&qword_31AB78, &qword_31AB70, &unk_26FCB0, sub_93DBC);
  sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  v60 = v113;
  sub_260A80();
  v61 = v101;
  v62 = v60;
  v63 = v102;
  (*(v101 + 16))(v104, v62, v102);
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_31AAA0, &qword_26FB90);
  sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8);
  sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90);
  v64 = v105;
  sub_261F80();
  sub_8198(v64, v109, &qword_31AA98, &qword_26FB88);
  swift_storeEnumTagMultiPayload();
  sub_2EF0(&qword_318460, &qword_26FBA0);
  sub_9339C();
  sub_9347C();
  v65 = v112;
  sub_261F80();
  sub_8E80(v64, &qword_31AA98, &qword_26FB88);
  (*(v61 + 8))(v113, v63);

  *(v65 + *(v100 + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v67 = v98;
  sub_22148(v65, v98, &qword_31AA70, &qword_26FB70);
  v68 = v67 + *(v99 + 36);
  *v68 = KeyPath;
  *(v68 + 8) = 1;
  *(v68 + 16) = 0;
  v69 = v67;
  v70 = v114;
  sub_22148(v69, v114, &qword_31ABD8, &qword_26FD28);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v107 = v151;
  LODWORD(v55) = v152;
  v115 = v153;
  LODWORD(KeyPath) = v154;
  v71 = v155;
  v113 = v155;
  v109 = v156;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v150 = v55;
  LODWORD(v111) = v55;
  v149 = KeyPath;
  LODWORD(v112) = KeyPath;
  v72 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v73 = swift_getKeyPath();
  v74 = v70;
  v75 = v108;
  sub_8198(v74, v108, &qword_31ABD8, &qword_26FD28);
  v76 = v110;
  sub_8198(v75, v110, &qword_31ABD8, &qword_26FD28);
  v77 = (v76 + *(sub_2EF0(&qword_31ABE0, &qword_26FD30) + 48));
  v78 = v107;
  *&v123 = v107;
  BYTE8(v123) = v55;
  *&v124 = v115;
  BYTE8(v124) = KeyPath;
  v79 = v109;
  *&v125 = v71;
  *(&v125 + 1) = v109;
  v130 = v120;
  v131 = v121;
  v132 = v122;
  v126 = v116;
  v127 = v117;
  v129 = v119;
  v128 = v118;
  *&v133 = v73;
  *(&v133 + 1) = v72;
  v80 = v124;
  *v77 = v123;
  v77[1] = v80;
  v81 = v125;
  v82 = v126;
  v83 = v128;
  v77[4] = v127;
  v77[5] = v83;
  v77[2] = v81;
  v77[3] = v82;
  v84 = v129;
  v85 = v130;
  v86 = v133;
  v87 = v131;
  v77[9] = v132;
  v77[10] = v86;
  v77[7] = v85;
  v77[8] = v87;
  v77[6] = v84;
  sub_8198(&v123, &v134, &qword_31ABE8, &qword_26FD38);
  sub_8E80(v114, &qword_31ABD8, &qword_26FD28);
  v134 = v78;
  v135 = v111;
  v136 = v115;
  v137 = v112;
  v138 = v113;
  v139 = v79;
  v144 = v120;
  v145 = v121;
  v146 = v122;
  v140 = v116;
  v141 = v117;
  v143 = v119;
  v142 = v118;
  v147 = v73;
  v148 = v72;
  sub_8E80(&v134, &qword_31ABE8, &qword_26FD38);
  return sub_8E80(v75, &qword_31ABD8, &qword_26FD28);
}

uint64_t sub_8B8EC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &enum case for Font.TextStyle.title2(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v10 = &enum case for Font.TextStyle.title(_:);
  }

  (*(v6 + 104))(v9, *v10, v5);
  v11 = enum case for Font.Design.serif (_:);
  v12 = sub_2625C0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  sub_2625E0();
  v14 = sub_262680();
  sub_8E80(v4, &qword_318458, &unk_26B270);
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t sub_8BAFC()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &enum case for Font.TextStyle.body(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v10 = &enum case for Font.TextStyle.title2(_:);
  }

  (*(v6 + 104))(v9, *v10, v5);
  v11 = enum case for Font.Design.serif (_:);
  v12 = sub_2625C0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  sub_262650();
  v14 = sub_262680();
  sub_8E80(v4, &qword_318458, &unk_26B270);
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t sub_8BD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a1;
  v172 = a3;
  v173 = sub_2EF0(&qword_31AB48, &qword_26FBF8);
  v153 = *(v173 - 8);
  v4 = *(v153 + 64);
  __chkstk_darwin(v173);
  v152 = &v128 - v5;
  v170 = sub_2EF0(&qword_31AB50, &qword_26FC00);
  v6 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v171 = &v128 - v7;
  v167 = sub_263F70();
  v166 = *(v167 - 8);
  v8 = *(v166 + 64);
  __chkstk_darwin(v167);
  v164 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_261FA0();
  v141 = *(v168 - 8);
  v10 = *(v141 + 64);
  __chkstk_darwin(v168);
  v139 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2604E0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v132 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2EF0(&qword_31AB30, &qword_26FBF0);
  v15 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v133 = &v128 - v16;
  v163 = sub_2EF0(&qword_31AB28, &qword_26FBE8);
  v135 = *(v163 - 8);
  v17 = *(v135 + 64);
  __chkstk_darwin(v163);
  v134 = &v128 - v18;
  v165 = sub_2EF0(&qword_31AB20, &qword_26FBE0);
  v137 = *(v165 - 8);
  v19 = *(v137 + 64);
  __chkstk_darwin(v165);
  v136 = &v128 - v20;
  v169 = sub_2EF0(&qword_31AB58, &qword_26FC08);
  v140 = *(v169 - 8);
  v21 = *(v140 + 64);
  __chkstk_darwin(v169);
  v138 = &v128 - v22;
  v151 = sub_2EF0(&qword_31AAA0, &qword_26FB90);
  v146 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  v23 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v149 = &v128 - v24;
  v161 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  v25 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v150 = &v128 - v26;
  v27 = type metadata accessor for TopLockupMetadataView(0);
  v142 = *(v27 - 8);
  v28 = *(v142 + 64);
  __chkstk_darwin(v27);
  v143 = v29;
  v144 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2EF0(&qword_31AAC8, &qword_26FBB8);
  v147 = *(v148 - 8);
  v30 = *(v147 + 64);
  __chkstk_darwin(v148);
  v145 = &v128 - v31;
  v157 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  v32 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v159 = &v128 - v33;
  v154 = sub_260BD0();
  v34 = *(v154 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v154);
  v156 = sub_2EF0(&qword_318460, &qword_26FBA0);
  v36 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v38 = &v128 - v37;
  v39 = sub_2EF0(&qword_31AAB0, &qword_26FBA8);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v158 = &v128 - v41;
  v42 = type metadata accessor for ColorConstants(0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v128 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FontConstants(0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v128 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_2EF0(&qword_31AA70, &qword_26FB70);
  v129 = *(v175 - 8);
  v50 = *(v129 + 64);
  v51 = __chkstk_darwin(v175);
  v131 = &v128 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v52;
  __chkstk_darwin(v51);
  v176 = &v128 - v53;
  v178 = v27;
  v155 = *(v27 + 64);
  v54 = a2;
  sub_8198(a2 + v155, &v182, &qword_316BA0, &unk_268B90);
  v55 = v185;
  sub_8E80(&v182, &qword_316BA0, &unk_268B90);
  v56 = !v55 || (sub_879CC() & 1) == 0;
  v57 = v54;
  sub_875D8(v49);
  v177 = sub_8D448();
  sub_9315C(v49, type metadata accessor for FontConstants);
  if (*(v54 + *(v178 + 80)) == 1)
  {
    sub_873EC(v45);
    v58 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
    sub_9315C(v45, type metadata accessor for ColorConstants);
  }

  else
  {
    v58 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  }

  v59 = v176;
  *v59 = sub_261E50();
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v154;
  (*(v34 + 16))(v60, v160, v154);
  v174 = v57;
  if (v56)
  {
    sub_260B10();
    KeyPath = swift_getKeyPath();
    v63 = &v38[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    v64 = v177;
    *v63 = KeyPath;
    v63[1] = v64;
    v65 = swift_getKeyPath();
    v66 = &v38[*(v156 + 36)];
    *v66 = v65;
    v66[1] = v58;
    sub_8198(v38, v159, &qword_318460, &qword_26FBA0);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();

    v67 = v158;
    sub_261F80();
    sub_8E80(v38, &qword_318460, &qword_26FBA0);
  }

  else
  {
    v68 = v144;
    sub_927C4(v57, v144);
    v69 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v70 = (v35 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = (*(v142 + 80) + v70 + 8) & ~*(v142 + 80);
    v72 = (v143 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    (*(v34 + 32))(v73 + v69, v60, v61);
    *(v73 + v70) = v58;
    sub_93094(v68, v73 + v71, type metadata accessor for TopLockupMetadataView);
    *(v73 + v72) = v177;
    v59 = v176;

    v160 = v58;
    sub_2EF0(&qword_31AB70, &unk_26FCB0);
    sub_260A70();
    sub_260A50();
    sub_93780(&qword_31AB78, &qword_31AB70, &unk_26FCB0, sub_93DBC);
    sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    v74 = v145;
    sub_260A80();
    v75 = v147;
    v76 = v148;
    (*(v147 + 16))(v149, v74, v148);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90);
    v77 = v150;
    sub_261F80();
    sub_8198(v77, v159, &qword_31AA98, &qword_26FB88);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();
    v67 = v158;
    sub_261F80();
    sub_8E80(v77, &qword_31AA98, &qword_26FB88);
    (*(v75 + 8))(v74, v76);
  }

  v78 = sub_2EF0(&qword_31AAE8, &qword_26FBC0);
  sub_22148(v67, v59 + *(v78 + 44), &qword_31AAB0, &qword_26FBA8);

  v79 = v174;
  v80 = v175;
  *(v59 + *(v175 + 36)) = 256;
  sub_8198(v79 + v155, &v179, &qword_316BA0, &unk_268B90);
  if (v181)
  {
    sub_F7CC(&v179, &v182);
    if (sub_879CC())
    {
      v81 = v162;
      v82 = v133;
      v83 = &v133[*(v162 + 48)];
      v84 = sub_2EF0(&qword_31AB60, &qword_26FC10);
      v83[3] = v84;
      v83[4] = sub_8E38(&qword_31AB68, &qword_31AB60, &qword_26FC10);
      v85 = sub_10934(v83);
      v86 = sub_2610B0();
      (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
      v87 = (v82 + v81[13]);
      v88 = v185;
      v89 = v186;
      v90 = sub_2E18(&v182, v185);
      v87[3] = v88;
      v87[4] = *(v89 + 8);
      v91 = sub_10934(v87);
      (*(*(v88 - 8) + 16))(v91, v90, v88);
      v92 = v131;
      sub_8198(v59, v131, &qword_31AA70, &qword_26FB70);
      v93 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v94 = swift_allocObject();
      sub_22148(v92, v94 + v93, &qword_31AA70, &qword_26FB70);
      sub_2604C0();
      sub_260420();
      v95 = v82 + v81[9];
      *v95 = swift_getKeyPath();
      *(v95 + 8) = 0;
      v96 = v81[10];
      *(v82 + v96) = swift_getKeyPath();
      sub_2EF0(&qword_316930, &qword_2689A0);
      swift_storeEnumTagMultiPayload();
      v97 = v82 + v81[11];
      *v97 = swift_getKeyPath();
      *(v97 + 40) = 0;
      v98 = (v85 + *(v84 + 36));
      *v98 = sub_93D18;
      v98[1] = v94;
      v99 = sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0);
      v100 = sub_93AC0();
      v101 = v134;
      sub_262A60();
      sub_8E80(v82, &qword_31AB30, &qword_26FBF0);
      v102 = v139;
      sub_2618C0();
      *&v179 = v81;
      *(&v179 + 1) = &type metadata for PressedButtonStyle;
      v180 = v99;
      v181 = v100;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v104 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
      v105 = v136;
      v106 = v163;
      v107 = v168;
      sub_262AA0();
      (*(v141 + 8))(v102, v107);
      (*(v135 + 8))(v101, v106);
      v108 = *(v178 + 68);
      v109 = v164;
      sub_263F60();
      *&v179 = v106;
      *(&v179 + 1) = v107;
      v180 = OpaqueTypeConformance2;
      v181 = v104;
      v110 = swift_getOpaqueTypeConformance2();
      v111 = v138;
      v112 = v165;
      sub_262910();
      (*(v166 + 8))(v109, v167);
      (*(v137 + 8))(v105, v112);
      v113 = v140;
      v114 = v169;
      (*(v140 + 16))(v171, v111, v169);
      swift_storeEnumTagMultiPayload();
      *&v179 = v112;
      *(&v179 + 1) = v110;
      swift_getOpaqueTypeConformance2();
      v115 = sub_932E4();
      *&v179 = v175;
      *(&v179 + 1) = v115;
      swift_getOpaqueTypeConformance2();
      sub_261F80();
      (*(v113 + 8))(v111, v114);
      sub_8E80(v176, &qword_31AA70, &qword_26FB70);
      return sub_3080(&v182);
    }

    sub_3080(&v182);
  }

  else
  {
    sub_8E80(&v179, &qword_316BA0, &unk_268B90);
  }

  v117 = *(v178 + 68);
  v118 = v164;
  sub_263F60();
  v119 = sub_932E4();
  v120 = v152;
  sub_262910();
  (*(v166 + 8))(v118, v167);
  v121 = v153;
  v122 = v173;
  (*(v153 + 16))(v171, v120, v173);
  swift_storeEnumTagMultiPayload();
  v123 = sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0);
  v124 = sub_93AC0();
  v182 = v162;
  v183 = &type metadata for PressedButtonStyle;
  v184 = v123;
  v185 = v124;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v182 = v163;
  v183 = v168;
  v184 = v125;
  v185 = v126;
  v127 = swift_getOpaqueTypeConformance2();
  v182 = v165;
  v183 = v127;
  swift_getOpaqueTypeConformance2();
  v182 = v80;
  v183 = v119;
  swift_getOpaqueTypeConformance2();
  sub_261F80();
  (*(v121 + 8))(v120, v122);
  return sub_8E80(v59, &qword_31AA70, &qword_26FB70);
}

uint64_t sub_8D448()
{
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_262730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &enum case for Font.TextStyle.subheadline(_:);
  if ((v0[1] & 1) == 0 && !*v0)
  {
    v10 = &enum case for Font.TextStyle.title3(_:);
  }

  (*(v6 + 104))(v9, *v10, v5);
  v11 = sub_2625C0();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_262630();
  v12 = sub_262680();
  sub_8E80(v4, &qword_318458, &unk_26B270);
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_8D610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v75 = a3;
  v62 = sub_2EF0(&qword_31AA90, &qword_26FB80);
  v4 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v63 = &v60 - v5;
  v74 = sub_2EF0(&qword_31AA98, &qword_26FB88);
  v6 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v67 = &v60 - v7;
  v8 = sub_2EF0(&qword_31AAA0, &qword_26FB90);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v60 - v10;
  v71 = sub_2EF0(&qword_31AAA8, &qword_26FB98);
  v11 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v60 - v12;
  v13 = sub_260BD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v61 = v16;
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2EF0(&qword_318460, &qword_26FBA0);
  v17 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v19 = &v60 - v18;
  v20 = sub_2EF0(&qword_31AAB0, &qword_26FBA8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v72 = &v60 - v22;
  v23 = type metadata accessor for ColorConstants(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FontConstants(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2EF0(&qword_31A7E8, &qword_26F970);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v35 = &v60 - v34;
  sub_8198(a1, &v60 - v34, &qword_31A7E8, &qword_26F970);
  v36 = v35[*(v32 + 56)];
  (*(v14 + 8))(v35, v13);
  v37 = v68;
  sub_875D8(v30);
  v38 = sub_8D448();
  sub_9315C(v30, type metadata accessor for FontConstants);
  if (*(v37 + *(type metadata accessor for TopLockupMetadataView(0) + 80)) == 1)
  {
    sub_873EC(v26);
    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v39 = sub_263000();

    sub_9315C(v26, type metadata accessor for ColorConstants);
  }

  else
  {
    v39 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  }

  v40 = sub_261E50();
  v41 = v75;
  *v75 = v40;
  v41[1] = 0;
  *(v41 + 16) = 1;
  v42 = v69;
  (*(v14 + 16))(v69, a1, v13);
  if (v36)
  {
    v43 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v44 = (v61 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = v42;
    v47 = v45;
    (*(v14 + 32))(v45 + v43, v46, v13);
    *(v47 + v44) = v38;
    *(v47 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;

    sub_2EF0(&qword_31AAF0, &qword_26FBC8);
    sub_260A70();
    sub_260A50();
    sub_93780(&qword_31AAF8, &qword_31AAF0, &qword_26FBC8, sub_93834);
    sub_947D8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_947D8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    v69 = v38;
    v48 = v64;
    sub_260A80();
    v50 = v65;
    v49 = v66;
    (*(v65 + 16))(v63, v48, v66);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_31AAC8, &qword_26FBB8);
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90);
    v51 = v67;
    sub_261F80();
    sub_8198(v51, v73, &qword_31AA98, &qword_26FB88);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();
    v52 = v72;
    sub_261F80();
    sub_8E80(v51, &qword_31AA98, &qword_26FB88);
    (*(v50 + 8))(v48, v49);
  }

  else
  {
    sub_260B10();
    KeyPath = swift_getKeyPath();
    v54 = &v19[*(sub_2EF0(&qword_318470, &qword_26FBB0) + 36)];
    *v54 = KeyPath;
    v54[1] = v38;
    v55 = swift_getKeyPath();
    v56 = &v19[*(v70 + 36)];
    *v56 = v55;
    v56[1] = v39;
    sub_8198(v19, v73, &qword_318460, &qword_26FBA0);
    swift_storeEnumTagMultiPayload();
    sub_9339C();
    sub_9347C();

    v52 = v72;
    sub_261F80();
    sub_8E80(v19, &qword_318460, &qword_26FBA0);
  }

  v57 = sub_2EF0(&qword_31AAE8, &qword_26FBC0);
  v58 = v75;
  sub_22148(v52, v75 + *(v57 + 44), &qword_31AAB0, &qword_26FBA8);

  result = sub_2EF0(&qword_31AA70, &qword_26FB70);
  *(v58 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_8DF58@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  v25 = a1;
  v27 = sub_262370();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31A9B8, &qword_26FAB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v26 = sub_2EF0(&qword_31A9C8, &unk_26FAC0);
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v26);
  v14 = &v25 - v13;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v16 = sub_2624C0();
  *(inited + 32) = v16;
  v17 = sub_2624E0();
  *(inited + 33) = v17;
  v18 = sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v16)
  {
    v18 = sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v17)
  {
    v18 = sub_2624D0();
  }

  *v10 = v18;
  v19 = sub_2EF0(&qword_31A9D0, &qword_26FAD0);
  sub_8E2A4(v25, &v10[*(v19 + 44)]);
  sub_262350();
  sub_8E38(&qword_31A9C0, &qword_31A9B8, &qword_26FAB8);
  sub_262C70();
  (*(v3 + 8))(v6, v27);
  sub_8E80(v10, &qword_31A9B8, &qword_26FAB8);
  v20 = sub_870B8() & 1;
  KeyPath = swift_getKeyPath();
  v22 = v29;
  (*(v11 + 32))(v29, v14, v26);
  result = sub_2EF0(&qword_31A9A8, &qword_26FAB0);
  v24 = v22 + *(result + 36);
  *v24 = KeyPath;
  *(v24 + 8) = v20;
  return result;
}

uint64_t sub_8E2A4@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_2EF0(&qword_31A9D8, &qword_26FAD8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v51 - v8;
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = sub_2EF0(&qword_31A9E0, &qword_26FAE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v51 - v14;
  v51 = sub_2EF0(&qword_31A9E8, &qword_26FAE8);
  v16 = *(*(v51 - 8) + 64);
  v17 = __chkstk_darwin(v51);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - v20;
  __chkstk_darwin(v19);
  v56 = &v51 - v22;
  v23 = type metadata accessor for SizeConstants.Spacing(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SizeConstants(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2EF0(&qword_31A9F0, &qword_26FAF0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  v34 = __chkstk_darwin(v31);
  v52 = &v51 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v51 - v36;
  sub_87200(v30);
  sub_93094(v30, v26, type metadata accessor for SizeConstants.Environment);
  sub_9315C(v26, type metadata accessor for SizeConstants.Spacing);
  *v37 = sub_261D30();
  *(v37 + 1) = 0x4010000000000000;
  v37[16] = 0;
  v38 = sub_2EF0(&qword_31A9F8, &qword_26FAF8);
  sub_8E844(a1, &v37[*(v38 + 44)]);
  *&v37[*(v32 + 44)] = 1;
  if (sub_870B8())
  {
    v39 = sub_261E50();
  }

  else
  {
    v39 = sub_261E60();
  }

  *v15 = v39;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v40 = sub_2EF0(&qword_31AA00, &qword_26FB00);
  sub_8F558(a1, &v15[*(v40 + 44)]);
  sub_22148(v15, v21, &qword_31A9E0, &qword_26FAE0);
  *&v21[*(v51 + 36)] = 1;
  sub_22148(v21, v56, &qword_31A9E8, &qword_26FAE8);
  if (sub_870B8())
  {
    v41 = sub_261E50();
  }

  else
  {
    v41 = sub_261E60();
  }

  *v9 = v41;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v42 = sub_2EF0(&qword_31AA08, &qword_26FB08);
  sub_90324(a1, &v9[*(v42 + 44)]);
  sub_22148(v9, v11, &qword_31A9D8, &qword_26FAD8);
  v43 = v52;
  sub_8198(v37, v52, &qword_31A9F0, &qword_26FAF0);
  v44 = v56;
  v45 = v53;
  sub_8198(v56, v53, &qword_31A9E8, &qword_26FAE8);
  v46 = v54;
  sub_8198(v11, v54, &qword_31A9D8, &qword_26FAD8);
  v47 = v11;
  v48 = v55;
  sub_8198(v43, v55, &qword_31A9F0, &qword_26FAF0);
  v49 = sub_2EF0(&qword_31AA10, &qword_26FB10);
  sub_8198(v45, v48 + *(v49 + 48), &qword_31A9E8, &qword_26FAE8);
  sub_8198(v46, v48 + *(v49 + 64), &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v47, &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v44, &qword_31A9E8, &qword_26FAE8);
  sub_8E80(v37, &qword_31A9F0, &qword_26FAF0);
  sub_8E80(v46, &qword_31A9D8, &qword_26FAD8);
  sub_8E80(v45, &qword_31A9E8, &qword_26FAE8);
  return sub_8E80(v43, &qword_31A9F0, &qword_26FAF0);
}

uint64_t sub_8E844@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v127 = a2;
  v3 = sub_2EF0(&qword_31AA40, &qword_26FB40);
  v133 = *(v3 - 8);
  v4 = *(v133 + 64);
  __chkstk_darwin(v3);
  v130 = &v108 - v5;
  v6 = sub_2EF0(&qword_31AA48, &qword_26FB48);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v119 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v108 - v10;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v115 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v121 = (&v108 - v16);
  v17 = __chkstk_darwin(v15);
  v19 = &v108 - v18;
  __chkstk_darwin(v17);
  v21 = &v108 - v20;
  v22 = sub_2EF0(&qword_31AA50, &qword_26FB50);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v125 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v124 = &v108 - v27;
  v28 = __chkstk_darwin(v26);
  v123 = &v108 - v29;
  __chkstk_darwin(v28);
  v136 = &v108 - v30;
  v31 = sub_260BD0();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v31);
  v116 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v118 = &v108 - v37;
  v38 = __chkstk_darwin(v36);
  v112 = &v108 - v39;
  v40 = __chkstk_darwin(v38);
  v129 = &v108 - v41;
  __chkstk_darwin(v40);
  v43 = &v108 - v42;
  v131 = sub_260B00();
  v134 = *(v131 - 8);
  v44 = *(v134 + 64);
  v45 = __chkstk_darwin(v131);
  v114 = &v108 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v135 = &v108 - v48;
  __chkstk_darwin(v47);
  v50 = &v108 - v49;
  v51 = v32[2];
  v113 = v32 + 2;
  v117 = v51;
  v51(v43, a1, v31);
  v132 = v50;
  sub_260B10();
  v52 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v53 = a1;
  sub_8198(&a1[v52[5]], v21, &qword_316208, &qword_268BD0);
  v54 = v32[6];
  v55 = v54(v21, 1, v31);
  v126 = v3;
  v120 = v54;
  v128 = v32;
  if (v55 == 1)
  {
    v19 = v21;
LABEL_5:
    v57 = v133;
    sub_8E80(v19, &qword_316208, &qword_268BD0);
    v58 = 1;
    goto LABEL_7;
  }

  v56 = v32[4];
  v56(v129, v21, v31);
  sub_8198(&v53[v52[7]], v19, &qword_316208, &qword_268BD0);
  if (v54(v19, 1, v31) == 1)
  {
    (v128[1])(v129, v31);
    v3 = v126;
    goto LABEL_5;
  }

  v59 = v112;
  v56(v112, v19, v31);
  v117(v43, v59, v31);
  v111 = v53;
  v60 = v135;
  sub_260B10();
  sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText);
  v61 = v122;
  v62 = v131;
  sub_262C60();
  v63 = v134;
  v110 = *(v134 + 8);
  v110(v60, v62);
  v117(v43, v129, v31);
  sub_260B10();
  v64 = v61;
  v65 = v119;
  sub_8198(v64, v119, &qword_31AA48, &qword_26FB48);
  v66 = *(v63 + 16);
  v109 = v52;
  v67 = v114;
  v66();
  sub_8198(v65, v130, &qword_31AA48, &qword_26FB48);
  v68 = sub_2EF0(&qword_31AA60, &qword_26FB60);
  (v66)(v130 + *(v68 + 48), v67, v62);
  v69 = v60;
  v53 = v111;
  v70 = v110;
  v110(v69, v62);
  sub_8E80(v122, &qword_31AA48, &qword_26FB48);
  v71 = v128[1];
  v71(v112, v31);
  v71(v129, v31);
  v72 = v67;
  v52 = v109;
  v70(v72, v62);
  sub_8E80(v119, &qword_31AA48, &qword_26FB48);
  sub_22148(v130, v136, &qword_31AA40, &qword_26FB40);
  v58 = 0;
  v3 = v126;
  v57 = v133;
LABEL_7:
  v73 = v121;
  v75 = *(v57 + 56);
  v74 = v57 + 56;
  v129 = v75;
  (v75)(v136, v58, 1, v3);
  sub_8198(&v53[v52[6]], v73, &qword_316208, &qword_268BD0);
  v76 = v120;
  if (v120(v73, 1, v31) == 1)
  {
    v77 = v73;
  }

  else
  {
    v133 = v74;
    v78 = v73;
    v79 = v128;
    v80 = v128[4];
    v81 = v118;
    v80(v118, v78, v31);
    v82 = &v53[v52[7]];
    v77 = v115;
    sub_8198(v82, v115, &qword_316208, &qword_268BD0);
    if (v76(v77, 1, v31) != 1)
    {
      v86 = v116;
      v80(v116, v77, v31);
      v87 = v117;
      v117(v43, v86, v31);
      v88 = v135;
      sub_260B10();
      sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText);
      v89 = v122;
      v90 = v131;
      sub_262C60();
      v91 = v134;
      v121 = *(v134 + 8);
      v121(v88, v90);
      v87(v43, v81, v31);
      sub_260B10();
      v92 = v130;
      v93 = v119;
      sub_8198(v89, v119, &qword_31AA48, &qword_26FB48);
      v94 = *(v91 + 16);
      v95 = v114;
      v94(v114, v88, v90);
      sub_8198(v93, v92, &qword_31AA48, &qword_26FB48);
      v96 = sub_2EF0(&qword_31AA60, &qword_26FB60);
      v94((v92 + *(v96 + 48)), v95, v90);
      v97 = v121;
      v121(v88, v90);
      sub_8E80(v122, &qword_31AA48, &qword_26FB48);
      v98 = v128[1];
      v98(v116, v31);
      v98(v118, v31);
      v85 = v94;
      v97(v95, v90);
      sub_8E80(v93, &qword_31AA48, &qword_26FB48);
      v84 = v123;
      sub_22148(v130, v123, &qword_31AA40, &qword_26FB40);
      (v129)(v84, 0, 1, v126);
      goto LABEL_13;
    }

    (v79[1])(v81, v31);
    v3 = v126;
  }

  v83 = v134;
  sub_8E80(v77, &qword_316208, &qword_268BD0);
  v84 = v123;
  (v129)(v123, 1, 1, v3);
  v85 = *(v83 + 16);
LABEL_13:
  v99 = v135;
  v100 = v131;
  v85(v135, v132, v131);
  v101 = v124;
  sub_8198(v136, v124, &qword_31AA50, &qword_26FB50);
  v102 = v125;
  sub_8198(v84, v125, &qword_31AA50, &qword_26FB50);
  v103 = v127;
  v85(v127, v99, v100);
  v104 = v84;
  v105 = sub_2EF0(&qword_31AA68, &qword_26FB68);
  sub_8198(v101, &v103[*(v105 + 48)], &qword_31AA50, &qword_26FB50);
  sub_8198(v102, &v103[*(v105 + 64)], &qword_31AA50, &qword_26FB50);
  sub_8E80(v104, &qword_31AA50, &qword_26FB50);
  sub_8E80(v136, &qword_31AA50, &qword_26FB50);
  v106 = *(v134 + 8);
  v106(v132, v100);
  sub_8E80(v102, &qword_31AA50, &qword_26FB50);
  sub_8E80(v101, &qword_31AA50, &qword_26FB50);
  return (v106)(v135, v100);
}

uint64_t sub_8F558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55 = a1;
  v58 = a2;
  v2 = sub_260B00();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  __chkstk_darwin(v2);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_316208, &qword_268BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = sub_260BD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v51 - v14;
  v15 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = type metadata accessor for SizeConstants.Spacing(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SizeConstants(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2EF0(&qword_31AA28, &qword_26FB28);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v51 - v35;
  sub_87200(v29);
  sub_93094(v29, v25, type metadata accessor for SizeConstants.Environment);
  sub_9315C(v25, type metadata accessor for SizeConstants.Spacing);
  *v36 = sub_261D30();
  *(v36 + 1) = 0x4010000000000000;
  v36[16] = 0;
  v37 = sub_2EF0(&qword_31AA30, &qword_26FB30);
  v38 = v55;
  sub_8FAEC(v55, &v36[*(v37 + 44)]);
  v39 = type metadata accessor for TopLockupMetadataView.Footer(0);
  sub_8198(v38 + *(v39 + 24), v8, &qword_316208, &qword_268BD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_8E80(v8, &qword_316208, &qword_268BD0);
    v40 = 1;
    v42 = v56;
    v41 = v57;
  }

  else
  {
    v43 = v52;
    (*(v10 + 32))(v52, v8, v9);
    (*(v10 + 16))(v53, v43, v9);
    v44 = v54;
    sub_260B10();
    (*(v10 + 8))(v43, v9);
    v45 = v56;
    v46 = v44;
    v47 = v57;
    (*(v56 + 32))(v21, v46, v57);
    v40 = 0;
    v41 = v47;
    v42 = v45;
  }

  (*(v42 + 56))(v21, v40, 1, v41);
  sub_8198(v36, v34, &qword_31AA28, &qword_26FB28);
  sub_8198(v21, v19, &qword_31AA18, &qword_26FB18);
  v48 = v58;
  sub_8198(v34, v58, &qword_31AA28, &qword_26FB28);
  v49 = sub_2EF0(&qword_31AA38, &qword_26FB38);
  sub_8198(v19, v48 + *(v49 + 48), &qword_31AA18, &qword_26FB18);
  sub_8E80(v21, &qword_31AA18, &qword_26FB18);
  sub_8E80(v36, &qword_31AA28, &qword_26FB28);
  sub_8E80(v19, &qword_31AA18, &qword_26FB18);
  return sub_8E80(v34, &qword_31AA28, &qword_26FB28);
}

uint64_t sub_8FAEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_2EF0(&qword_31AA40, &qword_26FB40);
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v3);
  v71 = &v67 - v5;
  v6 = sub_2EF0(&qword_31AA48, &qword_26FB48);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v67 - v10;
  v11 = sub_2EF0(&qword_316208, &qword_268BD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  v17 = sub_2EF0(&qword_31AA50, &qword_26FB50);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v78 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v67 - v21;
  v22 = sub_260BD0();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v74 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v81 = &v67 - v28;
  __chkstk_darwin(v27);
  v30 = &v67 - v29;
  v82 = sub_260B00();
  v84 = *(v82 - 8);
  v31 = v84[8];
  v32 = __chkstk_darwin(v82);
  v69 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v83 = &v67 - v35;
  __chkstk_darwin(v34);
  v37 = &v67 - v36;
  v68 = v23[2];
  v68(v30, a1, v22);
  v76 = v37;
  sub_260B10();
  v38 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v39 = a1;
  sub_8198(a1 + *(v38 + 20), v16, &qword_316208, &qword_268BD0);
  v75 = v23;
  v40 = v23[6];
  if (v40(v16, 1, v22) != 1)
  {
    v67 = v3;
    v41 = v75[4];
    v41(v81, v16, v22);
    v16 = v72;
    sub_8198(v39 + *(v38 + 28), v72, &qword_316208, &qword_268BD0);
    if (v40(v16, 1, v22) != 1)
    {
      v44 = v74;
      v41(v74, v16, v22);
      v45 = v68;
      v68(v30, v44, v22);
      v46 = v83;
      sub_260B10();
      sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText);
      v47 = v73;
      v48 = v82;
      sub_262C60();
      v49 = v84;
      v72 = v84[1];
      (v72)(v46, v48);
      v45(v30, v81, v22);
      sub_260B10();
      v50 = v47;
      v51 = v70;
      sub_8198(v50, v70, &qword_31AA48, &qword_26FB48);
      v52 = v49[2];
      v53 = v69;
      v52(v69, v46, v48);
      v68 = v52;
      v54 = v71;
      sub_8198(v51, v71, &qword_31AA48, &qword_26FB48);
      v55 = sub_2EF0(&qword_31AA60, &qword_26FB60);
      v52((v54 + *(v55 + 48)), v53, v48);
      v56 = v72;
      (v72)(v46, v48);
      sub_8E80(v73, &qword_31AA48, &qword_26FB48);
      v57 = v75[1];
      v57(v74, v22);
      v57(v81, v22);
      v56(v53, v48);
      sub_8E80(v51, &qword_31AA48, &qword_26FB48);
      v58 = v54;
      v42 = v77;
      sub_22148(v58, v77, &qword_31AA40, &qword_26FB40);
      (*(v79 + 56))(v42, 0, 1, v67);
      v43 = v68;
      goto LABEL_6;
    }

    (v75[1])(v81, v22);
    v3 = v67;
  }

  v42 = v77;
  sub_8E80(v16, &qword_316208, &qword_268BD0);
  (*(v79 + 56))(v42, 1, 1, v3);
  v43 = v84[2];
LABEL_6:
  v60 = v82;
  v59 = v83;
  v61 = v76;
  v43(v83, v76, v82);
  v62 = v78;
  sub_8198(v42, v78, &qword_31AA50, &qword_26FB50);
  v63 = v80;
  v43(v80, v59, v60);
  v64 = sub_2EF0(&qword_31AA58, &qword_26FB58);
  sub_8198(v62, &v63[*(v64 + 48)], &qword_31AA50, &qword_26FB50);
  sub_8E80(v42, &qword_31AA50, &qword_26FB50);
  v65 = v84[1];
  v65(v61, v60);
  sub_8E80(v62, &qword_31AA50, &qword_26FB50);
  return (v65)(v59, v60);
}

uint64_t sub_90324@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v65 - v7;
  v9 = sub_2EF0(&qword_31AA18, &qword_26FB18);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v75 = &v65 - v14;
  v15 = __chkstk_darwin(v13);
  v74 = &v65 - v16;
  __chkstk_darwin(v15);
  v80 = &v65 - v17;
  v18 = sub_260BD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v67 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v65 - v24;
  __chkstk_darwin(v23);
  v27 = &v65 - v26;
  v28 = sub_260B00();
  v70 = *(v28 - 8);
  v71 = v28;
  v29 = *(v70 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v65 - v33;
  v35 = *(v19 + 16);
  v35(v27, a1, v18);
  v78 = v34;
  sub_260B10();
  v36 = type metadata accessor for TopLockupMetadataView.Footer(0);
  v37 = *(v36 + 20);
  v72 = a1;
  sub_8198(a1 + v37, v8, &qword_316208, &qword_268BD0);
  v69 = *(v19 + 48);
  v38 = v69(v8, 1, v18);
  v79 = v32;
  v68 = v19;
  v66 = v35;
  if (v38 == 1)
  {
    sub_8E80(v8, &qword_316208, &qword_268BD0);
    v39 = 1;
    v41 = v70;
    v40 = v71;
    v42 = v80;
  }

  else
  {
    (*(v19 + 32))(v25, v8, v18);
    v35(v27, v25, v18);
    sub_260B10();
    (*(v19 + 8))(v25, v18);
    v41 = v70;
    v43 = v80;
    v44 = v32;
    v40 = v71;
    (*(v70 + 32))(v80, v44, v71);
    v39 = 0;
    v42 = v43;
  }

  v45 = v41[7];
  v45(v42, v39, 1, v40);
  v46 = *(v36 + 24);
  v47 = v73;
  sub_8198(v72 + v46, v73, &qword_316208, &qword_268BD0);
  if (v69(v47, 1, v18) == 1)
  {
    sub_8E80(v47, &qword_316208, &qword_268BD0);
    v48 = 1;
    v49 = v74;
    v50 = v40;
    v51 = v79;
  }

  else
  {
    v52 = v68;
    v53 = v41;
    v54 = v67;
    (*(v68 + 32))(v67, v47, v18);
    v66(v27, v54, v18);
    v51 = v79;
    sub_260B10();
    v55 = v54;
    v41 = v53;
    (*(v52 + 8))(v55, v18);
    v56 = v53[4];
    v49 = v74;
    v56(v74, v51, v40);
    v48 = 0;
    v50 = v40;
  }

  v45(v49, v48, 1, v50);
  v57 = v41[2];
  v57(v51, v78, v50);
  v58 = v75;
  sub_8198(v80, v75, &qword_31AA18, &qword_26FB18);
  v59 = v76;
  sub_8198(v49, v76, &qword_31AA18, &qword_26FB18);
  v60 = v51;
  v61 = v77;
  v57(v77, v60, v50);
  v62 = sub_2EF0(&qword_31AA20, &qword_26FB20);
  sub_8198(v58, &v61[*(v62 + 48)], &qword_31AA18, &qword_26FB18);
  sub_8198(v59, &v61[*(v62 + 64)], &qword_31AA18, &qword_26FB18);
  sub_8E80(v49, &qword_31AA18, &qword_26FB18);
  sub_8E80(v80, &qword_31AA18, &qword_26FB18);
  v63 = v41[1];
  v63(v78, v50);
  sub_8E80(v59, &qword_31AA18, &qword_26FB18);
  sub_8E80(v58, &qword_31AA18, &qword_26FB18);
  return (v63)(v79, v50);
}

uint64_t sub_909BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a6;
  v50 = a4;
  v57 = a2;
  v58 = a1;
  v8 = a1;
  v9 = sub_2616C0();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_260BD0();
  v56 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v17;
  v51 = sub_2EF0(&qword_31AB88, &qword_287650);
  v18 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v20 = &v50 - v19;
  v21 = *(v14 + 16);
  v55 = v14 + 16;
  v59 = v21;
  v21(v17, a2, v13);
  sub_30CC(v8, v62);
  v22 = sub_2627B0();
  v24 = v23;
  LOBYTE(v8) = v25;
  v62[0] = a3;
  v26 = sub_2627F0();
  v28 = v27;
  v30 = v29;
  sub_39DBC(v22, v24, v8 & 1);

  sub_87B24(v12);
  v31 = Text.withTrailingForwardChevron(_:layoutDirection:)(1, v12, v26, v28, v30 & 1);
  v33 = v32;
  LOBYTE(v24) = v34;
  sub_39DBC(v26, v28, v30 & 1);

  (*(v53 + 8))(v12, v54);
  v35 = sub_262840();
  v37 = v36;
  LOBYTE(v28) = v38;
  v40 = v39;
  sub_39DBC(v31, v33, v24 & 1);

  v41 = &v20[*(v51 + 36)];
  v42 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = sub_2630F0();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v20 = v35;
  *(v20 + 1) = v37;
  v20[16] = v28 & 1;
  *(v20 + 3) = v40;
  v59(v52, v57, v56);
  sub_30CC(v58, v62);
  v45 = sub_2627B0();
  v47 = v46;
  LOBYTE(v42) = v48;
  sub_93DBC();
  sub_262BF0();
  sub_39DBC(v45, v47, v42 & 1);

  return sub_8E80(v20, &qword_31AB88, &qword_287650);
}

uint64_t sub_90DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v66 = a1;
  v68 = a3;
  v64 = sub_260BD0();
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v63 = v8 + 16;
  v67 = v9;
  v62 = v7;
  (v9)(v7, a2);
  sub_30CC(a1, v73);
  v10 = sub_2627B0();
  v12 = v11;
  v14 = v13;
  v15 = sub_262840();
  v17 = v16;
  v19 = v18;
  sub_39DBC(v10, v12, v14 & 1);

  v20 = sub_2627E0();
  v22 = v21;
  v24 = v23;
  sub_39DBC(v15, v17, v19 & 1);

  v61 = sub_262820();
  v60 = v25;
  v58 = v26;
  v59 = v27;
  sub_39DBC(v20, v22, v24 & 1);

  sub_2630B0();
  v28 = sub_262900();
  v30 = v29;
  LOBYTE(v22) = v31;
  v32 = sub_262840();
  v34 = v33;
  v36 = v35;
  sub_39DBC(v28, v30, v22 & 1);

  v37 = sub_2627E0();
  v39 = v38;
  v41 = v40;
  sub_39DBC(v32, v34, v36 & 1);

  LOBYTE(v34) = v58;
  v42 = v61;
  v43 = v60;
  v56 = sub_262820();
  v45 = v44;
  v57 = v46;
  v48 = v47;
  sub_39DBC(v37, v39, v41 & 1);

  sub_39DBC(v42, v43, v34 & 1);

  v49 = v56;
  v69 = v56;
  v70 = v45;
  LOBYTE(v39) = v57 & 1;
  v71 = v57 & 1;
  v72 = v48;
  v67(v62, v65, v64);
  sub_30CC(v66, v73);
  v50 = sub_2627B0();
  v52 = v51;
  LOBYTE(v37) = v53;
  sub_2EF0(&qword_31AB08, &qword_26FBD0);
  sub_93834();
  sub_262BF0();
  sub_39DBC(v50, v52, v37 & 1);

  sub_39DBC(v49, v45, v39);
}

uint64_t TopLockupMetadataView.Footer.init(leadingText:centerText:trailingText:separator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_260BD0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for TopLockupMetadataView.Footer(0);
  sub_22148(a2, a5 + v11[5], &qword_316208, &qword_268BD0);
  sub_22148(a3, a5 + v11[6], &qword_316208, &qword_268BD0);
  return sub_22148(a4, a5 + v11[7], &qword_316208, &qword_268BD0);
}

uint64_t sub_91308@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262290();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2622A0();
  if (sub_2622B0())
  {
    v7 = 0.6;
  }

  else
  {
    v7 = 1.0;
  }

  (*(v3 + 32))(a1, v6, v2);
  result = sub_2EF0(&qword_31ABF0, &unk_26FD90);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_9144C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_261990();
  (*(v3 + 104))(v7, enum case for ColorScheme.light(_:), v2);
  v10 = sub_261170();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  v12 = sub_263640();
  v13 = &enum case for BlendMode.plusDarker(_:);
  if ((v10 & 1) == 0)
  {
    v13 = &enum case for BlendMode.plusLighter(_:);
  }

  return (*(*(v12 - 8) + 104))(a1, *v13, v12);
}

uint64_t sub_915F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_261C40();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_9162C@<X0>(uint64_t a1@<X8>)
{
  result = sub_261C40();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_91660(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_261C50();
}

uint64_t sub_91690(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_261C50();
}

uint64_t sub_916C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261B80();
  *a1 = result;
  return result;
}

uint64_t sub_916EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261B80();
  *a1 = result;
  return result;
}

uint64_t sub_917B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_11:
    v14 = *(v8 + 48);

    return v14(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_11;
  }

  v11 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_11;
  }

  v12 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[10];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[11]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2EF0(&qword_319B18, &qword_26DA40);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[12];
      goto LABEL_11;
    }

    v18 = sub_2EF0(&qword_315D48, &qword_266E40);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v7 = v18;
      v8 = *(v18 - 8);
      v9 = a3[17];
      goto LABEL_11;
    }

    v19 = sub_2EF0(&qword_31A718, &qword_26F840);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v7 = v19;
      v8 = *(v19 - 8);
      v9 = a3[18];
      goto LABEL_11;
    }

    v20 = sub_2EF0(&qword_31A720, &qword_26F848);
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[19];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_91B58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_317BF8, &unk_26F930);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v16 = *(v10 + 56);

    return v16(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_2EF0(&qword_31A748, &unk_26F940);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = sub_2EF0(&qword_317878, &unk_27E490);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  result = sub_2EF0(&qword_319458, &unk_26CF30);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v17 = sub_2EF0(&qword_319B18, &qword_26DA40);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v18 = sub_2EF0(&qword_315D48, &qword_266E40);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[17];
    goto LABEL_11;
  }

  v19 = sub_2EF0(&qword_31A718, &qword_26F840);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[18];
    goto LABEL_11;
  }

  v20 = sub_2EF0(&qword_31A720, &qword_26F848);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[19];

  return v21(v22, a2, a2, v20);
}

void sub_91EE4()
{
  sub_3E7AC();
  if (v0 <= 0x3F)
  {
    sub_92274(319, &qword_317C68, type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_92274(319, &qword_316FE8, type metadata accessor for ColorConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_92274(319, &qword_31A7B8, type metadata accessor for FontConstants, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_92274(319, &qword_3178F8, &type metadata accessor for BlendMode, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_92274(319, &qword_3194C8, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_92274(319, &qword_31A7C0, type metadata accessor for HighlightAttributionViewLoader, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_92274(319, &qword_31A7C8, &type metadata accessor for LocalizerRequest, type metadata accessor for PlaceholderTextView.ContentType);
                if (v7 <= 0x3F)
                {
                  sub_922D8(319, &qword_31A7D0, &qword_316BA8, &unk_275850, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_92274(319, &qword_31A7D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_922D8(319, &qword_31A7E0, &qword_31A7E8, &qword_26F970, type metadata accessor for PlaceholderTextView.ContentType);
                      if (v10 <= 0x3F)
                      {
                        sub_92274(319, &unk_31A7F0, type metadata accessor for TopLockupMetadataView.Footer, type metadata accessor for PlaceholderTextView.ContentType);
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

void sub_92274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_922D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_92350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_316208, &qword_268BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_92460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_316208, &qword_268BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_92568()
{
  sub_260BD0();
  if (v0 <= 0x3F)
  {
    sub_92274(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_92628()
{
  result = qword_31A900;
  if (!qword_31A900)
  {
    sub_2F9C(&qword_31A740, &unk_26F8C8);
    sub_926E0();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A900);
  }

  return result;
}

unint64_t sub_926E0()
{
  result = qword_31A908;
  if (!qword_31A908)
  {
    sub_2F9C(&qword_31A730, &qword_26F858);
    sub_8E38(&qword_31A910, &qword_31A728, &qword_26F850);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A908);
  }

  return result;
}

uint64_t sub_927C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopLockupMetadataView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_92894()
{
  v1 = type metadata accessor for TopLockupMetadataView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + ((v2 + 16) & ~v2);
  sub_4054(*v4, *(v4 + 8));
  v5 = (v4 + v1[5]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_261180();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
    v11 = *(v4 + v9);
  }

  v12 = (v4 + v1[7]);
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v14 = sub_261690();
    (*(*(v14 - 8) + 8))(&v12[v13], v14);
  }

  else
  {
    v15 = *v12;
  }

  v16 = v1[8];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_263640();
    (*(*(v17 - 8) + 8))(v4 + v16, v17);
  }

  else
  {
    v18 = *(v4 + v16);
  }

  sub_4054(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v19 = v1[10];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_2616C0();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
    v21 = *(v4 + v19);
  }

  v22 = (v4 + v1[11]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v1[12];
  sub_2EF0(&qword_319B18, &qword_26DA40);
  if (!swift_getEnumCaseMultiPayload())
  {
    v26 = sub_260BD0();
    (*(*(v26 - 8) + 8))(v4 + v25, v26);
  }

  v27 = v1[13];
  if (!swift_getEnumCaseMultiPayload())
  {
    v28 = sub_260BD0();
    (*(*(v28 - 8) + 8))(v4 + v27, v28);
  }

  v29 = v1[14];
  if (!swift_getEnumCaseMultiPayload())
  {
    v30 = sub_260BD0();
    (*(*(v30 - 8) + 8))(v4 + v29, v30);
  }

  v31 = v1[15];
  if (!swift_getEnumCaseMultiPayload())
  {
    v32 = sub_260BD0();
    (*(*(v32 - 8) + 8))(v4 + v31, v32);
  }

  v33 = (v4 + v1[16]);
  if (v33[3])
  {
    sub_3080(v33);
  }

  v34 = v1[17];
  v35 = sub_263E50();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v4 + v34, 1, v35))
  {
    (*(v36 + 8))(v4 + v34, v35);
  }

  v37 = v1[18];
  sub_2EF0(&qword_31A718, &qword_26F840);
  if (!swift_getEnumCaseMultiPayload())
  {
    v38 = sub_260BD0();
    (*(*(v38 - 8) + 8))(v4 + v37, v38);
  }

  v39 = v4 + v1[19];
  sub_2EF0(&qword_31A720, &qword_26F848);
  if (!swift_getEnumCaseMultiPayload())
  {
    v40 = sub_260BD0();
    v41 = *(v40 - 8);
    v42 = *(v41 + 8);
    v42(v39, v40);
    v43 = type metadata accessor for TopLockupMetadataView.Footer(0);
    v44 = v43[5];
    v45 = *(v41 + 48);
    if (!v45(v39 + v44, 1, v40))
    {
      v42(v39 + v44, v40);
    }

    v46 = v43[6];
    if (!v45(v39 + v46, 1, v40))
    {
      v42(v39 + v46, v40);
    }

    v47 = v43[7];
    if (!v45(v39 + v47, 1, v40))
    {
      v42(v39 + v47, v40);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_92FA0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TopLockupMetadataView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_93094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9315C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_931BC()
{
  result = qword_31A9B0;
  if (!qword_31A9B0)
  {
    sub_2F9C(&qword_31A9A8, &qword_26FAB0);
    sub_2F9C(&qword_31A9B8, &qword_26FAB8);
    sub_8E38(&qword_31A9C0, &qword_31A9B8, &qword_26FAB8);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31A9B0);
  }

  return result;
}

unint64_t sub_932E4()
{
  result = qword_31AA78;
  if (!qword_31AA78)
  {
    sub_2F9C(&qword_31AA70, &qword_26FB70);
    sub_8E38(&qword_31AA80, &qword_31AA88, &qword_26FB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AA78);
  }

  return result;
}

unint64_t sub_9339C()
{
  result = qword_31AAB8;
  if (!qword_31AAB8)
  {
    sub_2F9C(&qword_31AA98, &qword_26FB88);
    sub_8E38(&qword_31AAC0, &qword_31AAC8, &qword_26FBB8);
    sub_8E38(&qword_31AAD0, &qword_31AAA0, &qword_26FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAB8);
  }

  return result;
}

unint64_t sub_9347C()
{
  result = qword_31AAD8;
  if (!qword_31AAD8)
  {
    sub_2F9C(&qword_318460, &qword_26FBA0);
    sub_93534();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAD8);
  }

  return result;
}

unint64_t sub_93534()
{
  result = qword_31AAE0;
  if (!qword_31AAE0)
  {
    sub_2F9C(&qword_318470, &qword_26FBB0);
    sub_947D8(&qword_3184E0, &type metadata accessor for LocalizedText);
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AAE0);
  }

  return result;
}

uint64_t sub_9361C()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_936C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_90DD4(a1, v2 + v6, a2);
}

uint64_t sub_93780(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_947D8(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_93834()
{
  result = qword_31AB00;
  if (!qword_31AB00)
  {
    sub_2F9C(&qword_31AB08, &qword_26FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB00);
  }

  return result;
}

unint64_t sub_938B0()
{
  result = qword_31AB18;
  if (!qword_31AB18)
  {
    sub_2F9C(&qword_31AB10, &qword_26FBD8);
    sub_2F9C(&qword_31AB20, &qword_26FBE0);
    sub_2F9C(&qword_31AB28, &qword_26FBE8);
    sub_261FA0();
    sub_2F9C(&qword_31AB30, &qword_26FBF0);
    sub_8E38(&qword_31AB38, &qword_31AB30, &qword_26FBF0);
    sub_93AC0();
    swift_getOpaqueTypeConformance2();
    sub_947D8(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2F9C(&qword_31AA70, &qword_26FB70);
    sub_932E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB18);
  }

  return result;
}

unint64_t sub_93AC0()
{
  result = qword_31AB40;
  if (!qword_31AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB40);
  }

  return result;
}

uint64_t sub_93B14()
{
  v1 = *(sub_2EF0(&qword_31AA70, &qword_26FB70) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + *(sub_2EF0(&qword_31AAE8, &qword_26FBC0) + 44) + v2;
  sub_2EF0(&qword_31AAA8, &qword_26FB98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_260B00();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = (v4 + *(sub_2EF0(&qword_318470, &qword_26FBB0) + 36));
    v7 = *v6;

    v8 = v6[1];

    v9 = (v4 + *(sub_2EF0(&qword_318460, &qword_26FBA0) + 36));
    v10 = *v9;

    v11 = v9[1];
  }

  else
  {
    sub_2EF0(&qword_31AA90, &qword_26FB80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = &qword_31AAA0;
      v13 = &qword_26FB90;
    }

    else
    {
      v12 = &qword_31AAC8;
      v13 = &qword_26FBB8;
    }

    v14 = sub_2EF0(v12, v13);
    (*(*(v14 - 8) + 8))(v4, v14);
  }

  return swift_deallocObject();
}

unint64_t sub_93DBC()
{
  result = qword_31AB80;
  if (!qword_31AB80)
  {
    sub_2F9C(&qword_31AB88, &qword_287650);
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AB80);
  }

  return result;
}

unint64_t sub_93E8C()
{
  result = qword_31ABB8;
  if (!qword_31ABB8)
  {
    sub_2F9C(&qword_31ABB0, &qword_26FD10);
    sub_8E38(&qword_31ABC0, &qword_31ABC8, &qword_26FD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ABB8);
  }

  return result;
}

uint64_t sub_93F48()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for TopLockupMetadataView(0);
  v47 = *(*(v5 - 1) + 64);
  v48 = *(*(v5 - 1) + 80);
  v6 = *(v2 + 8);
  v6(v0 + v3, v1);
  v7 = *(v0 + v4);

  v46 = (v4 + v48 + 8) & ~v48;
  v8 = v0 + v46;
  sub_4054(*(v0 + v46), *(v0 + v46 + 8));
  v9 = (v0 + v46 + v5[5]);
  sub_2EF0(&qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v11 = sub_261690();
    (*(*(v11 - 8) + 8))(&v9[v10], v11);
  }

  else
  {
    v12 = *v9;
  }

  v13 = v5[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_261180();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
    v15 = *(v8 + v13);
  }

  v16 = (v8 + v5[7]);
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v18 = sub_261690();
    (*(*(v18 - 8) + 8))(&v16[v17], v18);
  }

  else
  {
    v19 = *v16;
  }

  v20 = v5[8];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_263640();
    (*(*(v21 - 8) + 8))(v8 + v20, v21);
  }

  else
  {
    v22 = *(v8 + v20);
  }

  sub_4054(*(v8 + v5[9]), *(v8 + v5[9] + 8));
  v23 = v5[10];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2616C0();
    (*(*(v24 - 8) + 8))(v8 + v23, v24);
  }

  else
  {
    v25 = *(v8 + v23);
  }

  v26 = (v8 + v5[11]);
  v27 = *v26;

  v28 = v26[1];

  v29 = v5[12];
  sub_2EF0(&qword_319B18, &qword_26DA40);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v8 + v29, v1);
  }

  v30 = v5[13];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v8 + v30, v1);
  }

  v31 = v5[14];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v8 + v31, v1);
  }

  v32 = v5[15];
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v8 + v32, v1);
  }

  v33 = (v8 + v5[16]);
  if (v33[3])
  {
    sub_3080(v33);
  }

  v34 = v5[17];
  v35 = sub_263E50();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v8 + v34, 1, v35))
  {
    (*(v36 + 8))(v8 + v34, v35);
  }

  v37 = v5[18];
  sub_2EF0(&qword_31A718, &qword_26F840);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v8 + v37, v1);
  }

  v38 = v8 + v5[19];
  sub_2EF0(&qword_31A720, &qword_26F848);
  if (!swift_getEnumCaseMultiPayload())
  {
    v6(v38, v1);
    v39 = type metadata accessor for TopLockupMetadataView.Footer(0);
    v40 = v39[5];
    v41 = *(v2 + 48);
    if (!v41(v38 + v40, 1, v1))
    {
      v6(v38 + v40, v1);
    }

    v42 = v39[6];
    if (!v41(v38 + v42, 1, v1))
    {
      v6(v38 + v42, v1);
    }

    v43 = v39[7];
    if (!v41(v38 + v43, 1, v1))
    {
      v6(v38 + v43, v1);
    }
  }

  v44 = *(v0 + ((v47 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_945CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TopLockupMetadataView(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_909BC(a1, v2 + v6, v10, v2 + v9, v11, a2);
}

unint64_t sub_9471C()
{
  result = qword_31ABF8;
  if (!qword_31ABF8)
  {
    sub_2F9C(&qword_31ABF0, &unk_26FD90);
    sub_947D8(&qword_3183C0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ABF8);
  }

  return result;
}

uint64_t sub_947D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ToolbarActionShareLinkMenuItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionShareLinkMenuItem() + 20);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ToolbarActionShareLinkMenuItem()
{
  result = qword_31AC70;
  if (!qword_31AC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ToolbarActionShareLinkMenuItem.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ToolbarActionShareLinkMenuItem() + 28);

  return sub_94998(v3, a1);
}

uint64_t ToolbarActionShareLinkMenuItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionShareLinkMenuItem() + 40);
  v4 = sub_260060();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolbarActionShareLinkMenuItem.init(title:subtitle:icon:isEnabled:isExplicit:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  type metadata accessor for ProfileRestrictions();
  sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *a7 = sub_261900();
  a7[1] = v13;
  v14 = type metadata accessor for ToolbarActionShareLinkMenuItem();
  v15 = v14[5];
  v16 = sub_260BD0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a7 + v15, a1, v16);
  sub_8198(a2, a7 + v14[6], &qword_316208, &qword_268BD0);
  sub_8198(a3, v27, &qword_31AC00, &qword_270F30);
  if (v30 == 255)
  {
    v19 = 0x800000000028FD20;
    sub_8E80(a3, &qword_31AC00, &qword_270F30);
    sub_8E80(a2, &qword_316208, &qword_268BD0);
    (*(v17 + 8))(a1, v16);
    if (v30 != 255)
    {
      sub_8E80(v27, &qword_31AC00, &qword_270F30);
    }

    v21 = 0;
    v18 = 0xD000000000000013;
    v20 = 1;
  }

  else
  {
    sub_8E80(a3, &qword_31AC00, &qword_270F30);
    sub_8E80(a2, &qword_316208, &qword_268BD0);
    (*(v17 + 8))(a1, v16);
    v18 = v27[0];
    v19 = v27[1];
    v20 = v28;
    v31[0] = *v29;
    *(v31 + 15) = *&v29[15];
    v21 = v30;
  }

  v22 = a7 + v14[7];
  *v22 = v18;
  *(v22 + 1) = v19;
  v22[16] = v20;
  *(v22 + 17) = v31[0];
  *(v22 + 4) = *(v31 + 15);
  v22[40] = v21;
  *(a7 + v14[8]) = a4 & 1;
  *(a7 + v14[9]) = a5 & 1;
  v23 = v14[10];
  v24 = sub_260060();
  return (*(*(v24 - 8) + 32))(a7 + v23, a6, v24);
}

uint64_t ToolbarActionShareLinkMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260060();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ToolbarActionShareLinkMenuItem();
  (*(v4 + 16))(v7, v1 + *(v8 + 40), v3);
  v15 = v1;
  type metadata accessor for ToolbarActionMenuItemLabel();
  sub_95060(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel);
  sub_263690();
  v9 = sub_950A8();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9 & 1;
  result = sub_2EF0(&qword_31AC10, &qword_26FDD0);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_95464;
  v13[2] = v11;
  return result;
}

uint64_t sub_94F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionShareLinkMenuItem();
  v5 = v4[5];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
  v7 = v4[6];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel();
  sub_8198(a1 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_94998(a1 + v4[7], a2 + v8[6]);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_95060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_950A8()
{
  v1 = type metadata accessor for ToolbarActionShareLinkMenuItem();
  if (*(v0 + *(v1 + 32)) != 1)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (*(v0 + *(v1 + 36)) != 1)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_260FF0();

    v4 = v7 ^ 1;
    return v4 & 1;
  }

  v6 = *(v0 + 8);
  type metadata accessor for ProfileRestrictions();
  sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_951C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_260060();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 16))(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2 + *(a1 + 40));
  v15 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel();
  sub_95060(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel);
  sub_263690();
  v9 = sub_950A8();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v9 & 1;
  result = sub_2EF0(&qword_31AC10, &qword_26FDD0);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_95A74;
  v13[2] = v11;
  return result;
}

uint64_t sub_95390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_953C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261C20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_954AC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = sub_260BD0();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_260060();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_95644(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
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

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2EF0(&qword_316208, &qword_268BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_260060();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_957BC()
{
  sub_95884();
  if (v0 <= 0x3F)
  {
    sub_260BD0();
    if (v1 <= 0x3F)
    {
      sub_95918();
      if (v2 <= 0x3F)
      {
        sub_260060();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_95884()
{
  if (!qword_31AC80)
  {
    type metadata accessor for ProfileRestrictions();
    sub_95060(&qword_326DC0, type metadata accessor for ProfileRestrictions);
    v0 = sub_261910();
    if (!v1)
    {
      atomic_store(v0, &qword_31AC80);
    }
  }
}

void sub_95918()
{
  if (!qword_31A8C8)
  {
    sub_260BD0();
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31A8C8);
    }
  }
}

unint64_t sub_95974()
{
  result = qword_31ACC8;
  if (!qword_31ACC8)
  {
    sub_2F9C(&qword_31AC10, &qword_26FDD0);
    sub_8E38(&qword_31ACD0, &qword_31ACD8, &unk_26FE80);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31ACC8);
  }

  return result;
}

uint64_t static Font.Design.serifIfSupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v2 = sub_2625C0();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
  }

  else
  {
    v7 = enum case for Font.Design.serif (_:);
    v8 = sub_2625C0();
    v10 = *(v8 - 8);
    (*(v10 + 104))(a1, v7, v8);
    v3 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v4 = v8;
  }

  return v3(v5, v6, 1, v4);
}

uint64_t sub_95B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_265050();
  sub_264500();
  v7 = sub_265080();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_264F10() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_95C90()
{
  result = sub_95CB0();
  qword_31ACE0 = result;
  return result;
}

uint64_t sub_95CB0()
{
  sub_2EF0(&qword_31ACF0, &unk_26FF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D30;
  result = kCTFontUIFontDesignTrait;
  if (!kCTFontUIFontDesignTrait)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(inited + 32) = sub_264460();
  *(inited + 40) = v2;
  result = kCTFontUIFontDesignSerif;
  if (!kCTFontUIFontDesignSerif)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(inited + 48) = sub_264460();
  *(inited + 56) = v3;
  v4 = sub_F13C(inited);
  swift_setDeallocating();
  sub_8E80(inited + 32, &qword_31ACF8, &qword_273580);
  sub_2EF0(&qword_31AD00, &qword_26FF70);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_267D30;
  *(v5 + 32) = sub_264460();
  *(v5 + 40) = v6;
  *(v5 + 48) = v4;
  sub_F250(v5);
  swift_setDeallocating();
  sub_8E80(v5 + 32, &qword_31AD08, &qword_26FF78);
  sub_2EF0(&qword_31AD10, &qword_26FF80);
  isa = sub_264270().super.isa;

  v8 = CTFontDescriptorCreateWithAttributes(isa);

  v9 = CTFontCreateWithFontDescriptor(v8, 14.0, 0);
  v10 = CTFontCopySupportedLanguages(v9);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_264680();
  }

  v11 = sub_127F84(&_swiftEmptyArrayStorage);

  return v11;
}

uint64_t static Font.Design.defaultIfUnsupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v2 = enum case for Font.Design.default(_:);
    v3 = sub_2625C0();
    v10 = *(v3 - 8);
    (*(v10 + 104))(a1, v2, v3);
    v4 = *(v10 + 56);
    v5 = a1;
    v6 = 0;
    v7 = v3;
  }

  else
  {
    v8 = sub_2625C0();
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = a1;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

uint64_t _s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0()
{
  v0 = sub_2EF0(&qword_31ACE8, &qword_26FF58);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v30 - v2;
  v4 = sub_260280();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260210();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260230();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = sub_264420();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v20 = [objc_opt_self() mainBundle];
    v21 = [v20 preferredLocalizations];

    v22 = sub_264690();
    if (v22[2])
    {
      v23 = v22[4];
      v24 = v22[5];

      sub_260200();
      sub_2601F0();
      (*(v31 + 8))(v11, v8);
      sub_260270();
      (*(v32 + 8))(v7, v4);
      v25 = v33;
      if ((*(v33 + 48))(v3, 1, v12) == 1)
      {
        sub_8E80(v3, &qword_31ACE8, &qword_26FF58);
        v19 = 1;
      }

      else
      {
        (*(v25 + 32))(v15, v3, v12);
        if (qword_3158F8 != -1)
        {
          swift_once();
        }

        v26 = qword_31ACE0;
        v27 = sub_260220();
        LOBYTE(v26) = sub_95B98(v27, v28, v26);

        (*(v25 + 8))(v15, v12);
        v19 = v26 ^ 1;
      }
    }

    else
    {

      v19 = 1;
    }
  }

  return v19 & 1;
}

uint64_t sub_96414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2601E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_96480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_966E8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.referenceId.getter()
{
  sub_9652C();

  return sub_261CB0();
}

unint64_t sub_9652C()
{
  result = qword_31AD18;
  if (!qword_31AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD18);
  }

  return result;
}

uint64_t View.referenceId(_:)()
{
  swift_getKeyPath();
  sub_262A90();
}

uint64_t sub_965FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_31AD20, &unk_2799D0);
  sub_261730();
  sub_96674();
  return swift_getWitnessTable();
}

unint64_t sub_96674()
{
  result = qword_31AD28;
  if (!qword_31AD28)
  {
    sub_2F9C(&qword_31AD20, &unk_2799D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD28);
  }

  return result;
}

unint64_t sub_966E8()
{
  result = qword_31AD30;
  if (!qword_31AD30)
  {
    sub_2F9C(&qword_31A0C8, &qword_26E2C0);
    sub_9676C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD30);
  }

  return result;
}

unint64_t sub_9676C()
{
  result = qword_31AD38;
  if (!qword_31AD38)
  {
    sub_2601E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AD38);
  }

  return result;
}

double static ListItemViewModel.topChartsList(assetInfo:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  sub_2E18(a1, a1[3]);
  v5 = *(v4 + 8);
  v6 = sub_2606E0();
  v8 = v7;
  sub_30CC(a1, v17);
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v21 = 255;
  sub_30CC(a1, &v16);
  KeyPath = swift_getKeyPath();
  v15 = 0;
  sub_3E840(v17, a2 + 8);
  static ListItemMetadata.topChartsListPage(assetInfo:)(a1, a2 + 80);
  v13[3] = &type metadata for ListItemAccessoryBuyButton;
  v13[4] = sub_825A0();
  v13[0] = swift_allocObject();
  sub_969B0(&KeyPath, v13[0] + 16);
  sub_30CC(a1, a2 + 408);
  sub_30CC(a1, v12);
  v9 = type metadata accessor for ListItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v12, 1, a2 + *(v9 + 40));
  sub_96A0C(&KeyPath);
  sub_82640(v17);
  *a2 = 0;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0;
  sub_82704(v13, a2 + 360);
  *(a2 + 400) = 1;
  v10 = a2 + *(v9 + 44);
  result = 9.28601737e242;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *v10 = xmmword_270000;
  *(v10 + 16) = 0u;
  *(v10 + 128) = v6;
  *(v10 + 136) = v8;
  *(v10 + 144) = 2;
  return result;
}

uint64_t sub_9696C()
{
  sub_4054(*(v0 + 16), *(v0 + 24));
  sub_3080((v0 + 32));

  return swift_deallocObject();
}

uint64_t Metrics.Location.adamId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Metrics.Location.artistName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Metrics.Location.fcKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Metrics.Location.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Metrics.Location.idType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Metrics.Location.kind.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Metrics.Location.locationPosition.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t Metrics.Location.locationPosition.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t Metrics.Location.locationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Metrics.Location.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t Metrics.Location.narratorName.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t Metrics.Location.narratorName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t Metrics.Location.narratorType.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t Metrics.Location.narratorType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t Metrics.Location.init(adamId:artistName:fcKind:id:idType:isSG:kind:locationPosition:locationType:name:narratorName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, _BYTE *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v19 = *a10;
  v20 = *a15;
  if (v20 <= 2)
  {
    if (*a15)
    {
      if (v20 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x6E6D756C6F63;
      }

      else
      {
        v21 = 0xE600000000000000;
        v22 = 0x7265746C6966;
      }
    }

    else
    {
      v21 = 0xE600000000000000;
      v22 = 0x6E6F74747562;
    }
  }

  else if (*a15 > 4u)
  {
    if (v20 == 5)
    {
      v21 = 0xE700000000000000;
      v22 = 0x6E6F6974636573;
    }

    else
    {
      v21 = 0xE600000000000000;
      v22 = 0x68736F6F7773;
    }
  }

  else if (v20 == 3)
  {
    v21 = 0xE600000000000000;
    v22 = 0x70756B636F6CLL;
  }

  else
  {
    v21 = 0xE700000000000000;
    v22 = 0x77656976657270;
  }

  v23 = 0xE600000000000000;
  if (v19)
  {
    v23 = 0xEA00000000006C61;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  result = 0x69746E6575716573;
  if ((v19 & 1) == 0)
  {
    result = 0x64695F737469;
  }

  v25 = v19 == 2;
  if (v19 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (v25)
  {
    result = 0;
  }

  v27 = 0x696F56736B6F6F42;
  if ((a11 & 1) == 0)
  {
    v27 = 0;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v28 = 0xEB00000000736563;
  if ((a11 & 1) == 0)
  {
    v28 = 0;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = result;
  *(a9 + 72) = v26;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v21;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 152) = a19;
  *(a9 + 160) = v27;
  *(a9 + 168) = v28;
  return result;
}

uint64_t Metrics.LocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E6F74747562;
  v3 = 0x6E6F6974636573;
  if (v1 != 5)
  {
    v3 = 0x68736F6F7773;
  }

  v4 = 0x70756B636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x77656976657270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6D756C6F63;
  if (v1 != 1)
  {
    v5 = 0x7265746C6966;
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

uint64_t sub_97050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a2;
  v53 = a3;
  v7 = sub_2EF0(&qword_31AEE0, &qword_270378);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = a1[4];
  sub_2E18(a1, a1[3]);
  v15 = sub_2609B0();
  v49 = v16;
  v50 = v15;
  v17 = a1[4];
  sub_2E18(a1, a1[3]);
  v18 = *(v17 + 8);
  v19 = sub_2606E0();
  v47 = v20;
  v48 = v19;
  sub_30CC(a1, v54);
  v21 = sub_2EF0(&qword_31AEE8, &qword_28CD40);
  v22 = sub_260790();
  v45 = v21;
  v23 = swift_dynamicCast();
  v24 = *(v22 - 8);
  v25 = *(v24 + 56);
  if (v23)
  {
    v25(v13, 0, 1, v22);
    v46 = sub_260780();
    (*(v24 + 8))(v13, v22);
  }

  else
  {
    v25(v13, 1, 1, v22);
    sub_99524(v13);
    v46 = 0;
  }

  v26 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_260860();
  v27 = sub_2609D0();
  v29 = v28;
  if (v27 == sub_2609D0() && v29 == v30)
  {

    v31 = 0xE90000000000006BLL;
    v32 = 0x6F6F626F69647561;
  }

  else
  {
    v33 = sub_264F10();

    v34 = (v33 & 1) == 0;
    v32 = 0x6F6F626F69647561;
    if (v34)
    {
      v32 = 0x6B6F6F6265;
    }

    v31 = 0xE90000000000006BLL;
    if (v34)
    {
      v31 = 0xE500000000000000;
    }
  }

  sub_30CC(a1, v54);
  if (swift_dynamicCast())
  {
    v25(v11, 0, 1, v22);
    sub_9958C();
    v35 = sub_260700();
    (*(v24 + 8))(v11, v22);
    if (v35)
    {
      v36 = sub_260690();
      v38 = v37;

      goto LABEL_18;
    }
  }

  else
  {
    v25(v11, 1, 1, v22);
    sub_99524(v11);
  }

  v36 = 0;
  v38 = 0;
LABEL_18:
  v54[0] = 0;
  v39 = 0x696F56736B6F6F42;
  if ((v46 & 1) == 0)
  {
    v39 = 0;
  }

  v40 = 0xEB00000000736563;
  if ((v46 & 1) == 0)
  {
    v40 = 0;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  v41 = v49;
  *(a5 + 16) = v50;
  *(a5 + 24) = v41;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  v42 = v47;
  *(a5 + 48) = v48;
  *(a5 + 56) = v42;
  *(a5 + 64) = xmmword_270040;
  *(a5 + 80) = v32;
  *(a5 + 88) = v31;
  *(a5 + 96) = v51;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0x70756B636F6CLL;
  *(a5 + 120) = 0xE600000000000000;
  v43 = v53;
  *(a5 + 128) = v52;
  *(a5 + 136) = v43;
  *(a5 + 144) = v36;
  *(a5 + 152) = v38;
  *(a5 + 160) = v39;
  *(a5 + 168) = v40;
  return sub_3080(a1);
}

double sub_97474()
{
  result = 0.0;
  xmmword_31AD40 = 0u;
  *algn_31AD50 = 0u;
  xmmword_31AD60 = 0u;
  xmmword_31AD70 = 0u;
  xmmword_31AD80 = 0u;
  xmmword_31AD90 = 0u;
  *&xmmword_31ADA0 = 0;
  BYTE8(xmmword_31ADA0) = 0;
  *&xmmword_31ADB0 = 0x6E6F74747562;
  *(&xmmword_31ADB0 + 1) = 0xE600000000000000;
  xmmword_31ADC0 = 0u;
  xmmword_31ADD0 = 0u;
  xmmword_31ADE0 = 0u;
  return result;
}

uint64_t static Metrics.Location.genericButton.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_315900 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_31ADB0;
  v13[8] = xmmword_31ADC0;
  v13[9] = xmmword_31ADD0;
  v2 = xmmword_31ADD0;
  v13[10] = xmmword_31ADE0;
  v3 = xmmword_31AD70;
  v4 = xmmword_31AD80;
  v13[4] = xmmword_31AD80;
  v13[5] = xmmword_31AD90;
  v5 = xmmword_31AD90;
  v6 = xmmword_31ADA0;
  v13[6] = xmmword_31ADA0;
  v13[7] = xmmword_31ADB0;
  v13[0] = xmmword_31AD40;
  v13[1] = *algn_31AD50;
  v8 = xmmword_31AD40;
  v7 = *algn_31AD50;
  v9 = xmmword_31AD60;
  v13[2] = xmmword_31AD60;
  v13[3] = xmmword_31AD70;
  a1[8] = xmmword_31ADC0;
  a1[9] = v2;
  a1[10] = xmmword_31ADE0;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v1;
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v3;
  return sub_97590(v13, &v12);
}

double sub_975C8()
{
  result = 0.0;
  xmmword_31ADF0 = 0u;
  unk_31AE00 = 0u;
  xmmword_31AE10 = 0u;
  xmmword_31AE20 = 0u;
  xmmword_31AE30 = 0u;
  xmmword_31AE40 = 0u;
  *&xmmword_31AE50 = 0;
  BYTE8(xmmword_31AE50) = 0;
  *&xmmword_31AE60 = 0x6E6F6974636573;
  *(&xmmword_31AE60 + 1) = 0xE700000000000000;
  xmmword_31AE70 = 0u;
  xmmword_31AE80 = 0u;
  xmmword_31AE90 = 0u;
  return result;
}

uint64_t static Metrics.Location.genericSection.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_315908 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_31AE60;
  v13[8] = xmmword_31AE70;
  v13[9] = xmmword_31AE80;
  v2 = xmmword_31AE80;
  v13[10] = xmmword_31AE90;
  v3 = xmmword_31AE20;
  v4 = xmmword_31AE30;
  v13[4] = xmmword_31AE30;
  v13[5] = xmmword_31AE40;
  v5 = xmmword_31AE40;
  v6 = xmmword_31AE50;
  v13[6] = xmmword_31AE50;
  v13[7] = xmmword_31AE60;
  v13[0] = xmmword_31ADF0;
  v13[1] = unk_31AE00;
  v8 = xmmword_31ADF0;
  v7 = unk_31AE00;
  v9 = xmmword_31AE10;
  v13[2] = xmmword_31AE10;
  v13[3] = xmmword_31AE20;
  a1[8] = xmmword_31AE70;
  a1[9] = v2;
  a1[10] = xmmword_31AE90;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v1;
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v3;
  return sub_97590(v13, &v12);
}

uint64_t static Metrics.Location.lockup(for:locationPosition:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_30CC(a1, v10);
  v6 = a1[4];
  sub_2E18(a1, a1[3]);
  v7 = sub_2609A0();
  return sub_97050(v10, v7, v8, a2, a3);
}

uint64_t sub_977CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64496D616461;
    v6 = 0x646E694B6366;
    v7 = 25705;
    if (a1 != 3)
    {
      v7 = 0x657079546469;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x614E747369747261;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701667182;
    if (a1 != 8)
    {
      v1 = 0x726F74617272616ELL;
    }

    v2 = 1684957547;
    v3 = 0xD000000000000010;
    if (a1 != 6)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_97928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_99198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_9795C(uint64_t a1)
{
  v2 = sub_98CE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_97998(uint64_t a1)
{
  v2 = sub_98CE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Metrics.Location.encode(to:)(void *a1)
{
  v3 = sub_2EF0(&qword_31AEA0, &qword_270050);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v38 = v1[3];
  v39 = v10;
  v11 = v1[4];
  v36 = v1[5];
  v37 = v11;
  v12 = v1[6];
  v34 = v1[7];
  v35 = v12;
  v13 = v1[9];
  v33 = v1[8];
  v14 = v1[11];
  v29 = v1[10];
  v30 = v14;
  v31 = v13;
  v15 = v1[12];
  v28 = *(v1 + 104);
  v16 = v1[14];
  v27[5] = v1[15];
  v27[6] = v15;
  v17 = v1[16];
  v27[3] = v1[17];
  v27[4] = v16;
  v18 = v1[19];
  v27[0] = v1[18];
  v27[1] = v18;
  v27[2] = v17;
  v19 = v1[21];
  v32 = v1[20];
  v20 = a1[3];
  v21 = a1[4];
  v22 = a1;
  v24 = v23;
  sub_2E18(v22, v20);
  sub_98CE0();
  sub_265140();
  v51 = 0;
  v25 = v40;
  sub_264E40();
  if (!v25)
  {
    v40 = v19;
    v50 = 1;
    sub_264E40();
    v49 = 2;
    sub_264E40();
    v48 = 3;
    sub_264E40();
    v47 = 4;
    sub_264E40();
    v46 = 5;
    sub_264E40();
    v45 = 6;
    sub_264E50();
    v44 = 7;
    sub_264E70();
    v43 = 8;
    sub_264E40();
    v42 = 9;
    sub_264E40();
    v41 = 10;
    sub_264E40();
  }

  return (*(v4 + 8))(v7, v24);
}

uint64_t Metrics.Location.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2EF0(&qword_31AEB0, &qword_270058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v58 = a1;
  sub_2E18(a1, v10);
  sub_98CE0();
  sub_265120();
  if (v2)
  {
    v60 = v2;
    v59 = 0;
    sub_3080(v58);
  }

  else
  {
    v12 = v6;
    LOBYTE(v72[0]) = 0;
    v14 = sub_264D70();
    v56 = v15;
    LOBYTE(v72[0]) = 1;
    v16 = sub_264D70();
    v55 = v17;
    LOBYTE(v72[0]) = 2;
    *&v54 = sub_264D70();
    *(&v54 + 1) = v18;
    LOBYTE(v72[0]) = 3;
    *&v53 = sub_264D70();
    *(&v53 + 1) = v19;
    LOBYTE(v72[0]) = 4;
    *&v52 = sub_264D70();
    *(&v52 + 1) = v20;
    LOBYTE(v72[0]) = 5;
    v21 = sub_264D70();
    v51 = v22;
    LOBYTE(v72[0]) = 6;
    v50 = sub_264D90();
    v87 = v23 & 1;
    LOBYTE(v72[0]) = 7;
    v49 = sub_264DC0();
    v57 = v24;
    LOBYTE(v72[0]) = 8;
    v48 = sub_264D70();
    v59 = v25;
    v60 = 0;
    LOBYTE(v72[0]) = 9;
    *&v47 = sub_264D70();
    *(&v47 + 1) = v26;
    v60 = 0;
    v88 = 10;
    v46 = sub_264D70();
    v60 = 0;
    v28 = v27;
    (*(v12 + 8))(v9, v5);
    v44 = v16;
    v45 = v14;
    *&v61 = v14;
    *(&v61 + 1) = v56;
    *&v62 = v16;
    *(&v62 + 1) = v55;
    v63 = v54;
    v64 = v53;
    v65 = v52;
    v43 = v21;
    *&v66 = v21;
    *(&v66 + 1) = v51;
    *&v67 = v50;
    HIDWORD(v42) = v87;
    BYTE8(v67) = v87;
    v30 = v48;
    v29 = v49;
    v31 = v57;
    *&v68 = v49;
    *(&v68 + 1) = v57;
    v32 = v59;
    *&v69 = v48;
    *(&v69 + 1) = v59;
    v33 = v47;
    v70 = v47;
    *&v71 = v46;
    *(&v71 + 1) = v28;
    v34 = v66;
    a2[4] = v52;
    a2[5] = v34;
    v35 = v61;
    v36 = v62;
    v37 = v64;
    a2[2] = v63;
    a2[3] = v37;
    *a2 = v35;
    a2[1] = v36;
    v38 = v67;
    v39 = v68;
    v40 = v71;
    v41 = v69;
    a2[9] = v70;
    a2[10] = v40;
    a2[7] = v39;
    a2[8] = v41;
    a2[6] = v38;
    sub_97590(&v61, v72);
    sub_3080(v58);
    v72[0] = v45;
    v72[1] = v56;
    v72[2] = v44;
    v72[3] = v55;
    v73 = v54;
    v74 = v53;
    v75 = v52;
    v76 = v43;
    v77 = v51;
    v78 = v50;
    v79 = BYTE4(v42);
    v80 = v29;
    v81 = v31;
    v82 = v30;
    v83 = v32;
    v84 = v33;
    v85 = v46;
    v86 = v28;
    return sub_98D34(v72);
  }
}

uint64_t Metrics.LocationType.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_3001C0;
  v9._object = a2;
  v6 = sub_264D40(v5, v9);

  v8 = 7;
  if (v6 < 7)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_98434()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_264500();
}

void sub_98540(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  v5 = 0xE700000000000000;
  v6 = 0x6E6F6974636573;
  v7 = 0xE600000000000000;
  if (v2 != 5)
  {
    v6 = 0x68736F6F7773;
    v5 = 0xE600000000000000;
  }

  v8 = 0x70756B636F6CLL;
  if (v2 != 3)
  {
    v8 = 0x77656976657270;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E6D756C6F63;
  if (v2 != 1)
  {
    v9 = 0x7265746C6966;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

BOOL _s7BooksUI7MetricsO8LocationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v173 = *(a1 + 16);
  v169 = *(a1 + 32);
  v4 = *(a1 + 48);
  v175 = *(a1 + 40);
  v176 = *(a1 + 24);
  v5 = *(a1 + 64);
  v171 = *(a1 + 56);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v161 = *(a1 + 144);
  v164 = *(a1 + 152);
  v15 = *(a1 + 160);
  v163 = *(a1 + 168);
  v16 = *(a2 + 8);
  v172 = *(a2 + 16);
  v17 = *(a2 + 24);
  v168 = *(a2 + 32);
  v174 = *(a2 + 40);
  v167 = *(a2 + 48);
  v18 = *(a2 + 64);
  v170 = *(a2 + 56);
  v20 = *(a2 + 72);
  v19 = *(a2 + 80);
  v22 = *(a2 + 88);
  v21 = *(a2 + 96);
  v23 = *(a2 + 104);
  v24 = *(a2 + 112);
  v25 = *(a2 + 120);
  v27 = *(a2 + 128);
  v26 = *(a2 + 136);
  v28 = *(a2 + 144);
  v165 = *(a2 + 152);
  v160 = *(a2 + 160);
  v162 = *(a2 + 168);
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v166 = *(a1 + 48);
    if (*a1 != *a2 || v3 != v16)
    {
      v154 = *(a1 + 96);
      v116 = *(a1 + 64);
      v120 = *(a2 + 80);
      v29 = *(a1 + 160);
      v142 = *(a2 + 104);
      v148 = *(a1 + 104);
      v30 = *(a2 + 144);
      v125 = *(a2 + 88);
      v130 = *(a1 + 88);
      v31 = *(a1 + 128);
      v135 = *(a1 + 80);
      v32 = *(a1 + 136);
      v105 = *(a2 + 136);
      v106 = *(a2 + 112);
      v33 = *(a2 + 128);
      v108 = *(a2 + 72);
      v112 = *(a1 + 72);
      v34 = *(a1 + 112);
      v35 = *(a1 + 120);
      v36 = *(a2 + 120);
      v37 = sub_264F10();
      v25 = v36;
      v8 = v154;
      v12 = v35;
      v11 = v34;
      v24 = v106;
      v20 = v108;
      v27 = v33;
      v26 = v105;
      v14 = v32;
      v9 = v130;
      v6 = v135;
      v13 = v31;
      v19 = v120;
      v22 = v125;
      v28 = v30;
      v23 = v142;
      v10 = v148;
      v15 = v29;
      v7 = v112;
      v5 = v116;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v166 = *(a1 + 48);
    if (v16)
    {
      return 0;
    }
  }

  if (v176)
  {
    if (!v17)
    {
      return 0;
    }

    if (v173 != v172 || v176 != v17)
    {
      v155 = v8;
      v143 = v23;
      v149 = v10;
      v38 = v15;
      v137 = v21;
      v39 = v28;
      v121 = v19;
      v126 = v22;
      v40 = v13;
      v41 = v14;
      v113 = v7;
      v117 = v5;
      v42 = v26;
      v43 = v27;
      v107 = v24;
      v109 = v20;
      v44 = v11;
      v45 = v12;
      v131 = v9;
      v46 = v25;
      v47 = sub_264F10();
      v25 = v46;
      v9 = v131;
      v8 = v155;
      v12 = v45;
      v11 = v44;
      v24 = v107;
      v20 = v109;
      v27 = v43;
      v26 = v42;
      v7 = v113;
      v5 = v117;
      v14 = v41;
      v13 = v40;
      v19 = v121;
      v22 = v126;
      v28 = v39;
      v21 = v137;
      v15 = v38;
      v23 = v143;
      v10 = v149;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v175)
  {
    v48 = v166;
    if (!v174)
    {
      return 0;
    }

    if (v169 != v168 || v175 != v174)
    {
      v156 = v8;
      v177 = v15;
      v138 = v21;
      v49 = v28;
      v122 = v19;
      v127 = v22;
      v50 = v13;
      v51 = v14;
      v114 = v7;
      v118 = v5;
      v52 = v26;
      v53 = v27;
      v110 = v20;
      v54 = v11;
      v55 = v12;
      v144 = v23;
      v150 = v10;
      v56 = v24;
      v132 = v9;
      v57 = v25;
      v58 = sub_264F10();
      v48 = v166;
      v25 = v57;
      v24 = v56;
      v23 = v144;
      v10 = v150;
      v8 = v156;
      v12 = v55;
      v11 = v54;
      v20 = v110;
      v7 = v114;
      v27 = v53;
      v26 = v52;
      v5 = v118;
      v19 = v122;
      v14 = v51;
      v13 = v50;
      v22 = v127;
      v9 = v132;
      v28 = v49;
      v21 = v138;
      v15 = v177;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v48 = v166;
    if (v174)
    {
      return 0;
    }
  }

  if (v171)
  {
    if (!v170)
    {
      return 0;
    }

    if (v48 != v167 || v171 != v170)
    {
      v157 = v8;
      v178 = v15;
      v139 = v21;
      v59 = v28;
      v123 = v19;
      v128 = v22;
      v60 = v13;
      v61 = v14;
      v115 = v7;
      v119 = v5;
      v62 = v26;
      v63 = v27;
      v111 = v20;
      v64 = v11;
      v65 = v12;
      v145 = v23;
      v151 = v10;
      v66 = v24;
      v133 = v9;
      v67 = v25;
      v68 = sub_264F10();
      v25 = v67;
      v24 = v66;
      v23 = v145;
      v10 = v151;
      v8 = v157;
      v12 = v65;
      v11 = v64;
      v20 = v111;
      v7 = v115;
      v27 = v63;
      v26 = v62;
      v5 = v119;
      v19 = v123;
      v14 = v61;
      v13 = v60;
      v22 = v128;
      v9 = v133;
      v28 = v59;
      v21 = v139;
      v15 = v178;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v170)
  {
    return 0;
  }

  if (v7)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v18 || v7 != v20)
    {
      v158 = v8;
      v136 = v6;
      v140 = v21;
      v69 = v15;
      v70 = v28;
      v124 = v19;
      v129 = v22;
      v71 = v13;
      v72 = v14;
      v73 = v26;
      v74 = v27;
      v75 = v11;
      v76 = v12;
      v146 = v23;
      v152 = v10;
      v77 = v24;
      v134 = v9;
      v78 = v25;
      v79 = sub_264F10();
      v25 = v78;
      v24 = v77;
      v23 = v146;
      v10 = v152;
      v8 = v158;
      v12 = v76;
      v11 = v75;
      v27 = v74;
      v19 = v124;
      v26 = v73;
      v14 = v72;
      v13 = v71;
      v22 = v129;
      v9 = v134;
      v28 = v70;
      v15 = v69;
      v6 = v136;
      v21 = v140;
      if ((v79 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v6 != v19 || v9 != v22)
    {
      v159 = v8;
      v80 = v15;
      v141 = v21;
      v81 = v28;
      v82 = v13;
      v83 = v14;
      v84 = v26;
      v85 = v27;
      v86 = v11;
      v87 = v12;
      v147 = v23;
      v153 = v10;
      v88 = v24;
      v89 = v25;
      v90 = sub_264F10();
      v25 = v89;
      v24 = v88;
      v23 = v147;
      v10 = v153;
      v8 = v159;
      v12 = v87;
      v11 = v86;
      v27 = v85;
      v26 = v84;
      v14 = v83;
      v13 = v82;
      v28 = v81;
      v21 = v141;
      v15 = v80;
      if ((v90 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v10)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v21)
    {
      v91 = v23;
    }

    else
    {
      v91 = 1;
    }

    if (v91)
    {
      return 0;
    }
  }

  if (v11 != v24 || v12 != v25)
  {
    v92 = v15;
    v93 = v28;
    v94 = v13;
    v95 = v14;
    v96 = v26;
    v97 = v27;
    v98 = sub_264F10();
    v27 = v97;
    v26 = v96;
    v14 = v95;
    v13 = v94;
    v28 = v93;
    v15 = v92;
    if ((v98 & 1) == 0)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (!v26)
    {
      return 0;
    }

    if (v13 != v27 || v14 != v26)
    {
      v99 = v15;
      v100 = v28;
      v101 = sub_264F10();
      v28 = v100;
      v15 = v99;
      if ((v101 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v164)
  {
    if (!v165)
    {
      return 0;
    }

    if (v161 != v28 || v164 != v165)
    {
      v102 = v15;
      v103 = sub_264F10();
      v15 = v102;
      if ((v103 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v165)
  {
    return 0;
  }

  if (v163)
  {
    return v162 && (v15 == v160 && v163 == v162 || (sub_264F10() & 1) != 0);
  }

  return !v162;
}

unint64_t sub_98CE0()
{
  result = qword_31AEA8;
  if (!qword_31AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEA8);
  }

  return result;
}

unint64_t sub_98D64(uint64_t a1)
{
  result = sub_98D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_98D8C()
{
  result = qword_31AEB8;
  if (!qword_31AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEB8);
  }

  return result;
}

unint64_t sub_98DE4()
{
  result = qword_31AEC0;
  if (!qword_31AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEC0);
  }

  return result;
}

__n128 sub_98E38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_98E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_98EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11descr2FCCF9V8LocationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11descr2FCCF9V8LocationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_99094()
{
  result = qword_31AEC8;
  if (!qword_31AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEC8);
  }

  return result;
}

unint64_t sub_990EC()
{
  result = qword_31AED0;
  if (!qword_31AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AED0);
  }

  return result;
}

unint64_t sub_99144()
{
  result = qword_31AED8;
  if (!qword_31AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AED8);
  }

  return result;
}

uint64_t sub_99198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E694B6366 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000290770 == a2 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_264F10() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC000000656D614ELL || (sub_264F10() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F74617272616ELL && a2 == 0xEC00000065707954)
  {

    return 10;
  }

  else
  {
    v6 = sub_264F10();

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

uint64_t sub_99524(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31AEE0, &qword_270378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9958C()
{
  result = qword_31AEF0;
  if (!qword_31AEF0)
  {
    sub_260790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AEF0);
  }

  return result;
}

uint64_t sub_995E4@<X0>(uint64_t a1@<X8>)
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

uint64_t ToolbarButtonStyle.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ToolbarButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = sub_2EF0(&qword_31AEF8, &qword_2703B8);
  v1 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v3 = &v42 - v2;
  v42 = sub_2EF0(&qword_31AF00, &qword_2703C0);
  v4 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v6 = &v42 - v5;
  v43 = sub_2EF0(&qword_31AF08, &qword_2703C8);
  v7 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v9 = &v42 - v8;
  v10 = sub_261180();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  sub_995E4(&v42 - v16);
  (*(v11 + 104))(v15, enum case for ColorScheme.light(_:), v10);
  v18 = sub_261170();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  sub_2622A0();
  if (v18)
  {
    v20 = &v9[*(sub_2EF0(&qword_31AF10, &qword_2703D0) + 36)];
    v21 = *(sub_2EF0(&qword_31AF18, &qword_2703D8) + 28);
    sub_261E70();
    v22 = sub_261E80();
    (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
    *v20 = swift_getKeyPath();
    LODWORD(v20) = sub_262120();
    LODWORD(v21) = sub_262110();
    v23 = &v9[*(sub_2EF0(&qword_31AF50, &qword_270460) + 36)];
    *v23 = v20;
    *(v23 + 1) = 1055286886;
    *(v23 + 2) = v21;
    *(v23 + 3) = 1051931443;
    v24 = sub_262690();
    KeyPath = swift_getKeyPath();
    v26 = &v9[*(v43 + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = &qword_31AF08;
    v28 = &qword_2703C8;
    sub_8198(v9, v6, &qword_31AF08, &qword_2703C8);
    swift_storeEnumTagMultiPayload();
    sub_99ED8();
    sub_9A158();
    sub_261F80();
    v29 = v9;
  }

  else
  {
    v30 = &v3[*(sub_2EF0(&qword_31AF10, &qword_2703D0) + 36)];
    v31 = *(sub_2EF0(&qword_31AF18, &qword_2703D8) + 28);
    sub_261E70();
    v32 = sub_261E80();
    (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
    *v30 = swift_getKeyPath();
    LODWORD(v30) = sub_262120();
    v33 = &v3[*(sub_2EF0(&qword_31AF20, &qword_270410) + 36)];
    v34 = *(sub_2EF0(&qword_31AF28, &qword_270418) + 36);
    v35 = enum case for BlendMode.lighten(_:);
    v36 = sub_263640();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    *v33 = v30;
    *(v33 + 1) = 1061997773;
    v37 = &v33[*(sub_2EF0(&qword_31AF30, &qword_270420) + 52)];
    sub_2634D0();
    *&v37[*(sub_2EF0(&qword_31AF38, &qword_270428) + 36)] = 1058642330;
    v38 = sub_262690();
    v39 = swift_getKeyPath();
    v40 = &v3[*(v44 + 36)];
    *v40 = v39;
    v40[1] = v38;
    v27 = &qword_31AEF8;
    v28 = &qword_2703B8;
    sub_8198(v3, v6, &qword_31AEF8, &qword_2703B8);
    swift_storeEnumTagMultiPayload();
    sub_99ED8();
    sub_9A158();
    sub_261F80();
    v29 = v3;
  }

  return sub_8E80(v29, v27, v28);
}

uint64_t sub_99E24(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B030, &unk_2704D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_8198(a1, &v6 - v4, &qword_31B030, &unk_2704D0);
  return sub_261B70();
}

unint64_t sub_99ED8()
{
  result = qword_31AF40;
  if (!qword_31AF40)
  {
    sub_2F9C(&qword_31AF08, &qword_2703C8);
    sub_99F90();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF40);
  }

  return result;
}

unint64_t sub_99F90()
{
  result = qword_31AF48;
  if (!qword_31AF48)
  {
    sub_2F9C(&qword_31AF50, &qword_270460);
    sub_9A048();
    sub_8E38(&qword_31AF68, &qword_31AF70, &unk_270468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF48);
  }

  return result;
}

unint64_t sub_9A048()
{
  result = qword_31AF58;
  if (!qword_31AF58)
  {
    sub_2F9C(&qword_31AF10, &qword_2703D0);
    sub_9A100();
    sub_8E38(&qword_31AF60, &qword_31AF18, &qword_2703D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF58);
  }

  return result;
}

unint64_t sub_9A100()
{
  result = qword_3183C0;
  if (!qword_3183C0)
  {
    sub_262290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183C0);
  }

  return result;
}

unint64_t sub_9A158()
{
  result = qword_31AF78;
  if (!qword_31AF78)
  {
    sub_2F9C(&qword_31AEF8, &qword_2703B8);
    sub_9A210();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF78);
  }

  return result;
}

unint64_t sub_9A210()
{
  result = qword_31AF80;
  if (!qword_31AF80)
  {
    sub_2F9C(&qword_31AF20, &qword_270410);
    sub_9A048();
    sub_8E38(&qword_31AF88, &qword_31AF30, &qword_270420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31AF80);
  }

  return result;
}

uint64_t sub_9A2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_9A384(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ToolbarButtonStyle()
{
  result = qword_31AFE8;
  if (!qword_31AFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9A44C()
{
  sub_50224();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_9A4BC()
{
  result = qword_31B020;
  if (!qword_31B020)
  {
    sub_2F9C(&qword_31B028, &qword_2704C8);
    sub_99ED8();
    sub_9A158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B020);
  }

  return result;
}

uint64_t sub_9A548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v17 - v12);
  sub_8198(v2 + *(a1 + 40), &v17 - v12, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_9E454(v13, a2, type metadata accessor for SizeConstants);
  }

  v15 = *v13;
  sub_264900();
  v16 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_9A730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(sub_2EF0(qword_31B0D8, &qword_2705B8) + 48);
  sub_9E454(a1, a4, type metadata accessor for ButtonViewModel.Content);
  sub_9E454(a2, a4 + v8, type metadata accessor for ButtonViewModel.ActionKind);
  v9 = type metadata accessor for ModalActionSheet.Buttons();
  return sub_22148(a3, a4 + *(v9 + 36), &qword_31B038, &qword_270510);
}

uint64_t ModalActionSheet.init(buttons:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ModalActionSheet.Buttons();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ModalActionSheet();
  v10 = *(v9 + 40);
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v11 = sub_264A60();
  result = (*(*(v11 - 8) + 40))(a4, a1, v11);
  v13 = (a4 + *(v9 + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t ModalActionSheet.init(buttonContent:buttonAction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v21 = a2;
  v7 = sub_2EF0(&qword_31B038, &qword_270510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ModalActionSheet.Buttons();
  v12 = *(*(v11 - 8) + 56);
  v12(a5, 1, 1, v11);
  v13 = type metadata accessor for ModalActionSheet();
  v14 = *(v13 + 40);
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v15 = sub_264A60();
  (*(*(v15 - 8) + 8))(a5, v15);
  v16 = sub_2EF0(&qword_31B040, &qword_270518);
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_9A730(a1, v21, v10, a5);
  result = (v12)(a5, 0, 1, v11);
  v18 = (a5 + *(v13 + 36));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  return result;
}

uint64_t ModalActionSheet.init<A>(buttonTitle:buttonActionModel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a6;
  v48 = a8;
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v44 = a1;
  v12 = sub_2EF0(&qword_31B038, &qword_270510);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v50 = v40 - v14;
  v46 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v15 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v17 = (v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ButtonViewModel.Content(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[0] = a5;
  v40[1] = a7;
  v22 = type metadata accessor for ModalActionSheet.Buttons();
  v45 = sub_264A60();
  v23 = *(v45 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v45);
  v26 = v40 - v25;
  v27 = *(v22 - 8);
  v41 = *(v27 + 56);
  v42 = v27 + 56;
  v41(a9, 1, 1, v22);
  v43 = type metadata accessor for ModalActionSheet();
  v28 = *(v43 + 40);
  *(a9 + v28) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v29 = sub_260BD0();
  v30 = *(v29 - 8);
  v31 = v44;
  (*(v30 + 16))(v21, v44, v29);
  swift_storeEnumTagMultiPayload();
  v33 = v47;
  v32 = v48;
  v17[3] = v47;
  v17[4] = v32;
  v34 = sub_10934(v17);
  (*(*(v33 - 8) + 32))(v34, v49, v33);
  (*(v30 + 8))(v31, v29);
  swift_storeEnumTagMultiPayload();
  v35 = sub_2EF0(&qword_31B040, &qword_270518);
  v36 = v50;
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  sub_9A730(v21, v17, v36, v26);
  v41(v26, 0, 1, v22);
  result = (*(v23 + 40))(a9, v26, v45);
  v38 = (a9 + *(v43 + 36));
  v39 = v52;
  *v38 = v51;
  v38[1] = v39;
  return result;
}

uint64_t ModalActionSheet.init<A, B>(firstButtonTitle:firstButtonActionModel:secondButtonTitle:secondButtonActionModel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v75 = a6;
  v76 = a8;
  v73 = a4;
  v74 = a5;
  v71 = a3;
  v67 = a2;
  v55 = a1;
  v72 = a13;
  v61 = a12;
  v70 = a10;
  v16 = sub_2EF0(&qword_31B038, &qword_270510);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v66 = &v54 - v18;
  v19 = type metadata accessor for ButtonViewModel.ActionKind(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for ButtonViewModel.Content(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a11;
  v59 = a7;
  v27 = type metadata accessor for ModalActionSheet.Buttons();
  v28 = sub_264A60();
  v68 = *(v28 - 8);
  v69 = v28;
  v29 = *(v68 + 64);
  __chkstk_darwin(v28);
  v60 = &v54 - v30;
  v63 = v27;
  v31 = *(v27 - 8);
  v62 = *(v31 + 56);
  v64 = v31 + 56;
  v57 = a9;
  v62(a9, 1, 1, v27);
  v65 = type metadata accessor for ModalActionSheet();
  v32 = *(v65 + 40);
  *(a9 + v32) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v33 = sub_260BD0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 16);
  v56 = v26;
  v35(v26, a1, v33);
  swift_storeEnumTagMultiPayload();
  v36 = v76;
  v37 = v61;
  v22[3] = v76;
  v22[4] = v37;
  v54 = v22;
  v38 = sub_10934(v22);
  v39 = *(v36 - 8);
  v40 = v67;
  (*(v39 + 16))(v38, v67, v36);
  swift_storeEnumTagMultiPayload();
  v41 = sub_2EF0(&qword_31B040, &qword_270518);
  v42 = v66;
  v43 = &v66[*(v41 + 48)];
  v44 = v71;
  v35(v66, v71, v33);
  v45 = v70;
  v46 = v72;
  v43[3] = v70;
  v43[4] = v46;
  v47 = sub_10934(v43);
  (*(*(v45 - 8) + 32))(v47, v73, v45);
  v48 = *(v34 + 8);
  v48(v44, v33);
  (*(v39 + 8))(v40, v76);
  v48(v55, v33);
  (*(*(v41 - 8) + 56))(v42, 0, 1, v41);
  v49 = v60;
  sub_9A730(v56, v54, v42, v60);
  v62(v49, 0, 1, v63);
  v50 = v57;
  result = (*(v68 + 40))(v57, v49, v69);
  v52 = (v50 + *(v65 + 36));
  v53 = v75;
  *v52 = v74;
  v52[1] = v53;
  return result;
}

uint64_t ModalActionSheet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SizeConstants(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  sub_2F9C(&qword_31B048, &unk_270520);
  swift_getTupleTypeMetadata3();
  sub_2636B0();
  swift_getWitnessTable();
  v11 = sub_2632E0();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_261730();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  v37 = a1;
  v38 = v2;
  v22 = *(a1 + 24);
  v40 = v10;
  v41 = v22;
  v42 = v2;
  sub_261E50();
  sub_2632D0();
  sub_2EF0(qword_31B050, &qword_27CCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267D20;
  LOBYTE(a1) = sub_262530();
  *(inited + 32) = a1;
  v24 = sub_262550();
  *(inited + 33) = v24;
  v25 = sub_262510();
  *(inited + 34) = v25;
  sub_262540();
  sub_262540();
  if (sub_262540() != a1)
  {
    sub_262540();
  }

  sub_262540();
  if (sub_262540() != v24)
  {
    sub_262540();
  }

  sub_262540();
  if (sub_262540() != v25)
  {
    sub_262540();
  }

  v26 = v34;
  sub_9A548(v37, v34);
  v27 = v36;
  sub_9E454(v26, v36, type metadata accessor for SizeConstants.Environment);
  sub_9E5D8(v27, type metadata accessor for SizeConstants.Spacing);
  WitnessTable = swift_getWitnessTable();
  sub_262E00();
  (*(v33 + 8))(v14, v11);
  v43 = WitnessTable;
  v44 = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  sub_1609C(v19, v15, v29);
  v30 = *(v35 + 8);
  v30(v19, v15);
  sub_1609C(v21, v15, v29);
  return (v30)(v21, v15);
}

uint64_t sub_9B8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a4;
  v116 = sub_262730();
  v115 = *(v116 - 8);
  v7 = *(v115 + 64);
  __chkstk_darwin(v116);
  v114 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v9 = *(*(v107 - 8) + 64);
  v10 = __chkstk_darwin(v107);
  v120 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v104 - v12;
  v124 = sub_2EF0(&qword_31B170, &qword_2705D8);
  v13 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v126 = &v104 - v14;
  v125 = sub_2EF0(&qword_31B178, &qword_2705E0);
  v15 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v106 = (&v104 - v16);
  v108 = type metadata accessor for ButtonViewModel(0);
  v17 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ButtonView();
  v19 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v112 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2EF0(&qword_31B180, &qword_2705E8);
  v21 = *(*(v123 - 8) + 64);
  v22 = __chkstk_darwin(v123);
  v111 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v113 = &v104 - v24;
  v25 = sub_2EF0(&qword_31B038, &qword_270510);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v119 = &v104 - v27;
  v118 = sub_2EF0(&qword_31B040, &qword_270518);
  v117 = *(v118 - 8);
  v28 = *(v117 + 64);
  __chkstk_darwin(v118);
  v105 = &v104 - v29;
  v136 = sub_2EF0(&qword_31B188, &qword_2705F0);
  v135 = *(v136 - 8);
  v30 = *(v135 + 64);
  __chkstk_darwin(v136);
  v122 = &v104 - v31;
  v32 = type metadata accessor for ModalActionSheet.Buttons();
  v127 = sub_264A60();
  v128 = *(v127 - 1);
  v33 = *(v128 + 64);
  v34 = __chkstk_darwin(v127);
  v36 = &v104 - v35;
  v141 = *(v32 - 8);
  v37 = *(v141 + 64);
  __chkstk_darwin(v34);
  v140 = &v104 - v38;
  v133 = sub_2EF0(&qword_31B048, &unk_270520);
  v39 = *(*(v133 - 8) + 64);
  v40 = __chkstk_darwin(v133);
  v134 = &v104 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v104 - v43;
  v45 = *(a2 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v42);
  v49 = &v104 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v51 = &v104 - v50;
  v52 = a1 + *(type metadata accessor for ModalActionSheet() + 36);
  v53 = *(v52 + 8);
  (*v52)();
  v54 = v141;
  v131 = v51;
  v55 = a1;
  v56 = v127;
  v137 = a3;
  sub_1609C(v49, a2, a3);
  v129 = v45;
  v57 = v45;
  v58 = v128;
  v59 = *(v57 + 8);
  v132 = v49;
  v60 = v49;
  v61 = v57 + 8;
  v139 = a2;
  v130 = v59;
  v59(v60, a2);
  (*(v58 + 16))(v36, v55, v56);
  if ((*(v54 + 48))(v36, 1, v32) == 1)
  {
    (*(v58 + 8))(v36, v56);
    (*(v135 + 56))(v44, 1, 1, v136);
    v62 = v137;
  }

  else
  {
    v127 = v44;
    v63 = v140;
    (*(v54 + 32))(v140, v36, v32);
    v128 = v32;
    v64 = v63 + *(v32 + 36);
    v65 = v119;
    sub_8198(v64, v119, &qword_31B038, &qword_270510);
    if ((*(v117 + 48))(v65, 1, v118) == 1)
    {
      sub_8E80(v65, &qword_31B038, &qword_270510);
      LODWORD(v106) = _UISolariumEnabled() ^ 1;
      v66 = v140;
      sub_8198(v140, v121, qword_31B0D8, &qword_2705B8);
      v67 = v107;
      v118 = *(v107 + 48);
      sub_8198(v66, v120, qword_31B0D8, &qword_2705B8);
      v117 = *(v67 + 48);
      *&v149 = 0x403C000000000000;
      v68 = enum case for Font.TextStyle.subheadline(_:);
      v119 = v61;
      v69 = *(v115 + 104);
      v70 = v114;
      v71 = v116;
      v69(v114, enum case for Font.TextStyle.subheadline(_:), v116);
      v72 = sub_40130();
      v73 = v110;
      v115 = v72;
      sub_2612E0();
      v74 = v108;
      v75 = *(v108 + 20);
      *&v149 = 0x4008000000000000;
      v69(v70, v68, v71);
      sub_2612E0();
      v76 = v74[6];
      *(v73 + v76) = swift_getKeyPath();
      sub_2EF0(&qword_316C00, &qword_26A520);
      swift_storeEnumTagMultiPayload();
      v77 = v74[14];
      v78 = sub_260BD0();
      (*(*(v78 - 8) + 56))(v73 + v77, 1, 1, v78);
      *(v73 + v74[7]) = 1;
      *(v73 + v74[8]) = v106;
      *(v73 + v74[9]) = 0;
      v79 = (v73 + v74[10]);
      *v79 = 1;
      v79[1] = 0;
      v79[2] = 0;
      v79[3] = 0;
      v80 = v121;
      sub_9E454(v121, v73 + v74[11], type metadata accessor for ButtonViewModel.Content);
      *(v73 + v74[12]) = 1;
      v81 = v74[13];
      v82 = v120;
      sub_9E454(v120 + v117, v73 + v81, type metadata accessor for ButtonViewModel.ActionKind);
      sub_9E5D8(v82, type metadata accessor for ButtonViewModel.Content);
      sub_9E5D8(v80 + v118, type metadata accessor for ButtonViewModel.ActionKind);
      *&v149 = 0x4020000000000000;
      v69(v70, v68, v71);
      v83 = v112;
      sub_2612E0();
      v84 = v109;
      v85 = *(v109 + 20);
      *&v149 = 0x3FF8000000000000;
      v69(v70, v68, v71);
      sub_2612E0();
      v86 = *(v84 + 24);
      *&v83[v86] = swift_getKeyPath();
      sub_2EF0(&qword_319B00, &unk_26EA40);
      swift_storeEnumTagMultiPayload();
      sub_9E454(v73, &v83[*(v84 + 28)], type metadata accessor for ButtonViewModel);
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_2613A0();
      v87 = v83;
      v88 = v111;
      sub_9E454(v87, v111, type metadata accessor for ButtonView);
      v89 = (v88 + *(v123 + 36));
      v90 = v150;
      *v89 = v149;
      v89[1] = v90;
      v89[2] = v151;
      v91 = v88;
      v92 = v113;
      sub_22148(v91, v113, &qword_31B180, &qword_2705E8);
      sub_8198(v92, v126, &qword_31B180, &qword_2705E8);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0);
      sub_9E38C();
      v93 = v122;
      sub_261F80();
      sub_8E80(v92, &qword_31B180, &qword_2705E8);
      v62 = v137;
    }

    else
    {
      v94 = v105;
      sub_22148(v65, v105, &qword_31B040, &qword_270518);
      v95 = sub_261E50();
      v96 = v106;
      *v106 = v95;
      *(v96 + 8) = 0x4014000000000000;
      *(v96 + 16) = 0;
      v97 = sub_2EF0(&qword_31B1B0, &qword_270668);
      v62 = v137;
      sub_9C938(v140, v94, v96 + *(v97 + 44));
      sub_8198(v96, v126, &qword_31B178, &qword_2705E0);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0);
      sub_9E38C();
      v93 = v122;
      sub_261F80();
      sub_8E80(v96, &qword_31B178, &qword_2705E0);
      sub_8E80(v94, &qword_31B040, &qword_270518);
    }

    v44 = v127;
    sub_9E4BC(v93, v127);
    (*(v135 + 56))(v44, 0, 1, v136);
    (*(v141 + 8))(v140, v128);
  }

  v98 = v132;
  v99 = v131;
  v100 = v139;
  (*(v129 + 16))(v132, v131, v139);
  v148[0] = v98;
  v101 = v134;
  sub_8198(v44, v134, &qword_31B048, &unk_270520);
  v146 = 0;
  v147 = 1;
  v148[1] = v101;
  v148[2] = &v146;
  v145[0] = v100;
  v145[1] = v133;
  v145[2] = &type metadata for Spacer;
  v142 = v62;
  v143 = sub_9E250();
  v144 = &protocol witness table for Spacer;
  sub_10E998(v148, 3uLL, v145);
  sub_8E80(v44, &qword_31B048, &unk_270520);
  v102 = v130;
  v130(v99, v100);
  sub_8E80(v101, &qword_31B048, &unk_270520);
  return v102(v98, v100);
}

uint64_t sub_9C938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v126 = a2;
  v134 = a3;
  v130 = type metadata accessor for BooksBorderlessButtonStyle(0);
  v4 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v129 = &v108[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2604E0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v127 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2EF0(&qword_31B040, &qword_270518);
  v10 = *(v9 - 8);
  v122 = v9 - 8;
  v125 = v10;
  v124 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v123 = &v108[-v11];
  v121 = sub_2EF0(&qword_31B1B8, &qword_270670);
  v12 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v120 = &v108[-v13];
  v14 = sub_2EF0(&qword_31B1C0, &qword_270678);
  v15 = *(v14 - 8);
  v132 = v14 - 8;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v133 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v131 = &v108[-v19];
  v20 = sub_262730();
  v136 = *(v20 - 8);
  v21 = *(v136 + 64);
  __chkstk_darwin(v20);
  v23 = &v108[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v108[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = v29;
  __chkstk_darwin(v27);
  v31 = &v108[-v30];
  v112 = &v108[-v30];
  v32 = type metadata accessor for ButtonViewModel(0);
  v33 = (v32 - 8);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v36 = &v108[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for ButtonView();
  v38 = *(v37 - 8);
  v116 = v37 - 8;
  v39 = *(v38 + 64);
  __chkstk_darwin(v37 - 8);
  v114 = &v108[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_2EF0(&qword_31B180, &qword_2705E8);
  v42 = *(v41 - 8);
  v118 = v41 - 8;
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41 - 8);
  v128 = &v108[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __chkstk_darwin(v44);
  v117 = &v108[-v47];
  __chkstk_darwin(v46);
  v135 = &v108[-v48];
  v109 = _UISolariumEnabled() ^ 1;
  sub_8198(a1, v31, qword_31B0D8, &qword_2705B8);
  v115 = *(v25 + 56);
  sub_8198(a1, v29, qword_31B0D8, &qword_2705B8);
  v111 = *(v25 + 56);
  *&v140 = 0x403C000000000000;
  v49 = enum case for Font.TextStyle.subheadline(_:);
  v50 = v136 + 104;
  v51 = *(v136 + 104);
  v110 = v20;
  v51(v23, enum case for Font.TextStyle.subheadline(_:), v20);
  v136 = v50;
  sub_40130();
  sub_2612E0();
  v52 = v33[7];
  *&v140 = 0x4008000000000000;
  v51(v23, v49, v20);
  sub_2612E0();
  v53 = v33[8];
  *&v36[v53] = swift_getKeyPath();
  v119 = sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v54 = v33[16];
  v55 = sub_260BD0();
  (*(*(v55 - 8) + 56))(&v36[v54], 1, 1, v55);
  v36[v33[9]] = 1;
  v36[v33[10]] = v109;
  v36[v33[11]] = 0;
  v56 = &v36[v33[12]];
  *v56 = 0u;
  v56[1] = 0u;
  v57 = v112;
  sub_9E454(v112, &v36[v33[13]], type metadata accessor for ButtonViewModel.Content);
  v36[v33[14]] = 1;
  v58 = v113;
  sub_9E454(&v113[v111], &v36[v33[15]], type metadata accessor for ButtonViewModel.ActionKind);
  sub_9E5D8(v58, type metadata accessor for ButtonViewModel.Content);
  sub_9E5D8(&v57[v115], type metadata accessor for ButtonViewModel.ActionKind);
  *&v140 = 0x4020000000000000;
  v59 = v110;
  v51(v23, v49, v110);
  v60 = v114;
  sub_2612E0();
  v61 = v116;
  v62 = *(v116 + 28);
  *&v140 = 0x3FF8000000000000;
  v51(v23, v49, v59);
  sub_2612E0();
  v63 = *(v61 + 32);
  *&v60[v63] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  sub_9E454(v36, &v60[*(v61 + 36)], type metadata accessor for ButtonViewModel);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v64 = v60;
  v65 = v117;
  sub_9E454(v64, v117, type metadata accessor for ButtonView);
  v66 = &v65[*(v118 + 44)];
  v67 = v138;
  *v66 = v137;
  v66[1] = v67;
  v66[2] = v139;
  sub_22148(v65, v135, &qword_31B180, &qword_2705E8);
  v68 = v121;
  v69 = v120;
  v70 = &v120[*(v121 + 48)];
  v71 = sub_2EF0(&qword_31B1C8, &qword_270680);
  v70[3] = v71;
  v70[4] = sub_8E38(&qword_31B1D0, &qword_31B1C8, &qword_270680);
  v72 = sub_10934(v70);
  v73 = sub_2610B0();
  (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
  v74 = (v69 + v68[13]);
  v75 = v126;
  v76 = (v126 + *(v122 + 56));
  v78 = v76[3];
  v77 = v76[4];
  v79 = sub_2E18(v76, v78);
  v74[3] = v78;
  v74[4] = *(v77 + 8);
  v80 = sub_10934(v74);
  (*(*(v78 - 8) + 16))(v80, v79, v78);
  v81 = v75;
  v82 = v123;
  sub_8198(v81, v123, &qword_31B040, &qword_270518);
  v83 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v84 = swift_allocObject();
  sub_22148(v82, v84 + v83, &qword_31B040, &qword_270518);
  sub_2604C0();
  sub_260420();
  v85 = v69 + v68[9];
  *v85 = swift_getKeyPath();
  *(v85 + 8) = 0;
  v86 = v68[10];
  *(v69 + v86) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v87 = v69 + v68[11];
  *v87 = swift_getKeyPath();
  *(v87 + 40) = 0;
  v88 = (v72 + *(v71 + 36));
  *v88 = sub_9E530;
  v88[1] = v84;
  v89 = v130;
  v90 = *(v130 + 20);
  KeyPath = swift_getKeyPath();
  v92 = v129;
  *&v129[v90] = KeyPath;
  swift_storeEnumTagMultiPayload();
  v93 = v89[6];
  *&v92[v93] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v94 = v89[7];
  *&v92[v94] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v95 = v89[8];
  *&v92[v95] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v96 = &v92[v89[9]];
  *v96 = swift_getKeyPath();
  v96[8] = 0;
  v97 = v89[10];
  *&v92[v97] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  *v92 = 1;
  sub_8E38(&qword_31B1D8, &qword_31B1B8, &qword_270670);
  sub_9E7B8(&qword_31B1E0, type metadata accessor for BooksBorderlessButtonStyle);
  v98 = v131;
  sub_262A60();
  sub_9E5D8(v92, type metadata accessor for BooksBorderlessButtonStyle);
  sub_8E80(v69, &qword_31B1B8, &qword_270670);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v99 = v98;
  v100 = &v98[*(v132 + 44)];
  v101 = v141;
  *v100 = v140;
  v100[1] = v101;
  v100[2] = v142;
  v102 = v135;
  v103 = v128;
  sub_8198(v135, v128, &qword_31B180, &qword_2705E8);
  v104 = v133;
  sub_8198(v99, v133, &qword_31B1C0, &qword_270678);
  v105 = v134;
  sub_8198(v103, v134, &qword_31B180, &qword_2705E8);
  v106 = sub_2EF0(&qword_31B1E8, &qword_2707B8);
  sub_8198(v104, v105 + *(v106 + 48), &qword_31B1C0, &qword_270678);
  sub_8E80(v99, &qword_31B1C0, &qword_270678);
  sub_8E80(v102, &qword_31B180, &qword_2705E8);
  sub_8E80(v104, &qword_31B1C0, &qword_270678);
  return sub_8E80(v103, &qword_31B180, &qword_2705E8);
}

uint64_t sub_9D708(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31B040, &qword_270518);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v10 - v5;
  sub_8198(a1, &v10 - v5, &qword_31B040, &qword_270518);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_22148(v6, v8 + v7, &qword_31B040, &qword_270518);
  sub_260A70();
  sub_260A50();
  sub_9E7B8(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_9E7B8(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_9D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_31B040, &qword_270518);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-v9 - 8];
  sub_8198(a2, &v21[-v9 - 8], &qword_31B040, &qword_270518);
  v11 = *(v7 + 56);
  sub_30CC(a1, v21);
  v12 = sub_2627B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_3080(&v10[v11]);
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  return result;
}

void sub_9DA60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ModalActionSheet.Buttons();
  sub_264A60();
  if (v3 <= 0x3F)
  {
    sub_16D28();
    if (v4 <= 0x3F)
    {
      sub_3E754();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_9DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  type metadata accessor for ModalActionSheet.Buttons();
  v8 = sub_264A60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 40);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_9DC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  type metadata accessor for ModalActionSheet.Buttons();
  result = sub_264A60();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v13 = sub_2EF0(&qword_317BF8, &unk_26F930);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 40);

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_9DDB4()
{
  sub_9E07C();
  if (v0 <= 0x3F)
  {
    sub_9E0F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_9DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_31B038, &qword_270510);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_9DF68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(qword_31B0D8, &qword_2705B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_31B038, &qword_270510);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

void sub_9E07C()
{
  if (!qword_31B160)
  {
    type metadata accessor for ButtonViewModel.Content(255);
    type metadata accessor for ButtonViewModel.ActionKind(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_31B160);
    }
  }
}

void sub_9E0F0()
{
  if (!qword_31B168)
  {
    sub_2F9C(&qword_31B040, &qword_270518);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_31B168);
    }
  }
}

uint64_t sub_9E154(uint64_t *a1)
{
  v1 = *a1;
  sub_2F9C(&qword_31B048, &unk_270520);
  swift_getTupleTypeMetadata3();
  sub_2636B0();
  swift_getWitnessTable();
  sub_2632E0();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_9E250()
{
  result = qword_31B190;
  if (!qword_31B190)
  {
    sub_2F9C(&qword_31B048, &unk_270520);
    sub_9E2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B190);
  }

  return result;
}

unint64_t sub_9E2D4()
{
  result = qword_31B198;
  if (!qword_31B198)
  {
    sub_2F9C(&qword_31B188, &qword_2705F0);
    sub_8E38(&qword_31B1A0, &qword_31B178, &qword_2705E0);
    sub_9E38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B198);
  }

  return result;
}

unint64_t sub_9E38C()
{
  result = qword_31B1A8;
  if (!qword_31B1A8)
  {
    sub_2F9C(&qword_31B180, &qword_2705E8);
    sub_9E7B8(&qword_31A2D0, type metadata accessor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31B1A8);
  }

  return result;
}

uint64_t sub_9E454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9E4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_31B188, &qword_2705F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9E530()
{
  v1 = *(sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_9D708(v2);
}

uint64_t sub_9E5D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9E638()
{
  v1 = (sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_260BD0();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_3080((v3 + v1[14]));

  return swift_deallocObject();
}

uint64_t sub_9E72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2EF0(&qword_31B040, &qword_270518) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_9D910(a1, v6, a2);
}

uint64_t sub_9E7B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GridItemMetadata.init(titleLockup:showOrdinal:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = sub_200E0(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_9E84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316BC0, &qword_2707C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9E8D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_9E8EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_9E900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_9E95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t BooksBorderlessButtonStyle.init(size:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for BooksBorderlessButtonStyle(0);
  v5 = v4[5];
  *&a2[v5] = swift_getKeyPath();
  sub_2EF0(&qword_319B00, &unk_26EA40);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *&a2[v6] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *&a2[v7] = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *&a2[v8] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v9 = &a2[v4[9]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v4[10];
  *&a2[v10] = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  result = swift_storeEnumTagMultiPayload();
  *a2 = v3;
  return result;
}

uint64_t sub_9EBE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C10, &unk_26AF10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_A75CC(v12, a1, type metadata accessor for SizeConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_9EDC4()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 28);
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

uint64_t BooksBorderedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30[2] = a2;
  v5 = sub_2EF0(&qword_31B1F0, &qword_270998);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = sub_2EF0(&qword_31B1F8, &qword_2709A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v30 - v14;
  v16 = sub_2EF0(&qword_31B200, &qword_2709A8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v30 - v18;
  v20 = v3 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  if (*(v20 + *(type metadata accessor for ButtonViewModel(0) + 28)) == 2)
  {
    sub_9F780(v3, a1, v19);
    sub_8198(v19, v15, &qword_31B200, &qword_2709A8);
    swift_storeEnumTagMultiPayload();
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998);
    sub_261F80();
    v21 = v19;
    v22 = &qword_31B200;
    v23 = &qword_2709A8;
  }

  else
  {
    v30[0] = v16;
    v30[1] = v5;
    sub_2EF0(&qword_317310, &qword_2721D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269100;
    v25 = sub_2624C0();
    *(inited + 32) = v25;
    v26 = sub_2624E0();
    *(inited + 33) = v26;
    v27 = sub_2624D0();
    sub_2624D0();
    if (sub_2624D0() != v25)
    {
      v27 = sub_2624D0();
    }

    sub_2624D0();
    if (sub_2624D0() != v26)
    {
      v27 = sub_2624D0();
    }

    *v9 = v27;
    v28 = sub_2EF0(&qword_31B2E0, &unk_270A20);
    sub_9F2C8(v3, a1, &v9[*(v28 + 44)]);
    sub_A6158(v9, v11);
    sub_8198(v11, v15, &qword_31B1F0, &qword_270998);
    swift_storeEnumTagMultiPayload();
    sub_A5A24();
    sub_8E38(&qword_31B2D8, &qword_31B1F0, &qword_270998);
    sub_261F80();
    v21 = v11;
    v22 = &qword_31B1F0;
    v23 = &qword_270998;
  }

  return sub_8E80(v21, v22, v23);
}

uint64_t sub_9F2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_2EF0(&qword_31B4C8, &qword_270B70);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = sub_2EF0(&qword_31B4D0, &qword_270B78);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v57 - v13;
  v15 = sub_2EF0(&qword_31B4D8, &qword_270B80);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v59 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  v21 = sub_2EF0(&qword_31B200, &qword_2709A8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v58 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v57 - v25;
  v57 = a2;
  sub_9F780(a1, a2, &v57 - v25);
  sub_A0314(v9);
  v27 = &v9[*(sub_2EF0(&qword_31B4E0, &unk_270B88) + 36)];
  v28 = *(sub_2617E0() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = sub_261DD0();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #25.0 }

  *v27 = _Q0;
  *&v27[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  v36 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v38 = v37;
  v39 = &v9[*(v6 + 44)];
  *v39 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v39[1] = v40;
  v41 = sub_2EF0(&qword_31B4E8, &qword_270B98);
  sub_A332C(a1, v39 + *(v41 + 44));
  v42 = (v39 + *(sub_2EF0(&qword_31B4F0, &qword_270BA0) + 36));
  *v42 = v36;
  v42[1] = v38;
  v43 = v57;
  if (sub_2622B0())
  {
    v44 = 0.6;
  }

  else
  {
    v44 = 1.0;
  }

  sub_22148(v9, v14, &qword_31B4C8, &qword_270B70);
  *&v14[*(v11 + 44)] = v44;
  v45 = sub_261D30();
  v46 = &v20[*(sub_2EF0(&qword_31B4F8, &qword_270BA8) + 36)];
  *v46 = v45;
  *(v46 + 1) = 0;
  v46[16] = 1;
  v47 = sub_2EF0(&qword_31B500, &qword_270BB0);
  sub_A3874(a1, v43, &v46[*(v47 + 44)]);
  v48 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v50 = v49;
  v51 = &v46[*(sub_2EF0(&qword_31B508, &qword_270BB8) + 36)];
  *v51 = v48;
  v51[1] = v50;
  sub_22148(v14, v20, &qword_31B4D0, &qword_270B78);
  v52 = v58;
  sub_8198(v26, v58, &qword_31B200, &qword_2709A8);
  v53 = v59;
  sub_8198(v20, v59, &qword_31B4D8, &qword_270B80);
  v54 = v60;
  sub_8198(v52, v60, &qword_31B200, &qword_2709A8);
  v55 = sub_2EF0(&qword_31B510, &qword_270BC0);
  sub_8198(v53, v54 + *(v55 + 48), &qword_31B4D8, &qword_270B80);
  sub_8E80(v20, &qword_31B4D8, &qword_270B80);
  sub_8E80(v26, &qword_31B200, &qword_2709A8);
  sub_8E80(v53, &qword_31B4D8, &qword_270B80);
  return sub_8E80(v52, &qword_31B200, &qword_2709A8);
}

uint64_t sub_9F780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a3;
  v5 = sub_261220();
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = *(v129 + 64);
  __chkstk_darwin(v5);
  v127 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for SizeConstants.Environment(0);
  v8 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v121 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_262730();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v109 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v111 = &v103 - v16;
  v17 = __chkstk_darwin(v15);
  v107 = &v103 - v18;
  __chkstk_darwin(v17);
  v106 = &v103 - v19;
  v115 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v20 = *(*(v115 - 8) + 64);
  v21 = __chkstk_darwin(v115);
  v110 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v103 - v23;
  v24 = type metadata accessor for SizeConstants(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v103 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v103 - v33;
  __chkstk_darwin(v32);
  v36 = &v103 - v35;
  v37 = sub_2EF0(&qword_31B258, &qword_2709D0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v103 - v39;
  v114 = sub_2EF0(&qword_31B248, &qword_2709C8);
  v41 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v122 = &v103 - v42;
  v113 = sub_2EF0(&qword_31B238, &qword_2709C0);
  v43 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v120 = &v103 - v44;
  v118 = sub_2EF0(&qword_31B228, &qword_2709B8);
  v45 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v123 = &v103 - v46;
  v124 = sub_2EF0(&qword_31B210, &qword_2709B0);
  v47 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v125 = &v103 - v48;
  v116 = v40;
  v126 = a2;
  sub_A0314(v40);
  v49 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v131 = a1;
  v50 = a1 + v49;
  v117 = type metadata accessor for ButtonViewModel(0);
  v51 = *(v117 + 28);
  v119 = v50;
  v52 = (v11 + 104);
  v53 = (v11 + 16);
  v54 = (v11 + 8);
  if (*(v50 + v51) == 2)
  {
    v104 = v36;
    sub_9EBE0(v36);
    v55 = v106;
    (*v52)(v106, enum case for Font.TextStyle.subheadline(_:), v10);
    v56 = v36;
    v57 = v34;
    sub_A727C(v56, v34, type metadata accessor for SizeConstants);
    v58 = v107;
    (*v53)(v107, v55, v10);
    v59 = v108;
    sub_A727C(v57, v108, type metadata accessor for SizeConstants);
    v60 = v121;
    sub_A727C(v57, v121, type metadata accessor for SizeConstants.Environment);
    v61 = *(v112 + 24);
    v62 = sub_1CF30(v58, v60 + v61);
    v63 = *v54;
    (*v54)(v58, v10);
    sub_A72E4(v57, type metadata accessor for SizeConstants);
    v64 = sub_261690();
    (*(*(v64 - 8) + 8))(v60 + v61, v64);
    v65 = 1.0;
    if ((*&v62 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v65 = v62;
    }

    if ((~*&v62 & 0x7FF0000000000000) != 0)
    {
      v65 = v62;
    }

    *(v59 + *(v115 + 36)) = v65;
    v63(v55, v10);
    sub_A72E4(v104, type metadata accessor for SizeConstants);
    v66 = 28.0;
  }

  else
  {
    v105 = v31;
    sub_9EBE0(v31);
    v67 = v111;
    (*v52)(v111, enum case for Font.TextStyle.subheadline(_:), v10);
    v68 = v31;
    v69 = v28;
    sub_A727C(v68, v28, type metadata accessor for SizeConstants);
    v70 = v109;
    (*v53)(v109, v67, v10);
    v59 = v110;
    sub_A727C(v69, v110, type metadata accessor for SizeConstants);
    v71 = v121;
    sub_A727C(v69, v121, type metadata accessor for SizeConstants.Environment);
    v72 = *(v112 + 24);
    v73 = sub_1CF30(v70, v71 + v72);
    v74 = *v54;
    (*v54)(v70, v10);
    sub_A72E4(v69, type metadata accessor for SizeConstants);
    v75 = sub_261690();
    (*(*(v75 - 8) + 8))(v71 + v72, v75);
    v76 = 1.0;
    if ((*&v73 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v76 = v73;
    }

    if ((~*&v73 & 0x7FF0000000000000) != 0)
    {
      v76 = v73;
    }

    *(v59 + *(v115 + 36)) = v76;
    v74(v67, v10);
    sub_A72E4(v105, type metadata accessor for SizeConstants);
    v66 = 48.0;
  }

  sub_21FA54(v66);
  sub_8E80(v59, &qword_31B4C0, &qword_27C030);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v77 = v122;
  sub_22148(v116, v122, &qword_31B258, &qword_2709D0);
  v78 = (v77 + *(v114 + 36));
  v79 = v133;
  *v78 = v132;
  v78[1] = v79;
  v78[2] = v134;
  v80 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v82 = v81;
  v83 = v120;
  v84 = &v120[*(v113 + 36)];
  *v84 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v84[1] = v85;
  v86 = sub_2EF0(&qword_31B580, &qword_270C68);
  v87 = v131;
  sub_A1B94(v131, v84 + *(v86 + 44));
  v88 = (v84 + *(sub_2EF0(&qword_31B2B8, &qword_270A08) + 36));
  *v88 = v80;
  v88[1] = v82;
  sub_22148(v77, v83, &qword_31B248, &qword_2709C8);
  v89 = v126;
  if (sub_2622B0())
  {
    v90 = 0.6;
  }

  else
  {
    v90 = 1.0;
  }

  v91 = v123;
  sub_22148(v83, v123, &qword_31B238, &qword_2709C0);
  *(v91 + *(v118 + 36)) = v90;
  v92 = sub_261D30();
  v93 = v125;
  v94 = &v125[*(v124 + 36)];
  *v94 = v92;
  *(v94 + 1) = 0;
  v94[16] = 1;
  v95 = sub_2EF0(&qword_31B588, &qword_270C70);
  sub_A2928(v87, v89, &v94[*(v95 + 44)]);
  v96 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v98 = v97;
  v99 = &v94[*(sub_2EF0(&qword_31B2C8, &unk_270A10) + 36)];
  *v99 = v96;
  v99[1] = v98;
  sub_22148(v91, v93, &qword_31B228, &qword_2709B8);
  v100 = v127;
  if (*(v119 + *(v117 + 36)))
  {
    sub_261210();
  }

  else
  {
    sub_261200();
  }

  sub_A5B34();
  sub_A65A0(&qword_31B2D0, &type metadata accessor for HoverEffect);
  v101 = v130;
  sub_262AA0();
  (*(v129 + 8))(v100, v101);
  return sub_8E80(v93, &qword_31B210, &qword_2709B0);
}

uint64_t sub_A0314@<X0>(uint64_t a1@<X8>)
{
  v231 = a1;
  v229 = sub_2EF0(&qword_31B568, &qword_270C20);
  v2 = *(*(v229 - 8) + 64);
  __chkstk_darwin(v229);
  v230 = &v187 - v3;
  v219 = sub_2EF0(&qword_31B570, &qword_270C28);
  v4 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v218 = &v187 - v5;
  v215 = sub_2EF0(&qword_31B578, &qword_270C30);
  v6 = *(*(v215 - 8) + 64);
  __chkstk_darwin(v215);
  v216 = &v187 - v7;
  v233 = type metadata accessor for SizeConstants.Environment(0);
  v8 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v224 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_262730();
  v225 = *(v226 - 8);
  v10 = *(v225 + 64);
  v11 = __chkstk_darwin(v226);
  v212 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v213 = &v187 - v14;
  v15 = __chkstk_darwin(v13);
  v203 = &v187 - v16;
  v17 = __chkstk_darwin(v15);
  v204 = &v187 - v18;
  v19 = __chkstk_darwin(v17);
  v195 = &v187 - v20;
  v21 = __chkstk_darwin(v19);
  v197 = &v187 - v22;
  v23 = __chkstk_darwin(v21);
  v193 = &v187 - v24;
  __chkstk_darwin(v23);
  v210 = (&v187 - v25);
  v234 = sub_2EF0(&qword_31B4C0, &qword_27C030);
  v26 = *(*(v234 - 8) + 64);
  v27 = __chkstk_darwin(v234);
  v211 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v202 = &v187 - v30;
  v31 = __chkstk_darwin(v29);
  v196 = &v187 - v32;
  __chkstk_darwin(v31);
  v194 = &v187 - v33;
  v34 = type metadata accessor for SizeConstants(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v207 = (&v187 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v221 = &v187 - v39;
  v40 = __chkstk_darwin(v38);
  v198 = &v187 - v41;
  v42 = __chkstk_darwin(v40);
  v199 = &v187 - v43;
  v44 = __chkstk_darwin(v42);
  v189 = &v187 - v45;
  v46 = __chkstk_darwin(v44);
  v206 = &v187 - v47;
  v48 = __chkstk_darwin(v46);
  v188 = &v187 - v49;
  __chkstk_darwin(v48);
  v205 = (&v187 - v50);
  v223 = sub_2EF0(&qword_31B288, &qword_2709E8);
  v51 = *(*(v223 - 8) + 64);
  v52 = __chkstk_darwin(v223);
  v222 = &v187 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v214 = &v187 - v55;
  __chkstk_darwin(v54);
  v192 = &v187 - v56;
  v228 = sub_2EF0(&qword_31B278, &qword_2709E0);
  v57 = *(*(v228 - 8) + 64);
  v58 = __chkstk_darwin(v228);
  v208 = &v187 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v209 = &v187 - v61;
  v62 = __chkstk_darwin(v60);
  v200 = &v187 - v63;
  v64 = __chkstk_darwin(v62);
  v201 = &v187 - v65;
  v66 = __chkstk_darwin(v64);
  v190 = &v187 - v67;
  __chkstk_darwin(v66);
  v191 = &v187 - v68;
  v227 = sub_2EF0(&qword_31B268, &qword_2709D8);
  v69 = *(*(v227 - 8) + 64);
  __chkstk_darwin(v227);
  v217 = &v187 - v70;
  v220 = sub_262290();
  v71 = *(v220 - 1);
  v72 = *(v71 + 64);
  __chkstk_darwin(v220);
  v74 = &v187 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2EF0(&qword_31B2A8, &unk_2709F8);
  v76 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = &v187 - v77;
  v79 = sub_2EF0(&qword_31B298, &qword_2709F0);
  v80 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v235 = &v187 - v81;
  sub_2622A0();
  v82 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v232 = v1;
  v83 = v1 + v82;
  v84 = type metadata accessor for ButtonViewModel(0);
  if (v83[*(v84 + 48)] == 1)
  {
    ButtonViewModel.theme.getter(&v236);
    v85 = v236;
  }

  else
  {
    ButtonViewModel.theme.getter(&v236);
    v85 = *(&v237 + 1);
  }

  KeyPath = swift_getKeyPath();
  (*(v71 + 32))(v78, v74, v220);
  v87 = &v78[*(v75 + 36)];
  *v87 = KeyPath;
  v87[1] = v85;
  v88 = *(v79 + 36);
  v89 = v235;
  sub_A24D0(v235 + v88);
  sub_22148(v78, v89, &qword_31B2A8, &unk_2709F8);
  v90 = v83[*(v84 + 28)];
  if (v90 == 2)
  {
    v91 = sub_262500();
    v92 = v222;
    sub_8198(v89, v222, &qword_31B298, &qword_2709F0);
    v93 = v92 + *(v223 + 36);
    *v93 = v91;
    *(v93 + 8) = 0u;
    *(v93 + 24) = 0u;
    *(v93 + 40) = 1;
    v94 = v221;
    sub_9EBE0(v221);
    v95 = v225;
    v96 = v213;
    v97 = v226;
    (*(v225 + 104))(v213, enum case for Font.TextStyle.subheadline(_:), v226);
    v98 = v207;
    sub_A727C(v94, v207, type metadata accessor for SizeConstants);
    v99 = v212;
    (*(v95 + 16))(v212, v96, v97);
    v100 = v211;
    sub_A727C(v98, v211, type metadata accessor for SizeConstants);
    v101 = v224;
    sub_A727C(v98, v224, type metadata accessor for SizeConstants.Environment);
    v102 = *(v233 + 24);
    v103 = sub_1CF30(v99, v101 + v102);
    v104 = *(v95 + 8);
    v104(v99, v97);
    sub_A72E4(v98, type metadata accessor for SizeConstants);
    v105 = sub_261690();
    (*(*(v105 - 8) + 8))(v101 + v102, v105);
    v106 = 1.0;
    if ((*&v103 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v106 = v103;
    }

    if ((~*&v103 & 0x7FF0000000000000) != 0)
    {
      v106 = v103;
    }

    *(v100 + *(v234 + 36)) = v106;
    v104(v96, v97);
    sub_A72E4(v221, type metadata accessor for SizeConstants);
    sub_21FA54(80.0);
    sub_8E80(v100, &qword_31B4C0, &qword_27C030);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v107 = v228;
    sub_261830();
    v108 = v208;
    sub_22148(v222, v208, &qword_31B288, &qword_2709E8);
    v109 = &v108[*(v107 + 36)];
    v110 = v241;
    *(v109 + 4) = v240;
    *(v109 + 5) = v110;
    *(v109 + 6) = v242;
    v111 = v237;
    *v109 = v236;
    *(v109 + 1) = v111;
    v112 = v239;
    *(v109 + 2) = v238;
    *(v109 + 3) = v112;
    v113 = v209;
    sub_22148(v108, v209, &qword_31B278, &qword_2709E0);
    sub_8198(v113, v230, &qword_31B278, &qword_2709E0);
    swift_storeEnumTagMultiPayload();
    sub_A5E48();
    sub_A5ECC();
    sub_261F80();
    sub_8E80(v113, &qword_31B278, &qword_2709E0);
    v89 = v235;
  }

  else
  {
    if (v90)
    {
      v114 = v205;
      sub_9EBE0(v205);
      v115 = v225;
      v116 = v210;
      v117 = v226;
      (*(v225 + 104))(v210, enum case for Font.TextStyle.subheadline(_:), v226);
      v118 = v188;
      sub_A727C(v114, v188, type metadata accessor for SizeConstants);
      v119 = v193;
      (*(v115 + 16))(v193, v116, v117);
      v120 = v194;
      sub_A727C(v118, v194, type metadata accessor for SizeConstants);
      v232 = type metadata accessor for SizeConstants.Environment;
      v121 = v224;
      sub_A727C(v118, v224, type metadata accessor for SizeConstants.Environment);
      v122 = *(v233 + 24);
      v123 = sub_1CF30(v119, v121 + v122);
      v124 = *(v115 + 8);
      v124(v119, v117);
      sub_A72E4(v118, type metadata accessor for SizeConstants);
      v125 = sub_261690();
      (*(*(v125 - 8) + 8))(v121 + v122, v125);
      v126 = 1.0;
      if ((*&v123 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v126 = v123;
      }

      if ((~*&v123 & 0x7FF0000000000000) == 0)
      {
        v123 = v126;
      }

      *(v120 + *(v234 + 36)) = v123;
      v124(v210, v117);
      sub_A72E4(v205, type metadata accessor for SizeConstants);
      v127 = v216;
      sub_A727C(v120, v216, v232);
      sub_8E80(v120, &qword_31B4C0, &qword_27C030);
      *(v127 + *(v215 + 36)) = v123;
      sub_21FA68(6.0);
      sub_8E80(v127, &qword_31B578, &qword_270C30);
      LOBYTE(v127) = sub_262500();
      sub_2610C0();
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v136 = v192;
      sub_8198(v89, v192, &qword_31B298, &qword_2709F0);
      v137 = v136 + *(v223 + 36);
      *v137 = v127;
      *(v137 + 8) = v129;
      *(v137 + 16) = v131;
      *(v137 + 24) = v133;
      *(v137 + 32) = v135;
      *(v137 + 40) = 0;
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v138 = v190;
      sub_22148(v136, v190, &qword_31B288, &qword_2709E8);
      v139 = (v138 + *(v228 + 36));
      v140 = v241;
      v139[4] = v240;
      v139[5] = v140;
      v139[6] = v242;
      v141 = v237;
      *v139 = v236;
      v139[1] = v141;
      v142 = v239;
      v139[2] = v238;
      v139[3] = v142;
      v143 = v191;
      sub_22148(v138, v191, &qword_31B278, &qword_2709E0);
    }

    else
    {
      LODWORD(v213) = sub_2624F0();
      v144 = v206;
      sub_9EBE0(v206);
      LODWORD(v221) = enum case for Font.TextStyle.subheadline(_:);
      v145 = v225;
      v220 = *(v225 + 104);
      v222 = v225 + 104;
      v146 = v197;
      v147 = v226;
      v220(v197);
      v148 = v189;
      v210 = type metadata accessor for SizeConstants;
      sub_A727C(v144, v189, type metadata accessor for SizeConstants);
      v149 = *(v145 + 16);
      v211 = v145 + 16;
      v212 = v149;
      v150 = v195;
      (v149)(v195, v146, v147);
      v151 = v196;
      sub_A727C(v148, v196, type metadata accessor for SizeConstants);
      v152 = v224;
      v205 = type metadata accessor for SizeConstants.Environment;
      sub_A727C(v148, v224, type metadata accessor for SizeConstants.Environment);
      v153 = *(v233 + 24);
      v154 = sub_1CF30(v150, v152 + v153);
      v155 = *(v145 + 8);
      v155(v150, v147);
      v207 = v155;
      sub_A72E4(v148, type metadata accessor for SizeConstants);
      v209 = sub_261690();
      v156 = *(v209 - 8);
      v208 = *(v156 + 8);
      v225 = v156 + 8;
      (v208)(v152 + v153, v209);
      if ((*&v154 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v157 = 1.0;
      }

      else
      {
        v157 = v154;
      }

      if ((~*&v154 & 0x7FF0000000000000) == 0)
      {
        v154 = v157;
      }

      *(v151 + *(v234 + 36)) = v154;
      v155(v146, v147);
      sub_A72E4(v206, type metadata accessor for SizeConstants);
      v158 = v216;
      sub_A727C(v151, v216, type metadata accessor for SizeConstants.Environment);
      sub_8E80(v151, &qword_31B4C0, &qword_27C030);
      *(v158 + *(v215 + 36)) = v154;
      sub_21FA68(12.0);
      sub_8E80(v158, &qword_31B578, &qword_270C30);
      sub_2610C0();
      v160 = v159;
      v162 = v161;
      v164 = v163;
      v166 = v165;
      v167 = v214;
      sub_8198(v235, v214, &qword_31B298, &qword_2709F0);
      v168 = v167 + *(v223 + 36);
      *v168 = v213;
      *(v168 + 8) = v160;
      *(v168 + 16) = v162;
      *(v168 + 24) = v164;
      *(v168 + 32) = v166;
      *(v168 + 40) = 0;
      v169 = v199;
      sub_9EBE0(v199);
      v170 = v204;
      (v220)(v204, v221, v147);
      v171 = v198;
      v172 = v210;
      sub_A727C(v169, v198, v210);
      v173 = v203;
      (v212)(v203, v170, v147);
      v174 = v202;
      sub_A727C(v171, v202, v172);
      sub_A727C(v171, v152, v205);
      v175 = *(v233 + 24);
      v176 = sub_1CF30(v173, v152 + v175);
      v177 = v173;
      v178 = v207;
      v207(v177, v147);
      sub_A72E4(v171, type metadata accessor for SizeConstants);
      (v208)(v152 + v175, v209);
      if ((*&v176 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v179 = 1.0;
      }

      else
      {
        v179 = v176;
      }

      if ((~*&v176 & 0x7FF0000000000000) != 0)
      {
        v179 = v176;
      }

      *(v174 + *(v234 + 36)) = v179;
      v178(v170, v147);
      sub_A72E4(v169, type metadata accessor for SizeConstants);
      sub_21FA54(200.0);
      sub_8E80(v174, &qword_31B4C0, &qword_27C030);
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v180 = v200;
      sub_22148(v214, v200, &qword_31B288, &qword_2709E8);
      v181 = (v180 + *(v228 + 36));
      v182 = v241;
      v181[4] = v240;
      v181[5] = v182;
      v181[6] = v242;
      v183 = v237;
      *v181 = v236;
      v181[1] = v183;
      v184 = v239;
      v181[2] = v238;
      v181[3] = v184;
      v143 = v201;
      sub_22148(v180, v201, &qword_31B278, &qword_2709E0);
      v89 = v235;
    }

    sub_8198(v143, v218, &qword_31B278, &qword_2709E0);
    swift_storeEnumTagMultiPayload();
    sub_A5ECC();
    v185 = v217;
    sub_261F80();
    sub_8E80(v143, &qword_31B278, &qword_2709E0);
    sub_8198(v185, v230, &qword_31B268, &qword_2709D8);
    swift_storeEnumTagMultiPayload();
    sub_A5E48();
    sub_261F80();
    sub_8E80(v185, &qword_31B268, &qword_2709D8);
  }

  return sub_8E80(v89, &qword_31B298, &qword_2709F0);
}

uint64_t sub_A1B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_263390();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2EF0(&qword_31A6F0, &qword_26F6C8);
  v6 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v72 = &v68 - v7;
  v80 = sub_2EF0(&qword_31B600, &qword_270CC0);
  v8 = *(*(v80 - 8) + 64);
  v9 = __chkstk_darwin(v80);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v68 - v11;
  v77 = sub_2EF0(&qword_31B608, &qword_270CC8);
  v12 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v79 = &v68 - v13;
  v68 = sub_2617E0();
  v14 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_2EF0(&qword_3192C8, &unk_2793D0);
  v17 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v19 = &v68 - v18;
  v75 = sub_2EF0(&qword_31B548, &qword_270C00);
  v20 = *(*(v75 - 8) + 64);
  v21 = __chkstk_darwin(v75);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  v26 = sub_2EF0(&qword_31B610, &qword_270CD0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v78 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v76 = &v68 - v30;
  v31 = sub_2EF0(&qword_31B550, &qword_270C08);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v68 - v34;
  v36 = sub_2EF0(&qword_31B558, &qword_270C10);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v68 - v41;
  v82 = a1;
  if (sub_9EDC4())
  {
    sub_A7228();
    sub_261390();
    (*(v32 + 32))(v42, v35, v31);
    (*(v32 + 56))(v42, 0, 1, v31);
  }

  else
  {
    (*(v32 + 56))(v42, 1, 1, v31);
  }

  v43 = v82 + *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v44 = type metadata accessor for ButtonViewModel(0);
  v45 = v44;
  if (*(v43 + *(v44 + 32)) == 1)
  {
    if (*(v43 + *(v44 + 28)) == 2)
    {
      v46 = 5.0;
    }

    else
    {
      v46 = 12.0;
    }

    v47 = *(v68 + 20);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v49 = sub_261DD0();
    (*(*(v49 - 8) + 104))(v16 + v47, v48, v49);
    *v16 = v46;
    v16[1] = v46;
    if (*(v43 + *(v45 + 36)) == 1)
    {
      v50 = sub_262FA0();
    }

    else
    {
      if (*(v43 + *(v45 + 48)) == 1)
      {
        ButtonViewModel.theme.getter(&v83);
        v50 = v84;
      }

      else
      {
        ButtonViewModel.theme.getter(&v83);
        v50 = v85;
      }
    }

    sub_A75CC(v16, v19, &type metadata accessor for RoundedRectangle);
    v55 = v69;
    *&v19[*(v69 + 52)] = v50;
    *&v19[*(v55 + 56)] = 256;
    sub_A24D0(&v23[*(v75 + 36)]);
    sub_22148(v19, v23, &qword_3192C8, &unk_2793D0);
    v56 = &qword_31B548;
    v57 = &qword_270C00;
    sub_22148(v23, v25, &qword_31B548, &qword_270C00);
    sub_8198(v25, v79, &qword_31B548, &qword_270C00);
    swift_storeEnumTagMultiPayload();
    sub_A7634();
    sub_A76EC();
    v58 = v76;
    sub_261F80();
    v59 = v25;
  }

  else
  {
    v51 = enum case for RoundedCornerStyle.continuous(_:);
    v52 = sub_261DD0();
    v53 = v73;
    (*(*(v52 - 8) + 104))(v73, v51, v52);
    if (*(v43 + *(v45 + 36)) == 1)
    {
      v54 = sub_262FA0();
    }

    else
    {
      if (*(v43 + *(v45 + 48)) == 1)
      {
        ButtonViewModel.theme.getter(&v83);
        v54 = v84;
      }

      else
      {
        ButtonViewModel.theme.getter(&v83);
        v54 = v85;
      }
    }

    v58 = v76;
    v60 = v72;
    sub_A75CC(v53, v72, &type metadata accessor for Capsule);
    v62 = v70;
    v61 = v71;
    *(v60 + *(v71 + 52)) = v54;
    *(v60 + *(v61 + 56)) = 256;
    sub_A24D0(v62 + *(v80 + 36));
    sub_22148(v60, v62, &qword_31A6F0, &qword_26F6C8);
    v56 = &qword_31B600;
    v57 = &qword_270CC0;
    v63 = v74;
    sub_22148(v62, v74, &qword_31B600, &qword_270CC0);
    sub_8198(v63, v79, &qword_31B600, &qword_270CC0);
    swift_storeEnumTagMultiPayload();
    sub_A7634();
    sub_A76EC();
    sub_261F80();
    v59 = v63;
  }

  sub_8E80(v59, v56, v57);
  sub_8198(v42, v40, &qword_31B558, &qword_270C10);
  v64 = v78;
  sub_8198(v58, v78, &qword_31B610, &qword_270CD0);
  v65 = v81;
  sub_8198(v40, v81, &qword_31B558, &qword_270C10);
  v66 = sub_2EF0(&qword_31B638, &qword_270CD8);
  sub_8198(v64, v65 + *(v66 + 48), &qword_31B610, &qword_270CD0);
  sub_8E80(v58, &qword_31B610, &qword_270CD0);
  sub_8E80(v42, &qword_31B558, &qword_270C10);
  sub_8E80(v64, &qword_31B610, &qword_270CD0);
  return sub_8E80(v40, &qword_31B558, &qword_270C10);
}

uint64_t sub_A24D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_3179C0, &qword_269D60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v34 - v13);
  v15 = type metadata accessor for BooksBorderedButtonStyle(0);
  v16 = v1 + v15[8];
  v17 = *(v16 + *(type metadata accessor for ButtonViewModel(0) + 40));
  if (v17 == 1)
  {
    v20 = v1 + v15[7];
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      if ((v21 & 1) == 0)
      {
LABEL_7:
        v22 = enum case for BlendMode.normal(_:);
        v23 = sub_263640();
        return (*(*(v23 - 8) + 104))(a1, v22, v23);
      }
    }

    else
    {

      sub_264900();
      v28 = sub_2624B0();
      v34 = v4;
      v29 = a1;
      v30 = v28;
      sub_260D10();

      a1 = v29;
      v4 = v34;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v21, 0);
      (*(v4 + 8))(v7, v3);
      if (v35 != 1)
      {
        goto LABEL_7;
      }
    }

    sub_8198(v1 + v15[6], v12, &qword_3179C0, &qword_269D60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = sub_263640();
      return (*(*(v31 - 8) + 32))(a1, v12, v31);
    }

    v32 = *v12;
    goto LABEL_16;
  }

  if (v17 == 2)
  {
    sub_8198(v1 + v15[5], v14, &qword_3179C0, &qword_269D60);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_263640();
      return (*(*(v18 - 8) + 32))(a1, v14, v18);
    }

    v27 = *v14;
LABEL_16:
    sub_264900();
    v33 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }

  v24 = enum case for BlendMode.normal(_:);
  v25 = sub_263640();
  v26 = *(*(v25 - 8) + 104);

  return v26(a1, v24, v25);
}

uint64_t sub_A2928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v4 = sub_263390();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v82 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_31B590, &qword_270C78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v78 - v9;
  v80 = sub_2EF0(&qword_31B598, &qword_270C80);
  v11 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v78 - v12;
  v91 = sub_2EF0(&qword_31B5A0, &qword_270C88);
  v13 = *(*(v91 - 8) + 64);
  v14 = __chkstk_darwin(v91);
  v81 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v78 - v16;
  v88 = sub_2EF0(&qword_31B5A8, &qword_270C90);
  v17 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v89 = &v78 - v18;
  v19 = sub_2617E0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_2EF0(&qword_31B518, &qword_270BC8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v78 - v25;
  v79 = sub_2EF0(&qword_31B520, &qword_270BD0);
  v27 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v29 = &v78 - v28;
  v86 = sub_2EF0(&qword_31B528, &qword_270BD8);
  v30 = *(*(v86 - 8) + 64);
  v31 = __chkstk_darwin(v86);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v78 - v34;
  v36 = sub_2EF0(&qword_31B5B0, &qword_270C98);
  v92 = *(v36 - 8);
  v37 = *(v92 + 64);
  __chkstk_darwin(v36);
  v85 = &v78 - v38;
  v39 = *(type metadata accessor for BooksBorderedButtonStyle(0) + 32);
  v87 = a1;
  v40 = a1 + v39;
  v41 = type metadata accessor for ButtonViewModel(0);
  if (*(v40 + v41[9]) == 1)
  {
    v42 = v41;
    if (*(v40 + v41[8]) == 1)
    {
      if (*(v40 + v41[7]) == 2)
      {
        v43 = 5.0;
      }

      else
      {
        v43 = 12.0;
      }

      v44 = *(v19 + 20);
      v45 = enum case for RoundedCornerStyle.continuous(_:);
      v46 = sub_261DD0();
      (*(*(v46 - 8) + 104))(v22 + v44, v45, v46);
      *v22 = v43;
      v22[1] = v43;
      if (*(v40 + v42[12]) == 1)
      {
        ButtonViewModel.theme.getter(&v94);
        v47 = *(&v94 + 1);
      }

      else
      {
        ButtonViewModel.theme.getter(&v94);
        v47 = v95;
      }

      v54 = v36;
      sub_261240();
      sub_A727C(v22, v26, &type metadata accessor for RoundedRectangle);
      v55 = &v26[*(sub_2EF0(&qword_31B530, &qword_270BE0) + 36)];
      v56 = v95;
      *v55 = v94;
      *(v55 + 1) = v56;
      *(v55 + 4) = v96;
      v57 = sub_2EF0(&qword_31B538, &qword_270BE8);
      *&v26[*(v57 + 52)] = v47;
      *&v26[*(v57 + 56)] = 256;
      v58 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v60 = v59;
      sub_A72E4(v22, &type metadata accessor for RoundedRectangle);
      v61 = &v26[*(sub_2EF0(&qword_31B540, &unk_270BF0) + 36)];
      *v61 = v58;
      v61[1] = v60;
      sub_A24D0(&v29[*(v79 + 36)]);
      sub_22148(v26, v29, &qword_31B518, &qword_270BC8);
      if (sub_2622B0())
      {
        v62 = 0.6;
      }

      else
      {
        v62 = 1.0;
      }

      sub_22148(v29, v33, &qword_31B520, &qword_270BD0);
      *&v33[*(v86 + 36)] = v62;
      sub_22148(v33, v35, &qword_31B528, &qword_270BD8);
      sub_8198(v35, v89, &qword_31B528, &qword_270BD8);
      swift_storeEnumTagMultiPayload();
      sub_A7344();
      sub_A7488();
      v63 = v85;
      sub_261F80();
      sub_8E80(v35, &qword_31B528, &qword_270BD8);
      v64 = v93;
    }

    else
    {
      v51 = enum case for RoundedCornerStyle.continuous(_:);
      v52 = sub_261DD0();
      v53 = v82;
      (*(*(v52 - 8) + 104))(v82, v51, v52);
      v54 = v36;
      if (*(v40 + v42[12]) == 1)
      {
        ButtonViewModel.theme.getter(&v94);
        v65 = *(&v94 + 1);
      }

      else
      {
        ButtonViewModel.theme.getter(&v94);
        v65 = v95;
      }

      v64 = v93;
      v63 = v85;
      sub_261240();
      sub_A727C(v53, v10, &type metadata accessor for Capsule);
      v66 = &v10[*(sub_2EF0(&qword_31B5B8, &qword_270CA0) + 36)];
      v67 = v95;
      *v66 = v94;
      *(v66 + 1) = v67;
      *(v66 + 4) = v96;
      v68 = sub_2EF0(&qword_31B5C0, &qword_270CA8);
      *&v10[*(v68 + 52)] = v65;
      *&v10[*(v68 + 56)] = 256;
      v69 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v71 = v70;
      sub_A72E4(v53, &type metadata accessor for Capsule);
      v72 = &v10[*(sub_2EF0(&qword_31B5C8, &unk_270CB0) + 36)];
      *v72 = v69;
      v72[1] = v71;
      v73 = v83;
      sub_A24D0(&v83[*(v80 + 36)]);
      sub_22148(v10, v73, &qword_31B590, &qword_270C78);
      if (sub_2622B0())
      {
        v74 = 0.6;
      }

      else
      {
        v74 = 1.0;
      }

      v75 = v73;
      v76 = v81;
      sub_22148(v75, v81, &qword_31B598, &qword_270C80);
      *(v76 + *(v91 + 36)) = v74;
      v77 = v84;
      sub_22148(v76, v84, &qword_31B5A0, &qword_270C88);
      sub_8198(v77, v89, &qword_31B5A0, &qword_270C88);
      swift_storeEnumTagMultiPayload();
      sub_A7344();
      sub_A7488();
      sub_261F80();
      sub_8E80(v77, &qword_31B5A0, &qword_270C88);
    }

    sub_22148(v63, v64, &qword_31B5B0, &qword_270C98);
    return (*(v92 + 56))(v64, 0, 1, v54);
  }

  else
  {
    v48 = v93;
    v49 = *(v92 + 56);

    return v49(v48, 1, 1, v36);
  }
}