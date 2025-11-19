uint64_t sub_10009F2B0(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v30 = sub_10000A5D4(&unk_100946700);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v34 = v29 - v2;
  v3 = sub_10076B6EC();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076664C();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  sub_10076336C();
  v33 = v8;
  sub_10076331C();
  swift_getKeyPath();
  v35 = v5;
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v42, v41);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076382C();
  if (swift_dynamicCast())
  {
    (*(v9 + 16))(v11, v14, v40);
    sub_10076FCFC();
    sub_10076F87C();
    v19 = v32;
    v20 = *&v32[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
    sub_1007637FC();
    v21 = sub_10076FF6C();

    [v20 setText:v21];

    sub_10076381C();
    v22 = sub_1007637EC();
    v23 = sub_10076082C();
    v24 = sub_100107BF4(v23, sub_1000368B8);

    v25 = sub_10076081C();
    sub_10050C274(v25, v22, v24);

    v26 = *&v19[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
    v27 = sub_1007637DC();
    [v26 setTintColor:v27];

    *&v19[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = sub_10076380C();

    [v19 setNeedsLayout];

    (*(v31 + 8))(v34, v30);
  }

  (*(v38 + 8))(v35, v39);
  (*(v36 + 8))(v33, v37);
  (*(v9 + 8))(v14, v40);
  return sub_10000CD74(v42);
}

uint64_t sub_10009F860(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v2 - 8);
  v61 = &v51 - v3;
  v60 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v60);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v51 - v6);
  v66 = sub_10000A5D4(&unk_1009467F0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v72 = &v51 - v7;
  v64 = sub_10000A5D4(&unk_100946700);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v51 - v8;
  v68 = sub_10076B6EC();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10076664C();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_1009520C0);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_10000A5D4(&unk_100946710);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v21 + 8))(v23, v20);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v24 = sub_100630CB4();
  sub_10000A570(v79, v78);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076115C();
  if (swift_dynamicCast())
  {
    v53 = v13;
    v55 = v11;
    v25 = v68;
    v26 = v77;
    v27 = *(v73 + 16);
    v52 = v19;
    v27(v16, v19, v74);
    sub_10076FCFC();
    sub_10076F87C();
    v28 = [v24 snapshotPageTraitEnvironment];
    v29 = v58;
    *&v58[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v29 setNeedsLayout];
    swift_unknownObjectRelease();
    v57 = v26;
    sub_10076114C();
    v30 = sub_100761DCC();

    v54 = v10;
    if (v30)
    {
      v31 = v65;
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v32 = sub_10000A61C(v60, qword_1009A27F8);
      v33 = v59;
      sub_1000A9194(v32, v59);
      v34 = *v33;
      v35 = v30;

      *v33 = v30;
      sub_1000A9194(v33, v56);
      sub_10000A5D4(&unk_100943120);
      v36 = v72;
      sub_10075FE0C();

      sub_1000A91F8(v33);
    }

    else
    {
      v31 = v65;
      if (qword_1009413D0 != -1)
      {
        swift_once();
      }

      v37 = sub_10000A61C(v60, qword_1009A27F8);
      sub_1000A9194(v37, v59);
      sub_10000A5D4(&unk_100943120);
      v36 = v72;
      sub_10075FE0C();
    }

    v38 = v66;
    v39 = v29;
    v40 = sub_10076114C();
    v41 = v61;
    (*(v31 + 16))(v61, v36, v38);
    (*(v31 + 56))(v41, 0, 1, v38);
    sub_1006098B0(v40, v41, v62);

    sub_10000CFBC(v41, &unk_10094C040);
    v42 = sub_10076113C();
    if (!v42)
    {
      v42 = [objc_opt_self() clearColor];
    }

    v43 = v42;
    v44 = v71;
    v45 = v69;
    v46 = ObjectType;
    v76.receiver = v39;
    v76.super_class = ObjectType;
    objc_msgSendSuper2(&v76, "setBackgroundColor:", v42);
    v47 = *&v39[OBJC_IVAR____TtC20ProductPageExtension31SmallBreakoutCollectionViewCell_iconView];
    v75.receiver = v39;
    v75.super_class = v46;
    v48 = v47;
    v49 = objc_msgSendSuper2(&v75, "backgroundColor");
    sub_10075FB8C();

    [v39 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v31 + 8))(v72, v38);
    (*(v63 + 8))(v70, v64);
    (*(v44 + 8))(v54, v25);
    (*(v55 + 8))(v53, v45);
    (*(v73 + 8))(v52, v74);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v71 + 8))(v10, v68);
    (*(v11 + 8))(v13, v69);
    (*(v73 + 8))(v19, v74);
  }

  return sub_10000CD74(v79);
}

uint64_t sub_1000A0220(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = sub_10076CA9C();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v4;
  v38 = sub_10000A5D4(&unk_100946700);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v44 = &v33 - v5;
  v6 = sub_10076B6EC();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076664C();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_10000A5D4(&unk_100946710);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v19 + 8))(v21, v18);
  sub_10076336C();
  v40 = v11;
  sub_10076331C();
  swift_getKeyPath();
  v41 = v8;
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v50, v49);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007698CC();
  if (swift_dynamicCast())
  {
    v22 = v48;
    (*(v12 + 16))(v14, v17, v47);
    sub_10076FCFC();
    sub_10076F87C();
    v23 = v33;
    sub_1007698BC();
    v24 = v34;
    sub_100712610(v34);
    v25 = *(v35 + 8);
    v26 = v23;
    v27 = v36;
    v25(v26, v36);
    sub_10076CB1C();
    v25(v24, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v30 = v39;
    v29[2] = v22;
    v29[3] = v30;
    v29[4] = v28;

    sub_10076CACC();

    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = v30;

    sub_10076CAEC();

    (*(v37 + 8))(v44, v38);
  }

  (*(v45 + 8))(v41, v46);
  (*(v42 + 8))(v40, v43);
  (*(v12 + 8))(v17, v47);
  return sub_10000CD74(v50);
}

uint64_t sub_1000A0888(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = sub_10076B6EC();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076664C();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - v8;
  v10 = sub_10000A5D4(&unk_100946710);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v11 + 8))(v13, v10);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  sub_100404188(v21, v9, v19);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v3, v20);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v16);
  return sub_10000CD74(v21);
}

uint64_t sub_1000A0BA8(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10000A5D4(&unk_100946800);
  __chkstk_darwin(v2 - 8);
  v40 = &v37 - v3;
  v4 = sub_10000A5D4(&unk_100946700);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v37 - v5;
  v47 = sub_10076B6EC();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076664C();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_10000A5D4(&unk_100946710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v52, v51);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076653C();
  if (swift_dynamicCast())
  {
    v39 = v7;
    v38 = v11;
    v21 = *(v11 + 16);
    v22 = v46;
    v21(v13, v16, v46);
    sub_10076FCFC();
    v23 = v42;
    sub_10076F87C();
    v24 = sub_10076651C();
    if (v25)
    {
      v26 = v45;
      v37 = *&v45[OBJC_IVAR____TtC20ProductPageExtension36ArcadeDownloadPackCollectionViewCell_cardView];
      v27 = sub_10076652C();
      v28 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      v29 = v10;
      v30 = v40;
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      sub_100545FF4(v27, v30, 1, v41);

      v31 = v30;
      v10 = v29;
      sub_10000CFBC(v31, &unk_100946800);
      [v26 layoutIfNeeded];
    }

    else
    {
      sub_100545CF8(v24);
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;

    (*(v43 + 8))(v23, v44);
    (*(v35 + 8))(v39, v32);
    (*(v33 + 8))(v10, v34);
    (*(v38 + 8))(v16, v22);
  }

  else
  {
    (*(v50 + 8))(v7, v47);
    (*(v48 + 8))(v10, v49);
    (*(v11 + 8))(v16, v46);
  }

  return sub_10000CD74(v52);
}

uint64_t sub_1000A11A0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_10000A5D4(&unk_100946700);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_10076B6EC();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  sub_10000A570(v37, v36);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F1FC();
  if (swift_dynamicCast())
  {
    v20 = v35;
    v21 = v30;
    (*(v10 + 16))(v12, v15, v30);
    sub_10076FCFC();
    v22 = v25;
    sub_10076F87C();
    v23 = v27;
    sub_10069D2F0(v20, v26);
    [v23 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v28 + 8))(v22, v29);
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v30);
  }

  return sub_10000CD74(v37);
}

uint64_t sub_1000A1684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B5FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A16B8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_10000A5D4(&unk_100946720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = v31;
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_10076461C();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v30.receiver = v14;
  v30.super_class = v13;
  v16 = objc_msgSendSuper2(&v30, "init");
  v17 = v16;
  if (v1 == 1)
  {
    v18 = [v16 traitCollection];
    v19 = sub_1007706CC();

    if (v19)
    {
      [v17 pageContainerSize];
      v22 = sub_1006D502C(v20, v21);
      sub_10010F994(v22);
    }

    else
    {
      [v17 pageMarginInsets];
      v23 = [v17 pageContainerSize];
    }

    sub_10010F994(v23);
    v24 = qword_100940348;
  }

  else
  {
    v24 = qword_100940348;
  }

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D39C();
  sub_10000A61C(v25, qword_10099F728);
  sub_10076D36C();
  v26 = v29;
  sub_100766E2C();

  v27 = sub_100766E4C();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1000A1A6C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10000A5D4(&unk_100946720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v2 + 8))(v4, v1);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_10076461C();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v26.receiver = v14;
  v26.super_class = v13;
  v16 = objc_msgSendSuper2(&v26, "init");
  v17 = [v16 traitCollection];
  LOBYTE(v1) = sub_1007706CC();

  if (v1)
  {
    [v16 pageContainerSize];
    v20 = sub_1006D502C(v18, v19);
    sub_10010F994(v20);
  }

  else
  {
    [v16 pageMarginInsets];
    v21 = [v16 pageContainerSize];
  }

  sub_10010F994(v21);
  v22 = v25;
  sub_100766E2C();

  v23 = sub_100766E4C();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1000A1DAC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10000A5D4(&unk_100946720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v2 + 8))(v4, v1);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_10076461C();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v21.receiver = v14;
  v21.super_class = v13;

  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v16 = sub_100763ADC();
  sub_10000A61C(v16, qword_10099DDA0);
  sub_1007639AC();
  v17 = v20;
  sub_100766E2C();
  v18 = sub_100766E4C();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1000A209C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10000A5D4(&unk_10094CD50);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  __chkstk_darwin(v1);
  v32 = &v29 - v3;
  v33 = sub_10076428C();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v6 + 8))(v8, v5);
  sub_10076460C();
  sub_10076C24C();
  v15 = v14;
  v13(v12, v9);
  v16 = sub_10076461C();
  v17 = type metadata accessor for SnapshotPageTraitEnvironment();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v19 = v15;
  *(v19 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v18[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v16;
  v38.receiver = v18;
  v38.super_class = v17;
  v20 = objc_msgSendSuper2(&v38, "init");
  v21 = [v20 traitCollection];
  v22 = v30;
  sub_1002AAFCC(v30);

  v23 = v32;
  sub_10076425C();
  (*(v31 + 8))(v22, v33);
  v37 = v20;
  v24 = v20;
  v25 = v34;
  sub_10075FDCC();
  (*(v35 + 8))(v23, v25);

  v26 = v36;
  sub_100766E2C();

  v27 = sub_100766E4C();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1000A24E4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10076D39C();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100946720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v11 = *(v8 + 8);
  v11(v10, v7);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v4 + 8))(v6, v3);
  LODWORD(v4) = v36;
  sub_10076460C();
  sub_10076C24C();
  v13 = v12;
  v11(v10, v7);
  v14 = sub_10076461C();
  v15 = type metadata accessor for SnapshotPageTraitEnvironment();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v17 = v13;
  *(v17 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v16[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v14;
  v35.receiver = v16;
  v35.super_class = v15;
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = v18;
  if (v4 == 1)
  {
    v20 = [v18 traitCollection];
    v21 = sub_1007706CC();

    if (v21)
    {
      [v19 pageContainerSize];
      v24 = sub_1006D502C(v22, v23);
      sub_10010F994(v24);
    }

    else
    {
      [v19 pageMarginInsets];
      [v19 pageContainerSize];
    }
  }

  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v25 = sub_1007640EC();
  sub_10000A61C(v25, qword_10099F660);
  v26 = v31;
  sub_1007640DC();
  sub_10076D36C();
  (*(v32 + 8))(v26, v33);
  v27 = v34;
  sub_100766E2C();

  v28 = sub_100766E4C();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_1000A291C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10000A5D4(&unk_100946720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v2 + 8))(v4, v1);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_10076461C();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v19.receiver = v14;
  v19.super_class = v13;

  v16 = sub_100766E4C();
  return (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
}

uint64_t sub_1000A2C78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v23 = a5;
  v24 = a4;
  v22[1] = a2;
  v7 = sub_10076469C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009568B0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_100766E4C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v24(v10, a3);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000CFBC(v13, &qword_1009568B0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_1000A325C(a1);
  __chkstk_darwin(v19);
  v22[-2] = v17;
  v20 = sub_100409B88(v23, &v22[-4], v19);

  if (v20 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v21._rawValue = v20;
    sub_100760BAC(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1000A2F84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v21 = a4;
  v20 = a2;
  v5 = sub_10076469C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009568B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_100766E4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_1000A291C(v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000CFBC(v11, &qword_1009568B0);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_1000A325C(a1);
  __chkstk_darwin(v17);
  *(&v20 - 2) = v15;
  v18 = sub_100409B88(v21, (&v20 - 4), v17);

  if (v18 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v19._rawValue = v18;
    sub_100760BAC(v19);
  }

LABEL_6:

  return (*(v13 + 8))(v15, v12);
}

void *sub_1000A325C(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000A5D4(&unk_100946720);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1000A90E4(&qword_100942C48, &type metadata accessor for Shelf.ContentType);
  LOBYTE(a1) = sub_10076FF1C();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_10076FF1C();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10000A5D4(&qword_100946730);
      sub_10076333C();
      if (v26)
      {
        sub_100012498(&v25, v27);
        sub_10000CF78(v27, v27[3]);
        v17 = sub_10076557C();
        if (v17)
        {
          v18 = v17;
          sub_10000A5D4(&unk_100942870);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007841E0;
          *(v19 + 32) = v18;
          sub_10000CD74(v27);
          return v19;
        }

        sub_10000CD74(v27);
      }

      else
      {
        sub_10000CFBC(&v25, &qword_100957B40);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000A3844(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000A90E4(&qword_100942810, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1000A39F0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000A3A64;
}

void sub_1000A3A64(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1000A3BA8()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView];
  sub_1004B1B8C();
  v2 = OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView;
  sub_1000BCD14();
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppPromotionOfferCollectionViewCell()
{
  result = qword_1009466A8;
  if (!qword_1009466A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1000A3DA0(uint64_t **a1))()
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
  v2[4] = sub_1000A39F0(v2);
  return sub_100019A4C;
}

double sub_1000A3E84()
{
  [*(*(*v0 + OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppPromotionView();
  sub_10076422C();
  CGRectGetHeight(v3);
  sub_10076422C();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1000A3F10()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppPromotionView();
  sub_10076422C();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1000A3FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1000A3FF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &unk_1009428D0);
  return swift_endAccess();
}

uint64_t sub_1000A40D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000A90E4(&unk_1009466F0, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1000A41B4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000A90E4(&qword_100946738, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000A4228(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000A90E4(&qword_100946738, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000A42B4(uint64_t *a1))()
{
  swift_getObjectType();
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
  sub_1000A90E4(&qword_100946738, type metadata accessor for AppPromotionOfferCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1000A4370(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC20ProductPageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_1000A4500(void *a1)
{
  a1[1] = sub_1000A90E4(&qword_1009466D8, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[2] = sub_1000A90E4(&qword_1009466E0, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[3] = sub_1000A90E4(&qword_1009466E8, type metadata accessor for AppPromotionOfferCollectionViewCell);
  result = sub_1000A90E4(&unk_1009466F0, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[4] = result;
  return result;
}

uint64_t sub_1000A45D4()
{
  v73 = sub_10000A5D4(&unk_100946740);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v63 - v0;
  v70 = sub_10076545C();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076C96C();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v63 - v5;
  v77 = sub_10000A5D4(&unk_100946700);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v82 = &v63 - v6;
  v7 = sub_10076B6EC();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10076664C();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10000A5D4(&unk_1009520C0);
  v12 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = sub_10000A5D4(&unk_100946710);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  sub_1007633BC();
  sub_10076F4AC();
  v22 = v18;
  v23 = v17;
  (*(v19 + 8))(v21, v22);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v24 = sub_100630CB4();
  sub_10000A570(v88, v87);
  sub_10000A5D4(&qword_1009575A0);
  sub_100763D9C();
  if (swift_dynamicCast())
  {
    v65 = v11;
    v66 = v9;
    v67 = v12;
    v25 = *(v12 + 16);
    v64 = v23;
    v25(v14, v23, v86);
    sub_10076FCFC();
    sub_10076F87C();
    v26 = v75;
    v27 = *(v75 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_100763D8C();
    v89._object = 0x80000001007D1EE0;
    v89._countAndFlagsBits = 0xD000000000000032;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    sub_100767D6C(v89, v28, v90);
    v29 = sub_10076FF6C();

    [v27 setText:v29];

    v30 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = [v24 traitCollection];
    sub_1000BFFCC();

    v32 = sub_10076FF6C();

    [v30 setText:v32];

    v33 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_completedLabel);
    sub_100763D6C();
    v34 = sub_10076FF6C();

    [v33 setText:v34];

    v35 = sub_100763D5C();
    if (*(v35 + 16))
    {
      v36 = v78;
      v37 = *(v79 + 16);
      v38 = v80;
      v37(v78, v35 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v80);

      v37(v68, v36, v38);
      sub_100763D7C();
      v39 = [v24 traitCollection];
      LOBYTE(v37) = sub_1007706EC();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v37 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v69 + 104))(v71, *v40, v70);
      v41 = objc_allocWithZone(sub_10076546C());
      v42 = sub_10076544C();
      v43 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v44 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      v45 = v84;
      if (v44)
      {
        [v44 removeFromSuperview];
        v46 = *(v26 + v43);
      }

      else
      {
        v46 = 0;
      }

      v51 = v82;
      v52 = v67;
      *(v26 + v43) = v42;
      v53 = v42;

      [*(v26 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_containerView) addSubview:v53];
      if (sub_100763D7C() < 2)
      {
        v54 = v85;
        v55 = v81;
        if (qword_10093FAB8 != -1)
        {
          swift_once();
        }

        v56 = qword_10099D918;
      }

      else
      {
        v54 = v85;
        v55 = v81;
        if (qword_10093FAC0 != -1)
        {
          swift_once();
        }

        v56 = qword_10099D930;
      }

      v57 = v73;
      v58 = sub_10000A61C(v73, v56);
      (*(v72 + 16))(v74, v58, v57);
      swift_beginAccess();
      sub_1007675EC();
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v51, v77);
      (*(v45 + 8))(v66, v54);
      (*(v83 + 8))(v65, v55);
    }

    else
    {

      v47 = OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension36AchievementSummaryCollectionViewCell_achievementGroupView);
      v49 = v84;
      if (v48)
      {
        [v48 removeFromSuperview];
        v50 = *(v26 + v47);
      }

      else
      {
        v50 = 0;
      }

      v59 = v81;
      v60 = v82;
      v61 = v83;
      v52 = v67;
      *(v26 + v47) = 0;
      swift_unknownObjectRelease();

      (*(v76 + 8))(v60, v77);
      (*(v49 + 8))(v66, v85);
      (*(v61 + 8))(v65, v59);
    }

    (*(v52 + 8))(v64, v86);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v84 + 8))(v9, v85);
    (*(v83 + 8))(v11, v81);
    (*(v12 + 8))(v23, v86);
  }

  return sub_10000CD74(v88);
}

uint64_t sub_1000A50F8()
{
  v41 = sub_10000A5D4(&unk_100946700);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v36 - v0;
  v1 = sub_10076B6EC();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = sub_10076664C();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v49, v48);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B51C();
  if (swift_dynamicCast())
  {
    v37 = v9;
    v20 = v5;
    v22 = v43;
    v21 = v44;
    v23 = *(v10 + 16);
    v36 = v15;
    v24 = v15;
    v25 = v42;
    v23(v12, v24, v42);
    sub_10076FCFC();
    sub_10076F87C();
    sub_10076B4FC();
    if (v26)
    {
      v27 = sub_10076FF6C();
    }

    else
    {
      v27 = 0;
    }

    v28 = v40;
    [v40 setAccessibilityLabel:v27];

    v29 = v38;
    sub_10076B6AC();
    sub_1000A90E4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
    v30 = sub_10077124C();
    v31 = *(v22 + 8);
    v31(v29, v21);
    if (v30)
    {
      v32 = sub_10076B50C();
      v33 = &v28[OBJC_IVAR____TtC20ProductPageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
      *v33 = v32;
      v33[1] = v34;

      sub_1003CE7AC();
    }

    (*(v39 + 8))(v45, v41);
    v31(v20, v21);
    (*(v47 + 8))(v37, v46);
    (*(v10 + 8))(v36, v25);
  }

  else
  {
    (*(v43 + 8))(v5, v44);
    (*(v47 + 8))(v9, v46);
    (*(v10 + 8))(v15, v42);
  }

  return sub_10000CD74(v49);
}

uint64_t sub_1000A56A8()
{
  v0 = sub_10000A5D4(&unk_100946700);
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v28 = &v27 - v1;
  v2 = sub_10076B6EC();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10000A5D4(&unk_100946710);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v18 = sub_100630CB4();
  sub_10000A570(v38, v37);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007616DC();
  if (swift_dynamicCast())
  {
    v19 = v32;
    (*(v8 + 16))(v10, v13, v32);
    sub_10076FCFC();
    v20 = v28;
    sub_10076F87C();
    v21 = [v29 contentView];
    [v18 pageMarginInsets];
    [v21 setLayoutMargins:?];

    v22 = sub_1007616CC();
    sub_1004A41D8(v22, v23);
    v24 = sub_1007616BC();
    sub_1004A41E4(v24, v25);
    swift_unknownObjectRelease();

    (*(v30 + 8))(v20, v31);
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v19);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v32);
  }

  return sub_10000CD74(v38);
}

uint64_t sub_1000A5BA0()
{
  v28 = sub_10000A5D4(&unk_100946700);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - v0;
  v1 = sub_10076B6EC();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076664C();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000A5D4(&unk_100946710);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v14 + 8))(v16, v13);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  v29 = v3;
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v36, v35);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076C1AC();
  if (swift_dynamicCast())
  {
    (*(v7 + 16))(v9, v12, v34);
    sub_10076FCFC();
    v17 = v25;
    sub_10076F87C();
    v18 = v27;
    v19 = *&v27[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
    v20 = sub_10076C18C();
    v21 = v19[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
    v19[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v20 & 2) != 0;
    sub_100133E3C(v21);
    v19[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
    v22 = *&v19[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
    sub_10076C19C();
    v23 = sub_10076FF6C();

    [v22 setText:v23];

    [v19 setNeedsLayout];
    [v18 setNeedsLayout];

    (*(v26 + 8))(v17, v28);
  }

  (*(v32 + 8))(v29, v33);
  (*(v30 + 8))(v6, v31);
  (*(v7 + 8))(v12, v34);
  return sub_10000CD74(v36);
}

uint64_t sub_1000A60A0()
{
  v0 = sub_1007617CC();
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100946700);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_10076B6EC();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v35, v34);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007617FC();
  if (swift_dynamicCast())
  {
    v20 = v29;
    (*(v10 + 16))(v12, v15, v29);
    sub_10076FCFC();
    v21 = v25;
    sub_10076F87C();
    v22 = v26;
    sub_1007617EC();
    sub_100067C68(v22);
    v23 = sub_1007617DC();
    sub_100068794(v23);

    (*(v27 + 8))(v21, v28);
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v20);
  }

  else
  {
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v29);
  }

  return sub_10000CD74(v35);
}

uint64_t sub_1000A65A4()
{
  v0 = sub_10000A5D4(&unk_100946700);
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - v1;
  v2 = sub_10076B6EC();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_10000A5D4(&unk_100946710);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  sub_10000A570(v31, v30);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076BC0C();
  if (swift_dynamicCast())
  {
    v18 = v25;
    (*(v8 + 16))(v10, v13, v25);
    sub_10076FCFC();
    v19 = v22;
    sub_10076F87C();
    sub_100476FB8();
    swift_unknownObjectRelease();

    (*(v23 + 8))(v19, v24);
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v25);
  }

  return sub_10000CD74(v31);
}

uint64_t sub_1000A6A54()
{
  v0 = sub_10000A5D4(&unk_100946700);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = v23 - v1;
  v2 = sub_10076B6EC();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_1009520C0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v14 = sub_10000A5D4(&unk_100946710);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v33, v32);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007644DC();
  if (swift_dynamicCast())
  {
    v18 = v27;
    (*(v8 + 16))(v10, v13, v27);
    sub_10076FCFC();
    v19 = v24;
    sub_10076F87C();
    v20 = *(v23[1] + OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_1007644CC();
    v21 = sub_10076FF6C();

    [v20 setText:v21];

    (*(v25 + 8))(v19, v26);
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v27);
  }

  return sub_10000CD74(v33);
}

uint64_t sub_1000A6F1C()
{
  v26 = sub_10000A5D4(&unk_100946700);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v22 - v0;
  v1 = sub_10076B6EC();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076664C();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10000A5D4(&unk_100946710);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v14 + 8))(v16, v13);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v34, v33);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076219C();
  if (swift_dynamicCast())
  {
    v17 = v32;
    v18 = v27;
    (*(v7 + 16))(v9, v12, v27);
    sub_10076FCFC();
    v19 = v23;
    sub_10076F87C();
    v20 = v25;
    *&v25[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = v17;

    *(*&v20[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = v17;

    sub_100103A50();
    [v20 setNeedsLayout];

    (*(v24 + 8))(v19, v26);
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v18);
  }

  else
  {
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v27);
  }

  return sub_10000CD74(v34);
}

uint64_t sub_1000A7418()
{
  v27 = sub_10000A5D4(&unk_100946700);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - v0;
  v1 = sub_10076B6EC();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076664C();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520C0);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10000A5D4(&unk_100946710);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v14 + 8))(v16, v13);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v34, v33);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007636DC();
  if (swift_dynamicCast())
  {
    v17 = v28;
    (*(v7 + 16))(v9, v12, v28);
    sub_10076FCFC();
    v18 = v25;
    sub_10076F87C();
    v19 = sub_1007636CC();
    sub_100371210(v19, v20);
    v21 = sub_1007636BC();
    sub_10037121C(v21, v22);

    (*(v26 + 8))(v18, v27);
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v17);
  }

  else
  {
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v28);
  }

  return sub_10000CD74(v34);
}

uint64_t sub_1000A78C8()
{
  v1 = v0;
  v37 = sub_100762A3C();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100946700);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v34 - v4;
  v5 = sub_10076B6EC();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076664C();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000A5D4(&unk_1009520C0);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  v20 = v16;
  v21 = v7;
  (*(v17 + 8))(v19, v20);
  sub_10076336C();
  v42 = v10;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v49, v48);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076016C();
  if (swift_dynamicCast())
  {
    v22 = v41;
    (*(v41 + 16))(v12, v15, v47);
    sub_10076FCFC();
    v23 = v38;
    sub_10076F87C();
    v24 = v35;
    sub_10076012C();
    v25 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    v26 = v36;
    v27 = v37;
    (*(v36 + 24))(v1 + v25, v24, v37);
    swift_endAccess();
    sub_100496EE4();
    (*(v26 + 8))(v24, v27);
    v28 = sub_10076013C();
    sub_100496C50(v28, v29);
    v30 = sub_10076014C();
    sub_100496C5C(v30, v31);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = sub_10076015C();

    v32 = sub_10076010C();
    sub_100499334();
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = v32;

    sub_100496C68();

    (*(v39 + 8))(v23, v40);
    (*(v45 + 8))(v21, v46);
    (*(v43 + 8))(v42, v44);
    (*(v22 + 8))(v15, v47);
  }

  else
  {
    (*(v45 + 8))(v7, v46);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v15, v47);
  }

  return sub_10000CD74(v49);
}

uint64_t sub_1000A7EE4()
{
  v0 = sub_10000A5D4(&unk_100946700);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v34 = &v28 - v1;
  v2 = sub_10076B6EC();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076664C();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&unk_100946710);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v15 + 8))(v17, v14);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v43, v42);
  sub_10000A5D4(&qword_1009575A0);
  sub_1007621CC();
  if (swift_dynamicCast())
  {
    v30 = v7;
    v32 = v4;
    v19 = v38;
    v18 = v39;
    v29 = v9;
    v20 = *(v9 + 16);
    v28 = v13;
    v31 = v8;
    v20(v33, v13, v8);
    sub_10076FCFC();
    v21 = v34;
    sub_10076F87C();
    v22 = v35;
    sub_1007621BC();
    sub_10076260C();

    sub_1007621AC();
    if (v23)
    {
      v24 = sub_10076045C();
    }

    else
    {
      v24 = 0;
    }

    v25 = *&v22[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
    *&v22[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = v24;
    v26 = v24;

    sub_10032280C();
    [v22 setNeedsLayout];

    (*(v36 + 8))(v21, v37);
    (*(v19 + 8))(v32, v18);
    (*(v40 + 8))(v30, v41);
    (*(v29 + 8))(v28, v31);
  }

  else
  {
    (*(v38 + 8))(v4, v39);
    (*(v40 + 8))(v7, v41);
    (*(v9 + 8))(v13, v8);
  }

  return sub_10000CD74(v43);
}

uint64_t sub_1000A844C()
{
  v0 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v0 - 8);
  v65 = &v59 - v1;
  v67 = sub_10076D39C();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000A5D4(&unk_100946700);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = &v59 - v3;
  v4 = sub_10076B6EC();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10000A5D4(&unk_100946710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v21 = sub_100630CB4();
  sub_10000A570(v78, v77);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076B56C();
  if (swift_dynamicCast())
  {
    v62 = v10;
    v63 = v6;
    v61 = v11;
    v22 = *(v11 + 16);
    v60 = v16;
    v23 = v76;
    v22(v13, v16, v76);
    sub_10076FCFC();
    v24 = v71;
    sub_10076F87C();
    v25 = v70;
    v26 = *&v70[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView];
    v27 = sub_10076B53C();
    sub_1003B2F6C(v27, v28);
    v29 = sub_10076B54C();
    sub_1003B36E0(v29, v30);
    v26[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = sub_10076B52C() & 1;
    sub_1003B3AD0();
    if (sub_10076B55C())
    {
      sub_10076BEFC();
      sub_10076BEFC();
      v31 = v64;
      sub_10076D3AC();
      v32 = v66;
      v33 = v65;
      v34 = v67;
      (*(v66 + 16))(v65, v31, v67);
      (*(v32 + 56))(v33, 0, 1, v34);
      v35 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v33, &v26[v35], &unk_1009467E0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:0];
      [v26 setNeedsLayout];
      v36 = [v25 contentView];
      sub_100016F40(0, &qword_1009441F0);
      sub_10076422C();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v79.origin.x = v38;
      v79.origin.y = v40;
      v79.size.width = v42;
      v79.size.height = v44;
      Width = CGRectGetWidth(v79);
      sub_10076D36C();
      v47 = v46;

      v48 = v31;
      v23 = v76;
      (*(v32 + 8))(v48, v34);
      v24 = v71;
      v49 = &v25[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v49 = Width;
      *(v49 + 1) = v47;
    }

    else
    {
      v50 = v65;
      (*(v66 + 56))(v65, 1, 1, v67);
      v51 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_10003837C(v50, &v26[v51], &unk_1009467E0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:1];
      [v26 setNeedsLayout];
      v52 = &v25[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
      *v52 = 0;
      *(v52 + 1) = 0;
    }

    v54 = v73;
    v53 = v74;
    v55 = v72;
    [v21 pageMarginInsets];
    v57 = v56;
    [v21 pageMarginInsets];
    [v26 setLayoutMargins:{0.0, v57, 0.0}];
    swift_unknownObjectRelease();

    (*(v68 + 8))(v24, v69);
    (*(v53 + 8))(v63, v75);
    (*(v54 + 8))(v62, v55);
    (*(v61 + 8))(v60, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v74 + 8))(v6, v75);
    (*(v73 + 8))(v10, v72);
    (*(v11 + 8))(v16, v76);
  }

  return sub_10000CD74(v78);
}

char *sub_1000A8D34()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076F9AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView] = [objc_allocWithZone(type metadata accessor for AppPromotionView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView;
  v10 = *&v8[OBJC_IVAR____TtC20ProductPageExtension35AppPromotionOfferCollectionViewCell_appPromotionView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_10076F95C();
  sub_10000CFBC(v17, &unk_1009434C0);
  sub_10000CFBC(v18, &unk_1009434C0);
  sub_100770B9C();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_1000A9010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076B5FC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A9040()
{
  result = qword_100946790;
  if (!qword_100946790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946790);
  }

  return result;
}

void sub_1000A9094(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1000A90E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A912C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000A5D4(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A9194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A91F8(uint64_t a1)
{
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A9254()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A928C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A92E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A9348(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&qword_100946838);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  if (a2)
  {
    v9 = sub_10075F8BC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100764F0C();
    sub_10000CFBC(v8, &qword_100946838);
  }
}

void *sub_1000A9488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10075F8DC();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v7;
  v8 = sub_10075F8BC();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v9;
  v10 = sub_10075F7DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v79 = a3;
  v19 = sub_100764ECC();
  if (*(v19 + 16) && (v20 = sub_100610638(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = sub_10069315C(a2, v22);
  }

  else
  {

    v23 = 0;
  }

  sub_10075F7EC();
  v24 = *(v11 + 104);
  v62 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
  v24(v15);
  sub_1000AB948(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_10077018C();
  v80 = v10;
  sub_10077018C();
  if (v83 != v81 || (v25 = v23, v84 != v82))
  {
    v25 = sub_10077167C() & v23;
  }

  v75 = v11;
  v26 = *(v11 + 8);
  v27 = v15;
  v28 = v80;
  v26(v27, v80);
  v60 = v11 + 8;
  v59 = v26;
  v26(v18, v28);

  v68 = v25 ^ 1;
  sub_10075F88C();
  if (v29)
  {
    v30 = sub_10076FF6C();

    v67 = [objc_opt_self() systemImageNamed:v30];
  }

  else
  {
    v67 = 0;
  }

  v31 = sub_10075F8AC();
  v65 = v32;
  v66 = v31;
  v64 = v23 & 1;
  v63 = sub_100016F40(0, &qword_1009641D0);
  v33 = v71;
  v34 = *(v71 + 16);
  v35 = v69;
  v61 = a2;
  v36 = v72;
  v34(v69, a2, v72);
  v37 = v76;
  v38 = v77;
  v39 = v73;
  (*(v76 + 16))(v73, a1, v77);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v37 + 80);
  v42 = v70 + v41 + v40;
  v70 = a1;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  *(v44 + 16) = v68 & 1;
  *(v44 + 24) = v79;
  (*(v33 + 32))(v44 + v40, v35, v36);
  (*(v37 + 32))(v44 + v43, v39, v38);
  v45 = v67;

  v46 = sub_100770F1C();
  v47 = v78;
  sub_10075F7EC();
  v48 = v80;
  v49 = (*(v75 + 88))(v47, v80);
  if (v49 == enum case for PageFacets.Facet.DisplayType.toggle(_:))
  {
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v50 = v46;
    v85._countAndFlagsBits = sub_10075F85C();
    sub_1007700CC(v85);

    v51 = sub_10076FF6C();

    [v50 setAccessibilityIdentifier:v51];

    goto LABEL_18;
  }

  if (v49 == v62 || v49 == enum case for PageFacets.Facet.DisplayType.multipleSelection(_:))
  {
    v52 = sub_10075F87C();
    if (!v53)
    {
LABEL_19:

      return v46;
    }

    v54 = v52;
    v55 = v53;
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v56 = v46;
    v86._countAndFlagsBits = v54;
    v86._object = v55;
    sub_1007700CC(v86);

    v51 = sub_10076FF6C();

    [v56 setAccessibilityIdentifier:v51];

LABEL_18:
    goto LABEL_19;
  }

  v59(v47, v48);
  return v46;
}

uint64_t sub_1000A9B74(uint64_t a1)
{
  v2 = sub_10075F8BC();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_10075F8DC();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10075F7BC();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_10075F8EC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_100764E6C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CFBC(v14, &unk_10094F4C0);
    return 0;
  }

  v71 = v16;
  (*(v16 + 32))(v18, v14, v15);
  result = sub_10075F7CC();
  v51 = *(result + 16);
  if (!v51)
  {

    v22 = v71;
LABEL_41:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v50 = v15;
  v20 = 0;
  v55 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v54 = v59 + 16;
  v64 = v68 + 16;
  v21 = (v68 + 8);
  v79 = v75 + 16;
  v80 = (v75 + 8);
  v52 = (v59 + 8);
  v81 = v7;
  v22 = v71;
  v57 = v8;
  v69 = v18;
  v70 = v10;
  v53 = result;
  v56 = (v68 + 8);
  while (v20 < *(result + 16))
  {
    v24 = *(v59 + 72);
    v58 = v20;
    (*(v59 + 16))(v60, v55 + v24 * v20, v61);
    result = sub_10075F7AC();
    v67 = *(result + 16);
    if (v67)
    {
      v25 = 0;
      v26 = *(v68 + 80);
      v65 = result;
      v66 = result + ((v26 + 32) & ~v26);
      while (v25 < *(result + 16))
      {
        (*(v68 + 16))(v10, v66 + *(v68 + 72) * v25, v8);
        if ((sub_10075F80C() & 1) == 0)
        {
          v63 = v25;
          v27 = sub_100764ECC();
          if (*(v27 + 16))
          {
            v28 = sub_100610638(v10);
            if (v29)
            {
              v30 = *(*(v27 + 56) + 8 * v28);

              result = sub_10075F8CC();
              v31 = result;
              v74 = *(result + 16);
              if (v74)
              {
                v32 = 0;
                v72 = result + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                v73 = result;
                v77 = v30 + 56;
                v78 = v30;
                while (v32 < *(v31 + 16))
                {
                  v33 = *(v75 + 72);
                  v34 = *(v75 + 16);
                  v34(v7, v72 + v33 * v32, v2);
                  v35 = sub_10075F7FC();
                  v36 = *(v35 + 16);
                  v76 = v32;
                  if (v36 && (sub_1000AB948(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option), v37 = sub_10076FEAC(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
                  {
                    v40 = ~v38;
                    do
                    {
                      v34(v4, *(v35 + 48) + v39 * v33, v2);
                      sub_1000AB948(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option);
                      v41 = sub_10076FF1C();
                      (*v80)(v4, v2);
                      if (v41)
                      {
                        break;
                      }

                      v39 = (v39 + 1) & v40;
                    }

                    while (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v78;
                  if (*(v78 + 16))
                  {
                    sub_1000AB948(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option);
                    v7 = v81;
                    v43 = sub_10076FEAC();
                    v44 = -1 << *(v42 + 32);
                    v45 = v43 & ~v44;
                    if ((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                    {
                      v46 = ~v44;
                      while (1)
                      {
                        v34(v4, *(v78 + 48) + v45 * v33, v2);
                        sub_1000AB948(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option);
                        v47 = sub_10076FF1C();
                        v48 = *v80;
                        (*v80)(v4, v2);
                        if (v47)
                        {
                          break;
                        }

                        v45 = (v45 + 1) & v46;
                        if (((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                        {
                          v7 = v81;
                          goto LABEL_36;
                        }
                      }

                      v7 = v81;
                      result = (v48)(v81, v2);
                      v10 = v70;
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      if ((v41 & 1) == 0)
                      {

                        (*v56)(v10, v57);
                        (*v52)(v60, v61);
                        (*(v22 + 8))(v18, v50);
                        return 1;
                      }
                    }

                    else
                    {
                      v48 = *v80;
LABEL_36:
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      result = (v48)(v7, v2);
                      v10 = v70;
                    }
                  }

                  else
                  {
                    v7 = v81;
                    result = (*v80)(v81, v2);
                    v10 = v70;
                    v22 = v71;
                    v18 = v69;
                    v31 = v73;
                  }

                  v32 = v76 + 1;
                  if (v76 + 1 == v74)
                  {

                    v8 = v57;
                    v21 = v56;
                    goto LABEL_11;
                  }
                }

                __break(1u);
                break;
              }
            }
          }

LABEL_11:
          v25 = v63;
        }

        ++v25;
        (*v21)(v10, v8);
        result = v65;
        if (v25 == v67)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:

    v23 = v58 + 1;
    (*v52)(v60, v61);
    v20 = v23;
    result = v53;
    if (v23 == v51)
    {

      v15 = v50;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Class sub_1000AA550(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v129 = a4;
  v130 = a3;
  v97 = sub_10076048C();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075F7DC();
  v125 = *(v6 - 8);
  __chkstk_darwin(v6);
  v127 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v93 - v9;
  v123 = sub_10075F8DC();
  v99 = *(v123 - 8);
  __chkstk_darwin(v123);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10075F7BC();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094F4C0);
  __chkstk_darwin(v13 - 8);
  v128 = (&v93 - v14);
  v98 = sub_10075F8EC();
  v109 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100765B7C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = _swiftEmptyArrayStorage;
  (*(v17 + 104))(v20, enum case for ArcadeSeeAllGamesPage.DisplayStyle.default(_:), v16, v18);
  sub_1000AB948(&qword_100946810, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_10077018C();
  sub_10077018C();
  if (v131 != v133 || v132 != v134)
  {
    sub_10077167C();
  }

  (*(v17 + 8))(v20, v16);

  v138._object = 0x80000001007D1FC0;
  v138._countAndFlagsBits = 0xD000000000000021;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  sub_1007622EC(v138, v142);
  v21 = sub_10076FF6C();

  v22 = [objc_opt_self() systemImageNamed:v21];

  sub_100016F40(0, &qword_1009641D0);

  v23 = sub_100770F1C();
  sub_10077019C();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v93 = v23;
    sub_10077025C();
    v24 = v135;
    v25 = v128;
    sub_100764E6C();
    v23 = v109;
    v26 = v98;
    if (v109[6](v25, 1, v98) == 1)
    {
      sub_10000CFBC(v25, &unk_10094F4C0);
      goto LABEL_74;
    }

    (*(v23 + 32))(v94, v25, v26);
    v27 = sub_10075F7CC();
    v105 = *(v27 + 16);
    if (!v105)
    {
      break;
    }

    v28 = 0;
    v104 = v27 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v103 = v108 + 16;
    v102 = v108 + 8;
    v122 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
    v121 = (v125 + 104);
    v120 = (v125 + 8);
    v29 = (v99 + 8);
    v117 = v6;
    v30 = v123;
    v101 = v27;
    v118 = (v99 + 8);
    v119 = v99 + 16;
    v100 = a1;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        goto LABEL_79;
      }

      v124 = v24;
      v31 = v108;
      v32 = *(v108 + 72);
      v113 = v28;
      v33 = v106;
      v34 = v107;
      (*(v108 + 16))(v106, v104 + v32 * v28, v107);
      v35 = sub_10075F7AC();
      (*(v31 + 8))(v33, v34);
      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

      v24 = v124;
LABEL_10:
      v28 = v113 + 1;
      v23 = v109;
      v27 = v101;
      if (v113 + 1 == v105)
      {

        v26 = v98;
        goto LABEL_73;
      }
    }

    v23 = 0;
    v37 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v110 = v35;
    v130 = v35 + v37;
    v38 = *(v99 + 72);
    v128 = *(v99 + 16);
    v129 = v38;
    v24 = v124;
    v111 = v36;
    v128(v11, v130, v30);
    while (1)
    {
      if (sub_10075F80C())
      {
        goto LABEL_16;
      }

      v124 = v24;
      v125 = v23;
      v39 = sub_10075F8CC();
      v40 = *(v39 + 16);
      if (v40)
      {
        v131 = _swiftEmptyArrayStorage;
        sub_1007714EC();
        v41 = *(sub_10075F8BC() - 8);
        v42 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v43 = *(v41 + 72);
        do
        {
          sub_1000A9488(v11, v42, a1);
          sub_1007714CC();
          sub_1007714FC();
          sub_10077150C();
          sub_1007714DC();
          v42 += v43;
          --v40;
        }

        while (v40);

        v44 = v131;
        v6 = v117;
      }

      else
      {

        v44 = _swiftEmptyArrayStorage;
      }

      sub_10075F7EC();
      (*v121)(v127, v122, v6);
      sub_1000AB948(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType);
      sub_10077018C();
      sub_10077018C();
      if (v131 == v133 && v132 == v134)
      {
        v45 = *v120;
        (*v120)(v127, v6);
        v45(v126, v6);

        goto LABEL_28;
      }

      v46 = sub_10077167C();
      v47 = *v120;
      (*v120)(v127, v6);
      v47(v126, v6);

      if ((v46 & 1) == 0)
      {
        break;
      }

LABEL_28:
      if (sub_10075F81C())
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = 1;
        if (!(v44 >> 62))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_10075F86C();
        v49 = v52;
        v50 = 0;
        if (!(v44 >> 62))
        {
LABEL_32:

          sub_10077168C();
          sub_100016F40(0, &unk_100949990);
          v51 = v44;
          goto LABEL_33;
        }
      }

      sub_100016F40(0, &unk_100949990);

      v51 = sub_10077157C();

LABEL_33:

      sub_100016F40(0, &qword_100946818);
      v139._countAndFlagsBits = v48;
      v139._object = v49;
      v143.value._countAndFlagsBits = 0;
      v143.value._object = 0;
      v136.value.super.isa = 0;
      v136.is_nil = 0;
      v53.value = v50;
      v54.super.super.isa = sub_100770B5C(v139, v143, v136, v53, 0xFFFFFFFFFFFFFFFFLL, v51, v92).super.super.isa;
      v55 = sub_10075F82C();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        v131 = 0x2D7465636166;
        v132 = 0xE600000000000000;
        v59 = v54.super.super.isa;
        v140._countAndFlagsBits = v57;
        v140._object = v58;
        sub_1007700CC(v140);

        v60 = sub_10076FF6C();

        [(objc_class *)v59 setAccessibilityIdentifier:v60];
      }

      v61 = v54.super.super.isa;
      sub_10077019C();
      v29 = v118;
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v24 = v135;
      v30 = v123;
      v23 = v125;
LABEL_16:
      ++v23;
      (*v29)(v11, v30);
      if (v23 == v36)
      {

        goto LABEL_10;
      }

      v128(v11, v130 + v129 * v23, v30);
    }

    if (v44 >> 62)
    {
      sub_100016F40(0, &unk_100949990);

      v62 = sub_10077157C();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_10077168C();
      sub_100016F40(0, &unk_100949990);

      v62 = v44;
    }

    v24 = v124;
    v63 = v62 >> 62;
    v116 = v62;
    if (v62 >> 62)
    {
      v64 = sub_10077158C();
    }

    else
    {
      v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v24 >> 62;
    if (!(v24 >> 62))
    {
      v65 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v65 + v64;
      if (__OFADD__(v65, v64))
      {
        goto LABEL_77;
      }

LABEL_44:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v23)
        {
          v67 = v24 & 0xFFFFFFFFFFFFFF8;
          if (v66 > *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            v24 = sub_1007714AC();
            v67 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v114 = v64;
          v23 = *(v67 + 16);
          v68 = (*(v67 + 24) >> 1) - v23;
          v115 = v67;
          if (v63)
          {
            v6 = v116;
            v71 = sub_10077158C();
            if (!v71)
            {
              goto LABEL_14;
            }

            v72 = v71;
            v73 = sub_10077158C();
            if (v68 < v73)
            {
              goto LABEL_81;
            }

            if (v72 < 1)
            {
              goto LABEL_83;
            }

            v112 = v73;
            v124 = v24;
            v74 = v115 + 8 * v23 + 32;
            sub_1000AB6B8();
            v75 = 0;
            v76 = v116;
            do
            {
              sub_10000A5D4(&qword_100946828);
              v77 = sub_1000FBEF8(&v131, v75, v76);
              v79 = *v78;
              (v77)(&v131, 0);
              *(v74 + 8 * v75++) = v79;
            }

            while (v72 != v75);
            v6 = v117;
            a1 = v100;
            v36 = v111;
            v24 = v124;
            v70 = v112;
LABEL_61:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            if (v70 < v114)
            {
              goto LABEL_78;
            }

            if (v70 > 0)
            {
              v80 = *(v115 + 16);
              v81 = __OFADD__(v80, v70);
              v82 = v80 + v70;
              if (v81)
              {
                goto LABEL_80;
              }

              *(v115 + 16) = v82;
            }
          }

          else
          {
            v69 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v69)
            {
              v6 = v117;
              if (v68 < v69)
              {
                goto LABEL_82;
              }

              sub_100016F40(0, &unk_100949990);
              v70 = v69;
              swift_arrayInitWithCopy();
              goto LABEL_61;
            }

LABEL_14:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            v6 = v117;
            if (v114 > 0)
            {
              goto LABEL_78;
            }
          }

          v135 = v24;
          goto LABEL_16;
        }
      }

      else if (!v23)
      {
        goto LABEL_50;
      }

      sub_10077158C();
      goto LABEL_50;
    }

    v83 = sub_10077158C();
    v66 = v83 + v64;
    if (!__OFADD__(v83, v64))
    {
      goto LABEL_44;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    sub_10077021C();
  }

LABEL_73:
  (*(v23 + 8))(v94, v26);
LABEL_74:
  v84 = v97;
  v85 = v96;
  v86 = v95;
  v87 = sub_1000A9B74(a1);
  v88 = &enum case for SystemImage.line3HorizontalDecreaseCircleFill(_:);
  if ((v87 & 1) == 0)
  {
    v88 = &enum case for SystemImage.line3HorizontalDecreaseCircle(_:);
  }

  (*(v85 + 104))(v86, *v88, v84);
  sub_100016F40(0, &qword_100946818);
  v137.value.super.isa = sub_10076046C();
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v144.value._countAndFlagsBits = 0;
  v144.value._object = 0;
  v137.is_nil = 0;
  v89.value = 1;
  isa = sub_100770B5C(v141, v144, v137, v89, 0xFFFFFFFFFFFFFFFFLL, v24, v92).super.super.isa;

  (*(v85 + 8))(v86, v84);
  return isa;
}

unint64_t sub_1000AB6B8()
{
  result = qword_100946830;
  if (!qword_100946830)
  {
    sub_10000CE78(&qword_100946828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946830);
  }

  return result;
}

uint64_t sub_1000AB71C()
{
  v1 = sub_10075F8BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10075F8DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_1000AB86C(uint64_t a1)
{
  v3 = *(sub_10075F8BC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_10075F8DC();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_1000A9348(a1, v5, v6, v1 + v4);
}

uint64_t sub_1000AB948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AB990(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v4 - 8);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v87 - v8;
  v9 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v9 - 8);
  v103 = &v87 - v10;
  v11 = sub_1007611EC();
  __chkstk_darwin(v11 - 8);
  v102 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v87 - v14;
  v15 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v15 - 8);
  v109 = &v87 - v16;
  v100 = sub_10076121C();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10076481C();
  v19 = *(v105 - 8);
  __chkstk_darwin(v105);
  v108 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076D39C();
  v106 = *(v21 - 8);
  v107 = v21;
  __chkstk_darwin(v21);
  v98 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10076C36C();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v87 - v25;
  v97 = sub_10076C38C();
  v26 = *(v97 - 8);
  __chkstk_darwin(v97);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v87 - v30;
  sub_10075FFAC();
  sub_1000ACA14(&qword_10094B480, &type metadata accessor for FramedVideo);
  v110 = a1;
  result = sub_10076332C();
  v33 = aBlock[0];
  if (aBlock[0])
  {
    v90 = v6;
    v91 = a2;
    v92 = v19;

    v34 = sub_10075FF6C();
    v35 = [v34 length];

    v36 = &selRef_initWithTabBarSystemItem_tag_;
    v111 = v18;
    if (v35 < 1)
    {
      v48 = v112;
      [*&v112[qword_10094C5D8] setText:0];
      v48[qword_10099D798] = 0;
      [*&v48[qword_10094C5C8] setHidden:1];
    }

    else
    {
      v88 = v28;
      v89 = v26;
      v37 = sub_10075FF6C();
      swift_getKeyPath();
      sub_10076338C();

      v38 = aBlock[6];
      v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
      v40 = [v37 length];
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39;
      *(v41 + 40) = 1;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1000275EC;
      *(v42 + 24) = v41;
      aBlock[4] = sub_1000ACB04;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026610;
      aBlock[3] = &unk_1008875D8;
      v43 = _Block_copy(aBlock);
      v44 = v38;
      v45 = v39;

      [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

      _Block_release(v43);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v47 = v112;
      [*&v112[qword_10094C5D8] setAttributedText:v45];
      v47[qword_10099D798] = 1;
      [*&v47[qword_10094C5C8] setHidden:0];

      v18 = v111;
      v26 = v89;
      v28 = v88;
      v36 = &selRef_initWithTabBarSystemItem_tag_;
    }

    v49 = *&v112[qword_10094C5D0];
    sub_10075FF7C();
    if (v50)
    {
      v51 = sub_10076FF6C();
    }

    else
    {
      v51 = 0;
    }

    [v49 v36[250]];

    if (sub_10075FF4C())
    {
      v52 = [v112 contentView];
      [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C24C();
      v53 = *(v26 + 8);
      v54 = v97;
      v53(v31, v97);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C26C();
      v53(v28, v54);
      v88 = v31;
      v55 = v95;
      v56 = *(v95 + 104);
      v89 = v33;
      v57 = v94;
      v58 = v96;
      v56(v94, enum case for PageGrid.Direction.vertical(_:), v96);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C25C();
      v53(v28, v54);
      (*(v55 + 16))(v93, v57, v58);
      sub_1005AC334(0.0);
      v59 = v88;
      sub_10076C33C();
      (*(v55 + 8))(v57, v58);
      v60 = [v112 contentView];
      sub_10076C2EC();
      [v60 setLayoutMargins:?];

      v53(v59, v54);
      v18 = v111;
    }

    v61 = v108;
    v62 = v106;
    v63 = sub_10075FF9C();
    v64 = v107;
    if (v63)
    {
      v65 = v112;
      v66 = [v112 contentView];
      sub_1000ACA5C();
      sub_10076422C();

      sub_10076BEFC();
      v67 = v98;
      sub_10076D3AC();
      sub_10076D30C();
      v69 = v68;
      v71 = v70;

      (*(v62 + 8))(v67, v64);
      v72 = &v65[qword_1009A32A8];
      *v72 = v69;
      *(v72 + 1) = v71;
    }

    if (sub_10075FF8C())
    {
      (*(v99 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v100);
      if (sub_10075FF9C())
      {
        sub_10076BEFC();
        sub_10076D3AC();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      (*(v62 + 56))(v109, v73, 1, v64);
      sub_10076B7EC();
      sub_10076B82C();
      sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      sub_10076B7CC();
      v74 = v103;
      sub_10076B85C();
      v75 = sub_10075DB7C();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = v104;
      sub_10076B81C();
      v77 = v90;
      sub_10076B80C();
      type metadata accessor for VideoView();
      sub_1000ACA14(&qword_100942810, type metadata accessor for VideoView);
      v78 = sub_100762EEC();
      sub_10000CFBC(v77, &unk_10094C030);
      sub_10000CFBC(v76, &unk_10094C030);
      sub_10000CFBC(v74, &unk_1009435D0);
      sub_10000CFBC(aBlock, &qword_100943310);
      sub_1006D9F88();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = Strong;
        v81 = *&v112[qword_100965200];
        v82 = v92;
        if (v81)
        {
          v83 = *&v112[qword_100965200];
        }

        else
        {
          v83 = [v112 contentView];
          v81 = 0;
        }

        v84 = v81;
        [v83 addSubview:v80];
        [v112 setNeedsLayout];
      }

      else
      {

        v82 = v92;
      }

      (*(v82 + 8))(v61, v105);
    }

    v85 = sub_10075FF5C();

    v112[qword_10099D790] = v85 & 1;
    sub_100027A78(v86);
  }

  return result;
}

uint64_t sub_1000AC8A8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10099D788;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1000AC904(uint64_t a1)
{
  v3 = qword_10099D788;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1000AC9CC()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_1006D9750(0);
}

uint64_t sub_1000ACA14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000ACA5C()
{
  result = qword_1009441F0;
  if (!qword_1009441F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009441F0);
  }

  return result;
}

uint64_t sub_1000ACAAC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000ACB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000ACB24()
{
  qword_100946868 = &type metadata for Double;
  unk_100946870 = &protocol witness table for Double;
  qword_100946850 = 0;
  qword_100946890 = &type metadata for Double;
  unk_100946898 = &protocol witness table for Double;
  qword_100946878 = 0x4028000000000000;
  qword_1009468B8 = &type metadata for Double;
  unk_1009468C0 = &protocol witness table for Double;
  qword_1009468A0 = 0x4014000000000000;
  qword_1009468E0 = &type metadata for Double;
  unk_1009468E8 = &protocol witness table for Double;
  qword_1009468C8 = 0x4041000000000000;
}

void sub_1000ACB6C()
{
  qword_100946908 = &type metadata for Double;
  unk_100946910 = &protocol witness table for Double;
  qword_1009468F0 = 0;
  qword_100946930 = &type metadata for Double;
  unk_100946938 = &protocol witness table for Double;
  qword_100946918 = 0x4024000000000000;
  qword_100946958 = &type metadata for Double;
  unk_100946960 = &protocol witness table for Double;
  qword_100946940 = 0x4014000000000000;
  qword_100946980 = &type metadata for Double;
  unk_100946988 = &protocol witness table for Double;
  qword_100946968 = 0x4014000000000000;
}

char *sub_1000ACBB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_presenter] = a1;
  v7 = &v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver];
  *(v7 + 3) = sub_1007686AC();
  *(v7 + 4) = &protocol witness table for BasePresenter;
  *v7 = a1;
  sub_100760C4C();
  sub_10076F64C();
  swift_retain_n();

  sub_10076FC1C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_artworkLoader] = v21[0];
  sub_10076615C();
  sub_10076F63C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_impressionsCalculator] = v21[0];
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    if (qword_10093F620 != -1)
    {
      swift_once();
    }

    v10 = &qword_1009468F0;
  }

  else
  {
    if (qword_10093F618 != -1)
    {
      swift_once();
    }

    v10 = &qword_100946850;
  }

  sub_1000AE584(v10, v21);
  sub_1000AE584(v21, v20);
  v11 = objc_allocWithZone(type metadata accessor for ArcadeWelcomePageView());
  *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_pageView] = sub_10061AC94(v20);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v13 = v12;
  if (*&v12[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_impressionsCalculator])
  {
    v14 = v12;

    sub_10076614C();
  }

  else
  {
    v16 = v12;
  }

  sub_1000AE5E0(&qword_100946A08, v15, type metadata accessor for ArcadeWelcomeViewController);
  v17 = v13;
  sub_10076869C();

  sub_1000AE628(v21);
  *(*&v17[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_pageView] + OBJC_IVAR____TtC20ProductPageExtension21ArcadeWelcomePageView_delegate + 8) = &off_100887600;
  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_1000ACF08()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_pageView];
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

  sub_100770A3C();
  [v1 setFrame:?];
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_overlayViewController];
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

id sub_1000AD118()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    sub_1000325F0();
    v10 = sub_100770D2C();
    [v9 setBackgroundColor:v10];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_pageView]];

      sub_100760C9C();
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

void sub_1000AD388(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
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
  if (v12 == 2)
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

void sub_1000AD5E8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  sub_100760BDC();
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_1000AD914(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_10075F2AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1, v14);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_10075F2BC();
  (*(v13 + 8))(v16, v12);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v21 + 8))(v7, v22);
    sub_10076369C();
    v17 = sub_1007636AC();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_10076368C();
  }

  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_impressionsCalculator])
  {
    sub_10076614C();
  }

  sub_100760BDC();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_1000ADEA8(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(&a1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_10075F2BC();

  return (*(v6 + 8))(v8, v5);
}

void sub_1000AE118()
{
  v0 = sub_10076DE4C();
  __chkstk_darwin(v0 - 8);
  sub_10076DE3C();
  v1 = objc_allocWithZone(sub_10076DE6C());
  v2 = sub_10076DE5C();
  sub_1000AE47C(v2);
}

void sub_1000AE1D0()
{
  sub_10076DF3C();
  sub_1000AE5E0(&qword_100946A00, 255, &type metadata accessor for ArcadeWelcomePagePresenter);
  swift_errorRetain();

  v0 = sub_10076DEFC();
  sub_1000AE47C(v0);
}

uint64_t sub_1000AE2B0(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000527AC(v5);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

id sub_1000AE47C(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_10076856C();
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArcadeWelcomeViewController_pageView];
    v10 = *&v1[v3] != 0;

    return [v9 setHidden:v10];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AE5E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1000AE67C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_10099CC60) = 0;
  sub_1000B63D8();
  v5 = qword_100946A40;
  v6 = *(v2 + qword_100946A40);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_1009602C8 + 8] = &off_100887618;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          sub_100767D5C();
          sub_10076F64C();
          sub_10076FC1C();
          swift_getObjectType();
          v21 = sub_100765B4C();
          v22 = v20;
          sub_100767CFC();
        }

        else
        {
          v23 = v16;
        }

        sub_100767D5C();
        sub_10076F64C();
        sub_10076FC1C();
        swift_getObjectType();
        v24 = sub_100765B4C();
        v25 = v16;
        sub_100767D3C();
      }
    }
  }
}

uint64_t sub_1000AE938()
{
  swift_unknownObjectRelease();

  sub_1000167E0(*(v0 + qword_10099CC70));
  sub_1000167E0(*(v0 + qword_10099CC78));

  sub_10000CFBC(v0 + qword_100946A60, &unk_1009434A0);

  return sub_10000CFBC(v0 + qword_10099CC98, &qword_1009492E0);
}

id sub_1000AEA84()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_100946A70] == 1)
  {
    v0[qword_100946A70] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000AEAD4(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_100946A70] == 1)
  {
    a1[qword_100946A70] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000AEB34(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1000167E0(*(a1 + qword_10099CC70));
  sub_1000167E0(*(a1 + qword_10099CC78));

  sub_10000CFBC(a1 + qword_100946A60, &unk_1009434A0);

  return sub_10000CFBC(a1 + qword_10099CC98, &qword_1009492E0);
}

void sub_1000AECA4(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_100946A40];
  if (v4)
  {
    v4[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_10099CC50];
    v5 = v4;
    sub_100316818();
  }

  v6 = *&v2[qword_100946A78];
  if (v6)
  {
    [v6 setHidden:v2[qword_10099CC50]];
  }

  v7 = a1 & ~v2[qword_10099CC50];
  v8 = sub_1000AEDF0();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_10099CC68] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_100946A20] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

uint64_t sub_1000AEDF0()
{
  v1 = qword_100946A40;
  result = *&v0[qword_100946A40];
  if (result)
  {
    result = [result view];
    if (result)
    {
      v3 = result;
      if ((v0[qword_10099CC50] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v4 = [v3 superview];
            v5 = [v0 collectionView];
            v6 = v5;
            if (v4)
            {
              if (v5)
              {
                sub_100016F40(0, &qword_1009441F0);
                v7 = sub_100770EEC();

                if ((v7 & 1) == 0)
                {
LABEL_28:
                  v21 = objc_opt_self();
                  v22 = swift_allocObject();
                  *(v22 + 16) = v3;
                  *(v22 + 24) = v0;
                  v23 = swift_allocObject();
                  *(v23 + 16) = sub_1000B84D8;
                  *(v23 + 24) = v22;
                  v31 = sub_1000B9014;
                  v32 = v23;
                  v27 = _NSConcreteStackBlock;
                  v28 = 1107296256;
                  v29 = sub_1001C5148;
                  v30 = &unk_100887808;
                  v24 = _Block_copy(&v27);
                  v25 = v0;

                  v17 = v3;

                  [v21 performWithoutAnimation:v24];
                  _Block_release(v24);
                  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

                  if ((v21 & 1) == 0)
                  {
                    result = [v25 collectionView];
                    if (result)
                    {
                      v26 = result;
                      [result insertSubview:v17 atIndex:0];

                      if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
                      {
                        v20 = [v17 layer];
                        [v20 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return 0;
              }

              v6 = v4;
            }

            else if (!v5)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v8 = [v3 superview];
      v9 = [v0 view];
      v10 = v9;
      if (v8)
      {
        if (v9)
        {
          sub_100016F40(0, &qword_1009441F0);
          v11 = sub_100770EEC();

          if (v11)
          {
            goto LABEL_15;
          }

LABEL_18:
          v12 = objc_opt_self();
          v13 = swift_allocObject();
          *(v13 + 16) = v3;
          *(v13 + 24) = v0;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1000B84AC;
          *(v14 + 24) = v13;
          v31 = sub_1000349FC;
          v32 = v14;
          v27 = _NSConcreteStackBlock;
          v28 = 1107296256;
          v29 = sub_1001C5148;
          v30 = &unk_100887790;
          v15 = _Block_copy(&v27);
          v16 = v0;
          v17 = v3;

          [v12 performWithoutAnimation:v15];
          _Block_release(v15);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if ((v12 & 1) == 0)
          {
            result = [v16 view];
            if (result)
            {
              v18 = result;
              result = [v16 collectionView];
              if (result)
              {
                v19 = result;
                [v18 insertSubview:v17 aboveSubview:result];

                if ([v17 effectiveUserInterfaceLayoutDirection] == 1)
                {
                  v20 = [v17 layer];
                  [v20 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return 1;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v10 = v8;
      }

      else if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }

  return result;
}

void sub_1000AF370(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_1000AF4AC();
  sub_10076856C();

  if (*&v1[v3])
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_100946A40];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_1000AF4AC()
{
  v1 = v0;
  v2 = *&v0[qword_100946A40];
  if (!v2 || !*&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController] || (sub_10076DE6C(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_1003175A4(v7, v10, v9);
}

void sub_1000AF63C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10077111C();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10076F9AC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v14);
  v17 = sub_10076C03C();
  v41[3] = v17;
  v41[4] = sub_1000B8F90(&qword_100947230, &type metadata accessor for Feature.iOS);
  v18 = sub_10000DB7C(v41);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v17);
  LOBYTE(v17) = sub_10076C90C();
  sub_10000CD74(v41);
  if ((v17 & 1) == 0)
  {
    v19 = [v1 view];
    if (!v19)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v21 = [v1 view];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v23 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_1000B1804();
  v24 = sub_1002B3CD0();
  [v24 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  sub_10076F94C();
  sub_100770B9C();
  (*(v13 + 8))(v16, v12);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = v25;
  [v25 addSubview:v24];

  v27 = *&v1[qword_10099CC80];
  *&v1[qword_10099CC80] = v24;
  v28 = v24;

  if (*&v1[qword_10099CC78])
  {
    sub_100016F40(0, &qword_100947240);
    sub_10077109C();
    v43._object = 0x80000001007D2420;
    v43._countAndFlagsBits = 0xD00000000000001DLL;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_1007622EC(v43, v44);
    sub_1007710EC();
    (*(v4 + 104))(v6, enum case for SystemImage.appstore(_:), v3);
    sub_10076046C();
    (*(v4 + 8))(v6, v3);
    sub_1007710BC();
    v29 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
    sub_100770F4C();
    sub_100770FBC();
    v30 = v39;
    v31 = v40;
    (*(v39 + 16))(v38, v11, v40);
    v32 = sub_10077112C();
    [v32 addTarget:v1 action:"viewInStoreButtonPressed" forControlEvents:64];
    v33 = [v1 view];
    if (v33)
    {
      v34 = v33;
      [v33 addSubview:v32];

      (*(v30 + 8))(v11, v31);
      v35 = *&v1[qword_10099CC90];
      *&v1[qword_10099CC90] = v32;

      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_10:
  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v36 = sub_10052F67C();
  v37 = qword_100946A48;
  if (*&v1[qword_100946A48])
  {
    sub_1000B8F90(&qword_100947238, type metadata accessor for ArticleLinkLoaderScrollObserver);
  }

  sub_10076667C();

  *&v1[v37] = v36;
  swift_retain_n();

  sub_1000B8F90(&qword_100947238, type metadata accessor for ArticleLinkLoaderScrollObserver);
  sub_10076668C();

  if (*&v1[qword_100946A40])
  {
    sub_1000AEDF0();
  }
}

void sub_1000AFCCC(void *a1)
{
  v1 = a1;
  sub_1000AF63C();
}

id sub_1000AFD14(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_100946A28) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_1000AFE3C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000AFD14(a3);
}

void sub_1000AFE90(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_100946A20] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_1000AFF2C(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_100016F40(0, &qword_1009453B0);
  v6 = sub_1007701BC();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = sub_10077158C();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = sub_10077149C();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_100016F40(0, &qword_1009453B0);
    v14 = sub_1007701BC();

    if (v14 >> 62)
    {
      v15 = sub_10077158C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_1000B0168(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000AFF2C(a3);
}

void sub_1000B01BC(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000B8F88;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1006F5994;
  v7[3] = &unk_100887AB0;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

uint64_t sub_1000B02C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1000B03DC();

    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      for (j = 0; ; ++j)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_10077149C();
        }

        else
        {
          if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:1.0];

        if (v7 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

void *sub_1000B03DC()
{
  v1 = *(v0 + qword_10099CC88);
  v10 = *(v0 + qword_10099CC90);
  v11 = v1;
  v12 = *(v0 + qword_10099CC80);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_10000A5D4(&unk_100947140);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      result = sub_10077025C();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B0514(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1000B01BC(v6, a4);

  swift_unknownObjectRelease();
}

void sub_1000B0594(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_1000B8F80;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006F5994;
    v10[3] = &unk_100887A88;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_1000B06BC(int a1, _BYTE *a2)
{
  a2[qword_10099CC68] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_100946A20] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_1000B075C();
}

void sub_1000B075C()
{
  v1 = v0;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007691FC();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v8 >= v11)
      {
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      return;
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 collectionViewLayout];

      sub_10075E08C();
      isa = sub_10075E02C().super.isa;
      (*(v3 + 8))(v5, v2);
      v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

      if (v16)
      {
        v17 = *&v1[qword_100946A80];
        if (v17)
        {

          [v14 collectionViewContentSize];
          v19 = v18;
          [v16 frame];
          *(v17 + 48) = v19 - CGRectGetMinY(v21);
          sub_10050ABA0(1);
        }
      }

      else
      {
        v16 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000B0978(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1000B0594(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1000B09F8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_1000B03DC();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = sub_10077158C();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_10077149C();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_100946A78];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_1000B0BB0(void *a1)
{
  v1 = a1;
  sub_1000B09F8();
}

void sub_1000B0BF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v3 - 8);
  v160 = &v156 - v4;
  v162 = sub_100770BFC();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076443C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v156 - v11;
  v12 = sub_100763ADC();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v164 = &v156 - v17;
  v168.receiver = v0;
  v168.super_class = ObjectType;
  objc_msgSendSuper2(&v168, "viewDidLayoutSubviews", v16);
  if (v0[qword_100946A20] == 1)
  {
    v0[qword_100946A20] = 0;
    sub_1000B1804();
  }

  sub_1000B1C88();
  sub_1000B1ECC();
  sub_1000B20C0();
  v18 = qword_10099CC50;
  v19 = &unk_100946000;
  if (v0[qword_10099CC50] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_100946A40];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v163 = *&v18;
        v157 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_1000B8F70;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100887A38;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v157;
        *&v18 = v163;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_100946A50];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v66 = sub_100501C90(v62, v64, v65);
      v68 = v67;
      v70 = v69;
      v72 = v71;
    }

    else
    {
      v66 = 0.0;
      v68 = 0.0;
      v70 = 0.0;
      v72 = 0.0;
    }

    v73 = qword_10099CC68;
    if ((v1[qword_10099CC68] & 1) != 0 || (v169.origin.x = v66, v169.origin.y = v68, v169.size.width = v70, v169.size.height = v72, Width = CGRectGetWidth(v169), (v75 = *&v1[qword_100946A40]) == 0) || (v76 = Width, (v77 = [v75 view]) == 0) || (v78 = v77, objc_msgSend(v77, "frame"), v80 = v79, v82 = v81, v84 = v83, v163 = v76, v86 = v85, v78, v170.origin.x = v80, v170.origin.y = v82, v170.size.width = v84, v170.size.height = v86, v163 != CGRectGetWidth(v170)))
    {
      v87 = *&v1[qword_100946A40];
      if (v87)
      {
        v88 = [v87 view];
      }

      else
      {
        v88 = 0;
      }

      [v88 setFrame:{v66, v68, v70, v72}];

      sub_1000B2294(v66, v68, v70, v72);
      v1[v73] = 0;
    }
  }

  v89 = *&v1[qword_100946A78];
  if (v89)
  {
    v163 = *&v18;
    v157 = v7;
    v90 = v6;
    v91 = v89;
    v92 = [v1 traitCollection];
    v93 = sub_1007706CC();

    if (v93)
    {
      v94 = 80.0;
    }

    else
    {
      v94 = 20.0;
    }

    v95 = [v1 view];
    if (!v95)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v96 = v95;
    [v95 bounds];
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;

    v105 = 0.0;
    v171.origin.x = v98;
    v171.origin.y = v100;
    v171.size.width = v102;
    v171.size.height = v104;
    v172 = CGRectInset(v171, v94, 0.0);
    v106 = v172.size.width;
    v107 = *&v91[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
    if (v107)
    {
      v108 = v9;
      v109 = v107;
      v110 = v164;
      sub_100353408(v164);
      [v109 layoutMargins];
      v112 = v111;
      v114 = v113;
      v115 = [v109 traitCollection];
      (*(v165 + 16))(v14, v110, v166);
      v116 = sub_100763A4C();
      v19 = &unk_100946000;
      if ((v118 & 1) == 0 && ((v116 | v117) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (sub_10077071C())
        {
          v119 = v108;
          if (qword_10093F520 != -1)
          {
            swift_once();
          }

          v120 = qword_100944C88;
        }

        else
        {
          v119 = v108;
          if (qword_10093F528 != -1)
          {
            swift_once();
          }

          v120 = qword_100944CA0;
        }

        v124 = sub_10000A61C(v90, v120);
        v125 = v157;
        (*(v157 + 16))(v119, v124, v90);
        v126 = v158;
        (*(v125 + 32))(v158, v119, v90);
        sub_1007643EC();
        sub_10076441C();
        sub_100763A5C();
        (*(v125 + 8))(v126, v90);
      }

      sub_10076398C();
      v128 = v127;

      v129 = v166;
      v130 = *(v165 + 8);
      v130(v14, v166);

      v122 = v114 + v112 + v128;
      v130(v164, v129);
    }

    else
    {
      v121 = *&v91[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
      v122 = 0.0;
      v19 = &unk_100946000;
      if (!v121)
      {
        goto LABEL_44;
      }

      [v121 sizeThatFits:{v172.size.width, v172.size.height}];
      v122 = v123;
    }

    v105 = v106;
LABEL_44:
    v131 = v91;
    [v131 frame];
    *&v18 = v163;
    if (v105 != v133 || v122 != v132)
    {
      [v131 frame];
      [v131 setFrame:v94];
      [v131 frame];
      [v131 setFrame:?];
    }

    if (*&v1[qword_100946A80])
    {

      sub_10050ABA0(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v134 = *&v1[v19[328]];
    if (v134)
    {
      type metadata accessor for ListTodayCardCollectionViewCell();
      if (swift_dynamicCastClass())
      {
        v135 = v134;
        v136 = [v1 view];
        if (v136)
        {
          v137 = v136;
          v138 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v139 = sub_100770BDC();
          v140 = *(v139 - 8);
          v141 = v160;
          (*(v140 + 104))(v160, v138, v139);
          (*(v140 + 56))(v141, 0, 1, v139);
          v142 = v159;
          sub_100770BEC();
          sub_10000CFBC(v141, &unk_10094FD50);
          sub_100770BBC();
          v144 = v143;
          v146 = v145;
          v148 = v147;
          v150 = v149;

          (*(v161 + 8))(v142, v162);
          v151 = &v135[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
          v152 = *&v135[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v135[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v154 = *&v135[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v155 = *&v135[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v151 = v144;
          *(v151 + 1) = v146;
          *(v151 + 2) = v148;
          *(v151 + 3) = v150;
          sub_100316A90(v152, v153, v154, v155);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_1000B1804()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v83 = v2;
  [v83 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_10099CC50] == 1)
  {
    v10 = *&v0[qword_100946A40];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v75 = v16;
        sub_1003175A4(v15, v18, v17);
        v56 = v76;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_100946A50];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v85.origin.x = sub_100501C90(v30, v32, v33);
    Height = CGRectGetHeight(v85);
    v35 = [v1 view];
    if (v35)
    {
      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = *&v1[qword_100946A40];
      if (v39)
      {
        v40 = [v39 view];
        if (v40)
        {
          v41 = v40;
          v42 = *(v19 + 24);
          [v42 _systemContentInset];
          v44 = v43;
          v46 = v45;
          [v42 contentOffset];
          v48 = v47;
          v50 = v49;
          [v42 contentInset];
          v52 = v46 + v48 + v51;
          v54 = v44 + v50 + v53;
          [v42 bounds];
          [v41 setFrame:{sub_100501C90(v52, v54, v55)}];
        }
      }

      v56 = Height - v38;
      v57 = *(v19 + 24);
      [v57 _systemContentInset];
      v59 = v58;
      v61 = v60;
      [v57 contentOffset];
      v63 = v62;
      v65 = v64;
      [v57 contentInset];
      v67 = v61 + v63 + v66;
      v69 = v59 + v65 + v68;
      [v57 bounds];
      v71 = sub_100501C90(v67, v69, v70);
      sub_1000B2294(v71, v72, v73, v74);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v56 = v3;
LABEL_17:
  [v83 contentOffset];
  v78 = v77;
  v80 = v79;
  [v83 setContentInset:{v56, v5, v7, v9}];
  [v83 setContentOffset:{v78, v80}];
  if (*&v1[qword_100946A40])
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v81 = swift_dynamicCastClass();
    v82 = 0.0;
    if (!v81)
    {
      v82 = v56;
    }
  }

  else
  {
    v82 = v56;
  }

  [v83 setScrollIndicatorInsets:{v82, 0.0, v7, 0.0}];
  [v83 contentOffset];
  [v83 setContentOffset:?];
}

void sub_1000B1C88()
{
  v1 = *&v0[qword_10099CC80];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_1000D3EB4();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_100946A40];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_10055F53C() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      sub_100770A4C();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000B1ECC()
{
  v1 = *&v0[qword_10099CC88];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_1000D3EB4();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_10099CC80];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      sub_100770A4C();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000B20C0()
{
  v1 = *&v0[qword_10099CC90];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_1000D3EB4();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      sub_100770A4C();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000B2294(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10076F7CC();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_10076F7FC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_100946A58];
  if (v20 || (result = sub_10076920C(), (v20 = result) != 0))
  {

    sub_10076C72C();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      return sub_10000CFBC(v15, &qword_1009492E0);
    }

    (*(v17 + 32))(v19, v15, v16);
    v22 = [v4 collectionView];
    if (v22)
    {
      v23 = v22;
      sub_10076848C();
      result = [v4 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      v36 = v23;
      [result convertRect:v23 toCoordinateSpace:{a1, a2, a3, a4}];

      sub_1007660EC();
      sub_10076F7DC();
      v25 = qword_100946A40;
      v26 = *&v5[qword_100946A40];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = sub_1007660CC();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = sub_10076C84C();
          v38[4] = sub_1000B8F90(&qword_100947150, &type metadata accessor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          sub_10076A00C();

          (*(v17 + 8))(v19, v16);
          return sub_10000CD74(v38);
        }

        else
        {

          return (*(v17 + 8))(v19, v16);
        }
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }

  return result;
}

void sub_1000B2794(void *a1)
{
  v1 = a1;
  sub_1000B0BF8();
}

void sub_1000B27DC(void *a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v2[qword_100946A20] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v5 = a1;
    if ([v5 horizontalSizeClass] && (v6 = objc_msgSend(v2, "traitCollection"), v7 = objc_msgSend(v6, "horizontalSizeClass"), v6, v7 != objc_msgSend(v5, "horizontalSizeClass")) && ((v8 = *&v2[qword_100946A58]) != 0 || (v8 = sub_10076920C()) != 0))
    {
      v9 = *&v2[qword_100946A40];
      if (v9)
      {
        v10 = v9 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
        v12 = *v10;
        v11 = *(v10 + 8);

        v13 = v12;
        sub_1000B297C(v8, v13, v11, 5);
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

uint64_t sub_1000B297C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a1;
  v9 = sub_10076D16C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076C38C();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_100946A40];
  v59 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_100316250(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_100316250(v4, v15);
    sub_10076D15C();
    v20 = sub_10076D14C();
    v21 = sub_10077052C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v58;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = sub_1007706CC();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v54 = qword_10099CC50;
  (*(a3 + 96))((v5[qword_10099CC50] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v59;
  (*(a3 + 296))(v24, v33, v59, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_1009602C8 + 8) = &off_100887618;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v55 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    sub_1006C7CCC(v24, v59, a4, v32, v42, v38);
    v43 = *(v38 + 32);
    if (v43(v42, v38))
    {
      v45 = v44;
      v46 = swift_getObjectType();
      (*(v45 + 32))((v55[v54] & 1) == 0, v46, v45);
      swift_unknownObjectRelease();
    }

    if (v43(v42, v38))
    {
      v48 = v47;
      v49 = swift_getObjectType();
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = *(v48 + 88);

      v51(sub_1000B843C, v50, v49, v48);
      swift_unknownObjectRelease();
    }

    v24 = v58;
    v34 = v59;
  }

  v60[3] = sub_10076C84C();
  v60[4] = &protocol witness table for TodayCard;
  v60[0] = v24;

  sub_10076654C();
  (*(v56 + 8))(v34, v57);
  return sub_10000CD74(v60);
}

void sub_1000B2F34(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1000B27DC(a3);
}

uint64_t sub_1000B2FA0()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000A5D4(&qword_1009471A0);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000A5D4(&qword_1009471A8);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000A5D4(&qword_1009471B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1006DFF44();
  sub_1007691EC();
  sub_10000A5D4(&qword_1009471B8);
  sub_100071820(&qword_1009471C0, &qword_1009471B8);
  sub_10076F45C();
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v5 + 8))(v7, v4);
  sub_1007691BC();
  sub_10000A5D4(&qword_1009471C8);
  sub_100071820(&qword_1009471D0, &qword_1009471C8);
  sub_10076F45C();
  v8 = v12;
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v13 + 8))(v8, v14);
  sub_1007691DC();
  sub_10000A5D4(&qword_1009471D8);
  sub_100071820(&unk_1009471E0, &qword_1009471D8);
  sub_10076F45C();
  v9 = v15;
  sub_10076F46C();

  sub_10000CD74(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_1000B33D8(uint64_t a1)
{
  v2 = v1;
  v4 = qword_100946A58;
  v5 = *(v1 + qword_100946A58);

  v6 = sub_10076920C();
  v7 = sub_1000B8504(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_100946A38) = a1;

    v9 = *(v2 + qword_10099CC60);

    if (!v8 || v9 == 0)
    {

      sub_1000B63D8();
    }
  }
}

uint64_t (*sub_1000B34BC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B8EB0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8F0C;
}

uint64_t sub_1000B354C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1007691AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B5654();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_100946A78);
    if (v13)
    {
      v14 = *(v1 + qword_10099E370);
      v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_1002EB7D0(v12, v14, v15);
    }

    sub_10076BACC();
LABEL_9:

    v21 = qword_10099CC98;
    swift_beginAccess();
    sub_10003837C(v6, v2 + v21, &qword_1009492E0);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_100946A78);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_1002EC11C(v17, v19);
    }

    sub_1007606FC();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_1000B3800(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000B8E54;
}

uint64_t sub_1000B3864(unint64_t a1)
{
  sub_10000A5D4(&unk_1009467A0);
  sub_10076F64C();
  sub_10076FC1C();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v3 = sub_10077158C();
  if (!v3)
  {
  }

LABEL_3:
  result = sub_100016F40(0, &qword_1009471F0);
  if (v3 >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      sub_10075F73C();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = sub_10077068C();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      sub_10076FC6C();

      sub_10000CD74(v11);
    }

    while (v3 != v6);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000B3A80(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B8BF8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000B8C1C;
}

unint64_t sub_1000B3B10@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_1000B8BA4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1000B3B68@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_1000B8B50();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000B3B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v2 = sub_1000B8F90(&qword_100947180, &type metadata accessor for ArticleDiffablePagePresenter);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_1000B8F90(&qword_100947188, type metadata accessor for ArticlePageShelfSupplementaryProvider);

  return v3;
}

id sub_1000B3C9C(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100947158);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_1007358B8(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  result = (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v8 = sub_1007691CC();
    sub_1000B3DEC(v8 & 1);
    return sub_1000B3ECC();
  }

  return result;
}

uint64_t sub_1000B3DEC(uint64_t result)
{
  v2 = *(v1 + qword_100946A68);
  v3 = result & 1;
  *(v1 + qword_100946A68) = result;
  if (v2 != v3)
  {
    v4 = qword_100946A70;
    v5 = *(v1 + qword_100946A70);
    *(v1 + qword_100946A70) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    sub_1007691CC();
    return sub_10076F17C();
  }

  return result;
}

id sub_1000B3ECC()
{
  v1 = sub_10075D59C();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075DB7C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007619EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10076919C();
  if (result)
  {
    v25 = v0;
    sub_100762D9C();
    if (swift_dynamicCastClass())
    {
      sub_100762D5C();
      sub_1007619FC();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v12 = *v10;
        v13 = sub_10076833C();
        v24 = v14;
        v15 = sub_10076834C();
        v23[1] = v16;
        v23[2] = v15;
        v23[0] = v12;
        sub_10076836C();
        sub_100762D5C();
        sub_1007619DC();

        sub_10075DAFC();
        v18 = v17;
        (*(v4 + 8))(v6, v3);
        sub_1001FBDC8(v13, v24, v18, &v30);
        v33[0] = v30;
        v19 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_1000B8A4C(v33, v27);
        sub_1000B8F90(&qword_100947160, &type metadata accessor for AppEntityVisualState);
        v24 = v19;

        sub_10000A5D4(&qword_100947168);
        sub_100071820(&qword_100947170, &qword_100947168);
        sub_1007712CC();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v20 = objc_allocWithZone(sub_10076D00C());
        sub_1000B8AA8();
        v21 = sub_10076CFFC();
        result = [v25 view];
        if (result)
        {
          v22 = result;
          sub_100770B8C();

          sub_1000B8AFC(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1000B436C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_10014CF98(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_10099CC88];
    *&v1[qword_10099CC88] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000B44A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  *(v4 + qword_100946A58) = a1;

  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v36 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_100946A60;
  swift_beginAccess();

  sub_10003837C(v11, v4 + v15, &unk_1009434A0);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v34 = v20;
    v23 = v20;
    v35 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    sub_1006C7CCC(v21, v36, v24, *(v4 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph), v19, v18);
    v25 = *(v18 + 32);
    if (v25(v19, v18))
    {
      v27 = v26;
      v28 = swift_getObjectType();
      (*(v27 + 32))((*(v4 + qword_10099CC50) & 1) == 0, v28, v27);
      swift_unknownObjectRelease();
    }

    if (v25(v19, v18))
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = *(v30 + 88);

      v33(sub_1000B9008, v32, v31, v30);
      swift_unknownObjectRelease();
    }

    a2 = v34;
    a3 = v35;
  }

  sub_1000B47DC(a1, a2, a3);
  sub_1000B4C00();
}

void sub_1000B47DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000B5280(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_10099CC50];
  sub_100316818();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_1003175A4(v22, v28, v27);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_1000B503C(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_100946A50;
    if (*&v4[qword_100946A50])
    {
      sub_1000B8F90(&unk_100947130, type metadata accessor for ArticleHeaderScrollObserver);
    }

    sub_10076667C();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_1000B8F90(&unk_100947130, type metadata accessor for ArticleHeaderScrollObserver);
    sub_10076668C();
  }

  v4[qword_10099CC68] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_100946A20] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_1000B4C00()
{
  v1 = v0;
  v2 = sub_100762EDC();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_100946A40);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_1005EC3F0(), v18, (v19))
  {
    if (!*(v1 + qword_10099CC88))
    {
      sub_1000B436C();
    }
  }

  v20 = *(v1 + qword_10099CC88);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_1005EC3F0())
      {
        v27 = qword_1009602F0;
        v28 = *&v26[qword_1009602F0];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_10014CC44(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          sub_10076055C();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_1005EC3F0() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_1000B7BEC;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_1008876F0;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_1000B503C(void *a1)
{
  v3 = qword_100946A40;
  v4 = *&v1[qword_100946A40];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_1000AEDF0();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_1000B5194(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B5280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &unk_1009434A0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_1003DF554(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = sub_1007706CC();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_1000B5654()
{
  v1 = v0;
  v2 = qword_100946A78;
  v3 = *&v0[qword_100946A78];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1004948E4(sub_1000B8E78, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_1007892A0;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v20 = v6;
      sub_10050ABA0(0);

      v16 = qword_100946A80;
      if (*&v1[qword_100946A80])
      {
        sub_1000B8F90(&qword_1009471F8, type metadata accessor for ArticleFooterViewScrollObserver);
      }

      sub_10076667C();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_1000B8F90(&qword_1009471F8, type metadata accessor for ArticleFooterViewScrollObserver);
      sub_10076668C();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        *(v17 + 32) = sub_1000B8EA8;
        *(v17 + 40) = v18;

        sub_1000167E0(v19);

        if (*&v1[v16])
        {

          sub_10050ABA0(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000B59A8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    a2();
  }

  return result;
}

void sub_1000B5A2C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000B5A88(a1 & 1);
  }
}

uint64_t sub_1000B5A88(int a1)
{
  v18 = a1;
  v2 = sub_10075DD7C();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10076F7FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_10099CC98;
  swift_beginAccess();
  sub_100016E2C(v1 + v12, v7, &qword_1009492E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CFBC(v7, &qword_1009492E0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_10076846C();
  swift_getObjectType();
  sub_10075DD6C();
  v14 = (v17 + 8);
  v15 = (v9 + 8);
  if (v18)
  {
    sub_10076F89C();
  }

  else
  {
    sub_10076F8AC();
  }

  swift_unknownObjectRelease();
  (*v14)(v4, v2);
  return (*v15)(v11, v8);
}

id sub_1000B5D48()
{
  v1 = v0;
  v2 = sub_10075F2AC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v2, v4);
  sub_10076921C();
  sub_1000B8F90(&unk_100947220, &type metadata accessor for ArticleDiffablePagePresenter);
  sub_1007657FC();
  (*(v3 + 8))(v6, v2);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_1009415E0 != -1)
  {
    swift_once();
  }

  v8 = qword_1009A3478;
  sub_10000A5D4(&unk_100947120);
  inited = swift_initStackObject();
  v15 = xmmword_100783DD0;
  *(inited + 16) = xmmword_100783DD0;
  v16 = 0x656C6261736964;
  v17 = 0xE700000000000000;
  sub_10077140C();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 0;
  sub_1000FCED4(inited);
  swift_setDeallocating();
  sub_10000CFBC(inited + 32, &unk_100948B20);
  isa = sub_10076FE3C().super.isa;

  [v7 postNotificationName:v8 object:0 userInfo:isa];

  if (v1[qword_100946A68] == 1)
  {
    sub_1007690CC();
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v11 = sub_10076FD4C();
    sub_10000A61C(v11, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = v15;
    sub_10076F27C();
    sub_10076FBEC();
  }

  else
  {
    v13 = *&v1[qword_10099CC70];
    if (v13)
    {

      v13(v14);
      return sub_1000167E0(v13);
    }

    else
    {
      return [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1000B6164(void *a1)
{
  v1 = a1;
  sub_1000B5D48();
}

void sub_1000B61AC()
{
  v1 = *(v0 + qword_100946A40);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v15 = v8(ObjectType, v4);

    if (v15)
    {
      sub_1005EF88C();
      v10 = v15;
      v11 = *(v2 + qword_10099CC88);
      if (v11)
      {
        v12 = *&v15[qword_1009602F0];
        v13 = v11;
        if (v12)
        {
          v14 = [v12 isMuted];
        }

        else
        {
          v14 = 1;
        }

        sub_10014CC44(v14);

        v10 = v15;
      }
    }
  }
}

void sub_1000B6308(void *a1)
{
  v1 = a1;
  sub_1000B61AC();
}

char *sub_1000B6350(char *result)
{
  v1 = *&result[qword_10099CC78];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001CE50(v1);
    v1(v3);

    return sub_1000167E0(v1);
  }

  return result;
}

void sub_1000B63D8()
{
  v1 = *(v0 + qword_100946A38);
  if (v1)
  {
    v2 = v0;

    sub_10076C7FC();
    v3 = sub_100761BEC();

    v4 = qword_100946A40;
    v5 = *(v2 + qword_100946A40);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
      if (v6)
      {
        v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
        v6 = 0;
      }

      v12 = v6;
      v11 = v8;
      v10 = v11;
    }

    else
    {
      sub_10045BCEC(v3);
      v7 = v9;
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v4))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell();
        if (swift_dynamicCastClass())
        {
          sub_1000B297C(v1, v10, v7, 7);
        }

        sub_1000B47DC(v1, v10, v7);
      }

      v11 = 0;
    }

    sub_1000B297C(v1, v10, v7, 7);
    v13 = *(v2 + v4);
    if (!v13 || ((v14 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v15 = v14 == 0) : (v15 = 1), v15))
    {
    }

    else
    {
      sub_100767D5C();
      sub_10076F64C();
      v16 = v14;
      sub_10076FC1C();
      swift_getObjectType();
      v17 = sub_100765B4C();
      v18 = v16;
      sub_100767D3C();
    }
  }
}

void sub_1000B6688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_10076FD4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = *(a1 + 8);
  v33 = v13;
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v9, qword_1009A25E8);
  (*(v10 + 16))(v12, v14, v9);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  v34 = a2;
  sub_100760D9C();
  v15 = sub_10075DB7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10000CFBC(v8, &unk_1009435D0);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_10000DB7C(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  sub_10076F32C();
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_10076FBDC();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_100946A48];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_1000B8D04;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1000B8D54;
      *(v27 + 24) = v26;
      v39 = sub_1000B9014;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_1001C5148;
      *(&v38 + 1) = &unk_100887920;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_1000B8D70(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_1000B6BD8(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000B6BD8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10076F08C();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076F0CC();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  sub_10075F72C();
  sub_100016F40(0, &qword_1009471F0);
  v15 = sub_10077068C();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_1000B8E14;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10009AEDC;
  v25 = &unk_100887970;
  v17 = _Block_copy(&aBlock);

  sub_10076F0AC();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000B8F90(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_1000B6F00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_10076917C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 collectionView];

    if (v4)
    {
      v5 = [v4 collectionViewLayout];

      [v5 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000B7004()
{
  v0 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_10076FD4C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412E0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v3, qword_1009A25E8);
  (*(v4 + 16))(v6, v7, v3);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  sub_100760D9C();
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10000CFBC(v2, &unk_1009435D0);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_10000DB7C(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  sub_10076F32C();
  sub_10000CFBC(&v12, &unk_1009434C0);
  sub_10076FBDC();

  return (*(v4 + 8))(v6, v3);
}

id sub_1000B7328(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_10099CC50) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

uint64_t sub_1000B7384()
{
  v0 = sub_1000B03DC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1000B7474()
{
  v0 = sub_1000B03DC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_1000B7564(void *a1)
{
  v1 = a1;
  sub_1000B5D48();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController()
{
  result = qword_100946AB0;
  if (!qword_100946AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B75E0()
{
  sub_1000B7740(319, qword_100946AC0, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_1000B7740(319, &qword_10094E990, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1000B7740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000B779C(int a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_100946A58];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_100946A40];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_100946A60;
  swift_beginAccess();
  sub_100016E2C(&v1[v15], v5, &unk_1009434A0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &unk_1009434A0);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = sub_1007706CC();
    type metadata accessor for ListTodayCardCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = sub_1007706CC();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_1000B4C00();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 72) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000B7BB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7C00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000B7C18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_10099CC48;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate()) init];
  *(v2 + qword_100946A20) = 0;
  *(v2 + qword_100946A28) = 0;
  *(v2 + qword_10099CC50) = 1;
  v9 = qword_10099CC58;
  sub_10000A5D4(&qword_10094FD60);
  swift_allocObject();
  *(v2 + v9) = sub_10076F18C();
  *(v2 + qword_10099CC60) = 1;
  *(v2 + qword_10099CC68) = 0;
  v10 = qword_100946A30;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_1006BCE40(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_10099CC70);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_10099CC78);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_10099CC80) = 0;
  *(v2 + qword_10099CC88) = 0;
  *(v2 + qword_10099CC90) = 0;
  *(v2 + qword_100946A38) = 0;
  *(v2 + qword_100946A40) = 0;
  *(v2 + qword_100946A48) = 0;
  *(v2 + qword_100946A50) = 0;
  *(v2 + qword_100946A58) = 0;
  v14 = qword_100946A60;
  v15 = sub_10076C38C();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_100946A68) = 0;
  *(v2 + qword_100946A70) = 0;
  *(v2 + qword_100946A78) = 0;
  *(v2 + qword_100946A80) = 0;
  v16 = qword_10099CC98;
  v17 = sub_10076F7FC();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  sub_10076F19C();
  v18 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  return sub_100485040(a1, v18);
}

char *sub_1000B7F44(uint64_t a1, uint64_t a2, char a3)
{
  v6 = objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController());

  v7 = sub_1000B7C18(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v8 = type metadata accessor for StoreNavigationController();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24.receiver = v9;
    v24.super_class = v8;

    v11 = objc_msgSendSuper2(&v24, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v11 setDelegate:v11];
    sub_10000A5D4(&unk_100942870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = v7;
    sub_100016F40(0, &qword_1009453B0);
    v13 = v7;
    isa = sub_1007701AC().super.isa;

    [v11 setViewControllers:isa];

    v7 = sub_1005BAF6C(v11, v13);
    [v7 setModalPresentationStyle:6];
    [v7 setTransitioningDelegate:0];
    v15 = *(v13 + qword_10099CC50);
    *(v13 + qword_10099CC50) = 0;
    sub_1000AECA4(v15);
    sub_1000AE67C(0, 0);
    v16 = [objc_opt_self() defaultCenter];
    if (qword_1009415E0 != -1)
    {
      swift_once();
    }

    v17 = qword_1009A3478;
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v25 = 0x656C6261736964;
    v26 = 0xE700000000000000;
    sub_10077140C();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20);
    v19 = sub_10076FE3C().super.isa;

    [v16 postNotificationName:v17 object:0 userInfo:v19];

    [v7 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v20 = v7[qword_10099CC50];
    v7[qword_10099CC50] = 0;
    sub_1000AECA4(v20);
    sub_1000AE67C(0, 0);
    v11 = [objc_opt_self() defaultCenter];
    if (qword_1009415E0 != -1)
    {
      swift_once();
    }

    v21 = qword_1009A3478;
    sub_10000A5D4(&unk_100947120);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_100783DD0;
    v25 = 0x656C6261736964;
    v26 = 0xE700000000000000;
    sub_10077140C();
    *(v22 + 96) = &type metadata for Bool;
    *(v22 + 72) = 0;
    sub_1000FCED4(v22);
    swift_setDeallocating();
    sub_10000CFBC(v22 + 32, &unk_100948B20);
    v13 = sub_10076FE3C().super.isa;

    [v11 postNotificationName:v21 object:0 userInfo:v13];
  }

  return v7;
}

uint64_t sub_1000B8404()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B846C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B8504(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = sub_10076C83C()) == 0 || (v19[0] = v4, sub_100762DFC(), sub_10000A5D4(&qword_100947218), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = sub_10076C83C()) == 0 || (*&v17[0] = v5, sub_100762DFC(), sub_10000A5D4(&qword_100947218), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = sub_10076C7FC(), sub_100761BFC(), sub_10000A5D4(&qword_100947210), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = sub_10076C7FC(), sub_100761BFC(), sub_10000A5D4(&qword_100947210), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_100016E2C(v20, v13, &qword_100947200);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    v6 = sub_10076909C();
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947200);
    v6 = 0;
  }

  sub_100016E2C(v19, v13, &qword_100947200);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    v7 = sub_10076909C();
    sub_10000CD74(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_1000CD08C(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947200);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_100016E2C(v17, v13, &qword_100947208);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    v9 = sub_10076822C();
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947208);
    v9 = 0;
  }

  sub_100016E2C(v15, v13, &qword_100947208);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    v10 = sub_10076822C();
    sub_10000CD74(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_1000CD08C(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947208);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_100016E2C(v20, v13, &qword_100947200);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    sub_10076909C();
    sub_10000CD74(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947200);
  }

  sub_100016E2C(v17, v13, &qword_100947208);
  if (v14)
  {
    sub_10000CF78(v13, v14);
    sub_10076822C();
    sub_10000CD74(v13);
  }

  else
  {
    sub_10000CFBC(v13, &qword_100947208);
    v11 = 0;
  }

LABEL_48:
  sub_10000CFBC(v15, &qword_100947208);
  sub_10000CFBC(v17, &qword_100947208);
  sub_10000CFBC(v19, &qword_100947200);
  sub_10000CFBC(v20, &qword_100947200);
  return v11 & 1;
}

unint64_t sub_1000B8AA8()
{
  result = qword_100947178;
  if (!qword_100947178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947178);
  }

  return result;
}

unint64_t sub_1000B8B50()
{
  result = qword_100947190;
  if (!qword_100947190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947190);
  }

  return result;
}

unint64_t sub_1000B8BA4()
{
  result = qword_100947198;
  if (!qword_100947198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947198);
  }

  return result;
}

uint64_t sub_1000B8C48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B8CA4()
{

  v1 = *(v0 + 24);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    sub_1000A9094(v1, *(v0 + 32));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8D14()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B8D70(uint64_t a1, void *a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1000B8D84(a1, a2);
  }

  return a1;
}

id sub_1000B8D84(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    return a2;
  }

  else
  {
  }
}

uint64_t sub_1000B8DD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B8E1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B8ED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B8F38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8F90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000B9038()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_dismissOverride];
    if (v2)
    {

      v2(v3);

      sub_1000167E0(v2);
    }

    else
    {
      v4 = [Strong presentingViewController];
      if (v4)
      {
        v5 = v4;
        [v4 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

uint64_t sub_1000B9104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1007701BC();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

void sub_1000B9244()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000B93FC(char a1)
{
  v35.receiver = v1;
  v35.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_hasPresentedViewController;
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_hasPresentedViewController] & 1) == 0)
    {
      v5 = v3;
      v6 = [v5 popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 sourceView];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 window];
          if (v10)
          {
            v11 = v10;
            v12 = [v9 superview];
            if (v12)
            {
              v13 = v12;
              [v9 frame];
              [v13 convertRect:v11 toCoordinateSpace:?];
              v15 = v14;
              v17 = v16;
              v19 = v18;
              v21 = v20;
            }

            else
            {
              v15 = 0.0;
              v17 = 0.0;
              v19 = 0.0;
              v21 = 0.0;
            }

            v22 = [v1 view];
            [v7 setSourceView:v22];

            [v7 sourceRect];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v36.origin.x = v15;
            v36.origin.y = v17;
            v36.size.width = v19;
            v36.size.height = v21;
            MinX = CGRectGetMinX(v36);
            v32 = v15;
            v33 = MinX;
            v37.origin.x = v32;
            v37.origin.y = v17;
            v37.size.width = v19;
            v37.size.height = v21;
            MinY = CGRectGetMinY(v37);
            v38.origin.x = v24;
            v38.origin.y = v26;
            v38.size.width = v28;
            v38.size.height = v30;
            v39 = CGRectOffset(v38, v33, MinY);
            [v7 setSourceRect:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];

            v7 = v9;
          }

          else
          {
            v11 = v9;
          }

          v7 = v11;
        }
      }

      [v1 presentViewController:v5 animated:v1[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_animatedContext] completion:0];

      v1[v4] = 1;
    }
  }
}

void sub_1000B96B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController] = 0;

  v3[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_hasPresentedViewController] = 0;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  aBlock[4] = sub_1000B9B34;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100887B28;
  v9 = _Block_copy(aBlock);
  sub_10001CE50(a2);
  v10 = v3;

  v11.receiver = v10;
  v11.super_class = type metadata accessor for PresentationContextViewController();
  objc_msgSendSuper2(&v11, "dismissViewControllerWithTransition:completion:", a1, v9);
  _Block_release(v9);
}

void sub_1000B97D8(void (*a1)(uint64_t), int a2, char *a3)
{
  if (a1)
  {

    a1(v5);
    sub_1000167E0(a1);
  }

  v6 = [a3 presentedViewController];
  if (v6)
  {
LABEL_4:

    return;
  }

  if (a3[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_isPresentingActivityViewController])
  {
    return;
  }

  v7 = *&a3[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_dismissOverride];
  if (!v7)
  {
    v9 = [a3 presentingViewController];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    [v9 dismissViewControllerAnimated:0 completion:0];
    v6 = v10;
    goto LABEL_4;
  }

  v7(v8);

  sub_1000167E0(v7);
}

id sub_1000B99FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentationContextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B9AA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9AEC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000B9B58(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_contextViewController] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_hasPresentedViewController] = 0;
  v5 = &v2[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_dismissOverride];
  *v5 = 0;
  v5[1] = 0;
  *&v2[v4] = a1;
  v2[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_animatedContext] = a2;
  type metadata accessor for ActivityViewController();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = a1;
  }

  v2[OBJC_IVAR____TtC20ProductPageExtension33PresentationContextViewController_isPresentingActivityViewController] = v6 != 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PresentationContextViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  if (v6)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[4] = sub_1000B9D3C;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000B9104;
    v14[3] = &unk_100887B78;
    v11 = _Block_copy(v14);
    v12 = v6;

    [v12 setCompletionWithItemsHandler:v11];
    _Block_release(v11);
  }

  [v9 setModalPresentationStyle:5];

  return v9;
}

uint64_t sub_1000B9D04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B9D4C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099CCA0);
  sub_10000A61C(v0, qword_10099CCA0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000B9EB0(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v46 = a1;
  sub_1007639FC();
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0E98);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_10076D9AC();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_10076D9BC();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_1007639DC();
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v6, qword_1009A0EB0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v54);
  v44(v17, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763AAC();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_10076D9BC();
  v22 = v49;
  v49(v5, v2);
  sub_100763A7C();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v54);
  v21(v26, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763A6C();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v54);
  v21(v28, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763ACC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000A61C(v45, qword_1009A0EE0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v54);
  v21(v32, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v29, qword_1009A0EC8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_10076D9BC();
  v38 = v49;
  v49(v5, v2);
  sub_100763A3C();
  sub_100763A1C();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v54);
  v37(v39, v5, v2);
  sub_10076D9BC();
  v38(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_1000BA704()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099CCB8);
  sub_10000A61C(v0, qword_10099CCB8);
  if (qword_10093F628 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099CCA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000BA8CC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_10076D1AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076D39C();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_10000DB18(v14, a5);
  v34 = sub_10000A61C(v14, a5);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  *&v45 = 0x4030000000000000;
  v35 = v13;
  sub_10076D3AC();
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A2098);
  v17 = *(v15 - 8);
  v33 = *(v17 + 16);
  v32 = v17 + 16;
  v33(v11, v16, v15);
  v18 = v9[13];
  v31 = enum case for FontSource.useCase(_:);
  v30 = v18;
  v18(v11);
  v19 = sub_10076D9AC();
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v42);
  v40 = v8;
  v41 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v39);
  v21 = v9[2];
  v21(v20, v11, v8);
  sub_10076D9BC();
  v22 = v9[1];
  v22(v11, v8);
  if (qword_1009410E8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v15, qword_1009A20B0);
  v33(v11, v23, v15);
  v30(v11, v31, v8);
  v40 = v19;
  v41 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v39);
  v38[3] = v8;
  v38[4] = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v38);
  v21(v24, v11, v8);
  sub_10076D9BC();
  v22(v11, v8);
  v25 = v34;
  v26 = v34 + v14[8];
  *(v26 + 24) = &type metadata for Double;
  *(v26 + 32) = &protocol witness table for Double;
  *v26 = a2;
  v27 = v25 + v14[9];
  *(v27 + 24) = &type metadata for Double;
  *(v27 + 32) = &protocol witness table for Double;
  *v27 = a3;
  sub_100012498(&v45, v25);
  (*(v36 + 32))(v25 + v14[5], v35, v37);
  sub_100012498(&v42, v25 + v14[6]);
  return sub_100012498(&v39, v25 + v14[7]);
}

UIColor sub_1000BAD54()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_10099CD00 = result.super.isa;
  return result;
}

id sub_1000BADE8()
{
  v1 = v0;
  v2 = sub_10076E1EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076E21C();
  v38 = *(v6 - 8);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = sub_10077087C();

  v13 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView];
  if (v12)
  {
    v37 = v3;
    if (v14)
    {
      [v14 setHidden:1];
    }

    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_contentView];
    [v15 addSubview:{*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel], v37}];
    [v15 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView]];
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
    [v16 setNumberOfLines:0];
    v17 = [v16 layer];
    [v17 setCompositingFilter:0];

    [v15 addSubview:v16];
    v39 = 0u;
    v40 = 0u;
    sub_100475758(&v39);
    v18 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView;
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView];
    if (v19 || (((*(v37 + 104))(v5, enum case for Separator.Position.top(_:), v2), *(&v40 + 1) = sub_10076D67C(), v41 = &protocol witness table for ZeroDimension, sub_10000DB7C(&v39), sub_10076D66C(), sub_10076E1FC(), v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator, swift_beginAccess(), v22 = *(v38 + 40), v23 = v20, v22(&v20[v21], v9, v6), swift_endAccess(), v23, (v24 = *&v1[v18]) == 0) ? (v25 = 0) : (objc_msgSend(v24, "removeFromSuperview"), v25 = *&v1[v18]), *&v1[v18] = v23, v33 = v23, v25, objc_msgSend(v15, "addSubview:", v33), v33, objc_msgSend(v1, "setNeedsLayout"), v33, (v19 = *&v1[v18]) != 0))
    {
      [v19 setHidden:0];
    }
  }

  else
  {
    if (v14 || ((v29 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v30 = sub_10046D7FC(0), (v31 = *&v1[v13]) == 0) ? (v32 = 0) : ([v31 removeFromSuperview], v32 = *&v1[v13]), (*&v1[v13] = v30, v35 = v30, v32, objc_msgSend(*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView], "addSubview:", v35), v35, objc_msgSend(v1, "setNeedsLayout"), v35, (v36 = *&v1[v13]) != 0) && (objc_msgSend(v36, "setUserInteractionEnabled:", 0), (v14 = *&v1[v13]) != 0)))
    {
      [v14 setHidden:0];
    }

    v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel]];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_subtitleView]];
    v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
    [v27 setNumberOfLines:1];
    [v26 addSubview:v27];
    v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_separatorView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    sub_1000BB310();
  }

  return [v1 setNeedsLayout];
}

id sub_1000BB310()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_shadowView];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setHidden:v4 == 2];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  LOBYTE(v4) = sub_10077087C();

  if ((v4 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_10076FF9C();
    v7 = sub_10076FF6C();

    v15[3] = sub_100016F40(0, &unk_10095B410);
    v15[0] = v7;
    v8 = v7;
    sub_100475758(v15);
    v9 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel] layer];
    [v9 setCompositingFilter:v8];
  }

  if (v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_borderView];

  return [v13 setHidden:v12];
}

id sub_1000BB570()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000BB788(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel];
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

void sub_1000BB8E8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_titleLabel];
  v5 = [v4 attributedText];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_10:
    if (qword_100940618 != -1)
    {
      swift_once();
    }

    v8 = qword_10099FD10;
    v9 = *algn_10099FD18;
    v10 = qword_10099FD20;
    v11 = [v2 traitCollection];
    if (sub_10077071C())
    {

      if (a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = sub_1007706EC();

      if (v34)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (a1)
      {
LABEL_14:
        v37 = v4;
        v40 = v2;
        sub_100016F40(0, &qword_100942F10);
        v12 = a1;
        v36 = v10;
        v38 = v10;
        v13 = sub_100770D1C();
        v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
        v15 = [v12 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_1000BD348;
        *(v17 + 24) = v16;
        v45 = sub_10000A6AC;
        v46 = v17;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_1002464A8;
        v44 = &unk_100887BF8;
        v18 = _Block_copy(&aBlock);
        v19 = v14;
        v20 = v13;

        [v12 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v22 = [v40 traitCollection];
          v23 = objc_allocWithZone(NSMutableAttributedString);
          v24 = v38;
          v25 = [v23 initWithAttributedString:v19];
          v26 = [v19 length];
          v27 = swift_allocObject();
          *(v27 + 16) = v38;
          *(v27 + 24) = v22;
          *(v27 + 32) = v25;
          *(v27 + 40) = 1;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_1000275EC;
          *(v28 + 24) = v27;
          v45 = sub_1000ACB04;
          v46 = v28;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_100026610;
          v44 = &unk_100887C70;
          v29 = _Block_copy(&aBlock);
          v30 = v24;
          v31 = v22;
          v32 = v25;

          [v19 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

          _Block_release(v29);
          v33 = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v2 = v40;
            v10 = v36;
            v4 = v37;
LABEL_22:
            [v4 setAttributedText:v32];

            [v2 setNeedsLayout];
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    v35 = v10;
    v32 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100016F40(0, &qword_1009544A0);
  v39 = a1;
  v7 = sub_100770EEC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_1000BBE30(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000BD568(&qword_100942810, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    sub_100016F40(0, &qword_1009441F0);
    v8 = v7;
    v9 = sub_100770EEC();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1000BBFBC(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000BC010;
}

void sub_1000BC010(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1000BD424();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1000BC128()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppPromotionCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1000BC5FC(v10);
  AppPromotionCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension20AppPromotionCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_10046CAB0(v26);
      v42 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_1000BE98C(v10);
  }

  else
  {
    sub_1000BE98C(v10);
  }
}