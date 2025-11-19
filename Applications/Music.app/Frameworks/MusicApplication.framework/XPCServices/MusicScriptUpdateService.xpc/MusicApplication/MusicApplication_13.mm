objc_class *sub_10014BF00()
{
  v1 = qword_100604948;
  v2 = *(v0 + qword_100604948);
  if (v2)
  {
    v3 = *(v0 + qword_100604948);
  }

  else
  {
    sub_100009130(0, &unk_100604BC0);
    sub_100009130(0, &qword_100601380);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v9.value.super.super.isa = sub_1004BCFD4();
    v9.is_nil = 0;
    v5.super.super.isa = sub_1004BC9E4(UIBarButtonSystemItemClose, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10014C024()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10014C088()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v3) || (v4 = objc_msgSend(v0, "presentationController")) != 0 && (v5 = v4, v3 = objc_msgSend(v4, "traitCollection"), v5, v3))
  {

    [v3 horizontalSizeClass];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85B4();
  }
}

void sub_10014C190(void *a1)
{
  v1 = a1;
  sub_10014C088();
}

void sub_10014C1D8()
{

  v1 = *(v0 + qword_100604948);
}

id sub_10014C218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudLibraryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10014C250(uint64_t a1)
{

  v2 = *(a1 + qword_100604948);
}

uint64_t sub_10014C29C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_10014C370()
{

  sub_10003CC4C(*(v0 + 48));
  v1 = OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model__horizontalSizeClass;
  v2 = sub_100003ABC(&qword_100604BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10003CC4C(*(v0 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss));

  return swift_deallocClassInstance();
}

uint64_t sub_10014C444@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnableCloudLibraryView.Model(0);
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t sub_10014C484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003ABC(&qword_100604AD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100003ABC(&qword_100604AE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  *v8 = sub_1004B9934();
  v13 = sub_100003ABC(&qword_100604AE8);
  sub_10014C71C(a1, a2, &v8[*(v13 + 44)]);
  v14 = sub_1004B9954();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004B86C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100025B04(v8, v12, &qword_100604AD8);
  v23 = &v12[*(v10 + 44)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_1004B9984();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004B86C4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100025B04(v12, a3, &qword_100604AE0);
  result = sub_100003ABC(&qword_100604AF0);
  v34 = a3 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10014C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_100003ABC(&qword_100604AF8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = sub_100003ABC(&qword_100604B00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_100003ABC(&qword_100604B08);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  *v22 = sub_1004B9344();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_100003ABC(&qword_100604B10);
  sub_10014CAB8(a1, a2, &v22[*(v23 + 44)]);
  *v16 = sub_1004B9344();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = sub_100003ABC(&qword_100604B18);
  sub_10014D078(a1, a2, &v16[*(v24 + 44)]);
  *v10 = sub_1004B9344();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v25 = sub_100003ABC(&qword_100604B20);
  sub_10014D768(a1, a2, &v10[*(v25 + 44)]);
  v26 = v20;
  v31 = v20;
  sub_10000F778(v22, v20, &qword_100604B08);
  sub_10000F778(v16, v14, &qword_100604B00);
  v27 = v8;
  sub_10000F778(v10, v8, &qword_100604AF8);
  v28 = v32;
  sub_10000F778(v26, v32, &qword_100604B08);
  v29 = sub_100003ABC(&qword_100604B28);
  sub_10000F778(v14, v28 + *(v29 + 48), &qword_100604B00);
  sub_10000F778(v27, v28 + *(v29 + 64), &qword_100604AF8);
  sub_100007214(v10, &qword_100604AF8);
  sub_100007214(v16, &qword_100604B00);
  sub_100007214(v22, &qword_100604B08);
  sub_100007214(v27, &qword_100604AF8);
  sub_100007214(v14, &qword_100604B00);
  return sub_100007214(v31, &qword_100604B08);
}

uint64_t sub_10014CAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004B97C4();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003ABC(&qword_100604B30);
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v34 = sub_100003ABC(&qword_100604B38);
  v39 = *(v34 - 8);
  v13 = __chkstk_darwin(v34);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v31 - v15;
  v41 = sub_1004B9344();
  v43 = 0;
  sub_10014DF90(&v53);
  v46 = *&v54[16];
  v47 = *&v54[32];
  v48[0] = *&v54[48];
  *(v48 + 9) = *&v54[57];
  v44 = v53;
  v45 = *v54;
  *(v50 + 9) = *&v54[57];
  v49[2] = *&v54[16];
  v49[3] = *&v54[32];
  v50[0] = *&v54[48];
  v49[0] = v53;
  v49[1] = *v54;
  sub_10000F778(&v44, &v51, &qword_100604BA0);
  sub_100007214(v49, &qword_100604BA0);
  *(&v42[2] + 7) = v46;
  *(&v42[3] + 7) = v47;
  *(&v42[4] + 7) = v48[0];
  v42[5] = *(v48 + 9);
  *(v42 + 7) = v44;
  *(&v42[1] + 7) = v45;
  v40 = v43;
  v32 = sub_1004BA394();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_100003ABC(&qword_100604B60);
  sub_10014FC24();
  sub_1004BA474();
  sub_1004B97B4();
  sub_1000206D4(&qword_100604B80, &qword_100604B30);
  sub_10014FE00(&qword_100604B88, &type metadata accessor for BorderedProminentButtonStyle);
  v17 = v38;
  v18 = v36;
  sub_1004B9E14();
  (*(v37 + 8))(v9, v18);
  (*(v35 + 8))(v12, v10);
  v19 = *(v39 + 16);
  v20 = v33;
  v21 = v34;
  v19(v33, v17, v34);
  *&v51 = v41;
  *(&v51 + 1) = 0x4020000000000000;
  v52[0] = v40;
  *&v52[1] = v42[0];
  *&v52[17] = v42[1];
  *&v52[33] = v42[2];
  *&v52[81] = v42[5];
  *&v52[65] = v42[4];
  *&v52[49] = v42[3];
  v22 = v51;
  v23 = *v52;
  v24 = *&v52[32];
  *(a3 + 32) = *&v52[16];
  *(a3 + 48) = v24;
  *a3 = v22;
  *(a3 + 16) = v23;
  v25 = *&v52[48];
  v26 = *&v52[64];
  v27 = *&v52[80];
  *(a3 + 112) = v52[96];
  *(a3 + 80) = v26;
  *(a3 + 96) = v27;
  *(a3 + 64) = v25;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = v32;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  v28 = sub_100003ABC(&qword_100604BB0);
  v19((a3 + *(v28 + 96)), v20, v21);
  sub_10000F778(&v51, &v53, &qword_100604B50);
  v29 = *(v39 + 8);

  v29(v38, v21);
  v29(v20, v21);

  *&v54[33] = v42[2];
  *&v54[49] = v42[3];
  *&v54[65] = v42[4];
  v55 = v42[5];
  *&v54[1] = v42[0];
  *&v53 = v41;
  *(&v53 + 1) = 0x4020000000000000;
  v54[0] = v40;
  *&v54[17] = v42[1];
  return sub_100007214(&v53, &qword_100604B50);
}

uint64_t sub_10014D078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = sub_1004B97C4();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003ABC(&qword_100604B30);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = v42 - v7;
  v9 = sub_100003ABC(&qword_100604B38);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v44 = v42 - v10;
  v50 = sub_100003ABC(&qword_100604B40) - 8;
  v11 = __chkstk_darwin(v50);
  v52 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v42 - v14;
  __chkstk_darwin(v13);
  v47 = v42 - v16;
  v49 = sub_1004B9344();
  v61 = 0;
  sub_10014DF90(&v58);
  v64 = *&v59[2];
  v65 = *&v59[4];
  v66[0] = *&v59[6];
  *(v66 + 9) = *(&v59[7] + 1);
  v62 = v58;
  v63 = *v59;
  *(v68 + 9) = *(&v59[7] + 1);
  v67[2] = *&v59[2];
  v67[3] = *&v59[4];
  v68[0] = *&v59[6];
  v67[0] = v58;
  v67[1] = *v59;
  sub_10000F778(&v62, &v56, &qword_100604BA0);
  sub_100007214(v67, &qword_100604BA0);
  *(&v60[2] + 7) = v64;
  *(&v60[3] + 7) = v65;
  *(&v60[4] + 7) = v66[0];
  v60[5] = *(v66 + 9);
  *(v60 + 7) = v62;
  *(&v60[1] + 7) = v63;
  v43 = v61;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v42[1] = a2;

  sub_100003ABC(&qword_100604B60);
  sub_10014FC24();
  sub_1004BA474();
  v18 = v45;
  sub_1004B97B4();
  sub_1000206D4(&qword_100604B80, &qword_100604B30);
  sub_10014FE00(&qword_100604B88, &type metadata accessor for BorderedProminentButtonStyle);
  v19 = v44;
  v20 = v46;
  v21 = v51;
  sub_1004B9E14();
  (*(v53 + 8))(v18, v21);
  (*(v48 + 8))(v8, v20);
  LOBYTE(v8) = sub_1004B9974();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004B86C4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v54 + 32))(v15, v19, v55);
  v30 = &v15[*(v50 + 44)];
  *v30 = v8;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = v47;
  sub_100025B04(v15, v47, &qword_100604B40);
  v32 = v52;
  sub_10000F778(v31, v52, &qword_100604B40);
  v33 = v49;
  *&v56 = v49;
  *(&v56 + 1) = 0x4020000000000000;
  LOBYTE(a2) = v43;
  v57[0] = v43;
  *&v57[1] = v60[0];
  *&v57[17] = v60[1];
  *&v57[33] = v60[2];
  *&v57[81] = v60[5];
  *&v57[65] = v60[4];
  *&v57[49] = v60[3];
  v34 = v56;
  v35 = *v57;
  v36 = *&v57[32];
  *(a3 + 32) = *&v57[16];
  *(a3 + 48) = v36;
  *a3 = v34;
  *(a3 + 16) = v35;
  v37 = *&v57[48];
  v38 = *&v57[64];
  v39 = *&v57[80];
  *(a3 + 112) = v57[96];
  *(a3 + 80) = v38;
  *(a3 + 96) = v39;
  *(a3 + 64) = v37;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  v40 = sub_100003ABC(&qword_100604BA8);
  sub_10000F778(v32, a3 + *(v40 + 64), &qword_100604B40);
  sub_10000F778(&v56, &v58, &qword_100604B50);
  sub_100007214(v31, &qword_100604B40);
  sub_100007214(v32, &qword_100604B40);
  *(&v59[4] + 1) = v60[2];
  *(&v59[6] + 1) = v60[3];
  *(&v59[8] + 1) = v60[4];
  *(&v59[10] + 1) = v60[5];
  *(v59 + 1) = v60[0];
  *&v58 = v33;
  *(&v58 + 1) = 0x4020000000000000;
  LOBYTE(v59[0]) = a2;
  *(&v59[2] + 1) = v60[1];
  return sub_100007214(&v58, &qword_100604B50);
}

uint64_t sub_10014D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = sub_1004B97C4();
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100003ABC(&qword_100604B30);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v47 - v9;
  v61 = sub_100003ABC(&qword_100604B38);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v47 - v11;
  v56 = sub_100003ABC(&qword_100604B40) - 8;
  v12 = __chkstk_darwin(v56);
  v60 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - v15;
  __chkstk_darwin(v14);
  v54 = &v47 - v17;
  v18 = sub_100003ABC(&qword_100604B48);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v47 - v21;
  sub_1004B9934();
  v63 = a1;
  v64 = a2;
  sub_100003ABC(&qword_100604B50);
  sub_1000206D4(&qword_100604B58, &qword_100604B50);
  sub_1004B8744();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  sub_100003ABC(&qword_100604B60);
  sub_10014FC24();
  sub_1004BA474();
  sub_1004B97B4();
  sub_1000206D4(&qword_100604B80, &qword_100604B30);
  sub_10014FE00(&qword_100604B88, &type metadata accessor for BorderedProminentButtonStyle);
  v23 = v49;
  v24 = v53;
  v25 = v57;
  sub_1004B9E14();
  (*(v58 + 8))(v8, v25);
  (*(v55 + 8))(v10, v24);
  LOBYTE(v8) = sub_1004B9974();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004B86C4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v59 + 32))(v16, v23, v61);
  v34 = &v16[*(v56 + 44)];
  *v34 = v8;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v54;
  sub_100025B04(v16, v54, &qword_100604B40);
  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v39 = v50;
  v40 = v48;
  v38(v50, v48, v52);
  v41 = v60;
  sub_10000F778(v35, v60, &qword_100604B40);
  v42 = v62;
  v38(v62, v39, v36);
  v43 = sub_100003ABC(&unk_100604B90);
  v44 = &v42[*(v43 + 48)];
  *v44 = 0;
  v44[8] = 1;
  sub_10000F778(v41, &v42[*(v43 + 64)], &qword_100604B40);
  sub_100007214(v35, &qword_100604B40);
  v45 = *(v37 + 8);
  v45(v40, v36);
  sub_100007214(v41, &qword_100604B40);
  return (v45)(v39, v36);
}

double sub_10014DE40@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B9344();
  v15 = 0;
  sub_10014DF90(&v9);
  v18 = v11;
  v19 = v12;
  v20[0] = v13[0];
  *(v20 + 9) = *(v13 + 9);
  v16 = v9;
  v17 = v10;
  *(v22 + 9) = *(v13 + 9);
  v21[2] = v11;
  v21[3] = v12;
  v22[0] = v13[0];
  v21[0] = v9;
  v21[1] = v10;
  sub_10000F778(&v16, &v8, &qword_100604BA0);
  sub_100007214(v21, &qword_100604BA0);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20[0];
  *&v14[80] = *(v20 + 9);
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  v4 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v4;
  result = *&v14[16];
  v6 = *v14;
  *(a1 + 33) = *&v14[16];
  v7 = v15;
  *a1 = v2;
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_10014DF90@<X0>(uint64_t a1@<X8>)
{
  sub_10000E7F4();

  v2 = sub_1004B9D84();
  v4 = v3;
  v6 = v5;
  sub_1004B9A24();
  v7 = sub_1004B9CE4();
  v9 = v8;
  v11 = v10;

  sub_10002FA24(v2, v4, v6 & 1);

  sub_1004B9A74();
  v12 = sub_1004B9C74();
  v36 = v13;
  v37 = v12;
  v35 = v14;
  v38 = v15;
  sub_10002FA24(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();

  v16 = sub_1004B9D84();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1004B9AE4();
  v20 = sub_1004B9CE4();
  v22 = v21;
  v24 = v23;

  sub_10002FA24(v16, v18, v9 & 1);

  sub_1004B9624();
  v25 = sub_1004B9C84();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10002FA24(v20, v22, v24 & 1);

  v32 = swift_getKeyPath();
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v29 & 1;
  *(a1 + 72) = v31;
  *(a1 + 80) = v32;
  *(a1 + 88) = 1;
  sub_10002FA14(v37, v36, v35 & 1);

  sub_10002FA14(v25, v27, v29 & 1);

  sub_10002FA24(v25, v27, v29 & 1);

  sub_10002FA24(v37, v36, v35 & 1);
}

void sub_10014E26C(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(*(a2 + 48), *(a2 + 56));
  v3 = *(a2 + OBJC_IVAR____TtCV9MusicCore22EnableCloudLibraryView5Model_dismiss);
  if (v3)
  {

    v3(v4);

    sub_10003CC4C(v3);
  }
}

__n128 sub_10014E318@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  v24 = static CloudLibrary.EnablementContext.action;
  sub_10000E7F4();

  v2 = sub_1004B9D84();
  v4 = v3;
  v6 = v5;
  v7 = sub_1004B9CD4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10002FA24(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_1004B99C4();
  sub_1004B86C4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1004BA754();
  sub_1004B8E94();
  *&v23[55] = v27;
  *&v23[71] = v28;
  *&v23[87] = v29;
  *&v23[103] = v30;
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v23[64];
  *(a1 + 153) = *&v23[80];
  *(a1 + 169) = *&v23[96];
  *(a1 + 184) = *(&v30 + 1);
  *(a1 + 73) = *v23;
  *(a1 + 89) = *&v23[16];
  result = *&v23[32];
  *(a1 + 105) = *&v23[32];
  *(a1 + 121) = *&v23[48];
  return result;
}

uint64_t sub_10014E51C()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006046F0);
  sub_100007084(v0, qword_1006046F0);
  return sub_1004B80A4();
}

uint64_t sub_10014E59C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10014E61C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

BOOL _s9MusicCore12CloudLibraryO6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if ((a2 & 0xC0000000) == 0x40000000)
      {
        return (*(&a1 + 1) == *(&a2 + 1)) & (a2 ^ a1 ^ 1);
      }

      return 0;
    }

    if (a1 <= 2147483649)
    {
      if (a1 == 0x80000000)
      {
        return a2 == 0x80000000;
      }

      else
      {
        return a2 == 2147483649;
      }
    }

    else if (a1 == 2147483650)
    {
      return a2 == 2147483650;
    }

    else
    {
      if (a1 == 2147483651)
      {
        return a2 == 2147483651;
      }

      return a2 == 2147483652;
    }
  }

  else
  {
    if ((a2 & 0xC0000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t _s9MusicCore12CloudLibraryO11FailureTypeO8rawValueAESgSi_tcfC_0(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF9)
  {
    return ~a1;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_10014E7B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10014E7F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void _s9MusicCore12CloudLibraryO07presentcD7Enabler7context18presentationSource5style10completionyAC17EnablementContextO_AA012PresentationI0VAC0N5StyleOySbcSgtFZ_0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79 = a2;
  v9 = sub_1004B6E64();
  __chkstk_darwin(v9 - 8);
  v77[1] = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BBE14();
  v77[0] = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v77 - v15;
  v17 = CloudLibrary.EnablementContext.title.getter(a1);
  v19 = v18;
  v20 = CloudLibrary.EnablementContext.message.getter(a1);
  v22 = v21;
  v78 = a3;
  if (a3)
  {
    v23 = sub_1004BBE24();

    v24 = sub_1004BBE24();

    v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    sub_1004BBDA4();
    v26 = v77[0];
    (*(v77[0] + 16))(v14, v16, v11);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v27 = qword_100617118;
    sub_1004B6DF4();
    sub_1004BBED4();
    (*(v26 + 8))(v16, v11);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a5;
    v29 = a5;
    sub_10002F518(a4);
    v30 = sub_1004BBE24();

    v84 = sub_10014FEA8;
    v85 = v28;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000C81CC;
    v83 = &unk_1005B3430;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:1 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    if (qword_1005FFFA8 != -1)
    {
      swift_once();
    }

    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = v29;
    sub_10002F518(a4);
    v35 = sub_1004BBE24();
    v84 = sub_10014FEDC;
    v85 = v34;
    aBlock = _NSConcreteStackBlock;
    v81 = 1107296256;
    v82 = sub_1000C81CC;
    v83 = &unk_1005B3480;
    v36 = _Block_copy(&aBlock);

    v37 = [v32 actionWithTitle:v35 style:0 handler:v36];
    _Block_release(v36);

    [v25 addAction:v37];
    v38 = v78;
    v39 = v79;
    if (v78 != 1)
    {
      v40 = v78;
      [v25 setPreferredStyle:0];
      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = [v25 popoverPresentationController];
      if (v49)
      {
        v50 = v49;
        [v49 setSourceView:v40];
        [v50 setSourceRect:{v42, v44, v46, v48}];
        sub_10014FEE8(v38);
        [v50 setPermittedArrowDirections:15];
      }

      sub_10014FEE8(v38);
    }

    v51 = *(v39 + 80);
    if (v51)
    {
      v52 = qword_1006000B8;

      if (v52 != -1)
      {
        swift_once();
      }

      v53 = sub_1004B80B4();
      sub_100007084(v53, qword_100607AD0);
      v54 = sub_1004B8094();
      v55 = sub_1004BC9A4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Deferring presentation…", v56, 2u);
      }

      v57 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_10023620C;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_10023720C;
      v83 = &unk_1005B34A8;
      v58 = _Block_copy(&aBlock);
      v59 = [v57 initWithTimeout:v58 interruptionHandler:10.0];
      _Block_release(v58);

      sub_100047AC4(v39, &aBlock);
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      sub_100048998(&aBlock, v60 + 24);
      *(v60 + 120) = v25;
      *(v60 + 128) = 1;
      *(v60 + 129) = v38 != 1;
      *(v60 + 136) = 0;
      *(v60 + 144) = 0;
      v61 = v59;
      v62 = v25;
      v51(v39, v62, sub_10005BB20, v60);
      sub_10003CC4C(v51);

LABEL_22:

      return;
    }

    sub_1002346EC(v25, 1, (v38 != 1), 0, 0);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for CloudLibraryViewController(0));
    sub_10002F518(a4);
    v63 = sub_10014BA34(v17, v19, v20, v22, a4, a5);
    v78 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v63];
    [v78 setModalPresentationStyle:2];
    [v78 setModalPresentationCapturesStatusBarAppearance:1];
    v64 = v79;
    v65 = *(v79 + 80);
    if (v65)
    {
      v66 = qword_1006000B8;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1004B80B4();
      sub_100007084(v67, qword_100607AD0);
      v68 = sub_1004B8094();
      v69 = sub_1004BC9A4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Deferring presentation…", v70, 2u);
      }

      v71 = objc_allocWithZone(MSVBlockGuard);
      v84 = sub_10023620C;
      v85 = 0;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_10023720C;
      v83 = &unk_1005B34F8;
      v72 = _Block_copy(&aBlock);
      v73 = [v71 initWithTimeout:v72 interruptionHandler:10.0];
      _Block_release(v72);

      sub_100047AC4(v64, &aBlock);
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      sub_100048998(&aBlock, v74 + 24);
      *(v74 + 120) = v78;
      *(v74 + 128) = 256;
      *(v74 + 136) = 0;
      *(v74 + 144) = 0;
      v61 = v73;
      v75 = v78;
      v65(v64, v75, sub_10005BC70, v74);
      sub_10003CC4C(v65);

      goto LABEL_22;
    }

    sub_1002346EC(v78, 0, 1, 0, 0);

    v76 = v78;
  }
}

unint64_t sub_10014F380()
{
  result = qword_100604738;
  if (!qword_100604738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604738);
  }

  return result;
}

unint64_t sub_10014F3D8()
{
  result = qword_100604740;
  if (!qword_100604740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.UpdateContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.UpdateContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.Status(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudLibrary.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_10014F5B8(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_10014F5E8(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudLibrary.EnablementContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CloudLibrary.EnablementContext(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_10014F7A4()
{
  sub_10014F874();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10014F874()
{
  if (!qword_100604780)
  {
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100604780);
    }
  }
}

uint64_t sub_10014F8C4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10014F8DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014F930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_10014FA44()
{
  sub_10014FAEC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10014FAEC()
{
  if (!qword_1006049F0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    v0 = sub_1004B85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1006049F0);
    }
  }
}

uint64_t sub_10014FB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10014FBA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

unint64_t sub_10014FC24()
{
  result = qword_100604B68;
  if (!qword_100604B68)
  {
    sub_100003B68(&qword_100604B60);
    sub_10014FCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604B68);
  }

  return result;
}

unint64_t sub_10014FCB0()
{
  result = qword_100604B70;
  if (!qword_100604B70)
  {
    sub_100003B68(&qword_100604B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604B70);
  }

  return result;
}

uint64_t sub_10014FD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004B9054();
  *a1 = result;
  return result;
}

uint64_t sub_10014FD88()
{

  return swift_deallocObject();
}

uint64_t sub_10014FDC0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10014FE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014FE58()
{

  return swift_deallocObject();
}

uint64_t sub_10014FEA8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

void sub_10014FEE8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_10014FF00()
{

  return swift_deallocObject();
}

uint64_t sub_10014FF60()
{

  return swift_deallocObject();
}

uint64_t sub_10014FFB4()
{
  v1 = sub_100003ABC(&qword_1006020A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_10015004C()
{
  result = qword_100604C38;
  if (!qword_100604C38)
  {
    sub_100003B68(&qword_100604AF0);
    sub_1001500D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604C38);
  }

  return result;
}

unint64_t sub_1001500D8()
{
  result = qword_100604C40;
  if (!qword_100604C40)
  {
    sub_100003B68(&qword_100604AE0);
    sub_1000206D4(&qword_100604C48, &qword_100604AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604C40);
  }

  return result;
}

uint64_t sub_100150230(uint64_t a1, char a2)
{
  *(v3 + 2217) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 2096) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 2104) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 2112) = v4;
  *(v3 + 2120) = *(v4 - 8);
  *(v3 + 2128) = swift_task_alloc();
  *(v3 + 2136) = swift_task_alloc();
  *(v3 + 2144) = swift_task_alloc();
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = swift_task_alloc();
  *(v3 + 2218) = *(v2 + 72);
  v5 = *(v2 + 80);
  v6 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v6;
  *(v3 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;

  return _swift_task_switch(sub_1001503C4, 0, 0);
}

uint64_t sub_1001503C4()
{
  v107 = v0;
  v1 = *(v0 + 2218);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v71 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v71) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 2216) = 2;
    v73 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v73) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v74 = *(v0 + 2160);
        v75 = *(v0 + 2120);
        v76 = *(v0 + 2112);
        v77 = sub_100007084(v76, qword_1006013A8);
        (*(v75 + 16))(v74, v77, v76);
        v78 = *(v0 + 128);
        *(v0 + 1880) = *(v0 + 112);
        *(v0 + 1896) = v78;
        *(v0 + 1912) = *(v0 + 144);
        v79 = *(v0 + 64);
        *(v0 + 1816) = *(v0 + 48);
        *(v0 + 1832) = v79;
        v80 = *(v0 + 96);
        *(v0 + 1848) = *(v0 + 80);
        *(v0 + 1864) = v80;
        v81 = *(v0 + 32);
        *(v0 + 1784) = *(v0 + 16);
        *(v0 + 1800) = v81;
        sub_10000F778(v0 + 1784, v0 + 1920, &qword_100601C58);
        v82 = sub_1004B8094();
        v83 = sub_1004BC984();
        v84 = os_log_type_enabled(v82, v83);
        v85 = *(v0 + 2160);
        v86 = *(v0 + 2120);
        v87 = *(v0 + 2112);
        if (v84)
        {
          v100 = *(v0 + 2160);
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v101[0] = v89;
          *v88 = 136446210;
          v90 = ActionType.rawValue.getter(*(v0 + 1856));
          v92 = v91;
          sub_100007214(v0 + 1784, &qword_100601C58);
          v93 = sub_100012018(v90, v92, v101);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s: attempted to execute but identifier is hidden", v88, 0xCu);
          sub_100004C6C(v89);

          (*(v86 + 8))(v100, v87);
        }

        else
        {
          sub_100007214(v0 + 1784, &qword_100601C58);

          (*(v86 + 8))(v85, v87);
        }
      }

      sub_100020670();
      swift_allocError();
      *v94 = 0xD000000000000014;
      v94[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 2217) != 1 || (v2 = *(v0 + 64), v101[2] = *(v0 + 48), v101[3] = v2, v101[4] = *(v0 + 80), v3 = *(v0 + 32), v101[0] = *(v0 + 16), v101[1] = v3, v4 = *(v0 + 96), v5 = *(v0 + 104), v6 = *(v0 + 128), v104 = *(v0 + 112), v105 = v6, v106 = *(v0 + 144), v102 = v4, v103 = v5, v7 = v4(v101), v8 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 2144);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2112);
    v12 = sub_100007084(v11, qword_1006013A8);
    *(v0 + 2168) = v12;
    v13 = *(v10 + 16);
    *(v0 + 2176) = v13;
    *(v0 + 2184) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v11);
    v14 = *(v0 + 128);
    *(v0 + 248) = *(v0 + 112);
    *(v0 + 264) = v14;
    *(v0 + 280) = *(v0 + 144);
    v15 = *(v0 + 64);
    *(v0 + 184) = *(v0 + 48);
    *(v0 + 200) = v15;
    v16 = *(v0 + 96);
    *(v0 + 216) = *(v0 + 80);
    *(v0 + 232) = v16;
    v17 = *(v0 + 32);
    *(v0 + 152) = *(v0 + 16);
    *(v0 + 168) = v17;
    sub_10000F778(v0 + 152, v0 + 288, &qword_100601C58);
    v18 = sub_1004B8094();
    v19 = sub_1004BC9A4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 2144);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    if (v20)
    {
      v97 = *(v0 + 2144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v101[0] = v25;
      *v24 = 136446210;
      v26 = ActionType.rawValue.getter(*(v0 + 224));
      v28 = v27;
      sub_100007214(v0 + 152, &qword_100601C58);
      v29 = sub_100012018(v26, v28, v101);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: performing…", v24, 0xCu);
      sub_100004C6C(v25);

      (*(v22 + 8))(v97, v23);
    }

    else
    {
      sub_100007214(v0 + 152, &qword_100601C58);

      (*(v22 + 8))(v21, v23);
    }

    v30 = *(v0 + 2104);
    sub_100009130(0, &qword_1006013C8);
    v31 = [objc_opt_self() mainRunLoop];
    v32 = sub_1004BD0F4();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_1004BCF44();

    sub_100007214(v30, &qword_1006013C0);
    *(v0 + 2072) = v33;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v34 = sub_1004B8544();

    *(v0 + 2080) = v34;
    v35 = *(v0 + 128);
    *(v0 + 520) = *(v0 + 112);
    *(v0 + 536) = v35;
    *(v0 + 552) = *(v0 + 144);
    v36 = *(v0 + 64);
    *(v0 + 456) = *(v0 + 48);
    *(v0 + 472) = v36;
    v37 = *(v0 + 96);
    *(v0 + 488) = *(v0 + 80);
    *(v0 + 504) = v37;
    v38 = *(v0 + 32);
    *(v0 + 424) = *(v0 + 16);
    *(v0 + 440) = v38;
    v39 = *(v0 + 528);
    v40 = swift_allocObject();
    v41 = *(v0 + 128);
    *(v40 + 112) = *(v0 + 112);
    *(v40 + 128) = v41;
    *(v40 + 144) = *(v0 + 144);
    v42 = *(v0 + 64);
    *(v40 + 48) = *(v0 + 48);
    *(v40 + 64) = v42;
    v43 = *(v0 + 96);
    *(v40 + 80) = *(v0 + 80);
    *(v40 + 96) = v43;
    v44 = *(v0 + 32);
    *(v40 + 16) = *(v0 + 16);
    *(v40 + 32) = v44;
    sub_10000F778(v0 + 424, v0 + 560, &qword_100601C58);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 2192) = sub_1004B8644();

    v98 = (v39 + *v39);
    v45 = swift_task_alloc();
    *(v0 + 2200) = v45;
    *v45 = v0;
    v45[1] = sub_100150F88;

    return v98();
  }

  v47 = v7;
  v48 = v8;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 2152);
  v50 = *(v0 + 2120);
  v51 = *(v0 + 2112);
  v52 = sub_100007084(v51, qword_1006013A8);
  (*(v50 + 16))(v49, v52, v51);
  v53 = *(v0 + 128);
  *(v0 + 1608) = *(v0 + 112);
  *(v0 + 1624) = v53;
  *(v0 + 1640) = *(v0 + 144);
  v54 = *(v0 + 64);
  *(v0 + 1544) = *(v0 + 48);
  *(v0 + 1560) = v54;
  v55 = *(v0 + 96);
  *(v0 + 1576) = *(v0 + 80);
  *(v0 + 1592) = v55;
  v56 = *(v0 + 32);
  *(v0 + 1512) = *(v0 + 16);
  *(v0 + 1528) = v56;
  sub_10000F778(v0 + 1512, v0 + 1648, &qword_100601C58);
  sub_10001388C(v47, v48);
  v57 = sub_1004B8094();
  v58 = sub_1004BC984();
  sub_1000130F8(v47, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 2152);
  v61 = *(v0 + 2120);
  v62 = *(v0 + 2112);
  if (v59)
  {
    v63 = swift_slowAlloc();
    *&v101[0] = swift_slowAlloc();
    *v63 = 136446466;
    v96 = v62;
    v99 = v60;
    v64 = ActionType.rawValue.getter(*(v0 + 1584));
    v66 = v65;
    sub_100007214(v0 + 1512, &qword_100601C58);
    v67 = sub_100012018(v64, v66, v101);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    *(v0 + 2056) = v47;
    *(v0 + 2064) = v48;

    sub_100003ABC(&unk_100606160);
    v68 = sub_1004BBF04();
    v70 = sub_100012018(v68, v69, v101);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v99, v96);
  }

  else
  {
    sub_100007214(v0 + 1512, &qword_100601C58);

    (*(v61 + 8))(v60, v62);
  }

  sub_100020670();
  swift_allocError();
  *v72 = v47;
  v72[1] = v48;
LABEL_31:
  swift_willThrow();

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_100150F88()
{
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v2 = sub_100151470;
  }

  else
  {
    v2 = sub_10015109C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015109C()
{
  v35 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 1064) = *(v0 + 112);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 1000) = *(v0 + 48);
  *(v0 + 1016) = v6;
  v7 = *(v0 + 96);
  *(v0 + 1032) = *(v0 + 80);
  *(v0 + 1048) = v7;
  v8 = *(v0 + 32);
  *(v0 + 968) = *(v0 + 16);
  *(v0 + 984) = v8;
  sub_10000F778(v0 + 968, v0 + 1104, &qword_100601C58);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 2136);
  v13 = *(v0 + 2120);
  v14 = *(v0 + 2112);
  if (v11)
  {
    v33 = *(v0 + 2136);
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = ActionType.rawValue.getter(*(v0 + 1040));
    v18 = v17;
    sub_100007214(v0 + 968, &qword_100601C58);
    v19 = sub_100012018(v16, v18, &v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100012018(0, 0xE000000000000000, &v34);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v13 + 8))(v33, v14);
  }

  else
  {
    sub_100007214(v0 + 968, &qword_100601C58);

    (*(v13 + 8))(v12, v14);
  }

  v20 = *(v0 + 2096);
  v21 = sub_1004BC4B4();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *(v0 + 128);
  *(v0 + 1336) = *(v0 + 112);
  *(v0 + 1352) = v22;
  *(v0 + 1368) = *(v0 + 144);
  v23 = *(v0 + 64);
  *(v0 + 1272) = *(v0 + 48);
  *(v0 + 1288) = v23;
  v24 = *(v0 + 96);
  *(v0 + 1304) = *(v0 + 80);
  *(v0 + 1320) = v24;
  v25 = *(v0 + 32);
  *(v0 + 1240) = *(v0 + 16);
  *(v0 + 1256) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = *(v0 + 128);
  *(v26 + 128) = *(v0 + 112);
  *(v26 + 144) = v27;
  *(v26 + 160) = *(v0 + 144);
  v28 = *(v0 + 64);
  *(v26 + 64) = *(v0 + 48);
  *(v26 + 80) = v28;
  v29 = *(v0 + 96);
  *(v26 + 96) = *(v0 + 80);
  *(v26 + 112) = v29;
  v30 = *(v0 + 32);
  *(v26 + 32) = *(v0 + 16);
  *(v26 + 48) = v30;
  sub_10000F778(v0 + 1240, v0 + 1376, &qword_100601C58);
  sub_10001F35C(0, 0, v20, &unk_1004D0AD0, v26);

  sub_100007214(v20, &qword_1006014F0);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100151470()
{
  v29 = v0;
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2128);
  v4 = *(v0 + 2112);

  v1(v3, v2, v4);
  v5 = *(v0 + 128);
  *(v0 + 792) = *(v0 + 112);
  *(v0 + 808) = v5;
  *(v0 + 824) = *(v0 + 144);
  v6 = *(v0 + 64);
  *(v0 + 728) = *(v0 + 48);
  *(v0 + 744) = v6;
  v7 = *(v0 + 96);
  *(v0 + 760) = *(v0 + 80);
  *(v0 + 776) = v7;
  v8 = *(v0 + 32);
  *(v0 + 696) = *(v0 + 16);
  *(v0 + 712) = v8;
  sub_10000F778(v0 + 696, v0 + 832, &qword_100601C58);
  swift_errorRetain();
  v9 = sub_1004B8094();
  v10 = sub_1004BC984();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 2208);
    v12 = *(v0 + 2120);
    v26 = *(v0 + 2112);
    v27 = *(v0 + 2128);
    v13 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_100007214(v0 + 696, &qword_100601C58);
    v17 = sub_100012018(v14, v16, v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 2088) = v11;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 2128);
    v22 = *(v0 + 2120);
    v23 = *(v0 + 2112);
    sub_100007214(v0 + 696, &qword_100601C58);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100151788(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 64) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100601C60);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100151998, 0, 0);
}

uint64_t sub_100151998()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100007084(v67, qword_1006013A8);
        (*(v68 + 16))(v66, v71, v67);
        sub_10000F778(v70, v69, &qword_100601C60);
        v72 = sub_1004B8094();
        v73 = sub_1004BC984();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_100007214(v78, &qword_100601C60);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100012018(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100004C6C(v80);
        }

        else
        {
          sub_100007214(*(v0 + 144), &qword_100601C60);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004FC520;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100007084(v6, qword_1006013A8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_10000F778(v9, v8, &qword_100601C60);
    v12 = sub_1004B8094();
    v13 = sub_1004BC9A4();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_100007214(v18, &qword_100601C60);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100012018(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100004C6C(v20);
    }

    else
    {
      sub_100007214(*(v0 + 128), &qword_100601C60);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009130(0, &qword_1006013C8);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004BD0F4();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004BCF44();

    sub_100007214(v27, &qword_1006013C0);
    *(v0 + 32) = v32;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_1004B8544();

    *(v0 + 40) = v33;
    sub_10000F778(v29, v25, &qword_100601C60);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100025B04(v25, v36 + v35, &qword_100601C60);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 232) = sub_1004B8644();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1001524B0;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100007084(v42, qword_1006013A8);
  (*(v43 + 16))(v41, v46, v42);
  sub_10000F778(v45, v44, &qword_100601C60);

  v47 = sub_1004B8094();
  v48 = sub_1004BC984();
  sub_1000130F8(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_100007214(v53, &qword_100601C60);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100012018(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100003ABC(&unk_100606160);
    v61 = sub_1004BBF04();
    v63 = sub_100012018(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_100007214(*(v0 + 136), &qword_100601C60);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100020670();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1001524B0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10015297C;
  }

  else
  {
    v2 = sub_1001525C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001525C4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C60);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601C60);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100012018(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100012018(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(*(v0 + 112), &qword_100601C60);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004BC4B4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_10000F778(v22, v20, &qword_100601C60);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100025B04(v20, v24 + ((v19 + 32) & ~v19), &qword_100601C60);
  sub_10001F35C(0, 0, v21, &unk_1004D0A80, v24);

  sub_100007214(v21, &qword_1006014F0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10015297C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C60);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601C60);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_100007214(v0[13], &qword_100601C60);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100152CA8(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 64) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100601C68);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100152EB8, 0, 0);
}

uint64_t sub_100152EB8()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100007084(v67, qword_1006013A8);
        (*(v68 + 16))(v66, v71, v67);
        sub_10000F778(v70, v69, &qword_100601C68);
        v72 = sub_1004B8094();
        v73 = sub_1004BC984();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_100007214(v78, &qword_100601C68);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100012018(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100004C6C(v80);
        }

        else
        {
          sub_100007214(*(v0 + 144), &qword_100601C68);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004FC520;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100007084(v6, qword_1006013A8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_10000F778(v9, v8, &qword_100601C68);
    v12 = sub_1004B8094();
    v13 = sub_1004BC9A4();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_100007214(v18, &qword_100601C68);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100012018(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100004C6C(v20);
    }

    else
    {
      sub_100007214(*(v0 + 128), &qword_100601C68);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009130(0, &qword_1006013C8);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004BD0F4();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004BCF44();

    sub_100007214(v27, &qword_1006013C0);
    *(v0 + 32) = v32;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = sub_1004B8544();

    *(v0 + 40) = v33;
    sub_10000F778(v29, v25, &qword_100601C68);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100025B04(v25, v36 + v35, &qword_100601C68);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 232) = sub_1004B8644();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1001539D0;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100007084(v42, qword_1006013A8);
  (*(v43 + 16))(v41, v46, v42);
  sub_10000F778(v45, v44, &qword_100601C68);

  v47 = sub_1004B8094();
  v48 = sub_1004BC984();
  sub_1000130F8(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_100007214(v53, &qword_100601C68);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100012018(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100003ABC(&unk_100606160);
    v61 = sub_1004BBF04();
    v63 = sub_100012018(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_100007214(*(v0 + 136), &qword_100601C68);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100020670();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1001539D0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100153E9C;
  }

  else
  {
    v2 = sub_100153AE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153AE4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C68);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601C68);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100012018(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100012018(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(*(v0 + 112), &qword_100601C68);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004BC4B4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_10000F778(v22, v20, &qword_100601C68);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100025B04(v20, v24 + ((v19 + 32) & ~v19), &qword_100601C68);
  sub_10001F35C(0, 0, v21, &unk_1004D0AA8, v24);

  sub_100007214(v21, &qword_1006014F0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100153E9C()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C68);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601C68);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_100007214(v0[13], &qword_100601C68);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_1001541C8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100154350, 0, 0);
}

uint64_t sub_100154350()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601C98);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601C98);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601C98);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601C98);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601C98);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601C98);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601C98);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100154ED8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601C98);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601C98);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601C98);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100154ED8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100155398;
  }

  else
  {
    v2 = sub_100154FEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100154FEC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601C98);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601C98);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601C98);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601C98);
  sub_10001F35C(0, 0, v19, &unk_1004D0A30, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100155398()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601C98);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601C98);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601C98);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001556A8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100155830, 0, 0);
}

uint64_t sub_100155830()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CA0);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CA0);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CA0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CA0);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CA0);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CA0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CA0);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1001563B8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CA0);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CA0);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CA0);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1001563B8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100156878;
  }

  else
  {
    v2 = sub_1001564CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001564CC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CA0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CA0);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CA0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CA0);
  sub_10001F35C(0, 0, v19, &unk_1004D0A08, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100156878()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CA0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CA0);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CA0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100156B88(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100156D10, 0, 0);
}

uint64_t sub_100156D10()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CB8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CB8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CB8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CB8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CB8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CB8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CB8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100157898;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CB8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CB8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CB8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100157898()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100157D58;
  }

  else
  {
    v2 = sub_1001579AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001579AC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CB8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CB8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CB8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CB8);
  sub_10001F35C(0, 0, v19, &unk_1004D0840, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100157D58()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CB8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CB8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CB8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100158068(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1001581F0, 0, 0);
}

uint64_t sub_1001581F0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CB0);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CB0);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CB0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CB0);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CB0);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CB0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CB0);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100158D78;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CB0);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CB0);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CB0);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100158D78()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100159238;
  }

  else
  {
    v2 = sub_100158E8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100158E8C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CB0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CB0);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CB0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CB0);
  sub_10001F35C(0, 0, v19, &unk_1004D0858, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100159238()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CB0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CB0);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CB0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100159548(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1001596D0, 0, 0);
}

uint64_t sub_1001596D0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CA8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CA8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CA8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CA8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CA8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CA8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CA8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_10015A258;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CA8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CA8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CA8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10015A258()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_10015A718;
  }

  else
  {
    v2 = sub_10015A36C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015A36C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CA8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CA8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CA8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CA8);
  sub_10001F35C(0, 0, v19, &unk_1004D09E0, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10015A718()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CA8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CA8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CA8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10015AA28(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10015ABB0, 0, 0);
}

uint64_t sub_10015ABB0()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601C78);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601C78);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601C78);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601C78);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601C78);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601C78);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601C78);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_10015B738;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601C78);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601C78);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601C78);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10015B738()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_10015BBF8;
  }

  else
  {
    v2 = sub_10015B84C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015B84C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601C78);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601C78);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601C78);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601C78);
  sub_10001F35C(0, 0, v19, &unk_1004D0A58, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10015BBF8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601C78);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601C78);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601C78);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10015BF08(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10015C090, 0, 0);
}

uint64_t sub_10015C090()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CD8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CD8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CD8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CD8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CD8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CD8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CD8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_10015CC18;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CD8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CD8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CD8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10015CC18()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_10015D0D8;
  }

  else
  {
    v2 = sub_10015CD2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015CD2C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CD8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CD8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CD8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CD8);
  sub_10001F35C(0, 0, v19, &unk_1004D0968, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10015D0D8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CD8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CD8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CD8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10015D3E8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10015D570, 0, 0);
}

uint64_t sub_10015D570()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CD0);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CD0);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CD0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CD0);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CD0);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CD0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CD0);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_10015E0F8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CD0);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CD0);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CD0);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10015E0F8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_10015E5B8;
  }

  else
  {
    v2 = sub_10015E20C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015E20C()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CD0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CD0);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CD0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CD0);
  sub_10001F35C(0, 0, v19, &unk_1004D0990, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10015E5B8()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CD0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CD0);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CD0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10015E8C8(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10015EA50, 0, 0);
}

uint64_t sub_10015EA50()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CC8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CC8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CC8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CC8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CC8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CC8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CC8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_10015F5D8;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CC8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CC8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CC8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_10015F5D8()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_10015FA98;
  }

  else
  {
    v2 = sub_10015F6EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015F6EC()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CC8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CC8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CC8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CC8);
  sub_10001F35C(0, 0, v19, &unk_1004D09B8, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10015FA98()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CC8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CC8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CC8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10015FDA8(uint64_t a1, char a2)
{
  *(v3 + 1617) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1496) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1504) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1512) = v4;
  *(v3 + 1520) = *(v4 - 8);
  *(v3 + 1528) = swift_task_alloc();
  *(v3 + 1536) = swift_task_alloc();
  *(v3 + 1544) = swift_task_alloc();
  *(v3 + 1552) = swift_task_alloc();
  *(v3 + 1560) = swift_task_alloc();
  *(v3 + 1618) = *(v2 + 32);
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;

  return _swift_task_switch(sub_10015FF28, 0, 0);
}

uint64_t sub_10015FF28()
{
  v101 = v0;
  v1 = *(v0 + 1618);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1616) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1560);
        v70 = *(v0 + 1520);
        v71 = *(v0 + 1512);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 64);
        *(v0 + 1296) = *(v0 + 48);
        *(v0 + 1312) = v73;
        v74 = *(v0 + 96);
        *(v0 + 1328) = *(v0 + 80);
        *(v0 + 1344) = v74;
        v75 = *(v0 + 32);
        *(v0 + 1264) = *(v0 + 16);
        *(v0 + 1280) = v75;
        sub_10000F778(v0 + 1264, v0 + 1360, &qword_100601D20);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1560);
        v80 = *(v0 + 1520);
        v81 = *(v0 + 1512);
        if (v78)
        {
          v93 = *(v0 + 1560);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1296));
          v86 = v85;
          sub_100007214(v0 + 1264, &qword_100601D20);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1264, &qword_100601D20);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1617) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v3 = *(v0 + 48), v4 = *(v0 + 56), v100 = *(v0 + 104), v5 = *(v0 + 64), v98 = *(v0 + 72), v99 = *(v0 + 88), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1544);
    v9 = *(v0 + 1520);
    v10 = *(v0 + 1512);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1568) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1576) = v12;
    *(v0 + 1584) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v13;
    v14 = *(v0 + 96);
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 192) = v14;
    v15 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v15;
    sub_10000F778(v0 + 112, v0 + 208, &qword_100601D20);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1544);
    v20 = *(v0 + 1520);
    v21 = *(v0 + 1512);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 144));
      v26 = v25;
      sub_100007214(v0 + 112, &qword_100601D20);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 112, &qword_100601D20);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1504);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1472) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1480) = v32;
    v33 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v33;
    v34 = *(v0 + 96);
    *(v0 + 368) = *(v0 + 80);
    *(v0 + 384) = v34;
    v35 = *(v0 + 32);
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = v35;
    v36 = *(v0 + 368);
    v37 = swift_allocObject();
    v38 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v38;
    v39 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v39;
    v40 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v40;
    sub_10000F778(v0 + 304, v0 + 400, &qword_100601D20);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1592) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1600) = v41;
    *v41 = v0;
    v41[1] = sub_100160A80;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1552);
  v46 = *(v0 + 1520);
  v47 = *(v0 + 1512);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 64);
  *(v0 + 1104) = *(v0 + 48);
  *(v0 + 1120) = v49;
  v50 = *(v0 + 96);
  *(v0 + 1136) = *(v0 + 80);
  *(v0 + 1152) = v50;
  v51 = *(v0 + 32);
  *(v0 + 1072) = *(v0 + 16);
  *(v0 + 1088) = v51;
  sub_10000F778(v0 + 1072, v0 + 1168, &qword_100601D20);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1552);
  v56 = *(v0 + 1520);
  v57 = *(v0 + 1512);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1104));
    v61 = v60;
    sub_100007214(v0 + 1072, &qword_100601D20);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1456) = v43;
    *(v0 + 1464) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1072, &qword_100601D20);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100160A80()
{
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v2 = sub_100160F1C;
  }

  else
  {
    v2 = sub_100160B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100160B94()
{
  v31 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1512);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 720) = *(v0 + 48);
  *(v0 + 736) = v5;
  v6 = *(v0 + 96);
  *(v0 + 752) = *(v0 + 80);
  *(v0 + 768) = v6;
  v7 = *(v0 + 32);
  *(v0 + 688) = *(v0 + 16);
  *(v0 + 704) = v7;
  sub_10000F778(v0 + 688, v0 + 784, &qword_100601D20);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1520);
  v13 = *(v0 + 1512);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 720));
    v17 = v16;
    sub_100007214(v0 + 688, &qword_100601D20);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 688, &qword_100601D20);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1496);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 64);
  *(v0 + 912) = *(v0 + 48);
  *(v0 + 928) = v21;
  v22 = *(v0 + 96);
  *(v0 + 944) = *(v0 + 80);
  *(v0 + 960) = v22;
  v23 = *(v0 + 32);
  *(v0 + 880) = *(v0 + 16);
  *(v0 + 896) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v25;
  v26 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v26;
  v27 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v27;
  sub_10000F778(v0 + 880, v0 + 976, &qword_100601D20);
  sub_10001F35C(0, 0, v19, &unk_1004D08A0, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100160F1C()
{
  v28 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1512);

  v1(v3, v2, v4);
  v5 = *(v0 + 64);
  *(v0 + 528) = *(v0 + 48);
  *(v0 + 544) = v5;
  v6 = *(v0 + 96);
  *(v0 + 560) = *(v0 + 80);
  *(v0 + 576) = v6;
  v7 = *(v0 + 32);
  *(v0 + 496) = *(v0 + 16);
  *(v0 + 512) = v7;
  sub_10000F778(v0 + 496, v0 + 592, &qword_100601D20);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1608);
    v26 = *(v0 + 1528);
    v11 = *(v0 + 1520);
    v12 = *(v0 + 1512);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_100007214(v0 + 496, &qword_100601D20);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1488) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1528);
    v22 = *(v0 + 1520);
    v23 = *(v0 + 1512);
    sub_100007214(v0 + 496, &qword_100601D20);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100161224(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1001613AC, 0, 0);
}

uint64_t sub_1001613AC()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601D00);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601D00);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601D00);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601D00);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601D00);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601D00);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601D00);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100161F34;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601D00);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601D00);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601D00);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100161F34()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1001623F4;
  }

  else
  {
    v2 = sub_100162048;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100162048()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601D00);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601D00);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601D00);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601D00);
  sub_10001F35C(0, 0, v19, &unk_1004D08C8, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001623F4()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601D00);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601D00);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601D00);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100162704(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10016288C, 0, 0);
}

uint64_t sub_10016288C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CF8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CF8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CF8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CF8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CF8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CF8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CF8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100163414;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CF8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CF8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CF8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100163414()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_1001638D4;
  }

  else
  {
    v2 = sub_100163528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100163528()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CF8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CF8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CF8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CF8);
  sub_10001F35C(0, 0, v19, &unk_1004D08F0, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1001638D4()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CF8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CF8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CF8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100163BE4(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_100163D6C, 0, 0);
}

uint64_t sub_100163D6C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CF0);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CF0);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CF0);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CF0);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CF0);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CF0);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CF0);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_1001648F4;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CF0);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CF0);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CF0);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_1001648F4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100164DB4;
  }

  else
  {
    v2 = sub_100164A08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100164A08()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CF0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CF0);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CF0);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CF0);
  sub_10001F35C(0, 0, v19, &unk_1004D0918, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100164DB4()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CF0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CF0);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CF0);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001650C4(uint64_t a1, char a2)
{
  *(v3 + 1857) = a2;
  sub_100003ABC(&qword_1006014F0);
  *(v3 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v3 + 1744) = swift_task_alloc();
  v4 = sub_1004B80B4();
  *(v3 + 1752) = v4;
  *(v3 + 1760) = *(v4 - 8);
  *(v3 + 1768) = swift_task_alloc();
  *(v3 + 1776) = swift_task_alloc();
  *(v3 + 1784) = swift_task_alloc();
  *(v3 + 1792) = swift_task_alloc();
  *(v3 + 1800) = swift_task_alloc();
  *(v3 + 1858) = *(v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  *(v3 + 112) = v7;
  v8 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v8;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_10016524C, 0, 0);
}

uint64_t sub_10016524C()
{
  v101 = v0;
  v1 = *(v0 + 1858);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v66 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v66) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *(v0 + 1856) = 2;
    v68 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v68) & 1) == 0)
    {
LABEL_22:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 1800);
        v70 = *(v0 + 1760);
        v71 = *(v0 + 1752);
        v72 = sub_100007084(v71, qword_1006013A8);
        (*(v70 + 16))(v69, v72, v71);
        v73 = *(v0 + 96);
        *(v0 + 1536) = *(v0 + 80);
        *(v0 + 1552) = v73;
        *(v0 + 1568) = *(v0 + 112);
        v74 = *(v0 + 32);
        *(v0 + 1472) = *(v0 + 16);
        *(v0 + 1488) = v74;
        v75 = *(v0 + 64);
        *(v0 + 1504) = *(v0 + 48);
        *(v0 + 1520) = v75;
        sub_10000F778(v0 + 1472, v0 + 1584, &qword_100601CE8);
        v76 = sub_1004B8094();
        v77 = sub_1004BC984();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 1800);
        v80 = *(v0 + 1760);
        v81 = *(v0 + 1752);
        if (v78)
        {
          v93 = *(v0 + 1800);
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v94[0] = v83;
          *v82 = 136446210;
          v84 = ActionType.rawValue.getter(*(v0 + 1520));
          v86 = v85;
          sub_100007214(v0 + 1472, &qword_100601CE8);
          v87 = sub_100012018(v84, v86, v94);

          *(v82 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s: attempted to execute but identifier is hidden", v82, 0xCu);
          sub_100004C6C(v83);

          (*(v80 + 8))(v93, v81);
        }

        else
        {
          sub_100007214(v0 + 1472, &qword_100601CE8);

          (*(v80 + 8))(v79, v81);
        }
      }

      sub_100020670();
      swift_allocError();
      *v88 = 0xD000000000000014;
      v88[1] = 0x80000001004FC520;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1857) != 1 || (v2 = *(v0 + 32), v94[0] = *(v0 + 16), v94[1] = v2, v94[2] = *(v0 + 48), v3 = *(v0 + 64), v4 = *(v0 + 72), v100 = *(v0 + 120), v5 = *(v0 + 80), v98 = *(v0 + 88), v99 = *(v0 + 104), v95 = v3, v96 = v4, v97 = v5, v6 = v4(v94), v7 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    v10 = *(v0 + 1752);
    v11 = sub_100007084(v10, qword_1006013A8);
    *(v0 + 1808) = v11;
    v12 = *(v9 + 16);
    *(v0 + 1816) = v12;
    *(v0 + 1824) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v11, v10);
    v13 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v13;
    *(v0 + 224) = *(v0 + 112);
    v14 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v14;
    v15 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v15;
    sub_10000F778(v0 + 128, v0 + 240, &qword_100601CE8);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 1784);
    v20 = *(v0 + 1760);
    v21 = *(v0 + 1752);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v94[0] = v23;
      *v22 = 136446210;
      v24 = ActionType.rawValue.getter(*(v0 + 176));
      v26 = v25;
      sub_100007214(v0 + 128, &qword_100601CE8);
      v27 = sub_100012018(v24, v26, v94);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: performing…", v22, 0xCu);
      sub_100004C6C(v23);
    }

    else
    {
      sub_100007214(v0 + 128, &qword_100601CE8);
    }

    (*(v20 + 8))(v19, v21);
    v28 = *(v0 + 1744);
    sub_100009130(0, &qword_1006013C8);
    v29 = [objc_opt_self() mainRunLoop];
    v30 = sub_1004BD0F4();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = sub_1004BCF44();

    sub_100007214(v28, &qword_1006013C0);
    *(v0 + 1712) = v31;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v32 = sub_1004B8544();

    *(v0 + 1720) = v32;
    v33 = *(v0 + 96);
    *(v0 + 416) = *(v0 + 80);
    *(v0 + 432) = v33;
    *(v0 + 448) = *(v0 + 112);
    v34 = *(v0 + 32);
    *(v0 + 352) = *(v0 + 16);
    *(v0 + 368) = v34;
    v35 = *(v0 + 64);
    *(v0 + 384) = *(v0 + 48);
    *(v0 + 400) = v35;
    v36 = *(v0 + 432);
    v37 = swift_allocObject();
    v38 = *(v0 + 96);
    v37[5] = *(v0 + 80);
    v37[6] = v38;
    v37[7] = *(v0 + 112);
    v39 = *(v0 + 32);
    v37[1] = *(v0 + 16);
    v37[2] = v39;
    v40 = *(v0 + 64);
    v37[3] = *(v0 + 48);
    v37[4] = v40;
    sub_10000F778(v0 + 352, v0 + 464, &qword_100601CE8);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1832) = sub_1004B8644();

    v91 = (v36 + *v36);
    v41 = swift_task_alloc();
    *(v0 + 1840) = v41;
    *v41 = v0;
    v41[1] = sub_100165DD4;

    return v91();
  }

  v43 = v6;
  v44 = v7;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1792);
  v46 = *(v0 + 1760);
  v47 = *(v0 + 1752);
  v48 = sub_100007084(v47, qword_1006013A8);
  (*(v46 + 16))(v45, v48, v47);
  v49 = *(v0 + 96);
  *(v0 + 1312) = *(v0 + 80);
  *(v0 + 1328) = v49;
  *(v0 + 1344) = *(v0 + 112);
  v50 = *(v0 + 32);
  *(v0 + 1248) = *(v0 + 16);
  *(v0 + 1264) = v50;
  v51 = *(v0 + 64);
  *(v0 + 1280) = *(v0 + 48);
  *(v0 + 1296) = v51;
  sub_10000F778(v0 + 1248, v0 + 1360, &qword_100601CE8);
  sub_10001388C(v43, v44);
  v52 = sub_1004B8094();
  v53 = sub_1004BC984();
  sub_1000130F8(v43, v44);
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1792);
  v56 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  if (v54)
  {
    v58 = swift_slowAlloc();
    *&v94[0] = swift_slowAlloc();
    *v58 = 136446466;
    v90 = v57;
    v92 = v55;
    v59 = ActionType.rawValue.getter(*(v0 + 1296));
    v61 = v60;
    sub_100007214(v0 + 1248, &qword_100601CE8);
    v62 = sub_100012018(v59, v61, v94);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    *(v0 + 1696) = v43;
    *(v0 + 1704) = v44;

    sub_100003ABC(&unk_100606160);
    v63 = sub_1004BBF04();
    v65 = sub_100012018(v63, v64, v94);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v52, v53, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v92, v90);
  }

  else
  {
    sub_100007214(v0 + 1248, &qword_100601CE8);

    (*(v56 + 8))(v55, v57);
  }

  sub_100020670();
  swift_allocError();
  *v67 = v43;
  v67[1] = v44;
LABEL_31:
  swift_willThrow();

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_100165DD4()
{
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v2 = sub_100166294;
  }

  else
  {
    v2 = sub_100165EE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100165EE8()
{
  v31 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1752);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 864) = *(v0 + 80);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 800) = *(v0 + 16);
  *(v0 + 816) = v6;
  v7 = *(v0 + 64);
  *(v0 + 832) = *(v0 + 48);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CE8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1776);
  v12 = *(v0 + 1760);
  v13 = *(v0 + 1752);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = ActionType.rawValue.getter(*(v0 + 848));
    v17 = v16;
    sub_100007214(v0 + 800, &qword_100601CE8);
    v18 = sub_100012018(v15, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_100012018(0, 0xE000000000000000, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform success%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(v0 + 800, &qword_100601CE8);
  }

  (*(v12 + 8))(v11, v13);
  v19 = *(v0 + 1736);
  v20 = sub_1004BC4B4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v0 + 48);
  *(v0 + 1072) = *(v0 + 64);
  v22 = *(v0 + 96);
  *(v0 + 1088) = *(v0 + 80);
  *(v0 + 1104) = v22;
  *(v0 + 1120) = *(v0 + 112);
  v23 = *(v0 + 32);
  *(v0 + 1024) = *(v0 + 16);
  *(v0 + 1040) = v23;
  *(v0 + 1056) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = *(v0 + 96);
  *(v24 + 96) = *(v0 + 80);
  *(v24 + 112) = v25;
  *(v24 + 128) = *(v0 + 112);
  v26 = *(v0 + 32);
  *(v24 + 32) = *(v0 + 16);
  *(v24 + 48) = v26;
  v27 = *(v0 + 64);
  *(v24 + 64) = *(v0 + 48);
  *(v24 + 80) = v27;
  sub_10000F778(v0 + 1024, v0 + 1136, &qword_100601CE8);
  sub_10001F35C(0, 0, v19, &unk_1004D0940, v24);

  sub_100007214(v19, &qword_1006014F0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100166294()
{
  v28 = v0;
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1752);

  v1(v3, v2, v4);
  v5 = *(v0 + 96);
  *(v0 + 640) = *(v0 + 80);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 576) = *(v0 + 16);
  *(v0 + 592) = v6;
  v7 = *(v0 + 64);
  *(v0 + 608) = *(v0 + 48);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CE8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1848);
    v26 = *(v0 + 1768);
    v11 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v13 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CE8);
    v17 = sub_100012018(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1728) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1768);
    v22 = *(v0 + 1760);
    v23 = *(v0 + 1752);
    sub_100007214(v0 + 576, &qword_100601CE8);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001665A4(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  sub_100003ABC(&qword_1006014F0);
  *(v2 + 1856) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0);
  *(v2 + 1864) = swift_task_alloc();
  v3 = sub_1004B80B4();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(sub_100166708, 0, 0);
}

uint64_t sub_100166708()
{
  v79 = v0;
  v1 = *(*(v0 + 1848) + 192);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v54 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v54) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 1986) = 2;
    v55 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55) & 1) == 0)
    {
LABEL_21:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 1920);
        v57 = *(v0 + 1880);
        v58 = *(v0 + 1872);
        v59 = *(v0 + 1848);
        v60 = sub_100007084(v58, qword_1006013A8);
        (*(v57 + 16))(v56, v60, v58);
        sub_10000F778(v59, v0 + 1552, &qword_100602058);
        v61 = sub_1004B8094();
        v62 = sub_1004BC984();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 1920);
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        if (v63)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v67 = 136446210;
          v69 = *(v0 + 1744);
          sub_100007214(v0 + 1552, &qword_100602058);
          v70 = ActionType.rawValue.getter(v69);
          v72 = sub_100012018(v70, v71, v78);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: attempted to execute but identifier is hidden", v67, 0xCu);
          sub_100004C6C(v68);
        }

        else
        {
          sub_100007214(v0 + 1552, &qword_100602058);
        }

        (*(v65 + 8))(v64, v66);
      }

      v34 = 0x80000001004FC520;
      v33 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1987) != 1 || (v2 = (*(*(v0 + 1848) + 200))(), v3 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1904);
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1848);
    v8 = sub_100007084(v6, qword_1006013A8);
    *(v0 + 1928) = v8;
    v9 = *(v5 + 16);
    *(v0 + 1936) = v9;
    *(v0 + 1944) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v8, v6);
    sub_10000F778(v7, v0 + 16, &qword_100602058);
    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1904);
    v14 = *(v0 + 1880);
    v15 = *(v0 + 1872);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v78[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + 208);
      sub_100007214(v0 + 16, &qword_100602058);
      v19 = ActionType.rawValue.getter(v18);
      v21 = sub_100012018(v19, v20, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: performing…", v16, 0xCu);
      sub_100004C6C(v17);
    }

    else
    {
      sub_100007214(v0 + 16, &qword_100602058);
    }

    v22 = *(v14 + 8);
    v22(v13, v15);
    *(v0 + 1952) = v22;
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1848);
    sub_100009130(0, &qword_1006013C8);
    v25 = [objc_opt_self() mainRunLoop];
    v26 = sub_1004BD0F4();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = sub_1004BCF44();

    sub_100007214(v23, &qword_1006013C0);
    *(v0 + 1824) = v27;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher);
    v28 = sub_1004B8544();

    *(v0 + 1832) = v28;
    sub_10000F778(v24, v0 + 272, &qword_100602058);
    v29 = swift_allocObject();
    sub_100025B04(v0 + 272, v29 + 16, &qword_100602058);
    sub_100003ABC(&qword_1006013D8);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8);
    *(v0 + 1960) = sub_1004B8644();

    v76 = (*(v24 + 224) + **(v24 + 224));
    v30 = swift_task_alloc();
    *(v0 + 1968) = v30;
    *v30 = v0;
    v30[1] = sub_1001671A8;
    v31 = *(v0 + 1848);

    return v76(v0 + 1984, v31);
  }

  v33 = v2;
  v34 = v3;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1912);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1872);
  v38 = *(v0 + 1848);
  v39 = sub_100007084(v37, qword_1006013A8);
  (*(v36 + 16))(v35, v39, v37);
  sub_10000F778(v38, v0 + 1296, &qword_100602058);

  v40 = sub_1004B8094();
  v41 = sub_1004BC984();
  sub_1000130F8(v33, v34);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1912);
  v44 = *(v0 + 1880);
  v45 = *(v0 + 1872);
  if (v42)
  {
    v77 = *(v0 + 1872);
    v46 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v46 = 136446466;
    v47 = *(v0 + 1488);
    sub_100007214(v0 + 1296, &qword_100602058);
    v48 = ActionType.rawValue.getter(v47);
    v75 = v43;
    v50 = sub_100012018(v48, v49, v78);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v0 + 1808) = v33;
    *(v0 + 1816) = v34;

    sub_100003ABC(&unk_100606160);
    v51 = sub_1004BBF04();
    v53 = sub_100012018(v51, v52, v78);

    *(v46 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v75, v77);
  }

  else
  {
    sub_100007214(v0 + 1296, &qword_100602058);

    (*(v44 + 8))(v43, v45);
  }

LABEL_31:
  sub_100020670();
  swift_allocError();
  *v73 = v33;
  v73[1] = v34;
  swift_willThrow();

  v74 = *(v0 + 8);

  return v74();
}