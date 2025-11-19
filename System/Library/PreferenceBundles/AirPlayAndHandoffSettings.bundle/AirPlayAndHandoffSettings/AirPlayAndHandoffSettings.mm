uint64_t sub_15DC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_15F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1638(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_16A8()
{
  v0 = sub_1B0C(&qword_182C0, &qword_FF30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v1 + 16))(v5, v8, v0);
  sub_F73C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v0);
  return sub_F6DC();
}

uint64_t sub_1854@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1960()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_43BC(v1, v2);
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v3 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_182D0, &qword_FDF0);
  sub_1BB4();
  sub_F71C();
}

uint64_t sub_1B0C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1B54()
{
  result = qword_182C8;
  if (!qword_182C8)
  {
    sub_F2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182C8);
  }

  return result;
}

unint64_t sub_1BB4()
{
  result = qword_182D8;
  if (!qword_182D8)
  {
    sub_1C18(&qword_182D0, &qword_FDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182D8);
  }

  return result;
}

uint64_t sub_1C18(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F24C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C90(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F25C();
}

unint64_t sub_1CBC()
{
  result = qword_182E0;
  if (!qword_182E0)
  {
    sub_1C18(&qword_182E8, &unk_101D0);
    sub_1BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182E0);
  }

  return result;
}

uint64_t sub_1D80@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v27[0] = a3;
  v5 = sub_1B0C(&qword_182F0, &qword_FF20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1B0C(&qword_182F8, &qword_FF28);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v27 - v9;
  v11 = sub_F40C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v27[1] = a1;
    v16 = a1;
  }

  else
  {

    sub_F87C();
    v17 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v12 + 8))(v15, v11);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  v18 = swift_allocBox();
  sub_F2FC();
  sub_3B3C(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_F74C();
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 sf_inRetailKioskMode];

  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v23 = __chkstk_darwin(v21);
    v27[-4] = a1;
    LOBYTE(v27[-3]) = a2 & 1;
    v27[-2] = v18;
    __chkstk_darwin(v23);
    v27[-4] = v18;
    v27[-3] = a1;
    LOBYTE(v27[-2]) = v24;
    sub_1B0C(&qword_18300, &qword_FF38);
    sub_3644();
    sub_F54C();
    sub_1B0C(&qword_18328, &qword_FF50);
    sub_37A8();
    sub_3C68(&qword_18368, &qword_182F0, &qword_FF20);
    sub_F3AC();
    v22 = 0;
  }

  v25 = sub_1B0C(&qword_18370, &qword_FF70);
  (*(*(v25 - 8) + 56))(v10, v22, 1, v25);
  sub_3970(v10, v27[0]);
}

uint64_t sub_21CC()
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v0 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_18378, &qword_FF78);
  sub_1C18(&qword_18310, &qword_FF40);
  sub_1C18(&qword_18318, &qword_FF48);
  sub_F42C();
  sub_3C68(&qword_18320, &qword_18318, &qword_FF48);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_F71C();
}

uint64_t sub_23DC@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v43 = a2;
  v41 = a1;
  v49 = a3;
  v3 = sub_F42C();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v46 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0C(&qword_18380, &qword_FF80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1B0C(&qword_182C0, &qword_FF30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v37 - v15;
  v17 = sub_1B0C(&qword_18318, &qword_FF48);
  v42 = *(v17 - 8);
  v18 = *(v42 + 64);
  __chkstk_darwin(v17);
  v20 = v37 - v19;
  v21 = sub_1B0C(&qword_18310, &qword_FF40);
  v22 = *(v21 - 8);
  v44 = v21;
  v45 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v37 - v24;
  v26 = sub_F48C();
  v39 = v27;
  v40 = v26;
  v37[3] = v28;
  v38 = v29;
  v30 = swift_projectBox();
  (*(v10 + 16))(v14, v30, v9);
  sub_F73C();
  v31 = *(v10 + 8);
  v31(v14, v9);
  swift_getKeyPath();
  sub_F75C();

  v31(v16, v9);
  v50 = v41;
  v51 = v43 & 1;
  sub_F14C();
  sub_1B0C(&qword_18388, &qword_FFB8);
  sub_3B3C(&qword_18390, &type metadata accessor for AirPlayMode);
  sub_3A20();
  sub_F6CC();
  v32 = v46;
  sub_F41C();
  v33 = sub_3C68(&qword_18320, &qword_18318, &qword_FF48);
  v34 = v47;
  sub_F5EC();
  (*(v48 + 8))(v32, v34);
  (*(v42 + 8))(v20, v17);
  v52 = v17;
  v53 = v34;
  v54 = v33;
  v55 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_F5FC();
  return (*(v45 + 8))(v25, v35);
}

uint64_t sub_28F8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_F14C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = *a2;
  return sub_F1AC();
}

uint64_t sub_29C4(void *a1, char a2)
{
  sub_F13C();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  sub_3B30(a1, a2 & 1);
  sub_1B0C(&qword_183A0, &unk_FFC0);
  sub_F14C();
  sub_1B0C(&qword_18340, &qword_FF58);
  sub_3C68(&qword_183A8, &qword_183A0, &unk_FFC0);
  sub_3834();
  sub_3B3C(&qword_183B0, &type metadata accessor for AirPlayMode);
  return sub_F70C();
}

uint64_t sub_2B28@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v3 = sub_F14C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for AirPlayMode.never(_:))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v9 = qword_19098;
    v10 = sub_F57C();
    v12 = v11;
    *&v33 = v10;
    *(&v33 + 1) = v11;
    v14 = v13 & 1;
    *&v34 = v13 & 1;
    *(&v34 + 1) = v15;
    LOBYTE(v35) = 0;
    sub_3B84(v10, v11, v13 & 1);

    sub_F4DC();
    v33 = v36;
    v34 = v37;
    LOBYTE(v35) = v38;
    HIBYTE(v35) = 1;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  else if (v8 == enum case for AirPlayMode.ask(_:))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v16 = qword_19098;
    v10 = sub_F57C();
    v12 = v17;
    *&v33 = v10;
    *(&v33 + 1) = v17;
    v14 = v18 & 1;
    *&v34 = v18 & 1;
    *(&v34 + 1) = v19;
    LOBYTE(v35) = 0;
    sub_3B84(v10, v17, v18 & 1);

    sub_F4DC();
    v33 = v36;
    v34 = v37;
    v35 = v38;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  else
  {
    if (v8 != enum case for AirPlayMode.automatic(_:))
    {
      v33 = 0u;
      v34 = 0u;
      LOBYTE(v35) = 1;
      sub_F4DC();
      v33 = v36;
      v34 = v37;
      LOBYTE(v35) = v38;
      HIBYTE(v35) = 1;
      sub_1B0C(&qword_18350, &qword_FF60);
      sub_1B0C(&qword_18360, &qword_FF68);
      sub_3900(&qword_18348, &qword_18350, &qword_FF60);
      sub_3900(&qword_18358, &qword_18360, &qword_FF68);
      sub_F4DC();
      v30 = v37;
      v31 = v36;
      v23 = v38;
      v24 = v39;
      result = (*(v4 + 8))(v7, v3);
      v22 = v30;
      v21 = v31;
      goto LABEL_10;
    }

    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v26 = qword_19098;
    v10 = sub_F57C();
    v12 = v27;
    v14 = v28 & 1;
    *&v33 = v10;
    *(&v33 + 1) = v27;
    *&v34 = v28 & 1;
    *(&v34 + 1) = v29;
    LOBYTE(v35) = 1;
    sub_3B84(v10, v27, v28 & 1);

    sub_F4DC();
    v33 = v36;
    v34 = v37;
    v35 = v38;
    sub_1B0C(&qword_18350, &qword_FF60);
    sub_1B0C(&qword_18360, &qword_FF68);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
  }

  sub_F4DC();
  sub_3B94(v10, v12, v14);

  v21 = v36;
  v22 = v37;
  v23 = v38;
  v24 = v39;
LABEL_10:
  v25 = v32;
  *v32 = v21;
  v25[1] = v22;
  *(v25 + 32) = v23;
  *(v25 + 33) = v24;
  return result;
}

uint64_t sub_3294()
{
  sub_1B0C(&qword_18340, &qword_FF58);
  sub_3834();
  return sub_F39C();
}

double sub_3338@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_F14C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0C(&qword_182C0, &qword_FF30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = swift_projectBox();
  (*(v8 + 16))(v11, v12, v7);
  sub_F72C();
  (*(v8 + 8))(v11, v7);
  v13 = *&v18[0];
  sub_F19C();

  sub_2B28(v6, v18);
  (*(v3 + 8))(v6, v2);
  v14 = v19;
  v15 = v20;
  result = *v18;
  v17 = v18[1];
  *a1 = v18[0];
  *(a1 + 16) = v17;
  *(a1 + 32) = v14;
  *(a1 + 33) = v15;
  return result;
}

uint64_t sub_3528@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_361C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_3628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_3294();
}

uint64_t sub_3638()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21CC();
}

unint64_t sub_3644()
{
  result = qword_18308;
  if (!qword_18308)
  {
    sub_1C18(&qword_18300, &qword_FF38);
    sub_1C18(&qword_18310, &qword_FF40);
    sub_1C18(&qword_18318, &qword_FF48);
    sub_F42C();
    sub_3C68(&qword_18320, &qword_18318, &qword_FF48);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18308);
  }

  return result;
}

unint64_t sub_37A8()
{
  result = qword_18330;
  if (!qword_18330)
  {
    sub_1C18(&qword_18328, &qword_FF50);
    sub_3834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18330);
  }

  return result;
}

unint64_t sub_3834()
{
  result = qword_18338;
  if (!qword_18338)
  {
    sub_1C18(&qword_18340, &qword_FF58);
    sub_3900(&qword_18348, &qword_18350, &qword_FF60);
    sub_3900(&qword_18358, &qword_18360, &qword_FF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18338);
  }

  return result;
}

uint64_t sub_3900(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_182F8, &qword_FF28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3A20()
{
  result = qword_18398;
  if (!qword_18398)
  {
    sub_1C18(&qword_18388, &qword_FFB8);
    sub_3834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18398);
  }

  return result;
}

uint64_t sub_3AA4()
{
  sub_361C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

double sub_3AE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_2B28(a1, v10);
  v6 = v11;
  v7 = v12;
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  return result;
}

id sub_3B30(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_3B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_3BA4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_3338(a1);
}

unint64_t sub_3BB8()
{
  result = qword_183B8;
  if (!qword_183B8)
  {
    sub_1C18(&qword_182F8, &qword_FF28);
    sub_3C68(&qword_183C0, &qword_18370, &qword_FF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183B8);
  }

  return result;
}

uint64_t sub_3C68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3CDC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v31[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v31 - v8;
  v10 = sub_1B0C(&qword_183C8, &qword_100B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v31 - v12;
  v14 = sub_F40C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = a1;
    v19 = a1;
  }

  else
  {

    sub_F87C();
    v20 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v15 + 8))(v18, v14);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 sf_inRetailKioskMode];

  if ((v22 & 1) != 0 || (sub_F72C(), v23 = v32, v24 = sub_F2DC(), v23, (v24 & 1) == 0))
  {
    v29 = 1;
  }

  else
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v25 = qword_19098;
    v32 = sub_F57C();
    v33 = v26;
    v34 = v27 & 1;
    v35 = v28;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v13, v9, v5);
    v29 = 0;
  }

  (*(v6 + 56))(v13, v29, 1, v5);
  sub_4528(v13, v31[0]);
}

uint64_t sub_411C()
{
  v0 = sub_1B0C(&qword_182C0, &qword_FF30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v1 + 16))(v5, v8, v0);
  sub_F73C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v0);
  return sub_F6DC();
}

uint64_t sub_42C8@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_43BC(void *a1, char a2)
{
  v11[0] = a1;
  v3 = sub_F40C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = v11[0];

    return v8;
  }

  else
  {

    sub_F87C();
    v10 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v11[0], 0);
    (*(v4 + 8))(v7, v3);
    return v11[1];
  }
}

uint64_t sub_4528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_183C8, &qword_100B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F29C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_45D0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F2AC();
}

unint64_t sub_45FC()
{
  result = qword_183D0;
  if (!qword_183D0)
  {
    sub_1C18(&qword_183C8, &qword_100B0);
    sub_1CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183D0);
  }

  return result;
}

uint64_t sub_4680@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_F40C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0C(&qword_183D8, &qword_100E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_4868(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_F38C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_F87C();
    v16 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_4868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_183D8, &qword_100E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4904@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v33[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v10 = sub_1B0C(&qword_183C8, &qword_100B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v33 - v12;
  v14 = sub_F40C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34 = a1;
    v19 = a1;
  }

  else
  {

    sub_F87C();
    v20 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v15 + 8))(v18, v14);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 sf_isiPad];

  if (v22 && (v23 = [objc_opt_self() sharedPreferences], v24 = objc_msgSend(v23, "isSupported"), v23, v24) && (sub_F72C(), v25 = v34, v26 = sub_F1DC(), v25, (v26 & 1) != 0))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v27 = qword_19098;
    v34 = sub_F57C();
    v35 = v28;
    v36 = v29 & 1;
    v37 = v30;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v13, v9, v5);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v6 + 56))(v13, v31, 1, v5);
  sub_4528(v13, v33[0]);
}

uint64_t sub_4D80()
{
  v0 = sub_1B0C(&qword_182C0, &qword_FF30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v1 + 16))(v5, v8, v0);
  sub_F73C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v0);
  return sub_F6DC();
}

uint64_t sub_4F2C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F17C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_5058(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F18C();
}

uint64_t sub_50AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_F50C();
  v54 = *(v56 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0C(&qword_182C0, &qword_FF30);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v41 - v11;
  v13 = sub_1B0C(&qword_182D0, &qword_FDF0);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  __chkstk_darwin(v13);
  v16 = v41 - v15;
  v52 = sub_1B0C(&qword_183E8, &unk_10300);
  v17 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v60 = v41 - v18;
  v51 = a1;
  v19 = swift_projectBox();
  v58 = v6[2];
  v59 = v6 + 2;
  v58(v10, v19, v5);
  sub_F73C();
  v21 = v6[1];
  v20 = v6 + 1;
  v21(v10, v5);
  swift_getKeyPath();
  sub_F75C();

  v57 = v21;
  v21(v12, v5);
  v48 = v16;
  sub_F6DC();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v22 = qword_19098;
  v23 = sub_F57C();
  v45 = v24;
  v46 = v23;
  v43 = v25;
  v44 = v26;
  v58(v10, v19, v5);
  sub_F73C();
  v27 = v57;
  v57(v10, v5);
  swift_getKeyPath();
  sub_F75C();

  v27(v12, v5);
  v41[3] = v62;
  v47 = v20;
  sub_1B0C(&qword_183F8, &qword_10310);
  sub_3C68(&qword_182D8, &qword_182D0, &qword_FDF0);
  v42 = v19;
  sub_3C68(&qword_18400, &qword_183F8, &qword_10310);
  v28 = v50;
  v29 = v12;
  v30 = v43;
  v31 = v45;
  v32 = v46;
  v33 = v48;
  sub_F63C();

  sub_3B94(v32, v31, v30 & 1);

  (*(v49 + 8))(v33, v28);
  v58(v29, v42, v5);
  sub_F72C();
  v57(v29, v5);
  v34 = v61;
  LOBYTE(v31) = sub_F28C();

  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v31 & 1;
  v37 = v53;
  v38 = v60;
  v39 = &v60[*(v52 + 36)];
  *v39 = KeyPath;
  v39[1] = sub_6350;
  v39[2] = v36;
  sub_F4FC();
  sub_60E4();
  sub_F62C();
  (*(v54 + 8))(v37, v56);
  return sub_6358(v38);
}

uint64_t sub_5790@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_F4AC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1B0C(&qword_18418, &unk_103B0);
  return sub_57E8((a1 + *(v2 + 44)));
}

uint64_t sub_57E8@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v1 = sub_1B0C(&qword_18420, &unk_10A20);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1B0C(&qword_18428, &qword_103C0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - v15;
  __chkstk_darwin(v14);
  v18 = &v25 - v17;

  sub_F6BC();
  sub_F30C();
  v19 = sub_F31C();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  sub_F6AC();
  v20 = v6[2];
  v20(v13, v18, v5);
  v20(v10, v16, v5);
  v21 = v26;
  v20(v26, v13, v5);
  v22 = sub_1B0C(&qword_18430, &qword_103C8);
  v20(&v21[*(v22 + 48)], v10, v5);
  v23 = v6[1];
  v23(v16, v5);
  v23(v18, v5);
  v23(v10, v5);
  return (v23)(v13, v5);
}

void sub_5B20()
{
  v0 = sub_1B0C(&qword_182C0, &qword_FF30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_F72C();
  (*(v1 + 8))(v4, v0);
  v6 = v7[1];
  sub_F1BC();
}

uint64_t sub_5C28@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5D34@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5E0C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_5EF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_43BC(v1, v2);
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v3 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_183E0, &qword_102F8);
  sub_1C18(&qword_183E8, &unk_10300);
  sub_60E4();
  swift_getOpaqueTypeConformance2();
  sub_F71C();
}

unint64_t sub_60E4()
{
  result = qword_183F0;
  if (!qword_183F0)
  {
    sub_1C18(&qword_183E8, &unk_10300);
    sub_1C18(&qword_182D0, &qword_FDF0);
    sub_1C18(&qword_183F8, &qword_10310);
    sub_3C68(&qword_182D8, &qword_182D0, &qword_FDF0);
    sub_3C68(&qword_18400, &qword_183F8, &qword_10310);
    swift_getOpaqueTypeConformance2();
    sub_3C68(&qword_18408, &qword_18410, &qword_10318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183F0);
  }

  return result;
}

uint64_t sub_6280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F1DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_62B0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F1EC();
}

uint64_t sub_62D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F15C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_6308(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F16C();
}

uint64_t sub_6358(uint64_t a1)
{
  v2 = sub_1B0C(&qword_183E8, &unk_10300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_63CC()
{
  result = qword_18438;
  if (!qword_18438)
  {
    sub_1C18(&qword_18440, &unk_103D0);
    sub_1C18(&qword_183E8, &unk_10300);
    sub_60E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18438);
  }

  return result;
}

uint64_t sub_64CC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_1B0C(&qword_18448, &qword_104C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_1B0C(&qword_18450, &unk_104C8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_F40C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v33[0] = a1;
    v19 = a1;
  }

  else
  {

    sub_F87C();
    v20 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v15 + 8))(v18, v14);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState);
  sub_F74C();
  v35 = &type metadata for SettingsAppFeatureFlags;
  v36 = sub_A0D4();
  v21 = sub_F0BC();
  sub_A128(v33);
  if ((v21 & 1) != 0 && (sub_F72C(), v22 = v33[0], v23 = sub_F20C(), v22, v24 = *(v23 + 16), , v24))
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v25 = qword_19098;
    v33[0] = sub_F57C();
    v33[1] = v26;
    v34 = v27 & 1;
    v35 = v28;
    sub_1B0C(&qword_18460, &qword_104D8);
    sub_3C68(&qword_18468, &qword_18460, &qword_104D8);
    sub_F71C();
    (*(v6 + 32))(v13, v9, v5);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v6 + 56))(v13, v29, 1, v5);
  sub_A174(v13, v32);
}

uint64_t sub_6964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v2 = sub_1B0C(&qword_182C0, &qword_FF30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - v5;
  v7 = type metadata accessor for OnenessListOfDevices();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0C(&qword_18470, &qword_104E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = sub_F2FC();
  v14 = sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState);
  *v10 = sub_F35C();
  v10[8] = v15 & 1;
  v16 = *(v7 + 20);
  *&v10[v16] = swift_getKeyPath();
  sub_1B0C(&qword_183D8, &qword_100E8);
  swift_storeEnumTagMultiPayload();
  v17 = swift_projectBox();
  (*(v3 + 16))(v6, v17, v2);
  sub_F72C();
  (*(v3 + 8))(v6, v2);
  v18 = v22;
  v19 = sub_B4B0(&qword_18478, type metadata accessor for OnenessListOfDevices);
  sub_F5DC();

  sub_A264(v10);
  sub_1B0C(&qword_18480, &unk_10520);
  sub_A2C0();
  v22 = v7;
  v23 = v13;
  v24 = v19;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  return sub_F3AC();
}

uint64_t sub_6C98()
{
  sub_1B0C(&qword_18350, &qword_FF60);
  sub_A34C();

  return sub_F39C();
}

__n128 sub_6D3C@<Q0>(__n128 *a1@<X8>)
{
  v41 = a1;
  v1 = sub_F47C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_F11C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v36 - v7;
  v8 = sub_1B0C(&qword_182C0, &qword_FF30);
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = swift_projectBox();
  v14 = v9[2];
  v14(v12, v13, v8);
  sub_F72C();
  v15 = v9[1];
  v15(v12, v8);
  v16 = v47.n128_u64[0];
  v17 = sub_F20C();

  v18 = *(v17 + 16);

  if (v18 == 1)
  {
    v14(v12, v13, v8);
    sub_F72C();
    v15(v12, v8);
    v19 = v47.n128_u64[0];
    v20 = sub_F20C();

    if (*(v20 + 16))
    {
      v22 = v39;
      v21 = v40;
      v23 = v37;
      (*(v39 + 16))(v37, v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v40);

      v24 = v38;
      (*(v22 + 32))(v38, v23, v21);
      v42 = sub_F10C();
      v43 = v25;
      v44 = 0;
      v45 = &_swiftEmptyArrayStorage;
      v46 = 0;
      sub_F4DC();
      (*(v22 + 8))(v24, v21);
      goto LABEL_8;
    }
  }

  sub_F46C();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_F45C(v50);
  v14(v12, v13, v8);
  sub_F72C();
  v15(v12, v8);
  v26 = v47.n128_u64[0];
  v27 = sub_F20C();

  v28 = *(v27 + 16);

  v47.n128_u64[0] = v28;
  sub_F43C();
  v51._countAndFlagsBits = 0x7363614D20;
  v51._object = 0xE500000000000000;
  sub_F45C(v51);
  sub_F49C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v29 = qword_19098;
  v42 = sub_F57C();
  v43 = v30;
  v44 = v31 & 1;
  v45 = v32;
  v46 = 1;
  sub_F4DC();
LABEL_8:
  result = v48;
  v34 = v49;
  v35 = v41;
  *v41 = v47;
  v35[1] = result;
  v35[2].n128_u8[0] = v34;
  return result;
}

uint64_t sub_7210@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_7304@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1B0C(&qword_18548, &qword_105A8);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_1B0C(&qword_18550, &qword_105B0);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_F40C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  if (*(v1 + 8) == 1)
  {
    v34 = *v1;
    v16 = v15;
  }

  else
  {
    v17 = *v1;

    sub_F87C();
    v18 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v15, 0);
    (*(v11 + 8))(v14, v10);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_B4B0(&qword_182C8, &type metadata accessor for AirPlayAndHandoffSettingsState);
  v19 = sub_F74C();
  __chkstk_darwin(v19);
  sub_1B0C(&qword_18558, &qword_105B8);
  sub_A7D8();
  sub_F54C();
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v20 = qword_19098;
  v21 = sub_F57C();
  v23 = v22;
  v25 = v24;
  v26 = sub_3C68(&qword_185C8, &qword_18548, &qword_105A8);
  sub_F61C();
  sub_3B94(v21, v23, v25 & 1);

  (*(v30 + 8))(v5, v2);
  sub_F33C();
  v34 = v2;
  v35 = v26;
  swift_getOpaqueTypeConformance2();
  sub_B4B0(&qword_185D0, &type metadata accessor for EditButton);
  v27 = v32;
  sub_F65C();
  (*(v31 + 8))(v9, v27);
}

uint64_t sub_784C()
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v0 = qword_19098;
  sub_F57C();
  sub_1B0C(&qword_18570, &qword_105C0);
  sub_A870();
  return sub_F71C();
}

uint64_t sub_7990@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for OnenessListOfDevices();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1B0C(&qword_182C0, &qword_FF30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = swift_projectBox();
  (*(v7 + 16))(v10, v11, v6);
  sub_F72C();
  (*(v7 + 8))(v10, v6);
  v12 = v20;
  v13 = sub_F20C();

  v20 = v13;
  swift_getKeyPath();

  sub_1B0C(&qword_185D8, &qword_10610);
  sub_1B0C(&qword_18590, &qword_105D0);
  sub_3C68(&qword_185E0, &qword_185D8, &qword_10610);
  sub_B4B0(&qword_185E8, &type metadata accessor for CompanionDevice);
  sub_A9AC();
  sub_F6FC();
  sub_AAA0(v19, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_AC24(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_AC88;
  *(v16 + 24) = v15;
  result = sub_1B0C(&qword_18570, &qword_105C0);
  v18 = (a2 + *(result + 36));
  *v18 = sub_AF20;
  v18[1] = v16;
  return result;
}

uint64_t sub_7CC0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1B0C(&qword_18620, &qword_10650);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26[-v6];
  v8 = sub_1B0C(&qword_18628, &qword_10658);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v26[-v13];
  sub_F0FC();
  v15 = sub_F4BC();
  v27 = 1;
  sub_7FE8(v14, a1, v28);
  *&v26[23] = v28[1];
  *&v26[39] = v28[2];
  *&v26[55] = v28[3];
  v26[71] = v29;
  *&v26[7] = v28[0];
  v16 = v27;
  v17 = sub_F0EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v14, 1, v17) != 1)
  {
    sub_B4F8(v14, v12, &qword_18628, &qword_10658);
    if (v19(v12, 1, v17) == 1)
    {
      sub_B560(v12, &qword_18628, &qword_10658);
      v21 = sub_F05C();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    }

    else
    {
      sub_F0CC();
      (*(v18 + 8))(v12, v17);
      v22 = sub_F05C();
      if ((*(*(v22 - 8) + 48))(v7, 1, v22) != 1)
      {
        v20 = 0;
        goto LABEL_8;
      }
    }

    v20 = 1;
LABEL_8:
    sub_B560(v7, &qword_18620, &qword_10650);
    goto LABEL_9;
  }

  v20 = 0;
LABEL_9:
  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = v16;
  v23 = *v26;
  *(a2 + 33) = *&v26[16];
  v24 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  *(a2 + 65) = v24;
  *(a2 + 81) = *&v26[64];
  *(a2 + 17) = v23;
  *(a2 + 89) = v20;
  return sub_B560(v14, &qword_18628, &qword_10658);
}

uint64_t sub_7FE8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v98 = a2;
  v105 = a1;
  v106 = a3;
  v3 = sub_F47C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v102 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B0C(&qword_182C0, &qword_FF30);
  v100 = *(v101 - 1);
  v6 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v92 - v7;
  v8 = sub_1B0C(&qword_18620, &qword_10650);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v92 - v10;
  v12 = sub_F05C();
  v103 = *(v12 - 8);
  v13 = *(v103 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v92 - v17;
  v18 = sub_1B0C(&qword_18628, &qword_10658);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v92 - v20;
  v22 = sub_F0EC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_F10C();
  v117 = v27;
  sub_B5C0();
  v28 = sub_F58C();
  v108 = v29;
  v109 = v28;
  v107 = v30;
  v110 = v31;
  sub_B4F8(v105, v21, &qword_18628, &qword_10658);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_B560(v21, &qword_18628, &qword_10658);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
  }

  else
  {
    v37 = *(v23 + 32);
    v105 = v22;
    v37(v26, v21, v22);
    sub_F0CC();
    v38 = v103;
    v39 = (*(v103 + 48))(v11, 1, v12);
    v97 = v23;
    v96 = v26;
    if (v39 == 1)
    {
      sub_B560(v11, &qword_18620, &qword_10650);
      sub_F48C();
      if (qword_182B8 != -1)
      {
        swift_once();
      }

      v40 = qword_19098;
      v41 = sub_F57C();
      v43 = v42;
      v45 = v44;
      sub_F53C();
      v46 = sub_F56C();
      v48 = v47;
      v50 = v49;

      sub_3B94(v41, v43, v45 & 1);

      LODWORD(v116) = sub_F4EC();
      v51 = sub_F55C();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      sub_3B94(v46, v48, v50 & 1);

      v111 = v51;
      v112 = v53;
      v113 = v55 & 1;
      v114 = v57;
      v115 = 1;
      sub_F4DC();
    }

    else
    {
      (*(v38 + 32))(v104, v11, v12);
      v95 = swift_projectBox();
      v58 = v100;
      v94 = *(v100 + 16);
      v59 = v99;
      v60 = v101;
      v94(v99, v95, v101);
      sub_F72C();
      v93 = *(v58 + 8);
      v93(v59, v60);
      v61 = v116;
      sub_F0DC();
      v100 = sub_F21C();
      v98 = v62;

      v63 = *(v38 + 8);
      v63(v16, v12);
      v94(v59, v95, v60);
      sub_F72C();
      v93(v59, v60);
      v64 = v116;
      sub_F0DC();
      v65 = sub_F1CC();
      v67 = v66;

      v103 = v12;
      v101 = v63;
      v63(v16, v12);
      sub_F46C();
      v121._countAndFlagsBits = 0x657375207473614CLL;
      v121._object = 0xEA00000000002064;
      sub_F45C(v121);
      v122._countAndFlagsBits = v100;
      v122._object = v98;
      sub_F44C(v122);

      v123._countAndFlagsBits = 0x20726F6620;
      v123._object = 0xE500000000000000;
      sub_F45C(v123);
      v124._countAndFlagsBits = v65;
      v124._object = v67;
      sub_F44C(v124);

      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      sub_F45C(v125);
      sub_F49C();
      if (qword_182B8 != -1)
      {
        swift_once();
      }

      v68 = qword_19098;
      v69 = sub_F57C();
      v71 = v70;
      v73 = v72;
      sub_F53C();
      v74 = sub_F56C();
      v76 = v75;
      v78 = v77;

      sub_3B94(v69, v71, v73 & 1);

      LODWORD(v116) = sub_F4EC();
      v79 = sub_F55C();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      sub_3B94(v74, v76, v78 & 1);

      v111 = v79;
      v112 = v81;
      v113 = v83 & 1;
      v114 = v85;
      v115 = 0;
      sub_F4DC();
      (v101)(v104, v103);
    }

    (*(v97 + 8))(v96, v105);
    v32 = v116;
    v33 = v117;
    v34 = v118;
    v35 = v119;
    v36 = v120;
    sub_B62C(v116, v117, v118);
  }

  v86 = v107 & 1;
  v88 = v108;
  v87 = v109;
  sub_3B84(v109, v108, v107 & 1);
  v89 = v110;

  sub_B614(v32, v33, v34, v35, v36);
  sub_B668(v32, v33, v34, v35, v36);
  LOBYTE(v116) = v86;
  v90 = v106;
  *v106 = v87;
  v90[1] = v88;
  *(v90 + 16) = v86;
  v90[3] = v89;
  v90[4] = v32;
  v90[5] = v33;
  v90[6] = v34;
  v90[7] = v35;
  *(v90 + 64) = v36;
  sub_B668(v32, v33, v34, v35, v36);
  sub_3B94(v87, v88, v86);
}

uint64_t sub_8A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F0AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_1B0C(&qword_185F0, &qword_10618);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_F82C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_AAA0(a2, v7);
  sub_F80C();
  v16 = sub_F7FC();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v19 + v17, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_AC24(v7, v19 + v18);
  sub_9DD0(0, 0, v14, &unk_10628, v19);
}

uint64_t sub_8CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_F38C();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_F11C();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_F40C();
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = sub_F08C();
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v18 = sub_1B0C(&qword_185F8, &qword_10648);
  v5[28] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  sub_F80C();
  v5[30] = sub_F7FC();
  v21 = sub_F7EC();
  v5[31] = v21;
  v5[32] = v20;

  return _swift_task_switch(sub_8F14, v21, v20);
}

uint64_t sub_8F14()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 112);
  sub_F09C();
  *(v0 + 280) = *(v2 + 36);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  sub_F0AC();
  sub_B4B0(&qword_18600, &type metadata accessor for IndexSet);
  sub_F83C();
  sub_B4B0(&qword_18608, &type metadata accessor for IndexSet.Index);
  v8 = sub_F78C();
  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 120);
  if ((v8 & 1) == 0)
  {
    v14 = *(v0 + 280);
    v15 = sub_F85C();
    v17 = *v16;
    v15(v0 + 16, 0);
    sub_F84C();
    v18 = *v10;
    if (*(v10 + 8) == 1)
    {
      v19 = v18;
      v20 = v19;
    }

    else
    {
      v29 = *(v0 + 184);
      v28 = *(v0 + 192);
      v30 = *(v0 + 176);
      v31 = *v10;

      sub_F87C();
      v32 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v18, 0);
      v33 = *(v29 + 8);
      v33(v28, v30);
      v20 = *(v0 + 80);

      sub_F87C();
      v34 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v18, 0);
      v33(v28, v30);
      v19 = *(v0 + 88);
    }

    *(v0 + 264) = v20;
    v35 = sub_F20C();

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *(v35 + 16))
    {
      (*(*(v0 + 160) + 16))(*(v0 + 168), v35 + ((*(*(v0 + 160) + 80) + 32) & ~*(*(v0 + 160) + 80)) + *(*(v0 + 160) + 72) * v17, *(v0 + 152));

      v37 = async function pointer to AirPlayAndHandoffSettingsState.unpair(device:)[1];
      v38 = swift_task_alloc();
      *(v0 + 272) = v38;
      *v38 = v0;
      v38[1] = sub_95AC;
      v36 = *(v0 + 168);

      return AirPlayAndHandoffSettingsState.unpair(device:)(v36);
    }

    __break(1u);
    return AirPlayAndHandoffSettingsState.unpair(device:)(v36);
  }

  v11 = *(v0 + 240);
  sub_B560(*(v0 + 232), &qword_185F8, &qword_10648);

  v12 = *v10;
  v57 = *(v10 + 8);
  v58 = *v10;
  if (v57 == 1)
  {
    v13 = v12;
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 192);
    v23 = *(v0 + 176);

    sub_F87C();
    v24 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v12, 0);
    (*(v21 + 8))(v22, v23);
    v13 = *(v0 + 96);
  }

  v25 = *(v0 + 112);
  v26 = sub_F1FC();
  sub_1B0C(&qword_185D8, &qword_10610);
  sub_3C68(&qword_18610, &qword_185D8, &qword_10610);
  sub_3C68(&qword_18618, &qword_185D8, &qword_10610);
  sub_F86C();
  v26(v0 + 48, 0);

  if (v57)
  {
    v27 = v58;
  }

  else
  {
    v40 = *(v0 + 184);
    v39 = *(v0 + 192);
    v41 = *(v0 + 176);

    sub_F87C();
    v42 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v58, 0);
    (*(v40 + 8))(v39, v41);
    v27 = *(v0 + 104);
  }

  v43 = sub_F20C();

  v44 = *(v43 + 16);

  if (!v44)
  {
    v46 = *(v0 + 136);
    v45 = *(v0 + 144);
    v47 = *(v0 + 120);
    v48 = *(v0 + 128);
    v49 = v47 + *(type metadata accessor for OnenessListOfDevices() + 20);
    sub_4680(v45);
    sub_F37C();
    (*(v46 + 8))(v45, v48);
  }

  v50 = *(v0 + 232);
  v51 = *(v0 + 216);
  v52 = *(v0 + 192);
  v53 = *(v0 + 168);
  v54 = *(v0 + 144);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_95AC()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 152);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 256);
  v8 = *(v1 + 248);

  return _swift_task_switch(sub_9748, v8, v7);
}

uint64_t sub_9748()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  sub_F0AC();
  sub_B4B0(&qword_18600, &type metadata accessor for IndexSet);
  sub_F83C();
  sub_B4B0(&qword_18608, &type metadata accessor for IndexSet.Index);
  LOBYTE(v1) = sub_F78C();
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 232);
  v7 = *(v0 + 120);
  if ((v1 & 1) == 0)
  {
    v11 = *(v0 + 280);
    v12 = sub_F85C();
    v14 = *v13;
    v12(v0 + 16, 0);
    sub_F84C();
    v15 = *v7;
    if (*(v7 + 8) == 1)
    {
      v16 = v15;
      v17 = v16;
    }

    else
    {
      v26 = *(v0 + 184);
      v25 = *(v0 + 192);
      v27 = *(v0 + 176);
      v28 = *v7;

      sub_F87C();
      v29 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v15, 0);
      v30 = *(v26 + 8);
      v30(v25, v27);
      v17 = *(v0 + 80);

      sub_F87C();
      v31 = sub_F51C();
      sub_F12C();

      sub_F3FC();
      swift_getAtKeyPath();
      sub_361C(v15, 0);
      v30(v25, v27);
      v16 = *(v0 + 88);
    }

    *(v0 + 264) = v17;
    v32 = sub_F20C();

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v32 + 16))
    {
      (*(*(v0 + 160) + 16))(*(v0 + 168), v32 + ((*(*(v0 + 160) + 80) + 32) & ~*(*(v0 + 160) + 80)) + *(*(v0 + 160) + 72) * v14, *(v0 + 152));

      v34 = async function pointer to AirPlayAndHandoffSettingsState.unpair(device:)[1];
      v35 = swift_task_alloc();
      *(v0 + 272) = v35;
      *v35 = v0;
      v35[1] = sub_95AC;
      v33 = *(v0 + 168);

      return AirPlayAndHandoffSettingsState.unpair(device:)(v33);
    }

    __break(1u);
    return AirPlayAndHandoffSettingsState.unpair(device:)(v33);
  }

  v8 = *(v0 + 240);
  sub_B560(*(v0 + 232), &qword_185F8, &qword_10648);

  v9 = *v7;
  v54 = *(v7 + 8);
  v55 = *v7;
  if (v54 == 1)
  {
    v10 = v9;
  }

  else
  {
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    v20 = *(v0 + 176);

    sub_F87C();
    v21 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v9, 0);
    (*(v18 + 8))(v19, v20);
    v10 = *(v0 + 96);
  }

  v22 = *(v0 + 112);
  v23 = sub_F1FC();
  sub_1B0C(&qword_185D8, &qword_10610);
  sub_3C68(&qword_18610, &qword_185D8, &qword_10610);
  sub_3C68(&qword_18618, &qword_185D8, &qword_10610);
  sub_F86C();
  v23(v0 + 48, 0);

  if (v54)
  {
    v24 = v55;
  }

  else
  {
    v37 = *(v0 + 184);
    v36 = *(v0 + 192);
    v38 = *(v0 + 176);

    sub_F87C();
    v39 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(v55, 0);
    (*(v37 + 8))(v36, v38);
    v24 = *(v0 + 104);
  }

  v40 = sub_F20C();

  v41 = *(v40 + 16);

  if (!v41)
  {
    v43 = *(v0 + 136);
    v42 = *(v0 + 144);
    v44 = *(v0 + 120);
    v45 = *(v0 + 128);
    v46 = v44 + *(type metadata accessor for OnenessListOfDevices() + 20);
    sub_4680(v42);
    sub_F37C();
    (*(v43 + 8))(v42, v45);
  }

  v47 = *(v0 + 232);
  v48 = *(v0 + 216);
  v49 = *(v0 + 192);
  v50 = *(v0 + 168);
  v51 = *(v0 + 144);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_9DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B0C(&qword_185F0, &qword_10618);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_B4F8(a3, v27 - v11, &qword_185F0, &qword_10618);
  v13 = sub_F82C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_B560(v12, &qword_185F0, &qword_10618);
  }

  else
  {
    sub_F81C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_F7EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_F7DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_B560(a3, &qword_185F0, &qword_10618);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B560(a3, &qword_185F0, &qword_10618);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_A0D4()
{
  result = qword_18458;
  if (!qword_18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18458);
  }

  return result;
}

uint64_t sub_A128(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_A174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_18450, &unk_104C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for OnenessListOfDevices()
{
  result = qword_184F0;
  if (!qword_184F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A264(uint64_t a1)
{
  v2 = type metadata accessor for OnenessListOfDevices();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_A2C0()
{
  result = qword_18488;
  if (!qword_18488)
  {
    sub_1C18(&qword_18480, &unk_10520);
    sub_A34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18488);
  }

  return result;
}

unint64_t sub_A34C()
{
  result = qword_18348;
  if (!qword_18348)
  {
    sub_1C18(&qword_18350, &qword_FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18348);
  }

  return result;
}

uint64_t sub_A3E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B0C(&qword_18490, &unk_10530);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_A4AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_1B0C(&qword_18490, &unk_10530);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A558()
{
  sub_A614(319, &qword_18500, &type metadata accessor for AirPlayAndHandoffSettingsState);
  if (v0 <= 0x3F)
  {
    sub_A614(319, &unk_18508, &type metadata accessor for DismissAction);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A614(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_F34C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_A66C()
{
  result = qword_18538;
  if (!qword_18538)
  {
    sub_1C18(&qword_18450, &unk_104C8);
    sub_A6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18538);
  }

  return result;
}

unint64_t sub_A6F0()
{
  result = qword_18540;
  if (!qword_18540)
  {
    sub_1C18(&qword_18448, &qword_104C0);
    sub_3C68(&qword_18468, &qword_18460, &qword_104D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18540);
  }

  return result;
}

uint64_t sub_A7D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_784C();
}

unint64_t sub_A7D8()
{
  result = qword_18560;
  if (!qword_18560)
  {
    sub_1C18(&qword_18558, &qword_105B8);
    sub_A870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18560);
  }

  return result;
}

unint64_t sub_A870()
{
  result = qword_18568;
  if (!qword_18568)
  {
    sub_1C18(&qword_18570, &qword_105C0);
    sub_A928();
    sub_3C68(&qword_185B8, &qword_185C0, &unk_105E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18568);
  }

  return result;
}

unint64_t sub_A928()
{
  result = qword_18578;
  if (!qword_18578)
  {
    sub_1C18(&qword_18580, &qword_105C8);
    sub_A9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18578);
  }

  return result;
}

unint64_t sub_A9AC()
{
  result = qword_18588;
  if (!qword_18588)
  {
    sub_1C18(&qword_18590, &qword_105D0);
    sub_3C68(&qword_18598, &qword_185A0, &qword_105D8);
    sub_3C68(&qword_185A8, &qword_185B0, &qword_105E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18588);
  }

  return result;
}

uint64_t sub_AAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AB04()
{
  v1 = (type metadata accessor for OnenessListOfDevices() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  sub_361C(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  sub_1B0C(&qword_183D8, &qword_100E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_F38C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_AC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnenessListOfDevices();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AC88(uint64_t a1)
{
  v3 = *(type metadata accessor for OnenessListOfDevices() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_8A38(a1, v4);
}

uint64_t sub_ACF8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_ADF0;

  return v7(a1);
}

uint64_t sub_ADF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_AEE8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_AF20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_AF48()
{
  v1 = sub_F0AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for OnenessListOfDevices() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v8;
  sub_361C(*(v0 + v8), *(v0 + v8 + 8));
  v12 = v6[7];
  sub_1B0C(&qword_183D8, &qword_100E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_F38C();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
    v14 = *(v11 + v12);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_B0FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_F0AC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OnenessListOfDevices() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_B24C;

  return sub_8CD0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_B24C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B340(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_B7F4;

  return sub_ACF8(a1, v5);
}

uint64_t sub_B3F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_B24C;

  return sub_ACF8(a1, v5);
}

uint64_t sub_B4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B4F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_B5C0()
{
  result = qword_18630;
  if (!qword_18630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18630);
  }

  return result;
}

uint64_t sub_B614(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_B62C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_B62C(uint64_t a1, uint64_t a2, char a3)
{
  sub_3B84(a1, a2, a3 & 1);
}

uint64_t sub_B668(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_B680(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_B680(uint64_t a1, uint64_t a2, char a3)
{
  sub_3B94(a1, a2, a3 & 1);
}

uint64_t sub_B6BC()
{
  sub_1C18(&qword_18550, &qword_105B0);
  sub_F33C();
  sub_1C18(&qword_18548, &qword_105A8);
  sub_3C68(&qword_185C8, &qword_18548, &qword_105A8);
  swift_getOpaqueTypeConformance2();
  sub_B4B0(&qword_185D0, &type metadata accessor for EditButton);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_B824@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v32[0] = a3;
  v5 = sub_1B0C(&qword_182E8, &unk_101D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - v8;
  v10 = sub_1B0C(&qword_183C8, &qword_100B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v32 - v12;
  v14 = sub_F40C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v33 = a1;
    v19 = a1;
  }

  else
  {

    sub_F87C();
    v20 = sub_F51C();
    sub_F12C();

    sub_F3FC();
    swift_getAtKeyPath();
    sub_361C(a1, 0);
    (*(v15 + 8))(v18, v14);
  }

  sub_1B0C(&qword_182C0, &qword_FF30);
  swift_allocBox();
  sub_F2FC();
  sub_1B54();
  sub_F74C();
  v21 = objc_opt_self();
  v22 = [v21 currentDevice];
  v23 = [v22 sf_inRetailKioskMode];

  if (v23 & 1) != 0 || (v24 = [v21 currentDevice], v25 = objc_msgSend(v24, "sf_isiPad"), v24, (v25))
  {
    v26 = 1;
  }

  else
  {
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v27 = qword_19098;
    v33 = sub_F57C();
    v34 = v28;
    v35 = v29 & 1;
    v36 = v30;
    sub_1B0C(&qword_182D0, &qword_FDF0);
    sub_1BB4();
    sub_F71C();
    (*(v6 + 32))(v13, v9, v5);
    v26 = 0;
  }

  (*(v6 + 56))(v13, v26, 1, v5);
  sub_4528(v13, v32[0]);
}

uint64_t sub_BC70()
{
  v0 = sub_1B0C(&qword_182C0, &qword_FF30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  (*(v1 + 16))(v5, v8, v0);
  sub_F73C();
  v9 = *(v1 + 8);
  v9(v5, v0);
  swift_getKeyPath();
  sub_F75C();

  v9(v7, v0);
  return sub_F6DC();
}

uint64_t sub_BE1C@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_BF18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F2BC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_BF48(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F2CC();
}

id sub_BFA4()
{
  type metadata accessor for FindAirPlayAndHandoffSettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_19098 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAppFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SettingsAppFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_C0EC()
{
  result = qword_186D0;
  if (!qword_186D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D0);
  }

  return result;
}

Swift::Int sub_C148()
{
  sub_F88C();
  sub_F89C(0);
  return sub_F8AC();
}

Swift::Int sub_C1B4()
{
  sub_F88C();
  sub_F89C(0);
  return sub_F8AC();
}

unint64_t sub_C244()
{
  result = qword_18770;
  if (!qword_18770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18770);
  }

  return result;
}

uint64_t sub_C2B8()
{
  v0 = type metadata accessor for AirPlayAndHandoffSettingsList();
  v1 = sub_C31C();

  return SettingsPane.init(makeContent:)(sub_C2B4, 0, v0, v1);
}

unint64_t sub_C31C()
{
  result = qword_18778;
  if (!qword_18778)
  {
    type metadata accessor for AirPlayAndHandoffSettingsList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18778);
  }

  return result;
}

unint64_t sub_C388()
{
  result = qword_18780;
  if (!qword_18780)
  {
    sub_1C18(&qword_18788, &qword_10908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18780);
  }

  return result;
}

uint64_t sub_C3EC@<X0>(void *a1@<X8>)
{
  v2 = sub_F07C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_EFFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_F7AC();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v15[1] = [objc_allocWithZone(sub_F2FC()) init];
  sub_F66C();
  v11 = v15[3];
  *a1 = v15[2];
  a1[1] = v11;
  v12 = *(type metadata accessor for AirPlayAndHandoffSettingsList() + 20);
  sub_F79C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v13 = [qword_19098 bundleURL];
  sub_F02C();

  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v4);
  sub_F06C();
  return sub_F01C();
}

uint64_t type metadata accessor for AirPlayAndHandoffSettingsList()
{
  result = qword_187E8;
  if (!qword_187E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C6A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_F00C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C764(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_F00C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C808()
{
  sub_C88C();
  if (v0 <= 0x3F)
  {
    sub_F00C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C88C()
{
  if (!qword_187F8)
  {
    sub_F2FC();
    v0 = sub_F69C();
    if (!v1)
    {
      atomic_store(v0, &qword_187F8);
    }
  }
}

uint64_t sub_C900@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = sub_1B0C(&qword_18828, &qword_10990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v69 - v3;
  v86 = sub_F04C();
  v5 = *(v86 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v86);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_F76C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_1B0C(&qword_18830, &qword_10998);
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v74);
  v15 = &v69 - v14;
  v72 = sub_1B0C(&qword_18838, &qword_109A0);
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v69 - v17;
  v79 = sub_1B0C(&qword_18840, &qword_109A8);
  v18 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v20 = &v69 - v19;
  v87 = sub_1B0C(&qword_18848, &qword_109B0);
  v80 = *(v87 - 8);
  v21 = *(v80 + 64);
  __chkstk_darwin(v87);
  v77 = &v69 - v22;
  v23 = sub_1B0C(&qword_18850, &qword_109B8);
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  __chkstk_darwin(v23);
  v88 = &v69 - v25;
  v26 = sub_1B0C(&qword_18858, &qword_109C0);
  v83 = *(v26 - 8);
  v84 = v26;
  v27 = *(v83 + 64);
  __chkstk_darwin(v26);
  v89 = &v69 - v28;
  sub_1B0C(&qword_18860, &qword_109C8);
  sub_3C68(&qword_18868, &qword_18860, &qword_109C8);
  v69 = v15;
  v29 = v90;
  sub_F54C();
  *v12 = 0xD000000000000024;
  v12[1] = 0x8000000000012A60;
  v75 = v9;
  v30 = *(v9 + 104);
  v78 = v8;
  v30(v12, enum case for SettingsEventImage.graphicIcon(_:), v8);
  sub_D6CC();
  sub_F03C();
  v31 = v86;
  result = (*(v5 + 48))(v4, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v33 = *(type metadata accessor for AirPlayAndHandoffSettingsList() + 20);
    v34 = v76;
    (*(v5 + 32))(v76, v4, v31);
    sub_3C68(&qword_18870, &qword_18830, &qword_10998);
    v35 = v70;
    v36 = v74;
    v37 = v69;
    sub_F5AC();

    (*(v5 + 8))(v34, v31);
    (*(v75 + 8))(v12, v78);
    (*(v73 + 8))(v37, v36);
    v38 = sub_F3BC();
    LOBYTE(v37) = sub_F52C();
    (*(v71 + 32))(v20, v35, v72);
    v39 = v79;
    v40 = &v20[*(v79 + 36)];
    *v40 = v38;
    v40[8] = v37;
    v41 = v29[1];
    v86 = *v29;
    v95 = v86;
    v96 = v41;
    v78 = v41;
    sub_1B0C(&qword_18878, &qword_109D0);
    sub_F67C();
    v42 = v93;
    v43 = sub_F2FC();
    v44 = sub_E34C();
    v45 = sub_1B54();
    v46 = v77;
    sub_F5DC();

    sub_E448(v20);
    v95 = v39;
    v96 = v43;
    v97 = v44;
    v98 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = v87;
    sub_F59C();
    (*(v80 + 8))(v46, v48);
    sub_F48C();
    if (qword_182B8 != -1)
    {
      swift_once();
    }

    v49 = qword_19098;
    v50 = sub_F57C();
    v52 = v51;
    v54 = v53;
    v95 = v87;
    v96 = OpaqueTypeConformance2;
    v87 = swift_getOpaqueTypeConformance2();
    v55 = v88;
    v56 = v82;
    sub_F61C();
    sub_3B94(v50, v52, v54 & 1);

    (*(v81 + 8))(v55, v56);
    sub_F48C();
    v88 = sub_F57C();
    v81 = v57;
    v59 = v58;
    v80 = v60;
    v93 = v86;
    v94 = v78;
    sub_F68C();
    v61 = v95;
    v62 = v96;
    v63 = v97;
    swift_getKeyPath();
    v95 = v61;
    v96 = v62;
    v97 = v63;
    sub_1B0C(&qword_18888, &qword_10A08);
    sub_F6EC();

    __chkstk_darwin(v64);
    sub_1B0C(&qword_18890, &qword_10A10);
    v91 = v56;
    v92 = v87;
    swift_getOpaqueTypeConformance2();
    sub_3C68(&qword_18898, &qword_18890, &qword_10A10);
    v65 = v84;
    v66 = v88;
    v67 = v81;
    v68 = v89;
    sub_F64C();

    sub_3B94(v66, v67, v59 & 1);

    return (*(v83 + 8))(v68, v65);
  }

  return result;
}

void sub_D46C(uint64_t a1@<X8>)
{
  sub_F2FC();
  sub_1B54();
  v22 = sub_F35C();
  v3 = v2;
  v21 = sub_F35C();
  v23 = v4;
  v20 = sub_F35C();
  v6 = v5;
  v19 = sub_F35C();
  v8 = v7;
  v18 = sub_F35C();
  v10 = v9;
  v11 = sub_F35C();
  v13 = v12;
  v14 = sub_F35C();
  v15 = v10 & 1;
  v17 = v16 & 1;
  *a1 = v22;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23 & 1;
  *(a1 + 32) = v20;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v8 & 1;
  *(a1 + 64) = v18;
  *(a1 + 72) = v15;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13 & 1;
  *(a1 + 96) = v14;
  *(a1 + 104) = v16 & 1;
  sub_3B30(v22, v3 & 1);
  sub_3B30(v21, v23 & 1);
  v6 &= 1u;
  sub_3B30(v20, v6);
  sub_3B30(v19, v8 & 1);
  sub_3B30(v18, v15);
  sub_3B30(v11, v13 & 1);
  sub_3B30(v14, v17);
  sub_361C(v14, v17);
  sub_361C(v11, v13 & 1);
  sub_361C(v18, v15);
  sub_361C(v19, v8 & 1);
  sub_361C(v20, v6);
  sub_361C(v21, v23 & 1);

  sub_361C(v22, v3 & 1);
}

uint64_t sub_D6CC()
{
  v0 = sub_F07C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_EFFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_F7AC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1B0C(&qword_188B8, &unk_10AA0);
  v9 = *(sub_F00C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10910;
  sub_F79C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v13 = [qword_19098 bundleURL];
  sub_F02C();

  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v2);
  sub_F06C();
  sub_F01C();
  return v12;
}

uint64_t sub_D968@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = sub_1B0C(&qword_188A0, &qword_10A18);
  v4 = *(v3 - 8);
  v73 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v74 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v72 = v62 - v9;
  __chkstk_darwin(v8);
  v79 = v62 - v10;
  v11 = type metadata accessor for AirPlayAndHandoffSettingsList();
  v67 = *(v11 - 8);
  v66 = *(v67 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B0C(&qword_18420, &unk_10A20);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v62 - v16;
  v70 = sub_1B0C(&qword_18428, &qword_103C0);
  v77 = *(v70 - 8);
  v18 = *(v77 + 64);
  v19 = __chkstk_darwin(v70);
  v71 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v65 = v62 - v22;
  __chkstk_darwin(v21);
  v80 = v62 - v23;
  v69 = sub_1B0C(&qword_188A8, &qword_10A30);
  v78 = *(v69 - 8);
  v24 = v78[8];
  v25 = __chkstk_darwin(v69);
  v68 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = v62 - v27;
  v62[0] = a1;
  v64 = *a1;
  v63 = a1[1];
  v84 = v64;
  v85 = v63;
  v62[1] = sub_1B0C(&qword_18878, &qword_109D0);
  sub_F68C();
  v28 = v81;
  v29 = v82;
  v30 = v83;
  swift_getKeyPath();
  v84 = v28;
  v85 = v29;
  v86 = v30;
  sub_1B0C(&qword_18888, &qword_10A08);
  sub_F6EC();

  sub_F36C();
  sub_F30C();
  v31 = sub_F31C();
  (*(*(v31 - 8) + 56))(v17, 0, 1, v31);
  v32 = v62[0];
  sub_E57C(v62[0], v13);
  v33 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v34 = swift_allocObject();
  sub_E5E4(v13, v34 + v33);
  sub_F6AC();
  sub_E57C(v32, v13);
  v35 = swift_allocObject();
  sub_E5E4(v13, v35 + v33);
  v36 = v65;
  sub_F6BC();
  v81 = v64;
  v82 = v63;
  sub_F67C();
  v37 = v84;
  v38 = sub_F26C();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v41 == 0;
  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  v45 = v77;
  v46 = v72;
  v47 = v70;
  (*(v77 + 32))(v72, v36, v70);
  v48 = (v46 + *(v73 + 44));
  *v48 = KeyPath;
  v48[1] = sub_E8A0;
  v48[2] = v44;
  v49 = v79;
  sub_E8B8(v46, v79);
  v50 = v78[2];
  v52 = v68;
  v51 = v69;
  v50(v68, v76, v69);
  v53 = *(v45 + 16);
  v54 = v71;
  v53(v71, v80, v47);
  v55 = v49;
  v56 = v74;
  sub_E928(v55, v74);
  v57 = v75;
  v50(v75, v52, v51);
  v58 = sub_1B0C(&qword_188B0, &qword_10A98);
  v53(&v57[*(v58 + 48)], v54, v47);
  sub_E928(v56, &v57[*(v58 + 64)]);
  sub_E998(v79);
  v59 = *(v77 + 8);
  v59(v80, v47);
  v60 = v78[1];
  v60(v76, v51);
  sub_E998(v56);
  v59(v54, v47);
  return (v60)(v52, v51);
}

uint64_t sub_E110@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_E20C(uint64_t *a1, void (*a2)(uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  sub_1B0C(&qword_18878, &qword_109D0);
  v3 = sub_F67C();
  a2(v3);
}

uint64_t sub_E278@<X0>(uint64_t a1@<X8>)
{
  sub_F48C();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v2 = qword_19098;
  result = sub_F57C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_E34C()
{
  result = qword_18880;
  if (!qword_18880)
  {
    sub_1C18(&qword_18840, &qword_109A8);
    sub_1C18(&qword_18830, &qword_10998);
    sub_3C68(&qword_18870, &qword_18830, &qword_10998);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18880);
  }

  return result;
}

uint64_t sub_E448(uint64_t a1)
{
  v2 = sub_1B0C(&qword_18840, &qword_109A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_F22C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_E4E0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_F23C();
}

uint64_t sub_E510@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_F26C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_E53C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_F27C();
}

uint64_t sub_E57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPlayAndHandoffSettingsList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPlayAndHandoffSettingsList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E660()
{
  v1 = (type metadata accessor for AirPlayAndHandoffSettingsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_F00C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E7CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E7FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_F3DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_E8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E998(uint64_t a1)
{
  v2 = sub_1B0C(&qword_188A0, &qword_10A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EA00()
{
  sub_1C18(&qword_18858, &qword_109C0);
  sub_1C18(&qword_18890, &qword_10A10);
  sub_1C18(&qword_18850, &qword_109B8);
  sub_1C18(&qword_18848, &qword_109B0);
  sub_1C18(&qword_18840, &qword_109A8);
  sub_F2FC();
  sub_E34C();
  sub_1B54();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_3C68(&qword_18898, &qword_18890, &qword_10A10);
  return swift_getOpaqueTypeConformance2();
}

void sub_EBA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AirPlayAndHandoffSettingsList();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (&v22.receiver - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLoad");
  sub_C3EC(v6);
  v7 = objc_allocWithZone(sub_1B0C(&qword_188E8, &qword_10AD0));
  v8 = sub_F4CC();
  if (qword_182B8 != -1)
  {
    swift_once();
  }

  v9.super.isa = qword_19098;
  v21._countAndFlagsBits = 0x8000000000012A40;
  v23._countAndFlagsBits = 0xD000000000000014;
  v23._object = 0x8000000000012A20;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_EFEC(v23, v24, v9, v25, v21);
  v10 = sub_F7BC();

  [v1 setTitle:v10];

  v11 = [v8 view];
  if (!v11)
  {
    v12 = v8;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview:v12];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      [v12 setFrame:{0.0, 0.0, v18, v20}];
      [v12 setAutoresizingMask:18];
      [v1 addChildViewController:v8];
      [v8 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_EF90()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}