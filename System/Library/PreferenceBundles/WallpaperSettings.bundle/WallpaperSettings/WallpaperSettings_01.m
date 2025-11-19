void sub_196B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*(a4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator))
  {
    *(a4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) = 1;
    v7 = objc_allocWithZone(type metadata accessor for PosterBoardUICoordinator());
    v8 = a5;
    v9 = sub_6148(v8, 0, 0);

    *&v9[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_delegate + 8] = &off_3ABF0;
    swift_unknownObjectWeakAssign();
    v10 = v9;
    sub_109FC(v9);
    sub_5D2C();
  }
}

unint64_t sub_197AC()
{
  result = qword_3E078;
  if (!qword_3E078)
  {
    sub_360C(&qword_3E068, &qword_2CF40);
    sub_A234(&qword_3E080, &qword_3E088, &qword_2CF50);
    sub_A234(&qword_3E090, &qword_3E098, &qword_2CF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E078);
  }

  return result;
}

uint64_t sub_19890(uint64_t a1)
{
  v2 = sub_3398(&qword_3E068, &qword_2CF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_198F8()
{
  sub_1993C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1993C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_19960(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1996C()
{
  result = qword_3E038;
  if (!qword_3E038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3E038);
  }

  return result;
}

uint64_t sub_199B8()
{
  sub_1993C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_19A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19AA4(uint64_t a1)
{
  v2 = sub_29954();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29AE4();
}

uint64_t sub_19B9C(uint64_t a1)
{
  v2 = type metadata accessor for WallpaperConfigurationsCarouselContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19C3C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  *&xmmword_3E0C8 = v2;
  *(&xmmword_3E0C8 + 1) = v4;
}

double sub_19CA8@<D0>(_OWORD *a1@<X8>)
{
  if (qword_3D478 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_3E0C8;
  *a1 = xmmword_3E0C8;
  return result;
}

uint64_t sub_19D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19F84(&qword_3E0E8, type metadata accessor for CGSize);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_19DA4()
{
  sub_19F10();
  sub_29BA4();
  return v1;
}

uint64_t sub_19DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19F84(&qword_3D520, type metadata accessor for BSInterfaceOrientation);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_19E80()
{
  sub_19EBC();
  sub_29BA4();
  return v1;
}

unint64_t sub_19EBC()
{
  result = qword_3E0D8;
  if (!qword_3E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E0D8);
  }

  return result;
}

unint64_t sub_19F10()
{
  result = qword_3E0E0;
  if (!qword_3E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E0E0);
  }

  return result;
}

uint64_t sub_19F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A014(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29684();
  sub_1A128(v3, a2);
  sub_18530(v3, a2);

  return sub_29674();
}

uint64_t sub_1A09C()
{
  v0 = sub_29684();
  sub_1A128(v0, qword_40920);
  sub_18530(v0, qword_40920);

  return sub_29674();
}

uint64_t *sub_1A128(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1A18C()
{
  v0 = sub_29604();
  sub_1A128(v0, qword_40938);
  sub_18530(v0, qword_40938);
  return sub_295F4();
}

__n128 sub_1A238@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_3398(&qword_3E100, &qword_2D188);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v39 - v7;
  v9 = sub_3398(&qword_3E108, &qword_2D190);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = sub_3398(&qword_3E110, &qword_2D198);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  *v18 = sub_29C54();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1A5BC(a1, v8);
  sub_2A304();
  v19 = &v18[*(sub_3398(&qword_3E118, &qword_2D1A0) + 44)];
  sub_299D4();
  sub_1B510(v8, v13, &qword_3E100, &qword_2D188);
  v20 = &v13[*(v10 + 44)];
  v21 = v45;
  *(v20 + 4) = v44;
  *(v20 + 5) = v21;
  *(v20 + 6) = v46;
  v22 = v41;
  *v20 = v40;
  *(v20 + 1) = v22;
  v23 = v43;
  *(v20 + 2) = v42;
  *(v20 + 3) = v23;
  v24 = sub_2A304();
  v26 = v25;
  v27 = v19 + *(sub_3398(&qword_3E120, &qword_2D1A8) + 36);
  sub_1A9A4(a1, a2, v27);
  v28 = (v27 + *(sub_3398(&qword_3E128, &qword_2D1B0) + 36));
  *v28 = v24;
  v28[1] = v26;
  sub_1B510(v13, v19, &qword_3E108, &qword_2D190);
  LOBYTE(v24) = sub_29EF4();
  sub_29774();
  v29 = &v18[*(v15 + 44)];
  *v29 = v24;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_2A304();
  sub_299D4();
  v34 = v39;
  sub_1B510(v18, v39, &qword_3E110, &qword_2D198);
  v35 = v34 + *(sub_3398(&qword_3E130, &qword_2D1B8) + 36);
  v36 = v52;
  *(v35 + 64) = v51;
  *(v35 + 80) = v36;
  *(v35 + 96) = v53;
  v37 = v48;
  *v35 = v47;
  *(v35 + 16) = v37;
  result = v50;
  *(v35 + 32) = v49;
  *(v35 + 48) = result;
  return result;
}

uint64_t sub_1A5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_3398(&qword_3E1C8, &qword_2D200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - v5;
  v38 = sub_3398(&qword_3E1B0, &qword_2D1F8);
  v7 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v36 = &v34 - v8;
  v39 = sub_3398(&qword_3E1E0, &qword_2D2B8);
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  __chkstk_darwin(v39);
  v35 = &v34 - v10;
  sub_1B184(a1);
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v11 = qword_408A0;
  v12 = sub_29FC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v6[*(v3 + 36)];
  v20 = *(sub_3398(&qword_3E1D8, &qword_2D208) + 28);
  v21 = enum case for Text.Case.uppercase(_:);
  v22 = sub_29F94();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v19 + v20, v21, v22);
  (*(v23 + 56))(v19 + v20, 0, 1, v22);
  *v19 = swift_getKeyPath();
  *v6 = v12;
  *(v6 + 1) = v14;
  v6[16] = v16 & 1;
  *(v6 + 3) = v18;
  v24 = sub_29F54();
  KeyPath = swift_getKeyPath();
  v26 = v36;
  sub_1BF6C(v6, v36);
  v27 = (v26 + *(v38 + 36));
  *v27 = KeyPath;
  v27[1] = v24;
  sub_29F34();
  sub_1B974();
  v28 = v35;
  sub_2A024();
  sub_1BFDC(v26);
  v29 = sub_2A154();
  v30 = swift_getKeyPath();
  v31 = v40;
  (*(v37 + 32))(v40, v28, v39);
  result = sub_3398(&qword_3E1A8, &qword_2D1F0);
  v33 = (v31 + *(result + 36));
  *v33 = v30;
  v33[1] = v29;
  return result;
}

uint64_t sub_1A9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = sub_3398(&qword_3E138, &qword_2D1C0);
  v5 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v7 = &v34 - v6;
  v36 = sub_3398(&qword_3E140, &qword_2D1C8);
  v8 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = &v34 - v9;
  v10 = sub_29C44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3398(&qword_3E148, &qword_2D1D0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v35 = sub_3398(&qword_3E150, &qword_2D1D8);
  v20 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v22 = &v34 - v21;
  if (sub_1AF7C(a1))
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;

    sub_2A214();
    sub_29C34();
    sub_A234(&qword_3E180, &qword_3E148, &qword_2D1D0);
    sub_1BD5C(&qword_3E188, &type metadata accessor for BorderedButtonStyle);
    sub_2A034();
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v19, v15);
    v24 = &v22[*(sub_3398(&qword_3E178, &qword_2D1E8) + 36)];
    v25 = v24 + *(sub_3398(&qword_3DA00, &qword_2C120) + 28);
    sub_299E4();
    *v24 = swift_getKeyPath();
    v26 = &v22[*(sub_3398(&qword_3E168, &qword_2D1E0) + 36)];
    v27 = *(sub_3398(&qword_3DA08, &qword_2C158) + 28);
    v28 = enum case for ControlSize.small(_:);
    v29 = sub_297C4();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    v30 = &qword_3E150;
    v31 = &qword_2D1D8;
    sub_18A64(v22, v37, &qword_3E150, &qword_2D1D8);
    swift_storeEnumTagMultiPayload();
    sub_1B7FC(&qword_3E158, &qword_3E150, &qword_2D1D8, sub_1B578);
    sub_1B7FC(&qword_3E198, &qword_3E138, &qword_2D1C0, sub_1B880);
    sub_29D34();
    v32 = v22;
  }

  else
  {
    sub_1A5BC(a1, v7);
    v30 = &qword_3E138;
    v31 = &qword_2D1C0;
    sub_18A64(v7, v37, &qword_3E138, &qword_2D1C0);
    swift_storeEnumTagMultiPayload();
    sub_1B7FC(&qword_3E158, &qword_3E150, &qword_2D1D8, sub_1B578);
    sub_1B7FC(&qword_3E198, &qword_3E138, &qword_2D1C0, sub_1B880);
    sub_29D34();
    v32 = v7;
  }

  return sub_B0B0(v32, v30, v31);
}

uint64_t sub_1AF7C(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_29724();

    if (v4)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_29724();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_29724();

      if (v3)
      {
        v1 = [v4 isEqual:v3];

        return v1 ^ 1;
      }

      else
      {

        return 1;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel();
    sub_1BD5C(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B184(uint64_t a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_29724();

    if (v4)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_29724();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_29724();

      if (v3)
      {
        v1 = [v4 isEqual:v3];

        return v1;
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel();
    sub_1BD5C(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B390(uint64_t a1)
{
  if (a1)
  {

    sub_1545C();
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel();
    sub_1BD5C(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B428@<X0>(uint64_t a1@<X8>)
{
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v2 = qword_408A0;
  result = sub_29FC4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1B510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3398(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B578()
{
  result = qword_3E160;
  if (!qword_3E160)
  {
    sub_360C(&qword_3E168, &qword_2D1E0);
    sub_1B630();
    sub_A234(&qword_3DA28, &qword_3DA08, &qword_2C158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E160);
  }

  return result;
}

unint64_t sub_1B630()
{
  result = qword_3E170;
  if (!qword_3E170)
  {
    sub_360C(&qword_3E178, &qword_2D1E8);
    sub_360C(&qword_3E148, &qword_2D1D0);
    sub_29C44();
    sub_A234(&qword_3E180, &qword_3E148, &qword_2D1D0);
    sub_1BD5C(&qword_3E188, &type metadata accessor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_A234(&qword_3DA20, &qword_3DA00, &qword_2C120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E170);
  }

  return result;
}

unint64_t sub_1B7A8()
{
  result = qword_3E190;
  if (!qword_3E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E190);
  }

  return result;
}

uint64_t sub_1B7FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_360C(a2, a3);
    a4();
    sub_1B7A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B880()
{
  result = qword_3E1A0;
  if (!qword_3E1A0)
  {
    sub_360C(&qword_3E1A8, &qword_2D1F0);
    sub_360C(&qword_3E1B0, &qword_2D1F8);
    sub_1B974();
    swift_getOpaqueTypeConformance2();
    sub_A234(&qword_3D9E0, &qword_3D9E8, &qword_2C110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E1A0);
  }

  return result;
}

unint64_t sub_1B974()
{
  result = qword_3E1B8;
  if (!qword_3E1B8)
  {
    sub_360C(&qword_3E1B0, &qword_2D1F8);
    sub_1BA2C();
    sub_A234(&qword_3DA60, &qword_3DA68, &unk_2C330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E1B8);
  }

  return result;
}

unint64_t sub_1BA2C()
{
  result = qword_3E1C0;
  if (!qword_3E1C0)
  {
    sub_360C(&qword_3E1C8, &qword_2D200);
    sub_A234(&qword_3E1D0, &qword_3E1D8, &qword_2D208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E1C0);
  }

  return result;
}

uint64_t sub_1BAE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BDAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B04();
  *a1 = result;
  return result;
}

uint64_t sub_1BDD8(uint64_t *a1)
{
  v1 = *a1;

  return sub_29B14();
}

uint64_t sub_1BE04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29AB4();
  *a1 = result;
  return result;
}

uint64_t sub_1BE30(uint64_t *a1)
{
  v1 = *a1;

  return sub_29AC4();
}

uint64_t sub_1BE80(uint64_t a1)
{
  v2 = sub_3398(&qword_3E1E8, &qword_2D350);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1C09C(a1, &v6 - v4);
  return sub_29B34();
}

uint64_t sub_1BF14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B04();
  *a1 = result;
  return result;
}

uint64_t sub_1BF40(uint64_t *a1)
{
  v1 = *a1;

  return sub_29B14();
}

uint64_t sub_1BF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E1C8, &qword_2D200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFDC(uint64_t a1)
{
  v2 = sub_3398(&qword_3E1B0, &qword_2D1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29AB4();
  *a1 = result;
  return result;
}

uint64_t sub_1C070(uint64_t *a1)
{
  v1 = *a1;

  return sub_29AC4();
}

uint64_t sub_1C09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E1E8, &qword_2D350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C110()
{
  result = qword_3E1F0;
  if (!qword_3E1F0)
  {
    sub_360C(&qword_3E130, &qword_2D1B8);
    sub_1C19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E1F0);
  }

  return result;
}

unint64_t sub_1C19C()
{
  result = qword_3E1F8;
  if (!qword_3E1F8)
  {
    sub_360C(&qword_3E110, &qword_2D198);
    sub_A234(&qword_3E200, &qword_3E208, &qword_2D358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E1F8);
  }

  return result;
}

unint64_t sub_1C28C()
{
  result = qword_3E2A8;
  if (!qword_3E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E2A8);
  }

  return result;
}

uint64_t sub_1C2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for WallpaperAutobahnViewModel();
  sub_1D2B8();

  v6 = sub_29934();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = a2;
  a3[3] = sub_1C3D4;
  a3[4] = 0;
  a3[5] = sub_1D350;
  a3[6] = v9;
}

uint64_t sub_1C3D4@<X0>(void *a1@<X8>)
{
  result = sub_298A4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C400(uint64_t a1, uint64_t a2)
{
  result = UIApp;
  if (UIApp)
  {
    v4 = [UIApp activeInterfaceOrientation];
    if (v4 != *(a2 + 32))
    {
      type metadata accessor for WallpaperAutobahnViewModel();
      sub_1D2B8();
      sub_296C4();
      sub_296E4();
    }

    *(a2 + 32) = v4;
    v5 = [objc_opt_self() mainScreen];
    v6 = [v5 fixedCoordinateSpace];

    [v6 bounds];
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    result = UIApp;
    if (UIApp)
    {
      result = sub_395C([UIApp activeInterfaceOrientation]);
      v12 = *(a2 + 16);
      v11 = *(a2 + 24);
      if (result)
      {
        v13 = v10 == v12 && v8 == v11;
        v14 = v10;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = v8 == v12 && v10 == v11;
        v14 = v8;
        v8 = v10;
        if (v15)
        {
          goto LABEL_17;
        }
      }

      type metadata accessor for WallpaperAutobahnViewModel();
      sub_1D2B8();
      sub_296C4();
      sub_296E4();

LABEL_17:
      *(a2 + 16) = v14;
      *(a2 + 24) = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a2;
  v4[8] = a4;
  v4[6] = a1;
  v5 = sub_29924();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = sub_29524();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = *(*(sub_3398(&qword_3E2E8, &unk_2D438) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = sub_29494();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  sub_2A524();
  v4[19] = sub_2A514();
  v16 = sub_2A4F4();

  return _swift_task_switch(sub_1C768, v16, v15);
}

uint64_t sub_1C768()
{
  v1 = v0 + 17;
  v2 = v0[17];
  v3 = v0[16];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[7];

  sub_2A3B4();
  sub_29474();
  (*(v8 + 8))(v6, v7);
  if ((*(v2 + 48))(v5, 1, v3) != 1)
  {
    v10 = v0 + 18;
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v0[2] = sub_29484();
    v0[3] = v11;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_1D00C();
    v12 = sub_2A7B4();

    v14 = 0;
    v15 = *(v12 + 16);
    for (i = v12 + 40; ; i = v43)
    {
      v17 = (i + 16 * v14);
      do
      {
        if (v15 == v14)
        {

          if (!_swiftEmptyArrayStorage[2])
          {
            (*(*v1 + 8))(*v10, v0[16]);

            goto LABEL_20;
          }

          v26 = _swiftEmptyArrayStorage[4];
          v25 = _swiftEmptyArrayStorage[5];

          v27 = v0 + 16;
          if (v26 == 0x615777654E646461 && v25 == 0xEF72657061706C6CLL)
          {

            goto LABEL_22;
          }

          v31 = sub_2A914();

          if (v31)
          {
LABEL_22:
            v32 = *(v0[8] + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_showAddWallpaperFlowSubject);

            sub_3398(&qword_3D4D0, qword_2C1C0);
            sub_A234(&qword_3D4D8, &qword_3D4D0, qword_2C1C0);
            sub_296F4();
          }

          v34 = v0[10];
          v33 = v0[11];
          v35 = v0[9];
          v37 = v0[6];
          v36 = v0[7];
          sub_2A3A4();
          sub_2A3C4();
          (*(v34 + 8))(v33, v35);
          goto LABEL_24;
        }

        if (v14 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v17 - 1);
        v18 = *v17;
        v17 += 2;
        ++v14;
        v20 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v20 = v19 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (!v20);

      result = swift_isUniquelyReferenced_nonNull_native();
      v43 = i;
      if ((result & 1) == 0)
      {
        result = sub_1D080(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_1D080((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
      }

      _swiftEmptyArrayStorage[2] = v23;
      v24 = &_swiftEmptyArrayStorage[2 * v22];
      v24[4] = v19;
      v24[5] = v18;
    }
  }

  sub_1CFA4(v0[15]);
LABEL_20:
  v10 = v0 + 11;
  v28 = v0[11];
  v30 = v0[6];
  v29 = v0[7];
  sub_2A3A4();
  sub_2A3C4();
  v1 = v0 + 10;
  v27 = v0 + 9;
LABEL_24:
  v38 = v0[18];
  v40 = v0[14];
  v39 = v0[15];
  v41 = v0[11];
  (*(*v1 + 8))(*v10, *v27);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1CB88()
{
  v1 = sub_3398(&qword_3E2B0, &qword_2D410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v7 = *v0;
  v6 = v0[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  sub_3398(&qword_3E2B8, &qword_2D418);
  sub_1CDE4();
  sub_2A3D4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  sub_A234(&qword_3E2E0, &qword_3E2B0, &qword_2D410);

  sub_2A394();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1CD64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WallpaperAutobahnViewModel();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2B570;
  *(v2 + 32) = 1;
  v3 = type metadata accessor for PosterConfigurationCarouselViewModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_10F80();
  *a1 = v2;
  a1[1] = result;
  return result;
}

unint64_t sub_1CDE4()
{
  result = qword_3E2C0;
  if (!qword_3E2C0)
  {
    sub_360C(&qword_3E2B8, &qword_2D418);
    sub_1CE9C();
    sub_A234(&qword_3E2D0, &qword_3E2D8, &qword_2D420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E2C0);
  }

  return result;
}

unint64_t sub_1CE9C()
{
  result = qword_3E2C8;
  if (!qword_3E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E2C8);
  }

  return result;
}

uint64_t sub_1CEF0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_5240;

  return sub_1C580(a1, a2, v7, v6);
}

uint64_t sub_1CFA4(uint64_t a1)
{
  v2 = sub_3398(&qword_3E2E8, &unk_2D438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D00C()
{
  result = qword_3E2F0;
  if (!qword_3E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E2F0);
  }

  return result;
}

char *sub_1D060(char *a1, int64_t a2, char a3)
{
  result = sub_1D0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D080(char *a1, int64_t a2, char a3)
{
  result = sub_1D1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3398(&qword_3DFE8, &qword_2D450);
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

char *sub_1D1AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3398(&qword_3E2F8, &qword_2D448);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1D2B8()
{
  result = qword_3D528;
  if (!qword_3D528)
  {
    type metadata accessor for WallpaperAutobahnViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D528);
  }

  return result;
}

uint64_t sub_1D310()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D368()
{
  sub_360C(&qword_3E2B0, &qword_2D410);
  sub_A234(&qword_3E2E0, &qword_3E2B0, &qword_2D410);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29C54();
  v20 = 0;
  sub_1D56C(a1, &v14);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v21 = v14;
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[0] = v14;
  sub_1D850(&v21, v13);
  sub_1D8C0(v26);
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  *&v19[7] = v21;
  LOBYTE(a1) = v20;
  v5 = sub_29EF4();
  result = sub_29774();
  v7 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v7;
  *(a2 + 81) = *&v19[64];
  v8 = *&v19[16];
  *(a2 + 17) = *v19;
  *a2 = v4;
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = a1;
  *(a2 + 96) = *&v19[79];
  *(a2 + 33) = v8;
  *(a2 + 104) = v5;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v12;
  *(a2 + 144) = 0;
  return result;
}

uint64_t sub_1D56C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PosterConfigurationCarouselViewModel();
  sub_A198();
  sub_299F4();
  swift_getKeyPath();
  sub_29A14();

  swift_getKeyPath();
  sub_3398(&qword_3E308, &qword_2D588);
  sub_2A2A4();

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29724();

    v4 = sub_29A24();
    v6 = v5;
    v7 = sub_2A304();
    v9 = v8;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29724();

    v10 = v23;

    if (v23)
    {

      v11 = sub_29A24();
      v10 = v12;
    }

    else
    {
      v11 = 1;
    }

    *a2 = v19;
    a2[1] = v20;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v4;
    a2[5] = v6;
    a2[6] = v11;
    a2[7] = v10;
    a2[8] = v7;
    a2[9] = v9;
    v13 = v11;

    v14 = v21;

    sub_1D930(v13);

    sub_1D940(v13);
  }

  else
  {
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D850(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E300, &qword_2D538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C0(uint64_t a1)
{
  v2 = sub_3398(&qword_3E300, &qword_2D538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D930(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D940(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1D954()
{
  result = qword_3E310;
  if (!qword_3E310)
  {
    sub_360C(&qword_3E318, &qword_2D5B0);
    sub_1D9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E310);
  }

  return result;
}

unint64_t sub_1D9E0()
{
  result = qword_3E320;
  if (!qword_3E320)
  {
    sub_360C(&qword_3E328, &unk_2D5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E320);
  }

  return result;
}

__n128 sub_1DA70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_2A304();
  v19 = v9;
  v20 = v8;
  sub_1DB84(v21);
  v10 = v21[0];
  v11 = v21[1];
  v12 = v24;
  v17 = v23;
  v18 = v22;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3 & 1;
  v14 = (a4 + *(sub_3398(&qword_3E330, &unk_2D6E0) + 36));
  v15 = *(sub_298E4() + 20);
  sub_5334();
  sub_2A534();
  *v14 = &unk_2D6D8;
  v14[1] = v13;
  *a4 = v20;
  *(a4 + 8) = v19;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  result = v17;
  *(a4 + 32) = v18;
  *(a4 + 48) = v17;
  *(a4 + 64) = v12;
  *(a4 + 72) = 0;
  return result;
}

uint64_t sub_1DB84@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_3398(&qword_3DA98, &qword_2C368);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_2A194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() systemGray5Color];
  v12 = sub_2A164();
  type metadata accessor for NewWallpaperItemWellViewModel();
  sub_1E314(&qword_3D5E0, type metadata accessor for NewWallpaperItemWellViewModel);
  sub_29804();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  if (v23)
  {
    v13 = v23;
    sub_2A174();
    (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
    v14 = sub_2A1B4();

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_2A184();
  v16 = sub_2A144();
  v17 = sub_2A124();
  v18 = sub_29F24();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_29F44();
  sub_BCD8(v5);
  v19 = sub_29F14();

  KeyPath = swift_getKeyPath();
  *a1 = v12;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v17;
  a1[5] = KeyPath;
  a1[6] = v19;
}

uint64_t sub_1DEC8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_2A524();
  *(v3 + 32) = sub_2A514();
  v5 = sub_2A4F4();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return _swift_task_switch(sub_1DF64, v5, v4);
}

uint64_t sub_1DF64()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for NewWallpaperItemWellViewModel();
  sub_1E314(&qword_3D5E0, type metadata accessor for NewWallpaperItemWellViewModel);
  *(v0 + 56) = sub_29804();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_4FA4;

  return sub_23378(0);
}

uint64_t sub_1E070()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_5190();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1E0AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5240;

  return sub_1DEC8(v2, v3, v4);
}

unint64_t sub_1E168()
{
  result = qword_3E338;
  if (!qword_3E338)
  {
    sub_360C(&qword_3E330, &unk_2D6E0);
    sub_1E224();
    sub_1E314(&qword_3D5D8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E338);
  }

  return result;
}

unint64_t sub_1E224()
{
  result = qword_3E340;
  if (!qword_3E340)
  {
    sub_360C(&qword_3E348, &qword_2D768);
    sub_1E2B0();
    sub_54E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E340);
  }

  return result;
}

unint64_t sub_1E2B0()
{
  result = qword_3E350;
  if (!qword_3E350)
  {
    sub_360C(&qword_3E358, &unk_2D770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E350);
  }

  return result;
}

uint64_t sub_1E314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E35C(uint64_t a1, char a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(double))
{
  v36[1] = a3;
  v19 = sub_298D4();
  v36[0] = *(v19 - 8);
  v20 = *(v36[0] + 64);
  __chkstk_darwin(v19);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3398(&qword_3E370, &unk_2D8E0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v27 = v36 - v26;
  v39.origin.x = a4;
  v39.origin.y = a5;
  v39.size.width = a6;
  v39.size.height = a7;
  Width = CGRectGetWidth(v39);
  a11(Width);
  v40.origin.x = a4;
  v40.origin.y = a5;
  v40.size.width = a6;
  v40.size.height = a7;
  v29 = CGRectGetWidth(v40);
  if ((a2 & 1) == 0)
  {
    v29 = *&a1;
  }

  *&v36[2] = v29;
  v30 = sub_29914();
  (*(*(v30 - 8) + 16))(v27, a9, v30);
  v31 = *(v24 + 44);
  sub_1E988();
  sub_2A5C4();
  sub_2A614();
  if (*&v27[v31] != v38[0])
  {
    v32 = (v36[0] + 16);
    v33 = (v36[0] + 8);
    do
    {
      v34 = sub_2A644();
      (*v32)(v22);
      v34(v38, 0);
      sub_2A624();
      sub_2A334();
      LOBYTE(v38[0]) = 0;
      v37 = 0;
      sub_298C4();
      (*v33)(v22, v19);
      sub_2A614();
    }

    while (*&v27[v31] != v38[0]);
  }

  return sub_1E9E0(v27);
}

void sub_1E668(uint64_t a1, char a2, double a3, __n128 a4)
{
  v5 = *v4;
  a4.n128_u64[0] = v4[1];
  if ((a2 & 1) == 0 && a1 != 0x7FF0000000000000 && (a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4[2];
    v8 = v4[3];
    v7(*&a1, a4);
  }
}

void (*sub_1E6E0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_29754();
  return sub_7484;
}

unint64_t ProposedViewSize.debugDescription.getter()
{
  sub_2A824(38);

  sub_3398(&qword_3E360, qword_2D780);
  v1._countAndFlagsBits = sub_2A464();
  sub_2A4A4(v1);

  v2._countAndFlagsBits = 0x746867696568202CLL;
  v2._object = 0xEA0000000000203ALL;
  sub_2A4A4(v2);
  v3._countAndFlagsBits = sub_2A464();
  sub_2A4A4(v3);

  return 0xD000000000000018;
}

unint64_t sub_1E878()
{
  v1 = *v0;
  v2 = v0[2];
  v5 = *(v0 + 8);
  v4 = *(v0 + 24);
  return ProposedViewSize.debugDescription.getter();
}

uint64_t sub_1E898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E8E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E934()
{
  result = qword_3E368;
  if (!qword_3E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E368);
  }

  return result;
}

unint64_t sub_1E988()
{
  result = qword_3D7F8;
  if (!qword_3D7F8)
  {
    sub_29914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7F8);
  }

  return result;
}

uint64_t sub_1E9E0(uint64_t a1)
{
  v2 = sub_3398(&qword_3E370, &unk_2D8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E378, qword_2D8F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1EAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E378, qword_2D8F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PosterGestureTutorialView()
{
  result = qword_3E3D8;
  if (!qword_3E3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1EBB0()
{
  sub_1EC1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1EC1C()
{
  if (!qword_3E3E8)
  {
    sub_29944();
    v0 = sub_297D4();
    if (!v1)
    {
      atomic_store(v0, &qword_3E3E8);
    }
  }
}

__n128 sub_1EC90@<Q0>(uint64_t a1@<X8>)
{
  sub_1EDCC(&v23);
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v22 = v29;
  sub_18A64(&v14, v13, &qword_3E418, &qword_2D990);
  sub_B0B0(v21, &qword_3E418, &qword_2D990);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v2 = [objc_opt_self() systemGray5Color];
  v13[0] = sub_2A164();
  v3 = sub_2A274();
  v4 = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v4;
  v5 = v29;
  v6 = v24;
  *a1 = v23;
  *(a1 + 16) = v6;
  v7 = v26;
  *(a1 + 32) = v25;
  *(a1 + 48) = v7;
  *(a1 + 96) = v5;
  *(a1 + 104) = v3;
  __asm { FMOV            V0.2D, #14.0 }

  *(a1 + 112) = result;
  *(a1 + 128) = result;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_1EDCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29C64();
  LOBYTE(v14[0]) = 0;
  sub_1EF1C(v11);
  *&v10[7] = v11[0];
  *&v10[23] = v11[1];
  *&v10[39] = v11[2];
  *&v10[55] = v11[3];
  v3 = v14[0];
  type metadata accessor for PosterConfigurationCarouselViewModel();
  sub_A198();
  v4 = sub_29A24();
  *&v12 = v2;
  *(&v12 + 1) = 0x4018000000000000;
  v13[0] = v3;
  *&v13[1] = *v10;
  *&v13[49] = *&v10[48];
  *&v13[33] = *&v10[32];
  *&v13[17] = *&v10[16];
  *&v13[64] = *&v10[63];
  v5 = *v13;
  *a1 = v12;
  *(a1 + 16) = v5;
  v6 = *&v13[16];
  v7 = *&v13[48];
  *(a1 + 48) = *&v13[32];
  *(a1 + 64) = v7;
  *(a1 + 32) = v6;
  *(a1 + 80) = *&v10[63];
  *(a1 + 88) = v4;
  *(a1 + 96) = v8;
  sub_18A64(&v12, v14, &qword_3E420, &qword_2D998);
  v14[0] = v2;
  v14[1] = 0x4018000000000000;
  v15 = v3;
  v17 = *&v10[16];
  v18 = *&v10[32];
  *v19 = *&v10[48];
  *&v19[15] = *&v10[63];
  v16 = *v10;
  return sub_B0B0(v14, &qword_3E420, &qword_2D998);
}

uint64_t sub_1EF1C@<X0>(uint64_t a1@<X8>)
{
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v2 = qword_408A0;
  v3 = sub_29FC4();
  v5 = v4;
  v7 = v6;
  sub_29F04();
  v8 = sub_29FB4();
  v10 = v9;
  v12 = v11;

  sub_55A4(v3, v5, v7 & 1);

  v13 = sub_29FA4();
  v35 = v14;
  v36 = v13;
  v34 = v15;
  v37 = v16;
  sub_55A4(v8, v10, v12 & 1);

  sub_29BE4();
  v17 = qword_408A0;
  v18 = sub_29FC4();
  v20 = v19;
  LOBYTE(v10) = v21;
  sub_29F04();
  v22 = sub_29FB4();
  v24 = v23;
  LOBYTE(v5) = v25;

  sub_55A4(v18, v20, v10 & 1);

  sub_2A154();
  v26 = sub_29F74();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_55A4(v22, v24, v5 & 1);

  *a1 = v36;
  *(a1 + 8) = v35;
  *(a1 + 16) = v34 & 1;
  *(a1 + 24) = v37;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v30 & 1;
  *(a1 + 56) = v32;
  sub_1F248(v36, v35, v34 & 1);

  sub_1F248(v26, v28, v30 & 1);

  sub_55A4(v26, v28, v30 & 1);

  sub_55A4(v36, v35, v34 & 1);
}

uint64_t sub_1F248(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1F25C()
{
  result = qword_3E428;
  if (!qword_3E428)
  {
    sub_360C(&qword_3E430, &qword_2D9A0);
    sub_1F314();
    sub_A234(&qword_3E090, &qword_3E098, &qword_2CF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E428);
  }

  return result;
}

unint64_t sub_1F314()
{
  result = qword_3E438;
  if (!qword_3E438)
  {
    sub_360C(&qword_3E440, &qword_2D9A8);
    sub_1F3CC();
    sub_A234(&qword_3E470, &qword_3E478, &unk_2D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E438);
  }

  return result;
}

unint64_t sub_1F3CC()
{
  result = qword_3E448;
  if (!qword_3E448)
  {
    sub_360C(&qword_3E450, &qword_2D9B0);
    sub_A234(&qword_3E458, &qword_3E460, &qword_2D9B8);
    sub_A234(&qword_3E468, &qword_3E418, &qword_2D990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E448);
  }

  return result;
}

uint64_t sub_1F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_299C4();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_opt_self() mainScreen];
  v12 = [v11 traitCollection];

  [v12 displayCornerRadius];
  v14 = v13;

  if (v14 != _UITraitCollectionDisplayCornerRadiusUnspecified)
  {
    a3 = v14 * 0.333333333;
  }

  v15 = *(v7 + 28);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_29BF4();
  (*(*(v17 - 8) + 104))(v10 + v15, v16, v17);
  *v10 = a3;
  v10[1] = a3;
  v18 = a2 + *(sub_3398(&qword_3E480, &qword_2DA78) + 36);
  sub_1F6CC(v10, v18);
  *(v18 + *(sub_3398(&qword_3E488, &qword_2DA80) + 36)) = 256;
  v19 = sub_3398(&qword_3E490, &qword_2DA88);
  return (*(*(v19 - 8) + 16))(a2, a1, v19);
}

uint64_t sub_1F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_299C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1F734()
{
  result = qword_3E498;
  if (!qword_3E498)
  {
    sub_360C(&qword_3E480, &qword_2DA78);
    sub_A234(&qword_3E4A0, &qword_3E490, &qword_2DA88);
    sub_A234(&qword_3E4A8, &qword_3E488, &qword_2DA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E498);
  }

  return result;
}

uint64_t sub_1F818()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  return v1;
}

uint64_t sub_1F88C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  return v1;
}

char *sub_1F900(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = sub_3398(&qword_3D730, &qword_2BB88);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_3398(&qword_3E5C0, &unk_2DB60);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = sub_3398(&qword_3E5B8, &qword_2DB58);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel__snapshot;
  v34 = 0;
  sub_3398(&qword_3E508, &qword_2DB00);
  sub_29704();
  (*(v16 + 32))(&v4[v20], v19, v15);
  v21 = OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel__isLoading;
  v33 = 0;
  sub_29704();
  (*(v11 + 32))(&v4[v21], v14, v10);
  *&v4[OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask] = 0;
  v23 = v31;
  v22 = v32;
  *(v4 + 2) = a1;
  *(v4 + 3) = v23;
  *(v4 + 4) = v22;
  v24 = sub_2A554();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_2A524();
  v25 = a1;

  v26 = sub_2A514();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v4;
  v28 = sub_FD9C(0, 0, v9, &unk_2DB78, v27);

  v29 = *&v4[OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask];
  *&v4[OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask] = v28;

  return v4;
}

uint64_t sub_1FC0C()
{
  v0[2] = sub_2A524();
  v0[3] = sub_2A514();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1FCB8;

  return sub_1FE54();
}

uint64_t sub_1FCB8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2A4F4();

  return _swift_task_switch(sub_1FDF4, v5, v4);
}

uint64_t sub_1FDF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1FE54()
{
  v1[6] = v0;
  v2 = sub_295D4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_29554();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_2A524();
  v1[16] = sub_2A514();
  v9 = sub_2A4F4();
  v1[17] = v9;
  v1[18] = v8;

  return _swift_task_switch(sub_1FFC8, v9, v8);
}

uint64_t sub_1FFC8()
{
  v76 = v0;
  v1 = *(*(v0 + 48) + 32);
  v2 = BSInterfaceOrientationDescription();
  v3 = sub_2A454();
  v5 = v4;

  *(v0 + 152) = v3;
  *(v0 + 160) = v5;
  if (qword_3D488 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 48);
  v7 = sub_29684();
  *(v0 + 168) = sub_18530(v7, qword_40908);
  swift_retain_n();

  v8 = sub_29664();
  v9 = sub_2A694();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 48);
  if (v10)
  {
    v73 = v9;
    v12 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v12 = 136315650;
    v74 = v3;
    v75 = v72;
    *(v12 + 4) = sub_177DC(v3, v5, &v75);
    *(v12 + 12) = 2082;
    v13 = [*(v11 + 16) serverUUID];
    if (!v13)
    {
      v70 = *(v0 + 48);

      __break(1u);
      goto LABEL_25;
    }

    v14 = v13;
    v15 = *(v0 + 120);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v18 = *(v0 + 48);
    sub_29544();

    sub_22BEC();
    v19 = sub_2A904();
    v21 = v20;
    (*(v17 + 8))(v15, v16);
    v22 = sub_177DC(v19, v21, &v75);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2050;
    v23 = *(v18 + 24);

    *(v12 + 24) = v23;

    _os_log_impl(&dword_0, v8, v73, "Start %s %{public}s, %{public}ld", v12, 0x20u);
    swift_arrayDestroy();

    v3 = v74;
  }

  else
  {
    v24 = *(v0 + 48);
  }

  v25 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  if (*(v0 + 208))
  {
    v26 = *(v0 + 128);
    v27 = *(v0 + 48);

    swift_retain_n();

    v28 = sub_29664();
    v29 = sub_2A694();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 48);
    if (!v30)
    {
      v63 = *(v0 + 48);

      goto LABEL_21;
    }

    v32 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v32 = 136315650;
    *(v32 + 4) = sub_177DC(v3, v5, &v75);
    *(v32 + 12) = 2082;
    v33 = [*(v31 + 16) serverUUID];
    if (v33)
    {
      v34 = v33;
      v35 = *(v0 + 112);
      v36 = *(v0 + 88);
      v37 = *(v0 + 96);
      v38 = *(v0 + 48);
      sub_29544();

      sub_22BEC();
      v39 = sub_2A904();
      v41 = v40;
      (*(v37 + 8))(v35, v36);
      v42 = sub_177DC(v39, v41, &v75);

      *(v32 + 14) = v42;
      *(v32 + 22) = 2050;
      v43 = *(v38 + 24);

      *(v32 + 24) = v43;

      _os_log_impl(&dword_0, v28, v29, "Already loading %s %{public}s, %{public}ld", v32, 0x20u);
      swift_arrayDestroy();

LABEL_21:

      v65 = *(v0 + 112);
      v64 = *(v0 + 120);
      v66 = *(v0 + 104);
      v68 = *(v0 + 72);
      v67 = *(v0 + 80);
      sub_20FE8(*(v0 + 152), *(v0 + 160), *(v0 + 48));

      v69 = *(v0 + 8);

      return v69();
    }

LABEL_25:
    v71 = *(v0 + 48);

    __break(1u);
    return result;
  }

  v44 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 209) = 1;

  sub_29734();
  if (qword_3D498 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 80);
  v46 = sub_29604();
  sub_18530(v46, qword_40938);
  sub_295E4();
  sub_295B4();
  v47 = sub_295E4();
  v48 = sub_2A714();
  if (sub_2A7A4())
  {
    v49 = *(v0 + 80);
    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = sub_295C4();
    _os_signpost_emit_with_name_impl(&dword_0, v47, v48, v51, "LoadWallpaperSnapshot", "", v50, 2u);
  }

  v53 = *(v0 + 72);
  v52 = *(v0 + 80);
  v54 = *(v0 + 56);
  v55 = *(v0 + 64);

  (*(v55 + 16))(v53, v52, v54);
  v56 = sub_29644();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_29634();
  if (qword_3D468 != -1)
  {
    swift_once();
  }

  v59 = qword_408A8;
  v60 = swift_task_alloc();
  *(v0 + 184) = v60;
  *v60 = v0;
  v60[1] = sub_20708;
  v61 = *(v0 + 48);

  return sub_21534(v59);
}

uint64_t sub_20708(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = v4[17];
    v8 = v4[18];
    v9 = sub_2098C;
  }

  else
  {
    v4[25] = a1;
    v7 = v4[17];
    v8 = v4[18];
    v9 = sub_20830;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_20830()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  sub_2A324();
  sub_298F4();

  sub_212A8();

  (*(v7 + 8))(v5, v6);
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  sub_20FE8(v0[19], v0[20], v0[6]);

  v15 = v0[1];

  return v15();
}

id sub_2098C()
{
  v40 = v0;
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  sub_212A8();

  (*(v7 + 8))(v5, v6);

  swift_errorRetain();
  v9 = sub_29664();
  v10 = sub_2A674();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[6];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v13 = 134349570;
    *(v13 + 4) = *(v12 + 24);

    *(v13 + 12) = 2082;
    result = [*(v12 + 16) serverUUID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = v0[24];
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[11];
    sub_29544();

    sub_22BEC();
    v20 = sub_2A904();
    v22 = v21;
    (*(v17 + 8))(v18, v19);
    v23 = sub_177DC(v20, v22, v39);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v25 = v0[2];
    v24 = v0[3];
    v26 = v0[4];
    v27 = sub_2A944();
    v29 = sub_177DC(v27, v28, v39);

    *(v13 + 24) = v29;
    _os_log_impl(&dword_0, v9, v10, "Failed to get %{public}ld snapshot for %{public}s: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v30 = v0[6];
  }

  v31 = v0[24];
  v32 = v0[6];
  sub_2A324();
  sub_298F4();

  v34 = v0[14];
  v33 = v0[15];
  v35 = v0[13];
  v37 = v0[9];
  v36 = v0[10];
  sub_20FE8(v0[19], v0[20], v0[6]);

  v38 = v0[1];

  return v38();
}

uint64_t sub_20CA0()
{
  v1 = OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask;
  if (*(v0 + OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel_snapshotTask);

    sub_2A5B4();
  }

  v3 = OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel__snapshot;
  v4 = sub_3398(&qword_3E5B8, &qword_2DB58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17WallpaperSettings26WallpaperSnapshotViewModel__isLoading;
  v6 = sub_3398(&qword_3E5C0, &unk_2DB60);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + v1);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v8, v9);
}

uint64_t type metadata accessor for WallpaperSnapshotViewModel()
{
  result = qword_3E4F0;
  if (!qword_3E4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20E40()
{
  sub_20F34();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_20F98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_20F34()
{
  if (!qword_3E500)
  {
    sub_360C(&qword_3E508, &qword_2DB00);
    v0 = sub_29744();
    if (!v1)
    {
      atomic_store(v0, &qword_3E500);
    }
  }
}

void sub_20F98()
{
  if (!qword_3E510)
  {
    v0 = sub_29744();
    if (!v1)
    {
      atomic_store(v0, &qword_3E510);
    }
  }
}

void sub_20FE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_29554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3D488 != -1)
  {
    swift_once();
  }

  v11 = sub_29684();
  sub_18530(v11, qword_40908);
  swift_retain_n();

  v12 = sub_29664();
  v13 = sub_2A694();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a1;
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_177DC(v14, a2, &v24);
    *(v15 + 12) = 2082;
    v16 = [*(a3 + 16) serverUUID];
    if (v16)
    {
      v17 = v16;
      sub_29544();

      sub_22BEC();
      v18 = sub_2A904();
      v20 = v19;
      (*(v7 + 8))(v10, v6);
      v21 = sub_177DC(v18, v20, &v24);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2050;
      v22 = *(a3 + 24);

      *(v15 + 24) = v22;

      _os_log_impl(&dword_0, v12, v13, "Complete %s %{public}s, %{public}ld", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_212A8()
{
  v0 = sub_29614();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_295D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3D498 != -1)
  {
    swift_once();
  }

  v10 = sub_29604();
  sub_18530(v10, qword_40938);
  v11 = sub_295E4();
  sub_29624();
  v12 = sub_2A704();
  if (sub_2A7A4())
  {

    sub_29654();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_295C4();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v15, "LoadWallpaperSnapshot", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21534(uint64_t a1)
{
  v2[193] = v1;
  v2[187] = a1;
  sub_2A524();
  v2[199] = sub_2A514();
  v4 = sub_2A4F4();
  v2[205] = v4;
  v2[211] = v3;

  return _swift_task_switch(sub_215D4, v4, v3);
}

uint64_t sub_215D4()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = swift_allocObject();
  v0[217] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  sub_3A40(0, qword_3D808, UIImage_ptr);
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[218] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  v6 = v4;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 175, sub_21718, v0 + 162);
}

uint64_t sub_21718()
{
  v1[219] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 181, sub_21AB8, v1 + 176);
  }

  else
  {
    v2 = v1[175];
    v1[220] = v2;
    v3 = v2;

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 181, sub_217CC, v1 + 188);
  }
}

uint64_t sub_217CC()
{
  v1[221] = v0;
  if (v0)
  {
    v2 = sub_21B94;
  }

  else
  {
    v2 = sub_21804;
  }

  return _swift_task_switch(v2, v1[205], v1[211]);
}

uint64_t sub_21804()
{
  v1 = v0[220];
  v2 = v0[181];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = v1;
  v6 = v4;
  v7 = [v3 currentTraitCollection];
  v8 = sub_2A6F4();
  v9 = sub_2A6F4();
  sub_3398(&qword_3E5D0, &qword_2DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2BAB0;
  *(inited + 32) = v8;
  *(inited + 40) = v5;
  *(inited + 48) = v9;
  *(inited + 56) = v6;
  v11 = v5;
  v12 = v6;
  v13 = v8;
  v14 = v9;
  v15 = sub_678C(inited);
  swift_setDeallocating();
  sub_3398(&qword_3E5D8, &qword_2DC48);
  swift_arrayDestroy();
  v16 = v11;
  sub_23010(v15, v11);
  v0[222] = v17;

  return _swift_asyncLet_finish(v0 + 82, v0 + 181, sub_219E0, v0 + 206);
}

uint64_t sub_21A38()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[199];

  v4 = v0[1];
  v5 = v0[222];

  return v4(v5);
}

uint64_t sub_21B10()
{
  v1 = v0[219];
  v2 = v0[218];
  v3 = v0[217];
  v4 = v0[199];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21B94()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1448, sub_21C00, v0 + 1552);
}

uint64_t sub_21C58()
{
  v1 = v0[221];
  v2 = v0[218];
  v3 = v0[217];
  v4 = v0[199];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CDC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_29734();
  v3 = a2;
  sub_2A174();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29734();
}

uint64_t sub_21DA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29734();
}

Swift::Int sub_21E1C()
{
  sub_2A994();
  sub_2A9A4(0);
  return sub_2A9B4();
}

Swift::Int sub_21E88()
{
  sub_2A994();
  sub_2A9A4(0);
  return sub_2A9B4();
}

uint64_t sub_21EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_21F8C;

  return sub_220D8(0, a3);
}

uint64_t sub_21F8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_22FB0, 0, 0);
  }
}

uint64_t sub_220D8(char a1, uint64_t a2)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = v2;
  *(v3 + 208) = a1;
  sub_2A524();
  *(v3 + 168) = sub_2A514();
  v5 = sub_2A4F4();
  *(v3 + 176) = v5;
  *(v3 + 184) = v4;

  return _swift_task_switch(sub_22174, v5, v4);
}

uint64_t sub_22174()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v5 = *(v1 + 152);
  v4 = *(v1 + 160);
  if (v4[3] == 1)
  {
    v6 = 132;
  }

  else
  {
    v6 = 128;
  }

  if (*(v1 + 208))
  {
    v7 = 16;
  }

  else
  {
    v7 = 32;
  }

  v8 = [objc_allocWithZone(PRSPosterSnapshotRequest) initWithConfiguration:v4[2] variantType:v4[3] == 1 options:v6 | v7 orientation:v4[4]];
  *(v1 + 192) = v8;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_2230C;
  v9 = swift_continuation_init();
  *(v1 + 136) = sub_3398(&qword_3E5E0, &unk_2DC58);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_14E10;
  *(v1 + 104) = &unk_3B4F8;
  *(v1 + 112) = v9;
  [v5 fetchPosterSnapshotsWithRequest:v8 completion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_2230C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_22658;
  }

  else
  {
    v6 = sub_2243C;
  }

  return _swift_task_switch(v6, v5, v4);
}

void sub_2243C()
{
  v1 = v0[18];
  v2 = [v1 snapshots];
  sub_3A40(0, &qword_3E5E8, PRSPosterSnapshot_ptr);
  v3 = sub_2A4E4();

  if (v3 >> 62)
  {
    if (sub_2A8E4())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = sub_2A834();
      }

      else
      {
        if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_16;
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;

      v6 = [v5 imageOrientation];
      v7 = [v5 image];
      v8 = [objc_allocWithZone(UIImage) initWithCGImage:v7 imageOrientation:v6];

      if (v8)
      {
        v9 = v0[24];
        v10 = v0[21];

        v11 = v0[1];

        v11(v8);
        return;
      }

LABEL_16:
      __break(1u);
      return;
    }
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v12 = v0[24];
  v13 = v0[21];

  sub_22E1C();
  swift_allocError();
  swift_willThrow();

  v14 = v0[1];

  v14();
}

uint64_t sub_22658()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  swift_willThrow();

  v4 = v0[25];
  v5 = v0[1];

  return v5();
}

uint64_t sub_226D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_22774;

  return sub_220D8(1, a3);
}

uint64_t sub_22774(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_228C0, 0, 0);
  }
}

uint64_t sub_228E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_22924()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5240;

  return sub_1FC0C();
}

uint64_t sub_229D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  *a2 = v5;
  return result;
}

uint64_t sub_22A58(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29734();
}

uint64_t sub_22ACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  *a2 = v5;
  return result;
}

uint64_t sub_22B4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29734();
}

unint64_t sub_22BEC()
{
  result = qword_3E5C8;
  if (!qword_3E5C8)
  {
    sub_29554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E5C8);
  }

  return result;
}

uint64_t sub_22C6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18BEC;

  return sub_21EE8(a1, v5, v4);
}

uint64_t sub_22D18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_22D58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5240;

  return sub_226D0(a1, v5, v4);
}

unint64_t sub_22E1C()
{
  result = qword_3E5F0;
  if (!qword_3E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WallpaperSnapshotViewModel.SnapshotError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WallpaperSnapshotViewModel.SnapshotError(_WORD *result, int a2, int a3)
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

unint64_t sub_22F58()
{
  result = qword_3E5F8;
  if (!qword_3E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E5F8);
  }

  return result;
}

uint64_t sub_22FC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_232B4(a1, *(a1 + 24));
  return sub_29694();
}

void sub_23010(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v9 = sub_71E4(a1);
    if (!v9)
    {
      v26 = objc_allocWithZone(UIImage);

      [v26 init];
      return;
    }

    v4 = v10;

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = -1 << *(a1 + 32);
    v6 = ~v11;
    v5 = a1 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v7 = v13 & *(a1 + 64);
    v8 = a1;
    goto LABEL_10;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = sub_2A864() | 0x8000000000000000;
LABEL_10:
  v14 = a2;

  v15 = 0;
  v16 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v17 = v15;
    v18 = v7;
    v19 = v15;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v22 = *(*(v8 + 56) + v21);
    v23 = *(*(v8 + 48) + v21);
    v24 = v22;
    if (!v23)
    {
LABEL_21:
      sub_232AC();
      return;
    }

    while (1)
    {
      v25 = [v4 imageAsset];
      [v25 registerImage:v24 withTraitCollection:v23];

      v15 = v19;
      v7 = v20;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      if (sub_2A8B4())
      {
        sub_3A40(0, &qword_3D538, UITraitCollection_ptr);
        swift_dynamicCast();
        v23 = v27;
        sub_3A40(0, qword_3D808, UIImage_ptr);
        swift_dynamicCast();
        v24 = v27;
        v19 = v15;
        v20 = v7;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_21;
    }

    v18 = *(v5 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_232B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23304()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  return v1;
}

uint64_t sub_23378(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_2A524();
  v2[25] = sub_2A514();
  v4 = sub_2A4F4();
  v2[26] = v4;
  v2[27] = v3;

  return _swift_task_switch(sub_23410, v4, v3);
}

uint64_t sub_23410()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC17WallpaperSettings29NewWallpaperItemWellViewModel_isLoading;
  v0[28] = OBJC_IVAR____TtC17WallpaperSettings29NewWallpaperItemWellViewModel_isLoading;
  if (*(v1 + v2))
  {
    v3 = v0[25];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[23];
    *(v1 + v2) = 1;
    if (v6 == 1)
    {
      v7 = 132;
    }

    else
    {
      v7 = 128;
    }

    v8 = [objc_allocWithZone(PRSPosterSnapshotRequest) initWithConfigurationType:-1 variantType:v6 == 1 options:v7];
    v0[29] = v8;
    if (qword_3D468 != -1)
    {
      swift_once();
    }

    v9 = qword_408A8;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_2360C;
    v10 = swift_continuation_init();
    v0[17] = sub_3398(&qword_3E5E0, &unk_2DC58);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_14E10;
    v0[13] = &unk_3B5B0;
    v0[14] = v10;
    [v9 fetchPosterSnapshotsWithRequest:v8 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_2360C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_23924;
  }

  else
  {
    v6 = sub_2373C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_2373C()
{
  v1 = v0[25];

  v2 = v0[21];
  v3 = [v2 snapshots];
  sub_23E18();
  v4 = sub_2A4E4();

  if (v4 >> 62)
  {
    result = sub_2A8E4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v15 = v0[28];
    v14 = v0[29];
    v16 = v0[24];

    v13 = (v16 + v15);
    goto LABEL_9;
  }

  result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_2A834();
  }

  else
  {
    if (!*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  v8 = v0[29];
  v9 = v0[24];

  v10 = [v7 surface];
  v11 = [objc_allocWithZone(UIImage) initWithIOSurface:v10];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[10] = v11;

  v12 = v11;
  sub_29734();

  v13 = (v0[24] + v0[28]);
LABEL_9:
  *v13 = 0;
  v17 = v0[1];

  return v17();
}

uint64_t sub_23924()
{
  v21 = v0;
  v1 = v0[30];
  v2 = v0[25];

  swift_willThrow();
  if (qword_3D488 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v4 = sub_29684();
  sub_18530(v4, qword_40908);
  swift_errorRetain();
  v5 = sub_29664();
  v6 = sub_2A674();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[29];
  v8 = v0[30];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_2A944();
    v17 = sub_177DC(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v5, v6, "Failed to get silhouette for home screen: %s", v10, 0xCu);
    sub_18568(v11);
  }

  else
  {
  }

  *(v0[24] + v0[28]) = 0;
  v18 = v0[1];

  return v18();
}

uint64_t sub_23B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  *a2 = v5;
  return result;
}

uint64_t sub_23B90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_29734();
}

uint64_t sub_23C08()
{
  v1 = OBJC_IVAR____TtC17WallpaperSettings29NewWallpaperItemWellViewModel__snapshot;
  v2 = sub_3398(&qword_3E6C8, &qword_2DE48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for NewWallpaperItemWellViewModel()
{
  result = qword_3E630;
  if (!qword_3E630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D04()
{
  sub_23D9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23D9C()
{
  if (!qword_3E640)
  {
    sub_360C(&qword_3D588, &qword_2B920);
    v0 = sub_29744();
    if (!v1)
    {
      atomic_store(v0, &qword_3E640);
    }
  }
}

unint64_t sub_23E18()
{
  result = qword_3E5E8;
  if (!qword_3E5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3E5E8);
  }

  return result;
}

uint64_t sub_23E6C()
{
  v0 = sub_2A6B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2A6A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_2A384();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1996C();
  sub_2A374();
  v10[1] = _swiftEmptyArrayStorage;
  sub_24614();
  sub_3398(&qword_3E6E8, &qword_2DEB0);
  sub_2466C();
  sub_2A7C4();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_2A6E4();
  qword_3E6D0 = result;
  return result;
}

void sub_24074(uint64_t a1, void *a2)
{
  v4 = sub_3398(&qword_3E6D8, &qword_2DEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  sub_2A564();
  v10 = [objc_allocWithZone(PRSWallpaperLocationStateObserver) init];
  [v10 setLocations:15];
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_244EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24578;
  aBlock[3] = &unk_3B628;
  v13 = _Block_copy(aBlock);

  [v10 setHandler:v13];
  _Block_release(v13);
  v14 = [objc_allocWithZone(PRSWallpaperObserverConfiguration) init];
  [v14 setLocationStateObserver:v10];
  if (qword_3D4A0 != -1)
  {
    swift_once();
  }

  [v14 setQueue:qword_3E6D0];
  [v9 activateWithConfiguration:v14];
}

uint64_t sub_2432C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24374()
{
  v0 = sub_3398(&qword_3E6F8, &qword_2DEB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  sub_3398(&qword_3E6D8, &qword_2DEA8);
  sub_2A574();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_24458()
{
  v1 = sub_3398(&qword_3E6D8, &qword_2DEA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_244EC()
{
  v0 = *(*(sub_3398(&qword_3E6D8, &qword_2DEA8) - 8) + 80);

  return sub_24374();
}

void sub_24578(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t sub_245FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24614()
{
  result = qword_3E6E0;
  if (!qword_3E6E0)
  {
    sub_2A6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E6E0);
  }

  return result;
}

unint64_t sub_2466C()
{
  result = qword_3E6F0;
  if (!qword_3E6F0)
  {
    sub_360C(&qword_3E6E8, &qword_2DEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E6F0);
  }

  return result;
}

uint64_t sub_246D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24784@<D0>(_OWORD *a1@<X8>)
{
  sub_19F10();
  sub_29BA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_247D4(__int128 *a1)
{
  v2 = *a1;
  sub_19F10();
  return sub_29BB4();
}

uint64_t sub_24820@<X0>(void *a1@<X8>)
{
  sub_19EBC();
  result = sub_29BA4();
  *a1 = v3;
  return result;
}

uint64_t sub_24870(uint64_t *a1)
{
  v2 = *a1;
  sub_19EBC();
  return sub_29BB4();
}

uint64_t sub_248BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_29BC4();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3398(&qword_3E700, &qword_2DF78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_3398(&qword_3E708, &qword_2DF80);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v35 = sub_3398(&qword_3E710, &qword_2DF88);
  v20 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v22 = &v34 - v21;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  sub_3398(&qword_3E718, &qword_2DF90);
  sub_A234(&qword_3E720, &qword_3E718, &qword_2DF90);
  sub_29F64();
  v23 = sub_A234(&qword_3E728, &qword_3E700, &qword_2DF78);
  sub_29FE4();
  (*(v11 + 8))(v14, v10);
  v43 = v10;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  sub_2A044();
  (*(v16 + 8))(v19, v15);
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v24 = qword_408A0;
  v25 = sub_29FC4();
  v27 = v26;
  v29 = v28;
  v31 = v37;
  v30 = v38;
  v32 = v39;
  (*(v38 + 104))(v37, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v39);
  sub_25294();
  sub_2A0C4();
  sub_55A4(v25, v27, v29 & 1);

  (*(v30 + 8))(v31, v32);
  return sub_253C0(v22);
}

uint64_t sub_24D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a4;
  v40 = sub_3398(&qword_3E738, &qword_2DF98);
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = sub_3398(&qword_3E740, &qword_2DFA0);
  v37 = *(v12 - 8);
  v13 = v37;
  v14 = *(v37 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v45 = a1;
  v46 = a2;
  v47 = a3;
  sub_3398(&qword_3E748, &qword_2DFA8);
  sub_25434();
  v36 = v19;
  sub_2A2D4();
  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_3398(&qword_3E790, &qword_2DFC8);
  sub_25604();
  v20 = v11;
  v35 = v11;
  sub_2A2D4();
  v21 = *(v13 + 16);
  v22 = v19;
  v23 = v12;
  v21(v16, v22, v12);
  v25 = v38;
  v24 = v39;
  v26 = *(v38 + 16);
  v27 = v20;
  v28 = v40;
  v26(v39, v27, v40);
  v29 = v41;
  v21(v41, v16, v23);
  v30 = &v29[*(sub_3398(&qword_3E7B8, &qword_2DFD8) + 48)];
  v26(v30, v24, v28);
  v31 = *(v25 + 8);
  v31(v35, v28);
  v32 = *(v37 + 8);
  v32(v36, v23);
  v31(v24, v28);
  return (v32)(v16, v23);
}

uint64_t sub_250A0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PosterConfigurationCarouselViewModel();
  sub_25838(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);

  v5 = sub_29934();
  v7 = v6;
  v8 = a1[2];
  v9 = a1[3];
  v10 = swift_getKeyPath();
  v11 = a1[4];
  result = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = result;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_25198@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_3398(&qword_3E7C0, &qword_2E010);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PosterConfigurationCarouselViewModel();
  sub_25838(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
  v4 = sub_296B4();
  v5 = (a2 + *(sub_3398(&qword_3E790, &qword_2DFC8) + 36));
  *v5 = v4;
  v5[1] = a1;
}

unint64_t sub_25294()
{
  result = qword_3E730;
  if (!qword_3E730)
  {
    sub_360C(&qword_3E710, &qword_2DF88);
    sub_360C(&qword_3E700, &qword_2DF78);
    sub_A234(&qword_3E728, &qword_3E700, &qword_2DF78);
    swift_getOpaqueTypeConformance2();
    sub_25838(&unk_3D5F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E730);
  }

  return result;
}

uint64_t sub_253C0(uint64_t a1)
{
  v2 = sub_3398(&qword_3E710, &qword_2DF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25428@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_250A0(*(v1 + 24), a1);
}

unint64_t sub_25434()
{
  result = qword_3E750;
  if (!qword_3E750)
  {
    sub_360C(&qword_3E748, &qword_2DFA8);
    sub_254EC();
    sub_A234(&qword_3E780, &qword_3E788, &qword_2DFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E750);
  }

  return result;
}

unint64_t sub_254EC()
{
  result = qword_3E758;
  if (!qword_3E758)
  {
    sub_360C(&qword_3E760, &qword_2DFB0);
    sub_255A4();
    sub_A234(&qword_3E770, &qword_3E778, &qword_2DFB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E758);
  }

  return result;
}

unint64_t sub_255A4()
{
  result = qword_3E768;
  if (!qword_3E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E768);
  }

  return result;
}

uint64_t sub_255F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_25198(v1[4], a1);
}

unint64_t sub_25604()
{
  result = qword_3E798;
  if (!qword_3E798)
  {
    sub_360C(&qword_3E790, &qword_2DFC8);
    sub_25838(&qword_3E7A0, type metadata accessor for PosterGestureTutorialView);
    sub_A234(&qword_3E7A8, &qword_3E7B0, &qword_2DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E798);
  }

  return result;
}

uint64_t sub_256EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29A74();
  *a1 = result;
  return result;
}

uint64_t sub_2576C(uint64_t a1)
{
  v2 = sub_29944();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_29AA4();
}

uint64_t sub_25838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29A74();
  *a1 = result;
  return result;
}

double sub_258DC@<D0>(_OWORD *a1@<X8>)
{
  sub_19F10();
  sub_29BA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2592C(__int128 *a1)
{
  v2 = *a1;
  sub_19F10();
  return sub_29BB4();
}

uint64_t sub_25978@<X0>(void *a1@<X8>)
{
  sub_19EBC();
  result = sub_29BA4();
  *a1 = v3;
  return result;
}

uint64_t sub_259C8(uint64_t *a1)
{
  v2 = *a1;
  sub_19EBC();
  return sub_29BB4();
}

uint64_t sub_25A14()
{
  sub_360C(&qword_3E710, &qword_2DF88);
  sub_25294();
  return swift_getOpaqueTypeConformance2();
}

void sub_25A78()
{
  v1 = OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer;
  [*&v0[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer] removeFromSuperlayer];
  v2 = *&v0[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_package];
  if (v2)
  {
    v10 = v2;
    v3 = [v10 rootLayer];
    if (v3)
    {
      v4 = v3;
      [v3 setGeometryFlipped:{objc_msgSend(v10, "isGeometryFlipped")}];
      [v4 setContentsGravity:kCAGravityResizeAspect];
      [v4 setAnchorPoint:{0.5, 0.0}];
      [v4 setMasksToBounds:1];
      [v4 setFillMode:kCAFillModeBackwards];
      v5 = *&v0[v1];
      *&v0[v1] = v4;
      v6 = v4;

      v7 = [v0 layer];
      [v7 setShouldRasterize:1];

      v8 = [v0 layer];
      [v8 addSublayer:v6];

      [v0 invalidateIntrinsicContentSize];
      v9 = v6;
    }

    else
    {
      v9 = v10;
    }
  }
}

id sub_25C30(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_package] = 0;
  v4[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating] = 0;
  *&v4[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_packageLayer] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PosterGestureTutorialAnimationPackageView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v9 setUserInteractionEnabled:0];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  sub_25F48();
  sub_3398(&qword_3E810, &qword_2E108);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2E0A0;
  *(v11 + 32) = sub_296A4();
  *(v11 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_2A754();

  swift_unknownObjectRelease();

  return v9;
}

void sub_25DB4(_BYTE *a1)
{
  v2 = a1[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating];
  a1[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating] = 0;
  v3 = [a1 layer];
  [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
  v5 = v4;

  v6 = [a1 layer];
  [v6 setSpeed:0.0];

  v7 = [a1 layer];
  [v7 setTimeOffset:v5];

  sub_25F48();
  [a1 setNeedsDisplay];
  if (v2 == 1)
  {
    sub_26550();
  }
}

uint64_t sub_25F48()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_3398(&qword_3D4B0, &unk_2B590);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23[-v4];
  v6 = sub_29524();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v23[-v13];
  v15 = [v0 traitCollection];
  v16 = [v15 userInterfaceStyle];

  sub_261BC(v16, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_33E0(v5);
  }

  (*(v7 + 32))(v14, v5, v6);
  sub_268EC();
  (*(v7 + 16))(v10, v14, v6);
  v18 = sub_2A454();
  v20 = sub_26388(v10, v18, v19, 0);
  v21 = *&v0[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_package] = v20;
  v22 = v20;

  sub_25A78();
  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_261BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = "creen-Tutorial-Light";
  v4 = 0xD000000000000023;
  if (a1 != 2)
  {
    v4 = 0xD000000000000024;
    v3 = "T{CGSize=dd},N,R";
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == &dword_0 + 1)
  {
    v16._countAndFlagsBits = 0x646150692DLL;
    v16._object = 0xE500000000000000;
    sub_2A494(v16);
  }

  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v7 = qword_408A0;
  v8 = sub_2A444();

  v9 = sub_2A444();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_29504();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_29524();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v11, 1, v12);
}

id sub_26388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_294F4(__stack_chk_guard);
  v7 = v6;
  v8 = sub_2A444();

  if (a4)
  {
    v9.super.isa = sub_2A3E4().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_29524();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_294E4();

    swift_willThrow();
    v16 = sub_29524();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void sub_26550()
{
  v0[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating] = 1;
  v1 = [v0 layer];
  [v1 timeOffset];
  v3 = v2;

  v4 = [v0 layer];
  LODWORD(v5) = 1.0;
  [v4 setSpeed:v5];

  v6 = [v0 layer];
  [v6 setTimeOffset:0.0];

  v7 = [v0 layer];
  [v7 setBeginTime:0.0];

  v8 = [v0 layer];
  [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
  v10 = v9;

  v11 = [v0 layer];
  [v11 setBeginTime:v10 - v3];
}

id sub_26848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterGestureTutorialAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_268EC()
{
  result = qword_3E808;
  if (!qword_3E808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3E808);
  }

  return result;
}

__n128 sub_26944(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_269B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A2C()
{
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v0 = qword_408A0;
  v1 = sub_2A444();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = sub_2A454();
  return v3;
}

id sub_26B2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v69 = sub_29554();
  v68 = *(v69 - 8);
  v3 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29DA4();
  v81 = *(v83 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v83);
  v79 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_29E04();
  v76 = *(v77 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v77);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3398(&qword_3E818, &qword_2E268);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v66 - v12;
  v71 = sub_3398(&qword_3E820, &qword_2E270);
  v14 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v16 = &v66 - v15;
  v17 = sub_3398(&qword_3E828, &qword_2E278);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v66 - v19;
  v73 = sub_3398(&qword_3E830, &qword_2E280);
  v72 = *(v73 - 8);
  v21 = *(v72 + 64);
  __chkstk_darwin(v73);
  v23 = &v66 - v22;
  v82 = sub_3398(&qword_3E838, &qword_2E288);
  v24 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v75 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v78 = &v66 - v27;
  __chkstk_darwin(v28);
  v80 = &v66 - v29;
  v30 = swift_allocObject();
  v31 = *(v2 + 48);
  *(v30 + 48) = *(v2 + 32);
  *(v30 + 64) = v31;
  *(v30 + 80) = *(v2 + 64);
  v32 = *(v2 + 16);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v32;
  v84 = v2;
  sub_42E4(v2, &v87);
  sub_3398(&qword_3E840, &qword_2E290);
  sub_28310();
  sub_2A214();
  v33 = sub_2A2F4();
  v35 = v34;
  v36 = &v13[*(v10 + 44)];
  sub_27E34(v2, v36);
  v37 = (v36 + *(sub_3398(&qword_3E870, &qword_2E2A8) + 36));
  *v37 = v33;
  v37[1] = v35;
  v38 = *(v2 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v38;
  sub_29724();

  v40 = 1;
  if ((v87 & 1) == 0)
  {
    v40 = sub_281C0() ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40 & 1;
  sub_1B510(v13, v16, &qword_3E818, &qword_2E268);
  v43 = &v16[*(v71 + 36)];
  *v43 = KeyPath;
  v43[1] = sub_284B4;
  v43[2] = v42;
  sub_1B510(v16, v20, &qword_3E820, &qword_2E270);
  v20[*(v17 + 36)] = 1;
  v44 = v74;
  sub_29DF4();
  v45 = sub_284CC();
  sub_2A0F4();
  (*(v76 + 8))(v44, v77);
  sub_B0B0(v20, &qword_3E828, &qword_2E278);
  v46 = v39;
  v47 = *(v39 + 24);
  v87 = sub_26A2C();
  v88 = v48;
  v85 = v17;
  v86 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1D00C();
  v49 = v75;
  v50 = v73;
  sub_2A0B4();

  (*(v72 + 8))(v23, v50);
  v51 = swift_allocObject();
  v52 = *(v2 + 48);
  *(v51 + 48) = *(v2 + 32);
  *(v51 + 64) = v52;
  *(v51 + 80) = *(v2 + 64);
  v53 = *(v2 + 16);
  *(v51 + 16) = *v2;
  *(v51 + 32) = v53;
  sub_42E4(v2, &v87);
  v54 = v79;
  sub_29D94();
  v55 = v78;
  sub_29994();

  (*(v81 + 8))(v54, v83);
  sub_B0B0(v49, &qword_3E838, &qword_2E288);
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v56 = qword_408A0;
  v57 = sub_2A444();
  v58 = [v56 localizedStringForKey:v57 value:0 table:0];

  v59 = sub_2A454();
  v61 = v60;

  v87 = v59;
  v88 = v61;
  v62 = v80;
  sub_29974();

  sub_B0B0(v55, &qword_3E838, &qword_2E288);
  result = [*(v46 + 16) serverUUID];
  if (result)
  {
    v64 = result;
    v65 = v67;
    sub_29544();

    sub_29534();
    (*(v68 + 8))(v65, v69);
    sub_29964();

    return sub_B0B0(v62, &qword_3E838, &qword_2E288);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_27464()
{
  v1 = sub_29B94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 48);
  v6 = *(v0 + 40);
  v17 = v6;
  if (v18 == 1)
  {
    v7 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {

    sub_2A684();
    v8 = sub_29E94();
    sub_295A4();

    sub_29B84();
    swift_getAtKeyPath();
    sub_B0B0(&v17, &qword_3E8C0, &qword_2E338);
    (*(v2 + 8))(v5, v1);
    v6 = v16;
    if (!v16)
    {
      return;
    }
  }

  v9 = [v6 scene];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if (*v0)
      {
        v12 = v11;
        v13 = *(*(v0 + 64) + 24);

        sub_15DB4(v13, v12);
      }

      else
      {
        v14 = *(v0 + 8);
        type metadata accessor for PosterConfigurationCarouselViewModel();
        sub_28A84(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
        sub_29A04();
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_276C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29B94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_2A304();
  a2[1] = v9;
  v10 = sub_3398(&qword_3E8F0, &qword_2E350);
  sub_278B4(a1, (a2 + *(v10 + 44)));
  *(a2 + *(sub_3398(&qword_3E858, &qword_2E298) + 36)) = 0;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  if (v19 == 1)
  {
    v11 = *(&v18 + 1);
    v12 = *&v18;
  }

  else
  {

    sub_2A684();
    v13 = sub_29E94();
    sub_295A4();

    sub_29B84();
    swift_getAtKeyPath();
    sub_B0B0(&v18, &qword_3E8F8, &qword_2E358);
    (*(v5 + 8))(v8, v4);
    v12 = *v17;
    v11 = *&v17[1];
  }

  v14 = v12 / v11;
  result = sub_3398(&qword_3E840, &qword_2E290);
  v16 = a2 + *(result + 36);
  *v16 = v14;
  *(v16 + 4) = 0;
  return result;
}

uint64_t sub_278B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_2A194();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DC4();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3398(&qword_3E900, &qword_2E360);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_3398(&qword_3E908, &qword_2E368);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = sub_3398(&qword_3E910, &qword_2E370);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v43 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v44 = sub_2A134();
  v25 = *(a1 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  if (v47 == 1)
  {
    sub_29814();
    sub_29DB4();
    sub_A234(&qword_3E920, &qword_3E900, &qword_2E360);
    sub_28A84(&qword_3E928, &type metadata accessor for CircularProgressViewStyle);
    v26 = v39;
    sub_2A014();
    (*(v38 + 8))(v9, v26);
    (*(v37 + 8))(v13, v10);
    (*(v15 + 32))(v24, v18, v14);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v15 + 56))(v24, v27, 1, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  if (v46)
  {
    v29 = v40;
    v28 = v41;
    v30 = v42;
    (*(v41 + 104))(v40, enum case for Image.ResizingMode.stretch(_:), v42);
    v31 = sub_2A1B4();

    (*(v28 + 8))(v29, v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = v43;
  sub_28918(v24, v43);
  v33 = v45;
  *v45 = v44;
  v34 = sub_3398(&qword_3E918, &unk_2E3C0);
  sub_28918(v32, v33 + *(v34 + 48));
  *(v33 + *(v34 + 64)) = v31;

  sub_B0B0(v24, &qword_3E910, &qword_2E370);

  sub_B0B0(v32, &qword_3E910, &qword_2E370);
}

id sub_27E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3398(&qword_3E8D0, &qword_2E340);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (sub_281C0())
  {
    v24 = v9;
    v25 = a2;
    v13 = swift_allocObject();
    v14 = *(a1 + 48);
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = v14;
    v15 = *(a1 + 64);
    *(v13 + 80) = v15;
    v16 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_42E4(a1, v27);
    sub_29724();

    v17 = v27[0];
    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v27[0] = sub_28818;
    v27[1] = v13;
    v27[2] = KeyPath;
    v27[3] = sub_28ADC;
    v27[4] = v19;
    result = [*(v15 + 16) serverUUID];
    if (result)
    {
      v21 = result;
      sub_29544();

      sub_29534();
      (*(v5 + 8))(v8, v4);
      sub_3398(&qword_3E8D8, &qword_2E348);
      sub_28584(&qword_3E8E0, &qword_3E8D8, &qword_2E348, sub_2884C);
      sub_2A044();

      v22 = v25;
      sub_288A0(v12, v25);
      return (*(v26 + 56))(v22, 0, 1, v24);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = *(v26 + 56);

    return v23(a2, 1, 1, v9);
  }

  return result;
}

uint64_t sub_281C0()
{
  v11[3] = &type metadata for SpringBoardFeatureFlags;
  v11[4] = sub_2876C();
  LOBYTE(v11[0]) = 0;
  v1 = sub_29594();
  sub_18568(v11);
  if ((v1 & 1) == 0)
  {
    return 1;
  }

  v2 = *(v0 + 64);
  if (*(v2 + 24) != 1)
  {
    return 1;
  }

  v3 = [*(v2 + 16) providerBundleIdentifier];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_2A454();
  v7 = v6;

  if (v5 == 0xD000000000000021 && 0x800000000002E8B0 == v7)
  {

    return 0;
  }

  v9 = sub_2A914();

  result = 0;
  if ((v9 & 1) == 0)
  {
    return 1;
  }

  return result;
}

id sub_282C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_26B2C(a1);
}

unint64_t sub_28310()
{
  result = qword_3E848;
  if (!qword_3E848)
  {
    sub_360C(&qword_3E840, &qword_2E290);
    sub_2839C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E848);
  }

  return result;
}

unint64_t sub_2839C()
{
  result = qword_3E850;
  if (!qword_3E850)
  {
    sub_360C(&qword_3E858, &qword_2E298);
    sub_A234(&qword_3E860, &qword_3E868, &qword_2E2A0);
    sub_54E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E850);
  }

  return result;
}

uint64_t sub_2845C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29B44();
  *a1 = result & 1;
  return result;
}

unint64_t sub_284CC()
{
  result = qword_3E878;
  if (!qword_3E878)
  {
    sub_360C(&qword_3E828, &qword_2E278);
    sub_28584(&qword_3E880, &qword_3E820, &qword_2E270, sub_28634);
    sub_28718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E878);
  }

  return result;
}

uint64_t sub_28584(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_360C(a2, a3);
    a4();
    sub_A234(&qword_3E8A8, &qword_3E8B0, &qword_2E330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_28634()
{
  result = qword_3E888;
  if (!qword_3E888)
  {
    sub_360C(&qword_3E818, &qword_2E268);
    sub_A234(&qword_3E890, &qword_3E898, &qword_2E328);
    sub_A234(&qword_3E8A0, &qword_3E870, &qword_2E2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E888);
  }

  return result;
}

unint64_t sub_28718()
{
  result = qword_3E8B8;
  if (!qword_3E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E8B8);
  }

  return result;
}

unint64_t sub_2876C()
{
  result = qword_3E8C8;
  if (!qword_3E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E8C8);
  }

  return result;
}

uint64_t sub_287C0()
{
  v1 = *(v0 + 16);

  sub_E6C4(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1993C(*(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_2884C()
{
  result = qword_3E8E8;
  if (!qword_3E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E8E8);
  }

  return result;
}

uint64_t sub_288A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E8D0, &qword_2E340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_28918(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3E910, &qword_2E370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2898C()
{
  result = qword_3E930;
  if (!qword_3E930)
  {
    sub_360C(&qword_3E838, &qword_2E288);
    sub_360C(&qword_3E828, &qword_2E278);
    sub_284CC();
    swift_getOpaqueTypeConformance2();
    sub_28A84(&unk_3D5F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E930);
  }

  return result;
}

uint64_t sub_28A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28AEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_28B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_28BC8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_29B94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3)
    {
      v14 = a1;
    }

    else
    {
      v16 = v11;
      v17 = a1;
      sub_28FE0(a2, 0);
      sub_2A684();
      v18 = sub_29E94();
      sub_295A4();

      sub_29B84();
      swift_getAtKeyPath();
      sub_28FEC(a2, 0);
      (*(v9 + 8))(v13, v16);
      a2 = v43;
    }

    type metadata accessor for WallpaperSnapshotPairViewModel();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    sub_290A0(&qword_3E938, type metadata accessor for WallpaperSnapshotPairViewModel);

    v20 = sub_29934();
    v22 = v21;
    v24 = *(v19 + 16);
    v23 = *(v19 + 24);
    v25 = type metadata accessor for WallpaperSnapshotViewModel();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_1F900(v24, 0, v23);
    v30 = *(v19 + 16);
    v29 = *(v19 + 24);
    v31 = *(v25 + 48);
    v32 = *(v25 + 52);
    swift_allocObject();
    v33 = sub_1F900(v30, 1, v29);

    v38 = v20;
    v39 = v22;
    v40 = v28;
    v41 = v33;
    v42 = 1;
    sub_28FF8();
    sub_2904C();

    sub_29D34();
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel();
    sub_290A0(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel);
    v38 = sub_29A24();
    v39 = v15;
    sub_28FF8();
    sub_2904C();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    sub_29D34();
  }

  result = *&v43;
  v35 = v44;
  v36 = v45;
  *a4 = v43;
  *(a4 + 16) = v35;
  *(a4 + 32) = v36;
  return result;
}

__n128 sub_28F34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 32);
  *a2 = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  *(a2 + 40) = v3 & 1;
  return result;
}

__n128 sub_28F54@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = sub_2A304();
  v8 = v7;
  sub_28BC8(v3, v4, v5, v12);
  v9 = v13;
  result = v12[0];
  v11 = v12[1];
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = result;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 56) = sub_28F34;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_28FE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_28FEC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_28FF8()
{
  result = qword_3E940;
  if (!qword_3E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E940);
  }

  return result;
}

unint64_t sub_2904C()
{
  result = qword_3E948;
  if (!qword_3E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E948);
  }

  return result;
}

uint64_t sub_290A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_290EC()
{
  result = qword_3E950;
  if (!qword_3E950)
  {
    sub_360C(&qword_3E958, &qword_2E4D8);
    sub_A234(&qword_3E960, &qword_3E968, &qword_2E4E0);
    sub_A234(&qword_3E970, &qword_3E978, qword_2E4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E950);
  }

  return result;
}

uint64_t sub_291FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29874();
  sub_2A344();
  sub_29864();
  sub_29884();

  sub_2A314();
  v4 = sub_29894();

  v5 = sub_3398(&qword_3E980, &qword_2E580);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_3398(&qword_3E988, &qword_2E588);
  *(a2 + *(result + 36)) = v4;
  return result;
}

unint64_t sub_29314()
{
  result = qword_3E990;
  if (!qword_3E990)
  {
    sub_360C(&qword_3E988, &qword_2E588);
    sub_A234(&qword_3E998, &qword_3E980, &qword_2E580);
    sub_A234(&qword_3E9A0, &qword_3E9A8, &unk_2E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E990);
  }

  return result;
}

uint64_t sub_293F8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}