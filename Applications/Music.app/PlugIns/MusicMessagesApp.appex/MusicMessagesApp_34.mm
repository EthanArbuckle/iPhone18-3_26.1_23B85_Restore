uint64_t sub_10035A700@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v104 = sub_100004CB8(&qword_100642080);
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v87 - v5;
  v6 = sub_100004CB8(&qword_100642088);
  __chkstk_darwin(v6 - 8);
  v109 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v87 - v9;
  v10 = sub_100004CB8(&qword_10063DF60);
  __chkstk_darwin(v10 - 8);
  v96 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v87 - v13;
  v15 = type metadata accessor for Collaboration.Management.View(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v18;
  v19 = (v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin(v20);
  v95 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v102 = sub_100004CB8(&qword_100642090);
  __chkstk_darwin(v102);
  v94 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = v87 - v27;
  v28 = sub_100004CB8(&qword_100642098);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v105 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = v87 - v31;
  v101 = type metadata accessor for Collaboration.Management.View;
  sub_10036D7CC(a1, v19, type metadata accessor for Collaboration.Management.View);
  v32 = *(v17 + 80);
  v33 = swift_allocObject();
  v100 = type metadata accessor for Collaboration.Management.View;
  sub_10036D838(v19, v33 + ((v32 + 16) & ~v32), type metadata accessor for Collaboration.Management.View);
  *&v24[*(v20 + 24)] = swift_getKeyPath();
  v91 = sub_100004CB8(&qword_100641B60);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v24 = 0;
  *(v24 + 1) = sub_100370B38;
  *(v24 + 2) = v33;
  v93 = v20;
  v35 = &v24[*(v20 + 28)];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = a1;
  v90 = *(a1 + 8);
  sub_100350E84(v14);
  v37 = sub_1004D809C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v89 = v37;
  v88 = v39;
  v87[1] = v38 + 48;
  v40 = (v39)(v14, 1) == 1;
  sub_10001074C(v14, &qword_10063DF60);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v112;
  sub_10036D838(v24, v112, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v44 = v102;
  v45 = (v43 + *(v102 + 36));
  *v45 = v41;
  v45[1] = sub_100370B8C;
  v45[2] = v42;
  v46 = v36 + *(v16 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);
  v114 = v47;
  v115 = v48;
  sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  v97 = v36;
  sub_10036D7CC(v36, v19, v101);
  v92 = v32;
  v49 = (v32 + 16) & ~v32;
  v50 = swift_allocObject();
  v101 = v19;
  sub_10036D838(v19, v50 + v49, v100);
  sub_100004CB8(&qword_1006420A0);
  sub_100370C04();
  v51 = v104;
  sub_10036FC5C(&qword_1006420C8, &qword_1006420A0, &unk_10052F070, sub_10036D4D4);
  v52 = v44;
  v53 = v112;
  sub_1004DB67C();

  v54 = 1;
  v55 = v103;

  sub_10001074C(v53, &qword_100642090);
  v56 = [objc_opt_self() currentTraitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 != 6)
  {
    v58 = v101;
    sub_10036D7CC(v97, v101, type metadata accessor for Collaboration.Management.View);
    v59 = swift_allocObject();
    sub_10036D838(v58, v59 + v49, type metadata accessor for Collaboration.Management.View);
    v60 = swift_getKeyPath();
    v61 = v93;
    v62 = v95;
    *&v95[*(v93 + 24)] = v60;
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    *v62 = 1;
    *(v62 + 8) = sub_100370CEC;
    *(v62 + 16) = v59;
    v64 = v62 + *(v61 + 28);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v96;
    sub_100350E84(v96);
    v66 = v88(v65, 1, v89) == 1;
    sub_10001074C(v65, &qword_10063DF60);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v94;
    sub_10036D838(v62, v94, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v70 = (v69 + *(v52 + 36));
    *v70 = v67;
    v70[1] = sub_1003722EC;
    v70[2] = v68;
    v71 = v69;
    v72 = v99;
    sub_100047F38(v71, v99, &qword_100642090);
    v73 = (v72 + *(v51 + 36));
    *v73 = sub_10035B7D4;
    v73[1] = 0;
    v74 = v72;
    v75 = v98;
    sub_100047F38(v74, v98, &qword_100642080);
    sub_100047F38(v75, v55, &qword_100642080);
    v54 = 0;
  }

  v76 = v55;
  (*(v108 + 56))(v55, v54, 1, v51);
  v78 = v105;
  v77 = v106;
  v79 = *(v106 + 16);
  v80 = v113;
  v81 = v107;
  v79(v105, v113, v107);
  v82 = v109;
  sub_1000108DC(v55, v109, &qword_100642088);
  v83 = v110;
  v79(v110, v78, v81);
  v84 = sub_100004CB8(&qword_1006420D0);
  sub_1000108DC(v82, &v83[*(v84 + 48)], &qword_100642088);
  sub_10001074C(v76, &qword_100642088);
  v85 = *(v77 + 8);
  v85(v80, v81);
  sub_10001074C(v82, &qword_100642088);
  return (v85)(v78, v81);
}

uint64_t sub_10035B1DC(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10035B384@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1004DD05C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_10063DF60);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1004D809C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100350E84(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_10001074C(v8, &qword_10063DF60);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v2;
    swift_getKeyPath();

    sub_1004D9B6C();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v3 + 8))(v5, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v14;
  return result;
}

uint64_t sub_10035B62C(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10035B7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100642020);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_100004CB8(&qword_100642028);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100004CB8(&qword_100642030);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v43 == 1)
  {
    *v13 = sub_1004DA7CC();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v14 = sub_100004CB8(&qword_100642070);
    sub_10035BD14(&v13[*(v14 + 44)]);
    sub_1000108DC(v13, v10, &qword_100642030);
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100642048, &qword_100642030);
    sub_100370914();
    v15 = v42;
    sub_1004DAADC();
    sub_10001074C(v13, &qword_100642030);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v17 = v42;
    sub_100350310();
    if (v18)
    {
      sub_1004DA86C();
      v19 = sub_1004DB32C();
      v34 = v20;
      v35 = v19;
      v33 = v21;
      v36 = v22;
      v32 = sub_1004DB7FC();
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = v41;
      sub_10036D7CC(v40, v41, type metadata accessor for Collaboration.Management.View);
      v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v27 = swift_allocObject();
      sub_10036D838(v25, v27 + v26, type metadata accessor for Collaboration.Management.View);
      v28 = &v7[*(v5 + 36)];
      sub_100004CB8(&qword_100642040);
      sub_1004DA06C();
      *v28 = v24;
      v29 = v34;
      *v7 = v35;
      *(v7 + 1) = v29;
      v7[16] = v33 & 1;
      *(v7 + 3) = v36;
      *(v7 + 4) = KeyPath;
      *(v7 + 5) = v32;
      sub_1000108DC(v7, v10, &qword_100642020);
      swift_storeEnumTagMultiPayload();
      sub_100042B08(&qword_100642048, &qword_100642030);
      sub_100370914();
      sub_1004DAADC();
      sub_10001074C(v7, &qword_100642020);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  v30 = sub_100004CB8(&qword_100642038);
  return (*(*(v30 - 8) + 56))(v17, v16, 1, v30);
}

uint64_t sub_10035BD14@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = sub_1004D83FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_100004CB8(&qword_100641B18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1004D9ECC();
  sub_1004DD37C();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v16 = qword_1006734A0;
  sub_1004D838C();
  v17 = sub_1004DD4AC();
  v19 = v18;
  (*(v3 + 8))(v8, v2);
  v36 = v17;
  v37 = v19;
  sub_1002E6780();
  v20 = sub_1004DB34C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v10 + 16);
  v27(v12, v15, v9);
  v34 = v15;
  v28 = v12;
  v29 = v35;
  v27(v35, v28, v9);
  v30 = &v29[*(sub_100004CB8(&qword_100642078) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v30[16] = v24 & 1;
  *(v30 + 3) = v26;
  sub_100051E00(v20, v22, v24 & 1);
  v31 = *(v10 + 8);

  v31(v34, v9);
  sub_100051E10(v20, v22, v24 & 1);

  return (v31)(v28, v9);
}

uint64_t sub_10035C0F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 1;

  sub_1004D9B7C();
  v7 = sub_1004DDA8C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_100302950(0, 0, v5, &unk_10052EFB8, v8);

  return sub_1004DA05C();
}

uint64_t sub_10035C260@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004CB8(&qword_10063DF60);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1004D809C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100350E84(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_10001074C(v4, &qword_10063DF60);
    v10 = 0;
    v11 = 0;
LABEL_6:
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = sub_1004D7FCC();
  v14 = QRCode.init(data:errorCorrectionLevel:)(v12, v13, 76, &v28);
  v15 = *(&v28 + 1);
  v16 = v29;
  v17 = v30;
  result = (*(v6 + 8))(v8, v5, v14);
  v11 = v30;
  if (!v30)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v31;
  v10 = v29;
  v27 = v28;
  sub_100010530(v15, v16);
  v19 = v17;
  v20 = sub_1004DA34C();
  v21 = sub_1004DAF2C();
  v22 = sub_1004DBD1C();
  v24 = v23;
  result = sub_10001074C(&v28, &qword_100641F80);
  v25 = v27;
  v26 = v21;
LABEL_7:
  *a1 = v25;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v26;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  return result;
}

uint64_t sub_10035C4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004CB8(&unk_100641880);
  __chkstk_darwin(v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = sub_1004DCDAC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3, a1, v12);
  v14 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v16 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v16[9]) = KeyPath;
  sub_100004CB8(&unk_10063DBE0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[5]) = v14;
  v17 = a3 + v16[6];
  v21[15] = 0;

  sub_1004DB9DC();
  v18 = v22;
  *v17 = v21[16];
  *(v17 + 8) = v18;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1000108DC(v11, v8, &unk_100641880);
  sub_1004DB9DC();
  sub_10001074C(v11, &unk_100641880);
  v19 = v16[8];
  *(a3 + v19) = swift_getKeyPath();
  sub_100004CB8(&unk_100641090);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10035C6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = sub_1004DAB5C();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Collaboration.Management.View(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_100004CB8(&qword_100641F20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_100004CB8(&qword_100641F18);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_10036D7CC(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_10036D838(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Collaboration.Management.View);
  sub_100004CB8(&qword_100641F38);
  sub_100370114();
  sub_1004DBA3C();
  sub_1004DAB4C();
  v21 = sub_100042B08(&qword_100641F28, &qword_100641F20);
  v22 = sub_10036BAE8(&qword_100641F30, &type metadata accessor for BorderlessButtonStyle);
  v23 = v32;
  sub_1004DB3DC();
  v24 = v23;
  (*(v33 + 8))(v6, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v31;
  v26 = v31 + *(v8 + 56);
  v27 = *v26;
  v28 = *(v26 + 8);
  v42 = v27;
  v43 = v28;
  sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  v37 = v25;
  v38 = v11;
  v39 = v24;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_1004DB63C();

  return (*(v35 + 8))(v18, v29);
}

uint64_t sub_10035CB94(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_10035CD3C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  sub_1004DD37C();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v10 = qword_1006734A0;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *&v27[0] = v11;
  *(&v27[0] + 1) = v13;
  sub_1002E6780();
  v14 = sub_1004DB34C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1004DBD1C();
  sub_1004DA45C();
  v21 = v18 & 1;
  v28 = v18 & 1;
  v22 = sub_1004DB82C();
  KeyPath = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  v24 = v27[5];
  *(a1 + 96) = v27[4];
  *(a1 + 112) = v24;
  *(a1 + 128) = v27[6];
  v25 = v27[1];
  *(a1 + 32) = v27[0];
  *(a1 + 48) = v25;
  result = v27[3];
  *(a1 + 64) = v27[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v22;
  return result;
}

uint64_t sub_10035CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DB7DC();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_1004D83FC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004DD3EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_1004DD37C();
  v16 = *(v10 + 16);
  v48[4] = v10 + 16;
  v49 = v16;
  v16(v12, v15, v9);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v17 = qword_1006734A0;
  v18 = qword_1006734A0;
  v63 = v17;
  v19 = v18;
  sub_1004D838C();
  v20 = v19;
  v21 = sub_1004DD4AC();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v15, v9);
  v48[1] = v10 + 8;
  v64 = v21;
  v65 = v23;
  v48[0] = sub_1002E6780();
  v25 = sub_1004DB34C();
  v54 = v26;
  v55 = v25;
  v52 = v27;
  v53 = v28;
  sub_1004DD37C();
  v29 = v49;
  v49(v12, v15, v9);
  sub_1004D838C();
  v30 = sub_1004DD4AC();
  v32 = v31;
  v24(v15, v9);
  v64 = v30;
  v65 = v32;
  v51 = sub_1004DB34C();
  v48[3] = v33;
  v50 = v34;
  v48[2] = v35 & 1;
  sub_1004DD37C();
  v29(v12, v15, v9);
  sub_1004D838C();
  v36 = sub_1004DD4AC();
  v38 = v37;
  v24(v15, v9);
  v64 = v36;
  v65 = v38;
  v39 = sub_1004DB34C();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_10036D7CC(v58, v59, type metadata accessor for Collaboration.Management.View);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_10036D838(v44, v46 + v45, type metadata accessor for Collaboration.Management.View);
  sub_1004DB7AC();
  sub_100051E10(v39, v41, v43 & 1);

  sub_1004DB7BC();
  return sub_1004DB79C();
}

uint64_t sub_10035D59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004D9FEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *(a1 + 8);
  v13 = sub_1004DDA8C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_100302950(0, 0, v11, a3, v14);

  type metadata accessor for Collaboration.Management.View(0);
  sub_10032A8FC(v8);
  sub_1004D9FDC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10035D760(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  sub_10036D7CC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10036D838(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for Collaboration.Management.View);
  sub_100004CB8(&qword_100640FF0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100042B08(&qword_100641F58, &qword_100640FF0);
  sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_10036BAE8(&qword_100641F60, &type metadata accessor for Playlist.Collaborator);
  return sub_1004DBC2C();
}

uint64_t sub_10035D9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_1004DD3CC();
  __chkstk_darwin(v10 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v11 = *(v21 + 16);

  sub_1004DD3BC();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1004DD3AC(v23);
  v21 = v11;
  sub_1004DD38C();
  v24._object = 0x80000001004F6920;
  v24._countAndFlagsBits = 0xD000000000000010;
  sub_1004DD3AC(v24);
  sub_1004DD3DC();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v12 = qword_1006734A0;
  sub_1004D838C();
  v13 = sub_1004DD4AC();
  v15 = v14;
  (*(v4 + 8))(v9, v3);
  v21 = v13;
  v22 = v15;
  sub_1002E6780();
  result = sub_1004DB34C();
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_10035DCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Collaboration.Management.View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = sub_1004DA7CC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v13 = *(sub_100004CB8(&qword_100641F68) + 44);
  sub_10036D7CC(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  sub_1004DDA4C();
  v7 = sub_1004DDA3C();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10036D838(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for Collaboration.Management.View);
  sub_10036D7CC(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v10 = sub_1004DDA3C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10036D838(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for Collaboration.Management.View);
  sub_1004DBB8C();
  return sub_1004DBB0C();
}

uint64_t sub_10035DF10@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_10035DF98(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = (v9 & 1) == 0;
  v15[15] = v11;

  sub_1004D9B7C();
  v12 = sub_1004DDA8C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;

  sub_100302C50(0, 0, v8, &unk_10052EEB8, v13);
}

uint64_t sub_10035E108@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004DD37C();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v10 = qword_1006734A0;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002E6780();
  result = sub_1004DB34C();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

__n128 sub_10035E318@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if ((v43 & 1) == 0)
  {
    sub_1004DD37C();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v23 = qword_1006734A0;
    sub_1004D838C();
    v24 = sub_1004DD4AC();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    sub_1002E6780();
    v16 = sub_1004DB34C();
    v18 = v16;
    v19 = v17;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v27 & 1;
    v41.n128_u64[0] = v27 & 1;
    v41.n128_u64[1] = v28;
    LOBYTE(v42) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10 = *(v43 + 16);

  v11 = (v4 + 16);
  if (v10)
  {
    sub_1004DD37C();
    (*v11)(v6, v9, v3);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v12 = qword_1006734A0;
    sub_1004D838C();
    v13 = sub_1004DD4AC();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    *&v43 = v13;
    *(&v43 + 1) = v15;
    sub_1002E6780();
    v16 = sub_1004DB34C();
    v18 = v16;
    v19 = v17;
    v21 = v20 & 1;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v41.n128_u64[0] = v20 & 1;
    v41.n128_u64[1] = v22;
    LOBYTE(v42) = 1;
LABEL_9:
    sub_100051E00(v16, v17, v21);

    sub_1004DAADC();
    v40 = v43;
    v41 = v44;
    v42 = v45;
    sub_100004CB8(&qword_100640080);
    sub_100329360();
    sub_1004DAADC();
    sub_100051E10(v18, v19, v21);

    goto LABEL_10;
  }

  sub_1004DD37C();
  (*v11)(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v32 = qword_1006734A0;
  sub_1004D838C();
  v33 = sub_1004DD4AC();
  v35 = v34;
  (*(v4 + 8))(v9, v3);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  sub_1002E6780();
  *&v40 = sub_1004DB34C();
  *(&v40 + 1) = v36;
  v41.n128_u64[0] = v37 & 1;
  v41.n128_u64[1] = v38;
  v42 = 256;
  sub_100004CB8(&qword_100640080);
  sub_100329360();
  sub_1004DAADC();
LABEL_10:
  result = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v43;
  *(a1 + 16) = result;
  *(a1 + 32) = v30;
  *(a1 + 33) = v31;
  return result;
}

uint64_t sub_10035E8DC(uint64_t a1)
{
  v2 = sub_1004DAB2C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100004CB8(&qword_100641100);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1004DAB1C();
  v9 = a1;
  sub_100004CB8(&qword_100641DB8);
  sub_100042B08(&qword_100641DC0, &qword_100641DB8);
  sub_1004D9E2C();
  sub_100042B08(&qword_100641108, &qword_100641100);
  sub_1004DABBC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10035EAC8(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1004D9C7C();
  __chkstk_darwin(v5 - 8);
  sub_1004D9C5C();
  sub_10036D7CC(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_10036D838(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Collaboration.Management.View);
  return sub_1004DBA4C();
}

uint64_t sub_10035EC44(uint64_t a1)
{
  v16 = sub_1004DA74C();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&unk_10063DBD0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1004D9FEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  sub_1000108DC(a1 + *(v12 + 20), v7, &unk_10063DBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1004D9FDC();
  return (*(v9 + 8))(v11, v8);
}

void sub_10035EECC(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1004D9FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_10032A8FC(v6);
    sub_1004D9FDC();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10035EFC0()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_100640F30 = v1 == 6;
}

uint64_t sub_10035F058()
{
  if (qword_10063D978 != -1)
  {
    swift_once();
  }

  if (byte_100640F30 == 1)
  {
    result = sub_1004DAFEC();
    v1 = result;
  }

  else
  {
    sub_1004DB09C();
    v1 = sub_1004DB01C();
  }

  qword_100640F40 = v1;
  return result;
}

uint64_t sub_10035F0E0()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_100640F30)
  {
    v0 = 68.0;
  }

  qword_100640F48 = *&v0;
  return result;
}

uint64_t sub_10035F1EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_10063D978 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_100640F30 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_10035F27C()
{
  if (qword_10063D978 != -1)
  {
    swift_once();
  }

  if (byte_100640F30 == 1)
  {
    result = sub_1004DB06C();
  }

  else
  {
    result = sub_1004DB05C();
  }

  qword_100640F68 = v1;
  return result;
}

uint64_t sub_10035F2E4()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_100640F30)
  {
    v0 = 0.0;
  }

  qword_100640F70 = *&v0;
  return result;
}

uint64_t sub_10035F34C()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_100640F30)
  {
    v0 = 0.0;
  }

  qword_100640F78 = *&v0;
  return result;
}

uint64_t sub_10035F3B4()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_100640F30)
  {
    v0 = 44.0;
  }

  qword_100640F80 = *&v0;
  return result;
}

uint64_t sub_10035F424()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_100640F30)
  {
    v0 = 169.0;
  }

  qword_100640F88 = *&v0;
  return result;
}

uint64_t sub_10035F498()
{
  if (qword_10063D978 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_100640F30)
  {
    v0 = 48.0;
  }

  qword_100640F90 = *&v0;
  return result;
}

uint64_t sub_10035F508()
{
  if (qword_10063D978 != -1)
  {
    swift_once();
  }

  if (byte_100640F30 == 1)
  {
    result = sub_1004DB7FC();
  }

  else
  {
    if (qword_10063D810 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = sub_1004DB8CC();
  }

  qword_100640F98 = result;
  return result;
}

uint64_t sub_10035F5B0()
{
  v0 = sub_1004DA25C();
  sub_100035718(v0, qword_100640FA0);
  v1 = sub_100035430(v0, qword_100640FA0);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10035F638()
{
  v0 = sub_1004DA25C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&qword_100641BC8);
  sub_100035718(v4, qword_100640FB8);
  v5 = sub_100035430(v4, qword_100640FB8);
  if (qword_10063D9E8 != -1)
  {
    swift_once();
  }

  v6 = sub_100035430(v0, qword_100640FA0);
  (*(v1 + 16))(v3, v6, v0);
  sub_10036BAE8(&unk_100641C10, &type metadata accessor for DynamicTypeSize);
  result = sub_1004DD35C();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10035F808@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_1004DA8AC();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DAD1C();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&qword_100641998);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v30 = sub_100004CB8(&qword_1006419A0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v32 = sub_100004CB8(&qword_1006419A8);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - v10;
  v34 = sub_100004CB8(&qword_1006419B0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v29 - v12;
  *v7 = sub_1004DA7CC();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_100004CB8(&qword_1006419B8);
  sub_10035FE28(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_100004CB8(&qword_1006419C0);
  v15 = sub_10036D5FC();
  v16 = sub_10036FC5C(&unk_1006419F0, &qword_1006419C0, &unk_10052E7A8, sub_10036D6E0);
  sub_1004DB43C();
  sub_10001074C(v7, &qword_100641998);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_100004CB8(&qword_100640118);
  sub_1004DBA0C();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1004DB63C();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  sub_1004DAD0C();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  sub_1004DB5BC();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  sub_1004DA89C();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_1004DB5DC();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_10035FE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = v4;
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100004CB8(&qword_100641A40);
  __chkstk_darwin(v129);
  v132 = &v124 - v5;
  v131 = sub_100004CB8(&qword_100641A48);
  __chkstk_darwin(v131);
  v128 = &v124 - v6;
  v7 = sub_100004CB8(&qword_100641A50);
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v130 = &v124 - v8;
  v9 = sub_1004DD05C();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100641A58);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v124 - v14;
  v15 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v15 - 8);
  v143 = &v124 - v16;
  v17 = sub_1004DCC0C();
  v144 = *(v17 - 8);
  v145 = v17;
  __chkstk_darwin(v17);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v19 - 8);
  v138 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v124 - v22;
  v23 = sub_1004D934C();
  v146 = *(v23 - 8);
  v147 = v23;
  __chkstk_darwin(v23);
  v149 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v139 = &v124 - v26;
  __chkstk_darwin(v27);
  v141 = &v124 - v28;
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v152 = sub_1004D92BC();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v165 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ArtworkImage.Placeholder(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  __chkstk_darwin(v32 - 8);
  v134 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v36 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v36 - 8);
  v136 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v124 - v39;
  __chkstk_darwin(v40);
  v164 = &v124 - v41;
  v167 = sub_100004CB8(&qword_100641A68);
  v153 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = &v124 - v42;
  v43 = sub_1004DA25C();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v124 - v48;
  v50 = sub_100004CB8(&unk_100641A70);
  __chkstk_darwin(v50 - 8);
  v158 = &v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v124 - v53;
  v157 = v3;
  v55 = a1;
  sub_10032A4A4(v49);
  if (qword_10063D9E8 != -1)
  {
    swift_once();
  }

  v56 = sub_100035430(v43, qword_100640FA0);
  (*(v44 + 16))(v46, v56, v43);
  sub_10036BAE8(&qword_10063E998, &type metadata accessor for DynamicTypeSize);
  v57 = sub_1004DD32C();
  v58 = *(v44 + 8);
  v58(v46, v43);
  v58(v49, v43);
  v59 = 1;
  v60 = 1;
  v61 = v55;
  v62 = v54;
  v63 = v167;
  v166 = v54;
  if ((v57 & 1) == 0)
  {
    v64 = v164;
    sub_100361504(v164);
    v65 = sub_100004CB8(&unk_100641A80);
    v66 = v148;
    (*(*(v65 - 8) + 56))(v148, 8, 11, v65);
    v190 = 1;
    v188 = 1;
    v186 = 1;
    (*(v150 + 104))(v165, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v152);
    v67 = v134;
    sub_10036D7CC(v66, v134, type metadata accessor for ArtworkImage.Placeholder);
    v68 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v69 = swift_allocObject();
    sub_10036D838(v67, v69 + v68, type metadata accessor for ArtworkImage.Placeholder);
    v134 = v69;
    v70 = v69 + ((v33 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v70 = 0;
    *(v70 + 8) = v190;
    *(v70 + 9) = *v189;
    *(v70 + 12) = *&v189[3];
    *(v70 + 16) = 0;
    *(v70 + 24) = v188;
    *(v70 + 25) = *v187;
    *(v70 + 28) = *&v187[3];
    *(v70 + 32) = 0;
    *(v70 + 40) = v186;
    *(v70 + 41) = 2;
    v71 = v135;
    sub_1000108DC(v64, v135, &qword_100642C70);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v71, 1, v72) == 1)
    {
      sub_10001074C(v71, &qword_100642C70);
      v74 = sub_1004DCC9C();
      v75 = v137;
      (*(*(v74 - 8) + 56))(v137, 1, 1, v74);
    }

    else
    {
      v76 = sub_1004DCC9C();
      v77 = *(v76 - 8);
      v75 = v137;
      (*(v77 + 16))(v137, v71, v76);
      sub_10036DD1C(v71, type metadata accessor for ArtworkImage.ViewModel);
      (*(v77 + 56))(v75, 0, 1, v76);
    }

    sub_1000108DC(v75, v138, &unk_100642930);
    sub_1004D933C();
    sub_10001074C(v75, &unk_100642930);
    sub_1004D92EC();
    v78 = v136;
    sub_1000108DC(v164, v136, &qword_100642C70);
    v79 = v73(v78, 1, v72);
    v124 = v61;
    if (v79 == 1)
    {
      sub_10001074C(v78, &qword_100642C70);
      v80 = v143;
      v81 = v144;
      v82 = v145;
      (*(v144 + 56))(v143, 1, 1, v145);
      v83 = v142;
      v59 = 1;
    }

    else
    {
      v80 = v143;
      sub_1000108DC(v78 + *(v72 + 20), v143, &qword_100641A60);
      sub_10036DD1C(v78, type metadata accessor for ArtworkImage.ViewModel);
      v81 = v144;
      v82 = v145;
      v84 = (*(v144 + 48))(v80, 1, v145);
      v83 = v142;
      v59 = 1;
      if (v84 != 1)
      {
        (*(v81 + 32))(v142, v80, v82);
LABEL_15:
        v86 = v139;
        v87 = v149;
        sub_1004D92CC();
        (*(v81 + 8))(v83, v82);
        v88 = v147;
        v89 = *(v146 + 8);
        v89(v87, v147);
        v90 = v141;
        sub_1004D92FC();
        v89(v86, v88);
        sub_100004CB8(&qword_1006406E8);
        sub_100338428();
        v91 = v140;
        sub_1004D92DC();

        v89(v90, v88);
        v89(v151, v88);
        (*(v150 + 8))(v165, v152);
        sub_10036DD1C(v148, type metadata accessor for ArtworkImage.Placeholder);
        sub_10001074C(v164, &qword_100642C70);
        v92 = v91 + *(sub_100004CB8(&qword_100641AE0) + 36);
        *v92 = 0;
        *(v92 + 8) = 0;
        *(v92 + 16) = 2;
        if (qword_10063D9D8 != -1)
        {
          swift_once();
        }

        sub_1004DBD1C();
        sub_1004D9F5C();
        v93 = (v91 + *(sub_100004CB8(&qword_100641AE8) + 36));
        v94 = v181;
        *v93 = v180;
        v93[1] = v94;
        v93[2] = v182;
        v62 = v166;
        v63 = v167;
        v95 = v91 + *(v167 + 36);
        *v95 = 0;
        *(v95 + 8) = 257;
        sub_100047F38(v91, v62, &qword_100641A68);
        v60 = 0;
        v61 = v124;
        goto LABEL_18;
      }
    }

    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v85 = sub_100035430(v82, static Artwork.CropStyle.fallback);
    (*(v81 + 16))(v83, v85, v82);
    if ((*(v81 + 48))(v80, 1, v82) != 1)
    {
      sub_10001074C(v80, &qword_100641A60);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v153 + 56))(v62, v60, 1, v63);
  v167 = sub_1004DA91C();
  LOBYTE(v170[0]) = 1;
  sub_1003619A0(v61, v178);
  *&v177[23] = v178[1];
  *&v177[39] = v178[2];
  *&v177[55] = v178[3];
  v177[71] = v179;
  *&v177[7] = v178[0];
  LODWORD(v165) = LOBYTE(v170[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v154;
  sub_1004D9B6C();

  v97 = sub_1004DCEFC();
  (*(v155 + 8))(v96, v156);
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = sub_1004DCD9C();
    if (v98 != 2 && (v98 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v99 = sub_1003C9D34(v61, v170[0]);

      if (v99)
      {
        v100 = v128;
        sub_1004D9ECC();
        if (qword_10063D9C8 != -1)
        {
          swift_once();
        }

        sub_1004DBD1C();
        sub_1004D9F5C();
        v101 = (v100 + *(v131 + 36));
        v102 = v184;
        *v101 = v183;
        v101[1] = v102;
        v101[2] = v185;
        sub_1000108DC(v100, v132, &qword_100641A48);
        swift_storeEnumTagMultiPayload();
        sub_100004CB8(&qword_100641B00);
        sub_10036DC64();
        sub_100042B08(&unk_100641B20, &qword_100641B00);
        v103 = v130;
        sub_1004DAADC();
        sub_10001074C(v100, &qword_100641A48);
      }

      else
      {
        v104 = v127;
        sub_10036D7CC(v61, v127, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v105 = (*(v125 + 80) + 16) & ~*(v125 + 80);
        v106 = swift_allocObject();
        sub_10036D838(v104, v106 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_10036D7CC(v61, v104, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v107 = swift_allocObject();
        sub_10036D838(v104, v107 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v108 = v132;
        *v132 = 1;
        *(v108 + 1) = sub_10036DBD0;
        *(v108 + 2) = v106;
        v108[24] = 0;
        *(v108 + 4) = sub_10036DBE0;
        *(v108 + 5) = v107;

        swift_storeEnumTagMultiPayload();
        sub_100004CB8(&qword_100641B00);
        sub_10036DC64();
        sub_100042B08(&unk_100641B20, &qword_100641B00);
        v103 = v130;
        sub_1004DAADC();
      }

      sub_100047F38(v103, v163, &qword_100641A50);
      v59 = 0;
    }
  }

  v109 = v163;
  (*(v159 + 56))(v163, v59, 1, v160);
  v110 = v62;
  v111 = v158;
  sub_1000108DC(v110, v158, &unk_100641A70);
  v112 = v161;
  sub_1000108DC(v109, v161, &qword_100641A58);
  v113 = v162;
  sub_1000108DC(v111, v162, &unk_100641A70);
  v114 = sub_100004CB8(&qword_100641AF0);
  v115 = (v113 + v114[12]);
  v116 = v167;
  v168[0] = v167;
  v168[1] = 0;
  v117 = v165;
  LOBYTE(v169[0]) = v165;
  *(v169 + 1) = *v177;
  *(&v169[1] + 1) = *&v177[16];
  *(&v169[2] + 1) = *&v177[32];
  *(&v169[3] + 1) = *&v177[48];
  *(&v169[4] + 1) = *&v177[64];
  v118 = v169[0];
  *v115 = v167;
  v115[1] = v118;
  v119 = v169[1];
  v120 = v169[2];
  v121 = v169[3];
  *(v115 + 73) = *(&v169[3] + 9);
  v115[3] = v120;
  v115[4] = v121;
  v115[2] = v119;
  v122 = v113 + v114[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_1000108DC(v112, v113 + v114[20], &qword_100641A58);
  sub_1000108DC(v168, v170, &qword_100641AF8);
  sub_10001074C(v109, &qword_100641A58);
  sub_10001074C(v166, &unk_100641A70);
  sub_10001074C(v112, &qword_100641A58);
  v170[0] = v116;
  v170[1] = 0;
  v171 = v117;
  v173 = *&v177[16];
  v174 = *&v177[32];
  v175 = *&v177[48];
  v176 = *&v177[64];
  v172 = *v177;
  sub_10001074C(v170, &qword_100641AF8);
  return sub_10001074C(v111, &unk_100641A70);
}

uint64_t sub_100361504@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1004DCC9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v28 - v9;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v2 + 56);
  v17(&v28 - v15, 1, 1, v1, v14);
  sub_1004DCD8C();
  v33 = *(v2 + 48);
  if (v33(v12, 1, v1) == 1)
  {
    v29 = v17;
    sub_10001074C(v12, &unk_100642930);
    sub_100006F10(0, &qword_10063E4A8);
    v18 = sub_1004DCD4C();
    v30 = v7;
    v20 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v18, v19, 0, 1);
    v7 = v30;

    if (v20)
    {
      v21 = v31;
      sub_1004DCB5C();
      sub_10001074C(v16, &unk_100642930);
      (v29)(v21, 0, 1, v1);
      sub_100047F38(v21, v16, &unk_100642930);
    }
  }

  else
  {
    sub_10001074C(v16, &unk_100642930);
    (*(v2 + 32))(v16, v12, v1);
    (v17)(v16, 0, 1, v1);
  }

  sub_1000108DC(v16, v7, &unk_100642930);
  if (v33(v7, 1, v1) == 1)
  {
    sub_10001074C(v16, &unk_100642930);
    sub_10001074C(v7, &unk_100642930);
    v22 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v24 = v32;
    (*(v2 + 16))(v32, v4, v1);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    v26 = *(v25 + 20);
    sub_1004DCB8C();
    (*(v2 + 8))(v4, v1);
    sub_10001074C(v16, &unk_100642930);
    v27 = sub_1004DCC0C();
    (*(*(v27 - 8) + 56))(v24 + v26, 0, 1, v27);
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

uint64_t sub_1003619A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = sub_1004DD3CC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v98 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = v93 - v10;
  v11 = sub_1004DD05C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v93[1] = v15;
  sub_1004D9B6C();

  v16 = sub_1004DCEFC();
  (*(v12 + 8))(v14, v11);
  v17 = sub_100362340(v16 & 1);
  if (v18)
  {
    v94 = v7;
    v95 = v6;
    v106 = v17;
    v107 = v18;
    sub_1002E6780();
    v19 = sub_1004DB34C();
    v21 = v20;
    v23 = v22;
    LODWORD(v106) = sub_1004DABEC();
    v24 = sub_1004DB24C();
    v26 = v25;
    v28 = v27;
    sub_100051E10(v19, v21, v23 & 1);

    if (qword_10063D998 != -1)
    {
      swift_once();
    }

    v29 = sub_1004DB2AC();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_100051E10(v24, v26, v28 & 1);

    v36 = v31 & 1;
    sub_100051E00(v29, v35, v31 & 1);
    v99 = v33;

    v6 = v95;
    v7 = v94;
  }

  else
  {
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v99 = 0;
  }

  v37 = sub_1004DCD9C();
  if (v37 == 2 || (v37 & 1) == 0 || (sub_10034F1E4() & 1) != 0)
  {
    v38 = sub_1004DCD7C();
    if (!v39)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = -1;
      goto LABEL_17;
    }

    v40 = v38;
    v41 = v39;
    v95 = v35;
    sub_1004DD3BC();
    v111._countAndFlagsBits = 64;
    v111._object = 0xE100000000000000;
    sub_1004DD3AC(v111);
    v112._countAndFlagsBits = v40;
    v112._object = v41;
    sub_1004DD39C(v112);

    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_1004DD3AC(v113);
    v42 = v97;
    sub_1004DD3DC();
    (*(v7 + 16))(v96, v42, v6);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v94 = v29;
    v43 = qword_1006734A0;
    sub_1004D838C();
    v44 = sub_1004DD4AC();
    v46 = v45;
    (*(v7 + 8))(v42, v6);
    v106 = v44;
    v107 = v46;
    sub_1002E6780();
    v47 = sub_1004DB34C();
    v49 = v48;
    v51 = v50;
    LODWORD(v106) = sub_1004DAC1C();
    v52 = sub_1004DB24C();
    v54 = v53;
    v56 = v55;
    sub_100051E10(v47, v49, v51 & 1);

    if (qword_10063D9A0 != -1)
    {
      swift_once();
    }

    v57 = sub_1004DB2AC();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_100051E10(v52, v54, v56 & 1);

    v101 = v57;
    v102 = v59;
    v103 = v61 & 1;
    v104 = v63;
    v105 = 1;
    sub_1004DAADC();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10036DDD8(v106, v107, v108);
    v29 = v94;
  }

  else
  {
    v95 = v35;
    v72 = v97;
    sub_1004DD37C();
    (*(v7 + 16))(v96, v72, v6);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v73 = qword_1006734A0;
    sub_1004D838C();
    v74 = sub_1004DD4AC();
    v76 = v75;
    (*(v7 + 8))(v72, v6);
    v106 = v74;
    v107 = v76;
    sub_1002E6780();
    v77 = sub_1004DB34C();
    v79 = v78;
    v81 = v80;
    LODWORD(v106) = sub_1004DAC1C();
    v82 = sub_1004DB24C();
    v84 = v83;
    v86 = v85;
    sub_100051E10(v77, v79, v81 & 1);

    if (qword_10063D9A0 != -1)
    {
      swift_once();
    }

    v87 = sub_1004DB2AC();
    v89 = v88;
    v91 = v90;
    v98 = v92;

    sub_100051E10(v82, v84, v86 & 1);

    v101 = v87;
    v102 = v89;
    v103 = v91 & 1;
    v104 = v98;
    v105 = 0;
    sub_1004DAADC();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10036DDD8(v106, v107, v108);
  }

  v35 = v95;
LABEL_17:
  v69 = v99;
  sub_10036DD7C(v29, v35, v36, v99);
  sub_10036DDC0(v64, v65, v66, v67, v68);
  sub_10036DE14(v29, v35, v36, v69);
  sub_10036DE58(v64, v65, v66, v67, v68);
  v70 = v100;
  *v100 = v29;
  v70[1] = v35;
  v70[2] = v36;
  v70[3] = v69;
  v70[4] = v64;
  v70[5] = v65;
  v70[6] = v66;
  v70[7] = v67;
  *(v70 + 64) = v68;
  sub_10036DE58(v64, v65, v66, v67, v68);
  return sub_10036DE14(v29, v35, v36, v69);
}

uint64_t sub_100362340(char a1)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004DD3CC();
  __chkstk_darwin(v4 - 8);
  result = sub_1004DCD4C();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_1004DD3BC();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      sub_1004DD3AC(v10);
      v11._countAndFlagsBits = v7;
      v11._object = v8;
      sub_1004DD39C(v11);

      v12._countAndFlagsBits = 0x2972656E774F2820;
      v12._object = 0xE800000000000000;
      sub_1004DD3AC(v12);
      sub_1004DD3DC();
      if (a1)
      {
        if (qword_10063D770 != -1)
        {
          swift_once();
        }
      }

      else if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v9 = qword_1006734A0;
      sub_1004D838C();
      return sub_1004DD49C();
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1003625BC(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_1004D966C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_100352EB8(a1, a3);
}

uint64_t sub_100362740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004CB8(&unk_100642BE0);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - v6;
  v7 = sub_100004CB8(&qword_100641A00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - v9;
  v10 = sub_1004DD05C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v14 = sub_1004DCEFC();
  (*(v11 + 8))(v13, v10);
  if (v14 == 2 || (v14 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v15 = sub_1004DCD9C(), v15 == 2) || (v15 & 1) != 0)
  {
    v16 = 1;
    v17 = v34;
  }

  else
  {
    v19 = v32;
    sub_1004D9C6C();
    v20 = sub_1004D9C7C();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = v33;
    sub_10036D7CC(a1, v33, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v23 = swift_allocObject();
    sub_10036D838(v21, v23 + v22, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v24 = v30;
    sub_1004DBA2C();
    v25 = sub_1004DB82C();
    KeyPath = swift_getKeyPath();
    v27 = (v24 + *(v7 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v34;
    sub_100047F38(v24, v34, &qword_100641A00);
    v17 = v28;
    v16 = 0;
  }

  return (*(v8 + 56))(v17, v16, 1, v7);
}

uint64_t sub_100362B64(uint64_t a1)
{
  v2 = sub_1004D966C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100004CB8(&unk_100641880);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = sub_1004DCDAC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1000108DC(v11, v8, &unk_100641880);
  sub_100004CB8(&qword_100641808);
  sub_1004DB9FC();
  sub_10001074C(v11, &unk_100641880);
  v15 = (a1 + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v18 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = sub_1004D964C();
  v20 = sub_1004DDF9C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Management] Remove swipe action triggered", v21, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100362E58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004DD37C();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v10 = qword_1006734A0;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002E6780();
  result = sub_1004DB34C();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100363060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DB7DC();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_1004D83FC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004DD3EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_1004DD37C();
  v49 = *(v10 + 16);
  v49(v12, v15, v9);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v16 = qword_1006734A0;
  v17 = qword_1006734A0;
  v48[3] = v16;
  v18 = v17;
  sub_1004D838C();
  v19 = v18;
  v20 = sub_1004DD4AC();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v48[1] = v10 + 8;
  v63 = v20;
  v64 = v22;
  v48[2] = sub_1002E6780();
  v24 = sub_1004DB34C();
  v54 = v25;
  v55 = v24;
  v52 = v26;
  v53 = v27;
  sub_1004DD37C();
  v28 = v49;
  v49(v12, v15, v9);
  sub_1004D838C();
  v48[0] = v10 + 16;
  v29 = sub_1004DD4AC();
  v31 = v30;
  v23(v15, v9);
  v63 = v29;
  v64 = v31;
  v32 = sub_1004DB34C();
  v50 = v33;
  v51 = v32;
  v48[4] = v34 & 1;
  v48[5] = v35;
  sub_1004DD37C();
  v28(v12, v15, v9);
  sub_1004D838C();
  v36 = sub_1004DD4AC();
  v38 = v37;
  v23(v15, v9);
  v63 = v36;
  v64 = v38;
  v39 = sub_1004DB34C();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_10036D7CC(v58, v59, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_10036D838(v44, v46 + v45, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_1004DB7AC();
  sub_100051E10(v39, v41, v43 & 1);

  sub_1004DB7BC();
  return sub_1004DB79C();
}

uint64_t sub_100363608()
{
  v0 = sub_100004CB8(&unk_100641880);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100004CB8(&qword_100641808);
  sub_1004DB9EC();
  sub_100352610(v2);
  return sub_10001074C(v2, &unk_100641880);
}

uint64_t sub_1003636E4()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v8 = qword_1006734A0;
  sub_1004D838C();
  v9 = sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1003638E8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_1004D9D8C();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  v6 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100004CB8(&qword_100641B48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = sub_100004CB8(&qword_100641B50);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v52 = sub_100004CB8(&qword_100641B58);
  __chkstk_darwin(v52);
  v53 = &v52 - v17;
  sub_10036D7CC(v1, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_10036D838(&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v58 = v1;
  sub_100004CB8(&qword_100641B68);
  sub_10036E158();
  sub_1004DBA3C();
  sub_1004DBD1C();
  sub_1004DA45C();
  (*(v10 + 32))(v16, v12, v9);
  v20 = &v16[*(v14 + 44)];
  v21 = v64;
  *(v20 + 4) = v63;
  *(v20 + 5) = v21;
  *(v20 + 6) = v65;
  v22 = v60;
  *v20 = v59;
  *(v20 + 1) = v22;
  v23 = v62;
  *(v20 + 2) = v61;
  *(v20 + 3) = v23;
  if (sub_1003646A8())
  {
    if (qword_10063D9E0 != -1)
    {
      swift_once();
    }

    v24 = qword_100640F98;
  }

  else
  {
    v25 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_1004DB8CC();
  }

  KeyPath = swift_getKeyPath();
  v27 = v53;
  sub_100047F38(v16, v53, &qword_100641B50);
  v28 = (v27 + *(v52 + 36));
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = v54;
  sub_100364800(v54);
  v31 = v55;
  v30 = v56;
  (*(v2 + 104))(v55, enum case for ColorScheme.light(_:), v56);
  v32 = sub_1004D9D7C();
  v33 = *(v2 + 8);
  v33(v31, v30);
  v33(v29, v30);
  v34 = objc_opt_self();
  v35 = &selRef_systemBackgroundColor;
  if ((v32 & 1) == 0)
  {
    v35 = &selRef_secondarySystemBackgroundColor;
  }

  v36 = [v34 *v35];
  v37 = sub_1004DB8CC();
  v38 = sub_100004CB8(&qword_100641BB8);
  v39 = v57;
  v40 = (v57 + *(v38 + 36));
  v41 = sub_100004CB8(&qword_100641BC0);
  v42 = v40 + *(v41 + 52);
  v43 = *(sub_1004DA43C() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_1004DA88C();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *v40 = v37;
  *(v40 + *(v41 + 56)) = 256;
  return sub_100047F38(v27, v39, &qword_100641B58);
}

__n128 sub_100363F00@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004CB8(&qword_100641B90);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = sub_100004CB8(&qword_100641B80);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *v7 = sub_1004DA90C();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  sub_1003640F8(a1, &v7[*(v5 + 52)]);
  if (*a1)
  {
    v12 = 2.5;
  }

  else
  {
    v12 = 0.0;
  }

  sub_100047F38(v7, v11, &qword_100641B90);
  v13 = &v11[*(v9 + 44)];
  *v13 = 0;
  *(v13 + 1) = v12;
  sub_1004DBD1C();
  sub_1004DA45C();
  sub_100047F38(v11, a2, &qword_100641B80);
  v14 = a2 + *(sub_100004CB8(&qword_100641B68) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1003640F8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_100004CB8(&qword_100641BC8);
  __chkstk_darwin(v50);
  v4 = v47 - v3;
  v5 = sub_100004CB8(&qword_100641BD0);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = sub_100004CB8(&qword_100641BD8);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[1] = *a1;
  v13 = sub_1004DB8EC();
  v14 = sub_1004DB00C();
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = KeyPath;
  v58 = v14;
  sub_1004DB06C();
  v16 = sub_100004CB8(&qword_100641BE0);
  v17 = sub_10036E364();
  sub_1004DB3AC();

  if (qword_10063D9F0 != -1)
  {
    swift_once();
  }

  v18 = sub_100035430(v50, qword_100640FB8);
  sub_1000108DC(v18, v4, &qword_100641BC8);
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  sub_100042B08(&qword_100641C00, &qword_100641BC8);
  v55 = v12;
  v19 = v49;
  sub_1004DB4AC();
  sub_10001074C(v4, &qword_100641BC8);
  (*(v48 + 8))(v7, v19);
  v56 = sub_1003636E4();
  v57 = v20;
  sub_1002E6780();
  v21 = sub_1004DB34C();
  v23 = v22;
  v25 = v24;
  if (qword_10063D9A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1004DB2AC();
  v28 = v27;
  v30 = v29;

  sub_100051E10(v21, v23, v25 & 1);

  if (qword_10063D9B0 != -1)
  {
    swift_once();
  }

  v31 = sub_1004DB23C();
  v33 = v32;
  v35 = v34;
  v50 = v36;
  sub_100051E10(v26, v28, v30 & 1);

  v37 = v51;
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v55, v53);
  v41 = v54;
  *v54 = 0;
  *(v41 + 8) = 1;
  v42 = sub_100004CB8(&qword_100641C08);
  v39(v41 + v42[12], v37, v40);
  v43 = v41 + v42[16];
  *v43 = v31;
  *(v43 + 1) = v33;
  v35 &= 1u;
  v43[16] = v35;
  *(v43 + 3) = v50;
  v44 = v41 + v42[20];
  *v44 = 0x4020000000000000;
  v44[8] = 0;
  sub_100051E00(v31, v33, v35);
  v45 = *(v38 + 8);

  v45(v55, v40);
  sub_100051E10(v31, v33, v35);

  return (v45)(v37, v40);
}

uint64_t sub_1003646A8()
{
  v1 = sub_1004DA74C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1004DDF8C();
    v7 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10036E0E0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100364800@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100641B60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_1000108DC(v1 + *(v10 + 24), v9, &qword_100641B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004D9D8C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100364A0C()
{
  sub_1004DBD6C();
  sub_1004DA0EC();
}

uint64_t sub_100364A98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100004CB8(&qword_100641BC8);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v16 = sub_1004DB8EC();
  sub_1004DAFFC();
  v6 = sub_1004DB01C();

  KeyPath = swift_getKeyPath();
  v8 = sub_1004DB87C();
  v9 = swift_getKeyPath();
  if (qword_10063D9C8 != -1)
  {
    swift_once();
  }

  sub_1004DBD1C();
  sub_1004D9F5C();
  if (a1)
  {
    v10 = sub_1004DB82C();
  }

  else
  {
    v10 = sub_1004DB86C();
  }

  v11 = v10;
  v12 = sub_1004DAF2C();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_10063D9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_100035430(v3, qword_100640FB8);
  sub_1000108DC(v13, v5, &qword_100641BC8);
  sub_100004CB8(&qword_100642300);
  sub_100371DA4();
  sub_100042B08(&qword_100641C00, &qword_100641BC8);
  sub_1004DB4AC();
  sub_10001074C(v5, &qword_100641BC8);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_10001074C(v21, &qword_100642300);
}

uint64_t sub_100364D7C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1004DAB5C();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004CB8(&qword_1006422F0);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_100004CB8(&qword_1006422F8);
  v13 = sub_100008DE4(&qword_100642300);
  v14 = sub_100008DE4(&qword_100641BC8);
  v15 = sub_100371DA4();
  v16 = sub_100042B08(&qword_100641C00, &qword_100641BC8);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1004DBA3C();
  sub_1004DAB4C();
  sub_100042B08(&qword_100642350, &qword_1006422F0);
  sub_10036BAE8(&qword_100641F30, &type metadata accessor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_1004DB3DC();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_100004CB8(&qword_100642358) + 36));
  sub_100004CB8(&qword_100642360);
  sub_1004DA47C();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v0);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_1004DA9BC();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)()
{
  v0 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_1004DA9BC();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_10036551C(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003653C4(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_10036551C(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_10036547C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_10036551C(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_10036551C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_10063D8D0 != -1)
    {
      swift_once();
    }

    v14 = *&qword_100673808 + *&qword_100673808;
    if (v11 + *&qword_100673808 + *&qword_100673808 > *&a2)
    {
      v11 = *&a2 - (*&qword_100673808 + *&qword_100673808);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_100365780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DF50();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003657E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DF50();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100365848()
{
  sub_10036DF50();
  sub_1004DADFC();
  __break(1u);
}

char *sub_100365870()
{
  v1 = sub_1004D83FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v9;
  v19 = *(v0 + 32);
  sub_10036DEC4(v0, v17);
  sub_1004DD37C();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v11 = qword_1006734A0;
  sub_1004D838C();
  v12 = v11;
  v16[1] = sub_1004DD4AC();
  v13 = *(v3 + 8);
  v13(v8, v2);
  sub_1004DD37C();
  v10(v5, v8, v2);
  sub_1004D838C();
  sub_1004DD4AC();
  v13(v8, v2);
  v14 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v18);
}

uint64_t sub_100365B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DEFC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100365BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DEFC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100365C3C()
{
  sub_10036DEFC();
  sub_1004DADFC();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_100047F38(a3, a4 + *(v6 + 20), &unk_100642930);
}

uint64_t sub_100365CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004DA74C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100641120);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  sub_1000108DC(v1 + *(v10 + 20), v9, &qword_100641120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100047F38(v9, a1, &qword_10063DF58);
  }

  sub_1004DDF8C();
  v12 = sub_1004DAECC();
  sub_1004D953C();

  sub_1004DA73C();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_100004CB8(&qword_100641120);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  v1 = sub_100004CB8(&qword_100641128);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = sub_1004DA7CC();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_100004CB8(&qword_100641130);
  sub_100366050(v0, &v3[*(v4 + 44)]);
  sub_100042B08(&qword_100641138, &qword_100641128);
  sub_1004DB36C();
  return sub_10001074C(v3, &qword_100641128);
}

uint64_t sub_100366050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1004DAC2C();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100004CB8(&unk_100641140);
  __chkstk_darwin(v53);
  v6 = &v49 - v5;
  v7 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  v14 = sub_100004CB8(&qword_100641C90);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_100004CB8(&qword_100641C98);
  __chkstk_darwin(v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = sub_1004DA7CC();
  *(v16 + 1) = 0x4018000000000000;
  v16[16] = 0;
  v25 = sub_100004CB8(&qword_100641CA0);
  sub_100366734(a1, &v16[*(v25 + 44)]);
  if (qword_10063D8F8 != -1)
  {
    swift_once();
  }

  v26 = unk_100673850;
  v27 = byte_100673858;
  if (byte_100673858)
  {
    v28 = *&static Corner.medium;
  }

  else
  {
    v28 = *&static Corner.medium + -3.0;
  }

  sub_100047F38(v16, v21, &qword_100641C90);
  v29 = &v21[*(v17 + 36)];
  *v29 = v28;
  *(v29 + 1) = v26;
  v29[16] = v27;
  *(v29 + 3) = 0x4008000000000000;
  *(v29 + 4) = 0;
  *(v29 + 20) = 257;
  sub_100047F38(v21, v24, &qword_100641C98);
  v30 = v58;
  sub_100365CC8(v58);
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v55);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = *(v53 + 48);
  sub_1000108DC(v30, v6, &qword_10063DF58);
  sub_1000108DC(v11, &v6[v33], &qword_10063DF58);
  v34 = *(v32 + 48);
  v35 = v34(v6, 1, v31);
  v53 = v24;
  if (v35 != 1)
  {
    v50 = v11;
    v38 = v52;
    sub_1000108DC(v6, v52, &qword_10063DF58);
    v39 = v31;
    if (v34(&v6[v33], 1, v31) != 1)
    {
      v40 = &v6[v33];
      v41 = v51;
      (*(v32 + 32))(v51, v40, v31);
      sub_10036BAE8(&qword_100641150, &type metadata accessor for UserInterfaceSizeClass);
      v42 = v38;
      v36 = sub_1004DD35C();
      v43 = *(v32 + 8);
      v43(v41, v39);
      sub_10001074C(v50, &qword_10063DF58);
      sub_10001074C(v58, &qword_10063DF58);
      v43(v42, v39);
      v37 = v53;
      sub_10001074C(v6, &qword_10063DF58);
      goto LABEL_13;
    }

    sub_10001074C(v50, &qword_10063DF58);
    sub_10001074C(v58, &qword_10063DF58);
    (*(v32 + 8))(v38, v31);
    goto LABEL_11;
  }

  sub_10001074C(v11, &qword_10063DF58);
  sub_10001074C(v58, &qword_10063DF58);
  if (v34(&v6[v33], 1, v31) != 1)
  {
LABEL_11:
    sub_10001074C(v6, &unk_100641140);
    v36 = 0;
    v37 = v53;
    goto LABEL_13;
  }

  sub_10001074C(v6, &qword_10063DF58);
  v36 = 1;
  v37 = v53;
LABEL_13:
  v44 = v56;
  sub_1000108DC(v37, v56, &qword_100641C98);
  v45 = v37;
  v46 = v57;
  sub_1000108DC(v44, v57, &qword_100641C98);
  v47 = v46 + *(sub_100004CB8(&qword_100641CA8) + 48);
  *v47 = 0;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = (v36 & 1) == 0;
  sub_10001074C(v45, &qword_100641C98);
  return sub_10001074C(v44, &qword_100641C98);
}

uint64_t sub_100366734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_100004CB8(&qword_100641CB0);
  __chkstk_darwin(v3 - 8);
  v70 = &v55[-v4];
  v5 = sub_1004DB11C();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v67 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004DB2FC();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_100004CB8(&qword_100641CB8) - 8;
  __chkstk_darwin(v68);
  v69 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v55[-v11];
  v12 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = sub_100004CB8(&qword_100641CC0);
  __chkstk_darwin(v15 - 8);
  v66 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  sub_100365CC8(v14);
  v20 = sub_10036EA40(v14);
  sub_10001074C(v14, &qword_10063DF58);
  *v19 = sub_1004DA7CC();
  v19[1] = v20;
  *(v19 + 16) = 0;
  v65 = v19;
  sub_100004CB8(&qword_100641CC8);
  v62 = a1;
  sub_100366E64(a1);
  v74 = sub_100368218();
  v75 = v21;
  sub_1002E6780();
  v58 = sub_1004DB34C();
  v57 = v22;
  v59 = v23;
  v74 = v58;
  v75 = v22;
  v56 = v24 & 1;
  v76 = v24 & 1;
  v77 = v23;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_1004DB8EC();

  v25 = sub_1004DB35C();
  v27 = v26;
  v29 = v28;
  v30 = sub_1004DB27C();
  v32 = v31;
  v34 = v33;
  sub_100051E10(v25, v27, v29 & 1);

  v35 = v61;
  sub_1004DB2EC();
  sub_100051E10(v30, v32, v34 & 1);

  v36 = v60;
  sub_1004DB3CC();
  (*(v63 + 8))(v35, v64);
  sub_100051E10(v58, v57, v56);

  KeyPath = swift_getKeyPath();
  v38 = v36 + *(sub_100004CB8(&qword_100641CD0) + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  v39 = (v36 + *(sub_100004CB8(&qword_100641CD8) + 36));
  v40 = *(sub_100004CB8(&qword_100641CE0) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = sub_1004DB93C();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v67;
  PlaylistCurators.View.fontTextStyle.getter(v67);
  v44 = sub_1004DB02C();
  v45 = v70;
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v46 = sub_1004DB08C();
  sub_10001074C(v45, &qword_100641CB0);
  (*(v71 + 8))(v43, v72);
  v47 = swift_getKeyPath();
  v48 = (v36 + *(v68 + 44));
  *v48 = v47;
  v48[1] = v46;
  v50 = v65;
  v49 = v66;
  sub_1000108DC(v65, v66, &qword_100641CC0);
  v51 = v69;
  sub_1000108DC(v36, v69, &qword_100641CB8);
  v52 = v73;
  sub_1000108DC(v49, v73, &qword_100641CC0);
  v53 = sub_100004CB8(&qword_100641CE8);
  sub_1000108DC(v51, v52 + *(v53 + 48), &qword_100641CB8);
  sub_10001074C(v36, &qword_100641CB8);
  sub_10001074C(v50, &qword_100641CC0);
  sub_10001074C(v51, &qword_100641CB8);
  return sub_10001074C(v49, &qword_100641CC0);
}

uint64_t sub_100366E64(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCurators.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_1002DF3F4(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_1003F422C(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_10036D7CC(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_10036D838(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10036F000;
  *(v13 + 24) = v12;
  sub_100004CB8(&qword_100641CF0);
  sub_100004CB8(&qword_100641CF8);
  sub_100042B08(&qword_100641D00, &qword_100641CF0);
  sub_10036F12C();
  return sub_1004DBC1C();
}

uint64_t sub_1003670F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_100367158(a2, a4);
    result = sub_100004CB8(&qword_100641CF8);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_100367158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v125 = a2;
  v2 = sub_1004DCC0C();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D934C();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v127 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v95 - v7;
  __chkstk_darwin(v8);
  v121 = &v95 - v9;
  __chkstk_darwin(v10);
  v119 = &v95 - v11;
  v12 = sub_1004D92BC();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v130 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v95 - v17;
  v18 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v23 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v95 - v26;
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v30 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v30 - 8);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v98 = &v95 - v33;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v116 = sub_100004CB8(&unk_100641D80);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v95 - v37;
  v104 = sub_100004CB8(&qword_100641D48);
  __chkstk_darwin(v104);
  v111 = &v95 - v38;
  v108 = sub_100004CB8(&qword_100641D38);
  __chkstk_darwin(v108);
  v109 = &v95 - v39;
  v107 = sub_100004CB8(&qword_100641D28);
  __chkstk_darwin(v107);
  v115 = &v95 - v40;
  v112 = sub_100004CB8(&qword_100641D18);
  __chkstk_darwin(v112);
  v113 = &v95 - v41;
  v42 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v42 - 8);
  v44 = &v95 - v43;
  sub_100365CC8(&v95 - v43);
  v45 = sub_10036F480(v44);
  sub_10001074C(v44, &qword_10063DF58);
  v46 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_1000108DC(v122 + *(v46 + 20), v29, &unk_100642930);
  sub_1004DCB8C();
  v47 = *(v129 + 56);
  v122 = v2;
  v97 = v129 + 56;
  v96 = v47;
  v47(v22, 0, 1, v2);
  v48 = sub_1004DCC9C();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v29, 1, v48) == 1)
  {
    sub_10001074C(v22, &qword_100641A60);
    sub_10001074C(v29, &unk_100642930);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
  }

  else
  {
    (*(v49 + 32))(v36, v29, v48);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100047F38(v22, &v36[*(v50 + 20)], &qword_100641A60);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = sub_100004CB8(&unk_100641A80);
  v52 = v126;
  (*(*(v51 - 8) + 56))(v126, 8, 11, v51);
  v100 = v45;
  v138 = 0;
  v136 = 0;
  v134 = 1;
  v53 = *(v128 + 104);
  v120 = v12;
  v53(v130, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  v54 = v101;
  sub_10036D7CC(v52, v101, type metadata accessor for ArtworkImage.Placeholder);
  v55 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_10036D838(v54, v57 + v55, type metadata accessor for ArtworkImage.Placeholder);
  v58 = v57 + v56;
  *v58 = v45;
  *(v58 + 8) = v138;
  *(v58 + 9) = *v137;
  *(v58 + 12) = *&v137[3];
  *(v58 + 16) = v45;
  *(v58 + 24) = v136;
  *(v58 + 25) = *v135;
  *(v58 + 28) = *&v135[3];
  *(v58 + 32) = 0;
  *(v58 + 40) = v134;
  *(v58 + 41) = 1;
  v59 = v98;
  sub_1000108DC(v36, v98, &qword_100642C70);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v60 = *(*(v50 - 8) + 48);
  v61 = v36;
  if (v60(v59, 1, v50) == 1)
  {
    sub_10001074C(v59, &qword_100642C70);
    v62 = 1;
    v63 = v102;
  }

  else
  {
    v63 = v102;
    (*(v49 + 16))(v102, v59, v48);
    sub_10036DD1C(v59, type metadata accessor for ArtworkImage.ViewModel);
    v62 = 0;
  }

  (*(v49 + 56))(v63, v62, 1, v48);
  sub_1000108DC(v63, v106, &unk_100642930);
  v64 = v119;
  sub_1004D930C();
  sub_10001074C(v63, &unk_100642930);
  sub_1004D92EC();
  v106 = v61;
  v65 = v103;
  sub_1000108DC(v61, v103, &qword_100642C70);
  v66 = v60(v65, 1, v50);
  v67 = v120;
  if (v66 == 1)
  {
    sub_10001074C(v65, &qword_100642C70);
    v68 = v105;
    v69 = v122;
    v96(v105, 1, 1, v122);
    v70 = v129;
    v71 = v118;
  }

  else
  {
    v68 = v105;
    sub_1000108DC(v65 + *(v50 + 20), v105, &qword_100641A60);
    sub_10036DD1C(v65, type metadata accessor for ArtworkImage.ViewModel);
    v70 = v129;
    v69 = v122;
    v72 = (*(v129 + 48))(v68, 1, v122);
    v71 = v118;
    if (v72 != 1)
    {
      (*(v70 + 32))(v118, v68, v69);
      goto LABEL_15;
    }
  }

  if (qword_10063D958 != -1)
  {
    swift_once();
  }

  v73 = sub_100035430(v69, static Artwork.CropStyle.fallback);
  (*(v70 + 16))(v71, v73, v69);
  if ((*(v70 + 48))(v68, 1, v69) != 1)
  {
    sub_10001074C(v68, &qword_100641A60);
  }

LABEL_15:
  v74 = v117;
  v75 = v127;
  sub_1004D92CC();
  (*(v70 + 8))(v71, v69);
  v76 = v124;
  v77 = *(v123 + 8);
  v77(v75, v124);
  v78 = v121;
  sub_1004D92FC();
  v77(v74, v76);
  sub_100004CB8(&qword_1006406E8);
  sub_100338428();
  v79 = v110;
  sub_1004D92DC();

  v77(v78, v76);
  v77(v64, v76);
  (*(v128 + 8))(v130, v67);
  sub_10036DD1C(v126, type metadata accessor for ArtworkImage.Placeholder);
  sub_10001074C(v106, &qword_100642C70);
  v80 = v111;
  v81 = &v111[*(v104 + 36)];
  v82 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v81 + v82) = swift_getKeyPath();
  sub_100004CB8(&qword_10063DBB8);
  swift_storeEnumTagMultiPayload();
  *v81 = sub_100368A7C;
  v81[1] = 0;
  (*(v114 + 32))(v80, v79, v116);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v83 = v109;
  sub_100047F38(v80, v109, &qword_100641D48);
  v84 = (v83 + *(v108 + 36));
  v85 = v132;
  *v84 = v131;
  v84[1] = v85;
  v84[2] = v133;
  v86 = v115;
  sub_100047F38(v83, v115, &qword_100641D38);
  v87 = v86 + *(v107 + 36);
  *v87 = 0;
  *(v87 + 8) = 0;
  *(v87 + 16) = 2;
  if (qword_10063DA00 != -1)
  {
    swift_once();
  }

  v88 = qword_100640FD8;
  v89 = qword_100640FE0;
  v90 = byte_100640FE8;
  v91 = v86;
  v92 = v113;
  sub_100047F38(v91, v113, &qword_100641D28);
  v93 = v92 + *(v112 + 36);
  *v93 = v88;
  *(v93 + 8) = v89;
  *(v93 + 16) = v90;
  *(v93 + 24) = 0;
  *(v93 + 32) = 0;
  *(v93 + 40) = 2;
  sub_100047F38(v92, v125, &qword_100641D18);
}

uint64_t sub_100368218()
{
  v1 = sub_1004D83FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004DD3EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1004DD3CC();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  __chkstk_darwin(v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v0 + 16);
  if (v14)
  {
    sub_10036D7CC(*v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v15 = v14 - 1;
    if (v15)
    {
      sub_1004DD3BC();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      sub_1004DD3AC(v20);
      sub_1004DD39C(*v13);
      v21._countAndFlagsBits = 2106912;
      v21._object = 0xE300000000000000;
      sub_1004DD3AC(v21);
      v19[1] = v15;
      sub_1004DD38C();
      v22._countAndFlagsBits = 0x7328726568744F20;
      v22._object = 0xE900000000000029;
      sub_1004DD3AC(v22);
      sub_1004DD3DC();
      (*(v3 + 16))(v5, v8, v2);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v17 = qword_1006734A0;
      sub_1004D838C();
      countAndFlagsBits = sub_1004DD4AC();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      countAndFlagsBits = v13->_countAndFlagsBits;
    }

    sub_10036DD1C(v13, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1004DAC2C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004CB8(&unk_100641140);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_100365CC8(&v27 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_1000108DC(v15, v7, &qword_10063DF58);
  sub_1000108DC(v12, &v7[v16], &qword_10063DF58);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_10001074C(v12, &qword_10063DF58);
    sub_10001074C(v15, &qword_10063DF58);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_10001074C(v7, &qword_10063DF58);
LABEL_9:
      v18 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1000108DC(v7, v29, &qword_10063DF58);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_10001074C(v12, &qword_10063DF58);
    sub_10001074C(v15, &qword_10063DF58);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_10001074C(v7, &unk_100641140);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_10036BAE8(&qword_100641150, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = sub_1004DD35C();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_10001074C(v12, &qword_10063DF58);
  sub_10001074C(v15, &qword_10063DF58);
  v23(v21, v1);
  sub_10001074C(v7, &qword_10063DF58);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v24 = *v18;
  v25 = sub_1004DB11C();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_100368A7C(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = sub_1004DB8CC();
  return sub_1000107AC(v4, a1 + 40, &qword_100641D90);
}

uint64_t sub_100368AFC()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_100368BC4;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1003BB590;
  v4[3] = &unk_1005F0008;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_100640FD0 = v2;
  return result;
}

id sub_100368BC4(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_100368C64()
{
  if (qword_10063D9F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100640FD0;
  result = sub_1004DB7EC();
  qword_100640FD8 = result;
  qword_100640FE0 = 0x3FF0000000000000;
  byte_100640FE8 = 1;
  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_1004DA9CC();
  *v5 = a1;

  return v4(v7, 0);
}

void (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_100368E38;
}

void sub_100368E38(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_1004DA9CC();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v1);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  sub_100004CB8(&qword_100641120);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_1004DA9BC();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_100004CB8(&qword_100641120);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_1004DA9BC();
}

id sub_100369144(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100369460()
{
  type metadata accessor for ClearBackground.Controller();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_10036949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DE70();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100369500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10036DE70();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100369564()
{
  sub_10036DE70();
  sub_1004DADFC();
  __break(1u);
}

uint64_t sub_10036958C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_100369604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004DCDAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_1004DD2AC();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10036BAE8(&qword_100641C28, &type metadata accessor for Playlist.Collaborator);
      v19 = sub_1004DD35C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003698AC();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10036A15C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_1003698AC()
{
  v1 = v0;
  v2 = sub_1004DCDAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C30);
  v6 = *v0;
  v7 = sub_1004DEA5C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100369AE4()
{
  v1 = v0;
  v32 = sub_1004DCDAC();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100004CB8(&qword_100641C30);
  v6 = sub_1004DEA6C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
      result = sub_1004DD2AC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100369E00()
{
  v1 = v0;
  v35 = sub_1004DCDAC();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100004CB8(&qword_100641C30);
  result = sub_1004DEA6C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
      result = sub_1004DD2AC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void sub_10036A15C(int64_t a1)
{
  v3 = sub_1004DCDAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1004DE94C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
        v23 = sub_1004DD2AC();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_10036A464(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004DCDAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_1004DD2AC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10036BAE8(&qword_100641C28, &type metadata accessor for Playlist.Collaborator);
      v21 = sub_1004DD35C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10036A744(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10036A744(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1004DCDAC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100369E00();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1003698AC();
      goto LABEL_12;
    }

    sub_100369AE4();
  }

  v13 = *v3;
  sub_10036BAE8(&qword_100641C20, &type metadata accessor for Playlist.Collaborator);
  v14 = sub_1004DD2AC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10036BAE8(&qword_100641C28, &type metadata accessor for Playlist.Collaborator);
      v22 = sub_1004DD35C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

uint64_t sub_10036A9E8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100642208);
  __chkstk_darwin(v2 - 8);
  sub_1000108DC(a1, &v5 - v3, &qword_100642208);
  return sub_1004DA60C();
}

uint64_t sub_10036AA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100004CB8(&qword_100641D98);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = sub_1004DF08C(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v17 = *(v11 + 48);
    sub_1000108DC(a1 + v16, v13, &unk_100642930);
    sub_1000108DC(a2 + v16, &v13[v17], &unk_100642930);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_10001074C(v13, &unk_100642930);
        return 1;
      }
    }

    else
    {
      sub_1000108DC(v13, v10, &unk_100642930);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_10036BAE8(&qword_100641DA0, &type metadata accessor for Artwork);
        v20 = sub_1004DD35C();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_10001074C(v13, &unk_100642930);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_10001074C(v13, &qword_100641D98);
    return 0;
  }

  return result;
}

uint64_t sub_10036AED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  v4 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = sub_100004CB8(&qword_100641C38);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v68 = sub_1004DD05C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v8;
  __chkstk_darwin(v9);
  v61 = &v56 - v10;
  v60 = sub_100004CB8(&qword_100641040);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v57 = sub_100004CB8(&qword_100641020);
  v13 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v56 - v14;
  v16 = sub_100004CB8(&qword_100641008);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_100004CB8(&qword_100640FF0);
  sub_1004D9B2C();
  v21 = *(v17 + 32);
  v21(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_1004D9B2C();
  v21(v3 + v22, v19, v16);
  v23 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v71[0] = &_swiftEmptySetSingleton;
  sub_100004CB8(&qword_100640FF8);
  sub_1004D9B2C();
  (*(v13 + 32))(v3 + v23, v15, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v71[0]) = 0;
  sub_1004D9B2C();
  v25 = *(v59 + 32);
  v26 = v60;
  v25(v3 + v24, v12, v60);
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v71[0]) = 0;
  sub_1004D9B2C();
  v25(v3 + v27, v12, v26);
  v28 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v71);
  sub_100073E60(v71);
  v70 = BYTE1(v71[0]);
  sub_1004D9B2C();
  v25(v3 + v28, v12, v26);
  v29 = v63;
  v30 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v31 = sub_100004CB8(&qword_100642C70);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v59 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v64;
  v32 = v67;
  v33 = *(v67 + 16);
  v34 = v61;
  v35 = v68;
  v33(v61, v29, v68);
  swift_beginAccess();
  v60 = v33;
  v33(v62, v34, v35);

  v36 = v35;
  sub_1004D9B2C();
  v37 = *(v32 + 8);
  v38 = v34;
  v64 = v32 + 8;
  v62 = v37;
  v37(v34, v36);
  swift_endAccess();
  v39 = v58;
  v40 = v29;
  sub_1004DCE2C();
  v41 = sub_1004DCE1C();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v39, 1, v41) == 1)
  {
    sub_10001074C(v39, &qword_100641C38);
    v43 = 0;
  }

  else
  {
    v43 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v42 + 8))(v39, v41);
  }

  swift_beginAccess();
  v69 = v43 & 1;
  sub_1004D9B2C();
  swift_endAccess();
  v44 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v45 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v46 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v47 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, sub_1003715DC, v46);
  *(v3 + v59) = v47;

  v48 = sub_1004DDA8C();
  v49 = v66;
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v50 = v68;
  (v60)(v34, v40, v68);
  v51 = v67;
  v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (*(v51 + 32))(v54 + v52, v38, v50);
  *(v54 + v53) = v3;

  sub_100302950(0, 0, v49, &unk_10052F1A0, v54);

  v62(v40, v50);
  return v3;
}

unint64_t sub_10036B8C8()
{
  result = qword_1006410D8;
  if (!qword_1006410D8)
  {
    sub_100008DE4(&qword_1006410D0);
    sub_100042B08(&qword_1006410E0, &qword_1006410E8);
    sub_100042B08(&qword_1006410F0, &qword_1006410F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006410D8);
  }

  return result;
}

void sub_10036BA00(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_10035EECC(a1, a2);
}

uint64_t sub_10036BAE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036BB88(uint64_t a1)
{
  result = sub_10036BAE8(&qword_100641160, type metadata accessor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_10036BBF8()
{
  sub_10036D038(319, &qword_1006411A0, &qword_100640FF0, &unk_10052DF00, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_10036D038(319, &qword_1006411A8, &qword_100640FF8, &unk_10052DF08, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_10036D3A4(319, &qword_1006411B0, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_10036D408(319, &qword_1006411B8, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_10036D038(319, qword_1006411C0, &qword_100642C70, &unk_100527540, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10036BE78(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100004CB8(&unk_100641510);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100004CB8(&qword_100641520);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_10036C01C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100004CB8(&unk_100641510);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100004CB8(&qword_100641520);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_10036C1AC()
{
  sub_10036C36C();
  if (v0 <= 0x3F)
  {
    sub_10036D3A4(319, &qword_100641598, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10036D3A4(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10036D3A4(319, &qword_1006415A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10036D038(319, qword_1006415B0, &qword_1006410A0, &unk_10052DFE0, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10036D408(319, &unk_10063FED8, &type metadata accessor for State);
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

void sub_10036C36C()
{
  if (!qword_100641590)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_10036BAE8(&qword_1006410A8, type metadata accessor for Collaboration.Management.Model);
    v0 = sub_1004DA16C();
    if (!v1)
    {
      atomic_store(v0, &qword_100641590);
    }
  }
}

uint64_t sub_10036C46C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&unk_100642930);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10036C53C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&unk_100642930);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10036C5EC()
{
  sub_10036D3A4(319, &qword_1006416C0, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10036C6AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_1006416F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10036C77C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006416F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10036C82C()
{
  sub_10036D038(319, &unk_100641760, &qword_10063DF58, &unk_10052E0E0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10036C960()
{
  sub_100008DE4(&qword_1006410B0);
  sub_100042B08(&unk_100641110, &qword_1006410B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10036CA0C()
{
  sub_100008DE4(&qword_100641128);
  sub_100042B08(&qword_100641138, &qword_100641128);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10036CAB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1004DCDAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100004CB8(&qword_100641808);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_100004CB8(&qword_100641520);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10036CCAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1004DCDAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100004CB8(&qword_100641808);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100004CB8(&qword_10063FF28);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_100004CB8(&qword_100641520);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10036CEAC()
{
  sub_1004DCDAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v1 <= 0x3F)
    {
      sub_10036D408(319, &unk_10063FED8, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10036D038(319, &qword_100641878, &unk_100641880, &unk_10052A7A0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10036D3A4(319, &qword_1006415A0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10036D3A4(319, &qword_1006415A8, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void sub_10036D038(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10036D0AC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10036D10C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_1006418C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10036D1DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006418C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10036D2AC()
{
  sub_100338374();
  if (v0 <= 0x3F)
  {
    sub_10036D3A4(319, &qword_100641938, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10036D408(319, &qword_100641940, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10036D3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10036D408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10036D47C()
{
  result = qword_100641978;
  if (!qword_100641978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641978);
  }

  return result;
}

unint64_t sub_10036D4D4()
{
  result = qword_100641980;
  if (!qword_100641980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641980);
  }

  return result;
}

unint64_t sub_10036D52C()
{
  result = qword_100641988;
  if (!qword_100641988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641988);
  }

  return result;
}

unint64_t sub_10036D584()
{
  result = qword_100641990;
  if (!qword_100641990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641990);
  }

  return result;
}

unint64_t sub_10036D5FC()
{
  result = qword_1006419C8;
  if (!qword_1006419C8)
  {
    sub_100008DE4(&qword_100641998);
    sub_100042B08(&qword_1006419D0, &qword_1006419D8);
    sub_100042B08(&qword_1006419E0, &qword_1006419E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006419C8);
  }

  return result;
}

unint64_t sub_10036D6E0()
{
  result = qword_100642D00;
  if (!qword_100642D00)
  {
    sub_100008DE4(&qword_100641A00);
    sub_100042B08(&qword_100641A08, &unk_100641A10);
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642D00);
  }

  return result;
}

uint64_t sub_10036D7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036D838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10036D8D4()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1004DCDAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_100004CB8(&qword_100641808);

  v7 = v1[8];
  sub_100004CB8(&unk_100641090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004DA25C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_100004CB8(&unk_10063DBE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004DA07C();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10036DC64()
{
  result = qword_100641B08;
  if (!qword_100641B08)
  {
    sub_100008DE4(&qword_100641A48);
    sub_100042B08(&qword_100641B10, &qword_100641B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B08);
  }

  return result;
}

uint64_t sub_10036DD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10036DD7C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100051E00(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036DDC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10036DDD8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10036DDD8(uint64_t a1, uint64_t a2, char a3)
{
  sub_100051E00(a1, a2, a3 & 1);
}

uint64_t sub_10036DE14(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100051E10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10036DE58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100329430(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_10036DE70()
{
  result = qword_100641B30;
  if (!qword_100641B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B30);
  }

  return result;
}

unint64_t sub_10036DEFC()
{
  result = qword_100641B38;
  if (!qword_100641B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B38);
  }

  return result;
}

unint64_t sub_10036DF50()
{
  result = qword_100641B40;
  if (!qword_100641B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B40);
  }

  return result;
}

uint64_t sub_10036DFA4()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100004CB8(&qword_100641B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004D9D8C();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10036E0E0(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_10036E0E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10036E158()
{
  result = qword_100641B70;
  if (!qword_100641B70)
  {
    sub_100008DE4(&qword_100641B68);
    sub_10036E1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B70);
  }

  return result;
}

unint64_t sub_10036E1E4()
{
  result = qword_100641B78;
  if (!qword_100641B78)
  {
    sub_100008DE4(&qword_100641B80);
    sub_10036E270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B78);
  }

  return result;
}

unint64_t sub_10036E270()
{
  result = qword_100641B88;
  if (!qword_100641B88)
  {
    sub_100008DE4(&qword_100641B90);
    sub_100042B08(&qword_100641B98, &qword_100641BA0);
    sub_100042B08(&qword_100641BA8, &qword_100641BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641B88);
  }

  return result;
}

unint64_t sub_10036E364()
{
  result = qword_100641BE8;
  if (!qword_100641BE8)
  {
    sub_100008DE4(&qword_100641BE0);
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641BE8);
  }

  return result;
}

uint64_t sub_10036E41C()
{
  v1 = sub_1004DCDAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10036E4E8(uint64_t a1)
{
  v4 = *(sub_1004DCDAC() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035C88;

  return sub_10035318C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10036E5F4(uint64_t a1)
{
  v4 = *(sub_1004DCDAC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035C88;

  return sub_1003538A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10036E6EC()
{
  v1 = sub_1004DCDAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10036E7B8(uint64_t a1)
{
  v4 = *(sub_1004DCDAC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035C88;

  return sub_100352954(a1, v6, v7, v8, v1 + v5);
}

double sub_10036EA40(uint64_t a1)
{
  v2 = sub_1004DAC2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&unk_100641140);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_1000108DC(a1, v9, &qword_10063DF58);
  sub_1000108DC(v16, &v9[v17], &qword_10063DF58);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_10001074C(v16, &qword_10063DF58);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_10001074C(v9, &qword_10063DF58);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_1000108DC(v9, v12, &qword_10063DF58);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_10001074C(v16, &qword_10063DF58);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10001074C(v9, &unk_100641140);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_10036BAE8(&qword_100641150, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1004DD35C();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_10001074C(v16, &qword_10063DF58);
  v21(v12, v2);
  sub_10001074C(v9, &qword_10063DF58);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10036EE84()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_100004CB8(&qword_100641120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004DAC2C();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10036F000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_1003670F0(a1, a2, v7, a3);
}

uint64_t sub_10036F08C()
{

  return swift_deallocObject();
}

uint64_t sub_10036F0C4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100004CB8(&qword_100641D78);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_10036F12C()
{
  result = qword_100641D08;
  if (!qword_100641D08)
  {
    sub_100008DE4(&qword_100641CF8);
    sub_10036F1E4();
    sub_100042B08(&qword_100641D68, &qword_100641D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D08);
  }

  return result;
}

unint64_t sub_10036F1E4()
{
  result = qword_100641D10;
  if (!qword_100641D10)
  {
    sub_100008DE4(&qword_100641D18);
    sub_10036F270();
    sub_100312488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D10);
  }

  return result;
}

unint64_t sub_10036F270()
{
  result = qword_100641D20;
  if (!qword_100641D20)
  {
    sub_100008DE4(&qword_100641D28);
    sub_10036F2FC();
    sub_100312414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D20);
  }

  return result;
}

unint64_t sub_10036F2FC()
{
  result = qword_100641D30;
  if (!qword_100641D30)
  {
    sub_100008DE4(&qword_100641D38);
    sub_10036F388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D30);
  }

  return result;
}

unint64_t sub_10036F388()
{
  result = qword_100641D40;
  if (!qword_100641D40)
  {
    sub_100008DE4(&qword_100641D48);
    sub_100008DE4(&qword_1006406E8);
    sub_100338428();
    swift_getOpaqueTypeConformance2();
    sub_10036BAE8(&unk_100641D50, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D40);
  }

  return result;
}

double sub_10036F480(uint64_t a1)
{
  v2 = sub_1004DAC2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&unk_100641140);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_1000108DC(a1, v9, &qword_10063DF58);
  sub_1000108DC(v16, &v9[v17], &qword_10063DF58);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_10001074C(v16, &qword_10063DF58);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_10001074C(v9, &qword_10063DF58);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_1000108DC(v9, v12, &qword_10063DF58);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_10001074C(v16, &qword_10063DF58);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10001074C(v9, &unk_100641140);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_10036BAE8(&qword_100641150, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1004DD35C();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_10001074C(v16, &qword_10063DF58);
  v21(v12, v2);
  sub_10001074C(v9, &qword_10063DF58);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_10036F860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10036F880@<X0>(void *a1@<X8>)
{
  result = sub_1004DA63C();
  *a1 = v3;
  return result;
}

uint64_t sub_10036F8E4()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100004CB8(&unk_10063DBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004D9FEC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100004CB8(&unk_100641090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1004DA25C();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100004CB8(&unk_10063DBE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004DA07C();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10036FB78()
{
  result = qword_100641E38;
  if (!qword_100641E38)
  {
    sub_100008DE4(&qword_100641E28);
    sub_100042B08(&qword_100641E40, &qword_100641E48);
    sub_100042B08(&qword_100641E50, &qword_100641E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641E38);
  }

  return result;
}

uint64_t sub_10036FC5C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10036FCD8()
{
  result = qword_100641E68;
  if (!qword_100641E68)
  {
    sub_100008DE4(&qword_100641E70);
    sub_10036FD90();
    sub_100042B08(&qword_100641E88, &qword_100641E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641E68);
  }

  return result;
}

unint64_t sub_10036FD90()
{
  result = qword_100641E78;
  if (!qword_100641E78)
  {
    sub_100008DE4(&qword_100641E80);
    sub_10036D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641E78);
  }

  return result;
}

unint64_t sub_10036FE1C()
{
  result = qword_100641E98;
  if (!qword_100641E98)
  {
    sub_100008DE4(&qword_100641E20);
    sub_100042B08(&qword_100641EA0, &qword_100641EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641E98);
  }

  return result;
}

unint64_t sub_10036FECC()
{
  result = qword_100641EB0;
  if (!qword_100641EB0)
  {
    sub_100008DE4(&qword_100641E10);
    sub_100008DE4(&qword_100641E28);
    sub_100008DE4(&qword_100641E30);
    sub_10036FB78();
    sub_10036FC5C(&qword_100641E60, &qword_100641E30, &unk_10052EE08, sub_10036FCD8);
    swift_getOpaqueTypeConformance2();
    sub_10036FE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641EB0);
  }

  return result;
}

unint64_t sub_10037002C()
{
  result = qword_100641F00;
  if (!qword_100641F00)
  {
    sub_100008DE4(&qword_100641EF8);
    sub_10036BAE8(&qword_100641EF0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641F00);
  }

  return result;
}

unint64_t sub_100370114()
{
  result = qword_100641F40;
  if (!qword_100641F40)
  {
    sub_100008DE4(&qword_100641F38);
    sub_1003701CC();
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641F40);
  }

  return result;
}

unint64_t sub_1003701CC()
{
  result = qword_100641F48;
  if (!qword_100641F48)
  {
    sub_100008DE4(&qword_100641F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641F48);
  }

  return result;
}

uint64_t sub_100370280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100351A98(a1, v4, v5, v6);
}

uint64_t sub_10037033C@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10035DF10(a1);
}

uint64_t sub_1003703B0()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_100004CB8(&unk_10063DBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004D9FEC();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100004CB8(&unk_100641090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1004DA25C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100004CB8(&unk_10063DBE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1004DA07C();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100370618(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10035DF98(a1, v4, v5, v6);
}

uint64_t sub_100370694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_10035169C(a1, v4, v5, v6, v7);
}

uint64_t sub_100370758@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10035C260(a1);
}

uint64_t sub_1003707C8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10032B490(a1, a2, v2 + v6, v7);
}

uint64_t sub_100370894(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10035C0F4(a1, v4);
}

unint64_t sub_100370914()
{
  result = qword_100642050;
  if (!qword_100642050)
  {
    sub_100008DE4(&qword_100642020);
    sub_1003709CC();
    sub_100042B08(&qword_100642068, &qword_100642040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642050);
  }

  return result;
}

unint64_t sub_1003709CC()
{
  result = qword_100642058;
  if (!qword_100642058)
  {
    sub_100008DE4(&qword_100642060);
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642058);
  }

  return result;
}

uint64_t sub_100370A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100351FF8(a1, v4, v5, v6);
}

uint64_t sub_100370B94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_10035B384(a1);
}

unint64_t sub_100370C04()
{
  result = qword_1006420A8;
  if (!qword_1006420A8)
  {
    sub_100008DE4(&qword_100642090);
    sub_10036BAE8(&qword_1006420B0, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    sub_100042B08(&qword_1006420B8, &qword_1006420C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006420A8);
  }

  return result;
}

unint64_t sub_100370D18()
{
  result = qword_100642100;
  if (!qword_100642100)
  {
    sub_100008DE4(&qword_1006420D8);
    sub_100370DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642100);
  }

  return result;
}

unint64_t sub_100370DA4()
{
  result = qword_100642108;
  if (!qword_100642108)
  {
    sub_100008DE4(&qword_1006420F8);
    sub_100370E5C();
    sub_100042B08(&qword_100641E50, &qword_100641E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642108);
  }

  return result;
}

unint64_t sub_100370E5C()
{
  result = qword_100642110;
  if (!qword_100642110)
  {
    sub_100008DE4(&qword_1006420F0);
    sub_100042B08(&qword_100642118, &qword_100642120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642110);
  }

  return result;
}

uint64_t sub_100370FDC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_100371058()
{
  result = qword_100642190;
  if (!qword_100642190)
  {
    sub_100008DE4(&qword_100642138);
    sub_100042B08(&qword_100641A08, &unk_100641A10);
    sub_100042B08(&unk_100641BF0, &qword_100640088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642190);
  }

  return result;
}

unint64_t sub_10037113C()
{
  result = qword_1006421C0;
  if (!qword_1006421C0)
  {
    sub_100008DE4(&qword_100642140);
    sub_1003711F4();
    sub_100042B08(&qword_1006421F8, &qword_1006421B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006421C0);
  }

  return result;
}

unint64_t sub_1003711F4()
{
  result = qword_1006421C8;
  if (!qword_1006421C8)
  {
    sub_100008DE4(&qword_1006421B0);
    sub_1003712AC();
    sub_100042B08(&qword_1006421E8, &qword_1006421F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006421C8);
  }

  return result;
}

unint64_t sub_1003712AC()
{
  result = qword_1006421D0;
  if (!qword_1006421D0)
  {
    sub_100008DE4(&qword_1006421A8);
    sub_100371338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006421D0);
  }

  return result;
}

unint64_t sub_100371338()
{
  result = qword_1006421D8;
  if (!qword_1006421D8)
  {
    sub_100008DE4(&qword_1006421A0);
    sub_1003713C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006421D8);
  }

  return result;
}

unint64_t sub_1003713C4()
{
  result = qword_1006421E0;
  if (!qword_1006421E0)
  {
    sub_100008DE4(&qword_100642198);
    sub_100008DE4(&qword_100642138);
    sub_100371058();
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006421E0);
  }

  return result;
}

uint64_t sub_100371558()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003715A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1003715E4()
{
  v1 = sub_1004DD05C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003716BC(uint64_t a1)
{
  v4 = *(sub_1004DD05C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035C88;

  return sub_10034C370(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003717DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004DC82C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100371824()
{
  result = qword_100642250;
  if (!qword_100642250)
  {
    sub_100006F10(255, &qword_100642240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642250);
  }

  return result;
}

unint64_t sub_1003718DC()
{
  result = qword_1006422A8;
  if (!qword_1006422A8)
  {
    sub_100008DE4(&qword_1006422B0);
    sub_100008DE4(&qword_1006419A8);
    sub_100008DE4(&qword_1006419A0);
    sub_100008DE4(&qword_100641998);
    sub_100008DE4(&qword_1006419C0);
    sub_10036D5FC();
    sub_10036FC5C(&unk_1006419F0, &qword_1006419C0, &unk_10052E7A8, sub_10036D6E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10036BAE8(&qword_1006422B8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006422A8);
  }

  return result;
}

unint64_t sub_100371AB8()
{
  result = qword_1006422C0;
  if (!qword_1006422C0)
  {
    sub_100008DE4(&qword_100641BB8);
    sub_100371B70();
    sub_100042B08(&qword_1006422E0, &qword_100641BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006422C0);
  }

  return result;
}

unint64_t sub_100371B70()
{
  result = qword_1006422C8;
  if (!qword_1006422C8)
  {
    sub_100008DE4(&qword_100641B58);
    sub_100371C28();
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006422C8);
  }

  return result;
}

unint64_t sub_100371C28()
{
  result = qword_1006422D0;
  if (!qword_1006422D0)
  {
    sub_100008DE4(&qword_100641B50);
    sub_100042B08(&qword_1006422D8, &qword_100641B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006422D0);
  }

  return result;
}

unint64_t sub_100371D00()
{
  result = qword_1006422E8;
  if (!qword_1006422E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006422E8);
  }

  return result;
}

uint64_t sub_100371D54()
{

  return swift_deallocObject();
}

unint64_t sub_100371DA4()
{
  result = qword_100642308;
  if (!qword_100642308)
  {
    sub_100008DE4(&qword_100642300);
    sub_100371E5C();
    sub_100042B08(&unk_100642340, &qword_100642CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642308);
  }

  return result;
}

unint64_t sub_100371E5C()
{
  result = qword_100642310;
  if (!qword_100642310)
  {
    sub_100008DE4(&qword_100642318);
    sub_100371F14();
    sub_100042B08(&qword_1006421E8, &qword_1006421F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642310);
  }

  return result;
}

unint64_t sub_100371F14()
{
  result = qword_100642320;
  if (!qword_100642320)
  {
    sub_100008DE4(&qword_100642328);
    sub_100371FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642320);
  }

  return result;
}

unint64_t sub_100371FA0()
{
  result = qword_100642330;
  if (!qword_100642330)
  {
    sub_100008DE4(&qword_100642338);
    sub_10036E364();
    sub_100042B08(&unk_100642D10, &unk_100641A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642330);
  }

  return result;
}

unint64_t sub_1003720F0()
{
  result = qword_100642368;
  if (!qword_100642368)
  {
    sub_100008DE4(&qword_100642358);
    sub_100008DE4(&qword_1006422F0);
    sub_1004DAB5C();
    sub_100042B08(&qword_100642350, &qword_1006422F0);
    sub_10036BAE8(&qword_100641F30, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100042B08(&unk_100642370, &qword_100642360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100642368);
  }

  return result;
}

unint64_t sub_100372300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_1006428E8);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100010678(*(a1 + 48) + 40 * v12, v33);
        sub_10000904C(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_100010678(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_10001074C(v30, &qword_100642788);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_10000904C(v31 + 8, v23);
        sub_10001074C(v30, &qword_100642788);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_100028F80(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_100381528(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_10001074C(&v24, &qword_1006428F0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10037262C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100642780);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100010678(*(a1 + 48) + 40 * v12, v27);
        sub_10000904C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100010678(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000904C(v25 + 8, v20);
        sub_10001074C(v24, &qword_100642788);
        v21 = v18;
        sub_100006F5C(v20, v22);
        v13 = v21;
        sub_100006F5C(v22, v23);
        sub_100006F5C(v23, &v21);
        result = sub_100028F80(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100008D24(v10);
          result = sub_100006F5C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100006F5C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10001074C(v24, &qword_100642788);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_1004DCC9C();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_1003729EC(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_1003729EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_100642930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_1003729EC(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = sub_1004DCDAC();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D83FC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037F660(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      sub_1004DD37C();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v20 = qword_1006734A0;
      sub_1004D838C();
      sub_1004DD4AC();
      (*(v7 + 8))(v12, v6);
      sub_100004CB8(&qword_1006423B8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100511DA0;
      v22 = sub_1004DCD4C();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_10037E074();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = sub_1004DD40C();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      sub_1004DD37C();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v29 = qword_1006734A0;
      sub_1004D838C();
      v27 = sub_1004DD4AC();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(sub_100004CB8(&qword_1006423C8) + 48);
    sub_1004DD37C();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v30 = qword_1006734A0;
    sub_1004D838C();
    v27 = sub_1004DD4AC();
    (*(v7 + 8))(v12, v6);
    v31 = sub_1004D809C();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    sub_10001074C(v15, &qword_1006423D0);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v84 = hasProfileEdit;
  v2 = sub_1004DD3CC();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v83 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v79 - v7);
  v9 = sub_100004CB8(&qword_1006423D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = sub_100004CB8(&qword_1006423D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = sub_1004D83FC();
  __chkstk_darwin(v15 - 8);
  v86 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1004DD3EC();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037F660(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1004DD37C();
      v25 = v85;
      v26 = v88;
      (*(v85 + 16))(v87, v20, v88);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v27 = qword_1006734A0;
      sub_1004D838C();
      v28 = sub_1004DD4AC();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      sub_10037E0C8(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v85;
      v40 = (v85 + 16);
      v41 = v20;
      v42 = v87;
      v43 = v88;
      sub_1004DD37C();
      (*v40)(v42, v41, v43);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v46 = qword_1006734A0;
      sub_1004D838C();
      v28 = sub_1004DD4AC();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = sub_100004CB8(&qword_1006423C8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v81 = v32;
  v82 = v34;
  sub_100047F38(v34, v14, &qword_1006423D0);
  v80 = v14;
  sub_1000108DC(v14, v11, &qword_1006423D0);
  if ((*(v83 + 48))(v11, 1, v3) == 1)
  {
    v36 = v85;
    v37 = (v85 + 16);
    v38 = v20;
    sub_1004DD37C();
    v48 = v88;
    (*v37)(v87, v38, v88);
    v49 = v80;
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v50 = qword_1006734A0;
    sub_1004D838C();
    v28 = sub_1004DD4AC();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    sub_10001074C(v49, &qword_1006423D0);
    v52 = sub_1004D809C();
    (*(*(v52 - 8) + 8))(v82 + v81, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    sub_10037E148(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v84)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v82;
    if (object)
    {
      sub_1004DD3BC();
      v89._countAndFlagsBits = 0x100000000000002ELL;
      v89._object = 0x80000001004F6E80;
      sub_1004DD3AC(v89);
      sub_1004DD39C(*v8);
      v90._countAndFlagsBits = 4204576;
      v90._object = 0xE300000000000000;
      sub_1004DD3AC(v90);
      v91._countAndFlagsBits = countAndFlagsBits;
      v91._object = object;
      sub_1004DD39C(v91);
      v92._countAndFlagsBits = 0xD000000000000031;
      v92._object = 0x80000001004F6EB0;
      sub_1004DD3AC(v92);
LABEL_26:
      sub_1004DD3DC();
      v64 = v85;
      v65 = v88;
      (*(v85 + 16))(v87, v44, v88);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v66 = qword_1006734A0;
      sub_1004D838C();
      v28 = sub_1004DD4AC();
      v30 = v67;
      (*(v64 + 8))(v44, v65);
LABEL_32:
      sub_10001074C(v80, &qword_1006423D0);
      sub_10037E0C8(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v75 = sub_1004D809C();
      (*(*(v75 - 8) + 8))(v61 + v81, v75);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  sub_10037E148(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v84)
  {
    v62 = v5[1]._countAndFlagsBits;
    v63 = v5[1]._object;
    v61 = v82;
    if (v63)
    {
      sub_1004DD3BC();
      v93._countAndFlagsBits = 0x100000000000002ALL;
      v93._object = 0x80000001004F6D90;
      sub_1004DD3AC(v93);
      sub_1004DD39C(*v5);
      v94._countAndFlagsBits = 4204576;
      v94._object = 0xE300000000000000;
      sub_1004DD3AC(v94);
      v95._countAndFlagsBits = v62;
      v95._object = v63;
      sub_1004DD39C(v95);
      v96._countAndFlagsBits = 0xD000000000000048;
      v96._object = 0x80000001004F6DC0;
      sub_1004DD3AC(v96);
      goto LABEL_26;
    }

LABEL_29:
    sub_1004DD37C();
    v68 = v85;
    v69 = v88;
    (*(v85 + 16))(v87, v44, v88);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v70 = qword_1006734A0;
    sub_1004D838C();
    sub_1004DD4AC();
    (*(v68 + 8))(v44, v69);
    sub_100004CB8(&qword_1006423B8);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_100511DA0;
    v72 = v45->_countAndFlagsBits;
    v73 = v45->_object;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_10037E074();
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;

    v28 = sub_1004DD40C();
    v30 = v74;

    goto LABEL_32;
  }

LABEL_19:
  sub_1004DD37C();
  v53 = v85;
  v54 = v88;
  (*(v85 + 16))(v87, v44, v88);
  v55 = v82;
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v56 = qword_1006734A0;
  sub_1004D838C();
  v28 = sub_1004DD4AC();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  sub_10001074C(v80, &qword_1006423D0);
  sub_10037E0C8(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = sub_1004D809C();
  (*(*(v58 - 8) + 8))(v55 + v81, v58);
LABEL_33:
  v76 = v28;
  v77 = v30;
  result._object = v77;
  result._countAndFlagsBits = v76;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10037F660(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10037E0C8(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_1004DD37C();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v16 = qword_1006734A0;
      sub_1004D838C();
      v14 = sub_1004DD4AC();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(sub_100004CB8(&qword_1006423C8) + 48);
    sub_1004DD37C();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v17 = qword_1006734A0;
    sub_1004D838C();
    v14 = sub_1004DD4AC();
    (*(v4 + 8))(v9, v3);
    v18 = sub_1004D809C();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    sub_10001074C(v12, &qword_1006423D0);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_1004DB9DC();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_1004DB9DC();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_10037B0A8;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_10037E148(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_1004DD05C();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1004DA90C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100004CB8(&qword_1006423E0);
  return sub_100374418(v1, a1 + *(v3 + 44));
}

uint64_t sub_100374418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = sub_100004CB8(&qword_1006427A0);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = sub_100004CB8(&qword_100641A60);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = sub_1004DCC0C();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&unk_100642930);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = sub_1004D934C();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = sub_1004D92BC();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100642C70);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = sub_100004CB8(&qword_1006427A8);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = sub_100004CB8(&qword_100642C90);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = sub_1004DCDAC();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = sub_1004D809C();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = sub_100004CB8(&qword_1006427B0);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = sub_100004CB8(&qword_1006427B8);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = sub_100004CB8(&qword_1006427C0);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = sub_100004CB8(&qword_1006427C8);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_100004CB8(&qword_1006427D0);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = sub_1004D83FC();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_1004DD3EC();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = sub_100004CB8(&qword_1006427D8);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = sub_100004CB8(&qword_1006427E0);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = sub_100004CB8(&qword_1006427E8);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = sub_100004CB8(&qword_1006427F0);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = sub_100004CB8(&qword_1006427F8);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = sub_100004CB8(&qword_100642800);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = sub_100004CB8(&qword_100642808);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = sub_100004CB8(&qword_100642810);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = sub_100004CB8(&qword_100642818);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  sub_10037F660(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_10037E0C8(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (qword_10063DA30 != -1)
    {
      swift_once();
    }

    v92 = qword_1006423A8;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = sub_100004CB8(&qword_100642820);
    v94 = sub_10037F3CC();
    sub_1004DB61C();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    sub_1004DB5AC();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = sub_100004CB8(&qword_100642838);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = sub_1002E6780();
  v98 = sub_1004DB34C();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (qword_10063DA28 != -1)
  {
    swift_once();
  }

  v105 = qword_1006423A0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  sub_100004CB8(&qword_100642840);
  sub_10037F4D8();
  v107 = v481;
  sub_1004DB61C();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  sub_10001074C(v544, &qword_100642840);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = sub_1004DAF3C();
  v111 = v477;
  sub_10037F660(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_10037E0C8(v111, type metadata accessor for Collaboration.Flow);
  sub_1004D9C8C();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  sub_100047F38(v107, v479, &qword_100642800);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  sub_100047F38(v120, v488, &qword_100642808);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = sub_1004DB34C();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = sub_1004DB8AC();
  v131 = swift_getKeyPath();
  v471 = sub_1004DAF3C();
  sub_1004D9C8C();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = sub_1004DAF4C();
  if (qword_10063DA20 != -1)
  {
    swift_once();
  }

  v473 = v131;
  sub_1004D9C8C();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
      v149 = sub_1004D9DFC();
      v150 = _s4FlowO18ProfileEditingViewVMa(0);
      v151 = v397;
      sub_10037F660(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = sub_1004DAF4C();
      sub_1004D9C8C();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      sub_100047F38(v151, v490, &qword_1006427F0);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
  sub_1004D9DFC();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  sub_10037F660(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = sub_100004CB8(&qword_100640118);
      sub_1004DBA0C();
      v200 = v403;
      sub_1004DBB0C();
      v201 = sub_1004DAF2C();
      sub_1004D9C8C();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(sub_100004CB8(&qword_1006428B0) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = sub_1004DAF2C();
      *(v200 + *(sub_100004CB8(&qword_1006428B8) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(sub_1004DA43C() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = sub_1004DA88C();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(sub_100004CB8(&unk_1006429C0) + 36)] = 256;
      sub_1004DBD1C();
      sub_1004DA45C();
      v221 = v404;
      sub_100047F38(v200, v404, &qword_1006427D8);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      sub_100047F38(v221, v447, &qword_1006427E0);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      sub_1004DB9EC();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      sub_1004DD37C();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (qword_10063D770 != -1)
      {
        swift_once();
      }

      v239 = qword_1006734A0;
      sub_1004D838C();
      v240 = sub_1004DD4AC();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = sub_1004DB34C();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      sub_1004DBD2C();
      sub_1004DA45C();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = sub_1004DAC1C();
      v248 = sub_1004DB10C();
      v249 = swift_getKeyPath();
      v250 = sub_1004DAF1C();
      sub_1004D9C8C();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = sub_1004DAF3C();
      if (qword_10063DA38 != -1)
      {
        swift_once();
      }

      sub_1004D9C8C();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = sub_1004DAF4C();
      sub_1004D9C8C();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      sub_10037F660(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      sub_10037E148(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      sub_1004DB9DC();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = sub_100380104;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = sub_10038183C;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = sub_1004DBA0C();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = sub_100004CB8(&qword_100642888);
      v491 = sub_10037FC64();
      v287 = v438;
      sub_1004DB63C();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      sub_10001074C(&v513, &qword_100642888);
      v288 = v420;
      sub_1000108DC(v447, v420, &qword_1006427E0);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      sub_1000108DC(v288, v422, &qword_1006427E0);
      v292 = sub_100004CB8(&qword_1006428C0);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      sub_1000108DC(v493, v499, &qword_1006428C8);
      sub_1000108DC(v498, v499, &qword_1006428C8);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      sub_10001074C(v499, &qword_1006428C8);
      sub_10001074C(v288, &qword_1006427E0);
      sub_1000108DC(v291, v441, &qword_1006427C8);
      swift_storeEnumTagMultiPayload();
      sub_100042B08(&qword_100642878, &qword_1006427C8);
      v295 = v442;
      sub_1004DAADC();
      sub_1000108DC(v295, v459, &qword_1006427C0);
      swift_storeEnumTagMultiPayload();
      sub_10037FBAC();
      sub_100042B08(&qword_100642898, &qword_1006427A0);
      sub_1004DAADC();
      sub_10001074C(v493, &qword_1006428C8);
      sub_10001074C(v295, &qword_1006427C0);
      sub_10001074C(v291, &qword_1006427C8);
      (v470)(v438, v449);
      sub_10001074C(v447, &qword_1006427E0);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    sub_100361504(v445);
    v166 = sub_1004DCD4C();
    v168 = v167;
    if (qword_10063DA18 != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    sub_1000108DC(v165, v407, &qword_100642C70);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      sub_10001074C(v170, &qword_100642C70);
      v175 = sub_1004DCC9C();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = sub_1004DCC9C();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      sub_10037E0C8(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    sub_1000108DC(v174, v410, &unk_100642930);
    sub_1004D930C();
    sub_10001074C(v174, &unk_100642930);
    sub_1004D92EC();
    v231 = v408;
    sub_1000108DC(v445, v408, &qword_100642C70);
    if ((v464)(v231, 1, v171) == 1)
    {
      sub_10001074C(v231, &qword_100642C70);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      sub_1000108DC(v231 + *(v171 + 20), v399, &qword_100641A60);
      sub_10037E0C8(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        sub_1004D92CC();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        sub_1004D92FC();
        v298(v234, v297);
        sub_1003386E4();
        v300 = v414;
        sub_1004D92DC();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        sub_10001074C(v445, &qword_100642C70);
        sub_1004DBD1C();
        sub_1004D9F5C();
        v301 = (v300 + *(sub_100004CB8(&unk_100642C80) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = sub_1004DAF3C();
        sub_1004D9C8C();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        sub_100047F38(v300, v411, &qword_1006427A8);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        sub_100047F38(v311, v455, &qword_100642C90);
        v313 = v451;
        sub_1004DD37C();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (qword_10063D770 != -1)
        {
          swift_once();
        }

        v317 = qword_1006734A0;
        v318 = qword_1006734A0;
        v463 = v317;
        v319 = v318;
        sub_1004D838C();
        v320 = v319;
        v321 = sub_1004DD4AC();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        sub_10037F660(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        sub_10037E148(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        sub_1004DB9DC();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = sub_1004DAF3C();
        v338 = v448;
        v339 = v337;
        sub_1004D9C8C();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = sub_10037F6D4;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        sub_1004DD37C();
        v345 = v452;
        (v464)(v338, v344, v452);
        sub_1004D838C();
        v465 = sub_1004DD4AC();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        sub_10037F660(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        sub_10037E148(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        sub_1004DB9DC();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = sub_1004DAF3C();
        sub_1004D9C8C();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = sub_10037FA6C;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        sub_1000108DC(v455, v423, &qword_100642C90);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        sub_1000108DC(v358, v424, &qword_100642C90);
        v360 = sub_100004CB8(&qword_100642860);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        sub_1000108DC(&v521, v499, &qword_100642868);
        sub_1000108DC(&v529, v499, &qword_100642868);
        sub_1000108DC(v492, v499, &qword_100642868);
        sub_1000108DC(v493, v499, &qword_100642868);
        sub_10001074C(v498, &qword_100642868);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        sub_10001074C(v499, &qword_100642868);
        sub_10001074C(v358, &qword_100642C90);
        sub_1000108DC(v359, v459, &qword_1006427A0);
        swift_storeEnumTagMultiPayload();
        sub_10037FBAC();
        sub_100042B08(&qword_100642898, &qword_1006427A0);
        sub_1004DAADC();
        sub_10001074C(&v529, &qword_100642868);
        sub_10001074C(&v521, &qword_100642868);
        sub_10001074C(v359, &qword_1006427A0);
        sub_10001074C(v455, &qword_100642C90);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v236 = sub_100035430(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      sub_10001074C(v232, &qword_100641A60);
    }

    goto LABEL_38;
  }

  v176 = sub_100004CB8(&qword_1006423C8);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  sub_10037F660(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  sub_10037E148(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  sub_1004DB9DC();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = sub_1003800B8;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = sub_10038183C;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  sub_1000108DC(v499, v498, &qword_100642888);
  sub_100004CB8(&qword_100642888);
  sub_100042B08(&qword_100642878, &qword_1006427C8);
  sub_10037FC64();
  v196 = v442;
  sub_1004DAADC();
  sub_1000108DC(v196, v459, &qword_1006427C0);
  swift_storeEnumTagMultiPayload();
  sub_10037FBAC();
  sub_100042B08(&qword_100642898, &qword_1006427A0);
  sub_1004DAADC();
  sub_10001074C(v499, &qword_100642888);
  sub_10001074C(v196, &qword_1006427C0);
  (*(v430 + 8))(v429, v431);
  sub_10001074C(v464, &qword_1006423D0);
LABEL_42:
  v378 = v482;
  sub_1000108DC(v486, v482, &qword_100642818);
  v379 = v484;
  sub_1000108DC(v488, v484, &qword_100642808);
  sub_1000108DC(v490, v483, &qword_1006427F8);
  sub_1000108DC(v489, v485, &qword_1006427E8);
  v380 = v378;
  v381 = v461;
  sub_1000108DC(v380, v461, &qword_100642818);
  v382 = sub_100004CB8(&qword_1006428A0);
  sub_1000108DC(v379, v381 + v382[12], &qword_100642808);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  sub_1000108DC(v483, v381 + v382[20], &qword_1006427F8);
  v394 = v485;
  sub_1000108DC(v485, v381 + v382[24], &qword_1006427E8);
  sub_1000108DC(v498, v499, &qword_1006428A8);
  sub_10001074C(v489, &qword_1006427E8);
  sub_10001074C(v490, &qword_1006427F8);
  sub_10001074C(v488, &qword_100642808);
  sub_10001074C(v486, &qword_100642818);
  sub_10001074C(v394, &qword_1006427E8);
  sub_10001074C(v393, &qword_1006427F8);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  sub_10001074C(v499, &qword_1006428A8);
  sub_10001074C(v484, &qword_100642808);
  return sub_10001074C(v482, &qword_100642818);
}

uint64_t sub_100377A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D83FC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DD3EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004DD37C();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v10 = qword_1006734A0;
  sub_1004D838C();
  v11 = sub_1004DD4AC();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002E6780();
  result = sub_1004DB34C();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100377C98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1004DDA8C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10037F660(a2, v6, type metadata accessor for Collaboration.Flow.View);
  sub_1004DDA4C();
  v11 = sub_1004DDA3C();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10037E148(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  sub_100302950(0, 0, v9, &unk_10052F9F0, v13);
}

uint64_t sub_100377E78()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289D94;

  return sub_100377F28(0);
}

uint64_t sub_100377F28(char a1)
{
  v2[10] = v1;
  v2[11] = sub_100004CB8(&qword_1006428D0);
  v2[12] = swift_task_alloc();
  v4 = sub_1004DD05C();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_1004DDA4C();
  v2[17] = sub_1004DDA3C();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_100378100;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_1003784C0;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_100378100()
{
  *(*v1 + 152) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_100378F00;
  }

  else
  {
    v4 = sub_100378258;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100378258()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_1004D9DFC();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_100378A2C;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_100004CB8(&qword_100640118);
    sub_1004DB9EC();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_100378C70;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_1003784C0(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_1004DD9BC();

  return _swift_task_switch(sub_100378604, v3, v2);
}

uint64_t sub_100378604()
{
  if (*(v0 + 35) == 1)
  {

    sub_1003804DC();
    v1 = swift_allocError();
    *v2 = xmmword_100527260;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100643610);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_100004CB8(&qword_100640118);
        sub_1004DB9FC();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_100380620(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_10001074C(v19, &qword_1006428D0);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
    v11 = sub_1004D9DFC();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100378A2C;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_100004CB8(&qword_100640118);
    sub_1004DB9EC();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_100378C70;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_100378A2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004DD9BC();
    v4 = v3;
    v5 = sub_1003790B0;
  }

  else
  {

    v2 = sub_1004DD9BC();
    v4 = v6;
    v5 = sub_100378B7C;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_100378B7C()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9EC();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_100378C70;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_100378C70()
{
  *(*v1 + 208) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_10037926C;
  }

  else
  {
    v4 = sub_100378DC8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100378DC8()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_10001074C(v5, &qword_1006428D0);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100378F00()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100643610);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100004CB8(&qword_100640118);
      sub_1004DB9FC();

      goto LABEL_8;
    }

    sub_100380620(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001074C(v7, &qword_1006428D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1003790B0()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100643610);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100004CB8(&qword_100640118);
      sub_1004DB9FC();

      goto LABEL_8;
    }

    sub_100380620(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001074C(v7, &qword_1006428D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10037926C()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100643610);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100004CB8(&qword_100640118);
      sub_1004DB9FC();

      goto LABEL_8;
    }

    sub_100380620(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001074C(v7, &qword_1006428D0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10037941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DB7DC();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = sub_1004D83FC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004DD3EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_1004DD37C();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v16 = qword_1006734A0;
  v17 = qword_1006734A0;
  v66 = v16;
  v18 = v17;
  sub_1004D838C();
  v19 = v18;
  v20 = sub_1004DD4AC();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = sub_1002E6780();
  v24 = sub_1004DB34C();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  sub_1004DD37C();
  v28 = v52;
  v52(v12, v15, v9);
  sub_1004D838C();
  v29 = sub_1004DD4AC();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = sub_1004DB34C();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  sub_1004DD37C();
  v28(v12, v15, v9);
  sub_1004D838C();
  v36 = sub_1004DD4AC();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = sub_1004DB34C();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  sub_10037F660(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  sub_10037E148(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_1004DB7CC();
  sub_100051E10(v39, v41, v43 & 1);

  sub_10037F660(v68, v44, v66);
  v47 = swift_allocObject();
  sub_10037E148(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_1004DB7BC();

  return sub_1004DB79C();
}

uint64_t sub_100379A10(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1004DDA8C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10037F660(a1, v5, type metadata accessor for Collaboration.Flow.View);
  sub_1004DDA4C();
  v10 = sub_1004DDA3C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10037E148(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_100302950(0, 0, v8, &unk_10052F9D0, v12);
}

uint64_t sub_100379BF0()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289BA8;

  return sub_100377F28(1);
}

uint64_t sub_100379CA0(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006428D0);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_1003804DC();
  v6 = swift_allocError();
  *v7 = xmmword_100527260;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_10001074C(v4, &qword_1006428D0);
}

uint64_t sub_100379DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_100379E78, v7, v6);
}

uint64_t sub_100379E78()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_1003814E0(&qword_100642980, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_1004D9DFC();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10037A0A0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10037A270;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10037A0A0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10037A4A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10037A1BC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10037A1BC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10037A270;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10037A270()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10037A58C;
  }

  else
  {
    v5 = sub_10037A3AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037A3AC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1004DD05C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_10001074C(v2, &qword_1006428D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A4A8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A58C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10037A73C, v7, v6);
}

uint64_t sub_10037A73C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10037A7F8;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_10037A7F8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10037A934;
  }

  else
  {
    v5 = sub_100381838;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10037A934()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001074C(v3, &qword_1006428D0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10037AA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_1004DDA8C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_10037F660(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_1004DDA4C();
  v20 = sub_1004DDA3C();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_10037E148(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_100302950(0, 0, v18, v26, v23);
}

uint64_t sub_10037ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100004CB8(&qword_1006428D0);
  v5[5] = swift_task_alloc();
  sub_1004DDA4C();
  v5[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10037AD98, v7, v6);
}

uint64_t sub_10037AD98()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10037AE54;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_10037AE54()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100381834;
  }

  else
  {
    v5 = sub_100381838;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_100381494();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_1004D7F4C();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_10037B0A8()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_10037B10C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100004CB8(&qword_100642208);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1004DB8EC();
  sub_1004DA93C();
  v5 = sub_1004DA94C();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_1004DB91C();

  sub_10001074C(v4, &qword_100642208);
  v7 = sub_1004DB7FC();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_10037B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v140 = a1;
  v2 = sub_1004DB0CC();
  v135 = *(v2 - 8);
  v136 = v2;
  __chkstk_darwin(v2);
  v134 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DD3EC();
  v133 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v117 - v11;
  v120 = sub_100004CB8(&qword_100642738);
  __chkstk_darwin(v120);
  v14 = &v117 - v13;
  v121 = sub_100004CB8(&qword_100642740);
  __chkstk_darwin(v121);
  v124 = &v117 - v15;
  v16 = sub_100004CB8(&qword_100642748);
  v131 = *(v16 - 8);
  v132 = v16;
  __chkstk_darwin(v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v117 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004CB8(&qword_100642750);
  __chkstk_darwin(v23 - 8);
  v138 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  v28 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v130 = v20;
  swift_storeEnumTagMultiPayload();
  v129 = v28;
  LOBYTE(v28) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v140 + v28, v22);
  sub_10037E0C8(v22, type metadata accessor for Collaboration.Flow);
  v137 = v27;
  v127 = v6;
  v128 = v7;
  v125 = v9;
  v126 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v132;
  }

  else
  {
    sub_1004DD37C();
    v31 = v133;
    (*(v133 + 16))(v9, v12, v7);
    v32 = v31;
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v33 = qword_1006734A0;
    sub_1004D838C();
    v34 = sub_1004DD4AC();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v163 = v34;
    *(&v163 + 1) = v36;
    sub_1002E6780();
    v37 = sub_1004DB34C();
    v118 = v38;
    v119 = v39;
    v41 = v40;
    v42 = &v14[*(sub_100004CB8(&qword_100642758) + 36)];
    v43 = *(sub_100004CB8(&qword_100642760) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = sub_1004DB28C();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v118;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v119;
    v48 = sub_1004DB10C();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(sub_100004CB8(&qword_100642768) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = sub_1004DB8AC();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v120 + 36)];
    *v53 = v52;
    v53[1] = v51;
    sub_1004DBD2C();
    sub_1004DA45C();
    v54 = v124;
    sub_100047F38(v14, v124, &qword_100642738);
    v55 = (v54 + *(v121 + 36));
    v56 = v177;
    v55[4] = v176;
    v55[5] = v56;
    v55[6] = v178;
    v57 = v173;
    *v55 = v172;
    v55[1] = v57;
    v58 = v175;
    v55[2] = v174;
    v55[3] = v58;
    LOBYTE(v51) = sub_1004DAF1C();
    sub_1004D9C8C();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v122;
    sub_100047F38(v54, v122, &qword_100642740);
    v30 = v132;
    v68 = v67 + *(v132 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v123;
    sub_100047F38(v69, v123, &qword_100642748);
    v27 = v137;
    sub_100047F38(v70, v137, &qword_100642748);
    v29 = 0;
  }

  v72 = v135;
  v71 = v136;
  v73 = v134;
  (*(v131 + 56))(v27, v29, 1, v30);
  v74 = v140;

  sub_10038733C(&v179);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v74 + v129, v22);
  sub_10037E0C8(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    sub_10037F3B0(&v163);
  }

  else
  {
    v75 = v126;
    sub_1004DD37C();
    v76 = v133;
    v77 = v128;
    (*(v133 + 16))(v125, v75, v128);
    if (qword_10063D770 != -1)
    {
      swift_once();
    }

    v78 = qword_1006734A0;
    sub_1004D838C();
    v79 = sub_1004DD4AC();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v163 = v79;
    *(&v163 + 1) = v81;
    sub_1002E6780();
    v140 = sub_1004DB34C();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v163) = v85 & 1;
    sub_1004DB10C();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = sub_1004DB0FC();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = sub_1004DB8AC();
    v92 = swift_getKeyPath();
    v93 = sub_1004DAF1C();
    sub_1004D9C8C();
    LOBYTE(v163) = 0;
    *&v154 = v140;
    *(&v154 + 1) = v83;
    LOBYTE(v155) = v79;
    *(&v155 + 1) = v87;
    LOWORD(v156) = 256;
    *(&v156 + 1) = v88;
    LOBYTE(v157) = 1;
    *(&v157 + 1) = v90;
    *&v158 = v89;
    *(&v158 + 1) = v92;
    *&v159 = v91;
    BYTE8(v159) = v93;
    *&v160 = v94;
    *(&v160 + 1) = v95;
    *&v161 = v96;
    *(&v161 + 1) = v97;
    v162 = 0;
    v98.location = &v154;
    CFRange.init(_:)(v98);
    v169 = v160;
    v170 = v161;
    v171 = v162;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v168 = v159;
    v163 = v154;
    v164 = v155;
    v27 = v137;
  }

  v99 = v138;
  sub_1000108DC(v27, v138, &qword_100642750);
  v147 = v169;
  v148 = v170;
  v149 = v171;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v146 = v168;
  v141 = v163;
  v142 = v164;
  v100 = v139;
  sub_1000108DC(v99, v139, &qword_100642750);
  v101 = sub_100004CB8(&qword_100642770);
  v102 = (v100 + *(v101 + 48));
  v103 = v183;
  v104 = v182;
  v150[3] = v182;
  v150[4] = v183;
  v105 = v180;
  v106 = v179;
  v150[1] = v180;
  v150[2] = v181;
  v150[0] = v179;
  v102[2] = v181;
  v102[3] = v104;
  v102[4] = v103;
  *v102 = v106;
  v102[1] = v105;
  v107 = *(v101 + 64);
  v108 = v148;
  v151[6] = v147;
  v151[7] = v148;
  v110 = v145;
  v109 = v146;
  v151[4] = v145;
  v151[5] = v146;
  v111 = v143;
  v112 = v144;
  v151[2] = v143;
  v151[3] = v144;
  v114 = v141;
  v113 = v142;
  v151[0] = v141;
  v151[1] = v142;
  v115 = v100 + v107;
  *(v115 + 96) = v147;
  *(v115 + 112) = v108;
  v152 = v149;
  *(v115 + 128) = v149;
  *(v115 + 32) = v111;
  *(v115 + 48) = v112;
  *(v115 + 64) = v110;
  *(v115 + 80) = v109;
  *v115 = v114;
  *(v115 + 16) = v113;
  sub_10037F300(v150, &v154);
  sub_1000108DC(v151, &v154, &qword_100642778);
  sub_10001074C(v27, &qword_100642750);
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v159 = v146;
  v154 = v141;
  v155 = v142;
  sub_10001074C(&v154, &qword_100642778);
  v153[2] = v181;
  v153[3] = v182;
  v153[4] = v183;
  v153[0] = v179;
  v153[1] = v180;
  sub_10037F35C(v153);
  return sub_10001074C(v99, &qword_100642750);
}