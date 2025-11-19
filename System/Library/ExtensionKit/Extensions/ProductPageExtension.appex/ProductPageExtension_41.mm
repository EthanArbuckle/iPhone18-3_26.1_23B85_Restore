double sub_1004B1714(double a1)
{
  sub_100083158(v1, v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076D41C();
  sub_10000CD74(v4);
  return a1;
}

uint64_t sub_1004B17A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000831B4();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1004B17FC()
{
  result = qword_1009599B0;
  if (!qword_1009599B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009599B0);
  }

  return result;
}

unint64_t sub_1004B1854()
{
  result = qword_1009599B8;
  if (!qword_1009599B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009599B8);
  }

  return result;
}

uint64_t sub_1004B1900(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppEventFormattedDatePresenter(0);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 32) = &off_1008973F8;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  v7 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v2 + v7) = v4;
}

void sub_1004B1A0C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_1004B83D0(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = sub_10077135C();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_1001776D4();
    goto LABEL_12;
  }
}

void sub_1004B1B8C()
{
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_1004B3E70(v1);
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_1004B83D0(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = sub_10077135C();

      if (v12)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    sub_1001776D4();
    goto LABEL_10;
  }
}

id sub_1004B1D04(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  result = [v5 text];
  if (result)
  {
    v7 = result;
    v8 = sub_10076FF9C();
    v10 = v9;

    if (!a2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:
    }

    v12 = sub_10077167C();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v13 = sub_10076FF6C();
LABEL_12:

  [v5 setText:v13];

  return [v2 setNeedsLayout];
}

uint64_t sub_1004B1E64()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A2080);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_10099FD58);
  sub_100012498(&v28, &unk_10099FD80);
  result = sub_100012498(&v25, &unk_10099FDA8);
  qword_10099FDD0 = 0;
  unk_10099FDD8 = 0;
  qword_10099FDE0 = v13;
  unk_10099FDE8 = v15;
  qword_10099FDF0 = v17;
  unk_10099FDF8 = v19;
  return result;
}

uint64_t sub_1004B2188()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009410F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A20E0);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_10099FE00);
  sub_100012498(&v28, &unk_10099FE28);
  result = sub_100012498(&v25, &unk_10099FE50);
  qword_10099FE78 = 0;
  unk_10099FE80 = 0;
  qword_10099FE88 = v13;
  unk_10099FE90 = v15;
  qword_10099FE98 = v17;
  unk_10099FEA0 = v19;
  return result;
}

uint64_t sub_1004B24AC()
{
  v0 = sub_1007640EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10099F660);
  (*(v1 + 16))(v3, v4, v0);
  sub_1007640CC();
  (*(v1 + 8))(v3, v0);
  v19 = sub_10076D67C();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v18);
  sub_10076D66C();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  sub_1007704BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100012498(&v21, &unk_10099FEA8);
  sub_100012498(&v18, &unk_10099FED0);
  result = sub_100012498(&v15, &unk_10099FEF8);
  qword_10099FF20 = 0;
  unk_10099FF28 = 0;
  qword_10099FF30 = v6;
  unk_10099FF38 = v8;
  qword_10099FF40 = v10;
  unk_10099FF48 = v12;
  return result;
}

double sub_1004B2674()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_10099FFB8 = &type metadata for Double;
  unk_10099FFC0 = &protocol witness table for Double;
  qword_10099FFA0 = 0x4018000000000000;
  sub_100012498(&v21, &unk_10099FF50);
  sub_100012498(&v18, &unk_10099FF78);
  qword_10099FFC8 = 0;
  unk_10099FFD0 = 0;
  unk_10099FFD8 = xmmword_1007A6B30;
  result = 6.0;
  unk_10099FFE8 = xmmword_1007A6B40;
  return result;
}

double sub_1004B2960()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_1009A0060 = &type metadata for Double;
  unk_1009A0068 = &protocol witness table for Double;
  qword_1009A0048 = 0x4018000000000000;
  sub_100012498(&v21, &unk_10099FFF8);
  sub_100012498(&v18, &unk_1009A0020);
  qword_1009A0070 = 0;
  unk_1009A0078 = 0;
  unk_1009A0080 = xmmword_1007A6B50;
  result = 3.0;
  unk_1009A0090 = xmmword_1007A6B60;
  return result;
}

double sub_1004B2C4C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_1009A0108 = &type metadata for Double;
  unk_1009A0110 = &protocol witness table for Double;
  qword_1009A00F0 = 0x4018000000000000;
  sub_100012498(&v21, &unk_1009A00A0);
  sub_100012498(&v18, &unk_1009A00C8);
  qword_1009A0118 = 0;
  unk_1009A0120 = 0;
  unk_1009A0128 = xmmword_1007A6B70;
  result = 7.0;
  unk_1009A0138 = xmmword_1007A6B50;
  return result;
}

uint64_t sub_1004B2F38()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_1009A0148);
  sub_100012498(&v28, &unk_1009A0170);
  result = sub_100012498(&v25, &unk_1009A0198);
  qword_1009A01C0 = 0;
  unk_1009A01C8 = 0;
  qword_1009A01D0 = v13;
  unk_1009A01D8 = v15;
  qword_1009A01E0 = v17;
  unk_1009A01E8 = v19;
  return result;
}

uint64_t sub_1004B325C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_1009A01F0);
  sub_100012498(&v28, &unk_1009A0218);
  result = sub_100012498(&v25, &unk_1009A0240);
  qword_1009A0268 = 0;
  unk_1009A0270 = 0;
  qword_1009A0278 = v13;
  unk_1009A0280 = v15;
  qword_1009A0288 = v17;
  unk_1009A0290 = v19;
  return result;
}

uint64_t sub_1004B3580()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009599C0);
  sub_10000A61C(v4, qword_1009599C0);
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2080);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004B3754()
{
  result = [objc_opt_self() systemRedColor];
  qword_1009599D8 = result;
  return result;
}

void sub_1004B3790()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_1009599E0 = v1;
}

char *sub_1004B381C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A2080);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(v40, &unk_1009434C0);
  sub_10000CFBC(v41, &unk_1009434C0);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  sub_100016F40(0, &qword_100942F10);
  v34 = v33;
  v35 = sub_100770E1C();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_1004B3D24()
{
  ObjectType = swift_getObjectType();
  sub_1004B1A0C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1004B3E70(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView])
      {
        sub_10076394C();
        v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1004B8C08();
        v12 = *&v1[v5];
        *&v1[v5] = v11;
        v13 = v11;

        v14 = qword_100940688;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor:qword_1009599D8];

        if (qword_100940690 != -1)
        {
          swift_once();
        }

        v16 = qword_1009599E0;
        sub_1007638DC();
        sub_1007638EC();
        [v4 addSubview:v15];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_100177368(v8);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v17)
        {
          return [v4 setNeedsLayout];
        }

        v18 = *&v4[v5];
        if (v18)
        {
          swift_beginAccess();
          v19 = v18;
          v20 = v17;
          v21 = sub_1004B83D0(v19);
          swift_endAccess();
        }

        else
        {
          v22 = v17;
        }

        v23 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = sub_10077135C();

          if (v25)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v24 + 16))
        {
          goto LABEL_22;
        }

        sub_1001776D4();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1004B413C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000A5D4(&unk_100943250);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v73[-v10];
  v12 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &qword_100959000;
    if (v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v52 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v52)
          {
            [v52 setHidden:{1, v9}];
          }

          v53 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v54 = *&v2[v53];
          if (v54)
          {
            [v54 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016F40(0, &qword_100942F10);
          v55 = sub_100770E1C();
          [v18 setTextColor:v55];

          if (qword_100941150 != -1)
          {
            swift_once();
          }

          v20 = sub_10076D3DC();
          v21 = v20;
          v22 = qword_1009A21E8;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(sub_10076394C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1004B4FD0(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016F40(0, &qword_100942F10);
        v28 = sub_100770CFC();
        [v27 setTextColor:v28];

        if (qword_100940B48 != -1)
        {
          swift_once();
        }

        v29 = sub_10076D3DC();
        sub_10000A61C(v29, qword_1009A0FD0);
        v30.super.isa = [v2 traitCollection];
        isa = v30.super.isa;
        v32 = sub_10076D3BC(v30).super.isa;

        v33 = [(objc_class *)v32 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v33)
        {
          v34 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
          [v27 setFont:v34];
        }

        else
        {
          sub_100016F40(0, &qword_100942F00);
          v71 = [v2 traitCollection];
          v34 = sub_100770B3C();

          [v27 setFont:v34];
        }

        if (v2[v12] == 5)
        {
          v72 = 2;
        }

        else
        {
          v72 = 1;
        }

        [v27 setNumberOfLines:v72];
        v14 = &qword_100959000;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016F40(0, &qword_100942F10);
          v19 = sub_100770E1C();
          [v18 setTextColor:v19];

          if (qword_1009410D8 != -1)
          {
            swift_once();
          }

          v20 = sub_10076D3DC();
          v21 = v20;
          v22 = qword_1009A2080;
LABEL_52:
          v56 = sub_10000A61C(v20, v22);
          v57 = *(v21 - 8);
          (*(v57 + 16))(v11, v56, v21);
          (*(v57 + 56))(v11, 0, 1, v21);
          sub_1007625DC();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v46 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v47 = *&v2[v46];
        if (v47)
        {
          [v47 setHidden:1];
        }

        v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        if (qword_1009410F8 != -1)
        {
          swift_once();
        }

        v49 = sub_10076D3DC();
        v50 = sub_10000A61C(v49, qword_1009A20E0);
        v51 = *(v49 - 8);
        (*(v51 + 16))(v11, v50, v49);
        (*(v51 + 56))(v11, 0, 1, v49);
        sub_1007625DC();
        sub_1004B4CD0();
        [v48 setNumberOfLines:2];
LABEL_53:
        sub_1004B506C();
        v58 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v58)
        {
LABEL_72:
          v64 = v14[326];
          swift_beginAccess();
          v65 = *&v2[v64];
          if (!v65)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v66 = v65;
          sub_1007638BC();

          (*(v5 + 8))(v7, v4);
          v67 = *&v2[v64];
          if (!v67)
          {
            goto LABEL_82;
          }

          v68 = v2[v12];
          if (v68 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v68 != 6)
            {
LABEL_80:
              v69 = v67;
              goto LABEL_81;
            }
          }

          else if (v68 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v69 = v67;
          v70 = [v2 traitCollection];
          sub_10077070C();

LABEL_81:
          sub_10076392C();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v59 = v2[v12];
        v60 = 0.0;
        if (v59 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v61 = 8.0;
            v60 = 10.0;
            if (v59 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v59 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v61 = v60;
                if (v59 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v62 = v58;
                v63 = [v2 traitCollection];
                sub_10077070C();

                goto LABEL_71;
              }

              if (v59 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v62 = v58;
              goto LABEL_71;
            }

            if (v59 != 1)
            {
              goto LABEL_70;
            }

            v61 = 0.0;
LABEL_67:
            v62 = v58;
            v60 = v61;
LABEL_71:
            [v62 _setCornerRadius:1 continuous:sub_1007704FC() maskedCorners:v60];

            goto LABEL_72;
          }
        }

        else if (v59 < 3)
        {
          goto LABEL_56;
        }

        v60 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v35 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v35)
        {
          [v35 setHidden:{1, v9}];
        }

        v36 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v37 = *&v2[v36];
        if (v37)
        {
          [v37 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016F40(0, &qword_100942F10);
        v38 = sub_100770E1C();
        [v18 setTextColor:v38];

        if (qword_100940B30 != -1)
        {
          swift_once();
        }

        v20 = sub_10076D3DC();
        v21 = v20;
        v22 = qword_1009A0F88;
        goto LABEL_52;
      }
    }

    v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v39)
    {
      [v39 setHidden:{1, v9}];
    }

    v40 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v41 = *&v2[v40];
    if (v41 || (v42 = [objc_allocWithZone(sub_10076394C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1004B4FD0(v42), (v41 = *&v2[v40]) != 0))
    {
      [v41 setHidden:0];
    }

    v43 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
    sub_100016F40(0, &qword_100942F10);
    v44 = sub_100770CFC();
    [v43 setTextColor:v44];

    if (v2[v12] == 5)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    [v43 setNumberOfLines:v45];
    goto LABEL_53;
  }
}

void sub_1004B4CD0()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    if (qword_1009406A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1009599F0;
  }

  else
  {
    if (qword_100940698 != -1)
    {
      swift_once();
    }

    v3 = &qword_1009599E8;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_1004B5570([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_1004B561C();
  }

  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_1004B4FD0(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1004B506C()
{
  v1 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_100941150 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A21E8;
        goto LABEL_28;
      }

      if (qword_100940B48 != -1)
      {
        swift_once();
      }

      v8 = sub_10076D3DC();
      sub_10000A61C(v8, qword_1009A0FD0);
      v9.super.isa = [v0 traitCollection];
      isa = v9.super.isa;
      v11 = sub_10076D3BC(v9).super.isa;

      v12 = [(objc_class *)v11 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_100016F40(0, &qword_100942F00);
      v20 = [v0 traitCollection];
      v23 = sub_100770B3C();

      [v13 setFont:v23];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
      {
        if (qword_1009410F8 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A20E0;
      }

      else
      {
        if (qword_1009410D8 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A2080;
      }

LABEL_28:
      v18 = sub_10000A61C(v5, v7);
      v19 = *(v6 - 8);
      (*(v19 + 16))(v3, v18, v6);
      (*(v19 + 56))(v3, 0, 1, v6);
      sub_1007625DC();
      return;
    }

    if (v4 == 2)
    {
      if (qword_100940B30 != -1)
      {
        swift_once();
      }

      v5 = sub_10076D3DC();
      v6 = v5;
      v7 = qword_1009A0F88;
      goto LABEL_28;
    }
  }

  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  sub_10000A61C(v14, qword_1009A1B88);
  v15.super.isa = [v0 traitCollection];
  v16 = v15.super.isa;
  v17 = sub_10076D3BC(v15).super.isa;

  v12 = [(objc_class *)v17 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_20:
  v23 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v13 setFont:v23];

LABEL_30:
  v21 = v23;
}

void sub_1004B5570(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1004B561C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_1004B57F0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = sub_100770EEC(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_1004B83D0(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = sub_10077135C();

        if (v16)
        {
LABEL_11:

          return;
        }
      }

      else if (*(v15 + 16))
      {
        goto LABEL_11;
      }

      sub_1001776D4();
      goto LABEL_11;
    }
  }
}

void sub_1004B5954(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = sub_100770EEC();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + v4);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v12)
    {
      swift_beginAccess();
      v13 = v12;
      v14 = v9;
      v15 = sub_1004B83D0(v13);
      swift_endAccess();
    }

    else
    {
      v16 = v9;
    }

    v17 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v18 = *&v9[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = sub_10077135C();

      if (v19)
      {
LABEL_18:

        return;
      }
    }

    else if (*(v18 + 16))
    {
      goto LABEL_18;
    }

    sub_1001776D4();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v20 = v10;
    sub_100177368(v10);
  }
}

void sub_1004B5B2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1FC();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075DE9C();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v14 = *&v1[v16];
  if (v14)
  {
    v17 = v14;
    if ([v17 isHidden])
    {

      v14 = 0;
    }
  }

LABEL_7:
  v103 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_100940670 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009A0148;
      }

      else
      {
        if (qword_100940678 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009A01F0;
      }
    }

    else if (v18 == 4)
    {
      if (qword_100940660 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FFF8;
    }

    else
    {
      if (qword_100940668 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009A00A0;
    }
  }

  else if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_100940650 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FEA8;
    }

    else
    {
      if (qword_100940658 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FF50;
    }
  }

  else if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
  {
    if (qword_100940648 != -1)
    {
      swift_once();
    }

    v19 = &unk_10099FE00;
  }

  else
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    v19 = &unk_10099FD58;
  }

  sub_1002ED13C(v19, v107);
  if (qword_100940680 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D9AC();
  v21 = sub_10000A61C(v20, qword_1009599C0);
  sub_10076D17C();
  v83 = v21;
  v84 = v20;
  sub_10076D40C();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v27 = sub_1007626BC();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = sub_10076394C();
    v93 = &protocol witness table for UIView;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v104 = v14;
  v85 = v13;
  if (v14)
  {
    v92 = sub_100016F40(0, &qword_1009441F0);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_100016F40(0, &qword_100952278);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1002ED13C(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  sub_10075DE6C();
  v36 = sub_10075DE7C();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    sub_10076D72C();
    sub_1002ED174(v107);
  }

  else
  {
    sub_1002ED174(v107);
    sub_10000A570(v106, &v105[21]);
  }

  v105[26] = v28;
  v105[27] = 0;
  v105[28] = 0;
  v105[29] = v94;
  v105[30] = v93;
  v105[31] = v104;
  v105[32] = 0;
  v105[33] = 0;
  v105[34] = v92;
  v105[35] = v91;
  v105[36] = v29;
  v105[37] = 0;
  v105[38] = 0;
  v105[39] = v30;
  v105[40] = v31;
  memcpy(v108, v105, sizeof(v108));
  sub_10000CD74(v106);
  [v1 bounds];
  v37 = v99;
  AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v38, v39, v40, v41);
  (*(v100 + 8))(v37, v101);
  v42 = *&v1[v95];
  v43 = v103;
  if (v42)
  {
    v44 = v1[v103];
    if (v44 > 3)
    {
      v45 = v85;
      if (v1[v103] > 5u)
      {
        if (v44 == 6)
        {
          v53 = qword_100940670;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009A0148;
        }

        else
        {
          v61 = qword_100940678;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009A01F0;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_100940660;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FFF8;
      }

      else
      {
        v57 = qword_100940668;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009A00A0;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_100940650;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_10099FEA8;
        }

        else
        {
          v59 = qword_100940658;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_10099FF50;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_100940648;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FE00;
      }

      else
      {
        v46 = qword_100940640;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FD58;
      }
    }

    sub_1002ED13C(v48, v105);
    sub_10076D17C();
    sub_10076D40C();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1002ED174(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    sub_1007638BC();

    (*(v65 + 8))(v66, v67);
  }

  v68 = v102;
  if (v1[v43] != 1)
  {

    goto LABEL_100;
  }

  if (!v104)
  {
LABEL_100:
    sub_10005AE58(v108);
    return;
  }

  [v102 bounds];
  v70 = v69 * 0.5;
  v71 = *&v1[v81];
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = v1[v43];
  if (v72 <= 2)
  {
    goto LABEL_96;
  }

  if (v1[v43] <= 5u)
  {
    if (v72 - 3 < 2)
    {
      goto LABEL_95;
    }

LABEL_96:
    v73 = v71;
    goto LABEL_97;
  }

  if (v72 != 6)
  {
    goto LABEL_96;
  }

LABEL_95:
  v73 = v71;
  v74 = [v1 traitCollection];
  sub_10077070C();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:sub_1007704FC() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v76 = *&v1[v75];
  if (v76)
  {
    swift_endAccess();
    v78 = v88;
    v77 = v89;
    v79 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.continuous(_:), v90);
    v80 = v76;
    sub_1007638BC();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_10005AE58(v108);
  swift_endAccess();
}

uint64_t sub_1004B67D8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_10075DE9C();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_100940670 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009A0148;
      }

      else
      {
        if (qword_100940678 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009A01F0;
      }
    }

    else if (v10 == 4)
    {
      if (qword_100940660 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FFF8;
    }

    else
    {
      if (qword_100940668 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009A00A0;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_100940650 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FEA8;
    }

    else
    {
      if (qword_100940658 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FF50;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style))
  {
    if (qword_100940648 != -1)
    {
      swift_once();
    }

    v11 = &unk_10099FE00;
  }

  else
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    v11 = &unk_10099FD58;
  }

  sub_1002ED13C(v11, v37);
  if (qword_100940680 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D9AC();
  sub_10000A61C(v12, qword_1009599C0);
  sub_10076D17C();
  sub_10076D40C();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel);
  v36[3] = sub_1007626BC();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = sub_10076394C();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_100016F40(0, &qword_100952278);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_100016F40(0, &qword_100952278);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1002ED13C(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  sub_10075DE6C();
  v27 = sub_10075DE7C();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    sub_10076D72C();
    sub_1002ED174(v37);
  }

  else
  {
    sub_1002ED174(v37);
    sub_10000A570(v36, &v35[21]);
  }

  v35[26] = v16;
  v35[27] = 0;
  v35[28] = 0;
  v35[29] = v31;
  v35[30] = v30;
  v35[31] = v17;
  v35[32] = 0;
  v35[33] = 0;
  v35[34] = v18;
  v35[35] = v29;
  v35[36] = v19;
  v35[37] = 0;
  v35[38] = 0;
  v35[39] = v20;
  v35[40] = v21;
  memcpy(v34, v35, 0x148uLL);
  return sub_10000CD74(v36);
}

uint64_t sub_1004B6E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076F2EC();
  __chkstk_darwin(v8 - 8);

  sub_1004B1D04(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_1004B3E70(v9);
  v10 = v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v14 = sub_10076FD4C();
    sub_10000A61C(v14, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v16._object = 0x80000001007E9C00;
    v16._countAndFlagsBits = 0xD000000000000014;
    sub_10076F2CC(v16);
    sub_10076F2AC();
    v17._countAndFlagsBits = 0xD000000000000050;
    v17._object = 0x80000001007E9C20;
    sub_10076F2CC(v17);
    sub_10076F2FC();
    sub_10076FBFC();
  }
}

void sub_1004B7114(void *a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || ((sub_10077071C() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v6 = [v2 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [a1 preferredContentSizeCategory];
  v9 = sub_10076FF9C();
  v11 = v10;
  if (v9 == sub_10076FF9C() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_10077167C();

    if ((v13 & 1) == 0)
    {
LABEL_3:
      sub_1004B506C();
    }
  }
}

uint64_t getEnumTagSinglePayload for AppPromotionFormattedDateView.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppPromotionFormattedDateView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004B7478()
{
  result = qword_100959A70;
  if (!qword_100959A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959A70);
  }

  return result;
}

uint64_t sub_1004B7514(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1004B75D4(void *a1)
{
  sub_1004B67D8(v8);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007841E0;
  *(v2 + 32) = a1;
  v3 = a1;
  v4 = sub_10076DEEC();
  sub_1004B890C(v4, v8);
  v6 = v5;

  sub_10005AE58(v8);
  return v6;
}

Swift::Int sub_1004B76B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A5D4(&qword_10094B0B0);
    v2 = sub_10077143C();
    v14 = v2;
    sub_10077131C();
    if (sub_10077138C())
    {
      sub_100016F40(0, &qword_1009441F0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1004B78A4();
        }

        v2 = v14;
        result = sub_100770EDC(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_10077138C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1004B78A4()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0B0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100770EDC(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1004B7ACC()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0C0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_10076FF9C();
      sub_10077175C();
      sub_10077008C();
      v17 = sub_1007717AC();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1004B7D48()
{
  v1 = v0;
  v2 = *v0;
  sub_10000A5D4(&qword_10094B0E0);
  result = sub_10077142C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_10077174C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1004B7F6C(uint64_t a1, void *a2)
{
  sub_100770EDC(a2[5]);
  result = sub_1007712FC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

id sub_1004B7FF0()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0B0);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1004B8140()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0C0);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1004B8290()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0E0);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1004B83D0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_10077139C();

    if (v5)
    {
      v6 = sub_1004B8568();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100016F40(0, &qword_1009441F0);
  v9 = sub_100770EDC(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_100770EEC();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004B7FF0();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1004B86D0(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1004B8568()
{
  v1 = v0;

  v2 = sub_10077135C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1004B76B4(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100770EDC(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100016F40(0, &qword_1009441F0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = sub_100770EEC();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1004B86D0(v8);
  result = sub_100770EEC();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004B86D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007712EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100770EDC(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

double sub_1004B8870(uint64_t a1)
{
  sub_1004B67D8(v5);
  sub_1002ED1A4(a1, v5);
  v3 = v2;
  sub_10005AE58(v5);
  return v3;
}

uint64_t sub_1004B890C(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v9[0] = a2[18];
  v9[1] = v7;
  sub_100770ACC();
  sub_100102958((a2 + 26), &v10);
  if (v11)
  {
    sub_100012498(&v10, v12);
    sub_10000CF78(v12, v12[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(a2 + 10, a2[13]);
      sub_1000FF02C();
      sub_10076D40C();
      (*(v4 + 8))(v6, v3);
    }

    sub_10000CD74(v12);
  }

  else
  {
    sub_10000CFBC(&v10, &unk_10094DA00);
  }

  sub_10000CF78(a2 + 21, a2[24]);
  sub_10076D2AC();
  sub_10000CF78(a2, a2[3]);
  sub_10076D42C();
  sub_10000CF78(a2 + 5, a2[8]);
  sub_1000FF02C();
  sub_10076D40C();
  (*(v4 + 8))(v6, v3);
  return sub_100770AEC();
}

void sub_1004B8C08()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_1004B83D0(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_10077135C();

      if (v11)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    sub_1001776D4();
    goto LABEL_10;
  }
}

void sub_1004B8D30()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1004B901C()
{
  v1 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v1 - 8);
  v37 = v36 - v2;
  v3 = sub_100768FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_10000A5D4(&unk_100946750);
  v7 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v9 = v36 - v8;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v39.receiver = v0;
  v39.super_class = v17;
  v36[1] = v17;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v38 = v0;
  v18 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = sub_10000A61C(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v16, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v37, 1, 1, v3);
  sub_10033350C();
  sub_10076759C();
  v21 = v38;
  sub_10076440C();
  v23 = v22;
  v25 = v24;
  (*(v7 + 8))(v9, v36[0]);
  (*(v11 + 8))(v16, v10);
  v26 = *&v21[OBJC_IVAR____TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton_button];
  [v26 frame];
  [v26 setFrame:?];
  v27 = [v26 layer];
  v28 = v27;
  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v27 setCornerRadius:{v29 * 0.5, v36[0]}];

  sub_10076422C();
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  return [v26 setCenter:{MidX, CGRectGetMidY(v41)}];
}

id sub_1004B9520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004B958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = sub_10076FF6C();
  [v4 setText:v5];

  [v4 setNumberOfLines:1];
  [v4 setLineBreakMode:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:a3];
  [v4 setFont:v6];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setTextColor:v7];

  return v4;
}

id sub_1004B96BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.none(_:), v4);
  v13 = objc_allocWithZone(sub_1007626BC());
  v14 = sub_1007626AC();
  v15 = sub_10076FF6C();
  [v14 setText:v15];

  sub_10076266C();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 secondarySystemBackgroundColor];
  [v17 setTextColor:v18];

  return v17;
}

double sub_1004B9924()
{
  v1 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_100768FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946750);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = sub_10000A61C(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_10033350C();
  sub_10076759C();
  sub_10076440C();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

double sub_1004B9CF4(double a1)
{
  sub_10076BEFC();
  sub_10076BEFC();
  return a1;
}

uint64_t sub_1004B9DC4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1004B9E0C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = sub_100770F9C();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = _swiftEmptyArrayStorage;
    v57 = a1 + 40;
    while (2)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          goto LABEL_41;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(v15 - 1);
        v18 = *v15;

        a1 = v17;
        sub_10076B8EC();
        if (v19)
        {
          break;
        }

        ++v16;
        v15 += 16;
        if (v12 == v11)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v63;
        sub_1004BB8B4(0, v14[2] + 1, 1);
        v14 = v63[0];
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_1004BB8B4((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v17;
      *(v23 + 40) = v18;
      v13 = v57;
      if (v12 != v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  a1 = v14[2];
  v11 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = sub_10077158C();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v57 = v14;
  if (v26 <= 0)
  {
    if (v26 < 0)
    {
      for (i = &result[-a1]; i; --i)
      {
        swift_beginAccess();
        a1 = *&v3[v11];
        v14 = (a1 >> 62);
        if (a1 >> 62)
        {
          if (!sub_10077158C())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_1004BDB38(a1);
        }

        v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
        *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_10000A5D4(&qword_10094E540);
        sub_10076E17C();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_10000A5D4(&qword_10094E540);
      sub_10076E15C();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      sub_10077019C();
      if (*((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      sub_10077025C();
      swift_endAccess();
      [v3 addSubview:v28];

      --v26;
    }

    while (v26);
  }

  v63[0] = *&v3[v11];
  v63[1] = 0;
  v63[2] = v57;
  v63[3] = 0;
  v64 = 0;

  v29 = sub_1004BA658();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_100016F40(0, &qword_1009641D0);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_1009406A8 != -1)
      {
        swift_once();
      }

      v35 = qword_100959AF0;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = sub_100770F1C();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      sub_10076B8EC();

      sub_10077108C();
      sub_1007710EC();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      sub_10077103C();
      v44 = [v41 tintColor];
      sub_10077104C();
      (*v55)(v58, v56, v59);
      sub_100770FAC();
      sub_100770FEC();
      v45 = v60;
      sub_10076E8AC();
      v46 = sub_10076E89C();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10077106C();
      v47 = sub_10077111C();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      sub_10077114C();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_1004BA658();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

id sub_1004BA658()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10077149C();
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

NSString sub_1004BA778()
{
  result = sub_10076FF6C();
  qword_100959AF0 = result;
  return result;
}

id sub_1004BAA24@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_1004BAA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CFBC(v7, &unk_100943200);
  }

  sub_100263BF0(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_1004BABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075D9EC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_100016BD0();
  return sub_10075D9FC();
}

void sub_1004BAC64()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_100016F40(0, &qword_100947240);

  v2 = sub_1007701EC();

  if (v2)
  {
    [v0 bounds];
    v4 = v3;
    v5 = *&v0[v1];
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v6 < 1)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = (v4 + (v6 - 1) * -10.0) / v6;
    }

    v7 = *&v0[v1];
    if (v7 >> 62)
    {
      v8 = sub_10077158C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      if (v8 == v9)
      {

        [v0 bounds];
        MinX = CGRectGetMinX(v43);
        v17 = *&v0[v1];
        if (v17 >> 62)
        {
          v18 = sub_10077158C();
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            return;
          }
        }

        if (v18 >= 1)
        {

          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = sub_10077149C();
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            [v0 bounds];
            [v21 sizeThatFits:{v22, v23}];
            [v0 bounds];
            CGRectGetMinY(v44);
            [v0 bounds];
            sub_100770A4C();
            [v21 setFrame:?];

            MinX = v4 + 10.0 + MinX;
          }

          while (v18 != v19);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v6 = sub_10077158C();
        goto LABEL_4;
      }

      [v0 bounds];
      [v11 sizeThatFits:{v12, v13}];
      v15 = v14;

      ++v9;
    }

    while (v4 >= v15);

    [v0 bounds];
    MinY = CGRectGetMinY(*&v24);
    v29 = *&v0[v1];
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        return;
      }

LABEL_28:
      if (v30 >= 1)
      {

        v31 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = sub_10077149C();
          }

          else
          {
            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          [v0 bounds];
          [v33 sizeThatFits:{v34, v35}];
          v37 = v36;
          [v0 bounds];
          v38 = CGRectGetMinX(v45);
          [v0 bounds];
          v40 = v39;
          [v0 bounds];
          sub_100770A4C();
          [v33 setFrame:?];
          v46.origin.x = v38;
          v46.origin.y = MinY;
          v46.size.width = v40;
          v46.size.height = fmax(v37, 30.0);
          MaxY = CGRectGetMaxY(v46);

          MinY = MinY + MaxY + 10.0;
        }

        while (v30 != v31);
LABEL_34:

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

    v30 = sub_10077158C();
    if (v30)
    {
      goto LABEL_28;
    }
  }
}

double sub_1004BB138(double a1, double a2)
{
  v5 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_10077158C();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = sub_10077149C();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      sub_10077113C();
      v20 = sub_10077111C();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10000CFBC(v10, &unk_10095B400);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_10014D2A4(v10, v35);
    v22 = sub_1007710DC();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10000CFBC(v10, &unk_10095B400);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10049D954(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_10049D954((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_1004BDBB0(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow()
{
  result = qword_100959B30;
  if (!qword_100959B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BB5E0()
{
  sub_1004BB680();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004BB680()
{
  if (!qword_100959B40)
  {
    sub_10000CE78(&qword_10094E548);
    sub_1004BB6F0();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_100959B40);
    }
  }
}

unint64_t sub_1004BB6F0()
{
  result = qword_10094E550;
  if (!qword_10094E550)
  {
    sub_10000CE78(&qword_10094E548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E550);
  }

  return result;
}

void *sub_1004BB754(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959238, &unk_1007A5EB0, &qword_1009425C8);
  *v3 = result;
  return result;
}

void *sub_1004BB794(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC744(a1, a2, a3, *v3, &qword_1009591C0, &unk_1007A6E60, &qword_1009591C8);
  *v3 = result;
  return result;
}

void *sub_1004BB7D4(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959198, &unk_1007A5DF0, &qword_10094CF50);
  *v3 = result;
  return result;
}

void *sub_1004BB814(void *a1, int64_t a2, char a3)
{
  result = sub_1004BBE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BB834(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &unk_10094D050, &unk_1007A6E40, &qword_100948D00);
  *v3 = result;
  return result;
}

char *sub_1004BB874(char *a1, int64_t a2, char a3)
{
  result = sub_1004BBF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BB894(char *a1, int64_t a2, char a3)
{
  result = sub_1004BC078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BB8B4(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC198(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1004BB8D4()
{

  return _swift_deallocObject(v0, 33, 7);
}

size_t sub_1004BB920(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100959B88, &unk_1007A6E18, &unk_1009567A0);
  *v3 = result;
  return result;
}

size_t sub_1004BB960(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100959B60, &unk_1007A6DF0, &qword_100959B68);
  *v3 = result;
  return result;
}

void *sub_1004BB9A0(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC2CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004BB9C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_10094E588, &unk_1007968F0, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

void *sub_1004BBA04(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBA24(char *a1, int64_t a2, char a3)
{
  result = sub_1004BC640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBA44(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC744(a1, a2, a3, *v3, &qword_1009591F8, &unk_1007B6280, &unk_100948BD8);
  *v3 = result;
  return result;
}

void *sub_1004BBA84(void *a1, int64_t a2, char a3)
{
  result = sub_1004BC878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBAA4(char *a1, int64_t a2, char a3)
{
  result = sub_1004BC9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBAC4(char *a1, int64_t a2, char a3)
{
  result = sub_1004BCAB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBAE4(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959BC8, &unk_1007A6E90, &qword_1009575A0);
  *v3 = result;
  return result;
}

char *sub_1004BBB24(char *a1, int64_t a2, char a3)
{
  result = sub_1004BC534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004BBB44(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100959B58, &unk_1007A6DE8, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

char *sub_1004BBB88(char *a1, int64_t a2, char a3)
{
  result = sub_1004BCBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004BBBA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100948210, &unk_10078A940, &qword_100948208);
  *v3 = result;
  return result;
}

char *sub_1004BBBE8(char *a1, int64_t a2, char a3)
{
  result = sub_1004BCECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC08(char *a1, int64_t a2, char a3)
{
  result = sub_1004BCFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC28(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD0F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC48(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD1F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC68(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBC88(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959260, &unk_1007A5EF0, &qword_10094AE80);
  *v3 = result;
  return result;
}

size_t sub_1004BBCC8(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100944C48, &unk_10079AFF0, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_1004BBD0C(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBD2C(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBD4C(void *a1, int64_t a2, char a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_1009591D0, &unk_1007A5E38, &unk_100953E10);
  *v3 = result;
  return result;
}

size_t sub_1004BBD8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100959BB8, &unk_1007A6E80, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

char *sub_1004BBDD0(char *a1, int64_t a2, char a3)
{
  result = sub_1004BD7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1004BBDF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_1009592C0, &unk_1007A6EC0, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

void *sub_1004BBE34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BBF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&unk_1009434B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC078(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959B50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC198(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&unk_10094C3B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC2CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_10094D7A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC400(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100952660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&unk_100943470);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC534(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100944FF0);
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

char *sub_1004BC640(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009591F0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1004BC744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000A5D4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1004BC878(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959BA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC9AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&unk_100952260);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004BCAB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BCBD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959188);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1004BCCE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5);
  v14 = *(sub_10000A5D4(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10000A5D4(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1004BCECC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_10094E568);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1004BCFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100952110);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004BD1F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959BE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD314(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD458(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959BD0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1004BD558(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BD678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000A5D4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1004BD7C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1004BD8E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1004BDB38(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10077158C();
  }

  return sub_1007714AC();
}

double sub_1004BDBB0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = sub_100770F9C();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_1004BBBE8(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    sub_10077108C();

    sub_1007710EC();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    sub_10077103C();
    v25 = [v22 tintColor];
    sub_10077104C();
    (*v63)(v67, v64, v68);
    sub_100770FAC();
    sub_100770FEC();
    v26 = v69;
    sub_10076E8AC();
    v27 = sub_10076E89C();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_10077106C();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder();
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_100409724();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      sub_10076D83C();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    sub_100770E9C();
    sub_10076D83C();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = v18[2];
    v43 = v18[3];
    if (v44 >= v43 >> 1)
    {
      sub_1004BBBE8((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    v18[2] = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = (v18 + 7);
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

UIColor sub_1004BE254()
{
  sub_1000325F0();
  result.super.isa = sub_100770E4C(1.0, 1.0, 1.0, 0.75).super.isa;
  qword_100959BE8 = result.super.isa;
  return result;
}

char *sub_1004BE298()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_1005A5DB8(0xD000000000000012, 0x80000001007E9E90, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_1009406B0;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_100959BE8];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_1004BE564()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView];
  [v0 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetMidX(v12) - v6 * 0.5;
  [v0 bounds];
  return [v2 setFrame:{v9, CGRectGetMidY(v13) - v8 * 0.5, v6, v8}];
}

id sub_1004BE764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004BE82C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_1004BE8F0(double a1)
{
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();

  return sub_1000C31A8(a1);
}

uint64_t sub_1004BEA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v4 - 8);
  v82 = &v75 - v5;
  v6 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v6 - 8);
  v84 = &v75 - v7;
  v8 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v8 - 8);
  v83 = &v75 - v9;
  v10 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v10 - 8);
  v81 = &v75 - v11;
  v12 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v12 - 8);
  v80 = &v75 - v13;
  v14 = sub_10076361C();
  __chkstk_darwin(v14 - 8);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10075FEEC();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v18 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = sub_1007611EC();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v27 - 8);
  v29 = &v75 - v28;
  v30 = sub_10076121C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076481C();
  v89 = *(v34 - 8);
  v90 = v34;
  __chkstk_darwin(v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  sub_10076C86C();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v37 = sub_10076D39C();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v38 = v93[0];
  sub_10076B7CC();
  sub_10076B85C();
  v39 = sub_10075DB7C();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v85;
  sub_10076B81C();
  v41 = v86;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_1004C0018(&qword_100942810, type metadata accessor for VideoView);
  v88 = v36;
  v42 = sub_100762EEC();
  sub_10000CFBC(v41, &unk_10094C030);
  sub_10000CFBC(v40, &unk_10094C030);
  sub_10000CFBC(v24, &unk_1009435D0);
  sub_10000CFBC(v93, &qword_100943310);
  v43 = *(v87 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_100016F40(0, &qword_1009441F0);
    v48 = v43;
    v49 = sub_100770EEC();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, enum case for CornerStyle.continuous(_:), v78);
    sub_1007638AC();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_1009602D8] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  v58 = sub_10076C87C();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v87 = v38;
    v60 = v79;
    sub_10076C85C();
    sub_1000C1B9C(v60);
    v61 = *&v43[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
    v62 = sub_10000A5D4(&qword_100945590);
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    v64 = sub_10075F78C();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    v66 = sub_1007628DC();
    v67 = v83;
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v68 = sub_10000A5D4(&unk_100946750);
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v70 = sub_10076C54C();
    v71 = v82;
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v72 = v61;
    sub_1004D0A60(v59, v72, v63, v92, 0, 0, v65, v67, v71, v69);
    sub_10000CFBC(v71, &unk_100949290);
    v72[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v72 setNeedsLayout];

    sub_10000CFBC(v69, &qword_10094F730);
    sub_10000CFBC(v67, &unk_1009492A0);
    sub_10000CFBC(v65, &unk_10094D210);
    sub_10000CFBC(v63, &unk_100946760);
  }

  else
  {
    v73 = v57;
    [v73 setHidden:1];
  }

  return (*(v89 + 8))(v88, v90);
}

uint64_t sub_1004BF628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  swift_getObjectType();
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076BEDC();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100763ADC();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D39C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v42);
  sub_10000A5D4(&unk_100942830);
  sub_10076C88C();
  result = swift_dynamicCast();
  if (result)
  {
    v35[1] = v7;
    v37 = v41;
    sub_10076C86C();
    v19 = sub_10076B84C();

    sub_10076422C();
    CGRectGetWidth(v43);
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v15 + 8))(v17, v14);
    v35[2] = v19;
    v20 = sub_10076BFCC();
    v21 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for VideoView();
      sub_1004C0018(&unk_100942840, type metadata accessor for VideoView);
      sub_100760B8C();
    }

    else
    {
      sub_100760B9C();
    }

    v24 = v39;
    v25 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView);
    if (sub_10076C87C())
    {
      if (sub_10076BB9C())
      {
        v35[0] = v20;
        v26 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v27 = v36;
        (*(v36 + 16))(v13, &v25[v26], v11);
        sub_1007639AC();
        (*(v27 + 8))(v13, v11);
        sub_10076BEEC();
        sub_10076BE9C();
        v36 = *(v38 + 1);
        (v36)(v10, v24);
        sub_10076BFCC();
        v28 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
        v29 = *&v25[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
        v38 = v25;
        v30 = v29;
        sub_10076BF7C();
        sub_10075FCCC();
        [v30 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v31 = *&v25[v28];
        sub_10076BEEC();
        v32 = sub_10076BE9C();
        (v36)(v10, v39);
        [v31 setContentMode:v32];

        v33 = *&v25[v28];
        v34 = v38;

        sub_10075FD2C();
        sub_1004C0018(&qword_100941820, &type metadata accessor for ArtworkView);
        sub_100760B8C();
      }
    }
  }

  return result;
}

id sub_1004BFC64()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_1004C0018(&qword_100959C88, type metadata accessor for VideoCardCollectionViewCell);
  sub_10076DBFC();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = [objc_opt_self() itemWithLayoutSize:v7];
  v9 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007841E0;
  *(v10 + 32) = v8;
  sub_100016F40(0, &qword_100952C70);
  v11 = v8;
  isa = sub_1007701AC().super.isa;

  v13 = [v9 verticalGroupWithLayoutSize:v7 subitems:isa];

  return v13;
}

void sub_1004BFE9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for VideoView();
    sub_1004C0018(&unk_100942840, type metadata accessor for VideoView);
    sub_100760BFC();
  }

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView);
  v5 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v7 = v4;
  v8 = v6;
  sub_10075FB6C();

  v9 = *&v4[v5];
  sub_10075FD2C();
  sub_1004C0018(&qword_100941820, &type metadata accessor for ArtworkView);
  v10 = v9;
  sub_100760BFC();
}

uint64_t sub_1004C0018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C0060(uint64_t a1, uint64_t a2)
{
  v22[2] = a1;
  v22[3] = a2;
  v2 = sub_10076BEDC();
  __chkstk_darwin(v2 - 8);
  v22[0] = sub_10076BF6C();
  v3 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_10000A5D4(&qword_100959C90);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  v12 = sub_10076BD9C();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10075D86C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D85C();
  sub_10076BD6C();
  sub_10075D83C();
  sub_10075D82C();
  sub_10075D84C();
  if (v17)
  {
    sub_10076BD7C();
    v18 = sub_10076BD2C();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_10076F7FC();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    (*(v3 + 104))(v5, enum case for Artwork.Style.unspecified(_:), v22[0]);
    sub_10076BE8C();
    v20 = sub_10076BE6C();
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  return v20;
}

uint64_t sub_1004C0434()
{
  v0 = sub_10076118C();
  v2 = v1;
  if (v1)
  {
    v17._countAndFlagsBits = 0x5F53455441445055;
    v17._object = 0xEF4E4F4953524556;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_1007622EC(v17, v19);
    sub_10000A5D4(&qword_100966CF0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100783DD0;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_1000A9040();
    *(v3 + 32) = v0;
    *(v3 + 40) = v2;
    v0 = sub_10076FFCC();
    v5 = v4;

    v6 = sub_10076117C();
    if ((v7 & 1) == 0)
    {
      v8.super.super.isa = [objc_allocWithZone(NSNumber) initWithLongLong:v6];
      isa = v8.super.super.isa;
      v10 = sub_100763CFC(v8);
      v12 = v11;

      if (v12)
      {
        sub_10000A5D4(&unk_100954470);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100784500;
        *(inited + 32) = 0x6E6F6973726576;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v0;
        *(inited + 56) = v5;
        strcpy((inited + 64), "version_size");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        *(inited + 80) = v10;
        *(inited + 88) = v12;
        v14 = sub_1000FD520(inited);
        swift_setDeallocating();
        sub_10000A5D4(&qword_100961DD0);
        swift_arrayDestroy();
        v18._object = 0x80000001007E9EB0;
        v18._countAndFlagsBits = 0xD000000000000017;
        v15._rawValue = v14;
        v0 = sub_1007622DC(v18, v15);
      }
    }
  }

  return v0;
}

uint64_t sub_1004C0640()
{
  v0 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v0 - 8);
  v22 = &v20 - v1;
  v2 = sub_10076C5DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v23 = sub_10076C5FC();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v21 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (sub_10076119C())
  {
    v15 = sub_10076C5AC();
    v20 = v5;
    v16 = v15;
    [v14 appendAttributedString:v15];

    v5 = v20;
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (sub_10076119C())
  {
    v17 = v21;
    sub_10076C60C();

    (*(v9 + 32))(v13, v17, v23);
  }

  else
  {
    (*(v9 + 104))(v13, enum case for Paragraph.Alignment.localized(_:), v23);
  }

  if (sub_10076119C())
  {
    sub_10076C5EC();

    (*(v3 + 32))(v8, v5, v2);
  }

  else
  {
    (*(v3 + 104))(v8, enum case for Paragraph.Style.standard(_:), v2);
  }

  if (sub_10076119C())
  {
    sub_10076C56C();
  }

  v18 = sub_10076F7FC();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_10076C61C();
  swift_allocObject();
  return sub_10076C59C();
}

uint64_t sub_1004C09F0(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, double a6, double a7, double a8, double a9)
{
  v145 = a5;
  v141 = a4;
  v144 = a3;
  v148 = a2;
  v15 = sub_10076C5FC();
  v142 = *(v15 - 8);
  v143 = v15;
  __chkstk_darwin(v15);
  v131 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = &v130 - v18;
  __chkstk_darwin(v19);
  v134 = &v130 - v20;
  __chkstk_darwin(v21);
  v130 = &v130 - v22;
  v23 = sub_10000A5D4(&unk_100959F50);
  __chkstk_darwin(v23 - 8);
  v136 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v146 = &v130 - v26;
  __chkstk_darwin(v27);
  v135 = &v130 - v28;
  __chkstk_darwin(v29);
  v140 = &v130 - v30;
  v31 = sub_10076997C();
  v138 = *(v31 - 8);
  v139 = v31;
  __chkstk_darwin(v31);
  v137 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10077164C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v37 - 8);
  v39 = &v130 - v38;
  v40 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v40 - 8);
  v42 = &v130 - v41;
  v43 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v43 - 8);
  v45 = &v130 - v44;
  v46 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v46 - 8);
  v48 = &v130 - v47;
  v49 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v49 - 8);
  v51 = &v130 - v50;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v147 = v9;
  v52 = *&v9[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_lockupView];
  v53 = sub_10000A5D4(&qword_100945590);
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = sub_10075F78C();
  (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
  v55 = sub_1007628DC();
  (*(*(v55 - 8) + 56))(v45, 1, 1, v55);
  v56 = sub_10000A5D4(&unk_100946750);
  (*(*(v56 - 8) + 56))(v42, 1, 1, v56);
  v57 = sub_10076C54C();
  (*(*(v57 - 8) + 56))(v39, 1, 1, v57);
  sub_1004D0A60(a1, v52, v51, v148, 0, 0, v48, v45, v39, v42);
  sub_10000CFBC(v39, &unk_100949290);
  v52[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v52 setNeedsLayout];
  sub_10000CFBC(v42, &qword_10094F730);
  sub_10000CFBC(v45, &unk_1009492A0);
  sub_10000CFBC(v48, &unk_10094D210);
  sub_10000CFBC(v51, &unk_100946760);
  v148 = sub_1004C0640();
  if (qword_1009403E8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
  v58 = v145;
  swift_getObjectType();
  sub_1000FF02C();
  sub_10076D40C();
  v59 = *(v34 + 8);
  v59(v36, v33);
  type metadata accessor for SmallLockupView();
  v60 = v58;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v61 = sub_100763ADC();
  v62 = sub_10000A61C(v61, qword_10099DDA0);
  sub_100262AD0(v62, v58);
  v63 = sub_1004C0434();
  v64 = &selRef_initWithTabBarSystemItem_tag_;
  if (!v65)
  {
    goto LABEL_8;
  }

  v66 = *&v147[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  v67 = v63;

  v133 = v67;
  v68 = v58;
  v69 = sub_10076FF6C();

  [v66 setText:v69];

  sub_10000CF78(qword_10099F8C0, qword_10099F8D8);
  sub_1000FF02C();
  sub_10076D40C();
  v59(v36, v33);
  sub_10005312C();
  if (qword_100940B58 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v70 = sub_10076D3DC();
    sub_10000A61C(v70, qword_1009A1000);
    v71 = [v68 traitCollection];
    sub_100770B3C();

    v72 = sub_10076C04C();
    v152 = v72;
    v153 = sub_1001CDE08(&qword_100943230, &type metadata accessor for Feature);
    v73 = sub_10000DB7C(&aBlock);
    (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
    sub_10076C90C();
    sub_10000CD74(&aBlock);
    v74 = v137;
    sub_10076996C();
    type metadata accessor for UpdatesLockupCollectionViewCell();
    sub_10076422C();
    sub_1001CDE08(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
    v75 = v139;
    sub_10076D2AC();
    (*(v138 + 8))(v74, v75);
    v60 = v68;
    v64 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_8:
    type metadata accessor for UpdatesLockupCollectionViewCell();
    sub_10076422C();
    CGRectGetWidth(v155);
    sub_10076422C();
    CGRectGetHeight(v156);
    v76 = sub_10076C5AC();
    v77 = v64;
    v78 = [v60 v64[274]];
    v79 = v60;
    v80 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v76];
    v81 = [v76 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v78;
    *(v82 + 32) = v80;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_1000275EC;
    *(v83 + 24) = v82;
    v153 = sub_1000ACB04;
    v154 = v83;
    aBlock = _NSConcreteStackBlock;
    v150 = 1107296256;
    v151 = sub_100026610;
    v152 = &unk_100897568;
    v84 = _Block_copy(&aBlock);
    v68 = v78;
    v85 = v80;

    [v76 enumerateAttributesInRange:0 options:v81 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

    if ((v76 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v145 = v85;
  if ((v144 & 1) == 0)
  {
    v96 = v147;
    v111 = *&v147[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
    v112 = v85;
    v113 = v146;
    sub_10076C60C();
    v115 = v142;
    v114 = v143;
    (*(v142 + 56))(v113, 0, 1, v143);
    v116 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v117 = v111[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
    v111[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 0;
    v118 = *&v111[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v119 = v112;
    [v118 setNumberOfLines:0];
    if (v117 != v111[v116])
    {
      sub_10073D75C();
    }

    v107 = v119;
    sub_10073D114(v119);
    v111[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v120 = v136;
    sub_100415F48(v146, v136);
    if ((*(v115 + 48))(v120, 1, v114) == 1)
    {
      sub_10000CFBC(v120, &unk_100959F50);
      v110 = v141;
    }

    else
    {
      v121 = v132;
      (*(v115 + 32))(v132, v120, v114);
      v122 = v131;
      (*(v115 + 16))(v131, v121, v114);
      v123 = (*(v115 + 88))(v122, v114);
      if (v123 == enum case for Paragraph.Alignment.left(_:))
      {
        v124 = 0;
        v110 = v141;
      }

      else
      {
        v110 = v141;
        if (v123 == enum case for Paragraph.Alignment.center(_:))
        {
          v124 = 1;
        }

        else if (v123 == enum case for Paragraph.Alignment.right(_:))
        {
          v124 = 2;
        }

        else if (v123 == enum case for Paragraph.Alignment.justified(_:))
        {
          v124 = 3;
        }

        else if (v123 == enum case for Paragraph.Alignment.localized(_:))
        {
          v124 = 4;
        }

        else
        {
          (*(v115 + 8))(v122, v114);
          v124 = 0;
        }
      }

      [v118 setTextAlignment:v124];
      (*(v115 + 8))(v121, v114);
    }

    [v111 setNeedsLayout];
    v108 = v146;
    goto LABEL_45;
  }

  v86 = sub_10076C57C();
  v87 = [v79 v77[274]];
  v88 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v86];
  v89 = [v86 length];
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  *(v90 + 24) = v87;
  *(v90 + 32) = v88;
  *(v90 + 40) = 1;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_100027A88;
  *(v91 + 24) = v90;
  v153 = sub_1003BE1CC;
  v154 = v91;
  aBlock = _NSConcreteStackBlock;
  v150 = 1107296256;
  v151 = sub_100026610;
  v152 = &unk_1008975E0;
  v92 = _Block_copy(&aBlock);
  v93 = v87;
  v94 = v88;

  [v86 enumerateAttributesInRange:0 options:v89 usingBlock:{0x100000, v92}];

  _Block_release(v92);
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if ((v86 & 1) == 0)
  {
    v96 = v147;
    v97 = *&v147[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
    v98 = v94;
    v99 = v140;
    sub_10076C60C();
    v101 = v142;
    v100 = v143;
    (*(v142 + 56))(v99, 0, 1, v143);
    v102 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
    v103 = v97[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
    v97[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
    v104 = *&v97[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
    v105 = *&v97[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
    v106 = v98;
    [v105 setNumberOfLines:v104];
    if (v103 != v97[v102])
    {
      sub_10073D75C();
    }

    v107 = v106;
    sub_10073D114(v106);
    v97[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 1;
    v108 = v140;
    v109 = v135;
    sub_100415F48(v140, v135);
    if ((*(v101 + 48))(v109, 1, v100) == 1)
    {
      sub_10000CFBC(v109, &unk_100959F50);
      v110 = v141;
    }

    else
    {
      v125 = v130;
      (*(v101 + 32))(v130, v109, v100);
      v126 = v134;
      (*(v101 + 16))(v134, v125, v100);
      v127 = (*(v101 + 88))(v126, v100);
      if (v127 == enum case for Paragraph.Alignment.left(_:))
      {
        v128 = 0;
        v110 = v141;
      }

      else
      {
        v110 = v141;
        if (v127 == enum case for Paragraph.Alignment.center(_:))
        {
          v128 = 1;
        }

        else if (v127 == enum case for Paragraph.Alignment.right(_:))
        {
          v128 = 2;
        }

        else if (v127 == enum case for Paragraph.Alignment.justified(_:))
        {
          v128 = 3;
        }

        else if (v127 == enum case for Paragraph.Alignment.localized(_:))
        {
          v128 = 4;
        }

        else
        {
          (*(v101 + 8))(v134, v100);
          v128 = 0;
        }
      }

      [v105 setTextAlignment:v128];
      (*(v101 + 8))(v125, v100);
    }

    [v97 setNeedsLayout];

LABEL_45:
    sub_10000CFBC(v108, &unk_100959F50);
    v96[OBJC_IVAR____TtC20ProductPageExtension31UpdatesLockupCollectionViewCell_hasSeparator] = v110 & 1;
    sub_1003E83C0();
    [v96 setNeedsLayout];
    v129 = objc_opt_self();
    [v129 begin];
    [v129 setDisableActions:1];
    [v96 layoutIfNeeded];
    [v129 commit];
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C1E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for TodayCardGrid.SizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGrid.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1004C1FB0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1004C1FC4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1004C1FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1004BB794(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 16);

    if (v6 >= 2)
    {
      break;
    }

LABEL_4:
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_1004BB794((v8 > 1), v9 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v9 + 1;
    _swiftEmptyArrayStorage[v9 + 4] = v5;
    if (v3 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v10 = v6 >> 1;
  v11 = v6 + 31;
  v12 = 32;
  while (1)
  {
    if (v12 == v11)
    {
      goto LABEL_10;
    }

    v13 = *(v5 + 16);
    if (v12 - 32 >= v13)
    {
      break;
    }

    if (v11 - 32 >= v13)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + v12);
    v15 = *(v5 + v11);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1004BDAD0(v5);
      v5 = result;
    }

    *(v5 + v12) = v15;
    *(v5 + v11) = v14;
LABEL_10:
    --v11;
    ++v12;
    if (!--v10)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_1004C2144()
{
  v1 = *v0;
  sub_10077175C();
  if ((v1 - 4) >= 3u)
  {
    sub_10077176C(2uLL);
  }

  else
  {
    v1 = qword_1007A7140[(v1 - 4)];
  }

  sub_10077176C(v1);
  return sub_1007717AC();
}

void sub_1004C21BC()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    sub_10077176C(2uLL);
  }

  else
  {
    v1 = qword_1007A7140[(v1 - 4)];
  }

  sub_10077176C(v1);
}

Swift::Int sub_1004C2218()
{
  v1 = *v0;
  sub_10077175C();
  if ((v1 - 4) >= 3u)
  {
    sub_10077176C(2uLL);
  }

  else
  {
    v1 = qword_1007A7140[(v1 - 4)];
  }

  sub_10077176C(v1);
  return sub_1007717AC();
}

BOOL sub_1004C228C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1004C22F8()
{
  result = qword_100959C98;
  if (!qword_100959C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959C98);
  }

  return result;
}

uint64_t sub_1004C234C()
{
  v0 = sub_10000A5D4(&qword_10094B620);
  sub_10000DB18(v0, qword_1009A0298);
  sub_10000A61C(v0, qword_1009A0298);
  type metadata accessor for DeviceType(0);
  return sub_10076F54C();
}

uint64_t sub_1004C23CC()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - v2;
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C21C();
  v9 = v8;
  result = (*(v5 + 8))(v7, v4);
  v11 = floor(v9);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v13 = *(v23[1] + 16);

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v13 / v12;
  v15 = v13 % v12;
  if (v15)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 0)
  {
    goto LABEL_26;
  }

  for (i = _swiftEmptyArrayStorage; v16; --v16)
  {
    if (v15 && v16 == 1)
    {
      v18 = sub_10077023C();
      *(v18 + 16) = v15;
      v19 = (v18 + 32);
      v20 = v15;
    }

    else
    {
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_22;
      }

      v18 = sub_10077023C();
      *(v18 + 16) = v12;
      v19 = (v18 + 32);
      v20 = v12;
    }

    memset(v19, 4, v20);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10049D0B4(0, i[2] + 1, 1, i);
      i = result;
    }

    v22 = i[2];
    v21 = i[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_10049D0B4((v21 > 1), v22 + 1, 1, i);
      i = result;
    }

    i[2] = v22 + 1;
    i[v22 + 4] = v18;
  }

  return i;
}

void *sub_1004C26E8()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_1009591C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100783DD0;
  *(v5 + 32) = &off_1008819B0;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_100881A00;
      }

      else
      {
        v10 = &off_1008819D8;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_10049D0B4((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1004C28B4()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = (v4 + 1) >> 1;
  v7 = v4 & 1;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v6 == 1 && v7)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_10049D0B4(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10049D0B4((v10 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_100881A50;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_10049D0B4(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v13 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        v5 = sub_10049D0B4((v13 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_100881A28;
    }

    v5[2] = v12;
    v5[v11 + 4] = v8;
    --v6;
  }

  while (v6);
  return v5;
}

void *sub_1004C2AE0(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_10000A5D4(&qword_1009591C8);
    v4 = sub_10077023C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *sub_1004C2B7C(uint64_t a1)
{
  v49 = a1;
  v43 = sub_100768BAC();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076B66C();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = sub_100768BDC();
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076F73C();
  sub_10076F70C();
  if (qword_1009406B8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A5D4(&qword_10094B620);
  sub_10000A61C(v13, qword_1009A0298);
  type metadata accessor for DeviceType(0);
  sub_10076F41C();

  v14 = v50;
  if (!v50)
  {
    v14 = ASKDeviceTypeGetCurrent();
  }

  v15 = sub_10076FF9C();
  v17 = v16;
  if (v15 == sub_10076FF9C() && v17 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_10077167C();

    v19 = v20 ^ 1;
  }

  v21 = sub_10076461C();
  v22 = sub_10077071C();

  if (v19 & 1) != 0 || (v22)
  {
    goto LABEL_15;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v48;
  if ((*(v2 + 88))(v4, v48) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v2 + 8))(v4, v24);
LABEL_15:
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v6 + 8))(v8, v5);
    v32 = v50[2];

    v33 = sub_1004C2AE0(&off_100881AC8, v32);

    return v33;
  }

  (*(v2 + 96))(v4, v24);
  v25 = v42;
  v26 = v46;
  v27 = v47;
  (*(v42 + 32))(v46, v4, v47);
  v28 = v44;
  sub_100768BCC();
  v29 = v43;
  v30 = (*(v45 + 88))(v28, v43);
  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    v31 = sub_1004C26E8();
LABEL_19:
    v33 = v31;

    (*(v25 + 8))(v26, v27);
    return v33;
  }

  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
  {
    v31 = sub_1004C28B4();
    goto LABEL_19;
  }

  v35 = enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:);
  v36 = v25;
  v37 = v30;
  sub_10076468C();
  swift_getKeyPath();
  v38 = (v36 + 8);
  sub_10076F49C();

  v23(v8, v5);
  if (v37 == v35)
  {
    v39 = v50[2];

    v33 = sub_1004C2AE0(&off_100881A78, v39);

    (*v38)(v46, v47);
  }

  else
  {
    v40 = v50[2];

    v33 = sub_1004C2AE0(&off_100881AA0, v40);

    (*v38)(v46, v47);
    (*(v45 + 8))(v44, v29);
  }

  return v33;
}

uint64_t sub_1004C322C()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (v4 < 0xA)
  {
    return *(&off_100897748 + v4);
  }

  v6 = ((v4 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  v5 = &off_100881FE8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v5 = sub_10049D0B4(0, 4, 1, &off_100881FE8);
  }

  v7 = 0;
  v8 = v6 >> 1;
  do
  {
    if (v7 % 3 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(&off_100881FE8 + v7 % 3 + 4);
    v9 = v5[2];
    v10 = v5[3];

    if (v9 >= v10 >> 1)
    {
      v5 = sub_10049D0B4((v10 > 1), v9 + 1, 1, v5);
    }

    ++v7;
    v5[2] = v9 + 1;
    v5[v9 + 4] = v6;
  }

  while (v8 != v7);
  v11 = v4 % 3;
  if (!(v4 % 3))
  {
    return v5;
  }

  v12 = *(v6 + 16);
  if (v12 < v11)
  {
    __break(1u);
LABEL_21:
    result = sub_1004BDABC(v5);
    v5 = result;
    goto LABEL_15;
  }

  if (v12 == v11)
  {
  }

  else
  {
    sub_100234708(v6, v6 + 32, 0, (2 * v11) | 1);
    v6 = v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v9 < v5[2])
  {
    v5[v9 + 4] = v6;

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1004C34C4()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v13[1] + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) >> 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v6 - 1 == v5 && (v4 & 1) != 0)
      {
        if (v5)
        {
          v9 = &off_100882098;
        }

        else
        {
          v9 = &off_100882070;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v5)
        {
          v9 = &off_100882020;
        }

        else
        {
          v9 = &off_100882048;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_9:
          v7 = sub_10049D0B4(0, v7[2] + 1, 1, v7);
        }
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_10049D0B4((v10 > 1), v11 + 1, 1, v7);
      }

      ++v5;
      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1004C36C4()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_1009591C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100783DD0;
  *(v5 + 32) = &off_1008820C0;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_1008820E8;
      }

      else
      {
        v10 = &off_100882110;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_10049D0B4((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_1004C3890()
{
  v0 = sub_10000A5D4(&unk_100946720);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v1 + 8))(v3, v0);
  v4 = *(v11[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_1009591C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100783DD0;
  *(v5 + 32) = &off_100882138;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v4 >> 1) - 1 != v6 || (v4)
      {
        if (v6)
        {
          v9 = &off_100882160;
        }

        else
        {
          v9 = &off_100882188;
        }
      }

      else if (v6)
      {
        v9 = &off_1008821D8;
      }

      else
      {
        v9 = &off_1008821B0;
      }

      if (v7 >> 1 <= v8)
      {
        v5 = sub_10049D0B4((v7 > 1), v8 + 1, 1, v5);
      }

      ++v6;
      *(v5 + 16) = v8 + 1;
      *(v5 + 8 * v8 + 32) = v9;
    }

    while (v4 >> 1 != v6);
  }

  return v5;
}

void *sub_1004C3AA0()
{
  v0 = sub_100768BAC();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076B66C();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100946720);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = sub_100768BDC();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C20C();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076C38C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C21C();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v17, v14);
  if (v19 <= 1.0)
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v50 + 8))(v6, v4);
    v35 = *(v51 + 16);

    return sub_1004C2AE0(&off_100882200, v35);
  }

  sub_10076460C();
  sub_10076C2AC();
  v20(v17, v14);
  if (qword_100940278 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v11, qword_10099F358);
  v21 = sub_10076C1BC();
  (*(v45 + 8))(v13, v11);
  v22 = v46;
  sub_10076468C();
  swift_getKeyPath();
  v23 = v47;
  sub_10076F49C();

  (*(v50 + 8))(v22, v4);
  v25 = v48;
  v24 = v49;
  if ((*(v48 + 88))(v23, v49) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v25 + 8))(v23, v24);
    return sub_1004C34C4();
  }

  (*(v25 + 96))(v23, v24);
  v26 = v41;
  v27 = v39;
  v28 = v23;
  v29 = v42;
  (*(v41 + 32))(v39, v28, v42);
  v30 = v40;
  sub_100768BCC();
  v32 = v43;
  v31 = v44;
  v33 = (*(v43 + 88))(v30, v44);
  if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    if (v21)
    {
      v34 = sub_1004C36C4();
    }

    else
    {
      v34 = sub_1004C3890();
    }
  }

  else
  {
    if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
    {
      goto LABEL_11;
    }

    if (v33 != enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:))
    {
      v37 = sub_1004C34C4();
      (*(v32 + 8))(v30, v31);
      goto LABEL_14;
    }

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v34 = sub_1004C34C4();
    }

    else
    {
      v34 = sub_1004C322C();
    }
  }

  v37 = v34;
LABEL_14:
  (*(v26 + 8))(v27, v29);
  return v37;
}

uint64_t sub_1004C4110(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    return sub_1004C23CC();
  }

  v11 = sub_10076461C();
  v12 = sub_1007706EC();

  if (v12)
  {
    v13 = sub_1004C2B7C(a1);
  }

  else
  {
    v13 = sub_1004C3AA0();
  }

  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_1004C4320(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v16 = *(v7 + 8);
  v16(v15, v6);
  v23 = v3;
  v24 = v2;
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  LODWORD(v2) = enum case for Shelf.ContentType.miniTodayCard(_:);
  sub_10000A5D4(&qword_1009591C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783DD0;
  if (a1 == v2)
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v16(v12, v6);
    v18 = *(v26 + 16);

    if (v18)
    {
      v19 = sub_10077023C();
      *(v19 + 16) = v18;
      memset((v19 + 32), 4, v18);
      *(v17 + 32) = v19;
    }

    else
    {
      *(v17 + 32) = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v16(v9, v6);
    v20 = *(v26 + 16);

    if (v20)
    {
      v21 = sub_10077023C();
      v21[2] = v20;
      memset(v21 + 4, 5, v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *(v17 + 32) = v21;
    (*(v23 + 8))(v5, v24);
  }

  return v17;
}

unint64_t sub_1004C46B8()
{
  result = qword_100959CA0;
  if (!qword_100959CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959CA0);
  }

  return result;
}

uint64_t ChartOrCategoryBrickContext.init(model:in:)(uint64_t a1)
{
  sub_10000A570(a1, v3);
  sub_100768DEC();
  return sub_10000CD74(a1);
}

uint64_t sub_1004C4780@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076D3DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1004C47EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_10076D3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1004C4864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_10076D3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1004C48DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_10076D3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1004C4954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_10076D3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1004C49CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_10076D3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1004C4A40@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100768D7C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.standard(_:))
  {
    v10 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
    a1[3] = v10;
    a1[4] = sub_1004C539C(&qword_100959CA8, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
    v11 = sub_10000DB7C(a1);
    if (qword_100941158 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D3DC();
    v13 = sub_10000A61C(v12, qword_1009A2200);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v13, v12);
    v15 = v10[5];
    if (qword_100941160 != -1)
    {
      swift_once();
    }

    v16 = sub_10000A61C(v12, qword_1009A2218);
    v14((v11 + v15), v16, v12);
    v17 = v10[6];
    if (qword_100941168 != -1)
    {
      swift_once();
    }

    v18 = sub_10000A61C(v12, qword_1009A2230);
    v14((v11 + v17), v18, v12);
    v19 = v10[7];
    if (qword_100941170 != -1)
    {
      swift_once();
    }

    v20 = sub_10000A61C(v12, qword_1009A2248);
    v14((v11 + v19), v20, v12);
    v21 = v10[8];
    if (qword_100941178 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A61C(v12, qword_1009A2260);
    v14((v11 + v21), v22, v12);
    v23 = v10[9];
    if (qword_100941180 != -1)
    {
      swift_once();
    }

    v24 = qword_1009A2278;
LABEL_29:
    v35 = sub_10000A61C(v12, v24);
    return (v14)(v11 + v23, v35, v12);
  }

  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.search(_:))
  {
    v25 = type metadata accessor for SearchChartOrCategoryBrickFontStyles(0);
    a1[3] = v25;
    a1[4] = sub_1004C539C(&qword_100959CB0, type metadata accessor for SearchChartOrCategoryBrickFontStyles);
    v11 = sub_10000DB7C(a1);
    if (qword_100941158 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D3DC();
    v26 = sub_10000A61C(v12, qword_1009A2200);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v26, v12);
    v27 = v25[5];
    if (qword_100941160 != -1)
    {
      swift_once();
    }

    v28 = sub_10000A61C(v12, qword_1009A2218);
    v14((v11 + v27), v28, v12);
    v29 = v25[6];
    if (qword_100941188 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A61C(v12, qword_1009A2290);
    v14((v11 + v29), v30, v12);
    v31 = v25[7];
    if (qword_100941190 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A61C(v12, qword_1009A22A8);
    v14((v11 + v31), v32, v12);
    v33 = v25[8];
    if (qword_100941198 != -1)
    {
      swift_once();
    }

    v34 = sub_10000A61C(v12, qword_1009A22C0);
    v14((v11 + v33), v34, v12);
    v23 = v25[9];
    if (qword_1009411A0 != -1)
    {
      swift_once();
    }

    v24 = qword_1009A22D8;
    goto LABEL_29;
  }

  v37 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
  a1[3] = v37;
  a1[4] = sub_1004C539C(&qword_100959CA8, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
  v38 = sub_10000DB7C(a1);
  if (qword_100941158 != -1)
  {
    swift_once();
  }

  v39 = sub_10076D3DC();
  v40 = sub_10000A61C(v39, qword_1009A2200);
  v41 = *(*(v39 - 8) + 16);
  v41(v38, v40, v39);
  v42 = v37[5];
  if (qword_100941160 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v39, qword_1009A2218);
  v41((v38 + v42), v43, v39);
  v44 = v37[6];
  if (qword_100941168 != -1)
  {
    swift_once();
  }

  v45 = sub_10000A61C(v39, qword_1009A2230);
  v41((v38 + v44), v45, v39);
  v46 = v37[7];
  if (qword_100941170 != -1)
  {
    swift_once();
  }

  v47 = sub_10000A61C(v39, qword_1009A2248);
  v41((v38 + v46), v47, v39);
  v48 = v37[8];
  if (qword_100941178 != -1)
  {
    swift_once();
  }

  v49 = sub_10000A61C(v39, qword_1009A2260);
  v41((v38 + v48), v49, v39);
  v50 = v37[9];
  if (qword_100941180 != -1)
  {
    swift_once();
  }

  v51 = sub_10000A61C(v39, qword_1009A2278);
  v41((v38 + v50), v51, v39);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1004C539C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C542C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076D3DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1004C54AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076D3DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1004C551C()
{
  result = sub_10076D3DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004C55B8()
{
  v33 = sub_10075DDBC();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100955860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_10000A5D4(&unk_100942870);
  v30 = swift_allocObject();
  v31 = xmmword_1007841E0;
  *(v30 + 16) = xmmword_1007841E0;
  sub_10076F73C();
  sub_10076F6FC();
  v10 = sub_10076F70C();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x80000001007E9F30;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC20ProductPageExtension27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  sub_10075DDAC();
  v14 = sub_10075DD8C();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  sub_10077140C();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_10075DDAC();
  v23 = sub_10075DD8C();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_1004C5924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004C5988()
{
  v1 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_100959E40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10076336C();
  sub_10076F87C();
  if ([*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC20ProductPageExtension17ReviewSummaryView_bodyLabel) + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton) isHidden])
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
  }

  else
  {
    sub_1004C62D4();
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
  }

  v8 = v6;
  sub_1004C6328(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_10000A5D4(&qword_10094AA68);
  sub_100166BA8();
  sub_1007712CC();
  return (*(v3 + 8))(v5, v2);
}