Swift::Int sub_100002430()
{
  v1 = *v0;
  sub_100014F1C();
  sub_100014F2C(v1);
  return sub_100014F3C();
}

Swift::Int sub_1000024A4()
{
  v1 = *v0;
  sub_100014F1C();
  sub_100014F2C(v1);
  return sub_100014F3C();
}

void sub_1000024E8(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100002500@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005898(&qword_100021E00, &qword_100018200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v74 - v5;
  v7 = sub_100005898(&qword_100021E08, &qword_100018208);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v74 - v9;
  v11 = sub_100005898(&qword_100021E10, &qword_100018210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v74 - v13;
  v15 = sub_100005898(&qword_100021E18, &qword_100018218);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v74 - v17;
  *v6 = sub_100014ACC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v80 = a1;
    v74[1] = *(sub_100005898(&qword_100021E20, &unk_100018220) + 44);
    v82 = 0;
    v83 = v19;
    swift_getKeyPath();
    v77 = v7;
    v20 = swift_allocObject();
    v21 = *(v1 + 176);
    *(v20 + 176) = *(v1 + 160);
    *(v20 + 192) = v21;
    *(v20 + 208) = *(v1 + 192);
    v22 = *(v1 + 112);
    *(v20 + 112) = *(v1 + 96);
    *(v20 + 128) = v22;
    v23 = *(v1 + 144);
    *(v20 + 144) = *(v1 + 128);
    *(v20 + 160) = v23;
    v24 = *(v1 + 48);
    *(v20 + 48) = *(v1 + 32);
    *(v20 + 64) = v24;
    v25 = *(v1 + 80);
    *(v20 + 80) = *(v1 + 64);
    *(v20 + 96) = v25;
    v26 = *(v1 + 16);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v26;
    sub_100005CAC(v1, v81);
    sub_100005898(&qword_100021E28, &qword_100018248);
    v75 = v14;
    v27 = v10;
    v78 = v15;
    v76 = v11;
    sub_100005898(&qword_100021E30, &qword_100018250);
    sub_100005CE4();
    v79 = v18;
    sub_100006090(&qword_100021E48, &qword_100021E30, &qword_100018250);
    sub_100014C7C();
    v28 = sub_100014AFC();
    v29 = objc_opt_self();
    v30 = [v29 currentDevice];
    [v30 userInterfaceIdiom];

    sub_1000149BC();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_100006158(v6, v10, &qword_100021E00, &qword_100018200);
    v39 = &v10[*(v77 + 36)];
    *v39 = v28;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_100014B1C();
    v41 = [v29 currentDevice];
    [v41 userInterfaceIdiom];

    sub_1000149BC();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v75;
    sub_100006158(v27, v75, &qword_100021E08, &qword_100018208);
    v51 = v50 + *(v76 + 36);
    *v51 = v40;
    *(v51 + 8) = v43;
    *(v51 + 16) = v45;
    *(v51 + 24) = v47;
    *(v51 + 32) = v49;
    *(v51 + 40) = 0;
    v52 = sub_100014B2C();
    v53 = v79;
    v54 = [v29 currentDevice];
    v55 = v78;
    [v54 userInterfaceIdiom];

    sub_1000149BC();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_100006158(v50, v53, &qword_100021E10, &qword_100018210);
    v64 = v53 + *(v55 + 36);
    *v64 = v52;
    *(v64 + 8) = v57;
    *(v64 + 16) = v59;
    *(v64 + 24) = v61;
    *(v64 + 32) = v63;
    *(v64 + 40) = 0;
    if (*(v1 + 8))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10001498C();

      LOBYTE(v82) = v81[0];
      v65 = swift_allocObject();
      v66 = *(v1 + 176);
      *(v65 + 176) = *(v1 + 160);
      *(v65 + 192) = v66;
      *(v65 + 208) = *(v1 + 192);
      v67 = *(v1 + 112);
      *(v65 + 112) = *(v1 + 96);
      *(v65 + 128) = v67;
      v68 = *(v1 + 144);
      *(v65 + 144) = *(v1 + 128);
      *(v65 + 160) = v68;
      v69 = *(v1 + 48);
      *(v65 + 48) = *(v1 + 32);
      *(v65 + 64) = v69;
      v70 = *(v1 + 80);
      *(v65 + 80) = *(v1 + 64);
      *(v65 + 96) = v70;
      v71 = *(v1 + 16);
      *(v65 + 16) = *v1;
      *(v65 + 32) = v71;
      sub_100005CAC(v1, v81);
      sub_100005E4C(&qword_100021E50, &qword_100021E18, &qword_100018218, sub_100005E1C);
      sub_100014B8C();

      return sub_10000645C(v53, &qword_100021E18, &qword_100018218);
    }
  }

  v73 = *(v1 + 16);
  type metadata accessor for AudioManager();
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100002B74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  *a3 = sub_100014ACC();
  v4[1] = 0;
  *(v4 + 16) = 1;
  v6 = v4 + *(sub_100005898(&qword_100021E70, &qword_1000182A0) + 44);
  *v6 = sub_100014AAC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100005898(&qword_100021E78, &qword_1000182A8);
  sub_100002D30(a2, v5, &v6[*(v7 + 44)]);
  LOBYTE(a2) = sub_100014B0C();
  v8 = &v6[*(sub_100005898(&qword_100021E80, &qword_1000182B0) + 36)];
  *v8 = a2;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v10 = sub_100014B9C();
  LOBYTE(v4) = sub_100014B0C();
  v11 = &v6[*(sub_100005898(&qword_100021E88, &qword_1000182B8) + 36)];
  *v11 = v10;
  v11[8] = v4;
  v12 = &v6[*(sub_100005898(&qword_100021E90, &qword_1000182C0) + 36)];
  v13 = *(sub_1000149FC() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_100014ABC();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #12.0 }

  *v12 = _Q0;
  result = sub_100005898(&qword_100021E98, &qword_1000182C8);
  *&v12[*(result + 36)] = 256;
  return result;
}

uint64_t sub_100002D30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v99 = sub_100005898(&qword_100021EA0, &qword_1000182D0);
  v5 = *(*(v99 - 8) + 64);
  v6 = __chkstk_darwin(v99);
  v98 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v97 = &v95 - v9;
  v10 = __chkstk_darwin(v8);
  v100 = &v95 - v11;
  __chkstk_darwin(v10);
  v106 = &v95 - v12;
  v13 = sub_100005898(&qword_100021EA8, &qword_1000182D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v95 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = (&v95 - v17);
  v18 = sub_100005898(&qword_100021EB0, &qword_1000182E0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v95 - v21;
  v23 = sub_100005898(&qword_100021EB8, &qword_1000182E8);
  v103 = *(v23 - 8);
  v104 = v23;
  v24 = *(v103 + 64);
  __chkstk_darwin(v23);
  v102 = &v95 - v25;
  v101 = sub_100005898(&qword_100021EC0, &qword_1000182F0);
  v26 = *(*(v101 - 8) + 64);
  v27 = __chkstk_darwin(v101);
  v105 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v95 - v30;
  __chkstk_darwin(v29);
  v107 = &v95 - v32;
  v33 = swift_allocObject();
  v34 = *(a1 + 176);
  *(v33 + 176) = *(a1 + 160);
  *(v33 + 192) = v34;
  v35 = *(a1 + 192);
  v36 = *(a1 + 112);
  *(v33 + 112) = *(a1 + 96);
  *(v33 + 128) = v36;
  v37 = *(a1 + 144);
  *(v33 + 144) = *(a1 + 128);
  *(v33 + 160) = v37;
  v38 = *(a1 + 48);
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = v38;
  v39 = *(a1 + 80);
  *(v33 + 80) = *(a1 + 64);
  *(v33 + 96) = v39;
  v40 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v40;
  *(v33 + 208) = v35;
  *(v33 + 216) = a2;
  v109 = a1;
  v110 = a2;
  sub_100005CAC(a1, v112);
  sub_100005898(&qword_100021EC8, &qword_1000182F8);
  sub_100005FA4();
  sub_100014C4C();
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001498C();

  LOBYTE(v113) = v112[0];
  v41 = swift_allocObject();
  v42 = *(a1 + 176);
  *(v41 + 176) = *(a1 + 160);
  *(v41 + 192) = v42;
  v43 = *(a1 + 192);
  v44 = *(a1 + 112);
  *(v41 + 112) = *(a1 + 96);
  *(v41 + 128) = v44;
  v45 = *(a1 + 144);
  *(v41 + 144) = *(a1 + 128);
  *(v41 + 160) = v45;
  v46 = *(a1 + 48);
  *(v41 + 48) = *(a1 + 32);
  *(v41 + 64) = v46;
  v47 = *(a1 + 80);
  *(v41 + 80) = *(a1 + 64);
  *(v41 + 96) = v47;
  v48 = *(a1 + 16);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v48;
  *(v41 + 208) = v43;
  *(v41 + 216) = a2;
  sub_100005CAC(a1, v112);
  sub_100006090(&qword_100021EF8, &qword_100021EB0, &qword_1000182E0);
  v49 = v102;
  sub_100014B8C();

  (*(v19 + 8))(v22, v18);
  v112[0] = *(a1 + 152);
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C2C();
  v50 = v113;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  (*(v103 + 32))(v31, v49, v104);
  v53 = &v31[*(v101 + 36)];
  *v53 = KeyPath;
  v53[1] = sub_100006140;
  v53[2] = v52;
  sub_100006158(v31, v107, &qword_100021EC0, &qword_1000182F0);
  v54 = sub_100014ADC();
  v55 = v108;
  *v108 = v54;
  v55[1] = 0;
  *(v55 + 16) = 1;
  v56 = sub_100005898(&qword_100021F08, &qword_100018390);
  sub_1000045F4(a2, v55 + *(v56 + 44));
  v57 = swift_allocObject();
  v58 = *(a1 + 176);
  *(v57 + 176) = *(a1 + 160);
  *(v57 + 192) = v58;
  v59 = *(a1 + 192);
  v60 = *(a1 + 112);
  *(v57 + 112) = *(a1 + 96);
  *(v57 + 128) = v60;
  v61 = *(a1 + 144);
  *(v57 + 144) = *(a1 + 128);
  *(v57 + 160) = v61;
  v62 = *(a1 + 48);
  *(v57 + 48) = *(a1 + 32);
  *(v57 + 64) = v62;
  v63 = *(a1 + 80);
  *(v57 + 80) = *(a1 + 64);
  *(v57 + 96) = v63;
  v64 = *(a1 + 16);
  *(v57 + 16) = *a1;
  *(v57 + 32) = v64;
  *(v57 + 208) = v59;
  *(v57 + 216) = a2;
  __chkstk_darwin(v57);
  *(&v95 - 2) = a1;
  *(&v95 - 1) = a2;
  sub_100005CAC(a1, v112);
  sub_100005898(&qword_100021F10, &qword_100018398);
  sub_1000061EC();
  v65 = v106;
  sub_100014C4C();
  v113 = *(a1 + 56);
  v112[0] = *(a1 + 56);
  sub_100005898(&qword_100021F40, &qword_1000183B0);
  sub_100014C2C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v111 + 16) > a2)
  {
    v66 = v65;
    v67 = *(v111 + a2 + 32);

    v68 = swift_getKeyPath();
    v69 = swift_allocObject();
    *(v69 + 16) = (v67 & 1) == 0;
    v70 = v99;
    v71 = &v66[*(v99 + 36)];
    *v71 = v68;
    v71[1] = sub_1000069D4;
    v71[2] = v69;
    v72 = swift_allocObject();
    v73 = *(a1 + 176);
    *(v72 + 176) = *(a1 + 160);
    *(v72 + 192) = v73;
    v74 = *(a1 + 192);
    v75 = *(a1 + 112);
    *(v72 + 112) = *(a1 + 96);
    *(v72 + 128) = v75;
    v76 = *(a1 + 144);
    *(v72 + 144) = *(a1 + 128);
    *(v72 + 160) = v76;
    v77 = *(a1 + 48);
    *(v72 + 48) = *(a1 + 32);
    *(v72 + 64) = v77;
    v78 = *(a1 + 80);
    *(v72 + 80) = *(a1 + 64);
    *(v72 + 96) = v78;
    v79 = *(a1 + 16);
    *(v72 + 16) = *a1;
    *(v72 + 32) = v79;
    *(v72 + 208) = v74;
    *(v72 + 216) = a2;
    __chkstk_darwin(v72);
    *(&v95 - 2) = a1;
    *(&v95 - 1) = a2;
    sub_100005CAC(a1, v112);
    a1 = v100;
    sub_100014C4C();
    v112[0] = v113;
    sub_100014C2C();
    if (*(v111 + 16) > a2)
    {
      v80 = *(v111 + a2 + 32);

      v81 = swift_getKeyPath();
      v82 = swift_allocObject();
      *(v82 + 16) = (v80 & 1) == 0;
      v83 = (a1 + *(v70 + 36));
      *v83 = v81;
      v83[1] = sub_1000069D4;
      v83[2] = v82;
      v84 = v105;
      sub_1000063EC(v107, v105);
      v85 = v106;
      v86 = v95;
      sub_1000067A0(v108, v95, &qword_100021EA8, &qword_1000182D8);
      v87 = v97;
      sub_1000067A0(v85, v97, &qword_100021EA0, &qword_1000182D0);
      v88 = v98;
      sub_1000067A0(a1, v98, &qword_100021EA0, &qword_1000182D0);
      v89 = v96;
      sub_1000063EC(v84, v96);
      v90 = a1;
      v91 = sub_100005898(&qword_100021F48, &qword_1000183B8);
      sub_1000067A0(v86, v89 + v91[12], &qword_100021EA8, &qword_1000182D8);
      v92 = v89 + v91[16];
      *v92 = 0;
      *(v92 + 8) = 1;
      sub_1000067A0(v87, v89 + v91[20], &qword_100021EA0, &qword_1000182D0);
      sub_1000067A0(v88, v89 + v91[24], &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v90, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v85, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v108, &qword_100021EA8, &qword_1000182D8);
      sub_10000645C(v107, &qword_100021EC0, &qword_1000182F0);
      sub_10000645C(v88, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v87, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v86, &qword_100021EA8, &qword_1000182D8);
      return sub_10000645C(v105, &qword_100021EC0, &qword_1000182F0);
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  v94 = *(a1 + 16);
  type metadata accessor for AudioManager();
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100003824(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = qword_1000219A0;
  v8 = *(a1 + 8);

  if (v7 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = *(qword_100022C40 + 32);
  if (*(v9 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9 + 16 * a2;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  sub_10000DCBC(v11, v12);

  v18 = *(v4 + 152);
  LOBYTE(v17[0]) = 1;
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C3C();
  v18 = *(v4 + 120);
  v17[0] = a2;
  sub_100005898(&qword_100021F88, &qword_100018480);
  sub_100014C3C();
  sub_100003A84(a2);
  v7 = sub_100014BBC();
  v2 = *(v4 + 136);
  v3 = *(v4 + 144);
  v19 = v3;
  v20 = v2;
  *&v18 = v2;
  *(&v18 + 1) = v3;
  sub_1000067A0(&v20, v17, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v19, v17, &qword_100021FB8, &qword_1000184B0);
  v4 = sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v5 = v17[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v5 = sub_1000052B0(v5);
  }

  if (*(v5 + 2) > a2)
  {
    v13 = &v5[16 * a2];
    v14 = *(v13 + 5);
    *(v13 + 5) = v7;

    v17[0] = v2;
    v17[1] = v3;
    sub_100014C3C();
    sub_10000645C(&v20, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v19, &qword_100021FB8, &qword_1000184B0);
  }

  __break(1u);
LABEL_13:
  v16 = *(v4 + 16);
  type metadata accessor for AudioManager();
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100003A84(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v32 = v5;
  v33 = v4;
  v22 = v4;
  v23 = v5;
  sub_1000067A0(&v33, &aBlock, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v32, &aBlock, &qword_100021FB8, &qword_1000184B0);
  v6 = sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v7 = v31;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = sub_1000052B0(v7);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v7 + 2) > a1)
  {
    v7[16 * a1 + 32] = 1;
    aBlock = v4;
    v25 = v5;
    v30 = v7;
    sub_100014C3C();
    sub_10000645C(&v33, &qword_100021FB0, &qword_1000184A8);
    sub_10000645C(&v32, &qword_100021FB8, &qword_1000184B0);
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = *(v2 + 176);
    *(v9 + 176) = *(v2 + 160);
    *(v9 + 192) = v10;
    v11 = *(v2 + 192);
    v12 = *(v2 + 112);
    *(v9 + 112) = *(v2 + 96);
    *(v9 + 128) = v12;
    v13 = *(v2 + 144);
    *(v9 + 144) = *(v2 + 128);
    *(v9 + 160) = v13;
    v14 = *(v2 + 48);
    *(v9 + 48) = *(v2 + 32);
    *(v9 + 64) = v14;
    v15 = *(v2 + 80);
    *(v9 + 80) = *(v2 + 64);
    *(v9 + 96) = v15;
    v16 = *(v2 + 16);
    *(v9 + 16) = *v2;
    *(v9 + 32) = v16;
    *(v9 + 208) = v11;
    *(v9 + 216) = a1;
    v28 = sub_1000068CC;
    v29 = v9;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100007D30;
    v27 = &unk_10001D140;
    v17 = _Block_copy(&aBlock);
    sub_100005CAC(v2, &v22);

    v6 = [v8 scheduledTimerWithTimeInterval:1 repeats:v17 block:0.5];
    _Block_release(v17);
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v30 = v5;
    v31 = v4;
    v22 = v4;
    v23 = v5;
    sub_1000067A0(&v31, &aBlock, &qword_100021DE8, &qword_100017FE0);
    sub_1000067A0(&v30, &aBlock, &qword_100021FA0, &qword_100018498);
    sub_100005898(&qword_100021FA8, &qword_1000184A0);
    sub_100014C2C();
    v7 = v21;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  result = sub_10000529C(v7);
  v7 = result;
LABEL_5:
  if (*(v7 + 2) <= a1)
  {
    __break(1u);
  }

  else
  {
    v19 = &v7[8 * a1];
    v20 = *(v19 + 4);
    *(v19 + 4) = v6;

    aBlock = v4;
    v25 = v5;
    sub_100014C3C();
    sub_10000645C(&v31, &qword_100021DE8, &qword_100017FE0);
    return sub_10000645C(&v30, &qword_100021FA0, &qword_100018498);
  }

  return result;
}

uint64_t sub_100003DB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 136);
  v23 = *(a1 + 136);
  sub_100005898(&qword_100021FC0, qword_1000184B8);
  result = sub_100014C2C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v22;
  if (*(v22 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v22 + 16 * a2 + 32);

  sub_100014BEC();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v20 = sub_100014C0C();

  (*(v7 + 8))(v10, v6);
  sub_100014C8C();
  sub_1000149DC();
  v13 = v23;
  v14 = BYTE8(v23);
  v15 = v24;
  v16 = v25;
  v18 = v26;
  v17 = v27;
  v22 = v28;
  result = sub_100014C2C();
  if (*(v21 + 16) > a2)
  {
    v19 = *(v21 + 16 * a2 + 40);

    result = swift_getKeyPath();
    LOBYTE(v22) = v14;
    LOBYTE(v21) = v16;
    *a3 = v20;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v18;
    *(a3 + 48) = v17;
    *(a3 + 56) = result;
    *(a3 + 64) = v19;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100004034(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!*(a1 + 8))
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001498C();

  if ((v13[0] & 1) == 0)
  {
  }

  v4 = sub_100014D9C();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v5 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v4))
  {
    sub_100005CAC(v2, v13);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a2;
    *(v6 + 12) = 2048;
    v13[0] = *(v2 + 120);
    sub_100005898(&qword_100021F88, &qword_100018480);
    sub_100014C2C();
    *(v6 + 14) = v16;
    sub_100006770(v2);
    _os_log_impl(&_mh_execute_header, v5, v4, "View: audio audioPlaybackCompleted : Index%ld, selectedPlaybackIndex%ld", v6, 0x16u);
  }

  v13[0] = *(v2 + 152);
  LOBYTE(v16) = 0;
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C3C();
  v13[0] = *(v2 + 120);
  v16 = *(v2 + 120);
  sub_100005898(&qword_100021F88, &qword_100018480);
  sub_100014C2C();
  sub_100004378(v15[0]);
  v16 = v13[0];
  sub_100014C2C();
  v7 = v15[0];
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v17 = v9;
  v18 = v8;
  *&v16 = v8;
  *(&v16 + 1) = v9;
  sub_1000067A0(&v18, v15, &qword_100021F90, &qword_100018488);
  sub_1000067A0(&v17, v15, &qword_100021F98, &qword_100018490);
  v2 = sub_100005898(&qword_100021F40, &qword_1000183B0);
  sub_100014C2C();
  v10 = v15[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_1000052C4(v10);
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      if (v7 < *(v10 + 2))
      {
        v10[v7 + 32] = 1;
        v15[0] = v8;
        v15[1] = v9;
        v14 = v10;
        sub_100014C3C();
        sub_10000645C(&v18, &qword_100021F90, &qword_100018488);
        sub_10000645C(&v17, &qword_100021F98, &qword_100018490);
        sub_10000C188();
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  v12 = *(v2 + 16);
  type metadata accessor for AudioManager();
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100004378(unint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v19 = v6;
  v20 = v5;
  v15 = v5;
  v16 = v6;
  sub_1000067A0(&v20, &v13, &qword_100021DE8, &qword_100017FE0);
  sub_1000067A0(&v19, &v13, &qword_100021FA0, &qword_100018498);
  v7 = sub_100005898(&qword_100021FA8, &qword_1000184A0);
  v8 = &v15;
  sub_100014C2C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v13;
    if (v13[2] > a1)
    {
      v2 = v13[a1 + 4];

      [v2 invalidate];

      v15 = v5;
      v16 = v6;
      sub_100014C2C();
      v8 = v18;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  v8 = sub_10000529C(v8);
LABEL_4:
  if (v8[2] <= a1)
  {
    __break(1u);
  }

  else
  {
    v9 = &v8[a1];
    v10 = v9[4];
    v9[4] = 0;

    v13 = v5;
    v14 = v6;
    v17 = v8;
    sub_100014C3C();
    sub_10000645C(&v20, &qword_100021DE8, &qword_100017FE0);
    sub_10000645C(&v19, &qword_100021FA0, &qword_100018498);
    v7 = *(v3 + 136);
    v2 = *(v3 + 144);
    v17 = v2;
    v18 = v7;
    v15 = v7;
    v16 = v2;
    sub_1000067A0(&v18, &v13, &qword_100021FB0, &qword_1000184A8);
    sub_1000067A0(&v17, &v13, &qword_100021FB8, &qword_1000184B0);
    sub_100005898(&qword_100021FC0, qword_1000184B8);
    sub_100014C2C();
    v8 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }
  }

  result = sub_1000052B0(v8);
  v8 = result;
LABEL_6:
  if (v8[2] <= a1)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v8[2 * a1 + 4]) = 1;
    v13 = v7;
    v14 = v2;
    sub_100014C3C();
    sub_10000645C(&v18, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v17, &qword_100021FB8, &qword_1000184B0);
  }

  return result;
}

void sub_1000045F4(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1000219A0 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = a1;
  swift_once();
  a1 = v19;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *(qword_100022C40 + 32);
  if (*(v3 + 16) > a1)
  {
    v4 = v3 + 16 * a1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);

    sub_100006514(v5, v6);

    sub_100006690();
    v7 = sub_100014B4C();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    v15 = (a2 + *(sub_100005898(&qword_100021F70, &qword_100018438) + 36));
    v16 = *(sub_100005898(&qword_100021F78, &qword_100018440) + 28);
    v17 = enum case for Text.TruncationMode.tail(_:);
    v18 = sub_100014B3C();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v13;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + *(sub_100005898(&qword_100021F80, &qword_100018478) + 36)) = 256;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1000047C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014BEC();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v11 = sub_100014C0C();

  (*(v7 + 8))(v10, v6);
  sub_100014C8C();
  result = sub_1000149DC();
  v30 = 1;
  *&v29[6] = v31;
  *&v29[22] = v32;
  *&v29[38] = v33;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = *(qword_100022C40 + 32);
  if (*(v13 + 16) > a2)
  {
    v14 = v13 + 16 * a2;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
    v28 = *(a1 + 72);

    sub_100005898(&qword_100021F50, &qword_1000183C0);
    sub_100014C2C();
    v17 = v27;
    if (*(v27 + 16))
    {
      v18 = sub_100013224(v16, v15);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + v18);

        if (v21 == 1)
        {
          v22 = sub_100014BDC();
LABEL_11:
          v24 = v22;
          result = swift_getKeyPath();
          v25 = *&v29[16];
          *(a3 + 18) = *v29;
          *a3 = v11;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          *(a3 + 34) = v25;
          *(a3 + 50) = *&v29[32];
          *(a3 + 64) = *&v29[46];
          *(a3 + 72) = result;
          *(a3 + 80) = v24;
          return result;
        }

LABEL_10:
        v23 = [objc_opt_self() lightGrayColor];
        v22 = sub_100014B9C();
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100004A9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2;
  result = swift_once();
  a2 = v14;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = *(qword_100022C40 + 32);
  if (*(v5 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5 + 16 * a2;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = v4[9];
  v10 = v4[10];
  v19 = v10;
  v20 = v9;
  v16 = v9;
  v17 = v10;

  sub_1000067A0(&v20, v15, &qword_100021F58, &qword_1000183F8);
  sub_1000067A0(&v19, v15, &qword_100021F60, &qword_100018400);
  sub_100005898(&qword_100021F50, &qword_1000183C0);
  sub_100014C2C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v18;
  sub_1000053A0(a3 & 1, v8, v7, isUniquelyReferenced_nonNull_native);

  v15[0] = v9;
  v15[1] = v10;
  sub_100014C3C();
  sub_10000645C(&v20, &qword_100021F58, &qword_1000183F8);
  result = sub_10000645C(&v19, &qword_100021F60, &qword_100018400);
  v12 = v4[23];
  if (v12)
  {
    v13 = v4[24];
    v16 = v9;
    v17 = v10;
    sub_100014C2C();
    v12(v15[0]);
  }

  return result;
}

uint64_t sub_100004C74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014BEC();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v11 = sub_100014C0C();

  (*(v7 + 8))(v10, v6);
  sub_100014C8C();
  result = sub_1000149DC();
  v30 = 1;
  *&v29[6] = v31;
  *&v29[22] = v32;
  *&v29[38] = v33;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = *(qword_100022C40 + 32);
  if (*(v13 + 16) > a2)
  {
    v14 = v13 + 16 * a2;
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
    v28 = *(a1 + 72);

    sub_100005898(&qword_100021F50, &qword_1000183C0);
    sub_100014C2C();
    v17 = v27;
    if (*(v27 + 16))
    {
      v18 = sub_100013224(v16, v15);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + v18);

        if ((v21 & 1) == 0)
        {
          v22 = sub_100014BAC();
LABEL_11:
          v24 = v22;
          result = swift_getKeyPath();
          v25 = *&v29[16];
          *(a3 + 18) = *v29;
          *a3 = v11;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          *(a3 + 34) = v25;
          *(a3 + 50) = *&v29[32];
          *(a3 + 64) = *&v29[46];
          *(a3 + 72) = result;
          *(a3 + 80) = v24;
          return result;
        }

LABEL_10:
        v23 = [objc_opt_self() lightGrayColor];
        v22 = sub_100014B9C();
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100004F44(uint64_t a1)
{
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10001498C();

    if (v6)
    {
      v2 = sub_1000142B8(&_swiftEmptyArrayStorage);
      if (qword_1000219B8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_1000128F0(3, v2);
      }
    }
  }

  else
  {
    v5 = *(a1 + 16);
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000506C()
{
  sub_100014C9C();
  sub_1000149EC();
}

uint64_t sub_1000050D8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v8 = v4;
  v9 = v3;
  v7[2] = v3;
  v7[3] = v4;
  sub_1000067A0(&v9, v7, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v8, v7, &qword_100021FB8, &qword_1000184B0);
  sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v5 = v7[4];
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

  result = sub_1000052B0(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    *(v5 + 16 * a2 + 32) = (*(v5 + 16 * a2 + 32) & 1) == 0;
    v7[0] = v3;
    v7[1] = v4;
    sub_100014C3C();
    sub_10000645C(&v9, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v8, &qword_100021FB8, &qword_1000184B0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100005238@<X0>(uint64_t a1@<X8>)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = *(v1 + 24);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100002500(a1);
}

uint64_t sub_1000052D8(uint64_t a1)
{
  v2 = sub_100014B3C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100014A3C();
}

unint64_t sub_1000053A0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100013224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000132E0(v16, a4 & 1);
      v20 = *v5;
      result = sub_100013224(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_100014F0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100013C78();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_10000550C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return &_swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_100014D5C();
    v7 = v6;
    *(v6 + 16) = a3;
    v8 = v4 & 1;
    *(v6 + 32) = v8;
    *(v6 + 40) = a2;
    v9 = a3 - 1;
    if (v9)
    {
      v10 = (v6 + 56);
      do
      {
        *(v10 - 8) = v8;
        *v10 = a2;
        v10 += 2;

        --v9;
      }

      while (v9);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1000055B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioManager();
  sub_100005840();
  v2 = sub_100014A1C();
  v11 = v3;
  v12 = v2;
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100005898(&qword_100021DE8, &qword_100017FE0);
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100005898(&qword_100021DF0, &qword_100017FE8);
  sub_100014C1C();
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100022C40 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 16);
    v7 = sub_100014D5C();
    v7[2] = v5;
    bzero(v7 + 4, v5);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v8 = sub_100014BCC();
  v9 = sub_10000550C(0, v8, v5);

  *a1 = v5;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = &_swiftEmptyDictionarySingleton;
  *(a1 + 80) = 0;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v13;
  *(a1 + 112) = v14;
  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  *(a1 + 136) = v9;
  *(a1 + 144) = 0;
  *(a1 + 152) = v13;
  *(a1 + 160) = v14;
  *(a1 + 168) = v13;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = v14;
  return result;
}

unint64_t sub_100005840()
{
  result = qword_100021DE0;
  if (!qword_100021DE0)
  {
    type metadata accessor for AudioManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DE0);
  }

  return result;
}

uint64_t sub_100005898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000058E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000058EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicrophoneTestEvaluatingView.AlertType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicrophoneTestEvaluatingView.AlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100005AF8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100005B10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100005B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005C48()
{
  result = qword_100021DF8;
  if (!qword_100021DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DF8);
  }

  return result;
}

unint64_t sub_100005CE4()
{
  result = qword_100021E38;
  if (!qword_100021E38)
  {
    sub_100005D70(&qword_100021E28, &qword_100018248);
    sub_100005DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E38);
  }

  return result;
}

uint64_t sub_100005D70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005DB8()
{
  result = qword_100021E40;
  if (!qword_100021E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E40);
  }

  return result;
}

uint64_t sub_100005E4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005ED0()
{
  result = qword_100021E60;
  if (!qword_100021E60)
  {
    sub_100005D70(&qword_100021E08, &qword_100018208);
    sub_100006090(&qword_100021E68, &qword_100021E00, &qword_100018200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E60);
  }

  return result;
}

unint64_t sub_100005FA4()
{
  result = qword_100021ED0;
  if (!qword_100021ED0)
  {
    sub_100005D70(&qword_100021EC8, &qword_1000182F8);
    sub_100006350(&qword_100021ED8, &qword_100021EE0, &qword_100018300);
    sub_100006090(&qword_100021EE8, &qword_100021EF0, &qword_100018308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021ED0);
  }

  return result;
}

uint64_t sub_100006090(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000060D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100014A6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005898(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000061EC()
{
  result = qword_100021F18;
  if (!qword_100021F18)
  {
    sub_100005D70(&qword_100021F10, &qword_100018398);
    sub_1000062A4();
    sub_100006090(&qword_100021EE8, &qword_100021EF0, &qword_100018308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F18);
  }

  return result;
}

unint64_t sub_1000062A4()
{
  result = qword_100021F20;
  if (!qword_100021F20)
  {
    sub_100005D70(&qword_100021F28, &qword_1000183A0);
    sub_100006350(&qword_100021F30, &qword_100021F38, &qword_1000183A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F20);
  }

  return result;
}

uint64_t sub_100006350(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000063EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005898(&qword_100021EC0, &qword_1000182F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000645C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000064BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014A4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000064E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_100014A5C();
}

uint64_t sub_100006514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x74746F427466654CLL && a2 == 0xEA00000000006D6FLL;
  if (v3 || (sub_100014EFC() & 1) != 0)
  {
    v5 = 1413891404;
LABEL_7:
    v6 = v5 | 0x43494D5F00000000;
    v7 = 0xEF454E4F48504F52;
    return sub_100011930(v6, v7);
  }

  if (a1 == 0x746F427468676952 && a2 == 0xEB000000006D6F74 || (sub_100014EFC() & 1) != 0)
  {
    v8 = "RIGHT_MICROPHONE";
LABEL_12:
    v7 = ((v8 - 32) | 0x8000000000000000);
    v6 = 0xD000000000000010;
    return sub_100011930(v6, v7);
  }

  if (a1 == 0x746E6F7246 && a2 == 0xE500000000000000 || (sub_100014EFC() & 1) != 0)
  {
    v8 = "FRONT_MICROPHONE";
    goto LABEL_12;
  }

  if (a1 == 1801675074 && a2 == 0xE400000000000000 || (sub_100014EFC() & 1) != 0)
  {
    v5 = 1380009298;
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_100006690()
{
  result = qword_100021F68;
  if (!qword_100021F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F68);
  }

  return result;
}

uint64_t sub_1000066E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100014A8C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100006718(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100014A9C();
}

uint64_t sub_1000067A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006808(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[6];

  v5 = v1[8];

  v6 = v1[9];

  v7 = v1[10];

  v8 = v1[11];

  v9 = v1[12];

  v10 = v1[14];

  v11 = v1[15];

  v12 = v1[16];

  v13 = v1[18];

  v14 = v1[19];

  v15 = v1[20];

  v16 = v1[22];

  v17 = v1[24];

  if (v1[25])
  {
    v18 = v1[26];
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000068D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000690C()
{
  sub_100005D70(&qword_100021E18, &qword_100018218);
  sub_100005E4C(&qword_100021E50, &qword_100021E18, &qword_100018218, sub_100005E1C);
  return swift_getOpaqueTypeConformance2();
}

void *sub_1000069D8()
{
  type metadata accessor for MicrophoneTestSharedData();
  result = swift_allocObject();
  result[2] = 0x4008000000000000;
  result[3] = 100;
  result[4] = &_swiftEmptyArrayStorage;
  result[5] = 0;
  qword_100022C40 = result;
  return result;
}

uint64_t sub_100006A1C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *sub_100006A80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults;
  *&v1[v3] = sub_1000142B8(&_swiftEmptyArrayStorage);
  sub_100011930(0xD000000000000010, 0x8000000100016010);
  v4 = sub_100014CFC();

  sub_100011930(0xD000000000000016, 0x8000000100016030);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  v7 = objc_msgSendSuper2(&v10, "initWithTitle:detailText:symbolName:contentLayout:", v4, v5, v6, 2);

  v8 = *&v7[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults];
  *&v7[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults] = a1;

  return v7;
}

void sub_100006BB0()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [objc_opt_self() boldButton];
  sub_100011930(19279, 0xE200000000000000);
  v4 = sub_100014CFC();

  [v3 setTitle:v4 forState:0];

  sub_1000070A0();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_100014E3C();
  [v3 addAction:v6 forControlEvents:{64, 0, 0, 0, sub_100007124, v5}];

  v7 = [v1 buttonTray];
  [v7 addButton:v3];
}

uint64_t sub_100006D4C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v17 = OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults;
    v2 = *(result + OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    v7 = *(result + OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    while (v5)
    {
      v9 = v8;
LABEL_11:
      v10 = (*(v2 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
      v5 &= v5 - 1;
      v18 = *v10;
      v19 = v10[1];
      sub_100006690();
      if (sub_100014E6C())
      {

        v2 = *&v1[v17];
        v11 = qword_1000219B8;

        if (v11 != -1)
        {
          swift_once();
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = 900;
LABEL_19:
          sub_100012324(v14, v2);

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    v2 = *&v1[v17];
    v15 = qword_1000219B8;

    if (v15 == -1)
    {
      goto LABEL_17;
    }

LABEL_23:
    swift_once();
LABEL_17:
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v13 = v16;
      v14 = 0;
      goto LABEL_19;
    }

LABEL_20:
  }

  return result;
}

id sub_100007038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000070A0()
{
  result = qword_100022100;
  if (!qword_100022100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022100);
  }

  return result;
}

uint64_t sub_1000070EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000712C(uint64_t a1)
{
  v1[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_shouldStop] = 0;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000010, 0x8000000100016160);
  v2 = sub_100014CFC();

  v3 = sub_100014CFC();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithTitle:detailText:symbolName:contentLayout:", v2, 0, v3, v6);

  return v7;
}

void sub_100007258()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 navigationController];
  sub_100014D7C();
  v3 = v0;
  v4 = sub_100014D6C();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v3;
  v6 = v3;
  v7 = sub_100014D6C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100014C6C();
  type metadata accessor for AudioManager();
  sub_100005840();
  v9 = sub_100014A1C();
  sub_1000093C0(v9, v10, v2, v39, v40, v41, &v43);
  v11 = *&v6[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_audioManager];

  sub_10001495C();
  v12 = objc_allocWithZone(sub_100005898(&qword_100022140, &qword_100018578));
  v13 = sub_100014AEC();
  v14 = [v13 view];
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v6 contentView];
  [v16 addSubview:v15];

  sub_100005898(&qword_100022148, &qword_100018580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100018540;
  v18 = [v15 leadingAnchor];
  v19 = [v6 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 32) = v21;
  v22 = [v15 trailingAnchor];
  v23 = [v6 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v17 + 40) = v25;
  v26 = [v15 centerYAnchor];
  v27 = [v6 view];
  if (v27)
  {
    v28 = v27;
    v29 = objc_opt_self();
    v30 = [v28 centerYAnchor];

    v31 = [v26 constraintEqualToAnchor:v30];
    *(v17 + 48) = v31;
    sub_100007C80(0, &qword_100022150, NSLayoutConstraint_ptr);
    isa = sub_100014D4C().super.isa;

    [v29 activateConstraints:isa];

    v33 = [objc_opt_self() linkButton];
    sub_100011930(0x4345525F504F5453, 0xEE00474E4944524FLL);
    v34 = sub_100014CFC();

    [v33 setTitle:v34 forState:0];

    sub_100007C80(0, &qword_100022100, UIAction_ptr);
    v35 = swift_allocObject();
    *(v35 + 16) = v6;
    v36 = v6;
    v37 = sub_100014E3C();
    [v33 addAction:v37 forControlEvents:{64, 0, 0, 0, sub_100007D00, v35}];

    v38 = [v36 buttonTray];
    [v38 addButton:v33];

    v13 = v38;
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_100007840(uint64_t a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_shouldStop] = 1;
  sub_100011930(0xD00000000000001ELL, 0x80000001000161C0);
  sub_100011930(0xD00000000000001ELL, 0x80000001000161E0);
  v3 = sub_100014CFC();

  v4 = sub_100014CFC();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  sub_100011930(0xD000000000000026, 0x8000000100016200);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = a2;
  v8 = sub_100014CFC();

  v11[4] = sub_100007D08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100007D30;
  v11[3] = &unk_10001D230;
  v9 = _Block_copy(v11);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v5 addAction:v10];
  [v7 presentViewController:v5 animated:1 completion:0];
}

void sub_100007A84(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

id sub_100007BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007C28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100007CC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100007D30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100007D98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v84 = sub_100005898(&qword_100022160, &qword_100018680);
  v3 = *(v84 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v84);
  v6 = &v84 - v5;
  v7 = sub_100005898(&qword_100022168, &qword_100018688);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v84 - v10;
  v12 = sub_100005898(&qword_100022170, &qword_100018690);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v84 - v14;
  v87 = sub_100005898(&qword_100022178, &qword_100018698);
  v86 = *(v87 - 8);
  v16 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - v17;
  v89 = sub_100005898(&qword_100022180, &qword_1000186A0);
  v88 = *(v89 - 8);
  v18 = *(v88 + 64);
  __chkstk_darwin(v89);
  v97 = &v84 - v19;
  v93 = sub_100005898(&qword_100022188, &qword_1000186A8);
  v91 = *(v93 - 8);
  v20 = *(v91 + 64);
  __chkstk_darwin(v93);
  v90 = &v84 - v21;
  v95 = sub_100005898(&qword_100022190, &qword_1000186B0);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  __chkstk_darwin(v95);
  v92 = &v84 - v23;
  v98 = *(v1 + 32);
  sub_100005898(&qword_100022198, &qword_1000186B8);
  sub_100014C2C();
  v102 = 0;
  *&v98 = 0x3FF0000000000000;
  sub_100005898(&qword_1000221A0, &qword_1000186C0);
  sub_100009644();
  sub_1000096C8();
  sub_1000149CC();
  v24 = sub_100014AFC();
  v25 = [objc_opt_self() currentDevice];
  [v25 userInterfaceIdiom];

  sub_1000149BC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 32))(v11, v6, v84);
  v34 = v12;
  v35 = &v11[*(v8 + 44)];
  *v35 = v24;
  *(v35 + 1) = v27;
  *(v35 + 2) = v29;
  *(v35 + 3) = v31;
  *(v35 + 4) = v33;
  v35[40] = 0;
  v36 = swift_allocObject();
  v37 = *(v2 + 112);
  v36[7] = *(v2 + 96);
  v36[8] = v37;
  *(v36 + 137) = *(v2 + 121);
  v38 = *(v2 + 48);
  v36[3] = *(v2 + 32);
  v36[4] = v38;
  v39 = *(v2 + 80);
  v36[5] = *(v2 + 64);
  v36[6] = v39;
  v40 = *(v2 + 16);
  v36[1] = *v2;
  v36[2] = v40;
  sub_100009728(v11, v15);
  v41 = &v15[*(v12 + 36)];
  *v41 = sub_100009720;
  v41[1] = v36;
  v41[2] = 0;
  v41[3] = 0;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_100009798(v2, &v98);
    sub_10001498C();

    v101 = v98;
    v42 = swift_allocObject();
    v43 = *(v2 + 112);
    v42[7] = *(v2 + 96);
    v42[8] = v43;
    *(v42 + 137) = *(v2 + 121);
    v44 = *(v2 + 48);
    v42[3] = *(v2 + 32);
    v42[4] = v44;
    v45 = *(v2 + 80);
    v42[5] = *(v2 + 64);
    v42[6] = v45;
    v46 = *(v2 + 16);
    v42[1] = *v2;
    v42[2] = v46;
    sub_100009798(v2, &v98);
    v47 = sub_1000097E0();
    v48 = v85;
    sub_100014B8C();

    sub_10000645C(v15, &qword_100022170, &qword_100018690);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v49 = 0;
    if (v98)
    {
      v98 = *(v2 + 64);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v49 = v101;
    }

    v101 = v49;
    v50 = swift_allocObject();
    v51 = *(v2 + 112);
    v50[7] = *(v2 + 96);
    v50[8] = v51;
    *(v50 + 137) = *(v2 + 121);
    v52 = *(v2 + 48);
    v50[3] = *(v2 + 32);
    v50[4] = v52;
    v53 = *(v2 + 80);
    v50[5] = *(v2 + 64);
    v50[6] = v53;
    v54 = *(v2 + 16);
    v50[1] = *v2;
    v50[2] = v54;
    sub_100009798(v2, &v98);
    *&v98 = v34;
    *(&v98 + 1) = &type metadata for Bool;
    v99 = v47;
    v100 = &protocol witness table for Bool;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v87;
    sub_100014B8C();

    (*(v86 + 8))(v48, v56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v57 = 0;
    v58 = v90;
    if (v98 == 1)
    {
      v98 = *(v2 + 80);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v57 = v101;
    }

    v101 = v57;
    v59 = swift_allocObject();
    v60 = *(v2 + 112);
    v59[7] = *(v2 + 96);
    v59[8] = v60;
    *(v59 + 137) = *(v2 + 121);
    v61 = *(v2 + 48);
    v59[3] = *(v2 + 32);
    v59[4] = v61;
    v62 = *(v2 + 80);
    v59[5] = *(v2 + 64);
    v59[6] = v62;
    v63 = *(v2 + 16);
    v59[1] = *v2;
    v59[2] = v63;
    sub_100009798(v2, &v98);
    *&v98 = v56;
    *(&v98 + 1) = &type metadata for Bool;
    v99 = OpaqueTypeConformance2;
    v100 = &protocol witness table for Bool;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v89;
    v66 = v97;
    sub_100014B8C();

    (*(v88 + 8))(v66, v65);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v67 = 0;
    if (v98 == 1)
    {
      v98 = *(v2 + 96);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v67 = v101;
    }

    v101 = v67;
    v68 = swift_allocObject();
    v69 = *(v2 + 112);
    v68[7] = *(v2 + 96);
    v68[8] = v69;
    *(v68 + 137) = *(v2 + 121);
    v70 = *(v2 + 48);
    v68[3] = *(v2 + 32);
    v68[4] = v70;
    v71 = *(v2 + 80);
    v68[5] = *(v2 + 64);
    v68[6] = v71;
    v72 = *(v2 + 16);
    v68[1] = *v2;
    v68[2] = v72;
    sub_100009798(v2, &v98);
    *&v98 = v65;
    *(&v98 + 1) = &type metadata for Bool;
    v99 = v64;
    v100 = &protocol witness table for Bool;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = v92;
    v75 = v93;
    sub_100014B8C();

    (*(v91 + 8))(v58, v75);
    v98 = *(v2 + 120);
    LOBYTE(v99) = *(v2 + 136);
    sub_100005898(&qword_1000221D0, &qword_1000187E8);
    sub_100014C5C();
    v76 = swift_allocObject();
    v77 = *(v2 + 112);
    v76[7] = *(v2 + 96);
    v76[8] = v77;
    *(v76 + 137) = *(v2 + 121);
    v78 = *(v2 + 48);
    v76[3] = *(v2 + 32);
    v76[4] = v78;
    v79 = *(v2 + 80);
    v76[5] = *(v2 + 64);
    v76[6] = v79;
    v80 = *(v2 + 16);
    v76[1] = *v2;
    v76[2] = v80;
    sub_100009798(v2, &v98);
    *&v98 = v75;
    *(&v98 + 1) = &type metadata for Bool;
    v99 = v73;
    v100 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v81 = v95;
    sub_100014B8C();

    return (*(v94 + 8))(v74, v81);
  }

  else
  {
    v83 = *(v2 + 8);
    sub_100009798(v2, &v98);
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008A84@<X0>(uint64_t a1@<X8>)
{
  sub_100011930(0xD000000000000013, 0x8000000100016250);
  sub_100006690();
  v2 = sub_100014B4C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100014B2C();
  result = sub_1000149BC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_100008B3C(uint64_t *a1)
{
  sub_100008FF0();
  sub_100009A94();
  if (*a1)
  {
    v2 = *a1;

    sub_10000C648();
  }

  else
  {
    v4 = a1[1];
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008BBC(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_10001498C();

    if (v9 & 1) != 0 && (v10 = *(a1 + 48), sub_100005898(&qword_100021F00, &qword_1000187F0), sub_100014C2C(), (v8))
    {
      v3 = *(a1 + 112);
      if (v3)
      {
        v4 = objc_allocWithZone(type metadata accessor for MicrophoneTestEvaluatingViewController());
        v5 = sub_1000102D8(v2);
        [v3 pushViewController:v5 animated:1];
      }

      else
      {
      }

      sub_10000C188();
    }

    else
    {
    }
  }

  else
  {
    v7 = *(a1 + 8);
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008D0C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10001498C();

    if (v10)
    {
      v6 = sub_1000142B8(&_swiftEmptyArrayStorage);
      if (qword_1000219B8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        sub_1000128F0(a4, v6);
      }
    }
  }

  else
  {
    v9 = a1[1];
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008E34(uint64_t a1)
{
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  sub_100005898(&qword_1000221D0, &qword_1000187E8);
  result = sub_100014C5C();
  if (v2 == 1)
  {
    return sub_100008EA0();
  }

  return result;
}

uint64_t sub_100008EA0()
{
  v5 = *(v0 + 1);
  sub_100005898(&qword_1000221D8, &qword_1000187F8);
  sub_100014C2C();
  [v4 invalidate];

  if (*v0)
  {
    v1 = *v0;

    sub_10000D238();
    sub_10000C188();
    v6 = *(v0 + 3);
    sub_100005898(&qword_100021F00, &qword_1000187F0);
    sub_100014C3C();
    v7 = *(v0 + 4);
    sub_100014C3C();
    v8 = *(v0 + 5);
    sub_100014C3C();
    v9 = *(v0 + 6);
    sub_100014C3C();
    sub_10000EBB8();
  }

  else
  {
    v3 = v0[1];
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008FF0()
{
  v1 = v0;
  v16[0] = v0[2];
  aBlock[0] = 0;
  sub_100005898(&qword_100022198, &qword_1000186B8);
  result = sub_100014C3C();
  if (qword_1000219A0 != -1)
  {
    result = swift_once();
  }

  v3 = *(qword_100022C40 + 16);
  v4 = v3 / 100.0;
  v5 = v3 / (v3 / 100.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = v1[7];
    *(v9 + 112) = v1[6];
    *(v9 + 128) = v10;
    *(v9 + 137) = *(v1 + 121);
    v11 = v1[3];
    *(v9 + 48) = v1[2];
    *(v9 + 64) = v11;
    v12 = v1[5];
    *(v9 + 80) = v1[4];
    *(v9 + 96) = v12;
    v13 = v1[1];
    *(v9 + 16) = *v1;
    *(v9 + 32) = v13;
    *(v9 + 160) = v7;
    *(v9 + 168) = v6;
    aBlock[4] = sub_100009DA0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007D30;
    aBlock[3] = &unk_10001D438;
    v14 = _Block_copy(aBlock);
    sub_100009798(v1, v16);

    v15 = [v8 scheduledTimerWithTimeInterval:1 repeats:v14 block:{v4, v16[0]}];
    _Block_release(v14);
    v16[0] = v1[1];
    aBlock[0] = v15;
    sub_100005898(&qword_1000221D8, &qword_1000187F8);
    sub_100014C3C();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_10000924C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v14 = *(a2 + 2);
  v15 = *(a3 + 16) / a4;
  sub_100005898(&qword_100022198, &qword_1000186B8);
  sub_100014C3C();
  result = swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a3 + 16) = v11;
  if (v11 < a4)
  {
    return result;
  }

  if (!*a2)
  {
LABEL_7:
    v13 = a2[1];
    type metadata accessor for AudioManager();
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
    return result;
  }

  v12 = *a2;

  sub_10000D238();

  return [a1 invalidate];
}

uint64_t sub_10000936C@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  *v10 = v1[7];
  *&v10[9] = *(v1 + 121);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100007D98(a1);
}

uint64_t sub_1000093C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_100005898(&qword_100022158, &qword_100018590);
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  result = sub_100014C1C();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  *(a7 + 32) = v15;
  *(a7 + 40) = v16;
  *(a7 + 48) = v15;
  *(a7 + 56) = v16;
  *(a7 + 64) = v15;
  *(a7 + 72) = v16;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = v15;
  *(a7 + 104) = v16;
  *(a7 + 112) = a3;
  *(a7 + 120) = a4;
  *(a7 + 128) = a5;
  *(a7 + 136) = a6;
  return result;
}

__n128 sub_100009538(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000956C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000095B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100009644()
{
  result = qword_1000221A8;
  if (!qword_1000221A8)
  {
    sub_100005D70(&qword_1000221A0, &qword_1000186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221A8);
  }

  return result;
}

unint64_t sub_1000096C8()
{
  result = qword_1000221B0;
  if (!qword_1000221B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221B0);
  }

  return result;
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005898(&qword_100022168, &qword_100018688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000097E0()
{
  result = qword_1000221B8;
  if (!qword_1000221B8)
  {
    sub_100005D70(&qword_100022170, &qword_100018690);
    sub_10000986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221B8);
  }

  return result;
}

unint64_t sub_10000986C()
{
  result = qword_1000221C0;
  if (!qword_1000221C0)
  {
    sub_100005D70(&qword_100022168, &qword_100018688);
    sub_1000098F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221C0);
  }

  return result;
}

unint64_t sub_1000098F8()
{
  result = qword_1000221C8;
  if (!qword_1000221C8)
  {
    sub_100005D70(&qword_100022160, &qword_100018680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221C8);
  }

  return result;
}

uint64_t sub_100009A04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  return _swift_deallocObject(v0, 153, 7);
}

id sub_100009A94()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v14 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryRecord mode:AVAudioSessionModeDefault options:0 error:&v14];

  v3 = v14;
  if (v2 && (v4 = v14, v5 = [v0 sharedInstance], v14 = 0, v6 = objc_msgSend(v5, "setActive:withOptions:error:", 1, 0, &v14), v5, v3 = v14, v6))
  {

    return v3;
  }

  else
  {
    v8 = v3;
    sub_10001489C();

    swift_willThrow();
    v9 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v10 = qword_100022C48;
    if (os_log_type_enabled(qword_100022C48, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v10, v9, "Failed to set up the recording session: %@", v11, 0xCu);
      sub_10000645C(v12, &unk_1000221E0, &unk_100018800);
    }
  }
}

uint64_t sub_100009D10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100009DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DC4()
{
  sub_100005D70(&qword_100022190, &qword_1000186B0);
  sub_100005D70(&qword_100022188, &qword_1000186A8);
  sub_100005D70(&qword_100022180, &qword_1000186A0);
  sub_100005D70(&qword_100022178, &qword_100018698);
  sub_100005D70(&qword_100022170, &qword_100018690);
  sub_1000097E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009F38(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration;
  *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration) = 0x4008000000000000;
  v6 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey);
  v5 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8);
  if (*(a1 + 16) && (v7 = sub_100013224(*(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey), *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8)), (v8 & 1) != 0) && (sub_10000AEB4(*(a1 + 56) + 32 * v7, v66), (swift_dynamicCast() & 1) != 0) && (v65 >= 1.0 ? (v9 = v65 > 10.0) : (v9 = 1), !v9))
  {
    *(v1 + v4) = v65;
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_100014DAC();
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100018810;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_10000ACE8();
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    sub_10000AD3C();

    v11 = sub_100014E4C();
    sub_10001493C();

    if (!*(a1 + 16))
    {
LABEL_15:
      v14 = sub_1000142B8(&_swiftEmptyArrayStorage);
      goto LABEL_16;
    }
  }

  v12 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey + 8));
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v12, v66);
  sub_100005898(&qword_1000222F8, &qword_100018850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *&v65;
  if (!*(*&v65 + 16))
  {

    goto LABEL_15;
  }

LABEL_16:
  v15 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringProperties);
  *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringProperties) = v14;

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_45;
  }

  v18 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8));
  if ((v19 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v18, v66);
  sub_100005898(&qword_1000222E8, &qword_100018840);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (!*(*&v65 + 16))
  {

LABEL_45:
    sub_100014DBC();
LABEL_46:
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100018810;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_10000ACE8();
    *(v41 + 32) = v17;
    *(v41 + 40) = v16;
    sub_10000AD3C();

    v42 = sub_100014E4C();
    sub_10001493C();

    return 0;
  }

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v20 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8));
  if ((v21 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v20, v66);
  sub_100005898(&qword_1000222F0, &qword_100018848);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!*(*&v65 + 16))
  {

LABEL_48:

    sub_100014DAC();
    goto LABEL_46;
  }

  v64 = *(*&v65 + 16);
  if (v64)
  {
    v22 = 0;
    v23 = &_swiftEmptyArrayStorage;
    while (2)
    {
      if (v22 >= *(*&v65 + 16))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v24 = *(*&v65 + 32 + 8 * v22++);
      v25 = 1 << *(*&v65 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(*&v65 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      if (!v27)
      {
        goto LABEL_34;
      }

      do
      {
LABEL_32:
        while (1)
        {
          v30 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v31 = v30 | (v29 << 6);
          if (*(*(*&v65 + 56) + 8 * v31) == v24)
          {
            break;
          }

          if (!v27)
          {
            goto LABEL_34;
          }
        }

        v33 = (*(*&v65 + 48) + 16 * v31);
        v62 = *v33;
        v63 = v33[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10000ABDC(0, *(v23 + 2) + 1, 1, v23);
        }

        v34 = v23;
        v35 = *(v23 + 2);
        v36 = v34;
        v37 = *(v34 + 3);
        v38 = v35 + 1;
        if (v35 >= v37 >> 1)
        {
          v40 = sub_10000ABDC((v37 > 1), v35 + 1, 1, v36);
          v38 = v35 + 1;
          v36 = v40;
        }

        *(v36 + 2) = v38;
        v39 = &v36[16 * v35];
        v23 = v36;
        *(v39 + 4) = v62;
        *(v39 + 5) = v63;
      }

      while (v27);
      while (1)
      {
LABEL_34:
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v32 >= v28)
        {
          break;
        }

        v27 = *(*&v65 + 64 + 8 * v32);
        ++v29;
        if (v27)
        {
          v29 = v32;
          goto LABEL_32;
        }
      }

      if (v22 != v64)
      {
        continue;
      }

      break;
    }
  }

  else
  {

    v23 = &_swiftEmptyArrayStorage;
  }

  if (qword_1000219A0 != -1)
  {
LABEL_67:
    swift_once();
  }

  v44 = qword_100022C40;
  v45 = *(v23 + 2);
  if (v45)
  {
    v66[0] = &_swiftEmptyArrayStorage;
    sub_10000AD88(0, v45, 0);
    v46 = v66[0];
    v47 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping);
    v48 = (v23 + 40);
    do
    {
      v49 = *v48;
      if (*(v47 + 16))
      {
        v50 = *(v48 - 1);
        v51 = *v48;

        v52 = sub_100013224(v50, v49);
        if (v53)
        {
          v54 = (*(v47 + 56) + 16 * v52);
          v55 = *v54;
          v56 = v54[1];
        }

        else
        {
          v55 = 0;
          v56 = 0xE000000000000000;
        }
      }

      else
      {
        v55 = 0;
        v56 = 0xE000000000000000;
        v57 = *v48;
      }

      v66[0] = v46;
      v59 = v46[2];
      v58 = v46[3];
      if (v59 >= v58 >> 1)
      {
        sub_10000AD88((v58 > 1), v59 + 1, 1);
        v46 = v66[0];
      }

      v46[2] = v59 + 1;
      v60 = &v46[2 * v59];
      *(v60 + 4) = v55;
      *(v60 + 5) = v56;
      v48 += 2;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = &_swiftEmptyArrayStorage;
  }

  v61 = *(v44 + 32);
  *(v44 + 32) = v46;

  return 1;
}

uint64_t sub_10000A6A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100014CEC();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;

  return 1;
}

id sub_10000A704()
{
  *&v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_stringProperties] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequence] = &_swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey];
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000100016290;
  v2 = &v0[OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x80000001000162B0;
  v3 = &v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey];
  *v3 = 0x65636E6575716573;
  *(v3 + 1) = 0xE800000000000000;
  v4 = &v0[OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey];
  *v4 = 0x6D6F437475706E69;
  *(v4 + 1) = 0xEF73746E656E6F70;
  v5 = OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping;
  v6 = sub_1000142B8(&off_10001CCB8);
  sub_100005898(&qword_100022308, &qword_100018860);
  swift_arrayDestroy();
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_predicates] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_parameters] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_specifications] = &_swiftEmptyDictionarySingleton;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10000A8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10000A9DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022318, &unk_100018870);
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

char *sub_10000AAE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022310, &qword_100018868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000ABDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022300, &qword_100018858);
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

unint64_t sub_10000ACE8()
{
  result = qword_1000222D8;
  if (!qword_1000222D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000222D8);
  }

  return result;
}

unint64_t sub_10000AD3C()
{
  result = qword_1000222E0;
  if (!qword_1000222E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000222E0);
  }

  return result;
}

char *sub_10000AD88(char *a1, int64_t a2, char a3)
{
  result = sub_10000ADA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000ADA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022300, &qword_100018858);
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

uint64_t sub_10000AEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_10000AF14(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600436MicrophoneTestStartingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000016, 0x8000000100016490);
  v3 = sub_100014CFC();

  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = 0xD000000000000029;
  }

  else
  {
    v7 = 0xD00000000000002BLL;
  }

  if (v6 == 1)
  {
    v8 = "INSTRUCTIONS_SECONDARY_IPAD";
  }

  else
  {
    v8 = "AUDIO_RECORDING_HEADER";
  }

  v9 = sub_100011930(v7, (v8 | 0x8000000000000000));
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_100014D3C(v26);

  v27._countAndFlagsBits = 657930;
  v27._object = 0xE300000000000000;
  sub_100014D3C(v27);
  v12 = [v4 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    v14 = 0xD00000000000002BLL;
  }

  else
  {
    v14 = 0xD00000000000002DLL;
  }

  if (v13 == 1)
  {
    v15 = "INSTRUCTIONS_SECONDARY_IPHONE";
  }

  else
  {
    v15 = "INSTRUCTIONS_PRIMARY_IPHONE";
  }

  v16 = sub_100011930(v14, (v15 | 0x8000000000000000));
  v18 = v17;

  v28._countAndFlagsBits = v16;
  v28._object = v18;
  sub_100014D3C(v28);

  v19 = sub_100014CFC();

  v20 = sub_100014CFC();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  v21 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:symbolName:contentLayout:", v3, v19, v20, 2);

  return v21;
}

void sub_10000B154()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [objc_opt_self() boldButton];
  sub_100011930(0x45525F5452415453, 0xEF474E4944524F43);
  v2 = sub_100014CFC();

  [v1 setTitle:v2 forState:0];

  sub_1000070A0();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v14 = v3;
  v5 = sub_100014E3C();
  [v1 addAction:v5 forControlEvents:{64, 0, 0, 0, sub_10000B8DC, v14}];

  v6 = [objc_opt_self() linkButton];
  sub_100011930(0x455F4C45434E4143, 0xEB00000000544958);
  v7 = sub_100014CFC();

  [v6 setTitle:v7 forState:0];

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = v4;
  v10 = v6;
  v11 = sub_100014E3C();
  [v10 addAction:v11 forControlEvents:{64, 0, 0, 0, sub_10000B924, v8}];

  v12 = [v9 buttonTray];
  [v12 addButton:v1];

  v13 = [v9 buttonTray];
  [v13 addButton:v10];
}

void sub_10000B40C(int a1, char *a2)
{
  v3 = [a2 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = *&a2[OBJC_IVAR____TtC15Diagnostic_600436MicrophoneTestStartingViewController_audioManager];
    v6 = objc_allocWithZone(type metadata accessor for MicrophoneTestRecordingViewController());

    v8 = sub_10000712C(v7);
    [v4 pushViewController:v8 animated:1];
  }
}

void sub_10000B4D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100011930(0xD000000000000018, 0x80000001000165B0);
  sub_100011930(0xD000000000000018, 0x80000001000165D0);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setSourceItem:a2];
  }

  sub_100011930(5457241, 0xE300000000000000);
  v10 = sub_100014CFC();

  v13[4] = sub_10000B6FC;
  v13[5] = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100007D30;
  v13[3] = &unk_10001D4B0;
  v11 = _Block_copy(v13);

  v12 = [objc_opt_self() actionWithTitle:v10 style:2 handler:v11];
  _Block_release(v11);

  [v7 addAction:v12];
  [a3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_10000B6FC()
{
  v0 = sub_1000142B8(&_swiftEmptyArrayStorage);
  if (qword_1000219B8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100012324(-900, v0);
  }
}

id sub_10000B83C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B8A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B944()
{
  sub_100007C80(0, &qword_1000222E0, OS_os_log_ptr);
  result = sub_100014E5C();
  qword_100022C48 = result;
  return result;
}

uint64_t sub_10000BA4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001498C();

  return v1;
}

uint64_t sub_10000BAB8()
{
  v1 = sub_10001492C();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  __chkstk_darwin(v1);
  v42 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100014DFC();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100014DEC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100014CCC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100005898(&qword_100022660, &qword_100018908);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v35 - v14;
  v16 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__stopRecordingCompleted;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17 = *(v12 + 32);
  v17(v0 + v16, v15, v11);
  v18 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackCompleted;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17(v0 + v18, v15, v11);
  v19 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStartRecordingFailed;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17(v0 + v19, v15, v11);
  v20 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStopRecordingFailed;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17(v0 + v20, v15, v11);
  v21 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackFailed;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17(v0 + v21, v15, v11);
  v22 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__createAudioFileFailed;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v38 = v0;
  v17(v0 + v22, v15, v11);
  v23 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__readAudioFileFailed;
  LOBYTE(v46) = 0;
  sub_10001497C();
  v17(v0 + v23, v15, v11);
  v37 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioInputQueue;
  v35[0] = sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
  v36 = "com.apple.Diagnostics";
  sub_100014CBC();
  v46 = &_swiftEmptyArrayStorage;
  v35[2] = sub_10000FBAC(&qword_100022670, &type metadata accessor for OS_dispatch_queue.Attributes);
  v35[1] = sub_100005898(&qword_100022678, &qword_100018910);
  sub_10000FBF4(&qword_100022680, &qword_100022678, &qword_100018910);
  sub_100014E7C();
  v24 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v25 = *(v45 + 104);
  v45 += 104;
  v26 = v40;
  v27 = v41;
  v25(v40, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  v28 = sub_100014E2C();
  v29 = v38;
  *(v38 + v37) = v28;
  v36 = "sticsService.audioInputQueue";
  v37 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue;
  sub_100014CBC();
  v46 = &_swiftEmptyArrayStorage;
  sub_100014E7C();
  v25(v26, v24, v27);
  *(v29 + v37) = sub_100014E2C();
  v30 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest;
  *(v29 + v30) = [objc_allocWithZone(AVAudioDeviceTest) init];
  v31 = v42;
  sub_1000148BC();
  sub_1000148DC();
  (*(v43 + 8))(v31, v44);
  v32 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  *(v29 + v32) = [objc_allocWithZone(AVAudioDeviceTestSequence) init];
  [*(v29 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest) setProcessSequenceAsynchronously:1];
  [*(v29 + v32) setOutputMode:0];
  [*(v29 + v32) setPriority:0];
  LODWORD(v33) = 1.0;
  [*(v29 + v32) setVolume:v33];
  [*(v29 + v32) setNumberOfChannels:4];
  return v29;
}

uint64_t sub_10000C188()
{
  v1 = sub_100014CAC();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100014CCC();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
  v9 = sub_100014E0C();
  aBlock[4] = sub_100010204;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D780;
  v10 = _Block_copy(aBlock);

  sub_100014CBC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v10);

  (*(v13 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v12);
}

uint64_t sub_10000C454()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

uint64_t sub_10000C648()
{
  v1 = v0;
  v2 = sub_100014CAC();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014CCC();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001492C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  sub_10000EE90();
  sub_1000148EC();
  sub_1000148FC();
  v16 = *(v9 + 8);
  v16(v13, v8);
  v17 = sub_10001491C();
  v19 = v18;
  v16(v15, v8);
  v20 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  v21 = *(v1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence);
  v22 = sub_100014CFC();
  [v21 setMicrophone:v22];

  sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  sub_100005898(&qword_1000222D0, &qword_100018838);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000188B0;
  v24 = *(v1 + v20);
  v25 = [v24 description];
  v26 = sub_100014D0C();
  v28 = v27;

  *(v23 + 56) = &type metadata for String;
  v29 = sub_10000ACE8();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v29;
  *(v23 + 64) = v29;
  *(v23 + 72) = v17;
  *(v23 + 80) = v19;

  sub_10001494C();

  v30 = *(v1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioInputQueue);
  v31 = swift_allocObject();
  v31[2] = v1;
  v31[3] = v17;
  v31[4] = v19;
  aBlock[4] = sub_100010130;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D6E0;
  v32 = _Block_copy(aBlock);

  v33 = v38;
  sub_100014CBC();
  v44 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  v34 = v41;
  v35 = v43;
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v32);
  (*(v42 + 8))(v34, v35);
  (*(v39 + 8))(v33, v40);
}

void sub_10000CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  v7 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence);
  v8 = sub_100014CFC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_10001017C;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000D188;
  v11[3] = &unk_10001D730;
  v10 = _Block_copy(v11);

  [v6 startRecording:v7 filePath:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10000CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100014CAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100014CCC();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = a2;
    v28 = v16;
    v29 = v15;
    v30 = v9;
    swift_errorRetain();
    sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_100005898(&qword_1000222D0, &qword_100018838);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100018810;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v20 = sub_100014D1C();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000ACE8();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_10001494C();

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v23 = sub_100014E0C();
    aBlock[4] = sub_100010188;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100010294;
    aBlock[3] = &unk_10001D758;
    v24 = _Block_copy(aBlock);

    sub_100014CBC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v24);

    (*(v30 + 8))(v12, v8);
    return (*(v28 + 8))(v18, v29);
  }

  else
  {
    sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_100005898(&qword_1000222D0, &qword_100018838);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100018810;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_10000ACE8();
    *(v26 + 32) = a3;
    *(v26 + 40) = a4;

    sub_10001494C();
  }
}

void sub_10000D188(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000D1F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000D238()
{
  v1 = sub_100014CAC();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100014CCC();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v16 = qword_100022C48;
  sub_10001494C();
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v9 = qword_100022C40;
  if (!*(qword_100022C40 + 40))
  {
    v10 = [objc_opt_self() exclavesStatusForSensors:1];
    v11 = sub_100014CEC();

    v12 = *(v9 + 40);
    *(v9 + 40) = v11;
  }

  v13 = *(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioInputQueue);
  aBlock[4] = sub_100010028;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D618;
  v14 = _Block_copy(aBlock);

  sub_100014CBC();
  v19 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v14);
  (*(v18 + 8))(v4, v1);
  (*(v5 + 8))(v8, v17);

  sub_100014DCC();
  return sub_10001494C();
}

void sub_10000D614(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  v3[4] = sub_100010030;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000D188;
  v3[3] = &unk_10001D640;
  v2 = _Block_copy(v3);

  [v1 stopRecording:v2];
  _Block_release(v2);
}

uint64_t sub_10000D6E4(void **a1, uint64_t a2)
{
  v4 = sub_100014CAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100014CCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  if (a1)
  {
    v25 = v10;
    v26 = v5;
    swift_errorRetain();
    sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_100005898(&qword_1000222D0, &qword_100018838);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100018810;
    aBlock = a1;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v16 = sub_100014D1C();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000ACE8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_10001494C();

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v19 = sub_100014E0C();
    v32 = sub_100010064;
    v33 = a2;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100010294;
    v31 = &unk_10001D690;
    v20 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v20);

    (*(v26 + 8))(v8, v4);
    return (*(v25 + 8))(v14, v27);
  }

  else
  {
    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v26 = sub_100014E0C();
    v32 = sub_100010038;
    v33 = a2;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100010294;
    v31 = &unk_10001D668;
    v22 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    v23 = v26;
    sub_100014E1C();
    _Block_release(v22);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v27);
    sub_100014D9C();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    return sub_10001494C();
  }
}

uint64_t sub_10000DCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100014CAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100014CCC();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_10000FDE4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D578;
  v16 = _Block_copy(aBlock);

  sub_100014CBC();
  v20 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_10000DF94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10001492C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  [v14 stopPlayback];
  v15 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  [*(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence) setOutputMode:1];

  if (sub_10000FEDC(a2, a3) == 5)
  {
    sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_10001494C();
  }

  else
  {
    v43 = v14;
    v16 = *(a1 + v15);
    v17 = sub_100014CFC();
    [v16 setMicrophone:v17];

    v18 = *(a1 + v15);
    sub_1000148EC();
    sub_1000148FC();
    v19 = *(v7 + 8);
    v19(v11, v6);
    sub_1000148CC(v20);
    v22 = v21;
    v42 = v19;
    v19(v13, v6);
    [v18 setStimulusURL:v22];

    v41 = sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v23 = v6;
    v40 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000188B0;
    v25 = [*(a1 + v15) microphone];
    if (v25)
    {
      v26 = v25;
      v27 = sub_100014D0C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    *(v24 + 56) = &type metadata for String;
    v30 = sub_10000ACE8();
    *(v24 + 64) = v30;
    v31 = 0x8000000100016910;
    v32 = 0xD000000000000010;
    if (v29)
    {
      v32 = v27;
      v31 = v29;
    }

    *(v24 + 32) = v32;
    *(v24 + 40) = v31;
    v33 = [*(a1 + v15) stimulusURL];
    sub_10001490C();

    v34 = sub_1000148AC();
    v36 = v35;
    v42(v13, v23);
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v30;
    *(v24 + 72) = v34;
    *(v24 + 80) = v36;
    sub_10001494C();

    v37 = *(a1 + v15);
    aBlock[4] = sub_10000FF28;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D188;
    aBlock[3] = &unk_10001D5A0;
    v38 = _Block_copy(aBlock);
    v39 = v37;

    [v43 playback:v39 filePath:0 completion:v38];
    _Block_release(v38);
  }
}

uint64_t sub_10000E47C(uint64_t a1, uint64_t a2)
{
  v50 = sub_10001492C();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = sub_100014CAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100014CCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v16;
  if (v19)
  {
    v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v14;
    v21 = a2;
    v47 = v15;
    v48 = v11;
    v49 = v10;
    v22 = v19;
    swift_errorRetain();
    v43 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v42 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000188B0;
    aBlock = v22;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v24 = sub_100014D1C();
    v44 = v22;
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    v27 = sub_10000ACE8();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_1000148EC();
    sub_1000148FC();
    v28 = *(v3 + 8);
    v29 = v7;
    v30 = v50;
    v28(v29, v50);
    v31 = sub_1000148AC();
    v33 = v32;
    v28(v9, v30);
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v27;
    *(v23 + 72) = v31;
    *(v23 + 80) = v33;
    sub_10001494C();

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v34 = sub_100014E0C();
    v56 = sub_10000FF5C;
    v57 = v21;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100010294;
    v55 = &unk_10001D5F0;
    v35 = _Block_copy(&aBlock);

    v36 = v45;
    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    v37 = v46;
    v38 = v49;
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v35);

    (*(v48 + 8))(v37, v38);
    (*(v51 + 8))(v36, v47);
    sub_10000F470();
    sub_10000C188();
  }

  else
  {
    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v50 = sub_100014E0C();
    v56 = sub_10000FF30;
    v57 = a2;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100010294;
    v55 = &unk_10001D5C8;
    v40 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    v41 = v50;
    sub_100014E1C();
    _Block_release(v40);

    (*(v11 + 8))(v14, v10);
    (*(v51 + 8))(v20, v15);
    sub_100014D9C();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    return sub_10001494C();
  }
}

uint64_t sub_10000EBF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100014CAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100014CCC();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_100014CBC();
  v18 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_10000EE90()
{
  v1 = v0;
  v2 = sub_100014CAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014CCC();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F470();
  sub_10000C188();
  v11 = [objc_opt_self() defaultManager];
  sub_1000148CC(&off_100022000);
  v13 = v12;
  aBlock[0] = 0;
  v14 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:0 attributes:0 error:aBlock];

  if (v14)
  {
    v15 = aBlock[0];
    sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_100005898(&qword_1000222D0, &qword_100018838);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100018810;
    v17 = sub_10001491C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10000ACE8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10001494C();
  }

  else
  {
    v30 = v7;
    v31 = v3;
    v32 = v2;
    v21 = aBlock[0];
    v22 = sub_10001489C();

    swift_willThrow();
    sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    sub_100005898(&qword_1000222D0, &qword_100018838);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100018810;
    aBlock[0] = v22;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v24 = sub_100014D1C();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10000ACE8();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_10001494C();

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v27 = sub_100014E0C();
    aBlock[4] = sub_10000FB68;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100010294;
    aBlock[3] = &unk_10001D4D8;
    v28 = _Block_copy(aBlock);

    sub_100014CBC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    v29 = v32;
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v28);

    (*(v31 + 8))(v6, v29);
    (*(v33 + 8))(v10, v30);
    sub_10000F470();
    sub_10000C188();
  }
}

uint64_t sub_10000F400()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

void sub_10000F470()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_10001491C();
  v2 = sub_100014CFC();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [v0 defaultManager];
    sub_1000148CC(v5);
    v7 = v6;
    v21 = 0;
    v8 = [v4 removeItemAtURL:v6 error:&v21];

    if (v8)
    {
      v9 = v21;
      sub_100014DCC();
      if (qword_1000219A8 != -1)
      {
        swift_once();
      }

      sub_100005898(&qword_1000222D0, &qword_100018838);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100018810;
      v11 = sub_10001491C();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_10000ACE8();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      sub_10001494C();
    }

    else
    {
      v14 = v21;
      v15 = sub_10001489C();

      swift_willThrow();
      sub_100014DAC();
      if (qword_1000219A8 != -1)
      {
        swift_once();
      }

      sub_100005898(&qword_1000222D0, &qword_100018838);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100018810;
      v21 = v15;
      swift_errorRetain();
      sub_100005898(&qword_100022688, &qword_100018918);
      v17 = sub_100014D1C();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_10000ACE8();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      sub_10001494C();

      sub_10000F470(v20);
      sub_10000C188();
    }
  }
}

uint64_t sub_10000F790()
{
  v1 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__stopRecordingCompleted;
  v2 = sub_100005898(&qword_100022660, &qword_100018908);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackCompleted, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStartRecordingFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStopRecordingFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__createAudioFileFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__readAudioFileFailed, v2);

  v4 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioFileFolderURL;
  v5 = sub_10001492C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_10000F938()
{
  sub_10000F790();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AudioManager()
{
  result = qword_1000223C0;
  if (!qword_1000223C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F9E4()
{
  sub_10000FACC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_10001492C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000FACC()
{
  if (!qword_1000223D0)
  {
    v0 = sub_1000149AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000223D0);
    }
  }
}

uint64_t sub_10000FB28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioManager();
  result = sub_10001496C();
  *a1 = result;
  return result;
}

uint64_t sub_10000FB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000FBF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FDA0(SEL *a1)
{
  [*(v1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest) *a1];
  sub_10000F470();

  return sub_10000C188();
}

uint64_t sub_10000FDF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001498C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000FE6C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

uint64_t sub_10000FEDC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CD58;
  v6._object = a2;
  v4 = sub_100014EEC(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001013C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000102D8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000015, 0x8000000100016BA0);
  v2 = sub_100014CFC();

  sub_100011930(0xD00000000000001BLL, 0x8000000100016BC0);
  v3 = sub_100014CFC();

  v4 = sub_100014CFC();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithTitle:detailText:symbolName:contentLayout:", v2, v3, v4, 3);

  return v5;
}

void sub_100010400()
{
  v67.receiver = v0;
  v67.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  objc_msgSendSuper2(&v67, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = swift_allocObject();
  sub_1000055B0(v68);
  v3 = v68[11];
  *(v2 + 176) = v68[10];
  *(v2 + 192) = v3;
  *(v2 + 208) = v69;
  v4 = v68[7];
  *(v2 + 112) = v68[6];
  *(v2 + 128) = v4;
  v5 = v68[9];
  *(v2 + 144) = v68[8];
  *(v2 + 160) = v5;
  v6 = v68[3];
  *(v2 + 48) = v68[2];
  *(v2 + 64) = v6;
  v7 = v68[5];
  *(v2 + 80) = v68[4];
  *(v2 + 96) = v7;
  v8 = v68[1];
  *(v2 + 16) = v68[0];
  *(v2 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v2;
  swift_beginAccess();
  v10 = *(v2 + 200);
  v11 = *(v2 + 208);
  *(v2 + 200) = sub_100011824;
  *(v2 + 208) = v9;
  v12 = v0;

  sub_10001182C(v10);
  v13 = *(v2 + 64);
  v72 = *(v2 + 48);
  v73 = v13;
  v14 = *(v2 + 128);
  v76 = *(v2 + 112);
  v77 = v14;
  v15 = *(v2 + 96);
  v74 = *(v2 + 80);
  v75 = v15;
  v82 = *(v2 + 208);
  v16 = *(v2 + 192);
  v80 = *(v2 + 176);
  v81 = v16;
  v17 = *(v2 + 160);
  v78 = *(v2 + 144);
  v79 = v17;
  v18 = *(v2 + 32);
  v70 = *(v2 + 16);
  v71 = v18;
  v19 = *&v12[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager];
  type metadata accessor for AudioManager();

  sub_100005CAC(&v70, v63);
  sub_100005840();
  v20 = sub_10001495C();
  v63[10] = v80;
  v63[11] = v81;
  v63[6] = v76;
  v63[7] = v77;
  v63[8] = v78;
  v63[9] = v79;
  v63[2] = v72;
  v63[3] = v73;
  v63[4] = v74;
  v63[5] = v75;
  v63[0] = v70;
  v63[1] = v71;
  v64 = v82;
  v65 = v20;
  v66 = v19;
  v21 = objc_allocWithZone(sub_100005898(&qword_1000226E0, &qword_100018B58));
  v22 = sub_100014AEC();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v12 contentView];
    [v25 addSubview:v24];

    v62 = objc_opt_self();
    sub_100005898(&qword_100022148, &qword_100018580);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100018B20;
    v27 = [v24 leadingAnchor];
    v28 = [v12 contentView];
    v29 = [v28 leadingAnchor];

    v30 = [v27 constraintEqualToAnchor:v29];
    *(v26 + 32) = v30;
    v31 = [v24 trailingAnchor];
    v32 = [v12 contentView];
    v33 = [v32 trailingAnchor];

    v34 = [v31 constraintEqualToAnchor:v33];
    *(v26 + 40) = v34;
    v35 = [v24 topAnchor];
    v36 = [v12 contentView];
    v37 = [v36 topAnchor];

    v38 = [v35 constraintEqualToAnchor:v37];
    *(v26 + 48) = v38;
    v39 = [v24 bottomAnchor];
    v40 = [v12 contentView];
    v41 = [v40 bottomAnchor];

    v42 = [v39 constraintEqualToAnchor:v41];
    *(v26 + 56) = v42;
    sub_100007C80(0, &qword_100022150, NSLayoutConstraint_ptr);
    isa = sub_100014D4C().super.isa;

    [v62 activateConstraints:isa];

    v44 = [objc_opt_self() linkButton];
    sub_100011930(0x415F44524F434552, 0xEC0000004E494147);
    v45 = sub_100014CFC();

    [v44 setTitle:v45 forState:0];

    sub_100007C80(0, &qword_100022100, UIAction_ptr);
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v12;
    v47 = v12;
    v48 = v44;
    v49 = sub_100014E3C();
    [v48 addAction:v49 forControlEvents:{64, 0, 0, 0, sub_10001187C, v46}];

    v50 = [v47 buttonTray];
    [v50 addButton:v48];

    v51 = [v47 navigationItem];
    sub_100007C80(0, &qword_1000226E8, UIBarButtonItem_ptr);
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = v52;
    v83.value.super.super.isa = sub_100014E3C();
    v83.is_nil = 0;
    v53 = sub_100014DDC(UIBarButtonSystemItemCancel, v83, v85).super.super.isa;
    [v51 setLeftBarButtonItem:{v53, 0, 0, 0, sub_1000118BC, v60}];

    v54 = [v47 navigationItem];
    v55 = swift_allocObject();
    *(v55 + 16) = v47;
    v56 = v47;
    v61 = v55;
    v84.value.super.super.isa = sub_100014E3C();
    v84.is_nil = 0;
    v57 = sub_100014DDC(UIBarButtonSystemItemDone, v84, v86).super.super.isa;
    [v54 setRightBarButtonItem:{v57, 0, 0, 0, sub_1000118FC, v61}];

    v58 = [v56 navigationItem];
    v59 = [v58 rightBarButtonItem];

    if (v59)
    {
      [v59 setEnabled:0];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_100010C34(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked];
  *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked] = a1;

  v7 = [a2 navigationItem];
  v8 = [v7 rightBarButtonItem];

  if (v8)
  {
    v9 = *(a1 + 16);
    swift_beginAccess();
    [v8 setEnabled:v9 == *(a3 + 16)];
  }
}

void sub_100010CFC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100011930(0xD000000000000019, 0x8000000100016B60);
  sub_100011930(0xD000000000000019, 0x8000000100016B80);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setSourceView:a2];
  }

  sub_100011930(5457241, 0xE300000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = a3;
  v12 = sub_100014CFC();

  v15[4] = sub_10001191C;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007D30;
  v15[3] = &unk_10001D8C0;
  v13 = _Block_copy(v15);

  v14 = [objc_opt_self() actionWithTitle:v12 style:2 handler:v13];
  _Block_release(v13);

  [v7 addAction:v14];
  [v11 presentViewController:v7 animated:1 completion:0];
}

void sub_100010F58(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager];

  sub_10000EBD8();

  v4 = [a2 navigationController];
  if (v4)
  {
    v5 = v4;
  }
}

void sub_100011000()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100011930(0xD000000000000018, 0x80000001000165B0);
    sub_100011930(0xD000000000000018, 0x80000001000165D0);
    v2 = sub_100014CFC();

    v3 = sub_100014CFC();

    v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:0];

    v5 = [v4 popoverPresentationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = [v7 leftBarButtonItem];

      [v6 setSourceItem:v8];
    }

    sub_100011930(5457241, 0xE300000000000000);
    v9 = sub_100014CFC();

    aBlock[4] = sub_10000B6FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007D30;
    aBlock[3] = &unk_10001D870;
    v10 = _Block_copy(aBlock);

    v11 = [objc_opt_self() actionWithTitle:v9 style:2 handler:v10];
    _Block_release(v10);

    [v4 addAction:v11];
    [v1 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_100011288(uint64_t a1, char *a2)
{
  v12 = &_swiftEmptyDictionarySingleton;
  v3 = *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked];

  sub_100011388(v4, &v12);

  v5 = *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager];

  sub_10000F470();
  sub_10000C188();

  v6 = [a2 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for MicrophoneTestCompletedViewController());

    v10 = sub_100006A80(v9);
    [v7 pushViewController:v10 animated:1];
  }
}

uint64_t sub_100011388(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v36 = a2;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + v12) == 0;
    v17 = 1818845510;
    if (!v16)
    {
      v17 = 1936941392;
    }

    v38 = v17;

    v18 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a2;
    v39 = *a2;
    *a2 = 0x8000000000000000;
    v21 = sub_100013224(v15, v14);
    v23 = *(v20 + 16);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (*(v20 + 24) < v26)
    {
      sub_100013838(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_100013224(v15, v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

LABEL_18:
      v29 = v39;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v34 = v21;
    sub_100013F84();
    v21 = v34;
    v29 = v39;
    if (v27)
    {
LABEL_4:
      v9 = (v29[7] + 16 * v21);
      v10 = v9[1];
      *v9 = v38;
      v9[1] = 0xE400000000000000;

      goto LABEL_5;
    }

LABEL_19:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (v29[6] + 16 * v21);
    *v30 = v15;
    v30[1] = v14;
    v31 = (v29[7] + 16 * v21);
    *v31 = v38;
    v31[1] = 0xE400000000000000;
    v32 = v29[2];
    v25 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v25)
    {
      goto LABEL_26;
    }

    v29[2] = v33;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v36;
    *v36 = v29;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_100014F0C();
  __break(1u);
  return result;
}

id sub_100011688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001172C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[16];

  v11 = v0[18];

  v12 = v0[19];

  v13 = v0[20];

  v14 = v0[22];

  v15 = v0[24];

  if (v0[25])
  {
    v16 = v0[26];
  }

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000117E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001182C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001183C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000118C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011930(uint64_t a1, void *a2)
{
  if (qword_1000219B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1000226F0;
  if (!*(off_1000226F0 + 2) || (v5 = sub_100013224(a1, a2), (v6 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v11 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v16.value._countAndFlagsBits = 0;
    v16.value._object = 0;
    v12.super.isa = v11;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v8 = sub_10001488C(v15, v16, v12, v17, v14);

    return v8;
  }

  v7 = (v4[7] + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  return v8;
}

void *sub_100011A74()
{
  result = sub_1000142B8(&_swiftEmptyArrayStorage);
  off_1000226F0 = result;
  return result;
}

uint64_t sub_100011A9C()
{
  type metadata accessor for MicrophoneTestViewControllerManager();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_100022C68 = v0;
  return result;
}

uint64_t sub_100011AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100011B3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    type metadata accessor for MicrophoneTestInputs();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = qword_1000219A0;
      result = swift_unknownObjectRetain();
      if (v6 != -1)
      {
        result = swift_once();
      }

      v8 = *(v5 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration);
      if (v8 > 10.0)
      {
        v8 = 10.0;
      }

      *(qword_100022C40 + 16) = v8;
      v9 = OBJC_IVAR___MicrophoneTestInputs_stringProperties;
      v10 = *(v5 + OBJC_IVAR___MicrophoneTestInputs_stringProperties);
      if (!v10)
      {
        goto LABEL_17;
      }

      if (*(v10 + 16))
      {
        if (qword_1000219B0 != -1)
        {
          result = swift_once();
          v10 = *(v5 + v9);
          if (!v10)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return result;
          }
        }

        swift_beginAccess();
        off_1000226F0 = v10;
      }

      sub_100012174();
      v11 = *(v2 + OBJC_IVAR___MicrophoneTestViewController_responder);
      *(v2 + OBJC_IVAR___MicrophoneTestViewController_responder) = a2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      [a2 enableVolumeHUD:0];
      return swift_unknownObjectRelease();
    }
  }

  v12 = sub_1000142B8(&_swiftEmptyArrayStorage);
  sub_100012324(-912, v12);
}

id sub_100011D94()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_opt_self();
  v3 = @"HeadphonesConnectedNotification";
  v4 = [v2 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1000147C4;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100011F90;
  v9[3] = &unk_10001D910;
  v6 = _Block_copy(v9);

  v7 = [v1 addObserverForName:v3 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return [*(v0 + OBJC_IVAR___MicrophoneTestViewController_headphonesDetector) start];
}

uint64_t sub_100011F1C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1000142B8(&_swiftEmptyArrayStorage);
    sub_1000128F0(4, v2);
  }

  return result;
}

uint64_t sub_100011F90(uint64_t a1)
{
  v2 = sub_10001487C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10001486C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_100012174()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    if (qword_1000219B8 != -1)
    {
      swift_once();
    }

    swift_unknownObjectWeakAssign();
    v5 = *&v1[OBJC_IVAR___MicrophoneTestViewController_audioManager];
    v6 = objc_allocWithZone(type metadata accessor for MicrophoneTestStartingViewController());

    v8 = sub_10000AF14(v7);
    v12 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
    [v12 setModalPresentationStyle:0];
    [v1 presentViewController:v12 animated:1 completion:0];
    sub_100012C18();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *(Strong + OBJC_IVAR___MicrophoneTestViewController_headphonesDetector);

      [v11 stop];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100012324(uint64_t a1, uint64_t a2)
{
  v5 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v6 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v5, "Finished test with status %ld", v7, 0xCu);
  }

  v8 = sub_100012628(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = &_swiftEmptyDictionarySingleton;
  sub_100014548(v8, sub_1000140FC, 0, isUniquelyReferenced_nonNull_native, &v22);

  v10 = v22;
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100022C40 + 40);
  if (v11)
  {
    v12 = *(qword_100022C40 + 40);
    swift_bridgeObjectRetain_n();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v10;
    sub_100014548(v11, sub_1000140FC, 0, v13, &v22);
  }

  v14 = [v2 result];
  if (v11)
  {
    v15.super.isa = sub_100014CDC().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  v16 = objc_opt_self();
  isa = sub_100014D8C().super.super.isa;
  v18 = [v16 testResultOverrideForExclavesStatus:v15.super.isa originalResult:isa];

  [v14 setStatusCode:v18];
  v19 = [v2 result];
  v20 = sub_100014CDC().super.isa;

  [v19 setData:v20];

  return [v2 setFinished:1];
}

uint64_t sub_100012628(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005898(&qword_100022818, &qword_100018BD8);
    v2 = sub_100014EDC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1000143D4(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1000143D4(v33, v34);
    result = sub_100014E8C(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1000143D4(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1000128F0(char a1, uint64_t a2)
{
  v5 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v6 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = qword_100018C00[a1];
    _os_log_impl(&_mh_execute_header, v6, v5, "Finished test with status %ld", v7, 0xCu);
  }

  v8 = sub_100012628(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = &_swiftEmptyDictionarySingleton;
  sub_100014548(v8, sub_1000140FC, 0, isUniquelyReferenced_nonNull_native, &v23);

  v10 = v23;
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100022C40 + 40);
  if (v11)
  {
    v12 = *(qword_100022C40 + 40);
    swift_bridgeObjectRetain_n();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v23 = v10;
    sub_100014548(v11, sub_1000140FC, 0, v13, &v23);
  }

  v14 = [v2 result];
  if (v11)
  {
    v15.super.isa = sub_100014CDC().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  v16 = objc_opt_self();
  v17 = qword_100018C00[a1];
  isa = sub_100014D8C().super.super.isa;
  v19 = [v16 testResultOverrideForExclavesStatus:v15.super.isa originalResult:isa];

  [v14 setStatusCode:v19];
  v20 = [v2 result];
  v21 = sub_100014CDC().super.isa;

  [v20 setData:v21];

  return [v2 setFinished:1];
}

void sub_100012C18()
{
  v10 = 0;
  v1 = [objc_opt_self() sharedAVSystemController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100014CFC();
    [v2 getVolume:&v10 + 4 forCategory:v3];

    v4 = v2;
    v5 = sub_100014CFC();
    [v4 getVolume:&v10 forCategory:v5];

    v6 = v10;
    v7 = HIDWORD(v10);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume;
  *v8 = v7;
  *(v8 + 4) = 0;
  v9 = v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume;
  *v9 = v6;
  *(v9 + 4) = 0;
}

void sub_100012D6C()
{
  v1 = [objc_opt_self() sharedAVSystemController];
  if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume + 4) & 1) == 0)
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume);
      v9 = v1;
      v3 = v1;
      v4 = sub_100014CFC();
      LODWORD(v5) = v2;
      [v3 setVolumeTo:v4 forCategory:v5];

      v1 = v9;
      if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume + 4) & 1) == 0)
      {
        v6 = *(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume);
        v10 = v3;
        v7 = sub_100014CFC();
        LODWORD(v8) = v6;
        [v10 setVolumeTo:v7 forCategory:v8];

        v1 = v10;
      }
    }

    else if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume + 4) & 1) == 0)
    {
      return;
    }
  }
}

id sub_100012EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___MicrophoneTestViewController_audioManager;
  v8 = type metadata accessor for AudioManager();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = sub_10000BAB8();
  v11 = OBJC_IVAR___MicrophoneTestViewController_headphonesDetector;
  *&v4[v11] = [objc_allocWithZone(DAHeadphonesDetector) init];
  *&v4[OBJC_IVAR___MicrophoneTestViewController_responder] = 0;
  v12 = &v4[OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v4[OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume];
  *v13 = 0;
  v13[4] = 1;
  if (a2)
  {
    v14 = sub_100014CFC();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = type metadata accessor for MicrophoneTestViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v14, a3);

  return v15;
}

id sub_100013058(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MicrophoneTestViewController_audioManager;
  v5 = type metadata accessor for AudioManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_10000BAB8();
  v8 = OBJC_IVAR___MicrophoneTestViewController_headphonesDetector;
  *&v2[v8] = [objc_allocWithZone(DAHeadphonesDetector) init];
  *&v2[OBJC_IVAR___MicrophoneTestViewController_responder] = 0;
  v9 = &v2[OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume];
  *v9 = 0;
  v9[4] = 1;
  v10 = &v2[OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume];
  *v10 = 0;
  v10[4] = 1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MicrophoneTestViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_100013170()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100013224(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100014F1C();
  sub_100014D2C();
  v6 = sub_100014F3C();

  return sub_100013AF8(a1, a2, v6);
}

unint64_t sub_10001329C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100014E8C(*(v2 + 40));

  return sub_100013BB0(a1, v4);
}

uint64_t sub_1000132E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005898(&unk_100022830, &unk_100018BF0);
  v38 = a2;
  result = sub_100014ECC();
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100014F1C();
      sub_100014D2C();
      result = sub_100014F3C();
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_100013580(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005898(&qword_100022818, &qword_100018BD8);
  result = sub_100014ECC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_1000143D4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100014484(v24, &v37);
        sub_10000AEB4(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100014E8C(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1000143D4(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100013838(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005898(&qword_100022828, &qword_100018BE8);
  v40 = a2;
  result = sub_100014ECC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_100014F1C();
      sub_100014D2C();
      result = sub_100014F3C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_100013AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100014EFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100013BB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100014484(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100014E9C();
      sub_100014430(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100013C78()
{
  v1 = v0;
  sub_100005898(&unk_100022830, &unk_100018BF0);
  v2 = *v0;
  v3 = sub_100014EBC();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100013DE0()
{
  v1 = v0;
  sub_100005898(&qword_100022818, &qword_100018BD8);
  v2 = *v0;
  v3 = sub_100014EBC();
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
        v18 = 40 * v17;
        sub_100014484(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000AEB4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000143D4(v22, (*(v4 + 56) + v17));
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

void *sub_100013F84()
{
  v1 = v0;
  sub_100005898(&qword_100022828, &qword_100018BE8);
  v2 = *v0;
  v3 = sub_100014EBC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_1000140FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100014484(a1, a2);

  return sub_10000AEB4(a1 + 40, a2 + 40);
}

_OWORD *sub_100014140@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_100014484(*(v3 + 48) + 40 * v13, &v18);
    sub_10000AEB4(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_1000143D4(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_1000144E0(&v18);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000142B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005898(&qword_100022828, &qword_100018BE8);
    v3 = sub_100014EDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100013224(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000143D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000143E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000144E0(uint64_t a1)
{
  v2 = sub_100005898(&qword_100022820, &qword_100018BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014548(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_100014140(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_1000143CC();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_1000143D4(&v41, v34);
    v15 = *a5;
    v16 = sub_10001329C(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_100013580(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_10001329C(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_100013DE0();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10000AEB4(*(*a5 + 56) + 32 * v16, v33);
      sub_1000143E4(v34);
      sub_100014430(&v35);
      v14 = *(v12 + 56);
      sub_1000143E4((v14 + v13));
      sub_1000143D4(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_1000143D4(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_100014140(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_100014F0C();
  __break(1u);
  return result;
}

uint64_t sub_10001478C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000147CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}