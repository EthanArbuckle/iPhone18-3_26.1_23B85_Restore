id sub_10003812C()
{
  sub_1000D1CDC();
  v2 = v1 + -1.0;
  v3 = v0 + *(type metadata accessor for TVWidgetCell(0) + 20);
  v4 = *(v3 + 72);
  v5 = v2 - v4;
  sub_1000D1CDC();
  v7 = v6;
  sub_10001C178(v30);
  v32[4] = v30[4];
  v32[5] = v30[5];
  v32[6] = v30[6];
  v32[7] = v30[7];
  v32[0] = v30[0];
  v32[1] = v30[1];
  v32[2] = v30[2];
  v32[3] = v30[3];
  v35 = v30[10];
  __asm { FMOV            V0.2D, #6.0 }

  v25 = _Q0;
  v32[8] = _Q0;
  v34 = 0;
  v33 = 0;
  result = sub_10003AADC(v32);
  v14 = v7 - ceil(v5 * *v32);
  v15 = *(v3 + 56);
  v16 = v14 - v15;
  if (v14 - v15 < 0.0)
  {
    sub_10003AFB0();
    v17 = sub_1000D383C();
    sub_1000D37AC();
    sub_1000D1B2C();

    result = sub_100002C80();
    if (result)
    {
      v18 = result;
      sub_100006334(&qword_100122C50);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000E3AA0;
      *(v19 + 56) = &type metadata for CGFloat;
      v20 = sub_10003AFFC();
      *(v19 + 64) = v20;
      *(v19 + 32) = v16;
      sub_1000D1CDC();
      *(v19 + 96) = &type metadata for CGFloat;
      *(v19 + 104) = v20;
      *(v19 + 72) = v21;
      *(v19 + 136) = &type metadata for CGFloat;
      *(v19 + 144) = v20;
      *(v19 + 112) = v4;
      sub_1000D37AC();
      sub_1000D1B2C();

      result = sub_100002C80();
      if (result)
      {
        v22 = result;
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1000E2080;
        *(v23 + 56) = &type metadata for CGFloat;
        *(v23 + 64) = v20;
        *(v23 + 32) = v15;
        sub_10001C178(v31);
        v26[4] = v31[4];
        v26[5] = v31[5];
        v26[6] = v31[6];
        v26[7] = v31[7];
        v26[0] = v31[0];
        v26[1] = v31[1];
        v26[2] = v31[2];
        v26[3] = v31[3];
        v29 = v31[10];
        v26[8] = v25;
        v27 = 0;
        v28 = 0;
        sub_10003AADC(v26);
        v24 = *&v26[0];
        *(v23 + 96) = &type metadata for CGFloat;
        *(v23 + 104) = v20;
        *(v23 + 72) = v24;
        sub_1000D37AC();
        sub_1000D1B2C();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000383F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v34 = sub_1000D219C();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000D22FC();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006334(&qword_100124360);
  __chkstk_darwin(v7);
  v9 = (&v29 - v8);
  v29 = sub_100006334(&qword_100124368);
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v29 - v11;
  *v9 = sub_1000D2B1C();
  v9[1] = v13;
  v14 = sub_100006334(&qword_100124370);
  sub_1000387F4(v2, v9 + *(v14 + 44));
  v15 = v2 + *(type metadata accessor for TVWidgetFeatured(0) + 20);
  v16 = *(v15 + 88);
  v17 = v9 + *(v7 + 36);
  v18 = *(sub_1000D1E1C() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = sub_1000D217C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  *&v17[*(sub_100006334(&qword_100124378) + 36)] = 256;
  sub_1000D22DC();
  v21 = sub_10003A674();
  sub_1000D276C();
  (*(v4 + 8))(v6, v30);
  sub_10000F938(v9, &qword_100124360);
  v22 = v31;
  sub_1000D218C();
  v35 = v7;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v33;
  v24 = v29;
  sub_1000D26DC();
  (*(v32 + 8))(v22, v34);
  (*(v10 + 8))(v12, v24);
  v25 = v23 + *(sub_100006334(&qword_1001243A0) + 36);
  sub_1000D1EEC();
  v26 = *(v15 + 40);
  LODWORD(v23) = *(v15 + 36);
  v27 = sub_1000D230C();
  *(v25 + *(v27 + 20)) = v26;
  *(v25 + *(v27 + 24)) = v23;
}

uint64_t sub_1000387F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = sub_100006334(&qword_1001243A8);
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v44 = (&v42 - v4);
  v5 = sub_100006334(&qword_1001243B0);
  v6 = __chkstk_darwin(v5 - 8);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v42 - v8;
  v43 = sub_1000D27FC();
  v9 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TVWidgetFeatured(0);
  v13 = *(a1 + *(v12 + 28));
  v14 = *(v13 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image);
  v46 = v13;
  v15 = *(v13 + 73);
  v16 = (a1 + *(v12 + 20));
  v17 = v16[81];
  v18 = v16[82];
  v19 = v14;
  v45 = a1;
  sub_100038FBC(v17, v18, &v83);
  *&v82 = v14;
  BYTE8(v82) = v15;
  if (v16[80] == 1)
  {
    v20 = sub_1000D2B5C();
    v22 = v21;
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v43);
    v23 = sub_1000D288C();
    *&v52 = v20;
    *(&v52 + 1) = v22;
    *&v53 = v23;
    *(&v53 + 9) = v79[0];
    HIDWORD(v53) = *(v79 + 3);
    BYTE8(v53) = 2;
    __asm { FMOV            V1.2D, #1.0 }

    v54 = xmmword_1000E3AB0;
    v55 = _Q1;
    v81[8] = v90;
    v81[9] = v91;
    v81[10] = v92;
    v81[11] = v93;
    v81[4] = v86;
    v81[5] = v87;
    v81[6] = v88;
    v81[7] = v89;
    v81[0] = v82;
    v81[1] = v83;
    v81[2] = v84;
    v81[3] = v85;
    v81[12] = v52;
    v81[13] = v53;
    v81[14] = xmmword_1000E3AB0;
    v81[15] = _Q1;
    v56[0] = v20;
    v56[1] = v22;
    v56[2] = v23;
    v57 = 2;
    *v58 = v79[0];
    *&v58[3] = *(v79 + 3);
    v59 = xmmword_1000E3AB0;
    v60 = _Q1;
    sub_10003A870(&v82, v80);
    sub_10000F8D0(&v52, v80, &qword_1001243D8);
    sub_10000F938(v56, &qword_1001243D8);
    v73 = v81[12];
    v74 = v81[13];
    v75 = v81[14];
    v76 = v81[15];
    v69 = v81[8];
    v70 = v81[9];
    v71 = v81[10];
    v72 = v81[11];
    v65 = v81[4];
    v66 = v81[5];
    v67 = v81[6];
    v68 = v81[7];
    v61 = v81[0];
    v62 = v81[1];
    v63 = v81[2];
    v64 = v81[3];
    v77[12] = v81[12];
    v77[13] = v81[13];
    v77[14] = v81[14];
    v77[15] = v81[15];
    v77[8] = v81[8];
    v77[9] = v81[9];
    v77[10] = v81[10];
    v77[11] = v81[11];
    v77[4] = v81[4];
    v77[5] = v81[5];
    v77[6] = v81[6];
    v77[7] = v81[7];
    v77[0] = v81[0];
    v77[1] = v81[1];
    v77[2] = v81[2];
    v77[3] = v81[3];
    sub_10000F8D0(&v61, v80, &qword_1001243B8);
    sub_10000F938(v77, &qword_1001243B8);
    v80[12] = v73;
    v80[13] = v74;
    v80[14] = v75;
    v80[15] = v76;
    v80[8] = v69;
    v80[9] = v70;
    v80[10] = v71;
    v80[11] = v72;
    v80[4] = v65;
    v80[5] = v66;
    v80[6] = v67;
    v80[7] = v68;
    v80[0] = v61;
    v80[1] = v62;
    v80[2] = v63;
    v80[3] = v64;
    sub_10003A8CC(v80);
    memcpy(v79, v80, 0x101uLL);
    sub_10000F8D0(&v61, v81, &qword_1001243B8);
    sub_100006334(&qword_1001243B8);
    sub_10003A764();
    sub_10003A81C();
    sub_1000D229C();
    sub_10003A8D4(&v82);
    sub_10000F938(&v61, &qword_1001243B8);
  }

  else
  {
    v80[8] = v90;
    v80[9] = v91;
    v80[10] = v92;
    v80[11] = v93;
    v80[4] = v86;
    v80[5] = v87;
    v80[6] = v88;
    v80[7] = v89;
    v80[0] = v82;
    v80[1] = v83;
    v80[2] = v84;
    v80[3] = v85;
    sub_10003A758(v80);
    memcpy(v79, v80, 0x101uLL);
    sub_100006334(&qword_1001243B8);
    sub_10003A764();
    sub_10003A81C();
    sub_1000D229C();
  }

  memcpy(v78, v81, sizeof(v78));
  v29 = v46[3];
  v30 = v49;
  if (v29 && ((v29 & 0x2000000000000000) != 0 ? (v31 = HIBYTE(v29) & 0xF) : (v31 = v46[2] & 0xFFFFFFFFFFFFLL), v31) || (v32 = v46[5]) != 0 && ((v32 & 0x2000000000000000) != 0 ? (v33 = HIBYTE(v32) & 0xF) : (v33 = v46[4] & 0xFFFFFFFFFFFFLL), v33))
  {
    v34 = sub_1000D21BC();
    v35 = v44;
    *v44 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = sub_100006334(&qword_1001243F0);
    sub_100039488(v45, v35 + *(v36 + 44));
    sub_10000F998(v35, v30, &qword_1001243A8);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  (*(v47 + 56))(v30, v37, 1, v48);
  v38 = v50;
  sub_10000F8D0(v30, v50, &qword_1001243B0);
  memcpy(v79, v78, 0x101uLL);
  v39 = v51;
  memcpy(v51, v78, 0x101uLL);
  v40 = sub_100006334(&qword_1001243E0);
  sub_10000F8D0(v38, v39 + *(v40 + 48), &qword_1001243B0);
  sub_10000F8D0(v79, v80, &qword_1001243E8);
  sub_10000F938(v30, &qword_1001243B0);
  sub_10000F938(v38, &qword_1001243B0);
  memcpy(v80, v78, 0x101uLL);
  return sub_10000F938(v80, &qword_1001243E8);
}

__n128 sub_100038FBC@<Q0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = sub_1000D323C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D27FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C178(v69);
  v66 = v69[0];
  v67 = v69[1];
  v68 = v69[2];
  v65[0] = *v70;
  *(v65 + 3) = *&v70[3];
  v34 = v74;
  v12 = v75;
  v13 = v76;
  v14 = v77;
  v15 = v78;
  if (a1)
  {
    v79[0] = v71;
    v79[1] = v72;
    v79[2] = v73;
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
    v33 = sub_1000D288C();
    sub_10000F938(v79, &qword_100124410);
    v31 = 0x3FE0000000000000;
    v32 = 0;
    v29 = 0x3FD0000000000000;
    v30 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
  }

  else
  {
    v33 = v71;
    v31 = v72;
    v32 = *(&v71 + 1);
    v27 = *(&v72 + 1);
    v29 = *(&v73 + 1);
    v30 = v73;
  }

  v16 = *(type metadata accessor for TVWidgetFeatured(0) + 24);
  v17 = *(v6 + 104);
  v18 = v28;
  v17(v28, enum case for WidgetFamily.systemLarge(_:), v5);
  sub_1000353E4(&qword_1001232E8, &type metadata accessor for WidgetFamily);
  v26[1] = v16;
  sub_1000D369C();
  v19 = v18;
  sub_1000D369C();
  v20 = *(v6 + 8);
  v20(v19, v5);
  if (*&v48[0] == v37)
  {
    v12 = 11.0;
    v13 = 16.0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v17(v19, enum case for WidgetFamily.systemExtraLarge(_:), v5);
    sub_1000D369C();
    sub_1000D369C();
    v20(v19, v5);
    if (*&v48[0] == v37)
    {
      v13 = 8.0;
      v15 = 0;
      v14 = 0;
      v12 = 8.0;
    }
  }

  v37 = v66;
  v38 = v67;
  v39 = v68;
  v40.n128_u64[0] = 0;
  v40.n128_u8[8] = v35 & 1;
  *(&v40.n128_u32[2] + 1) = v65[0];
  v40.n128_u32[3] = *(v65 + 3);
  *&v41 = v33;
  *(&v41 + 1) = v32;
  *&v42 = v31;
  *(&v42 + 1) = v27;
  *&v43 = v30;
  *(&v43 + 1) = v29;
  v48[1] = v67;
  v48[2] = v68;
  *&v44 = v34;
  *(&v44 + 1) = 0x4034000000000000;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  v47 = xmmword_1000E3AC0;
  v48[0] = v66;
  v49 = 0;
  v50 = v35 & 1;
  *&v51[3] = *(v65 + 3);
  *v51 = v65[0];
  v52 = v33;
  v53 = v32;
  v54 = v31;
  v55 = v27;
  v56 = v30;
  v57 = v29;
  v58 = v34;
  v59 = 0x4034000000000000;
  v60 = v12;
  v61 = v13;
  v62 = v14;
  v63 = v15;
  v64 = xmmword_1000E3AC0;
  sub_10003AA80(&v37, &v36);
  sub_10003AADC(v48);
  v21 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v21;
  *(a3 + 160) = v47;
  v22 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v22;
  v23 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v23;
  v24 = v38;
  *a3 = v37;
  *(a3 + 16) = v24;
  result = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_100039488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100006334(&qword_100122E90);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v61 - v7;
  v8 = type metadata accessor for TVWidgetMetadataView();
  __chkstk_darwin(v8);
  v10 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_100006334(&qword_1001243F8);
  __chkstk_darwin(v64);
  v68 = &v61 - v11;
  v67 = sub_100006334(&qword_100124400);
  v12 = __chkstk_darwin(v67);
  v70 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v66 = &v61 - v15;
  __chkstk_darwin(v14);
  v69 = &v61 - v16;
  v65 = type metadata accessor for TVWidgetFeatured(0);
  v17 = *(a1 + *(v65 + 28));
  v18 = v17[3];
  v63 = v17[2];
  v19 = v17[5];
  v62 = v17[4];
  if (*(v17 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) == 1)
  {
    v20 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
    swift_beginAccess();
    sub_10000F8D0(v17 + v20, v72, &qword_100122E90);
  }

  else
  {
    v21 = sub_1000D19FC();
    (*(*(v21 - 8) + 56))(v72, 1, 1, v21);
  }

  v22 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  swift_beginAccess();
  sub_10000F8D0(v17 + v22, v6, &qword_100122E90);

  sub_100039B04(v6, type metadata accessor for TVWidgetFeatured, v76);
  sub_10000F938(v6, &qword_100122E90);
  *v10 = v63;
  v10[1] = v18;
  v10[2] = v62;
  v10[3] = v19;
  sub_10000F998(v72, v10 + *(v8 + 24), &qword_100122E90);
  v23 = (v10 + *(v8 + 28));
  v24 = v77[0];
  v23[2] = v76[2];
  v23[3] = v24;
  *(v23 + 57) = *(v77 + 9);
  v25 = v76[1];
  *v23 = v76[0];
  v23[1] = v25;
  v26 = sub_1000D238C();
  v27 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v26)
  {
    v27 = sub_1000D239C();
  }

  sub_1000D1B9C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v68;
  sub_10003AB48(v10, v68, type metadata accessor for TVWidgetMetadataView);
  v37 = v36 + *(v64 + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  v38 = sub_1000D23AC();
  v39 = sub_1000D239C();
  sub_1000D239C();
  if (sub_1000D239C() != v38)
  {
    v39 = sub_1000D239C();
  }

  sub_1000D1B9C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v66;
  sub_10000F998(v36, v66, &qword_1001243F8);
  v49 = v48 + *(v67 + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  v50 = v48;
  v51 = v69;
  sub_10000F998(v50, v69, &qword_100124400);
  sub_10001BE10();
  sub_1000D2B5C();
  sub_1000D1C8C();
  v72 = v78;
  v68 = v80;
  v52 = v82;
  v53 = v83;
  v75 = 1;
  v74 = v79;
  v73 = v81;
  v54 = v70;
  sub_10000F8D0(v51, v70, &qword_100124400);
  v55 = v75;
  v56 = v74;
  v57 = v73;
  v58 = v71;
  sub_10000F8D0(v54, v71, &qword_100124400);
  v59 = v58 + *(sub_100006334(&qword_100124408) + 48);
  *v59 = 0;
  *(v59 + 8) = v55;
  *(v59 + 16) = v72;
  *(v59 + 24) = v56;
  *(v59 + 32) = v68;
  *(v59 + 40) = v57;
  *(v59 + 48) = v52;
  *(v59 + 56) = v53;
  sub_10000F938(v51, &qword_100124400);
  return sub_10000F938(v54, &qword_100124400);
}

__n128 sub_100039B04@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a1;
  v44 = a3;
  v4 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v39 = sub_1000D19FC();
  v7 = *(v39 - 8);
  v8 = __chkstk_darwin(v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v36 = &v35 - v14;
  v15 = sub_1000D1DBC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088034(&v64);
  v62 = v64;
  v63 = v65;
  v61 = v70;
  v60[0] = *v71;
  *(v60 + 3) = *&v71[3];
  v74 = v64;
  v75 = v65;
  v76 = v66;
  v37 = v69;
  v38 = v66;
  v77 = v67;
  v78 = v68;
  v43 = v68;
  v79 = v69;
  v80 = v70;
  *v81 = *v71;
  *&v81[3] = *&v71[3];
  v82 = v72;
  v42 = v73;
  v83 = v73;
  v85[0] = v67;
  v19 = *(v40(0) + 24);
  sub_1000B2124(v18);
  v20 = sub_100087DDC(v3 + v19, v18);
  (*(v16 + 8))(v18, v15);
  v21 = v39;
  v22 = sub_1000D23CC();
  sub_10003A928(v85);
  sub_10000F8D0(v41, v6, &qword_100122E90);
  if ((*(v7 + 48))(v6, 1, v21) == 1)
  {
    sub_10000F938(v6, &qword_100122E90);
    v24 = v37;
    v23 = v38;
  }

  else
  {
    v25 = v36;
    (*(v7 + 32))(v36, v6, v21);
    sub_1000D19EC();
    sub_1000D19DC();
    v26 = *(v7 + 8);
    v26(v10, v21);
    v27 = sub_1000D199C();
    v26(v13, v21);
    if (v27)
    {
      sub_1000D19EC();
      sub_1000D19DC();
      v26(v10, v21);
      v28 = sub_1000D199C();
      v26(v13, v21);
      if (v28)
      {
        v24 = 64;
      }

      else
      {
        v24 = 32;
      }
    }

    else
    {
      v24 = 16;
    }

    v61 = 0;
    sub_1000D19EC();
    sub_1000D19DC();
    v26(v10, v21);
    v29 = sub_1000D199C();
    v26(v13, v21);
    if (v29)
    {
      v84 = v76;
      v30 = sub_1000D280C();
      v31 = v25;
      v23 = v30;
      v26(v31, v21);
      sub_10003AA2C(&v84);
    }

    else
    {
      v26(v25, v21);
      v23 = v38;
    }
  }

  v46 = v62;
  v47.n128_u64[0] = v63;
  v47.n128_u64[1] = v23;
  *&v48 = v22;
  *(&v48 + 1) = v43;
  *&v49[0] = v24;
  *(v49 + 9) = v60[0];
  HIDWORD(v49[0]) = *(v60 + 3);
  BYTE8(v49[0]) = v61;
  *&v49[1] = v20;
  BYTE8(v49[1]) = v42;
  v50 = v62;
  v51 = v63;
  v52 = v23;
  v53 = v22;
  v54 = v43;
  v55 = v24;
  v56 = v61;
  *&v57[3] = *(v60 + 3);
  *v57 = v60[0];
  v58 = v20;
  v59 = v42;
  sub_10003A97C(&v46, &v45);
  sub_10003A9D8(&v50);
  v32 = v49[0];
  v33 = v44;
  *(v44 + 32) = v48;
  *(v33 + 48) = v32;
  *(v33 + 57) = *(v49 + 9);
  result = v47;
  *v33 = v46;
  *(v33 + 16) = result;
  return result;
}

uint64_t sub_10003A070()
{
  sub_10003B050();
  result = sub_1000D21DC();
  qword_10013C170 = result;
  return result;
}

uint64_t sub_10003A0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003A110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000D323C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003A3B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006334(&qword_1001222B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 40) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000D323C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10003A4EC()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    sub_1000D323C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TVWidgetContentViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10003A594()
{
  result = qword_100124350;
  if (!qword_100124350)
  {
    sub_10000637C(&qword_100124358);
    sub_100035514();
    sub_100035948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124350);
  }

  return result;
}

unint64_t sub_10003A674()
{
  result = qword_100124380;
  if (!qword_100124380)
  {
    sub_10000637C(&qword_100124360);
    sub_10000FC38(&qword_100124388, &qword_100124390);
    sub_10000FC38(&qword_100124398, &qword_100124378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124380);
  }

  return result;
}

unint64_t sub_10003A764()
{
  result = qword_1001243C0;
  if (!qword_1001243C0)
  {
    sub_10000637C(&qword_1001243B8);
    sub_10003A81C();
    sub_10000FC38(&qword_1001243D0, &qword_1001243D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001243C0);
  }

  return result;
}

unint64_t sub_10003A81C()
{
  result = qword_1001243C8;
  if (!qword_1001243C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001243C8);
  }

  return result;
}

uint64_t sub_10003AB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003ABDC()
{
  result = qword_100124478;
  if (!qword_100124478)
  {
    sub_10000637C(&qword_100124458);
    sub_10003AC94();
    sub_10000FC38(&qword_1001225D0, &qword_1001225D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124478);
  }

  return result;
}

unint64_t sub_10003AC94()
{
  result = qword_100124480;
  if (!qword_100124480)
  {
    sub_10000637C(&qword_100124450);
    sub_1000353E4(&qword_100124488, type metadata accessor for TVWidgetMetadataView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124480);
  }

  return result;
}

uint64_t sub_10003AD70(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  sub_100006334(&qword_100122410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000D1DBC();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
  }

  else
  {
  }

  v7 = *(v2 + 24);
  v8 = sub_1000D323C();
  (*(*(v8 - 8) + 8))(v1 + v4 + v7, v8);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_10003AF18(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_10003AFB0()
{
  result = qword_1001244F0;
  if (!qword_1001244F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001244F0);
  }

  return result;
}

unint64_t sub_10003AFFC()
{
  result = qword_1001244F8;
  if (!qword_1001244F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001244F8);
  }

  return result;
}

unint64_t sub_10003B050()
{
  result = qword_100124510;
  if (!qword_100124510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124510);
  }

  return result;
}

unint64_t sub_10003B0B8()
{
  result = qword_100124518;
  if (!qword_100124518)
  {
    sub_10000637C(&qword_1001243A0);
    sub_10003B144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124518);
  }

  return result;
}

unint64_t sub_10003B144()
{
  result = qword_100124520;
  if (!qword_100124520)
  {
    sub_10000637C(&qword_100124528);
    sub_10000637C(&qword_100124360);
    sub_10003A674();
    swift_getOpaqueTypeConformance2();
    sub_1000353E4(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124520);
  }

  return result;
}

unint64_t sub_10003B284()
{
  result = qword_100124540;
  if (!qword_100124540)
  {
    sub_10000637C(&qword_100124548);
    sub_10000637C(&qword_1001244A0);
    sub_10000FC38(&qword_1001244A8, &qword_1001244A0);
    swift_getOpaqueTypeConformance2();
    sub_1000353E4(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124540);
  }

  return result;
}

id sub_10003B3C8(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v3 = sub_1000D2C2C();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D2C4C();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D17DC();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_100122DB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_1000D191C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader_url;
  swift_beginAccess();
  sub_10003C1BC(v2 + v21, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10003C22C(v13);
    sub_10003C294();
    v22 = sub_1000D37DC();
    v23 = swift_allocObject();
    v24 = v48;
    *(v23 + 16) = v47;
    *(v23 + 24) = v24;
    v53 = sub_10003C580;
    v54 = v23;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100079E60;
    v52 = &unk_10011AE88;
    v25 = _Block_copy(&aBlock);

    sub_1000D2C3C();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10003C330();
    sub_100006334(&qword_100124678);
    sub_10003C388();
    sub_1000D38AC();
    sub_1000D37EC();
    _Block_release(v25);

    (*(v46 + 8))(v5, v3);
    return (*(v44 + 8))(v8, v45);
  }

  else
  {
    v28 = v47;
    v27 = v48;
    (*(v15 + 32))(v20, v13, v14);
    result = sub_100002C80();
    if (result)
    {
      v29 = result;
      sub_100006334(&qword_100122C50);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000E0440;
      v31 = sub_1000D18DC();
      v33 = v32;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100018744();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      sub_1000D37AC();
      sub_1000D1B2C();

      (*(v15 + 16))(v18, v20, v14);
      v34 = v41;
      sub_1000D17CC();
      v35 = [objc_opt_self() sharedSession];
      v36 = sub_1000D17AC();
      v37 = swift_allocObject();
      *(v37 + 16) = v28;
      *(v37 + 24) = v27;
      v53 = sub_10003C3EC;
      v54 = v37;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_10003BE28;
      v52 = &unk_10011AED8;
      v38 = _Block_copy(&aBlock);

      v39 = [v35 dataTaskWithRequest:v36 completionHandler:v38];
      _Block_release(v38);

      [v39 resume];
      (*(v42 + 8))(v34, v43);
      return (*(v15 + 8))(v20, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003BA48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000D2C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000D2C4C();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C294();
  if (a2 >> 60 == 15)
  {
    v17 = sub_1000D37DC();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    v30 = sub_10003C45C;
    v31 = v18;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100079E60;
    v29 = &unk_10011AF28;
    v19 = _Block_copy(&aBlock);

    sub_1000D2C3C();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10003C330();
    sub_100006334(&qword_100124678);
    sub_10003C388();
    sub_1000D38AC();
    sub_1000D37EC();
    _Block_release(v19);
  }

  else
  {
    sub_10003C490(a1, a2);
    v24 = sub_1000D37DC();
    v20 = swift_allocObject();
    v20[2] = a5;
    v20[3] = a6;
    v20[4] = a1;
    v20[5] = a2;
    v30 = sub_10003C524;
    v31 = v20;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100079E60;
    v29 = &unk_10011AF78;
    v21 = _Block_copy(&aBlock);

    sub_10003C558(a1, a2);

    sub_1000D2C3C();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10003C330();
    sub_100006334(&qword_100124678);
    sub_10003C388();
    sub_1000D38AC();
    v22 = v24;
    sub_1000D37EC();
    _Block_release(v21);

    sub_10003C3F4(a1, a2);
  }

  (*(v11 + 8))(v13, v10);
  return (*(v14 + 8))(v16, v25);
}

uint64_t sub_10003BE28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1000D193C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10003C3F4(v6, v10);
}

uint64_t sub_10003BEF0()
{
  v1 = OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader__identifier;
  v2 = sub_100006334(&qword_100124688);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003C22C(v0 + OBJC_IVAR____TtC17TVWidgetExtension19TVWidgetImageLoader_url);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWidgetImageLoader()
{
  result = qword_100124580;
  if (!qword_100124580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003BFFC()
{
  sub_10003C0C8();
  if (v0 <= 0x3F)
  {
    sub_10003C118();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003C0C8()
{
  if (!qword_100124590)
  {
    v0 = sub_1000D1B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100124590);
    }
  }
}

void sub_10003C118()
{
  if (!qword_100122E28)
  {
    sub_1000D191C();
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_100122E28);
    }
  }
}

uint64_t sub_10003C17C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TVWidgetImageLoader();
  result = sub_1000D1B4C();
  *a1 = result;
  return result;
}

uint64_t sub_10003C1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100122DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C22C(uint64_t a1)
{
  v2 = sub_100006334(&qword_100122DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003C294()
{
  result = qword_100124668;
  if (!qword_100124668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100124668);
  }

  return result;
}

uint64_t sub_10003C2E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003C330()
{
  result = qword_100124670;
  if (!qword_100124670)
  {
    sub_1000D2C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124670);
  }

  return result;
}

unint64_t sub_10003C388()
{
  result = qword_100124680;
  if (!qword_100124680)
  {
    sub_10000637C(&qword_100124678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124680);
  }

  return result;
}

uint64_t sub_10003C3F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003C408(a1, a2);
  }

  return a1;
}

uint64_t sub_10003C408(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003C490(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003C4E4()
{

  sub_10003C408(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003C558(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003C490(a1, a2);
  }

  return a1;
}

uint64_t sub_10003C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsWidgetClock(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003C6D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100006334(&qword_1001222B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsWidgetClock(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for SportsWidgetClockView()
{
  result = qword_1001246E8;
  if (!qword_1001246E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003C838()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsWidgetClock(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10003C8E0@<X0>(uint64_t a1@<X8>)
{
  v194 = a1;
  v161 = sub_100006334(&qword_100124728);
  v1 = __chkstk_darwin(v161);
  v160 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v159 = &v156 - v3;
  v158 = sub_100006334(&qword_100124730);
  __chkstk_darwin(v158);
  v162 = &v156 - v4;
  v171 = sub_100006334(&qword_100124738);
  v163 = *(v171 - 8);
  __chkstk_darwin(v171);
  v167 = &v156 - v5;
  v172 = sub_100006334(&qword_100124740);
  v165 = *(v172 - 8);
  __chkstk_darwin(v172);
  v164 = &v156 - v6;
  v168 = sub_100006334(&qword_100124748);
  __chkstk_darwin(v168);
  v170 = &v156 - v7;
  v8 = sub_1000D24BC();
  v9 = *(v8 - 8);
  v174 = v8;
  v175 = v9;
  __chkstk_darwin(v8);
  v173 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for SportsWidgetBaseballClockView();
  __chkstk_darwin(v188);
  v176 = (&v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000D1DBC();
  v196 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v189 = &v156 - v16;
  v193 = sub_100006334(&qword_100124750);
  __chkstk_darwin(v193);
  v169 = &v156 - v17;
  v187 = type metadata accessor for SportsWidgetSoccerClockView(0);
  __chkstk_darwin(v187);
  v186 = (&v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v184 = sub_100006334(&qword_100124758);
  v166 = *(v184 - 8);
  __chkstk_darwin(v184);
  v178 = &v156 - v19;
  v20 = type metadata accessor for SportsWidgetSoccerClockViewModel(0);
  __chkstk_darwin(v20 - 8);
  v185 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100006334(&qword_100124760);
  __chkstk_darwin(v191);
  v192 = &v156 - v22;
  v179 = sub_100006334(&qword_100124768);
  __chkstk_darwin(v179);
  v182 = &v156 - v23;
  v190 = sub_100006334(&qword_100124770);
  __chkstk_darwin(v190);
  v183 = &v156 - v24;
  v180 = sub_100006334(&qword_1001229A8);
  __chkstk_darwin(v180);
  v177 = &v156 - v25;
  v195 = sub_100006334(&qword_100124778);
  __chkstk_darwin(v195);
  v27 = (&v156 - v26);
  v181 = sub_100006334(&qword_100124780);
  v28 = *(v181 - 8);
  __chkstk_darwin(v181);
  v30 = &v156 - v29;
  v31 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  __chkstk_darwin(v31 - 8);
  v33 = (&v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for SportsWidgetClock(0);
  __chkstk_darwin(v34);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SportsWidgetClockView();
  sub_10003E8B4(v197 + *(v37 + 20), v36, type metadata accessor for SportsWidgetClock);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v157 = v30;
    v189 = v28;
    sub_10003E84C(v36, v33, type metadata accessor for SportsWidgetGenericClockViewModel);
    v71 = v195;
    v72 = v27 + *(v195 + 44);
    v188 = v33;
    sub_10003E8B4(v33, v72, type metadata accessor for SportsWidgetGenericClockViewModel);
    v73 = v197 + *(v37 + 24);
    v74 = *v73;
    v76 = *(v73 + 8);
    v75 = *(v73 + 16);
    v77 = *(v73 + 24);
    v78 = objc_opt_self();

    v79 = [v78 labelColor];
    v80 = sub_1000D27DC();
    *v27 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v81 = v71[9];
    *(v27 + v81) = swift_getKeyPath();
    sub_100006334(&qword_100123C48);
    swift_storeEnumTagMultiPayload();
    v82 = v27 + v71[10];
    *v82 = v74;
    *(v82 + 1) = v75;
    *(v82 + 2) = v76;
    *(v82 + 3) = v80;
    *(v82 + 4) = v77;
    *(v82 + 5) = 1;
    v82[48] = 1;
    *(v82 + 56) = xmmword_1000E40A0;
    *(v82 + 9) = 0x4014000000000000;
    *(v27 + v71[12]) = 0;
    *(v27 + v71[13]) = 0;
    if (qword_100121F40 != -1)
    {
      swift_once();
    }

    v83 = sub_100006610(v12, qword_10013BF68);
    sub_10003E7B0(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
    v84 = sub_1000D357C();
    v85 = v157;
    if (v84)
    {
      v86 = v177;
      v196[2](v177, v83, v12);
      v87 = sub_10000FC38(&qword_100124798, &qword_100124778);
      v88 = sub_10000FC38(&qword_1001247A0, &qword_1001229A8);
      v89 = v195;
      v90 = v180;
      sub_1000D270C();
      sub_10000F938(v86, &qword_1001229A8);
      sub_10000F938(v27, &qword_100124778);
      v91 = v189;
      v92 = v85;
      v93 = v181;
      (*(v189 + 16))(v182, v92);
      swift_storeEnumTagMultiPayload();
      *&v206 = v89;
      *(&v206 + 1) = v90;
      *&v207 = v87;
      *(&v207 + 1) = v88;
      swift_getOpaqueTypeConformance2();
      v94 = sub_10003E7B0(&qword_1001247A8, type metadata accessor for SportsWidgetSoccerClockView);
      *&v206 = v187;
      *(&v206 + 1) = v90;
      *&v207 = v94;
      *(&v207 + 1) = v88;
      swift_getOpaqueTypeConformance2();
      v95 = v183;
      sub_1000D229C();
      sub_10000F8D0(v95, v192, &qword_100124770);
      swift_storeEnumTagMultiPayload();
      sub_10003E47C();
      sub_10003E634();
      sub_1000D229C();
      sub_10000F938(v95, &qword_100124770);
      (*(v91 + 8))(v157, v93);
      return sub_10003E91C(v188, type metadata accessor for SportsWidgetGenericClockViewModel);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v27 = v196;
    v97 = v185;
    sub_10003E84C(v36, v185, type metadata accessor for SportsWidgetSoccerClockViewModel);
    v98 = v197 + *(v37 + 24);
    v99 = *v98;
    v101 = *(v98 + 8);
    v100 = *(v98 + 16);
    v102 = *(v98 + 24);
    v103 = objc_opt_self();

    v104 = [v103 labelColor];
    v105 = sub_1000D27DC();
    LOBYTE(v202) = v99;
    *(&v202 + 1) = v100;
    *&v203 = v101;
    *(&v203 + 1) = v105;
    *&v204 = v102;
    *(&v204 + 1) = 1;
    LOBYTE(v205[0]) = 1;
    *(v205 + 8) = xmmword_1000E40A0;
    *(&v205[1] + 1) = 0x4014000000000000;
    v106 = v186;
    v76 = v187;
    sub_10003E8B4(v97, v186 + *(v187 + 20), type metadata accessor for SportsWidgetSoccerClockViewModel);
    v208 = v204;
    v209 = v205[0];
    v210 = v205[1];
    v206 = v202;
    v207 = v203;
    *v106 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v107 = (v106 + *(v76 + 24));
    v108 = v209;
    v107[2] = v208;
    v107[3] = v108;
    v107[4] = v210;
    v109 = v207;
    *v107 = v206;
    v107[1] = v109;
    sub_10002E7F8(&v202, &v198);
    if (qword_100121F40 == -1)
    {
LABEL_10:
      v110 = sub_100006610(v12, qword_10013BF68);
      sub_10003E7B0(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
      if (sub_1000D357C())
      {
        v111 = v177;
        v27[2](v177, v110, v12);
        v197 = sub_10003E7B0(&qword_1001247A8, type metadata accessor for SportsWidgetSoccerClockView);
        v112 = sub_10000FC38(&qword_1001247A0, &qword_1001229A8);
        v113 = v178;
        v114 = v180;
        v115 = v186;
        sub_1000D270C();
        sub_10000F938(v111, &qword_1001229A8);
        sub_10003E91C(v115, type metadata accessor for SportsWidgetSoccerClockView);
        v116 = v166;
        v117 = v184;
        (*(v166 + 16))(v182, v113, v184);
        swift_storeEnumTagMultiPayload();
        v118 = sub_10000FC38(&qword_100124798, &qword_100124778);
        v198 = v195;
        v199 = v114;
        v200 = v118;
        v201 = v112;
        swift_getOpaqueTypeConformance2();
        v198 = v76;
        v199 = v114;
        v200 = v197;
        v201 = v112;
        swift_getOpaqueTypeConformance2();
        v119 = v183;
        sub_1000D229C();
        sub_10000F8D0(v119, v192, &qword_100124770);
        swift_storeEnumTagMultiPayload();
        sub_10003E47C();
        sub_10003E634();
        sub_1000D229C();
        sub_10003E7F8(&v202);
        sub_10000F938(v119, &qword_100124770);
        (*(v116 + 8))(v178, v117);
        return sub_10003E91C(v185, type metadata accessor for SportsWidgetSoccerClockViewModel);
      }

      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_13;
    }

LABEL_17:
    swift_once();
    goto LABEL_10;
  }

  v39 = *(v36 + 1);
  v182 = *v36;
  v183 = v39;
  v40 = *(v36 + 3);
  v184 = *(v36 + 2);
  v185 = v40;
  v41 = *(v36 + 5);
  v186 = *(v36 + 4);
  v187 = v41;
  LODWORD(v195) = v36[48];
  v42 = v197 + *(v37 + 24);
  v43 = v15;
  v44 = *(v42 + 24);
  v45 = *v42;
  swift_retain_n();
  sub_100013BB0(v45, v44, v44, &v206);
  v46 = v189;
  sub_1000B2124(v189);
  v47 = v196;
  v179 = v196[13];
  v180 = (v196 + 13);
  v179(v43, enum case for DynamicTypeSize.accessibility2(_:), v12);
  v177 = sub_10003E7B0(&qword_100122460, &type metadata accessor for DynamicTypeSize);
  v48 = sub_1000D353C();
  v49 = (v47 + 1);
  v50 = v47[1];
  v166 = v43;
  (v50)(v43, v12);
  v178 = v12;
  (v50)(v46, v12);
  KeyPath = swift_getKeyPath();
  v52 = v176;
  *v176 = KeyPath;
  sub_100006334(&qword_100122410);
  swift_storeEnumTagMultiPayload();
  v53 = v188;
  v54 = v188[5];
  *(v52 + v54) = swift_getKeyPath();
  sub_100006334(&qword_100123C48);
  swift_storeEnumTagMultiPayload();
  v181 = v53[8];
  v55 = (v175 + 104);
  if (v48)
  {
    v198 = 0x4032000000000000;
    v56 = enum case for Font.TextStyle.footnote(_:);
    v57 = *v55;
    v59 = v173;
    v58 = v174;
    (*v55)(v173, enum case for Font.TextStyle.footnote(_:), v174);
    sub_10003E3B0(&v206, &v202);
    sub_10002E8D0();
    sub_1000D1C0C();
    *&v202 = 0x4010000000000000;
    v57(v59, v56, v58);
    sub_1000D1C0C();
    v60 = v52 + v53[7];
    v61 = v183;
    *v60 = v182;
    *(v60 + 8) = v61;
    v62 = v185;
    *(v60 + 16) = v184;
    *(v60 + 24) = v62;
    v63 = v187;
    *(v60 + 32) = v186;
    *(v60 + 40) = v63;
    *(v60 + 48) = v195;
    v64 = (v52 + v53[6]);
    v65 = v209;
    v64[2] = v208;
    v64[3] = v65;
    v66 = v211;
    v64[4] = v210;
    v64[5] = v66;
    v67 = v207;
    *v64 = v206;
    v64[1] = v67;
    sub_10003E8B4(v52, v170, type metadata accessor for SportsWidgetBaseballClockView);
    swift_storeEnumTagMultiPayload();
    v68 = sub_10003E7B0(&qword_100124788, type metadata accessor for SportsWidgetBaseballClockView);
    *&v202 = v53;
    *(&v202 + 1) = v68;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v202 = v171;
    *(&v202 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v70 = v169;
    sub_1000D229C();
    sub_10003E91C(v52, type metadata accessor for SportsWidgetBaseballClockView);
LABEL_15:
    sub_10000F8D0(v70, v192, &qword_100124750);
    swift_storeEnumTagMultiPayload();
    sub_10003E47C();
    sub_10003E634();
    sub_1000D229C();
    sub_10003E75C(&v206);
    return sub_10000F938(v70, &qword_100124750);
  }

  v156 = v50;
  v157 = v49;
  v198 = 0x4032000000000000;
  v120 = enum case for Font.TextStyle.footnote(_:);
  v121 = *v55;
  v122 = v173;
  v123 = v174;
  (*v55)(v173, enum case for Font.TextStyle.footnote(_:), v174);
  sub_10003E3B0(&v206, &v202);
  sub_10002E8D0();
  sub_1000D1C0C();
  *&v202 = 0x4010000000000000;
  v121(v122, v120, v123);
  sub_1000D1C0C();
  v124 = v52 + v53[7];
  v125 = v183;
  *v124 = v182;
  *(v124 + 8) = v125;
  v126 = v185;
  *(v124 + 16) = v184;
  *(v124 + 24) = v126;
  v127 = v187;
  *(v124 + 32) = v186;
  *(v124 + 40) = v127;
  *(v124 + 48) = v195;
  v128 = (v52 + v53[6]);
  v129 = v209;
  v128[2] = v208;
  v128[3] = v129;
  v130 = v211;
  v128[4] = v210;
  v128[5] = v130;
  v131 = v207;
  *v128 = v206;
  v128[1] = v131;
  if (qword_100121F40 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v132 = v178;
  v133 = sub_100006610(v178, qword_10013BF68);
  v134 = v189;
  v179(v189, enum case for DynamicTypeSize.xLarge(_:), v132);
  result = sub_1000D355C();
  v135 = v196;
  if (result)
  {
    v136 = v159;
    v196[2](v159, v133, v132);
    v137 = v161;
    v138 = v135[4];
    v138((v136 + *(v161 + 48)), v134, v132);
    v139 = v160;
    sub_10000F8D0(v136, v160, &qword_100124728);
    v140 = *(v137 + 48);
    v141 = v162;
    v138(v162, v139, v132);
    v142 = v156;
    (v156)(v139 + v140, v132);
    sub_10003E40C(v136, v139);
    v138((v141 + *(v158 + 36)), v139 + *(v137 + 48), v132);
    (v142)(v139, v132);
    v143 = v189;
    sub_1000B2124(v189);
    sub_1000D1D9C();
    (v142)(v143, v132);
    v144 = sub_10003E7B0(&qword_100124788, type metadata accessor for SportsWidgetBaseballClockView);
    v145 = v188;
    v146 = v144;
    v196 = v144;
    v147 = v176;
    sub_1000D264C();
    sub_10000F938(v141, &qword_100124730);
    sub_10003E91C(v147, type metadata accessor for SportsWidgetBaseballClockView);
    v179(v143, enum case for DynamicTypeSize.accessibility1(_:), v132);
    v148 = v166;
    sub_1000B2124(v166);
    sub_1000D1D9C();
    v149 = v156;
    (v156)(v148, v132);
    *&v202 = v145;
    *(&v202 + 1) = v146;
    v150 = swift_getOpaqueTypeConformance2();
    v151 = v164;
    v152 = v171;
    v153 = v167;
    sub_1000D263C();
    (v149)(v143, v132);
    (*(v163 + 8))(v153, v152);
    v154 = v165;
    v155 = v172;
    (*(v165 + 16))(v170, v151, v172);
    swift_storeEnumTagMultiPayload();
    *&v202 = v152;
    *(&v202 + 1) = v150;
    swift_getOpaqueTypeConformance2();
    v70 = v169;
    sub_1000D229C();
    (*(v154 + 8))(v151, v155);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E2D8(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001247B8);
  __chkstk_darwin(v2 - 8);
  sub_10000F8D0(a1, &v5 - v3, &qword_1001247B8);
  return sub_1000D1FBC();
}

uint64_t sub_10003E40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100124728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003E47C()
{
  result = qword_100124790;
  if (!qword_100124790)
  {
    sub_10000637C(&qword_100124770);
    sub_10000637C(&qword_100124778);
    sub_10000637C(&qword_1001229A8);
    sub_10000FC38(&qword_100124798, &qword_100124778);
    sub_10000FC38(&qword_1001247A0, &qword_1001229A8);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for SportsWidgetSoccerClockView(255);
    sub_10003E7B0(&qword_1001247A8, type metadata accessor for SportsWidgetSoccerClockView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124790);
  }

  return result;
}

unint64_t sub_10003E634()
{
  result = qword_1001247B0;
  if (!qword_1001247B0)
  {
    sub_10000637C(&qword_100124750);
    sub_10003E7B0(&qword_100124788, type metadata accessor for SportsWidgetBaseballClockView);
    sub_10000637C(&qword_100124738);
    type metadata accessor for SportsWidgetBaseballClockView();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001247B0);
  }

  return result;
}

uint64_t sub_10003E7B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003E84C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E8B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003E91C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003E980()
{
  result = qword_1001247C0;
  if (!qword_1001247C0)
  {
    sub_10000637C(&qword_1001247C8);
    sub_10003E47C();
    sub_10003E634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001247C0);
  }

  return result;
}

uint64_t sub_10003EB38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100006334(&qword_100124840);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100006334(&qword_100123C60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10003ECE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100006334(&qword_1001222B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100006334(&qword_100124840);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_100006334(&qword_100123C60);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for SportsWidgetBaseballClockView()
{
  result = qword_1001248A0;
  if (!qword_1001248A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003EED0()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    sub_10003EF84();
    if (v1 <= 0x3F)
    {
      sub_10002EBCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003EF84()
{
  if (!qword_1001248B0)
  {
    sub_10000637C(&qword_1001247B8);
    v0 = sub_1000D1BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1001248B0);
    }
  }
}

uint64_t sub_10003F004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = sub_100006334(&qword_100124900);
  __chkstk_darwin(v132);
  v133 = &v115 - v4;
  v134 = sub_100006334(&qword_100122498);
  v130 = *(v134 - 8);
  __chkstk_darwin(v134);
  v129 = &v115 - v5;
  v6 = sub_100006334(&qword_100124908);
  __chkstk_darwin(v6 - 8);
  v8 = &v115 - v7;
  v122 = sub_100006334(&qword_100124910);
  v9 = __chkstk_darwin(v122);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v116 = &v115 - v12;
  v124 = sub_100006334(&qword_100124918);
  __chkstk_darwin(v124);
  v127 = &v115 - v13;
  v121 = sub_100006334(&qword_100124920);
  __chkstk_darwin(v121);
  v15 = &v115 - v14;
  v125 = sub_100006334(&qword_100124928);
  __chkstk_darwin(v125);
  v123 = &v115 - v16;
  v17 = sub_1000D1DBC();
  v118 = *(v17 - 8);
  v119 = v17;
  __chkstk_darwin(v17);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100006334(&qword_100124930);
  __chkstk_darwin(v20 - 8);
  v22 = &v115 - v21;
  v120 = sub_100006334(&qword_100124938);
  v23 = __chkstk_darwin(v120);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v117 = &v115 - v26;
  v131 = sub_100006334(&qword_100124940);
  __chkstk_darwin(v131);
  v126 = &v115 - v27;
  v28 = type metadata accessor for SportsWidgetBaseballClockView();
  v29 = v28;
  v30 = a1 + *(v28 + 28);
  if (*(v30 + 48) == 1)
  {
    v115 = v15;
    v31 = v130;
    if (*(a1 + *(v28 + 24)) - 1 >= 2)
    {
      if (*(a1 + *(v28 + 24)))
      {
        v109 = v129;
        sub_100040F88();
        v110 = v134;
        (*(v31 + 16))(v127, v109, v134);
        swift_storeEnumTagMultiPayload();
        sub_100042FC0();
        v111 = sub_10000637C(&qword_1001224B8);
        v112 = sub_10000F394();
        *&v142[0] = v111;
        *(&v142[0] + 1) = v112;
        swift_getOpaqueTypeConformance2();
        v54 = v126;
        sub_1000D229C();
        (*(v31 + 8))(v109, v110);
      }

      else
      {
        *v8 = sub_1000D210C();
        *(v8 + 1) = 0;
        v8[16] = 1;
        v90 = sub_100006334(&qword_100124978);
        sub_10003FE24(a1, &v8[*(v90 + 44)]);
        sub_100006334(&qword_100124980);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000E2080;
        v92 = sub_1000D236C();
        *(inited + 32) = v92;
        v93 = sub_1000D237C();
        *(inited + 33) = v93;
        v94 = sub_1000D239C();
        sub_1000D239C();
        if (sub_1000D239C() != v92)
        {
          v94 = sub_1000D239C();
        }

        sub_1000D239C();
        v95 = sub_1000D239C();
        v128 = a2;
        if (v95 != v93)
        {
          v94 = sub_1000D239C();
        }

        sub_1000B2124(v19);
        sub_100013D34(v19);
        (*(v118 + 8))(v19, v119);
        sub_1000D1B9C();
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        sub_10000F998(v8, v11, &qword_100124908);
        v104 = &v11[*(v122 + 36)];
        *v104 = v94;
        *(v104 + 1) = v97;
        *(v104 + 2) = v99;
        *(v104 + 3) = v101;
        *(v104 + 4) = v103;
        v104[40] = 0;
        v105 = v116;
        sub_10000F998(v11, v116, &qword_100124910);
        sub_10000F8D0(v105, v115, &qword_100124910);
        swift_storeEnumTagMultiPayload();
        sub_10004304C();
        sub_100043104();
        v106 = v123;
        sub_1000D229C();
        sub_10000F8D0(v106, v127, &qword_100124928);
        swift_storeEnumTagMultiPayload();
        sub_100042FC0();
        v107 = sub_10000637C(&qword_1001224B8);
        v108 = sub_10000F394();
        *&v142[0] = v107;
        *(&v142[0] + 1) = v108;
        swift_getOpaqueTypeConformance2();
        v54 = v126;
        sub_1000D229C();
        sub_10000F938(v106, &qword_100124928);
        sub_10000F938(v105, &qword_100124910);
      }

      v40 = v133;
    }

    else
    {
      v128 = a2;
      sub_100006334(&qword_100123C60);
      sub_1000D1C2C();
      v32 = *&v142[0];
      *v22 = sub_1000D21BC();
      *(v22 + 1) = v32;
      v22[16] = 0;
      v33 = sub_100006334(&qword_100124988);
      sub_1000413F8(a1, &v22[*(v33 + 44)]);
      sub_100006334(&qword_100124980);
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_1000E2080;
      v35 = sub_1000D236C();
      *(v34 + 32) = v35;
      v36 = sub_1000D237C();
      *(v34 + 33) = v36;
      v37 = sub_1000D239C();
      sub_1000D239C();
      if (sub_1000D239C() != v35)
      {
        v37 = sub_1000D239C();
      }

      sub_1000D239C();
      v38 = sub_1000D239C();
      v39 = v115;
      if (v38 != v36)
      {
        v37 = sub_1000D239C();
      }

      v40 = v133;
      sub_1000B2124(v19);
      sub_100013D34(v19);
      (*(v118 + 8))(v19, v119);
      sub_1000D1B9C();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      sub_10000F998(v22, v25, &qword_100124930);
      v49 = &v25[*(v120 + 36)];
      *v49 = v37;
      *(v49 + 1) = v42;
      *(v49 + 2) = v44;
      *(v49 + 3) = v46;
      *(v49 + 4) = v48;
      v49[40] = 0;
      v50 = v117;
      sub_10000F998(v25, v117, &qword_100124938);
      sub_10000F8D0(v50, v39, &qword_100124938);
      swift_storeEnumTagMultiPayload();
      sub_10004304C();
      sub_100043104();
      v51 = v123;
      sub_1000D229C();
      sub_10000F8D0(v51, v127, &qword_100124928);
      swift_storeEnumTagMultiPayload();
      sub_100042FC0();
      v52 = sub_10000637C(&qword_1001224B8);
      v53 = sub_10000F394();
      *&v142[0] = v52;
      *(&v142[0] + 1) = v53;
      swift_getOpaqueTypeConformance2();
      v54 = v126;
      sub_1000D229C();
      sub_10000F938(v51, &qword_100124928);
      sub_10000F938(v50, &qword_100124938);
    }

    sub_10000F8D0(v54, v40, &qword_100124940);
    swift_storeEnumTagMultiPayload();
    sub_100042F90();
    v113 = sub_10000637C(&qword_1001224B8);
    v114 = sub_10000F394();
    *&v142[0] = v113;
    *(&v142[0] + 1) = v114;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    return sub_10000F938(v54, &qword_100124940);
  }

  else
  {
    v55 = *(v30 + 24);
    *&v142[0] = *(v30 + 16);
    *(&v142[0] + 1) = v55;
    sub_10000F320();

    v56 = sub_1000D260C();
    v58 = v57;
    v60 = v59;
    v61 = *(v29 + 24);
    v128 = a2;
    v62 = a1 + v61;
    v63 = sub_1000D254C();
    v65 = v64;
    v67 = v66;
    sub_10000F374(v56, v58, v60 & 1);

    v68 = sub_1000D255C();
    v70 = v69;
    v72 = v71;
    sub_10000F374(v63, v65, v67 & 1);

    v73 = sub_1000D257C();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    sub_10000F374(v68, v70, v72 & 1);

    v80 = *(v62 + 48);
    KeyPath = swift_getKeyPath();
    v82 = *(v62 + 64);
    v83 = swift_getKeyPath();
    v141 = v77 & 1;
    v140 = 0;
    *&v135 = v73;
    *(&v135 + 1) = v75;
    LOBYTE(v136) = v77 & 1;
    *(&v136 + 1) = v79;
    *&v137 = KeyPath;
    *(&v137 + 1) = v80;
    LOBYTE(v138) = 0;
    *(&v138 + 1) = v83;
    v139 = v82;
    v84 = sub_100006334(&qword_1001224B8);
    v85 = sub_10000F394();
    v86 = v129;
    sub_1000D262C();
    v142[2] = v137;
    v142[3] = v138;
    v143 = v139;
    v142[0] = v135;
    v142[1] = v136;
    sub_10000F938(v142, &qword_1001224B8);
    v87 = v130;
    v88 = v134;
    (*(v130 + 16))(v133, v86, v134);
    swift_storeEnumTagMultiPayload();
    sub_100042F90();
    *&v135 = v84;
    *(&v135 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    return (*(v87 + 8))(v86, v88);
  }
}

uint64_t sub_10003FE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = sub_100006334(&qword_1001249B8);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin(v3);
  v157 = &v122 - v4;
  v156 = sub_100006334(&qword_100124A80);
  v5 = __chkstk_darwin(v156);
  v160 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v155 = &v122 - v8;
  __chkstk_darwin(v7);
  v171 = &v122 - v9;
  v10 = type metadata accessor for SportsWidgetBaseballClockView();
  v148 = *(v10 - 8);
  __chkstk_darwin(v10);
  v149 = v11;
  v150 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006334(&qword_1001247B8);
  v13 = __chkstk_darwin(v12 - 8);
  v152 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v122 - v15;
  v17 = sub_1000D1DDC();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v153 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v154 = &v122 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v122 - v24;
  __chkstk_darwin(v23);
  v27 = &v122 - v26;
  v172 = sub_1000D1DBC();
  v176 = *(v172 - 8);
  v28 = __chkstk_darwin(v172);
  v168 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v169 = &v122 - v31;
  v32 = __chkstk_darwin(v30);
  v125 = &v122 - v33;
  v34 = __chkstk_darwin(v32);
  v163 = &v122 - v35;
  __chkstk_darwin(v34);
  v37 = &v122 - v36;
  v143 = sub_100006334(&qword_100122498);
  v130 = *(v143 - 8);
  __chkstk_darwin(v143);
  v39 = &v122 - v38;
  v128 = sub_100006334(&qword_100124A88);
  v40 = __chkstk_darwin(v128);
  v170 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v127 = &v122 - v43;
  __chkstk_darwin(v42);
  v174 = &v122 - v44;
  v129 = v39;
  sub_100040F88();
  v45 = (a1 + *(v10 + 28));
  v46 = v45[2];
  v164 = v45[3];
  v165 = v46;
  v47 = v45[4];
  v166 = v45[5];
  v167 = v47;
  sub_1000B2124(v37);
  v151 = v10;
  v48 = *(v10 + 20);
  v124 = a1;
  v144 = a1 + v48;
  sub_1000B2570(v16);
  v49 = *(v18 + 48);
  v50 = v49(v16, 1, v17);
  v173 = v17;
  v162 = v27;
  v145 = v49;
  if (v50 == 1)
  {
    (*(v18 + 104))(v27, enum case for LegibilityWeight.regular(_:), v17);
    if (v49(v16, 1, v17) != 1)
    {
      sub_10000F938(v16, &qword_1001247B8);
    }
  }

  else
  {
    (*(v18 + 32))(v27, v16, v17);
  }

  v146 = v18 + 48;
  v175 = v18;
  if (qword_100121F40 != -1)
  {
    swift_once();
  }

  v51 = v172;
  v52 = sub_100006610(v172, qword_10013BF68);
  v139 = sub_100043508();
  v53 = sub_1000D354C();
  v54 = *(v176 + 16);
  v55 = v162;
  v141 = v176 + 16;
  v142 = v52;
  v140 = v54;
  if (v53)
  {
    v56 = v163;
    v57 = v52;
  }

  else
  {
    v56 = v163;
    v57 = v37;
  }

  v54(v56, v57, v51);
  v58 = sub_10001AC58();
  v59 = v175;
  v60 = v173;
  v137 = *(v175 + 16);
  v138 = v175 + 16;
  v137(v25, v55, v173);
  v135 = *(v59 + 88);
  v136 = v59 + 88;
  v61 = v135(v25, v60);
  v134 = enum case for LegibilityWeight.regular(_:);
  if (v61 != enum case for LegibilityWeight.regular(_:) && v61 != enum case for LegibilityWeight.bold(_:))
  {
    (*(v175 + 8))(v25, v60);
  }

  v133 = objc_opt_self();
  v62 = [v133 traitCollectionWithPreferredContentSizeCategory:v58];
  v132 = objc_opt_self();
  v147 = UIFontTextStyleFootnote;
  v63 = [v132 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:v62];
  v64 = objc_opt_self();
  [v63 pointSize];
  v131 = v64;
  v65 = [v64 monospacedDigitSystemFontOfSize:? weight:?];

  v66 = v65;
  sub_1000D368C();
  sub_1000D368C();

  v67 = v176 + 8;
  v68 = *(v176 + 8);
  v69 = v172;
  v68(v163, v172);
  v70 = *(v175 + 8);
  v126 = v175 + 8;
  v163 = v70;
  (v70)(v162, v173);
  v68(v37, v69);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v71 = v127;
  (*(v130 + 32))(v127, v129, v143);
  v72 = (v71 + *(v128 + 36));
  v73 = v196;
  *v72 = v195;
  v72[1] = v73;
  v72[2] = v197;
  sub_10000F998(v71, v174, &qword_100124A88);
  v75 = v124;
  v74 = v125;
  sub_1000B2124(v125);
  sub_100014150(v74);
  v68(v74, v69);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v129 = v200;
  v130 = v198;
  v127 = v203;
  v128 = v202;
  v188 = 1;
  v187 = v199;
  v186 = v201;
  v162 = sub_1000D2B5C();
  v143 = v76;
  v77 = v150;
  sub_1000431BC(v75, v150);
  v78 = (*(v148 + 80) + 16) & ~*(v148 + 80);
  v149 = swift_allocObject();
  sub_100043224(v77, v149 + v78);
  sub_100006334(&qword_100123C60);
  sub_1000D1C2C();
  sub_1000D1C2C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  sub_1000B2124(v74);
  sub_100014150(v74);
  v176 = v67;
  v151 = v68;
  v68(v74, v69);
  v79 = v173;
  sub_1000D2B5C();
  sub_1000D1C8C();
  v150 = v204;
  v148 = v206;
  v125 = v208;
  v123 = v209;
  v194 = 1;
  v193 = v205;
  v192 = v207;
  v80 = v157;
  sub_1000411A0(v157);
  v81 = v169;
  sub_1000B2124(v169);
  v82 = v152;
  sub_1000B2570(v152);
  v83 = v145;
  if (v145(v82, 1, v79) == 1)
  {
    v84 = v154;
    v85 = v134;
    (*(v175 + 104))(v154, v134, v79);
    v86 = v83(v82, 1, v79);
    v87 = v153;
    if (v86 != 1)
    {
      sub_10000F938(v82, &qword_1001247B8);
    }
  }

  else
  {
    v84 = v154;
    (*(v175 + 32))(v154, v82, v79);
    v87 = v153;
    v85 = v134;
  }

  v88 = v142;
  v89 = v172;
  if (sub_1000D354C())
  {
    v90 = v168;
    v91 = v88;
  }

  else
  {
    v90 = v168;
    v91 = v81;
  }

  v140(v90, v91, v89);
  v92 = v147;
  v93 = sub_10001AC58();
  v137(v87, v84, v79);
  v94 = v135(v87, v79);
  if (v94 != v85 && v94 != enum case for LegibilityWeight.bold(_:))
  {
    (v163)(v87, v79);
  }

  v95 = [v133 traitCollectionWithPreferredContentSizeCategory:v93];
  v96 = [v132 preferredFontDescriptorWithTextStyle:v92 compatibleWithTraitCollection:v95];
  [v96 pointSize];
  v97 = [v131 monospacedDigitSystemFontOfSize:? weight:?];

  v98 = v97;
  sub_1000D368C();
  sub_1000D368C();

  v99 = v151;
  v151(v168, v89);
  (v163)(v84, v79);
  v99(v169, v89);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v100 = v155;
  (*(v158 + 32))(v155, v80, v159);
  v101 = (v100 + *(v156 + 36));
  v102 = v211;
  *v101 = v210;
  v101[1] = v102;
  v101[2] = v212;
  v103 = v171;
  sub_10000F998(v100, v171, &qword_100124A80);
  v104 = v170;
  sub_10000F8D0(v174, v170, &qword_100124A88);
  LOBYTE(v97) = v188;
  v105 = v187;
  LOBYTE(v100) = v186;
  LODWORD(v173) = v194;
  LODWORD(v175) = v193;
  LODWORD(v176) = v192;
  v106 = v103;
  v107 = v160;
  sub_10000F8D0(v106, v160, &qword_100124A80);
  v108 = v161;
  sub_10000F8D0(v104, v161, &qword_100124A88);
  v109 = sub_100006334(&qword_100124A90);
  v110 = v108 + v109[12];
  *v110 = 0;
  *(v110 + 8) = v97;
  v111 = v129;
  *(v110 + 16) = v130;
  *(v110 + 24) = v105;
  *(v110 + 32) = v111;
  *(v110 + 40) = v100;
  v112 = v127;
  *(v110 + 48) = v128;
  *(v110 + 56) = v112;
  v113 = (v108 + v109[16]);
  v114 = v162;
  v115 = v143;
  *&v177 = v162;
  *(&v177 + 1) = v143;
  v116 = v149;
  *&v178 = sub_100043AA8;
  *(&v178 + 1) = v149;
  v179 = v189;
  v180 = v190;
  v181 = v191;
  v117 = v178;
  *v113 = v177;
  v113[1] = v117;
  v118 = v180;
  v113[2] = v179;
  v113[3] = v118;
  v113[4] = v181;
  v119 = v108 + v109[20];
  *v119 = 0;
  *(v119 + 8) = v173;
  *(v119 + 16) = v150;
  *(v119 + 24) = v175;
  *(v119 + 32) = v148;
  *(v119 + 40) = v176;
  v120 = v123;
  *(v119 + 48) = v125;
  *(v119 + 56) = v120;
  sub_10000F8D0(v107, v108 + v109[24], &qword_100124A80);
  sub_10000F8D0(&v177, v182, &qword_1001249A8);
  sub_10000F938(v171, &qword_100124A80);
  sub_10000F938(v174, &qword_100124A88);
  sub_10000F938(v107, &qword_100124A80);
  v182[0] = v114;
  v182[1] = v115;
  v182[2] = sub_100043AA8;
  v182[3] = v116;
  v183 = v189;
  v184 = v190;
  v185 = v191;
  sub_10000F938(v182, &qword_1001249A8);
  return sub_10000F938(v170, &qword_100124A88);
}

uint64_t sub_100040F88()
{
  v1 = type metadata accessor for SportsWidgetBaseballClockView();
  v2 = v0 + *(v1 + 28);
  v3 = *(v2 + 24);
  *&v35[0] = *(v2 + 16);
  *(&v35[0] + 1) = v3;
  sub_10000F320();

  v4 = sub_1000D260C();
  v6 = v5;
  v8 = v7;
  v9 = v0 + *(v1 + 24);
  v10 = sub_1000D254C();
  v12 = v11;
  v14 = v13;
  sub_10000F374(v4, v6, v8 & 1);

  v15 = sub_1000D255C();
  v17 = v16;
  v19 = v18;
  sub_10000F374(v10, v12, v14 & 1);

  v20 = sub_1000D257C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10000F374(v15, v17, v19 & 1);

  v27 = *(v9 + 48);
  KeyPath = swift_getKeyPath();
  v29 = *(v9 + 64);
  *&v31 = v20;
  *(&v31 + 1) = v22;
  LOBYTE(v32) = v24 & 1;
  *(&v32 + 1) = v26;
  *&v33 = KeyPath;
  *(&v33 + 1) = v27;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = swift_getKeyPath();
  sub_100006334(&qword_1001224B8);
  sub_10000F394();
  sub_1000D262C();
  v35[2] = v33;
  v35[3] = v34;
  v36 = v29;
  v35[0] = v31;
  v35[1] = v32;
  return sub_10000F938(v35, &qword_1001224B8);
}

uint64_t sub_1000411A0@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v27[0] = sub_100006334(&qword_1001249E8);
  __chkstk_darwin(v27[0]);
  v3 = v27 - v2;
  v4 = type metadata accessor for SportsWidgetBaseballClockView();
  v5 = v1 + *(v4 + 28);
  v6 = *(v5 + 40);
  *&v35[0] = *(v5 + 32);
  *(&v35[0] + 1) = v6;
  sub_10000F320();

  v7 = sub_1000D260C();
  v9 = v8;
  v11 = v10;
  v12 = v1 + *(v4 + 24);
  v13 = sub_1000D254C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10000F374(v7, v9, v11 & 1);

  v20 = *(v12 + 16);
  KeyPath = swift_getKeyPath();
  v22 = *(v12 + 24);
  v23 = swift_getKeyPath();
  v34 = v17 & 1;
  v33 = 0;
  *&v28 = v13;
  *(&v28 + 1) = v15;
  LOBYTE(v29) = v17 & 1;
  *(&v29 + 1) = v19;
  *&v30 = KeyPath;
  *(&v30 + 1) = v20;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = v23;
  v32 = v22;

  sub_100006334(&qword_1001249F0);
  sub_1000432A4();
  sub_1000D272C();
  v35[2] = v30;
  v35[3] = v31;
  v36 = v32;
  v35[0] = v28;
  v35[1] = v29;
  sub_10000F938(v35, &qword_1001249F0);
  LOBYTE(KeyPath) = *(v12 + 32);
  v24 = swift_getKeyPath();
  v25 = &v3[*(v27[0] + 36)];
  *v25 = v24;
  v25[8] = KeyPath;
  sub_10004335C();
  sub_1000D262C();
  return sub_10000F938(v3, &qword_1001249E8);
}

uint64_t sub_1000413F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100006334(&qword_100124990);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SportsWidgetBaseballClockView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000D2B5C();
  v28 = v14;
  sub_1000431BC(a1, v13);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  sub_100043224(v13, v16 + v15);
  sub_100006334(&qword_100123C60);
  sub_1000D1C2C();
  sub_1000D1C2C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  sub_1000D1C2C();
  v17 = v38[0];
  *v9 = sub_1000D210C();
  *(v9 + 1) = v17;
  v9[16] = 0;
  v18 = sub_100006334(&qword_100124998);
  sub_100041764(a1, &v9[*(v18 + 44)]);
  v19 = v7;
  sub_10000F8D0(v9, v7, &qword_100124990);
  v20 = v29;
  v21 = v28;
  *&v33 = v29;
  *(&v33 + 1) = v28;
  *&v34 = sub_100043288;
  *(&v34 + 1) = v16;
  v22 = v31;
  v35 = v30;
  v36 = v31;
  v23 = v32;
  v37 = v32;
  a2[2] = v30;
  a2[3] = v22;
  a2[4] = v23;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  v25 = a2 + *(sub_100006334(&qword_1001249A0) + 48);
  sub_10000F8D0(v19, v25, &qword_100124990);
  sub_10000F8D0(&v33, v38, &qword_1001249A8);
  sub_10000F938(v9, &qword_100124990);
  sub_10000F938(v19, &qword_100124990);
  v38[0] = v20;
  v38[1] = v21;
  v38[2] = sub_100043288;
  v38[3] = v16;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  return sub_10000F938(v38, &qword_1001249A8);
}

uint64_t sub_100041764@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v54 = sub_100006334(&qword_1001249B0);
  __chkstk_darwin(v54);
  v4 = &v48 - v3;
  v5 = sub_100006334(&qword_1001249B8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = sub_100006334(&qword_1001249C0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_100006334(&qword_1001249C8);
  v16 = __chkstk_darwin(v15 - 8);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v58 = sub_100006334(&qword_100122498);
  v55 = *(v58 - 8);
  v20 = __chkstk_darwin(v58);
  v57 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v48 - v22;
  sub_100040F88();
  if (*(a1 + *(type metadata accessor for SportsWidgetBaseballClockView() + 24)) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_10000FC38(&qword_1001249D8, &qword_1001249B0);
    sub_1000D229C();
  }

  else
  {
    sub_1000D215C();
    v23 = sub_1000D25EC();
    v52 = v19;
    v53 = v6;
    v24 = v11;
    v25 = v23;
    v26 = v9;
    v28 = v27;
    v49 = v14;
    v50 = v12;
    v30 = v29;
    v32 = v31;
    v51 = v24;
    sub_1000411A0(v24);
    v33 = *(v6 + 16);
    v33(v26, v24);
    *v4 = v25;
    *(v4 + 1) = v28;
    v34 = v30 & 1;
    v4[16] = v30 & 1;
    *(v4 + 3) = v32;
    v35 = sub_100006334(&qword_1001249D0);
    (v33)(&v4[*(v35 + 48)], v26, v5);
    sub_10004328C(v25, v28, v30 & 1);

    sub_10004328C(v25, v28, v30 & 1);
    v36 = *(v53 + 8);
    v53 += 8;

    v36(v26, v5);
    sub_10000F374(v25, v28, v34);

    sub_10000F8D0(v4, v49, &qword_1001249B0);
    swift_storeEnumTagMultiPayload();
    sub_10000FC38(&qword_1001249D8, &qword_1001249B0);
    sub_1000D229C();
    v19 = v52;
    sub_10000F374(v25, v28, v34);

    sub_10000F938(v4, &qword_1001249B0);
    v36(v51, v5);
  }

  v38 = v55;
  v37 = v56;
  v39 = *(v55 + 16);
  v41 = v57;
  v40 = v58;
  v39(v57, v56, v58);
  v42 = v19;
  v43 = v59;
  sub_10000F8D0(v19, v59, &qword_1001249C8);
  v44 = v60;
  v39(v60, v41, v40);
  v45 = sub_100006334(&qword_1001249E0);
  sub_10000F8D0(v43, &v44[*(v45 + 48)], &qword_1001249C8);
  sub_10000F938(v42, &qword_1001249C8);
  v46 = *(v38 + 8);
  v46(v37, v40);
  sub_10000F938(v43, &qword_1001249C8);
  return (v46)(v41, v40);
}

uint64_t sub_100041D8C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v42 = a2;
  v41 = sub_100006334(&qword_100124A18);
  v44 = *(v41 - 8);
  v3 = __chkstk_darwin(v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v36 - v5;
  v39 = sub_100006334(&qword_100124A20);
  v37 = *(v39 - 8);
  v6 = v37;
  v7 = __chkstk_darwin(v39);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = a1 + *(type metadata accessor for SportsWidgetBaseballClockView() + 24);
  v12 = *(v11 + 80);
  sub_1000D1CDC();
  v14 = v13 * 0.5 - v12;
  v15 = *(v11 + 72) * v14;
  v16 = sub_1000D2B5C();
  v18 = v17;
  sub_1000426B0(a1, v80, v14, v15, v12);
  v60 = v80[12];
  v61 = v80[13];
  v56 = v80[8];
  v57 = v80[9];
  v58 = v80[10];
  v59 = v80[11];
  v52 = v80[4];
  v53 = v80[5];
  v54 = v80[6];
  v55 = v80[7];
  v48 = v80[0];
  v49 = v80[1];
  v50 = v80[2];
  v51 = v80[3];
  v63[11] = v80[11];
  v63[12] = v80[12];
  v63[13] = v80[13];
  v63[14] = v80[14];
  v63[7] = v80[7];
  v63[8] = v80[8];
  v63[9] = v80[9];
  v63[10] = v80[10];
  v63[3] = v80[3];
  v63[4] = v80[4];
  v63[5] = v80[5];
  v63[6] = v80[6];
  v62 = v80[14];
  v63[0] = v80[0];
  v63[1] = v80[1];
  v63[2] = v80[2];
  sub_10000F8D0(&v48, v45, &qword_100124A28);
  sub_10000F938(v63, &qword_100124A28);
  v80[13] = v60;
  v80[14] = v61;
  v80[15] = v62;
  v80[9] = v56;
  v80[10] = v57;
  v80[12] = v59;
  v80[11] = v58;
  v80[5] = v52;
  v80[6] = v53;
  v80[8] = v55;
  v80[7] = v54;
  v80[1] = v48;
  v80[2] = v49;
  v80[4] = v51;
  v80[3] = v50;
  *&v80[0] = v16;
  *(&v80[0] + 1) = v18;
  sub_100006334(&qword_100124A30);
  sub_10000FC38(&qword_100124A38, &qword_100124A30);
  v36 = v10;
  sub_1000D262C();
  v64[12] = v80[12];
  v64[13] = v80[13];
  v64[14] = v80[14];
  v64[15] = v80[15];
  v64[8] = v80[8];
  v64[9] = v80[9];
  v64[10] = v80[10];
  v64[11] = v80[11];
  v64[4] = v80[4];
  v64[5] = v80[5];
  v64[6] = v80[6];
  v64[7] = v80[7];
  v64[0] = v80[0];
  v64[1] = v80[1];
  v64[2] = v80[2];
  v64[3] = v80[3];
  sub_10000F938(v64, &qword_100124A30);
  sub_1000D1CDC();
  v20 = ceil(v19 / 5.0);
  v21 = sub_1000D210C();
  v47 = 0;
  sub_100042AE4(a1, v80);
  v75 = v80[10];
  v76 = v80[11];
  v77 = v80[12];
  v78 = v80[13];
  v71 = v80[6];
  v72 = v80[7];
  v73 = v80[8];
  v74 = v80[9];
  v67 = v80[2];
  v68 = v80[3];
  v69 = v80[4];
  v70 = v80[5];
  v65 = v80[0];
  v66 = v80[1];
  v79[10] = v80[10];
  v79[11] = v80[11];
  v79[12] = v80[12];
  v79[13] = v80[13];
  v79[6] = v80[6];
  v79[7] = v80[7];
  v79[8] = v80[8];
  v79[9] = v80[9];
  v79[2] = v80[2];
  v79[3] = v80[3];
  v79[4] = v80[4];
  v79[5] = v80[5];
  v79[0] = v80[0];
  v79[1] = v80[1];
  sub_10000F8D0(&v65, v45, &qword_100124A40);
  sub_10000F938(v79, &qword_100124A40);
  *&v46[167] = v75;
  *&v46[183] = v76;
  *&v46[199] = v77;
  *&v46[215] = v78;
  *&v46[103] = v71;
  *&v46[119] = v72;
  *&v46[135] = v73;
  *&v46[151] = v74;
  *&v46[39] = v67;
  *&v46[55] = v68;
  *&v46[71] = v69;
  *&v46[87] = v70;
  *&v46[7] = v65;
  *&v46[23] = v66;
  LOBYTE(a1) = v47;
  sub_1000D1CDC();
  *(&v45[24] + 1) = *&v46[176];
  *(&v45[26] + 1) = *&v46[192];
  *(&v45[28] + 1) = *&v46[208];
  *(&v45[16] + 1) = *&v46[112];
  *(&v45[18] + 1) = *&v46[128];
  *(&v45[20] + 1) = *&v46[144];
  *(&v45[22] + 1) = *&v46[160];
  *(&v45[8] + 1) = *&v46[48];
  *(&v45[10] + 1) = *&v46[64];
  *(&v45[12] + 1) = *&v46[80];
  *(&v45[14] + 1) = *&v46[96];
  *(&v45[2] + 1) = *v46;
  *(&v45[4] + 1) = *&v46[16];
  v45[0] = v21;
  v45[1] = 0;
  LOBYTE(v45[2]) = a1;
  *(&v45[6] + 1) = *&v46[32];
  v45[30] = *&v46[223];
  v45[31] = 0;
  *&v45[32] = v22 - v20;
  sub_100006334(&qword_100124A48);
  sub_100043450();
  v23 = v43;
  sub_1000D262C();
  memcpy(v80, v45, 0x108uLL);
  sub_10000F938(v80, &qword_100124A48);
  v24 = *(v6 + 16);
  v25 = v38;
  v26 = v10;
  v27 = v39;
  v24(v38, v26, v39);
  v28 = *(v44 + 16);
  v30 = v40;
  v29 = v41;
  v28(v40, v23, v41);
  v31 = v42;
  v24(v42, v25, v27);
  v32 = sub_100006334(&qword_100124A68);
  v28(&v31[*(v32 + 48)], v30, v29);
  v33 = *(v44 + 8);
  v33(v43, v29);
  v34 = *(v37 + 8);
  v34(v36, v27);
  v33(v30, v29);
  return (v34)(v25, v27);
}

uint64_t sub_1000426B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  result = type metadata accessor for SportsWidgetBaseballClockView();
  v11 = *(a1 + *(result + 28));
  if (*(v11 + 16) < 2uLL)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = *(v11 + 33);
  v13 = objc_opt_self();
  if (v12)
  {
    v14 = &selRef_labelColor;
  }

  else
  {
    v14 = &selRef_tertiaryLabelColor;
  }

  v15 = [v13 *v14];
  v16 = sub_1000D27DC();
  sub_1000D2B5C();
  result = sub_1000D1C8C();
  *&v73[3] = *&v73[27];
  *&v73[11] = *&v73[35];
  *&v73[19] = *&v73[43];
  if (*(v11 + 16) < 3uLL)
  {
    goto LABEL_15;
  }

  v17 = *(v11 + 34);
  v18 = objc_opt_self();
  if (v17)
  {
    v19 = &selRef_labelColor;
  }

  else
  {
    v19 = &selRef_tertiaryLabelColor;
  }

  v20 = [v18 *v19];
  v21 = sub_1000D27DC();
  sub_1000D2B5C();
  result = sub_1000D1C8C();
  *&v72[6] = *&v73[51];
  *&v72[22] = *&v73[59];
  *&v72[38] = *&v73[67];
  if (!*(v11 + 16))
  {
    goto LABEL_16;
  }

  v22 = *(v11 + 32);
  v23 = objc_opt_self();
  if (v22)
  {
    v24 = &selRef_labelColor;
  }

  else
  {
    v24 = &selRef_tertiaryLabelColor;
  }

  v25 = [v23 *v24];
  v26 = sub_1000D27DC();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v71[6] = *&v73[75];
  *&v71[22] = *&v73[83];
  *&v71[38] = v74;
  *v43 = v16;
  *&v43[8] = 256;
  *&v43[10] = *v73;
  *&v43[26] = *&v73[8];
  *&v43[42] = *&v73[16];
  *&v43[56] = *&v73[23];
  v44 = a3 * 0.5 + a5;
  v45 = 0;
  *v46 = v21;
  v30 = *&v43[32];
  v31 = *&v43[48];
  *&v46[8] = 256;
  *&v46[56] = *&v72[46];
  *&v47 = 0;
  *&v46[42] = *&v72[32];
  *&v46[26] = *&v72[16];
  *&v46[10] = *v72;
  *(&v47 + 1) = a4 * 0.5 + a5;
  v32 = *&v44;
  v33 = *v46;
  v36 = *&v46[48];
  v37 = v47;
  v34 = *&v46[16];
  v35 = *&v46[32];
  *v48 = v26;
  *&v48[8] = 256;
  v27 = *&v71[16];
  *&v48[56] = *(&v74 + 1);
  *&v48[42] = *&v71[32];
  v28 = *v71;
  *&v48[26] = *&v71[16];
  *&v48[10] = *v71;
  *&v49 = a5 + a5 + a3;
  *(&v49 + 1) = *(&v47 + 1);
  v41 = *&v48[48];
  v42 = v49;
  v39 = *&v48[16];
  v40 = *&v48[32];
  v38 = *v48;
  v29 = *&v43[16];
  *a2 = *v43;
  a2[1] = v29;
  a2[4] = v32;
  a2[5] = v33;
  a2[2] = v30;
  a2[3] = v31;
  a2[8] = v36;
  a2[9] = v37;
  a2[6] = v34;
  a2[7] = v35;
  a2[13] = v41;
  a2[14] = v42;
  a2[11] = v39;
  a2[12] = v40;
  a2[10] = v38;
  v50 = v26;
  v51 = 256;
  v52 = v28;
  v53 = v27;
  *v54 = *&v71[32];
  *&v54[14] = *&v71[46];
  v55 = a5 + a5 + a3;
  v56 = a4 * 0.5 + a5;
  sub_10000F8D0(v43, &v64, &qword_100124A78);
  sub_10000F8D0(v46, &v64, &qword_100124A78);
  sub_10000F8D0(v48, &v64, &qword_100124A78);
  sub_10000F938(&v50, &qword_100124A78);
  v57 = v21;
  v58 = 256;
  v59 = *v72;
  v60 = *&v72[16];
  *v61 = *&v72[32];
  *&v61[14] = *&v72[46];
  v62 = 0;
  v63 = a4 * 0.5 + a5;
  sub_10000F938(&v57, &qword_100124A78);
  v64 = v16;
  v65 = 256;
  v66 = *v73;
  v67 = *&v73[8];
  *v68 = *&v73[16];
  *&v68[14] = *&v73[23];
  v69 = a3 * 0.5 + a5;
  v70 = 0;
  return sub_10000F938(&v64, &qword_100124A78);
}

uint64_t sub_100042AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SportsWidgetBaseballClockView();
  v5 = *(a1 + *(result + 28) + 8);
  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(v5 + 32);
  v8 = objc_opt_self();
  if (v7)
  {
    v9 = &selRef_labelColor;
  }

  else
  {
    v9 = &selRef_tertiaryLabelColor;
  }

  v10 = [v8 *v9];
  v11 = sub_1000D27DC();
  sub_1000D2B5C();
  result = sub_1000D1C8C();
  *&v49[19] = *&v49[43];
  *&v49[11] = *&v49[35];
  *&v49[3] = *&v49[27];
  if (*(v5 + 16) < 2uLL)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + *(v6 + 24) + 88);
  v13 = *(v5 + 33);
  v14 = objc_opt_self();
  if (v13)
  {
    v15 = &selRef_labelColor;
  }

  else
  {
    v15 = &selRef_tertiaryLabelColor;
  }

  v16 = [v14 *v15];
  v17 = sub_1000D27DC();
  sub_1000D2B5C();
  result = sub_1000D1C8C();
  *&v48[6] = *&v49[51];
  *&v48[22] = *&v49[59];
  *&v48[38] = *&v49[67];
  if (*(v5 + 16) < 3uLL)
  {
    goto LABEL_15;
  }

  v26 = v12;
  v18 = *(v5 + 34);
  v19 = objc_opt_self();
  v20 = &selRef_labelColor;
  if (!v18)
  {
    v20 = &selRef_tertiaryLabelColor;
  }

  v21 = [v19 *v20];
  v22 = sub_1000D27DC();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v47[6] = *&v49[75];
  *&v47[22] = *&v49[83];
  *&v47[38] = v50;
  *v29 = v11;
  *&v29[8] = 256;
  *&v29[10] = *v49;
  *&v29[26] = *&v49[8];
  *&v29[42] = *&v49[16];
  *&v29[56] = *&v49[23];
  *v30 = v17;
  *&v30[8] = 256;
  *&v30[10] = *v48;
  *&v30[56] = *&v48[46];
  *v31 = v22;
  *&v30[42] = *&v48[32];
  *&v30[26] = *&v48[16];
  *&v28[55] = *&v30[48];
  *&v28[39] = *&v30[32];
  *&v28[23] = *&v30[16];
  *&v28[7] = *v30;
  *&v31[8] = 256;
  *&v31[10] = *v47;
  *&v31[56] = *(&v50 + 1);
  *&v31[42] = *&v47[32];
  *&v31[26] = *&v47[16];
  *&v27[55] = *&v31[48];
  *&v27[39] = *&v31[32];
  *&v27[23] = *&v31[16];
  *&v27[7] = *v31;
  v23 = *v29;
  v24 = *&v29[16];
  v25 = *&v29[48];
  *(a2 + 32) = *&v29[32];
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 64) = v26;
  *(a2 + 72) = 0;
  *(a2 + 73) = *v28;
  *(a2 + 136) = *&v28[63];
  *(a2 + 144) = v26;
  *(a2 + 121) = *&v28[48];
  *(a2 + 105) = *&v28[32];
  *(a2 + 89) = *&v28[16];
  *(a2 + 152) = 0;
  *(a2 + 153) = *v27;
  *(a2 + 216) = *&v27[63];
  *(a2 + 201) = *&v27[48];
  *(a2 + 185) = *&v27[32];
  *(a2 + 169) = *&v27[16];
  v32 = v22;
  v33 = 256;
  *&v36[14] = *&v47[46];
  *v36 = *&v47[32];
  v35 = *&v47[16];
  v34 = *v47;
  sub_10000F8D0(v29, &v42, &qword_100124A70);
  sub_10000F8D0(v30, &v42, &qword_100124A70);
  sub_10000F8D0(v31, &v42, &qword_100124A70);
  sub_10000F938(&v32, &qword_100124A70);
  v37 = v17;
  v38 = 256;
  v39 = *v48;
  v40 = *&v48[16];
  *v41 = *&v48[32];
  *&v41[14] = *&v48[46];
  sub_10000F938(&v37, &qword_100124A70);
  v42 = v11;
  v43 = 256;
  v44 = *v49;
  v45 = *&v49[8];
  *v46 = *&v49[16];
  *&v46[14] = *&v49[23];
  return sub_10000F938(&v42, &qword_100124A70);
}

uint64_t sub_100042F04@<X0>(uint64_t a1@<X8>)
{
  sub_10003F004(v1, a1);
  v3 = (a1 + *(sub_100006334(&qword_1001248F0) + 36));
  sub_100006334(&qword_1001248F8);
  sub_1000D1EFC();
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

unint64_t sub_100042FC0()
{
  result = qword_100124950;
  if (!qword_100124950)
  {
    sub_10000637C(&qword_100124928);
    sub_10004304C();
    sub_100043104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124950);
  }

  return result;
}

unint64_t sub_10004304C()
{
  result = qword_100124958;
  if (!qword_100124958)
  {
    sub_10000637C(&qword_100124938);
    sub_10000FC38(&qword_100124960, &qword_100124930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124958);
  }

  return result;
}

unint64_t sub_100043104()
{
  result = qword_100124968;
  if (!qword_100124968)
  {
    sub_10000637C(&qword_100124910);
    sub_10000FC38(&qword_100124970, &qword_100124908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124968);
  }

  return result;
}

uint64_t sub_1000431BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsWidgetBaseballClockView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsWidgetBaseballClockView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004328C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000432A4()
{
  result = qword_1001249F8;
  if (!qword_1001249F8)
  {
    sub_10000637C(&qword_1001249F0);
    sub_10000F44C();
    sub_10000FC38(&qword_100124A00, &qword_100124A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001249F8);
  }

  return result;
}

unint64_t sub_10004335C()
{
  result = qword_100124A10;
  if (!qword_100124A10)
  {
    sub_10000637C(&qword_1001249E8);
    sub_10000637C(&qword_1001249F0);
    sub_1000432A4();
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124A10);
  }

  return result;
}

unint64_t sub_100043450()
{
  result = qword_100124A50;
  if (!qword_100124A50)
  {
    sub_10000637C(&qword_100124A48);
    sub_10000FC38(&qword_100124A58, &qword_100124A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124A50);
  }

  return result;
}

unint64_t sub_100043508()
{
  result = qword_100122460;
  if (!qword_100122460)
  {
    sub_1000D1DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122460);
  }

  return result;
}

uint64_t sub_100043560()
{
  v1 = type metadata accessor for SportsWidgetBaseballClockView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100006334(&qword_100122410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000D1DBC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100006334(&qword_100123C48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000D1DDC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[8];
  v11 = sub_100006334(&qword_100123C60);
  v12 = *(*(v11 - 8) + 8);
  v12(v5 + v10, v11);
  v12(v5 + v1[9], v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000437F8@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for SportsWidgetBaseballClockView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100041D8C(v4, a1);
}

unint64_t sub_10004387C()
{
  result = qword_100124A98;
  if (!qword_100124A98)
  {
    sub_10000637C(&qword_1001248F0);
    sub_100043934();
    sub_10000FC38(&qword_100124AC0, &qword_1001248F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124A98);
  }

  return result;
}

unint64_t sub_100043934()
{
  result = qword_100124AA0;
  if (!qword_100124AA0)
  {
    sub_10000637C(&qword_100124AA8);
    sub_1000439E4(&qword_100124AB0, &qword_100124AB8, &unk_1000E45F8, sub_100042F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124AA0);
  }

  return result;
}

uint64_t sub_1000439E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000637C(a2);
    a4();
    sub_10000637C(&qword_1001224B8);
    sub_10000F394();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100043AAC()
{
  v1 = v0;
  v2 = sub_100006334(&qword_100122DB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_1000D191C();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsWidgetClock(0);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[5];
  v11 = v0[3];
  v63 = v0[4];
  v64 = v10;
  v12 = v0[5];
  v65 = v0[6];
  v13 = v0[1];
  v60[0] = *v0;
  v60[1] = v13;
  v14 = v0[3];
  v16 = *v0;
  v15 = v0[1];
  v61 = v0[2];
  v62 = v14;
  v71 = v63;
  v72 = v12;
  v73 = v0[6];
  v67 = v16;
  v68 = v15;
  v48 = 0x203A416E6F43;
  v49 = 0xE600000000000000;
  v66 = *(v0 + 112);
  v74 = *(v0 + 112);
  v69 = v61;
  v70 = v11;
  sub_100045044(v60, v51);
  v75._countAndFlagsBits = sub_1000D362C();
  sub_1000D366C(v75);

  v76._countAndFlagsBits = 8236;
  v76._object = 0xE200000000000000;
  sub_1000D366C(v76);
  v58 = v48;
  v59 = v49;
  v50._countAndFlagsBits = 0x203A426E6F43;
  v50._object = 0xE600000000000000;
  v17 = *(v0 + 200);
  v71 = *(v0 + 184);
  v72 = v17;
  v73 = *(v0 + 216);
  v74 = *(v0 + 232);
  v18 = *(v0 + 136);
  v67 = *(v0 + 120);
  v68 = v18;
  v19 = *(v0 + 168);
  v69 = *(v0 + 152);
  v70 = v19;
  v20 = *(v0 + 200);
  v54 = *(v0 + 184);
  v55 = v20;
  v56 = *(v0 + 216);
  v57 = *(v0 + 232);
  v21 = *(v0 + 136);
  v51[0] = *(v0 + 120);
  v51[1] = v21;
  v22 = *(v0 + 168);
  v52 = *(v0 + 152);
  v53 = v22;
  sub_100045044(&v67, &v48);
  v77._countAndFlagsBits = sub_1000D362C();
  sub_1000D366C(v77);

  v78._countAndFlagsBits = 8236;
  v78._object = 0xE200000000000000;
  sub_1000D366C(v78);
  sub_1000D366C(v50);

  v23 = type metadata accessor for SportsWidgetContentViewModel(0);
  v24 = v23;
  if (*(v0 + *(v23 + 36)) == 1)
  {
    sub_100045144(v0 + *(v23 + 24), v9, type metadata accessor for SportsWidgetClock);
    v51[0]._countAndFlagsBits = sub_1000D362C();
    v51[0]._object = v25;
    v79._countAndFlagsBits = 8236;
    v79._object = 0xE200000000000000;
    sub_1000D366C(v79);
    sub_1000D366C(v51[0]);
  }

  if (*(v0 + v24[10]) == 1)
  {
    v26 = v0 + v24[7];
    v27 = *v26;
    v28 = *(v26 + 24);
    *&v51[0]._object = *(v26 + 8);
    v51[0]._countAndFlagsBits = v27;
    v51[1]._object = v28;

    v51[0]._countAndFlagsBits = sub_1000D362C();
    v51[0]._object = v29;
    v80._countAndFlagsBits = 8236;
    v80._object = 0xE200000000000000;
    sub_1000D366C(v80);
    sub_1000D366C(v51[0]);
  }

  v51[0]._countAndFlagsBits = 0;
  v51[0]._object = 0xE000000000000000;
  sub_1000D38DC(17);

  strcpy(v51, "PbP enabled: ");
  HIWORD(v51[0]._object) = -4864;
  v30 = *(v0 + v24[12]);
  if (*(v0 + v24[12]))
  {
    v31._countAndFlagsBits = 1702195828;
  }

  else
  {
    v31._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + v24[12]))
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  v31._object = v32;
  sub_1000D366C(v31);

  v81._countAndFlagsBits = 8236;
  v81._object = 0xE200000000000000;
  sub_1000D366C(v81);
  sub_1000D366C(v51[0]);

  if (v30 == 1)
  {
    v33 = v0 + v24[8];
    v35 = *v33;
    v34 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    v38 = *(v33 + 32);
    v39 = *(v33 + 40);
    LOBYTE(v33) = *(v33 + 48);
    v51[0]._countAndFlagsBits = v35;
    v51[0]._object = v34;
    LOBYTE(v51[1]._countAndFlagsBits) = v36;
    v51[1]._object = v37;
    LOBYTE(v52) = v38;
    *(&v52 + 1) = v39;
    LOBYTE(v53) = v33;

    v51[0]._countAndFlagsBits = sub_1000D362C();
    v51[0]._object = v40;
    v82._countAndFlagsBits = 8236;
    v82._object = 0xE200000000000000;
    sub_1000D366C(v82);
    sub_1000D366C(v51[0]);
  }

  sub_10000F8D0(v1 + v24[13], v4, &qword_100122DB8);
  v42 = v46;
  v41 = v47;
  if ((*(v46 + 48))(v4, 1, v47) == 1)
  {
    sub_10000F938(v4, &qword_100122DB8);
  }

  else
  {
    v43 = v45;
    (*(v42 + 32))(v45, v4, v41);
    strcpy(v51, "Event url: ");
    HIDWORD(v51[0]._object) = -352321536;
    sub_1000450FC(&qword_100124AC8, &type metadata accessor for URL);
    v83._countAndFlagsBits = sub_1000D39BC();
    sub_1000D366C(v83);

    sub_1000D366C(v51[0]);

    (*(v42 + 8))(v43, v41);
  }

  return v58;
}

uint64_t sub_1000440F4()
{
  v6 = *(v0 + 32);
  v7 = v6;
  sub_1000450A0(&v7, &v5);
  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  sub_1000D366C(v8);
  v1 = *(v0 + 24);
  v5._countAndFlagsBits = *(v0 + 16);
  v5._object = v1;

  v9._countAndFlagsBits = sub_1000D362C();
  sub_1000D366C(v9);

  v5._countAndFlagsBits = 0x203A656D6F48202CLL;
  v5._object = 0xE800000000000000;
  if (*(v0 + 96))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 96))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_1000D366C(v2);

  sub_1000D366C(v5);

  if (*(v0 + 112))
  {
    v10._countAndFlagsBits = 0x72656E6E695720;
    v10._object = 0xE700000000000000;
    sub_1000D366C(v10);
  }

  return v6;
}

uint64_t sub_10004421C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10004424C()
{
  v1 = v0;
  v2 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1000D19FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  v9 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  if (*(&v1->_countAndFlagsBits + *(v9 + 44)) == 1)
  {
    v10 = v9;
    v21 = v6;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_1000D38DC(26);

    v23._countAndFlagsBits = 0x203A786966657250;
    v23._object = 0xE800000000000000;
    object = v1[2]._object;
    if (object)
    {
      countAndFlagsBits = v1[2]._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (object)
    {
      v13 = v1[2]._object;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v26._countAndFlagsBits = countAndFlagsBits;
    v26._object = v13;
    sub_1000D366C(v26);

    v27._countAndFlagsBits = 0x767265746E49202CLL;
    v27._object = 0xEC000000203A6C61;
    sub_1000D366C(v27);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1000D395C();
    v28._countAndFlagsBits = 3026478;
    v28._object = 0xE300000000000000;
    sub_1000D366C(v28);
    sub_100006334(&qword_100122E88);
    sub_1000D395C();
    sub_1000D366C(v22);

    v29._countAndFlagsBits = 8236;
    v29._object = 0xE200000000000000;
    sub_1000D366C(v29);
    sub_1000D366C(v23);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_1000D38DC(19);

    v23._countAndFlagsBits = 0x676E69746E756F43;
    v23._object = 0xEF203A6E776F6420;
    if (*(&v1->_countAndFlagsBits + *(v10 + 40)))
    {
      v14._countAndFlagsBits = 1702195828;
    }

    else
    {
      v14._countAndFlagsBits = 0x65736C6166;
    }

    if (*(&v1->_countAndFlagsBits + *(v10 + 40)))
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v14._object = v15;
    sub_1000D366C(v14);

    v30._countAndFlagsBits = 8236;
    v30._object = 0xE200000000000000;
    sub_1000D366C(v30);
    sub_1000D366C(v23);

    v16._object = v1[3]._object;
    if (v16._object)
    {
      v16._countAndFlagsBits = v1[3]._countAndFlagsBits;
      v23._countAndFlagsBits = 0x203A786966667553;
      v23._object = 0xE800000000000000;
      sub_1000D366C(v16);
      v31._countAndFlagsBits = 8236;
      v31._object = 0xE200000000000000;
      sub_1000D366C(v31);
      sub_1000D366C(v23);
    }

    sub_10000F8D0(v1 + *(v10 + 36), v4, &qword_100122E90);
    v17 = v21;
    if ((*(v21 + 48))(v4, 1, v5) == 1)
    {
      sub_10000F938(v4, &qword_100122E90);
      v18._object = v1[1]._object;
      if (!v18._object)
      {
        return v24;
      }
    }

    else
    {
      (*(v17 + 32))(v8, v4, v5);
      v23._countAndFlagsBits = 0x7461206573756150;
      v23._object = 0xEA0000000000203ALL;
      sub_1000450FC(&qword_100124AD0, &type metadata accessor for Date);
      v32._countAndFlagsBits = sub_1000D39BC();
      sub_1000D366C(v32);

      v33._countAndFlagsBits = 8236;
      v33._object = 0xE200000000000000;
      sub_1000D366C(v33);
      sub_1000D366C(v23);

      (*(v17 + 8))(v8, v5);
      v18._object = v1[1]._object;
      if (!v18._object)
      {
        return v24;
      }
    }

    goto LABEL_20;
  }

  sub_1000D366C(*v1);
  v18._object = v1[1]._object;
  if (v18._object)
  {
LABEL_20:
    v18._countAndFlagsBits = v1[1]._countAndFlagsBits;
    v23._countAndFlagsBits = 0x203A726564616548;
    v23._object = 0xE800000000000000;
    sub_1000D366C(v18);
    sub_1000D366C(v23);
  }

  return v24;
}

uint64_t sub_100044744()
{
  if (*(v0 + 48))
  {

    sub_100006334(&qword_100124AD8);
    v2._countAndFlagsBits = sub_1000D362C();
    sub_1000D366C(v2);

    v3._countAndFlagsBits = 8236;
    v3._object = 0xE200000000000000;
    sub_1000D366C(v3);
    v4._countAndFlagsBits = 0x203A7365736142;
    v4._object = 0xE700000000000000;
    sub_1000D366C(v4);

    v5._countAndFlagsBits = sub_1000D362C();
    sub_1000D366C(v5);

    v6._countAndFlagsBits = 8236;
    v6._object = 0xE200000000000000;
    sub_1000D366C(v6);
    v7._countAndFlagsBits = 0x203A7374754FLL;
    v7._object = 0xE600000000000000;
    sub_1000D366C(v7);

    sub_1000D366C(*(v0 + 32));
    v8._countAndFlagsBits = 0x3A73656B69727453;
    v8._object = 0xE900000000000020;
    sub_1000D366C(v8);
  }

  else
  {
    sub_1000D366C(*(v0 + 16));
  }

  return 0;
}

uint64_t sub_1000448C8(uint64_t a1)
{
  v3 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  __chkstk_darwin(v3);
  sub_100045144(v1, v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsWidgetGenericClockViewModel);
  result = sub_1000D362C();
  v8 = result;
  v9 = v6;
  if (*(v1 + *(a1 + 20)))
  {
    v7[1] = *(v1 + *(a1 + 20));

    sub_100006334(&unk_100122FC8);
    v10._countAndFlagsBits = sub_1000D362C();
    sub_1000D366C(v10);

    return v8;
  }

  return result;
}

uint64_t sub_1000449C4()
{

  sub_100006334(&qword_100124AE0);
  return sub_1000D362C();
}

uint64_t sub_100044A0C()
{
  v1 = 1936943469;
  if (*v0 != 1)
  {
    v1 = 1818324839;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974706D65;
  }
}

uint64_t sub_100044A54(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1000D38DC(18);

  strcpy(v11, "Event info: ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    a1 = 0;
    v8 = 0xE000000000000000;
  }

  v12._countAndFlagsBits = a1;
  v12._object = v8;
  sub_1000D366C(v12);

  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  sub_1000D366C(v13);
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    a3 = 0;
    v9 = 0xE000000000000000;
  }

  v14._countAndFlagsBits = a3;
  v14._object = v9;
  sub_1000D366C(v14);

  return v11[0];
}

uint64_t sub_100044B54()
{
  sub_1000D366C(*v0);
  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  sub_1000D366C(v3);
  if (*(v0 + 16))
  {
    v2._countAndFlagsBits = 0x203A7466654CLL;
    v2._object = 0xE600000000000000;
LABEL_5:
    v4._countAndFlagsBits = sub_1000D27EC();
    sub_1000D366C(v4);

    sub_1000D366C(v2);

    return 0x203A79616C50;
  }

  if (*(v0 + 32))
  {
    v2._countAndFlagsBits = 0x203A6874676952;
    v2._object = 0xE700000000000000;
    goto LABEL_5;
  }

  return 0x203A79616C50;
}

unint64_t sub_100044C38()
{
  v1 = type metadata accessor for SportsWidgetSoccerClockViewModel(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  v7 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SportsWidgetClock(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045144(v0, v15, type metadata accessor for SportsWidgetClock);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10003E84C(v15, v12, type metadata accessor for SportsWidgetGenericClockViewModel);
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(17);

    *&v27[0] = 0x20636972656E6547;
    *(&v27[0] + 1) = 0xEF203A6B636F6C63;
    sub_100045144(v12, v10, type metadata accessor for SportsWidgetGenericClockViewModel);
    v34._countAndFlagsBits = sub_1000D362C();
    sub_1000D366C(v34);

    v21 = *&v27[0];
    v22 = v12;
    v23 = type metadata accessor for SportsWidgetGenericClockViewModel;
LABEL_6:
    sub_1000451AC(v22, v23);
    return v21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10003E84C(v15, v6, type metadata accessor for SportsWidgetSoccerClockViewModel);
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_1000D38DC(16);

    strcpy(v27, "Soccer clock: ");
    HIBYTE(v27[0]) = -18;
    sub_100045144(v6, v4, type metadata accessor for SportsWidgetSoccerClockViewModel);
    v35._countAndFlagsBits = sub_1000D362C();
    sub_1000D366C(v35);

    v21 = *&v27[0];
    v22 = v6;
    v23 = type metadata accessor for SportsWidgetSoccerClockViewModel;
    goto LABEL_6;
  }

  v17 = *(v15 + 4);
  v18 = *(v15 + 5);
  v19 = v15[48];
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  v20 = *(v15 + 1);
  v25 = *v15;
  v26 = v20;
  sub_1000D38DC(18);

  v31 = 0xD000000000000010;
  v32 = 0x80000001000D7770;
  v27[0] = v25;
  v27[1] = v26;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v33._countAndFlagsBits = sub_1000D362C();
  sub_1000D366C(v33);

  return v31;
}

uint64_t sub_100044FC8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 40);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  sub_1000D366C(v5);

  return 0x6C7275206F676F4CLL;
}

uint64_t sub_1000450FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000451AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Class sub_10004523C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v4.super.super.isa = sub_1000D3A7C().super.super.isa;

  return v4.super.super.isa;
}

id TVRestrictionsUtilityProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TVRestrictionsUtilityProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, "init");
}

id TVRestrictionsUtilityProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVRestrictionsUtilityProxyObjC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000453DC()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C180);
  sub_100006610(v10, qword_10013C180);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000456C4()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v47 = v30 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v36 = v30 - v3;
  v46 = sub_1000D189C();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D1A2C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D35EC();
  __chkstk_darwin(v8 - 8);
  v45 = sub_1000D18BC();
  v50 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100124B88);
  v11 = sub_100006334(&qword_100123788);
  v49 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v37 = 2 * v12;
  v14 = swift_allocObject();
  v38 = v14;
  *(v14 + 16) = xmmword_1000E3AA0;
  v48 = v14 + v13;
  v35 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = v4 + 104;
  v17 = *(v4 + 104);
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = v46;
  v17(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v46);
  v32 = v17;
  v33 = v16;
  v39 = "com.apple.Preferences";
  sub_1000D18CC();
  v44 = "oxyObjC";
  sub_1000D358C();
  sub_1000D1A1C();
  v17(v6, v15, v18);
  v19 = v36;
  sub_1000D18CC();
  v20 = *(v50 + 56);
  v50 += 56;
  v40 = v20;
  v20(v19, 0, 1, v45);
  v42 = sub_1000D15FC();
  v21 = *(v42 - 8);
  v41 = *(v21 + 56);
  v43 = v21 + 56;
  v41(v47, 1, 1, v42);
  v22 = v48;
  v30[1] = v10;
  sub_1000D162C();
  v23 = *(v49 + 48);
  v34 = v22 + v12;
  v35 = v23;
  *(v22 + v12) = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v24 = v31;
  v25 = v46;
  v26 = v32;
  v32(v6, v31, v46);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v26(v6, v24, v25);
  sub_1000D18CC();
  v40(v19, 0, 1, v45);
  v41(v47, 1, 1, v42);
  sub_1000D162C();
  v35 = v48 + v37;
  v37 = *(v49 + 48);
  *v35 = 2;
  sub_1000D358C();
  sub_1000D1A1C();
  v27 = v46;
  v26(v6, v24, v46);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v26(v6, v24, v27);
  sub_1000D18CC();
  v40(v19, 0, 1, v45);
  v41(v47, 1, 1, v42);
  sub_1000D162C();
  v28 = sub_100024934(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C198 = v28;
  return result;
}

uint64_t sub_100045EA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "DarkAppearanceOption";
  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v2 == 1)
  {
    v6 = "DarkAppearanceOption";
  }

  else
  {
    v6 = "LightAppearanceOption";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "BestQualityDownload";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v3 = "LightAppearanceOption";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "BestQualityDownload";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000D39CC();
  }

  return v11 & 1;
}

Swift::Int sub_100045F78()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100046010()
{
  sub_1000D364C();
}

Swift::Int sub_100046094()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100046128@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000468B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100046158(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = "DarkAppearanceOption";
  v4 = 0xD000000000000016;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v3 = "LightAppearanceOption";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "BestQualityDownload";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1000461C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122028 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D174C();
  v3 = sub_100006610(v2, qword_10013C180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100046268(uint64_t a1)
{
  v2 = sub_1000464B4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000462B4()
{
  if (qword_100122030 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100046310(uint64_t a1)
{
  v2 = sub_100046564();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100046360()
{
  result = qword_100124B10;
  if (!qword_100124B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B10);
  }

  return result;
}

unint64_t sub_1000463B8()
{
  result = qword_100124B18;
  if (!qword_100124B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B18);
  }

  return result;
}

unint64_t sub_100046410()
{
  result = qword_100124B20;
  if (!qword_100124B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B20);
  }

  return result;
}

unint64_t sub_1000464B4()
{
  result = qword_100124B28;
  if (!qword_100124B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B28);
  }

  return result;
}

unint64_t sub_100046508()
{
  result = qword_100124B30;
  if (!qword_100124B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B30);
  }

  return result;
}

unint64_t sub_100046564()
{
  result = qword_100124B38;
  if (!qword_100124B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B38);
  }

  return result;
}

unint64_t sub_1000465B8()
{
  result = qword_100124B40;
  if (!qword_100124B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B40);
  }

  return result;
}

unint64_t sub_100046610()
{
  result = qword_100124B48;
  if (!qword_100124B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B48);
  }

  return result;
}

unint64_t sub_10004666C()
{
  result = qword_100124B50;
  if (!qword_100124B50)
  {
    sub_10000637C(&qword_100124B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B50);
  }

  return result;
}

unint64_t sub_1000466D4()
{
  result = qword_100124B60;
  if (!qword_100124B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B60);
  }

  return result;
}

unint64_t sub_10004672C()
{
  result = qword_100124B68;
  if (!qword_100124B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B68);
  }

  return result;
}

unint64_t sub_100046784()
{
  result = qword_100124B70;
  if (!qword_100124B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B70);
  }

  return result;
}

unint64_t sub_1000467D8(uint64_t a1)
{
  *(a1 + 8) = sub_1000464B4();
  result = sub_100046808();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100046808()
{
  result = qword_100124B78;
  if (!qword_100124B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B78);
  }

  return result;
}

unint64_t sub_100046860()
{
  result = qword_100124B80;
  if (!qword_100124B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B80);
  }

  return result;
}

uint64_t sub_1000468B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100118AE0;
  v6._object = a2;
  v4 = sub_1000D39AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004692C()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C1A0);
  sub_100006610(v10, qword_10013C1A0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100046C18()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v53 = &v31 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v54 = &v31 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v51 = sub_1000D18BC();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100124C80);
  v12 = sub_100006334(&qword_100123778);
  v52 = v12;
  v13 = *(v12 - 8);
  v42 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v43 = xmmword_1000E2080;
  v44 = v15;
  *(v15 + 16) = xmmword_1000E2080;
  v50 = v15 + v14;
  v41 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = v5 + 104;
  v18 = *(v5 + 104);
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = v4;
  v18(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v45 = v18;
  v46 = "com.apple.Preferences";
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v18(v7, v16, v4);
  v31 = v17;
  v19 = v54;
  sub_1000D18CC();
  v40 = *(v10 + 56);
  v40(v19, 0, 1, v51);
  v38 = sub_1000D15FC();
  v20 = *(v38 - 8);
  v37 = *(v20 + 56);
  v39 = v20 + 56;
  v37(v53, 1, 1, v38);
  v36 = sub_100006334(&qword_100123750);
  v35 = v10 + 56;
  v48 = *(v10 + 72);
  v34 = *(v10 + 80);
  v33 = (v34 + 32) & ~v34;
  *(swift_allocObject() + 16) = xmmword_1000E0440;
  sub_1000D358C();
  sub_1000D1A1C();
  v21 = v32;
  v22 = v45;
  v45(v7, v47, v32);
  sub_1000D18CC();
  v23 = v50;
  sub_1000D162C();
  v24 = *(v52 + 48);
  v41 = (v23 + v42);
  v42 = v24;
  *v41 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v25 = v47;
  v22(v7, v47, v21);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v26 = v21;
  v22(v7, v25, v21);
  v27 = v54;
  sub_1000D18CC();
  v40(v27, 0, 1, v51);
  v37(v53, 1, 1, v38);
  *(swift_allocObject() + 16) = v43;
  sub_1000D358C();
  sub_1000D1A1C();
  v28 = v45;
  v45(v7, v25, v26);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v7, v25, v26);
  sub_1000D18CC();
  sub_1000D162C();
  v29 = sub_100024B1C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C1B8 = v29;
  return result;
}

void sub_1000474D0(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "GoodQualityDownload";
  }

  else
  {
    v2 = "uality";
  }

  *a1 = 0xD000000000000013;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_10004753C(uint64_t a1)
{
  v2 = sub_10004894C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000475AC(uint64_t a1)
{
  v2 = sub_1000489FC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000475F8()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000D18BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_1000D174C();
  sub_1000065AC(v5, qword_10013C1C0);
  sub_100006610(v5, qword_10013C1C0);
  sub_1000D188C();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1000D173C();
}

uint64_t sub_100047768()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v53 = &v31 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v54 = &v31 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v51 = sub_1000D18BC();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100124C88);
  v12 = sub_100006334(&qword_100123798);
  v52 = v12;
  v13 = *(v12 - 8);
  v42 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v43 = xmmword_1000E2080;
  v44 = v15;
  *(v15 + 16) = xmmword_1000E2080;
  v50 = v15 + v14;
  v41 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = v5 + 104;
  v18 = *(v5 + 104);
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = v4;
  v18(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v45 = v18;
  v46 = "com.apple.Preferences";
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v18(v7, v16, v4);
  v31 = v17;
  v19 = v54;
  sub_1000D18CC();
  v40 = *(v10 + 56);
  v40(v19, 0, 1, v51);
  v38 = sub_1000D15FC();
  v20 = *(v38 - 8);
  v37 = *(v20 + 56);
  v39 = v20 + 56;
  v37(v53, 1, 1, v38);
  v36 = sub_100006334(&qword_100123750);
  v35 = v10 + 56;
  v48 = *(v10 + 72);
  v34 = *(v10 + 80);
  v33 = (v34 + 32) & ~v34;
  *(swift_allocObject() + 16) = xmmword_1000E0440;
  sub_1000D358C();
  sub_1000D1A1C();
  v21 = v32;
  v22 = v45;
  v45(v7, v47, v32);
  sub_1000D18CC();
  v23 = v50;
  sub_1000D162C();
  v24 = *(v52 + 48);
  v41 = (v23 + v42);
  v42 = v24;
  *v41 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v25 = v47;
  v22(v7, v47, v21);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v26 = v21;
  v22(v7, v25, v21);
  v27 = v54;
  sub_1000D18CC();
  v40(v27, 0, 1, v51);
  v37(v53, 1, 1, v38);
  *(swift_allocObject() + 16) = v43;
  sub_1000D358C();
  sub_1000D1A1C();
  v28 = v45;
  v45(v7, v25, v26);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v7, v25, v26);
  sub_1000D18CC();
  sub_1000D162C();
  v29 = sub_100024D04(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C1D8 = v29;
  return result;
}

uint64_t sub_100048004(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "GoodQualityDownload";
  }

  else
  {
    v2 = "uality";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "GoodQualityDownload";
  }

  else
  {
    v4 = "uality";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1000D39CC();
  }

  return v5 & 1;
}

Swift::Int sub_1000480A8()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100048120()
{
  sub_1000D364C();
}

Swift::Int sub_100048184()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100048238(uint64_t a1)
{
  v2 = sub_100048414();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000482A8(uint64_t a1)
{
  v2 = sub_1000484C4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000482F8()
{
  result = qword_100124B90;
  if (!qword_100124B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B90);
  }

  return result;
}

unint64_t sub_100048350()
{
  result = qword_100124B98;
  if (!qword_100124B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124B98);
  }

  return result;
}

unint64_t sub_1000483A8()
{
  result = qword_100124BA0;
  if (!qword_100124BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BA0);
  }

  return result;
}

unint64_t sub_100048414()
{
  result = qword_100124BA8;
  if (!qword_100124BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BA8);
  }

  return result;
}

unint64_t sub_100048468()
{
  result = qword_100124BB0;
  if (!qword_100124BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BB0);
  }

  return result;
}

unint64_t sub_1000484C4()
{
  result = qword_100124BB8;
  if (!qword_100124BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BB8);
  }

  return result;
}

unint64_t sub_100048518()
{
  result = qword_100124BC0;
  if (!qword_100124BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BC0);
  }

  return result;
}

unint64_t sub_100048570()
{
  result = qword_100124BC8;
  if (!qword_100124BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BC8);
  }

  return result;
}

unint64_t sub_1000485FC()
{
  result = qword_100124BE0;
  if (!qword_100124BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BE0);
  }

  return result;
}

unint64_t sub_100048654()
{
  result = qword_100124BE8;
  if (!qword_100124BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BE8);
  }

  return result;
}

unint64_t sub_1000486AC()
{
  result = qword_100124BF0;
  if (!qword_100124BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BF0);
  }

  return result;
}

unint64_t sub_10004872C()
{
  result = qword_100124BF8;
  if (!qword_100124BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BF8);
  }

  return result;
}

unint64_t sub_100048784()
{
  result = qword_100124C00;
  if (!qword_100124C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C00);
  }

  return result;
}

unint64_t sub_1000487DC()
{
  result = qword_100124C08;
  if (!qword_100124C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C08);
  }

  return result;
}

unint64_t sub_100048834()
{
  result = qword_100124C10;
  if (!qword_100124C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C10);
  }

  return result;
}

unint64_t sub_10004888C()
{
  result = qword_100124C18;
  if (!qword_100124C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C18);
  }

  return result;
}

unint64_t sub_10004894C()
{
  result = qword_100124C20;
  if (!qword_100124C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C20);
  }

  return result;
}

unint64_t sub_1000489A0()
{
  result = qword_100124C28;
  if (!qword_100124C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C28);
  }

  return result;
}

unint64_t sub_1000489FC()
{
  result = qword_100124C30;
  if (!qword_100124C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C30);
  }

  return result;
}

unint64_t sub_100048A50()
{
  result = qword_100124C38;
  if (!qword_100124C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C38);
  }

  return result;
}

unint64_t sub_100048AA8()
{
  result = qword_100124C40;
  if (!qword_100124C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C40);
  }

  return result;
}

unint64_t sub_100048B34()
{
  result = qword_100124C58;
  if (!qword_100124C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C58);
  }

  return result;
}

unint64_t sub_100048B8C()
{
  result = qword_100124C60;
  if (!qword_100124C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C60);
  }

  return result;
}

unint64_t sub_100048BE4()
{
  result = qword_100124C68;
  if (!qword_100124C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C68);
  }

  return result;
}

uint64_t sub_100048C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100048CA0()
{
  result = qword_100124C70;
  if (!qword_100124C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C70);
  }

  return result;
}

unint64_t sub_100048CF8()
{
  result = qword_100124C78;
  if (!qword_100124C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C78);
  }

  return result;
}

unint64_t sub_100048D84()
{
  result = qword_100124C98;
  if (!qword_100124C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C98);
  }

  return result;
}

uint64_t sub_100048E1C()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C1E0);
  sub_100006610(v10, qword_10013C1E0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10004910C()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C1F8);
  sub_100006610(v0, qword_10013C1F8);
  return sub_1000D188C();
}

uint64_t sub_100049170()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C210);
  v1 = sub_100006610(v0, qword_10013C210);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100049230()
{
  result = swift_getKeyPath();
  qword_10013C228 = result;
  return result;
}

uint64_t sub_100049258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10004927C, 0, 0);
}

uint64_t sub_10004927C()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100122070 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C228;
  *(v0 + 152) = qword_10013C228;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100124E08, &qword_100124E10);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_1000493E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_1000493E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100049558;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100049558()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C228;
  v0[25] = qword_10013C228;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t (*sub_10004963C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_1000496B0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_100049724()
{
  if (qword_100122070 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100049784()
{
  result = qword_100124CB0;
  if (!qword_100124CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CB0);
  }

  return result;
}

unint64_t sub_1000497DC()
{
  result = qword_100124CB8;
  if (!qword_100124CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CB8);
  }

  return result;
}

uint64_t sub_1000498EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122068 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C210);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100049970(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_100049258(a1, v5, v4);
}

uint64_t sub_100049A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004B0BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100049A64()
{
  result = qword_100124CC0;
  if (!qword_100124CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CC0);
  }

  return result;
}

unint64_t sub_100049ABC()
{
  result = qword_100124CC8;
  if (!qword_100124CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CC8);
  }

  return result;
}

uint64_t sub_100049B30()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_10004A868();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsDownloadUseCellularEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = sub_1000B8110(v8) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100049CE0()
{
  sub_10006F718(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100049D7C()
{
  v1 = *(v0 + 16);
  *v1 = sub_10004B524();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100049DEC()
{
  result = qword_100124CD0;
  if (!qword_100124CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CD0);
  }

  return result;
}

uint64_t sub_100049E40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10004AA0C();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100049EF4()
{
  result = qword_100124CD8;
  if (!qword_100124CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CD8);
  }

  return result;
}

unint64_t sub_100049F4C()
{
  result = qword_100124CE0;
  if (!qword_100124CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CE0);
  }

  return result;
}

unint64_t sub_100049FA4()
{
  result = qword_100124CE8;
  if (!qword_100124CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CE8);
  }

  return result;
}

uint64_t sub_100049FF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10004AA0C();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10004A0AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10004AA0C();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10004A160()
{
  result = qword_100124CF0;
  if (!qword_100124CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CF0);
  }

  return result;
}

unint64_t sub_10004A1B8()
{
  result = qword_100124CF8;
  if (!qword_100124CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124CF8);
  }

  return result;
}

unint64_t sub_10004A210()
{
  result = qword_100124D00;
  if (!qword_100124D00)
  {
    sub_10000637C(&qword_100124D08);
    sub_10004A1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D00);
  }

  return result;
}

uint64_t sub_10004A294(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100049DEC();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10004A378(uint64_t a1)
{
  v2 = sub_10004A868();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100049FA4();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10004A420()
{
  sub_10004A7EC();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10004A4C4(uint64_t a1)
{
  v2 = sub_100049FA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004A510(uint64_t a1)
{
  v2 = sub_100049ABC();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10004A55C(uint64_t a1)
{
  v2 = sub_10004A604();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10004A5AC()
{
  result = qword_100124D10;
  if (!qword_100124D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D10);
  }

  return result;
}

unint64_t sub_10004A604()
{
  result = qword_100124D18;
  if (!qword_100124D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D18);
  }

  return result;
}

unint64_t sub_10004A658()
{
  result = qword_100124D20;
  if (!qword_100124D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D20);
  }

  return result;
}

unint64_t sub_10004A6B0()
{
  result = qword_100124D28;
  if (!qword_100124D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D28);
  }

  return result;
}

unint64_t sub_10004A70C()
{
  result = qword_100124D30;
  if (!qword_100124D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D30);
  }

  return result;
}

unint64_t sub_10004A760(void *a1)
{
  a1[1] = sub_10004A798();
  a1[2] = sub_10004A7EC();
  result = sub_100049ABC();
  a1[3] = result;
  return result;
}

unint64_t sub_10004A798()
{
  result = qword_100124D80;
  if (!qword_100124D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D80);
  }

  return result;
}

unint64_t sub_10004A7EC()
{
  result = qword_100124D88;
  if (!qword_100124D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D88);
  }

  return result;
}

unint64_t sub_10004A840(uint64_t a1)
{
  result = sub_10004A868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004A868()
{
  result = qword_100124DD0;
  if (!qword_100124DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DD0);
  }

  return result;
}

unint64_t sub_10004A904()
{
  result = qword_100124DE8;
  if (!qword_100124DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DE8);
  }

  return result;
}

unint64_t sub_10004A95C()
{
  result = qword_100124DF0;
  if (!qword_100124DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DF0);
  }

  return result;
}

unint64_t sub_10004A9B4()
{
  result = qword_100124DF8;
  if (!qword_100124DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DF8);
  }

  return result;
}

unint64_t sub_10004AA0C()
{
  result = qword_100124E00;
  if (!qword_100124E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124E00);
  }

  return result;
}

uint64_t sub_10004AA60@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_10004B8E4();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsDownloadUseCellularWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_100049ABC();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD000000000000033;
  v51 = 0x80000001000D7AD0;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_10004B0BC()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100124E18);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100049FA4();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_10004B524()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadUseCellularEntity;
  sub_100006334(&qword_100122D98);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100124CA8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100124E08, &qword_100124E10);
  sub_1000D179C();
  return v7;
}

unint64_t sub_10004B840(uint64_t a1)
{
  result = sub_10004B868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004B868()
{
  result = qword_100124E68;
  if (!qword_100124E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124E68);
  }

  return result;
}

unint64_t sub_10004B8BC(uint64_t a1)
{
  result = sub_10004B8E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004B8E4()
{
  result = qword_100124E70;
  if (!qword_100124E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124E70);
  }

  return result;
}

uint64_t sub_10004B948@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = sub_1000D21BC();
  *(a1 + 16) = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a1 + 32) = xmmword_1000E59D0;
  *(a1 + 48) = xmmword_1000E59E0;
  *(a1 + 64) = xmmword_1000E59F0;
  *(a1 + 80) = xmmword_1000E5A00;
  *(a1 + 96) = sub_1000D21BC();
  *(a1 + 104) = 0;
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  *(a1 + 112) = sub_1000D27DC();
  *(a1 + 120) = sub_1000D248C();
  *(a1 + 128) = sub_1000D240C();
  sub_1000D244C();
  *(a1 + 136) = v4;
  *(a1 + 144) = 1;
  *(a1 + 152) = 1;
  *(a1 + 160) = 0x3FE0000000000000;
  *(a1 + 168) = sub_1000D2B4C();
  *(a1 + 176) = v5;
  *(a1 + 184) = 0xD000000000000015;
  *(a1 + 192) = 0x80000001000D6F00;
  *(a1 + 200) = sub_1000D249C();
  v6 = [v2 labelColor];
  *(a1 + 208) = sub_1000D27DC();
  v7 = type metadata accessor for SportsWidgetContentViewLayout();
  v8 = v7[29];
  v9 = enum case for Image.Scale.small(_:);
  v10 = sub_1000D28FC();
  (*(*(v10 - 8) + 104))(a1 + v8, v9, v10);
  *(a1 + v7[30]) = 0;
  *(a1 + v7[31]) = 0x4024000000000000;
  *(a1 + v7[32]) = 0x4010000000000000;
  *(a1 + v7[33]) = 0x4010000000000000;
  *(a1 + v7[34]) = 0x7FF0000000000000;
  *(a1 + v7[35]) = 0x3FF0000000000000;
  *(a1 + v7[36]) = 0x3FF0000000000000;
  v11 = v7[37];
  *(a1 + v11) = sub_1000D24AC();
  v12 = v7[38];
  v13 = [v2 labelColor];
  result = sub_1000D27DC();
  *(a1 + v12) = result;
  *(a1 + v7[39]) = 1;
  *(a1 + v7[40]) = 1;
  *(a1 + v7[41]) = 0x4050000000000000;
  return result;
}

uint64_t type metadata accessor for SportsWidgetContentViewLayout()
{
  result = qword_100124ED0;
  if (!qword_100124ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000D28FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 116);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004BC6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D28FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 116);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004BD10()
{
  result = sub_1000D28FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004BE50()
{
  result = qword_100124FB0;
  if (!qword_100124FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FB0);
  }

  return result;
}

unint64_t sub_10004BEA8()
{
  result = qword_100124FB8;
  if (!qword_100124FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FB8);
  }

  return result;
}

unint64_t sub_10004BF00()
{
  result = qword_100124FC0;
  if (!qword_100124FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FC0);
  }

  return result;
}

uint64_t sub_10004BF54(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_10004BF7C, 0, 0);
}

uint64_t sub_10004BF7C()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000A173C(*(v0 + 24));
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004BFE8@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v537 = a1;
  v544 = a2;
  v2 = sub_100006334(&qword_100123738);
  v3 = __chkstk_darwin(v2 - 8);
  v532 = v503 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v531 = v503 - v6;
  v7 = __chkstk_darwin(v5);
  v530 = v503 - v8;
  v9 = __chkstk_darwin(v7);
  v533 = v503 - v10;
  v11 = __chkstk_darwin(v9);
  v536 = v503 - v12;
  v13 = __chkstk_darwin(v11);
  v540 = v503 - v14;
  v15 = __chkstk_darwin(v13);
  v534 = v503 - v16;
  v17 = __chkstk_darwin(v15);
  v535 = v503 - v18;
  __chkstk_darwin(v17);
  v504 = v503 - v19;
  v20 = sub_100006334(&qword_1001228C0);
  v21 = __chkstk_darwin(v20 - 8);
  v528 = v503 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v505 = v503 - v24;
  v25 = __chkstk_darwin(v23);
  v525 = v503 - v26;
  v27 = __chkstk_darwin(v25);
  v524 = v503 - v28;
  v29 = __chkstk_darwin(v27);
  v517 = v503 - v30;
  v31 = __chkstk_darwin(v29);
  v521 = v503 - v32;
  v33 = __chkstk_darwin(v31);
  v526 = v503 - v34;
  v35 = __chkstk_darwin(v33);
  v519 = v503 - v36;
  v37 = __chkstk_darwin(v35);
  v520 = v503 - v38;
  v39 = __chkstk_darwin(v37);
  v518 = v503 - v40;
  v41 = __chkstk_darwin(v39);
  v516 = v503 - v42;
  v43 = __chkstk_darwin(v41);
  v523 = v503 - v44;
  v45 = __chkstk_darwin(v43);
  v529 = v503 - v46;
  v47 = __chkstk_darwin(v45);
  v515 = v503 - v48;
  v49 = __chkstk_darwin(v47);
  v514 = v503 - v50;
  v51 = __chkstk_darwin(v49);
  v513 = v503 - v52;
  v53 = __chkstk_darwin(v51);
  v522 = v503 - v54;
  v55 = __chkstk_darwin(v53);
  v527 = v503 - v56;
  __chkstk_darwin(v55);
  v512 = v503 - v57;
  v58 = sub_1000D189C();
  v545 = *(v58 - 8);
  v546 = v58;
  __chkstk_darwin(v58);
  v543 = v503 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000D1A2C();
  __chkstk_darwin(v60 - 8);
  v542 = v503 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000D35EC();
  __chkstk_darwin(v62 - 8);
  v541 = v503 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000D35CC();
  v65 = __chkstk_darwin(v64 - 8);
  v503[34] = v503 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v503[33] = v503 - v68;
  v69 = __chkstk_darwin(v67);
  v503[32] = v503 - v70;
  v71 = __chkstk_darwin(v69);
  v503[31] = v503 - v72;
  v73 = __chkstk_darwin(v71);
  v503[30] = v503 - v74;
  v75 = __chkstk_darwin(v73);
  v503[29] = v503 - v76;
  v77 = __chkstk_darwin(v75);
  v503[41] = v503 - v78;
  v79 = __chkstk_darwin(v77);
  v503[28] = v503 - v80;
  v81 = __chkstk_darwin(v79);
  v503[27] = v503 - v82;
  v83 = __chkstk_darwin(v81);
  v503[38] = v503 - v84;
  v85 = __chkstk_darwin(v83);
  v503[26] = v503 - v86;
  v87 = __chkstk_darwin(v85);
  v503[25] = v503 - v88;
  v89 = __chkstk_darwin(v87);
  v503[35] = v503 - v90;
  v91 = __chkstk_darwin(v89);
  v503[23] = v503 - v92;
  v93 = __chkstk_darwin(v91);
  v503[39] = v503 - v94;
  v95 = __chkstk_darwin(v93);
  v503[20] = v503 - v96;
  v97 = __chkstk_darwin(v95);
  v503[40] = v503 - v98;
  v99 = __chkstk_darwin(v97);
  v503[19] = v503 - v100;
  v101 = __chkstk_darwin(v99);
  v503[16] = v503 - v102;
  v103 = __chkstk_darwin(v101);
  v503[14] = v503 - v104;
  v105 = __chkstk_darwin(v103);
  v503[13] = v503 - v106;
  v107 = __chkstk_darwin(v105);
  v503[36] = v503 - v108;
  v109 = __chkstk_darwin(v107);
  v503[21] = v503 - v110;
  v111 = __chkstk_darwin(v109);
  v503[12] = v503 - v112;
  v113 = __chkstk_darwin(v111);
  v503[37] = v503 - v114;
  v115 = __chkstk_darwin(v113);
  v503[18] = v503 - v116;
  v117 = __chkstk_darwin(v115);
  v118 = __chkstk_darwin(v117);
  v503[15] = v503 - v119;
  __chkstk_darwin(v118);
  v120 = sub_1000D18BC();
  v121 = *(v120 - 8);
  v538 = v120;
  v539 = v121;
  v122 = __chkstk_darwin(v120);
  v123 = __chkstk_darwin(v122);
  v508 = v503 - v124;
  __chkstk_darwin(v123);
  v126 = __chkstk_darwin(v503 - v125);
  v127 = __chkstk_darwin(v126);
  v507 = v503 - v128;
  v129 = __chkstk_darwin(v127);
  v130 = __chkstk_darwin(v129);
  v131 = __chkstk_darwin(v130);
  v132 = __chkstk_darwin(v131);
  v511 = v503 - v133;
  v134 = __chkstk_darwin(v132);
  v135 = __chkstk_darwin(v134);
  v510 = v503 - v136;
  v137 = __chkstk_darwin(v135);
  v509 = v503 - v138;
  v139 = __chkstk_darwin(v137);
  v503[17] = v503 - v140;
  v141 = __chkstk_darwin(v139);
  v506 = v503 - v142;
  v143 = __chkstk_darwin(v141);
  v144 = __chkstk_darwin(v143);
  v146 = v503 - v145;
  v147 = __chkstk_darwin(v144);
  v148 = __chkstk_darwin(v147);
  v149 = __chkstk_darwin(v148);
  v151 = v503 - v150;
  v152 = __chkstk_darwin(v149);
  v154 = v503 - v153;
  v155 = __chkstk_darwin(v152);
  v156 = __chkstk_darwin(v155);
  v157 = __chkstk_darwin(v156);
  v503[22] = v503 - v158;
  v159 = __chkstk_darwin(v157);
  v161 = v503 - v160;
  v162 = __chkstk_darwin(v159);
  v503[24] = v503 - v163;
  v164 = __chkstk_darwin(v162);
  v166 = v503 - v165;
  v167 = __chkstk_darwin(v164);
  v168 = __chkstk_darwin(v167);
  switch(v537)
  {
    case 1:
      sub_1000D35BC();
      v584._countAndFlagsBits = 0xD000000000000016;
      v584._object = 0x80000001000D91D0;
      sub_1000D35AC(v584);
      v364 = WLKIsRegulatedSKU();
      v365 = v364 == 0;
      if (v364)
      {
        v366._countAndFlagsBits = 1312902231;
      }

      else
      {
        v366._countAndFlagsBits = 0x69462D6957;
      }

      if (v365)
      {
        v367 = 0xE500000000000000;
      }

      else
      {
        v367 = 0xE400000000000000;
      }

      v366._object = v367;
      sub_1000D359C(v366);

      v585._countAndFlagsBits = 0;
      v585._object = 0xE000000000000000;
      sub_1000D35AC(v585);
      sub_1000D35DC();
      sub_1000D1A1C();
      LODWORD(v540) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v368 = v546;
      v369 = *(v545 + 104);
      v545 += 104;
      v370 = v543;
      (v369)(v543);
      v537 = v369;
      v503[10] = v166;
      sub_1000D18CC();
      sub_1000D35BC();
      v586._countAndFlagsBits = 0;
      v586._object = 0xE000000000000000;
      sub_1000D35AC(v586);
      v371 = WLKIsRegulatedSKU();
      v372 = v371 == 0;
      if (v371)
      {
        v373._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v373._countAndFlagsBits = 22100;
      }

      if (v372)
      {
        v374 = 0xE200000000000000;
      }

      else
      {
        v374 = 0xE600000000000000;
      }

      v373._object = v374;
      sub_1000D359C(v373);

      v587._countAndFlagsBits = 0x100000000000001BLL;
      v587._object = 0x80000001000D91F0;
      sub_1000D35AC(v587);
      v375 = WLKIsRegulatedSKU();
      v376 = v375 == 0;
      if (v375)
      {
        v377._countAndFlagsBits = 1312902231;
      }

      else
      {
        v377._countAndFlagsBits = 0x69462D6957;
      }

      if (v376)
      {
        v378 = 0xE500000000000000;
      }

      else
      {
        v378 = 0xE400000000000000;
      }

      v377._object = v378;
      sub_1000D359C(v377);

      v588._countAndFlagsBits = 0;
      v588._object = 0xE000000000000000;
      sub_1000D35AC(v588);
      sub_1000D35DC();
      sub_1000D1A1C();
      v379 = v540;
      (v369)(v370, v540, v368);
      v380 = v527;
      sub_1000D18CC();
      v381 = v539 + 56;
      (*(v539 + 56))(v380, 0, 1, v538);
      v382 = v535;
      sub_1000D15EC();
      v383 = sub_1000D15FC();
      (*(*(v383 - 8) + 56))(v382, 0, 1, v383);
      sub_100006334(&qword_100123750);
      v534 = *(v381 + 16);
      v538 = 2 * v534;
      v539 = swift_allocObject();
      *(v539 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v384 = v546;
      v385 = v537;
      (v537)(v370, v379, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v385)(v370, v379, v384);
      v536 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v385)(v370, v379, v384);
      sub_1000D18CC();
      sub_1000D35BC();
      v589._countAndFlagsBits = 543516756;
      v589._object = 0xE400000000000000;
      sub_1000D35AC(v589);
      v386 = WLKIsRegulatedSKU();
      v387 = v386 == 0;
      if (v386)
      {
        v388._countAndFlagsBits = 1312902231;
      }

      else
      {
        v388._countAndFlagsBits = 0x69462D6957;
      }

      if (v387)
      {
        v389 = 0xE500000000000000;
      }

      else
      {
        v389 = 0xE400000000000000;
      }

      v388._object = v389;
      sub_1000D359C(v388);

      v590._countAndFlagsBits = 0xD000000000000062;
      v590._object = 0x80000001000D9210;
      sub_1000D35AC(v590);
      v390 = WLKIsRegulatedSKU();
      v391 = v390 == 0;
      if (v390)
      {
        v392._countAndFlagsBits = 1312902231;
      }

      else
      {
        v392._countAndFlagsBits = 0x69462D6957;
      }

      if (v391)
      {
        v393 = 0xE500000000000000;
      }

      else
      {
        v393 = 0xE400000000000000;
      }

      v392._object = v393;
      sub_1000D359C(v392);

      v591._countAndFlagsBits = 0xD0000000000000AALL;
      v591._object = 0x80000001000D9280;
      sub_1000D35AC(v591);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v537)(v370, v540, v546);
      sub_1000D18CC();
      break;
    case 2:
      sub_1000D35BC();
      v566._countAndFlagsBits = 0xD000000000000015;
      v566._object = 0x80000001000D9000;
      sub_1000D35AC(v566);
      v278 = WLKIsRegulatedSKU();
      v279 = v278 == 0;
      if (v278)
      {
        v280._countAndFlagsBits = 1312902231;
      }

      else
      {
        v280._countAndFlagsBits = 0x69462D6957;
      }

      if (v279)
      {
        v281 = 0xE500000000000000;
      }

      else
      {
        v281 = 0xE400000000000000;
      }

      v280._object = v281;
      sub_1000D359C(v280);

      v567._countAndFlagsBits = 0;
      v567._object = 0xE000000000000000;
      sub_1000D35AC(v567);
      sub_1000D35DC();
      sub_1000D1A1C();
      LODWORD(v540) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v283 = v545 + 104;
      v282 = *(v545 + 104);
      v284 = v543;
      (v282)(v543);
      v537 = v282;
      v536 = "com.apple.Preferences";
      v503[9] = v161;
      sub_1000D18CC();
      sub_1000D35BC();
      v568._countAndFlagsBits = 0;
      v568._object = 0xE000000000000000;
      sub_1000D35AC(v568);
      v285 = WLKIsRegulatedSKU();
      v286 = v285 == 0;
      if (v285)
      {
        v287._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v287._countAndFlagsBits = 22100;
      }

      if (v286)
      {
        v288 = 0xE200000000000000;
      }

      else
      {
        v288 = 0xE600000000000000;
      }

      v287._object = v288;
      sub_1000D359C(v287);

      v569._countAndFlagsBits = 0x100000000000001ALL;
      v569._object = 0x80000001000D9020;
      sub_1000D35AC(v569);
      v289 = WLKIsRegulatedSKU();
      v290 = v289 == 0;
      if (v289)
      {
        v291._countAndFlagsBits = 1312902231;
      }

      else
      {
        v291._countAndFlagsBits = 0x69462D6957;
      }

      if (v290)
      {
        v292 = 0xE500000000000000;
      }

      else
      {
        v292 = 0xE400000000000000;
      }

      v291._object = v292;
      sub_1000D359C(v291);

      v570._countAndFlagsBits = 0;
      v570._object = 0xE000000000000000;
      sub_1000D35AC(v570);
      sub_1000D35DC();
      sub_1000D1A1C();
      v293 = v540;
      v294 = v546;
      (v282)(v284, v540, v546);
      v295 = v283;
      v296 = v522;
      sub_1000D18CC();
      (*(v539 + 56))(v296, 0, 1, v538);
      v297 = v534;
      sub_1000D15EC();
      v298 = sub_1000D15FC();
      (*(*(v298 - 8) + 56))(v297, 0, 1, v298);
      sub_100006334(&qword_100123750);
      v539 = swift_allocObject();
      *(v539 + 16) = xmmword_1000E2080;
      sub_1000D358C();
      sub_1000D1A1C();
      v545 = v295;
      v299 = v537;
      (v537)(v284, v293, v294);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v299)(v284, v293, v294);
      sub_1000D18CC();
      sub_1000D35BC();
      v571._countAndFlagsBits = 543516756;
      v571._object = 0xE400000000000000;
      sub_1000D35AC(v571);
      v300 = WLKIsRegulatedSKU();
      v301 = v300 == 0;
      if (v300)
      {
        v302._countAndFlagsBits = 1312902231;
      }

      else
      {
        v302._countAndFlagsBits = 0x69462D6957;
      }

      if (v301)
      {
        v303 = 0xE500000000000000;
      }

      else
      {
        v303 = 0xE400000000000000;
      }

      v302._object = v303;
      sub_1000D359C(v302);

      v572._countAndFlagsBits = 0xD0000000000000A8;
      v572._object = 0x80000001000D9040;
      sub_1000D35AC(v572);
      v304 = WLKIsRegulatedSKU();
      v305 = v304 == 0;
      if (v304)
      {
        v306._countAndFlagsBits = 1312902231;
      }

      else
      {
        v306._countAndFlagsBits = 0x69462D6957;
      }

      if (v305)
      {
        v307 = 0xE500000000000000;
      }

      else
      {
        v307 = 0xE400000000000000;
      }

      v306._object = v307;
      sub_1000D359C(v306);

      v573._countAndFlagsBits = 0xD0000000000000D0;
      v573._object = 0x80000001000D90F0;
      sub_1000D35AC(v573);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v537)(v284, v540, v546);
      sub_1000D18CC();
      break;
    case 3:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v321 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v322 = v546;
      v545 = *(v545 + 104);
      v323 = v543;
      (v545)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v536 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D35BC();
      v576._countAndFlagsBits = 0;
      v576._object = 0xE000000000000000;
      sub_1000D35AC(v576);
      v324 = WLKIsRegulatedSKU();
      v325 = v324 == 0;
      if (v324)
      {
        v326._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v326._countAndFlagsBits = 22100;
      }

      if (v325)
      {
        v327 = 0xE200000000000000;
      }

      else
      {
        v327 = 0xE600000000000000;
      }

      v326._object = v327;
      sub_1000D359C(v326);

      v577._countAndFlagsBits = 0x1000000000000022;
      v577._object = 0x80000001000D8F30;
      sub_1000D35AC(v577);
      sub_1000D35DC();
      sub_1000D1A1C();
      v328 = v322;
      v329 = v545;
      (v545)(v323, v321, v328);
      v330 = v513;
      sub_1000D18CC();
      (*(v539 + 56))(v330, 0, 1, v538);
      v331 = v540;
      sub_1000D15EC();
      v332 = sub_1000D15FC();
      (*(*(v332 - 8) + 56))(v331, 0, 1, v332);
      sub_100006334(&qword_100123750);
      *(swift_allocObject() + 16) = xmmword_1000E0440;
      sub_1000D358C();
      sub_1000D1A1C();
      v333 = v321;
      v334 = v321;
      v335 = v546;
      v329(v323, v334, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v329(v323, v333, v335);
      sub_1000D18CC();
      break;
    case 4:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v228 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v229 = v546;
      v545 = *(v545 + 104);
      v230 = v543;
      (v545)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v536 = "com.apple.Preferences";
      v503[1] = v154;
      sub_1000D18CC();
      sub_1000D35BC();
      v557._countAndFlagsBits = 0;
      v557._object = 0xE000000000000000;
      sub_1000D35AC(v557);
      v231 = WLKIsRegulatedSKU();
      v232 = v231 == 0;
      if (v231)
      {
        v233._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v233._countAndFlagsBits = 22100;
      }

      if (v232)
      {
        v234 = 0xE200000000000000;
      }

      else
      {
        v234 = 0xE600000000000000;
      }

      v233._object = v234;
      sub_1000D359C(v233);

      v558._countAndFlagsBits = 0x1000000000000024;
      v558._object = 0x80000001000D8D60;
      sub_1000D35AC(v558);
      sub_1000D35DC();
      sub_1000D1A1C();
      v235 = v228;
      v236 = v229;
      v237 = v545;
      (v545)(v230, v228, v236);
      v238 = v514;
      sub_1000D18CC();
      (*(v539 + 56))(v238, 0, 1, v538);
      v239 = v540;
      sub_1000D15EC();
      v240 = sub_1000D15FC();
      (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
      sub_100006334(&qword_100123750);
      *(swift_allocObject() + 16) = xmmword_1000E0440;
      sub_1000D358C();
      sub_1000D1A1C();
      v241 = v546;
      v237(v230, v235, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v237(v230, v235, v241);
      sub_1000D18CC();
      break;
    case 5:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v405 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v406 = *(v545 + 104);
      v407 = v543;
      (v406)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v536 = v406;
      v535 = "com.apple.Preferences";
      v503[2] = v151;
      sub_1000D18CC();
      sub_1000D35BC();
      v594._countAndFlagsBits = 0;
      v594._object = 0xE000000000000000;
      sub_1000D35AC(v594);
      v408 = WLKIsRegulatedSKU();
      v409 = v408 == 0;
      if (v408)
      {
        v410._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v410._countAndFlagsBits = 22100;
      }

      if (v409)
      {
        v411 = 0xE200000000000000;
      }

      else
      {
        v411 = 0xE600000000000000;
      }

      v410._object = v411;
      sub_1000D359C(v410);

      v595._countAndFlagsBits = 0x1000000000000013;
      v595._object = 0x80000001000D8BE0;
      sub_1000D35AC(v595);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v406)(v407, v405, v546);
      v412 = v515;
      sub_1000D18CC();
      (*(v539 + 56))(v412, 0, 1, v538);
      v413 = v540;
      sub_1000D15EC();
      v414 = sub_1000D15FC();
      (*(*(v414 - 8) + 56))(v413, 0, 1, v414);
      sub_100006334(&qword_100123750);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E2080;
      sub_1000D358C();
      sub_1000D1A1C();
      v415 = v546;
      v416 = v536;
      (v536)(v407, v405, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v416)(v407, v405, v415);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v416)(v407, v405, v415);
      sub_1000D18CC();
      break;
    case 6:
      v535 = v170;
      v503[11] = v171;
      sub_1000D358C();
      sub_1000D1A1C();
      v430 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v431 = v546;
      v432 = v545 + 104;
      v433 = *(v545 + 104);
      v434 = v543;
      (v433)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v435 = v432;
      v537 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D35BC();
      v598._countAndFlagsBits = 0;
      v598._object = 0xE000000000000000;
      sub_1000D35AC(v598);
      v436 = WLKIsRegulatedSKU();
      v437 = v436 == 0;
      if (v436)
      {
        v438._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v438._countAndFlagsBits = 22100;
      }

      if (v437)
      {
        v439 = 0xE200000000000000;
      }

      else
      {
        v439 = 0xE600000000000000;
      }

      v438._object = v439;
      sub_1000D359C(v438);

      v599._object = 0x80000001000D8A90;
      v599._countAndFlagsBits = 0x1000000000000015;
      sub_1000D35AC(v599);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v433)(v434, v430, v431);
      v440 = v529;
      sub_1000D18CC();
      v441 = v539 + 56;
      (*(v539 + 56))(v440, 0, 1, v538);
      v442 = v536;
      sub_1000D15EC();
      v443 = sub_1000D15FC();
      (*(*(v443 - 8) + 56))(v442, 0, 1, v443);
      sub_100006334(&qword_100123750);
      v539 = *(v441 + 16);
      v444 = (*(v441 + 24) + 32) & ~*(v441 + 24);
      v445 = swift_allocObject();
      v538 = v445;
      *(v445 + 16) = xmmword_1000E5A60;
      v446 = (v445 + v444);
      sub_1000D358C();
      sub_1000D1A1C();
      v540 = v433;
      (v433)(v434, v430, v431);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v433)(v434, v430, v431);
      v533 = v446;
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      LODWORD(v534) = v430;
      v545 = v435;
      v447 = v540;
      (v540)(v434, v430, v431);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v447)(v434, v430, v431);
      sub_1000D18CC();
      sub_1000D35BC();
      v600._countAndFlagsBits = 543516756;
      v600._object = 0xE400000000000000;
      sub_1000D35AC(v600);
      v448 = WLKIsRegulatedSKU();
      v449 = v448 == 0;
      if (v448)
      {
        v450._countAndFlagsBits = 1312902231;
      }

      else
      {
        v450._countAndFlagsBits = 0x69462D6957;
      }

      if (v449)
      {
        v451 = 0xE500000000000000;
      }

      else
      {
        v451 = 0xE400000000000000;
      }

      v450._object = v451;
      sub_1000D359C(v450);

      v601._countAndFlagsBits = 0xD00000000000006DLL;
      v601._object = 0x80000001000D8AD0;
      sub_1000D35AC(v601);
      v452 = WLKIsRegulatedSKU();
      v453 = v452 == 0;
      if (v452)
      {
        v454._countAndFlagsBits = 1312902231;
      }

      else
      {
        v454._countAndFlagsBits = 0x69462D6957;
      }

      if (v453)
      {
        v455 = 0xE500000000000000;
      }

      else
      {
        v455 = 0xE400000000000000;
      }

      v454._object = v455;
      sub_1000D359C(v454);

      v602._countAndFlagsBits = 0xD000000000000097;
      v602._object = 0x80000001000D8B40;
      sub_1000D35AC(v602);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v540)(v434, v534, v546);
      sub_1000D18CC();
      break;
    case 7:
      v536 = v174;
      sub_1000D358C();
      sub_1000D1A1C();
      v336 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v338 = v545 + 104;
      v337 = *(v545 + 104);
      v339 = v543;
      LODWORD(v537) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      (v337)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v340 = v338;
      v341 = v337;
      v540 = "com.apple.Preferences";
      v503[8] = v146;
      sub_1000D18CC();
      sub_1000D35BC();
      v578._countAndFlagsBits = 0;
      v578._object = 0xE000000000000000;
      sub_1000D35AC(v578);
      v342 = WLKIsRegulatedSKU();
      v343 = v342 == 0;
      if (v342)
      {
        v344._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v344._countAndFlagsBits = 22100;
      }

      if (v343)
      {
        v345 = 0xE200000000000000;
      }

      else
      {
        v345 = 0xE600000000000000;
      }

      v344._object = v345;
      sub_1000D359C(v344);

      v579._countAndFlagsBits = 0x100000000000002CLL;
      v579._object = 0x80000001000D88D0;
      sub_1000D35AC(v579);
      sub_1000D35DC();
      sub_1000D1A1C();
      v346 = v336;
      v347 = v546;
      (v341)(v339, v346, v546);
      v348 = v523;
      sub_1000D18CC();
      (*(v539 + 56))(v348, 0, 1, v538);
      v349 = v533;
      sub_1000D15EC();
      v350 = sub_1000D15FC();
      (*(*(v350 - 8) + 56))(v349, 0, 1, v350);
      sub_100006334(&qword_100123750);
      v539 = swift_allocObject();
      *(v539 + 16) = xmmword_1000E2080;
      sub_1000D358C();
      sub_1000D1A1C();
      v351 = v537;
      v535 = v341;
      v545 = v340;
      (v341)(v339, v537, v347);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v341)(v339, v351, v347);
      sub_1000D18CC();
      sub_1000D35BC();
      v580._countAndFlagsBits = 0x100000000000006DLL;
      v580._object = 0x80000001000D8900;
      sub_1000D35AC(v580);
      v352 = WLKIsRegulatedSKU();
      v353 = v352 == 0;
      if (v352)
      {
        v354._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v354._countAndFlagsBits = 22100;
      }

      if (v353)
      {
        v355 = 0xE200000000000000;
      }

      else
      {
        v355 = 0xE600000000000000;
      }

      v354._object = v355;
      sub_1000D359C(v354);

      v581._countAndFlagsBits = 0x1000000000000076;
      v581._object = 0x80000001000D8970;
      sub_1000D35AC(v581);
      v356 = WLKIsRegulatedSKU();
      v357 = v356 == 0;
      if (v356)
      {
        v358._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v358._countAndFlagsBits = 22100;
      }

      if (v357)
      {
        v359 = 0xE200000000000000;
      }

      else
      {
        v359 = 0xE600000000000000;
      }

      v358._object = v359;
      sub_1000D359C(v358);

      v582._countAndFlagsBits = 0xD00000000000007DLL;
      v582._object = 0x80000001000D89F0;
      sub_1000D35AC(v582);
      v360 = WLKIsRegulatedSKU();
      v361 = v360 == 0;
      if (v360)
      {
        v362._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v362._countAndFlagsBits = 22100;
      }

      if (v361)
      {
        v363 = 0xE200000000000000;
      }

      else
      {
        v363 = 0xE600000000000000;
      }

      v362._object = v363;
      sub_1000D359C(v362);

      v583._countAndFlagsBits = 0x2E70706120;
      v583._object = 0xE500000000000000;
      sub_1000D35AC(v583);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v535)(v339, v537, v546);
      sub_1000D18CC();
      break;
    case 8:
      sub_1000D358C();
      sub_1000D1A1C();
      v485 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v486 = v546;
      v487 = *(v545 + 104);
      v488 = v543;
      v487(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v609._countAndFlagsBits = 0;
      v609._object = 0xE000000000000000;
      sub_1000D35AC(v609);
      v489 = WLKIsRegulatedSKU();
      v490 = v489 == 0;
      if (v489)
      {
        v491._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v491._countAndFlagsBits = 22100;
      }

      if (v490)
      {
        v492 = 0xE200000000000000;
      }

      else
      {
        v492 = 0xE600000000000000;
      }

      v491._object = v492;
      sub_1000D359C(v491);

      v610._countAndFlagsBits = 0x100000000000002BLL;
      v610._object = 0x80000001000D87B0;
      sub_1000D35AC(v610);
      sub_1000D35DC();
      sub_1000D1A1C();
      v487(v488, v485, v486);
      v545 = v487;
      v493 = v516;
      sub_1000D18CC();
      (*(v539 + 56))(v493, 0, 1, v538);
      v494 = v530;
      sub_1000D15EC();
      v495 = sub_1000D15FC();
      (*(*(v495 - 8) + 56))(v494, 0, 1, v495);
      sub_100006334(&qword_100123750);
      *(swift_allocObject() + 16) = xmmword_1000E0440;
      sub_1000D358C();
      sub_1000D1A1C();
      v496 = v485;
      v497 = v485;
      v498 = v546;
      v487(v488, v497, v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v611._countAndFlagsBits = 0xD0000000000000EELL;
      v611._object = 0x80000001000D87E0;
      sub_1000D35AC(v611);
      v499 = WLKIsRegulatedSKU();
      v500 = v499 == 0;
      if (v499)
      {
        v501._countAndFlagsBits = 1312902231;
      }

      else
      {
        v501._countAndFlagsBits = 0x69462D6957;
      }

      if (v500)
      {
        v502 = 0xE500000000000000;
      }

      else
      {
        v502 = 0xE400000000000000;
      }

      v501._object = v502;
      sub_1000D359C(v501);

      v612._countAndFlagsBits = 46;
      v612._object = 0xE100000000000000;
      sub_1000D35AC(v612);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v545)(v488, v496, v498);
      sub_1000D18CC();
      break;
    case 9:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v265 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v266 = v546;
      v267 = *(v545 + 104);
      v268 = v543;
      v267(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v564._countAndFlagsBits = 0;
      v564._object = 0xE000000000000000;
      sub_1000D35AC(v564);
      v269 = WLKIsRegulatedSKU();
      v270 = v269 == 0;
      if (v269)
      {
        v271._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v271._countAndFlagsBits = 22100;
      }

      if (v270)
      {
        v272 = 0xE200000000000000;
      }

      else
      {
        v272 = 0xE600000000000000;
      }

      v271._object = v272;
      sub_1000D359C(v271);

      v565._countAndFlagsBits = 0x1000000000000023;
      v565._object = 0x80000001000D8640;
      sub_1000D35AC(v565);
      sub_1000D35DC();
      sub_1000D1A1C();
      v267(v268, v265, v266);
      v273 = v518;
      sub_1000D18CC();
      v274 = v539 + 56;
      (*(v539 + 56))(v273, 0, 1, v538);
      v275 = v540;
      sub_1000D15EC();
      v276 = sub_1000D15FC();
      (*(*(v276 - 8) + 56))(v275, 0, 1, v276);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v274 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v277 = v546;
      v267(v268, v265, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v267(v268, v265, v277);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v267(v268, v265, v277);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v267(v268, v265, v277);
      sub_1000D18CC();
      break;
    case 10:
      v540 = v175;
      sub_1000D358C();
      sub_1000D1A1C();
      v470 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v471 = v546;
      v472 = *(v545 + 104);
      v473 = v543;
      v472(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v605._countAndFlagsBits = 0;
      v605._object = 0xE000000000000000;
      sub_1000D35AC(v605);
      v474 = WLKIsRegulatedSKU();
      v475 = v474 == 0;
      if (v474)
      {
        v476._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v476._countAndFlagsBits = 22100;
      }

      if (v475)
      {
        v477 = 0xE200000000000000;
      }

      else
      {
        v477 = 0xE600000000000000;
      }

      v476._object = v477;
      sub_1000D359C(v476);

      v606._countAndFlagsBits = 0x1000000000000022;
      v606._object = 0x80000001000D84F0;
      sub_1000D35AC(v606);
      sub_1000D35DC();
      sub_1000D1A1C();
      v472(v473, v470, v471);
      v478 = v520;
      sub_1000D18CC();
      (*(v539 + 56))(v478, 0, 1, v538);
      v479 = v531;
      sub_1000D15EC();
      v480 = sub_1000D15FC();
      (*(*(v480 - 8) + 56))(v479, 0, 1, v480);
      sub_100006334(&qword_100123750);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E2080;
      sub_1000D358C();
      sub_1000D1A1C();
      v472(v473, v470, v471);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v472(v473, v470, v471);
      sub_1000D18CC();
      sub_1000D35BC();
      v607._countAndFlagsBits = 0xD0000000000000FCLL;
      v607._object = 0x80000001000D8520;
      sub_1000D35AC(v607);
      v481 = WLKIsRegulatedSKU();
      v482 = v481 == 0;
      if (v481)
      {
        v483._countAndFlagsBits = 1312902231;
      }

      else
      {
        v483._countAndFlagsBits = 0x69462D6957;
      }

      if (v482)
      {
        v484 = 0xE500000000000000;
      }

      else
      {
        v484 = 0xE400000000000000;
      }

      v483._object = v484;
      sub_1000D359C(v483);

      v608._countAndFlagsBits = 46;
      v608._object = 0xE100000000000000;
      sub_1000D35AC(v608);
      sub_1000D35DC();
      sub_1000D1A1C();
      v472(v473, v470, v546);
      sub_1000D18CC();
      break;
    case 11:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v215 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v216 = v546;
      v217 = *(v545 + 104);
      v218 = v543;
      v217(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v555._countAndFlagsBits = 0;
      v555._object = 0xE000000000000000;
      sub_1000D35AC(v555);
      v219 = WLKIsRegulatedSKU();
      v220 = v219 == 0;
      if (v219)
      {
        v221._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v221._countAndFlagsBits = 22100;
      }

      if (v220)
      {
        v222 = 0xE200000000000000;
      }

      else
      {
        v222 = 0xE600000000000000;
      }

      v221._object = v222;
      sub_1000D359C(v221);

      v556._countAndFlagsBits = 0x707041209286E220;
      v556._object = 0xAF65636E61726165;
      sub_1000D35AC(v556);
      sub_1000D35DC();
      sub_1000D1A1C();
      v217(v218, v215, v216);
      v223 = v519;
      sub_1000D18CC();
      v224 = v539 + 56;
      (*(v539 + 56))(v223, 0, 1, v538);
      v225 = v540;
      sub_1000D15EC();
      v226 = sub_1000D15FC();
      (*(*(v226 - 8) + 56))(v225, 0, 1, v226);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v224 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v227 = v546;
      v217(v218, v215, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v217(v218, v215, v227);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v217(v218, v215, v227);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v217(v218, v215, v227);
      sub_1000D18CC();
      break;
    case 12:
      v503[7] = v169;
      v537 = v178;
      sub_1000D358C();
      sub_1000D1A1C();
      v242 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v243 = v546;
      v245 = v545 + 104;
      v244 = *(v545 + 104);
      v246 = v543;
      (v244)(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v540 = v244;
      sub_1000D18CC();
      sub_1000D35BC();
      v559._countAndFlagsBits = 0;
      v559._object = 0xE000000000000000;
      sub_1000D35AC(v559);
      v247 = WLKIsRegulatedSKU();
      v248 = v247 == 0;
      if (v247)
      {
        v249._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v249._countAndFlagsBits = 22100;
      }

      if (v248)
      {
        v250 = 0xE200000000000000;
      }

      else
      {
        v250 = 0xE600000000000000;
      }

      v249._object = v250;
      sub_1000D359C(v249);

      v560._countAndFlagsBits = 0x1000000000000017;
      v560._object = 0x80000001000D8280;
      sub_1000D35AC(v560);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v244)(v246, v242, v243);
      v251 = v526;
      sub_1000D18CC();
      (*(v539 + 56))(v251, 0, 1, v538);
      v252 = v532;
      sub_1000D15EC();
      v253 = sub_1000D15FC();
      (*(*(v253 - 8) + 56))(v252, 0, 1, v253);
      sub_100006334(&qword_100123750);
      v539 = swift_allocObject();
      *(v539 + 16) = xmmword_1000E2080;
      sub_1000D358C();
      sub_1000D1A1C();
      LODWORD(v535) = v242;
      v254 = v243;
      v255 = v243;
      v256 = v540;
      v545 = v245;
      (v540)(v246, v242, v255);
      v536 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      (v256)(v246, v242, v254);
      sub_1000D18CC();
      sub_1000D35BC();
      v561._countAndFlagsBits = 0xD00000000000008CLL;
      v561._object = 0x80000001000D82A0;
      sub_1000D35AC(v561);
      v257 = WLKIsRegulatedSKU();
      v258 = v257 == 0;
      if (v257)
      {
        v259._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v259._countAndFlagsBits = 22100;
      }

      if (v258)
      {
        v260 = 0xE200000000000000;
      }

      else
      {
        v260 = 0xE600000000000000;
      }

      v259._object = v260;
      sub_1000D359C(v259);

      v562._countAndFlagsBits = 0xD00000000000004ALL;
      v562._object = 0x80000001000D8330;
      sub_1000D35AC(v562);
      v261 = WLKIsRegulatedSKU();
      v262 = v261 == 0;
      if (v261)
      {
        v263._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v263._countAndFlagsBits = 22100;
      }

      if (v262)
      {
        v264 = 0xE200000000000000;
      }

      else
      {
        v264 = 0xE600000000000000;
      }

      v263._object = v264;
      sub_1000D359C(v263);

      v563._countAndFlagsBits = 0x10000000000000A9;
      v563._object = 0x80000001000D8380;
      sub_1000D35AC(v563);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v540)(v246, v535, v546);
      sub_1000D18CC();
      break;
    case 13:
      v537 = v176;
      v503[5] = v173;
      sub_1000D358C();
      sub_1000D1A1C();
      v417 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v418 = v546;
      v419 = *(v545 + 104);
      v420 = v543;
      v419(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v596._countAndFlagsBits = 0;
      v596._object = 0xE000000000000000;
      sub_1000D35AC(v596);
      v421 = WLKIsRegulatedSKU();
      v422 = v421 == 0;
      if (v421)
      {
        v423._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v423._countAndFlagsBits = 22100;
      }

      if (v422)
      {
        v424 = 0xE200000000000000;
      }

      else
      {
        v424 = 0xE600000000000000;
      }

      v423._object = v424;
      sub_1000D359C(v423);

      v597._object = 0x80000001000D8150;
      v597._countAndFlagsBits = 0x1000000000000015;
      sub_1000D35AC(v597);
      sub_1000D35DC();
      sub_1000D1A1C();
      v419(v420, v417, v418);
      v425 = v521;
      sub_1000D18CC();
      v426 = v539 + 56;
      (*(v539 + 56))(v425, 0, 1, v538);
      v427 = v540;
      sub_1000D15EC();
      v428 = sub_1000D15FC();
      (*(*(v428 - 8) + 56))(v427, 0, 1, v428);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v426 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v429 = v546;
      v419(v420, v417, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v419(v420, v417, v429);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v419(v420, v417, v429);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v419(v420, v417, v429);
      sub_1000D18CC();
      break;
    case 14:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v204 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v205 = *(v545 + 104);
      v206 = v543;
      LODWORD(v535) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v207 = v546;
      v205(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v545 = v205;
      v536 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D35BC();
      v553._countAndFlagsBits = 0;
      v553._object = 0xE000000000000000;
      sub_1000D35AC(v553);
      v208 = WLKIsRegulatedSKU();
      v209 = v208 == 0;
      if (v208)
      {
        v210._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v210._countAndFlagsBits = 22100;
      }

      if (v209)
      {
        v211 = 0xE200000000000000;
      }

      else
      {
        v211 = 0xE600000000000000;
      }

      v210._object = v211;
      sub_1000D359C(v210);

      v554._countAndFlagsBits = 0x100000000000001ELL;
      v554._object = 0x80000001000D8060;
      sub_1000D35AC(v554);
      sub_1000D35DC();
      sub_1000D1A1C();
      v205(v206, v204, v207);
      v212 = v517;
      sub_1000D18CC();
      (*(v539 + 56))(v212, 0, 1, v538);
      v213 = v540;
      sub_1000D15EC();
      v214 = sub_1000D15FC();
      (*(*(v214 - 8) + 56))(v213, 0, 1, v214);
      sub_100006334(&qword_100123750);
      *(swift_allocObject() + 16) = xmmword_1000E5A50;
      sub_1000D188C();
      sub_1000D188C();
      sub_1000D188C();
      sub_1000D188C();
      sub_1000D188C();
      sub_1000D358C();
      sub_1000D1A1C();
      (v545)(v206, v535, v546);
      sub_1000D18CC();
      break;
    case 15:
      v537 = v176;
      v503[3] = v172;
      sub_1000D358C();
      sub_1000D1A1C();
      v308 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v309 = v546;
      v310 = *(v545 + 104);
      v311 = v543;
      v310(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v574._countAndFlagsBits = 0;
      v574._object = 0xE000000000000000;
      sub_1000D35AC(v574);
      v312 = WLKIsRegulatedSKU();
      v313 = v312 == 0;
      if (v312)
      {
        v314._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v314._countAndFlagsBits = 22100;
      }

      if (v313)
      {
        v315 = 0xE200000000000000;
      }

      else
      {
        v315 = 0xE600000000000000;
      }

      v314._object = v315;
      sub_1000D359C(v314);

      v575._countAndFlagsBits = 0x100000000000001DLL;
      v575._object = 0x80000001000D7FA0;
      sub_1000D35AC(v575);
      sub_1000D35DC();
      sub_1000D1A1C();
      v310(v311, v308, v309);
      v316 = v524;
      sub_1000D18CC();
      v317 = v539 + 56;
      (*(v539 + 56))(v316, 0, 1, v538);
      v318 = v540;
      sub_1000D15EC();
      v319 = sub_1000D15FC();
      (*(*(v319 - 8) + 56))(v318, 0, 1, v319);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v317 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v320 = v546;
      v310(v311, v308, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v310(v311, v308, v320);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v310(v311, v308, v320);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v310(v311, v308, v320);
      sub_1000D18CC();
      break;
    case 16:
      v503[4] = v168;
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v191 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v192 = v546;
      v193 = *(v545 + 104);
      v194 = v543;
      v193(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v551._countAndFlagsBits = 0;
      v551._object = 0xE000000000000000;
      sub_1000D35AC(v551);
      v195 = WLKIsRegulatedSKU();
      v196 = v195 == 0;
      if (v195)
      {
        v197._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v197._countAndFlagsBits = 22100;
      }

      if (v196)
      {
        v198 = 0xE200000000000000;
      }

      else
      {
        v198 = 0xE600000000000000;
      }

      v197._object = v198;
      sub_1000D359C(v197);

      v552._countAndFlagsBits = 0x100000000000001ELL;
      v552._object = 0x80000001000D7E60;
      sub_1000D35AC(v552);
      sub_1000D35DC();
      sub_1000D1A1C();
      v193(v194, v191, v192);
      v199 = v525;
      sub_1000D18CC();
      v200 = v539 + 56;
      (*(v539 + 56))(v199, 0, 1, v538);
      v201 = v540;
      sub_1000D15EC();
      v202 = sub_1000D15FC();
      (*(*(v202 - 8) + 56))(v201, 0, 1, v202);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v200 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v203 = v546;
      v193(v194, v191, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v193(v194, v191, v203);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v193(v194, v191, v203);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v193(v194, v191, v203);
      sub_1000D18CC();
      break;
    case 17:
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v394 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v395 = *(v545 + 104);
      v396 = v543;
      LODWORD(v535) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v397 = v546;
      v395(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      v545 = v395;
      v536 = "com.apple.Preferences";
      sub_1000D18CC();
      sub_1000D35BC();
      v592._countAndFlagsBits = 0;
      v592._object = 0xE000000000000000;
      sub_1000D35AC(v592);
      v398 = WLKIsRegulatedSKU();
      v399 = v398 == 0;
      if (v398)
      {
        v400._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v400._countAndFlagsBits = 22100;
      }

      if (v399)
      {
        v401 = 0xE200000000000000;
      }

      else
      {
        v401 = 0xE600000000000000;
      }

      v400._object = v401;
      sub_1000D359C(v400);

      v593._countAndFlagsBits = 0x1000000000000021;
      v593._object = 0x80000001000D7CB0;
      sub_1000D35AC(v593);
      sub_1000D35DC();
      sub_1000D1A1C();
      v395(v396, v394, v397);
      v402 = v505;
      sub_1000D18CC();
      (*(v539 + 56))(v402, 0, 1, v538);
      v403 = v540;
      sub_1000D15EC();
      v404 = sub_1000D15FC();
      (*(*(v404 - 8) + 56))(v403, 0, 1, v404);
      sub_100006334(&qword_100123750);
      *(swift_allocObject() + 16) = xmmword_1000E2080;
      sub_1000D188C();
      sub_1000D188C();
      sub_1000D358C();
      sub_1000D1A1C();
      (v545)(v396, v535, v397);
      sub_1000D18CC();
      break;
    case 18:
      v503[6] = v177;
      v537 = v176;
      sub_1000D358C();
      sub_1000D1A1C();
      v456 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v457 = v546;
      v458 = *(v545 + 104);
      v459 = v543;
      v458(v543, enum case for LocalizedStringResource.BundleDescription.main(_:), v546);
      sub_1000D18CC();
      sub_1000D35BC();
      v603._countAndFlagsBits = 0;
      v603._object = 0xE000000000000000;
      sub_1000D35AC(v603);
      v460 = WLKIsRegulatedSKU();
      v461 = v460 == 0;
      if (v460)
      {
        v462._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v462._countAndFlagsBits = 22100;
      }

      if (v461)
      {
        v463 = 0xE200000000000000;
      }

      else
      {
        v463 = 0xE600000000000000;
      }

      v462._object = v463;
      sub_1000D359C(v462);

      v604._countAndFlagsBits = 0x1000000000000025;
      v604._object = 0x80000001000D7B50;
      sub_1000D35AC(v604);
      sub_1000D35DC();
      sub_1000D1A1C();
      v458(v459, v456, v457);
      v464 = v528;
      sub_1000D18CC();
      v465 = v539 + 56;
      (*(v539 + 56))(v464, 0, 1, v538);
      v466 = v540;
      sub_1000D15EC();
      v467 = sub_1000D15FC();
      (*(*(v467 - 8) + 56))(v466, 0, 1, v467);
      sub_100006334(&qword_100123750);
      v539 = 2 * *(v465 + 16);
      v545 = swift_allocObject();
      *(v545 + 16) = xmmword_1000E3AA0;
      sub_1000D358C();
      sub_1000D1A1C();
      v468 = v546;
      v458(v459, v456, v546);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v458(v459, v456, v468);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v458(v459, v456, v468);
      sub_1000D18CC();
      sub_1000D358C();
      sub_1000D1A1C();
      v458(v459, v456, v468);
      sub_1000D18CC();
      break;
    default:
      sub_1000D35BC();
      v547._countAndFlagsBits = 0;
      v547._object = 0xE000000000000000;
      sub_1000D35AC(v547);
      v179 = WLKIsRegulatedSKU();
      v180 = v179 == 0;
      if (v179)
      {
        v181._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v181._countAndFlagsBits = 22100;
      }

      v182 = 0xE600000000000000;
      if (v180)
      {
        v183 = 0xE200000000000000;
      }

      else
      {
        v183 = 0xE600000000000000;
      }

      v181._object = v183;
      sub_1000D359C(v181);

      v548._countAndFlagsBits = 0;
      v548._object = 0xE000000000000000;
      sub_1000D35AC(v548);
      sub_1000D35DC();
      v537 = "com.apple.Preferences";
      sub_1000D1A1C();
      LODWORD(v540) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v184 = v546;
      v545 = *(v545 + 104);
      v185 = v543;
      (v545)(v543);
      sub_1000D18CC();
      (*(v539 + 56))(v512, 1, 1, v538);
      v186 = v504;
      sub_1000D15EC();
      v187 = sub_1000D15FC();
      (*(*(v187 - 8) + 56))(v186, 0, 1, v187);
      sub_1000D35BC();
      v549._countAndFlagsBits = 0;
      v549._object = 0xE000000000000000;
      sub_1000D35AC(v549);
      v188 = WLKIsRegulatedSKU();
      v189 = v188 == 0;
      if (v188)
      {
        v190._countAndFlagsBits = 0x736F65646956;
      }

      else
      {
        v190._countAndFlagsBits = 22100;
      }

      if (v189)
      {
        v182 = 0xE200000000000000;
      }

      v190._object = v182;
      sub_1000D359C(v190);

      v550._countAndFlagsBits = 0xD00000000000003DLL;
      v550._object = 0x80000001000D9330;
      sub_1000D35AC(v550);
      sub_1000D35DC();
      sub_1000D1A1C();
      (v545)(v185, v540, v184);
      sub_1000D18CC();
      break;
  }

  return sub_1000D161C();
}

uint64_t sub_100051F78()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C230);
  sub_100006610(v10, qword_10013C230);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100052260(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100013BAC;

  return sub_1000548C8(a1);
}

uint64_t sub_100052308(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100013B90;

  return sub_1000541AC();
}

unint64_t sub_1000523B0()
{
  result = qword_100124FC8;
  if (!qword_100124FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FC8);
  }

  return result;
}

uint64_t sub_100052404(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100011290;

  return sub_100055670();
}

unint64_t sub_1000524AC()
{
  result = qword_100124FD0;
  if (!qword_100124FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FD0);
  }

  return result;
}

unint64_t sub_100052504()
{
  result = qword_100124FD8;
  if (!qword_100124FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FD8);
  }

  return result;
}

unint64_t sub_10005255C()
{
  result = qword_100124FE0;
  if (!qword_100124FE0)
  {
    sub_10000637C(&qword_100124FE8);
    sub_100052504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FE0);
  }

  return result;
}

uint64_t sub_1000525E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000523B0();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100052694(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100052738;

  return sub_100055024();
}

uint64_t sub_100052738(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

unint64_t sub_100052858()
{
  result = qword_100124FF0;
  if (!qword_100124FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FF0);
  }

  return result;
}

uint64_t sub_1000528AC()
{
  v0 = sub_100006334(&qword_1001250A8);
  __chkstk_darwin(v0);
  sub_10004BF00();
  sub_1000D170C();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_1000D16FC(v2);
  swift_getKeyPath();
  sub_100006334(&qword_1001250B0);
  sub_10000FC38(&qword_1001250B8, &qword_1001250C0);
  sub_1000D16EC();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_1000D16FC(v3);
  return sub_1000D171C();
}

uint64_t sub_100052A08()
{
  v0 = qword_100124F98;

  return v0;
}

unint64_t sub_100052A44()
{
  result = qword_100124FF8;
  if (!qword_100124FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124FF8);
  }

  return result;
}

unint64_t sub_100052A9C()
{
  result = qword_100125000;
  if (!qword_100125000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125000);
  }

  return result;
}

unint64_t sub_100052AF4()
{
  result = qword_100125008;
  if (!qword_100125008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125008);
  }

  return result;
}

unint64_t sub_100052B4C()
{
  result = qword_100125010;
  if (!qword_100125010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125010);
  }

  return result;
}

uint64_t sub_100052BA0()
{
  sub_100055D80();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100052C10()
{
  result = qword_100125018;
  if (!qword_100125018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125018);
  }

  return result;
}

unint64_t sub_100052C68()
{
  result = qword_100125020;
  if (!qword_100125020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125020);
  }

  return result;
}

unint64_t sub_100052CC0()
{
  result = qword_100125028;
  if (!qword_100125028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125028);
  }

  return result;
}

unint64_t sub_100052D18()
{
  result = qword_100125030;
  if (!qword_100125030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125030);
  }

  return result;
}

uint64_t sub_100052DE8(uint64_t a1)
{
  v2 = sub_10004BF00();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100052E38()
{
  result = qword_100125048;
  if (!qword_100125048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125048);
  }

  return result;
}

uint64_t sub_100052E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000119BC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100052F58(uint64_t a1)
{
  v2 = sub_100052CC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100052FA8()
{
  result = qword_100125050;
  if (!qword_100125050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125050);
  }

  return result;
}

uint64_t sub_100052FFC()
{
  sub_100006334(&qword_100125078);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E5A70;
  sub_100006334(&qword_100122D80);
  *(inited + 32) = sub_1000D361C();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  sub_100006334(&qword_100122D68);
  *(inited + 56) = sub_1000D361C();
  *(inited + 64) = v2;
  *(inited + 72) = 2;
  sub_100006334(&qword_100122DA0);
  *(inited + 80) = sub_1000D361C();
  *(inited + 88) = v3;
  *(inited + 96) = 4;
  sub_100006334(&qword_1001228C8);
  *(inited + 104) = sub_1000D361C();
  *(inited + 112) = v4;
  *(inited + 120) = 5;
  sub_100006334(&qword_100122D60);
  *(inited + 128) = sub_1000D361C();
  *(inited + 136) = v5;
  *(inited + 144) = 6;
  sub_100006334(&qword_100122B38);
  *(inited + 152) = sub_1000D361C();
  *(inited + 160) = v6;
  *(inited + 168) = 7;
  sub_100006334(&qword_100122D98);
  *(inited + 176) = sub_1000D361C();
  *(inited + 184) = v7;
  *(inited + 192) = 8;
  sub_100006334(&qword_100122D88);
  *(inited + 200) = sub_1000D361C();
  *(inited + 208) = v8;
  *(inited + 216) = 9;
  sub_100006334(&qword_100122D78);
  *(inited + 224) = sub_1000D361C();
  *(inited + 232) = v9;
  *(inited + 240) = 10;
  sub_100006334(&qword_100122D70);
  *(inited + 248) = sub_1000D361C();
  *(inited + 256) = v10;
  *(inited + 264) = 11;
  sub_100006334(&qword_100122DB0);
  *(inited + 272) = sub_1000D361C();
  *(inited + 280) = v11;
  *(inited + 288) = 12;
  sub_100006334(&qword_100122D90);
  *(inited + 296) = sub_1000D361C();
  *(inited + 304) = v12;
  *(inited + 312) = 13;
  sub_100006334(&qword_100122D58);
  *(inited + 320) = sub_1000D361C();
  *(inited + 328) = v13;
  *(inited + 336) = 14;
  sub_100006334(&qword_100122DA8);
  *(inited + 344) = sub_1000D361C();
  *(inited + 352) = v14;
  *(inited + 360) = 17;
  v15 = sub_10002408C(inited);
  swift_setDeallocating();
  sub_100006334(&qword_100125080);
  result = swift_arrayDestroy();
  off_100124FA8 = v15;
  return result;
}

uint64_t sub_1000533AC()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  sub_1000065AC(v6, qword_10013C248);
  sub_100006610(v6, qword_10013C248);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000D18CC();
}

uint64_t sub_10005359C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000D154C();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000535E0()
{

  sub_1000D155C();
}

void (*sub_100053630(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1000D153C();
  return sub_100010B68;
}

unint64_t sub_1000536A4()
{
  result = qword_100125058;
  if (!qword_100125058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125058);
  }

  return result;
}

unint64_t sub_1000536F8()
{
  result = qword_100125060;
  if (!qword_100125060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125060);
  }

  return result;
}

uint64_t sub_10005374C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100055CD8();
  v5 = sub_100055D80();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000537C8()
{
  result = qword_100125068;
  if (!qword_100125068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125068);
  }

  return result;
}

unint64_t sub_100053820()
{
  result = qword_100125070;
  if (!qword_100125070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125070);
  }

  return result;
}

uint64_t sub_100053900@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100006610(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000539BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100055CD8();
  v7 = sub_100055D2C();
  v8 = sub_100055D80();
  *v5 = v2;
  v5[1] = sub_100053A90;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100053A90()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100053B98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100055868();
  *a1 = result;
  return result;
}

uint64_t sub_100053BC0(uint64_t a1)
{
  v2 = sub_1000536A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_100053C2C(char *a1, int64_t a2, char a3)
{
  result = sub_100053CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100053C4C(char *a1, int64_t a2, char a3)
{
  result = sub_100053F04(a1, a2, a3, *v3, &qword_1001250D8);
  *v3 = result;
  return result;
}

char *sub_100053C7C(char *a1, int64_t a2, char a3)
{
  result = sub_100053DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100053C9C(char *a1, int64_t a2, char a3)
{
  result = sub_100053F04(a1, a2, a3, *v3, &qword_1001250E0);
  *v3 = result;
  return result;
}

char *sub_100053CCC(char *a1, int64_t a2, char a3)
{
  result = sub_100053FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100053CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006334(&qword_1001250D0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100053DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006334(&qword_1001250E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100053F04(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100006334(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_100053FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006334(qword_1001250F0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1000540F4(uint64_t a1, uint64_t a2)
{
  if (qword_100122080 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_100124FA8;
  if (*(off_100124FA8 + 2) && (v5 = sub_1000232F8(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + v5);
  }

  else
  {
    v7 = 19;
  }

  swift_endAccess();
  return v7;
}