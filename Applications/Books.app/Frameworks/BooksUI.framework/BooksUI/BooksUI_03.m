uint64_t sub_4E81C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v32 = a2;
  v3 = sub_2EF0(&qword_318670, &qword_26B6F8);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v26 = &v25 - v5;
  v6 = sub_2EF0(&qword_318678, &qword_26B700);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v28 = type metadata accessor for YearInReviewSharableImage();
  v12 = (a1 + *(v28 + 28));
  v13 = v12[4];
  sub_2E18(v12, v12[3]);
  swift_getKeyPath();
  v14 = 1;
  v37 = 1;
  sub_2F9C(&qword_3171D8, &qword_26B730);
  v39 = sub_261730();
  v15 = sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
  v35 = v13;
  v36 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_10934(v38);
  sub_262A90();

  v16 = WitnessTable;
  sub_2E18(v38, v39);
  v17 = sub_261730();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  swift_getKeyPath();
  v37 = 0;
  sub_262A90();

  v33 = v16;
  v34 = v15;
  swift_getWitnessTable();
  v19 = sub_263310();
  sub_3080(v38);
  if (*(v27 + *(v28 + 40)) == 1)
  {
    v20 = v26;
    sub_4EBFC(v26);
    sub_50454(v20, v11);
    v14 = 0;
  }

  (*(v29 + 56))(v11, v14, 1, v30);
  v21 = v31;
  sub_8198(v11, v31, &qword_318678, &qword_26B700);
  v22 = v32;
  *v32 = v19;
  v23 = sub_2EF0(&qword_318680, &qword_26B760);
  sub_8198(v21, v22 + *(v23 + 48), &qword_318678, &qword_26B700);

  sub_8E80(v11, &qword_318678, &qword_26B700);
  sub_8E80(v21, &qword_318678, &qword_26B700);
}

uint64_t sub_4EBFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v25 = sub_262370();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318688, &qword_26B768);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_261D30();
  v30 = 1;
  sub_4F9EC(v2, &v46);
  v41 = v56;
  v42 = v57;
  v43 = v58;
  v44 = v59;
  v37 = v52;
  v38 = v53;
  v39 = v54;
  v40 = v55;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v31 = v46;
  v32 = v47;
  v45[10] = v56;
  v45[11] = v57;
  v45[12] = v58;
  v45[13] = v59;
  v45[6] = v52;
  v45[7] = v53;
  v45[8] = v54;
  v45[9] = v55;
  v45[2] = v48;
  v45[3] = v49;
  v45[4] = v50;
  v45[5] = v51;
  v45[0] = v46;
  v45[1] = v47;
  sub_8198(&v31, &v27, &qword_318690, &qword_26B770);
  sub_8E80(v45, &qword_318690, &qword_26B770);
  *&v29[167] = v41;
  *&v29[183] = v42;
  *&v29[199] = v43;
  *&v29[215] = v44;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v28[177] = *&v29[176];
  *&v28[193] = *&v29[192];
  *&v28[209] = *&v29[208];
  *&v28[113] = *&v29[112];
  *&v28[129] = *&v29[128];
  *&v28[145] = *&v29[144];
  *&v28[161] = *&v29[160];
  *&v28[49] = *&v29[48];
  *&v28[65] = *&v29[64];
  *&v28[81] = *&v29[80];
  *&v28[97] = *&v29[96];
  *&v28[1] = *v29;
  *&v28[17] = *&v29[16];
  v27 = v11;
  v28[0] = v30;
  *&v28[224] = *(&v44 + 1);
  *&v28[33] = *&v29[32];
  sub_262350();
  sub_2EF0(&qword_318698, &qword_26B778);
  sub_8E38(&qword_3186A0, &qword_318698, &qword_26B778);
  sub_262C70();
  (*(v3 + 8))(v6, v25);
  v58 = *&v28[176];
  v59 = *&v28[192];
  v60 = *&v28[208];
  v61 = *&v28[224];
  v54 = *&v28[112];
  v55 = *&v28[128];
  v56 = *&v28[144];
  v57 = *&v28[160];
  v50 = *&v28[48];
  v51 = *&v28[64];
  v52 = *&v28[80];
  v53 = *&v28[96];
  v46 = v27;
  v47 = *v28;
  v48 = *&v28[16];
  v49 = *&v28[32];
  sub_8E80(&v46, &qword_318698, &qword_26B778);
  v12 = sub_262580();
  KeyPath = swift_getKeyPath();
  v14 = &v10[*(v7 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_262630();
  sub_504CC();
  v15 = v26;
  sub_262A20();
  sub_8E80(v10, &qword_318688, &qword_26B768);
  v16 = swift_getKeyPath();
  v17 = v15 + *(sub_2EF0(&qword_3186B0, &qword_26B7E8) + 36);
  v18 = v15;
  *v17 = v16;
  *(v17 + 8) = 1;
  *(v17 + 16) = 0;
  v19 = swift_getKeyPath();
  v20 = (v15 + *(sub_2EF0(&qword_3186B8, &unk_26B820) + 36));
  *v20 = v19;
  v20[1] = 0x3FE0000000000000;
  v21 = swift_getKeyPath();
  LODWORD(v19) = *(type metadata accessor for YearInReviewSharableImage() + 32);
  v22 = (v18 + *(sub_2EF0(&qword_318670, &qword_26B6F8) + 36));
  v23 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  result = PageBackground.resolvedColorScheme.getter(v22 + *(v23 + 28));
  *v22 = v21;
  return result;
}

void sub_4F0CC(void *a1)
{
  v2 = sub_2630C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318730, &qword_26B888);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v24 - v9);
  v11 = sub_2EF0(&qword_317378, &unk_2698B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v24 - v13);
  if (a1)
  {
    v15 = a1;
    sub_2630A0();
    (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
    v16 = sub_263100();

    (*(v3 + 8))(v6, v2);
    *v10 = v16;
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();

    sub_261F80();
  }

  else
  {
    v17 = [objc_opt_self() secondarySystemBackgroundColor];
    v18 = sub_262EE0();
    KeyPath = swift_getKeyPath();
    v20 = (v14 + *(v11 + 36));
    v21 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
    v22 = enum case for ColorScheme.dark(_:);
    v23 = sub_261180();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = KeyPath;
    *v14 = v18;
    sub_8198(v14, v10, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_261F80();
    sub_8E80(v14, &qword_317378, &unk_2698B0);
  }
}

uint64_t sub_4F420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_2630C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260D00();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v24 = Color.init(hexString:)(0x374632463246, 0xE600000000000000);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass:{ObjCClassFromMetadata, v23}];
  sub_260CF0();
  sub_263120();
  (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
  v13 = sub_263100();

  (*(v4 + 8))(v7, v3);
  sub_263720();
  v15 = v14;
  v17 = v16;
  LOBYTE(v34[0]) = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v31 = v13;
  LOWORD(v32[0]) = 257;
  *(v32 + 2) = v29;
  WORD3(v32[0]) = v30;
  v18 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  *(v32 + 8) = v18;
  *(&v32[1] + 1) = v15;
  *&v33[0] = v17;
  v19 = v26;
  v20 = v27;
  *(v33 + 8) = v26;
  *(&v33[1] + 8) = v27;
  v21 = v28;
  *(&v33[2] + 8) = v28;
  WORD4(v33[3]) = 0;
  *a2 = v24;
  *(a2 + 40) = v32[1];
  *(a2 + 24) = v32[0];
  *(a2 + 8) = v31;
  *(a2 + 98) = *(&v33[2] + 10);
  *(a2 + 88) = v33[2];
  *(a2 + 72) = v33[1];
  *(a2 + 56) = v33[0];
  v34[0] = v13;
  v34[1] = 0;
  v35 = 257;
  v37 = v30;
  v36 = v29;
  v38 = v18;
  v39 = v15;
  v40 = v17;
  v43 = v21;
  v42 = v20;
  v41 = v19;
  v44 = 0;

  sub_8198(&v31, &v25, &qword_318738, &qword_26B898);
  sub_8E80(v34, &qword_318738, &qword_26B898);
}

uint64_t sub_4F768()
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

uint64_t sub_4F9EC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_262870();
  v42 = v5;
  v43 = v4;
  v7 = v6;
  v44 = v8;
  sub_263580();
  sub_2613A0();
  v41 = v7 & 1;
  v9 = (a1 + *(type metadata accessor for YearInReviewSharableImage() + 36));
  v10 = v9[1];
  if (v10)
  {
    v87 = *v9;
    v88 = v10;

    v105._countAndFlagsBits = 32;
    v105._object = 0xE100000000000000;
    sub_264530(v105);
    v11 = sub_4F768();
    v13 = v12;

    v106._countAndFlagsBits = v11;
    v106._object = v13;
    sub_264530(v106);
  }

  else
  {
    sub_4F768();
  }

  sub_10A84();
  v14 = sub_2628F0();
  v16 = v15;
  v18 = v17;
  sub_262140();
  v19 = sub_2627F0();
  v39 = v20;
  v40 = v21;
  v23 = v22;
  sub_39DBC(v14, v16, v18 & 1);

  sub_263590();
  sub_261830();
  *&v73 = v43;
  *(&v73 + 1) = v42;
  LOBYTE(v74) = v41;
  *(&v74 + 1) = v104[0];
  DWORD1(v74) = *(v104 + 3);
  *(&v74 + 1) = v44;
  v75 = v101;
  v76 = v102;
  v77 = v103;
  v54 = v101;
  v55 = v102;
  v25 = v71;
  v24 = v72;
  v52 = v73;
  v53 = v74;
  *&v78 = v19;
  *(&v78 + 1) = v39;
  LOBYTE(v79) = v23 & 1;
  DWORD1(v79) = *&v99[3];
  *(&v79 + 1) = *v99;
  *(&v79 + 1) = v40;
  v80 = v66;
  v81 = v67;
  v85 = v71;
  v86 = v72;
  v26 = v69;
  v27 = v70;
  v83 = v69;
  v84 = v70;
  v28 = v66;
  v29 = v67;
  v30 = v68;
  v82 = v68;
  v56 = v103;
  v57 = v78;
  v60 = v67;
  v61 = v68;
  v58 = v79;
  v59 = v66;
  v31 = v70;
  v64 = v71;
  v65 = v72;
  v62 = v69;
  v63 = v70;
  a2[10] = v69;
  a2[11] = v31;
  v32 = v65;
  a2[12] = v64;
  a2[13] = v32;
  v33 = v59;
  a2[6] = v58;
  a2[7] = v33;
  v34 = v61;
  a2[8] = v60;
  a2[9] = v34;
  v35 = v55;
  a2[2] = v54;
  a2[3] = v35;
  v36 = v57;
  a2[4] = v56;
  a2[5] = v36;
  v37 = v53;
  *a2 = v52;
  a2[1] = v37;
  v96 = v27;
  v97 = v25;
  v98 = v24;
  v100 = v23 & 1;
  v87 = v19;
  v88 = v39;
  v89 = v23 & 1;
  *v90 = *v99;
  *&v90[3] = *&v99[3];
  v91 = v40;
  v92 = v28;
  v93 = v29;
  v94 = v30;
  v95 = v26;
  sub_8198(&v73, v45, &qword_3186C0, &qword_26B830);
  sub_8198(&v78, v45, &qword_3186C8, &qword_26B838);
  sub_8E80(&v87, &qword_3186C8, &qword_26B838);
  v45[0] = v43;
  v45[1] = v42;
  v46 = v41;
  *v47 = v104[0];
  *&v47[3] = *(v104 + 3);
  v48 = v44;
  v49 = v101;
  v50 = v102;
  v51 = v103;
  return sub_8E80(v45, &qword_3186C0, &qword_26B830);
}

uint64_t sub_4FDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PageBackground(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_4FFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316F70, &unk_2693C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PageBackground(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_500F0()
{
  sub_50224();
  if (v0 <= 0x3F)
  {
    sub_1BB48(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_5027C();
      if (v2 <= 0x3F)
      {
        sub_502E0();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PageBackground(319);
          if (v4 <= 0x3F)
          {
            sub_1BB48(319, &qword_316CB8, &type metadata for String, &type metadata accessor for Optional);
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

void sub_50224()
{
  if (!qword_316FF0)
  {
    sub_261180();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_316FF0);
    }
  }
}

void sub_5027C()
{
  if (!qword_316FF8)
  {
    sub_2F9C(&qword_317000, &qword_2693E0);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_316FF8);
    }
  }
}

unint64_t sub_502E0()
{
  result = qword_318600;
  if (!qword_318600)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_318600);
  }

  return result;
}

unint64_t sub_50348()
{
  result = qword_318648;
  if (!qword_318648)
  {
    sub_2F9C(&qword_318590, &qword_26B650);
    sub_2F9C(&qword_318578, &qword_26B640);
    sub_8E38(&qword_318588, &qword_318578, &qword_26B640);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318648);
  }

  return result;
}

uint64_t sub_50454(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318670, &qword_26B6F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_504CC()
{
  result = qword_3186A8;
  if (!qword_3186A8)
  {
    sub_2F9C(&qword_318688, &qword_26B768);
    sub_2F9C(&qword_318698, &qword_26B778);
    sub_8E38(&qword_3186A0, &qword_318698, &qword_26B778);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3186A8);
  }

  return result;
}

uint64_t sub_50604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_50668()
{
  result = qword_3186F8;
  if (!qword_3186F8)
  {
    sub_2F9C(&qword_3186E0, &unk_26B850);
    sub_2F5A8();
    sub_506F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3186F8);
  }

  return result;
}

unint64_t sub_506F4()
{
  result = qword_318700;
  if (!qword_318700)
  {
    sub_2F9C(&qword_318708, &qword_26B870);
    sub_8E38(&qword_318710, &qword_318718, &unk_26B878);
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318700);
  }

  return result;
}

uint64_t sub_507D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_50810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    swift_unknownObjectRetain();
    v6 = vars8;
  }
}

uint64_t sub_50874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

__n128 SwooshItemView.init(model:contextActionMenuView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t SwooshItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_2EF0(&qword_318740, &qword_26B8A0);
  sub_509CC(v1, (a1 + *(v3 + 44)));
  sub_50DD4(v1, v8);
  sub_2E18(v8, v8[3]);
  sub_260980();
  v5 = v4;
  sub_3080(v8);
  result = sub_2EF0(&qword_318748, &qword_26B8A8);
  v7 = a1 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_509CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for CoverView();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318770, &qword_27A3C0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_260950();
  sub_30CC(a1, &v41);
  CoverViewModel.CoverImageInfo.init(assetInfo:)(&v41, v39);
  *(&v40 + 1) = 0x4068000000000000;
  sub_230A8(v39);
  v45 = v39[4];
  v46 = v39[5];
  v47 = v39[6];
  v48 = v40;
  v41 = v39[0];
  v42 = v39[1];
  v43 = v39[2];
  v44 = v39[3];
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  *(v6 + 6) = swift_getKeyPath();
  v6[56] = 0;
  v16 = v3[6];
  *&v6[v16] = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v17 = v3[7];
  *&v6[v17] = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v18 = &v6[v3[8]];
  type metadata accessor for ProfileRestrictions();
  sub_51B98(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v18 = sub_261900();
  v18[1] = v19;
  v20 = &v6[v3[9]];
  v36 = 1;
  sub_2631D0();
  v21 = v38;
  *v20 = v37;
  *(v20 + 1) = v21;
  v22 = &v6[v3[10]];
  v23 = v46;
  *(v22 + 4) = v45;
  *(v22 + 5) = v23;
  v24 = v48;
  *(v22 + 6) = v47;
  *(v22 + 7) = v24;
  v25 = v42;
  *v22 = v41;
  *(v22 + 1) = v25;
  v26 = v44;
  *(v22 + 2) = v43;
  *(v22 + 3) = v26;
  v6[v3[11]] = 0;
  v35 = a1;
  sub_51B98(&qword_317D60, type metadata accessor for CoverView);
  sub_262A80();
  sub_51BE0(v6);
  v27 = v8[2];
  v27(v12, v14, v7);
  v28 = v34;
  *v34 = 0;
  *(v28 + 8) = 0;
  v29 = v28;
  v30 = sub_2EF0(&qword_318778, &qword_26BA00);
  v27(&v29[*(v30 + 48)], v12, v7);
  v31 = v8[1];
  v31(v14, v7);
  return (v31)(v12, v7);
}

uint64_t sub_50E30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  sub_50DD4(a1, v12);
  v4(v13, v12);
  sub_3080(v12);
  v5 = v14;
  v6 = sub_2E18(v13, v14);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v6);
  (*(v9 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_263310();
  result = sub_3080(v13);
  *a2 = v10;
  return result;
}

uint64_t static ShelfGridType.Swoosh.a1.getter@<X0>(void *a1@<X8>)
{
  if (qword_315958 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E5B8;
  v2 = qword_31E5C0;
  v3 = unk_31E5C8;
  v4 = qword_31E5D0;
  v5 = unk_31E5D8;
  *a1 = qword_31E5B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.a2.getter@<X0>(void *a1@<X8>)
{
  if (qword_315960 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E5E8;
  v2 = qword_31E5F0;
  v3 = unk_31E5F8;
  v4 = qword_31E600;
  v5 = unk_31E608;
  *a1 = qword_31E5E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.aSmall.getter@<X0>(void *a1@<X8>)
{
  if (qword_315968 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E618;
  v2 = qword_31E620;
  v3 = unk_31E628;
  v4 = qword_31E630;
  v5 = unk_31E638;
  *a1 = qword_31E610;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.b.getter@<X0>(void *a1@<X8>)
{
  if (qword_315970 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E648;
  v2 = qword_31E650;
  v3 = unk_31E658;
  v4 = qword_31E660;
  v5 = unk_31E668;
  *a1 = qword_31E640;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.e.getter@<X0>(void *a1@<X8>)
{
  if (qword_315988 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E6D8;
  v2 = qword_31E6E0;
  v3 = unk_31E6E8;
  v4 = qword_31E6F0;
  v5 = unk_31E6F8;
  *a1 = qword_31E6D0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridType.Swoosh.h.getter@<X0>(void *a1@<X8>)
{
  if (qword_3159A0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_31E768;
  v2 = qword_31E770;
  v3 = unk_31E778;
  v4 = qword_31E780;
  v5 = unk_31E788;
  *a1 = qword_31E760;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t static ShelfGridLayout.swoosh(context:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ShelfGridLayoutContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 64);
  sub_51704(a1, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_51870(v7, v10 + v9);
  v28 = sub_261E60();
  if (qword_315AA8 != -1)
  {
    swift_once();
  }

  v11 = qword_354020;
  v30 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v29[0] = *(a1 + 16);
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v17 = *(v4 + 32);

  v18 = ShelfGridBreakpoint.resolveColumns(for:dynamicTypeSize:)(v29, a1 + v17);

  v19 = sub_2EF0(&qword_318750, &qword_26B8B0);
  v20 = (a2 + *(v19 + 48));
  v21 = (a2 + *(v19 + 64));
  *a2 = v8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = sub_518D4;
  *(v22 + 32) = v10;
  *(v22 + 40) = 1;
  *v20 = sub_519A0;
  v20[1] = v22;
  v23 = enum case for ShelfGridItemWidth.calculate(_:);
  v24 = sub_260C90();
  (*(*(v24 - 8) + 104))(v20, v23, v24);
  *v21 = v28;
  v21[1] = v11;
  v25 = enum case for ShelfGridLayout.horizontalWithAlignment(_:);
  v26 = sub_260B40();
  return (*(*(v26 - 8) + 104))(a2, v25, v26);
}

uint64_t sub_5161C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v12 = *(a1 + 16);
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v9 = *(type metadata accessor for ShelfGridLayoutContext() + 32);
  v11 = *(a1 + 8);

  sub_110348(a1 + v9, &v11, a2);
}

uint64_t sub_51704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridLayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51768()
{
  v1 = (type metadata accessor for ShelfGridLayoutContext() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 3);

  v5 = *(v3 + 4);

  v6 = *(v3 + 5);

  v7 = *(v3 + 6);

  v8 = *(v3 + 7);

  v9 = v1[10];
  v10 = sub_261690();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);

  return swift_deallocObject();
}

uint64_t sub_51870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfGridLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_518D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfGridLayoutContext() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5161C(v4, a1);
}

uint64_t sub_51954()
{
  sub_51990(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_51990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_519CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_51A14(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_51A84()
{
  result = qword_318758;
  if (!qword_318758)
  {
    sub_2F9C(&qword_318748, &qword_26B8A8);
    sub_51B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318758);
  }

  return result;
}

unint64_t sub_51B10()
{
  result = qword_318760;
  if (!qword_318760)
  {
    sub_2F9C(&qword_318768, &qword_26B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318760);
  }

  return result;
}

uint64_t sub_51B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_51BE0(uint64_t a1)
{
  v2 = type metadata accessor for CoverView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_58190(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_51E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318780, &qword_26BAF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for HeroLockupView();
  sub_8198(v1 + *(v12 + 24), v11, &qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_58190(v11, a1, type metadata accessor for FontConstants.Hero);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

__n128 HeroLockupView.init(id:model:segue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for HeroLockupView();
  v9 = a4 + v8[5];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v8[6];
  *(a4 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_318780, &qword_26BAF0);
  swift_storeEnumTagMultiPayload();
  v11 = a4 + v8[7];
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 1) = v12;
  *(v11 + 4) = *(a1 + 32);
  sub_58190(a2, a4 + v8[8], type metadata accessor for HeroLockupModel);
  v13 = a4 + v8[9];
  result = *a3;
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 1) = v15;
  *(v13 + 4) = *(a3 + 32);
  return result;
}

__n128 HeroLockupView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_318788, &qword_26BAF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v12 - v5;
  *v6 = sub_261E60();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_2EF0(&qword_318790, &qword_26BB00);
  sub_52290(v1, &v6[*(v7 + 44)]);
  sub_263560();
  sub_261830();
  sub_22148(v6, a1, &qword_318788, &qword_26BAF8);
  v8 = a1 + *(sub_2EF0(&qword_318798, &qword_26BB08) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_52290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v64 = a2;
  v3 = sub_2617E0();
  v4 = *(v3 - 8);
  v61 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v62 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2EF0(&qword_318930, &qword_26BE78);
  v7 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v9 = (v56 - v8);
  v10 = sub_2EF0(&qword_318938, &qword_26BE80);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v63 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v56 - v15;
  v16 = type metadata accessor for HeroLockupView();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v20 = sub_2EF0(&qword_318940, &qword_26BE88);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v60 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v56 - v24;
  *v25 = sub_261E60();
  *(v25 + 1) = 0x4020000000000000;
  v25[16] = 0;
  v56[1] = *(sub_2EF0(&qword_318948, &qword_26BE90) + 44);
  sub_58200(a1, v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeroLockupView);
  v26 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v27 = swift_allocObject();
  sub_58190(v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for HeroLockupView);
  sub_2EF0(&qword_318950, &qword_26BE98);
  sub_260A70();
  sub_260A50();
  sub_8E38(&qword_318958, &qword_318950, &qword_26BE98);
  sub_579F0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_579F0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  sub_260A80();
  *v9 = sub_263540();
  v9[1] = v28;
  v29 = sub_2EF0(&qword_318960, &qword_26BEA0);
  sub_53FA0(v57, v9 + *(v29 + 44));
  v30 = *(v17 + 36);
  sub_8E38(&qword_318968, &qword_318930, &qword_26BE78);
  v31 = v58;
  sub_262C30();
  sub_8E80(v9, &qword_318930, &qword_26BE78);
  v32 = *(v61 + 28);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = sub_261DD0();
  v35 = v62;
  (*(*(v34 - 8) + 104))(&v62[v32], v33, v34);
  __asm { FMOV            V0.2D, #12.0 }

  *v35 = _Q0;
  sub_262F80();
  v41 = sub_263000();

  v42 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v44 = v43;
  v45 = v31 + *(v11 + 44);
  sub_58200(v35, v45, &type metadata accessor for RoundedRectangle);
  v46 = v45 + *(sub_2EF0(&qword_318970, &unk_280C60) + 36);
  *v46 = v41;
  *(v46 + 8) = xmmword_26BA30;
  *(v46 + 24) = 0x4018000000000000;
  v47 = (v45 + *(sub_2EF0(&qword_318978, &qword_26BEA8) + 36));
  *v47 = v42;
  v47[1] = v44;
  sub_58128(v35, &type metadata accessor for RoundedRectangle);
  v48 = v60;
  sub_8198(v25, v60, &qword_318940, &qword_26BE88);
  v49 = v63;
  sub_8198(v31, v63, &qword_318938, &qword_26BE80);
  v50 = v48;
  v51 = v48;
  v52 = v64;
  sub_8198(v50, v64, &qword_318940, &qword_26BE88);
  v53 = sub_2EF0(&qword_318980, &qword_26BEB0);
  v54 = v52 + *(v53 + 48);
  *v54 = 0x4024000000000000;
  *(v54 + 8) = 0;
  sub_8198(v49, v52 + *(v53 + 64), &qword_318938, &qword_26BE80);
  sub_8E80(v31, &qword_318938, &qword_26BE80);
  sub_8E80(v25, &qword_318940, &qword_26BE88);
  sub_8E80(v49, &qword_318938, &qword_26BE80);
  return sub_8E80(v51, &qword_318940, &qword_26BE88);
}

uint64_t sub_52964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v71 = a3;
  v5 = sub_2EF0(&qword_3189F0, &qword_26BF10);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = (&v61 - v9);
  v10 = type metadata accessor for ColorConstants(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v61 - v15;
  v17 = sub_262730();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FontConstants.Hero(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_260BD0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for HeroLockupView();
  (*(v27 + 16))(v30, a2 + *(v31 + 32), v26);
  sub_30CC(a1, v79);
  v66 = sub_2627B0();
  v65 = v32;
  LOBYTE(v30) = v33;
  v64 = v34;
  sub_51E20(v25);
  (*(v18 + 104))(v21, enum case for Font.TextStyle.caption(_:), v17);
  v35 = enum case for Font.Design.rounded(_:);
  v36 = sub_2625C0();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v16, v35, v36);
  (*(v37 + 56))(v16, 0, 1, v36);
  sub_262680();
  sub_8E80(v16, &qword_318458, &unk_26B270);
  (*(v18 + 8))(v21, v17);
  sub_2625A0();

  sub_58128(v25, type metadata accessor for FontConstants.Hero);
  v38 = v66;
  v39 = v65;
  v40 = sub_262840();
  v61 = v40;
  v63 = v41;
  LOBYTE(v35) = v42;
  v44 = v43;
  v62 = v43;
  sub_39DBC(v38, v39, v30 & 1);

  KeyPath = swift_getKeyPath();
  v66 = KeyPath;
  v46 = v68;
  sub_51C3C(v68);
  v65 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_58128(v46, type metadata accessor for ColorConstants);
  v47 = swift_getKeyPath();
  LOBYTE(v79[0]) = v35 & 1;
  LOBYTE(v74) = 0;
  v48 = sub_261E60();
  v49 = v69;
  *v69 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 1;
  v50 = sub_2EF0(&qword_3189F8, &qword_26BF48);
  sub_53024(a2, v67, v49 + *(v50 + 44));
  v51 = v70;
  sub_8198(v49, v70, &qword_3189F0, &qword_26BF10);
  v52 = v63;
  *&v74 = v40;
  *(&v74 + 1) = v63;
  LOBYTE(v75) = v35 & 1;
  *(&v75 + 1) = *v73;
  DWORD1(v75) = *&v73[3];
  *(&v75 + 1) = v44;
  *&v76 = KeyPath;
  *(&v76 + 1) = 1;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = *v72;
  DWORD1(v77) = *&v72[3];
  v53 = v47;
  v54 = v65;
  *(&v77 + 1) = v47;
  v78 = v65;
  v55 = v71;
  *(v71 + 64) = v65;
  v56 = v75;
  *v55 = v74;
  v55[1] = v56;
  v57 = v77;
  v55[2] = v76;
  v55[3] = v57;
  v58 = v55;
  v59 = sub_2EF0(&qword_318A00, &qword_26BF50);
  sub_8198(v51, v58 + *(v59 + 48), &qword_3189F0, &qword_26BF10);
  sub_8198(&v74, v79, &qword_318A08, &qword_26BF58);
  sub_8E80(v49, &qword_3189F0, &qword_26BF10);
  sub_8E80(v51, &qword_3189F0, &qword_26BF10);
  v79[0] = v61;
  v79[1] = v52;
  v80 = v35 & 1;
  *v81 = *v73;
  *&v81[3] = *&v73[3];
  v82 = v62;
  v83 = v66;
  v84 = 1;
  v85 = 0;
  *v86 = *v72;
  *&v86[3] = *&v72[3];
  v87 = v53;
  v88 = v54;
  return sub_8E80(v79, &qword_318A08, &qword_26BF58);
}

uint64_t sub_53024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v173 = a2;
  v170 = a3;
  v4 = sub_2EF0(&qword_316208, &qword_268BD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v167 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v166 = &v143 - v8;
  v9 = type metadata accessor for ColorConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v174 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_25FF40();
  *(&v179 + 1) = *(v172 - 8);
  v12 = *(*(&v179 + 1) + 64);
  __chkstk_darwin(v172);
  v171 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_318458, &unk_26B270);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v156 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v143 - v18;
  v20 = sub_262730();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v154 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v157 = &v143 - v25;
  v26 = type metadata accessor for FontConstants.Hero(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v153 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v143 - v30;
  v32 = sub_260BD0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v168 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v169 = &v143 - v38;
  __chkstk_darwin(v37);
  v40 = &v143 - v39;
  v41 = sub_2EF0(&qword_318A10, &qword_26BF60);
  v163 = *(v41 - 8);
  v164 = v41;
  v42 = *(v163 + 64);
  __chkstk_darwin(v41);
  v162 = &v143 - v43;
  v161 = sub_2EF0(&qword_318A18, &qword_26BF68);
  v44 = *(*(v161 - 8) + 64);
  v45 = __chkstk_darwin(v161);
  v177 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v160 = &v143 - v48;
  __chkstk_darwin(v47);
  v180 = &v143 - v49;
  v50 = a1 + *(type metadata accessor for HeroLockupView() + 32);
  v51 = type metadata accessor for HeroLockupModel();
  v158 = v40;
  v159 = v51;
  v52 = *(v51 + 20);
  *&v179 = v33;
  v53 = *(v33 + 16);
  v175 = v50;
  v176 = v32;
  v150 = v53;
  v151 = v33 + 16;
  v53(v40, (v50 + v52), v32);
  v165 = v31;
  v54 = a1;
  v55 = v157;
  v178 = v54;
  sub_51E20(v31);
  v56 = v21[13];
  v148 = enum case for Font.TextStyle.title2(_:);
  v149 = v21 + 13;
  v147 = v56;
  v56(v55);
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v57 = sub_2625C0();
    (*(*(v57 - 8) + 56))(v19, 1, 1, v57);
  }

  else
  {
    v58 = enum case for Font.Design.serif (_:);
    v59 = v21;
    v60 = v20;
    v61 = sub_2625C0();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v19, v58, v61);
    v63 = v61;
    v20 = v60;
    v21 = v59;
    (*(v62 + 56))(v19, 0, 1, v63);
  }

  v143 = v20;
  sub_262680();
  sub_8E80(v19, &qword_318458, &unk_26B270);
  v64 = v21[1];
  v155 = v21 + 1;
  v146 = v64;
  v64(v55, v20);
  v65 = sub_2625A0();

  sub_58128(v165, type metadata accessor for FontConstants.Hero);
  sub_30CC(v173, &v188);
  v66 = v158;
  v67 = sub_260BB0();
  v69 = v68;
  v145 = type metadata accessor for BooksHTMLConverter();
  v70 = objc_allocWithZone(v145);

  v71 = sub_19C6C8(v67, v69, v65);
  [*&v71[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v72 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  v73 = *(*(&v179 + 1) + 16);
  *(&v179 + 1) += 16;
  v144 = v73;
  v73(v171, &v71[v72], v172);

  v74 = sub_2628D0();
  v76 = v75;
  v78 = v77;

  sub_3080(&v188);
  v79 = *(v179 + 8);
  v165 = (v179 + 8);
  v152 = v79;
  v79(v66, v176);
  v80 = v174;
  sub_51C3C(v174);
  _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  sub_58128(v80, type metadata accessor for ColorConstants);
  LOBYTE(v80) = v78;
  v81 = sub_2627E0();
  v157 = v81;
  v83 = v82;
  LOBYTE(v69) = v84;
  v86 = v85;
  sub_39DBC(v74, v76, v80 & 1);

  v200 = v81;
  v201 = v83;
  v202 = v69 & 1;
  v203 = v86;
  v159 = *(v159 + 24);
  v87 = v166;
  sub_8198(v175 + v159, v166, &qword_316208, &qword_268BD0);
  v158 = *(v179 + 48);
  v88 = v176;
  v158(v87, 1, v176);
  sub_8E80(v87, &qword_316208, &qword_268BD0);
  v89 = v162;
  sub_262EA0();
  sub_39DBC(v157, v83, v69 & 1);

  sub_263580();
  sub_2613A0();
  v90 = v160;
  (*(v163 + 32))(v160, v89, v164);
  v91 = (v90 + *(v161 + 36));
  v92 = v205;
  *v91 = v204;
  v91[1] = v92;
  v91[2] = v206;
  sub_22148(v90, v180, &qword_318A18, &qword_26BF68);
  v93 = v88;
  v94 = v167;
  sub_8198(v175 + v159, v167, &qword_316208, &qword_268BD0);
  if (v158(v94, 1, v88) == 1)
  {
    sub_8E80(v94, &qword_316208, &qword_268BD0);
    v179 = 0uLL;
    v178 = 0;
    KeyPath = 0;
    v175 = 0;
    v176 = 0;
    v96 = 0;
    v173 = 0;
    v174 = 0;
    v171 = 0;
    v172 = 0;
    v97 = 0;
  }

  else
  {
    v98 = v169;
    (*(v179 + 32))(v169, v94, v88);
    v150(v168, v98, v88);
    v99 = v153;
    sub_51E20(v153);
    v100 = v154;
    v101 = v143;
    v147(v154, v148);
    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v102 = sub_2625C0();
      v103 = v156;
      (*(*(v102 - 8) + 56))(v156, 1, 1, v102);
    }

    else
    {
      v104 = enum case for Font.Design.serif (_:);
      v105 = sub_2625C0();
      v106 = *(v105 - 8);
      v103 = v156;
      (*(v106 + 104))(v156, v104, v105);
      (*(v106 + 56))(v103, 0, 1, v105);
    }

    v108 = v172;
    v107 = v173;
    v175 = 1;
    v109 = sub_262680();
    sub_8E80(v103, &qword_318458, &unk_26B270);
    v146(v100, v101);
    sub_58128(v99, type metadata accessor for FontConstants.Hero);
    sub_30CC(v107, &v188);
    v110 = v168;
    v111 = sub_260BB0();
    v113 = v112;
    v114 = objc_allocWithZone(v145);

    v115 = sub_19C6C8(v111, v113, v109);
    [*&v115[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
    v116 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
    swift_beginAccess();
    v144(v171, &v115[v116], v108);

    v117 = sub_2628D0();
    v119 = v118;
    v121 = v120;

    sub_3080(&v188);
    v122 = v152;
    v152(v110, v93);
    v123 = v174;
    sub_51C3C(v174);
    _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    sub_58128(v123, type metadata accessor for ColorConstants);
    *&v179 = sub_2627E0();
    *(&v179 + 1) = v124;
    LOBYTE(v123) = v125;
    v178 = v126;
    sub_39DBC(v117, v119, v121 & 1);

    KeyPath = swift_getKeyPath();
    sub_263580();
    sub_2613A0();
    v122(v169, v93);
    LOBYTE(v188) = v123 & 1;
    LOBYTE(v181) = 0;
    v96 = v207;
    v176 = v208;
    v173 = v210;
    v174 = v209;
    v171 = v212;
    v172 = v211;
    v97 = v123 & 1;
  }

  v167 = v97;
  v168 = 0;
  v169 = KeyPath;
  v127 = v177;
  sub_8198(v180, v177, &qword_318A18, &qword_26BF68);
  v128 = v127;
  v129 = v170;
  sub_8198(v128, v170, &qword_318A18, &qword_26BF68);
  v130 = v129 + *(sub_2EF0(&qword_318A20, &unk_26BF70) + 48);
  v131 = v179;
  v181 = v179;
  v132 = v178;
  *&v182 = v97;
  *(&v182 + 1) = v178;
  *&v183 = KeyPath;
  v133 = v175;
  v134 = v176;
  *(&v183 + 1) = v175;
  *&v184 = 0;
  *(&v184 + 1) = v96;
  *&v185 = v176;
  v135 = v173;
  v136 = v174;
  *(&v185 + 1) = v174;
  *&v186 = v173;
  v137 = v171;
  v138 = v172;
  *(&v186 + 1) = v172;
  v187 = v171;
  *(v130 + 96) = v171;
  v139 = v182;
  *v130 = v181;
  *(v130 + 16) = v139;
  v140 = v184;
  *(v130 + 32) = v183;
  *(v130 + 48) = v140;
  v141 = v186;
  *(v130 + 64) = v185;
  *(v130 + 80) = v141;
  sub_8198(&v181, &v188, &qword_318A28, &qword_27CF30);
  sub_8E80(v180, &qword_318A18, &qword_26BF68);
  v188 = __PAIR128__(*(&v179 + 1), v131);
  v189 = v167;
  v190 = v132;
  v191 = v169;
  v192 = v133;
  v193 = v168;
  v194 = v96;
  v195 = v134;
  v196 = v136;
  v197 = v135;
  v198 = v138;
  v199 = v137;
  sub_8E80(&v188, &qword_318A28, &qword_27CF30);
  return sub_8E80(v177, &qword_318A18, &qword_26BF68);
}

uint64_t sub_53FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for HeroLockupView();
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  v5 = *(v62 + 64);
  __chkstk_darwin(v3);
  v63 = v6;
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318988, &qword_26BEB8);
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  __chkstk_darwin(v7);
  v66 = &v59 - v9;
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v59 - v12;
  v14 = sub_260BD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v61 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v59 - v18;
  v19 = sub_2EF0(&qword_318990, &qword_26BEC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v69 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v67 = &v59 - v23;
  v24 = *(v4 + 40);
  v64 = a1;
  v25 = a1 + v24;
  v26 = type metadata accessor for HeroLockupModel();
  v27 = (v25 + *(v26 + 28));
  v28 = v27[7];
  v95 = v27[6];
  v96 = v28;
  v97 = v27[8];
  v98 = *(v27 + 18);
  v29 = v27[3];
  v91 = v27[2];
  v92 = v29;
  v30 = v27[5];
  v93 = v27[4];
  v94 = v30;
  v31 = v27[1];
  v89 = *v27;
  v90 = v31;
  v32 = objc_opt_self();
  sub_57A38(&v89, v74);
  v33 = [v32 quaternarySystemFillColor];
  v34 = sub_262EE0();
  v74[0] = swift_getKeyPath();
  v75 = 0;
  KeyPath = swift_getKeyPath();
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v79 = v89;
  v76 = KeyPath;
  v77 = 0;
  v80 = v90;
  v88 = v98;
  v78 = v34;
  sub_8198(v25 + *(v26 + 32), v13, &qword_316208, &qword_268BD0);
  v36 = v15;
  v37 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_8E80(v13, &qword_316208, &qword_268BD0);
    v38 = 1;
    v40 = v70;
    v39 = v71;
    v41 = v67;
  }

  else
  {
    v42 = *(v15 + 32);
    v43 = v68;
    v60 = v37;
    v42(v68, v13, v37);
    v44 = *(v15 + 16);
    v45 = v61;
    v44(v61, v43, v37);
    v46 = v65;
    sub_58200(v64, v65, type metadata accessor for HeroLockupView);
    v47 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v48 = (v16 + *(v62 + 80) + v47) & ~*(v62 + 80);
    v49 = swift_allocObject();
    v50 = v45;
    v51 = v60;
    v42((v49 + v47), v50, v60);
    sub_58190(v46, v49 + v48, type metadata accessor for HeroLockupView);
    sub_2EF0(&qword_3189A0, &qword_26BED0);
    sub_260A70();
    sub_260A50();
    sub_57F04();
    sub_579F0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
    sub_579F0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
    v52 = v66;
    sub_260A80();
    (*(v36 + 8))(v68, v51);
    v54 = v70;
    v53 = v71;
    v41 = v67;
    (*(v70 + 32))(v67, v52, v71);
    v38 = 0;
    v39 = v53;
    v40 = v54;
  }

  (*(v40 + 56))(v41, v38, 1, v39);
  sub_570BC(v74, v73);
  v55 = v69;
  sub_8198(v41, v69, &qword_318990, &qword_26BEC0);
  v56 = v72;
  sub_570BC(v73, v72);
  v57 = sub_2EF0(&qword_318998, &qword_26BEC8);
  sub_8198(v55, v56 + *(v57 + 48), &qword_318990, &qword_26BEC0);
  sub_8E80(v41, &qword_318990, &qword_26BEC0);
  sub_57A94(v74);
  sub_8E80(v55, &qword_318990, &qword_26BEC0);
  return sub_57A94(v73);
}

double sub_546C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66[1] = a3;
  v67 = a1;
  v6 = type metadata accessor for ColorConstants(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v71 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25FF40();
  v69 = *(v70 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2EF0(&qword_318458, &unk_26B270);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v66 - v13;
  v15 = sub_262730();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FontConstants.Hero(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[0] = sub_260BD0();
  v24 = *(v66[0] - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v66[0]);
  v27 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a2);
  sub_51E20(v23);
  (*(v16 + 104))(v19, enum case for Font.TextStyle.footnote(_:), v15);
  v28 = sub_2625C0();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  v29 = sub_262680();
  sub_8E80(v14, &qword_318458, &unk_26B270);
  (*(v16 + 8))(v19, v15);
  sub_58128(v23, type metadata accessor for FontConstants.Hero);
  sub_30CC(v67, v76);
  v30 = sub_260BB0();
  v32 = v31;
  v33 = objc_allocWithZone(type metadata accessor for BooksHTMLConverter());

  v34 = sub_19C6C8(v30, v32, v29);
  [*&v34[OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_parser] parse];
  v35 = OBJC_IVAR____TtC7BooksUIP33_E4697B72F90B920AD6B6858623E47B6D18BooksHTMLConverter_currentString;
  swift_beginAccess();
  (*(v69 + 16))(v68, &v34[v35], v70);

  v36 = sub_2628D0();
  v38 = v37;
  LOBYTE(v35) = v39;

  sub_3080(v76);
  (*(v24 + 8))(v27, v66[0]);
  v40 = v71;
  sub_51C3C(v71);
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_58128(v40, type metadata accessor for ColorConstants);
  v41 = sub_2627E0();
  v43 = v42;
  LOBYTE(v27) = v44;
  v46 = v45;
  sub_39DBC(v36, v38, v35 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v29) = sub_262530();
  sub_2610C0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  LOBYTE(v76[0]) = v27 & 1;
  v73 = 0;
  v72 = 0;
  LOBYTE(v16) = sub_262520();
  sub_2610C0();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v74 = 0;
  sub_263540();
  sub_2613A0();
  *&v75[7] = v76[0];
  *&v75[23] = v76[1];
  *&v75[39] = v76[2];
  *a4 = v41;
  *(a4 + 8) = v43;
  *(a4 + 16) = v27 & 1;
  *(a4 + 24) = v46;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 2;
  *(a4 + 48) = 0;
  *(a4 + 56) = v29;
  *(a4 + 64) = v49;
  *(a4 + 72) = v51;
  *(a4 + 80) = v53;
  *(a4 + 88) = v55;
  *(a4 + 96) = 0;
  *(a4 + 104) = v16;
  *(a4 + 112) = v57;
  *(a4 + 120) = v59;
  *(a4 + 128) = v61;
  *(a4 + 136) = v63;
  *(a4 + 144) = 0;
  v64 = *&v75[16];
  *(a4 + 145) = *v75;
  *(a4 + 161) = v64;
  result = *&v75[32];
  *(a4 + 177) = *&v75[32];
  *(a4 + 192) = *&v75[47];
  return result;
}

uint64_t sub_54D18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_261FA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318860, &qword_26BDA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v31 - v10);
  sub_570BC(v1, v32);
  v12 = swift_allocObject();
  v13 = v32[11];
  *(v12 + 11) = v32[10];
  *(v12 + 12) = v13;
  v14 = v32[13];
  *(v12 + 13) = v32[12];
  *(v12 + 14) = v14;
  v15 = v32[7];
  *(v12 + 7) = v32[6];
  *(v12 + 8) = v15;
  v16 = v32[9];
  *(v12 + 9) = v32[8];
  *(v12 + 10) = v16;
  v17 = v32[3];
  *(v12 + 3) = v32[2];
  *(v12 + 4) = v17;
  v18 = v32[5];
  *(v12 + 5) = v32[4];
  *(v12 + 6) = v18;
  v19 = v32[1];
  *(v12 + 1) = v32[0];
  *(v12 + 2) = v19;
  v20 = v11 + *(sub_2EF0(&qword_318868, &qword_26BDA8) + 36);
  v21 = *(sub_2617E0() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = sub_261DD0();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #12.0 }

  *v20 = _Q0;
  *&v20[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  *v11 = sub_57308;
  v11[1] = v12;
  v29 = v11 + *(v8 + 36);
  *v29 = *(v2 + 216);
  *(v29 + 4) = 0;
  sub_2618C0();
  sub_57310();
  sub_579F0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  sub_262AA0();
  (*(v4 + 8))(v7, v3);
  return sub_8E80(v11, &qword_318860, &qword_26BDA0);
}

uint64_t sub_55018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318890, &qword_26BDB8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v27 - v6);
  v8 = sub_2EF0(&qword_318898, &qword_26BDC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  sub_261420();
  v13 = v12;
  v14 = *(a2 + 152);
  v15 = *(a2 + 184);
  v35[6] = *(a2 + 168);
  v35[7] = v15;
  v35[8] = *(a2 + 200);
  v16 = *(a2 + 88);
  v17 = *(a2 + 120);
  v35[2] = *(a2 + 104);
  v35[3] = v17;
  v35[4] = *(a2 + 136);
  v35[5] = v14;
  v35[0] = *(a2 + 72);
  v35[1] = v16;
  v18 = sub_57480(v35);
  v19 = sub_5748C(v35);
  if (v18 == 1)
  {
    v31 = *(v19 + 64);
    v32 = *(v19 + 80);
    v33 = *(v19 + 96);
    v34 = *(v19 + 112);
    v27 = *v19;
    v28 = *(v19 + 16);
    v29 = *(v19 + 32);
    v30 = *(v19 + 48);
    v20 = *(v19 + 128);
    v21 = *(v19 + 136);
    *v7 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    v7[1] = v22;
    v23 = sub_2EF0(&qword_3188A0, &qword_26BDC8);
    sub_55624(v20, v21, a2, a1, &v27, (v7 + *(v23 + 44)), v13);
    sub_8198(v7, v11, &qword_318890, &qword_26BDB8);
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B8, &qword_318890, &qword_26BDB8);
    sub_261F80();
    return sub_8E80(v7, &qword_318890, &qword_26BDB8);
  }

  else
  {
    sub_553A4(*v19, *(v19 + 8), &v27, v13);
    v25 = v29;
    v26 = v28;
    *v11 = v27;
    *(v11 + 1) = v26;
    *(v11 + 4) = v25;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B0, &qword_3188A8, &qword_26BDD0);
    sub_8E38(&qword_3188B8, &qword_318890, &qword_26BDB8);
    return sub_261F80();
  }
}

uint64_t sub_553A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v9 = sub_261C90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_40858(v34);
  v14 = v35;
  v15 = v36;
  sub_2E18(v34, v35);
  v32[0] = a1;
  v32[1] = a2;
  v33 = 1;
  v17 = *(v4 + 216);
  v18 = *(v4 + 48);
  if (*(v4 + 56) == 1)
  {
    v16.n128_u64[0] = *(v4 + 48);
  }

  else
  {
    v19 = *(v4 + 48);

    sub_264900();
    v20 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v18, 0);
    (*(v10 + 8))(v13, v9);
    v16.n128_u64[0] = v31;
  }

  BYTE2(v31) = -2;
  LOWORD(v31) = -772;
  v21 = (*(v15 + 16))(v32, &v31, v14, v15, a4, a4 / v17, v16);
  sub_3080(v34);
  *a3 = sub_56584;
  a3[1] = 0;
  v22 = type metadata accessor for ImageResourceLoader();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v26 = swift_allocObject();
  *(v26 + 28) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v25 + 24) = v26;
  sub_2603B0();
  v32[0] = v25;
  result = sub_2631D0();
  v28 = v34[0];
  v29 = v34[1];
  a3[2] = v21;
  a3[3] = v28;
  a3[4] = v29;
  return result;
}

uint64_t sub_55624@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  v143 = a4;
  v140 = a3;
  *&v127 = a1;
  v148 = a6;
  v145 = sub_2EF0(&qword_3188E0, &qword_274300);
  v10 = *(*(v145 - 8) + 64);
  v11 = __chkstk_darwin(v145);
  v149 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v147 = (&v120 - v13);
  v14 = sub_2630C0();
  v138 = *(v14 - 8);
  v139 = v14;
  v15 = *(v138 + 64);
  __chkstk_darwin(v14);
  v137 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_260D00();
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  __chkstk_darwin(v17);
  v134 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2EF0(&qword_3188E8, &qword_26BDE8);
  v20 = *(*(v141 - 8) + 64);
  v21 = __chkstk_darwin(v141);
  v146 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v120 - v24;
  __chkstk_darwin(v23);
  v151 = &v120 - v26;
  v27 = sub_2EF0(&qword_3188F0, &qword_26BDF0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v133 = (&v120 - v30);
  v132 = sub_2EF0(&qword_3188F8, &qword_26BDF8);
  v31 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v131 = &v120 - v32;
  v33 = sub_262F00();
  v128 = *(v33 - 8);
  v129 = v33;
  v34 = *(v128 + 64);
  __chkstk_darwin(v33);
  v36 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2EF0(&qword_318900, &qword_26BE00);
  v37 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v39 = (&v120 - v38);
  v40 = sub_2EF0(&qword_318908, &qword_26BE08);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v130 = &v120 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v120 - v44;
  v46 = sub_2EF0(&qword_318910, &qword_26BE10);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v144 = &v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v150 = &v120 - v50;
  if (a2)
  {
    v121 = v36;
    v122 = v45;
    v124 = v28;
    v125 = v27;

    v51 = v127;
    if (!Color.init(hexString:)(v127, a2))
    {
      goto LABEL_6;
    }

    *&v52 = Color.rgbaComponents.getter();
    v142 = v52;
    v54 = v53;
    v123 = v55;

    *&v56.f64[0] = v123;
    *&v56.f64[1] = v142;
    v57 = vmulq_f64(v56, vdupq_n_s64(0x406FE00000000000uLL));
    v58 = vmulq_f64(v57, vmulq_f64(v57, xmmword_26BA40));
    if (sqrt(v58.f64[0] + v58.f64[1] + v54 * 255.0 * (v54 * 255.0 * 0.587)) < 205.0)
    {
      *&v142 = sub_262F80();
    }

    else
    {
LABEL_6:
      *&v142 = 0;
    }

    v59 = v51;
    swift_bridgeObjectRetain_n();
    if (Color.init(hexString:)(v51, a2))
    {
      *&v123 = sub_263000();
      v59 = v51;
    }

    else
    {
      *&v123 = 0;
    }

    if (!Color.init(hexString:)(v59, a2))
    {
      goto LABEL_13;
    }

    *&v60 = Color.rgbaComponents.getter();
    v127 = v60;
    v62 = v61;
    v120 = v63;

    *&v64.f64[0] = v120;
    *&v64.f64[1] = v127;
    v65 = vmulq_f64(v64, vdupq_n_s64(0x406FE00000000000uLL));
    v66 = vmulq_f64(v65, vmulq_f64(v65, xmmword_26BA40));
    if (sqrt(v66.f64[0] + v66.f64[1] + v62 * 255.0 * (v62 * 255.0 * 0.587)) < 205.0)
    {
      (*(v128 + 104))(v121, enum case for Color.RGBColorSpace.sRGB(_:), v129);
      v67 = sub_263060();
      v68 = &enum case for BlendMode.hardLight(_:);
    }

    else
    {
LABEL_13:
      (*(v128 + 104))(v121, enum case for Color.RGBColorSpace.sRGB(_:), v129);
      v67 = sub_263060();
      v68 = &enum case for BlendMode.colorBurn(_:);
    }

    v69 = *(v126 + 36);
    v70 = *v68;
    v71 = sub_263640();
    (*(*(v71 - 8) + 104))(v39 + v69, v70, v71);
    *v39 = v67;
    sub_8198(v39, v131, &qword_318900, &qword_26BE00);
    swift_storeEnumTagMultiPayload();
    sub_575D8();
    v72 = v122;
    sub_261F80();
    sub_8E80(v39, &qword_318900, &qword_26BE00);
    v73 = v130;
    sub_8198(v72, v130, &qword_318908, &qword_26BE08);
    v74 = v133;
    *v133 = v123;
    v75 = sub_2EF0(&qword_318928, &qword_26BE70);
    sub_8198(v73, v74 + *(v75 + 48), &qword_318908, &qword_26BE08);

    sub_8E80(v72, &qword_318908, &qword_26BE08);
    sub_8E80(v73, &qword_318908, &qword_26BE08);

    v76 = v150;
    sub_22148(v74, v150, &qword_3188F0, &qword_26BDF0);
    (*(v124 + 56))(v76, 0, 1, v125);
  }

  else
  {
    (*(v28 + 56))();
    *&v142 = 0;
  }

  sub_57520();
  if (qword_315B28 != -1)
  {
    swift_once();
  }

  v77 = v136;
  v78 = sub_B080(v136, qword_354048);
  (*(v135 + 16))(v134, v78, v77);
  sub_264A00();
  sub_2630A0();
  v80 = v137;
  v79 = v138;
  v81 = v139;
  (*(v138 + 104))(v137, enum case for Image.ResizingMode.stretch(_:), v139);
  v82 = sub_263100();

  (*(v79 + 8))(v80, v81);
  v83 = a7 / *(v140 + 216);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v155 = 1;
  *&v154[54] = v159;
  *&v154[70] = v160;
  *&v154[86] = v161;
  *&v154[102] = v162;
  *&v154[6] = v156;
  *&v154[22] = v157;
  *&v154[38] = v158;
  v84 = *(v141 + 36);
  v85 = enum case for BlendMode.softLight(_:);
  v86 = sub_263640();
  (*(*(v86 - 8) + 104))(&v25[v84], v85, v86);
  v87 = *&v154[80];
  *(v25 + 82) = *&v154[64];
  *(v25 + 98) = v87;
  *(v25 + 114) = *&v154[96];
  v88 = *&v154[16];
  *(v25 + 18) = *v154;
  *(v25 + 34) = v88;
  v89 = *&v154[48];
  *(v25 + 50) = *&v154[32];
  *v25 = v82;
  *(v25 + 1) = 0;
  *(v25 + 8) = 257;
  *(v25 + 16) = *&v154[110];
  *(v25 + 66) = v89;
  sub_22148(v25, v151, &qword_3188E8, &qword_26BDE8);
  sub_261420();
  v90 = a5[5];
  v163[4] = a5[4];
  v163[5] = v90;
  v91 = a5[7];
  v163[6] = a5[6];
  v163[7] = v91;
  v92 = a5[1];
  v163[0] = *a5;
  v163[1] = v92;
  v93 = a5[3];
  v163[2] = a5[2];
  v163[3] = v93;
  LODWORD(v82) = sub_2F8B8(v163);
  v94 = sub_2F950(v163);
  if (!v82)
  {
    v95 = qword_26BA50[*(v94 + 16) < 1.0];
  }

  KeyPath = swift_getKeyPath();
  v97 = v147;
  *v147 = KeyPath;
  *(v97 + 40) = 0;
  *(v97 + 48) = swift_getKeyPath();
  *(v97 + 56) = 0;
  v98 = type metadata accessor for CoverView();
  v99 = v98[6];
  *(v97 + v99) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v100 = v98[7];
  *(v97 + v100) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v101 = (v97 + v98[8]);
  sub_5757C(a5, v153);
  type metadata accessor for ProfileRestrictions();
  sub_579F0(&qword_326DC0, type metadata accessor for ProfileRestrictions);
  *v101 = sub_261900();
  v101[1] = v102;
  v103 = v97 + v98[9];
  v152 = 1;
  sub_2631D0();
  v104 = *(&v153[0] + 1);
  *v103 = v153[0];
  *(v103 + 8) = v104;
  v105 = (v97 + v98[10]);
  v106 = a5[5];
  v105[4] = a5[4];
  v105[5] = v106;
  v107 = a5[7];
  v105[6] = a5[6];
  v105[7] = v107;
  v108 = a5[1];
  *v105 = *a5;
  v105[1] = v108;
  v109 = a5[3];
  v105[2] = a5[2];
  v105[3] = v109;
  *(v97 + v98[11]) = 1;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v110 = v144;
  v111 = (v97 + *(v145 + 36));
  v112 = v153[1];
  *v111 = v153[0];
  v111[1] = v112;
  v111[2] = v153[2];
  v113 = v150;
  sub_8198(v150, v110, &qword_318910, &qword_26BE10);
  v114 = v151;
  v115 = v146;
  sub_8198(v151, v146, &qword_3188E8, &qword_26BDE8);
  v116 = v149;
  sub_8198(v97, v149, &qword_3188E0, &qword_274300);
  v117 = v148;
  *v148 = v142;
  v118 = sub_2EF0(&qword_318918, &qword_26BE68);
  sub_8198(v110, v117 + v118[12], &qword_318910, &qword_26BE10);
  sub_8198(v115, v117 + v118[16], &qword_3188E8, &qword_26BDE8);
  sub_8198(v116, v117 + v118[20], &qword_3188E0, &qword_274300);
  sub_8E80(v97, &qword_3188E0, &qword_274300);
  sub_8E80(v114, &qword_3188E8, &qword_26BDE8);
  sub_8E80(v113, &qword_318910, &qword_26BE10);
  sub_8E80(v116, &qword_3188E0, &qword_274300);
  sub_8E80(v115, &qword_3188E8, &qword_26BDE8);
  sub_8E80(v110, &qword_318910, &qword_26BE10);
}

double sub_56584@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2630C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v9 = a1;
    sub_2630A0();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v10 = sub_263100();

    (*(v5 + 8))(v8, v4);
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2613A0();
    v18 = v23;
    v16 = v25;
    v14[8] = 0;
    *&v27 = v10;
    *(&v27 + 1) = v22;
    LOBYTE(v28) = v23;
    *(&v28 + 1) = *v17;
    DWORD1(v28) = *&v17[3];
    *(&v28 + 1) = v24;
    v29[0] = v25;
    *&v29[1] = *v15;
    *&v29[4] = *&v15[3];
    *&v29[8] = v26;
    v29[24] = 0;

    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0);
    sub_261F80();

    v27 = v19;
    v28 = v20;
    *v29 = *v21;
    *&v29[9] = *&v21[9];
  }

  else
  {
    v11 = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
    LOBYTE(v22) = 1;
    *&v19 = v11;
    WORD4(v19) = 256;
    v21[24] = 1;
    sub_2EF0(&qword_3188C0, &qword_26BDD8);
    sub_2EF0(&qword_3188C8, &qword_26BDE0);
    sub_5749C();
    sub_8E38(&qword_3188D8, &qword_3188C8, &qword_26BDE0);
    sub_261F80();
  }

  v12 = v28;
  *a2 = v27;
  a2[1] = v12;
  a2[2] = *v29;
  result = *&v29[9];
  *(a2 + 41) = *&v29[9];
  return result;
}

uint64_t type metadata accessor for HeroLockupView()
{
  result = qword_318800;
  if (!qword_318800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_56998(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = sub_2EF0(&qword_3187A0, &qword_26BB68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for HeroLockupModel();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_56B3C(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  result = sub_2EF0(&qword_3187A0, &qword_26BB68);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for HeroLockupModel();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_56CCC()
{
  sub_56DD8(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_14C14();
    if (v1 <= 0x3F)
    {
      sub_56DD8(319, &unk_318810, type metadata accessor for FontConstants.Hero);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HeroLockupModel();
        if (v3 <= 0x3F)
        {
          sub_56E2C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_56DD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_56E2C()
{
  if (!qword_316A28)
  {
    sub_2F9C(&qword_316A30, &qword_2697B0);
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_316A28);
    }
  }
}

unint64_t sub_56E94()
{
  result = qword_318850;
  if (!qword_318850)
  {
    sub_2F9C(&qword_318798, &qword_26BB08);
    sub_8E38(&qword_318858, &qword_318788, &qword_26BAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318850);
  }

  return result;
}

uint64_t sub_56F64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_56F94(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_56FD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_57018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
      *(result + 224) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_570F4()
{
  if (*(v0 + 56))
  {
    sub_3080((v0 + 16));
  }

  else
  {
    v1 = *(v0 + 16);
  }

  sub_3074(*(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 80);

  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  sub_57190(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));

  return swift_deallocObject();
}

uint64_t sub_57190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a15 & 0x2000000000000000) != 0)
  {
    sub_57200(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15 & 0xDFFFFFFFFFFFFFFFLL);
  }
}

void sub_57200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15)
{
  if (!(a15 >> 62))
  {

    sub_572B8(a8, a9);
  }
}

uint64_t sub_572B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_57310()
{
  result = qword_318870;
  if (!qword_318870)
  {
    sub_2F9C(&qword_318860, &qword_26BDA0);
    sub_5739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318870);
  }

  return result;
}

unint64_t sub_5739C()
{
  result = qword_318878;
  if (!qword_318878)
  {
    sub_2F9C(&qword_318868, &qword_26BDA8);
    sub_8E38(&qword_318880, &qword_318888, &qword_26BDB0);
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318878);
  }

  return result;
}

unint64_t sub_5749C()
{
  result = qword_3188D0;
  if (!qword_3188D0)
  {
    sub_2F9C(&qword_3188C0, &qword_26BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3188D0);
  }

  return result;
}

unint64_t sub_57520()
{
  result = qword_316268;
  if (!qword_316268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_316268);
  }

  return result;
}

unint64_t sub_575D8()
{
  result = qword_318920;
  if (!qword_318920)
  {
    sub_2F9C(&qword_318900, &qword_26BE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318920);
  }

  return result;
}

uint64_t sub_5765C()
{
  v1 = type metadata accessor for HeroLockupView();
  v23 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((v23 + 16) & ~v23));
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_261180();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  else
  {
    v4 = *v2;
  }

  sub_3074(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  v5 = v2 + v1[6];
  sub_2EF0(&qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
    v8 = *v5;
  }

  sub_3080((v2 + v1[7]));
  v9 = v2 + v1[8];
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = type metadata accessor for HeroLockupModel();
  v12(&v9[v13[5]], v10);
  v14 = v13[6];
  v15 = *(v11 + 48);
  if (!v15(&v9[v14], 1, v10))
  {
    v12(&v9[v14], v10);
  }

  v16 = &v9[v13[7]];
  v20 = v16[16];
  v21 = v16[17];
  sub_57190(*v16, v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14]);
  v17 = v13[8];
  if (!v15(&v9[v17], 1, v10))
  {
    v12(&v9[v17], v10);
  }

  v18 = (v2 + v1[9]);
  if (v18[3])
  {
    sub_3080(v18);
  }

  return swift_deallocObject();
}

uint64_t sub_57970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroLockupView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_52964(a1, v6, a2);
}

uint64_t sub_579F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_57AC4()
{
  v1 = sub_260BD0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for HeroLockupView();
  v26 = *(*(v5 - 1) + 80);
  v27 = *(*(v5 - 1) + 64);
  v6 = (v3 + v4 + v26) & ~v26;
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = (v0 + v6);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_261180();
    (*(*(v9 - 8) + 8))(v0 + v6, v9);
  }

  else
  {
    v10 = *v8;
  }

  sub_3074(*(v8 + v5[5]), *(v8 + v5[5] + 8));
  v11 = v8 + v5[6];
  sub_2EF0(&qword_318780, &qword_26BAF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v13 = sub_261690();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    v14 = *v11;
  }

  sub_3080((v8 + v5[7]));
  v15 = v8 + v5[8];
  v7(v15, v1);
  v16 = type metadata accessor for HeroLockupModel();
  v17 = v7;
  v7(&v15[v16[5]], v1);
  v18 = v16[6];
  v19 = *(v2 + 48);
  if (!v19(&v15[v18], 1, v1))
  {
    v17(&v15[v18], v1);
  }

  v20 = &v15[v16[7]];
  v24 = v20[16];
  v25 = v20[17];
  sub_57190(*v20, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v20[10], v20[11], v20[12], v20[13], v20[14]);
  v21 = v16[8];
  if (!v19(&v15[v21], 1, v1))
  {
    v17(&v15[v21], v1);
  }

  v22 = (v8 + v5[9]);
  if (v22[3])
  {
    sub_3080(v22);
  }

  return swift_deallocObject();
}

double sub_57E20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_260BD0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for HeroLockupView() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_546C0(a1, v2 + v6, v9, a2);
}

unint64_t sub_57F04()
{
  result = qword_3189A8;
  if (!qword_3189A8)
  {
    sub_2F9C(&qword_3189A0, &qword_26BED0);
    sub_57FBC(&qword_3189B0, &qword_3189B8, &qword_26BED8, sub_58040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3189A8);
  }

  return result;
}

uint64_t sub_57FBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_58070()
{
  result = qword_3189D0;
  if (!qword_3189D0)
  {
    sub_2F9C(&qword_3189D8, &unk_27CEE0);
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3189D0);
  }

  return result;
}

uint64_t sub_58128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_58190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58268()
{
  sub_2F9C(&qword_318860, &qword_26BDA0);
  sub_261FA0();
  sub_57310();
  sub_579F0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_583D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_2EF0(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_5846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_2EF0(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_58520(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_5894C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_585A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_317870, &unk_26BFB0);
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 32);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_586E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_317870, &unk_26BFB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(&qword_317878, &unk_27E490);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 32) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_58828()
{
  sub_588E8();
  if (v0 <= 0x3F)
  {
    sub_3E7AC();
    if (v1 <= 0x3F)
    {
      sub_5894C(319, &qword_3178F8, &type metadata accessor for BlendMode);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_588E8()
{
  if (!qword_3178E8)
  {
    sub_2F9C(&qword_3178F0, &qword_269C90);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3178E8);
    }
  }
}

void sub_5894C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_589A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_589E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_58A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2601E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_58AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v65 = a5;
  v66 = a6;
  v56 = a3;
  v57 = a4;
  v8 = sub_2EF0(&qword_318D38, &qword_26C2B8);
  v9 = *(v8 - 8);
  v63 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v67 = a1;
  v68 = a2;
  v55 = sub_10A84();

  v15 = sub_2628F0();
  v17 = v16;
  v19 = v18;
  sub_262580();
  v20 = sub_262840();
  v22 = v21;
  LOBYTE(a1) = v23;

  sub_39DBC(v15, v17, v19 & 1);

  v24 = sub_262830();
  v59 = v25;
  v60 = v24;
  v61 = v26;
  v62 = v27;
  sub_39DBC(v20, v22, a1 & 1);

  KeyPath = swift_getKeyPath();
  v67 = v56;
  v68 = v57;

  v28 = sub_2628F0();
  v30 = v29;
  v32 = v31;
  sub_262580();
  v33 = sub_262840();
  v35 = v34;
  v37 = v36;

  sub_39DBC(v28, v30, v32 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v38 = sub_2627E0();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_39DBC(v33, v35, v37 & 1);

  v45 = swift_getKeyPath();
  v46 = v65 + *(type metadata accessor for BulletPointStack(0) + 24);
  sub_40A78(&v14[*(v63 + 44)]);
  *v14 = v38;
  *(v14 + 1) = v40;
  v14[16] = v42 & 1;
  *(v14 + 3) = v44;
  *(v14 + 4) = v45;
  *(v14 + 5) = 6;
  v14[48] = 0;
  v47 = v64;
  sub_8198(v14, v64, &qword_318D38, &qword_26C2B8);
  v48 = v66;
  v50 = v59;
  v49 = v60;
  *v66 = v60;
  v48[1] = v50;
  LOBYTE(v45) = v61 & 1;
  *(v48 + 16) = v61 & 1;
  v51 = KeyPath;
  v48[3] = v62;
  v48[4] = v51;
  v48[5] = 6;
  *(v48 + 48) = 0;
  v52 = v48;
  v53 = sub_2EF0(&qword_318D40, &qword_26C2F0);
  sub_8198(v47, v52 + *(v53 + 48), &qword_318D38, &qword_26C2B8);
  sub_43B58(v49, v50, v45);

  sub_8E80(v14, &qword_318D38, &qword_26C2B8);
  sub_8E80(v47, &qword_318D38, &qword_26C2B8);
  sub_39DBC(v49, v50, v45);
}

uint64_t sub_58E68@<X0>(uint64_t a1@<X8>)
{
  v94 = sub_2EF0(&qword_318D48, &unk_26C2F8);
  v3 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v5 = &v88 - v4;
  v6 = sub_2EF0(&qword_318458, &unk_26B270);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v90 = &v88 - v8;
  v92 = sub_2EF0(&qword_318D50, &qword_26C308);
  v9 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v91 = &v88 - v10;
  v99 = sub_2EF0(&qword_318D58, &qword_26C310);
  v11 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v95 = &v88 - v12;
  v13 = sub_2EF0(&qword_318D60, &qword_26C318);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v88 - v15;
  v98 = sub_2EF0(&qword_318D68, &qword_26C320);
  v17 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v19 = &v88 - v18;
  v20 = type metadata accessor for BulletPointStack(0);
  v21 = *(v20 + 28);
  v93 = v1;
  v22 = (v1 + v21);
  v24 = v22[1];
  v23 = v22[2];
  v25 = v22[3];
  if (v24)
  {
    v96 = v19;
    v97 = a1;
    v26 = *v22;
    if (v25)
    {

      *v5 = sub_261E50();
      *(v5 + 1) = 0x4018000000000000;
      v5[16] = 0;
      v27 = sub_2EF0(&qword_318D70, &qword_26C328);
      sub_5999C(v26, v24, v23, v25, v93, &v5[*(v27 + 44)]);

      v28 = &unk_26C2F8;
      sub_8198(v5, v91, &qword_318D48, &unk_26C2F8);
      swift_storeEnumTagMultiPayload();
      sub_5CD90();
      sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8);
      v29 = v95;
      sub_261F80();
      sub_8198(v29, v96, &qword_318D58, &qword_26C310);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_318DB8, &unk_26C350);
      sub_5CF8C();
      sub_5D018();
      sub_261F80();
      sub_8E80(v29, &qword_318D58, &qword_26C310);
      v30 = v5;
      v31 = &qword_318D48;
      return sub_8E80(v30, v31, v28);
    }

    *&v112 = *v22;
    *(&v112 + 1) = v24;
    sub_10A84();

    v56 = sub_2628F0();
    v58 = v57;
    v60 = v59;
    sub_262690();
    v61 = sub_262840();
    v63 = v62;
    v65 = v64;

    sub_39DBC(v56, v58, v60 & 1);

    v94 = sub_262830();
    v67 = v66;
    v69 = v68;
    v95 = v70;
    sub_39DBC(v61, v63, v65 & 1);

    if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
    {
      v71 = sub_2625C0();
      v72 = v90;
      (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
    }

    else
    {
      v74 = enum case for Font.Design.serif (_:);
      v75 = sub_2625C0();
      v76 = *(v75 - 8);
      v72 = v90;
      (*(v76 + 104))(v90, v74, v75);
      (*(v76 + 56))(v72, 0, 1, v75);
    }

    v77 = v94;
    v78 = sub_2627C0();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    sub_39DBC(v77, v67, v69 & 1);

    sub_8E80(v72, &qword_318458, &unk_26B270);
    KeyPath = swift_getKeyPath();
    v111 = v82 & 1;
    v109 = 0;
    v108 = 1;
    v100 = v78;
    v101 = v80;
    v102 = v82 & 1;
    *v103 = *v110;
    *&v103[3] = *&v110[3];
    v104 = v84;
    v105 = KeyPath;
    v106 = 3;
    v107 = 256;
    sub_43B58(v78, v80, v82 & 1);

    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    sub_261F80();
    v86 = v113;
    v87 = v96;
    *v96 = v112;
    v87[1] = v86;
    v87[2] = v114;
    *(v87 + 24) = v115;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_318DB8, &unk_26C350);
    sub_5CF8C();
    sub_5D018();
    sub_261F80();
    sub_39DBC(v78, v80, v82 & 1);
  }

  else
  {
    if (v25)
    {
      v32 = v20;
      *&v112 = v22[2];
      *(&v112 + 1) = v25;
      sub_10A84();

      v33 = sub_2628F0();
      v90 = v13;
      v35 = v34;
      v37 = v36;
      sub_262580();
      v38 = sub_262840();
      v97 = a1;
      v39 = v38;
      v88 = v40;
      v96 = v19;
      v42 = v41;

      sub_39DBC(v33, v35, v37 & 1);

      _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
      v43 = v88;
      v44 = sub_2627E0();
      v89 = v45;
      v47 = v46;
      v49 = v48;

      sub_39DBC(v39, v43, v42 & 1);

      v50 = swift_getKeyPath();
      v51 = swift_getKeyPath();
      v47 &= 1u;
      LOBYTE(v112) = v47;
      LOBYTE(v100) = 0;
      v52 = *(v32 + 24);
      sub_40A78(&v16[*(v90 + 9)]);
      v53 = v89;
      *v16 = v44;
      *(v16 + 1) = v53;
      v16[16] = v47;
      *(v16 + 3) = v49;
      *(v16 + 4) = v50;
      v16[40] = 1;
      *(v16 + 6) = v51;
      *(v16 + 7) = 3;
      v16[64] = 0;
      v28 = &qword_26C318;
      sub_8198(v16, v91, &qword_318D60, &qword_26C318);
      swift_storeEnumTagMultiPayload();
      sub_5CD90();
      sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8);
      v54 = v95;
      sub_261F80();
      sub_8198(v54, v96, &qword_318D58, &qword_26C310);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_318DB8, &unk_26C350);
      sub_5CF8C();
      sub_5D018();
      sub_261F80();
      sub_8E80(v54, &qword_318D58, &qword_26C310);
      v30 = v16;
      v31 = &qword_318D60;
      return sub_8E80(v30, v31, v28);
    }

    v110[0] = 0;
    HIBYTE(v107) = 0;
    sub_2EF0(&qword_3189D8, &unk_27CEE0);
    sub_58070();
    sub_261F80();
    v73 = v113;
    *v19 = v112;
    *(v19 + 1) = v73;
    *(v19 + 2) = v114;
    *(v19 + 24) = v115;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_318DB8, &unk_26C350);
    sub_5CF8C();
    sub_5D018();
    return sub_261F80();
  }
}

uint64_t sub_5999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v77 = a5;
  v78 = a6;
  v74 = a3;
  v75 = a4;
  v76 = sub_2EF0(&qword_318D60, &qword_26C318);
  v8 = *(*(v76 - 8) + 64);
  v9 = __chkstk_darwin(v76);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_2EF0(&qword_318458, &unk_26B270);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v72 = &v67 - v15;
  v81 = a1;
  v82 = a2;
  v16 = sub_10A84();

  v73 = v16;
  v17 = sub_2628F0();
  v19 = v18;
  v21 = v20;
  sub_262690();
  v22 = sub_262840();
  v24 = v23;
  v26 = v25;

  sub_39DBC(v17, v19, v21 & 1);

  v27 = sub_262830();
  v29 = v28;
  v31 = v30;
  sub_39DBC(v22, v24, v26 & 1);

  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v32 = sub_2625C0();
    v33 = v72;
    (*(*(v32 - 8) + 56))(v72, 1, 1, v32);
  }

  else
  {
    v34 = enum case for Font.Design.serif (_:);
    v35 = sub_2625C0();
    v36 = *(v35 - 8);
    v33 = v72;
    (*(v36 + 104))(v72, v34, v35);
    (*(v36 + 56))(v33, 0, 1, v35);
  }

  v37 = sub_2627C0();
  v69 = v38;
  v70 = v37;
  v71 = v39;
  v72 = v40;
  sub_39DBC(v27, v29, v31 & 1);

  sub_8E80(v33, &qword_318458, &unk_26B270);
  KeyPath = swift_getKeyPath();
  v81 = v74;
  v82 = v75;

  v41 = sub_2628F0();
  v43 = v42;
  v45 = v44;
  sub_262580();
  v46 = sub_262840();
  v48 = v47;
  v50 = v49;

  sub_39DBC(v41, v43, v45 & 1);

  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v51 = sub_2627E0();
  v53 = v52;
  LOBYTE(v41) = v54;
  v56 = v55;

  sub_39DBC(v46, v48, v50 & 1);

  v57 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  LOBYTE(v46) = v41 & 1;
  LOBYTE(v81) = v41 & 1;
  v80 = 0;
  v59 = v77 + *(type metadata accessor for BulletPointStack(0) + 24);
  sub_40A78(&v12[*(v76 + 36)]);
  *v12 = v51;
  *(v12 + 1) = v53;
  v12[16] = v46;
  *(v12 + 3) = v56;
  *(v12 + 4) = v57;
  v12[40] = 1;
  *(v12 + 6) = v58;
  *(v12 + 7) = 3;
  v12[64] = 0;
  v60 = v79;
  sub_8198(v12, v79, &qword_318D60, &qword_26C318);
  v61 = v78;
  v63 = v69;
  v62 = v70;
  *v78 = v70;
  v61[1] = v63;
  LOBYTE(v51) = v71 & 1;
  *(v61 + 16) = v71 & 1;
  v64 = KeyPath;
  v61[3] = v72;
  v61[4] = v64;
  v61[5] = 3;
  *(v61 + 48) = 0;
  v65 = sub_2EF0(&qword_318DD0, &qword_26C390);
  sub_8198(v60, v61 + *(v65 + 48), &qword_318D60, &qword_26C318);
  sub_43B58(v62, v63, v51);

  sub_8E80(v12, &qword_318D60, &qword_26C318);
  sub_8E80(v60, &qword_318D60, &qword_26C318);
  sub_39DBC(v62, v63, v51);
}

uint64_t sub_59EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_261690();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v41 = sub_2EF0(&qword_3174E8, &qword_269970);
  v19 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v40 = &v36 - v20;
  v38 = sub_2EF0(&qword_318C68, &qword_26C1B8);
  v21 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v23 = &v36 - v22;
  *v23 = sub_261E50();
  *(v23 + 1) = 0x4042800000000000;
  v23[16] = 0;
  v24 = *(sub_2EF0(&qword_318C70, &qword_26C1C0) + 44);
  v39 = v23;
  sub_5A3A0(v2, &v23[v24]);
  v25 = v12;
  v26 = v12[13];
  v26(v18, enum case for DynamicTypeSize.xSmall(_:), v11);
  v26(v16, enum case for DynamicTypeSize.accessibility1(_:), v11);
  sub_5CAD8(&qword_317538, &type metadata accessor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v28 = v12[4];
    v28(v10, v18, v11);
    v28(&v10[*(v4 + 48)], v16, v11);
    sub_8198(v10, v8, &qword_3174E0, &qword_26B310);
    v37 = a1;
    v29 = *(v4 + 48);
    v30 = v40;
    v28(v40, v8, v11);
    v31 = v25[1];
    v31(&v8[v29], v11);
    sub_22148(v10, v8, &qword_3174E0, &qword_26B310);
    v28((v30 + *(v41 + 36)), &v8[*(v4 + 48)], v11);
    v31(v8, v11);
    sub_8E38(&qword_318C78, &qword_318C68, &qword_26C1B8);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    v32 = v37;
    v33 = v39;
    sub_262B70();
    sub_8E80(v30, &qword_3174E8, &qword_269970);
    sub_8E80(v33, &qword_318C68, &qword_26C1B8);
    KeyPath = swift_getKeyPath();
    result = sub_2EF0(&qword_318C80, &qword_26C1F8);
    v35 = (v32 + *(result + 36));
    *v35 = KeyPath;
    v35[1] = 0x3FE0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5A3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for BulletPointStack(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_2EF0(&qword_318C88, &qword_26C200);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v30 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = sub_2EF0(&qword_318C90, &qword_26C208);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v29 - v18;
  sub_58E68(v29 - v18);
  *v12 = sub_263580();
  *(v12 + 1) = v20;
  *(v12 + 2) = 0x4028000000000000;
  v12[24] = 0;
  *(v12 + 4) = 0x403A000000000000;
  v12[40] = 0;
  v29[2] = *(sub_2EF0(&qword_318C98, &qword_26C210) + 44);
  v34 = *(a1 + *(v4 + 36) + 32);
  sub_5C778(a1, v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BulletPointStack);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_5C9F0(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for BulletPointStack);

  v29[1] = sub_2EF0(&qword_318CA0, &qword_26C218);
  sub_2601E0();
  sub_2EF0(&qword_318CA8, &qword_26C220);
  sub_8E38(&qword_318CB0, &qword_318CA0, &qword_26C218);
  v23 = sub_2F9C(&qword_318CB8, &qword_26C228);
  v24 = sub_8E38(&qword_318CC0, &qword_318CB8, &qword_26C228);
  v32 = v23;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  sub_5CAD8(&qword_318CC8, type metadata accessor for BulletPointStack.Bullet);
  sub_2633C0();
  sub_8198(v19, v17, &qword_318C90, &qword_26C208);
  v25 = v30;
  sub_5CB40(v12, v30);
  v26 = v31;
  sub_8198(v17, v31, &qword_318C90, &qword_26C208);
  v27 = sub_2EF0(&qword_318CD0, &qword_26C230);
  sub_5CB40(v25, v26 + *(v27 + 48));
  sub_8E80(v12, &qword_318C88, &qword_26C200);
  sub_8E80(v19, &qword_318C90, &qword_26C208);
  sub_8E80(v25, &qword_318C88, &qword_26C200);
  return sub_8E80(v17, &qword_318C90, &qword_26C208);
}

uint64_t sub_5A810(void *a1, uint64_t a2)
{
  v4 = sub_262370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318CB8, &qword_26C228);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  *v12 = sub_261D10();
  v12[8] = 0;
  sub_5A9C0(a2, a1, &v12[*(v9 + 36)]);
  sub_262350();
  sub_8E38(&qword_318CC0, &qword_318CB8, &qword_26C228);
  sub_262C70();
  (*(v5 + 8))(v8, v4);
  return sub_8E80(v12, &qword_318CB8, &qword_26C228);
}

uint64_t sub_5A9C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v5 = sub_2EF0(&qword_318CD8, &qword_26C238);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v121 = (&v101 - v7);
  v119 = sub_2EF0(&qword_318CE0, &unk_26C240);
  v8 = *(*(v119 - 8) + 64);
  v9 = __chkstk_darwin(v119);
  v123 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v101 - v12;
  __chkstk_darwin(v11);
  v122 = &v101 - v13;
  v124 = sub_262180();
  v112 = *(v124 - 8);
  v14 = *(v112 + 64);
  __chkstk_darwin(v124);
  v103 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2EF0(&qword_317970, &qword_269D00);
  v16 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v113 = &v101 - v17;
  v18 = sub_2EF0(&qword_3178F0, &qword_269C90);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v104 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v106 = &v101 - v23;
  __chkstk_darwin(v22);
  v111 = &v101 - v24;
  v25 = sub_2630C0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2EF0(&qword_318CE8, &qword_26C250);
  v30 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v115 = &v101 - v31;
  v32 = sub_2EF0(&qword_318CF0, &qword_26C258);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v110 = &v101 - v34;
  v114 = sub_2EF0(&qword_318CF8, &qword_26C260);
  v117 = *(v114 - 8);
  v35 = *(v117 + 64);
  __chkstk_darwin(v114);
  v109 = &v101 - v36;
  v37 = sub_261C90();
  v105 = *(v37 - 8);
  v38 = v105[8];
  __chkstk_darwin(v37);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2EF0(&qword_318D00, &qword_26C268);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v118 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v101 - v45;
  v47 = type metadata accessor for BulletPointStack(0);
  v48 = *(v47 + 20);
  v125 = a1;
  v49 = a1 + v48;
  v50 = *v49;
  if (*(v49 + 8) != 1)
  {

    sub_264900();
    v101 = v37;
    v53 = sub_2624B0();
    v102 = v25;
    v54 = v53;
    sub_260D10();

    v25 = v102;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v50, 0);
    (v105[1])(v40, v101);
    if (v129)
    {
      goto LABEL_3;
    }

LABEL_5:
    v102 = v32;
    v55 = *a2;
    v56 = a2[1];
    v105 = a2;

    sub_2630B0();
    (*(v26 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v25);
    v57 = sub_263100();

    (*(v26 + 8))(v29, v25);
    v58 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    KeyPath = swift_getKeyPath();
    v60 = *(v47 + 24);
    v61 = v115;
    v62 = v106;
    sub_40A78(v115 + *(v107 + 36));
    *v61 = v57;
    *(v61 + 8) = 0;
    *(v61 + 16) = 1;
    *(v61 + 24) = KeyPath;
    *(v61 + 32) = v58;
    v63 = v111;
    sub_408A8(v111);
    v64 = v112;
    v65 = v124;
    (*(v112 + 104))(v62, enum case for UserInterfaceSizeClass.compact(_:), v124);
    (*(v64 + 56))(v62, 0, 1, v65);
    v66 = *(v108 + 48);
    v67 = v113;
    sub_8198(v63, v113, &qword_3178F0, &qword_269C90);
    sub_8198(v62, v67 + v66, &qword_3178F0, &qword_269C90);
    v68 = *(v64 + 48);
    if (v68(v67, 1, v65) == 1)
    {
      sub_8E80(v62, &qword_3178F0, &qword_269C90);
      v69 = v113;
      sub_8E80(v63, &qword_3178F0, &qword_269C90);
      v70 = v68(v69 + v66, 1, v124);
      a2 = v105;
      if (v70 == 1)
      {
        sub_8E80(v69, &qword_3178F0, &qword_269C90);
LABEL_12:
        v77 = v102;
        v52 = v125;
        _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
        sub_2613A0();
        v78 = v110;
        sub_22148(v115, v110, &qword_318CE8, &qword_26C250);
        v79 = (v78 + *(v77 + 36));
        v80 = v127;
        *v79 = v126;
        v79[1] = v80;
        v79[2] = v128;
        sub_5CBB8();
        v81 = v109;
        sub_262C60();
        sub_8E80(v78, &qword_318CF0, &qword_26C258);
        sub_22148(v81, v46, &qword_318CF8, &qword_26C260);
        v51 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v71 = v104;
      sub_8198(v67, v104, &qword_3178F0, &qword_269C90);
      if (v68(v67 + v66, 1, v124) != 1)
      {
        v72 = v112;
        v73 = v67 + v66;
        v74 = v103;
        v75 = v124;
        (*(v112 + 32))(v103, v73, v124);
        sub_5CAD8(&qword_317AC0, &type metadata accessor for UserInterfaceSizeClass);
        sub_264390();
        v76 = *(v72 + 8);
        v76(v74, v75);
        sub_8E80(v62, &qword_3178F0, &qword_269C90);
        sub_8E80(v111, &qword_3178F0, &qword_269C90);
        v76(v71, v75);
        sub_8E80(v67, &qword_3178F0, &qword_269C90);
        a2 = v105;
        goto LABEL_12;
      }

      sub_8E80(v62, &qword_3178F0, &qword_269C90);
      v69 = v113;
      sub_8E80(v111, &qword_3178F0, &qword_269C90);
      (*(v112 + 8))(v71, v124);
      a2 = v105;
    }

    sub_8E80(v69, &qword_317970, &qword_269D00);
    goto LABEL_12;
  }

  if ((v50 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v51 = 1;
  v52 = v125;
LABEL_13:
  (*(v117 + 56))(v46, v51, 1, v114);
  v82 = a2[2];
  v83 = a2[3];
  v84 = v46;
  v85 = a2[4];
  v86 = a2[5];
  v87 = sub_261E60();
  v88 = v121;
  *v121 = v87;
  *(v88 + 8) = 0x4000000000000000;
  *(v88 + 16) = 0;
  v89 = sub_2EF0(&qword_318D28, &qword_26C2A8);
  sub_58AD0(v82, v83, v85, v86, v52, (v88 + *(v89 + 44)));
  sub_263580();
  sub_261830();
  v90 = v120;
  sub_22148(v88, v120, &qword_318CD8, &qword_26C238);
  v91 = (v90 + *(v119 + 36));
  v92 = v134;
  v91[4] = v133;
  v91[5] = v92;
  v91[6] = v135;
  v93 = v130;
  *v91 = v129;
  v91[1] = v93;
  v94 = v132;
  v91[2] = v131;
  v91[3] = v94;
  v95 = v122;
  sub_22148(v90, v122, &qword_318CE0, &unk_26C240);
  v96 = v118;
  sub_8198(v84, v118, &qword_318D00, &qword_26C268);
  v97 = v123;
  sub_8198(v95, v123, &qword_318CE0, &unk_26C240);
  v98 = v116;
  sub_8198(v96, v116, &qword_318D00, &qword_26C268);
  v99 = sub_2EF0(&qword_318D30, &qword_26C2B0);
  sub_8198(v97, v98 + *(v99 + 48), &qword_318CE0, &unk_26C240);
  sub_8E80(v95, &qword_318CE0, &unk_26C240);
  sub_8E80(v84, &qword_318D00, &qword_26C268);
  sub_8E80(v97, &qword_318CE0, &unk_26C240);
  return sub_8E80(v96, &qword_318D00, &qword_26C268);
}

uint64_t sub_5B7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorConstants(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_404B8(v7);
  v8 = [objc_opt_self() quaternarySystemFillColor];
  v9 = sub_263070();
  sub_5C670(v7, type metadata accessor for ColorConstants);
  LOBYTE(v7) = sub_262500();
  v10 = sub_2EF0(&qword_318C50, &qword_26C198);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = a2 + *(sub_2EF0(&qword_318C58, &qword_26C1A0) + 36);
  *v11 = v9;
  *(v11 + 8) = v7;
  v12 = (a2 + *(sub_2EF0(&qword_318C60, &qword_26C1A8) + 36));
  v13 = *(sub_2617E0() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_261DD0();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #22.0 }

  *v12 = _Q0;
  result = sub_2EF0(&qword_317DA8, &qword_26C1B0);
  *&v12[*(result + 36)] = 256;
  return result;
}

__n128 sub_5B9A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ScrollingCardModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318BE8, &unk_26C120);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - v13;
  (*(v11 + 16))(v22 - v13, a1, v10);
  sub_5C778(v3, v9, type metadata accessor for ScrollingCardModifier);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  sub_5C9F0(v9, v17 + v16, type metadata accessor for ScrollingCardModifier);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  v18 = *(sub_2EF0(&qword_318BF0, &qword_26C130) + 36);
  *(a2 + v18) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  *a2 = sub_5C3A0;
  *(a2 + 8) = v17;
  v19 = v22[5];
  *(a2 + 80) = v22[4];
  *(a2 + 96) = v19;
  *(a2 + 112) = v22[6];
  v20 = v22[1];
  *(a2 + 16) = v22[0];
  *(a2 + 32) = v20;
  result = v22[3];
  *(a2 + 48) = v22[2];
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_5BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_261FF0();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_318BF8, &qword_26C168);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  sub_2624E0();
  v18 = a2;
  v19 = a3;
  v20 = a1;
  sub_2EF0(&qword_318C00, &qword_26C170);
  sub_5C4A0();
  sub_261130();
  sub_261FE0();
  LOBYTE(a1) = sub_2624E0();
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != a1)
  {
    sub_2624D0();
  }

  sub_8E38(&qword_318C40, &qword_318BF8, &qword_26C168);
  sub_262C80();
  (*(v6 + 8))(v9, v17);
  return (*(v11 + 8))(v14, v10);
}

__n128 sub_5BEC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_318C18, &qword_26C178);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  *v12 = sub_261E50();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = *(sub_2EF0(&qword_318C48, &qword_26C190) + 44);
  v14 = sub_2EF0(&qword_318BE8, &unk_26C120);
  (*(*(v14 - 8) + 16))(&v12[v13], a1, v14);
  sub_40880(v7);
  sub_5C670(v7, type metadata accessor for SizeConstants.Spacing);
  v15 = sub_262500();
  sub_2610C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v12[*(sub_2EF0(&qword_318C28, &qword_26C180) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v25 = &v12[*(v9 + 44)];
  v26 = v31[1];
  *v25 = v31[0];
  *(v25 + 1) = v26;
  *(v25 + 2) = v31[2];
  sub_261420();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v12, a2, &qword_318C18, &qword_26C178);
  v27 = a2 + *(sub_2EF0(&qword_318C00, &qword_26C170) + 36);
  v28 = v31[8];
  *(v27 + 64) = v31[7];
  *(v27 + 80) = v28;
  *(v27 + 96) = v31[9];
  v29 = v31[4];
  *v27 = v31[3];
  *(v27 + 16) = v29;
  result = v31[6];
  *(v27 + 32) = v31[5];
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_5C1F8()
{
  v1 = sub_2EF0(&qword_318BE8, &unk_26C120);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ScrollingCardModifier(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v8 = (v0 + v6);
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v10 = sub_261690();
    (*(*(v10 - 8) + 8))(&v8[v9], v10);
  }

  else
  {
    v11 = *v8;
  }

  return swift_deallocObject();
}

uint64_t sub_5C3A0(uint64_t a1)
{
  v3 = *(sub_2EF0(&qword_318BE8, &unk_26C120) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ScrollingCardModifier(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_5BC5C(a1, v1 + v4, v7);
}

double sub_5C494@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *&result = sub_5BEC0(v1[2], a1).n128_u64[0];
  return result;
}

unint64_t sub_5C4A0()
{
  result = qword_318C08;
  if (!qword_318C08)
  {
    sub_2F9C(&qword_318C00, &qword_26C170);
    sub_5C52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C08);
  }

  return result;
}

unint64_t sub_5C52C()
{
  result = qword_318C10;
  if (!qword_318C10)
  {
    sub_2F9C(&qword_318C18, &qword_26C178);
    sub_5C5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C10);
  }

  return result;
}

unint64_t sub_5C5B8()
{
  result = qword_318C20;
  if (!qword_318C20)
  {
    sub_2F9C(&qword_318C28, &qword_26C180);
    sub_8E38(&qword_318C30, &qword_318C38, &qword_26C188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318C20);
  }

  return result;
}

uint64_t sub_5C670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5C6D0@<X0>(void *a1@<X8>)
{
  result = sub_261B20();
  *a1 = v3;
  return result;
}

uint64_t sub_5C6FC@<X0>(void *a1@<X8>)
{
  result = sub_261B20();
  *a1 = v3;
  return result;
}

uint64_t sub_5C778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5C7E0()
{
  v1 = type metadata accessor for BulletPointStack(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_3179B8, &unk_269D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_262180();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v5))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
    v7 = *v4;
  }

  sub_4054(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  v8 = v1[6];
  sub_2EF0(&qword_3179C0, &qword_269D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_263640();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);
  }

  else
  {
    v10 = *(v4 + v8);
  }

  v11 = (v4 + v1[7]);
  v12 = v11[1];

  v13 = v11[3];

  v14 = v11[4];

  return swift_deallocObject();
}

uint64_t sub_5C9F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5CA58(void *a1)
{
  v3 = *(type metadata accessor for BulletPointStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5A810(a1, v4);
}

uint64_t sub_5CAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5CB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_318C88, &qword_26C200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5CBB8()
{
  result = qword_318D08;
  if (!qword_318D08)
  {
    sub_2F9C(&qword_318CF0, &qword_26C258);
    sub_5CC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D08);
  }

  return result;
}

unint64_t sub_5CC44()
{
  result = qword_318D10;
  if (!qword_318D10)
  {
    sub_2F9C(&qword_318CE8, &qword_26C250);
    sub_5CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D10);
  }

  return result;
}

unint64_t sub_5CCD0()
{
  result = qword_318D18;
  if (!qword_318D18)
  {
    sub_2F9C(&qword_318D20, &qword_26C2A0);
    sub_2F960();
    sub_8E38(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D18);
  }

  return result;
}

unint64_t sub_5CD90()
{
  result = qword_318D78;
  if (!qword_318D78)
  {
    sub_2F9C(&qword_318D60, &qword_26C318);
    sub_5CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D78);
  }

  return result;
}

unint64_t sub_5CE1C()
{
  result = qword_318D80;
  if (!qword_318D80)
  {
    sub_2F9C(&qword_318D88, &qword_26C330);
    sub_5CED4();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D80);
  }

  return result;
}

unint64_t sub_5CED4()
{
  result = qword_318D90;
  if (!qword_318D90)
  {
    sub_2F9C(&qword_318D98, &qword_26C338);
    sub_8E38(&qword_318DA0, &qword_318DA8, &unk_26C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318D90);
  }

  return result;
}

unint64_t sub_5CF8C()
{
  result = qword_318DC0;
  if (!qword_318DC0)
  {
    sub_2F9C(&qword_318DB8, &unk_26C350);
    sub_58070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DC0);
  }

  return result;
}

unint64_t sub_5D018()
{
  result = qword_318DC8;
  if (!qword_318DC8)
  {
    sub_2F9C(&qword_318D58, &qword_26C310);
    sub_5CD90();
    sub_8E38(&qword_318DB0, &qword_318D48, &unk_26C2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318DC8);
  }

  return result;
}

uint64_t sub_5D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2601E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5D1AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2601E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5D250()
{
  result = sub_2601E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_5D2D8()
{
  result = qword_318E70;
  if (!qword_318E70)
  {
    sub_2F9C(&qword_318BF0, &qword_26C130);
    sub_5D394();
    sub_5CAD8(&qword_318E98, type metadata accessor for CardModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318E70);
  }

  return result;
}

unint64_t sub_5D394()
{
  result = qword_318E78;
  if (!qword_318E78)
  {
    sub_2F9C(&qword_318E80, &qword_26C3A0);
    sub_8E38(&qword_318E88, &qword_318E90, &qword_26C3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318E78);
  }

  return result;
}

unint64_t sub_5D450()
{
  result = qword_318EA0;
  if (!qword_318EA0)
  {
    sub_2F9C(&qword_318C60, &qword_26C1A8);
    sub_5D508();
    sub_8E38(&qword_317DA0, &qword_317DA8, &qword_26C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EA0);
  }

  return result;
}

unint64_t sub_5D508()
{
  result = qword_318EA8;
  if (!qword_318EA8)
  {
    sub_2F9C(&qword_318C58, &qword_26C1A0);
    sub_8E38(&qword_318EB0, &qword_318C50, &qword_26C198);
    sub_8E38(&qword_318EB8, &qword_318EC0, &unk_26C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EA8);
  }

  return result;
}

unint64_t sub_5D5F0()
{
  result = qword_318EC8;
  if (!qword_318EC8)
  {
    sub_2F9C(&qword_318C80, &qword_26C1F8);
    sub_2F9C(&qword_318C68, &qword_26C1B8);
    sub_2F9C(&qword_3174E8, &qword_269970);
    sub_8E38(&qword_318C78, &qword_318C68, &qword_26C1B8);
    sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318EC8);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 24))
  {
    sub_F7CC(a1, a2);
  }

  else
  {
    result = *a1;
    v3 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v3;
    *(a2 + 32) = *(a1 + 32);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.wrappedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {
    sub_30CC(v1, a1);
  }

  else
  {
    result = *v1;
    v3 = *(v1 + 16);
    *a1 = *v1;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(v1 + 32);
  }

  return result;
}

__n128 _CodeAnyIntentModel_OrNil.wrappedValue.setter(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (!*(v1 + 24))
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    result = *a1;
    v5 = *(a1 + 16);
    *v1 = *a1;
    *(v1 + 16) = v5;
    *(v1 + 32) = *(a1 + 32);
    return result;
  }

  sub_3080(v1);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:

  sub_F7CC(a1, v1);
  return result;
}

uint64_t _CodeAnyIntentModel_OrNil.description.getter(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 16);
    v7 = *v1;
    v8 = v4;
    v9 = *(v1 + 32);
    if (*(&v4 + 1))
    {
      goto LABEL_3;
    }

    return 7104878;
  }

  sub_30CC(v1, &v7);
  if (!*(&v8 + 1))
  {
    return 7104878;
  }

LABEL_3:
  sub_F7CC(&v7, v10);
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  v6 = *(a1 + 16);
  swift_getExtendedExistentialTypeMetadata();
  sub_264EE0();
  v3 = v7;
  sub_3080(v10);
  return v3;
}

double _CodeAnyIntentModel_OrNil.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v11);
  v5 = type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  sub_264A70();
  if (v2)
  {
    sub_3080(a1);
    v6 = type metadata accessor for _CodeAnyIntentModel_OrNil();
    (*(*(v6 - 8) + 8))(a2, v6);
    return result;
  }

  sub_3080(a1);
  if (v13)
  {
    sub_30CC(v12, &v14);
    (*(*(v5 - 8) + 8))(v12, v5);
  }

  else
  {
    v8 = sub_264A60();
    (*(*(v8 - 8) + 8))(v12, v8);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  v9 = *(&v15 + 1);
  if (*(a2 + 24))
  {
    sub_3080(a2);
    if (v9)
    {
LABEL_8:
      sub_F7CC(&v14, a2);
      return result;
    }
  }

  else if (*(&v15 + 1))
  {
    goto LABEL_8;
  }

  result = *&v14;
  v10 = v15;
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 32) = v16;
  return result;
}

double _CodeAnyIntentModel_OrNil.init(_partiallyFrom:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_30CC(a1, &v11);
  v4 = type metadata accessor for CodeAnyIntentModel();
  swift_getWitnessTable();
  sub_264A50();
  sub_3080(a1);
  if (v10)
  {
    sub_30CC(v9, &v11);
    (*(*(v4 - 8) + 8))(v9, v4);
  }

  else
  {
    v5 = sub_264A60();
    (*(*(v5 - 8) + 8))(v9, v5);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  v6 = *(&v12 + 1);
  if (*(a2 + 24))
  {
    sub_3080(a2);
    if (v6)
    {
LABEL_6:
      sub_F7CC(&v11, a2);
      return result;
    }
  }

  else if (*(&v12 + 1))
  {
    goto LABEL_6;
  }

  result = *&v11;
  v8 = v12;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_5DCD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_5DD10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_5DD28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_60B64(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_5DF0C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ToolbarIconView() + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_5E064@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for ToolbarIconView();
  sub_8198(v1 + *(v12 + 28), v11, &qword_316DC0, &qword_2691C0);
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

uint64_t sub_5E26C@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for ToolbarIconView();
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

uint64_t sub_5E474()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ToolbarIconView() + 40);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_5E5CC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ToolbarIconView() + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_5E724()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ToolbarIconView() + 48);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t ToolbarIconView.init(kind:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ToolbarIconView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_2EF0(&qword_318F68, &qword_26C578);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v4[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a2 + v4[10];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v4[11];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + v4[12];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  *(a2 + v4[13]) = v3;
  return result;
}

double ToolbarIconView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2EF0(&qword_318F70, &qword_26C6D0);
  v7 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v9 = (&v22 - v8);
  v24 = sub_2EF0(&qword_318F78, &qword_26C6D8);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v24);
  v13 = &v22 - v12;
  *v9 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9[1] = v14;
  v15 = sub_2EF0(&qword_318F80, &qword_26C6E0);
  sub_5ED14(v1, v9 + *(v15 + 44));
  v16 = sub_5DF0C();
  v17 = &enum case for DynamicTypeSize.large(_:);
  if ((v16 & 1) == 0)
  {
    v17 = &enum case for DynamicTypeSize.medium(_:);
  }

  (*(v3 + 104))(v6, *v17, v2);
  sub_8E38(&qword_318F88, &qword_318F70, &qword_26C6D0);
  sub_262B60();
  (*(v3 + 8))(v6, v2);
  sub_8E80(v9, &qword_318F70, &qword_26C6D0);
  sub_5F8C8();
  sub_5F8C8();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v18 = v25;
  (*(v10 + 32))(v25, v13, v24);
  v19 = (v18 + *(sub_2EF0(&qword_318F90, &qword_26C6E8) + 36));
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  result = *&v28;
  v19[2] = v28;
  return result;
}

uint64_t sub_5ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_2EF0(&qword_318458, &unk_26B270);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v106 = &v92[-v5];
  v107 = sub_262730();
  v105 = *(v107 - 8);
  v6 = *(v105 + 64);
  __chkstk_darwin(v107);
  v104 = &v92[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = sub_2EF0(&qword_319088, &qword_26C7F0);
  v8 = *(*(v108 - 8) + 64);
  v9 = __chkstk_darwin(v108);
  v109 = &v92[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v100 = &v92[-v11];
  v12 = type metadata accessor for ColorConstants.Environment(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v98 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for ColorConstants(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_261180();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v97 = &v92[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v101 = &v92[-v24];
  v25 = sub_2617E0();
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v92[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_2EF0(&qword_319090, &qword_26C7F8);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v92[-v32];
  v99 = sub_2EF0(&qword_319098, &qword_26C800);
  v34 = *(*(v99 - 8) + 64);
  v35 = __chkstk_darwin(v99);
  v103 = &v92[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v39 = &v92[-v38];
  __chkstk_darwin(v37);
  v102 = &v92[-v40];
  v41 = *(v26 + 28);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = sub_261DD0();
  (*(*(v43 - 8) + 104))(&v29[v41], v42, v43);
  __asm { FMOV            V0.2D, #6.0 }

  *v29 = _Q0;
  if (sub_5E474())
  {
    v49 = sub_5F630();
  }

  else
  {
    v111 = sub_262FA0();
    v49 = sub_2613B0();
  }

  v50 = v49;
  sub_60B64(v29, v33, &type metadata accessor for RoundedRectangle);
  *&v33[*(v30 + 52)] = v50;
  *&v33[*(v30 + 56)] = 256;
  if (sub_5E5CC())
  {
    v96 = a1;
    sub_5DD28(v18);
    v51 = v98;
    sub_60C74(v18, v98, type metadata accessor for ColorConstants.Environment);
    v52 = *(v20 + 104);
    v53 = v97;
    v93 = enum case for ColorScheme.dark(_:);
    v54 = v19;
    v94 = v52;
    v52(v97);
    sub_60AB0();
    v55 = sub_264390();
    v95 = v20;
    v56 = *(v20 + 8);
    v56(v53, v54);
    v57 = v18;
    v58 = v54;
    sub_60B08(v57);
    v56(v51, v54);
    if (v55)
    {
      v59 = enum case for ColorScheme.light(_:);
      v60 = v101;
      v61 = v101;
    }

    else
    {
      v60 = v101;
      v61 = v101;
      v59 = v93;
    }

    v94(v61, v59, v54);
    v20 = v95;
    a1 = v96;
  }

  else
  {
    v60 = v101;
    sub_5E064(v101);
    v58 = v19;
  }

  KeyPath = swift_getKeyPath();
  v63 = &v39[*(v99 + 36)];
  v64 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  (*(v20 + 32))(v63 + *(v64 + 28), v60, v58);
  *v63 = KeyPath;
  sub_22148(v33, v39, &qword_319090, &qword_26C7F8);
  v65 = v102;
  sub_22148(v39, v102, &qword_319098, &qword_26C800);
  LOBYTE(KeyPath) = *(a1 + *(type metadata accessor for ToolbarIconView() + 52));
  v66 = *(type metadata accessor for SymbolImage() + 20);
  v67 = swift_getKeyPath();
  v68 = v100;
  *&v100[v66] = v67;
  sub_2EF0(&qword_3190A0, &unk_283550);
  swift_storeEnumTagMultiPayload();
  *v68 = KeyPath;
  v69 = sub_5FA30();
  *&v68[*(sub_2EF0(&qword_3190A8, &qword_26C870) + 36)] = v69;
  v71 = v104;
  v70 = v105;
  v72 = v107;
  (*(v105 + 104))(v104, enum case for Font.TextStyle.body(_:), v107);
  v73 = sub_2625C0();
  v74 = v106;
  (*(*(v73 - 8) + 56))(v106, 1, 1, v73);
  sub_262630();
  v75 = sub_262680();
  sub_8E80(v74, &qword_318458, &unk_26B270);
  (*(v70 + 8))(v71, v72);
  v76 = swift_getKeyPath();
  v77 = &v68[*(sub_2EF0(&qword_3190B0, &qword_283590) + 36)];
  *v77 = v76;
  v77[1] = v75;
  sub_5FB34();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  LOBYTE(v75) = sub_262500();
  v86 = &v68[*(sub_2EF0(&qword_3190B8, &qword_26C8B0) + 36)];
  *v86 = v75;
  *(v86 + 1) = v79;
  *(v86 + 2) = v81;
  *(v86 + 3) = v83;
  *(v86 + 4) = v85;
  v86[40] = 0;
  sub_5E26C(&v68[*(v108 + 36)]);
  v87 = v103;
  sub_8198(v65, v103, &qword_319098, &qword_26C800);
  v88 = v109;
  sub_8198(v68, v109, &qword_319088, &qword_26C7F0);
  v89 = v110;
  sub_8198(v87, v110, &qword_319098, &qword_26C800);
  v90 = sub_2EF0(&qword_3190C0, &qword_26C8B8);
  sub_8198(v88, v89 + *(v90 + 48), &qword_319088, &qword_26C7F0);
  sub_8E80(v68, &qword_319088, &qword_26C7F0);
  sub_8E80(v65, &qword_319098, &qword_26C800);
  sub_8E80(v88, &qword_319088, &qword_26C7F0);
  return sub_8E80(v87, &qword_319098, &qword_26C800);
}

uint64_t sub_5F630()
{
  v0 = sub_261180();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorConstants.Environment(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2634E0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  if (sub_5E5CC())
  {
    sub_2634D0();
  }

  else
  {
    sub_5DD28(v12);
    sub_60C74(v12, v8, type metadata accessor for ColorConstants.Environment);
    (*(v1 + 104))(v4, enum case for ColorScheme.dark(_:), v0);
    sub_60AB0();
    v15 = sub_264390();
    v16 = *(v1 + 8);
    v16(v4, v0);
    sub_60B08(v12);
    v16(v8, v0);
    if (v15)
    {
      _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
    }

    else
    {
      sub_262F80();
    }

    v17 = sub_263000();

    v19[1] = v17;
  }

  return sub_2613B0();
}

double sub_5F8C8()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for ToolbarIconView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_264900();
    v8 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return dbl_26C910[v7];
}

uint64_t sub_5FA30()
{
  v0 = type metadata accessor for ColorConstants(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5E724();
  v5 = sub_5E5CC();
  v6 = v5;
  if (v4)
  {
    sub_5DD28(v3);
    v7 = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    if (v6)
    {
      v8 = sub_263000();

      sub_60B08(v3);
      return v8;
    }

    goto LABEL_6;
  }

  if (v5)
  {
    sub_5DD28(v3);
    v7 = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
LABEL_6:
    sub_60B08(v3);
    return v7;
  }

  return _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
}

void sub_5FB34()
{
  v1 = *(v0 + *(type metadata accessor for ToolbarIconView() + 52));
  if (v1 <= 3 || v1 > 5 || v1 == 4)
  {
    v2 = sub_264F10();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v3 = sub_264420();

  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    [v4 alignmentRectInsets];
  }
}

uint64_t sub_5FE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_60220();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_5FE6C()
{
  sub_60C20();

  return sub_261CB0();
}

uint64_t View.toolbarIconButton(size:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_262A90();
}

uint64_t type metadata accessor for ToolbarIconView()
{
  result = qword_319000;
  if (!qword_319000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5FF7C@<X0>(_BYTE *a1@<X8>)
{
  sub_60BCC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_5FFCC(char *a1)
{
  v2 = *a1;
  sub_60BCC();
  return sub_261CC0();
}

uint64_t sub_600D4@<X0>(_BYTE *a1@<X8>)
{
  sub_60C20();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_60124(char *a1)
{
  v2 = *a1;
  sub_60C20();
  return sub_261CC0();
}

uint64_t sub_60170@<X0>(_BYTE *a1@<X8>)
{
  sub_60BCC();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_601C0(char *a1)
{
  v2 = *a1;
  sub_60BCC();
  return sub_261CC0();
}

unint64_t sub_60220()
{
  result = qword_318F98;
  if (!qword_318F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318F98);
  }

  return result;
}

uint64_t sub_602A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 > 1)
    {
      return (v15 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_604A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2EF0(&qword_318FA0, &unk_286050);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v16 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_2EF0(&qword_317878, &unk_27E490);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_6068C()
{
  sub_6083C(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_6083C(319, &qword_319010, type metadata accessor for FontConstants.Navigation);
    if (v1 <= 0x3F)
    {
      sub_60890(319, &qword_3167D0);
      if (v2 <= 0x3F)
      {
        sub_6083C(319, &qword_316FF0, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_6083C(319, &qword_3178F8, &type metadata accessor for BlendMode);
          if (v4 <= 0x3F)
          {
            sub_60890(319, &qword_319018);
            if (v5 <= 0x3F)
            {
              sub_60890(319, &unk_319020);
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

void sub_6083C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_60890(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2611E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_608F0()
{
  result = qword_319070;
  if (!qword_319070)
  {
    sub_2F9C(&qword_318F90, &qword_26C6E8);
    sub_2F9C(&qword_318F70, &qword_26C6D0);
    sub_8E38(&qword_318F88, &qword_318F70, &qword_26C6D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319070);
  }

  return result;
}

uint64_t sub_609EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_319078, &unk_26C7E0);
  sub_261730();
  sub_8E38(&qword_319080, &qword_319078, &unk_26C7E0);
  return swift_getWitnessTable();
}

unint64_t sub_60AB0()
{
  result = qword_3183A0;
  if (!qword_3183A0)
  {
    sub_261180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3183A0);
  }

  return result;
}

uint64_t sub_60B08(uint64_t a1)
{
  v2 = type metadata accessor for ColorConstants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_60BCC()
{
  result = qword_3190C8;
  if (!qword_3190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190C8);
  }

  return result;
}

unint64_t sub_60C20()
{
  result = qword_3190D0;
  if (!qword_3190D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190D0);
  }

  return result;
}

uint64_t sub_60C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_60D34()
{
  v2 = *v0;
  sub_2EF0(&qword_3190D8, &unk_26C9D0);
  sub_60DB8();
  sub_60E1C();
  return sub_262CC0();
}

unint64_t sub_60DB8()
{
  result = qword_3190E0;
  if (!qword_3190E0)
  {
    sub_2F9C(&qword_3190D8, &unk_26C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190E0);
  }

  return result;
}

unint64_t sub_60E1C()
{
  result = qword_3190E8;
  if (!qword_3190E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3190E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PageMarginConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_60F24()
{
  sub_2F9C(&qword_3190D8, &unk_26C9D0);
  sub_60DB8();
  sub_60E1C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t BookCoverEffect.init(shadowScale:cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = *(type metadata accessor for BookCoverEffect() + 24);
  *(a1 + v6) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  result = swift_storeEnumTagMultiPayload();
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t type metadata accessor for BookCoverEffect()
{
  result = qword_319198;
  if (!qword_319198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61068@<X0>(uint64_t a1@<X8>)
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
  v12 = type metadata accessor for BookCoverEffect();
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

uint64_t BookCoverEffect.body(cover:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for BookCoverEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_61530(v3, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_61598(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  result = (*(v7 + 32))(v16 + v15, v10, v6);
  *a2 = sub_615FC;
  a2[1] = v16;
  return result;
}

double sub_61450@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_261420();
  v7 = v6;
  v9 = v8;
  *a3 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  a3[1] = v10;
  v11 = sub_2EF0(&qword_3191F0, &qword_26CBD8);
  sub_61600(a1, a2, a3 + *(v11 + 44), v7, v9);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v12 = (a3 + *(sub_2EF0(&qword_3191F8, &qword_26CBE0) + 36));
  *v12 = v14;
  v12[1] = v15;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_61530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_61598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookCoverEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_61600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_2EF0(&qword_319200, &qword_26CBE8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  v18 = sub_2EF0(&qword_319208, &qword_26CBF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = (&v34 - v23);
  *v24 = sub_263560();
  v24[1] = v25;
  v26 = sub_2EF0(&qword_319210, &qword_26CBF8);
  sub_618D4(a1, a2, v24 + *(v26 + 44), a4, a5);
  sub_62450(a2, a1, v17, a5);
  v27 = *(a1 + 8);
  v28 = &v17[*(v11 + 44)];
  v29 = *(sub_2617E0() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_261DD0();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v27;
  *(v28 + 1) = v27;
  *&v28[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_8198(v24, v22, &qword_319208, &qword_26CBF0);
  sub_8198(v17, v15, &qword_319200, &qword_26CBE8);
  sub_8198(v22, a3, &qword_319208, &qword_26CBF0);
  v32 = sub_2EF0(&qword_319218, &qword_26CC00);
  sub_8198(v15, a3 + *(v32 + 48), &qword_319200, &qword_26CBE8);
  sub_8E80(v17, &qword_319200, &qword_26CBE8);
  sub_8E80(v24, &qword_319208, &qword_26CBF0);
  sub_8E80(v15, &qword_319200, &qword_26CBE8);
  return sub_8E80(v22, &qword_319208, &qword_26CBF0);
}

uint64_t sub_618D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v112 = a2;
  v124 = a3;
  v8 = sub_2EF0(&qword_319288, &qword_26CC30);
  v9 = *(v8 - 8);
  v115 = v8 - 8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v111 = v97 - v11;
  v12 = sub_2EF0(&qword_319290, &qword_26CC38);
  v13 = *(v12 - 8);
  v123 = v12 - 8;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v120 = v97 - v15;
  v16 = sub_2EF0(&qword_319298, &qword_26CC40);
  v17 = *(v16 - 8);
  v121 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v118 = v97 - v19;
  v20 = sub_2EF0(&qword_3192A0, &qword_26CC48);
  v21 = *(v20 - 8);
  v119 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v116 = v97 - v23;
  v24 = sub_2EF0(&qword_3192A8, &qword_26CC50);
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
  sub_61068(v38);
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
  v76 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v77 = v111;
  (*(*(v76 - 8) + 16))(v111, v112, v76);
  v78 = (v77 + *(sub_2EF0(&qword_319260, &qword_26CC10) + 36));
  v79 = v129;
  *v78 = v128;
  v78[1] = v79;
  v78[2] = v130;
  v80 = (v77 + *(v115 + 44));
  v104(&v80[*(v109 + 20)], v106, v105);
  *v80 = v58;
  *(v80 + 1) = v58;
  *&v80[*(sub_2EF0(&qword_317DA8, &qword_26C1B0) + 36)] = 256;
  sub_61068(v70);
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
  sub_22148(v77, v120, &qword_319288, &qword_26CC30);
  *(v82 + *(v123 + 44)) = v81;
  v83 = v82;
  v84 = v118;
  sub_22148(v83, v118, &qword_319290, &qword_26CC38);
  v85 = v84 + *(v121 + 44);
  *v85 = a4 * 0.1;
  *(v85 + 8) = 0;
  v86 = v116;
  sub_22148(v84, v116, &qword_319298, &qword_26CC40);
  *(v86 + *(v119 + 44)) = 0x3FF199999999999ALL;
  v87 = *(v114 + 44);
  v88 = enum case for BlendMode.color(_:);
  v89 = sub_263640();
  v90 = v113;
  (*(*(v89 - 8) + 104))(&v113[v87], v88, v89);
  sub_22148(v86, v90, &qword_3192A0, &qword_26CC48);
  v91 = v117;
  sub_22148(v90, v117, &qword_3192A8, &qword_26CC50);
  v92 = v110;
  sub_8198(v75, v110, &qword_3192C0, &unk_28E830);
  v93 = v122;
  sub_8198(v91, v122, &qword_3192A8, &qword_26CC50);
  v94 = v124;
  sub_8198(v92, v124, &qword_3192C0, &unk_28E830);
  v95 = sub_2EF0(qword_3192D8, &qword_26CC58);
  sub_8198(v93, v94 + *(v95 + 48), &qword_3192A8, &qword_26CC50);
  sub_8E80(v91, &qword_3192A8, &qword_26CC50);
  sub_8E80(v75, &qword_3192C0, &unk_28E830);
  sub_8E80(v93, &qword_3192A8, &qword_26CC50);
  return sub_8E80(v92, &qword_3192C0, &unk_28E830);
}

uint64_t AudiobookCoverEffect.shape.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(sub_2617E0() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_261DD0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

uint64_t sub_62450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v184 = a2;
  v199 = a3;
  v6 = sub_261180();
  v195 = *(v6 - 8);
  v196 = v6;
  v7 = *(v195 + 64);
  v8 = __chkstk_darwin(v6);
  v194 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v192 = &v176 - v10;
  v11 = sub_2EF0(&qword_319220, &unk_279340);
  v12 = *(v11 - 8);
  v213 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v187 = (&v176 - v14);
  v15 = sub_2EF0(&qword_319228, &unk_28E790);
  v16 = *(v15 - 8);
  v193 = v15 - 8;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v191 = &v176 - v18;
  v19 = sub_2EF0(&qword_319230, &unk_279350);
  v20 = *(v19 - 8);
  v190 = v19 - 8;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v189 = &v176 - v22;
  v23 = sub_2EF0(&qword_319238, &unk_28E7A0);
  v24 = *(v23 - 8);
  v215 = v23 - 8;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23 - 8);
  v182 = &v176 - v26;
  v27 = sub_2EF0(&qword_319240, &unk_279360);
  v28 = *(v27 - 8);
  v186 = v27 - 8;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v185 = &v176 - v30;
  v31 = sub_2EF0(&qword_319248, &unk_28E7B0);
  v32 = *(v31 - 8);
  v188 = v31 - 8;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31 - 8);
  v198 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v197 = &v176 - v37;
  v38 = __chkstk_darwin(v36);
  v211 = (&v176 - v39);
  v40 = __chkstk_darwin(v38);
  v183 = &v176 - v41;
  __chkstk_darwin(v40);
  v209 = &v176 - v42;
  v43 = sub_2EF0(&qword_319250, &qword_279370);
  v44 = *(v43 - 8);
  v181 = v43 - 8;
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43 - 8);
  v214 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v217 = &v176 - v48;
  v49 = sub_2EF0(&qword_319258, &qword_26CC08);
  v50 = *(v49 - 8);
  v180 = v49 - 8;
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49 - 8);
  v212 = &v176 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v176 - v54;
  v56 = sub_2EF0(&qword_319260, &qword_26CC10);
  v57 = v56 - 8;
  v58 = *(*(v56 - 8) + 64);
  v59 = __chkstk_darwin(v56);
  v210 = &v176 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v62 = &v176 - v61;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v63 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v64 = *(*(v63 - 8) + 16);
  v216 = v62;
  v64(v62, a1, v63);
  v65 = &v62[*(v57 + 44)];
  v66 = v257;
  *v65 = v256;
  *(v65 + 1) = v66;
  *(v65 + 2) = v258;
  sub_2EF0(&qword_319268, &qword_279380);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26CB10;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 32) = sub_263450();
  *(v67 + 40) = v68;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 48) = sub_263450();
  *(v67 + 56) = v69;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 64) = sub_263450();
  *(v67 + 72) = v70;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 80) = sub_263450();
  *(v67 + 88) = v71;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 96) = sub_263450();
  *(v67 + 104) = v72;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 112) = sub_263450();
  *(v67 + 120) = v73;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 128) = sub_263450();
  *(v67 + 136) = v74;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 144) = sub_263450();
  *(v67 + 152) = v75;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 160) = sub_263450();
  *(v67 + 168) = v76;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v67 + 176) = sub_263450();
  *(v67 + 184) = v77;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v201 = a4;
  sub_2613A0();
  v78 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v207 = v79;
  v208 = v78;
  v80 = swift_allocObject();
  v204 = xmmword_269100;
  *(v80 + 16) = xmmword_269100;
  sub_262F80();
  sub_263000();

  *(v80 + 32) = sub_263450();
  *(v80 + 40) = v81;
  sub_262F80();
  sub_263000();

  *(v80 + 48) = sub_263450();
  *(v80 + 56) = v82;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  v206 = v259;
  v83 = v260;
  v84 = v261;
  v178 = v263;
  v179 = v262;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_26CB20;
  sub_262F80();
  sub_263000();

  *(v85 + 32) = sub_263450();
  *(v85 + 40) = v86;
  sub_262F80();
  sub_263000();

  *(v85 + 48) = sub_263450();
  *(v85 + 56) = v87;
  sub_262F80();
  sub_263000();

  *(v85 + 64) = sub_263450();
  *(v85 + 72) = v88;
  sub_262F80();
  sub_263000();

  *(v85 + 80) = sub_263450();
  *(v85 + 88) = v89;
  sub_262F80();
  sub_263000();

  *(v85 + 96) = sub_263450();
  *(v85 + 104) = v90;
  sub_262F80();
  sub_263000();

  *(v85 + 112) = sub_263450();
  *(v85 + 120) = v91;
  sub_262F80();
  sub_263000();

  *(v85 + 128) = sub_263450();
  *(v85 + 136) = v92;
  sub_262F80();
  sub_263000();

  *(v85 + 144) = sub_263450();
  *(v85 + 152) = v93;
  sub_262F80();
  sub_263000();

  *(v85 + 160) = sub_263450();
  *(v85 + 168) = v94;
  sub_262F80();
  sub_263000();

  *(v85 + 176) = sub_263450();
  *(v85 + 184) = v95;
  sub_262F80();
  sub_263000();

  *(v85 + 192) = sub_263450();
  *(v85 + 200) = v96;
  sub_263730();
  sub_263740();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v97 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v99 = v98;
  v100 = swift_allocObject();
  *(v100 + 16) = v204;
  sub_262F80();
  sub_263000();

  *(v100 + 32) = sub_263450();
  *(v100 + 40) = v101;
  sub_262F80();
  sub_263000();

  *(v100 + 48) = sub_263450();
  *(v100 + 56) = v102;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  v103 = v264;
  v104 = *(sub_2EF0(&qword_319270, &qword_26CC18) + 36);
  v105 = enum case for BlendMode.plusDarker(_:);
  v106 = sub_263640();
  v107 = *(v106 - 8);
  v108 = *(v107 + 104);
  v109 = v107 + 104;
  v176 = v266;
  v177 = v265;
  v110 = &v55[v104];
  v111 = v106;
  v202 = v106;
  v108(v110, v105);
  v203 = v109;
  v200 = v108;
  v112 = v247;
  v205 = v55;
  *(v55 + 2) = v246;
  *(v55 + 3) = v112;
  *(v55 + 4) = v248;
  v113 = v249;
  v114 = v245;
  *v55 = v244;
  *(v55 + 1) = v114;
  *(v55 + 10) = v113;
  *(v55 + 11) = 0x3FD0000000000000;
  *(v55 + 12) = v97;
  *(v55 + 13) = v99;
  *(v55 + 14) = v103;
  v115 = v177;
  *(v55 + 136) = v176;
  *(v55 + 120) = v115;
  v55[*(v180 + 44)] = 1;
  v116 = swift_allocObject();
  *(v116 + 16) = v204;
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  *(v116 + 32) = sub_263450();
  *(v116 + 40) = v117;
  sub_262F80();
  sub_263000();

  *(v116 + 48) = sub_263450();
  *(v116 + 56) = v118;
  sub_263700();
  sub_263710();
  sub_263460();
  sub_261590();
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v119 = v217;
  (v108)(v217 + *(v181 + 44), enum case for BlendMode.softLight(_:), v111);
  v120 = v241;
  *(v119 + 32) = v240;
  *(v119 + 48) = v120;
  *(v119 + 64) = v242;
  v121 = v243;
  v122 = v239;
  *v119 = v238;
  *(v119 + 16) = v122;
  *(v119 + 80) = v121;
  *(v119 + 88) = 0x3FD999999999999ALL;
  v123 = *(v184 + 8);
  *&v204 = sub_2617E0();
  v124 = *(v204 + 20);
  v125 = enum case for RoundedCornerStyle.continuous(_:);
  LODWORD(v180) = enum case for RoundedCornerStyle.continuous(_:);
  v126 = sub_261DD0();
  v127 = *(v126 - 8);
  *&v177 = *(v127 + 104);
  v181 = v127 + 104;
  v128 = v182;
  (v177)(&v182[v124], v125, v126);
  *v128 = v123;
  v128[1] = v123;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v129 = (v128 + *(v215 + 44));
  v130 = v268;
  *v129 = v267;
  v129[1] = v130;
  v129[2] = v269;
  v131 = sub_262F80();
  _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_263000();

  v132 = v187;
  v133 = v187 + *(v213 + 44);
  sub_261230();

  *v132 = v131;
  v134 = v192;
  sub_61068(v192);
  v136 = v194;
  v135 = v195;
  v137 = v196;
  (*(v195 + 104))(v194, enum case for ColorScheme.dark(_:), v196);
  LOBYTE(v116) = sub_261170();
  v138 = *(v135 + 8);
  v138(v136, v137);
  v138(v134, v137);
  if (v116)
  {
    v139 = 0.15;
  }

  else
  {
    v139 = 0.5;
  }

  v140 = v191;
  sub_22148(v132, v191, &qword_319220, &unk_279340);
  v141 = v193;
  *(v140 + *(v193 + 44)) = v139;
  v142 = v189;
  v143 = v190;
  (v200)(&v189[*(v190 + 44)], enum case for BlendMode.screen(_:), v202);
  sub_22148(v140, v142, &qword_319228, &unk_28E790);
  v144 = v185;
  v145 = v186;
  sub_22148(v142, &v185[*(v186 + 44)], &qword_319230, &unk_279350);
  sub_22148(v128, v144, &qword_319238, &unk_28E7A0);
  v146 = v144;
  v147 = v183;
  sub_22148(v146, v183, &qword_319240, &unk_279360);
  v148 = v188;
  *(v147 + *(v188 + 44)) = 1;
  v149 = v209;
  sub_22148(v147, v209, &qword_319248, &unk_28E7B0);
  v150 = v211;
  (v177)(v211 + *(v204 + 20), v180, v126);
  *v150 = v123;
  v150[1] = v123;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  v151 = (v150 + *(v215 + 44));
  v152 = v271;
  *v151 = v270;
  v151[1] = v152;
  v151[2] = v272;
  v153 = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  sub_262F80();
  sub_263000();

  v154 = (v150 + *(v145 + 44));
  v155 = v154 + *(v213 + 44);
  sub_261230();

  *v154 = v153;
  *(v154 + *(v141 + 44)) = 1048576000;
  (v200)(v154 + *(v143 + 44), enum case for BlendMode.darken(_:), v202);
  *(v150 + *(v148 + 44)) = 1;
  v156 = v210;
  sub_8198(v216, v210, &qword_319260, &qword_26CC10);
  v157 = v212;
  sub_8198(v205, v212, &qword_319258, &qword_26CC08);
  v158 = v214;
  sub_8198(v217, v214, &qword_319250, &qword_279370);
  v159 = v149;
  v160 = v197;
  sub_8198(v159, v197, &qword_319248, &unk_28E7B0);
  v161 = v198;
  sub_8198(v150, v198, &qword_319248, &unk_28E7B0);
  v162 = v156;
  v163 = v199;
  sub_8198(v162, v199, &qword_319260, &qword_26CC10);
  v164 = sub_2EF0(&qword_319278, &qword_26CC20);
  v165 = v163 + v164[12];
  v221 = v253;
  v222 = v254;
  v219 = v251;
  v220 = v252;
  v218 = v250;
  *&v223 = v255;
  *(&v223 + 1) = v208;
  *&v224 = v207;
  *(&v224 + 1) = v206;
  *&v225 = v83;
  *(&v225 + 1) = v84;
  v167 = v178;
  v166 = v179;
  *&v226 = v179;
  *(&v226 + 1) = v178;
  v227 = 1;
  v169 = v224;
  v168 = v225;
  v170 = v226;
  *(v165 + 144) = 1;
  *(v165 + 112) = v168;
  *(v165 + 128) = v170;
  v171 = v219;
  *v165 = v218;
  *(v165 + 16) = v171;
  v172 = v220;
  v173 = v221;
  v174 = v222;
  *(v165 + 80) = v223;
  *(v165 + 96) = v169;
  *(v165 + 48) = v173;
  *(v165 + 64) = v174;
  *(v165 + 32) = v172;
  sub_8198(v157, v163 + v164[16], &qword_319258, &qword_26CC08);
  sub_8198(v158, v163 + v164[20], &qword_319250, &qword_279370);
  sub_8198(v160, v163 + v164[24], &qword_319248, &unk_28E7B0);
  sub_8198(v161, v163 + v164[28], &qword_319248, &unk_28E7B0);
  sub_8198(&v218, v228, &qword_319280, &qword_26CC28);
  sub_8E80(v211, &qword_319248, &unk_28E7B0);
  sub_8E80(v209, &qword_319248, &unk_28E7B0);
  sub_8E80(v217, &qword_319250, &qword_279370);
  sub_8E80(v205, &qword_319258, &qword_26CC08);
  sub_8E80(v216, &qword_319260, &qword_26CC10);
  sub_8E80(v161, &qword_319248, &unk_28E7B0);
  sub_8E80(v160, &qword_319248, &unk_28E7B0);
  sub_8E80(v214, &qword_319250, &qword_279370);
  sub_8E80(v212, &qword_319258, &qword_26CC08);
  v228[2] = v252;
  v228[3] = v253;
  v228[4] = v254;
  v228[0] = v250;
  v228[1] = v251;
  v229 = v255;
  v230 = v208;
  v231 = v207;
  v232 = v206;
  v233 = v83;
  v234 = v84;
  v235 = v166;
  v236 = v167;
  v237 = 1;
  sub_8E80(v228, &qword_319280, &qword_26CC28);
  return sub_8E80(v210, &qword_319260, &qword_26CC10);
}

uint64_t sub_639F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v8 = sub_2EF0(&qword_3190F0, &qword_26CB60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61530(v5, v16);
  (*(v9 + 16))(v13, a1, v8);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + *(v9 + 80)) & ~*(v9 + 80);
  v19 = swift_allocObject();
  sub_61598(v16, v19 + v17);
  result = (*(v9 + 32))(v19 + v18, v13, v8);
  *a3 = sub_64174;
  a3[1] = v19;
  return result;
}

uint64_t sub_63BD4(uint64_t a1)
{
  result = sub_63E8C(&qword_319138, type metadata accessor for BookCoverEffect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_63C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_63CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_2EF0(&qword_316F70, &unk_2693C0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_63D60()
{
  sub_50224();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_63DE0()
{
  result = qword_3191D8;
  if (!qword_3191D8)
  {
    sub_2F9C(&qword_3191E0, &qword_26CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3191D8);
  }

  return result;
}

uint64_t sub_63E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_63ED4()
{
  v1 = (type metadata accessor for BookCoverEffect() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2EF0(&qword_3190F0, &qword_26CB60);
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

double sub_64080@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BookCoverEffect() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_2EF0(&qword_3190F0, &qword_26CB60) - 8);
  v7 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_61450(v1 + v4, v7, a1);
}

uint64_t sub_64178(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  (*(v2 + 32))(v5 + v4, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2EF0(&qword_319368, &qword_26CD28);
  sub_260A70();
  sub_260A50();
  sub_6518C();
  sub_65440(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_65440(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_64398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a2;
  v64 = a1;
  v65 = a4;
  v5 = sub_2626C0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontConstants.ListItem(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  v14 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v54 - v15;
  v62 = sub_2EF0(&qword_319390, &qword_26CD38);
  v16 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v54 - v17;
  v18 = *(type metadata accessor for ListItemMetadataCreatorDescriptionView() + 36);
  sub_404E0(v13);
  sub_262700();
  v19 = v6[13];
  v57 = enum case for Font.Leading.tight(_:);
  v56 = v19;
  v19(v9);
  v20 = sub_2626E0();

  v21 = v6[1];
  v58 = v5;
  v55 = v21;
  v21(v9, v5);
  sub_65488(v13);
  v22 = (*(a3 + 16))(v64, v20, v63, a3);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28)
  {
    sub_404E0(v13);
    sub_262700();
    v29 = v58;
    v56(v9, v57, v58);
    sub_2626E0();

    v55(v9, v29);
    sub_65488(v13);
    v66 = v26 & 1;
    v30 = sub_262840();
    v31 = v22;
    v32 = v30;
    v34 = v33;
    v36 = v35;
    sub_39DBC(v31, v24, v26 & 1);

    _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
    v37 = sub_2627E0();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    sub_39DBC(v32, v34, v36 & 1);

    v44 = *(v59 + 36);
    KeyPath = swift_getKeyPath();
    v46 = v60;
    *&v60[v44] = KeyPath;
    sub_2EF0(&qword_3179C0, &qword_269D60);
    swift_storeEnumTagMultiPayload();
    *v46 = v37;
    *(v46 + 8) = v39;
    *(v46 + 16) = v41 & 1;
    *(v46 + 24) = v43;
    v47 = swift_getKeyPath();
    v48 = v61;
    sub_654F0(v46, v61);
    v49 = v48 + *(v62 + 36);
    *v49 = v47;
    *(v49 + 8) = 4;
    *(v49 + 16) = 0;
    sub_652CC();
    v50 = v65;
    sub_262C60();
    sub_65560(v48);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v65;
  }

  v52 = sub_2EF0(&qword_319380, &qword_26CD30);
  return (*(*(v52 - 8) + 56))(v50, v51, 1, v52);
}

uint64_t sub_64858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ListItemMetadataCreatorDescriptionView();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 36);

  return v7(v8, a1, a2);
}

void sub_64938(uint64_t a1)
{
  sub_64EF0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_649C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_261690() - 8);
  v7 = ((*(v6 + 64) + ((*(v6 + 80) + 2) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(*(a3 + 16) - 8);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 + v7 + 1;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v14 = (v13 & ~v10) + v11;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v9 > 0xFE)
      {
        v23 = *(*(*(a3 + 16) - 8) + 48);

        return v23((a1 + v13) & ~v10);
      }

      else
      {
        v22 = *(a1 + v7);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

void sub_64C00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_261690() - 8);
  v9 = ((*(v8 + 64) + ((*(v8 + 80) + 2) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = 8;
  if (v9 > 8)
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v10 | 1;
  v16 = (v10 | 1) + v13;
  v17 = (v16 & ~v13) + *(v11 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_49:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v12 > 0xFE)
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v13, a2);
  }

  else if (a2 > 0xFE)
  {
    v25 = a2 - 255;
    bzero(a1, v10 | 1);
    if (v15 <= 3)
    {
      *a1 = v25;
    }

    else
    {
      *a1 = v25;
    }
  }

  else
  {
    a1[v10] = -a2;
  }
}

void sub_64EF0()
{
  if (!qword_319360)
  {
    type metadata accessor for FontConstants.ListItem(255);
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_319360);
    }
  }
}

uint64_t sub_64F8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ListItemMetadataCreatorDescriptionView();
  v4 = *(*(v3 - 8) + 64);
  v5 = (v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)));
  sub_2EF0(&qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for FontConstants.Environment(0) + 24);
    v7 = sub_261690();
    (*(*(v7 - 8) + 8))(&v5[v6], v7);
  }

  else
  {
    v8 = *v5;
  }

  (*(*(v2 - 8) + 8))(&v5[*(v3 + 36)], v2);

  return swift_deallocObject();
}

uint64_t sub_650F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for ListItemMetadataCreatorDescriptionView() - 8) + 80);

  return sub_64398(a1, v5, v6, a2);
}

unint64_t sub_6518C()
{
  result = qword_319370;
  if (!qword_319370)
  {
    sub_2F9C(&qword_319368, &qword_26CD28);
    sub_65210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319370);
  }

  return result;
}

unint64_t sub_65210()
{
  result = qword_319378;
  if (!qword_319378)
  {
    sub_2F9C(&qword_319380, &qword_26CD30);
    sub_652CC();
    sub_65440(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319378);
  }

  return result;
}

unint64_t sub_652CC()
{
  result = qword_319388;
  if (!qword_319388)
  {
    sub_2F9C(&qword_319390, &qword_26CD38);
    sub_65384();
    sub_8E38(&qword_3189E0, &qword_3189E8, &unk_26F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319388);
  }

  return result;
}

unint64_t sub_65384()
{
  result = qword_319398;
  if (!qword_319398)
  {
    sub_2F9C(&qword_3193A0, &unk_26CD40);
    sub_65440(&qword_3193A8, type metadata accessor for DefaultBlendModeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319398);
  }

  return result;
}

uint64_t sub_65440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_65488(uint64_t a1)
{
  v2 = type metadata accessor for FontConstants.ListItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_654F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3193A0, &unk_26CD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_65560(uint64_t a1)
{
  v2 = sub_2EF0(&qword_319390, &qword_26CD38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UberNavigationBackButtonView.body.getter()
{
  sub_2EF0(&qword_3193C0, &qword_26CDC0);
  sub_260A70();
  sub_260A50();
  sub_2F9C(&qword_3193C8, &qword_26CDC8);
  sub_2F9C(&qword_3193D0, &qword_26CDD0);
  sub_66424();
  sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0);
  swift_getOpaqueTypeConformance2();
  sub_668A0(&qword_318518, &type metadata accessor for _JetLocalizeDefaultWorking);
  sub_668A0(&qword_318520, &type metadata accessor for _JetLocalizeDefaultFailed);
  return sub_260A80();
}

uint64_t sub_657E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v76 = a2;
  v2 = sub_260BD0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v74 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262370();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  __chkstk_darwin(v5);
  v71 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261FA0();
  v9 = *(v8 - 8);
  v69 = v8;
  v70 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v66 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_261760();
  v64 = *(v63 - 8);
  v12 = *(v64 + 64);
  __chkstk_darwin(v63);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_263AF0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_2EF0(&qword_316960, &unk_2689F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v57 - v19;
  v21 = sub_2EF0(&qword_3193F0, &qword_26CDE8);
  v58 = *(v21 - 8);
  v22 = *(v58 + 64);
  __chkstk_darwin(v21);
  v24 = &v57 - v23;
  v25 = sub_2EF0(&qword_3193E8, &qword_26CDE0);
  v59 = *(v25 - 8);
  v26 = *(v59 + 64);
  __chkstk_darwin(v25);
  v28 = &v57 - v27;
  v60 = sub_2EF0(&qword_3193E0, &qword_26CDD8);
  v62 = *(v60 - 8);
  v29 = *(v62 + 64);
  __chkstk_darwin(v60);
  v31 = &v57 - v30;
  v65 = sub_2EF0(&qword_319420, &qword_26CE80);
  v67 = *(v65 - 8);
  v32 = *(v67 + 64);
  __chkstk_darwin(v65);
  v57 = &v57 - v33;
  v68 = sub_2EF0(&qword_3193C8, &qword_26CDC8);
  v34 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v61 = &v57 - v35;
  v36 = sub_2610B0();
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  sub_263AC0();
  sub_264170();
  v82 = sub_264180();
  v83 = &protocol witness table for Models.FlowBackAction;
  sub_10934(&v79);
  sub_264150();
  sub_2EF0(&qword_319428, &qword_26CE88);
  sub_666D8();
  sub_260AA0();
  sub_261750();
  v37 = sub_8E38(&qword_3193F8, &qword_3193F0, &qword_26CDE8);
  v38 = sub_668A0(&qword_319400, &type metadata accessor for PlainButtonStyle);
  v39 = v63;
  sub_262A50();
  (*(v64 + 8))(v14, v39);
  (*(v58 + 8))(v24, v21);
  v40 = v66;
  sub_2618C0();
  v79 = v21;
  v80 = v39;
  v81 = v37;
  v82 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_668A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
  v43 = v69;
  sub_262AA0();
  (*(v70 + 8))(v40, v43);
  (*(v59 + 8))(v28, v25);
  v44 = v71;
  sub_262350();
  v79 = v25;
  v80 = v43;
  v81 = OpaqueTypeConformance2;
  v82 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v57;
  v47 = v60;
  sub_262C70();
  (*(v72 + 8))(v44, v73);
  v48 = v47;
  (*(v62 + 8))(v31, v47);
  v78 = 0;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  v49 = v75;
  sub_30CC(v75, &v79);
  v50 = sub_2627B0();
  v52 = v51;
  LOBYTE(v47) = v53;
  v79 = v48;
  v80 = v45;
  swift_getOpaqueTypeConformance2();
  v54 = v61;
  v55 = v65;
  sub_262BF0();
  sub_39DBC(v50, v52, v47 & 1);

  (*(v67 + 8))(v46, v55);
  v77 = v49;
  sub_2EF0(&qword_3193D0, &qword_26CDD0);
  sub_66424();
  sub_8E38(&qword_319408, &qword_3193D0, &qword_26CDD0);
  sub_262D60();
  return sub_668F0(v54);
}

uint64_t sub_66160@<X0>(_BYTE *a1@<X8>)
{
  v2 = &a1[*(sub_2EF0(&qword_319440, &unk_26CE90) + 36)];
  *v2 = swift_getKeyPath();
  v2[8] = 0;
  v3 = type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier();
  v4 = *(v3 + 20);
  *&v2[v4] = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v2[*(v3 + 24)] = 1;
  *a1 = 0;
  v5 = &a1[*(sub_2EF0(&qword_319428, &qword_26CE88) + 36)];
  v6 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v7 = enum case for Image.Scale.medium(_:);
  v8 = sub_2630F0();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_66298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_2630B0();
  v14[47] = 0;
  SymbolImage.Kind.accessibilityLocalizable.getter();
  sub_30CC(a1, v14);
  v7 = sub_2627B0();
  v9 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v11 = v10 & 1;
  *(a2 + 24) = v10 & 1;
  *(a2 + 32) = v12;

  sub_43B58(v7, v9, v11);

  sub_39DBC(v7, v9, v11);
}

uint64_t sub_663C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetLocalizeDefaultFailed.init(error:retry:)(a1, a2, a3);
}

unint64_t sub_66424()
{
  result = qword_3193D8;
  if (!qword_3193D8)
  {
    sub_2F9C(&qword_3193C8, &qword_26CDC8);
    sub_2F9C(&qword_3193E0, &qword_26CDD8);
    sub_2F9C(&qword_3193E8, &qword_26CDE0);
    sub_261FA0();
    sub_2F9C(&qword_3193F0, &qword_26CDE8);
    sub_261760();
    sub_8E38(&qword_3193F8, &qword_3193F0, &qword_26CDE8);
    sub_668A0(&qword_319400, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_668A0(&qword_318438, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_668A0(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3193D8);
  }

  return result;
}

unint64_t sub_666D8()
{
  result = qword_319430;
  if (!qword_319430)
  {
    sub_2F9C(&qword_319428, &qword_26CE88);
    sub_66790();
    sub_8E38(&qword_317590, &qword_317530, &qword_26FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319430);
  }

  return result;
}

unint64_t sub_66790()
{
  result = qword_319438;
  if (!qword_319438)
  {
    sub_2F9C(&qword_319440, &unk_26CE90);
    sub_6684C();
    sub_668A0(&qword_319450, type metadata accessor for UseDarkColorSchemeWhenInVibrantContextViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319438);
  }

  return result;
}

unint64_t sub_6684C()
{
  result = qword_319448;
  if (!qword_319448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319448);
  }

  return result;
}

uint64_t sub_668A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_668F0(uint64_t a1)
{
  v2 = sub_2EF0(&qword_3193C8, &qword_26CDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_66984(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2EF0(&qword_319458, &unk_26CF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_66A54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_319458, &unk_26CF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AlignmentImageView()
{
  result = qword_3194B8;
  if (!qword_3194B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_66B50()
{
  sub_57520();
  if (v0 <= 0x3F)
  {
    sub_66BD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_66BD4()
{
  if (!qword_3194C8)
  {
    sub_2616C0();
    v0 = sub_2611E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3194C8);
    }
  }
}

uint64_t sub_66C48@<X0>(id *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2630C0();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2616C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = *a1;
  [*a1 size];
  v44 = v18;
  v45 = v17;
  [v16 alignmentRectInsets];
  v43 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_261420();
  [v16 alignmentRectInsets];
  sub_2648C0();
  v26 = a1 + *(type metadata accessor for AlignmentImageView() + 20);
  sub_40CC8(v15);
  (*(v9 + 16))(v13, v15, v8);
  v27 = (*(v9 + 88))(v13, v8);
  v28 = UIUserInterfaceLayoutDirectionLeftToRight;
  if (v27 != enum case for LayoutDirection.leftToRight(_:))
  {
    if (v27 == enum case for LayoutDirection.rightToLeft(_:))
    {
      v28 = UIUserInterfaceLayoutDirectionRightToLeft;
    }

    else
    {
      (*(v9 + 8))(v13, v8);
      v28 = UIUserInterfaceLayoutDirectionLeftToRight;
    }
  }

  sub_673B4(0.0, 0.0, v45, v44, v43, v21, v23, v25);
  sub_2648B0(v28);
  (*(v9 + 8))(v15, v8);
  v29 = v16;
  sub_2630A0();
  v31 = v46;
  v30 = v47;
  (*(v46 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v47);
  v32 = sub_263100();

  (*(v31 + 8))(v7, v30);
  sub_2610D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  result = sub_262500();
  *a2 = v32;
  *(a2 + 8) = result;
  *(a2 + 16) = v34;
  *(a2 + 24) = v36;
  *(a2 + 32) = v38;
  *(a2 + 40) = v40;
  *(a2 + 48) = 0;
  return result;
}

double sub_66FE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v9 = v8;
  sub_67150(v3, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_672D0(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = *v3;
  [v12 size];
  v14 = v13;
  v16 = v15;
  [v12 alignmentRectInsets];
  v21 = sub_673B4(0.0, 0.0, v14, v16, v17, v18, v19, v20);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = sub_67334;
  *(a2 + 24) = v11;
  result = v21 / v22;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_67150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_671B4()
{
  v1 = (type metadata accessor for AlignmentImageView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v4 = v1[7];
  sub_2EF0(&qword_316C18, &unk_26F830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2616C0();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
    v6 = *(v3 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_672D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlignmentImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_67334@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlignmentImageView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_66C48(v4, a1);
}

unint64_t sub_673CC()
{
  result = qword_3194F8;
  if (!qword_3194F8)
  {
    sub_2F9C(&qword_319500, &qword_26CFB0);
    sub_67458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3194F8);
  }

  return result;
}

unint64_t sub_67458()
{
  result = qword_319508;
  if (!qword_319508)
  {
    sub_2F9C(&qword_319510, &qword_26CFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_319508);
  }

  return result;
}

uint64_t sub_674BC@<X0>(_BYTE *a1@<X8>)
{
  sub_2F264();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_6750C(char *a1)
{
  v2 = *a1;
  sub_2F264();
  return sub_261CC0();
}

uint64_t sub_67558()
{
  v1 = sub_260290();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_264410();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = *(v0 + 56);
  if (v17 <= 2)
  {
    *(v0 + 56);
LABEL_8:
    sub_2643A0();
    sub_260260();
    (*(v10 + 16))(v14, v16, v9);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v6, v8, v1);
    v25 = sub_264490();
    (*(v2 + 8))(v8, v1);
    (*(v10 + 8))(v16, v9);
    return v25;
  }

  if (v17 != 3)
  {
    if (v17 == 4)
    {
      v18 = *(v0 + 57);
    }

    else
    {
      *(v0 + 57);
    }

    goto LABEL_8;
  }

  v19 = *(v0 + 40);
  v29 = *(v0 + 48);
  v30 = v19;
  v20 = *(v0 + 16);

  sub_2643A0();
  sub_260260();
  (*(v10 + 16))(v14, v16, v9);
  type metadata accessor for BundleFinder();
  v21 = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:v21];
  sub_260260();
  sub_264480();
  (*(v2 + 8))(v8, v1);
  (*(v10 + 8))(v16, v9);
  sub_2EF0(&qword_316420, &qword_2681A0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_267D30;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_6C7C8();
  v24 = v29;
  *(v23 + 32) = v30;
  *(v23 + 40) = v24;
  v25 = sub_264430();

  return v25;
}

uint64_t sub_67E08()
{
  v1 = sub_260290();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = sub_264410();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_2643F0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = *v0;
  v18 = *(v0 + 8);
  v19 = *(v0 + 56);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v17 = *(v0 + 24);
      v25 = *(v0 + 32);
      v26 = *(v0 + 16);

      return v17;
    }

    goto LABEL_5;
  }

  if (v19 < 2)
  {
LABEL_5:
    v23 = *(v0 + 8);

    return v17;
  }

  sub_2643E0();
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_2643D0(v30);
  v29 = v17;
  sub_2643B0();
  v31._countAndFlagsBits = 0x73656761700ALL;
  v31._object = 0xE600000000000000;
  sub_2643D0(v31);
  sub_264400();
  sub_260260();
  (*(v28 + 16))(v12, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = v27;
  (*(v27 + 16))(v5, v7, v1);
  v17 = sub_264490();
  (*(v22 + 8))(v7, v1);
  (*(v28 + 8))(v14, v8);
  return v17;
}

uint64_t sub_68170()
{
  v1 = v0;
  v46 = sub_260290();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v46);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v47 = sub_264410();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v47);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_2643F0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = *(v0 + 8);
  v19 = *(v0 + 16);
  v20 = *(v0 + 56);
  if (v20 <= 2)
  {
    v21 = *(v0 + 24);
    if (*(v0 + 56))
    {
      if (v20 == 1)
      {

        if (!v21)
        {
          return v19;
        }

        sub_2643E0();
        v49._countAndFlagsBits = 0xD000000000000030;
        v49._object = 0x8000000000290D80;
        sub_2643D0(v49);
        v50._countAndFlagsBits = v19;
        v50._object = v21;
        sub_2643C0(v50);

        v51._countAndFlagsBits = 0x2E676E6F6C20;
        v51._object = 0xE600000000000000;
        sub_2643D0(v51);
        sub_264400();
        sub_260260();
        v22 = v47;
        (*(v9 + 16))(v13, v15, v47);
        type metadata accessor for BundleFinder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v24 = v46;
        (*(v2 + 16))(v6, v8, v46);
      }

      else
      {
        sub_2643E0();
        v56._countAndFlagsBits = 0xD000000000000024;
        v56._object = 0x8000000000290D10;
        sub_2643D0(v56);
        v48 = v18;
        sub_2643B0();
        v57._countAndFlagsBits = 0x6C20736567617020;
        v57._object = 0xEC0000002E676E6FLL;
        sub_2643D0(v57);
        sub_264400();
        sub_260260();
        v22 = v47;
        (*(v9 + 16))(v13, v15, v47);
        type metadata accessor for BundleFinder();
        v35 = swift_getObjCClassFromMetadata();
        [objc_opt_self() bundleForClass:v35];
        v24 = v46;
        (*(v2 + 16))(v6, v8, v46);
      }
    }

    else
    {

      sub_2643E0();
      v53._countAndFlagsBits = 0x64656873696E6946;
      v53._object = 0xEC000000206E6F20;
      sub_2643D0(v53);
      v54._countAndFlagsBits = v19;
      v54._object = v21;
      sub_2643C0(v54);

      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_2643D0(v55);
      sub_264400();
      sub_260260();
      v22 = v47;
      (*(v9 + 16))(v13, v15, v47);
      type metadata accessor for BundleFinder();
      v27 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v27];
      v24 = v46;
      (*(v2 + 16))(v6, v8, v46);
    }

    goto LABEL_15;
  }

  if (v20 != 3)
  {
    if (v20 == 4)
    {
      sub_2643E0();
      v52._countAndFlagsBits = 0x6461657220756F59;
      v52._object = 0xE900000000000020;
      sub_2643D0(v52);
      v48 = v19;
      sub_2643B0();
      v25._countAndFlagsBits = 0xD000000000000016;
      v25._object = 0x8000000000290CC0;
    }

    else
    {
      sub_2643E0();
      v58._countAndFlagsBits = 0x6461657220756F59;
      v58._object = 0xE900000000000020;
      sub_2643D0(v58);
      v48 = v19;
      sub_2643B0();
      v25._object = 0x8000000000290C70;
      v25._countAndFlagsBits = 0xD000000000000015;
    }

    sub_2643D0(v25);
    sub_264400();
    sub_260260();
    v22 = v47;
    (*(v9 + 16))(v13, v15, v47);
    type metadata accessor for BundleFinder();
    v26 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:v26];
    v24 = v46;
    (*(v2 + 16))(v6, v8, v46);
LABEL_15:
    v19 = sub_264490();
    (*(v2 + 8))(v8, v24);
    (*(v9 + 8))(v15, v22);
    return v19;
  }

  v28 = *(v0 + 48);
  v44 = *(v1 + 40);
  v29 = *v1;

  v45 = v28;

  if (v29 / 60.0 / 60.0 >= 5.0)
  {
    sub_2643A0();
    sub_260260();
    v37 = v47;
    (*(v9 + 16))(v13, v15, v47);
    type metadata accessor for BundleFinder();
    v38 = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass:v38];
    sub_260260();
    sub_264480();
    (*(v2 + 8))(v8, v46);
    (*(v9 + 8))(v15, v37);
    sub_2EF0(&qword_316420, &qword_2681A0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_269100;
    *(v40 + 56) = &type metadata for String;
    v41 = sub_6C7C8();
    v42 = v45;
    *(v40 + 32) = v44;
    *(v40 + 40) = v42;
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v41;
    *(v40 + 64) = v41;
    *(v40 + 72) = v18;
    *(v40 + 80) = v19;
  }

  else
  {

    sub_2643A0();
    sub_260260();
    v30 = v47;
    (*(v9 + 16))(v13, v15, v47);
    type metadata accessor for BundleFinder();
    v31 = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass:v31];
    sub_260260();
    sub_264480();
    (*(v2 + 8))(v8, v46);
    (*(v9 + 8))(v15, v30);
    sub_2EF0(&qword_316420, &qword_2681A0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_267D30;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_6C7C8();
    v34 = v45;
    *(v33 + 32) = v44;
    *(v33 + 40) = v34;
  }

  v19 = sub_264430();

  return v19;
}

uint64_t HighlightFrameViewModel.init(kind:style:exposureData:lowAssetCount:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = a1[2];
  *(a5 + 41) = *(a1 + 41);
  v10 = type metadata accessor for HighlightFrameViewModel(0);
  sub_6B914(a2, a5 + *(v10 + 24), type metadata accessor for HighlightCoverStyle);
  v11 = *(v10 + 28);
  v12 = sub_260550();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a3, v12);
  *(a5 + 57) = a4;
  return result;
}

uint64_t sub_68DB0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_68FB0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for HighlightFrame(0) + 20);
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

BOOL sub_69108()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HighlightFrame(0);
  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[15])
    {
      return 0;
    }
  }

  v10 = v0 + *(v6 + 28);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if (v11)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v11, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t HighlightFrame.id.getter()
{
  v1 = (v0 + *(type metadata accessor for HighlightFrame(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HighlightFrame.alignment.getter()
{
  v1 = (v0 + *(type metadata accessor for HighlightFrame(0) + 36));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t HighlightFrame.sharableView.getter()
{
  v1 = type metadata accessor for HighlightFrame(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_69890(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  sub_69594(&qword_319518, type metadata accessor for HighlightFrame);
  return sub_263310();
}

uint64_t HighlightFrame.exposureData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v4 = *(type metadata accessor for HighlightFrameViewModel(0) + 28);
  v5 = sub_260550();
  a1[3] = v5;
  a1[4] = sub_69594(&qword_317678, &type metadata accessor for YIRSourceData);
  a1[5] = sub_69594(&qword_317680, &type metadata accessor for YIRSourceData);
  v6 = sub_10934(a1);
  v7 = *(*(v5 - 8) + 16);

  return v7(v6, v3 + v4, v5);
}

uint64_t sub_69594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HighlightFrame.background.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_316D98, &unk_269120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30[-v5];
  v7 = type metadata accessor for HighlightCoverStyle(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v12 = type metadata accessor for HighlightFrameViewModel(0);
  sub_69890(v11 + *(v12 + 24), v10, type metadata accessor for HighlightCoverStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    v15 = sub_2EF0(&qword_319520, &unk_26CFE8);
    sub_22148(v10 + *(v15 + 48), v6, &qword_316D98, &unk_269120);
    v16 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
    *a1 = v14;
    sub_22148(v6, a1 + v16, &qword_316D98, &unk_269120);
LABEL_6:
    type metadata accessor for PageBackground(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!*(v14 + 16))
  {
    v25 = *v10;

    v26 = *(sub_2EF0(&qword_316DA8, &qword_269130) + 48);
    v27 = [objc_opt_self() systemGray6Color];
    *a1 = sub_262EE0();
    v28 = sub_261180();
    (*(*(v28 - 8) + 56))(a1 + v26, 1, 1, v28);
    goto LABEL_6;
  }

  v17 = *(v14 + 112);
  v35 = *(v14 + 96);
  v36 = v17;
  v18 = *(v14 + 144);
  v37 = *(v14 + 128);
  v38 = v18;
  v19 = *(v14 + 48);
  v31 = *(v14 + 32);
  v32 = v19;
  v20 = *(v14 + 80);
  v33 = *(v14 + 64);
  v34 = v20;
  sub_5757C(&v31, v30);

  v21 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v21;
  v22 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v22;
  v23 = v32;
  *a1 = v31;
  *(a1 + 16) = v23;
  v24 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v24;
  type metadata accessor for PageBackground(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_69890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HighlightFrame.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2601E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for HighlightFrame(0);
  v10 = a2 + v9[5];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a2 + v9[6];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a2 + v9[7];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = (a2 + v9[8]);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_264BC0(17);

  v21 = 0x6867696C68676948;
  v22 = 0xEF2D656D61724674;
  sub_2601D0();
  v14 = sub_2601C0();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v23._countAndFlagsBits = v14;
  v23._object = v16;
  sub_264530(v23);

  v17 = v22;
  *v13 = v21;
  v13[1] = v17;
  v18 = (a2 + v9[9]);
  *v18 = sub_263550();
  v18[1] = v19;
  return sub_6B914(a1, a2 + v9[10], type metadata accessor for HighlightFrameViewModel);
}

uint64_t sub_69B24@<X0>(_BYTE *a1@<X8>)
{
  sub_2F264();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_69B74(char *a1)
{
  v2 = *a1;
  sub_2F264();
  return sub_261CC0();
}

uint64_t HighlightFrame.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for HighlightFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_69890(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_6B914(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HighlightFrame);
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_2EF0(&qword_319528, &qword_26D0B8) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = sub_261180();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a1 = sub_6BA04;
  a1[1] = v7;
  return result;
}

__n128 sub_69D6C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_319750, &qword_26D2D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v13 - v6;
  *v7 = sub_261E50();
  *(v7 + 1) = 0x4040000000000000;
  v7[16] = 0;
  v8 = sub_2EF0(&qword_319758, &qword_26D2D8);
  sub_69ED8(a1, &v7[*(v8 + 44)]);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v7, a2, &qword_319750, &qword_26D2D0);
  v9 = a2 + *(sub_2EF0(&qword_319760, &qword_26D2E0) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_69ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v104 = sub_2EF0(&qword_319768, &qword_26D2E8);
  v3 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v5 = v90 - v4;
  v6 = sub_2EF0(&qword_319770, &qword_26D2F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v90 - v8;
  v10 = sub_2EF0(&qword_319778, &qword_26D2F8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v101 = v90 - v12;
  v13 = sub_2EF0(&qword_319780, &qword_26D300);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v97 = (v90 - v15);
  v96 = sub_2EF0(&qword_319788, &qword_26D308);
  v16 = *(*(v96 - 8) + 64);
  v17 = __chkstk_darwin(v96);
  v99 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v98 = v90 - v20;
  __chkstk_darwin(v19);
  v100 = v90 - v21;
  v22 = sub_2EF0(&qword_319790, &qword_26D310);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v90 - v24;
  v94 = sub_2EF0(&qword_319798, &qword_26D318);
  v93 = *(v94 - 8);
  v26 = *(v93 + 64);
  v27 = __chkstk_darwin(v94);
  v92 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v91 = v90 - v29;
  v30 = sub_2EF0(&qword_3197A0, &qword_26D320);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v95 = v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v103 = v90 - v34;
  v35 = type metadata accessor for HighlightCoverStyle(0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = a1 + *(type metadata accessor for HighlightFrame(0) + 40);
  v40 = type metadata accessor for HighlightFrameViewModel(0);
  sub_69890(v39 + *(v40 + 24), v38, type metadata accessor for HighlightCoverStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = *v38;
  if (EnumCaseMultiPayload == 1)
  {
    v43 = *v38;

    v44 = *(sub_2EF0(&qword_319520, &unk_26CFE8) + 48);
    *v5 = sub_261E50();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v45 = sub_2EF0(&qword_3197A8, &qword_26D328);
    sub_6B234(&v5[*(v45 + 44)]);
    sub_8198(v5, v9, &qword_319768, &qword_26D2E8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3197B0, &qword_319778, &qword_26D2F8);
    sub_8E38(&qword_3197B8, &qword_319768, &qword_26D2E8);
    sub_261F80();
    sub_8E80(v5, &qword_319768, &qword_26D2E8);
    v46 = &qword_316D98;
    v47 = &unk_269120;
    v48 = v38 + v44;
  }

  else
  {
    v90[1] = v6;
    v90[2] = v10;
    sub_261420();
    v50 = v49;
    sub_261420();
    sub_2649B0();
    if (v51 < 0.6 || v51 > 0.8)
    {
      if (v51 < 0.8 || v51 > 1.2)
      {
        if (v51 < 1.2)
        {
          v52 = 3;
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 1;
      }
    }

    else
    {
      v52 = 2;
    }

    v53 = *(v42 + 16);
    if (v53 >= 6)
    {
      sub_C8914(v42, v42 + 32, 0, 0xBuLL);
      v55 = v54;

      v53 = *(v55 + 16);
      v42 = v55;
    }

    if (v53)
    {
      v56 = v50 + -32.0;
      memmove(__dst, (v42 + 32), 0x80uLL);
      v57 = sub_2F8B8(__dst);
      v58 = sub_2F950(__dst);
      if (v57)
      {
        v59 = 1.0;
        if (v57 != 1)
        {
          v59 = 0.641025641;
        }
      }

      else
      {
        v59 = *(v58 + 16);
      }

      v60 = sub_C8DDC(v42, v56, v56 * dbl_26D468[v52], v59);
      v62 = v61;
      v63 = v60;

      *v25 = sub_261E50();
      *(v25 + 1) = 0;
      v25[16] = 1;
      v64 = sub_2EF0(&qword_3197C0, &qword_26D330);
      sub_6AAD0(v63, a1, &v25[*(v64 + 44)], v62, v59);

      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      sub_261830();
      v65 = v92;
      sub_22148(v25, v92, &qword_319790, &qword_26D310);
      v66 = v94;
      v67 = (v65 + *(v94 + 36));
      v68 = __dst[13];
      v67[4] = __dst[12];
      v67[5] = v68;
      v67[6] = __dst[14];
      v69 = __dst[9];
      *v67 = __dst[8];
      v67[1] = v69;
      v70 = __dst[11];
      v67[2] = __dst[10];
      v67[3] = v70;
      v71 = v65;
      v72 = v91;
      sub_22148(v71, v91, &qword_319798, &qword_26D318);
      v73 = v72;
      v74 = v103;
      sub_22148(v73, v103, &qword_319798, &qword_26D318);
      (*(v93 + 56))(v74, 0, 1, v66);
    }

    else
    {

      (*(v93 + 56))(v103, 1, 1, v94);
    }

    v75 = sub_261D10();
    v76 = v97;
    *v97 = v75;
    *(v76 + 8) = 0x4030000000000000;
    *(v76 + 16) = 0;
    v77 = sub_2EF0(&qword_3197C8, &qword_26D338);
    sub_6AFE8((v76 + *(v77 + 44)));
    sub_261420();
    sub_263550();
    sub_261830();
    v78 = v98;
    sub_22148(v76, v98, &qword_319780, &qword_26D300);
    v79 = (v78 + *(v96 + 36));
    v80 = __dst[5];
    v79[4] = __dst[4];
    v79[5] = v80;
    v79[6] = __dst[6];
    v81 = __dst[1];
    *v79 = __dst[0];
    v79[1] = v81;
    v82 = __dst[3];
    v79[2] = __dst[2];
    v79[3] = v82;
    v83 = v100;
    sub_22148(v78, v100, &qword_319788, &qword_26D308);
    v84 = v103;
    v85 = v95;
    sub_8198(v103, v95, &qword_3197A0, &qword_26D320);
    v86 = v99;
    sub_8198(v83, v99, &qword_319788, &qword_26D308);
    v87 = v101;
    sub_8198(v85, v101, &qword_3197A0, &qword_26D320);
    v88 = sub_2EF0(&qword_3197D0, &qword_26D340);
    sub_8198(v86, v87 + *(v88 + 48), &qword_319788, &qword_26D308);
    sub_8E80(v86, &qword_319788, &qword_26D308);
    sub_8E80(v85, &qword_3197A0, &qword_26D320);
    sub_8198(v87, v9, &qword_319778, &qword_26D2F8);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_3197B0, &qword_319778, &qword_26D2F8);
    sub_8E38(&qword_3197B8, &qword_319768, &qword_26D2E8);
    sub_261F80();
    sub_8E80(v87, &qword_319778, &qword_26D2F8);
    sub_8E80(v83, &qword_319788, &qword_26D308);
    v48 = v84;
    v46 = &qword_3197A0;
    v47 = &qword_26D320;
  }

  return sub_8E80(v48, v46, v47);
}

uint64_t sub_6AAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v58 = a3;
  v9 = type metadata accessor for HighlightFrame(0);
  v10 = *(v9 - 8);
  v57 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2EF0(&qword_3197E0, &qword_26D400);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v51[-v16];
  v18 = sub_2EF0(&qword_3197E8, &qword_26D408);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v51[-v21];
  v23 = sub_2EF0(&qword_3197F0, &qword_26D410);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v54 = &v51[-v26];
  v27 = sub_2EF0(&qword_3197F8, &qword_26D418);
  v28 = *(v27 - 8);
  v56 = v27 - 8;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27 - 8);
  v55 = &v51[-v30];
  v31 = (v17 + *(v14 + 44));
  v32 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);

  sub_68DB0(v31 + v32);
  *v31 = swift_getKeyPath();
  *v17 = a1;
  v17[1] = a4;
  v17[2] = a5;
  *(v17 + 24) = 0;
  v33 = a2;
  if (sub_68FB0())
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.8;
  }

  sub_263720();
  v36 = v35;
  v38 = v37;
  v53 = v22;
  sub_22148(v17, v22, &qword_3197E0, &qword_26D400);
  v39 = &v22[*(v19 + 44)];
  *v39 = v34;
  v39[1] = v34;
  *(v39 + 2) = v36;
  *(v39 + 3) = v38;
  v52 = sub_68FB0();
  sub_69890(a2, v12, type metadata accessor for HighlightFrame);
  v40 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v41 = swift_allocObject();
  sub_6B914(v12, v41 + v40, type metadata accessor for HighlightFrame);
  v42 = v54;
  sub_22148(v53, v54, &qword_3197E8, &qword_26D408);
  v43 = &v42[*(v24 + 44)];
  *v43 = v52 & 1;
  *(v43 + 1) = sub_6C824;
  *(v43 + 2) = v41;
  if (sub_68FB0())
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.8;
  }

  v45 = v55;
  sub_22148(v42, v55, &qword_3197F0, &qword_26D410);
  *&v45[*(v56 + 44)] = v44;
  v46 = sub_68FB0();
  sub_69890(v33, v12, type metadata accessor for HighlightFrame);
  v47 = swift_allocObject();
  sub_6B914(v12, v47 + v40, type metadata accessor for HighlightFrame);
  v48 = v58;
  sub_22148(v45, v58, &qword_3197F8, &qword_26D418);
  result = sub_2EF0(&qword_319800, &qword_26D450);
  v50 = v48 + *(result + 36);
  *v50 = v46 & 1;
  *(v50 + 8) = sub_6C83C;
  *(v50 + 16) = v47;
  return result;
}

uint64_t sub_6AF34()
{
  if (sub_69108())
  {
    sub_263630();
    sub_2635B0();
  }

  return sub_261260();
}

uint64_t sub_6AF9C()
{
  if (sub_69108())
  {
    sub_2635D0();
  }

  return sub_261260();
}

uint64_t sub_6AFE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(type metadata accessor for HighlightFrame(0) + 40);
  v3 = sub_67558();
  v30 = v4;
  v31 = v3;
  v29 = sub_67E08();
  v6 = v5;
  v7 = sub_68170();
  v9 = v8;
  v10 = type metadata accessor for TextLockup();
  v11 = v10[13];
  v12 = sub_2625C0();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = sub_261E60();
  v14 = sub_263580();
  v16 = v15;
  v17 = v10[17];
  v18 = enum case for DynamicTypeSize.accessibility2(_:);
  v19 = sub_261690();
  (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v20 = v10[5];
  *(a1 + v20) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v21 = a1 + v10[6];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = a1 + v10[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a1 + v10[8];
  result = swift_getKeyPath();
  *v23 = result;
  v23[8] = 0;
  *(a1 + v10[9]) = 5;
  v25 = (a1 + v10[10]);
  *v25 = v31;
  v25[1] = v30;
  v26 = (a1 + v10[11]);
  *v26 = v29;
  v26[1] = v6;
  v26[2] = 0;
  v27 = (a1 + v10[12]);
  *v27 = v7;
  v27[1] = v9;
  *(a1 + v10[14]) = v13;
  v28 = (a1 + v10[15]);
  *v28 = v14;
  v28[1] = v16;
  *(a1 + v10[16]) = 0;
  return result;
}

uint64_t sub_6B234@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TextLockup();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v39 - v8);
  v10 = *(type metadata accessor for HighlightFrame(0) + 40);
  v11 = sub_67558();
  v43 = v12;
  v44 = v11;
  v13 = sub_67E08();
  v41 = v14;
  v42 = v13;
  v40 = sub_68170();
  v16 = v15;
  v17 = v3[15];
  v18 = sub_2625C0();
  (*(*(v18 - 8) + 56))(v9 + v17, 1, 1, v18);
  v19 = sub_261E60();
  v20 = sub_263580();
  v22 = v21;
  v23 = v3[19];
  v24 = enum case for DynamicTypeSize.accessibility2(_:);
  v25 = sub_261690();
  (*(*(v25 - 8) + 104))(v9 + v23, v24, v25);
  *v9 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v26 = v3[7];
  *(v9 + v26) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v27 = v9 + v3[8];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v9 + v3[9];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v9 + v3[10];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *(v9 + v3[11]) = 5;
  v30 = (v9 + v3[12]);
  v31 = v43;
  *v30 = v44;
  v30[1] = v31;
  v32 = (v9 + v3[13]);
  v33 = v41;
  *v32 = v42;
  v32[1] = v33;
  v32[2] = 0;
  v34 = (v9 + v3[14]);
  *v34 = v40;
  v34[1] = v16;
  *(v9 + v3[16]) = v19;
  v35 = (v9 + v3[17]);
  *v35 = v20;
  v35[1] = v22;
  *(v9 + v3[18]) = 0;
  sub_69890(v9, v7, type metadata accessor for TextLockup);
  *a1 = 0;
  *(a1 + 8) = 1;
  v36 = sub_2EF0(&qword_319808, &unk_26D458);
  sub_69890(v7, a1 + *(v36 + 48), type metadata accessor for TextLockup);
  v37 = a1 + *(v36 + 64);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_6C8D8(v9);
  return sub_6C8D8(v7);
}

uint64_t sub_6B558(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  sub_69890(v3, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  sub_69594(&qword_319518, type metadata accessor for HighlightFrame);
  return sub_263310();
}

uint64_t sub_6B620(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_6B65C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_6B66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 40);
  v5 = *(type metadata accessor for HighlightFrameViewModel(0) + 28);
  v6 = sub_260550();
  a2[3] = v6;
  a2[4] = sub_69594(&qword_317678, &type metadata accessor for YIRSourceData);
  a2[5] = sub_69594(&qword_317680, &type metadata accessor for YIRSourceData);
  v7 = sub_10934(a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(v7, v4 + v5, v6);
}

uint64_t sub_6B768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_69890(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightFrame);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_6B914(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for HighlightFrame);
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(sub_2EF0(&qword_319528, &qword_26D0B8) + 36));
  v10 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = sub_261180();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  *a2 = sub_6C940;
  a2[1] = v7;
  return result;
}

uint64_t sub_6B914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_6B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 < 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a8 - 4 >= 2)
  {
    if (a8 != 3)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_6BA08(uint64_t a1)
{
  result = sub_69594(&qword_319530, type metadata accessor for HighlightFrame);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6BA60(uint64_t a1)
{
  result = sub_69594(&qword_319518, type metadata accessor for HighlightFrame);
  *(a1 + 8) = result;
  return result;
}

void sub_6BAD4()
{
  sub_6BB48();
  if (v0 <= 0x3F)
  {
    sub_6BBB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_6BB48()
{
  if (!qword_3195B8)
  {
    sub_6C360(0, &qword_3195C0, &type metadata for CoverViewModel, &type metadata accessor for Array);
    if (!v1)
    {
      atomic_store(v0, &qword_3195B8);
    }
  }
}

void sub_6BBB4()
{
  if (!qword_3195C8)
  {
    sub_2F9C(&qword_316D98, &unk_269120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_3195C8);
    }
  }
}

uint64_t sub_6BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 57);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for HighlightCoverStyle(0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_260550();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_6BD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 57) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for HighlightCoverStyle(0);
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
      v13 = sub_260550();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_6BE98()
{
  result = type metadata accessor for HighlightCoverStyle(319);
  if (v1 <= 0x3F)
  {
    result = sub_260550();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}