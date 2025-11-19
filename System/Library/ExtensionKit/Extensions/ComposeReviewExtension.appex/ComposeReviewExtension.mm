uint64_t sub_1000011F0()
{
  v0 = sub_100002AEC();

  return ReviewExtensionScene.init(content:)(sub_10000124C, 0, &type metadata for ComposeReviewExtensionView, v0);
}

uint64_t sub_10000124C@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100001284(uint64_t a1)
{
  v2 = sub_100002A98();

  return ReviewExtension.configuration.getter(a1, v2);
}

void sub_1000012D4()
{
  sub_10000331C();
  v1 = v0;
  v3 = v2;
  v74 = v4;
  v5 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  v6 = sub_1000031E4(v5);
  v71 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100003268();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v78 = sub_100002CF0(&qword_10000C040, &qword_100003A00);
  sub_10000321C(v78);
  v17 = *(v16 + 64);
  sub_10000322C();
  __chkstk_darwin(v18);
  sub_100003290();
  v20 = v19;
  v21 = sub_100002CF0(&qword_10000C048, &qword_100003A08);
  v22 = sub_1000031E4(v21);
  v72 = v23;
  v73 = v22;
  v25 = *(v24 + 64);
  sub_10000322C();
  __chkstk_darwin(v26);
  sub_100003290();
  v79 = v27;
  v28 = sub_100003514();
  v29 = sub_1000031E4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v29);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1)
  {
    v87 = v3;
    v36 = v3;
  }

  else
  {

    sub_100003614();
    v37 = sub_100003544();
    sub_100003484();

    sub_100003504();
    swift_getAtKeyPath();
    sub_100002D38(v3, 0);
    (*(v31 + 8))(v35, v28);
  }

  v69 = swift_allocBox();
  v39 = v38;
  sub_1000033E4();
  sub_100002FD8(&qword_10000C050, &type metadata accessor for ReviewExtensionService);
  v77 = v39;
  sub_1000035D4();
  v40 = v20;
  *v20 = sub_100003524();
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v41 = v20 + *(sub_100002CF0(&qword_10000C058, &qword_100003A10) + 44);
  sub_100001990();
  v42 = v71;
  v75 = *(v71 + 16);
  v76 = v71 + 16;
  v75(v12, v39, v5);
  sub_1000035C4();
  v43 = *(v42 + 8);
  v43(v12, v5);
  swift_getKeyPath();
  sub_1000035E4();

  v43(v15, v5);
  v67 = v43;
  v45 = v87;
  v44 = v88;
  v70 = v15;
  v46 = v89;
  swift_getKeyPath();
  v84 = v45;
  v85 = v44;
  v86 = v46;
  v71 = sub_100002CF0(&qword_10000C060, &qword_100003A78);
  sub_1000035A4();

  v66 = v82;
  v65 = v83;

  v47 = sub_1000032F0();
  v48(v47);
  sub_1000035B4();
  v43(v12, v5);
  v49 = v80;
  sub_1000033A4();

  sub_100003238();
  v68 = sub_100002F54(v50, v51, v52);

  v53 = v65;
  sub_100003564();

  swift_unknownObjectRelease();

  sub_1000030D8(v40, &qword_10000C040, &qword_100003A00);
  v54 = sub_1000032F0();
  v55(v54);
  v56 = v70;
  sub_1000035C4();
  v57 = v67;
  v67(v12, v5);
  swift_getKeyPath();
  sub_1000035E4();

  v57(v56, v5);
  v58 = v87;
  v59 = v88;
  v60 = v89;
  swift_getKeyPath();
  v84 = v58;
  v85 = v59;
  v86 = v60;
  sub_1000035A4();

  v61 = v83;

  v80 = v78;
  v81 = v68;
  sub_100003250();
  swift_getOpaqueTypeConformance2();
  v62 = v73;
  v63 = v79;
  sub_100003554();

  (*(v72 + 8))(v63, v62);

  sub_100003304();
}

void sub_100001990()
{
  sub_10000331C();
  v59 = v0;
  v61 = v1;
  v58 = sub_100002CF0(&qword_10000C090, &qword_100003AD0);
  sub_10000321C(v58);
  v3 = *(v2 + 64);
  sub_10000322C();
  __chkstk_darwin();
  sub_100003290();
  v54 = v4;
  v5 = sub_100002CF0(&qword_10000C098, &qword_100003AD8);
  sub_10000321C(v5);
  v7 = *(v6 + 64);
  sub_10000322C();
  __chkstk_darwin();
  v9 = &v51 - v8;
  v55 = sub_100002CF0(&qword_10000C0A0, &qword_100003AE0);
  sub_10000321C(v55);
  v11 = *(v10 + 64);
  sub_10000322C();
  __chkstk_darwin();
  sub_100003290();
  v56 = v12;
  v60 = sub_100002CF0(&qword_10000C0A8, &qword_100003AE8);
  sub_10000321C(v60);
  v14 = *(v13 + 64);
  sub_10000322C();
  __chkstk_darwin();
  sub_100003290();
  v57 = v15;
  v16 = sub_100002CF0(&qword_10000C0B0, &qword_100003AF0);
  sub_1000031E4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_10000322C();
  __chkstk_darwin();
  v22 = &v51 - v21;
  v23 = *(*(sub_100002CF0(&qword_10000C0B8, &qword_100003AF8) - 8) + 64);
  __chkstk_darwin();
  sub_100003268();
  v26 = (v24 - v25);
  __chkstk_darwin();
  v28 = &v51 - v27;
  v29 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_10000322C();
  __chkstk_darwin();
  v35 = &v51 - v34;
  v36 = swift_projectBox();
  (*(v31 + 16))(v35, v36, v29);
  sub_1000035B4();
  v37 = v29;
  v38 = v28;
  (*(v31 + 8))(v35, v37);
  v39 = v62;
  sub_1000033C4();

  v40 = sub_1000033B4();
  if (sub_100002D5C(v28, 1, v40) == 1)
  {
    goto LABEL_2;
  }

  v52 = v28;
  v53 = v5;
  v59 = v9;
  sub_100003078(v28, v26, &qword_10000C0B8, &qword_100003AF8);
  v41 = *(v40 - 8);
  v42 = (*(v41 + 88))(v26, v40);
  if (v42 == enum case for ReviewExtensionService.State.loaded(_:))
  {
    (*(v41 + 96))(v26, v40);
    v43 = *v26;
    sub_100003364();
    sub_100002FD8(&qword_10000C0F8, &type metadata accessor for ReviewComposerView);
    v44 = v54;
    sub_1000034B4();
    v45 = sub_1000033F4();
    KeyPath = swift_getKeyPath();
    v62 = v45;
    v47 = sub_1000034A4();
    v48 = (v44 + *(v58 + 36));
    *v48 = KeyPath;
    v48[1] = v47;
    sub_100003078(v44, v56, &qword_10000C090, &qword_100003AD0);
    swift_storeEnumTagMultiPayload();
    sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
    sub_100002E70();
    v49 = v57;
    sub_100003534();
    sub_100003078(v49, v59, &qword_10000C0A8, &qword_100003AE8);
    swift_storeEnumTagMultiPayload();
    sub_100002DB8();
    sub_100003534();

    sub_1000030D8(v49, &qword_10000C0A8, &qword_100003AE8);
    sub_1000030D8(v44, &qword_10000C090, &qword_100003AD0);
LABEL_7:
    v38 = v52;
    goto LABEL_8;
  }

  if (v42 == enum case for ReviewExtensionService.State.loading(_:))
  {
    sub_100003494();
    (*(v18 + 16))(v56, v22, v16);
    swift_storeEnumTagMultiPayload();
    sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
    sub_100002E70();
    v50 = v57;
    sub_100003534();
    sub_100003078(v50, v59, &qword_10000C0A8, &qword_100003AE8);
    swift_storeEnumTagMultiPayload();
    sub_100002DB8();
    sub_100003534();
    sub_1000030D8(v50, &qword_10000C0A8, &qword_100003AE8);
    (*(v18 + 8))(v22, v16);
    goto LABEL_7;
  }

  (*(v41 + 8))(v26, v40);
  v9 = v59;
  v38 = v52;
LABEL_2:
  sub_100003494();
  (*(v18 + 16))(v9, v22, v16);
  swift_storeEnumTagMultiPayload();
  sub_100002DB8();
  sub_1000031F8(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
  sub_100003534();
  (*(v18 + 8))(v22, v16);
LABEL_8:
  sub_1000030D8(v38, &qword_10000C0B8, &qword_100003AF8);
  sub_100003304();
}

uint64_t sub_1000020E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100003384();
  *a2 = result;
  return result;
}

uint64_t sub_100002114(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_100003394();
}

uint64_t sub_100002140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100003444();
  *a2 = result;
  return result;
}

uint64_t sub_10000216C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_100003454();
}

void sub_10000219C()
{
  sub_10000331C();
  v51 = v0;
  v48 = v1;
  v2 = *(*(sub_100002CF0(&qword_10000C080, &qword_100003AC0) - 8) + 64);
  __chkstk_darwin();
  sub_100003268();
  v47 = v3 - v4;
  __chkstk_darwin();
  v6 = &v44 - v5;
  v7 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10000322C();
  __chkstk_darwin();
  v12 = sub_100002CF0(&qword_10000C088, &qword_100003AC8);
  sub_1000031E4(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_10000322C();
  __chkstk_darwin();
  sub_100003290();
  v52 = v17;
  swift_projectBox();
  v18 = *(v9 + 16);
  v19 = sub_100003278();
  v49 = v20;
  v20(v19);
  sub_10000329C();
  v21 = *(v9 + 8);
  v22 = sub_1000032E4();
  v50 = v23;
  v23(v22);
  v24 = v53;
  v25 = sub_100003384();

  sub_100003464();
  if (sub_100002D5C(v6, 1, v12) == 1)
  {
    sub_1000030D8(v6, &qword_10000C080, &qword_100003AC0);
  }

  else
  {
    v45 = v14;
    (*(v14 + 32))(v52, v6, v12);
    v26 = sub_100003278();
    v27 = v49;
    v49(v26);
    sub_10000329C();
    v28 = sub_1000032E4();
    v29 = v50;
    v50(v28);
    v30 = v53;
    v31 = sub_100003384();

    v46 = v12;
    sub_100002D84(v47, 1, 1, v12);
    sub_100003474();

    v32 = sub_100003278();
    v27(v32);
    sub_10000329C();
    v33 = sub_1000032E4();
    v29(v33);
    v34 = v53;
    v35 = sub_100003384();

    sub_100003454();
    v36 = v48;
    v37 = v51;
    v38 = v52;
    if ((v51 & 1) == 0)
    {
      v39 = sub_100003278();
      v49(v39);
      v40 = v36;
      sub_10000329C();
      v41 = sub_1000032E4();
      v50(v41);
      v42 = v53;
      v43 = [v40 account];
      sub_1000033D4();

      sub_100002DAC(v36, 0);
      v37 = v51;
    }

    sub_10000253C(v36, v37 & 1, &qword_10000C088, &qword_100003AC8);
    (*(v45 + 8))(v38, v46);
  }

  sub_100003304();
}

uint64_t sub_10000253C(void *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100002CF0(a3, a4);
    return sub_1000035F4();
  }

  else
  {
    v7 = a1;
    sub_100002CF0(a3, a4);
    return sub_100003604();
  }
}

uint64_t sub_1000025B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100003404();
  *a2 = result;
  return result;
}

uint64_t sub_1000025E4(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_100003414();
}

void sub_100002614()
{
  sub_10000331C();
  v36 = v0;
  v37 = v1;
  v2 = *(*(sub_100002CF0(&qword_10000C070, &qword_100003AB0) - 8) + 64);
  __chkstk_darwin();
  sub_100003268();
  v35 = v3 - v4;
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = sub_100002CF0(&qword_10000C038, &qword_1000039F8);
  sub_1000031E4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_10000322C();
  __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = sub_100002CF0(&qword_10000C078, &qword_100003AB8);
  sub_1000031E4(v14);
  v39 = v15;
  v17 = *(v16 + 64);
  sub_10000322C();
  __chkstk_darwin();
  sub_100003290();
  v38 = v18;
  swift_projectBox();
  v19 = *(v9 + 16);
  v20 = sub_1000032B8();
  v34 = v21;
  v21(v20);
  sub_1000032C8();
  v22 = *(v9 + 8);
  v22(v13, v7);
  v23 = v40;
  v24 = sub_100003384();

  sub_100003424();
  if (sub_100002D5C(v6, 1, v14) == 1)
  {
    sub_1000030D8(v6, &qword_10000C070, &qword_100003AB0);
  }

  else
  {
    (*(v39 + 32))(v38, v6, v14);
    v25 = sub_1000032B8();
    v26 = v34;
    v34(v25);
    sub_1000032C8();
    v22(v13, v7);
    v27 = v40;
    v28 = sub_100003384();

    sub_100002D84(v35, 1, 1, v14);
    sub_100003434();

    v29 = sub_1000032B8();
    v26(v29);
    sub_1000032C8();
    v22(v13, v7);
    v30 = v40;
    v31 = sub_100003384();

    sub_100003414();
    v32 = v38;
    sub_10000253C(v37, v36 & 1, &qword_10000C078, &qword_100003AB8);
    (*(v39 + 8))(v32, v14);
  }

  sub_100003304();
}

void sub_100002968()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1000012D4();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000029D0();
  sub_100003334();
  return 0;
}

unint64_t sub_1000029D0()
{
  result = qword_10000C008;
  if (!qword_10000C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C008);
  }

  return result;
}

unint64_t sub_100002A98()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_100002AEC()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100002B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034C4();
  *a1 = result;
  return result;
}

uint64_t sub_100002BA4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100002BB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100002BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100002C90(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002CF0(uint64_t *a1, uint64_t *a2)
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

void sub_100002D38(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_100002DAC(id a1, char a2)
{
  if (a2)
  {
    _swift_errorRelease(a1);
  }

  else
  {
  }
}

unint64_t sub_100002DB8()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    sub_100002C90(&qword_10000C0A8, &qword_100003AE8);
    sub_100002F54(&qword_10000C0C8, &qword_10000C0B0, &qword_100003AF0);
    sub_100002E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002E70()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    sub_100002C90(&qword_10000C090, &qword_100003AD0);
    sub_100002F54(&qword_10000C0D8, &qword_10000C0E0, &qword_100003B00);
    sub_100002F54(&qword_10000C0E8, &qword_10000C0F0, &qword_100003B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002F54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002C90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002F9C()
{

  return ReviewComposerView.init(viewModel:)(v0);
}

uint64_t sub_100002FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034E4();
  *a1 = result;
  return result;
}

uint64_t sub_10000304C(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000034F4();
}

uint64_t sub_100003078(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002CF0(a3, a4);
  sub_10000321C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000030D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002CF0(a2, a3);
  sub_10000321C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100003130()
{
  sub_100002C90(&qword_10000C048, &qword_100003A08);
  sub_100002C90(&qword_10000C040, &qword_100003A00);
  sub_100003238();
  sub_100002F54(v0, &qword_10000C040, &qword_100003A00);
  sub_100003250();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000031F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100002F54(a1, a2, a3);
}

uint64_t sub_10000329C()
{

  return sub_1000035B4();
}

uint64_t sub_1000032C8()
{

  return sub_1000035B4();
}

uint64_t sub_1000032F0()
{
  result = v0;
  v4 = *(v1 - 208);
  v3 = *(v1 - 200);
  v5 = *(v1 - 216);
  return result;
}