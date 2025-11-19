uint64_t sub_10005898C()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_100058AD8()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A9F0();
  v30 = 0;
  sub_100058D98(v0, &v18);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v40[0] = v18;
  v40[1] = v19;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v40[6] = v24;
  v41 = v25;
  sub_100009728(&v32, &v14, &qword_100099020, &qword_100076758);
  sub_100009790(v40, &qword_100099020, &qword_100076758);
  *(&v29[4] + 7) = v36;
  *(&v29[5] + 7) = v37;
  *(&v29[6] + 7) = v38;
  *(v29 + 7) = v32;
  *(&v29[1] + 7) = v33;
  *(&v29[2] + 7) = v34;
  *(&v29[7] + 7) = v39;
  *(&v29[3] + 7) = v35;
  v7 = v30;
  v8 = sub_10006AB40();
  sub_10005898C();
  sub_10006A720();
  *(&v15[4] + 1) = v29[4];
  *(&v15[5] + 1) = v29[5];
  *(&v15[6] + 1) = v29[6];
  v15[7] = *(&v29[6] + 15);
  *(v15 + 1) = v29[0];
  *(&v15[1] + 1) = v29[1];
  *(&v15[2] + 1) = v29[2];
  v31 = 0;
  v14 = v6;
  LOBYTE(v15[0]) = v7;
  *(&v15[3] + 1) = v29[3];
  LOBYTE(v16) = v8;
  *(&v16 + 1) = v9;
  *&v17[0] = v10;
  *(&v17[0] + 1) = v11;
  *&v17[1] = v12;
  BYTE8(v17[1]) = 0;
  (*(v2 + 104))(v5, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v1);
  sub_100007DF0(&qword_100099028, &qword_100076760);
  sub_100060754();
  sub_10006ACD0();
  (*(v2 + 8))(v5, v1);
  v26 = v15[7];
  v27 = v16;
  v28[0] = v17[0];
  *(v28 + 9) = *(v17 + 9);
  v22 = v15[3];
  v23 = v15[4];
  v24 = v15[5];
  v25 = v15[6];
  v18 = v14;
  v19 = v15[0];
  v20 = v15[1];
  v21 = v15[2];
  return sub_100009790(&v18, &qword_100099028, &qword_100076760);
}

uint64_t sub_100058D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10005E108(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10005E174(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
  v9 = sub_10006A970();
  LOBYTE(v25[0]) = 0;
  sub_10005A1F8(a1, v21);
  *&v20[55] = v22;
  *&v20[39] = v21[2];
  *&v20[23] = v21[1];
  *&v20[7] = v21[0];
  v10 = v25[0];
  v19 = 0;
  v23[0] = v9;
  v23[1] = 0;
  v24[0] = v25[0];
  *&v24[1] = *v20;
  *&v24[64] = *(&v22 + 1);
  *&v24[49] = *&v20[48];
  *&v24[33] = *&v20[32];
  *&v24[17] = *&v20[16];
  *(&v18[1] + 7) = *v24;
  *(v18 + 7) = v9;
  *(&v18[5] + 7) = *&v24[64];
  *(&v18[4] + 7) = *&v24[48];
  *(&v18[3] + 7) = *&v24[32];
  *(&v18[2] + 7) = *&v24[16];
  *a2 = sub_100060B6C;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0x4000000000000000;
  *(a2 + 24) = 0;
  v11 = v18[0];
  *(a2 + 41) = v18[1];
  *(a2 + 25) = v11;
  v12 = v18[2];
  v13 = v18[3];
  v14 = v18[4];
  *(a2 + 104) = *(&v18[4] + 15);
  *(a2 + 89) = v14;
  *(a2 + 73) = v13;
  *(a2 + 57) = v12;
  v25[0] = v9;
  v25[1] = 0;
  v26 = v10;
  v27 = *v20;
  *&v30[15] = *&v20[63];
  *v30 = *&v20[48];
  v29 = *&v20[32];
  v28 = *&v20[16];

  sub_100009728(v23, &v17, &qword_100099048, &qword_100076770);
  sub_100009790(v25, &qword_100099048, &qword_100076770);
}

uint64_t sub_100059014()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  if (v6)
  {
    return 3;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_100059168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10006A9F0();
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100007DF0(&qword_100099050, &qword_100076778);
  return sub_1000591D0(a2, a1, (a3 + *(v6 + 44)));
}

uint64_t sub_1000591D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v101 = a2;
  v124 = a3;
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v5 = v4 - 8;
  v103 = *(v4 - 8);
  v6 = *(v103 + 64);
  __chkstk_darwin(v4);
  v105 = v7;
  v107 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10006A7B0();
  v104 = *(v106 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v106);
  v100 = v9;
  v102 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100007DF0(&qword_100099058, &unk_100076780);
  v10 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v123 = (v93 - v11);
  v98 = sub_10006A700();
  v97 = *(v98 - 8);
  v12 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100007DF0(&qword_1000981A0, &qword_100075840);
  v14 = *(*(v121 - 8) + 64);
  v15 = __chkstk_darwin(v121);
  v94 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = v93 - v17;
  v18 = type metadata accessor for Note();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v95 = v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[1] = v22;
  __chkstk_darwin(v21);
  v115 = v93 - v23;
  v24 = sub_100007DF0(&qword_100099060, &unk_100076790);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v122 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v120 = v93 - v28;
  v29 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v113 = v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = v93 - v34;
  __chkstk_darwin(v33);
  v37 = v93 - v36;
  v111 = sub_100007DF0(&qword_1000981B0, &unk_100075850);
  v110 = *(v111 - 8);
  v38 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = v93 - v39;
  v108 = sub_100007DF0(&qword_1000981B8, &unk_1000767A0);
  v40 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v42 = v93 - v41;
  v112 = sub_100007DF0(&qword_1000981C0, &unk_100075860);
  v43 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v45 = v93 - v44;
  v46 = sub_100007DF0(&qword_1000981C8, &qword_1000767B0);
  v117 = *(v46 - 8);
  v118 = v46;
  v47 = *(v117 + 64);
  v48 = __chkstk_darwin(v46);
  v116 = v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v127 = v93 - v50;
  v125 = *(v5 + 32);
  sub_100009728(a1 + v125, v37, &qword_100097C78, &unk_100076050);
  v93[0] = v19;
  v126 = *(v19 + 48);
  if (v126(v37, 1, v18) == 1)
  {
    sub_100009790(v37, &qword_100097C78, &unk_100076050);
    sub_10006B2D0();
  }

  else
  {
    v52 = *(v37 + 2);
    v51 = *(v37 + 3);

    sub_10005D0D8(v37, type metadata accessor for Note);
  }

  sub_100009728(a1 + v125, v35, &qword_100097C78, &unk_100076050);
  v114 = v18;
  v126(v35, 1, v18);
  sub_100009790(v35, &qword_100097C78, &unk_100076050);
  v53 = sub_10006AC30();

  v54 = sub_100059014();
  KeyPath = swift_getKeyPath();
  v128 = v53;
  v129 = KeyPath;
  v130 = v54;
  v131 = 0;
  sub_100007DF0(&qword_1000981D8, &qword_100075878);
  sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
  v56 = v109;
  v57 = a1;
  sub_10006AD70();

  if (sub_10005898C())
  {
    v58 = sub_10006AE50();
  }

  else
  {
    v58 = sub_10006AE20();
  }

  v59 = v58;
  (*(v110 + 32))(v42, v56, v111);
  *&v42[*(v108 + 36)] = v59;
  sub_1000096C0(v42, v45, &qword_1000981B8, &unk_1000767A0);
  *&v45[*(v112 + 36)] = 0x3FF0000000000000;
  v60 = sub_10005898C();
  v61 = v114;
  if (v60)
  {
    sub_10006ABD0();
  }

  else
  {
    sub_10006ABE0();
  }

  sub_10003F76C();
  sub_10006AD20();
  sub_100009790(v45, &qword_1000981C0, &unk_100075860);
  v62 = v113;
  sub_100009728(a1 + v125, v113, &qword_100097C78, &unk_100076050);
  if (v126(v62, 1, v61) == 1)
  {
    sub_100009790(v62, &qword_100097C78, &unk_100076050);
    v63 = v96;
    sub_10006A6F0();
    v64 = sub_10005898C();
    v65 = v120;
    if (v64)
    {
      v66 = sub_10006AE50();
    }

    else
    {
      v66 = sub_10006AE20();
    }

    v80 = v66;
    v81 = v94;
    (*(v97 + 32))(v94, v63, v98);
    *(v81 + *(v121 + 36)) = v80;
    v82 = v99;
    sub_1000096C0(v81, v99, &qword_1000981A0, &qword_100075840);
    sub_100009728(v82, v123, &qword_1000981A0, &qword_100075840);
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100099068, &qword_1000767B8);
    sub_1000095F4(&qword_100099070, &qword_100099068, &qword_1000767B8);
    sub_10003F940();
    sub_10006AA50();
    sub_100009790(v82, &qword_1000981A0, &qword_100075840);
    v79 = v65;
  }

  else
  {
    v67 = v62;
    v68 = v115;
    sub_10005E174(v67, v115, type metadata accessor for Note);
    v69 = v104;
    v70 = v102;
    v71 = v106;
    (*(v104 + 16))(v102, v101, v106);
    v72 = v107;
    sub_10005E108(v57, v107, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    v73 = v95;
    sub_10005E108(v68, v95, type metadata accessor for Note);
    v74 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v75 = (v100 + *(v103 + 80) + v74) & ~*(v103 + 80);
    v76 = (v105 + *(v93[0] + 80) + v75) & ~*(v93[0] + 80);
    v77 = swift_allocObject();
    (*(v69 + 32))(v77 + v74, v70, v71);
    sub_10005E174(v72, v77 + v75, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    sub_10005E174(v73, v77 + v76, type metadata accessor for Note);
    v78 = v123;
    *v123 = sub_1000611D0;
    v78[1] = v77;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100099068, &qword_1000767B8);
    sub_1000095F4(&qword_100099070, &qword_100099068, &qword_1000767B8);
    sub_10003F940();
    v79 = v120;
    sub_10006AA50();
    sub_10005D0D8(v115, type metadata accessor for Note);
  }

  v84 = v116;
  v83 = v117;
  v85 = *(v117 + 16);
  v86 = v127;
  v87 = v118;
  v85(v116, v127, v118);
  v88 = v122;
  sub_100009728(v79, v122, &qword_100099060, &unk_100076790);
  v89 = v124;
  v85(v124, v84, v87);
  v90 = sub_100007DF0(&qword_100099078, &qword_1000767C0);
  sub_100009728(v88, &v89[*(v90 + 48)], &qword_100099060, &unk_100076790);
  sub_100009790(v79, &qword_100099060, &unk_100076790);
  v91 = *(v83 + 8);
  v91(v86, v87);
  sub_100009790(v88, &qword_100099060, &unk_100076790);
  return (v91)(v84, v87);
}

uint64_t sub_100059FA4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100099080, &qword_1000767C8);
  v17[0] = *(v4 - 8);
  v5 = *(v17[0] + 64);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  sub_10006A7A0();
  v9 = v8;
  sub_10006A7A0();
  if (v10 / sub_100059014() <= v9)
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);

    result = sub_100059014();
    v15 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v17[1] = v14;
      v17[2] = v13;
      v18 = 0;
      v19 = &_swiftEmptyArrayStorage;
      v20 = KeyPath;
      v21 = v15;
      v22 = 0;
      sub_100007DF0(&qword_100098250, &qword_1000767D0);
      sub_100040118(&qword_100098258, &qword_100098250, &qword_1000767D0);
      sub_10006AD70();

      *&v7[*(v4 + 36)] = sub_10006AA80();
      sub_1000096C0(v7, a2, &qword_100099080, &qword_1000767C8);
      return (*(v17[0] + 56))(a2, 0, 1, v4);
    }
  }

  else
  {
    v11 = *(v17[0] + 56);

    return v11(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10005A1F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v40 - v5;
  v46 = type metadata accessor for NotesFolder();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v46);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v42 = *(v15 + 24);
  v43 = v15;
  sub_100009728(a1 + v42, v14, &qword_100097C78, &unk_100076050);
  v16 = type metadata accessor for Note();
  v41 = *(*(v16 - 8) + 48);
  v17 = v41(v14, 1, v16);
  v45 = a1;
  if (v17 == 1)
  {
    sub_100009790(v14, &qword_100097C78, &unk_100076050);
    v18 = sub_10006B2D0();
    v20 = v19;
  }

  else
  {
    v18 = *(v14 + 6);
    v20 = *(v14 + 7);

    sub_10005D0D8(v14, type metadata accessor for Note);
  }

  v49 = v18;
  v50 = v20;
  sub_100060700();
  v21 = sub_10006ACB0();
  v23 = v22;
  v25 = v24;
  v26 = v45;
  sub_100009728(v45 + v42, v12, &qword_100097C78, &unk_100076050);
  v41(v12, 1, v16);
  sub_100009790(v12, &qword_100097C78, &unk_100076050);
  v27 = sub_10006AC30();
  sub_10000832C(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  if (sub_10005898C())
  {
    v29 = sub_10006AE60();
    v30 = v47;
  }

  else
  {
    v31 = sub_10005898C();
    v30 = v47;
    if (v31)
    {
      v32 = sub_10006AE50();
    }

    else
    {
      v32 = sub_10006AE20();
    }

    v29 = v32;
  }

  v33 = v46;
  sub_100009728(v26 + *(v43 + 20), v30, &qword_100096D30, &unk_10006F760);
  if ((*(v44 + 48))(v30, 1, v33) == 1)
  {
    result = sub_100009790(v30, &qword_100096D30, &unk_10006F760);
LABEL_15:
    v38 = 0;
    v37 = 0;
    goto LABEL_16;
  }

  v35 = v30;
  v36 = v40;
  sub_10005E174(v35, v40, type metadata accessor for NotesFolder);
  if (*(v36 + 32) != 1)
  {
    result = sub_10005D0D8(v36, type metadata accessor for NotesFolder);
    goto LABEL_15;
  }

  v37 = *(v36 + *(v33 + 40));
  swift_bridgeObjectRetain_n();
  sub_10005D0D8(v36, type metadata accessor for NotesFolder);

  v38 = 0x4020000000000000;
LABEL_16:
  v39 = v48;
  *v48 = v27;
  v39[1] = KeyPath;
  v39[2] = 1;
  *(v39 + 24) = 0;
  v39[4] = v29;
  v39[5] = v38;
  v39[6] = 0;
  v39[7] = v37;
  return result;
}

uint64_t sub_10005A678()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10005A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100007DF0(&qword_100098F50, &qword_100076668);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v68 = (&v65 - v5);
  v65 = sub_100007DF0(&qword_100098F58, &qword_100076670);
  v6 = *(*(v65 - 8) + 64);
  v7 = __chkstk_darwin(v65);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = (&v65 - v9);
  v10 = sub_100007DF0(&qword_100098F60, &qword_100076678);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v65 - v14;
  v15 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v70 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v65 - v20;
  __chkstk_darwin(v19);
  v23 = &v65 - v22;
  v80 = a1;
  sub_100009728(a1, &v65 - v22, &qword_100097C78, &unk_100076050);
  v24 = type metadata accessor for Note();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v78 = v25 + 48;
  v79 = v26;
  if ((v26)(v23, 1, v24) == 1)
  {
    sub_100009790(v23, &qword_100097C78, &unk_100076050);
    v27 = sub_10006B2D0();
    v29 = v28;
  }

  else
  {
    v27 = *(v23 + 2);
    v29 = *(v23 + 3);

    sub_10005D0D8(v23, type metadata accessor for Note);
  }

  v84 = v27;
  v85 = v29;
  sub_100060700();
  v30 = sub_10006ACB0();
  v32 = v31;
  v34 = v33;
  sub_100009728(v80, v21, &qword_100097C78, &unk_100076050);
  v69 = v24;
  v79(v21, 1, v24);
  sub_100009790(v21, &qword_100097C78, &unk_100076050);
  v35 = sub_10006AC30();
  sub_10000832C(v30, v32, v34 & 1);

  if (sub_10005A678())
  {
    v36 = sub_10006AE50();
  }

  else
  {
    v36 = sub_10006AE20();
  }

  v77 = v36;
  v37 = v70;
  KeyPath = swift_getKeyPath();
  sub_10006AFC0();
  sub_10006A7F0();
  *&v96[55] = v101;
  *&v96[71] = v102;
  *&v96[87] = v103;
  *&v96[103] = v104;
  *&v96[7] = v98;
  *&v96[23] = v99;
  v97 = 0;
  *&v96[39] = v100;
  sub_100009728(v80, v37, &qword_100097C78, &unk_100076050);
  v39 = v69;
  v40 = (v79)(v37, 1, v69);
  v75 = v35;
  if (v40 == 1)
  {
    sub_100009790(v37, &qword_100097C78, &unk_100076050);
LABEL_11:
    v54 = 1;
    goto LABEL_12;
  }

  v41 = *(v37 + *(v39 + 52));

  sub_10005D0D8(v37, type metadata accessor for Note);
  if (!v41)
  {
    goto LABEL_11;
  }

  v42 = swift_getKeyPath();
  v43 = KeyPath;
  v44 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  v45 = v66;
  *(v66 + *(v44 + 20)) = v42;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  *v45 = swift_getKeyPath();
  sub_100007DF0(&qword_100096A30, &qword_100076650);
  swift_storeEnumTagMultiPayload();
  *(v45 + *(v44 + 24)) = v41;

  LOBYTE(v42) = sub_10006AB80();
  sub_10006A720();
  v46 = v45 + *(v65 + 36);
  *v46 = v42;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  v51 = v67;
  sub_100009728(v45, v67, &qword_100098F58, &qword_100076670);
  v52 = v68;
  *v68 = 0x4024000000000000;
  *(v52 + 8) = 0;
  v53 = sub_100007DF0(&qword_100098F80, &qword_1000766C8);
  sub_100009728(v51, v52 + *(v53 + 48), &qword_100098F58, &qword_100076670);

  sub_100009790(v45, &qword_100098F58, &qword_100076670);
  v35 = v75;
  KeyPath = v43;
  sub_100009790(v51, &qword_100098F58, &qword_100076670);
  sub_1000096C0(v52, v76, &qword_100098F50, &qword_100076668);
  v54 = 0;
LABEL_12:
  v55 = v76;
  (*(v71 + 56))(v76, v54, 1, v72);
  v56 = v73;
  sub_100009728(v55, v73, &qword_100098F60, &qword_100076678);
  *&v81 = v35;
  *(&v81 + 1) = v77;
  *&v82 = KeyPath;
  *(&v82 + 1) = 1;
  v83[0] = 0;
  *&v83[1] = *v96;
  *&v83[17] = *&v96[16];
  *&v83[65] = *&v96[64];
  *&v83[81] = *&v96[80];
  *&v83[97] = *&v96[96];
  *&v83[112] = *&v96[111];
  v57 = *&v96[111];
  *&v83[33] = *&v96[32];
  *&v83[49] = *&v96[48];
  v58 = *&v83[80];
  v59 = v74;
  *(v74 + 96) = *&v83[64];
  *(v59 + 112) = v58;
  *(v59 + 128) = *&v83[96];
  *(v59 + 144) = v57;
  v60 = *&v83[16];
  *(v59 + 32) = *v83;
  *(v59 + 48) = v60;
  v61 = *&v83[48];
  *(v59 + 64) = *&v83[32];
  *(v59 + 80) = v61;
  v62 = v82;
  *v59 = v81;
  *(v59 + 16) = v62;
  v63 = sub_100007DF0(&qword_100099010, &qword_100076748);
  sub_100009728(v56, v59 + *(v63 + 48), &qword_100098F60, &qword_100076678);
  sub_100009728(&v81, &v84, &qword_100099018, &qword_100076750);
  sub_100009790(v55, &qword_100098F60, &qword_100076678);
  sub_100009790(v56, &qword_100098F60, &qword_100076678);
  v93 = *&v96[64];
  v94 = *&v96[80];
  *v95 = *&v96[96];
  v89 = *v96;
  v90 = *&v96[16];
  v91 = *&v96[32];
  v84 = v75;
  v85 = v77;
  v86 = KeyPath;
  v87 = 1;
  v88 = 0;
  *&v95[15] = *&v96[111];
  v92 = *&v96[48];
  return sub_100009790(&v84, &qword_100099018, &qword_100076750);
}

uint64_t sub_10005B00C()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100098FF0, &qword_100076738);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  *v9 = sub_10006A970();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100007DF0(&qword_100098FF8, &qword_100076740);
  sub_10005A7D0(v0, &v9[*(v10 + 44)]);
  (*(v2 + 104))(v5, enum case for ContentSizeCategory.accessibilityMedium(_:), v1);
  sub_1000095F4(&qword_100099000, &qword_100098FF0, &qword_100076738);
  sub_10006ACD0();
  (*(v2 + 8))(v5, v1);
  return sub_100009790(v9, &qword_100098FF0, &qword_100076738);
}

uint64_t sub_10005B1E8()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10006B3B0();
    v8 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10005B340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100007DF0(&qword_100098F50, &qword_100076668);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = (&v48 - v5);
  v6 = sub_100007DF0(&qword_100098F58, &qword_100076670);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v48 - v10);
  v12 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_100007DF0(&qword_100098F60, &qword_100076678);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  v23 = sub_100007DF0(&qword_100098F68, &qword_100076680);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v48 - v28;
  *v29 = sub_10006A9E0();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = sub_100007DF0(&qword_100098F70, &qword_100076688);
  sub_10005B8F0(a1, &v29[*(v30 + 44)]);
  v31 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  sub_100009728(a1 + *(v31 + 20), v15, &qword_100097C78, &unk_100076050);
  v32 = type metadata accessor for Note();
  if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
  {
    sub_100009790(v15, &qword_100097C78, &unk_100076050);
LABEL_5:
    v44 = 1;
    goto LABEL_6;
  }

  v33 = *&v15[*(v32 + 52)];

  sub_10005D0D8(v15, type metadata accessor for Note);
  if (!v33)
  {
    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  v35 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  *(v11 + *(v35 + 20)) = KeyPath;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  *v11 = swift_getKeyPath();
  sub_100007DF0(&qword_100096A30, &qword_100076650);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v35 + 24)) = v33;

  LOBYTE(KeyPath) = sub_10006AB80();
  sub_10006A720();
  v36 = v11 + *(v6 + 36);
  *v36 = KeyPath;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = v49;
  sub_100009728(v11, v49, &qword_100098F58, &qword_100076670);
  v42 = v50;
  *v50 = 0x4024000000000000;
  *(v42 + 8) = 0;
  v43 = sub_100007DF0(&qword_100098F80, &qword_1000766C8);
  sub_100009728(v41, v42 + *(v43 + 48), &qword_100098F58, &qword_100076670);

  sub_100009790(v11, &qword_100098F58, &qword_100076670);
  sub_100009790(v41, &qword_100098F58, &qword_100076670);
  sub_1000096C0(v42, v22, &qword_100098F50, &qword_100076668);
  v44 = 0;
LABEL_6:
  (*(v51 + 56))(v22, v44, 1, v52);
  sub_100009728(v29, v27, &qword_100098F68, &qword_100076680);
  sub_100009728(v22, v20, &qword_100098F60, &qword_100076678);
  v45 = v53;
  sub_100009728(v27, v53, &qword_100098F68, &qword_100076680);
  v46 = sub_100007DF0(&qword_100098F78, &qword_100076690);
  sub_100009728(v20, v45 + *(v46 + 48), &qword_100098F60, &qword_100076678);
  sub_100009790(v22, &qword_100098F60, &qword_100076678);
  sub_100009790(v29, &qword_100098F68, &qword_100076680);
  sub_100009790(v20, &qword_100098F60, &qword_100076678);
  return sub_100009790(v27, &qword_100098F68, &qword_100076680);
}

uint64_t sub_10005B8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100098F88, &qword_1000766D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  *v11 = sub_10006A9F0();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v12 = sub_100007DF0(&qword_100098F90, &qword_1000766D8);
  sub_10005BA7C(a1, &v11[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(v5 + 44)];
  *v14 = KeyPath;
  *(v14 + 1) = 1;
  v14[16] = 0;
  sub_100009728(v11, v9, &qword_100098F88, &qword_1000766D0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v15 = sub_100007DF0(&qword_100098F98, &qword_1000766E0);
  sub_100009728(v9, a2 + *(v15 + 48), &qword_100098F88, &qword_1000766D0);
  v16 = a2 + *(v15 + 64);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100009790(v11, &qword_100098F88, &qword_1000766D0);
  return sub_100009790(v9, &qword_100098F88, &qword_1000766D0);
}

uint64_t sub_10005BA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_100007DF0(&qword_100098FA0, &qword_1000766E8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v81 = (&v78 - v5);
  v6 = sub_100007DF0(&qword_100098FA8, &qword_1000766F0);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  v8 = __chkstk_darwin(v6);
  v80 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v78 - v10;
  v93 = sub_10006A9D0();
  v91 = *(v93 - 8);
  v11 = *(v91 + 64);
  v12 = __chkstk_darwin(v93);
  v90 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v78 - v14;
  v15 = sub_100007DF0(&qword_100098FB0, &qword_1000766F8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v96 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v78 - v19;
  v20 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v78 - v25;
  v87 = sub_100007DF0(&qword_100098FB8, &qword_100076700);
  v84 = *(v87 - 8);
  v27 = *(v84 + 64);
  __chkstk_darwin(v87);
  v83 = &v78 - v28;
  v82 = sub_100007DF0(&qword_100098FC0, &qword_100076708);
  v29 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v86 = &v78 - v30;
  v85 = sub_100007DF0(&qword_100098FC8, &qword_100076710);
  v31 = *(*(v85 - 8) + 64);
  v32 = __chkstk_darwin(v85);
  v94 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v88 = &v78 - v35;
  __chkstk_darwin(v34);
  v92 = &v78 - v36;
  v37 = *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 20);
  v38 = a1;
  sub_100009728(a1 + v37, v26, &qword_100097C78, &unk_100076050);
  v39 = type metadata accessor for Note();
  v40 = *(*(v39 - 8) + 48);
  if (v40(v26, 1, v39) == 1)
  {
    sub_100009790(v26, &qword_100097C78, &unk_100076050);
    sub_10006B2D0();
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    sub_10005D0D8(v26, type metadata accessor for Note);
  }

  v43 = v38 + v37;
  v44 = v38;
  sub_100009728(v43, v24, &qword_100097C78, &unk_100076050);
  v40(v24, 1, v39);
  sub_100009790(v24, &qword_100097C78, &unk_100076050);
  v45 = sub_10006AC30();

  *&v100 = v45;
  v46 = v83;
  sub_10006AD70();

  if (sub_10005B1E8())
  {
    v47 = sub_10006AE50();
  }

  else
  {
    v47 = sub_10006AE20();
  }

  v48 = v47;
  v49 = v95;
  v50 = v92;
  v51 = v86;
  (*(v84 + 32))(v86, v46, v87);
  *(v51 + *(v82 + 36)) = v48;
  sub_10006AFC0();
  v52 = 1;
  sub_10006A7F0();
  v53 = v88;
  sub_1000096C0(v51, v88, &qword_100098FC0, &qword_100076708);
  v54 = (v53 + *(v85 + 36));
  v55 = v105;
  v54[4] = v104;
  v54[5] = v55;
  v54[6] = v106;
  v56 = v101;
  *v54 = v100;
  v54[1] = v56;
  v57 = v103;
  v54[2] = v102;
  v54[3] = v57;
  sub_1000096C0(v53, v50, &qword_100098FC8, &qword_100076710);
  v58 = v89;
  sub_10005CB90(&qword_100098128, &qword_100075CE0, &type metadata accessor for ContentSizeCategory, v89);
  v59 = v91;
  v60 = v90;
  v61 = v93;
  (*(v91 + 104))(v90, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v93);
  LOBYTE(v53) = sub_1000602E8(v58, v60);
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v58, v61);
  v63 = v98;
  if (v53)
  {
    v64 = sub_10006A970();
    v65 = v81;
    *v81 = v64;
    v65[1] = 0;
    *(v65 + 16) = 1;
    v66 = sub_100007DF0(&qword_100098FD8, &qword_100076720);
    sub_10005C440(v44, (v65 + *(v66 + 44)));
    if (sub_10005B1E8())
    {
      v67 = sub_10006AE60();
    }

    else if (sub_10005B1E8())
    {
      v67 = sub_10006AE50();
    }

    else
    {
      v67 = sub_10006AE20();
    }

    v68 = v67;
    v69 = v65;
    v70 = v80;
    sub_1000096C0(v69, v80, &qword_100098FA0, &qword_1000766E8);
    *(v70 + *(v63 + 36)) = v68;
    v71 = v70;
    v72 = v79;
    sub_1000096C0(v71, v79, &qword_100098FA8, &qword_1000766F0);
    sub_1000096C0(v72, v49, &qword_100098FA8, &qword_1000766F0);
    v52 = 0;
  }

  (*(v97 + 56))(v49, v52, 1, v63);
  v73 = v94;
  sub_100009728(v50, v94, &qword_100098FC8, &qword_100076710);
  v74 = v96;
  sub_100009728(v49, v96, &qword_100098FB0, &qword_1000766F8);
  v75 = v99;
  sub_100009728(v73, v99, &qword_100098FC8, &qword_100076710);
  v76 = sub_100007DF0(&qword_100098FD0, &qword_100076718);
  sub_100009728(v74, v75 + *(v76 + 48), &qword_100098FB0, &qword_1000766F8);
  sub_100009790(v49, &qword_100098FB0, &qword_1000766F8);
  sub_100009790(v50, &qword_100098FC8, &qword_100076710);
  sub_100009790(v74, &qword_100098FB0, &qword_1000766F8);
  return sub_100009790(v73, &qword_100098FC8, &qword_100076710);
}

uint64_t sub_10005C440@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = sub_100007DF0(&qword_100098C30, &qword_1000763A0);
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v46 = &v45 - v5;
  v6 = sub_100007DF0(&qword_100098FE0, &qword_100076728);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v45 - v10;
  v11 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v48 = &v45 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - v18;
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v22 = *(type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0) + 20);
  sub_100009728(a1 + v22, v21, &qword_100097C78, &unk_100076050);
  v23 = type metadata accessor for Note();
  v24 = *(*(v23 - 8) + 48);
  v25 = v24(v21, 1, v23);
  v51 = v3;
  v26 = a1;
  if (v25 == 1)
  {
    sub_100009790(v21, &qword_100097C78, &unk_100076050);
    v47 = sub_10006B2D0();
  }

  else
  {
    v27 = *(v21 + 7);
    v47 = *(v21 + 6);

    sub_10005D0D8(v21, type metadata accessor for Note);
  }

  sub_100009728(a1 + v22, v19, &qword_100097C78, &unk_100076050);
  v24(v19, 1, v23);
  sub_100009790(v19, &qword_100097C78, &unk_100076050);
  v28 = sub_10006AC30();

  v29 = v48;
  sub_100009728(a1 + v22, v48, &qword_100097C78, &unk_100076050);
  v30 = v24(v29, 1, v23);
  sub_100009790(v29, &qword_100097C78, &unk_100076050);
  v31 = 1;
  v33 = v50;
  v32 = v51;
  v34 = v49;
  if (v30 != 1)
  {
    v35 = v26 + v22;
    v36 = v45;
    sub_100009728(v35, v45, &qword_100097C78, &unk_100076050);
    if (v24(v36, 1, v23) == 1)
    {
      sub_100009790(v36, &qword_100097C78, &unk_100076050);
      v37 = sub_10006B2D0();
      v39 = v38;
    }

    else
    {
      v37 = *(v36 + 32);
      v39 = *(v36 + 40);

      sub_10005D0D8(v36, type metadata accessor for Note);
    }

    v54 = v37;
    v55 = v39;
    v56 = 0;
    v57 = &_swiftEmptyArrayStorage;
    v40 = v46;
    sub_10006AD70();

    (*(v33 + 32))(v34, v40, v32);
    v31 = 0;
  }

  (*(v33 + 56))(v34, v31, 1, v32);
  v41 = v52;
  sub_100009728(v34, v52, &qword_100098FE0, &qword_100076728);
  v42 = v53;
  *v53 = v28;
  v43 = sub_100007DF0(&qword_100098FE8, &qword_100076730);
  sub_100009728(v41, v42 + *(v43 + 48), &qword_100098FE0, &qword_100076728);

  sub_100009790(v34, &qword_100098FE0, &qword_100076728);
  sub_100009790(v41, &qword_100098FE0, &qword_100076728);
}

uint64_t sub_10005C98C()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100098F38, &qword_100076658);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  *v9 = sub_10006A970();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100007DF0(&qword_100098F40, &qword_100076660);
  sub_10005B340(v0, &v9[*(v10 + 44)]);
  (*(v2 + 104))(v5, enum case for ContentSizeCategory.accessibilityMedium(_:), v1);
  sub_1000095F4(&qword_100098F48, &qword_100098F38, &qword_100076658);
  sub_10006ACD0();
  (*(v2 + 8))(v5, v1);
  return sub_100009790(v9, &qword_100098F38, &qword_100076658);
}

uint64_t sub_10005CB90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10006A950();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007DF0(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100009728(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10006B3B0();
    v22 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_10005CD98()
{
  result = qword_1000989A0;
  if (!qword_1000989A0)
  {
    sub_100008154(&qword_100098988, &qword_100076190);
    sub_1000095F4(&qword_1000989A8, &qword_1000989B0, &unk_1000761D8);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000989A0);
  }

  return result;
}

unint64_t sub_10005CE7C()
{
  result = qword_1000989E0;
  if (!qword_1000989E0)
  {
    sub_100008154(&qword_1000989D8, &qword_100076208);
    sub_1000095F4(&qword_1000989E8, &qword_1000989F0, &qword_100076210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000989E0);
  }

  return result;
}

unint64_t sub_10005CF2C()
{
  result = qword_100098A10;
  if (!qword_100098A10)
  {
    sub_100008154(&qword_100098A08, &qword_100076220);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A10);
  }

  return result;
}

unint64_t sub_10005CFDC()
{
  result = qword_100098A18;
  if (!qword_100098A18)
  {
    sub_100008154(&qword_1000989C8, &qword_1000761F8);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218);
    sub_100008154(&qword_1000989D8, &qword_100076208);
    sub_10005CE7C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A18);
  }

  return result;
}

uint64_t sub_10005D0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005D138()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10006A9D0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10006B100();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  sub_1000096B4(*&v6[v1[6]], v6[v1[6] + 8]);
  v12 = &v6[v1[7]];
  v13 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v13 - 8) + 48))(v12, 2, v13))
  {
    v14 = *(v12 + 1);

    v15 = *(v12 + 3);

    v16 = *(v12 + 6);

    v17 = type metadata accessor for NotesFolder();
    v18 = v17[8];
    v19 = sub_10006A520();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v12[v18], 1, v19))
    {
      (*(v20 + 8))(&v12[v18], v19);
    }

    v21 = *&v12[v17[9]];

    v22 = *&v12[v17[10]];

    v23 = *&v12[*(v13 + 48)];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005D3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100054E04(a1, v6, v7, a2);
}

unint64_t sub_10005D480()
{
  result = qword_100098A30;
  if (!qword_100098A30)
  {
    sub_100008154(&qword_100098A28, &qword_100076228);
    sub_1000095F4(&qword_100098A38, &qword_100098A40, &qword_100076230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A30);
  }

  return result;
}

uint64_t sub_10005D538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A8A0();
  *a1 = result;
  return result;
}

uint64_t sub_10005D58C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = &_swiftEmptyArrayStorage;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    v6 = 0;
LABEL_26:
    v25 = *(v4 + 3);
    if (v25 < 2)
    {
      return v4;
    }

    v26 = v25 >> 1;
    v13 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (!v13)
    {
      *(v4 + 2) = v27;
      return v4;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = result + 8 * a2;
    v10 = &_swiftEmptyArrayStorage + 32;
    while (v8 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v11 = *(v9 + 8 * v7);
      if (v6)
      {
        v12 = *(v9 + 8 * v7);

        v13 = __OFSUB__(v6--, 1);
        if (v13)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v14 = *(v4 + 3);
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        sub_100007DF0(&qword_100099088, &qword_1000767D8);
        v17 = swift_allocObject();
        v18 = j__malloc_size(v17);
        v19 = v18 - 32;
        if (v18 < 32)
        {
          v19 = v18 - 17;
        }

        v20 = v19 >> 4;
        *(v17 + 2) = v16;
        *(v17 + 3) = 2 * (v19 >> 4);
        v21 = v17 + 32;
        v22 = *(v4 + 3) >> 1;
        v10 = &v17[16 * v22 + 32];
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;
        if (*(v4 + 2))
        {
          v24 = v4 + 32;
          if (v17 != v4 || v21 >= &v24[16 * v22])
          {
            memmove(v21, v24, 16 * v22);
          }

          *(v4 + 2) = 0;
        }

        else
        {
        }

        v4 = v17;
        v13 = __OFSUB__(v23, 1);
        v6 = v23 - 1;
        if (v13)
        {
          goto LABEL_32;
        }
      }

      *v10 = v7;
      *(v10 + 1) = v11;
      v10 += 16;
      if (v5 == ++v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005D73C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a1;
  v5 = sub_100007DF0(&qword_100098AB0, &qword_100076290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v47 = &v40 - v12;
  v13 = a3 >> 1;
  v14 = &_swiftEmptyArrayStorage;
  if (a3 >> 1 == a2)
  {
    v15 = 0;
LABEL_31:
    v37 = v14[3];
    if (v37 < 2)
    {
      return v14;
    }

    v38 = v37 >> 1;
    v23 = __OFSUB__(v38, v15);
    v39 = v38 - v15;
    if (!v23)
    {
      v14[2] = v39;
      return v14;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = *(v6 + 80);
    v43 = v17;
    v44 = (v17 + 32) & ~v17;
    v18 = &_swiftEmptyArrayStorage + v44;
    if (a2 <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = a2;
    }

    v45 = v19;
    v20 = &_swiftEmptyArrayStorage;
    v41 = v6;
    v42 = v10;
    while (v45 != a2)
    {
      v21 = v46 + *(*(type metadata accessor for Note() - 8) + 72) * a2;
      v22 = *(v5 + 48);
      *v10 = v16;
      result = sub_10005E108(v21, v10 + v22, type metadata accessor for Note);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_36;
      }

      result = sub_1000096C0(v10, v47, &qword_100098AB0, &qword_100076290);
      if (v15)
      {
        v14 = v20;
        v23 = __OFSUB__(v15--, 1);
        if (v23)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v24 = v20[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v25 = v5;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_100007DF0(&qword_100098B78, &qword_100076320);
        v28 = *(v6 + 72);
        v29 = v44;
        v14 = swift_allocObject();
        result = j__malloc_size(v14);
        if (!v28)
        {
          goto LABEL_39;
        }

        v30 = result - v29;
        if (result - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_40;
        }

        v32 = v30 / v28;
        v14[2] = v27;
        v14[3] = 2 * (v30 / v28);
        v33 = v14 + v29;
        v34 = v20[3] >> 1;
        v35 = v34 * v28;
        if (v20[2])
        {
          if (v14 < v20 || v33 >= v20 + v44 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v18 = &v33[v35];
        v36 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v5 = v25;
        v6 = v41;
        v10 = v42;
        v23 = __OFSUB__(v36, 1);
        v15 = v36 - 1;
        if (v23)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      result = sub_1000096C0(v47, v18, &qword_100098AB0, &qword_100076290);
      v18 += *(v6 + 72);
      ++v16;
      v20 = v14;
      if (v13 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DA7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10006A7B0() - 8);
  v11 = v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1000552BC(a1, a2, v3 + v8, v11, a3);
}

uint64_t sub_10005DB68()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DBA0(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_100007DF0(&qword_100098AB0, &qword_100076290);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_10005DC08()
{
  result = qword_100098A70;
  if (!qword_100098A70)
  {
    sub_100008154(&qword_100098A60, &qword_100076270);
    sub_100008154(&qword_100098A78, &qword_100076278);
    sub_10005DD00();
    swift_getOpaqueTypeConformance2();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A70);
  }

  return result;
}

unint64_t sub_10005DD00()
{
  result = qword_100098A80;
  if (!qword_100098A80)
  {
    sub_100008154(&qword_100098A78, &qword_100076278);
    sub_10005DDBC();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A80);
  }

  return result;
}

unint64_t sub_10005DDBC()
{
  result = qword_100098A88;
  if (!qword_100098A88)
  {
    sub_100008154(&qword_100098A90, &qword_100076280);
    sub_1000095F4(&qword_100098A98, &qword_100098AA0, &qword_100076288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098A88);
  }

  return result;
}

uint64_t sub_10005DE74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005DEBC()
{
  result = qword_100098B28;
  if (!qword_100098B28)
  {
    sub_100008154(&qword_100098B10, &unk_1000762F0);
    sub_10005DF48();
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B28);
  }

  return result;
}

unint64_t sub_10005DF48()
{
  result = qword_100098B30;
  if (!qword_100098B30)
  {
    sub_100008154(&qword_100098B08, &qword_1000762E8);
    sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B30);
  }

  return result;
}

unint64_t sub_10005E028()
{
  result = qword_100098B48;
  if (!qword_100098B48)
  {
    sub_100008154(&qword_100098AD8, &qword_1000762B8);
    sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098B48);
  }

  return result;
}

uint64_t sub_10005E108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005E1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Note() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100057338(v4, a1);
}

uint64_t sub_10005E28C()
{
  v1 = type metadata accessor for Note();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = v1[10];
  v12 = sub_10006A560();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = *(v5 + v1[11] + 8);

  v15 = v1[12];
  v16 = sub_10006A520();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = *(v5 + v1[13]);

  v19 = *(v5 + v1[14]);

  v20 = *(v5 + v1[15]);

  v21 = *(v5 + v1[16]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005E4FC()
{
  v1 = v0;
  v2 = type metadata accessor for NotesFolderWidgetView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for Note();
  v7 = *(*(v6 - 1) + 80);
  v47 = *(*(v6 - 1) + 64);
  v8 = (v1 + v4);
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10006A9D0();
    (*(*(v9 - 8) + 8))(v1 + v4, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v4 + v5 + v7;
  v12 = v2[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10006B100();
    (*(*(v13 - 8) + 8))(&v8[v12], v13);
  }

  else
  {
    v14 = *&v8[v12];
  }

  v15 = v11 & ~v7;
  sub_1000096B4(*&v8[v2[6]], v8[v2[6] + 8]);
  v16 = &v8[v2[7]];
  v17 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v17 - 8) + 48))(v16, 2, v17))
  {
    v46 = v1;
    v18 = *(v16 + 1);

    v19 = *(v16 + 3);

    v20 = *(v16 + 6);

    v21 = type metadata accessor for NotesFolder();
    v22 = v21[8];
    v23 = sub_10006A520();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(&v16[v22], 1, v23))
    {
      (*(v24 + 8))(&v16[v22], v23);
    }

    v25 = *&v16[v21[9]];

    v26 = *&v16[v21[10]];

    v27 = *&v16[*(v17 + 48)];

    v1 = v46;
  }

  v28 = v1 + v15;
  v29 = *(v1 + v15 + 8);

  v30 = *(v1 + v15 + 24);

  v31 = *(v1 + v15 + 40);

  v32 = *(v1 + v15 + 56);

  v33 = *(v1 + v15 + 72);

  v34 = v6[10];
  v35 = sub_10006A560();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v1 + v15 + v34, 1, v35))
  {
    (*(v36 + 8))(v28 + v34, v35);
  }

  v37 = *(v28 + v6[11] + 8);

  v38 = v6[12];
  v39 = sub_10006A520();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v28 + v38, 1, v39))
  {
    (*(v40 + 8))(v28 + v38, v39);
  }

  v41 = *(v28 + v6[13]);

  v42 = *(v28 + v6[14]);

  v43 = *(v28 + v6[15]);

  v44 = *(v28 + v6[16]);

  return _swift_deallocObject(v1, v15 + v47, v3 | v7 | 7);
}

uint64_t sub_10005E98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Note() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100057054(v1 + v4, v7, a1);
}

uint64_t sub_10005EA80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005EB04()
{
  result = qword_100098BC0;
  if (!qword_100098BC0)
  {
    sub_100008154(&qword_100098B80, &qword_100076328);
    sub_1000095F4(&qword_100098BC8, &qword_100098BD0, &qword_100076360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BC0);
  }

  return result;
}

unint64_t sub_10005EBBC()
{
  result = qword_100098BE8;
  if (!qword_100098BE8)
  {
    sub_100008154(&qword_100098B98, &qword_100076340);
    sub_1000095F4(&qword_100098BF0, &qword_100098BF8, &qword_100076370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098BE8);
  }

  return result;
}

uint64_t sub_10005EC74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006A8A0();
  *a1 = result;
  return result;
}

unint64_t sub_10005ECD8()
{
  result = qword_100098C90;
  if (!qword_100098C90)
  {
    sub_100008154(&qword_100098C80, &qword_100076458);
    type metadata accessor for WidgetHeader();
    sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader);
    swift_getOpaqueTypeConformance2();
    sub_10005DE74(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098C90);
  }

  return result;
}

unint64_t sub_10005EDF4()
{
  result = qword_100098C98;
  if (!qword_100098C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098C98);
  }

  return result;
}

uint64_t sub_10005EE48()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10006A9D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10006B100();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  sub_1000096B4(*&v5[v1[6]], v5[v1[6] + 8]);
  v11 = &v5[v1[7]];
  v12 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v12 - 8) + 48))(v11, 2, v12))
  {
    v13 = *(v11 + 1);

    v14 = *(v11 + 3);

    v15 = *(v11 + 6);

    v16 = type metadata accessor for NotesFolder();
    v17 = v16[8];
    v18 = sub_10006A520();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&v11[v17], 1, v18))
    {
      (*(v19 + 8))(&v11[v17], v18);
    }

    v20 = *&v11[v16[9]];

    v21 = *&v11[v16[10]];

    v22 = *&v11[*(v12 + 48)];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005F130()
{
  v1 = type metadata accessor for NotesFolderWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v29 = *(*(v1 - 1) + 64);
  v4 = sub_10006A7B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v28 = *(v5 + 64);
  v7 = (v0 + v3);
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006A9D0();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006B100();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *&v7[v10];
  }

  sub_1000096B4(*&v7[v1[6]], v7[v1[6] + 8]);
  v13 = &v7[v1[7]];
  v14 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if (!(*(*(v14 - 8) + 48))(v13, 2, v14))
  {
    v27 = v4;
    v15 = *(v13 + 1);

    v16 = *(v13 + 3);

    v17 = *(v13 + 6);

    v18 = type metadata accessor for NotesFolder();
    v19 = v18[8];
    v20 = sub_10006A520();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v13[v19], 1, v20))
    {
      (*(v21 + 8))(&v13[v19], v20);
    }

    v22 = *&v13[v18[9]];

    v23 = *&v13[v18[10]];

    v24 = *&v13[*(v14 + 48)];

    v3 = (v2 + 16) & ~v2;
    v4 = v27;
  }

  v25 = (v3 + v29 + v6) & ~v6;
  (*(v5 + 8))(v0 + v25, v4);

  return _swift_deallocObject(v0, v25 + v28, v2 | v6 | 7);
}

double sub_10005F488@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotesFolderWidgetView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10006A7B0() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000527A8(a1, v2 + v6, a2);
}

unint64_t sub_10005F56C()
{
  result = qword_100098CD0;
  if (!qword_100098CD0)
  {
    sub_100008154(&qword_100098CC8, &qword_1000764B8);
    sub_1000095F4(&qword_100098CD8, &qword_100098CE0, &qword_1000764C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098CD0);
  }

  return result;
}

unint64_t sub_10005F624()
{
  result = qword_100098D48;
  if (!qword_100098D48)
  {
    sub_100008154(&qword_100098D38, &qword_100076518);
    sub_10005F6B0();
    sub_10005F79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D48);
  }

  return result;
}

unint64_t sub_10005F6B0()
{
  result = qword_100098D50;
  if (!qword_100098D50)
  {
    sub_100008154(&qword_100098D30, &qword_100076510);
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D50);
  }

  return result;
}

unint64_t sub_10005F79C()
{
  result = qword_100098D58;
  if (!qword_100098D58)
  {
    sub_100008154(&qword_100098D10, &qword_1000764F0);
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098D58);
  }

  return result;
}

uint64_t sub_10005F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007DF0(&qword_100097C78, &unk_100076050);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10005F99C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100097C78, &unk_100076050);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10005FAC0()
{
  sub_100061668(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10003B41C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10005FBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005FCAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_10005FD74()
{
  sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10003B41C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10005FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v8 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
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
      v13 = sub_100007DF0(&qword_100097C78, &unk_100076050);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10005FF84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
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
      v13 = sub_100007DF0(&qword_100097C78, &unk_100076050);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000600BC()
{
  sub_10003B41C();
  if (v0 <= 0x3F)
  {
    sub_100061668(319, &unk_100098F00, type metadata accessor for NotesFolder, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100061668(319, &unk_100098DD0, type metadata accessor for Note, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000601B8()
{
  sub_100008154(&qword_100098990, &qword_100076198);
  sub_100008154(&qword_100098988, &qword_100076190);
  sub_10005CD98();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000602E8(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_10006A9D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_100060700()
{
  result = qword_100099008;
  if (!qword_100099008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099008);
  }

  return result;
}

unint64_t sub_100060754()
{
  result = qword_100099030;
  if (!qword_100099030)
  {
    sub_100008154(&qword_100099028, &qword_100076760);
    sub_1000095F4(&qword_100099038, &qword_100099040, &qword_100076768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099030);
  }

  return result;
}

uint64_t sub_10006080C()
{
  v1 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_1000096B4(*(v0 + v4), *(v0 + v4 + 8));
  v5 = (v0 + v4 + *(v1 + 20));
  v6 = type metadata accessor for NotesFolder();
  if (!(*(*(v6 - 1) + 48))(v5, 1, v6))
  {
    v34 = v3;
    v7 = *(v5 + 1);

    v8 = *(v5 + 3);

    v9 = *(v5 + 6);

    v10 = v6[8];
    v11 = sub_10006A520();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v5[v10], 1, v11))
    {
      (*(v12 + 8))(&v5[v10], v11);
    }

    v13 = *&v5[v6[9]];

    v14 = *&v5[v6[10]];

    v3 = v34;
  }

  v15 = (v0 + v4 + *(v1 + 24));
  v16 = type metadata accessor for Note();
  if (!(*(*(v16 - 1) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 1);

    v18 = *(v15 + 3);

    v19 = *(v15 + 5);

    v20 = *(v15 + 7);

    v21 = *(v15 + 9);

    v22 = v16[10];
    v23 = sub_10006A560();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(&v15[v22], 1, v23))
    {
      (*(v24 + 8))(&v15[v22], v23);
    }

    v25 = *&v15[v16[11] + 8];

    v26 = v16[12];
    v27 = sub_10006A520();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v15[v26], 1, v27))
    {
      (*(v28 + 8))(&v15[v26], v27);
    }

    v29 = *&v15[v16[13]];

    v30 = *&v15[v16[14]];

    v31 = *&v15[v16[15]];

    v32 = *&v15[v16[16]];
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_100060B98(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100060C30()
{
  v62 = sub_10006A7B0();
  v1 = *(v62 - 8);
  v65 = *(v1 + 80);
  v2 = (v65 + 16) & ~v65;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v63 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v63) & ~v63;
  v6 = *(*(v4 - 8) + 64);
  v7 = type metadata accessor for Note();
  v8 = *(v7 - 1);
  v9 = *(v8 + 80);
  v10 = v5 + v6 + v9;
  v64 = *(v8 + 64);
  (*(v1 + 8))(v0 + v2, v62);
  v11 = v0;
  v12 = v0 + v5;
  v13 = v4;
  sub_1000096B4(*v12, *(v12 + 8));
  v14 = (v12 + *(v4 + 20));
  v15 = type metadata accessor for NotesFolder();
  if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
  {
    v60 = v13;
    v61 = v10;
    v16 = *(v14 + 1);

    v17 = *(v14 + 3);

    v18 = *(v14 + 6);

    v19 = v15[8];
    v20 = sub_10006A520();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v14[v19], 1, v20))
    {
      (*(v21 + 8))(&v14[v19], v20);
    }

    v22 = *&v14[v15[9]];

    v23 = *&v14[v15[10]];

    v10 = v61;
    v13 = v60;
  }

  v24 = v10 & ~v9;
  v25 = (v12 + *(v13 + 24));
  if (!(*(v8 + 48))(v25, 1, v7))
  {
    v26 = *(v25 + 1);

    v27 = *(v25 + 3);

    v28 = *(v25 + 5);

    v29 = *(v25 + 7);

    v30 = *(v25 + 9);

    v31 = v7[10];
    v32 = sub_10006A560();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(&v25[v31], 1, v32))
    {
      (*(v33 + 8))(&v25[v31], v32);
    }

    v34 = *&v25[v7[11] + 8];

    v35 = v7[12];
    v36 = sub_10006A520();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(&v25[v35], 1, v36))
    {
      (*(v37 + 8))(&v25[v35], v36);
    }

    v38 = *&v25[v7[13]];

    v39 = *&v25[v7[14]];

    v40 = *&v25[v7[15]];

    v41 = *&v25[v7[16]];
  }

  v42 = v11 + v24;
  v43 = *(v11 + v24 + 8);

  v44 = *(v11 + v24 + 24);

  v45 = *(v11 + v24 + 40);

  v46 = *(v11 + v24 + 56);

  v47 = *(v11 + v24 + 72);

  v48 = v7[10];
  v49 = sub_10006A560();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v11 + v24 + v48, 1, v49))
  {
    (*(v50 + 8))(v42 + v48, v49);
  }

  v51 = *(v42 + v7[11] + 8);

  v52 = v7[12];
  v53 = sub_10006A520();
  v54 = *(v53 - 8);
  if (!(*(v54 + 48))(v42 + v52, 1, v53))
  {
    (*(v54 + 8))(v42 + v52, v53);
  }

  v55 = *(v42 + v7[13]);

  v56 = *(v42 + v7[14]);

  v57 = *(v42 + v7[15]);

  v58 = *(v42 + v7[16]);

  return _swift_deallocObject(v11, v24 + v64, v65 | v63 | v9 | 7);
}

uint64_t sub_1000611D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10006A7B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Note() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100059FA4(v10, a1);
}

uint64_t sub_100061324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10006145C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100096A48, &qword_1000767E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10006157C()
{
  sub_100061668(319, &qword_100096AC8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100061668(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100061668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100061704(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100008154(a2, a3);
  sub_1000095F4(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100061794()
{
  sub_100008154(&qword_100099028, &qword_100076760);
  sub_100060754();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100061818()
{
  result = qword_100099180;
  if (!qword_100099180)
  {
    sub_100008154(&qword_100099170, &qword_100076890);
    sub_1000618D0();
    sub_1000095F4(&qword_1000991A0, &qword_100099178, &qword_100076898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099180);
  }

  return result;
}

unint64_t sub_1000618D0()
{
  result = qword_100099188;
  if (!qword_100099188)
  {
    sub_100008154(&qword_100099148, &qword_100076868);
    sub_100061988();
    sub_1000095F4(&qword_100099198, &qword_100099150, &qword_100076870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099188);
  }

  return result;
}

unint64_t sub_100061988()
{
  result = qword_100099190;
  if (!qword_100099190)
  {
    sub_100008154(&qword_100099140, &qword_100076860);
    sub_100008154(&qword_100096CE8, &qword_10006F720);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099190);
  }

  return result;
}

uint64_t sub_100061AA4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_100007DF0(&qword_1000991A8, &qword_1000768F8);
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v4 = &v42 - v3;
  v45 = sub_100007DF0(&qword_1000991B0, &qword_100076900);
  v47 = *(v45 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v45);
  v7 = &v42 - v6;
  v8 = sub_100007DF0(&qword_1000991B8, &qword_100076908);
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v43 = &v42 - v11;
  v12 = sub_100007DF0(&qword_1000991C0, &unk_100076910);
  v13 = *(v12 - 8);
  v50 = v12;
  v51 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v46 = &v42 - v15;
  sub_10006B290();
  sub_1000621EC();
  type metadata accessor for NotesFolderTimelineProvider();
  v16 = swift_allocObject();
  *(v16 + 16) = 16;
  v53 = v16;
  type metadata accessor for NotesFolderWidgetView(0);
  sub_100062238(&qword_1000991D0, type metadata accessor for NotesFolderWidgetView);
  sub_100062238(&qword_1000991D8, type metadata accessor for NotesFolderTimelineProvider);
  sub_10006B160();
  sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v17 = sub_10006B100();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10006F2A0;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, enum case for WidgetFamily.systemSmall(_:), v17);
  v23(v22 + v19, enum case for WidgetFamily.systemMedium(_:), v17);
  v23(v22 + 2 * v19, enum case for WidgetFamily.systemLarge(_:), v17);
  v24 = sub_100062280();
  sub_10006AA10();

  (*(v44 + 8))(v4, v1);
  sub_10006A980();
  v25 = sub_10006AC90();
  v27 = v26;
  LOBYTE(v19) = v28;
  v53 = v1;
  v54 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  v31 = v45;
  sub_10006AA30();
  sub_10000832C(v25, v27, v19 & 1);

  v32 = v31;
  (*(v47 + 8))(v7, v31);
  sub_10006A980();
  v33 = sub_10006AC90();
  v35 = v34;
  LOBYTE(v27) = v36;
  v53 = v32;
  v54 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v46;
  v39 = v48;
  sub_10006AA00();
  sub_10000832C(v33, v35, v27 & 1);

  (*(v49 + 8))(v30, v39);
  v53 = v39;
  v54 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v50;
  sub_10006AA40();
  return (*(v51 + 8))(v38, v40);
}

uint64_t sub_10006215C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s5EntryVMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000622E4(a1, v7);
  return sub_1000574D0(v7, a2);
}

unint64_t sub_1000621EC()
{
  result = qword_1000991C8;
  if (!qword_1000991C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000991C8);
  }

  return result;
}

uint64_t sub_100062238(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100062280()
{
  result = qword_1000991E0[0];
  if (!qword_1000991E0[0])
  {
    sub_100008154(&qword_1000991A8, &qword_1000768F8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000991E0);
  }

  return result;
}

uint64_t sub_1000622E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062348()
{
  sub_100008154(&qword_1000991C0, &unk_100076910);
  sub_100008154(&qword_1000991B8, &qword_100076908);
  sub_100008154(&qword_1000991B0, &qword_100076900);
  sub_100008154(&qword_1000991A8, &qword_1000768F8);
  sub_100062280();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100062470(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1000624CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1000626A0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_100062958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_100031CE8(v2 + *(a1 + 20), &v13 - v7);
  v9 = type metadata accessor for Note();
  if ((*(*(v9 - 8) + 48))(v8, 2, v9))
  {
    sub_10006B1E0();
    v10 = sub_10006B1F0();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = sub_10006B1F0();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    return sub_100062AC0(v8);
  }
}

uint64_t sub_100062AC0(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100062B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100062C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s5EntryVMa_0()
{
  result = qword_1000992C0;
  if (!qword_1000992C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062DA0()
{
  sub_10006A560();
  if (v0 <= 0x3F)
  {
    sub_100062E24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100062E24()
{
  if (!qword_1000969B8)
  {
    type metadata accessor for Note();
    v0 = type metadata accessor for ObjectStates();
    if (!v1)
    {
      atomic_store(v0, &qword_1000969B8);
    }
  }
}

uint64_t sub_100062E7C()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_1000992F8);
  sub_10000CEB8(v0, qword_1000992F8);
  return sub_10006A6A0();
}

uint64_t sub_100062EC8@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = sub_100007DF0(&qword_100099458, &qword_100076AC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v58 - v4;
  v66 = sub_100007DF0(&qword_100099460, &qword_100076AD0);
  v68 = *(v66 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v66);
  v8 = v58 - v7;
  v9 = sub_100007DF0(&qword_100099468, &qword_100076AD8);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v59 = v58 - v12;
  v13 = sub_100007DF0(&qword_100099470, &qword_100076AE0);
  v14 = *(v13 - 8);
  v72 = v13;
  *&v73 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v67 = v58 - v16;
  v17 = sub_100007DF0(&qword_100099478, &qword_100076AE8);
  v18 = *(v17 - 8);
  v74 = v17;
  v75 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v69 = v58 - v20;
  sub_10006B290();
  type metadata accessor for QuickNoteTimelineProvider();
  v77 = swift_allocObject();
  type metadata accessor for QuickNoteWidgetView(0);
  sub_100065380(&qword_100099480, 255, type metadata accessor for QuickNoteWidgetView);
  sub_100065380(&qword_100099488, v21, type metadata accessor for QuickNoteTimelineProvider);
  sub_10006B170();
  v65 = sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v22 = sub_10006B100();
  v61 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v64 = *(v23 + 80);
  v25 = v24;
  v58[1] = v24;
  v26 = (v64 + 32) & ~v64;
  v62 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100075C00;
  v28 = v27 + v26;
  v63 = enum case for WidgetFamily.systemSmall(_:);
  v29 = *(v23 + 104);
  v60 = v29;
  v29(v28);
  (v29)(v28 + v25, enum case for WidgetFamily.systemLarge(_:), v22);
  v30 = sub_1000653C8();
  sub_10006AA10();

  (*(v2 + 8))(v5, v1);
  sub_10006A980();
  v31 = sub_10006AC90();
  v33 = v32;
  v35 = v34;
  v77 = v1;
  v78 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v59;
  v38 = v66;
  sub_10006AA30();
  sub_10000832C(v31, v33, v35 & 1);

  v39 = v38;
  (*(v68 + 8))(v8, v38);
  sub_10006A980();
  v40 = sub_10006AC90();
  v42 = v41;
  LOBYTE(v33) = v43;
  v77 = v39;
  v78 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v67;
  v46 = v70;
  sub_10006AA00();
  sub_10000832C(v40, v42, v33 & 1);

  (*(v71 + 8))(v37, v46);
  v77 = v46;
  v78 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v69;
  v49 = v72;
  sub_10006AA40();
  (*(v73 + 8))(v45, v49);
  sub_100007DF0(&qword_100099498, &qword_100076AF8);
  v50 = *(sub_10006B120() - 8);
  v51 = *(v50 + 72);
  v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v73 = xmmword_10006F820;
  *(v53 + 16) = xmmword_10006F820;
  sub_10006B110();
  v54 = v62;
  v55 = swift_allocObject();
  *(v55 + 16) = v73;
  v60(v55 + v54, v63, v61);
  v77 = v49;
  v78 = v47;
  swift_getOpaqueTypeConformance2();
  v56 = v74;
  sub_10006AA20();

  return (*(v75 + 8))(v48, v56);
}

uint64_t sub_100063764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QuickNoteTimelineProvider.Entry();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100064FFC(a1, v8, type metadata accessor for QuickNoteTimelineProvider.Entry);
  sub_100009728(&v8[*(v5 + 28)], a2, &qword_100096948, &qword_1000751E0);
  return sub_1000650C8(v8, type metadata accessor for QuickNoteTimelineProvider.Entry);
}

uint64_t sub_10006383C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_1000993C0, &qword_100076A68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for QuickNoteTimelineProvider.Entry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_1000993B0, &unk_100076A40);
  v12 = sub_10006B230();
  if (*(v12 + 16))
  {
    sub_100064FFC(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, type metadata accessor for QuickNoteTimelineProvider.Entry);

    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100065064(v6, v11);
  }

  else
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    v13 = *(v7 + 20);
    v14 = type metadata accessor for Note();
    (*(*(v14 - 8) + 56))(&v11[v13], 2, 2, v14);
    sub_10006A550();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100009790(v6, &qword_1000993C0, &qword_100076A68);
    }
  }

  a2(v11);
  return sub_1000650C8(v11, type metadata accessor for QuickNoteTimelineProvider.Entry);
}

uint64_t sub_100063AA8(uint64_t a1, void (*a2)(char *))
{
  v52 = a1;
  v57 = a2;
  v2 = sub_10006B1A0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006A560();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Note();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007DF0(&qword_1000993B0, &unk_100076A40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v49 - v20;
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v22 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v22, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v23 = v58;
  swift_endAccess();
  if (v23)
  {
    v50 = v13;
    v51 = v5;
    v24 = objc_opt_self();
    v25 = [v23 managedObjectContext];
    v26 = [v24 mostRecentSystemPaperNoteInManagedObjectContext:v25];

    if (v26)
    {
      v27 = v26;
      sub_10002D6CC(v27, 0, 0, [v24 globalVirtualSystemPaperFolder], 1, v16);
      sub_1000642BC(v16, v21);
      sub_1000650C8(v16, type metadata accessor for Note);
      v57(v21);
    }

    else
    {
      if (qword_100096920 != -1)
      {
        swift_once();
      }

      v38 = sub_10006A6C0();
      sub_10000CEB8(v38, qword_1000992F8);
      v39 = sub_10006A6B0();
      v40 = sub_10006B380();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "No recent System Paper note - returning placeholder timeline", v41, 2u);
      }

      sub_100007DF0(&qword_1000993B8, &unk_100076A50);
      v42 = type metadata accessor for QuickNoteTimelineProvider.Entry();
      v43 = *(*(v42 - 8) + 72);
      v44 = (*(*(v42 - 8) + 80) + 32) & ~*(*(v42 - 8) + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10006F820;
      v46 = v45 + v44;
      (*(v53 + 56))(v12, 2, 2, v50);
      v47 = v54;
      sub_10006A550();
      (*(v55 + 32))(v46, v47, v56);
      sub_10004DAC4(v12, v46 + *(v42 + 20));
      sub_10006B190();
      sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry);
      sub_10006B220();
      v57(v21);
    }
  }

  else
  {
    if (qword_100096920 != -1)
    {
      swift_once();
    }

    v28 = sub_10006A6C0();
    sub_10000CEB8(v28, qword_1000992F8);
    v29 = sub_10006A6B0();
    v30 = sub_10006B3A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No modern note context - returning placeholder timeline", v31, 2u);
    }

    sub_100007DF0(&qword_1000993B8, &unk_100076A50);
    v32 = type metadata accessor for QuickNoteTimelineProvider.Entry();
    v33 = *(*(v32 - 8) + 72);
    v34 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10006F820;
    v36 = v35 + v34;
    (*(v53 + 56))(v12, 2, 2, v13);
    v37 = v54;
    sub_10006A550();
    (*(v55 + 32))(v36, v37, v56);
    sub_10004DAC4(v12, v36 + *(v32 + 20));
    sub_10006B190();
    sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry);
    sub_10006B220();
    v57(v21);
  }

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1000642BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v77 = a2;
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v74 = &v64 - v4;
  v5 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v69 = &v64 - v7;
  v8 = sub_10006B1A0();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  v10 = __chkstk_darwin(v8);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v64 - v12;
  v68 = sub_10006A560();
  v78 = *(v68 - 8);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v68);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v64 - v17;
  v18 = sub_10006A5F0();
  v19 = *(v18 - 8);
  v20 = v19;
  v65 = v18;
  v66 = v19;
  v21 = *(v19 + 64);
  __chkstk_darwin(v18);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10006A600();
  v24 = *(v70 - 1);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v70);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v64 - v29;
  v31 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v67 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v64 - v35;
  sub_10006A5E0();
  (*(v20 + 104))(v23, enum case for Calendar.Component.day(_:), v18);
  sub_10006A5E0();
  sub_10006A550();
  sub_10006A5C0();
  v37 = *(v78 + 8);
  v38 = v16;
  v39 = v68;
  v37(v38, v68);
  v40 = *(v24 + 8);
  v64 = v24 + 8;
  v41 = v70;
  v40(v28, v70);
  v42 = v79;
  sub_10006A5D0();
  v37(v42, v39);
  (*(v66 + 8))(v23, v65);
  v43 = v78;
  v44 = v30;
  v45 = v69;
  v46 = v67;
  v40(v44, v41);
  v47 = v39;
  v70 = v36;
  sub_100009728(v36, v46, &qword_100097C70, &qword_100076A60);
  v48 = (*(v43 + 48))(v46, 1, v39);
  v49 = 1;
  if (v48 != 1)
  {
    v50 = v79;
    (*(v43 + 32))(v79, v46, v39);
    sub_10006B180();
    v37(v50, v39);
    v49 = 0;
  }

  v52 = v75;
  v51 = v76;
  (*(v75 + 56))(v45, v49, 1, v76);
  v53 = *(v52 + 48);
  if (v53(v45, 1, v51) == 1)
  {
    v54 = v73;
    sub_10006B190();
    if (v53(v45, 1, v51) != 1)
    {
      sub_100009790(v45, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    v54 = v73;
    (*(v52 + 32))(v73, v45, v51);
  }

  sub_100007DF0(&qword_1000993B8, &unk_100076A50);
  v55 = type metadata accessor for QuickNoteTimelineProvider.Entry();
  v56 = *(*(v55 - 8) + 72);
  v57 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10006F820;
  v59 = v58 + v57;
  v60 = v74;
  sub_100064FFC(v71, v74, type metadata accessor for Note);
  v61 = type metadata accessor for Note();
  (*(*(v61 - 8) + 56))(v60, 0, 2, v61);
  v62 = v79;
  sub_10006A550();
  (*(v43 + 32))(v59, v62, v47);
  sub_10004DAC4(v60, v59 + *(v55 + 20));
  (*(v52 + 16))(v72, v54, v51);
  sub_100065380(&qword_1000993A8, 255, type metadata accessor for QuickNoteTimelineProvider.Entry);
  sub_10006B220();
  (*(v52 + 8))(v54, v51);
  return sub_100009790(v70, &qword_100097C70, &qword_100076A60);
}

uint64_t type metadata accessor for QuickNoteTimelineProvider.Entry()
{
  result = qword_100099420;
  if (!qword_100099420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100064B44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for QuickNoteTimelineProvider.Entry() + 20);
  v3 = type metadata accessor for Note();
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_100064BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10006B200();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = *v3;
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = v10;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_100063AA8(a1, sub_100064F84);
}

uint64_t sub_100064D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000EE3C;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100064E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000131E4;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100064EB8()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064F84(uint64_t a1)
{
  v3 = *(*(sub_10006B200() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_10006383C(a1, v4);
}

uint64_t sub_100064FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickNoteTimelineProvider.Entry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000650C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006514C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006525C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100065380(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000653C8()
{
  result = qword_100099490;
  if (!qword_100099490)
  {
    sub_100008154(&qword_100099458, &qword_100076AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099490);
  }

  return result;
}

uint64_t sub_10006542C()
{
  sub_100008154(&qword_100099478, &qword_100076AE8);
  sub_100008154(&qword_100099470, &qword_100076AE0);
  sub_100008154(&qword_100099468, &qword_100076AD8);
  sub_100008154(&qword_100099460, &qword_100076AD0);
  sub_100008154(&qword_100099458, &qword_100076AC8);
  sub_1000653C8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000655A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000656F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for Note()
{
  result = qword_1000994F8;
  if (!qword_1000994F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006587C()
{
  sub_100065A20(319, &unk_100099508, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100065A74(319, &qword_100096DC8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100065A20(319, &qword_100096DD0, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_100065A74(319, &qword_1000984B8, &type metadata for Image, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100065A74(319, &unk_100096DD8, &type metadata for Image, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100065A20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10006B420();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100065A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100065AC4()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_10006B280();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_10006B290();
  v6 = v5;

  v7 = v0[3];
  v25 = v0[2];
  v26 = v7;
  v27 = v4;
  v28 = v6;
  v8 = (v0 + *(type metadata accessor for Note() + 44));
  v9 = v8[1];
  v29 = *v8;
  v30 = v9;
  v10 = v0[9];
  v31 = v0[8];
  v32 = v10;

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
LABEL_2:
  if (v12 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = 16 * v12 + 40;
  while (1)
  {
    if (v12 == 4)
    {
      sub_100007DF0(&qword_100096E30, &qword_10006F800);
      swift_arrayDestroy();
      sub_100007DF0(&qword_100096E38, qword_10006F808);
      sub_10000DD38();
      v23 = sub_10006B240();

      return v23;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *&v24[v16];
    v16 += 16;
    if (v18)
    {
      v19 = *&v24[v17 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100065DB8(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        result = sub_100065DB8((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v21 + 1;
      v22 = &v13[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        v7 = sub_10006AED0();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

char *sub_100065DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007DF0(&qword_100099578, qword_100076B80);
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

uint64_t sub_100065EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006A520();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v77 = &v69 - v10;
  v11 = sub_100007DF0(&qword_100096E20, &qword_100076B70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v76 = &v69 - v13;
  v14 = sub_10006A560();
  v78 = *(v14 - 8);
  v15 = *(v78 + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v69 - v20;
  v22 = sub_100007DF0(&qword_100099568, &qword_100076B78);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_10006B540() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_10006B540() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_10006B540() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_10006B540() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_10006B540() & 1) == 0 || *(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_24;
  }

  v72 = v5;
  v73 = v11;
  v70 = v4;
  v71 = type metadata accessor for Note();
  v26 = *(v71 + 40);
  v27 = *(v22 + 48);
  sub_100009728(a1 + v26, v25, &qword_100097C70, &qword_100076A60);
  v74 = v27;
  sub_100009728(a2 + v26, &v25[v27], &qword_100097C70, &qword_100076A60);
  v28 = v78;
  v29 = *(v78 + 48);
  if (v29(v25, 1, v14) == 1)
  {
    v30 = v29(&v25[v74], 1, v14);
    v31 = v73;
    if (v30 == 1)
    {
      sub_100009790(v25, &qword_100097C70, &qword_100076A60);
      goto LABEL_27;
    }

LABEL_22:
    v33 = &qword_100099568;
    v34 = &qword_100076B78;
    v35 = v25;
LABEL_23:
    sub_100009790(v35, v33, v34);
    goto LABEL_24;
  }

  sub_100009728(v25, v21, &qword_100097C70, &qword_100076A60);
  v32 = v29(&v25[v74], 1, v14);
  v31 = v73;
  if (v32 == 1)
  {
    (*(v28 + 8))(v21, v14);
    goto LABEL_22;
  }

  (*(v28 + 32))(v17, &v25[v74], v14);
  sub_10006672C(&qword_100099570, &type metadata accessor for Date);
  v38 = sub_10006B250();
  v39 = *(v28 + 8);
  v39(v17, v14);
  v39(v21, v14);
  sub_100009790(v25, &qword_100097C70, &qword_100076A60);
  if ((v38 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v40 = v71;
  v41 = *(v71 + 44);
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    v46 = v72;
    v47 = v77;
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_10006B540() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v46 = v72;
    v47 = v77;
    if (v45)
    {
      goto LABEL_24;
    }
  }

  v48 = v40[12];
  v49 = *(v31 + 48);
  v50 = v76;
  sub_100009728(a1 + v48, v76, &qword_100096B30, &qword_10006F548);
  sub_100009728(a2 + v48, v50 + v49, &qword_100096B30, &qword_10006F548);
  v51 = *(v46 + 48);
  v52 = v70;
  if (v51(v50, 1, v70) != 1)
  {
    sub_100009728(v50, v47, &qword_100096B30, &qword_10006F548);
    if (v51(v50 + v49, 1, v52) != 1)
    {
      v53 = v50 + v49;
      v54 = v75;
      (*(v46 + 32))(v75, v53, v52);
      sub_10006672C(&qword_100096E28, &type metadata accessor for URL);
      v55 = sub_10006B250();
      v56 = *(v46 + 8);
      v56(v54, v52);
      v56(v47, v52);
      sub_100009790(v50, &qword_100096B30, &qword_10006F548);
      if ((v55 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }

    (*(v46 + 8))(v47, v52);
    goto LABEL_39;
  }

  if (v51(v50 + v49, 1, v52) != 1)
  {
LABEL_39:
    v33 = &qword_100096E20;
    v34 = &qword_100076B70;
    v35 = v50;
    goto LABEL_23;
  }

  sub_100009790(v50, &qword_100096B30, &qword_10006F548);
LABEL_41:
  v57 = v40[13];
  v58 = *(a2 + v57);
  if (*(a1 + v57))
  {
    if (!v58)
    {
      goto LABEL_24;
    }

    v59 = *(a2 + v57);

    v60 = sub_10006AED0();

    if ((v60 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v58)
  {
    goto LABEL_24;
  }

  if (sub_100065D00(*(a1 + v40[14]), *(a2 + v40[14])))
  {
    v61 = v40[15];
    v62 = *(a2 + v61);
    if (*(a1 + v61))
    {
      if (!v62)
      {
        goto LABEL_24;
      }

      v63 = *(a2 + v61);

      v64 = sub_10006AED0();

      if ((v64 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v62)
    {
      goto LABEL_24;
    }

    v65 = v40[16];
    v66 = *(a2 + v65);
    if (*(a1 + v65))
    {
      if (v66)
      {
        v67 = *(a2 + v65);

        v68 = sub_10006AED0();

        if (v68)
        {
          goto LABEL_57;
        }
      }
    }

    else if (!v66)
    {
LABEL_57:
      v36 = *(a1 + v40[17]) ^ *(a2 + v40[17]) ^ 1;
      return v36 & 1;
    }
  }

LABEL_24:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_10006672C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100066778()
{
  result = qword_100099580;
  if (!qword_100099580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099580);
  }

  return result;
}

unint64_t sub_1000667D0()
{
  result = qword_100099588;
  if (!qword_100099588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099588);
  }

  return result;
}

unint64_t sub_100066890()
{
  result = qword_100099590;
  if (!qword_100099590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099590);
  }

  return result;
}

uint64_t sub_1000668E4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_10006A4B0();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_1000995A8, &qword_100076CF8);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v29 = sub_100007DF0(&qword_1000995B0, &qword_100076D00);
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v29);
  v10 = &v24 - v9;
  v28 = sub_100007DF0(&qword_1000995B8, &qword_100076D08);
  v26 = *(v28 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v28);
  v13 = &v24 - v12;
  v34 = sub_10006B290();
  v35 = v14;

  v36._object = 0x8000000100079100;
  v36._countAndFlagsBits = 0xD000000000000011;
  sub_10006B2C0(v36);

  sub_10006B2A0();

  sub_100007DF0(&qword_1000995C0, &qword_100076D10);
  v15 = sub_100008154(&qword_1000995C8, &qword_100076D18);
  v16 = sub_1000095F4(&qword_1000995D0, &qword_1000995C8, &qword_100076D18);
  v34 = v15;
  v35 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10006B210();
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v17 = v32;
  sub_10000CEB8(v32, qword_1000A5768);
  v18 = sub_1000095F4(&qword_1000995D8, &qword_1000995A8, &qword_100076CF8);
  sub_10006AAD0();
  (*(v25 + 8))(v7, v4);
  v19 = v30;
  sub_10006A490();
  v34 = v4;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v29;
  sub_10006AAC0();
  (*(v31 + 8))(v19, v17);
  (*(v27 + 8))(v10, v21);
  v34 = v21;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_10006AAE0();
  return (*(v26 + 8))(v13, v22);
}

uint64_t sub_100066DE8()
{
  v0 = sub_100007DF0(&qword_1000995C8, &qword_100076D18);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_100007DF0(&qword_1000995E0, &unk_100076D20);
  sub_1000095F4(&qword_1000995E8, &qword_1000995E0, &unk_100076D20);
  sub_100066890();
  sub_10006B070();
  sub_10006AE30();
  sub_1000095F4(&qword_1000995D0, &qword_1000995C8, &qword_100076D18);
  sub_10006AA60();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100066FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006A4B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v7 = sub_10000CEB8(v2, qword_1000A5768);
  (*(v3 + 16))(v6, v7, v2);
  result = sub_10006ACA0();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_10006710C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006AEC0();
  *a1 = result;
  return result;
}

uint64_t sub_100067150()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A5768);
  sub_10000CEB8(v9, qword_1000A5768);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

uint64_t sub_100067330@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096928 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A4B0();
  v3 = sub_10000CEB8(v2, qword_1000A5768);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000673FC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 activateRemoteAlert];

  sub_10006A100();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100067498(uint64_t a1)
{
  v2 = sub_100066890();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100067554()
{
  sub_100008154(&qword_1000995B8, &qword_100076D08);
  sub_100008154(&qword_1000995B0, &qword_100076D00);
  sub_100008154(&qword_1000995A8, &qword_100076CF8);
  sub_1000095F4(&qword_1000995D8, &qword_1000995A8, &qword_100076CF8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10006766C()
{
  result = qword_100099610;
  if (!qword_100099610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099610);
  }

  return result;
}

unint64_t sub_1000676C4()
{
  result = qword_100099618;
  if (!qword_100099618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099618);
  }

  return result;
}

uint64_t sub_10006771C()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10006A4A0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A5B0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10006B270();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10006A450();
  sub_10000D8DC(v15, qword_1000A5780);
  sub_10000CEB8(v15, qword_1000A5780);
  sub_10006B260();
  sub_10006A5A0();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10006A4C0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10006A440();
}

uint64_t sub_1000679F0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = v35 - v3;
  v4 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v43 = v35 - v6;
  v7 = sub_10006A4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006A5B0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10006B270();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10006A4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v40 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v39 = v35 - v21;
  sub_10006B260();
  sub_10006A5A0();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v36 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v7);
  v24 = v43;
  sub_10006A4C0();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v27 = v42;
  sub_10006A2F0();
  v28 = sub_10006A300();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v29 = *(v17 + 16);
  v30 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  v37 = 8 * v29;
  v31 = swift_allocObject();
  v38 = v31;
  *(v31 + 16) = xmmword_1000758D0;
  v32 = v31 + v30;
  sub_10006B260();
  sub_10006A5A0();
  v33 = v36;
  v23(v11, v22, v36);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  v35[1] = v32;
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v33);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_1000682C4()
{
  v0 = qword_1000995F0;

  return v0;
}

unint64_t sub_100068300()
{
  result = qword_100099620;
  if (!qword_100099620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099620);
  }

  return result;
}

uint64_t sub_100068354(uint64_t a1)
{
  v2 = sub_10006766C();

  return EntityURLRepresentation.init(stringLiteral:)(0xD000000000000043, 0x80000001000791C0, a1, v2);
}

unint64_t sub_1000683BC()
{
  result = qword_100099628;
  if (!qword_100099628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099628);
  }

  return result;
}

unint64_t sub_100068414()
{
  result = qword_100099630;
  if (!qword_100099630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099630);
  }

  return result;
}

unint64_t sub_10006846C()
{
  result = qword_100099638;
  if (!qword_100099638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099638);
  }

  return result;
}

unint64_t sub_1000684C4()
{
  result = qword_100099640;
  if (!qword_100099640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099640);
  }

  return result;
}

uint64_t sub_100068518()
{
  sub_100069824();
  v1 = sub_10006A370();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100068588()
{
  result = qword_100099648;
  if (!qword_100099648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099648);
  }

  return result;
}

unint64_t sub_1000685E0()
{
  result = qword_100099650;
  if (!qword_100099650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099650);
  }

  return result;
}

unint64_t sub_100068638()
{
  result = qword_100099658;
  if (!qword_100099658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099658);
  }

  return result;
}

unint64_t sub_100068690()
{
  result = qword_100099660;
  if (!qword_100099660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099660);
  }

  return result;
}

uint64_t sub_1000686E4@<X0>(uint64_t *a1@<X8>)
{
  sub_100068914();
  result = sub_10006A110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100068760()
{
  result = qword_100099668;
  if (!qword_100099668)
  {
    sub_100008154(&qword_100099670, &qword_100076F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099668);
  }

  return result;
}

uint64_t sub_1000687C4(uint64_t a1)
{
  v2 = sub_10006766C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100068814()
{
  result = qword_100099678;
  if (!qword_100099678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099678);
  }

  return result;
}

uint64_t sub_10006886C(uint64_t a1)
{
  v2 = sub_100068690();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000688BC()
{
  result = qword_100099680;
  if (!qword_100099680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099680);
  }

  return result;
}

unint64_t sub_100068914()
{
  result = qword_100099688;
  if (!qword_100099688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099688);
  }

  return result;
}

uint64_t sub_10006899C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000676C4();
  *v5 = v2;
  v5[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100068A50()
{
  result = qword_100099690;
  if (!qword_100099690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099690);
  }

  return result;
}

unint64_t sub_100068AA8()
{
  result = qword_100099698;
  if (!qword_100099698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100099698);
  }

  return result;
}

uint64_t sub_100068AFC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000676C4();
  *v6 = v2;
  v6[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100068BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000676C4();
  *v5 = v2;
  v5[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100068C64()
{
  result = qword_1000996A0;
  if (!qword_1000996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996A0);
  }

  return result;
}

unint64_t sub_100068CBC()
{
  result = qword_1000996A8;
  if (!qword_1000996A8)
  {
    sub_100008154(&qword_1000996B0, qword_100077108);
    sub_100068638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996A8);
  }

  return result;
}

uint64_t sub_100068D40(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000684C4();
  *v6 = v2;
  v6[1] = sub_10000EE3C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100068DF8()
{
  result = qword_1000996B8;
  if (!qword_1000996B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996B8);
  }

  return result;
}

uint64_t sub_100068E4C()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A5798);
  sub_10000CEB8(v9, qword_1000A5798);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100069074(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_1000690E8()
{
  result = qword_1000996C0;
  if (!qword_1000996C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996C0);
  }

  return result;
}

uint64_t sub_10006913C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006977C();
  v5 = sub_100069824();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000691A8()
{
  v0 = qword_100099600;

  return v0;
}

unint64_t sub_1000691E4()
{
  result = qword_1000996C8;
  if (!qword_1000996C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996C8);
  }

  return result;
}

unint64_t sub_10006923C()
{
  result = qword_1000996D0;
  if (!qword_1000996D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996D0);
  }

  return result;
}

uint64_t sub_100069318(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10006977C();
  v7 = sub_1000697D0();
  v8 = sub_100069824();
  *v5 = v2;
  v5[1] = sub_100011848;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000693E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100069478();
  *a1 = result;
  return result;
}

uint64_t sub_10006940C(uint64_t a1)
{
  v2 = sub_1000690E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100069478()
{
  v21 = sub_10006A3B0();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_1000996D8, &qword_100077418);
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10006766C();
  return sub_10006A150();
}

unint64_t sub_10006977C()
{
  result = qword_1000996E0;
  if (!qword_1000996E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996E0);
  }

  return result;
}

unint64_t sub_1000697D0()
{
  result = qword_1000996E8;
  if (!qword_1000996E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996E8);
  }

  return result;
}

unint64_t sub_100069824()
{
  result = qword_1000996F0;
  if (!qword_1000996F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000996F0);
  }

  return result;
}

uint64_t sub_100069CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4();
  v9[0] = a5;
  v9[1] = a6;
  v10 = 2;
  LOBYTE(a6) = sub_10006A630();
  sub_10000804C(v9);
  return a6 & 1;
}

id sub_100069D7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100069E98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}

void sub_100069F10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ICSystemPaperControlCenterModule remoteAlertHandle:didInvalidateWithError:] - error: %@", &v2, 0xCu);
}

void sub_100069F88(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown object type — returning nil {objectID: %@}", buf, 0xCu);
}