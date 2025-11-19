uint64_t sub_84248()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_84280()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_84390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_DC40(&qword_118C50);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_16054(v2, &v14 - v9, &qword_118C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_D6B88();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_D7E28();
    v13 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_845B4(uint64_t a1)
{
  v2 = sub_D6B88();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_D6E48();
}

id sub_8467C()
{
  v1 = *(v0 + *(type metadata accessor for GCSControllerCustomizeGameView() + 20));
  if (v1)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for GCSControllerCustomizeGameView()
{
  result = qword_11DAE0;
  if (!qword_11DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_84764()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  type metadata accessor for GCSPreferencesStore();
  sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_847FC()
{
  v1 = sub_D6F68();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GCSControllerCustomizeGameView() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_D7E28();
    v7 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_16AA0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

id sub_84954()
{
  v1 = *(v0 + *(type metadata accessor for GCSControllerCustomizeGameView() + 28));

  return v1;
}

uint64_t sub_84988()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118C58);
  sub_D78B8();
  return v1;
}

uint64_t sub_849F0()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118C58);
  return sub_D78C8();
}

void (*sub_84A5C(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 32));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_DC40(&qword_118C58);
  sub_D78B8();
  return sub_5DD14;
}

uint64_t sub_84B24()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118C58);
  sub_D78E8();
  return v1;
}

uint64_t sub_84B90()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118100);
  sub_D78B8();
  return v1;
}

uint64_t sub_84BF8()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118100);
  return sub_D78C8();
}

void (*sub_84C64(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 36));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v4[11] = sub_DC40(&qword_118100);
  sub_D78B8();
  return sub_6C8F4;
}

uint64_t sub_84D30()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118100);
  sub_D78E8();
  return v1;
}

uint64_t sub_84D9C(uint64_t a1)
{
  v2 = sub_D6998();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_D77D8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_84E94()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118108);
  sub_D78B8();
  return v1;
}

uint64_t sub_84EFC()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118108);
  return sub_D78C8();
}

void (*sub_84F68(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 44));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_DC40(&qword_118108);
  sub_D78B8();
  return sub_5A194;
}

uint64_t sub_85030()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118108);
  sub_D78E8();
  return v1;
}

uint64_t sub_850B4(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_8BEBC(a1, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  sub_D78C8();
  return sub_8BF24(a1, type metadata accessor for GCSProfileParams);
}

void (*sub_8518C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSControllerCustomizeGameView();
  sub_16054(v1 + *(v9 + 48), v8, &qword_116840);
  sub_D78B8();
  return sub_852C0;
}

void sub_852C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_8BEBC(*(a1 + 8), v3, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
    sub_8BF24(v4, type metadata accessor for GCSProfileParams);
  }

  else
  {
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
  }

  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_853B0(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSControllerCustomizeGameView();
  v2 = sub_DC40(&qword_116840);
  return a1(v2);
}

__n128 sub_8540C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_116848);
  sub_D78B8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_854C8()
{
  v1 = v0 + *(type metadata accessor for GCSControllerCustomizeGameView() + 52);
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v26 = *(v1 + 96);
  v27 = v2;
  v4 = *(v1 + 112);
  v28 = *(v1 + 128);
  v5 = *(v1 + 48);
  v6 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v6;
  v7 = *(v1 + 48);
  v8 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v7;
  v9 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v9;
  v17 = v26;
  v18 = v4;
  v19 = *(v1 + 128);
  v13 = v22;
  v14 = v5;
  v15 = v24;
  v16 = v3;
  v29 = *(v1 + 144);
  v20 = *(v1 + 144);
  v11 = v21[0];
  v12 = v8;
  sub_16054(v21, v30, &qword_116848);
  sub_DC40(&qword_116848);
  sub_D78C8();
  v30[6] = v17;
  v30[7] = v18;
  v30[8] = v19;
  v31 = v20;
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v30[5] = v16;
  v30[0] = v11;
  v30[1] = v12;
  return sub_160BC(v30, &qword_116848);
}

void (*sub_85610(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x510uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 152;
  v7 = (v2 + *(type metadata accessor for GCSControllerCustomizeGameView() + 52));
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v11 = v7[7];
  *(v5 + 128) = v7[8];
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[1];
  *(v5 + 32) = v13;
  *(v5 + 48) = v12;
  v15 = v7[3];
  v17 = v7[4];
  v16 = v7[5];
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  v18 = v7[1];
  v19 = *v7;
  *v5 = *v7;
  *(v5 + 16) = v18;
  *(v5 + 248) = v9;
  v20 = v7[8];
  *(v6 + 112) = v11;
  *(v6 + 128) = v20;
  *(v5 + 184) = v13;
  *(v5 + 200) = v15;
  *(v5 + 216) = v17;
  *(v5 + 232) = v10;
  *(v5 + 152) = v19;
  *(v5 + 144) = *(v7 + 18);
  *(v5 + 296) = *(v7 + 18);
  *(v5 + 168) = v14;
  sub_16054(v5, v5 + 304, &qword_116848);
  *(v5 + 1288) = sub_DC40(&qword_116848);
  sub_D78B8();
  return sub_23A8C;
}

double sub_85744@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_116848);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_85808()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_1172A8);
  sub_D78B8();
  return v1;
}

uint64_t sub_85870()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_1172A8);
  return sub_D78C8();
}

void (*sub_858DC(uint64_t *a1))(uint64_t *, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 56));
  v6 = *v5;
  v7 = v5[1];
  v4[8] = *v5;
  v4[9] = v7;
  v8 = v5[2];
  v4[10] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;

  v9 = v8;
  v4[11] = sub_DC40(&qword_1172A8);
  sub_D78B8();
  return sub_5DD14;
}

uint64_t sub_859A4()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_1172A8);
  sub_D78E8();
  return v1;
}

id sub_85A10()
{
  type metadata accessor for GCSControllerCustomizeGameView();
  sub_DC40(&qword_118108);
  sub_D78B8();
  v0 = [v2 customizable];

  return v0;
}

void *sub_85A94()
{
  v16 = sub_D6998();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + *(type metadata accessor for GCSControllerCustomizeGameView() + 36);
  v18 = *v4;
  v19 = *(v4 + 8);
  sub_DC40(&qword_118100);
  sub_D78B8();
  v5 = v17;
  if (!(v17 >> 62))
  {
    v6 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v6 = sub_D8078();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = _swiftEmptyArrayStorage;
  result = sub_71E1C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v18;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_D7FF8();
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 uuid];
      sub_D6978();

      v18 = v9;
      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        sub_71E1C(v13 > 1, v14 + 1, 1);
        v9 = v18;
      }

      ++v8;
      v9[2] = v14 + 1;
      (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v3, v16);
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_85CD8(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 36);
  v6[5] = *v3;
  v7 = *(v3 + 8);
  sub_DC40(&qword_118100);
  sub_D78B8();
  v6[2] = a1;
  v4 = sub_6D490(sub_8A59C, v6, v6[4]);

  return v4;
}

uint64_t sub_85D84(id *a1)
{
  v2 = sub_D6998();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_D6978();

  v8 = sub_D6968();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_85E88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v62 = sub_D6B88();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_D6998();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GCSControllerCustomizeGameView();
  v6 = *(v5 - 8);
  v68 = v5 - 8;
  v53 = v6;
  v71 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_D6D08();
  v8 = *(v65 - 1);
  __chkstk_darwin(v65);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_DC40(&qword_118C60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v67 = sub_DC40(&qword_118C68);
  __chkstk_darwin(v67);
  v16 = &v50 - v15;
  v55 = sub_DC40(&qword_118C70);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v69 = &v50 - v17;
  v59 = sub_DC40(&qword_118C78);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v70 = &v50 - v18;
  v72 = v2;
  sub_DC40(&qword_118C80);
  sub_15FB8(&qword_118C88, &qword_118C80);
  sub_D7328();
  sub_D7A48();
  sub_15FB8(&qword_118C90, &qword_118C60);
  sub_8A5D4(&qword_116888, &type metadata accessor for GroupedFormStyle);
  v19 = v65;
  sub_D7558();
  (*(v8 + 8))(v10, v19);
  (*(v12 + 8))(v14, v11);
  v20 = v66;
  sub_8BEBC(v2, v66, type metadata accessor for GCSControllerCustomizeGameView);
  v21 = *(v53 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  sub_8A620(v20, v23 + v22);
  v24 = &v16[*(sub_DC40(&qword_118C98) + 36)];
  v52 = v16;
  *v24 = sub_8A684;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v65 = type metadata accessor for GCSControllerCustomizeGameView;
  sub_8BEBC(v2, v20, type metadata accessor for GCSControllerCustomizeGameView);
  v25 = swift_allocObject();
  sub_8A620(v20, v25 + v22);
  v26 = &v16[*(v67 + 36)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_8A69C;
  *(v26 + 3) = v25;
  sub_DC40(&qword_118140);
  v27 = v54;
  sub_D77E8();
  sub_8BEBC(v2, v20, type metadata accessor for GCSControllerCustomizeGameView);
  v53 = v21;
  v28 = swift_allocObject();
  sub_8A620(v20, v28 + v22);
  v51 = sub_8A854();
  v29 = sub_8A5D4(&unk_119150, &type metadata accessor for UUID);
  v30 = v27;
  v31 = v57;
  v32 = v52;
  sub_D7538();

  v33 = v30;
  v34 = v31;
  (*(v58 + 8))(v33, v31);
  sub_8AA2C(v32);
  v35 = v2 + *(v68 + 52);
  v73 = *v35;
  v74 = *(v35 + 8);
  sub_DC40(&qword_118108);
  sub_D78B8();
  v36 = v76;
  sub_8BEBC(v2, v20, v65);
  v37 = swift_allocObject();
  sub_8A620(v20, v37 + v22);
  v38 = sub_450A0(0, &qword_118F10);
  v73 = v67;
  *&v74 = v34;
  *(&v74 + 1) = v51;
  v75 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_720CC();
  v41 = v69;
  v42 = v55;
  sub_D7538();

  (*(v56 + 8))(v41, v42);
  v43 = v61;
  sub_84390(v61);
  v44 = v66;
  sub_8BEBC(v2, v66, v65);
  v45 = swift_allocObject();
  sub_8A620(v44, v45 + v22);
  v73 = v42;
  *&v74 = v38;
  *(&v74 + 1) = OpaqueTypeConformance2;
  v75 = v40;
  swift_getOpaqueTypeConformance2();
  sub_8A5D4(&qword_118CB0, &type metadata accessor for ScenePhase);
  v46 = v62;
  v47 = v59;
  v48 = v70;
  sub_D7538();

  (*(v64 + 8))(v43, v46);
  return (*(v60 + 8))(v48, v47);
}

uint64_t sub_868A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v99 = sub_DC40(&qword_116840);
  __chkstk_darwin(v99);
  v107 = &v81 - v3;
  v4 = type metadata accessor for GCSProfileContentView();
  __chkstk_darwin(v4 - 8);
  v105 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v81 - v7;
  v8 = sub_DC40(&qword_118D78);
  v103 = *(v8 - 8);
  v104 = v8;
  __chkstk_darwin(v8);
  v102 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v81 - v11;
  v109 = a1;
  sub_DC40(&qword_118D80);
  sub_15FB8(&qword_118D88, &qword_118D80);
  sub_D79C8();
  v12 = type metadata accessor for GCSControllerCustomizeGameView();
  v13 = a1 + v12[11];
  *v240 = *v13;
  *&v240[8] = *(v13 + 8);
  sub_DC40(&qword_118108);
  sub_D78B8();
  v14 = *&v238[0];
  v100 = [*&v238[0] customizable];

  v15 = (a1 + v12[13]);
  v16 = v15[7];
  v245 = v15[6];
  v246 = v16;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v17 = v15[3];
  v241 = v15[2];
  v242 = v17;
  v18 = v15[5];
  v243 = v15[4];
  v244 = v18;
  v19 = v15[1];
  *v240 = *v15;
  *&v240[16] = v19;
  sub_DC40(&qword_116848);
  sub_D78E8();
  swift_getKeyPath();
  v220 = v226[6];
  v221 = v226[7];
  v222 = v226[8];
  v223 = v227;
  v216 = v226[2];
  v217 = v226[3];
  v218 = v226[4];
  v219 = v226[5];
  v214 = v226[0];
  v215 = v226[1];
  sub_D78D8();

  sub_160BC(v226, &qword_116848);
  v97 = v212;
  v98 = v211;
  v96 = v213;
  v20 = v15[7];
  v245 = v15[6];
  v246 = v20;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v21 = v15[3];
  v241 = v15[2];
  v242 = v21;
  v22 = v15[5];
  v243 = v15[4];
  v244 = v22;
  v23 = v15[1];
  *v240 = *v15;
  *&v240[16] = v23;
  sub_D78E8();
  swift_getKeyPath();
  v207 = v228[6];
  v208 = v228[7];
  v209 = v228[8];
  v210 = v229;
  v203 = v228[2];
  v204 = v228[3];
  v205 = v228[4];
  v206 = v228[5];
  v201 = v228[0];
  v202 = v228[1];
  sub_D78D8();

  sub_160BC(v228, &qword_116848);
  v94 = v199;
  v95 = v198;
  v93 = v200;
  v24 = v15[7];
  v245 = v15[6];
  v246 = v24;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v25 = v15[3];
  v241 = v15[2];
  v242 = v25;
  v26 = v15[5];
  v243 = v15[4];
  v244 = v26;
  v27 = v15[1];
  *v240 = *v15;
  *&v240[16] = v27;
  sub_D78E8();
  swift_getKeyPath();
  v194 = v230[6];
  v195 = v230[7];
  v196 = v230[8];
  v197 = v231;
  v190 = v230[2];
  v191 = v230[3];
  v192 = v230[4];
  v193 = v230[5];
  v188 = v230[0];
  v189 = v230[1];
  sub_D78D8();

  sub_160BC(v230, &qword_116848);
  v91 = v186;
  v92 = v185;
  v90 = v187;
  v28 = v15[7];
  v245 = v15[6];
  v246 = v28;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v29 = v15[3];
  v241 = v15[2];
  v242 = v29;
  v30 = v15[5];
  v243 = v15[4];
  v244 = v30;
  v31 = v15[1];
  *v240 = *v15;
  *&v240[16] = v31;
  sub_D78E8();
  swift_getKeyPath();
  v181 = v232[6];
  v182 = v232[7];
  v183 = v232[8];
  v184 = v233;
  v177 = v232[2];
  v178 = v232[3];
  v179 = v232[4];
  v180 = v232[5];
  v175 = v232[0];
  v176 = v232[1];
  sub_D78D8();

  sub_160BC(v232, &qword_116848);
  v88 = v173;
  v89 = v172;
  v87 = v174;
  v32 = v15[7];
  v245 = v15[6];
  v246 = v32;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v33 = v15[3];
  v241 = v15[2];
  v242 = v33;
  v34 = v15[5];
  v243 = v15[4];
  v244 = v34;
  v35 = v15[1];
  *v240 = *v15;
  *&v240[16] = v35;
  sub_D78E8();
  swift_getKeyPath();
  v169 = v234[7];
  v170 = v234[8];
  v171 = v235;
  v164 = v234[2];
  v165 = v234[3];
  v166 = v234[4];
  v167 = v234[5];
  v168 = v234[6];
  v162 = v234[0];
  v163 = v234[1];
  sub_D78D8();

  sub_160BC(v234, &qword_116848);
  v85 = v160;
  v86 = v159;
  v84 = v161;
  v36 = v15[7];
  v245 = v15[6];
  v246 = v36;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v37 = v15[3];
  v241 = v15[2];
  v242 = v37;
  v38 = v15[5];
  v243 = v15[4];
  v244 = v38;
  v39 = v15[1];
  *v240 = *v15;
  *&v240[16] = v39;
  sub_D78E8();
  swift_getKeyPath();
  v155 = v236[6];
  v156 = v236[7];
  v157 = v236[8];
  v158 = v237;
  v151 = v236[2];
  v152 = v236[3];
  v153 = v236[4];
  v154 = v236[5];
  v149 = v236[0];
  v150 = v236[1];
  sub_D78D8();

  sub_160BC(v236, &qword_116848);
  v82 = v147;
  v83 = v146;
  v81 = v148;
  v40 = v15[7];
  v245 = v15[6];
  v246 = v40;
  v247 = v15[8];
  v248 = *(v15 + 18);
  v41 = v15[3];
  v241 = v15[2];
  v242 = v41;
  v42 = v15[5];
  v243 = v15[4];
  v244 = v42;
  v43 = v15[1];
  *v240 = *v15;
  *&v240[16] = v43;
  sub_D78E8();
  swift_getKeyPath();
  v142 = v238[6];
  v143 = v238[7];
  v144 = v238[8];
  v145 = v239;
  v138 = v238[2];
  v139 = v238[3];
  v140 = v238[4];
  v141 = v238[5];
  v136 = v238[0];
  v137 = v238[1];
  sub_D78D8();

  sub_160BC(v238, &qword_116848);
  v224[4] = v134;
  v225 = v135;
  v224[3] = v133;
  v224[2] = v132;
  v224[0] = v130;
  v224[1] = v131;
  sub_D78E8();
  v44 = v15[7];
  v126 = v15[6];
  v127 = v44;
  v128 = v15[8];
  v129 = *(v15 + 18);
  v45 = v15[3];
  v122 = v15[2];
  v123 = v45;
  v46 = v15[5];
  v124 = v15[4];
  v125 = v46;
  v47 = v15[1];
  v120 = *v15;
  v121 = v47;
  sub_D78E8();
  swift_getKeyPath();
  v126 = v245;
  v127 = v246;
  v128 = v247;
  v129 = v248;
  v122 = v241;
  v123 = v242;
  v124 = v243;
  v125 = v244;
  v120 = *v240;
  v121 = *&v240[16];
  sub_D78D8();

  sub_160BC(v240, &qword_116848);
  v48 = v117;
  v49 = v118;
  v50 = v119;
  v51 = (a1 + v12[15]);
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v114 = v52;
  v115 = v53;
  v116 = v54;
  sub_DC40(&qword_1169A8);
  v55 = sub_D7808();
  v56 = v110;
  v57 = v111;
  v59 = v112;
  v58 = v113;
  v60 = sub_16244(v55);
  v80.n128_u64[0] = v56;
  v80.n128_u64[1] = v57;
  *(&v79 + 1) = v49;
  *&v79 = v48;
  LOBYTE(v78) = 1;
  *(&v77 + 1) = v82;
  *&v77 = v83;
  *(&v76 + 1) = v90;
  *&v76 = v91;
  *(&v75 + 1) = v92;
  *&v75 = v93;
  *(&v74 + 1) = v94;
  *&v74 = v95;
  v61 = v108;
  v63 = sub_774D0(0, v100, 1, v60, v62, v98, v97, v96, v108, v74, v75, v76, v89, v88, v87, v86, v85, v84, v77, v81, v78, v224, v107, v79, v50, v80, v59, v58);
  v64 = v102;
  v65 = v103;
  v66 = *(v103 + 16);
  v67 = v101;
  v68 = v104;
  v66(v102, v101, v104, v63);
  v69 = v105;
  sub_8BEBC(v61, v105, type metadata accessor for GCSProfileContentView);
  v70 = v106;
  (v66)(v106, v64, v68);
  v71 = sub_DC40(&qword_118D90);
  sub_8BEBC(v69, v70 + *(v71 + 48), type metadata accessor for GCSProfileContentView);
  sub_8BF24(v108, type metadata accessor for GCSProfileContentView);
  v72 = *(v65 + 8);
  v72(v67, v68);
  sub_8BF24(v69, type metadata accessor for GCSProfileContentView);
  return (v72)(v64, v68);
}

void sub_87400(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v75 = a2;
  v3 = sub_DC40(&qword_1182A8);
  __chkstk_darwin(v3 - 8);
  v69 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = v62 - v6;
  v7 = sub_DC40(&qword_1182B0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v72 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v71 = v62 - v10;
  v11 = type metadata accessor for GCSControllerCustomizeGameView();
  v12 = *(v11 + 32);
  v68 = a1;
  v13 = &a1[v12];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  *&v77 = *v13;
  *(&v77 + 1) = v15;
  *&v78 = v16;
  sub_DC40(&qword_118C58);
  sub_D78B8();
  v17 = v85;
  v18 = [v85 bundleIdentifier];

  v19 = sub_D7C18();
  v21 = v20;

  v22 = [objc_opt_self() defaultIdentifier];
  v23 = sub_D7C18();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {
  }

  else
  {
    v26 = sub_D8118();

    if ((v26 & 1) == 0)
    {
      *&v77 = v14;
      *(&v77 + 1) = v15;
      *&v78 = v16;
      sub_D78B8();
      v31 = *&v68[*(v11 + 28)];
      v32 = sub_6BE88();
      v85 = nullsub_1(v32);
      v86 = v33;
      v87 = v34;
      v88 = v35;
      v89 = 1;
      goto LABEL_7;
    }
  }

  v27 = *&v68[*(v11 + 28)];
  v28 = sub_73FE0();
  v85 = nullsub_1(v28);
  v86 = v29;
  v87 = v30;
  v88 = 0;
  v89 = 0;
LABEL_7:
  sub_732FC();
  sub_73350();
  sub_D70B8();
  v36 = v79;
  v63 = v78;
  v64 = v77;
  v67 = *(&v77 + 1);
  v68 = v77;
  v65 = *(&v78 + 1);
  v66 = v78;
  sub_733A4(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
  sub_DC40(&qword_118140);
  v37 = v70;
  v38 = sub_D7808();
  v62[1] = v62;
  __chkstk_darwin(v38);
  v62[0] = &v62[-4];
  sub_16054(v37, v69, &qword_1182A8);
  v39 = sub_D7088();
  LOBYTE(v85) = 1;
  *&v77 = sub_A9308(0xD000000000000010, 0x80000000000E5D80);
  *(&v77 + 1) = v40;
  sub_16000();
  v41 = sub_D73B8();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  KeyPath = swift_getKeyPath();
  v76 = 0;
  v77 = v39;
  LOBYTE(v78) = v85;
  *(&v78 + 1) = v41;
  v79 = v43;
  v80 = v45 & 1;
  v81 = v47;
  v82 = KeyPath;
  v83 = 1;
  v84 = 0;
  sub_DC40(&qword_1182C8);
  sub_D6998();
  sub_DC40(&qword_1182D0);
  sub_15FB8(&qword_1182D8, &qword_1182C8);
  sub_8A5D4(&qword_117DE8, &type metadata accessor for UUID);
  sub_73400();
  v49 = v71;
  sub_D7878();
  sub_160BC(v37, &qword_1182A8);
  v51 = v72;
  v50 = v73;
  v52 = *(v73 + 16);
  v53 = v74;
  v52(v72, v49, v74);
  v54 = v75;
  v55 = v63;
  *v75 = v64;
  v54[1] = v55;
  *(v54 + 32) = v36;
  v56 = sub_DC40(&qword_118D98);
  v52(v54 + *(v56 + 48), v51, v53);
  v57 = v68;
  v58 = v67;
  v59 = v66;
  v60 = v65;
  sub_733A4(v68, v67, v66, v65, v36);
  sub_73678(v57, v58, v59, v60, v36);
  v61 = *(v50 + 8);
  v61(v49, v53);
  v61(v51, v53);
  sub_73678(v57, v58, v59, v60, v36);
}

uint64_t sub_87AC4(uint64_t a1)
{
  v2 = type metadata accessor for GCSControllerCustomizeGameView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = sub_85A94();
  swift_getKeyPath();
  sub_8BEBC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GCSControllerCustomizeGameView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_8A620(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_DC40(&qword_118328);
  sub_DC40(&qword_1182F0);
  sub_15FB8(&qword_118330, &qword_118328);
  sub_8A5D4(&qword_117DE8, &type metadata accessor for UUID);
  sub_73484();
  return sub_D7988();
}

uint64_t sub_87CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_DC40(&qword_118338);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  v10 = (a2 + *(type metadata accessor for GCSControllerCustomizeGameView() + 36));
  v20 = *v10;
  v21 = *(v10 + 1);
  sub_DC40(&qword_118100);
  sub_D78B8();
  v18 = a1;
  v11 = sub_6D490(sub_8C388, v17, v19);

  v12 = 1;
  if (v11)
  {
    v13 = nullsub_1(v11);
    v14 = v9 + *(sub_DC40(&qword_118160) + 36);
    v15 = sub_D6998();
    (*(*(v15 - 8) + 16))(v14, a1, v15);
    v14[*(sub_DC40(&qword_118168) + 36)] = 1;
    *v9 = v13;
    (*(v7 + 32))(a3, v9, v6);
    v12 = 0;
  }

  return (*(v7 + 56))(a3, v12, 1, v6);
}

uint64_t sub_87ED4(uint64_t a1)
{
  v26 = a1;
  v2 = sub_D6998();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GCSControllerCustomizeGameView();
  v10 = (a1 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v27 = v10[2];
  *&v30 = v12;
  *(&v30 + 1) = v11;
  v31 = v27;
  sub_DC40(&qword_118108);
  sub_D78B8();
  v13 = v28;
  v14 = [v28 uuid];

  sub_D6978();
  (*(v3 + 16))(v5, v8, v2);
  sub_DC40(&qword_118140);
  v15 = v26;
  sub_D77F8();
  (*(v3 + 8))(v8, v2);
  *&v30 = v12;
  *(&v30 + 1) = v11;
  v31 = v27;
  sub_D78B8();
  v16 = v28;
  v17 = [v28 name];

  v18 = sub_D7C18();
  v20 = v19;

  v21 = (v15 + *(v9 + 60));
  v22 = *v21;
  v23 = *(v21 + 2);
  v30 = v22;
  v31 = v23;
  v28 = v18;
  v29 = v20;
  sub_DC40(&qword_1169A8);
  return sub_D77F8();
}

void sub_88130(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GCSControllerCustomizeGameView();
  v6 = a1 + *(v5 + 44);
  v11[1] = *v6;
  v12 = *(v6 + 8);
  sub_DC40(&qword_118108);
  sub_D78B8();
  v7 = v11[0];
  sub_89498();
  v8 = *(a1 + *(v5 + 20));
  if (v8)
  {
    sub_450A0(0, &qword_118F10);
    v9 = v8;
    sub_DC40(&qword_116840);
    sub_D78B8();
    v10 = sub_D1EF0(v4);
    (*(&stru_298.flags + (swift_isaMask & *v9)))(v7, v10, 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

void sub_8832C(uint64_t a1)
{
  v3 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_89498();
  v6 = *(v1 + *(type metadata accessor for GCSControllerCustomizeGameView() + 20));
  if (v6)
  {
    sub_450A0(0, &qword_118F10);
    v7 = v6;
    sub_DC40(&qword_116840);
    sub_D78B8();
    v8 = sub_D1EF0(v5);
    (*(&stru_298.flags + (swift_isaMask & *v7)))(a1, v8, 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

void sub_884E0(uint64_t *a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  sub_89498();
  v11 = *(a3 + *(type metadata accessor for GCSControllerCustomizeGameView() + 20));
  if (v11)
  {
    sub_450A0(0, &qword_118F10);
    v12 = v11;
    sub_DC40(&qword_116840);
    sub_D78B8();
    v13 = sub_D1EF0(v8);
    (*(&stru_298.flags + (swift_isaMask & *v12)))(v9, v13, 1);

    sub_886B4(v10);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    sub_D6DD8();
    __break(1u);
  }
}

void sub_886B4(void *a1)
{
  v2 = type metadata accessor for GCSControllerCustomizeGameView();
  __chkstk_darwin(v2);
  v100 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_D6A38();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_D6998();
  __chkstk_darwin(v95);
  v102 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v6 - 8);
  v105 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v94 - v9;
  __chkstk_darwin(v11);
  v13 = &v94 - v12;
  sub_D20B4(&v94 - v12);
  v99 = *(v2 + 48);
  v14 = v2;
  sub_8BEBC(v13, v10, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  v15 = v106;
  sub_D78C8();
  v16 = v13;
  v17 = a1;
  sub_8BF24(v16, type metadata accessor for GCSProfileParams);
  v18 = [a1 name];
  v19 = sub_D7C18();
  v21 = v20;

  v22 = v15;
  v23 = v105;
  v24 = v22 + v14[15];
  v25 = *v24;
  v26 = *(v24 + 16);
  v128 = v25;
  *&v129 = v26;
  *&v119[0] = v19;
  *(&v119[0] + 1) = v21;
  v27 = v22;
  sub_DC40(&qword_1169A8);
  sub_D77F8();
  sub_D78B8();
  v28 = *(v27 + v14[7]);
  v29 = *(v27 + v14[5]);
  if (v29)
  {
    v30 = v28;
    v31 = [v29 controllers];
    v99 = v29;
    v32 = v31;
    sub_450A0(0, &qword_117060);
    v33 = sub_D7D28();

    sub_50648(v23, v30, v33, v138);
    v34 = v27 + v14[13];
    v35 = *(v34 + 112);
    v36 = *(v34 + 80);
    v124 = *(v34 + 96);
    v125 = v35;
    v37 = *(v34 + 112);
    v126 = *(v34 + 128);
    v38 = *(v34 + 48);
    v39 = *(v34 + 16);
    v120 = *(v34 + 32);
    v121 = v38;
    v40 = *(v34 + 48);
    v41 = *(v34 + 80);
    v122 = *(v34 + 64);
    v123 = v41;
    v42 = *(v34 + 16);
    v119[0] = *v34;
    v119[1] = v42;
    v115 = v124;
    v116 = v37;
    v117 = *(v34 + 128);
    v111 = v120;
    v112 = v40;
    v113 = v122;
    v114 = v36;
    v127 = *(v34 + 144);
    v118 = *(v34 + 144);
    v110[0] = v119[0];
    v110[1] = v39;
    v108[6] = v138[6];
    v108[7] = v138[7];
    v109 = v139;
    v108[2] = v138[2];
    v108[3] = v138[3];
    v108[4] = v138[4];
    v108[5] = v138[5];
    v108[0] = v138[0];
    v108[1] = v138[1];
    sub_16054(v119, &v128, &qword_116848);
    sub_DC40(&qword_116848);
    sub_D78C8();
    v134 = v115;
    v135 = v116;
    v136 = v117;
    v137 = v118;
    v130 = v111;
    v131 = v112;
    v132 = v113;
    v133 = v114;
    v128 = v110[0];
    v129 = v110[1];
    sub_160BC(&v128, &qword_116848);
    v94 = v14;
    v43 = (v27 + v14[8]);
    v44 = *v43;
    v45 = v43[1];
    v105 = v43[2];
    *&v110[0] = v44;
    *(&v110[0] + 1) = v45;
    *&v110[1] = v105;
    v46 = sub_DC40(&qword_118C58);
    sub_D78B8();
    v47 = *&v108[0];
    v48 = [*&v108[0] controllerToProfileMappings];

    v49 = sub_D7B48();
    v50 = [v30 persistentIdentifier];
    v51 = sub_D7C18();
    v53 = v52;

    v98 = v17;
    v54 = [v17 uuid];
    v55 = v102;
    sub_D6978();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v110[0] = v49;
    sub_8B268(v55, v51, v53, isUniquelyReferenced_nonNull_native);
    v57 = v105;

    *&v110[0] = v44;
    *(&v110[0] + 1) = v45;
    *&v110[1] = v57;
    sub_D78B8();
    v58 = *&v108[0];
    v59 = [*&v108[0] bundleIdentifier];

    if (!v59)
    {
      sub_D7C18();
      v59 = sub_D7BD8();
    }

    *&v110[0] = v44;
    *(&v110[0] + 1) = v45;
    *&v110[1] = v57;
    sub_D78B8();
    v60 = *&v108[0];
    v61 = [*&v108[0] title];

    if (!v61)
    {
      sub_D7C18();
      v61 = sub_D7BD8();
    }

    v96 = v45;
    v97 = v44;
    *&v110[0] = v44;
    *(&v110[0] + 1) = v45;
    *&v110[1] = v57;
    sub_D78B8();
    v62 = *&v108[0];
    v63 = [*&v108[0] controllerToCompatibilityModeMappings];

    type metadata accessor for GCSCompatibilityMode();
    v102 = v46;
    sub_D7B48();

    v64 = objc_allocWithZone(GCSGame);
    isa = sub_D7B38().super.isa;

    v66 = sub_D7B38().super.isa;

    v67 = [v64 initWithBundleIdentifier:v59 title:v61 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v66];

    v68 = sub_2E18C();
    v69 = v101;
    v71 = v103;
    v70 = v104;
    (*(v101 + 16))(v103, v68, v104);
    v72 = v100;
    sub_8BEBC(v106, v100, type metadata accessor for GCSControllerCustomizeGameView);
    v73 = v98;
    v74 = sub_D6A18();
    v75 = sub_D7E38();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v106 = v67;
      v77 = v76;
      v98 = swift_slowAlloc();
      *&v108[0] = v98;
      *v77 = 136315394;
      v78 = v72 + v94[8];
      *&v110[0] = *v78;
      *(v110 + 8) = *(v78 + 8);
      sub_D78B8();
      v79 = v107;
      v80 = [v107 localizedName];

      v81 = sub_D7C18();
      v82 = v69;
      v84 = v83;

      sub_8BF24(v72, type metadata accessor for GCSControllerCustomizeGameView);
      v85 = sub_89FF4(v81, v84, v108);

      *(v77 + 4) = v85;
      *(v77 + 12) = 2080;
      v86 = [v73 name];
      v87 = sub_D7C18();
      v89 = v88;

      v90 = sub_89FF4(v87, v89, v108);

      *(v77 + 14) = v90;
      _os_log_impl(&dword_0, v74, v75, "Mapping %s to %s", v77, 0x16u);
      swift_arrayDestroy();

      v67 = v106;

      (*(v82 + 8))(v103, v104);
    }

    else
    {

      (*(v69 + 8))(v71, v70);
      sub_8BF24(v72, type metadata accessor for GCSControllerCustomizeGameView);
    }

    *&v110[0] = v97;
    *(&v110[0] + 1) = v96;
    *&v110[1] = v105;
    v91 = v99;
    sub_D78B8();
    v92 = *&v108[0];
    (*(&stru_298.size + (swift_isaMask & *v91)))(*&v108[0], v67, 1);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
    v93 = v28;
    sub_D6DD8();
    __break(1u);
  }
}

void sub_8918C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D6B88();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for ScenePhase.active(_:), v6, v8);
  sub_8A5D4(&qword_118CB0, &type metadata accessor for ScenePhase);
  v11 = sub_D7BA8();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    v12 = type metadata accessor for GCSControllerCustomizeGameView();
    v13 = a2 + *(v12 + 44);
    v18[1] = *v13;
    v19 = *(v13 + 8);
    sub_DC40(&qword_118108);
    sub_D78B8();
    v14 = v18[0];
    sub_89498();
    v15 = *(a2 + *(v12 + 20));
    if (v15)
    {
      sub_450A0(0, &qword_118F10);
      v16 = v15;
      sub_DC40(&qword_116840);
      sub_D78B8();
      v17 = sub_D1EF0(v5);
      (*(&stru_298.flags + (swift_isaMask & *v16)))(v14, v17, 1);
    }

    else
    {
      type metadata accessor for GCSPreferencesStore();
      sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);
      sub_D6DD8();
      __break(1u);
    }
  }
}

void *sub_89498()
{
  v1 = v0;
  v80 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v80);
  v83 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v76 - v4;
  __chkstk_darwin(v5);
  v7 = &v76 - v6;
  v8 = type metadata accessor for GCSControllerCustomizeGameView();
  v9 = *(v8 + 48);
  v10 = sub_DC40(&qword_116840);
  v79 = v9;
  v81 = v7;
  v85 = v10;
  sub_D78B8();
  v78 = v8;
  v11 = *(v8 + 52);
  v84 = v1;
  v12 = *(v1 + v11 + 112);
  v118 = *(v1 + v11 + 96);
  v119 = v12;
  v120 = *(v1 + v11 + 128);
  v121 = *(v1 + v11 + 144);
  v13 = *(v1 + v11 + 48);
  v114[1] = *(v1 + v11 + 32);
  v115 = v13;
  v14 = *(v1 + v11 + 80);
  v116 = *(v1 + v11 + 64);
  v117 = v14;
  v15 = *(v1 + v11);
  v16 = *(v1 + v11 + 16);
  v77 = v1 + v11;
  v113 = v15;
  v114[0] = v16;
  v76 = sub_DC40(&qword_116848);
  sub_D78B8();
  v17 = v123;

  result = sub_23D08(v122);
  v87 = *(v17 + 16);
  if (!v87)
  {

    v20 = _swiftEmptyArrayStorage;
LABEL_48:
    v60 = sub_CEE7C(v20);

    v61 = v84;
    v62 = v82;
    sub_D78B8();
    v63 = sub_D16B4(v60);

    sub_8BF24(v62, type metadata accessor for GCSProfileParams);
    v64 = v80;
    v65 = v81;
    v66 = *(v80 + 44);

    *(v65 + v66) = v63;
    v67 = *(v77 + 112);
    v118 = *(v77 + 96);
    v119 = v67;
    v120 = *(v77 + 128);
    v121 = *(v77 + 144);
    v68 = *(v77 + 48);
    v114[1] = *(v77 + 32);
    v115 = v68;
    v69 = *(v77 + 80);
    v116 = *(v77 + 64);
    v117 = v69;
    v70 = *(v77 + 16);
    v113 = *v77;
    v114[0] = v70;
    sub_D78B8();
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v106 = v97;
    v107 = v98;
    v108 = v99;
    v109 = v100;
    v104 = v95;
    v105 = v96;
    sub_23D08(&v104);
    *(v65 + *(v64 + 72)) = v105;
    v71 = v61 + *(v78 + 60);
    v72 = *v71;
    v73 = *(v71 + 16);
    v113 = v72;
    *&v114[0] = v73;
    sub_DC40(&qword_1169A8);
    sub_D77E8();
    v74 = v95;
    v75 = (v65 + *(v64 + 20));

    *v75 = v74;
    sub_8BEBC(v65, v62, type metadata accessor for GCSProfileParams);
    sub_8BEBC(v62, v83, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_8BF24(v62, type metadata accessor for GCSProfileParams);
    return sub_8BF24(v65, type metadata accessor for GCSProfileParams);
  }

  v19 = 0;
  v86 = v17 + 32;
  v20 = _swiftEmptyArrayStorage;
  v91 = v17;
  while (v19 < *(v17 + 16))
  {
    v92 = v19;
    v22 = v86 + (v19 << 6);
    v23 = *(v22 + 48);
    v24 = *(v22 + 56);
    v25 = *(v23 + 16);
    if (v25)
    {
      v89 = *(v22 + 56);
      v90 = v20;
      *&v104 = _swiftEmptyArrayStorage;

      sub_272B4(0, v25, 0);
      v26 = v104;
      v88 = v23;
      v27 = (v23 + 64);
      do
      {
        v28 = *(v27 - 4);
        v29 = *(v27 - 3);
        v30 = *(v27 - 2);
        v31 = *(v27 - 1);
        v93 = *v27;
        v94 = v30;
        *&v104 = v26;
        v32 = v26[2];
        v33 = v26[3];

        if (v32 >= v33 >> 1)
        {
          sub_272B4((v33 > 1), v32 + 1, 1);
          v26 = v104;
        }

        v27 += 5;
        *(&v114[0] + 1) = &type metadata for GCSElementMappingView;
        *&v114[1] = &off_10AC48;
        v34 = swift_allocObject();
        *&v113 = v34;
        v34[2] = v28;
        v34[3] = v29;
        v35 = v93;
        v34[4] = v94;
        v34[5] = v31;
        v34[6] = v35;
        v26[2] = v32 + 1;
        sub_272DC(&v113, &v26[5 * v32 + 4]);
        --v25;
      }

      while (v25);

      v20 = v90;
      v17 = v91;
      v24 = v89;
    }

    else
    {

      v26 = _swiftEmptyArrayStorage;
    }

    v36 = v26[2];
    v37 = v20[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_50;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v38 > v20[3] >> 1)
    {
      if (v37 <= v38)
      {
        v39 = v37 + v36;
      }

      else
      {
        v39 = v37;
      }

      result = sub_2716C(result, v39, 1, v20);
      v20 = result;
    }

    if (v26[2])
    {
      if ((v20[3] >> 1) - v20[2] < v36)
      {
        goto LABEL_54;
      }

      sub_DC40(&qword_1169A0);
      swift_arrayInitWithCopy();

      if (v36)
      {
        v40 = v20[2];
        v41 = __OFADD__(v40, v36);
        v42 = v40 + v36;
        if (v41)
        {
          goto LABEL_56;
        }

        v20[2] = v42;
      }
    }

    else
    {

      if (v36)
      {
        goto LABEL_51;
      }
    }

    v43 = *(v24 + 16);
    if (v43)
    {
      v44 = v20;
      *&v95 = _swiftEmptyArrayStorage;
      sub_272B4(0, v43, 0);
      v45 = v95;
      v46 = v43 - 1;
      for (i = 32; ; i += 48)
      {
        v48 = *(v24 + i);
        v49 = *(v24 + i + 16);
        *(v114 + 11) = *(v24 + i + 27);
        v113 = v48;
        v114[0] = v49;
        sub_1B040(&v113, &v104);
        *&v95 = v45;
        v51 = v45[2];
        v50 = v45[3];
        if (v51 >= v50 >> 1)
        {
          sub_272B4((v50 > 1), v51 + 1, 1);
          v45 = v95;
        }

        *(&v105 + 1) = &type metadata for GCSDirectionPadElementMappingView;
        *&v106 = &off_10AC98;
        v52 = swift_allocObject();
        *&v104 = v52;
        v53 = v114[0];
        v52[1] = v113;
        v52[2] = v53;
        *(v52 + 43) = *(v114 + 11);
        v45[2] = v51 + 1;
        sub_272DC(&v104, &v45[5 * v51 + 4]);
        if (!v46)
        {
          break;
        }

        --v46;
      }

      v20 = v44;
      v17 = v91;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    v54 = v45[2];
    v55 = v20[2];
    v56 = v55 + v54;
    if (__OFADD__(v55, v54))
    {
      goto LABEL_52;
    }

    if (v56 > v20[3] >> 1)
    {
      if (v55 <= v56)
      {
        v59 = v55 + v54;
      }

      else
      {
        v59 = v20[2];
      }

      result = sub_2716C((&dword_0 + 1), v59, 1, v20);
      v20 = result;
      v55 = result[2];
      if (v45[2])
      {
LABEL_37:
        if (((v20[3] >> 1) - v55) < v54)
        {
          goto LABEL_55;
        }

        sub_DC40(&qword_1169A0);
        swift_arrayInitWithCopy();

        v21 = v92;
        if (v54)
        {
          v57 = v20[2];
          v41 = __OFADD__(v57, v54);
          v58 = v57 + v54;
          if (v41)
          {
            goto LABEL_57;
          }

          v20[2] = v58;
        }

        goto LABEL_4;
      }
    }

    else if (v54)
    {
      goto LABEL_37;
    }

    v21 = v92;
    if (v54)
    {
      goto LABEL_53;
    }

LABEL_4:
    v19 = v21 + 1;
    if (v19 == v87)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_89C30@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_DC40(&qword_118C50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_89C94()
{
  type metadata accessor for GCSPreferencesStore();
  sub_8A5D4(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

double sub_89D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v50 = a5;
  v58 = a18;
  v57 = a17;
  v55 = a14;
  v56 = a15;
  v54 = a13;
  v48 = a4;
  v49 = a12;
  v47 = a11;
  v22 = sub_D6998();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v47 - v27;
  sub_21A44(a1, a9, &qword_1180B8);
  v29 = type metadata accessor for GCSControllerCustomizeGameView();
  v30 = (a9 + v29[5]);
  *v30 = a2;
  v30[1] = a3;
  v31 = a9 + v29[6];
  *v31 = v48;
  *(v31 + 8) = v50 & 1;
  v32 = v52;
  *(a9 + v29[7]) = v51;
  v33 = (a9 + v29[8]);
  v34 = v53;
  *v33 = v32;
  v33[1] = v34;
  v33[2] = a10;
  v35 = a9 + v29[9];
  *v35 = v47;
  *(v35 + 16) = v49;
  sub_D6988();
  (*(v23 + 16))(v25, v28, v22);
  sub_D77D8();
  (*(v23 + 8))(v28, v22);
  v36 = a9 + v29[11];
  *v36 = v54;
  v37 = v56;
  *(v36 + 16) = v55;
  sub_21A44(v37, a9 + v29[12], &qword_116840);
  v38 = a9 + v29[13];
  v39 = *(a16 + 112);
  *(v38 + 96) = *(a16 + 96);
  *(v38 + 112) = v39;
  *(v38 + 128) = *(a16 + 128);
  *(v38 + 144) = *(a16 + 144);
  v40 = *(a16 + 48);
  *(v38 + 32) = *(a16 + 32);
  *(v38 + 48) = v40;
  v41 = *(a16 + 80);
  *(v38 + 64) = *(a16 + 64);
  *(v38 + 80) = v41;
  v42 = *(a16 + 16);
  *v38 = *a16;
  *(v38 + 16) = v42;
  v43 = a9 + v29[14];
  *v43 = v57;
  *(v43 + 16) = v58;
  v44 = a9 + v29[15];
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_D77D8();
  result = *&v61;
  v46 = v62;
  *v44 = v61;
  *(v44 + 16) = v46;
  return result;
}

unint64_t sub_89FF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_8A0C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_8BE48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7362C(v11);
  return v7;
}

unint64_t sub_8A0C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8A1CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_D8018();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_8A1CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_8A218(a1, a2);
  sub_8A348(&off_108DF8);
  return v3;
}

void *sub_8A218(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_8A434(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_D8018();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_D7CD8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_8A434(v10, 0);
        result = sub_D7FC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8A348(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_8A4A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_8A434(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_DC40(&qword_118D70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_8A4A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_DC40(&qword_118D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_8A5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_8A620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GCSControllerCustomizeGameView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A6B4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GCSControllerCustomizeGameView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_8A728(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for GCSControllerCustomizeGameView();
  v5 = v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));
  v6 = (v5 + *(v4 + 36));
  v11 = *v6;
  v12 = *(v6 + 1);
  sub_DC40(&qword_118100);
  sub_D78B8();
  v10[2] = a2;
  v7 = sub_6D490(sub_8C388, v10, v10[0]);

  if (v7)
  {
    v9 = (v5 + *(v4 + 44));
    v11 = *v9;
    v12 = *(v9 + 1);
    v10[3] = v7;
    sub_DC40(&qword_118108);
    return sub_D78C8();
  }

  return result;
}

unint64_t sub_8A854()
{
  result = qword_118CA0;
  if (!qword_118CA0)
  {
    sub_EBC0(&qword_118C68);
    sub_8A8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118CA0);
  }

  return result;
}

unint64_t sub_8A8E0()
{
  result = qword_118CA8;
  if (!qword_118CA8)
  {
    sub_EBC0(&qword_118C98);
    sub_EBC0(&qword_118C60);
    sub_D6D08();
    sub_15FB8(&qword_118C90, &qword_118C60);
    sub_8A5D4(&qword_116888, &type metadata accessor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118CA8);
  }

  return result;
}

uint64_t sub_8AA2C(uint64_t a1)
{
  v2 = sub_DC40(&qword_118C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_8AA94(uint64_t *a1, void **a2)
{
  v5 = *(type metadata accessor for GCSControllerCustomizeGameView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_884E0(a1, a2, v6);
}

void sub_8AB14(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GCSControllerCustomizeGameView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_8918C(a2, v5);
}

uint64_t sub_8AB84()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();

    return sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    return sub_D6CF8();
  }
}

uint64_t sub_8ACE8()
{
  if (sub_D62A8(2, 26, 0, 0))
  {
    sub_D71B8();
    sub_D6CF8();
  }

  else
  {
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    sub_D7EE8();
    swift_getWitnessTable();
    sub_D6DA8();
    swift_getWitnessTable();
    sub_D7178();
    sub_D6CF8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8AEE8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_D6998();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_DC40(&unk_119100);
  v42 = a2;
  result = sub_D8098();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_D8168();
      sub_D7C78();
      result = sub_D8198();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_8B268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1ED4C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_69CB8();
      goto LABEL_7;
    }

    sub_8AEE8(v15, a4 & 1);
    v26 = sub_1ED4C(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_D8138();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_D6998();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_8B3E8(v12, a2, a3, a1, v18);
}

uint64_t sub_8B3E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_D6998();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_8B4C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_DC40(&qword_1180B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_DC40(&qword_118140);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = sub_DC40(&qword_116840);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_8B674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_DC40(&qword_1180B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = sub_DC40(&qword_118140);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = sub_DC40(&qword_116840);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_8B80C()
{
  sub_8BB2C(319, &qword_118D10, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_26BDC();
    if (v1 <= 0x3F)
    {
      sub_8BB90(319, &qword_116AC0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_450A0(319, &qword_117060);
        if (v3 <= 0x3F)
        {
          sub_8BAD4(319, &unk_118D18, &qword_1164A8);
          if (v4 <= 0x3F)
          {
            sub_72C2C();
            if (v5 <= 0x3F)
            {
              sub_8BB2C(319, &qword_1181D8, &type metadata accessor for UUID, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_8BAD4(319, &qword_1181E0, &qword_118F10);
                if (v7 <= 0x3F)
                {
                  sub_8BB2C(319, &qword_116928, type metadata accessor for GCSProfileParams, &type metadata accessor for Binding);
                  if (v8 <= 0x3F)
                  {
                    sub_8BB90(319, &qword_116930, &type metadata for GCSProfileViewData, &type metadata accessor for Binding);
                    if (v9 <= 0x3F)
                    {
                      sub_8BAD4(319, &qword_117338, &qword_117060);
                      if (v10 <= 0x3F)
                      {
                        sub_8BB90(319, &qword_116938, &type metadata for String, &type metadata accessor for State);
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

void sub_8BAD4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_450A0(255, a3);
    v4 = sub_D7958();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_8BB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_8BB90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_8BBE0()
{
  sub_EBC0(&qword_118C78);
  sub_D6B88();
  sub_EBC0(&qword_118C70);
  sub_450A0(255, &qword_118F10);
  sub_EBC0(&qword_118C68);
  sub_D6998();
  sub_8A854();
  sub_8A5D4(&unk_119150, &type metadata accessor for UUID);
  swift_getOpaqueTypeConformance2();
  sub_720CC();
  swift_getOpaqueTypeConformance2();
  sub_8A5D4(&qword_118CB0, &type metadata accessor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8BE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8BEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8BF24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8BF8C()
{
  v1 = type metadata accessor for GCSControllerCustomizeGameView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_DC40(&qword_118C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D6B88();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_16AA0(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v7 = v5 + v1[8];

  v8 = v5 + v1[10];
  v9 = sub_D6998();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  sub_DC40(&qword_118140);

  v11 = v5 + v1[11];

  v12 = v5 + v1[12];

  v13 = sub_DC40(&qword_116840);
  v10(v12 + *(v13 + 32), v9);
  type metadata accessor for GCSProfileParams();

  v14 = v5 + v1[13];

  v15 = v5 + v1[14];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_8C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GCSControllerCustomizeGameView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_87CC4(a1, v6, a2);
}

void sub_8C3A4(uint64_t a1)
{
  v3 = (*v1 + 288);
  v4 = *v3;
  v5 = (*v3)();
  if (v5)
  {
  }

  else
  {
    v6 = (*(*v1 + 296))([objc_allocWithZone(CBDiscovery) init]);
  }

  v7 = (v4)(v6);
  [v7 setDiscoveryFlags:a1];

  v8 = v4();
  if (v8)
  {
    v9 = v8;
    v24 = sub_8C734;
    v25 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_8C864;
    v23 = &unk_108F60;
    v10 = _Block_copy(&v20);

    [v9 setDeviceFoundHandler:v10];
    _Block_release(v10);
  }

  v11 = v4();
  if (v11)
  {
    v12 = v11;
    v24 = sub_8C8E4;
    v25 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_8C864;
    v23 = &unk_108F88;
    v13 = _Block_copy(&v20);

    [v12 setDeviceLostHandler:v13];
    _Block_release(v13);
  }

  v14 = v4();
  if (v14)
  {
    v15 = v14;
    v24 = sub_8C9B8;
    v25 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_8CAD0;
    v23 = &unk_108FB0;
    v16 = _Block_copy(&v20);

    [v15 setErrorHandler:v16];
    _Block_release(v16);
  }

  v17 = v4();
  if (v17)
  {
    v18 = v17;
    v24 = sub_8CA04;
    v25 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_3A5C8;
    v23 = &unk_108FD8;
    v19 = _Block_copy(&v20);

    [v18 activateWithCompletion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_8C734(void *a1)
{
  v3 = sub_B2760(a1);
  if (v3)
  {
    v4 = v3;
    (*(*v3 + 960))(a1);
    sub_CD1C8(v4);
    v5 = (*(*v1 + 552))(v9);
    sub_CD0C0(v6);
    v5(v9, 0);
  }

  else
  {
    v8 = sub_B2820(a1);
    sub_CD1C8(v8);
  }
}

void sub_8C864(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_8C8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_8C8E4(void *a1)
{
  result = sub_B2760(a1);
  if (result)
  {
    v3 = result;
    v4 = (*(*result + 960))(a1);
    (*(*v3 + 1016))(v4);
    sub_CD1C8(v3);
  }

  return result;
}

void sub_8CA4C(uint64_t a1, uint64_t a2)
{
  sub_3A8DC(a2);
  (*(*v2 + 296))(0);

  sub_8C3A4(a1);
}

uint64_t sub_8CAD4()
{
  v0 = sub_DC40(&qword_118DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  sub_8CC70();
  sub_D7348();
  v6[0] = sub_A9308(0xD00000000000001ALL, 0x80000000000E58E0);
  v6[1] = v4;
  sub_8CCC4();
  sub_16000();
  sub_D7498();

  return (*(v1 + 8))(v3, v0);
}

double sub_8CC30@<D0>(uint64_t a1@<X8>)
{
  sub_C9AF4(v5);
  v2 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v2;
  result = *&v6;
  v4 = v7;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return result;
}

unint64_t sub_8CC70()
{
  result = qword_118DA8;
  if (!qword_118DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118DA8);
  }

  return result;
}

unint64_t sub_8CCC4()
{
  result = qword_118DB0;
  if (!qword_118DB0)
  {
    sub_EBC0(&qword_118DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_118DB0);
  }

  return result;
}

uint64_t sub_8CD44()
{
  v0 = sub_DC40(&qword_118DA0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  sub_8CC70();
  sub_D7348();
  v6[0] = sub_A9308(0xD00000000000001ALL, 0x80000000000E58E0);
  v6[1] = v4;
  sub_8CCC4();
  sub_16000();
  sub_D7498();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_8CEB0()
{
  sub_EBC0(&qword_118DA0);
  sub_8CCC4();
  sub_16000();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8CFA8()
{
  sub_D7FD8(56);
  v2._object = 0x80000000000E6200;
  v2._countAndFlagsBits = 0xD000000000000027;
  sub_D7CA8(v2);
  (*(&stru_68.size + (swift_isaMask & *v0)))();
  v3._countAndFlagsBits = sub_D80F8();
  sub_D7CA8(v3);

  v4._countAndFlagsBits = 0x6F4373656D616720;
  v4._object = 0xEC0000003D746E75;
  sub_D7CA8(v4);
  (*(&stru_68.offset + (swift_isaMask & *v0)))();
  v5._countAndFlagsBits = sub_D80F8();
  sub_D7CA8(v5);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  sub_D7CA8(v6);
  return 0;
}

Class sub_8D19C()
{

  v0.super.isa = sub_D7DB8().super.isa;

  return v0.super.isa;
}

uint64_t sub_8D218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_D7DC8();
}

uint64_t sub_8D330()
{
  v1 = *((*(&stru_20.nsects + (swift_isaMask & *v0)))() + 16);

  return v1;
}

uint64_t sub_8D404()
{
  v1 = *((*&stru_68.segname[swift_isaMask & *v0])() + 16);

  return v1;
}

id sub_8D5B0()
{
  *&v0[OBJC_IVAR____TtC25GameControlleriOSSettings20GCSProfileUsageStats_controllerIdentifiers] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC25GameControlleriOSSettings20GCSProfileUsageStats_gameIdentifiers] = &_swiftEmptySetSingleton;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GCSProfileUsageStats();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_8D688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GCSProfileUsageStats();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_8D720()
{
  v0 = objc_allocWithZone(CloudSettingsManager);

  return [v0 init];
}

id sub_8D758()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_D7BD8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() standardUserDefaults];

  return v4;
}

void sub_8D980(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 connectedControllerIdentifiers];
  v4 = sub_D7D28();

  *a2 = v4;
}

void sub_8D9DC(uint64_t a1, void **a2)
{
  v2 = *a2;
  isa = sub_D7D18().super.isa;
  [v2 setConnectedControllerIdentifiers:isa];
}

uint64_t sub_8DA90(uint64_t a1)
{
  v2 = sub_DC40(&qword_118E00);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118DF8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8DBA8(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118E00);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__connectedControllerIdentifiers;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118DF8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_8DE14(uint64_t a1)
{
  v2 = sub_DC40(&qword_118E18);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E10);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8DF2C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118E18);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__allControllers;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E10);
  sub_D6A98();
  return sub_EC10;
}

void sub_8E23C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 tombstones];
  sub_DC40(&qword_119050);
  v4 = sub_D7B48();

  *a2 = v4;
}

void sub_8E2BC(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_DC40(&qword_119050);
  isa = sub_D7B38().super.isa;
  [v2 setTombstones:isa];
}

uint64_t sub_8E3C4(uint64_t a1)
{
  v2 = sub_DC40(&unk_118E30);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E28);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8E4DC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&unk_118E30);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__tombstones;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E28);
  sub_D6A98();
  return sub_E57C;
}

Class sub_8E668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_D6AC8();

  sub_450A0(0, a5);
  v8.super.isa = sub_D7D18().super.isa;

  return v8.super.isa;
}

uint64_t sub_8E768(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  sub_450A0(0, a4);
  sub_D7D28();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  return sub_D6AD8();
}

void sub_8E80C(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  sub_450A0(0, a3);
  v7 = sub_D7D28();

  *a4 = v7;
}

void sub_8E87C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, SEL *a7)
{
  v8 = *a2;
  sub_450A0(0, a5);
  isa = sub_D7D18().super.isa;
  [v8 *a7];
}

uint64_t sub_8E95C(uint64_t a1)
{
  v2 = sub_DC40(&qword_118E50);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E48);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8EA74(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118E50);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__profiles;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E48);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_8ECD4(uint64_t a1)
{
  v2 = sub_DC40(&qword_118E68);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E60);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8EDEC(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118E68);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__mouseProfiles;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E60);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_8F010(uint64_t a1, SEL *a2)
{
  sub_DC40(&qword_118E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E1E00;
  *(v3 + 32) = [objc_opt_self() *a2];
  return v3;
}

uint64_t sub_8F0DC(uint64_t a1)
{
  v2 = sub_DC40(&unk_118E80);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E78);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8F1F4(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&unk_118E80);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__games;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E78);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_8F454(uint64_t a1)
{
  v2 = sub_DC40(&qword_118E98);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118E90);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8F56C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118E98);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__copilotFusedControllers;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118E90);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_8F910()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_D6AD8();
}

void sub_8F978(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profileUsageStats];
  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  v4 = sub_D7B48();

  *a2 = v4;
}

void sub_8FA24(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_D6998();
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  isa = sub_D7B38().super.isa;
  [v2 setProfileUsageStats:isa];
}

uint64_t sub_8FB3C(uint64_t a1)
{
  v2 = sub_DC40(&qword_118EB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118EA8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_8FC54(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118EB0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__profileUsageStats;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118EA8);
  sub_D6A98();
  return sub_EC10;
}

void sub_8FE90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_D6AD8();
  v2 = *&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults];
  [v2 setBool:objc_msgSend(v1 forKey:{"systemButtonActionsEnabled"), @"bluetoothPrefsMenuLongPressAction"}];
}

id sub_8FF44@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 systemButtonActionsEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_8FFDC(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_900F4(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__systemButtonActionsEnabled;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_90350()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

void sub_90468()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_D6AD8();
  sub_904E8();
}

void sub_904E8()
{
  v1 = *&v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults];
  v2 = [v0 systemButtonLongPressAction];
  v3 = sub_D7BD8();
  [v1 setObject:v2 forKey:v3];
}

void sub_90590(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 systemButtonLongPressAction];
  if (v3)
  {
    v4 = v3;
    v5 = sub_D7C18();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_905F8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_D7BD8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSystemButtonLongPressAction:?];
}

uint64_t sub_906B8(uint64_t a1)
{
  v2 = sub_DC40(&qword_118EE0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118ED8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_907D0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_118EE0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__systemButtonLongPressAction;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118ED8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_90938(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_D6AC8();

  return v4;
}

void sub_90A1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_D6AD8();
  v2 = *&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults];
  LODWORD(v1) = [v1 naturalThumbstickScrollDirection];

  v3 = sub_D7BD8();

  [v2 setBool:v1 ^ 1 forKey:v3];
}

id sub_90B00@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 naturalThumbstickScrollDirection];
  *a2 = result;
  return result;
}

uint64_t sub_90B98(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_90CB0(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__naturalThumbstickScrollDirection;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

double sub_90EB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

void sub_90F80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_D6AD8();
  v2 = *&v1[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults];
  [v1 thumbstickScrollingSpeed];
  v4 = v3;

  v5 = sub_D7BD8();

  [v2 setDouble:v5 forKey:v4];
}

id sub_9106C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 thumbstickScrollingSpeed];
  *a2 = v4;
  return result;
}

uint64_t sub_91104(uint64_t a1)
{
  v2 = sub_DC40(&unk_118EF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  sub_DC40(&qword_118EE8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_9121C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_DC40(&unk_118EF0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__thumbstickScrollingSpeed;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_118EE8);
  sub_D6A98();
  return sub_EC10;
}

void *sub_913D4()
{
  v1 = [v0 hiddenControllers];
  sub_450A0(0, &qword_117060);
  v2 = sub_D7D28();

  v3 = [v0 allControllers];
  v4 = sub_D7D28();

  v16 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_D7FF8();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v8;
      __chkstk_darwin(v8);
      v13[2] = &v15;
      if (sub_91AB8(sub_A3650, v13, v2))
      {
      }

      else
      {
        sub_D8028();
        v14 = v7;
        sub_D8058();
        v7 = v14;
        sub_D8068();
        sub_D8038();
      }

      ++v6;
      if (v10 == i)
      {
        v11 = v16;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_18:

  return v11;
}

Swift::Int sub_91600()
{
  v0 = sub_A3768(&off_109020);
  sub_55668(&unk_109040);
  return v0;
}

Class sub_91674(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  a3();

  sub_450A0(0, a4);
  v7.super.isa = sub_D7D18().super.isa;

  return v7.super.isa;
}

void *sub_916F8()
{
  v1 = [v0 allControllers];
  sub_450A0(0, &qword_117060);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v7 = v2 + 32;
    p_attr = &stru_112FF8.attr;
    v29 = v2 & 0xC000000000000001;
    v30 = i;
    v27 = v2 + 32;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v31 = v2;
    while (1)
    {
      if (v5)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_33;
        }

        v9 = *(v7 + 8 * v4);
      }

      v10 = v9;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if ([v9 p_attr[491]])
      {
LABEL_4:
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      else
      {
        v12 = [v32 copilotFusedControllers];
        sub_450A0(0, &unk_118F00);
        v2 = sub_D7D28();

        v33 = v4;
        v34 = v10;
        if (v2 >> 62)
        {
          v13 = sub_D8078();
        }

        else
        {
          v13 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        }

        v14 = 0;
        while (1)
        {
          if (v13 == v14)
          {

            i = v30;
            v2 = v31;
            v4 = v33;
            v6 = v28;
            v5 = v29;
            v7 = v27;
            p_attr = (&stru_112FF8 + 8);
            goto LABEL_5;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v16 = sub_D7FF8();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_31;
            }

            v16 = *(v2 + 8 * v14 + 32);
          }

          v17 = v16;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v18 = [v16 fusedControllerIdentifier];
          v19 = sub_D7C18();
          v21 = v20;

          v22 = [v34 persistentIdentifier];
          v23 = sub_D7C18();
          v25 = v24;

          if (v19 == v23 && v21 == v25)
          {
            break;
          }

          v15 = sub_D8118();

          ++v14;
          if (v15)
          {
            goto LABEL_25;
          }
        }

LABEL_25:

        i = v30;
        v2 = v31;
        v4 = v33;
        v6 = v28;
        v5 = v29;
        v7 = v27;
        p_attr = (&stru_112FF8 + 8);
        if (((*(&stru_248.size + (swift_isaMask & *v32)))(v34) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      if (v4 == i)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_91AB8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_D7FF8();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_D8078();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

Swift::Int sub_91BE0()
{
  v0 = sub_A3768(&off_109080);
  swift_arrayDestroy();
  return v0;
}

void *sub_91C64()
{
  v1 = [v0 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_D8078())
  {
    v4 = _swiftEmptyArrayStorage;
    if (i)
    {
      v5 = 0;
      v34 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v34)
        {
          v6 = sub_D7FF8();
        }

        else
        {
          if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_29;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 fusedControllerIdentifier];
        v10 = sub_D7C18();
        v12 = v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_38A50(0, *(v4 + 2) + 1, 1, v4);
        }

        v14 = *(v4 + 2);
        v13 = *(v4 + 3);
        if (v14 >= v13 >> 1)
        {
          v4 = sub_38A50((v13 > 1), v14 + 1, 1, v4);
        }

        *(v4 + 2) = v14 + 1;
        v15 = &v4[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_16:

    v16 = [v33 allControllers];
    sub_450A0(0, &qword_117060);
    v17 = sub_D7D28();

    v36 = _swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (!v18)
      {
        break;
      }

      goto LABEL_18;
    }

    v18 = sub_D8078();
    if (!v18)
    {
      break;
    }

LABEL_18:
    v19 = 0;
    v2 = 0;
    v33 = (v17 & 0xFFFFFFFFFFFFFF8);
    v34 = v17 & 0xC000000000000001;
    v31 = v17;
    v32 = v4;
    while (1)
    {
      if (v34)
      {
        v20 = sub_D7FF8();
      }

      else
      {
        if (v19 >= *(v33 + 2))
        {
          goto LABEL_31;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = v18;
      v24 = [v20 persistentIdentifier];
      v25 = sub_D7C18();
      v27 = v26;

      v35[0] = v25;
      v35[1] = v27;
      __chkstk_darwin(v28);
      v30[2] = v35;
      LOBYTE(v24) = sub_450E8(sub_A38D0, v30, v4);

      if (v24)
      {
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      v18 = v23;
      v17 = v31;
      v4 = v32;
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_34:

  return v36;
}

Swift::Int sub_91FF8()
{
  v0 = sub_A3768(&off_109100);
  swift_arrayDestroy();
  return v0;
}

void *sub_9207C()
{
  v1 = [v0 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_D8078())
  {
    v4 = _swiftEmptyArrayStorage;
    if (i)
    {
      v5 = 0;
      v34 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v34)
        {
          v6 = sub_D7FF8();
        }

        else
        {
          if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_29;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 fusedControllerIdentifier];
        v10 = sub_D7C18();
        v12 = v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_38A50(0, *(v4 + 2) + 1, 1, v4);
        }

        v14 = *(v4 + 2);
        v13 = *(v4 + 3);
        if (v14 >= v13 >> 1)
        {
          v4 = sub_38A50((v13 > 1), v14 + 1, 1, v4);
        }

        *(v4 + 2) = v14 + 1;
        v15 = &v4[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_16:

    v16 = [v33 fusableControllers];
    sub_450A0(0, &qword_117060);
    v17 = sub_D7D28();

    v36 = _swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (!v18)
      {
        break;
      }

      goto LABEL_18;
    }

    v18 = sub_D8078();
    if (!v18)
    {
      break;
    }

LABEL_18:
    v19 = 0;
    v2 = 0;
    v33 = (v17 & 0xFFFFFFFFFFFFFF8);
    v34 = v17 & 0xC000000000000001;
    v31 = v17;
    v32 = v4;
    while (1)
    {
      if (v34)
      {
        v20 = sub_D7FF8();
      }

      else
      {
        if (v19 >= *(v33 + 2))
        {
          goto LABEL_31;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = v18;
      v24 = [v20 persistentIdentifier];
      v25 = sub_D7C18();
      v27 = v26;

      v35[0] = v25;
      v35[1] = v27;
      __chkstk_darwin(v28);
      v30[2] = v35;
      LOBYTE(v24) = sub_450E8(sub_A69B0, v30, v4);

      if (v24)
      {
      }

      else
      {
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      v18 = v23;
      v17 = v31;
      v4 = v32;
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_34:

  return v36;
}

Swift::Int sub_92410()
{
  v0 = sub_A3768(&off_109180);
  swift_arrayDestroy();
  return v0;
}

Class sub_9246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_A3768(a3);
  swift_arrayDestroy();
  v3.super.isa = sub_D7DB8().super.isa;

  return v3.super.isa;
}

void *sub_92518()
{
  v1 = [v0 allControllers];
  sub_450A0(0, &qword_117060);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_D7FF8();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 supportsBuddyController])
      {
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_926A4()
{
  v0 = sub_A3768(&off_1091D0);
  sub_55668(&unk_1091F0);
  return v0;
}

uint64_t sub_92734()
{
  v1 = [v0 games];
  sub_450A0(0, &qword_1164A8);
  v2 = sub_D7D28();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_D7FF8();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 bundleIdentifier];
      v9 = sub_D7C18();
      v11 = v10;

      v12 = [objc_opt_self() defaultIdentifier];
      v13 = sub_D7C18();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {
      }

      else
      {
        v17 = sub_D8118();

        if ((v17 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_D8028();
      sub_D8058();
      sub_D8068();
      sub_D8038();
LABEL_6:
      ++v4;
      if (v7 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    result = sub_D8078();
    if (result)
    {
      goto LABEL_25;
    }

LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_31;
  }

LABEL_25:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v19 = sub_D7FF8();
    goto LABEL_28;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v19 = _swiftEmptyArrayStorage[4];
LABEL_28:
    v20 = v19;

    return v20;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_92A08()
{
  v1 = v0;
  v31 = sub_D6998();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = [v1 profiles];
  sub_450A0(0, &qword_118F10);
  v9 = sub_D7D28();

  v32 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v11 = 0;
    v28 = v9 & 0xFFFFFFFFFFFFFF8;
    v29 = v9 & 0xC000000000000001;
    v12 = (v2 + 8);
    while (1)
    {
      if (v29)
      {
        v13 = sub_D7FF8();
      }

      else
      {
        if (v11 >= *(v28 + 16))
        {
          goto LABEL_15;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v16 = v9;
      v17 = [v13 uuid];
      sub_D6978();

      v18 = [objc_opt_self() defaultProfileUUID];
      v19 = v30;
      sub_D6978();

      v2 = sub_D6968();
      v20 = *v12;
      v21 = v19;
      v22 = v31;
      (*v12)(v21, v31);
      v20(v7, v22);
      if (v2)
      {
        v2 = &v32;
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
      }

      else
      {
      }

      v9 = v16;
      ++v11;
      if (v15 == i)
      {
        v23 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_18:

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    result = sub_D8078();
    if (result)
    {
      goto LABEL_21;
    }

LABEL_27:

    __break(1u);
    goto LABEL_28;
  }

  if (!*(v23 + 16))
  {
    goto LABEL_27;
  }

LABEL_21:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = sub_D7FF8();
    goto LABEL_24;
  }

  if (*(v23 + 16))
  {
    v25 = *(v23 + 32);
LABEL_24:
    v26 = v25;

    return v26;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_92D54()
{
  v1 = v0;
  v29 = sub_D6998();
  v2 = *(v29 - 8);
  v3 = __chkstk_darwin(v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  v6 = [v1 profiles];
  sub_450A0(0, &qword_118F10);
  v7 = sub_D7D28();

  v30 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  for (i = v26; v8; i = v26)
  {
    v10 = 0;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    v11 = (v2 + 8);
    while (1)
    {
      if (v28)
      {
        v12 = sub_D7FF8();
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v8;
      v16 = [v12 uuid];
      sub_D6978();

      v17 = [i profileUsageStats];
      type metadata accessor for GCSProfileUsageStats();
      sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
      v2 = sub_D7B48();

      if (*(v2 + 16) && (v18 = sub_5DA48(v5), (v19 & 1) != 0))
      {
        v20 = *v11;
        v21 = *(*(v2 + 56) + 8 * v18);
        v20(v5, v29);

        v2 = (*(&stru_68.reloff + (swift_isaMask & *v21)))(v22);

        if (v2)
        {
          v2 = &v30;
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        else
        {
        }

        i = v26;
      }

      else
      {

        (*v11)(v5, v29);
      }

      ++v10;
      v8 = v15;
      if (v14 == v15)
      {
        v23 = v30;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v8 = sub_D8078();
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_22:

  return v23;
}

Swift::Int sub_930B4()
{
  v0 = sub_A3768(&off_109230);
  sub_55668(&unk_109250);
  return v0;
}

void *sub_93128()
{
  v1 = v0;
  v29 = sub_D6998();
  v2 = *(v29 - 8);
  v3 = __chkstk_darwin(v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  v6 = [v1 profiles];
  sub_450A0(0, &qword_118F10);
  v7 = sub_D7D28();

  v30 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  for (i = v26; v8; i = v26)
  {
    v10 = 0;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v28 = v7 & 0xC000000000000001;
    v11 = (v2 + 8);
    while (1)
    {
      if (v28)
      {
        v12 = sub_D7FF8();
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v8;
      v16 = [v12 uuid];
      sub_D6978();

      v17 = [i profileUsageStats];
      type metadata accessor for GCSProfileUsageStats();
      sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
      v2 = sub_D7B48();

      if (*(v2 + 16) && (v18 = sub_5DA48(v5), (v19 & 1) != 0))
      {
        v20 = *v11;
        v21 = *(*(v2 + 56) + 8 * v18);
        v20(v5, v29);

        v2 = (*(&stru_68.reloff + (swift_isaMask & *v21)))(v22);

        if (v2)
        {
        }

        else
        {
          v2 = &v30;
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        i = v26;
      }

      else
      {

        (*v11)(v5, v29);
      }

      ++v10;
      v8 = v15;
      if (v14 == v15)
      {
        v23 = v30;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v8 = sub_D8078();
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_22:

  return v23;
}

Swift::Int sub_93488()
{
  v0 = sub_A3768(&off_109290);
  sub_55668(&unk_1092B0);
  return v0;
}

void *sub_934FC()
{
  v1 = [v0 profiles];
  sub_450A0(0, &qword_118F10);
  sub_D7D28();

  v2 = v0;

  v5 = sub_A2F8C(v3);
  sub_A46D0(&v5, v2);

  return v5;
}

uint64_t sub_935C8(id *a1, void **a2, void *a3)
{
  v6 = sub_D6998();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = [*a1 uuid];
  sub_D6978();

  v47 = a3;
  v17 = [a3 profileUsageStats];
  type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  v18 = sub_D7B48();

  v19 = *(v18 + 16);
  v48 = v7;
  if (v19 && (v20 = sub_5DA48(v13), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
    v46 = v14;
    v23 = *(v7 + 8);
    v24 = v22;
    v23(v13, v6);
    v14 = v46;

    v26 = (*(&stru_68.reloff + (swift_isaMask & *v24)))(v25);
  }

  else
  {

    v23 = *(v7 + 8);
    v23(v13, v6);
    v26 = 0;
  }

  v27 = [v15 uuid];
  sub_D6978();

  v28 = [v47 profileUsageStats];
  v29 = sub_D7B48();

  if (*(v29 + 16) && (v30 = sub_5DA48(v9), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 8 * v30);
    v23(v9, v6);

    v34 = (*(&stru_68.reloff + (swift_isaMask & *v32)))(v33);

    if (v26)
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v34)
    {
      v35 = 0;
      return v35 & 1;
    }
  }

  else
  {

    v23(v9, v6);
    if (v26)
    {
LABEL_11:
      v35 = 1;
      return v35 & 1;
    }
  }

  v36 = [v14 name];
  v37 = sub_D7C18();
  v39 = v38;

  v40 = [v15 name];
  v41 = sub_D7C18();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_D8118();
  }

  return v35 & 1;
}

Swift::Int sub_939FC()
{
  v0 = sub_A3768(&off_1092F0);
  sub_55668(&unk_109310);
  return v0;
}

Class sub_93A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_A3768(a3);
  sub_55668(a4);
  v5.super.isa = sub_D7DB8().super.isa;

  return v5.super.isa;
}

uint64_t sub_93AB4(void *a1)
{
  v3 = (*(&stru_248.reserved2 + (swift_isaMask & *v1)))();
  if (v3)
  {
    v4 = v3;
    v5 = [v1 connectedControllerIdentifiers];
    v6 = sub_D7D28();

    v7 = [v4 fusedControllerIdentifier];
    v8 = sub_D7C18();
    v10 = v9;

    v23 = v8;
    v24 = v10;
    __chkstk_darwin(v11);
    v22 = &v23;
    v12 = sub_450E8(sub_A69B0, v21, v6);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 connectedControllerIdentifiers];
  v14 = sub_D7D28();

  v15 = [a1 persistentIdentifier];
  v16 = sub_D7C18();
  v18 = v17;

  v23 = v16;
  v24 = v18;
  __chkstk_darwin(v19);
  v22 = &v23;
  LODWORD(v15) = sub_450E8(sub_A69B0, v21, v14);

  return (v15 | v12) & 1;
}

uint64_t sub_93D24()
{
  v1 = (*(&stru_248.reserved2 + (swift_isaMask & *v0)))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 fusedControllerIdentifier];
    v4 = sub_D7C18();
    v6 = v5;

    v7 = (*&stru_1F8.segname[(swift_isaMask & *v0) + 16])(v4, v6);

    if (v7)
    {
      v8 = (*(&stru_248.size + (swift_isaMask & *v0)))(v7);

      v2 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_93EC0(uint64_t a1)
{
  v3 = [v1 fusedControllers];
  sub_450A0(0, &qword_117060);
  v4 = sub_D7D28();

  v7 = a1;
  v6[2] = &v7;
  LOBYTE(a1) = sub_91AB8(sub_A69CC, v6, v4);

  return a1 & 1;
}

void *sub_94044(void *a1)
{
  v2 = [v1 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v3 = sub_D7D28();

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_D7FF8();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 pilotIdentifier];
      v10 = sub_D7C18();
      v12 = v11;

      v13 = [a1 persistentIdentifier];
      v14 = sub_D7C18();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
        goto LABEL_22;
      }

      v18 = sub_D8118();

      if (v18)
      {
        goto LABEL_23;
      }

      v19 = [v7 copilotIdentifier];
      v20 = sub_D7C18();
      v22 = v21;

      v23 = [a1 persistentIdentifier];
      v24 = sub_D7C18();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {
        goto LABEL_22;
      }

      v27 = sub_D8118();

      if (v27)
      {
        goto LABEL_23;
      }

      v28 = [v7 fusedControllerIdentifier];
      v29 = sub_D7C18();
      v31 = v30;

      v32 = [a1 persistentIdentifier];
      v33 = sub_D7C18();
      v35 = v34;

      if (v29 == v33 && v31 == v35)
      {
LABEL_22:

        return v7;
      }

      v36 = sub_D8118();

      if (v36)
      {
LABEL_23:

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return 0;
}

void *sub_943C8(void *a1)
{
  v2 = [v1 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v3 = sub_D7D28();

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_D7FF8();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_22;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 pilotIdentifier];
      v10 = sub_D7C18();
      v12 = v11;

      v13 = [a1 persistentIdentifier];
      v14 = sub_D7C18();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_D8118();

      if (v18)
      {
        goto LABEL_20;
      }

      v19 = [v7 copilotIdentifier];
      v20 = sub_D7C18();
      v22 = v21;

      v23 = [a1 persistentIdentifier];
      v24 = sub_D7C18();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {
LABEL_19:

LABEL_20:

        return v7;
      }

      v27 = sub_D8118();

      if (v27)
      {
        goto LABEL_20;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return 0;
}

void *sub_946AC(void *a1)
{
  v2 = [v1 copilotFusedControllers];
  sub_450A0(0, &unk_118F00);
  v3 = sub_D7D28();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_D7FF8();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 fusedControllerIdentifier];
      v10 = sub_D7C18();
      v12 = v11;

      v13 = [a1 persistentIdentifier];
      v14 = sub_D7C18();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

LABEL_17:

        return v7;
      }

      v18 = sub_D8118();

      if (v18)
      {
        goto LABEL_17;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t sub_94960()
{
  p_attr = v0;
  v125 = sub_D6A38();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v3 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_DC40(&qword_118F20);
  __chkstk_darwin(v4 - 8);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v124 - v8;
  v10 = sub_D6998();
  v144 = *(v10 - 8);
  __chkstk_darwin(v10);
  v150 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v124 - v13;
  __chkstk_darwin(v14);
  v16 = &v124 - v15;
  v17 = sub_A3438(_swiftEmptyArrayStorage);
  v18 = [p_attr profiles];
  sub_450A0(0, &qword_118F10);
  v19 = sub_D7D28();

  if (v19 >> 62)
  {
    goto LABEL_89;
  }

  v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v135 = v3;
  v147 = v9;
  v148 = p_attr;
  v151 = v10;
  if (v20)
  {
    v3 = 0;
    v9 = v19 & 0xC000000000000001;
    v142 = v19 & 0xFFFFFFFFFFFFFF8;
    v143 = v6;
    v140 = v144 + 16;
    v145 = (v144 + 8);
    p_attr = &stru_112FF8.attr;
    while (1)
    {
      if (v9)
      {
        v23 = sub_D7FF8();
        v24 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v3 >= *(v142 + 16))
        {
          goto LABEL_85;
        }

        v23 = *(v19 + 8 * v3 + 32);
        v24 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          v20 = sub_D8078();
          goto LABEL_3;
        }
      }

      v146 = v24;
      v25 = p_attr[427];
      v149 = v23;
      v26 = [v23 v25];
      sub_D6978();

      v27 = [objc_allocWithZone(type metadata accessor for GCSProfileUsageStats()) init];
      if (!v27)
      {
        v37 = sub_5DA48(v16);
        if ((v38 & 1) == 0)
        {
          v10 = v151;
          (*v145)(v16, v151);

          goto LABEL_6;
        }

        v39 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152[0] = v17;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_A2AA4();
          v17 = v152[0];
        }

        v41 = *(v17 + 48) + *(v144 + 72) * v39;
        v42 = *(v144 + 8);
        v43 = v17;
        v44 = v151;
        v42(v41, v151);

        sub_A2608(v39, v43);
        v42(v16, v44);
        v10 = v44;
        v17 = v43;
        v6 = v143;
        goto LABEL_26;
      }

      v28 = v27;
      v10 = v17;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v152[0] = v10;
      v29 = sub_5DA48(v16);
      v31 = *(v10 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_84;
      }

      v35 = v30;
      if (*(v10 + 24) < v34)
      {
        break;
      }

      if (v17)
      {
        goto LABEL_23;
      }

      v53 = v29;
      sub_A2AA4();
      v29 = v53;
      v17 = v152[0];
      if ((v35 & 1) == 0)
      {
LABEL_24:
        p_attr = v9;
        v9 = v20;
        v45 = v19;
        *(v17 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v19 = v16;
        v46 = v144;
        v47 = v29;
        v48 = *(v17 + 48) + *(v144 + 72) * v29;
        v6 = v17;
        v49 = v151;
        (*(v144 + 16))(v48, v19, v151);
        *(*(v6 + 7) + 8 * v47) = v28;
        v10 = v49;
        v17 = v6;

        v50 = *(v46 + 8);
        v16 = v19;
        v50(v19, v10);
        v51 = *(v6 + 2);
        v33 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v33)
        {
          goto LABEL_86;
        }

        *(v6 + 2) = v52;
        v6 = v143;
        v19 = v45;
        v20 = v9;
        v9 = p_attr;
LABEL_26:
        p_attr = (&stru_112FF8 + 8);
        goto LABEL_6;
      }

LABEL_5:
      v21 = *(v17 + 56);
      v22 = *(v21 + 8 * v29);
      *(v21 + 8 * v29) = v28;

      v10 = v151;
      (*v145)(v16, v151);
      v6 = v143;
LABEL_6:
      ++v3;
      if (v146 == v20)
      {

        v3 = v135;
        p_attr = v148;
        goto LABEL_32;
      }
    }

    sub_A1F84(v34, v17);
    v29 = sub_5DA48(v16);
    if ((v35 & 1) != (v36 & 1))
    {
      result = sub_D8138();
      __break(1u);
      return result;
    }

LABEL_23:
    v17 = v152[0];
    if ((v35 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_5;
  }

LABEL_32:
  v54 = [p_attr hiddenControllers];
  sub_450A0(0, &qword_117060);
  v139 = sub_D7D28();

  v55 = [p_attr games];
  sub_450A0(0, &qword_1164A8);
  v9 = sub_D7D28();

  if (v9 >> 62)
  {
    v56 = sub_D8078();
  }

  else
  {
    v56 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  v130 = v17;
  if (v56)
  {
    v16 = 0;
    v149 = 0;
    v134 = v9 & 0xC000000000000001;
    v129 = v9 & 0xFFFFFFFFFFFFFF8;
    v128 = v9 + 32;
    v140 = v144 + 16;
    v142 = v144 + 32;
    v145 = (v144 + 8);
    v132 = v9;
    v131 = v56;
LABEL_37:
    if (v134)
    {
      v57 = sub_D7FF8();
      v33 = __OFADD__(v16++, 1);
      if (v33)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v16 >= *(v129 + 16))
      {
        goto LABEL_88;
      }

      v57 = *(v128 + 8 * v16);
      v33 = __OFADD__(v16++, 1);
      if (v33)
      {
        goto LABEL_87;
      }
    }

    v136 = v16;
    v137 = v57;
    v58 = [v57 controllerToProfileMappings];
    v59 = sub_D7B48();

    v60 = *(v59 + 64);
    v138 = v59 + 64;
    v143 = v59;
    v61 = *(v59 + 32);
    v62 = 0;
    v63 = 1 << v61;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v65 = v64 & v60;
    v66 = (v63 + 63) >> 6;
    v3 = v142;
    v67 = &unk_E23A0;
    v146 = v66;
LABEL_47:
    v68 = v62;
    while (v65)
    {
      v69 = v6;
      v70 = v68;
LABEL_60:
      v72 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v73 = v72 | (v70 << 6);
      v74 = v144;
      v75 = (*(v143 + 6) + 16 * v73);
      v77 = *v75;
      v76 = v75[1];
      v19 = v141;
      (*(v144 + 16))(v141, *(v143 + 7) + *(v144 + 72) * v73, v10);
      v67 = &unk_E23A0;
      v78 = sub_DC40(&qword_118F28);
      v79 = v10;
      v80 = v78;
      v81 = *(v78 + 48);
      *v69 = v77;
      *(v69 + 1) = v76;
      v6 = v69;
      v82 = &v69[v81];
      v3 = v142;
      (*(v74 + 32))(v82, v19, v79);
      (*(*(v80 - 8) + 56))(v6, 0, 1, v80);

      v17 = v70;
LABEL_61:
      v83 = v147;
      sub_A4AA0(v6, v147);
      v84 = sub_DC40(&qword_118F28);
      if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
      {

        v16 = v136;
        v3 = v135;
        p_attr = v148;
        v10 = v151;
        v9 = v132;
        if (v136 == v131)
        {
          goto LABEL_78;
        }

        goto LABEL_37;
      }

      v85 = v6;
      v86 = *v83;
      v58 = v83[1];
      v87 = v83 + *(v84 + 48);
      v88 = v150;
      v19 = v151;
      (*v3)(v150, v87, v151);
      v89 = (*&stru_1F8.segname[(swift_isaMask & *v148) + 16])(v86, v58);
      if (v89)
      {
        v19 = v17;
        v152[0] = v89;
        __chkstk_darwin(v89);
        *(&v124 - 2) = v152;
        v91 = v90;
        v92 = v149;
        v93 = sub_91AB8(sub_A69CC, (&v124 - 4), v139);
        v149 = v92;
        if ((v93 & 1) == 0)
        {
          v133 = v91;
          v95 = v130;
          if (!*(v130 + 16))
          {
            v10 = v151;
            (*v145)(v150, v151);

            v6 = v85;
            v66 = v146;
            v62 = v19;
            goto LABEL_47;
          }

          v96 = v150;
          v97 = sub_5DA48(v150);
          v62 = v19;
          if (v98)
          {
            v19 = *(*(v95 + 56) + 8 * v97);
            v99 = *&stru_68.segname[(swift_isaMask & *v19) - 8];
            v126 = (swift_isaMask & *v19) + 112;
            v127 = v19;
            v100 = v99(v152);
            sub_A16C0(&v153, v86, v58);

            v100(v152, 0);
            v101 = [v137 bundleIdentifier];
            v126 = sub_D7C18();
            v103 = v102;

            v58 = [objc_opt_self() defaultIdentifier];
            v104 = sub_D7C18();
            v106 = v105;

            if (v126 == v104 && v103 == v106)
            {

              goto LABEL_74;
            }

            v58 = sub_D8118();

            if (v58)
            {
LABEL_74:
              v10 = v151;
              (*v145)(v150, v151);

LABEL_75:
            }

            else
            {
              v107 = [v137 bundleIdentifier];
              v108 = sub_D7C18();
              v126 = v109;

              v110 = v127;
              v58 = (*&stru_68.segname[(swift_isaMask & *v127) + 16])(v152);
              sub_A16C0(&v153, v108, v126);

              (v58)(v152, 0);

              v10 = v151;
              (*v145)(v150, v151);
            }

            v6 = v85;
            v66 = v146;
            goto LABEL_47;
          }

          v10 = v151;
          (*v145)(v96, v151);

          goto LABEL_75;
        }

        v10 = v151;
        (*v145)(v150, v151);

        v68 = v19;
      }

      else
      {
        (*v145)(v88, v19);

        v68 = v17;
        v10 = v19;
      }

      v6 = v85;
      v66 = v146;
    }

    if (v66 <= (v68 + 1))
    {
      v71 = v68 + 1;
    }

    else
    {
      v71 = v66;
    }

    v17 = v71 - 1;
    while (1)
    {
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v70 >= v66)
      {
        v94 = sub_DC40(&qword_118F28);
        (*(*(v94 - 8) + 56))(v6, 1, 1, v94);
        v65 = 0;
        goto LABEL_61;
      }

      v65 = *(v138 + 8 * v70);
      ++v68;
      if (v65)
      {
        v69 = v6;
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_78:

  v111 = type metadata accessor for GCSProfileUsageStats();
  sub_A4DE8(&qword_117DE8, &type metadata accessor for UUID);
  v112 = v130;
  v150 = v111;
  isa = sub_D7B38().super.isa;
  [p_attr setProfileUsageStats:isa];

  v114 = sub_2E18C();
  v19 = v124;
  v67 = v125;
  (*(v124 + 16))(v3, v114, v125);
  v115 = sub_D7DF8();
  v58 = sub_D6A18();
  LODWORD(v151) = v115;
  if (!os_log_type_enabled(v58, v115))
  {
LABEL_81:

    (*(v19 + 8))(v3, v67);
  }

  v116 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  v152[0] = v117;
  *v116 = 136315138;
  v118 = [p_attr profileUsageStats];
  sub_D7B48();
  v130 = v112;

  v119 = sub_D7B58();
  v121 = v120;

  v122 = sub_89FF4(v119, v121, v152);

  *(v116 + 4) = v122;
  _os_log_impl(&dword_0, v58, v151, "%s", v116, 0xCu);
  sub_7362C(v117);

  (*(v19 + 8))(v135, v67);
}

void *sub_95A88(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t a5, SEL *a6)
{
  v8 = v6;
  v11 = [v8 *a3];
  sub_450A0(0, a4);
  v12 = sub_D7D28();

  if (v12 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_D7FF8();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v15 *a6];
      v19 = sub_D7C18();
      v21 = v20;

      if (v19 == a1 && v21 == a2)
      {

        return v16;
      }

      v23 = sub_D8118();

      if (v23)
      {

        return v16;
      }

      ++v14;
      if (v17 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

void *sub_95C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 games];
  sub_450A0(0, &qword_1164A8);
  v8 = sub_D7D28();

  v21 = a3;
  v22 = v3;
  if (!(v8 >> 62))
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:

    return 0;
  }

LABEL_21:
  v9 = sub_D8078();
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_D7FF8();
    }

    else
    {
      if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v14 = [v11 bundleIdentifier];
    v15 = sub_D7C18();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {
      break;
    }

    v19 = sub_D8118();

    if (v19)
    {
      goto LABEL_17;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_22;
    }
  }

LABEL_17:

  if ([v12 profileExistsFor:v21 with:v22])
  {
    return v12;
  }

  return 0;
}

uint64_t sub_96038(void *a1, void *a2, int a3)
{
  v39 = a3;
  v38[0] = sub_D6928();
  v5 = *(v38[0] - 8);
  v6 = __chkstk_darwin(v38[0]);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 games];
  v38[1] = sub_450A0(0, &qword_1164A8);
  v10 = sub_D7D28();

  v42 = v10;
  v11 = sub_D7C18();
  v13 = v12;

  v14 = [a1 tombstones];
  sub_DC40(&qword_119050);
  v15 = sub_D7B48();

  if (*(v15 + 16))
  {
    v16 = sub_1ED4C(v11, v13);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v16);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_6:
  v41 = v19;
  v20 = sub_964E0(a2, v10, &qword_1164A8);
  v22 = v21;

  if (v22)
  {

    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v23 = [a2 bundleIdentifier];
  if (!v23)
  {
    sub_D7C18();
    v23 = sub_D7BD8();
  }

  sub_D6918();
  v24 = objc_allocWithZone(GCSTombstone);
  isa = sub_D68E8().super.isa;
  v26 = [v24 initWithIdentifier:v23 creationDate:isa recordType:3];

  (*(v5 + 8))(v8, v38[0]);
  v27 = v26;
  sub_D7D08();
  if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  v28 = v41;
  v29 = sub_D7C18();
  v31 = v30;
  v32 = [a1 tombstones];
  v33 = sub_D7B48();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v33;
  sub_A2928(v28, v29, v31, isUniquelyReferenced_nonNull_native);

  v35 = sub_D7B38().super.isa;

  [a1 setTombstones:v35];

  v10 = v42;
  if (v39)
  {
LABEL_14:
    sub_9D7F8(v10, nullsub_1, 0);
  }

LABEL_15:
  v36 = sub_D7D18().super.isa;

  [a1 setGames:v36];

  return (*&stru_298.segname[swift_isaMask & *a1])();
}

unint64_t sub_964E0(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_D8078();
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_D7FF8();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_450A0(0, a3);
    v10 = sub_D7EA8();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_965E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_A2E88(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_96710(void *a1, void *a2, void *a3, int a4)
{
  v35 = a4;
  v33 = a3;
  v38 = a2;
  v5 = sub_D6998();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v36 = a1;
  v13 = [a1 profiles];
  v34 = sub_450A0(0, &qword_118F10);
  v14 = sub_D7D28();

  v32 = v14 >> 62;
  v15 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_25:
    v16 = sub_D8078();
  }

  else
  {
    v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  }

  v39 = v14 & 0xC000000000000001;
  v17 = (v6 + 8);

  v40 = -v16;
  v18 = 4;
  v37 = v15;
  while (1)
  {
    if (v40 + v18 == 4)
    {

      goto LABEL_20;
    }

    v6 = v18 - 4;
    if (v39)
    {
      v19 = v14;
      v20 = sub_D7FF8();
    }

    else
    {
      if (v6 >= *(v15 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v19 = v14;
      v20 = *(v14 + 8 * v18);
    }

    v21 = v20;
    v22 = [v20 uuid];
    sub_D6978();

    v23 = [v38 uuid];
    sub_D6978();

    LOBYTE(v23) = sub_D6968();
    v24 = *v17;
    (*v17)(v8, v5);
    v24(v12, v5);
    if (v23)
    {
      break;
    }

    ++v18;
    v14 = v19;
    v15 = v37;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_24;
    }
  }

  v14 = v19;

  v25 = v33;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v32 || (result & 1) == 0)
  {
    result = sub_A2E88(v19);
    v14 = result;
    v27 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v27 = v37;
  }

  if (v6 >= *(v27 + 16))
  {
    __break(1u);
    return result;
  }

  v28 = *(v27 + 8 * v18);
  *(v27 + 8 * v18) = v25;

LABEL_20:
  v29 = v36;
  if (v35)
  {
    sub_9D0E0(v14, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [v29 setProfiles:isa];

  return (*&stru_298.segname[swift_isaMask & *v29])();
}

uint64_t sub_96BF0(void *a1, void *a2, int a3)
{
  v39 = a3;
  v38[0] = sub_D6928();
  v5 = *(v38[0] - 8);
  v6 = __chkstk_darwin(v38[0]);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 copilotFusedControllers];
  v38[1] = sub_450A0(0, &unk_118F00);
  v10 = sub_D7D28();

  v42 = v10;
  v11 = sub_D7C18();
  v13 = v12;

  v14 = [a1 tombstones];
  sub_DC40(&qword_119050);
  v15 = sub_D7B48();

  if (*(v15 + 16))
  {
    v16 = sub_1ED4C(v11, v13);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v16);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_6:
  v41 = v19;
  v20 = sub_964E0(a2, v10, &unk_118F00);
  v22 = v21;

  if (v22)
  {

    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v23 = [a2 fusedControllerIdentifier];
  if (!v23)
  {
    sub_D7C18();
    v23 = sub_D7BD8();
  }

  sub_D6918();
  v24 = objc_allocWithZone(GCSTombstone);
  isa = sub_D68E8().super.isa;
  v26 = [v24 initWithIdentifier:v23 creationDate:isa recordType:4];

  (*(v5 + 8))(v8, v38[0]);
  v27 = v26;
  sub_D7D08();
  if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  v28 = v41;
  v29 = sub_D7C18();
  v31 = v30;
  v32 = [a1 tombstones];
  v33 = sub_D7B48();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v33;
  sub_A2928(v28, v29, v31, isUniquelyReferenced_nonNull_native);

  v35 = sub_D7B38().super.isa;

  [a1 setTombstones:v35];

  v10 = v42;
  if (v39)
  {
LABEL_14:
    sub_9D090(v10, nullsub_1, 0);
  }

LABEL_15:
  v36 = sub_D7D18().super.isa;

  [a1 setCopilotFusedControllers:v36];

  return (*&stru_298.segname[swift_isaMask & *a1])();
}

uint64_t sub_97158(void *a1, void *a2, int a3)
{
  v93 = a3;
  v97 = a2;
  v4 = sub_D6928();
  v89 = *(v4 - 8);
  v90 = v4;
  __chkstk_darwin(v4);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_D6998();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D6A38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v80 - v12;
  v14 = __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = [a1 profiles];
  v96 = sub_450A0(0, &qword_118F10);
  v18 = sub_D7D28();

  v100 = v18;
  v19 = sub_D7C18();
  v21 = v20;
  v94 = a1;
  v22 = [a1 tombstones];
  v87 = sub_DC40(&qword_119050);
  v23 = sub_D7B48();

  v24 = *(v23 + 16);
  v91 = v18;
  if (v24)
  {
    v25 = sub_1ED4C(v19, v21);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v23 + 56) + 8 * v25);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_6:
  v83 = v28;
  v99 = v28;
  v29 = sub_2E18C();
  v30 = *(v9 + 16);
  v30(v16, v29, v8);
  v31 = sub_D7DF8();
  v32 = sub_D6A18();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v82 = v8;
    v34 = v33;
    v35 = v30;
    v36 = v29;
    v37 = swift_slowAlloc();
    *v34 = 138412290;
    v38 = v97;
    *(v34 + 4) = v97;
    *v37 = v38;
    v39 = v38;
    _os_log_impl(&dword_0, v32, v31, "Remove %@", v34, 0xCu);
    sub_160BC(v37, &qword_119120);
    v29 = v36;
    v30 = v35;

    v8 = v82;
  }

  v40 = *(v9 + 8);
  v40(v16, v8);
  v41 = v95;
  v82 = v9 + 16;
  v30(v95, v29, v8);
  v42 = sub_D7DF8();
  v43 = sub_D6A18();
  if (os_log_type_enabled(v43, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v81 = v29;
    v46 = v45;
    v98 = v45;
    *v44 = 136315138;
    v47 = v91;

    v48 = sub_D7D38();
    v80 = v30;
    v49 = v8;
    v50 = v48;
    v52 = v51;

    v53 = sub_89FF4(v50, v52, &v98);

    *(v44 + 4) = v53;
    v8 = v49;
    _os_log_impl(&dword_0, v43, v42, "New profiles = %s", v44, 0xCu);
    sub_7362C(v46);
    v29 = v81;

    v40(v95, v49);
    v30 = v80;
  }

  else
  {

    v40(v41, v8);
    v47 = v91;
  }

  v54 = sub_964E0(v97, v47, &qword_118F10);
  v56 = v55;

  if (v56)
  {

    v57 = v94;
  }

  else
  {
    v30(v92, v29, v8);
    v58 = sub_D7E08();
    v59 = sub_D6A18();
    if (os_log_type_enabled(v59, v58))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v54;
      _os_log_impl(&dword_0, v59, v58, "Removing at %ld", v60, 0xCu);
    }

    v40(v92, v8);
    v61 = [v97 uuid];
    v62 = v84;
    sub_D6978();

    sub_D6938();
    (*(v85 + 8))(v62, v86);
    v63 = v88;
    sub_D6918();
    v64 = objc_allocWithZone(GCSTombstone);
    v65 = sub_D7BD8();

    isa = sub_D68E8().super.isa;
    v67 = [v64 initWithIdentifier:v65 creationDate:isa recordType:2];

    (*(v89 + 8))(v63, v90);
    v68 = v67;
    sub_D7D08();
    if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_D7D48();
    }

    sub_D7D68();
    v69 = v99;
    v70 = sub_D7C18();
    v72 = v71;
    v57 = v94;
    v73 = [v94 tombstones];
    v74 = sub_D7B48();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v74;
    sub_A2928(v69, v70, v72, isUniquelyReferenced_nonNull_native);

    v76 = sub_D7B38().super.isa;

    [v57 setTombstones:v76];
  }

  if (v93)
  {

    sub_9D0E0(v77, nullsub_1, 0);
  }

  v78 = sub_D7D18().super.isa;

  [v57 setProfiles:v78];

  (*&stru_298.segname[swift_isaMask & *v57])();
}

id sub_97B60(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_D7C18();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

void sub_97C98(void *a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_D6A38();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 mouseProfiles];
  sub_450A0(0, &qword_118F50);
  v12 = sub_D7D28();

  v25 = v12;
  v13 = sub_2E18C();
  (*(v7 + 16))(v10, v13, v6);
  v14 = sub_D7DF8();
  v15 = sub_D6A18();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v24) = v3;
    v3 = v16;
    v17 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = a2;
    *v17 = a2;
    v18 = a2;
    _os_log_impl(&dword_0, v15, v14, "Remove %@", v3, 0xCu);
    sub_160BC(v17, &qword_119120);

    LOBYTE(v3) = BYTE4(v24);
  }

  (*(v7 + 8))(v10, v6);
  v19 = [a1 mouseProfiles];
  v20 = sub_D7D28();

  v21 = sub_964E0(a2, v20, &qword_118F50);
  LOBYTE(v19) = v22;

  if ((v19 & 1) == 0)
  {
  }

  if (v3)
  {
    sub_9D108(v25);
  }

  isa = sub_D7D18().super.isa;

  [a1 setMouseProfiles:isa];
}

uint64_t sub_980A4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v8 = sub_D7AC8();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_D7AF8();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_450A0(0, &qword_118F30);
  v14 = sub_D7E58();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  aBlock[4] = v20;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  v17 = v5;
  v18 = a1;

  sub_D7AE8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v16);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

void sub_9839C(void *a1, void *a2, char a3)
{
  v36 = sub_D6998();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = [a1 allControllers];
  sub_450A0(0, &qword_117060);
  v13 = sub_D7D28();

  v38 = v13;
  v14 = a2;
  sub_D7D08();
  if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v38 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_D7D48();
  }

  sub_D7D68();
  if (a3)
  {
    sub_9D0B8(v38, nullsub_1, 0);
  }

  isa = sub_D7D18().super.isa;

  [a1 setAllControllers:isa];

  v16 = (*&stru_248.sectname[swift_isaMask & *a1])();
  v17 = [v16 controllerToProfileMappings];
  v18 = v36;
  v19 = sub_D7B48();

  v20 = [v14 persistentIdentifier];
  v21 = sub_D7C18();
  v23 = v22;

  v24 = (*&stru_248.segname[(swift_isaMask & *a1) - 8])();
  v25 = [v24 uuid];

  sub_D6978();
  v26 = v35;
  (*(v6 + 32))(v35, v11, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v19;
  sub_8B268(v26, v21, v23, isUniquelyReferenced_nonNull_native);

  v28 = [v16 bundleIdentifier];
  if (!v28)
  {
    sub_D7C18();
    v28 = sub_D7BD8();
  }

  v29 = [v16 title];
  if (!v29)
  {
    sub_D7C18();
    v29 = sub_D7BD8();
  }

  sub_3DD4C(_swiftEmptyArrayStorage);
  v30 = objc_allocWithZone(GCSGame);
  v31 = sub_D7B38().super.isa;

  type metadata accessor for GCSCompatibilityMode();
  v32 = sub_D7B38().super.isa;

  v33 = [v30 initWithBundleIdentifier:v28 title:v29 controllerToProfileMappings:v31 controllerToCompatibilityModeMappings:v32];

  v34 = (*(&stru_298.size + (swift_isaMask & *a1)))(v16, v33, 1);
  (*&stru_298.segname[swift_isaMask & *a1])(v34);
}

uint64_t sub_98954(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a3;
  v9 = sub_D7AC8();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_D7AF8();
  v12 = *(v26 - 8);
  __chkstk_darwin(v26);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_450A0(0, &qword_118F30);
  v15 = sub_D7E58();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v23;
  aBlock[4] = v24;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = v25;
  v17 = _Block_copy(aBlock);
  v18 = v6;
  v19 = a1;
  v20 = a2;

  sub_D7AE8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v17);

  (*(v27 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v26);
}

uint64_t sub_98CE8(void *a1, char a2)
{
  v3 = v2;
  sub_DC40(&qword_118E40);
  v6 = swift_allocObject();
  v7 = swift_isaMask & *v3;
  *(v6 + 16) = xmmword_E1E00;
  *(v6 + 32) = a1;
  v17 = v6;
  v8 = (*(v7 + 648))(a1);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 fusedControllerIdentifier];
    v11 = sub_D7C18();
    v13 = v12;

    v14 = (*&stru_1F8.segname[(swift_isaMask & *v3) + 16])(v11, v13);

    if (v14)
    {
      v15 = v14;
      sub_D7D08();
      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v17 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();

      v6 = v17;
    }

    sub_96BC8(v9, a2 & 1);
  }

  (*&stru_338.sectname[swift_isaMask & *v3])(v6, 1);
}

uint64_t sub_98F7C(uint64_t a1, char a2)
{
  v5 = sub_D7AC8();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_D7AF8();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_450A0(0, &qword_118F30);
  v11 = sub_D7E58();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  aBlock[4] = sub_A5968;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = &unk_109760;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_D7AE8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_99284(void *a1, unint64_t a2, int a3)
{
  LODWORD(v138) = a3;
  v122 = sub_D6A38();
  v5 = *(v122 - 8);
  __chkstk_darwin(v122 - 8);
  v134 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_DC40(&qword_117558);
  __chkstk_darwin(v7 - 8);
  v121 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v133 = &v112 - v10;
  __chkstk_darwin(v11);
  v132 = &v112 - v12;
  v136 = sub_D6928();
  v13 = *(v136 - 8);
  v14 = __chkstk_darwin(v136);
  v135 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 allControllers];
  v17 = sub_450A0(0, &qword_117060);
  v18 = sub_D7D28();

  v142 = v18;
  v19 = sub_D7C18();
  v21 = v20;
  v113 = a1;
  v22 = [a1 tombstones];
  v23 = sub_DC40(&qword_119050);
  v24 = sub_D7B48();

  v25 = *(v24 + 16);
  v137 = v17;
  if (v25)
  {
    v26 = sub_1ED4C(v19, v21);
    v28 = v27;

    if (v28)
    {
      v29 = *(*(v24 + 56) + 8 * v26);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_6:
  v141 = v29;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v30 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  v128 = v30;
  for (i = a2; v30; i = a2)
  {
    v127 = v23;
    v131 = v5;
    v31 = 0;
    v23 = 0;
    v5 = (a2 & 0xC000000000000001);
    a2 &= 0xFFFFFFFFFFFFFF8uLL;
    v130 = (v13 + 1);
    v13 = GCSController_ptr;
LABEL_9:
    v32 = v142;
    v33 = v23;
    while (1)
    {
      if (v5)
      {
        v34 = sub_D7FF8();
      }

      else
      {
        if (v33 >= *(a2 + 16))
        {
          goto LABEL_29;
        }

        v34 = *(i + 8 * v33 + 32);
      }

      v35 = v34;
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v36 = sub_964E0(v34, v32, &qword_117060);
      if ((v37 & 1) == 0)
      {

        v38 = [v35 persistentIdentifier];
        if (!v38)
        {
          sub_D7C18();
          v38 = sub_D7BD8();
        }

        v39 = v135;
        sub_D6918();
        v40 = objc_allocWithZone(GCSTombstone);
        isa = sub_D68E8().super.isa;
        v42 = [v40 initWithIdentifier:v38 creationDate:isa recordType:1];

        (*v130)(v39, v136);
        v43 = v42;
        sub_D7D08();
        if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_D7D48();
        }

        sub_D7D68();

        v29 = v141;
        v31 = 1;
        if (v23 == v128)
        {
LABEL_25:
          v44 = sub_D7C18();
          v46 = v45;
          v47 = v113;
          v48 = [v113 tombstones];
          v49 = sub_D7B48();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140 = v49;
          sub_A2928(v29, v44, v46, isUniquelyReferenced_nonNull_native);

          v51 = sub_D7B38().super.isa;

          [v47 setTombstones:v51];

          goto LABEL_27;
        }

        goto LABEL_9;
      }

      ++v33;
      if (v23 == v128)
      {
        if (v31)
        {
          goto LABEL_25;
        }

LABEL_27:
        v30 = v128;
        a2 = i;
        v5 = v131;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_D8078();
    v128 = v30;
  }

LABEL_32:
  v52 = v122;
  if (v138)
  {
    sub_9D0B8(v142, nullsub_1, 0);
  }

  v53 = sub_D7D18().super.isa;

  v54 = v113;
  [v113 setAllControllers:v53];

  v140 = _swiftEmptyArrayStorage;
  v55 = [v54 games];
  v112 = sub_450A0(0, &qword_1164A8);
  v56 = sub_D7D28();

  v116 = v56;
  if (v56 >> 62)
  {
    goto LABEL_71;
  }

  for (j = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)); j; j = sub_D8078())
  {
    v59 = 0;
    v118 = v116 & 0xC000000000000001;
    v115 = v116 & 0xFFFFFFFFFFFFFF8;
    v114 = v116 + 32;
    v125 = (v5 + 16);
    v126 = a2 & 0xC000000000000001;
    v127 = (v5 + 8);
    *&v57 = 136315394;
    v120 = v57;
    v117 = j;
    while (1)
    {
      if (v118)
      {
        v60 = sub_D7FF8();
      }

      else
      {
        if (v59 >= *(v115 + 16))
        {
          goto LABEL_70;
        }

        v60 = *(v114 + 8 * v59);
      }

      v61 = v60;
      v62 = __OFADD__(v59, 1);
      v63 = v59 + 1;
      if (v62)
      {
        break;
      }

      v64 = [v60 controllerToProfileMappings];
      v130 = sub_D6998();
      v136 = sub_D7B48();

      v119 = v63;
      v123 = v61;
      if (v30)
      {
        if (v30 < 1)
        {
          goto LABEL_69;
        }

        v65 = 0;
        v135 = v130 - 1;
        do
        {
          v137 = v65;
          v67 = v52;
          if (v126)
          {
            v68 = sub_D7FF8();
          }

          else
          {
            v68 = *(a2 + 8 * v65 + 32);
          }

          v69 = v136;
          v138 = v68;
          v70 = [v68 persistentIdentifier];
          v71 = sub_D7C18();
          v73 = v72;

          v74 = sub_1ED4C(v71, v73);
          LOBYTE(v71) = v75;

          if (v71)
          {
            v76 = swift_isUniquelyReferenced_nonNull_native();
            v139 = v69;
            v77 = v130;
            if (!v76)
            {
              sub_69CB8();
              v69 = v139;
            }

            v78 = *(v77 - 1);
            v79 = v78;
            v80 = v132;
            (*(v78 + 32))(v132, *(v69 + 56) + *(v78 + 72) * v74, v77);
            v136 = v69;
            sub_69138(v74, v69);
            v81 = 0;
          }

          else
          {
            v78 = *v135;
            v79 = *v135;
            v81 = 1;
            v80 = v132;
            v77 = v130;
          }

          (*(v79 + 56))(v80, v81, 1, v77);
          v82 = sub_2E18C();
          v83 = v134;
          (*v125)(v134, v82, v67);
          v52 = v67;
          v84 = sub_D7E08();
          v85 = v133;
          sub_16054(v80, v133, &qword_117558);
          v86 = v83;
          v87 = sub_D6A18();
          LODWORD(v131) = v84;
          if (os_log_type_enabled(v87, v84))
          {
            v124 = v87;
            v88 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v88 = v120;
            v89 = v85;
            v90 = v121;
            sub_16054(v89, v121, &qword_117558);
            v91 = v78;
            if ((*(v78 + 48))(v90, 1, v77) == 1)
            {
              sub_160BC(v90, &qword_117558);
              v92 = 0xE300000000000000;
              v93 = 7104878;
              v94 = v133;
            }

            else
            {
              v93 = sub_D6948();
              v92 = v95;
              v96 = v90;
              v94 = v133;
              (*(v91 + 8))(v96, v77);
            }

            sub_160BC(v94, &qword_117558);
            v97 = sub_89FF4(v93, v92, &v139);

            *(v88 + 4) = v97;
            *(v88 + 12) = 2080;
            v98 = [v123 description];
            v99 = sub_D7C18();
            v101 = v100;

            v102 = sub_89FF4(v99, v101, &v139);

            *(v88 + 14) = v102;
            v103 = v124;
            _os_log_impl(&dword_0, v124, v131, "removing %s from %s", v88, 0x16u);
            swift_arrayDestroy();

            v52 = v122;
            (*v127)(v134, v122);
            v66 = v132;
          }

          else
          {

            sub_160BC(v85, &qword_117558);
            (*v127)(v86, v67);
            v66 = v80;
          }

          sub_160BC(v66, &qword_117558);
          v30 = v128;
          a2 = i;
          v65 = v137 + 1;
        }

        while (v128 != v137 + 1);
      }

      v104 = v123;
      v105 = [v123 bundleIdentifier];
      if (!v105)
      {
        sub_D7C18();
        v105 = sub_D7BD8();
      }

      v106 = [v104 title];
      if (!v106)
      {
        sub_D7C18();
        v106 = sub_D7BD8();
      }

      v107 = objc_allocWithZone(GCSGame);
      v108 = sub_D7B38().super.isa;

      type metadata accessor for GCSCompatibilityMode();
      v5 = sub_D7B38().super.isa;
      [v107 initWithBundleIdentifier:v105 title:v106 controllerToProfileMappings:v108 controllerToCompatibilityModeMappings:v5];

      sub_D7D08();
      if (*(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v140 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();

      v59 = v119;
      v52 = v122;
      if (v119 == v117)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

LABEL_72:

  v109 = sub_D7D18().super.isa;

  v110 = v113;
  [v113 setGames:v109];

  return (*&stru_298.segname[swift_isaMask & *v110])();
}

char *sub_9A1E0()
{
  v1 = sub_DC40(&qword_118ED8);
  v77 = *(v1 - 8);
  v78 = v1;
  __chkstk_darwin(v1);
  v76 = &v58 - v2;
  v3 = sub_DC40(&qword_118EA8);
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v73 = &v58 - v4;
  v5 = sub_DC40(&qword_118E90);
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = &v58 - v6;
  v7 = sub_DC40(&qword_118E78);
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v58 - v8;
  v66 = sub_DC40(&qword_118E60);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v58 - v9;
  v63 = sub_DC40(&qword_118E48);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v58 - v10;
  *&v60 = sub_DC40(&qword_118E28);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = &v58 - v11;
  v58 = sub_DC40(&qword_118E10);
  v13 = *(v58 - 8);
  __chkstk_darwin(v58);
  v15 = &v58 - v14;
  v16 = sub_DC40(&qword_118DF8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v20 = &v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_preferencesVersion];
  *v20 = 0x31322E312E3031;
  *(v20 + 1) = 0xE700000000000000;
  v21 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_cloudSettings;
  *&v0[v21] = [objc_allocWithZone(CloudSettingsManager) init];
  v22 = objc_allocWithZone(NSUserDefaults);
  v23 = sub_D7BD8();
  v24 = [v22 initWithSuiteName:v23];

  if (!v24)
  {
    v24 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] = v24;
  v25 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__connectedControllerIdentifiers;
  aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_118DF0);
  sub_D6A88();
  (*(v17 + 32))(&v0[v25], v19, v16);
  v26 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__allControllers;
  aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_118E08);
  sub_D6A88();
  (*(v13 + 32))(&v0[v26], v15, v58);
  v27 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__tombstones;
  aBlock = sub_A366C(_swiftEmptyArrayStorage, &qword_1190D0);
  sub_DC40(&qword_118E20);
  sub_D6A88();
  (*(v59 + 32))(&v0[v27], v12, v60);
  v28 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__profiles;
  sub_DC40(&qword_118E40);
  v29 = swift_allocObject();
  v60 = xmmword_E1E00;
  *(v29 + 16) = xmmword_E1E00;
  *(v29 + 32) = [objc_opt_self() defaultProfile];
  aBlock = v29;
  sub_DC40(&qword_117DB8);
  v30 = v61;
  sub_D6A88();
  (*(v62 + 32))(&v0[v28], v30, v63);
  v31 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__mouseProfiles;
  aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_118E58);
  v32 = v64;
  sub_D6A88();
  (*(v65 + 32))(&v0[v31], v32, v66);
  v33 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__games;
  v34 = swift_allocObject();
  *(v34 + 16) = v60;
  *(v34 + 32) = [objc_opt_self() defaultGame];
  aBlock = v34;
  sub_DC40(&qword_118E70);
  v35 = v67;
  sub_D6A88();
  (*(v68 + 32))(&v0[v33], v35, v69);
  v36 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__copilotFusedControllers;
  aBlock = _swiftEmptyArrayStorage;
  sub_DC40(&qword_118C30);
  v37 = v70;
  sub_D6A88();
  (*(v71 + 32))(&v0[v36], v37, v72);
  v38 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__profileUsageStats;
  aBlock = sub_A3438(_swiftEmptyArrayStorage);
  sub_DC40(&qword_118EA0);
  v39 = v73;
  sub_D6A88();
  (*(v74 + 32))(&v0[v38], v39, v75);
  v40 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore__systemButtonLongPressAction;
  aBlock = 0;
  v80 = 0;
  sub_DC40(&qword_118ED0);
  v41 = v76;
  sub_D6A88();
  (*(v77 + 32))(&v0[v40], v41, v78);
  LOBYTE(aBlock) = 1;
  sub_D6A88();
  LOBYTE(aBlock) = 1;
  sub_D6A88();
  aBlock = 0x4000000000000000;
  sub_D6A88();
  v42 = type metadata accessor for GCSPreferencesStore();
  v85.receiver = v0;
  v85.super_class = v42;
  v43 = objc_msgSendSuper2(&v85, "init");
  v44 = sub_A0DE8();
  (*&stru_338.segname[(swift_isaMask & *v43) - 8])(v44);
  v45 = objc_opt_self();
  v46 = [v45 defaultCenter];
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  v83 = sub_A69A8;
  v84 = v47;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_9AF18;
  v82 = &unk_1097B0;
  v48 = _Block_copy(&aBlock);
  v49 = v43;

  v50 = [v46 addObserverForName:GCControllerDidConnectNotification object:0 queue:0 usingBlock:v48];
  _Block_release(v48);
  swift_unknownObjectRelease();

  v51 = [v45 defaultCenter];
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  v83 = sub_A59F8;
  v84 = v52;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_9AF18;
  v82 = &unk_109800;
  v53 = _Block_copy(&aBlock);
  v54 = v49;

  v55 = [v51 addObserverForName:GCControllerDidDisconnectNotification object:0 queue:0 usingBlock:v53];
  _Block_release(v53);
  swift_unknownObjectRelease();

  v56 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults;
  [*&v54[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] addObserver:v54 forKeyPath:@"bluetoothPrefsMenuLongPressAction" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"games" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"profiles" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"controllers" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"copilotFusedControllers" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"settingsVersion" options:1 context:0];
  [*&v54[v56] addObserver:v54 forKeyPath:@"settingsVersion" options:1 context:0];

  return v54;
}

uint64_t sub_9AF18(uint64_t a1)
{
  v2 = sub_D67F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_D67E8();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id sub_9B030()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults;
  v2 = *&v0[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults];
  v3 = v0;
  [v2 removeObserver:v3 forKeyPath:@"bluetoothPrefsMenuLongPressAction" context:0];
  [*&v0[v1] removeObserver:v3 forKeyPath:@"games" context:0];
  [*&v0[v1] removeObserver:v3 forKeyPath:@"profiles" context:0];
  [*&v0[v1] removeObserver:v3 forKeyPath:@"controllers" context:0];
  [*&v0[v1] removeObserver:v3 forKeyPath:@"copilotFusedControllers" context:0];
  [*&v0[v1] removeObserver:v3 forKeyPath:@"settingsVersion" context:0];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for GCSPreferencesStore();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_9B540(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5)
{
  v10 = sub_D7AC8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_D7AF8();
  __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v26 = 0;
    goto LABEL_8;
  }

  if (!isa)
  {
    v26 = sub_D7BD8();
LABEL_8:
    sub_16054(a3, aBlock, &qword_119330);
    v27 = v53;
    if (v53)
    {
      v28 = sub_A5A80(aBlock, v53);
      v29 = *(v27 - 1);
      v30 = __chkstk_darwin(v28);
      v32 = a5;
      v33 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v33, v30);
      v34 = sub_D8108();
      v35 = v33;
      a5 = v32;
      (*(v29 + 8))(v35, v27);
      sub_7362C(aBlock);
      if (!isa)
      {
LABEL_11:
        v36 = type metadata accessor for GCSPreferencesStore();
        v58.receiver = v51;
        v58.super_class = v36;
        objc_msgSendSuper2(&v58, "observeValueForKeyPath:ofObject:change:context:", v26, v34, isa, a5);
        goto LABEL_19;
      }
    }

    else
    {
      v34 = 0;
      if (!isa)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_A4DE8(&qword_118F70, type metadata accessor for NSKeyValueChangeKey);
    isa = sub_D7B38().super.isa;
    goto LABEL_11;
  }

  v49 = v16;
  v50 = v15;
  sub_16054(a3, aBlock, &qword_119330);
  if (v53)
  {
    v48 = v11;
    sub_450A0(0, &qword_118F78);

    if (swift_dynamicCast())
    {
      v19 = v56;
      sub_450A0(0, &qword_118F30);
      v20 = v51;
      v21 = sub_D7E58();
      v22 = swift_allocObject();
      v22[2] = a1;
      v22[3] = a2;
      v22[4] = v20;
      v22[5] = v19;
      v54 = sub_A5B0C;
      v55 = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_284B4;
      v53 = &unk_109850;
      v23 = _Block_copy(aBlock);
      v24 = v20;
      v25 = v19;

      sub_D7AE8();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
      sub_DC40(&unk_118F40);
      sub_15FB8(&qword_1169F8, &unk_118F40);
      sub_D7F78();
      sub_D7E68();
      _Block_release(v23);

      (*(v48 + 8))(v13, v10);
      (*(v49 + 8))(v18, v50);
      return;
    }
  }

  else
  {

    sub_160BC(aBlock, &qword_119330);
  }

  v26 = sub_D7BD8();

  sub_16054(a3, aBlock, &qword_119330);
  v37 = v53;
  if (v53)
  {
    v38 = sub_A5A80(aBlock, v53);
    v39 = *(v37 - 1);
    v40 = __chkstk_darwin(v38);
    v42 = a5;
    v43 = &v47 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v43, v40);
    v44 = sub_D8108();
    v45 = v43;
    a5 = v42;
    (*(v39 + 8))(v45, v37);
    sub_7362C(aBlock);
  }

  else
  {
    v44 = 0;
  }

  type metadata accessor for NSKeyValueChangeKey(0);
  sub_A4DE8(&qword_118F70, type metadata accessor for NSKeyValueChangeKey);
  isa = sub_D7B38().super.isa;
  v46 = type metadata accessor for GCSPreferencesStore();
  v57.receiver = v51;
  v57.super_class = v46;
  objc_msgSendSuper2(&v57, "observeValueForKeyPath:ofObject:change:context:", v26, v44, isa, a5);
LABEL_19:

  swift_unknownObjectRelease();
}

uint64_t sub_9BDB4()
{
  v1 = sub_D7AC8();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_D7AF8();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_450A0(0, &qword_118F30);
  v7 = sub_D7E58();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_A5F14;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = &unk_1098A0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_D7AE8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_9C0A8(void *a1)
{
  v126 = a1;
  v131 = sub_D6998();
  v124 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v116 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v123 = v116 - v3;
  v134 = objc_opt_self();
  v4 = [v134 controllers];
  v135 = sub_450A0(0, &qword_1190F8);
  v5 = sub_D7D28();

  if (!(v5 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v117 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v6 = sub_D8078();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v117 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_D7FF8();
      }

      else
      {
        if (v8 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = [objc_opt_self() gcController_persistentIdentifier:v9];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    v12 = v11;
    v13 = sub_D7C18();
    v15 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = sub_38A50(0, *(v117 + 2) + 1, 1, v117);
    }

    v17 = *(v117 + 2);
    v16 = *(v117 + 3);
    if (v17 >= v16 >> 1)
    {
      v117 = sub_38A50((v16 > 1), v17 + 1, 1, v117);
    }

    v18 = v117;
    *(v117 + 2) = v17 + 1;
    v19 = &v18[16 * v17];
    *(v19 + 4) = v13;
    *(v19 + 5) = v15;
  }

  while (v7 != v6);
LABEL_23:

  v20 = [v126 allControllers];
  v116[1] = sub_450A0(0, &qword_117060);
  v21 = sub_D7D28();

  if (v21 >> 62)
  {
    goto LABEL_90;
  }

  for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); i; i = sub_D8078())
  {
    v23 = 0;
    v136 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = sub_D7FF8();
      }

      else
      {
        if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_86;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v24 persistentIdentifier];
      v28 = sub_D7C18();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v136 = sub_38A50(0, *(v136 + 2) + 1, 1, v136);
      }

      v32 = *(v136 + 2);
      v31 = *(v136 + 3);
      if (v32 >= v31 >> 1)
      {
        v136 = sub_38A50((v31 > 1), v32 + 1, 1, v136);
      }

      v33 = v136;
      *(v136 + 2) = v32 + 1;
      v34 = &v33[16 * v32];
      *(v34 + 4) = v28;
      *(v34 + 5) = v30;
      ++v23;
      if (v26 == i)
      {
        goto LABEL_39;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    ;
  }

  v136 = _swiftEmptyArrayStorage;
LABEL_39:

  v139 = _swiftEmptyArrayStorage;
  v35 = [v126 allControllers];
  v36 = sub_D7D28();

  v138 = v36;
  v37 = [v134 controllers];
  v21 = sub_D7D28();

  if (v21 >> 62)
  {
    v38 = sub_D8078();
    if (v38)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v38 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    if (v38)
    {
LABEL_41:
      v127 = v38;
      v130 = objc_opt_self();
      v39 = 0;
      v128 = v21 & 0xC000000000000001;
      v121 = v21 & 0xFFFFFFFFFFFFFF8;
      v122 = 0;
      v120 = v21 + 32;
      v125 = _swiftEmptyArrayStorage;
      v119 = v21;
      while (1)
      {
        if (v128)
        {
          v40 = sub_D7FF8();
        }

        else
        {
          if (v39 >= *(v121 + 16))
          {
            goto LABEL_88;
          }

          v40 = *(v120 + 8 * v39);
        }

        v41 = v40;
        v42 = __OFADD__(v39, 1);
        v39 = (v39 + 1);
        if (v42)
        {
          goto LABEL_87;
        }

        v43 = [v130 gcController_persistentIdentifier:v40];
        if (!v43)
        {
          goto LABEL_43;
        }

        v44 = v43;
        v45 = sub_D7C18();
        v47 = v46;

        v48 = sub_AD6AC();
        if (!v48)
        {
          break;
        }

        v137[0] = v45;
        v137[1] = v47;
        __chkstk_darwin(v48);
        v116[-2] = v137;
        v49 = v122;
        v50 = sub_450E8(sub_A69B0, &v116[-4], v136);
        v122 = v49;

        if (v50)
        {
          v118 = v36 >> 62;
          v51 = v36 & 0xFFFFFFFFFFFFFF8;
          if (v36 >> 62)
          {
            v52 = sub_D8078();
          }

          else
          {
            v52 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
          }

          v134 = (v36 & 0xC000000000000001);
          v135 = -v52;
          v21 = 4;
          v132 = v36 & 0xFFFFFFFFFFFFFF8;
          v133 = v39;
          while (1)
          {
            if (v135 + v21 == 4)
            {

LABEL_80:
              v21 = v119;
              goto LABEL_44;
            }

            v53 = v21 - 4;
            if (v134)
            {
              v54 = v36;
              v55 = sub_D7FF8();
            }

            else
            {
              if (v53 >= *(v51 + 16))
              {
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

              v54 = v36;
              v55 = *(v36 + 8 * v21);
            }

            v56 = v55;
            v57 = [v55 persistentIdentifier];
            v58 = sub_D7C18();
            v60 = v59;

            v61 = v41;
            v62 = [v41 persistentIdentifier];
            v63 = sub_D7C18();
            v65 = v64;

            if (v58 == v63 && v60 == v65)
            {
              break;
            }

            v67 = sub_D8118();

            if (v67)
            {
              goto LABEL_74;
            }

            ++v21;
            v36 = v54;
            v41 = v61;
            v51 = v132;
            v39 = v133;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_84;
            }
          }

LABEL_74:
          v69 = [v130 gcsController_initWithController:v61];
          v36 = v54;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v118 || !isUniquelyReferenced_nonNull_bridgeObject)
          {
            v36 = sub_A2E88(v54);

            v71 = v36 & 0xFFFFFFFFFFFFFF8;
            v39 = v133;
          }

          else
          {

            v71 = v132;
            v39 = v133;
          }

          if (v53 < *(v71 + 16))
          {
            v72 = *(v71 + 8 * v21);
            *(v71 + 8 * v21) = v69;

            v138 = v36;
            goto LABEL_80;
          }

          goto LABEL_89;
        }

        v68 = [v130 gcsController_initWithController:v41];
        sub_D7D08();
        v21 = v119;
        if (*(&dword_10 + (v139 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v139 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_D7D48();
          v21 = v119;
        }

        sub_D7D68();

        v125 = v139;
LABEL_44:
        if (v39 == v127)
        {

          v73 = v125;
          goto LABEL_93;
        }
      }

LABEL_43:

      goto LABEL_44;
    }
  }

  v73 = _swiftEmptyArrayStorage;
LABEL_93:

  sub_9CF58(v74);
  v75 = v126;
  sub_9D0B8(v138, nullsub_1, 0);
  isa = sub_D7D18().super.isa;

  [v75 setAllControllers:isa];

  v77 = sub_D7D18().super.isa;

  [v75 setConnectedControllerIdentifiers:v77];

  v78 = (v73 >> 62);
  if (v73 >> 62)
  {
    goto LABEL_127;
  }

  if (*(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8)) <= 0)
  {
LABEL_128:

    return;
  }

LABEL_95:
  v127 = (*&stru_248.sectname[swift_isaMask & *v126])();
  v79 = [v127 controllerToProfileMappings];
  v80 = sub_D7B48();

  if (!v78)
  {
    v81 = v73;
    v82 = *(&dword_10 + (v73 & 0xFFFFFFFFFFFFFF8));
    if (!v82)
    {
      goto LABEL_118;
    }

    goto LABEL_99;
  }

  v83 = sub_D8078();
  v81 = v73;
  v82 = v83;
  if (v83)
  {
LABEL_99:
    v84 = 0;
    v85 = (swift_isaMask & *v126);
    v128 = v81 & 0xFFFFFFFFFFFFFF8;
    v134 = (v81 & 0xC000000000000001);
    v135 = v124 + 32;
    v85 += 74;
    v86 = *v85;
    v132 = v85;
    v133 = v86;
    v130 = (v124 + 40);
    v125 = v81;
    while (1)
    {
      if (v134)
      {
        v88 = sub_D7FF8();
        v89 = (v84 + 1);
        if (__OFADD__(v84, 1))
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v84 >= *(v128 + 16))
        {
          goto LABEL_126;
        }

        v88 = *(v81 + 8 * v84 + 32);
        v89 = (v84 + 1);
        if (__OFADD__(v84, 1))
        {
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          if (sub_D8078() <= 0)
          {
            goto LABEL_128;
          }

          goto LABEL_95;
        }
      }

      v136 = v89;
      v78 = v88;
      v90 = [v88 persistentIdentifier];
      v91 = sub_D7C18();
      v93 = v92;

      v94 = v133();
      v95 = [v94 uuid];

      v96 = v123;
      sub_D6978();

      v73 = *v135;
      (*v135)(v129, v96, v131);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137[0] = v80;
      v98 = sub_1ED4C(v91, v93);
      v100 = v80[2];
      v101 = (v99 & 1) == 0;
      v42 = __OFADD__(v100, v101);
      v102 = v100 + v101;
      if (v42)
      {
        goto LABEL_124;
      }

      v103 = v99;
      if (v80[3] < v102)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_113;
      }

      v108 = v98;
      sub_69CB8();
      v98 = v108;
      if (v103)
      {
LABEL_100:
        v87 = v98;

        v80 = v137[0];
        (*(v124 + 40))(*(v137[0] + 56) + *(v124 + 72) * v87, v129, v131);

        goto LABEL_101;
      }

LABEL_114:
      v80 = v137[0];
      *(v137[0] + 8 * (v98 >> 6) + 64) |= 1 << v98;
      v105 = (v80[6] + 16 * v98);
      *v105 = v91;
      v105[1] = v93;
      (v73)(v80[7] + *(v124 + 72) * v98, v129, v131);

      v106 = v80[2];
      v42 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v42)
      {
        goto LABEL_125;
      }

      v80[2] = v107;
LABEL_101:
      ++v84;
      v81 = v125;
      if (v136 == v82)
      {
        goto LABEL_118;
      }
    }

    sub_8AEE8(v102, isUniquelyReferenced_nonNull_native);
    v98 = sub_1ED4C(v91, v93);
    if ((v103 & 1) != (v104 & 1))
    {
      sub_D8138();
      __break(1u);
      return;
    }

LABEL_113:
    if (v103)
    {
      goto LABEL_100;
    }

    goto LABEL_114;
  }

LABEL_118:

  v109 = [v127 bundleIdentifier];
  if (!v109)
  {
    sub_D7C18();
    v109 = sub_D7BD8();
  }

  v110 = [v127 title];
  if (!v110)
  {
    sub_D7C18();
    v110 = sub_D7BD8();
  }

  sub_3DD4C(_swiftEmptyArrayStorage);
  v111 = objc_allocWithZone(GCSGame);
  v112 = sub_D7B38().super.isa;

  type metadata accessor for GCSCompatibilityMode();
  v113 = sub_D7B38().super.isa;

  v114 = [v111 initWithBundleIdentifier:v109 title:v110 controllerToProfileMappings:v112 controllerToCompatibilityModeMappings:v113];

  v115 = v127;
  (*(&stru_298.size + (swift_isaMask & *v126)))(v127, v114, 1);
}

uint64_t sub_9CF58(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_D8078();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_D8078();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_A2EEC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_A31D4(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_9D108(uint64_t a1)
{
  v2 = sub_D7AC8();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_D7AF8();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D7AD8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_450A0(0, &qword_118F30);
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v8);
  v12 = sub_D7E78();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 16) = a1;
  *(v13 + 24) = v14;
  aBlock[4] = sub_A6518;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A68E8;
  aBlock[3] = &unk_1099B8;
  v15 = _Block_copy(aBlock);

  v16 = v14;
  sub_D7AE8();
  v21 = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
}

uint64_t sub_9D4C4(unint64_t a1, uint64_t a2)
{
  v4 = sub_D6A38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_D8078();
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v8)
  {
    v25[1] = _swiftEmptyArrayStorage;
    result = sub_D8048();
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v25[0] = v4;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = v10 + 1;
        v12 = [sub_D7FF8() jsonObject];
        swift_unknownObjectRelease();
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
        v10 = v11;
      }

      while (v8 != v11);
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = *v13++;
        v15 = [v14 jsonObject];
        sub_D8028();
        sub_D8058();
        sub_D8068();
        sub_D8038();
        --v8;
      }

      while (v8);
    }

    v4 = v25[0];
  }

  v16 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults;
  v17 = *(a2 + OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults);
  v18 = sub_D7BD8();
  [v17 setObject:v18 forKey:@"settingsVersion"];

  v19 = *(a2 + v16);
  sub_DC40(&qword_1190B8);
  isa = sub_D7D18().super.isa;

  [v19 setObject:isa forKey:@"mouseProfiles"];

  v21 = sub_2E18C();
  (*(v5 + 16))(v7, v21, v4);
  v22 = sub_D7DF8();
  v23 = sub_D6A18();
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v23, v22, "Saving mouse profiles...", v24, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_9D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v25[1] = a4;
  v26 = a2;
  v7 = v6;
  v27 = a3;
  v9 = sub_D7AC8();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_D7AF8();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_D7AD8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_450A0(0, &qword_118F30);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.background(_:), v15);
  v19 = sub_D7E78();
  (*(v16 + 8))(v18, v15);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v6;
  v21 = v27;
  v20[4] = v26;
  v20[5] = v21;
  aBlock[4] = v28;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A68E8;
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);

  v23 = v7;

  sub_D7AE8();
  v33 = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  sub_D7F78();
  sub_D7E68();
  _Block_release(v22);

  (*(v32 + 8))(v11, v9);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_9DBDC(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v76 = a8;
  v69 = a7;
  v72 = a6;
  v78 = a4;
  v77 = a3;
  v87 = a2;
  v11 = sub_D7AC8();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v81 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_D7AF8();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_D6A38();
  __chkstk_darwin(v75);
  v73 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = _swiftEmptyArrayStorage;
  v74 = v15;
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_47:
    v17 = sub_D8078();
  }

  else
  {
    v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v18 = 0;
  v71 = a10;
  v70 = a9;
  v86 = _swiftEmptyArrayStorage;
  while (v17 != v18)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = sub_D7FF8();
    }

    else
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_44;
      }

      v19 = *(a1 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v22 = [v19 jsonObject];

    ++v18;
    if (v22)
    {
      sub_D7D08();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();
      v86 = aBlock[0];
      v18 = v21;
    }
  }

  v23 = sub_D7C18();
  v25 = v24;
  v26 = [v87 tombstones];
  sub_DC40(&qword_119050);
  v27 = sub_D7B48();

  if (!*(v27 + 16))
  {

    goto LABEL_30;
  }

  v28 = sub_1ED4C(v23, v25);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_30:

    v85 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v31 = *(*(v27 + 56) + 8 * v28);

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v31 >> 62)
  {
    v32 = sub_D8078();
  }

  else
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  }

  v33 = 0;
  v85 = _swiftEmptyArrayStorage;
  while (v32 != v33)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = sub_D7FF8();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v35 = v34;
    v16 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_45;
    }

    v36 = [v34 jsonObject];

    ++v33;
    if (v36)
    {
      sub_D7D08();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_D7D48();
      }

      sub_D7D68();
      v85 = aBlock[0];
      v33 = v16;
    }
  }

LABEL_32:
  v37 = v71;
  v38 = v70;
  v39 = OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults;
  v40 = v87;
  v41 = [*&v87[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_userDefaults] stringForKey:{@"settingsVersion", v69}];
  if (!v41)
  {
LABEL_38:
    v48 = *&v40[v39];
    v49 = sub_D7BD8();
    [v48 setObject:v49 forKey:@"settingsVersion"];

    goto LABEL_40;
  }

  v42 = v41;
  v43 = sub_D7C18();
  v45 = v44;

  if (v43 != *&v40[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_preferencesVersion] || v45 != *&v40[OBJC_IVAR____TtC25GameControlleriOSSettings19GCSPreferencesStore_preferencesVersion + 8])
  {
    v47 = sub_D8118();

    v40 = v87;
    if (v47)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v40 = v87;
LABEL_40:
  sub_DC40(&qword_1190D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_DC430;
  *(inited + 32) = 1635017060;
  v51 = v86;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v51;
  *(inited + 56) = 0x6E6F7473626D6F74;
  *(inited + 64) = 0xEA00000000007365;
  *(inited + 72) = v85;
  sub_A366C(inited, &qword_1190F0);
  swift_setDeallocating();
  sub_DC40(&qword_1190E0);
  swift_arrayDestroy();
  v52 = *&v40[v39];
  sub_DC40(&qword_1190E8);
  isa = sub_D7B38().super.isa;

  [v52 setObject:isa forKey:v72];

  v54 = sub_2E18C();
  v55 = v74;
  v56 = v73;
  v57 = v75;
  (*(v74 + 16))(v73, v54, v75);
  v58 = sub_D7DF8();
  v59 = sub_D6A18();
  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v59, v58, v69, v60, 2u);
  }

  (*(v55 + 8))(v56, v57);
  sub_450A0(0, &qword_118F30);
  v61 = sub_D7E58();
  v62 = swift_allocObject();
  v63 = v78;
  v62[2] = v77;
  v62[3] = v63;
  v62[4] = a1;
  aBlock[4] = v38;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_284B4;
  aBlock[3] = v37;
  v64 = _Block_copy(aBlock);

  v65 = v79;
  sub_D7AE8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_A4DE8(&qword_1169F0, &type metadata accessor for DispatchWorkItemFlags);
  sub_DC40(&unk_118F40);
  sub_15FB8(&qword_1169F8, &unk_118F40);
  v66 = v81;
  v67 = v84;
  sub_D7F78();
  sub_D7E68();
  _Block_release(v64);

  (*(v83 + 8))(v66, v67);
  return (*(v80 + 8))(v65, v82);
}