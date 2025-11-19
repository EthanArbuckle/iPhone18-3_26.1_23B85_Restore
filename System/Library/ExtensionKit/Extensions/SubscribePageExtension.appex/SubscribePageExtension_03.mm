id sub_100058284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallGameCenterPlayerCollectionViewCell()
{
  result = qword_1009243F0;
  if (!qword_1009243F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005838C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100058468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_1000584D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_100058540(uint64_t a1)
{
  result = sub_100058568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100058568()
{
  result = qword_100924400;
  if (!qword_100924400)
  {
    type metadata accessor for SmallGameCenterPlayerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924400);
  }

  return result;
}

void sub_1000585C0()
{
  v1 = sub_100751344();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100751374();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v6;
  v7 = sub_10074AB44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  v15 = *(*(v14 - 8) + 56);
  v54 = v0;
  v15(v0 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_100920048 != -1)
  {
    swift_once();
  }

  v43 = xmmword_10097D0B0;
  *(v54 + v16) = xmmword_10097D0B0;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_alias;
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_1009813C8);
  v19 = *(v17 - 8);
  v41 = *(v19 + 16);
  v41(v12, v18, v17);
  v20 = *(v19 + 56);
  v20(v12, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v8 + 104);
  v44 = v8 + 104;
  v45 = v7;
  v22(v53, enum case for DirectionalTextAlignment.none(_:), v7);
  v23 = sub_100745C84();
  v24 = objc_allocWithZone(v23);
  *(v54 + v42) = sub_100745C74();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_100921238 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v17, qword_1009813E0);
  v41(v12, v26, v17);
  v20(v12, 0, 1, v17);
  v22(v53, v21, v45);
  v27 = objc_allocWithZone(v23);
  v28 = sub_100745C74();
  v29 = v54;
  *(v54 + v25) = v28;
  v30 = (v29 + OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_insets);
  v31 = *&UIEdgeInsetsZero.bottom;
  *v30 = *&UIEdgeInsetsZero.top;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v46 + 104))(v49, enum case for Separator.Position.bottom(_:), v47);
  v55[3] = sub_1007507D4();
  v55[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v55);
  sub_1007507C4();
  v33 = v48;
  sub_100751354();
  v34 = v50;
  sub_100751314();
  v36 = v51;
  v35 = v52;
  (*(v51 + 8))(v33, v52);
  v37 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v39 = *(v36 + 40);
  v40 = v37;
  v39(&v37[v38], v34, v35);
  swift_endAccess();

  *(v29 + v32) = v40;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100058BF4()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = sub_10074F654();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_10074F584();
  sub_100039C50(v10, qword_10097D190);
  v12[1] = sub_10000D0FC(v10, qword_10097D190);
  v13 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v13 = 0x4041000000000000;
  sub_10074F614();
  v13 = 0x4041000000000000;
  sub_10074F614();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  sub_10074F614();
  v13 = 0;
  sub_10074F614();
  return sub_10074F544();
}

uint64_t sub_100058F0C()
{
  v0 = sub_10074F654();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_10074F584();
  sub_100039C50(v7, qword_10097D1A8);
  sub_10000D0FC(v7, qword_10097D1A8);
  v10 = 0x4074F00000000000;
  sub_10001CC10();
  sub_10074F614();
  v10 = 0x404A000000000000;
  sub_10074F614();
  v10 = 0x404A000000000000;
  sub_10074F614();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return sub_10074F554();
}

uint64_t sub_100059150()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = sub_10074F654();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_10000C518(&qword_100923E90);
  v37 = sub_10074F584();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007A79C0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v45 = 0x4030000000000000;
  sub_10074F614();
  v45 = 0x4030000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4030000000000000;
  sub_10074F614();
  v45 = 0x4030000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  v20 = v40;
  sub_10074F614();
  v21 = v42;
  sub_10074F544();
  v22 = v21 + 2 * v20;
  if (qword_100920050 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_10000D0FC(v37, qword_10097D190);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  sub_10074F614();
  v45 = 0x4041000000000000;
  sub_10074F614();
  v45 = 0x4041000000000000;
  sub_10074F614();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v45 = 0x4074F00000000000;
  sub_10074F614();
  v45 = 0x4041000000000000;
  sub_10074F614();
  v45 = 0x4041000000000000;
  sub_10074F614();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  sub_10074F554();
  v45 = 0x4074F00000000000;
  sub_10074F614();
  v45 = 0x404A000000000000;
  sub_10074F614();
  v45 = 0x404A000000000000;
  sub_10074F614();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  sub_10074F554();
  if (qword_100920058 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_10000D0FC(v37, qword_10097D1A8);
  result = v34(v27, v29, v28);
  qword_100924408 = v35;
  return result;
}

uint64_t sub_1000599BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100750304();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10000C518(&qword_100924598);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_100016B4C(a3, v13, &qword_1009245A0);
  v17 = sub_100743914();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_100016B4C(v55, v10, &qword_1009245A0);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_1009200A8 != -1)
      {
        swift_once();
      }

      v22 = sub_100750534();
      v48 = sub_10000D0FC(v22, qword_100924450);
      v23 = *(v22 - 8);
      v47 = *(v23 + 16);
      v49 = v23 + 16;
      v24 = v51;
      v47(v51, v48, v22);
      LODWORD(v46) = enum case for FontSource.useCase(_:);
      v25 = v52;
      v45 = *(v52 + 104);
      v45(v24);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v26 = sub_10000D134(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      sub_100750B14();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_10000D134(v56);
      v27(v29, v24, v6);
      sub_100750B14();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v47 = sub_10000D0FC(v32, qword_100924450);
  v33 = *(v32 - 8);
  v46 = *(v33 + 16);
  v48 = v33 + 16;
  v34 = v51;
  v46(v51, v47, v32);
  v35 = enum case for FontSource.useCase(_:);
  v36 = v52;
  v45 = *(v52 + 104);
  (v45)(v34, enum case for FontSource.useCase(_:), v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  sub_100750B14();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_10000D134(v56);
  v38(v40, v34, v6);
  sub_100750B14();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10000C8CC(v55, &qword_1009245A0);
  v41 = *(v21 + 48);
  v42 = sub_100750B04();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_10005A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100750304();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10000C518(&qword_100924598);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_100016B4C(a3, v14, &qword_1009245A0);
  v18 = sub_100743914();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_100016B4C(v57, v11, &qword_1009245A0);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_1009200B0 != -1)
      {
        swift_once();
      }

      v24 = sub_100750534();
      v50 = sub_10000D0FC(v24, qword_100924468);
      v25 = *(v24 - 8);
      v49 = *(v25 + 16);
      v51 = v25 + 16;
      v49(v8, v50, v24);
      LODWORD(v48) = enum case for FontSource.useCase(_:);
      v27 = v53;
      v26 = v54;
      v47 = *(v53 + 104);
      v47(v8);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v28 = sub_10000D134(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      sub_100750B14();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_10000D134(v58);
      v29(v31, v8, v26);
      sub_100750B14();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  v34 = sub_100750534();
  v49 = sub_10000D0FC(v34, qword_100924468);
  v35 = *(v34 - 8);
  v48 = *(v35 + 16);
  v50 = v35 + 16;
  v48(v8, v49, v34);
  v36 = enum case for FontSource.useCase(_:);
  v37 = v53;
  v38 = v54;
  v47 = *(v53 + 104);
  (v47)(v8, enum case for FontSource.useCase(_:), v54);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  sub_100750B14();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_10000D134(v58);
  v40(v42, v8, v38);
  sub_100750B14();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10000C8CC(v57, &qword_1009245A0);
  v43 = *(v23 + 48);
  v44 = sub_100750B04();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_10005A674()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_100924410 = result;
  return result;
}

void sub_10005A728(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = sub_100753064();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_10005A7F0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007466C4();
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  result = sub_1007466B4();
  *a4 = result;
  return result;
}

id sub_10005A970(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_100750534();
  sub_100039C50(v7, a2);
  v8 = sub_10000D0FC(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

id sub_10005AA60(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_10005AAA4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v182 = a4;
  v181 = a3;
  v180 = a2;
  v179 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v6 - 8);
  v189 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v161 - v9;
  v185 = sub_10000C518(&qword_100924598);
  __chkstk_darwin(v185);
  v188 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v187 = &v161 - v12;
  __chkstk_darwin(v13);
  v195 = &v161 - v14;
  __chkstk_darwin(v15);
  v194 = &v161 - v16;
  __chkstk_darwin(v17);
  v193 = &v161 - v18;
  __chkstk_darwin(v19);
  v192 = &v161 - v20;
  v21 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v21 - 8);
  v161 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v161 - v24;
  __chkstk_darwin(v25);
  v196 = &v161 - v26;
  __chkstk_darwin(v27);
  v184 = &v161 - v28;
  v176 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v176);
  v177 = (&v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  top = COERCE_DOUBLE(sub_10074AB44());
  v173 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v175 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v31 - 8);
  v172 = &v161 - v32;
  v33 = sub_100750534();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v191 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100751344();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100751374();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v183 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v199 = sub_1007507D4();
  v200 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v198);
  sub_1007507C4();
  sub_100751354();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *(v183 + v5) = v48;
  v49 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton;
  sub_1007466C4();
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v33, qword_100924450);
  v171 = v34;
  v51 = *(v34 + 16);
  v169 = *&v50;
  v183 = v51;
  (v51)(v191);
  *&v5[v49] = sub_1007466B4();
  v167 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkType;
  v53 = sub_100743914();
  v164 = *(v53 - 8);
  v54 = *(v164 + 56);
  v168 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_1007433C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton;
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  v166 = sub_10000D0FC(v33, qword_100924468);
  (v183)(v191);
  *&v5[v57] = sub_1007466B4();
  v165 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkType;
  v162 = v53;
  v54(&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009200C0 != -1)
  {
    swift_once();
  }

  v170 = sub_10000D0FC(v33, qword_100924498);
  v61 = v183;
  (v183)(v191);
  *&v5[v60] = sub_1007466B4();
  v62 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel;
  v66 = v185;
  v67 = v171;
  v68 = v61;
  if (qword_1009200B8 != -1)
  {
    swift_once();
  }

  v69 = sub_10000D0FC(v33, qword_100924480);
  v70 = v172;
  (v68)(v172, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v173 + 104))(COERCE_CGFLOAT(*&v175), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(sub_100745C84());
  *&v5[v65] = sub_100745C74();
  v72 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_configuration;
  v73 = sub_1007439C4();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v167[v5];
  v75 = v168;
  swift_beginAccess();
  v76 = v184;
  sub_100016B4C(v75 + v5, v184, &qword_1009245A0);
  v77 = *&v165[v5];
  swift_beginAccess();
  sub_100016B4C(&v5[v58], v196, &qword_1009245A0);
  v78 = objc_opt_self();
  v171 = v77;

  v191 = v74;

  v79.super.isa = [v78 currentTraitCollection];
  isa = v79.super.isa;
  bottom = UIEdgeInsetsZero.bottom;
  v82 = sub_100750514(v79).super.isa;
  [(objc_class *)v82 pointSize];
  v84 = v83;
  v85 = objc_opt_self();
  v167 = v82;
  v168 = [v85 fontWithDescriptor:v82 size:v84];
  [v168 lineHeight];
  v172 = v86;
  sub_1000599BC(v192, v192 + *(v66 + 48), v76);
  v87.super.isa = isa;
  v88 = sub_100750514(v87).super.isa;
  [(objc_class *)v88 pointSize];
  v165 = v88;
  v166 = [v85 fontWithDescriptor:v88 size:?];
  [v166 lineHeight];
  v173 = v89;
  sub_10005A020(v193, v193 + *(v66 + 48), v196);
  v183 = isa;
  v90 = [(objc_class *)isa preferredContentSizeCategory];
  LOBYTE(v76) = sub_100753934();

  if ((v76 & 1) == 0 || (v91 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v92 = v163;
    sub_100016B4C(v196, v163, &qword_1009245A0);
    v93 = v164;
    v94 = v162;
    v91 = 7.0;
    if ((*(v164 + 48))(v92, 1, v162) != 1)
    {
      v95 = v161;
      sub_100016B4C(v92, v161, &qword_1009245A0);
      v96 = (*(v93 + 88))(v95, v94);
      if (v96 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v91 = 5.0;
        if (v96 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v164 + 8))(v95, v94);
          v91 = 7.0;
        }
      }
    }

    sub_10000C8CC(v92, &qword_1009245A0);
  }

  v169 = v91;
  v97.super.isa = v183;
  v98.super.isa = sub_100750514(v97).super.isa;
  [(objc_class *)v98.super.isa pointSize];
  v99 = [v85 fontWithDescriptor:v98.super.isa size:?];
  [v99 lineHeight];
  v101 = v100;
  top = UIEdgeInsetsZero.top;
  sub_1007535D4();
  v170 = v102;
  v164 = v103;
  v163 = v104;
  v162 = v105;
  sub_1007535D4();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v192;
  sub_100016B4C(v192, v194, &qword_100924598);
  sub_100016B4C(v114, v195, &qword_100924598);
  v175 = bottom;
  if (v191)
  {
    sub_10074F2A4();
    v115 = v186;
    sub_100750504();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v186;
  }

  v117 = sub_1007504F4();
  v118 = *(*(v117 - 8) + 56);
  v118(v115, v116, 1, v117);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v121 = v193;
  sub_100016B4C(v193, v187, &qword_100924598);
  sub_100016B4C(v121, v188, &qword_100924598);
  v178 = v5;
  if (v171)
  {
    sub_10074F2A4();
    v122 = v189;
    sub_100750504();

    v123 = 0;
  }

  else
  {

    v123 = 1;
    v122 = v189;
  }

  v124 = v185;

  sub_10000C8CC(v193, &qword_100924598);
  sub_10000C8CC(v192, &qword_100924598);
  sub_10000C8CC(v196, &qword_1009245A0);
  sub_10000C8CC(v184, &qword_1009245A0);
  v118(v122, v123, 1, v117);
  v125 = v173;
  v126 = v173 - v101;
  v127 = *(v124 + 48);
  v128 = v176;
  v129 = *(v176 + 40);
  v130 = v177;
  v118(v177 + v129, 1, 1, v117);
  v196 = v128[15];
  v118(v130 + v196, 1, 1, v117);
  v131 = v164;
  *v130 = v170;
  v130[1] = v131;
  v132 = v162;
  v130[2] = v163;
  v130[3] = v132;
  v130[4] = v172;
  v130[5] = v107;
  v130[6] = v109;
  v130[7] = v111;
  v130[8] = v113;
  v133 = v128[7];
  v134 = sub_100750B04();
  v135 = *(v134 - 8);
  v136 = *(v135 + 32);
  v136(v130 + v133, v194, v134);
  v136(v130 + v128[8], v195 + v127, v134);
  *(v130 + v128[9]) = 0x4008000000000000;
  sub_10006644C(v186, v130 + v129, &unk_1009281D0);
  *(v130 + v128[11]) = v125;
  v137 = (v130 + v128[12]);
  *v137 = top;
  v137[1] = left;
  v137[2] = v175;
  v137[3] = right;
  v138 = v187;
  v136(v130 + v128[13], v187, v134);
  v139 = v188;
  v136(v130 + v128[14], v188 + v127, v134);
  sub_10006644C(v189, v130 + v196, &unk_1009281D0);
  *(v130 + v128[16]) = v169;
  v140 = v130 + v128[17];
  *v140 = v126;
  *(v140 + 2) = 0;
  *(v140 + 3) = 0;
  *(v140 + 1) = 0x4024000000000000;
  v141 = *(v135 + 8);
  v141(v139, v134);
  v141(v138 + v127, v134);
  v141(v195, v134);
  v141(v194 + v127, v134);
  v142 = v178;
  sub_1000666AC(v130, &v178[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v143 = ObjectType;
  v197.receiver = v142;
  v197.super_class = ObjectType;
  v144 = objc_msgSendSuper2(&v197, "initWithFrame:", v179, v180, v181, v182);
  v145 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton;
  v146 = *&v144[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton];
  sub_100016C60(0, &qword_100929CC0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = v144;
  v148 = v146;
  v149 = sub_100753FF4();
  [v148 addAction:v149 forControlEvents:0x2000];

  v150 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton;
  v151 = *&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v151;
  v153 = sub_100753FF4();
  [v152 addAction:v153 forControlEvents:0x2000];

  v154 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton;
  v155 = *&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;
  v157 = sub_100753FF4();
  [v156 addAction:v157 forControlEvents:0x2000];

  v158 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView;
  [*&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView] addSubview:*&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_separatorView]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView]];
  [*&v147[v158] addSubview:*&v147[v154]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkView]];
  [*&v147[v158] addSubview:*&v144[v145]];
  [*&v147[v158] addSubview:*&v147[v150]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel]];
  [v147 addSubview:*&v147[v158]];
  sub_10005C2EC();
  sub_10000C518(&unk_1009249D0);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1007A6580;
  *(v159 + 32) = sub_1007519E4();
  *(v159 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v159 + 48) = sub_100751554();
  *(v159 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v199 = v143;
  v198 = v147;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(&v198);
  return v147;
}

void sub_10005C254(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      sub_10001B5AC(*v6);

      v7();
      sub_1000164A8(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_10005C2EC()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = sub_1007541F4();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = sub_1007439C4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  v116 = v22;
  v29 = *(v22 + 48);
  v27 = v22 + 48;
  v28 = v29;
  v30 = 1;
  v31 = v29(&v1[v26], 1, v21);
  v121 = v29;
  if (!v31)
  {
    v32 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    v33 = sub_1007439A4();
    v34 = v32;
    v28 = v121;
    (*(v34 + 8))(v24, v21);
    v30 = v33 ^ 1;
  }

  [v25 setHidden:v30 & 1];
  v120 = v27;
  v35 = v28(&v1[v26], 1, v21);
  v100 = v24;
  if (!v35)
  {
    v36 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    sub_1007439B4();
    (*(v36 + 8))(v24, v21);
  }

  sub_100743254();
  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_100016B4C(v38, v102, &unk_100928A90);
  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  sub_1007541A4();
  sub_1007540A4();
  sub_1007540C4();
  sub_100016B4C(v39, v18, &unk_100928A90);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10000C8CC(v18, &unk_100928A90);
    v42 = v112;
  }

  else
  {
    v43 = sub_100743964();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_1009200C8 != -1)
  {
    swift_once();
  }

  v44 = qword_1009244B0;
LABEL_11:
  v97 = v41;
  sub_100754124();
  v45 = sub_100016C60(0, &qword_100923AB0);
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = sub_100750534();
  sub_10000D0FC(v103, qword_100924450);
  v47 = v98;
  v111 = v45;
  v48 = sub_100753C14();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  sub_100751A04();
  v51 = sub_1007519F4();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  sub_100754144();
  v54 = v118;
  v55 = v119;
  v56 = *(v119 + 16);
  v57 = v115;
  v107 = v119 + 16;
  v106 = v56;
  v56(v118, v11, v115);
  v58 = *(v55 + 56);
  v105 = v55 + 56;
  v104 = v58;
  v58(v54, 0, 1, v57);
  sub_100754224();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10000C8CC(v102, &unk_100928A90);
  v60 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_100016B4C(&v1[v114], v113, &unk_100928A90);
  v62 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  sub_1007541A4();
  sub_1007540A4();
  sub_1007540C4();
  v64 = v61;
  v65 = v99;
  sub_100016B4C(v64, v99, &unk_100928A90);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10000C8CC(v65, &unk_100928A90);
  }

  else
  {
    v67 = sub_100743944();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_1009200D0 != -1)
  {
    swift_once();
  }

  v68 = qword_1009244B8;
LABEL_19:
  sub_100754124();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = sub_100754034();
  sub_1007515C4();
  v70(v122, 0);
  v71 = sub_100754034();
  sub_1007515A4();
  v71(v122, 0);
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_10000D0FC(v103, qword_100924468);
  v73 = sub_100753C14();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  sub_100751A04();
  v109(v75, 0, 1, v110);
  sub_100754144();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  sub_100754224();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10000C8CC(v113, &unk_100928A90);
  v78 = v114;
  v79 = v121(&v1[v114], 1, v66);
  v80 = v101;
  if (v79)
  {
    v81 = v100;
  }

  else
  {
    v82 = v116;
    v81 = v100;
    (*(v116 + 16))(v100, &v1[v78], v66);
    sub_100743994();
    (*(v82 + 8))(v81, v66);
  }

  sub_100743254();
  sub_1007541A4();
  sub_1007540A4();
  sub_1007540C4();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = sub_100743984(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  sub_100754124();
  if (qword_1009200C0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v103, qword_100924498);
  v86 = [v1 traitCollection];
  v87 = sub_100753C14();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  sub_100751A04();
  v109(v89, 0, 1, v110);
  sub_100754144();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  sub_100754224();
  v91 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = sub_100743974(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_1009200D8 != -1)
    {
      swift_once();
    }

    v92 = qword_1009244C0;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_10005D2B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10000C518(&qword_1009245A0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_1000164A8(v10);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v11 = sub_100743914();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_10006644C(v8, &v0[v12], &qword_1009245A0);
  swift_endAccess();
  v13 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction];
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1000164A8(v14);
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton];
  [v15 setTitle:0 forState:0];
  [v15 setImage:0 forState:0];
  v16 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1000164A8(v17);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel] setText:0];
  v18 = sub_1007439C4();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1000656EC(v4, &v0[v19]);
  swift_endAccess();
  sub_10005C2EC();
  return sub_10000C8CC(v4, &unk_100928A90);
}

double sub_10005D60C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_1000664B4(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView();
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = sub_1007466C4();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView);
  v12 = sub_1007433C4();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton);
  v14 = sub_1007466C4();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_10005E3A0();
  v20 = v19;
  if (v19)
  {
    v19 = sub_100745C84();
    v21 = &protocol witness table for UILabel;
  }

  else
  {
    v21 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v20;
  v79[3] = v19;
  v79[4] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton);
  if (([v22 isHidden] & 1) != 0 || !objc_msgSend(v22, "hasContent"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v14;
    v78 = &protocol witness table for UIView;
    *&v76 = v22;
    v23 = v22;
  }

  v24 = v68;
  sub_1000664B4(v69, v68);
  sub_100016B4C(v86, v70, &unk_100928A00);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_10000C888(v70, v71);
    v27 = sub_100754284();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    sub_100750374();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v30, 1, v25) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v25;
      v75 = v26;
      v32 = sub_10000D134(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_10000C620(v70);
  }

  else
  {
    sub_10000C8CC(v70, &unk_100928A00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v33 = type metadata accessor for ShelfHeaderLayout(0);
  v34 = v24 + v33[5];
  v35 = v74;
  *v34 = v73;
  *(v34 + 16) = v35;
  *(v34 + 32) = v75;
  sub_100016B4C(&v83, v24 + v33[6], &unk_100924A60);
  sub_100016B4C(v82, v70, &unk_100928A00);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_10000C888(v70, v71);
    v38 = sub_100754284();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    sub_100750374();
    v42 = *(v36 - 8);
    if ((*(v42 + 48))(v41, 1, v36) == 1)
    {
      (*(v39 + 8))(v41, v38);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v36;
      v75 = v37;
      v43 = sub_10000D134(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_10000C620(v70);
  }

  else
  {
    sub_10000C8CC(v70, &unk_100928A00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_10000C824(v81, v24 + v33[8]);
  sub_100016B4C(v80, v70, &unk_100928A00);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_10000C888(v70, v71);
    v48 = sub_100754284();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    sub_100750374();
    v52 = *(v46 - 8);
    if ((*(v52 + 48))(v51, 1, v46) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v46;
      v75 = v47;
      v53 = sub_10000D134(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_10000C620(v70);
  }

  else
  {
    sub_10000C8CC(v70, &unk_100928A00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_100016B4C(v79, v24 + v33[10], &unk_100924A60);
  sub_100016B4C(&v76, v70, &unk_100928A00);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_10000C888(v70, v71);
    v58 = sub_100754284();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    sub_100750374();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_100066518(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000C8CC(&v76, &unk_100928A00);
      sub_10000C8CC(v79, &unk_100924A60);
      sub_10000C8CC(v80, &unk_100928A00);
      sub_10000C620(v81);
      sub_10000C8CC(v82, &unk_100928A00);
      sub_10000C8CC(&v83, &unk_100924A60);
      sub_10000C8CC(v86, &unk_100928A00);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_10000D134(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_100066518(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000C8CC(&v76, &unk_100928A00);
      sub_10000C8CC(v79, &unk_100924A60);
      sub_10000C8CC(v80, &unk_100928A00);
      sub_10000C620(v81);
      sub_10000C8CC(v82, &unk_100928A00);
      sub_10000C8CC(&v83, &unk_100924A60);
      sub_10000C8CC(v86, &unk_100928A00);
    }

    sub_10000C620(v70);
  }

  else
  {
    sub_100066518(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000C8CC(&v76, &unk_100928A00);
    sub_10000C8CC(v79, &unk_100924A60);
    sub_10000C8CC(v80, &unk_100928A00);
    sub_10000C620(v81);
    sub_10000C8CC(v82, &unk_100928A00);
    sub_10000C8CC(&v83, &unk_100924A60);
    sub_10000C8CC(v86, &unk_100928A00);
    sub_10000C8CC(v70, &unk_100928A00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v64 = v24 + v33[11];
  result = *&v73;
  v66 = v74;
  *v64 = v73;
  *(v64 + 16) = v66;
  *(v64 + 32) = v75;
  return result;
}

void *sub_10005E3A0()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100753094();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v0 attributedText];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 length];

  if (v9 < 1)
  {
    return 0;
  }

LABEL_9:
  v10 = v0;
  return v0;
}

uint64_t sub_10005E4B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1007410D4();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1000168F0();
  v7 = a2;
  return sub_1007410E4();
}

uint64_t sub_10005E558(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = sub_10074F314();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = sub_100743914();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100016B4C(a2, v17, &qword_1009245A0);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      sub_10074F324();
      sub_100743364();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10000C8CC(v17, &qword_1009245A0);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_10006644C(v14, v23, &qword_1009245A0);
  return swift_endAccess();
}

uint64_t sub_10005E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a5;
  v229 = *&a3;
  v230 = a2;
  ObjectType = swift_getObjectType();
  v224 = sub_100752AC4();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v220 = &v202 - v11;
  __chkstk_darwin(v12);
  v221 = &v202 - v13;
  v219 = sub_10000C518(&unk_10092E450);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v202 - v14;
  v15 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v15 - 8);
  v238 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v234 = &v202 - v18;
  v233 = sub_10000C518(&qword_100924598);
  __chkstk_darwin(v233);
  v237 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v236 = &v202 - v21;
  __chkstk_darwin(v22);
  v235 = &v202 - v23;
  __chkstk_darwin(v24);
  v243 = &v202 - v25;
  __chkstk_darwin(v26);
  v242 = &v202 - v27;
  __chkstk_darwin(v28);
  v241 = &v202 - v29;
  v211 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v211);
  v212 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v31 - 8);
  v209 = &v202 - v32;
  v228 = sub_100747C14();
  v33 = *(v228 - 1);
  __chkstk_darwin(v228);
  v225 = v34;
  v226 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v35 - 8);
  *&v203 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v204 = &v202 - v38;
  __chkstk_darwin(v39);
  v232 = &v202 - v40;
  __chkstk_darwin(v41);
  v231 = &v202 - v42;
  __chkstk_darwin(v43);
  v45 = &v202 - v44;
  v46 = sub_1007439F4();
  sub_100743A24();
  sub_10005E558(v46, v45, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkType);

  sub_10000C8CC(v45, &qword_1009245A0);
  v239 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton];
  v47 = sub_100743A74();
  v49 = v48;
  v240 = a4;
  v50 = sub_100747B94();
  v51 = sub_100743A44();
  v227 = a1;
  if (v51)
  {
    if (qword_100920068 != -1)
    {
      swift_once();
    }

    v52 = [qword_100924410 configurationWithTraitCollection:v50];
    v53 = sub_100743AC4();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_1000651D0(v47, v49, v50, v53);

  [v239 setAttributedTitle:v54 forState:0];

  v55 = sub_100743934();
  sub_100743A14();
  sub_10005E558(v55, v45, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkType);

  sub_10000C8CC(v45, &qword_1009245A0);
  v56 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton];
  v57 = sub_100743A54();
  v59 = v58;
  v60 = v240;
  v61 = sub_100747B94();
  v62 = sub_100743924();
  if (v62)
  {
  }

  v63 = sub_1000654F0(v57, v59, v61, v62 != 0);

  v214 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel];
  sub_100743A84();
  if (v65)
  {
    v66 = sub_100753064();
  }

  else
  {
    v66 = 0;
  }

  v215 = v64;
  [v64 setText:v66];

  v67 = sub_100743A04();
  v68 = sub_100064964(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v213 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton];
    v213 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = sub_100747B94();
      sub_100016C60(0, &qword_100923AB0);
      if (qword_1009200C0 != -1)
      {
        swift_once();
      }

      v77 = sub_100750534();
      sub_10000D0FC(v77, qword_100924498);
      v78 = sub_100753C14();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = sub_100753064();
      sub_1000656CC(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v240;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = sub_100753064();
      sub_1000656CC(v84, v85, v71);
      [v83 setTitle:v86 forState:0];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = sub_100743924();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v229;
    swift_unknownObjectWeakInit();
    v89 = v226;
    v90 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, v90);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_1000663DC;
    *(v87 + 24) = v92;
    v93 = sub_1000667F4;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
  *v94 = v93;
  v94[1] = v87;
  sub_1000164A8(v95);
  v96 = sub_100743A04();
  if (v96)
  {
    v97 = swift_allocObject();
    *(v97 + 24) = v229;
    swift_unknownObjectWeakInit();
    v98 = v226;
    v99 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v100 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v97;
    (*(v33 + 32))(v101 + v100, v98, v99);

    v96 = swift_allocObject();
    *(v96 + 16) = sub_100066288;
    *(v96 + 24) = v101;
    v102 = sub_1000667F4;
  }

  else
  {
    v102 = 0;
  }

  v103 = &v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction];
  v104 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction];
  *v103 = v102;
  v103[1] = v96;
  sub_1000164A8(v104);
  v105 = sub_1007439E4();
  if (v105)
  {
    v106 = swift_allocObject();
    *(v106 + 24) = v229;
    swift_unknownObjectWeakInit();
    v107 = v226;
    v108 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v109 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = v106;
    (*(v33 + 32))(v110 + v109, v107, v108);

    v105 = swift_allocObject();
    *(v105 + 16) = sub_100066230;
    *(v105 + 24) = v110;
    v111 = sub_100066280;
  }

  else
  {
    v111 = 0;
  }

  v112 = &v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  v113 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction];
  *v112 = v111;
  v112[1] = v105;
  sub_1000164A8(v113);
  v114 = v209;
  sub_1007439D4();
  v115 = sub_1007439C4();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  v116 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_1000656EC(v114, &v6[v116]);
  swift_endAccess();
  sub_10005C2EC();
  sub_10000C8CC(v114, &unk_100928A90);
  v117 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork];
  v118 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v119 = v231;
  sub_100016B4C(&v6[v118], v231, &qword_1009245A0);
  v120 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork];
  v121 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v122 = v232;
  sub_100016B4C(&v6[v121], v232, &qword_1009245A0);
  v225 = v120;

  v230 = v117;

  sub_10006575C();
  v226 = v6;
  v123 = [v6 traitCollection];
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v124 = sub_100750534();
  sub_10000D0FC(v124, qword_100924450);
  v125.super.isa = v123;
  isa = sub_100750514(v125).super.isa;
  [(objc_class *)isa pointSize];
  v128 = v127;
  v129 = objc_opt_self();
  v207 = isa;
  v208 = [v129 fontWithDescriptor:isa size:v128];
  [v208 lineHeight];
  v209 = v130;
  v131 = v233;
  sub_1000599BC(v241, v241 + *(v233 + 48), v119);
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v124, qword_100924468);
  v132.super.isa = v123;
  v133 = sub_100750514(v132).super.isa;
  [(objc_class *)v133 pointSize];
  v205 = v133;
  v206 = [v129 fontWithDescriptor:v133 size:?];
  [v206 lineHeight];
  v229 = v134;
  sub_10005A020(v242, v242 + *(v131 + 48), v122);
  v228 = v123;
  v135 = [(objc_class *)v123 preferredContentSizeCategory];
  v136 = sub_100753934();

  if ((v136 & 1) == 0 || (v137 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v138 = v204;
    sub_100016B4C(v122, v204, &qword_1009245A0);
    v139 = sub_100743914();
    v140 = *(v139 - 8);
    v137 = 7.0;
    if ((*(v140 + 48))(v138, 1, v139) != 1)
    {
      v141 = v203;
      sub_100016B4C(v138, v203, &qword_1009245A0);
      v142 = (*(v140 + 88))(v141, v139);
      if (v142 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v137 = 5.0;
        if (v142 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v140 + 8))(v141, v139);
          v137 = 7.0;
        }
      }
    }

    sub_10000C8CC(v138, &qword_1009245A0);
  }

  ObjectType = *&v137;
  if (qword_1009200C0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v124, qword_100924498);
  v143.super.isa = v228;
  v144.super.isa = sub_100750514(v143).super.isa;
  [(objc_class *)v144.super.isa pointSize];
  v145 = [v129 fontWithDescriptor:v144.super.isa size:?];
  [v145 lineHeight];
  v147 = v146;
  sub_1007535D4();
  v204 = v148;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  sub_1007535D4();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = v241;
  sub_100016B4C(v241, v243, &qword_100924598);
  sub_100016B4C(v163, v235, &qword_100924598);
  if (v230)
  {
    sub_10074F2A4();
    v164 = v234;
    sub_100750504();
    v165 = 0;
  }

  else
  {
    v165 = 1;
    v164 = v234;
  }

  v166 = v229 - v147;
  v167 = sub_1007504F4();
  v168 = *(*(v167 - 8) + 56);
  v168(v164, v165, 1, v167);
  v169 = *&UIEdgeInsetsZero.top;
  v202 = *&UIEdgeInsetsZero.bottom;
  v203 = v169;
  v170 = v242;
  sub_100016B4C(v242, v236, &qword_100924598);
  sub_100016B4C(v170, v237, &qword_100924598);
  if (v225)
  {
    sub_10074F2A4();
    v171 = v238;
    sub_100750504();

    v172 = 0;
  }

  else
  {

    v172 = 1;
    v171 = v238;
  }

  v173 = v231;

  sub_10000C8CC(v242, &qword_100924598);
  sub_10000C8CC(v241, &qword_100924598);
  sub_10000C8CC(v232, &qword_1009245A0);
  sub_10000C8CC(v173, &qword_1009245A0);
  v168(v171, v172, 1, v167);
  v174 = *(v233 + 48);
  v175 = v211;
  v176 = *(v211 + 40);
  v177 = v212;
  v168(&v212[v176], 1, 1, v167);
  v242 = v175[15];
  v168(&v177[v242], 1, 1, v167);
  *v177 = v204;
  *(v177 + 1) = v150;
  *(v177 + 2) = v152;
  *(v177 + 3) = v154;
  *(v177 + 4) = v209;
  *(v177 + 5) = v156;
  *(v177 + 6) = v158;
  *(v177 + 7) = v160;
  *(v177 + 8) = v162;
  v178 = v175[7];
  v179 = sub_100750B04();
  v180 = *(v179 - 8);
  v181 = *(v180 + 32);
  v181(&v177[v178], v243, v179);
  v182 = v235;
  v181(&v177[v175[8]], v235 + v174, v179);
  *&v177[v175[9]] = 0x4008000000000000;
  sub_10006644C(v234, &v177[v176], &unk_1009281D0);
  *&v177[v175[11]] = v229;
  v183 = &v177[v175[12]];
  v184 = v202;
  *v183 = v203;
  *(v183 + 1) = v184;
  v185 = v236;
  v181(&v177[v175[13]], v236, v179);
  v186 = v237;
  v181(&v177[v175[14]], v237 + v174, v179);
  sub_10006644C(v238, &v177[v242], &unk_1009281D0);
  *&v177[v175[16]] = ObjectType;
  v187 = &v177[v175[17]];
  *v187 = v166;
  *(v187 + 2) = 0;
  *(v187 + 3) = 0;
  *(v187 + 1) = 0x4024000000000000;
  v188 = *(v180 + 8);
  v188(v186, v179);
  v188(v185 + v174, v179);
  v188(v182, v179);
  v188(v243 + v174, v179);
  v189 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_metrics;
  v190 = v226;
  swift_beginAccess();
  sub_1000660D8(v177, &v190[v189]);
  swift_endAccess();
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  sub_1000608C4();

  if (sub_100743924())
  {

    v191 = sub_1007439E4();
    v192 = v220;
    if (v191 || sub_100743A04())
    {

      v193 = 0;
    }

    else
    {
      v193 = 1;
    }
  }

  else
  {
    v193 = 0;
    v192 = v220;
  }

  v190[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] = v193;
  [*&v190[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView] setUserInteractionEnabled:v193 ^ 1u];
  v194 = v217;
  sub_100747C04();
  swift_getKeyPath();
  v195 = v219;
  sub_1007525B4();

  (*(v218 + 8))(v194, v195);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  v196 = sub_100743924();
  if (v196)
  {
  }

  *(&v247 + 1) = &type metadata for Bool;
  LOBYTE(v246) = v196 != 0;
  v197 = v221;
  sub_100752AA4();
  v198 = *(v223 + 8);
  v199 = v224;
  v198(v192, v224);
  sub_10000C8CC(&v246, &unk_100923520);
  sub_100753C74();
  v198(v197, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  v200 = v222;
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  sub_100753C74();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  sub_100753C74();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  sub_100753C74();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  sub_100753C74();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_100066198(&v248, v244 + 16);
  sub_100752A94();
  sub_10000C8CC(&v246, &unk_100923520);
  sub_10000C8CC(&v244, &unk_100923520);
  sub_100753C74();
  v198(v200, v199);
  [v190 setNeedsLayout];
  return sub_100016994(&v248);
}

uint64_t sub_10006078C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_100747C04();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_1000608C4()
{
  v1 = sub_10074F284();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork))
  {

    sub_10074F2A4();
    sub_10074F294();
    sub_10074F254();
    (*(v2 + 8))(v4, v1);
    sub_10074F374();
    sub_1007433C4();
    sub_10004D658();
    sub_100744204();
  }

  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork))
  {

    sub_10074F2A4();
    sub_10074F294();
    sub_10074F254();
    (*(v2 + 8))(v4, v1);
    sub_10074F374();
    sub_1007433C4();
    sub_10004D658();
    sub_100744204();
  }
}

double sub_100060B24(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v365 = a4;
  v389 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v389);
  v374 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v366 = &v329 - v9;
  v10 = sub_100750BD4();
  v385 = *(v10 - 8);
  v386 = v10;
  __chkstk_darwin(v10);
  v330 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750954();
  v345 = *(v12 - 8);
  v346 = v12;
  __chkstk_darwin(v12);
  v363 = &v329 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v332 = &v329 - v15;
  __chkstk_darwin(v16);
  v343 = &v329 - v17;
  __chkstk_darwin(v18);
  v344 = &v329 - v19;
  v342 = sub_100754724();
  v340 = *(v342 - 8);
  __chkstk_darwin(v342);
  v339 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_1007504F4();
  v384 = *(v396 - 8);
  __chkstk_darwin(v396);
  v341 = &v329 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v336 = &v329 - v23;
  v24 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v24 - 8);
  v371 = &v329 - v25;
  v26 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v26 - 8);
  v370 = &v329 - v27;
  v28 = sub_1007541F4();
  v372 = *(v28 - 8);
  v373 = v28;
  __chkstk_darwin(v28);
  v369 = &v329 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v368 = &v329 - v31;
  v32 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v32 - 8);
  v362 = &v329 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v377 = &v329 - v35;
  __chkstk_darwin(v36);
  v334 = &v329 - v37;
  __chkstk_darwin(v38);
  v376 = &v329 - v39;
  v383 = sub_1007439C4();
  v394 = *(v383 - 8);
  __chkstk_darwin(v383);
  v360 = &v329 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10000C518(&qword_1009245C0);
  __chkstk_darwin(v41 - 8);
  v364 = &v329 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v331 = &v329 - v44;
  __chkstk_darwin(v45);
  v395 = &v329 - v46;
  v47 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v47 - 8);
  v338 = &v329 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v335 = &v329 - v50;
  __chkstk_darwin(v51);
  v387 = &v329 - v52;
  __chkstk_darwin(v53);
  v380 = (&v329 - v54);
  v55 = sub_10000C518(&qword_100924598);
  __chkstk_darwin(v55);
  v382 = &v329 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v381 = &v329 - v58;
  __chkstk_darwin(v59);
  v397 = &v329 - v60;
  __chkstk_darwin(v61);
  v391 = &v329 - v62;
  __chkstk_darwin(v63);
  v390 = &v329 - v64;
  __chkstk_darwin(v65);
  v67 = &v329 - v66;
  v68 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v68 - 8);
  v349 = &v329 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v367 = &v329 - v71;
  __chkstk_darwin(v72);
  v74 = &v329 - v73;
  __chkstk_darwin(v75);
  v77 = &v329 - v76;
  v358 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v358);
  v392 = &v329 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v399 = (&v329 - v80);
  v81 = sub_100747B94();
  v379 = sub_1007439F4();
  sub_100743A24();
  v355 = sub_100743934();
  v388 = v74;
  v393 = a1;
  sub_100743A14();
  v398 = a2;
  sub_10006575C();
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v82 = sub_100750534();
  v83 = sub_10000D0FC(v82, qword_100924450);
  v84.super.isa = v81;
  v333 = v83;
  isa = sub_100750514(v84).super.isa;
  [(objc_class *)isa pointSize];
  v87 = v86;
  v88 = objc_opt_self();
  v353 = isa;
  v354 = [v88 fontWithDescriptor:isa size:v87];
  [v354 lineHeight];
  v356 = v89;
  v90 = &v67[*(v55 + 48)];
  v91 = v67;
  v357 = v77;
  sub_1000599BC(v67, v90, v77);
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  v92 = sub_10000D0FC(v82, qword_100924468);
  v93.super.isa = v81;
  v361 = v92;
  v94 = sub_100750514(v93).super.isa;
  [(objc_class *)v94 pointSize];
  v350 = v94;
  v351 = [v88 fontWithDescriptor:v94 size:?];
  [v351 lineHeight];
  v378 = v95;
  v359 = v55;
  sub_10005A020(v390, &v390[*(v55 + 48)], v388);
  v400 = v81;
  v96 = [(objc_class *)v81 preferredContentSizeCategory];
  v97 = sub_100753934();

  v375 = v82;
  if ((v97 & 1) == 0 || (v98 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v352 = v67;
    v99 = v88;
    v100 = *&v367;
    sub_100016B4C(v388, *&v367, &qword_1009245A0);
    v101 = sub_100743914();
    v102 = *(v101 - 8);
    v98 = 7.0;
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v103 = v349;
      sub_100016B4C(v100, v349, &qword_1009245A0);
      v104 = (*(v102 + 88))(v103, v101);
      if (v104 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v98 = 5.0;
        if (v104 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v102 + 8))(v103, v101);
          v98 = 7.0;
        }
      }
    }

    sub_10000C8CC(v100, &qword_1009245A0);
    v82 = v375;
    v88 = v99;
    v91 = v352;
  }

  v352 = *&v98;
  v367 = a3;
  if (qword_1009200C0 != -1)
  {
    swift_once();
  }

  v105 = sub_10000D0FC(v82, qword_100924498);
  v106.super.isa = v400;
  v337 = v105;
  v107.super.isa = sub_100750514(v106).super.isa;
  [(objc_class *)v107.super.isa pointSize];
  v108 = [v88 fontWithDescriptor:v107.super.isa size:?];
  [v108 lineHeight];
  v110 = v109;
  sub_1007535D4();
  v349 = v111;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_1007535D4();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  sub_100016B4C(v91, v391, &qword_100924598);
  sub_100016B4C(v91, v397, &qword_100924598);
  v126 = v388;
  if (v379)
  {
    sub_10074F2A4();
    v127 = v380;
    sub_100750504();
    v128 = 0;
  }

  else
  {
    v128 = 1;
    v127 = v380;
  }

  v129 = v378 - v110;
  v130 = *(v384 + 56);
  v130(v127, v128, 1, v396);
  v131 = *&UIEdgeInsetsZero.top;
  v347 = *&UIEdgeInsetsZero.bottom;
  v348 = v131;
  v132 = v390;
  sub_100016B4C(v390, v381, &qword_100924598);
  sub_100016B4C(v132, v382, &qword_100924598);
  if (v355)
  {
    sub_10074F2A4();
    sub_100750504();

    v133 = 0;
  }

  else
  {

    v133 = 1;
  }

  v134 = v357;

  sub_10000C8CC(v390, &qword_100924598);
  sub_10000C8CC(v91, &qword_100924598);
  sub_10000C8CC(v126, &qword_1009245A0);
  sub_10000C8CC(v134, &qword_1009245A0);
  v135 = v133;
  v136 = v396;
  v130(v387, v135, 1, v396);
  v137 = v358;
  v138 = *(v359 + 48);
  v139 = *(v358 + 40);
  v140 = v399;
  v130(v399 + v139, 1, 1, v136);
  v388 = v137[15];
  v130(&v140[v388], 1, 1, v136);
  *v140 = v349;
  *(v140 + 1) = v113;
  *(v140 + 2) = v115;
  *(v140 + 3) = v117;
  *(v140 + 4) = v356;
  *(v140 + 5) = v119;
  *(v140 + 6) = v121;
  *(v140 + 7) = v123;
  *(v140 + 8) = v125;
  v141 = v137[7];
  v142 = sub_100750B04();
  v143 = *(v142 - 8);
  v144 = *(v143 + 32);
  v357 = v141;
  v144(&v141[v140], v391, v142);
  v356 = v137[8];
  v390 = v138;
  v144(&v140[v356], &v138[v397], v142);
  *&v140[v137[9]] = 0x4008000000000000;
  v379 = v139;
  sub_10006644C(v380, &v140[v139], &unk_1009281D0);
  *&v140[v137[11]] = v378;
  v145 = &v140[v137[12]];
  v146 = v347;
  *v145 = v348;
  v145[1] = v146;
  v359 = v137[13];
  v147 = v381;
  v144(&v140[v359], v381, v142);
  *&v378 = v137[14];
  v148 = v382;
  v144(&v140[*&v378], &v138[v382], v142);
  sub_10006644C(v387, &v140[v388], &unk_1009281D0);
  *&v140[v137[16]] = v352;
  v149 = &v140[v137[17]];
  *v149 = v129;
  *(v149 + 2) = 0;
  *(v149 + 3) = 0;
  *(v149 + 1) = 0x4024000000000000;
  v150 = *(v143 + 8);
  v150(v148, v142);
  v151 = v390;
  v150(&v390[v147], v142);
  v150(v397, v142);
  v150(&v151[v391], v142);
  v380 = *(v385 + 56);
  v381 = v385 + 56;
  (v380)(v395, 1, 1, v386);
  v152 = v360;
  sub_1007439D4();
  LOBYTE(v142) = sub_1007439A4();
  v153 = *(v394 + 8);
  v154 = v383;
  v387 = v394 + 8;
  v382 = v153;
  v153(v152, v383);
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = v367;
  if (v142)
  {
    sub_100751364();
    v156 = sub_100750F34();
    swift_allocObject();
    v155 = sub_100750F14();
    v157 = &protocol witness table for LayoutViewPlaceholder;
  }

  v423[0] = v155;
  v423[1] = 0;
  v423[2] = 0;
  v423[3] = v156;
  v423[4] = v157;
  sub_100743A74();
  v159 = v369;
  v160 = v377;
  if (!v161)
  {
    v390 = 0;
    v166 = v399;
    goto LABEL_40;
  }

  if (qword_1009200A0 != -1)
  {
    swift_once();
  }

  v162 = qword_100924448;
  (*(v394 + 56))(v376, 1, 1, v154);
  v390 = v162;
  v163 = v162;
  v164 = sub_1007439E4();
  if (v164)
  {
  }

  sub_1007541A4();
  sub_1007540A4();
  sub_1007540C4();
  v165 = v334;
  sub_100016B4C(v376, v334, &unk_100928A90);
  if ((*(v394 + 48))(v165, 1, v154) == 1)
  {
    sub_10000C8CC(v165, &unk_100928A90);
LABEL_31:
    if (qword_1009200C8 != -1)
    {
      swift_once();
    }

    v168 = qword_1009244B0;
    goto LABEL_34;
  }

  v167 = sub_100743964();
  (v382)(v165, v154);
  if (!v167)
  {
    goto LABEL_31;
  }

LABEL_34:
  v169 = v164 != 0;
  v170 = v368;
  sub_100754124();
  sub_100016C60(0, &qword_100923AB0);
  v171 = sub_100753C14();
  *(swift_allocObject() + 16) = v171;
  v172 = v171;
  v173 = v370;
  sub_100751A04();
  v174 = sub_1007519F4();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  sub_100754144();
  v175 = v371;
  v176 = v372;
  v177 = v373;
  (*(v372 + 16))(v371, v170, v373);
  (*(v176 + 56))(v175, 0, 1, v177);
  sub_100754224();
  [v163 setUserInteractionEnabled:v169];
  [v163 _setWantsAccessibilityUnderline:v169];

  (*(v176 + 8))(v170, v177);
  sub_10000C8CC(v376, &unk_100928A90);
  v178 = sub_100743A74();
  v180 = v179;
  v181 = sub_100747B94();
  if (sub_100743A44())
  {
    v160 = v377;
    if (qword_100920068 != -1)
    {
      swift_once();
    }

    v182 = [qword_100924410 configurationWithTraitCollection:v181];
    v183 = sub_100743AC4();
  }

  else
  {
    v183 = 0;
    v160 = v377;
  }

  v184 = sub_1000651D0(v178, v180, v181, v183);

  [v163 setAttributedTitle:v184 forState:0];

  v166 = v399;
  v154 = v383;
LABEL_40:
  if (sub_1007439F4())
  {

    v185 = v335;
    sub_100016B4C(v166 + v379, v335, &unk_1009281D0);
    v186 = v384;
    v187 = v396;
    if ((*(v384 + 48))(v185, 1, v396) == 1)
    {
      sub_10000C8CC(v185, &unk_1009281D0);
      v397 = 0;
    }

    else
    {
      (*(v186 + 32))(v336, v185, v187);
      v188 = v339;
      sub_1007502D4();
      sub_100750AD4();
      v189 = *(v340 + 8);
      v190 = v342;
      v189(v188, v342);
      sub_1007502D4();
      sub_100750AD4();
      v191 = v188;
      v159 = v369;
      v192 = v190;
      v160 = v377;
      v189(v191, v192);
      v193 = v336;
      sub_100750474();
      sub_100750F34();
      swift_allocObject();
      v397 = sub_100750F14();
      (*(v186 + 8))(v193, v187);
    }

    v154 = v383;
  }

  else
  {
    v397 = 0;
  }

  v194 = sub_100743924();
  if (v194)
  {
  }

  v195 = v160;
  if (qword_100920098 != -1)
  {
    swift_once();
  }

  v196 = qword_100924440;
  v197 = sub_100743A54();
  v199 = v198;
  v200 = sub_100747B94();
  v201 = sub_1000654F0(v197, v199, v200, v194 != 0);

  v391 = v196;
  [v196 setAttributedTitle:v201 forState:0];

  v202 = v394;
  v203 = v195;
  (*(v394 + 56))(v195, 1, 1, v154);
  sub_1007541A4();
  sub_1007540A4();
  sub_1007540C4();
  v204 = v362;
  sub_100016B4C(v195, v362, &unk_100928A90);
  if ((*(v202 + 48))(v204, 1, v154) == 1)
  {
    sub_10000C8CC(v204, &unk_100928A90);
  }

  else
  {
    v205 = sub_100743944();
    (v382)(v204, v154);
    if (v205)
    {
      goto LABEL_56;
    }
  }

  if (qword_1009200D0 != -1)
  {
    swift_once();
  }

  v206 = qword_1009244B8;
LABEL_56:
  v207 = v194 != 0;
  sub_100754124();
  v208 = [objc_opt_self() clearColor];
  v209 = sub_100754034();
  sub_1007515C4();
  v209(&v420, 0);
  v210 = sub_100754034();
  sub_1007515A4();
  v210(&v420, 0);
  v211 = sub_100016C60(0, &qword_100923AB0);
  v212 = sub_100753C14();
  *(swift_allocObject() + 16) = v212;
  v213 = v212;
  v214 = v370;
  sub_100751A04();
  v215 = sub_1007519F4();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  sub_100754144();
  v216 = v371;
  v217 = v372;
  v218 = v373;
  (*(v372 + 16))(v371, v159, v373);
  (*(v217 + 56))(v216, 0, 1, v218);
  v219 = v391;
  sub_100754224();
  [v219 setNeedsUpdateConfiguration];
  [v219 setContentHorizontalAlignment:4];
  [v219 setUserInteractionEnabled:v207];
  [v219 _setWantsAccessibilityUnderline:v207];

  (*(v217 + 8))(v159, v218);
  sub_10000C8CC(v203, &unk_100928A90);
  if (sub_100743934())
  {

    v220 = v338;
    sub_100016B4C(v399 + v388, v338, &unk_1009281D0);
    v221 = v384;
    v222 = v396;
    v223 = (*(v384 + 48))(v220, 1, v396);
    v224 = v363;
    if (v223 == 1)
    {
      sub_10000C8CC(v220, &unk_1009281D0);
      v225 = 0;
    }

    else
    {
      (*(v221 + 32))(v341, v220, v222);
      v226 = v339;
      sub_1007502D4();
      sub_100750AD4();
      v394 = v211;
      v227 = *(v340 + 8);
      v228 = v342;
      v227(v226, v342);
      sub_1007502D4();
      sub_100750AD4();
      v227(v226, v228);
      v229 = v341;
      sub_100750474();
      sub_100750F34();
      swift_allocObject();
      v225 = sub_100750F14();
      (*(v221 + 8))(v229, v396);
    }
  }

  else
  {
    v225 = 0;
    v224 = v363;
  }

  v230 = v374;
  v231 = sub_100743A84();
  v233 = v375;
  v396 = v225;
  if (v232)
  {
    v234 = HIBYTE(v232) & 0xF;
    if ((v232 & 0x2000000000000000) == 0)
    {
      v234 = v231 & 0xFFFFFFFFFFFFLL;
    }

    if (v234)
    {
      v388 = v231;
      v394 = v232;
      sub_100750944();
      if (qword_1009200B8 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v233, qword_100924480);
      v235 = sub_100747B94();
      v236 = sub_100753C14();

      v237 = v332;
      sub_100750934();

      v238 = v224;
      v239 = v345;
      v240 = v346;
      v241 = *(v345 + 8);
      v241(v238, v346);
      v242 = v343;
      sub_100750904();
      v241(v237, v240);
      v243 = v344;
      sub_1007508F4();
      v241(v242, v240);
      (*(v239 + 16))(v242, v243, v240);
      sub_100750BB4();
      v244 = v331;
      sub_100750BE4();
      v241(v243, v240);
      v245 = v395;
      sub_10000C8CC(v395, &qword_1009245C0);
      (v380)(v244, 0, 1, v386);
      sub_100066578(v244, v245, &qword_1009245C0);
      v230 = v374;
      v225 = v396;
    }

    else
    {
    }
  }

  v246 = sub_100743A04();
  v247 = sub_100064964(v246);
  if (v249 == -1)
  {
    v419 = 0;
    v417 = 0u;
    v418 = 0u;
    v261 = v386;
  }

  else
  {
    v250 = v247;
    v251 = v248;
    if (v249)
    {
      v252 = v249;
      v253 = sub_100747B94();
      v254 = sub_100753C14();
      v255 = [objc_opt_self() configurationWithFont:v254 scale:2];
      v256 = sub_100753064();
      sub_1000656CC(v250, v251, v252);
      v257 = [objc_opt_self() _systemImageNamed:v256 withConfiguration:v255];

      if (v257)
      {
        v258 = v257;
        [v258 size];
        v259 = sub_100750F34();
        swift_allocObject();
        v260 = sub_100750F14();
        *(&v418 + 1) = v259;
        v419 = &protocol witness table for LayoutViewPlaceholder;

        *&v417 = v260;
      }

      else
      {
        v419 = 0;
        v417 = 0u;
        v418 = 0u;
      }

      v230 = v374;
      v261 = v386;
    }

    else
    {
      v262 = v343;
      sub_100750944();
      v263 = sub_100747B94();
      v264 = sub_100753C14();

      sub_100750934();
      (*(v345 + 8))(v262, v346);
      sub_100750BB4();
      v265 = v330;
      sub_100750BE4();
      sub_100750BA4();
      v261 = v386;
      (*(v385 + 8))(v265, v386);
      v266 = *(&v421 + 1);
      v267 = v422;
      v268 = sub_10000C888(&v420, *(&v421 + 1));
      *(&v418 + 1) = v266;
      v419 = v267[1];
      v269 = sub_10000D134(&v417);
      (*(*(v266 - 8) + 16))(v269, v268, v266);
      sub_10000C620(&v420);
    }

    v225 = v396;
  }

  v420 = v417;
  v421 = v418;
  v422 = v419;
  sub_1000664B4(v399, v392);
  sub_100016B4C(v423, &v417, &unk_100928A00);
  if (v390)
  {
    v270 = v390;
    if (([v270 isHidden] & 1) == 0 && objc_msgSend(v270, "hasContent"))
    {
      v271 = sub_1007466C4();
      v416 = &protocol witness table for UIButton;
      *(&v415 + 1) = v271;
      *&v414 = v270;
      goto LABEL_84;
    }
  }

  v416 = 0;
  v414 = 0u;
  v415 = 0u;
LABEL_84:
  v272 = v385;
  v273 = v397;
  if (v397)
  {
    v274 = sub_100750F34();
    v273 = &protocol witness table for LayoutViewPlaceholder;
    v275 = v397;
  }

  else
  {
    v275 = 0;
    v274 = 0;
    v413[2] = 0;
    v413[1] = 0;
  }

  v413[0] = v275;
  v413[3] = v274;
  v413[4] = v273;
  v276 = sub_1007466C4();
  v412[4] = &protocol witness table for UIButton;
  v412[3] = v276;
  v412[0] = v391;
  if (v225)
  {
    v277 = sub_100750F34();
    v278 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v225;
  }

  else
  {
    v279 = 0;
    v277 = 0;
    v278 = 0;
    v411[2] = 0;
    v411[1] = 0;
  }

  v280 = v364;
  v411[0] = v279;
  v411[3] = v277;
  v411[4] = v278;
  sub_100016B4C(v395, v364, &qword_1009245C0);
  if ((*(v272 + 48))(v280, 1, v261) == 1)
  {

    v281 = v391;
    sub_10000C8CC(v280, &qword_1009245C0);
    v408 = 0u;
    v409 = 0u;
    v410 = 0;
  }

  else
  {
    *(&v409 + 1) = v261;
    v410 = &protocol witness table for LabelPlaceholder;
    v282 = sub_10000D134(&v408);
    (*(v272 + 32))(v282, v280, v261);

    v283 = v391;
  }

  sub_100016B4C(&v420, v407, &unk_100928A00);
  sub_1000664B4(v392, v230);
  sub_100016B4C(&v417, v401, &unk_100928A00);
  v284 = v402;
  if (v402)
  {
    v285 = v403;
    sub_10000C888(v401, v402);
    v286 = sub_100754284();
    v287 = *(v286 - 8);
    __chkstk_darwin(v286);
    v289 = &v329 - v288;
    sub_100750374();
    v290 = *(v284 - 8);
    if ((*(v290 + 48))(v289, 1, v284) == 1)
    {
      (*(v287 + 8))(v289, v286);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v284;
      v406 = v285;
      v292 = sub_10000D134(&v404);
      (*(v290 + 32))(v292, v289, v284);
    }

    v291 = v389;
    sub_10000C620(v401);
  }

  else
  {
    sub_10000C8CC(v401, &unk_100928A00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
    v291 = v389;
  }

  v293 = v230 + v291[5];
  v294 = v405;
  *v293 = v404;
  *(v293 + 16) = v294;
  *(v293 + 32) = v406;
  sub_100016B4C(&v414, v230 + v291[6], &unk_100924A60);
  sub_100016B4C(v413, v401, &unk_100928A00);
  v295 = v402;
  if (v402)
  {
    v296 = v403;
    sub_10000C888(v401, v402);
    v297 = sub_100754284();
    v298 = *(v297 - 8);
    __chkstk_darwin(v297);
    v300 = &v329 - v299;
    sub_100750374();
    v301 = *(v295 - 8);
    if ((*(v301 + 48))(v300, 1, v295) == 1)
    {
      (*(v298 + 8))(v300, v297);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v295;
      v406 = v296;
      v302 = sub_10000D134(&v404);
      (*(v301 + 32))(v302, v300, v295);
    }

    sub_10000C620(v401);
    v291 = v389;
  }

  else
  {
    sub_10000C8CC(v401, &unk_100928A00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v303 = v230 + v291[7];
  v304 = v405;
  *v303 = v404;
  *(v303 + 16) = v304;
  *(v303 + 32) = v406;
  sub_10000C824(v412, v230 + v291[8]);
  sub_100016B4C(v411, v401, &unk_100928A00);
  v305 = v402;
  if (v402)
  {
    v306 = v403;
    sub_10000C888(v401, v402);
    v307 = sub_100754284();
    v308 = *(v307 - 8);
    __chkstk_darwin(v307);
    v310 = &v329 - v309;
    sub_100750374();
    v311 = *(v305 - 8);
    if ((*(v311 + 48))(v310, 1, v305) == 1)
    {
      (*(v308 + 8))(v310, v307);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v305;
      v406 = v306;
      v312 = sub_10000D134(&v404);
      (*(v311 + 32))(v312, v310, v305);
    }

    sub_10000C620(v401);
    v291 = v389;
  }

  else
  {
    sub_10000C8CC(v401, &unk_100928A00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v313 = v230 + v291[9];
  v314 = v405;
  *v313 = v404;
  *(v313 + 16) = v314;
  *(v313 + 32) = v406;
  sub_100016B4C(&v408, v230 + v291[10], &unk_100924A60);
  sub_100016B4C(v407, v401, &unk_100928A00);
  v315 = v402;
  if (v402)
  {
    v316 = v230;
    v317 = v403;
    sub_10000C888(v401, v402);
    v318 = sub_100754284();
    v319 = *(v318 - 8);
    __chkstk_darwin(v318);
    v321 = &v329 - v320;
    sub_100750374();
    v322 = *(v315 - 8);
    if ((*(v322 + 48))(v321, 1, v315) == 1)
    {
      sub_10000C8CC(v407, &unk_100928A00);
      sub_10000C8CC(&v417, &unk_100928A00);
      sub_100066518(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000C8CC(&v408, &unk_100924A60);
      sub_10000C8CC(v411, &unk_100928A00);
      sub_10000C620(v412);
      sub_10000C8CC(v413, &unk_100928A00);
      sub_10000C8CC(&v414, &unk_100924A60);
      (*(v319 + 8))(v321, v318);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v315;
      v406 = v317;
      v323 = sub_10000D134(&v404);
      (*(v322 + 32))(v323, v321, v315);
      sub_10000C8CC(v407, &unk_100928A00);
      sub_10000C8CC(&v417, &unk_100928A00);
      sub_100066518(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000C8CC(&v408, &unk_100924A60);
      sub_10000C8CC(v411, &unk_100928A00);
      sub_10000C620(v412);
      sub_10000C8CC(v413, &unk_100928A00);
      sub_10000C8CC(&v414, &unk_100924A60);
    }

    sub_10000C620(v401);
    v291 = v389;
    v230 = v316;
  }

  else
  {
    sub_10000C8CC(v407, &unk_100928A00);
    sub_10000C8CC(&v417, &unk_100928A00);
    sub_100066518(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000C8CC(&v408, &unk_100924A60);
    sub_10000C8CC(v411, &unk_100928A00);
    sub_10000C620(v412);
    sub_10000C8CC(v413, &unk_100928A00);
    sub_10000C8CC(&v414, &unk_100924A60);
    sub_10000C8CC(v401, &unk_100928A00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v324 = v230 + v291[11];
  v325 = v405;
  *v324 = v404;
  *(v324 + 16) = v325;
  *(v324 + 32) = v406;
  v326 = v366;
  sub_1000666AC(v230, v366, type metadata accessor for ShelfHeaderLayout);
  v327 = sub_100747B94();
  ShelfHeaderLayout.measure(toFit:with:)(v327);

  sub_100066518(v326, type metadata accessor for ShelfHeaderLayout);
  sub_10000C8CC(&v420, &unk_100928A00);
  sub_10000C8CC(v423, &unk_100928A00);
  sub_10000C8CC(v395, &qword_1009245C0);
  sub_100066518(v399, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v158;
}

void sub_100063990(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_100669078(a1);
      if (v9)
      {
        v10 = *&v2[v6];
        *&v2[v6] = v9;
        v11 = v9;

        [v2 alpha];
        if (v12 == 0.5)
        {
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          *(v15 + 24) = 0x3FE0000000000000;
          aBlock[4] = sub_100066804;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000CF7B0;
          aBlock[3] = &unk_100865190;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_100016C60(0, &unk_100929820);
        sub_1000665E0();
        v13.super.isa = sub_100753474().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_100016C60(0, &unk_100929820);
        sub_1000665E0();
        v13.super.isa = sub_100753474().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100016C60(0, &unk_100929820);
      sub_1000665E0();
      v13.super.isa = sub_100753474().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v13.super.isa = sub_100753474().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_100063C88(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v14.super.isa = sub_100753474().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v14.super.isa = sub_100753474().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_1002A4ED0(v7, a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  [v7 locationInView:v2];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v23.x = v9;
  v23.y = v11;
  if (CGRectContainsPoint(v24, v23))
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  [v2 alpha];
  if (v13 == v12)
  {
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    aBlock[4] = sub_100066804;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100865140;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v14.super.isa = sub_100753474().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

uint64_t sub_100063F54(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_100064004(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v11.super.isa = sub_100753474().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v11.super.isa = sub_100753474().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_1002A4ED0(v8, a1) & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = *&v2[v6];
  *&v2[v6] = 0;

  [v2 alpha];
  if (v10 == 1.0)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_100066804;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_1008650F0;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v11.super.isa = sub_100753474().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_100064290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v22.super.isa = sub_100753474().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v22.super.isa = sub_100753474().super.isa;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_1002A4ED0(v9, a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v3 alpha];
  if (v11 != 1.0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_100066680;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_1008650A0;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }

  [v9 locationInView:v3];
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v27.x = v17;
  v27.y = v19;
  if (CGRectContainsPoint(v28, v27))
  {
    v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction];
    if (v20)
    {

      v20(v21);
      sub_1000164A8(v20);
    }
  }

  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v22.super.isa = sub_100753474().super.isa;
  objc_msgSendSuper2(&v23, "touchesEnded:withEvent:", v22.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView()
{
  result = qword_100924578;
  if (!qword_100924578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064788()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100064910(319, &qword_100924588, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v1 <= 0x3F)
    {
      sub_100064910(319, &qword_100924590, &type metadata accessor for ShelfHeader.Configuration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100064910(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100064964(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10074ECB4();
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v1;
    }
  }

  v5 = sub_10074ECC4();

  if (!v5)
  {

    return 0;
  }

  v1 = sub_10074F1F4();
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  return v1;
}

void sub_100064A6C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_100750534();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100751344();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100751374();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = sub_1007507D4();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v50);
  sub_1007507C4();
  sub_100751354();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowButton;
  sub_1007466C4();
  if (qword_1009200A8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v6, qword_100924450);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = sub_1007466B4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkType;
  v25 = sub_100743914();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_1007433C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleButton;
  if (qword_1009200B0 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v6, qword_100924468);
  v49(v8, v30, v6);
  *(v1 + v29) = sub_1007466B4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009200C0 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v6, qword_100924498);
  v49(v8, v33, v6);
  *(v1 + v32) = sub_1007466B4();
  v34 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_subtitleLabel;
  if (qword_1009200B8 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v6, qword_100924480);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(sub_100745C84());
  *(v1 + v37) = sub_100745C74();
  v41 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_configuration;
  v42 = sub_1007439C4();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfHeaderView_currentTouch) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1000651D0(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = sub_100753064();

  v10 = [v8 initWithString:v9];

  if (a4)
  {
    v11 = objc_opt_self();
    v12 = a4;
    v13 = [v11 textAttachmentWithImage:v12];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    if (!a2)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(NSMutableAttributedString) init];
      if ([a3 layoutDirection])
      {
        if (qword_100920078 != -1)
        {
          swift_once();
        }

        v17 = &qword_100924420;
      }

      else
      {
        if (qword_100920070 != -1)
        {
          swift_once();
        }

        v17 = &qword_100924418;
      }

      [v16 appendAttributedString:*v17];
      if (qword_100920080 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100924428];
      [v16 appendAttributedString:v10];
      if (qword_100920088 != -1)
      {
        swift_once();
      }

      v18 = qword_100924430;
      [v16 appendAttributedString:qword_100924430];
      if (qword_100920090 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100924438];
      [v16 appendAttributedString:v14];
      [v16 appendAttributedString:v18];
      v19 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v16];

      v10 = v14;
      v14 = v19;
    }

    else
    {
LABEL_10:
      v16 = v12;
    }

    return v14;
  }

  return v10;
}

id sub_1000654F0(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = sub_100743B04();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_100920068 != -1)
    {
      swift_once();
    }

    v14 = [qword_100924410 configurationWithTraitCollection:a3];
    v15 = sub_100743AE4();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_1000651D0(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_1000656CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000656E4();
  }

  return result;
}

uint64_t sub_1000656EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006575C()
{
  v66 = sub_10000C518(&qword_1009245A8);
  __chkstk_darwin(v66);
  v69 = (&v62 - v0);
  v1 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v1 - 8);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_10000C518(&qword_1009245B0);
  __chkstk_darwin(v9 - 8);
  v62 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v65 = &v62 - v12;
  v13 = sub_1007457B4();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_10092E450);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  sub_100747C04();
  swift_getKeyPath();
  v64 = v15;
  sub_1007525B4();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v63;
  sub_100747BB4();
  sub_10000C8CC(v21, &unk_10093D6E0);
  sub_100066578(v5, v8, &unk_10093D6E0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10000C8CC(v8, &unk_10093D6E0);
    v22 = 1;
    v23 = v65;
  }

  else
  {
    swift_getKeyPath();
    v23 = v65;
    sub_1007525B4();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v67;
  v24 = v68;
  (*(v67 + 56))(v23, v22, 1, v68);
  v26 = *(v66 + 48);
  v27 = v69;
  (*(v25 + 32))(v69, v64, v24);
  sub_100066578(v23, v27 + v26, &qword_1009245B0);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_10000C518(&unk_100930940) + 48);
    v32 = sub_100748E34();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10000C8CC(v27 + v26, &qword_1009245B0);
    return sub_1007535D4();
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_10000C518(&unk_100940620);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = sub_100748E34();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = sub_10074D3E4();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v42 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v43 = *(sub_10000C518(&qword_1009245B8) + 48);
    v44 = sub_100748E34();
    (*(*(v44 - 8) + 8))(v27 + v43, v44);
    v45 = sub_10074DDF4();
    (*(*(v45 - 8) + 8))(v27, v45);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v46 = v62;
    sub_100016B4C(v27 + v26, v62, &qword_1009245B0);
    v47 = v28(v46, v24);
    if (v47 == v30)
    {
      (*(v25 + 96))(v46, v24);

      v48 = *(sub_10000C518(&unk_100930940) + 48);
      v49 = sub_100748E34();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }

    else if (v47 == v33)
    {
      v50 = v62;
      (*(v25 + 96))(v62, v24);

      v51 = sub_10000C518(&unk_100940620);
      v52 = v51[12];
      v53 = v51[16];
      v54 = v51[20];
      v55 = sub_100748E34();
      (*(*(v55 - 8) + 8))(v50 + v54, v55);
      v56 = sub_10074D3E4();
      v57 = *(*(v56 - 8) + 8);
      v57(v50 + v53, v56);
      v57(v50 + v52, v56);
    }

    else
    {
      v58 = v62;
      if (v47 != v42)
      {
        (*(v25 + 8))(v62, v24);
        return sub_10000C8CC(v27, &qword_1009245A8);
      }

      (*(v25 + 96))(v62, v24);
      v59 = *(sub_10000C518(&qword_1009245B8) + 48);
      v60 = sub_100748E34();
      (*(*(v60 - 8) + 8))(v58 + v59, v60);
      v61 = sub_10074DDF4();
      (*(*(v61 - 8) + 8))(v58, v61);
    }

    sub_10000C8CC(v27 + v26, &qword_1009245B0);
    (*(v25 + 8))(v27, v24);
    return sub_1007535D4();
  }

  return sub_10000C8CC(v27, &qword_1009245A8);
}

uint64_t sub_1000660D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066160()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000661F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066248()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066318()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000663F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006644C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000664B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100066578(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10000C518(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000665E0()
{
  result = qword_10092ED60;
  if (!qword_10092ED60)
  {
    sub_100016C60(255, &unk_100929820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ED60);
  }

  return result;
}

uint64_t sub_100066648()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066694(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000666AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066714()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100066950()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 bounds];
  }

  CGRectGetWidth(*&v15);
  [v1 bounds];
  CGRectGetWidth(v26);
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_queryContext];
  sub_100750B24();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

char *sub_100066BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_100751874();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_queryContext;
  v43 = v8;
  if (qword_100920588 != -1)
  {
    v38 = v12;
    swift_once();
    v12 = v38;
    v8 = v43;
  }

  v16 = sub_10000D0FC(v12, qword_10097E4D8);
  sub_100067018(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_1001F27B4(v14);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_100016C60(0, &qword_100924610);
  v18 = *(v8 + 16);
  v41 = v7;
  v42 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_emptyReason] = sub_100753A24();
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = sub_10074AFE4();
  v25 = sub_10074AFD4();
  if (v25)
  {
    v26 = v25;

    v27 = sub_10074ECB4();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v39[1] = v30;
    v39[2] = v29;
    v31 = sub_10074ECC4();
    v40 = v20;
    if (v31)
    {
      v32 = v31;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v32, 0);
      }
    }

    sub_100016C60(0, &qword_100929CC0);
    v34 = swift_allocObject();
    *(v34 + 16) = v44;
    *(v34 + 24) = v26;
    v33 = sub_100753FF4();
    v20 = v40;
  }

  else
  {
    v33 = 0;
  }

  sub_1001F1878(v24, v33);

  v35 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension32ContextualContentUnavailableView_emptyReason];
  v36 = v22;
  [v36 addSubview:v35];
  [v36 addSubview:*&v19[v20]];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v43 + 8))(v42, v41);
  return v36;
}

uint64_t sub_100067018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006707C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_1000670C4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100743584();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_shadowView;
  *&v5[v17] = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_cardPlaceholder;
  v19 = *(v14 + 104);
  v42 = enum case for CornerStyle.continuous(_:);
  v41 = v19;
  v19(v16);
  sub_100746ED4();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondarySystemBackgroundColor];
  [v22 setBackgroundColor:v23];

  sub_100746E34();
  v40 = *(v14 + 8);
  v40(v16, v13);
  *&v5[v18] = v22;
  v24 = type metadata accessor for TodayCardPlaceholderView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_shadowView;
  v31 = qword_100920470;
  v32 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_shadowView];
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_10074F0C4();
  v34 = sub_10000D0FC(v33, qword_10097E110);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v12, v34, v33);
  (*(v35 + 56))(v12, 0, 1, v33);
  sub_100743014();

  v36 = *&v29[v30];
  v41(v16, v42, v13);
  v37 = v36;
  sub_100743024();

  v40(v16, v13);
  [v29 addSubview:*&v29[v30]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_cardPlaceholder]];

  return v29;
}

id sub_10006759C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100067640()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_shadowView;
  *(v1 + v6) = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension24TodayCardPlaceholderView_cardPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_100746ED4();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v11];

  sub_100746E34();
  (*(v3 + 8))(v5, v2);
  *(v1 + v7) = v10;
  sub_100754644();
  __break(1u);
}

void sub_100067860(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_100068BFC;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000CF7B0;
  v6[3] = &unk_1008652E0;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_10006793C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_100752DB4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100067A30(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_10074A304();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v6;
  v7 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;

  sub_10074EC44();
  sub_1001362FC(a1, v38, v15);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v23(v15, 1, v16) != 1)
    {
      sub_10000C8CC(v15, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v15, v22);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_100068C7C(v22, type metadata accessor for FlowDestination);
    return 0;
  }

  v24 = sub_10000C518(&qword_100938E20);
  sub_10000C8CC(&v22[*(v24 + 48)], &unk_100923970);
  sub_100742C54();
  sub_100742C44();

  sub_10074EC44();
  sub_1001362FC(a1, v38, v12);
  if (v23(v12, 1, v16) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v25 = v23(v12, 1, v16);
    v26 = v37;
    if (v25 != 1)
    {
      sub_10000C8CC(v12, &unk_100925750);
    }
  }

  else
  {
    sub_100068B98(v12, v19);
    v26 = v37;
  }

  v27 = v33;
  sub_1006C1C84(v33);
  sub_100068C7C(v19, type metadata accessor for FlowDestination);
  sub_100068C7C(v9, type metadata accessor for FlowPresentationHints);
  v29 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v27, v26);
  v30 = (*(v28 + 88))(v29, v26);
  result = 1;
  if (v30 != enum case for FlowPresentationContext.presentModal(_:) && v30 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v30 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v28 + 8))(v29, v26);
    return 0;
  }

  return result;
}

uint64_t sub_100067F28(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068C18(a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v14 = *(sub_10000C518(&qword_100938DF0) + 64);
    v15 = sub_1007462F4();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_100068C7C(v8, type metadata accessor for FlowDestination);
LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_100068C7C(v8, type metadata accessor for FlowDestination);
    v12 = 1;
    return v12 & 1;
  }

  sub_1000498A8(v8, v5);
  type metadata accessor for ArticleContainerViewController();
  v10 = swift_dynamicCastClass() == 0;
  v11 = sub_10074C4A4();
  sub_10000C8CC(v5, &unk_100923970);
  v12 = v10 | v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_100068154(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v9 - 8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v66 - v18);
  sub_10000C518(&qword_100930CA0);
  v20 = sub_100752DE4();
  v72 = a2;
  v21 = sub_1003787A4(a2);
  if (v21)
  {
    v71 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v79 = v22;
    sub_100016C60(0, &qword_100924658);
    v73 = v22;
    sub_10000C518(&qword_100924660);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v76 = 0;
      aBlock = 0u;
      v75 = 0u;
    }

    sub_10074EC44();
    sub_1001362FC(a1, v78, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v66 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10000C8CC(v13, &unk_100925750);
      }
    }

    else
    {
      sub_100068B98(v13, v19);
    }

    v27 = sub_100742C14();
    v29 = v28;
    sub_100742C34();
    v30 = sub_100470520(v19, v23, v27, v29, v8, &aBlock, a3, 1);

    sub_10000C8CC(v8, &qword_10092C1F0);
    sub_100068C7C(v19, type metadata accessor for FlowDestination);
    sub_10000C8CC(&aBlock, &unk_100925760);
    if (!v30)
    {
      sub_100068AD8();
      swift_allocError();
      *v45 = 0;
      v20 = v71;
      sub_100752DA4();

      return v20;
    }

    v67 = v30;
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    v68 = aBlock;
    v31 = [v73 viewControllers];
    sub_100016C60(0, &qword_10092B0C0);
    v32 = sub_1007532A4();

    if (v32 >> 62)
    {
      goto LABEL_48;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v33)
    {
      while (__OFSUB__(v33--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v33 = sub_100754664();
        if (!v33)
        {
          goto LABEL_49;
        }
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = sub_100754574();
        goto LABEL_19;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v35 = *(v32 + 32 + 8 * v33);
LABEL_19:
      v36 = v35;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v36)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v36 = 0;
LABEL_23:
    v37 = [v73 topViewController];
    v20 = v71;
    if (v37)
    {
      v38 = v37;
      v39 = v36;
      if (v36)
      {
        v40 = v39;
        v41 = sub_100753FC4();

        if (v41)
        {
          v76 = sub_100068E9C;
          v77 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_1000CF7B0;
          *(&v75 + 1) = &unk_1008652B8;
          v42 = _Block_copy(&aBlock);
          v43 = v40;

          v44 = v67;
          [v43 presentViewController:v67 animated:1 completion:v42];

          _Block_release(v42);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v36)
    {
      v46 = 0;
    }

    v47 = v72;
    v48 = [v72 presentedViewController];
    if (v48)
    {
      v49 = v48;
      if (([v48 isBeingDismissed] & 1) == 0)
      {

        sub_10074EC44();
        v50 = v70;
        sub_1001362FC(a1, &aBlock, v70);
        v51 = v66;
        if (v66(v50, 1, v14) == 1)
        {
          v52 = v51;
          v53 = v69;
          swift_storeEnumTagMultiPayload();
          if (v52(v50, 1, v14) != 1)
          {
            sub_10000C8CC(v50, &unk_100925750);
          }
        }

        else
        {
          v53 = v69;
          sub_100068B98(v50, v69);
        }

        v54 = sub_100067F28(v49, v53);
        sub_100068C7C(v53, type metadata accessor for FlowDestination);
        if (v54)
        {
          type metadata accessor for ArticleContainerViewController();
          v55 = swift_dynamicCastClass();
          if (v55)
          {
            v56 = *(v55 + OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController);
            v57 = v49;
            v58 = [v56 popToRootViewControllerAnimated:0];
          }

          v59 = swift_allocObject();
          v60 = v67;
          v59[2] = v47;
          v59[3] = v60;
          v59[4] = v20;
          v76 = sub_100068B8C;
          v77 = v59;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v75 = sub_1000CF7B0;
          *(&v75 + 1) = &unk_100865290;
          v61 = _Block_copy(&aBlock);

          v62 = v47;
          v63 = v60;

          [v49 dismissViewControllerAnimated:1 completion:v61];

          goto LABEL_43;
        }
      }
    }

    v76 = sub_100068E9C;
    v77 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_1000CF7B0;
    *(&v75 + 1) = &unk_100865240;
    v61 = _Block_copy(&aBlock);

    v64 = v67;
    [v47 presentViewController:v67 animated:1 completion:v61];

LABEL_43:
    _Block_release(v61);

    return v20;
  }

  sub_100068AD8();
  swift_allocError();
  *v26 = 1;
  sub_100752DA4();

  return v20;
}

unint64_t sub_100068AD8()
{
  result = qword_100924650;
  if (!qword_100924650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924650);
  }

  return result;
}

uint64_t sub_100068B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068B44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RatingView.UseCase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RatingView.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100068E3C()
{
  result = qword_100924668;
  if (!qword_100924668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924668);
  }

  return result;
}

uint64_t type metadata accessor for ProductEditorsChoiceView()
{
  result = qword_100924690;
  if (!qword_100924690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100068F54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074AB44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v4[qword_100924688] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_1006BACE0(3u, 0, 0, 0, 1u);
  v56 = v4;
  *&v4[qword_100924670] = v26;
  if (qword_1009210D0 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v9, qword_100980FA8);
  v52 = *(v10 + 16);
  v53 = v27;
  v52(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel());
  v29 = qword_10092CCC8;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_10092CCD0];
  *v30 = 0;
  v30[8] = 1;
  sub_10006A0D4(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = sub_100745C74();
  (*(v13 + 8))(v18, v12);
  sub_10006A144(v24);
  v32 = v56;
  *&v56[qword_100924678] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton();
  v34 = v54;
  v52(v54, v53, v9);
  v35 = v33;
  v36 = sub_1006A0AA8(v34, v35);

  v37 = v36;
  v58._countAndFlagsBits = 0x4D5F4E4F49544341;
  v58._object = 0xEB0000000045524FLL;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_1007458B4(v58, v59);
  v38 = sub_100753064();

  [v37 setTitle:v38 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_100924680] = v37;
  v57.receiver = v32;
  v57.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v43 = v39;
  [v43 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v44 = qword_100924670;
  v45 = *&v43[qword_100924670];
  sub_10000D198();
  v46 = v45;
  v47 = sub_100753DD4();
  [v46 setTintColor:v47];

  [v43 addSubview:*&v43[v44]];
  v48 = qword_100924678;
  [*&v43[qword_100924678] setLineBreakMode:0];
  [v43 addSubview:*&v43[v48]];
  v49 = qword_100924680;
  [*&v43[qword_100924680] setUserInteractionEnabled:0];
  [v43 addSubview:*&v43[v49]];

  return v43;
}

void sub_100069564(uint64_t a1)
{
  *(a1 + qword_100924688) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000695CC@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  v5 = sub_1007507B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100750794();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  sub_1007507A4();

  v13 = *(v6 + 8);
  v13(v8, v5);
  a2[3] = v5;
  a2[4] = &protocol witness table for VerticalStack;
  sub_10000D134(a2);
  sub_1007507A4();
  return (v13)(v11, v5);
}

uint64_t sub_1000697A4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_100924670);
  type metadata accessor for EditorsChoiceView();
  sub_100750434();
  v3 = *(v1 + qword_100924678);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel();
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_1000695CC([v8 isHidden], a1);
  sub_10000C620(v7);
  return sub_10000C620(v6);
}

id sub_100069878()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100750304();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100750B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750E94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = sub_100750BD4();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750B54();
  v16 = sub_100750B64();
  v16();
  if (v0[qword_100924688] == 1)
  {
    v17 = *&v0[qword_100924680];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_100924678];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      sub_100753094();
    }

    sub_100750E84();
    if (qword_1009210D0 != -1)
    {
      swift_once();
    }

    v21 = sub_100750534();
    sub_10000D0FC(v21, qword_100980FA8);
    sub_100750E54();
    (*(v9 + 8))(v11, v8);
    sub_100750BB4();
    v22 = v15;
    sub_100750BF4();
    sub_1007477B4();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    sub_100750BC4();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_100924680];
    if (Height >= v25)
    {
      [*&v1[qword_100924680] setHidden:1];
    }

    else
    {
      [*&v1[qword_100924680] setHidden:0];
      sub_1007477B4();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_10000D134(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      sub_100750B14();
      (*(v34 + 8))(v4, v33);
      sub_1007477B4();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      sub_100751034();
      v41 = v26;
      sub_10000C518(&unk_1009231A0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007A5CF0;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = sub_100751044();
      v45 = v59;
      sub_100750544();
      v47 = v46;

      v48 = &v41[qword_10092CCD0];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      sub_1007477B4();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      sub_1007477B4();
      sub_100753AA4();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_100069FAC()
{
  v1 = *(v0 + qword_100924680);
}

void sub_100069FFC(uint64_t a1)
{
  v2 = *(a1 + qword_100924680);
}

uint64_t sub_10006A0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A144(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10006A1F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_10006A240()
{
  result = qword_1009246E0;
  if (!qword_1009246E0)
  {
    sub_10074CC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009246E0);
  }

  return result;
}

Swift::Int sub_10006A298()
{
  sub_100754834();
  sub_100754844(0);
  return sub_100754884();
}

Swift::Int sub_10006A304()
{
  sub_100754834();
  sub_100754844(0);
  return sub_100754884();
}

uint64_t sub_10006A344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100749FF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_100378B58(Strong);

  v24 = v10;
  sub_100032B70();
  v11 = v10;
  sub_10000C518(&qword_1009246E8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_10006A65C(&v21);
LABEL_6:
    sub_10000C518(&qword_100930CA0);
    sub_10006A6C4();
    swift_allocError();
    v14 = sub_100752D74();

    return v14;
  }

  sub_100012160(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_10000C888(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_10000C620(v25);
    goto LABEL_6;
  }

  sub_10000C518(&qword_100930CA0);
  v14 = sub_100752DE4();
  v15 = sub_100749444();
  sub_100752764();
  sub_100752D34();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  sub_100749FE4();
  v16 = sub_100749FD4();
  sub_100745584();
  v17 = sub_100745564();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  sub_100745534();

  (*(v6 + 8))(v8, v5);
  sub_10000C620(v25);
  return v14;
}

uint64_t sub_10006A65C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009246F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006A6C4()
{
  result = qword_1009246F8;
  if (!qword_1009246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009246F8);
  }

  return result;
}

uint64_t sub_10006A718()
{
  sub_10052AB78(*(v0 + 24), 1, *(v0 + 32));
  sub_100752D54();
}

uint64_t getEnumTagSinglePayload for GuidedSearchTokenToggleActionImplementation.ImplementationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GuidedSearchTokenToggleActionImplementation.ImplementationError(_WORD *result, int a2, int a3)
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

unint64_t sub_10006A848()
{
  result = qword_100924700;
  if (!qword_100924700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924700);
  }

  return result;
}

uint64_t sub_10006A8E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_100055CF8(a2, v4);
}

char *sub_10006A9F4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_1000F744C(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10006AA90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*((swift_isaMask & *v0) + 0x140))(v2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setLayoutMargins:{v7, v9, v11, v13}];
  [v0 bounds];
  [v1 sizeThatFits:{v14, v15}];
  v17 = v16;
  [v0 bounds];
  MinX = CGRectGetMinX(v23);
  [v0 bounds];
  MinY = CGRectGetMinY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);

  return [v1 setFrame:{MinX, MinY, Width, v17}];
}

void sub_10006AC10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_10006A9F4();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_10074F9A4() + 16);

    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v15 = [v1 window];
    v16 = v15;
    if (v15)
    {
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      v21 = v18;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = (*(ObjectType + 296))(v10, v21, v22, v16 == 0, v12, v14);
    v25 = v24;

    sub_10074F9E4();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    sub_1007535A4();
    sub_100753B54();
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    CGRectApplyAffineTransform(v40, &v39);
    v29 = v9;
    [v29 bounds];
    [v29 setBounds:?];
    [v1 bounds];
    v31 = v30;
    v32 = sub_10074F9F4();
    v34.n128_u64[0] = v33;
    (*((swift_isaMask & *v1) + 0x158))(v32, v31, v37, v34);
    [v29 setCenter:?];
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    [v29 setTransform:&v39];
  }
}

uint64_t sub_10006AF98(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10074F314();
  __chkstk_darwin(v7 - 8);
  v137 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F284();
  v134 = *(v9 - 8);
  v135 = v9;
  __chkstk_darwin(v9);
  v133 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v132 = &v132 - v12;
  v13 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v13 - 8);
  v146 = &v132 - v14;
  v15 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v15 - 8);
  v145 = &v132 - v16;
  v17 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v17 - 8);
  v144 = &v132 - v18;
  v19 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v19 - 8);
  v143 = &v132 - v20;
  v21 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v21 - 8);
  v141 = &v132 - v22;
  v23 = sub_10074D734();
  v139 = *(v23 - 8);
  __chkstk_darwin(v23);
  v140 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v25 - 8);
  v142 = &v132 - v26;
  v27 = sub_100746264();
  v151 = *(v27 - 8);
  v152 = v27;
  __chkstk_darwin(v27);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v150 = &v132 - v31;
  sub_1007442C4();
  sub_100752764();
  v148 = a2;
  sub_100752D34();
  v153 = v156[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v149 = v32;
  v154 = a1;
  sub_10074DF64();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v136 = ObjectType;
  v36();
  if (v34)
  {
    sub_1007461D4();
  }

  sub_100746204();
  v37 = v150;
  sub_100746244();
  (*(v151 + 16))(v29, v37, v152);
  v38 = sub_10000C518(&qword_100924850);
  v39 = objc_allocWithZone(v38);

  v40 = sub_10074F994();
  [v40 setHidden:0];
  v41 = v154;
  v42 = sub_10074DF74();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = sub_100754664();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_100754574();
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = sub_100750534();
      v87 = sub_10000D0FC(v86, qword_100980AC8);
      v88 = *(v86 - 8);
      v89 = v132;
      (*(v88 + 16))(v132, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      sub_100745BA4();

      v90 = *(v38 + v35);
      if (v90)
      {
        [v90 setAccessibilityIgnoresInvertColors:1];
      }

      goto LABEL_32;
    }

    v43 = *(v42 + 32);
  }

LABEL_11:
  *(sub_10074F9A4() + 24) = v153;

  *(sub_10074F9A4() + 48) = v148;

  *(sub_10074F9A4() + 16) = v43;
  v147 = v43;

  sub_10074F9D4();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v155 = v3;
  v46 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = sub_100753FC4();

    if ((v47 & 1) == 0)
    {
      sub_10074FA14();
      [v50 removeFromSuperview];
    }
  }

  else
  {
    v51 = v40;
  }

  v52 = v155;
  v53 = *&v155[v45];
  *&v155[v45] = v40;
  v54 = v40;

  v55 = *&v52[v45];
  v138 = v54;
  if (!v55)
  {

    v55 = v46;
    goto LABEL_21;
  }

  if (v46)
  {
    v56 = v54;
    v57 = v46;
    v58 = v55;
    v59 = sub_100753FC4();

    if (v59)
    {

      v55 = v58;
LABEL_21:
      v60 = v155;
      goto LABEL_25;
    }

    v60 = v155;
    v54 = v56;
  }

  else
  {
    v61 = v55;
    v57 = 0;
    v60 = v155;
  }

  [*&v60[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = sub_10074DFA4();
  v63 = v139;
  v64 = *(v139 + 104);
  v64(v140, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v141;
  v64(v141, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_10006E5EC(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v66 = v142;
  sub_10074A9C4();
  v67 = sub_10000C518(&unk_10092EEA0);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_100742E24();
  v69 = v143;
  (*(*(v68 - 8) + 56))(v143, 1, 1, v68);
  v70 = sub_100745E94();
  v71 = v144;
  (*(*(v70 - 8) + 56))(v144, 1, 1, v70);
  v72 = sub_10074F8B4();
  v73 = v145;
  (*(*(v72 - 8) + 56))(v145, 1, 1, v72);
  v74 = sub_10000C518(&unk_100925560);
  v75 = v146;
  (*(*(v74 - 8) + 56))(v146, 1, 1, v74);
  sub_100656038(v62, v38, v66, v148, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_1002F3D3C();
  [(objc_class *)v38 setNeedsLayout];
  sub_1002F3D3C();

  sub_10000C8CC(v75, &unk_100925990);
  sub_10000C8CC(v73, &unk_100925520);
  sub_10000C8CC(v71, &unk_1009259A0);
  sub_10000C8CC(v69, &unk_100925530);
  sub_10000C8CC(v66, &unk_100925540);
  v76 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_100920F28;
      v41 = v84;
      if (v85 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

LABEL_32:
  if (!v147)
  {
    goto LABEL_45;
  }

  v91 = sub_100743854();

  if (!(v91 >> 62))
  {
    result = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v93 = sub_10074F1E4();

  if (v93)
  {
    v94 = sub_100753EE4();

    if (v94)
    {
      v95 = 2;
    }

    else
    {
      v95 = 1;
    }

    goto LABEL_46;
  }

LABEL_45:
  v95 = 2;
LABEL_46:
  v96 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v97 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v98 = objc_opt_self();
  v99 = v97;
  v100 = [v98 systemGray5Color];
  v101 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v95];
  v102 = [v100 resolvedColorWithTraitCollection:v101];

  v103 = [v102 colorWithAlphaComponent:0.35];
  sub_100743224();

  sub_10074DFA4();
  v104 = sub_10074EF24();

  if (v104)
  {
    (*(v136 + 168))(v156, v105);
    sub_100055D54(v156);
    v106 = v133;
    sub_10074F294();
    sub_10074F254();
    (*(v134 + 8))(v106, v135);
    sub_10074F374();
    v107 = *(v38 + v96);
    sub_10074F324();
    sub_100743364();
    [v107 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    [*(v38 + v96) setContentMode:1];
    v108 = *(v38 + v96);
    sub_1007433C4();
    sub_10006E5EC(&qword_100925570, &type metadata accessor for ArtworkView);
    v109 = v108;
    sub_100744204();
  }

  v110 = sub_10074DF84();
  if (v110)
  {
    v111 = v110;
    v112 = sub_10074DF94();
    v113 = v155;
    v114 = *&v155[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v112)
    {
      v115 = v112;
      [*&v155[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v112];
      v116 = [v114 layer];
      [v116 setCompositingFilter:0];

      v117 = *&v113[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000C518(&unk_1009231A0);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1007A7210;
      *(v118 + 32) = [v111 colorWithAlphaComponent:0.4];
      *(v118 + 40) = v111;
      *&v117[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v118;
      v119 = v111;

      sub_100037ED0();
      sub_100037D2C(&off_1008618F8);
      v120 = [v117 layer];
      [v120 setCompositingFilter:0];
    }

    else
    {
      v121 = sub_10074DF84();
      [v114 setBackgroundColor:v121];

      v122 = [v114 layer];
      [v122 setCompositingFilter:0];

      v123 = *&v155[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000C518(&unk_1009231A0);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1007A7210;
      v125 = [v98 whiteColor];
      v126 = [v125 colorWithAlphaComponent:0.4];

      *(v124 + 32) = v126;
      *(v124 + 40) = [v98 clearColor];
      *&v123[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v124;

      sub_100037ED0();
      sub_100037D2C(&off_100861928);
      v113 = v155;
      v115 = [v123 layer];
      v120 = sub_100753064();
      [v115 setCompositingFilter:v120];
    }

    v127 = sub_10006A9F4();
    v128 = v111;
    v129 = sub_1000F86DC(v111);
    v131 = v130;

    sub_1000F6CC8(2, v129, v131);

    [v113 setNeedsLayout];

    return (*(v151 + 8))(v150, v152);
  }

  else
  {
    (*(v151 + 8))(v150, v152);
  }
}

uint64_t sub_10006C320(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = sub_100743854();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = sub_100754664();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_100754574();
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_10006C3F8(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      if ((sub_10074F114() & 1) != 0 && (v7 = [v6 CGImage]) != 0)
      {
        v8 = v7;
        [v6 scale];
        v10 = [objc_allocWithZone(UIImage) initWithCGImage:v8 scale:2 orientation:v9];
      }

      else
      {
        v10 = v6;
      }

      v11 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
      v12 = v10;
      v13 = v11;
      v15.is_nil = (a2 & 1) == 0;
      v15.value.super.isa = v10;
      sub_100743384(v15, v14);

      v5 = v12;
    }
  }
}

void sub_10006C530(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  sub_100743344();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    sub_1007433C4();
    sub_10006E5EC(&qword_100925570, &type metadata accessor for ArtworkView);

    v7 = v6;
    sub_100744274();
  }
}

uint64_t sub_10006C628()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10006C69C()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_100743854();

  if (v1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

uint64_t sub_10006C754(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10006C7E8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = sub_100748634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10006C85C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006C320(a1);
  *a2 = result;
  return result;
}

id sub_10006C884()
{
  type metadata accessor for BorderedScreenshotView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10006C8D0()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A7210;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_100924708 = v0;
  return result;
}

char *sub_10006C984(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_1009200E0;
  v24 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = qword_100924708;

  sub_100037ED0();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = sub_100753064();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = sub_100753064();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_10006A9F4();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_100055DA8(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_100055DA8(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_1009204F0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10074F0C4();
  v42 = sub_10000D0FC(v41, qword_10097E290);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  sub_100743374();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_1005A3470([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  sub_10000D198();
  v50 = v49;
  v51 = sub_100753DF4();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  sub_100753094();
  v63 = sub_100753064();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

void sub_10006D35C(uint64_t a1)
{
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_100743854();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_100754664();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v7 = sub_10074F114();
  sub_10074F2A4();
  sub_100750504();
  v8 = (v3 + 8);
  if (v7)
  {
    sub_1007504C4();
  }

  else
  {
    sub_1007504B4();
  }

  (*v8)(v5, v2);
}

double sub_10006D514(uint64_t a1, void *a2)
{
  v4 = sub_1007479B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_10074F5A4();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (sub_100753804())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_100055CF8(v15, v23);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v16 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v16 = qword_10093FF58;
  }

  v17 = sub_10000D0FC(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_100747964();
    v19 = v18;
    sub_100747964();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_100055D54(v23);
  sub_100055D54(v27);
  sub_100055D54(v28);
  return v13;
}

id sub_10006D918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006DA68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074DFB4();
  sub_10006E5EC(&qword_100924848, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = sub_1007468B4();
  v10 = v39[0];
  if (v39[0])
  {
    v11 = sub_10074DF74();
    v12 = v11;
    if (v11 >> 62)
    {
      if (sub_100754664())
      {
LABEL_4:
        v34 = a2;
        v35 = v5;
        v36 = v6;
        v37 = v10;
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = v3;
          v14 = sub_100754574();
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v13 = v3;
          v14 = *(v12 + 32);
        }

        v38 = v14;
        v15 = sub_100743854();

        swift_getKeyPath();
        sub_100746914();

        swift_getKeyPath();
        sub_100746914();

        v16 = v39[0];
        sub_10006D514(v8, v39[0]);
        v18 = v17;

        v19 = v35;
        v20 = *(v36 + 8);
        v20(v8, v35);
        swift_getKeyPath();
        sub_100746914();

        sub_10074F5A4();
        v22 = v21;
        v20(v8, v19);
        v23 = [objc_opt_self() mainScreen];
        [v23 bounds];
        v25 = v24;
        v27 = v26;

        (*(v13 + 296))(v38, v25, v27, 0, v18, v22);
        if (v15 >> 62)
        {
          v28 = sub_100754664();
          if (v28)
          {
LABEL_9:
            v39[0] = _swiftEmptyArrayStorage;
            sub_1007545C4();
            if ((v28 & 0x8000000000000000) == 0)
            {
              v29 = 0;
              do
              {
                if ((v15 & 0xC000000000000001) != 0)
                {
                  sub_100754574();
                }

                else
                {
                }

                sub_10074F114();
                ++v29;
                sub_10074F374();

                sub_1007545A4();
                sub_1007545D4();
                sub_1007545E4();
                sub_1007545B4();
              }

              while (v28 != v29);

              v30 = v39[0];
LABEL_21:
              v40 = v30;
              sub_10074DFA4();
              v31 = sub_10074EF24();

              if (!v31)
              {
LABEL_24:
                v33._rawValue = v30;
                sub_100744224(v33);
              }

              (*(v13 + 176))(v39, v32);
              sub_100055D54(v39);
              sub_10074F374();

              sub_100753284();
              if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_23:
                sub_100753344();

                v30 = v40;
                goto LABEL_24;
              }

LABEL_28:
              sub_100753304();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            goto LABEL_9;
          }
        }

        v30 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_10006DF8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + 16))
  {

    v10 = sub_100743844();
  }

  else
  {
    v10 = 0;
  }

  sub_100743864();
  sub_1002898DC(v10, v9);

  sub_100288B54(v9);
  swift_beginAccess();
  sub_10074F114();
  sub_10074F374();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  sub_10074F324();
  sub_100743364();

  v13 = *(a2 + v11);
  [v13 setContentMode:sub_10074F184()];

  v14 = *(a2 + v11);
  sub_1007433A4();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_100743854();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = sub_100754664();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v19 = 2;
    goto LABEL_17;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v17 = sub_10074F1E4();

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = sub_100753EE4();

  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

LABEL_17:
  v20 = *(a2 + v11);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemGray5Color];
  v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v19];
  v25 = [v23 resolvedColorWithTraitCollection:v24];

  v26 = [v25 colorWithAlphaComponent:0.35];
  sub_100743224();

  if (*(v3 + 24))
  {
    sub_1007442C4();
    v27 = *(a2 + v11);
    sub_1007433C4();

    v28 = v27;
    sub_100744244();

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1;

    sub_1007441F4();

    sub_10000C8CC(v31, &unk_1009276E0);
  }
}

uint64_t sub_10006E404()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E43C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10006E48C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10006E5EC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10006E634(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_10006E8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10006E954(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_1007433C4();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer]];
  return v24;
}

void sub_10006EC58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_100070480(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300);
      v9 = v5;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = a1;
  v16 = a1;
  sub_10057A514(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void (*sub_10006EE00(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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
  return sub_10006EE9C;
}

void sub_10006EE9C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_100070480(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300);
        v8 = v4;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10057A514(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_100070480(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300);
        v13 = v4;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v3;
    v31 = v3;
    sub_10057A514(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_10006F224(uint64_t a1, char *a2)
{
  v64 = a2;
  v3 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v3 - 8);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = v61 - v6;
  v7 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_100744864();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = sub_100744894();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747D94();
  v65 = *(v19 - 8);
  v66 = v19;
  __chkstk_darwin(v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100745D44())
  {
    v61[2] = a1;
    (*(v16 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v15);
    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    v22 = sub_1007504F4();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v23 = v69[0];
    sub_10074EB94();
    sub_10074EC24();
    v24 = sub_100741264();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    v25 = v62;
    sub_10074EBE4();
    v26 = v63;
    sub_10074EBD4();
    v27 = type metadata accessor for VideoView();
    sub_100070480(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v61[0] = v27;
    v61[1] = v23;
    v28 = sub_1007464A4();
    sub_10000C8CC(v26, &unk_1009281C0);
    sub_10000C8CC(v25, &unk_1009281C0);
    sub_10000C8CC(v9, &unk_100923970);
    sub_10000C8CC(v69, &unk_1009276E0);
    v29 = *&v67[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer];
    v30 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v31 = *(v29 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v64 = v21;
    if (v28)
    {
      v32 = v28;
      v33 = [v32 superview];
      if (v33)
      {
        v34 = v33;
        sub_100016C60(0, &qword_100922300);
        v35 = v31;
        v36 = sub_100753FC4();

        if (v36)
        {
          [v32 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v43 = *&v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v31[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v28;
    v44 = v28;
    sub_10057A514(v43);

    v45 = *(*(v29 + v30) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v45 && (v46 = swift_dynamicCastClass()) != 0)
    {
      v47 = v46;
      v48 = v45;
      [v47 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v65 + 8))(v64, v66);
    v38 = v67;
  }

  else
  {
    v37 = sub_100745D54();
    v38 = v67;
    if (v37)
    {

      v39 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView];
      v40 = *(*&v38[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v41 = *(v40 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      *(v40 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v39;
      v42 = v39;
      sub_10057A514(v41);

      sub_1005791C8();
    }
  }

  v49 = sub_10074F3E4();
  v69[3] = v49;
  v69[4] = sub_100070480(&qword_100926D40, 255, &type metadata accessor for Feature.iOS);
  v50 = sub_10000D134(v69);
  (*(*(v49 - 8) + 104))(v50, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v49);
  LOBYTE(v49) = sub_10074FC74();
  sub_10000C620(v69);
  v51 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  if (v49)
  {
    v52 = *(*(*&v38[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v52)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v53 = v52;
        sub_1005194D8();

        v51 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      }
    }
  }

  v54 = *&v38[v51];
  v55 = sub_100745D24();
  if (!v55)
  {
    v55 = [objc_opt_self() systemBackgroundColor];
  }

  v56 = v55;
  v57 = type metadata accessor for MediaView();
  v68.receiver = v54;
  v68.super_class = v57;
  objc_msgSendSuper2(&v68, "setBackgroundColor:", v56);
  [*(*&v54[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v56];
  v58 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v58)
  {
    v59 = v58;
    [v59 setBackgroundColor:v56];
  }

  [v38 setNeedsLayout];
  return [v38 layoutIfNeeded];
}

void sub_10006FAC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_100747D94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007504F4();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100745D44();
  if (v14)
  {
    v15 = *(*(*(v33 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v15 && (v31[4] = v14, v31[3] = type metadata accessor for VideoView(), (v16 = swift_dynamicCastClass()) != 0))
    {
      v31[0] = v13;
      v31[2] = a2;
      v17 = qword_100982288;
      v18 = v11;
      v19 = v16;
      swift_beginAccess();
      v20 = *(v8 + 16);
      v31[1] = v19;
      v21 = v19 + v17;
      v22 = v18;
      v20(v10, v21, v7);
      v23 = v15;
      sub_100747CE4();
      (*(v8 + 8))(v10, v7);
      v24 = v32;
      if ((*(v32 + 48))(v6, 1, v22) != 1)
      {
        v30 = v31[0];
        (*(v24 + 32))(v31[0], v6, v22);
        sub_100750464();
        sub_10074EC14();
        sub_10074F374();

        sub_100070480(&unk_100923110, 255, type metadata accessor for VideoView);
        sub_100744204();

        (*(v24 + 8))(v30, v22);
        return;
      }

      sub_10000C8CC(v6, &unk_1009281D0);
    }

    else
    {
    }
  }

  if (sub_100745D54())
  {
    sub_10074F374();
    v25 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView;
    v26 = v33;
    v27 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v27 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    [*(v26 + v25) setContentMode:2];
    v28 = *(v26 + v25);
    sub_1007433C4();
    sub_100070480(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    v29 = v28;
    sub_100744204();
  }
}

id sub_10007001C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000700C0()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

uint64_t (*sub_100070134(uint64_t **a1))()
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
  v2[4] = sub_10006EE00(v2);
  return sub_1000181A8;
}

uint64_t sub_1000701A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1000701F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100070264(uint64_t *a1))()
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
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_100070300(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_100070480(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1000704C8()
{
  v1 = type metadata accessor for MediaView();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v3 = type metadata accessor for UberContentContainer();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v5 = &v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v7 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v7 addSubview:?];
  }

  v9 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v8;
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_artworkView;
  sub_1007433C4();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_100070708()
{
  v0 = sub_10000C518(&unk_1009249C0);
  sub_100039C50(v0, qword_100924918);
  sub_10000D0FC(v0, qword_100924918);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

char *sub_1000707BC()
{
  ObjectType = swift_getObjectType();
  v26 = sub_100752AC4();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(v8) init];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(v8) init];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(v8) init];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  [objc_allocWithZone(v8) init];
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = sub_100754574();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      sub_100752A74();
      sub_1000277BC(v30);
      sub_1000277BC(&v31);
      *&v31 = v12 + 1;
      v17 = sub_100754714();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      sub_100752AA4();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_1000277BC(&v31);
      v10 = v2;
      sub_100753C74();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = sub_100754664();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_100070C9C();
  sub_10000C518(&unk_1009249D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5A00;
  *(v21 + 32) = sub_1007516F4();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v20;
}

id sub_100070C9C()
{
  sub_1007545C4();
  sub_100016C60(0, &qword_100923500);
  if (qword_100920100 != -1)
  {
    swift_once();
  }

  for (i = 0; i != 40; i += 8)
  {
    v1 = *(&off_1008625A0 + i + 32);
    v2 = sub_10000C518(&unk_1009249C0);
    sub_10000D0FC(v2, qword_100924918);
    v30 = v28;
    v3 = v28;
    sub_100743464();

    v4 = v31;
    v5 = type metadata accessor for RatingView();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
    v7 = &v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
    *v7 = 0;
    v7[8] = 1;
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = v1;
    if (qword_100921700 != -1)
    {
      swift_once();
    }

    v8 = qword_10093B668;
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
    v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = v4;
    *v7 = 0;
    v7[8] = 1;
    v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 1;
    v9 = objc_allocWithZone(type metadata accessor for StarRow());
    v10 = v8;
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(v1, 1, v4, 0, 1, 0, 1);
    v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = 0;
    v29.receiver = v6;
    v29.super_class = v5;
    v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_1004FA474();
    v12 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
    v13 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
    v14 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating;
    v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
    *&v13[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
    v16 = v13;
    sub_1004FAF60(v15);

    if (*&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
    {
      [v11 addSubview:?];
    }

    [v11 addSubview:*&v11[v12]];

    v17 = v1;
    v18 = *&v11[v14];
    *&v11[v14] = v1;
    if (v18 != v1)
    {
      if (v1 < 0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars];
        if (v19 >= v17)
        {
          goto LABEL_15;
        }
      }

      *&v11[v14] = v19;
      v17 = v19;
LABEL_15:
      v20 = *&v11[v12];
      v21 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating);
      *(v20 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating) = v17;
      sub_1004FAF60(v21);
    }

    v22 = sub_100753DD4();
    v23 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor];
    *&v11[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = v22;
    v24 = v22;
    if ((sub_100753FC4() & 1) == 0)
    {
      sub_1004FA474();
    }

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
  }

  v25 = OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v26 = *&v3[v25];
  *&v3[v25] = _swiftEmptyArrayStorage;
  sub_100071194(v26);

  return [v3 setNeedsLayout];
}

void sub_1000710A8(void *a1)
{
  v2 = sub_1007537D4() & 1;
  v3 = [a1 traitCollection];
  v4 = sub_1007537D4() & 1;

  if (v2 != v4)
  {
    sub_100070C9C();
  }
}

unint64_t sub_100071194(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_100754664();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_100754574();
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_starViews;
  result = swift_beginAccess();
  v7 = *&v13[v6];
  if (v7 >> 62)
  {
    result = sub_100754664();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_100920108 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_100924930;
    [v11 setMinimumContentSizeCategory:qword_100924930];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

uint64_t sub_100071388(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_100754664();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = sub_100754574();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007A5CF0;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = sub_100751044();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_1009200E8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000C518(&unk_1009249B0);
  sub_10000D0FC(v14, qword_1009248D0);
  sub_100743454();
  if (qword_1009200F0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v14, qword_1009248E8);
  return sub_100743454();
}

void sub_1000715D4(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (sub_100754664())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = sub_100754574();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      sub_100751034();
      sub_10000C518(&unk_1009231A0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007A5CF0;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = sub_100751044();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_1009200E8 != -1)
      {
        swift_once();
      }

      v18 = sub_10000C518(&unk_1009249B0);
      sub_10000D0FC(v18, qword_1009248D0);
      sub_100743454();
      if (qword_1009200F0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v18, qword_1009248E8);
      sub_100743454();
      if (qword_1009200F8 != -1)
      {
        swift_once();
      }

      a1 = sub_10000D0FC(v18, qword_100924900);
      sub_100743454();
      v19 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_100754574();
          }

          else
          {
            if (v11 - 4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007A5CF0;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = sub_100751044();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          sub_100753AA4();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_100754574();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          sub_100753AA4();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

char *sub_100071C88()
{
  *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progressView];
  sub_100016C60(0, &qword_100923500);
  v6 = v5;
  v7 = sub_100753DD4();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_100071E6C()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_BBFDA52132B851A7C9B4832301F19D0934ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  sub_100753AA4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_10007209C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100072108(uint64_t a1)
{
  if (qword_100920108 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_100924930;
  sub_10007271C(a1, *(a1 + 24));
  v2 = v1;
  return sub_1007514D4();
}

double sub_100072194(uint64_t a1, double a2)
{
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920100 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C518(&unk_1009249C0);
  sub_10000D0FC(v8, qword_100924918);
  sub_100743454();
  v9 = v28;
  v10 = sub_100753824();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = sub_100743AE4();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = sub_100743AE4();

  v16(v7, v4);
  sub_100753F34();
  [v23 contentInsets];

  if (qword_1009200E8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000C518(&unk_1009249B0);
  sub_10000D0FC(v24, qword_1009248D0);
  sub_100743454();
  if (qword_1009200F0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v24, qword_1009248E8);
  sub_100743454();
  return a2;
}

uint64_t sub_10007271C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for SearchLinkView()
{
  result = qword_1009249F0;
  if (!qword_1009249F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100072820()
{
  if (qword_100920A00 != -1)
  {
    swift_once();
  }

  v1 = qword_10097FC80;
  qword_10097D1E0 = qword_10097FC80;

  return v1;
}

uint64_t sub_100072884(void *a1)
{
  v2 = sub_100750E94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100750E84();
  if (qword_100920110 != -1)
  {
    swift_once();
  }

  sub_100750DF4();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [a1 preferredContentSizeCategory];
  sub_100753924();

  sub_100750E74();
  v12(v8, v2);
  sub_100750E64();
  return (v12)(v11, v2);
}

uint64_t sub_100072A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getObjectType();
  v8 = [a3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  sub_10007407C(v9, 0);
  sub_1000746BC(a1, v27);
  sub_10000C824(a2, v23);
  v10 = sub_100073EE4(a3);
  v12 = v11;
  v25 = &type metadata for SearchLinkLayout;
  v26 = sub_10007472C();
  v13 = swift_allocObject();
  v24 = v13;
  v14 = sub_1000747D0();
  v15 = swift_allocObject();
  sub_10000C824(v23, v15 + 16);
  sub_1000746BC(v27, &v21);
  if (v22)
  {
    sub_100012160(&v21, v20);
    v16 = swift_allocObject();
    sub_100012160(v20, v16 + 16);
    sub_10000C620(v23);
    sub_10007485C(v27);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v14;
  }

  else
  {
    sub_10000C620(v23);
    sub_10007485C(v27);
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v13[2] = v16;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v17;
  v13[6] = v18;
  v13[7] = v15;
  v13[10] = &type metadata for AutoAdjustingPlaceable;
  v13[11] = v14;
  v13[12] = v10;
  v13[13] = v12;
  sub_1007510F4();
  v27[3] = sub_100751104();
  v27[4] = &protocol witness table for Center;
  sub_10000D134(v27);
  sub_100751114();
  a4[3] = sub_1007511A4();
  a4[4] = &protocol witness table for Margins;
  sub_10000D134(a4);
  return sub_100751194();
}

char *sub_100072CA0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100750E94();
  __chkstk_darwin(v10 - 8);
  v11 = qword_1009249E0;
  *&v4[v11] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = qword_1009249E8;
  sub_100750614();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for SearchLinkView();
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = qword_1009249E0;
  v19 = qword_1009209F8;
  v20 = *&v17[qword_1009249E0];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor:qword_10097FC78];

  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  sub_100743224();

  v25 = *&v17[v18];
  sub_1007432A4();

  v26 = qword_100920A10;
  v27 = *&v17[v18];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10097FC90;
  sub_1007432D4();

  [v17 addSubview:*&v17[v18]];
  v29 = qword_1009249E8;
  v30 = qword_1009209E0;
  v31 = *&v17[qword_1009249E8];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor:qword_10097FC60];

  v32 = *&v17[v29];
  v33 = [v17 traitCollection];

  sub_100072884(v33);
  sub_1007505F4();

  [v17 addSubview:*&v17[v29]];
  sub_10000C518(&unk_1009249D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_1007519E4();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v17;
}

id sub_100073088(void *a1, void *a2)
{
  v4 = sub_100750E94();
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_100753924() & 1;

  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_100753924() & 1;
  if (v6 != v9)
  {
    v10 = [a1 traitCollection];
    sub_100072884(v10);

    sub_1007505F4();
  }

  return [a1 setNeedsLayout];
}

void sub_1000731EC(uint64_t a1)
{
  v2 = qword_1009249E0;
  *(a1 + v2) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_1009249E8;
  sub_100750614();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000732AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[qword_1009249E0];
  v5 = sub_100743334();
  if (v5)
  {

    v6 = sub_1007433C4();
    v7 = sub_1000748FC(&qword_10092E370, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v31[1] = 0;
    v31[2] = 0;
  }

  v31[0] = v5;
  v31[3] = v6;
  v31[4] = v7;
  v8 = *&v2[qword_1009249E8];
  v30[3] = sub_100750614();
  v30[4] = &protocol witness table for UILabel;
  v30[0] = v8;
  v9 = v8;
  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  sub_10007407C(v11, 0);
  sub_1000746BC(v31, v29);
  sub_10000C824(v30, v25);
  v12 = sub_100073D4C(v2);
  v14 = v13;
  v27 = &type metadata for SearchLinkLayout;
  v28 = sub_10007472C();
  v15 = swift_allocObject();
  v26 = v15;
  v16 = sub_1000747D0();
  v17 = swift_allocObject();
  sub_10000C824(v25, v17 + 16);
  sub_1000746BC(v29, &v23);
  if (v24)
  {
    sub_100012160(&v23, v22);
    v18 = swift_allocObject();
    sub_100012160(v22, v18 + 16);
    sub_10000C620(v25);
    sub_10007485C(v29);
    v19 = &type metadata for AutoAdjustingPlaceable;
    v20 = v16;
  }

  else
  {
    sub_10000C620(v25);
    sub_10007485C(v29);
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  v15[2] = v18;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = v19;
  v15[6] = v20;
  v15[7] = v17;
  v15[10] = &type metadata for AutoAdjustingPlaceable;
  v15[11] = v16;
  v15[12] = v12;
  v15[13] = v14;
  sub_1007510F4();
  v29[3] = sub_100751104();
  v29[4] = &protocol witness table for Center;
  sub_10000D134(v29);
  sub_100751114();
  a1[3] = sub_1007511A4();
  a1[4] = &protocol witness table for Margins;
  sub_10000D134(a1);
  sub_100751194();
  sub_10000C620(v30);
  return sub_10007485C(v31);
}

void sub_100073584()
{
  v1 = *(v0 + qword_1009249E8);
}

id sub_1000735C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000735FC(uint64_t a1)
{
  v2 = *(a1 + qword_1009249E8);
}

id sub_100073674()
{
  if (qword_100920A10 != -1)
  {
    swift_once();
  }

  v0 = qword_10097FC90;

  return v0;
}

double sub_1000736F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FD960(a1, a3, WitnessTable);
}

void sub_10007375C(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FB498(a1, a2, a3, WitnessTable);
}

void sub_1000737C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1006FD99C(a1, a3, WitnessTable);
}

uint64_t sub_10007382C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FB810(a1, WitnessTable, a2);
}

uint64_t sub_1000738A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006FDACC(a1, a2, a4, WitnessTable);
}

uint64_t sub_10007395C(void *a1)
{
  a1[1] = sub_1000748FC(&qword_100924A48, type metadata accessor for SearchLinkView);
  a1[2] = sub_1000748FC(&qword_100924A50, type metadata accessor for SearchLinkView);
  result = sub_1000748FC(&qword_100924A58, type metadata accessor for SearchLinkView);
  a1[3] = result;
  return result;
}

uint64_t sub_100073A24(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
          v8 = sub_100754574();
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
      v13 = sub_100754664();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100073B4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100073C14(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100073CBC()
{
  v0 = sub_100753094();
  v2 = v1;
  if (v0 == sub_100753094() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_100754754();
  }

  return v5 & 1;
}

id sub_100073D4C(void *a1)
{
  if (qword_100920110 != -1)
  {
    swift_once();
  }

  v2 = qword_10097D1E0;
  sub_10000C518(&qword_100924A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_100073C14(sub_100074960, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

id sub_100073EE4(void *a1)
{
  if (qword_100920110 != -1)
  {
    swift_once();
  }

  v2 = qword_10097D1E0;
  sub_10000C518(&qword_100924A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_100073C14(sub_1000748C4, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

double sub_10007407C(uint64_t a1, char a2)
{
  v3 = sub_100753094();
  v5 = v4;
  if (v3 == sub_100753094() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_100754754();

  if (v8)
  {
LABEL_16:
    v19 = (a2 & 1) == 0;
    result = 9.0;
    v21 = 4.0;
    goto LABEL_17;
  }

  v9 = sub_100753094();
  v11 = v10;
  if (v9 == sub_100753094() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = sub_100754754();

  if (v14)
  {
LABEL_14:
    v19 = (a2 & 1) == 0;
    result = 10.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v15 = sub_100753094();
  v17 = v16;
  if (v15 == sub_100753094() && v17 == v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_100754754();

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = sub_100753094();
  v25 = v24;
  if (v23 == sub_100753094() && v25 == v26)
  {

LABEL_25:
    v19 = (a2 & 1) == 0;
    result = 11.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v27 = sub_100754754();

  if (v27)
  {
    goto LABEL_25;
  }

  v28 = sub_100753094();
  v30 = v29;
  if (v28 == sub_100753094() && v30 == v31)
  {

LABEL_30:
    v19 = (a2 & 1) == 0;
    result = 12.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v32 = sub_100754754();

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = sub_100753094();
  v35 = v34;
  if (v33 == sub_100753094() && v35 == v36)
  {

LABEL_35:
    v19 = (a2 & 1) == 0;
    result = 13.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v37 = sub_100754754();

  if (v37)
  {
    goto LABEL_35;
  }

  v38 = sub_100753094();
  v40 = v39;
  if (v38 == sub_100753094() && v40 == v41)
  {

LABEL_40:
    v19 = (a2 & 1) == 0;
    result = 14.0;
    v21 = 7.0;
LABEL_17:
    if (!v19)
    {
      return v21;
    }

    return result;
  }

  v42 = sub_100754754();

  if (v42)
  {
    goto LABEL_40;
  }

  v43 = sub_100753094();
  v45 = v44;
  if (v43 == sub_100753094() && v45 == v46)
  {

    return 17.0;
  }

  v47 = sub_100754754();

  result = 17.0;
  if ((v47 & 1) == 0)
  {
    v48 = sub_100753094();
    v50 = v49;
    if (v48 == sub_100753094() && v50 == v51)
    {

      return 20.0;
    }

    v52 = sub_100754754();

    result = 20.0;
    if ((v52 & 1) == 0)
    {
      v53 = sub_100753094();
      v55 = v54;
      if (v53 == sub_100753094() && v55 == v56)
      {

        return 24.0;
      }

      v57 = sub_100754754();

      result = 24.0;
      if ((v57 & 1) == 0)
      {
        v58 = sub_100753094();
        v60 = v59;
        if (v58 == sub_100753094() && v60 == v61)
        {

          return 28.0;
        }

        v62 = sub_100754754();

        result = 28.0;
        if ((v62 & 1) == 0)
        {
          v63 = sub_100753094();
          v65 = v64;
          if (v63 == sub_100753094() && v65 == v66)
          {

            return 31.0;
          }

          v67 = sub_100754754();

          v19 = (v67 & 1) == 0;
          result = 10.0;
          v21 = 31.0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000746BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007472C()
{
  result = qword_10092E490;
  if (!qword_10092E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092E490);
  }

  return result;
}

uint64_t sub_100074780()
{
  if (*(v0 + 40))
  {
    sub_10000C620(v0 + 16);
  }

  sub_10000C620(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1000747D0()
{
  result = qword_100924A70;
  if (!qword_100924A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924A70);
  }

  return result;
}

uint64_t sub_100074824()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007485C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100924A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000748FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100074980()
{
  result = qword_100924A80;
  if (!qword_100924A80)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924A80);
  }

  return result;
}

double sub_1000749D8()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_10007DC04();
  swift_getObjectType();
  sub_10032A640(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_100074B1C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = &type metadata for EmptyView;
  v22 = a2;
  v23 = &protocol witness table for EmptyView;
  v7 = sub_100751E04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  sub_100751DF4();
  sub_100751E54();
  sub_100751DE4();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v19 = v3;
  v15 = sub_10000C724(&qword_100924AC0);
  v16 = sub_10007507C();
  v20 = a1;
  v21 = v15;
  v22 = a2;
  v23 = v16;
  a3[3] = sub_100751E04();
  a3[4] = swift_getWitnessTable();
  sub_10000D134(a3);
  sub_100751DD4();
  return (v14)(v13, v7);
}

uint64_t sub_100074D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10074CDF4();
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview);
  v6 = (a2 + *(sub_10000C518(&qword_100924AC0) + 36));
  *v6 = KeyPath;
  v6[1] = v5;
}

void sub_100074DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10036450C(a1, a2, a3, a4, a5);
  v6 = [v5 contentView];
  v7 = [v6 layer];

  sub_10074F0D4();
  [v7 setCornerRadius:?];

  v8 = [v5 contentView];
  sub_10000D198();
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11.super.isa = [v9 secondarySystemBackgroundColor];
  v12.super.isa = v10;
  isa = sub_100753EC4(v12, v11).super.isa;
  [v8 setBackgroundColor:isa];
}

id sub_100074FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProductPageCardViewHostingCell()
{
  result = qword_100924AB0;
  if (!qword_100924AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10007507C()
{
  result = qword_100924AC8;
  if (!qword_100924AC8)
  {
    sub_10000C724(&qword_100924AC0);
    sub_100075108();
    sub_100075160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100924AC8);
  }

  return result;
}