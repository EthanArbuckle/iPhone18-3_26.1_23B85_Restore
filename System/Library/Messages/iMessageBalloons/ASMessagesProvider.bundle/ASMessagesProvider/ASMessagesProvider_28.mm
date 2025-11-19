uint64_t sub_3237A8()
{
  v0 = sub_322B48();
  v1 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_3237F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_323828()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_323860()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_3238B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_763FD0();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_134D8(v12, &v11);

  sub_BD88(&unk_93F520);
  if (swift_dynamicCast())
  {
    sub_763FC0();
    v6 = sub_764EE0();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_BE0EC(&v11);
      sub_765330();
      v8 = *(*(a3 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      sub_759210();
      sub_14FA38();
      v9 = v8;
      sub_75A050();
    }

    else
    {
    }
  }

  return sub_BEB8(v12);
}

void sub_323A74()
{
  v0 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v11 = &v37 - v10;
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_161DC(v15, qword_99CA48);
  v16 = sub_BE38(v15, qword_99CA48);
  if (qword_93DAE0 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v3, qword_99F898);
  v18 = v4[2];
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_93DAF0 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v3, qword_99F8C8);
  v40 = v11;
  v18(v11, v19, v3);
  if (qword_93DAF8 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v3, qword_99F8E0);
  v18(v2, v20, v3);
  v21 = v4[7];
  v21(v2, 0, 1, v3);
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_BE38(v3, qword_99F910);
  v38 = v8;
  v18(v8, v22, v3);
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v3, qword_99F928);
  v18(v42, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v24 = v15[12];
  v25 = v16 + v15[11];
  v21((v16 + v24), 1, 1, v3);
  v26 = v16 + v15[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v16 + v15[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v15[23];
  *(v16 + v28) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v16 + v15[9], v39, v3);
  v29(v16 + v15[10], v40, v3);
  *v25 = 3;
  *(v25 + 8) = 0;
  v30 = v37;
  v31 = v37;
  sub_325358(v41, v16 + v24);
  v29(v16 + v15[13], v38, v3);
  v29(v16 + v15[14], v42, v3);
  *(v16 + v15[15]) = 0x4044000000000000;
  *(v16 + v15[16]) = 0x4024000000000000;
  *(v16 + v15[17]) = 0x4042000000000000;
  *(v16 + v15[18]) = 0x403E000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v32 = *v16;
  *v16 = 0;

  v33 = *(v16 + 8);
  *(v16 + 8) = 0;

  v34 = *(v16 + 16);
  *(v16 + 16) = 0;

  v35 = *(v16 + 24);
  *(v16 + 24) = 0;

  *(v16 + v15[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v16 + v28);
  *(v16 + v28) = v30;

  *(v16 + v15[24]) = 0;
}

void sub_323FA4()
{
  v0 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_161DC(v16, qword_99CA60);
  v17 = sub_BE38(v16, qword_99CA60);
  if (qword_93DAE0 != -1)
  {
    swift_once();
  }

  v42 = v9;
  v18 = sub_BE38(v3, qword_99F898);
  v19 = v4[2];
  v39 = v15;
  v19(v15, v18, v3);
  if (qword_93DB00 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v3, qword_99F8F8);
  v40 = v12;
  v19(v12, v20, v3);
  v21 = v4[7];
  v21(v2, 1, 1, v3);
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v41 = v2;
  v22 = sub_BE38(v3, qword_99F910);
  v19(v42, v22, v3);
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v3, qword_99F928);
  v19(v6, v23, v3);
  v37 = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v6;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v24 = v16[12];
  v25 = v17 + v16[11];
  v21((v17 + v24), 1, 1, v3);
  v26 = v17 + v16[21];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v17 + v16[22];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v16[23];
  *(v17 + v28) = 0;
  *(v17 + 32) = 0x4030000000000000;
  v29 = v4[4];
  v29(v17 + v16[9], v39, v3);
  v29(v17 + v16[10], v40, v3);
  *v25 = 0;
  *(v25 + 8) = 1;
  v30 = v37;
  v31 = v37;
  sub_325358(v41, v17 + v24);
  v29(v17 + v16[13], v42, v3);
  v29(v17 + v16[14], v38, v3);
  *(v17 + v16[15]) = 0x4044000000000000;
  *(v17 + v16[16]) = 0x4024000000000000;
  *(v17 + v16[17]) = 0x4045000000000000;
  *(v17 + v16[18]) = 0x403E000000000000;
  *(v17 + v16[19]) = 0x4038000000000000;
  v32 = *v17;
  *v17 = 0;

  v33 = *(v17 + 8);
  *(v17 + 8) = 0;

  v34 = *(v17 + 16);
  *(v17 + 16) = 0;

  v35 = *(v17 + 24);
  *(v17 + 24) = 0;

  *(v17 + v16[20]) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  *v27 = 0;
  *(v27 + 8) = 1;
  v36 = *(v17 + v28);
  *(v17 + v28) = v30;

  *(v17 + v16[24]) = 0;
}

void sub_324488(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_7666D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_161DC(v21, a3);
  v22 = sub_BE38(v21, a3);
  if (qword_93DAE0 != -1)
  {
    swift_once();
  }

  v47 = v14;
  v23 = sub_BE38(v8, qword_99F898);
  v24 = v9[2];
  v44 = v20;
  v24(v20, v23, v8);
  if (qword_93DAE8 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v8, qword_99F8B0);
  v45 = v17;
  v24(v17, v25, v8);
  v26 = v9[7];
  v26(v7, 1, 1, v8);
  if (qword_93DB08 != -1)
  {
    swift_once();
  }

  v46 = v7;
  v27 = sub_BE38(v8, qword_99F910);
  v24(v47, v27, v8);
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v8, qword_99F928);
  v24(v11, v28, v8);
  v42 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = v11;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v29 = v21[12];
  v30 = v22 + v21[11];
  v26((v22 + v29), 1, 1, v8);
  v31 = v22 + v21[21];
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v22 + v21[22];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v21[23];
  *(v22 + v33) = 0;
  *(v22 + 32) = 0x4030000000000000;
  v34 = v9[4];
  v34(v22 + v21[9], v44, v8);
  v34(v22 + v21[10], v45, v8);
  *v30 = 0;
  *(v30 + 8) = 1;
  v35 = v42;
  v36 = v42;
  sub_325358(v46, v22 + v29);
  v34(v22 + v21[13], v47, v8);
  v34(v22 + v21[14], v43, v8);
  *(v22 + v21[15]) = a1;
  *(v22 + v21[16]) = 0x403C000000000000;
  *(v22 + v21[17]) = 0x403A000000000000;
  *(v22 + v21[18]) = 0x4038000000000000;
  *(v22 + v21[19]) = 0x4038000000000000;
  v37 = *v22;
  *v22 = 0;

  v38 = *(v22 + 8);
  *(v22 + 8) = 0;

  v39 = *(v22 + 16);
  *(v22 + 16) = 0;

  v40 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(v22 + v21[20]) = 0x4034000000000000;
  *v31 = 0;
  *(v31 + 8) = 1;
  *v32 = 0;
  *(v32 + 8) = 1;
  v41 = *(v22 + v33);
  *(v22 + v33) = v35;

  *(v22 + v21[24]) = 0;
}

void sub_32495C()
{
  v0 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_161DC(v15, qword_99CA90);
  v16 = sub_BE38(v15, qword_99CA90);
  if (qword_93DB18 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v3, qword_99F940);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_93DB40 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v3, qword_99F9B8);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_93DB50 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_BE38(v3, qword_99F9E8);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v3, qword_99F928);
  v18(v43, v22, v3);
  sub_396E8();
  v34 = sub_769FD0();
  v35 = sub_769FD0();
  v36 = sub_769FF0();
  v37 = sub_769FF0();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x4030000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_325358(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x4042000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x4043800000000000;
  *(v16 + v15[18]) = 0x4041000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

void sub_324E5C()
{
  v0 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_7666D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_161DC(v15, qword_99CAA8);
  v16 = sub_BE38(v15, qword_99CAA8);
  if (qword_93DB18 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v3, qword_99F940);
  v18 = *(v4 + 16);
  v39 = v14;
  v18(v14, v17, v3);
  if (qword_93DB48 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v3, qword_99F9D0);
  v40 = v11;
  v18(v11, v19, v3);
  v41 = v4;
  v20 = *(v4 + 56);
  v20(v2, 1, 1, v3);
  if (qword_93DB58 != -1)
  {
    swift_once();
  }

  v42 = v2;
  v21 = sub_BE38(v3, qword_99FA00);
  v18(v8, v21, v3);
  v38 = v8;
  if (qword_93DB10 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v3, qword_99F928);
  v18(v43, v22, v3);
  sub_396E8();
  v34 = sub_769FD0();
  v35 = sub_769FD0();
  v36 = sub_769FF0();
  v37 = sub_769FF0();
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v23 = v15[12];
  v24 = v16 + v15[11];
  v20((v16 + v23), 1, 1, v3);
  v25 = v16 + v15[21];
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v16 + v15[22];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v15[23];
  *(v16 + v27) = 0;
  *(v16 + 32) = 0x402A000000000000;
  v28 = *(v41 + 32);
  v28(v16 + v15[9], v39, v3);
  v28(v16 + v15[10], v40, v3);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_325358(v42, v16 + v23);
  v28(v16 + v15[13], v38, v3);
  v28(v16 + v15[14], v43, v3);
  *(v16 + v15[15]) = 0x402A000000000000;
  *(v16 + v15[16]) = 0x4030000000000000;
  *(v16 + v15[17]) = 0x403F000000000000;
  *(v16 + v15[18]) = 0x403A000000000000;
  *(v16 + v15[19]) = 0x4038000000000000;
  v29 = *v16;
  *v16 = v34;

  v30 = *(v16 + 8);
  *(v16 + 8) = v35;

  v31 = *(v16 + 16);
  *(v16 + 16) = v36;

  v32 = *(v16 + 24);
  *(v16 + 24) = v37;

  *(v16 + v15[20]) = 0;
  *v25 = 0;
  *(v25 + 8) = 0;
  *v26 = 0;
  *(v26 + 8) = 0;
  v33 = *(v16 + v27);
  *(v16 + v27) = 0;

  *(v16 + v15[24]) = 1;
}

uint64_t sub_325358(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3253E0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760530();
  sub_161DC(v4, qword_99CAC0);
  v30 = sub_BE38(v4, qword_99CAC0);
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F208);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_766CA0();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v5, qword_99F220);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_B1B4(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_766CB0();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_B1B4(v34);
  *(&v32 + 1) = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v31);
  v18(v20, v3, v0);
  sub_766CB0();
  v19(v3, v0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  return sub_760520();
}

uint64_t sub_3258F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_7664F0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760530();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760550();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  if (qword_93CA88 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99CAC0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_titleLabel];
  v28 = sub_75BB20();
  v29 = &protocol witness table for UILabel;
  v26 = &protocol witness table for UILabel;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_definitionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_760540();
  sub_760510();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyDefinitionCollectionViewCell()
{
  result = qword_94FAE8;
  if (!qword_94FAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_325DA8()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_325E48()
{
  ObjectType = swift_getObjectType();
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  v9 = *(*(v8 - 8) + 56);
  v32 = v0;
  v9(&v0[v7], 1, 1, v8);
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99F208);
  v12 = *(v10 - 8);
  v29 = *(v12 + 16);
  v29(v6, v11, v10);
  v28 = *(v12 + 56);
  v28(v6, 0, 1, v10);
  v13 = enum case for DirectionalTextAlignment.none(_:);
  v14 = *(v2 + 104);
  v14(v31, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_75BB20();
  v27 = v1;
  v16 = v15;
  v17 = objc_allocWithZone(v15);
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v10, qword_99F220);
  v29(v6, v18, v10);
  v28(v6, 0, 1, v10);
  v14(v31, v13, v27);
  v19 = objc_allocWithZone(v16);
  v20 = sub_75BB10();
  v21 = v32;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_definitionLabel] = v20;
  v33.receiver = v21;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_titleLabel]];

  v25 = [v22 contentView];
  [v25 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider35PrivacyDefinitionCollectionViewCell_definitionLabel]];

  return v22;
}

void sub_326294(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_769240();
    v12 = v11;
    if (v10 == sub_769240() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = sub_76A950();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView] = sub_237250(v16);
  sub_75F520();
  sub_7688F0();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    sub_75F510();
  }

  v19 = &v4[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = sub_760A50();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_32B018(&qword_94FBA8, v21, type metadata accessor for ArcadeSubscribeViewController);
  v22 = v20;
  sub_760A30();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_BE70(0, &qword_93E540);
    v25 = sub_76A000();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_326804()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_326A30()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v15._object = 0x80000000007DBC20;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_75B750(v15, v16);
    v3 = sub_769210();

    [v2 setTitle:v3 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      if (!v6)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v5 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v7 insertSubview:v2 aboveSubview:v8];

      v10 = v2;
      v2 = v9;
    }

    else
    {
      v11 = [v0 view];
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v10 = v11;
      [v11 addSubview:v2];
    }
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_760A40();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_BE70(0, &qword_947490);
    v12 = sub_769460();

    if (v12 >> 62)
    {
      v13 = sub_76A860();
    }

    else
    {
      v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_BE70(0, &qword_947490);
    v17 = sub_769460();

    v18 = v17 >> 62 ? sub_76A860() : *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v11);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }

  if (sub_75A120())
  {
    sub_768DA0();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_7587B0();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  sub_7587C0();
  (*(v15 + 8))(v18, v14);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v20 + 8))(v7, v21);
    sub_75CAC0();
    v19 = sub_75CAD0();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_75CAB0();
  }

  if (sub_75A120())
  {
    sub_768D50();
    sub_768DB0();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_75F510();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7587B0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  sub_7587C0();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75A170();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_75F510();
  }

  sub_75A0A0();
  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

uint64_t sub_327F30(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  sub_7587C0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_328080(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7587B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_B170(&v13[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7587C0();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef_setSpeed_;
    if (v19)
    {
      v21 = v18;
      v61 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v59 = v17;
      v60 = v15;
      sub_769D10();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView];
      v58 = v32[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = sub_7699D0();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v67);
          [v32 bounds];
          v38 = CGRectGetWidth(v68);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = sub_769A00();

      v56 = v13;
      v57 = v11;
      if (v51)
      {
        sub_235E40(v39, v58, v62);
        sub_134D8(&v64, v65);
        sub_3287AC(v62);
      }

      else
      {
        sub_236D58(v39, v58, v62, v49);
        sub_134D8(&v63, v65);
        sub_328758(v62);
      }

      sub_34698(v65, v62);
      sub_B170(v62, v62[3]);
      sub_33964();
      sub_766700();
      (*(v4 + 8))(v7, v3);
      sub_BEB8(v62);
      v52 = v61;
      [v61 measurementsWithFitting:v1 in:{v29, v31}];
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      CGRectGetMidX(v69);
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      CGRectGetMaxY(v70);
      v53 = v52;
      sub_769D20();
      v20 = &selRef_setSpeed_;
      [v53 setFrame:?];

      v13 = v56;
      v11 = v57;
      v17 = v59;
      v15 = v60;
    }

    else
    {
      v45 = v18;
    }

    v54 = [v18 view];
    if (v54)
    {
      v55 = v54;
      [v54 v20[478]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      sub_769D10();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_328A44(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(&a1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_7587C0();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_328B70()
{
  v0 = sub_768670();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_768940();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_768CD0();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C480();
  v13[2] = sub_75C460();
  sub_75A140();
  sub_75B430();
  sub_75B410();
  sub_75B3C0();

  sub_75B410();
  sub_75B420();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_75B410();
  sub_75B3B0();

  sub_768CC0();
  swift_unknownObjectRelease();

  sub_10A2C(v23, &qword_9424A8);
  sub_10A2C(&aBlock, &qword_9424A0);
  v9 = v13[1];
  sub_768900();
  sub_768ED0();
  sub_759D10();
  sub_768930();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_32AFBC;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_23F0CC;
  *(&v20 + 1) = &unk_88DA38;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_329030()
{
  v1 = v0;
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7683E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_BE70(0, &qword_940340);
    v21 = v3;
    v19 = sub_769970();
    sub_7683D0();
    sub_768450();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_32AFD8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_88DA60;
    v17 = _Block_copy(aBlock);

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_32B018(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    v18 = v19;
    sub_769930();
    _Block_release(v17);

    (*(v21 + 8))(v5, v2);
    (*(v22 + 8))(v8, v6);
    v20(v15, v9);
  }
}

void sub_329408()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_75C560();
        if (qword_93D908 != -1)
        {
          swift_once();
        }

        v10 = sub_BE38(v0, qword_99F310);
        (*(v1 + 16))(v3, v10, v0);
        v11 = sub_75C550();
        v12 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton;
        v13 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *&v9[v12];
        }

        else
        {
          v14 = 0;
        }

        *&v9[v12] = v11;
        v15 = v11;

        sub_326A30();
      }
    }
  }
}

uint64_t sub_3295E8(uint64_t a1)
{
  v3 = sub_7683E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_768410();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_75A920();
    sub_768900();
    sub_768ED0();
    sub_BE70(0, &qword_940340);
    v12 = sub_769970();
    sub_7683D0();
    sub_75A820();
    sub_768450();
    v13 = *(v4 + 8);
    v13(v6, v3);
    sub_769940();

    return (v13)(v9, v3);
  }

  return result;
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_326A30();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  sub_769D10();
  sub_237EC8(v12, v13, a1, sub_32A654, v7, *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

uint64_t sub_3299EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_132B4(a1, v4);
    sub_328B70();

    return sub_10A2C(v4, &unk_93FBD0);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = sub_768380();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_768410();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_32A65C;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_23F0CC;
  v17 = &unk_88D908;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_32A6B8;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_23F0CC;
    v17 = &unk_88D958;
    _Block_copy(&aBlock);
    sub_32B018(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
    v12 = v5;
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    sub_768420();
    swift_allocObject();
    v13 = sub_768400();

    sub_3295E8(v13);
  }
}

void sub_329D84()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0x3FF0000000000000;
  v4[4] = sub_32B080;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_23F0CC;
  v4[3] = &unk_88DAB0;
  v3 = _Block_copy(v4);

  [v0 animateWithDuration:4 delay:v3 options:0 animations:0.15 completion:0.0];
  _Block_release(v3);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_BE70(0, &qword_9434E0);
      v4 = v0;
      v5 = sub_76A1C0();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_32B078;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_23F0CC;
        v8[3] = &unk_88D980;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_32A040()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);

      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController);
  sub_761930();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_326804();
  if ((sub_760A20() & 1) == 0)
  {
    sub_75A920();
    sub_768900();
    sub_768ED0();
    sub_75A820();
    sub_329030();
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController);
  sub_761930();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_326804();
}

void ArcadeSubscribeViewController.show(updateError:)()
{
  v1 = v0;
  sub_767230();
  sub_32B018(&qword_94FB40, 255, &type metadata accessor for ArcadeSubscribePresenter);
  swift_errorRetain();

  v2 = sub_7671F0();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_overlayViewController);
  sub_761930();

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v2;

  sub_326804();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10A2C(v5, &unk_93F980);
  }

  sub_32A88C(a1, 1, v6, v5, &type metadata accessor for Action, &qword_95AB70, &type metadata accessor for Action);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_32A61C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32A668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_32A680()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_32A6F8()
{
  result = qword_94FB48;
  if (!qword_94FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FB48);
  }

  return result;
}

uint64_t sub_32A88C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v30 = a4;
  v29 = a2;
  v8 = sub_7684B0();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_768CD0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = sub_BD88(&unk_955F90);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - v20;
  v31[3] = v26(0);
  v31[4] = sub_32B018(v27, 255, v28);
  v31[0] = a1;
  if (v29)
  {

    sub_5EEA48();
    (*(v12 + 16))(v15, v17, v11);
    sub_768490();
    sub_7688C0();
    (*(v24 + 8))(v10, v25);
    (*(v12 + 32))(v21, v17, v11);
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_BD88(&unk_93F630);
  v22 = sub_768980();

  (*(v19 + 8))(v21, v18);
  sub_BEB8(v31);
  return v22;
}

uint64_t sub_32AFE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32B018(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_32B098(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_75D2C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v15, qword_99E788);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_93CA90 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_94FBF8);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_5B8B0(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_93CA98 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_94FC10];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_32B484()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75D2C0();
  sub_161DC(v4, qword_94FBF8);
  v18 = sub_BE38(v4, qword_94FBF8);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v16 = sub_BE38(v5, qword_99E788);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_766CA0();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v19);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_75D2A0();
}

id sub_32B7E8()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_94FC10 = result;
  return result;
}

uint64_t sub_32B960()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  [v1 _setEffect:v2];

  v3 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_75D650();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = *&v0[v3];
  sub_75D650();
  MinX = CGRectGetMinX(v18);
  sub_75D650();
  [v11 setFrame:{MinX, CGRectGetMidY(v19) + v10 * -0.5, v8, v10}];

  v13 = &v0[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {

    v15(v16);
    return sub_F704(v15);
  }

  return result;
}

void sub_32BB58()
{
  [v0 overrideUserInterfaceStyle];
  sub_769240();
  v1 = sub_769210();

  v2 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView] + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = [*(*(*&v0[v2] + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v5 setCompositingFilter:v1];
}

void sub_32BCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v24);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_765B60(), , v13))
      {
        sub_762A80();
        if (swift_dynamicCastClass())
        {
          sub_762A70();
          sub_759BC0();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_1F7B64(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_75F4B0();

            (*(v8 + 8))(v10, v7);
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

    else
    {
    }
  }
}

uint64_t sub_32C100()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_32C160(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_32C1F8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_32C254(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_32C314(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_32C898;
}

void sub_32C424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v10 = a5;
  v11 = sub_765B10();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (v10 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v16 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v16 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v16 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v16 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v16 - 7) > 0xFFFFFFFC || v16 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v17 = [v5 traitCollection];
  if (v10 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v17 layoutDirection];
  sub_769BB0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_4C0AA4(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v15, enum case for TodayCard.Style.white(_:), v11);
  sub_32C798(&qword_9409B0, &type metadata accessor for TodayCard.Style);
  sub_769430();
  sub_769430();
  if (v31[2] == v31[0] && v31[3] == v31[1])
  {
    v27 = 1;
  }

  else if (sub_76A950())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v15, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = sub_762A70();
  sub_579E1C(v29, a2);

  sub_32BB58();
}

uint64_t sub_32C798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_32C7E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32C818()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32C850()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_32C8A4()
{
  v1 = v0;
  v2 = sub_75D2C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v6, qword_99E788);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_93CA90 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v2, qword_94FBF8);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_5B8B0(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_93CA98 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_94FC10];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32TodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_76A840();
  __break(1u);
}

uint64_t sub_32CB94(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_7B9D8(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_7B9D8((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_BD88(&qword_94FD18);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_32CF48(void *a1)
{
  v1 = sub_32CB94(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_3C80C();
  v4 = sub_769460();

  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = sub_76A860();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = sub_76A770();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

char *sub_32D060(double a1, double a2, double a3, double a4)
{
  v9 = sub_768C60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_32D2B0();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_768C10();
  sub_10A2C(v19, &unk_93FBD0);
  sub_10A2C(v20, &unk_93FBD0);
  sub_769E70();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_32D2B0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_32D3D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_765B20();
  sub_764340();
  if (swift_dynamicCastClass())
  {
    v12 = sub_32D2B0();
    v13 = sub_764330();
    sub_4038A0(v13, a3, a4);

    v14 = sub_7656C0();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v11, v5 + v16);
    swift_endAccess();
    sub_28026C(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_765A30();
      if (!v19)
      {
        sub_396E8();
        v19 = sub_76A060();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_32D62C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  sub_134D8(a1, v20);
  sub_BD88(&unk_93F520);
  sub_765B70();
  if (swift_dynamicCast())
  {
    sub_765B20();

    sub_764340();
    if (swift_dynamicCastClass())
    {
      v5 = sub_32D2B0();
      v6 = sub_764330();
      [v2 bounds];
      v21[3] = sub_764180();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_134D8(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        sub_764170();
        v8 = sub_764EE0();

        if (v8)
        {
          if (sub_764160())
          {
            v19 = v7;
            if (qword_93C328 != -1)
            {
              swift_once();
            }

            sub_32E2CC();
            sub_765470();
            sub_BE0EC(v20);
            sub_765330();
            v17 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
            sub_7652E0();
            sub_7591B0();
            [v9 setContentMode:sub_765140()];
            sub_75DEF0();
            sub_7591F0();
            v16 = v8;
            if (!sub_7651A0())
            {
              sub_396E8();
              sub_76A030();
            }

            sub_759070();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
            v11 = sub_759210();
            v12 = sub_14FA38();
            v13 = v10;
            v18 = v11;
            sub_75A050();

            sub_765330();
            v14 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            sub_7652E0();
            sub_7591B0();
            [v15 setContentMode:{sub_765140(), v16, v12, v18, v19}];
            sub_75DEF0();
            sub_7591F0();
            if (!sub_7651A0())
            {
              sub_396E8();
              sub_76A030();
            }

            sub_759070();
            [*&v5[v14] setContentMode:2];
            sub_75A050();
          }
        }
      }

      sub_BEB8(v21);
    }

    else
    {
    }
  }
}

void sub_32DA98()
{
  v4 = sub_32D2B0();
  v0 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v1 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759190();

  sub_759190();
  v2 = *(*&v4[v0] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_14FA38();
  v3 = v2;
  sub_75A0C0();

  sub_75A0C0();
}

void (*sub_32DD08(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_32E2C0;
}

void sub_32DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v14);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if (swift_dynamicCast())
      {
        sub_765B20();

        sub_75B070();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10A2C(v6, &unk_93FF30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_75F4B0();

          (*(v8 + 8))(v10, v7);
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
}

id sub_32E074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell()
{
  result = qword_94FD50;
  if (!qword_94FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_32E154(uint64_t a1, uint64_t a2)
{
  v4 = sub_32D2B0();
  sub_BDAF0(a1, a2);
}

uint64_t sub_32E1C0()
{
  v0 = sub_32D2B0();
  v1 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_32E208()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32E240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_32E278()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_32E2CC()
{
  result = qword_94FD60;
  if (!qword_94FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FD60);
  }

  return result;
}

uint64_t sub_32E36C()
{
  v0 = sub_75AC60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AC90();
  sub_32E508(&qword_94AF18, &type metadata accessor for HorizontalRule);
  result = sub_75C750();
  if (v7)
  {
    sub_75AC80();
    swift_getKeyPath();
    sub_75C7B0();

    v5 = v7;
    sub_75AC40();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_32E508(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_32E554(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2;
  *&v4[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CollectionLockupArtwork();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4]];

  return v18;
}

uint64_t sub_32E8F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount);
  switch(v2)
  {
    case 3:

      return sub_32ECB0(a1);
    case 2:

      return sub_32EA1C(a1);
    case 1:
      sub_759210();
      sub_766580();
      sub_B170(v4, v4[3]);
      sub_7665D0();
      return sub_BEB8(v4);
    default:

      return sub_32EFF4(a1);
  }
}

uint64_t sub_32EA1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_766880();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_766850();
  v12[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1);
  sub_759210();
  sub_766580();
  sub_B170(v13, v14);
  sub_7665D0();
  sub_766870();
  sub_BEB8(v12);
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_BEB8(v13);
  v12[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2);
  sub_766580();
  sub_B170(v13, v14);
  sub_7665D0();
  a1[3] = v3;
  a1[4] = &protocol witness table for DisjointStack;
  sub_B1B4(a1);
  sub_766870();
  sub_BEB8(v12);
  v10(v9, v3);
  return sub_BEB8(v13);
}

uint64_t sub_32ECB0@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = sub_766880();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_766850();
  v17[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1);
  sub_759210();
  sub_766580();
  sub_B170(v18, v19);
  sub_7665D0();
  sub_766870();
  sub_BEB8(v17);
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_BEB8(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2);
  sub_766580();
  sub_B170(v18, v19);
  sub_7665D0();
  sub_766870();
  sub_BEB8(v17);
  v12(v8, v2);
  sub_BEB8(v18);
  v17[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3);
  sub_766580();
  sub_B170(v18, v19);
  sub_7665D0();
  v13 = v16;
  v16[3] = v2;
  v13[4] = &protocol witness table for DisjointStack;
  sub_B1B4(v13);
  sub_766870();
  sub_BEB8(v17);
  v12(v11, v2);
  return sub_BEB8(v18);
}

uint64_t sub_32EFF4@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_766BD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v25 = sub_766950();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v22 - v12;
  sub_766930();
  sub_766BA0();
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1);
  v22 = v1;
  v29[0] = v13;
  sub_759210();
  sub_766580();
  sub_B170(v32, v33);
  sub_7665D0();
  sub_766BB0();
  sub_BEB8(v29);
  v14 = *(v3 + 8);
  v14(v5, v2);
  sub_BEB8(v32);
  v32[0] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2);
  sub_766580();
  sub_B170(v29, v30);
  sub_7665D0();
  v33 = v2;
  v34 = &protocol witness table for HorizontalStack;
  sub_B1B4(v32);
  sub_766BB0();
  sub_BEB8(v28);
  v14(v8, v2);
  sub_BEB8(v29);
  sub_766940();
  v15 = *(v27 + 8);
  v27 += 8;
  v23 = v15;
  v15(v10, v25);
  sub_BEB8(v32);
  sub_766BA0();
  v16 = v22;
  v29[0] = *(v22 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3);
  sub_766580();
  sub_B170(v32, v33);
  sub_7665D0();
  sub_766BB0();
  sub_BEB8(v29);
  v14(v5, v2);
  sub_BEB8(v32);
  v29[0] = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4);
  sub_766580();
  sub_B170(v32, v33);
  sub_7665D0();
  v30 = v2;
  v31 = &protocol witness table for HorizontalStack;
  sub_B1B4(v29);
  sub_766BB0();
  sub_BEB8(v28);
  v14(v8, v2);
  sub_BEB8(v32);
  v17 = v25;
  v33 = v25;
  v34 = &protocol witness table for VerticalStack;
  sub_B1B4(v32);
  v18 = v26;
  sub_766940();
  v23(v18, v17);
  sub_BEB8(v29);
  sub_767280();
  v19 = sub_7672A0();
  v20 = v24;
  v24[3] = v19;
  v20[4] = &protocol witness table for Center;
  sub_B1B4(v20);
  return sub_7672B0();
}

id sub_32F528(unint64_t a1, char *a2)
{
  v27 = a2;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v26 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_765240();
  v6 = *(v25 - 8);
  *&v7 = __chkstk_darwin(v25).n128_u64[0];
  v24 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 setNeedsLayout];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v10)
  {
    do
    {
      v11 = 0;
      v20 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4];
      v22 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3];
      v19 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2];
      v21 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1];
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = a1 & 0xC000000000000001;
      v23 = (v6 + 8);
      while (v29)
      {
        sub_76A770();
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }

LABEL_9:
        if (v11 > 1)
        {
          v13 = v22;
          if (v11 == 2 || (v13 = v20, v11 == 3))
          {
LABEL_15:
            v14 = *v13;
            v15 = v24;
            sub_765250();
            v16 = sub_765210();
            (*v23)(v15, v25);
            sub_765330();
            sub_7652E0();
            sub_7591B0();
            v17 = v14;
            [v17 setContentMode:sub_765140()];
            sub_75DEF0();
            sub_7591F0();
            if (!sub_7651A0())
            {
              sub_396E8();
              sub_76A030();
            }

            sub_759070();
            [v17 setContentMode:v16];

            v6 = sub_759210();
            sub_14FA38();
            v2 = v27;
            sub_75A050();
          }
        }

        else
        {
          v13 = v21;
          if (!v11)
          {
            goto LABEL_15;
          }

          v13 = v19;
          if (v11 == 1)
          {
            goto LABEL_15;
          }
        }

        ++v11;
        if (v12 == v10)
        {
          return result;
        }
      }

      if (v11 >= *(v28 + 16))
      {
        goto LABEL_20;
      }

      v12 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_76A860();
      v10 = result;
    }

    while (result);
  }

  return result;
}

id sub_32F890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionLockupArtwork();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_32F954()
{
  sub_32E8F4(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

uint64_t sub_32FA44(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_766840();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v12 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v13 = *(v8 + 104);
  (v13)(v11, enum case for DisjointStack.EdgePosition.anchored(_:), v7, v9);
  sub_766830();
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  *v11 = a1;
  v13(v11, v12, v7);
  return sub_766800();
}

void sub_32FC04()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon1;
  sub_759210();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon2;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon3;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_icon4;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23CollectionLockupArtwork_iconCount) = 0;
  sub_76A840();
  __break(1u);
}

char *sub_32FCFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = sub_760AD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label;
  if (qword_93D4D0 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99E680);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(sub_75BB20());
  *&v4[v13] = sub_75BB10();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = sub_769210();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_3300B4()
{
  v1 = sub_76A920();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_705B8(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    sub_769F80();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    sub_769D20();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  sub_769D20();
  return [v37 setFrame:?];
}

double sub_330640(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  sub_75D650();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_3307C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_330868()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_label;
  if (qword_93D4D0 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99E680);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_330B24()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765390();
  sub_330CA8(&qword_94FDF8, &type metadata accessor for Artwork);
  result = sub_75C750();
  if (v5[1])
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    (*(v1 + 8))(v3, v0);
    sub_765260();
    sub_765260();
  }

  return result;
}

uint64_t sub_330CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_330D1C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  v8 = sub_BE38(v7, qword_99FE00);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_B1B4(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_330E08(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v7 = sub_766CA0();
  v8 = sub_BE38(v7, qword_99FDE8);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_B1B4(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_330EF4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  sub_769BD0();
  v26 = sub_769210();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_3312A4()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell();
  v64.receiver = v0;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, "layoutSubviews");
  v7 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v60 = v9;
  v61 = v8;
  v58 = v11;
  v59 = v10;

  v63 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_93CAB8 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CAE0, qword_99CAF8);
    sub_33964();
    sub_766700();
    v16 = v20;

    (*(v3 + 8))(v5, v2);
  }

  v21 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    v25 = v22;
    [v25 frame];
    v13 = v26;
    v23 = v27;
    if (qword_93CAB0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_94FE50, qword_94FE68);
    sub_33964();
    sub_766700();
    v24 = v28;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_93CAA0 != -1)
  {
    swift_once();
  }

  v57 = v13;
  v62 = v14;
  sub_B170(qword_94FE00, qword_94FE18);
  sub_33964();
  sub_766700();
  v30 = v29;
  v31 = *(v3 + 8);
  v31(v5, v2);
  if (qword_93CAA8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_94FE28, qword_94FE40);
  sub_33964();
  sub_766700();
  v33 = v32;
  v31(v5, v2);
  v55 = v15;
  v56 = v16;
  v54 = v15 + v16 + v23 + v24 + v30 + v33;
  v34 = v61;
  v65.origin.x = v61;
  v49 = v24;
  v35 = v23;
  v52 = v23;
  v37 = v59;
  v36 = v60;
  v65.origin.y = v60;
  v65.size.width = v59;
  v38 = v58;
  v65.size.height = v58;
  MinX = CGRectGetMinX(v65);
  v51 = MinX;
  v66.origin.x = v34;
  v66.origin.y = v36;
  v66.size.width = v37;
  v66.size.height = v38;
  v40 = v30 + CGRectGetMinY(v66);
  v53 = v40;
  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v37;
  v67.size.height = v38;
  v50 = CGRectGetMinX(v67);
  v68.origin.x = MinX;
  v68.origin.y = v40;
  v41 = v57;
  v68.size.width = v57;
  v68.size.height = v35;
  v42 = v49 + CGRectGetMaxY(v68);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v37;
  v69.size.height = v38;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v37;
  v70.size.height = v38;
  v44 = CGRectGetHeight(v70) - v54;
  v71.origin.x = v34;
  v71.origin.y = v36;
  v71.size.width = v37;
  v71.size.height = v38;
  v45 = CGRectGetMinX(v71);
  v46 = v50;
  v72.origin.x = v50;
  v72.origin.y = v42;
  v72.size.width = Width;
  v72.size.height = v44;
  v47 = v56 + CGRectGetMaxY(v72);
  [*&v1[v21] setFrame:{v51, v53, v41, v52}];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v46, v42, Width, v44}];
  return [*&v1[v63] setFrame:{v45, v47, v62, v55}];
}

uint64_t sub_331874()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_88DC60;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_3319B0()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = sub_75A310();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_76A860();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_76A770();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = sub_7650D0();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_331AFC(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell();
  sub_769BD0();
  v4 = sub_769210();

  isa = sub_757550().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_4FD578();

  return v7;
}

void sub_332090(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v3)
  {

    v4 = sub_7575C0();
    v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        v6 = *(v5 + 8 * v4 + 32);

LABEL_6:
        v7 = sub_7575C0();
        v3(v6, v7);
        sub_F704(v3);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v6 = sub_76A770();

    goto LABEL_6;
  }

LABEL_7:
  isa = sub_757550().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_3323A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell()
{
  result = qword_94FEA8;
  if (!qword_94FEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_332520()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_3325FC(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v94 = a6;
  v96 = a3;
  v95 = a2;
  v89 = sub_76A920();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = sub_758720();
  v92 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_766690();
  v90 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v25 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (a1 >> 62);
  v88 = v9;
  v87 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v100 = sub_76A860();
  }

  else
  {
    v100 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v29 = 0;
  v99 = a1;
  v98 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v100 == v29)
    {
      break;
    }

    if (v98)
    {
      sub_76A770();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = sub_7650D0();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  sub_7596B0();
  sub_6C14C(v95, v91);
  if (v27)
  {
    v31 = sub_76A860();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v86 = a5;
  v85 = a4;
  if (v31 < 1)
  {
    sub_75A300();
    v45 = v92;
    v46 = ObjectType;
    v47 = (*(v92 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v90;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_93C250 == -1)
        {
LABEL_46:
          v49 = v97;
          v50 = sub_BE38(v97, qword_99A2D8);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        sub_7666A0();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v96;
        if (sub_75A310() & 1) != 0 && (sub_7665E0())
        {
          if (sub_7665E0())
          {
            (*(v33 + 16))(v27, a1, v97);
          }

          else
          {
            sub_766620();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v97);
          sub_7665E0();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        sub_7699B0();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        sub_7699B0();

        sub_766660();
        sub_766660();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v97;
        v54(v27, v97);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    sub_7666A0();
    goto LABEL_38;
  }

  v32 = v90;
  v33 = v100;
  if (!v100)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v100 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v92 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v98)
    {
      sub_76A770();
    }

    else
    {
    }

    v42 = v96;
    v43 = sub_75A310();
    sub_765260();
    sub_7666A0();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v92)(v21, v24, v97);
      sub_7665E0();
    }

    else if (sub_7665E0())
    {
      (*v92)(v21, v24, v97);
    }

    else
    {
      sub_766620();
    }

    v44 = [v42 traitCollection];
    sub_7699B0();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    sub_7699B0();

    sub_766660();
    sub_766660();
    v39 = v38;

    v40 = *v35;
    v41 = v97;
    (*v35)(v21, v97);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v100;
  }

  while (v100 != v34);
LABEL_49:
  sub_BD88(&qword_9419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = v36;
  v101 = inited;
  v57 = v85;
  v58 = v89;
  v59 = v88;
  v60 = v87;
  v61 = v86;
  if (v85 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_77E280;
    *(v62 + 32) = v57;
    if (qword_93CAB0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_94FE50, qword_94FE68);
    sub_33964();
    sub_766700();
    v64 = v63;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v64;
    sub_10A0FC(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_77E280;
    *(v65 + 32) = v61;
    if (qword_93CAB8 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CAE0, qword_99CAF8);
    sub_33964();
    sub_766700();
    v67 = v66;
    (*(v59 + 8))(v60, v58);
    *(v65 + 40) = v67;
    sub_10A0FC(v65);
  }

  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_77E280;
  if (qword_93CAA0 != -1)
  {
    swift_once();
  }

  sub_B170(qword_94FE00, qword_94FE18);
  sub_33964();
  v69 = v96;
  sub_766700();
  v71 = v70;
  v72 = *(v59 + 8);
  v72(v60, v58);
  *(v68 + 32) = v71;
  if (qword_93CAA8 != -1)
  {
    swift_once();
  }

  sub_B170(qword_94FE28, qword_94FE40);
  sub_33964();
  sub_766700();
  v74 = v73;
  v72(v60, v58);
  *(v68 + 40) = v74;
  sub_10A0FC(v68);
  [v69 pageMarginInsets];
  v75 = *(v101 + 16);
  if (v75)
  {
    if (v75 <= 3)
    {
      v76 = 0;
      v77 = 0.0;
LABEL_68:
      v80 = v75 - v76;
      v81 = (v101 + 8 * v76 + 32);
      do
      {
        v82 = *v81++;
        v77 = v77 + v82;
        --v80;
      }

      while (v80);
      goto LABEL_70;
    }

    v76 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    v78 = (v101 + 48);
    v77 = 0.0;
    v79 = v75 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v77 + *(v78 - 2) + *(v78 - 1) + *v78 + v78[1];
      v78 += 4;
      v79 -= 4;
    }

    while (v79);
    if (v75 != v76)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_161D14(v91);

  return v94;
}

uint64_t sub_3334B0(uint64_t a1)
{
  v2 = v1;
  sub_134D8(a1, v28);
  sub_BD88(&unk_93F520);
  sub_7596B0();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v5 = swift_allocObject();
      *(v5 + 16) = sub_10DC0C(_swiftEmptyArrayStorage);
      *(v5 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v5 + 32) = &off_88DC60;
      swift_unknownObjectWeakAssign();
      *&v2[v4] = v5;

      v6 = *&v2[v4];
      if (v6)
      {
        *(v6 + 32) = &off_88DC60;
        swift_unknownObjectWeakAssign();
      }

      v7 = sub_7596A0();
      if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform] || (, v8 = sub_75A310(), , (v8 & 1) == 0))
      {
LABEL_20:
        v12 = 0;
        goto LABEL_21;
      }

      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
      {
        v11 = 0;
        do
        {
          v12 = i != v11;
          if (i == v11)
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            sub_76A770();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v11 >= *(v9 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v11, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v13 = sub_7650D0();

          ++v11;
        }

        while ((v13 & 1) == 0);
LABEL_21:

        v14 = [v2 traitCollection];
        sub_7699B0();

        if (!*&v2[v4])
        {
          break;
        }

        v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v17 = sub_60406C(v16, v12);
        v18 = v17;
        v27 = v15;
        v26 = *(v15 + 16);
        if (!v26)
        {
LABEL_35:
        }

        v19 = 0;
        v9 = v17 & 0xFFFFFFFFFFFFFF8;
        v20 = (v27 + 48);
        v24 = v17 & 0xC000000000000001;
        v25 = v17 >> 62;
        while (v19 < *(v27 + 16))
        {
          v4 = *(v20 - 2);
          v21 = *(v20 - 1);
          v22 = *v20;
          if (v25)
          {
            if (v19 == sub_76A860())
            {
              goto LABEL_35;
            }
          }

          else if (v19 == *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_35;
          }

          if (v24)
          {

            sub_76A770();
          }

          else
          {
            if (v19 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_39;
            }
          }

          v2 = v19 + 1;
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v23 = swift_allocObject();
          swift_weakInit();
          v7 = swift_allocObject();
          *(v7 + 16) = v12;
          *(v7 + 24) = v23;
          *(v7 + 32) = v4;
          *(v7 + 40) = v21;
          *(v7 + 48) = v22;
          *(v7 + 56) = v19;

          sub_75A040();

          sub_10A2C(v28, &unk_9443A0);

          v20 += 3;
          v19 = v2;
          if (v26 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }

  return result;
}

void sub_3338EC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_333A24(objc_class *a1, uint64_t a2)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView);
  sub_BD88(&qword_95B250);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77E280;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  sub_757540();
  isa = sub_757550().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v15 = sub_759180();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      sub_7591D0(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

uint64_t sub_333BDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_333C14()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_333C68()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_4;
    }
  }

  else if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  return sub_76A860();
}

void sub_333D10(void *a1)
{
  v2 = v1;
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  sub_7596B0();

  sub_6C14C(v16, v13);

  v17 = sub_7575C0();
  v18 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork);
  v29 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_76A770();
LABEL_8:
  sub_765260();
  sub_7666A0();

  v19 = sub_3319B0();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v29;
  if (v22)
  {
    if (sub_7665E0())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      sub_766620();
    }
  }

  else
  {
    (*(v29 + 16))(v7, v10, v4);
    sub_7665E0();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  sub_7699B0();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  sub_7699B0();

  sub_766660();
  sub_766660();

  swift_unknownObjectRelease();
  v27 = *(v29 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_161D14(v13);
}

unint64_t sub_3341AC()
{
  v1 = v0;
  type metadata accessor for ScreenshotCollectionViewCell();
  v2 = swift_dynamicCastClassUnconditional();
  result = sub_7575C0();
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_76A770();

    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);

LABEL_5:
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_4FD578();

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 16);

    v9 = sub_60D5C0(v5, v8);

    if (v9)
    {
      v10 = *(*(v2 + v6) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v11 = v9;
      v12 = v10;
      v13 = sub_759180();

      if (v13 && (sub_BE70(0, &qword_947630), v14 = v11, v15 = sub_76A1C0(), v14, v13, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(*(v2 + v6) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v17 = sub_759180();
        v19 = v17;
        if (v17)
        {
        }

        v21.is_nil = v19 == 0;
        v21.value.super.isa = v9;
        sub_7591D0(v21, v18);
      }
    }
  }
}

void sub_334420(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_334524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v30 = a1;
  v31 = a3;
  v33 = a10;
  v34 = a6;
  v35 = sub_7572E0();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_945000);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = *(v17 + 16);
  v21(&v30 - v19, a5, v16, v18);
  type metadata accessor for BoolPreferencesDebugSetting();
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 56) = v30;
  *(v22 + 64) = a2;
  *(v22 + 72) = v23;
  *(v22 + 80) = a4;
  *(v22 + 88) = v32;
  (v21)(v22 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v20, v16);
  v24 = (v22 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  v25 = v33;
  *v24 = v34;
  v24[1] = v25;

  swift_unknownObjectRetain();

  sub_7572D0();
  v26 = sub_7572B0();
  v28 = v27;
  (*(v13 + 8))(v15, v35);
  v36 = v26;
  v37 = v28;
  sub_76A6E0();
  (*(v17 + 8))(v20, v16);
  return v22;
}

char *sub_334788(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView;
  sub_BE70(0, &qword_93E540);
  v14 = sub_76A000();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_1A4998(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell()
{
  result = qword_94FEE0;
  if (!qword_94FEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_334D4C(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_93C5F0 != -1)
      {
        swift_once();
      }

      v30 = qword_9482F8;
      v31 = [qword_9482F8 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      }

      else
      {
        v33 = qword_93C5E8;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_7666D0();
        v35 = sub_BE38(v34, qword_9482E0);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        sub_766B00();
        sub_766B20();
        sub_766B10();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10A2C(v20, &unk_93E530);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

uint64_t sub_3350E0()
{
  sub_F704(*(v0 + 32));
  sub_F704(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_335128()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_335188(1);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_335188(char a1)
{
  v2 = v1;
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77B6C0;
  sub_335880(*(v1 + 32), a1);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_335A28(*(v1 + 40), a1);
  v36 = v4;
  v6 = *(v1 + 48);
  if (v6 && (*(v1 + 72) & 1) == 0)
  {
    v7 = v6;
    sub_336C70(v7, a1 & 1);
    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v4 = v36;
  }

  v8 = *(v1 + 64);
  sub_BE70(0, &qword_960F00);
  if (sub_769490())
  {
    if (v8 >> 62)
    {
      sub_BE70(0, &qword_93E550);

      v35 = sub_76A850();

      v8 = v35;
    }

    else
    {

      sub_76A960();
      sub_BE70(0, &qword_93E550);
    }

    sub_335BE4(v8, a1 & 1);

    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v4 = v36;
  }

  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = *(v2 + 96);
    v11 = v9;
    sub_335DA4(v11, a1 & 1, v10);
    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v4 = v36;
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = *(v2 + 24);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_336E4C(v14, v15, a1 & 1);
      sub_769440();
      if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v4 = v36;
    }

    else
    {
      v16 = v12;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 88);
    v18 = swift_unknownObjectRetain();
    sub_336FF8(v18, v17, a1 & 1);
    swift_unknownObjectRelease();
    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    swift_unknownObjectRelease();
    v4 = v36;
  }

  if (v12)
  {
    ObjectType = swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20 && *(*(*&v12[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1 && !*(v2 + 24) && (*(v2 + 72) & 1) == 0)
    {
      v21 = v20;
      v22 = *(v20 + 8);
      v23 = *(v22 + 160);
      v24 = v12;
      v25 = v23(ObjectType, v22);
      if (v25 != 7)
      {
        if (v25 == 6)
        {
          sub_337308(v24, v21, a1 & 1);
          goto LABEL_37;
        }

        if (v25 == 4)
        {
          sub_337168(v24, v21, a1 & 1);
LABEL_37:
          sub_769440();
          if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          v4 = v36;
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    v26 = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && (*(v27 + 160))(v26, v27) == 4 && (v29 = swift_getObjectType(), (v30 = swift_conformsToProtocol2()) != 0) && (*(v30 + 32))(v29, v30))
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = (*(v32 + 16))(v33, v32);
      swift_unknownObjectRelease();
      sub_337530(v34, a1 & 1);
      sub_769440();
      if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      return v36;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_335824()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_335188(0);
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_335880(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0;
    v7 = [v5 initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
    v8 = 0.0;
  }

  else
  {
    v7 = [v5 initWithDuration:0 controlPoint1:0.14 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    v8 = 0.3;
    v6 = 0x3FC5C28F5C28F5C3;
  }

  v9 = v7;
  [a1 setAlpha:v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v15[4] = sub_337BB8;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_23F0CC;
  v15[3] = &unk_88E198;
  v11 = _Block_copy(v15);
  v12 = a1;

  [v9 addAnimations:v11];

  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  result = 0.0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 16) = v9;
  *(v13 + 24) = v6;
  return result;
}

void *sub_335A28(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0.15;
    v7 = 0.46;
    v8 = 0.8;
  }

  else
  {
    v6 = 0.36;
    v7 = 0.2;
    v8 = 0.21;
  }

  v9 = [v5 initWithDuration:0 controlPoint1:v6 controlPoint2:v7 animations:{0.0, v8, 1.0}];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a2 & 1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v19[4] = sub_337B60;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_23F0CC;
  v19[3] = &unk_88E120;
  v12 = _Block_copy(v19);
  v13 = v9;
  v14 = a1;

  [v13 addAnimations:v12];

  _Block_release(v12);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[2] = v13;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  *(v16 + 32) = v2;
  v15[4] = sub_337BA8;
  v15[5] = v16;
  v17 = v14;
  return v15;
}

void *sub_335BE4(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v12[4] = sub_337C5C;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_23F0CC;
  v12[3] = &unk_88DD60;
  v7 = _Block_copy(v12);

  [v5 addAnimations:v7];
  _Block_release(v7);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = 0x3FB999999999999ALL;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  *(v9 + 32) = v2;
  v8[4] = sub_3377A4;
  v8[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v2;
  v8[6] = sub_3377B0;
  v8[7] = v10;
  swift_bridgeObjectRetain_n();
  return v8;
}

uint64_t sub_335DA4(void *a1, char a2, void *a3)
{
  v7 = 0.0;
  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.17 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a2 & 1) == 0)
  {
    v7 = 0.1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v3;
  v22[4] = sub_337814;
  v22[5] = v9;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_23F0CC;
  v22[3] = &unk_88DE00;
  v10 = _Block_copy(v22);
  v11 = v8;
  v12 = a1;
  v13 = a3;

  [v11 addAnimations:v10];

  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13;
  *(v15 + 40) = v3;
  *(v14 + 32) = sub_337864;
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v14 + 48) = sub_3378B4;
  *(v14 + 56) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v17;
  v20 = v18;
  return v14;
}

uint64_t sub_335FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_76A770();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = *(v6 + 32);
      if (v8)
      {

        v8(v9);

        sub_F704(v8);
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t sub_336130(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_76A770();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [*(v5 + 16) startAnimationAfterDelay:*(v5 + 24)];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_336230(void *a1, char a2)
{
  if (a2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_3362C4(void *a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 50.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_3363B0(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = sub_76A770();
        }

        else
        {
          if (j >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_13;
          }

          v5 = *(a2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:0.0];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }
}

void sub_33648C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      if (a2)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_76A770();
        }

        else
        {
          if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v6 setAlpha:v5];

        ++v4;
        if (v8 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v9 = a2;
      v10 = sub_76A860();
      a2 = v9;
      v3 = v10;
    }

    while (v10);
  }
}

void sub_336584(id a1, char a2, id a3)
{
  if (a2)
  {
    if ([a3 userInterfaceIdiom] == &dword_0 + 1)
    {
      v5 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a1 _setContinuousCornerRadius:v5];
  }

  else
  {
    [a1 _setContinuousCornerRadius:20.0];
    if (sub_7699E0())
    {
      v6 = [a1 layer];
      [v6 setMaskedCorners:15];
    }
  }
}

void sub_336680(char a1, id a2, void *a3)
{
  if (a1)
  {
    [a2 _setContinuousCornerRadius:20.0];
    [a2 setClipsToBounds:1];
    if ([a3 horizontalSizeClass] != &dword_0 + 2)
    {
      return;
    }

    v5 = 3;
    goto LABEL_11;
  }

  [a2 _continuousCornerRadius];
  if (v6 == 0.0)
  {
    if ([a3 userInterfaceIdiom] == &dword_0 + 1)
    {
      v7 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a2 _setContinuousCornerRadius:v7];
    [a2 setClipsToBounds:1];
  }

  if (sub_7699D0())
  {
    v5 = 15;
LABEL_11:
    v8 = [a2 layer];
    [v8 setMaskedCorners:v5];
  }
}

void sub_3367C4(char a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = 1;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v3 = v5;
    v4 = 0;
  }

  v6 = v3;
  sub_B1F40(v4);
}

id sub_336868(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
  if (v5)
  {
    v6 = 1.0;
    if (a3)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }

  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView) setAlpha:v7];
  v8 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v8)
  {
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer);

  return [v10 setAlpha:v7];
}

id sub_336940(id result, uint64_t a2)
{
  if (!result)
  {
    v19 = v3;
    v20 = v2;
    v9 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      v10 = v9;
      [v10 alpha];
      [v10 setHidden:v11 == 0.0];
    }

    v12 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView);
    [v12 alpha];
    [v12 setHidden:v13 == 0.0];
    v14 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v14)
    {
      v15 = v14;
      [v15 alpha];
      [v15 setHidden:v16 == 0.0];
    }

    v17 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer);
    [v17 alpha];

    return [v17 setHidden:v18 == 0.0];
  }

  return result;
}

id sub_336A50(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
  v6 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
  if (v6)
  {
    v7 = 0.0;
    if (a3)
    {
      v7 = 1.0;
    }

    [v6 setAlpha:v7];
    v8 = *(a1 + v5);
    if (v8)
    {
      [v8 setHidden:0];
    }
  }

  v9 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView);
  if (a3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView) setAlpha:v10];
  [v9 setHidden:0];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer;
  v12 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v12)
  {
    v13 = (a3 & 1) != 0 ? 1.0 : 0.0;
    [v12 setAlpha:v13];
    v14 = *(a1 + v11);
    if (v14)
    {
      [v14 setHidden:0];
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer);
  [v15 setAlpha:v10];

  return [v15 setHidden:0];
}

id *sub_336B84()
{

  sub_13238((v0 + 10));

  return v0;
}

uint64_t sub_336BF4()
{
  sub_336B84();

  return swift_deallocClassInstance();
}

void *sub_336C70(void *a1, char a2)
{
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v5 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.15 controlPoint2:0.46 animations:{0.0, 0.8, 1.0}];
    v7 = 0.9;
  }

  else
  {
    v7 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.36 controlPoint2:0.2 animations:{0.0, 0.21, 1.0}];
    v5 = 0.9;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v16[4] = sub_337C2C;
  v16[5] = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_23F0CC;
  v16[3] = &unk_88DCE8;
  v9 = _Block_copy(v16);
  v10 = v6;
  v11 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = v10;
  v12[3] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v5;
  v12[4] = sub_337714;
  v12[5] = v13;
  v14 = v11;
  return v12;
}

uint64_t sub_336E4C(void *a1, void *a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a3 & 1) == 0)
  {
    v6 = 0.1;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a1;
  v17[4] = sub_337914;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_23F0CC;
  v17[3] = &unk_88DEA0;
  v9 = _Block_copy(v17);
  v10 = v7;
  v11 = a2;
  v12 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 16) = v10;
  *(v13 + 24) = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v11;
  *(v13 + 32) = sub_3379B4;
  *(v13 + 40) = v14;
  v15 = v11;
  return v13;
}

double sub_336FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_7699D0())
  {
    v6 = 0.62;
  }

  else
  {
    v6 = 0.61;
  }

  if (sub_7699D0())
  {
    v7 = 0.8;
  }

  else
  {
    v7 = 0.84;
  }

  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 dampingRatio:v6 animations:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v13[4] = sub_337A10;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_23F0CC;
  v13[3] = &unk_88DF18;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain();

  [v8 addAnimations:v10];
  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v8;
  *(v11 + 24) = 0;
  return result;
}

uint64_t sub_337168(void *a1, uint64_t a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.2 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v15[4] = sub_337A54;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_23F0CC;
  v15[3] = &unk_88DF68;
  v9 = _Block_copy(v15);
  v10 = a1;

  [v7 addAnimations:v9];
  _Block_release(v9);
  if (a3)
  {
    v6 = 0.3;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = a2;
  *(v11 + 32) = sub_337A88;
  *(v11 + 40) = v12;
  v13 = v10;
  return v11;
}

void *sub_337308(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v21 = sub_337AE4;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_23F0CC;
  v20 = &unk_88DFE0;
  v8 = _Block_copy(&v17);
  v9 = a1;

  [v6 addAnimations:v8];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v21 = sub_337AF0;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_19EE34;
  v20 = &unk_88E030;
  v11 = _Block_copy(&v17);
  v12 = v9;

  [v6 addCompletion:v11];
  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[2] = v6;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v13[4] = sub_337AF8;
  v13[5] = v14;
  v15 = v12;
  return v13;
}

uint64_t sub_337530(void *a1, char a2)
{
  v4 = 0.1;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13[4] = sub_337B3C;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_23F0CC;
  v13[3] = &unk_88E0A8;
  v7 = _Block_copy(v13);
  v8 = a1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v9 + 32) = sub_17D510;
  *(v9 + 40) = v10;
  v11 = v8;
  return v9;
}

uint64_t sub_3376C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3376FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_337734()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_33776C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3377D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_337824()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_337874()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_3378B4()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 32);
    if (sub_7699D0())
    {

      [v1 _setContinuousCornerRadius:0.0];
    }
  }
}

id sub_337914()
{
  v1 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (*(v0 + 16))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha:v2];

  return [v1 setAlpha:v3];
}

uint64_t sub_33797C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_3379B4()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) setAlpha:0.0];
  }

  return result;
}

uint64_t sub_3379D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_337A1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_337A54()
{
  if (*(v0 + 16) == 1)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer) setAlpha:1.0];
  }

  return result;
}

uint64_t sub_337AAC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_337B04()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_337B3C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_337B70()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_337BB8()
{
  v1 = 0.3;
  if (!*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

char *sub_337C60(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_337EC4()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void (*sub_337F40(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_337FE8;
}

void sub_337FE8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_338AF0(&qword_93F500, type metadata accessor for VideoView);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_2630C();
        v10 = v6;
        v11 = sub_76A1C0();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v18 = v3;
    sub_1F92A8(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_940578 + 8) = &off_891CF8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_338AF0(&qword_93F500, type metadata accessor for VideoView);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_2630C();
        v15 = v6;
        v16 = sub_76A1C0();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v21 = *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v22 = v3;
    sub_1F92A8(v21);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        *(v23 + qword_940578 + 8) = &off_891CF8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_338440(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_9405A0) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_3385FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell()
{
  result = qword_950120;
  if (!qword_950120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3386D4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_3387AC(uint64_t **a1))()
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
  v2[4] = sub_337F40(v2);
  return sub_21028;
}

uint64_t sub_33881C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_338870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_3388DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_338978(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_2630C();
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_338AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_338B9C(uint64_t a1)
{
  sub_503E74(a1);
  result = sub_503E64();
  if (result)
  {
    *(v1 + qword_99CB88) = 1;
  }

  return result;
}

uint64_t sub_338BCC()
{
  sub_BD88(&qword_93F1E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77E280;
  *(v0 + 32) = sub_503178();
  *(v0 + 40) = v1;
  v2 = sub_339474();
  v3 = sub_33A2E4(&qword_9494C8, type metadata accessor for UberedCollectionElementsObserver);
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_338C88(uint64_t a1)
{
  v2 = sub_BD88(&qword_9501D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_5036CC(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 96))(v5, v2);
  sub_339518();
}

void sub_338DDC()
{
  v1 = sub_BD88(&qword_963790);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_764930();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_BD88(&qword_93FF08);
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v36 - v16;
  v18 = [v0 view];
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

LABEL_18:
    __break(1u);
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v21 & 1) == 0)
  {
    v22 = qword_9593C8;
    swift_beginAccess();
    v23 = *&v0[v22];
    if (v23)
    {
      v24 = v23;
      sub_767A90();
      v25 = sub_7678E0();
      (*(v14 + 8))(v17, v13);
      if (v25 < 1)
      {
      }

      else
      {
        sub_762D50();
        v26 = sub_BD88(&unk_94F1F0);
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v3, 1, v26) == 1)
        {

          sub_10A2C(v3, &qword_963790);
        }

        else
        {
          swift_getKeyPath();
          sub_768750();

          (*(v27 + 8))(v3, v26);
          v29 = v37;
          v28 = v38;
          (*(v37 + 32))(v12, v9, v38);
          (*(v29 + 16))(v6, v12, v28);
          v30 = (*(v29 + 88))(v6, v28);
          if (v30 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v30 == enum case for Shelf.ContentType.upsellBreakout(_:) || v30 == enum case for Shelf.ContentType.heroCarousel(_:) || v30 == enum case for Shelf.ContentType.uber(_:) || v30 == enum case for Shelf.ContentType.mediaPageHeader(_:))
          {
            sub_BD88(&unk_941A18);
            v32 = sub_757640();
            v33 = *(v32 - 8);
            v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_77B6D0;
            sub_7575B0();
            sub_1A275C(v35);
            swift_setDeallocating();
            (*(v33 + 8))(v35 + v34, v32);
            swift_deallocClassInstance();

            (*(v29 + 8))(v12, v28);
          }

          else
          {

            v31 = *(v29 + 8);
            v31(v12, v28);
            v31(v6, v28);
          }
        }
      }
    }
  }
}

uint64_t sub_339350()
{
  *(sub_339474() + 24) = 1;
}

uint64_t sub_339380()
{
  *(sub_339474() + 24) = 0;
}

uint64_t sub_3393AC()
{
  v1 = qword_950140;
  if (*(v0 + qword_950140))
  {
    v2 = *(v0 + qword_950140);
  }

  else
  {
    v3 = type metadata accessor for BaseGenericDiffablePageViewController();
    v2 = sub_2295A4(v3, &off_88E2A8);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_339474()
{
  v1 = qword_950150;
  if (*(v0 + qword_950150))
  {
    v2 = *(v0 + qword_950150);
  }

  else
  {
    sub_3393AC();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_339518()
{
  v1 = v0;
  v2 = sub_756F10();
  __chkstk_darwin(v2 - 8);
  v3 = sub_BD88(&qword_93F428);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_7594A0();
  type metadata accessor for BaseGenericDiffablePageViewController();
  sub_229D44(v6);
  sub_7594B0();
  if (v7)
  {
    if ((sub_7594A0() & 0x80) != 0)
    {
      if ((sub_7594A0() & 0x80) != 0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      v19 = [v1 navigationItem];
      sub_BD88(&qword_940F40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77B6D0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v12 = objc_opt_self();
      v13 = NSForegroundColorAttributeName;
      v14 = [v12 labelColor];
      v15 = [v14 colorWithAlphaComponent:v10];

      *(inited + 64) = sub_396E8();
      *(inited + 40) = v15;
      sub_10D028(inited);
      swift_setDeallocating();
      sub_10A2C(inited + 32, qword_940F50);
      sub_756F30();
      sub_756EC0();
      v16 = sub_756EB0();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      v17 = v19;
      sub_7698C0();
    }

    else
    {
      v8 = [v1 navigationItem];
      v9 = sub_769210();

      [v8 setTitle:v9];
    }

    if (sub_7594A0() & 2) != 0 && (sub_71DFF0())
    {
      v18 = [v1 navigationItem];
      sub_27CCF4();
    }
  }
}

uint64_t sub_33986C(uint64_t a1)
{
  v2 = sub_7570A0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_61B4C(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50);
  sub_50774(&v9[*(v19 + 48)], v18);
  sub_75F250();
  v20 = *(v4 + 48);
  sub_50690(v15, v6);
  sub_50690(v18, &v6[v20]);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_50690(v6, v12);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_33A2E4(&qword_947410, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_7691C0();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10A2C(v15, &unk_93FD30);
      sub_10A2C(v18, &unk_93FD30);
      v27(v12, v2);
      sub_10A2C(v6, &unk_93FD30);
      return v23 & 1;
    }

    sub_10A2C(v15, &unk_93FD30);
    sub_10A2C(v18, &unk_93FD30);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30);
  sub_10A2C(v18, &unk_93FD30);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30);
  v23 = 1;
  return v23 & 1;
}

id sub_339D08()
{
  v1 = type metadata accessor for BaseGenericDiffablePageViewController();
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  result = sub_22967C(v1, &off_88E2A8);
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) & 1) == 0)
  {
    [v0 additionalSafeAreaInsets];
    return [v0 setAdditionalSafeAreaInsets:20.0];
  }

  return result;
}

void sub_339DB8(void *a1)
{
  v1 = a1;
  sub_339D08();
}

void sub_339E20(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_339F70(a3, &selRef_viewWillAppear_, sub_22970C);
}

id sub_339E90(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_339EFC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_339E90(a3);
}

uint64_t sub_339F70(char a1, SEL *a2, uint64_t (*a3)(objc_class *, _UNKNOWN **))
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v9.receiver = v3;
  v9.super_class = v7;
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7, &off_88E2A8);
}

void sub_33A008(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_339F70(a3, &selRef_viewWillDisappear_, sub_2299A0);
}

void sub_33A078(void *a1, double a2, double a3)
{
  v7 = type metadata accessor for BaseGenericDiffablePageViewController();
  v8.receiver = v3;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    sub_229C38(a1, v7, &off_88E2A8);
  }
}

void sub_33A130(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_33A078(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_33A1B0()
{
}

id sub_33A1F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseGenericDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_33A24C()
{
}

uint64_t sub_33A2E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_33A394()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&v0[v2])
  {
    v16 = v15;
    [v15 addSubview:?];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_33A518(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RuleResultsViewController();
  result = objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView];
  if (v5)
  {
    v6 = v5;
    v7 = sub_769210();
    [v6 setText:v7];

    sub_75A2E0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_12EA98();

    v9[3] = v8;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = sub_769970();
    sub_768F10();

    sub_BEB8(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_33A6BC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 text];
      if (!v6)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v6;
      sub_769240();

      v14 = *(v1 + 16);
      if (v14)
      {
        v8 = 0;
        v9 = (v1 + 40);
        while (v8 < *(v1 + 16))
        {
          ++v8;
          v10 = v1;
          v12 = *(v9 - 1);
          v11 = *v9;

          v15._countAndFlagsBits = v12;
          v15._object = v11;
          sub_769370(v15);

          sub_7693F0();
          sub_769360();

          v1 = v10;

          v9 += 2;
          if (v14 == v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v13 = sub_769210();

      [v5 setText:v13];
    }
  }
}

void sub_33A894()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider25RuleResultsViewController_textView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_getErrorValue();
      sub_76A9C0();
      v4 = sub_769210();

      [v3 setText:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_33AA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_33AAD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_33AB18()
{
  qword_950238 = &type metadata for Double;
  unk_950240 = &protocol witness table for Double;
  qword_950220 = 0;
  qword_950260 = &type metadata for Double;
  unk_950268 = &protocol witness table for Double;
  qword_950248 = 0x4028000000000000;
  qword_950288 = &type metadata for Double;
  unk_950290 = &protocol witness table for Double;
  qword_950270 = 0x4014000000000000;
  qword_9502B0 = &type metadata for Double;
  unk_9502B8 = &protocol witness table for Double;
  qword_950298 = 0x4041000000000000;
}

void sub_33AB60()
{
  qword_9502D8 = &type metadata for Double;
  unk_9502E0 = &protocol witness table for Double;
  qword_9502C0 = 0;
  qword_950300 = &type metadata for Double;
  unk_950308 = &protocol witness table for Double;
  qword_9502E8 = 0x4024000000000000;
  qword_950328 = &type metadata for Double;
  unk_950330 = &protocol witness table for Double;
  qword_950310 = 0x4014000000000000;
  qword_950350 = &type metadata for Double;
  unk_950358 = &protocol witness table for Double;
  qword_950338 = 0x4014000000000000;
}

char *sub_33ABA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_presenter] = a1;
  v7 = &v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver];
  *(v7 + 3) = sub_761A60();
  *(v7 + 4) = &protocol witness table for BasePresenter;
  *v7 = a1;
  sub_75A110();
  sub_768900();
  swift_retain_n();

  sub_768ED0();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_artworkLoader] = v21[0];
  sub_75F520();
  sub_7688F0();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_impressionsCalculator] = v21[0];
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == &dword_0 + 1)
  {
    if (qword_93CAC8 != -1)
    {
      swift_once();
    }

    v10 = &qword_9502C0;
  }

  else
  {
    if (qword_93CAC0 != -1)
    {
      swift_once();
    }

    v10 = &qword_950220;
  }

  sub_23BD1C(v10, v21);
  sub_23BD1C(v21, v20);
  v11 = objc_allocWithZone(type metadata accessor for ArcadeWelcomePageView());
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_pageView] = sub_23AE40(v20);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v13 = v12;
  if (*&v12[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_impressionsCalculator])
  {
    v14 = v12;

    sub_75F510();
  }

  else
  {
    v16 = v12;
  }

  sub_33C578(&qword_9503D8, v15, type metadata accessor for ArcadeWelcomeViewController);
  v17 = v13;
  sub_761A50();

  sub_23BD78(v21);
  *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_pageView] + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_delegate + 8) = &off_88E2F0;
  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_33AEFC()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_pageView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  sub_769D10();
  [v1 setFrame:?];
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_overlayViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
}

id sub_33B10C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad", v5);
  sub_B170(&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v7, v3);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    sub_396E8();
    v10 = sub_76A000();
    [v9 setBackgroundColor:v10];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_pageView]];

      sub_75A160();
      v12 = [v1 navigationItem];
      [v12 setLargeTitleDisplayMode:2];

      return [v1 setTitle:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_33B37C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1, v7);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_7587C0();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setNavigationBarHidden:1 animated:0];
  }

  v12 = [v2 modalPresentationStyle];
  v13 = [v2 view];
  v14 = v13;
  if (v12 == &dword_0 + 2)
  {
    if (v13)
    {
      [v13 setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
LABEL_8:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_33B5DC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1, v11);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v13, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }

  sub_75A0A0();
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_33B908(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7572A0();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_7587B0();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1, v14);
  sub_B170(&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_7587C0();
  (*(v13 + 8))(v16, v12);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v21 + 8))(v7, v22);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_75CAB0();
  }

  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_impressionsCalculator])
  {
    sub_75F510();
  }

  sub_75A0A0();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_33BE9C(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(&a1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_7587C0();

  return (*(v6 + 8))(v8, v5);
}

void sub_33C10C()
{
  v0 = sub_767140();
  __chkstk_darwin(v0 - 8);
  sub_767130();
  v1 = objc_allocWithZone(sub_767160());
  v2 = sub_767150();
  sub_33C470(v2);
}

void sub_33C1C4()
{
  sub_767230();
  sub_33C578(&qword_9503D0, 255, &type metadata accessor for ArcadeWelcomePagePresenter);
  swift_errorRetain();

  v0 = sub_7671F0();
  sub_33C470(v0);
}

uint64_t sub_33C2A4(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_268C8(v5);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

id sub_33C470(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_overlayViewController];
  sub_761930();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_761920();
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27ArcadeWelcomeViewController_pageView];
    v10 = *&v1[v3] != 0;

    return [v9 setHidden:v10];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_33C578(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_33C5C0()
{
  v0 = sub_BD88(&unk_94B6E0);
  sub_161DC(v0, qword_99CB90);
  sub_BE38(v0, qword_99CB90);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_33C670()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75F7C0();
  sub_161DC(v4, qword_99CBC0);
  sub_BE38(v4, qword_99CBC0);
  if (qword_93D610 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99EA28);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = sub_766CA0();
  v12[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_B1B4(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v10 = sub_766970();
  v11 = &protocol witness table for ZeroDimension;
  sub_B1B4(v9);
  sub_766960();
  return sub_75F7B0();
}

uint64_t sub_33C8B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940AD0);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = sub_75F7C0();
  sub_161DC(v10, a2);
  v20 = sub_BE38(v10, a2);
  if (qword_93D610 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v17 = sub_BE38(v11, qword_99EA28);
  v12 = *(*(v11 - 8) + 16);
  v12(v6, v17, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = *(v4 + 104);
  v14(v6, enum case for FontSource.useCase(_:), v3);
  sub_759350();
  sub_759310();
  (*(v18 + 8))(v9, v19);
  v12(v6, v17, v11);
  v14(v6, v13, v3);
  v22[3] = sub_766CA0();
  v22[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v21[3] = v3;
  v21[4] = &protocol witness table for FontSource;
  v15 = sub_B1B4(v21);
  (*(v4 + 16))(v15, v6, v3);
  sub_766CB0();
  (*(v4 + 8))(v6, v3);
  return sub_75F7B0();
}

char *sub_33CBC4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = sub_760AD0();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = sub_7674E0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_767510();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = sub_766970();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v87);
  sub_766960();
  sub_7674F0();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_BE70(0, &qword_93E540);
  v29 = sub_76A000();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_1A4998(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_93D610 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  v33 = sub_BE38(v32, qword_99EA28);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = sub_75BB20();
  v38 = objc_allocWithZone(v37);
  v39 = sub_75BB10();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = sub_75BB10();
  v43 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = sub_75C840();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell();
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = sub_76A000();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = sub_769FF0();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = sub_76A000();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = sub_769FF0();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = sub_76A000();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_93CAD0;
  v66 = *&v62[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_BD88(&unk_94B6E0);
  sub_BE38(v67, qword_99CB90);
  v85 = v62;
  sub_7592B0();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_1A5974();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_33D4F8()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_93D618 != -1)
    {
      swift_once();
    }

    v6 = sub_7666D0();
    v7 = sub_BE38(v6, qword_99EA40);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    sub_75BA40();
    sub_BE70(0, &qword_93E540);
    v9 = sub_769FD0();
  }

  else
  {
    if (qword_93D610 != -1)
    {
      swift_once();
    }

    v10 = sub_7666D0();
    v11 = sub_BE38(v10, qword_99EA28);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    sub_75BA40();
    sub_BE70(0, &qword_93E540);
    v9 = sub_769FF0();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_33D780()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_75F7E0();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75F7C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_767510();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell();
  v85.receiver = v1;
  v85.super_class = v19;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    sub_7674C0();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (sub_75F770() & 1) == 0)
    {
      v50 = sub_769A00();
      v66 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_93CAE8 != -1)
        {
          swift_once();
        }

        v52 = qword_99CBD8;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_93CAD8 != -1)
        {
          swift_once();
        }

        v52 = qword_99CBA8;
      }

      v47 = v7;
      v53 = sub_BE38(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v86.origin.x = v33;
      v86.origin.y = v35;
      v86.size.width = v37;
      v86.size.height = v39;
      Width = CGRectGetWidth(v86);
      if (qword_93CAE0 != -1)
      {
        swift_once();
      }

      v44 = sub_BE38(v6, qword_99CBC0);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_33E778(v70, Width);
      sub_75F790();
      [v48 pageMarginInsets];
      sub_75F7A0();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = sub_75BB20();
    v68 = v6;
    v55 = v46;
    v83 = v54;
    v84 = &protocol witness table for UIView;
    v56 = v66;
    v81 = &protocol witness table for UIView;
    v82 = v66;
    v80 = v54;
    v57 = v65;
    v79 = v65;
    v58 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v78 = &protocol witness table for UIView;
    v77 = v59;
    v76 = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    sub_75F7D0();
    v64 = v74;
    sub_75F780();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_33DFA0(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_BD88(&unk_93E530);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = sub_75F770();

    if (v20)
    {
      v21 = sub_33E778(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_93C5F0 != -1)
      {
        swift_once();
      }

      v34 = qword_9482F8;
      v35 = [qword_9482F8 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
      }

      else
      {
        v37 = qword_93C5E8;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = sub_7666D0();
        v39 = sub_BE38(v38, qword_9482E0);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        sub_766B00();
        sub_766B20();
        sub_766B10();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10A2C(v18, &unk_93E530);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_33E3A8(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_93CAD0 != -1)
  {
    swift_once();
  }

  v4 = sub_BD88(&unk_94B6E0);
  sub_BE38(v4, qword_99CB90);
  v10 = v1;
  v5 = v1;
  sub_7592B0();

  v6 = v11;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_1A5974();
  }
}

id sub_33E588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell()
{
  result = qword_950428;
  if (!qword_950428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_33E6B0()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_33E778(void *a1, double a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  sub_766470();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_769600();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_33E9E8()
{
  v1 = v0;
  v46 = sub_760AD0();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = sub_7674E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_767510();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = sub_766970();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v48);
  sub_766960();
  sub_7674F0();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_bodyTextView;
  sub_BE70(0, &qword_93E540);
  v20 = sub_76A000();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_1A4998(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_93D610 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99EA28);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = sub_75BB20();
  v30 = objc_allocWithZone(v29);
  v31 = sub_75BB10();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = sub_75BB10();
  v35 = OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = sub_75C840();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC18ASMessagesProvider33TitledParagraphCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_33EF9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_33F048(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93CAF0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_9504F0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_33F250()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_950550);
  sub_BE38(v4, qword_950550);
  if (qword_93CB08 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_950538);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_33F424()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_950568);
  sub_BE38(v4, qword_950568);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

id sub_33F5BC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_33F614(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_33F684(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_33F738(a5);
}

id sub_33F684(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_33F738(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_33F7F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_93CAF0 != -1)
  {
    swift_once();
  }

  v28 = sub_7666D0();
  v29 = sub_BE38(v28, qword_9504F0);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = sub_75BB20();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93CB08 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v28, qword_950538);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel] = sub_75BB10();
  v37 = type metadata accessor for DetailCollectionViewCell();
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  sub_759070();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider;
  v57 = qword_93D2D8;
  v58 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_BE38(v85, qword_99E220);
  v60 = v86;
  sub_395C4(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  sub_39628(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_3968C(v60);
  v64 = *&v42[v56];
  sub_BE70(0, &qword_93E540);
  v65 = v64;
  v66 = sub_769FB0();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider];
  sub_395C4(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_39628(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC18ASMessagesProvider11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_3968C(v60);
  v74 = *&v42[v68];
  v75 = sub_769FB0();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_backgroundSelectionView];
  v79 = sub_76A0A0();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_340310()
{
  v1 = v0;
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell();
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  sub_75D650();
  v8 = v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_759180();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = sub_759180();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      sub_75D650();
      MinX = CGRectGetMinX(v102);
      sub_75D650();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      sub_759170();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &off_93C000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        sub_75D650();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          sub_75D650();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            sub_75D650();
            MinY = CGRectGetMinY(v108);
            if (v27[351] != -1)
            {
              swift_once();
            }

            v50 = sub_766CA0();
            sub_BE38(v50, qword_950508);
            sub_766470();
            sub_766700();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          sub_75D650();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  sub_759170();
  v27 = &off_93C000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[351] != -1)
  {
    swift_once();
  }

  v54 = sub_766CA0();
  sub_BE38(v54, qword_950508);
  v55 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel];
  sub_766470();
  v56 = [v55 traitCollection];
  sub_766C70();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  sub_75D650();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    sub_759160();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    sub_75D650();
    v67 = CGRectGetMinX(v113);
  }

  sub_75D650();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_93CB10 != -1)
    {
      swift_once();
    }

    sub_BE38(v54, qword_950550);
    sub_766470();
    v68 = [v14 traitCollection];
    sub_766C70();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    sub_75D650();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showTopDivider] == 1)
  {
    sub_75D650();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    sub_75D650();
    v82 = CGRectGetWidth(v119);
    if (qword_93D2C8 != -1)
    {
      swift_once();
    }

    v83 = *&qword_99E200;
    v84 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    sub_75D650();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_93D2C8 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_99E200;
    v90 = MaxY - *&qword_99E200;
    sub_75D650();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_340C1C(double a1)
{
  v2 = v1;
  v4 = sub_766CA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_76A920();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_BD88(&qword_93F9A0);
  __chkstk_darwin(v13 - 8);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_759180();
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_titleLabel];
  v20 = [v19 text];
  if (v20)
  {
    v21 = v5;
    v22 = v20;
    v54 = sub_769240();
    v65 = v23;

    v5 = v21;
  }

  else
  {
    v54 = 0;
    v65 = 0;
  }

  v60 = v5;
  (*(v5 + 56))(v17, 1, 1, v4);
  v66 = [v19 attributedText];
  v24 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_subtitleLabel] text];
  if (v24)
  {
    v25 = v24;
    sub_769240();
    v64 = v26;
  }

  else
  {
    v64 = 0;
  }

  v27 = v18;
  v28 = v2[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showBottomDivider];
  v58 = v2[OBJC_IVAR____TtC18ASMessagesProvider24DetailCollectionViewCell_showTopDivider];
  v59 = v28;
  [v2 layoutMargins];
  if (v18)
  {
    v29 = v18;
    [v29 size];
    [v29 size];
  }

  v30 = [v2 traitCollection];
  v31 = qword_93CAF0;
  v57 = v30;
  if (v66)
  {
    v32 = v17;
    v33 = v66;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = sub_7666D0();
    v35 = sub_BE38(v34, qword_9504F0);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v12, v35, v34);
    (*(v36 + 56))(v12, 0, 1, v34);
    v37 = sub_7653B0();
    v68 = v37;
    v69 = sub_9BA34();
    v38 = sub_B1B4(v67);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    sub_765C30();
    sub_BEB8(v67);
    sub_762CA0();

    sub_10A2C(v12, &unk_93E530);
    v17 = v32;
    v27 = v18;
    v39 = v62;
    v40 = v60;
    v41 = v57;
  }

  else
  {
    v41 = v30;
    if (qword_93CAF0 != -1)
    {
      swift_once();
    }

    v42 = sub_7666D0();
    sub_BE38(v42, qword_9504F0);
    v43 = sub_7653B0();
    v68 = v43;
    v69 = sub_9BA34();
    v44 = sub_B1B4(v67);
    (*(*(v43 - 8) + 104))(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_765C30();
    sub_BEB8(v67);
    sub_762CB0();
    v39 = v62;
    v40 = v60;
  }

  v56 = v27;
  v45 = v61;
  v46 = v63;
  if (qword_93CAF8 != -1)
  {
    swift_once();
  }

  sub_BE38(v4, qword_950508);
  sub_766720();
  if (v64)
  {
    if (qword_93CB10 != -1)
    {
      swift_once();
    }

    sub_BE38(v4, qword_950550);
    sub_766470();
    sub_766C70();
    v47 = *(v45 + 8);
    v47(v9, v39);
    if (qword_93CB18 != -1)
    {
      swift_once();
    }

    sub_BE38(v4, qword_950568);
    sub_766470();
    sub_766C70();
    v47(v9, v39);
  }

  else
  {
    sub_341D60(v17, v46);
    v48 = *(v40 + 48);
    if (v48(v46, 1, v4) == 1)
    {
      v49 = v55;
      if (qword_93CB00 != -1)
      {
        swift_once();
      }

      v50 = sub_BE38(v4, qword_950520);
      (*(v40 + 16))(v49, v50, v4);
      v51 = v63;
      if (v48(v63, 1, v4) != 1)
      {
        sub_10A2C(v51, &qword_93F9A0);
      }
    }

    else
    {
      v49 = v55;
      (*(v40 + 32))(v55, v46, v4);
    }

    sub_766470();
    v41 = v57;
    sub_766C70();
    (*(v45 + 8))(v9, v39);
    (*(v40 + 8))(v49, v4);
  }

  v52 = v56;
  if (v58)
  {
    if (qword_93D2C8 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v59 && qword_93D2C8 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10A2C(v17, &qword_93F9A0);
  return a1;
}